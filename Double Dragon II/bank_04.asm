.segment "BANK_04"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01400F



.export sub_0x010010_collision_with_background
.export sub_0x010013
.export sub_0x010016
.export tbl_0x010B2D



sub_0x010010_collision_with_background:
; bzk optimize
C D 0 - - - 0x010010 04:8000: 4C 20 80  JMP loc_8020_collision_with_background



sub_0x010013:
; bzk optimize
C - - - - - 0x010013 04:8003: 4C C8 A1  JMP loc_A1C8



sub_0x010016:
; bzk optimize
C - - - - - 0x010016 04:8006: 4C C7 BE  JMP loc_BEC7


; bzk garbage
- - - - - - 0x010019 04:8009: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x010020 04:8010: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



loc_8020_collision_with_background:
sub_8020_collision_with_background:
C D 0 - - - 0x010030 04:8020: 8A        TXA
C - - - - - 0x010031 04:8021: 48        PHA
C - - - - - 0x010032 04:8022: 98        TYA
C - - - - - 0x010033 04:8023: 48        PHA
C - - - - - 0x010034 04:8024: A6 3B     LDX ram_obj_index
C - - - - - 0x010036 04:8026: A5 F4     LDA ram_irq_handler
C - - - - - 0x010038 04:8028: C9 03     CMP #con_irq_tractor
C - - - - - 0x01003A 04:802A: D0 22     BNE bra_804E
C - - - - - 0x01003C 04:802C: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x01003E 04:802E: 48        PHA
C - - - - - 0x01003F 04:802F: A5 D0     LDA ram_cam_pos_X_lo
C - - - - - 0x010041 04:8031: 48        PHA
C - - - - - 0x010042 04:8032: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x010044 04:8034: 18        CLC
C - - - - - 0x010045 04:8035: 65 F5     ADC ram_00F5
C - - - - - 0x010047 04:8037: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x010049 04:8039: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x01004B 04:803B: 69 00     ADC #$00
C - - - - - 0x01004D 04:803D: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x01004F 04:803F: A5 D0     LDA ram_cam_pos_X_lo
C - - - - - 0x010051 04:8041: 18        CLC
C - - - - - 0x010052 04:8042: 65 F5     ADC ram_00F5
C - - - - - 0x010054 04:8044: 85 D0     STA ram_cam_pos_X_lo
C - - - - - 0x010056 04:8046: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x010058 04:8048: 69 00     ADC #$00
C - - - - - 0x01005A 04:804A: 85 D1     STA ram_cam_pos_X_hi
C - - - - - 0x01005C 04:804C: A9 00     LDA #$00
bra_804E:
C - - - - - 0x01005E 04:804E: 08        PHP
C - - - - - 0x01005F 04:804F: 20 6E 80  JSR sub_806E
C - - - - - 0x010062 04:8052: 28        PLP
C - - - - - 0x010063 04:8053: D0 14     BNE bra_8069
C - - - - - 0x010065 04:8055: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x010067 04:8057: 38        SEC
C - - - - - 0x010068 04:8058: ED F5 00  SBC a: ram_00F5
C - - - - - 0x01006B 04:805B: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01006D 04:805D: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x01006F 04:805F: E9 00     SBC #$00
C - - - - - 0x010071 04:8061: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x010073 04:8063: 68        PLA
C - - - - - 0x010074 04:8064: 85 D0     STA ram_cam_pos_X_lo
C - - - - - 0x010076 04:8066: 68        PLA
C - - - - - 0x010077 04:8067: 85 D1     STA ram_cam_pos_X_hi
bra_8069:
C - - - - - 0x010079 04:8069: 68        PLA
C - - - - - 0x01007A 04:806A: A8        TAY
C - - - - - 0x01007B 04:806B: 68        PLA
C - - - - - 0x01007C 04:806C: AA        TAX
C - - - - - 0x01007D 04:806D: 60        RTS



sub_806E:
C - - - - - 0x01007E 04:806E: A6 3B     LDX ram_obj_index
C - - - - - 0x010080 04:8070: B5 43     LDA ram_state,X
C - - - - - 0x010082 04:8072: 10 52     BPL bra_80C6_RTS
C - - - - - 0x010084 04:8074: 29 7F     AND #$7F
C - - - - - 0x010086 04:8076: C9 27     CMP #con_state_death_water
C - - - - - 0x010088 04:8078: F0 4C     BEQ bra_80C6_RTS
C - - - - - 0x01008A 04:807A: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x01008D 04:807D: 8D 92 03  STA ram_0392
C - - - - - 0x010090 04:8080: BD 71 03  LDA ram_0371_obj,X
C - - - - - 0x010093 04:8083: 29 7F     AND #$7F
C - - - - - 0x010095 04:8085: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x010098 04:8088: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x01009A 04:808A: 29 40     AND #con_004A_flag_stunned
C - - - - - 0x01009C 04:808C: F0 05     BEQ bra_8093
C - - - - - 0x01009E 04:808E: A9 00     LDA #$00
C - - - - - 0x0100A0 04:8090: 9D 69 03  STA ram_0369_obj,X
bra_8093:
C - - - - - 0x0100A3 04:8093: 20 A7 85  JSR sub_85A7
C - - - - - 0x0100A6 04:8096: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x0100A8 04:8098: 29 04     AND #con_004A_flag_04
C - - - - - 0x0100AA 04:809A: D0 2A     BNE bra_80C6_RTS
C - - - - - 0x0100AC 04:809C: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x0100AE 04:809E: 30 1D     BMI bra_80BD    ; if con_004A_flag_knocked_down
C - - - - - 0x0100B0 04:80A0: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x0100B2 04:80A2: 29 02     AND #con_003C_flag_02
C - - - - - 0x0100B4 04:80A4: D0 0B     BNE bra_80B1
C - - - - - 0x0100B6 04:80A6: BD 69 03  LDA ram_0369_obj,X
C - - - - - 0x0100B9 04:80A9: 10 06     BPL bra_80B1
C - - - - - 0x0100BB 04:80AB: 20 9D 83  JSR sub_839D_ladder_climb
C - - - - - 0x0100BE 04:80AE: 4C C6 80  JMP loc_80C6_RTS
bra_80B1:
C - - - - - 0x0100C1 04:80B1: 20 0C C0  JSR sub_0x01C01C_jumping_spikes
C - - - - - 0x0100C4 04:80B4: 20 C7 80  JSR sub_80C7
C - - - - - 0x0100C7 04:80B7: 20 B7 84  JSR sub_84B7
C - - - - - 0x0100CA 04:80BA: 4C C6 80  JMP loc_80C6_RTS
bra_80BD:
C - - - - - 0x0100CD 04:80BD: 20 23 82  JSR sub_8223
C - - - - - 0x0100D0 04:80C0: 20 5C 84  JSR sub_845C
; bzk optimize, JMP
C - - - - - 0x0100D3 04:80C3: 20 DA 82  JSR sub_82DA
bra_80C6_RTS:
loc_80C6_RTS:   ; bzk optimize
C D 0 - - - 0x0100D6 04:80C6: 60        RTS



sub_80C7:
C - - - - - 0x0100D7 04:80C7: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x0100D9 04:80C9: 29 03     AND #con_003C_flag_01 + con_003C_flag_02
C - - - - - 0x0100DB 04:80CB: F0 0A     BEQ bra_80D7
C - - - - - 0x0100DD 04:80CD: C9 01     CMP #con_003C_flag_01
C - - - - - 0x0100DF 04:80CF: F0 03     BEQ bra_80D4
C - - - - - 0x0100E1 04:80D1: 4C F0 81  JMP loc_81F0
bra_80D4:
C - - - - - 0x0100E4 04:80D4: 4C A7 81  JMP loc_81A7
bra_80D7:
C - - - - - 0x0100E7 04:80D7: 20 F4 84  JSR sub_84F4
C - - - - - 0x0100EA 04:80DA: 90 01     BCC bra_80DD
- - - - - - 0x0100EC 04:80DC: 60        RTS
bra_80DD:
C - - - - - 0x0100ED 04:80DD: 20 5C 85  JSR sub_855C
C - - - - - 0x0100F0 04:80E0: A9 00     LDA #$00
C - - - - - 0x0100F2 04:80E2: 85 20     STA ram_0020
C - - - - - 0x0100F4 04:80E4: A0 02     LDY #$02
C - - - - - 0x0100F6 04:80E6: 20 9B 86  JSR sub_869B
C - - - - - 0x0100F9 04:80E9: 20 1B 87  JSR sub_871B
C - - - - - 0x0100FC 04:80EC: 90 4F     BCC bra_813D
C - - - - - 0x0100FE 04:80EE: A5 19     LDA ram_0019_t14
C - - - - - 0x010100 04:80F0: 09 80     ORA #$80
C - - - - - 0x010102 04:80F2: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x010105 04:80F5: 85 20     STA ram_0020
C - - - - - 0x010107 04:80F7: 29 7F     AND #$7F
C - - - - - 0x010109 04:80F9: C9 03     CMP #$03
C - - - - - 0x01010B 04:80FB: F0 33     BEQ bra_8130
C - - - - - 0x01010D 04:80FD: C9 02     CMP #$02
C - - - - - 0x01010F 04:80FF: F0 03     BEQ bra_8104
C - - - - - 0x010111 04:8101: 20 FD 85  JSR sub_85FD
bra_8104:
C - - - - - 0x010114 04:8104: 20 E0 88  JSR sub_88E0
C - - - - - 0x010117 04:8107: 90 17     BCC bra_8120
C - - - - - 0x010119 04:8109: BD 71 03  LDA ram_0371_obj,X
C - - - - - 0x01011C 04:810C: 29 7F     AND #$7F
C - - - - - 0x01011E 04:810E: C9 02     CMP #$02
C - - - - - 0x010120 04:8110: D0 03     BNE bra_8115
C - - - - - 0x010122 04:8112: 20 FD 85  JSR sub_85FD
bra_8115:
C - - - - - 0x010125 04:8115: BD 71 03  LDA ram_0371_obj,X
C - - - - - 0x010128 04:8118: 09 04     ORA #$04
C - - - - - 0x01012A 04:811A: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x01012D 04:811D: 4C A6 81  JMP loc_81A6_RTS
bra_8120:
C - - - - - 0x010130 04:8120: BD 71 03  LDA ram_0371_obj,X
C - - - - - 0x010133 04:8123: 29 7F     AND #$7F
C - - - - - 0x010135 04:8125: C9 02     CMP #$02
C - - - - - 0x010137 04:8127: D0 14     BNE bra_813D
C - - - - - 0x010139 04:8129: 20 90 89  JSR sub_8990
C - - - - - 0x01013C 04:812C: B0 57     BCS bra_8185
C - - - - - 0x01013E 04:812E: 90 0D     BCC bra_813D    ; jmp
bra_8130:
C - - - - - 0x010140 04:8130: A5 1A     LDA ram_001A_t10
C - - - - - 0x010142 04:8132: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010145 04:8135: A5 1C     LDA ram_001C_t02
C - - - - - 0x010147 04:8137: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x01014A 04:813A: 4C A6 81  JMP loc_81A6_RTS
bra_813D:
C - - - - - 0x01014D 04:813D: A0 01     LDY #$01
C - - - - - 0x01014F 04:813F: 20 9B 86  JSR sub_869B
C - - - - - 0x010152 04:8142: 20 1B 87  JSR sub_871B
C - - - - - 0x010155 04:8145: 90 5F     BCC bra_81A6_RTS
C - - - - - 0x010157 04:8147: A5 19     LDA ram_0019_t14
C - - - - - 0x010159 04:8149: 09 80     ORA #$80
C - - - - - 0x01015B 04:814B: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x01015E 04:814E: 29 7F     AND #$7F
C - - - - - 0x010160 04:8150: C9 03     CMP #$03
C - - - - - 0x010162 04:8152: F0 DC     BEQ bra_8130
C - - - - - 0x010164 04:8154: C9 02     CMP #$02
C - - - - - 0x010166 04:8156: F0 1E     BEQ bra_8176
C - - - - - 0x010168 04:8158: 20 FD 85  JSR sub_85FD
bra_815B:
C - - - - - 0x01016B 04:815B: 20 E0 88  JSR sub_88E0
C - - - - - 0x01016E 04:815E: 90 46     BCC bra_81A6_RTS
- - - - - - 0x010170 04:8160: BD 71 03  LDA ram_0371_obj,X
- - - - - - 0x010173 04:8163: 29 7F     AND #$7F
- - - - - - 0x010175 04:8165: C9 02     CMP #$02
- - - - - - 0x010177 04:8167: D0 03     BNE bra_816C
- - - - - - 0x010179 04:8169: 20 FD 85  JSR sub_85FD
bra_816C:
- - - - - - 0x01017C 04:816C: BD 71 03  LDA ram_0371_obj,X
- - - - - - 0x01017F 04:816F: 09 04     ORA #$04
- - - - - - 0x010181 04:8171: 9D 71 03  STA ram_0371_obj,X
- - - - - - 0x010184 04:8174: D0 30     BNE bra_81A6_RTS    ; jmp
bra_8176:
C - - - - - 0x010186 04:8176: A5 20     LDA ram_0020
C - - - - - 0x010188 04:8178: 10 E1     BPL bra_815B
C - - - - - 0x01018A 04:817A: 29 7F     AND #$7F
C - - - - - 0x01018C 04:817C: C9 02     CMP #$02
C - - - - - 0x01018E 04:817E: F0 05     BEQ bra_8185
C - - - - - 0x010190 04:8180: 20 90 89  JSR sub_8990
C - - - - - 0x010193 04:8183: 90 21     BCC bra_81A6_RTS
bra_8185:
C - - - - - 0x010195 04:8185: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x010198 04:8188: 29 7F     AND #$7F
C - - - - - 0x01019A 04:818A: C9 02     CMP #con_0361_02
C - - - - - 0x01019C 04:818C: F0 04     BEQ bra_8192
C - - - - - 0x01019E 04:818E: C9 04     CMP #con_0361_04
C - - - - - 0x0101A0 04:8190: D0 06     BNE bra_8198
bra_8192:
; falling from a gear
C - - - - - 0x0101A2 04:8192: A9 23     LDA #con_state_23
C - - - - - 0x0101A4 04:8194: 95 43     STA ram_state,X
C - - - - - 0x0101A6 04:8196: D0 04     BNE bra_819C    ; jmp
bra_8198:
C - - - - - 0x0101A8 04:8198: A9 07     LDA #con_state_fall_from_platform
C - - - - - 0x0101AA 04:819A: 95 43     STA ram_state,X
bra_819C:
C - - - - - 0x0101AC 04:819C: A5 1A     LDA ram_001A_t10
C - - - - - 0x0101AE 04:819E: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0101B1 04:81A1: A5 1C     LDA ram_001C_t02
C - - - - - 0x0101B3 04:81A3: 9D 61 03  STA ram_0361_obj,X
bra_81A6_RTS:
loc_81A6_RTS:   ; bzk optimize
C D 0 - - - 0x0101B6 04:81A6: 60        RTS



loc_81A7:
C D 0 - - - 0x0101B7 04:81A7: A9 00     LDA #$00
C - - - - - 0x0101B9 04:81A9: 85 20     STA ram_0020
C - - - - - 0x0101BB 04:81AB: A0 02     LDY #$02
C - - - - - 0x0101BD 04:81AD: 20 9B 86  JSR sub_869B
C - - - - - 0x0101C0 04:81B0: 20 1B 87  JSR sub_871B
C - - - - - 0x0101C3 04:81B3: 90 20     BCC bra_81D5
C - - - - - 0x0101C5 04:81B5: A5 19     LDA ram_0019_t14
C - - - - - 0x0101C7 04:81B7: 09 80     ORA #$80
C - - - - - 0x0101C9 04:81B9: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x0101CC 04:81BC: 85 20     STA ram_0020
C - - - - - 0x0101CE 04:81BE: 29 7F     AND #$7F
C - - - - - 0x0101D0 04:81C0: C9 03     CMP #$03
C - - - - - 0x0101D2 04:81C2: F0 06     BEQ bra_81CA
C - - - - - 0x0101D4 04:81C4: 20 FD 85  JSR sub_85FD
C - - - - - 0x0101D7 04:81C7: 4C D5 81  JMP loc_81D5
bra_81CA:
- - - - - - 0x0101DA 04:81CA: A5 1A     LDA ram_001A_t10
- - - - - - 0x0101DC 04:81CC: 9D 59 03  STA ram_0359_obj,X
- - - - - - 0x0101DF 04:81CF: A5 1C     LDA ram_001C_t02
- - - - - - 0x0101E1 04:81D1: 9D 61 03  STA ram_0361_obj,X
- - - - - - 0x0101E4 04:81D4: 60        RTS
bra_81D5:
loc_81D5:
C D 0 - - - 0x0101E5 04:81D5: A0 01     LDY #$01
C - - - - - 0x0101E7 04:81D7: 20 9B 86  JSR sub_869B
C - - - - - 0x0101EA 04:81DA: 20 1B 87  JSR sub_871B
C - - - - - 0x0101ED 04:81DD: 90 10     BCC bra_81EF_RTS
C - - - - - 0x0101EF 04:81DF: A5 19     LDA ram_0019_t14
C - - - - - 0x0101F1 04:81E1: 09 80     ORA #$80
C - - - - - 0x0101F3 04:81E3: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x0101F6 04:81E6: 29 7F     AND #$7F
C - - - - - 0x0101F8 04:81E8: C9 03     CMP #$03
C - - - - - 0x0101FA 04:81EA: F0 DE     BEQ bra_81CA
; bzk optimize, JMP
C - - - - - 0x0101FC 04:81EC: 20 FD 85  JSR sub_85FD
bra_81EF_RTS:
C - - - - - 0x0101FF 04:81EF: 60        RTS



loc_81F0:
C D 0 - - - 0x010200 04:81F0: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x010203 04:81F3: C9 02     CMP #con_mission_Battle_in_the_Chopper
C - - - - - 0x010205 04:81F5: F0 1E     BEQ bra_8215
C - - - - - 0x010207 04:81F7: 20 CF 85  JSR sub_85CF
C - - - - - 0x01020A 04:81FA: A5 23     LDA ram_0023
C - - - - - 0x01020C 04:81FC: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x01020F 04:81FF: 29 7F     AND #$7F
C - - - - - 0x010211 04:8201: C9 08     CMP #con_0361_08
C - - - - - 0x010213 04:8203: D0 1D     BNE bra_8222_RTS
C - - - - - 0x010215 04:8205: A0 00     LDY #$00
C - - - - - 0x010217 04:8207: 20 9B 86  JSR sub_869B
C - - - - - 0x01021A 04:820A: 20 1B 87  JSR sub_871B
C - - - - - 0x01021D 04:820D: 90 13     BCC bra_8222_RTS
- - - - - - 0x01021F 04:820F: A9 6C     LDA #con_state_6C
- - - - - - 0x010221 04:8211: 95 43     STA ram_state,X
- - - - - - 0x010223 04:8213: D0 0D     BNE bra_8222_RTS    ; jmp
bra_8215:
C - - - - - 0x010225 04:8215: A0 00     LDY #$00
C - - - - - 0x010227 04:8217: 20 9B 86  JSR sub_869B
C - - - - - 0x01022A 04:821A: 20 1B 87  JSR sub_871B
C - - - - - 0x01022D 04:821D: 90 03     BCC bra_8222_RTS
; bzk optimize, JMP
C - - - - - 0x01022F 04:821F: 20 FD 85  JSR sub_85FD
bra_8222_RTS:
C - - - - - 0x010232 04:8222: 60        RTS



sub_8223:
C - - - - - 0x010233 04:8223: 20 E1 8A  JSR sub_8AE1_spikes_on_the_seiling
C - - - - - 0x010236 04:8226: B0 FA     BCS bra_8222_RTS
C - - - - - 0x010238 04:8228: 20 29 8A  JSR sub_8A29
C - - - - - 0x01023B 04:822B: A0 00     LDY #$00
C - - - - - 0x01023D 04:822D: 20 9B 86  JSR sub_869B
C - - - - - 0x010240 04:8230: 20 1B 87  JSR sub_871B
C - - - - - 0x010243 04:8233: B0 17     BCS bra_824C
C - - - - - 0x010245 04:8235: B5 BF     LDA ram_obj_id,X
C - - - - - 0x010247 04:8237: C9 08     CMP #con_obj_abore
C - - - - - 0x010249 04:8239: D0 73     BNE bra_82AE_RTS
C - - - - - 0x01024B 04:823B: BD 0F 03  LDA ram_obj_direction,X
C - - - - - 0x01024E 04:823E: 29 7F     AND #$7F
C - - - - - 0x010250 04:8240: D0 6C     BNE bra_82AE_RTS
- - - - - - 0x010252 04:8242: A0 02     LDY #$02
- - - - - - 0x010254 04:8244: 20 9B 86  JSR sub_869B
- - - - - - 0x010257 04:8247: 20 1B 87  JSR sub_871B
- - - - - - 0x01025A 04:824A: 90 62     BCC bra_82AE_RTS
bra_824C:
C - - - - - 0x01025C 04:824C: A5 19     LDA ram_0019_t14
C - - - - - 0x01025E 04:824E: 09 80     ORA #$80
C - - - - - 0x010260 04:8250: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x010263 04:8253: 29 7F     AND #$7F
C - - - - - 0x010265 04:8255: F0 0F     BEQ bra_8266
C - - - - - 0x010267 04:8257: C9 01     CMP #$01
C - - - - - 0x010269 04:8259: F0 54     BEQ bra_82AF
C - - - - - 0x01026B 04:825B: A5 1A     LDA ram_001A_t10
C - - - - - 0x01026D 04:825D: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010270 04:8260: A5 1C     LDA ram_001C_t02
C - - - - - 0x010272 04:8262: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x010275 04:8265: 60        RTS
bra_8266:
C - - - - - 0x010276 04:8266: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003E 003F 0040 0041
C - - - - - 0x010278 04:8268: 29 03     AND #con_003C_flag_01 + con_003C_flag_02
C - - - - - 0x01027A 04:826A: F0 25     BEQ bra_8291
C - - - - - 0x01027C 04:826C: C9 02     CMP #$02
C - - - - - 0x01027E 04:826E: F0 1B     BEQ bra_828B
C - - - - - 0x010280 04:8270: B5 BF     LDA ram_obj_id,X
C - - - - - 0x010282 04:8272: C9 0F     CMP #con_obj_ninja
C - - - - - 0x010284 04:8274: F0 2D     BEQ bra_82A3
C - - - - - 0x010286 04:8276: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x010289 04:8279: 29 7F     AND #$7F
C - - - - - 0x01028B 04:827B: C9 01     CMP #con_0361_01
C - - - - - 0x01028D 04:827D: F0 2C     BEQ bra_82AB
C - - - - - 0x01028F 04:827F: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x010291 04:8281: 29 40     AND #con_004A_flag_stunned
C - - - - - 0x010293 04:8283: F0 26     BEQ bra_82AB
C - - - - - 0x010295 04:8285: A9 1A     LDA #con_state_1A
C - - - - - 0x010297 04:8287: 95 43     STA ram_state,X
C - - - - - 0x010299 04:8289: D0 18     BNE bra_82A3    ; jmp
bra_828B:
C - - - - - 0x01029B 04:828B: A9 6C     LDA #con_state_6C
C - - - - - 0x01029D 04:828D: 95 43     STA ram_state,X
C - - - - - 0x01029F 04:828F: D0 12     BNE bra_82A3    ; jmp
bra_8291:
C - - - - - 0x0102A1 04:8291: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x0102A4 04:8294: 10 15     BPL bra_82AB
C - - - - - 0x0102A6 04:8296: 29 7F     AND #$7F
C - - - - - 0x0102A8 04:8298: C9 01     CMP #con_0361_01
C - - - - - 0x0102AA 04:829A: F0 0F     BEQ bra_82AB
C - - - - - 0x0102AC 04:829C: A9 00     LDA #$00
C - - - - - 0x0102AE 04:829E: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0102B1 04:82A1: F0 08     BEQ bra_82AB    ; jmp
bra_82A3:
C - - - - - 0x0102B3 04:82A3: BD 0F 03  LDA ram_obj_direction,X
C - - - - - 0x0102B6 04:82A6: 49 80     EOR #$80
C - - - - - 0x0102B8 04:82A8: 9D 0F 03  STA ram_obj_direction,X
bra_82AB:
; bzk optimize, JMP
C - - - - - 0x0102BB 04:82AB: 20 FD 85  JSR sub_85FD
bra_82AE_RTS:
C - - - - - 0x0102BE 04:82AE: 60        RTS
bra_82AF:
C - - - - - 0x0102BF 04:82AF: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x0102C2 04:82B2: 85 24     STA ram_0024
C - - - - - 0x0102C4 04:82B4: A5 1A     LDA ram_001A_t10
C - - - - - 0x0102C6 04:82B6: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0102C9 04:82B9: 20 CF 85  JSR sub_85CF
C - - - - - 0x0102CC 04:82BC: A5 24     LDA ram_0024
C - - - - - 0x0102CE 04:82BE: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0102D1 04:82C1: 38        SEC
C - - - - - 0x0102D2 04:82C2: A5 2B     LDA ram_002B_temp
C - - - - - 0x0102D4 04:82C4: E5 29     SBC ram_0029_temp
C - - - - - 0x0102D6 04:82C6: 85 2F     STA ram_002F_temp
C - - - - - 0x0102D8 04:82C8: A5 2C     LDA ram_002C_temp
C - - - - - 0x0102DA 04:82CA: E5 2A     SBC ram_002A_temp
C - - - - - 0x0102DC 04:82CC: 90 98     BCC bra_8266
C - - - - - 0x0102DE 04:82CE: A5 1A     LDA ram_001A_t10
C - - - - - 0x0102E0 04:82D0: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0102E3 04:82D3: A5 1C     LDA ram_001C_t02
C - - - - - 0x0102E5 04:82D5: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x0102E8 04:82D8: 60        RTS
bra_82D9_RTS:   ; bzk optimize
C - - - - - 0x0102E9 04:82D9: 60        RTS



sub_82DA:
C - - - - - 0x0102EA 04:82DA: BD 25 03  LDA ram_obj_gravity_hi,X
C - - - - - 0x0102ED 04:82DD: 10 FA     BPL bra_82D9_RTS
C - - - - - 0x0102EF 04:82DF: A0 00     LDY #$00
C - - - - - 0x0102F1 04:82E1: 20 9B 86  JSR sub_869B
C - - - - - 0x0102F4 04:82E4: 20 CF 85  JSR sub_85CF
C - - - - - 0x0102F7 04:82E7: A5 29     LDA ram_0029_temp
C - - - - - 0x0102F9 04:82E9: 38        SEC
C - - - - - 0x0102FA 04:82EA: E5 2B     SBC ram_002B_temp
C - - - - - 0x0102FC 04:82EC: 85 2F     STA ram_002F_temp
C - - - - - 0x0102FE 04:82EE: A5 2A     LDA ram_002A_temp
C - - - - - 0x010300 04:82F0: E5 2C     SBC ram_002C_temp
C - - - - - 0x010302 04:82F2: 85 30     STA ram_0030_temp
C - - - - - 0x010304 04:82F4: 10 01     BPL bra_82F7
C - - - - - 0x010306 04:82F6: 60        RTS
bra_82F7:
C - - - - - 0x010307 04:82F7: BD 71 03  LDA ram_0371_obj,X
C - - - - - 0x01030A 04:82FA: 09 80     ORA #$80
C - - - - - 0x01030C 04:82FC: 9D 71 03  STA ram_0371_obj,X
C - - - - - 0x01030F 04:82FF: 20 F4 84  JSR sub_84F4
C - - - - - 0x010312 04:8302: 90 01     BCC bra_8305
C - - - - - 0x010314 04:8304: 60        RTS
bra_8305:
C - - - - - 0x010315 04:8305: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x010318 04:8308: C9 05     CMP #con_mission_Forest_of_Death
C - - - - - 0x01031A 04:830A: D0 13     BNE bra_831F
C - - - - - 0x01031C 04:830C: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x01031F 04:830F: C9 0A     CMP #con_0359_0A
C - - - - - 0x010321 04:8311: D0 0C     BNE bra_831F
C - - - - - 0x010323 04:8313: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003E 003F 0040
C - - - - - 0x010325 04:8315: 29 01     AND #con_003C_flag_01
C - - - - - 0x010327 04:8317: F0 06     BEQ bra_831F
C - - - - - 0x010329 04:8319: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x01032B 04:831B: C9 02     CMP #$02
C - - - - - 0x01032D 04:831D: 90 6D     BCC bra_838C
bra_831F:
C - - - - - 0x01032F 04:831F: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x010332 04:8322: 29 7F     AND #$7F
C - - - - - 0x010334 04:8324: C9 05     CMP #con_0361_05
C - - - - - 0x010336 04:8326: F0 5A     BEQ bra_8382
C - - - - - 0x010338 04:8328: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x01033A 04:832A: 29 02     AND #con_003C_flag_02
C - - - - - 0x01033C 04:832C: D0 27     BNE bra_8355
C - - - - - 0x01033E 04:832E: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x010341 04:8331: 29 7F     AND #$7F
C - - - - - 0x010343 04:8333: C9 03     CMP #con_0361_03
C - - - - - 0x010345 04:8335: D0 06     BNE bra_833D
C - - - - - 0x010347 04:8337: 20 A8 8A  JSR sub_8AA8
C - - - - - 0x01034A 04:833A: 4C 49 83  JMP loc_8349
bra_833D:
C - - - - - 0x01034D 04:833D: C9 07     CMP #con_0361_07
C - - - - - 0x01034F 04:833F: F0 45     BEQ bra_8386
C - - - - - 0x010351 04:8341: C9 06     CMP #con_0361_06
C - - - - - 0x010353 04:8343: F0 47     BEQ bra_838C
C - - - - - 0x010355 04:8345: C9 01     CMP #con_0361_01
C - - - - - 0x010357 04:8347: F0 26     BEQ bra_836F
loc_8349:
C D 0 - - - 0x010359 04:8349: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x01035B 04:834B: 29 40     AND #con_004A_flag_stunned
C - - - - - 0x01035D 04:834D: D0 26     BNE bra_8375
C - - - - - 0x01035F 04:834F: A9 12     LDA #con_state_land_after_jump
C - - - - - 0x010361 04:8351: 95 43     STA ram_state,X
C - - - - - 0x010363 04:8353: D0 24     BNE bra_8379    ; jmp
bra_8355:
; weapon is dropping
C - - - - - 0x010365 04:8355: B5 43     LDA ram_state,X
C - - - - - 0x010367 04:8357: 29 7F     AND #$7F
C - - - - - 0x010369 04:8359: C9 6A     CMP #con_state_6A
C - - - - - 0x01036B 04:835B: F0 08     BEQ bra_8365
C - - - - - 0x01036D 04:835D: C9 6B     CMP #con_state_6B
C - - - - - 0x01036F 04:835F: D0 08     BNE bra_8369
C - - - - - 0x010371 04:8361: A9 65     LDA #con_state_weapon_on_the_ground
C - - - - - 0x010373 04:8363: D0 06     BNE bra_836B    ; jmp
bra_8365:
C - - - - - 0x010375 04:8365: A9 6B     LDA #con_state_6B
C - - - - - 0x010377 04:8367: D0 02     BNE bra_836B    ; jmp
bra_8369:
C - - - - - 0x010379 04:8369: A9 6A     LDA #con_state_6A
bra_836B:
C - - - - - 0x01037B 04:836B: 95 43     STA ram_state,X
C - - - - - 0x01037D 04:836D: D0 0A     BNE bra_8379    ; jmp
bra_836F:
C - - - - - 0x01037F 04:836F: A9 27     LDA #con_state_death_water
C - - - - - 0x010381 04:8371: 95 43     STA ram_state,X
C - - - - - 0x010383 04:8373: D0 04     BNE bra_8379    ; jmp
bra_8375:
C - - - - - 0x010385 04:8375: A9 19     LDA #con_state_lie_on_the_ground
C - - - - - 0x010387 04:8377: 95 43     STA ram_state,X
bra_8379:
C - - - - - 0x010389 04:8379: A5 29     LDA ram_0029_temp
C - - - - - 0x01038B 04:837B: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x01038D 04:837D: A5 2A     LDA ram_002A_temp
C - - - - - 0x01038F 04:837F: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x010391 04:8381: 60        RTS
bra_8382:
; bzk optimize, JMP
C - - - - - 0x010392 04:8382: 20 AF 89  JSR sub_89AF
C - - - - - 0x010395 04:8385: 60        RTS
bra_8386:
C - - - - - 0x010396 04:8386: A9 00     LDA #$00
C - - - - - 0x010398 04:8388: 9D 1E 04  STA ram_hp,X
C - - - - - 0x01039B 04:838B: 60        RTS
bra_838C:
C - - - - - 0x01039C 04:838C: A9 00     LDA #$00
C - - - - - 0x01039E 04:838E: 9D 1E 04  STA ram_hp,X
C - - - - - 0x0103A1 04:8391: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x0103A3 04:8393: 29 40     AND #con_004A_flag_stunned
C - - - - - 0x0103A5 04:8395: D0 DE     BNE bra_8375
C - - - - - 0x0103A7 04:8397: A9 1B     LDA #con_state_1B
C - - - - - 0x0103A9 04:8399: 95 43     STA ram_state,X
C - - - - - 0x0103AB 04:839B: D0 DC     BNE bra_8379    ; jmp



sub_839D_ladder_climb:
C - - - - - 0x0103AD 04:839D: A0 00     LDY #$00
C - - - - - 0x0103AF 04:839F: 20 9B 86  JSR sub_869B
C - - - - - 0x0103B2 04:83A2: BD 69 03  LDA ram_0369_obj,X
C - - - - - 0x0103B5 04:83A5: 0A        ASL
C - - - - - 0x0103B6 04:83A6: A8        TAY
C - - - - - 0x0103B7 04:83A7: B9 34 A1  LDA tbl_A134,Y
C - - - - - 0x0103BA 04:83AA: 85 2F     STA ram_002F_temp
C - - - - - 0x0103BC 04:83AC: B9 35 A1  LDA tbl_A134 + $01,Y
C - - - - - 0x0103BF 04:83AF: 85 30     STA ram_0030_temp
C - - - - - 0x0103C1 04:83B1: A0 00     LDY #$00    ; climbing up
C - - - - - 0x0103C3 04:83B3: B5 43     LDA ram_state,X
C - - - - - 0x0103C5 04:83B5: 29 7F     AND #$7F
C - - - - - 0x0103C7 04:83B7: C9 03     CMP #con_state_ladder_climb_up
C - - - - - 0x0103C9 04:83B9: F0 06     BEQ bra_83C1
C - - - - - 0x0103CB 04:83BB: C9 05     CMP #con_state_ladder_climb_down
C - - - - - 0x0103CD 04:83BD: D0 52     BNE bra_8411_RTS
; climbing on ladder
C - - - - - 0x0103CF 04:83BF: A0 04     LDY #$04    ; climbing down
bra_83C1:
C - - - - - 0x0103D1 04:83C1: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0103D3 04:83C3: 85 29     STA ram_0029_temp
C - - - - - 0x0103D5 04:83C5: C8        INY
C - - - - - 0x0103D6 04:83C6: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0103D8 04:83C8: 85 2A     STA ram_002A_temp
C - - - - - 0x0103DA 04:83CA: 38        SEC
C - - - - - 0x0103DB 04:83CB: A5 29     LDA ram_0029_temp
C - - - - - 0x0103DD 04:83CD: E5 2B     SBC ram_002B_temp
C - - - - - 0x0103DF 04:83CF: 85 2D     STA ram_002D_temp
C - - - - - 0x0103E1 04:83D1: A5 2A     LDA ram_002A_temp
C - - - - - 0x0103E3 04:83D3: E5 2C     SBC ram_002C_temp
C - - - - - 0x0103E5 04:83D5: 85 2E     STA ram_002E_temp
C - - - - - 0x0103E7 04:83D7: 08        PHP
C - - - - - 0x0103E8 04:83D8: 98        TYA
C - - - - - 0x0103E9 04:83D9: C9 04     CMP #$04
C - - - - - 0x0103EB 04:83DB: B0 05     BCS bra_83E2
C - - - - - 0x0103ED 04:83DD: 28        PLP
C - - - - - 0x0103EE 04:83DE: 90 11     BCC bra_83F1
C - - - - - 0x0103F0 04:83E0: B0 2F     BCS bra_8411_RTS    ; jmp
bra_83E2:
C - - - - - 0x0103F2 04:83E2: 28        PLP
C - - - - - 0x0103F3 04:83E3: 90 2C     BCC bra_8411_RTS
C - - - - - 0x0103F5 04:83E5: AD B0 04  LDA ram_04B0
C - - - - - 0x0103F8 04:83E8: 29 04     AND #$04
C - - - - - 0x0103FA 04:83EA: D0 05     BNE bra_83F1
C - - - - - 0x0103FC 04:83EC: 20 12 84  JSR sub_8412
C - - - - - 0x0103FF 04:83EF: B0 20     BCS bra_8411_RTS
bra_83F1:
C - - - - - 0x010401 04:83F1: A9 00     LDA #con_state_idle
C - - - - - 0x010403 04:83F3: 95 43     STA ram_state,X
C - - - - - 0x010405 04:83F5: C8        INY
C - - - - - 0x010406 04:83F6: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010408 04:83F8: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x01040B 04:83FB: C8        INY
C - - - - - 0x01040C 04:83FC: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x01040E 04:83FE: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x010411 04:8401: A9 7F     LDA #$7F
C - - - - - 0x010413 04:8403: 9D 69 03  STA ram_0369_obj,X
C - - - - - 0x010416 04:8406: 20 CF 85  JSR sub_85CF
C - - - - - 0x010419 04:8409: A5 29     LDA ram_0029_temp
C - - - - - 0x01041B 04:840B: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x01041D 04:840D: A5 2A     LDA ram_002A_temp
C - - - - - 0x01041F 04:840F: 95 B6     STA ram_obj_pos_Z_hi,X
bra_8411_RTS:
C - - - - - 0x010421 04:8411: 60        RTS



sub_8412:
C - - - - - 0x010422 04:8412: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003E 003F
C - - - - - 0x010424 04:8414: 29 01     AND #con_003C_flag_01
C - - - - - 0x010426 04:8416: D0 33     BNE bra_844B
C - - - - - 0x010428 04:8418: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01042A 04:841A: 18        CLC
C - - - - - 0x01042B 04:841B: 75 AD     ADC ram_obj_pos_Z_lo,X
C - - - - - 0x01042D 04:841D: 8D AD 03  STA ram_03AD
C - - - - - 0x010430 04:8420: B5 9B     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x010432 04:8422: 75 B6     ADC ram_obj_pos_Z_hi,X
C - - - - - 0x010434 04:8424: 8D AE 03  STA ram_03AE
C - - - - - 0x010437 04:8427: A5 D2     LDA ram_cam_pos_Y_lo
C - - - - - 0x010439 04:8429: 18        CLC
C - - - - - 0x01043A 04:842A: 69 40     ADC #< $0040
C - - - - - 0x01043C 04:842C: 8D AF 03  STA ram_03AF
C - - - - - 0x01043F 04:842F: A5 D3     LDA ram_cam_pos_Y_hi
C - - - - - 0x010441 04:8431: 69 00     ADC #> $0040
C - - - - - 0x010443 04:8433: 8D B0 03  STA ram_03B0
C - - - - - 0x010446 04:8436: AD AD 03  LDA ram_03AD
C - - - - - 0x010449 04:8439: 38        SEC
C - - - - - 0x01044A 04:843A: ED AF 03  SBC ram_03AF
C - - - - - 0x01044D 04:843D: 8D B1 03  STA ram_03B1
C - - - - - 0x010450 04:8440: AD AE 03  LDA ram_03AE
C - - - - - 0x010453 04:8443: ED B0 03  SBC ram_03B0
C - - - - - 0x010456 04:8446: 8D B2 03  STA ram_03B2
C - - - - - 0x010459 04:8449: 90 02     BCC bra_844D
bra_844B:
C - - - - - 0x01045B 04:844B: 18        CLC
C - - - - - 0x01045C 04:844C: 60        RTS
bra_844D:
- - - - - - 0x01045D 04:844D: B5 AD     LDA ram_obj_pos_Z_lo,X
- - - - - - 0x01045F 04:844F: 18        CLC
- - - - - - 0x010460 04:8450: 69 02     ADC #< $0002
- - - - - - 0x010462 04:8452: 95 AD     STA ram_obj_pos_Z_lo,X
- - - - - - 0x010464 04:8454: B5 B6     LDA ram_obj_pos_Z_hi,X
- - - - - - 0x010466 04:8456: 69 00     ADC #> $0002
- - - - - - 0x010468 04:8458: 95 B6     STA ram_obj_pos_Z_hi,X
- - - - - - 0x01046A 04:845A: 38        SEC
- - - - - - 0x01046B 04:845B: 60        RTS



sub_845C:
C - - - - - 0x01046C 04:845C: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x01046E 04:845E: 29 03     AND #con_003C_flag_01 + con_003C_flag_02
C - - - - - 0x010470 04:8460: F0 24     BEQ bra_8486
C - - - - - 0x010472 04:8462: 8A        TXA
C - - - - - 0x010473 04:8463: 48        PHA
C - - - - - 0x010474 04:8464: 29 FD     AND #$FD
C - - - - - 0x010476 04:8466: AA        TAX
C - - - - - 0x010477 04:8467: A0 8C     LDY #$8C
C - - - - - 0x010479 04:8469: 20 97 A5  JSR sub_A597
C - - - - - 0x01047C 04:846C: 68        PLA
C - - - - - 0x01047D 04:846D: AA        TAX
C - - - - - 0x01047E 04:846E: 90 0D     BCC bra_847D
C - - - - - 0x010480 04:8470: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x010482 04:8472: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x010484 04:8474: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x010486 04:8476: D0 05     BNE bra_847D
C - - - - - 0x010488 04:8478: A9 00     LDA #$00
C - - - - - 0x01048A 04:847A: 9D 16 03  STA ram_0316_obj,X
bra_847D:
C - - - - - 0x01048D 04:847D: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x010490 04:8480: 29 7F     AND #$7F
C - - - - - 0x010492 04:8482: C9 07     CMP #con_0361_07
C - - - - - 0x010494 04:8484: D0 30     BNE bra_84B6_RTS
bra_8486:
C - - - - - 0x010496 04:8486: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x010498 04:8488: 29 80     AND #con_004A_flag_knocked_down
C - - - - - 0x01049A 04:848A: 10 2A     BPL bra_84B6_RTS    ; bzk optimize, BPL without AND
C - - - - - 0x01049C 04:848C: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01049E 04:848E: 18        CLC
C - - - - - 0x01049F 04:848F: 75 AD     ADC ram_obj_pos_Z_lo,X
C - - - - - 0x0104A1 04:8491: 85 29     STA ram_0029_temp
C - - - - - 0x0104A3 04:8493: B5 9B     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0104A5 04:8495: 75 B6     ADC ram_obj_pos_Z_hi,X
C - - - - - 0x0104A7 04:8497: 85 2A     STA ram_002A_temp
C - - - - - 0x0104A9 04:8499: A5 29     LDA ram_0029_temp
C - - - - - 0x0104AB 04:849B: 38        SEC
C - - - - - 0x0104AC 04:849C: E5 D2     SBC ram_cam_pos_Y_lo
C - - - - - 0x0104AE 04:849E: 85 2B     STA ram_002B_temp
C - - - - - 0x0104B0 04:84A0: A5 2A     LDA ram_002A_temp
C - - - - - 0x0104B2 04:84A2: E5 D3     SBC ram_cam_pos_Y_hi
C - - - - - 0x0104B4 04:84A4: 85 2C     STA ram_002C_temp
C - - - - - 0x0104B6 04:84A6: 30 02     BMI bra_84AA
C - - - - - 0x0104B8 04:84A8: 10 0C     BPL bra_84B6_RTS    ; jmp
bra_84AA:
C - - - - - 0x0104BA 04:84AA: B5 43     LDA ram_state,X
C - - - - - 0x0104BC 04:84AC: 29 7F     AND #$7F
C - - - - - 0x0104BE 04:84AE: C9 26     CMP #con_state_death_normal
C - - - - - 0x0104C0 04:84B0: F0 04     BEQ bra_84B6_RTS
C - - - - - 0x0104C2 04:84B2: A9 26     LDA #con_state_death_normal
C - - - - - 0x0104C4 04:84B4: 95 43     STA ram_state,X
bra_84B6_RTS:
C - - - - - 0x0104C6 04:84B6: 60        RTS



sub_84B7:
C - - - - - 0x0104C7 04:84B7: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0104CA 04:84BA: C9 02     CMP #con_mission_Battle_in_the_Chopper
C - - - - - 0x0104CC 04:84BC: D0 35     BNE bra_84F3_RTS
C - - - - - 0x0104CE 04:84BE: AD 9C 03  LDA ram_039C
C - - - - - 0x0104D1 04:84C1: F0 30     BEQ bra_84F3_RTS
C - - - - - 0x0104D3 04:84C3: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0104D5 04:84C5: C9 70     CMP #$70
C - - - - - 0x0104D7 04:84C7: 90 2A     BCC bra_84F3_RTS
C - - - - - 0x0104D9 04:84C9: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x0104DB 04:84CB: C9 B8     CMP #$B8
C - - - - - 0x0104DD 04:84CD: 90 24     BCC bra_84F3_RTS
C - - - - - 0x0104DF 04:84CF: C9 C8     CMP #$C8
C - - - - - 0x0104E1 04:84D1: B0 20     BCS bra_84F3_RTS
C - - - - - 0x0104E3 04:84D3: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003E 003F 0040 0041 0042
C - - - - - 0x0104E5 04:84D5: 29 02     AND #con_003C_flag_02
C - - - - - 0x0104E7 04:84D7: D0 14     BNE bra_84ED
C - - - - - 0x0104E9 04:84D9: A9 01     LDA #con_0359_01
C - - - - - 0x0104EB 04:84DB: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0104EE 04:84DE: A9 07     LDA #con_0361_07
C - - - - - 0x0104F0 04:84E0: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x0104F3 04:84E3: A9 58     LDA #con_state_58
C - - - - - 0x0104F5 04:84E5: 95 43     STA ram_state,X
C - - - - - 0x0104F7 04:84E7: A9 4F     LDA #con_sfx_4F
; bzk optimize, JMP
C - - - - - 0x0104F9 04:84E9: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x0104FC 04:84EC: 60        RTS
bra_84ED:
C - - - - - 0x0104FD 04:84ED: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x0104FF 04:84EF: 29 7F     AND #con_003C_flag_exist ^ $FF
C - - - - - 0x010501 04:84F1: 95 3C     STA ram_003C_obj_flags,X ; 0040 0041 0042
bra_84F3_RTS:
C - - - - - 0x010503 04:84F3: 60        RTS



sub_84F4:
C - - - - - 0x010504 04:84F4: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x010507 04:84F7: C9 06     CMP #con_mission_Mansion_of_Terror
C - - - - - 0x010509 04:84F9: D0 57     BNE bra_8552
C - - - - - 0x01050B 04:84FB: AD 35 04  LDA ram_difficulty
C - - - - - 0x01050E 04:84FE: F0 52     BEQ bra_8552    ; if easy
; if not easy
C - - - - - 0x010510 04:8500: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x010513 04:8503: C9 04     CMP #$04
C - - - - - 0x010515 04:8505: 90 4B     BCC bra_8552
C - - - - - 0x010517 04:8507: C9 07     CMP #$07
C - - - - - 0x010519 04:8509: 90 0A     BCC bra_8515
C - - - - - 0x01051B 04:850B: C9 12     CMP #$12
C - - - - - 0x01051D 04:850D: 90 43     BCC bra_8552
C - - - - - 0x01051F 04:850F: C9 17     CMP #$17
C - - - - - 0x010521 04:8511: 90 19     BCC bra_852C
C - - - - - 0x010523 04:8513: B0 3D     BCS bra_8552    ; jmp
bra_8515:
C - - - - - 0x010525 04:8515: CD 79 03  CMP ram_0379
C - - - - - 0x010528 04:8518: F0 38     BEQ bra_8552
C - - - - - 0x01052A 04:851A: CD 7B 03  CMP ram_037B
C - - - - - 0x01052D 04:851D: F0 33     BEQ bra_8552
C - - - - - 0x01052F 04:851F: 38        SEC
C - - - - - 0x010530 04:8520: E9 04     SBC #$04
C - - - - - 0x010532 04:8522: A8        TAY
C - - - - - 0x010533 04:8523: B9 54 85  LDA tbl_8554,Y
C - - - - - 0x010536 04:8526: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010539 04:8529: 4C 40 85  JMP loc_8540
bra_852C:
C - - - - - 0x01053C 04:852C: CD 79 03  CMP ram_0379
C - - - - - 0x01053F 04:852F: F0 21     BEQ bra_8552
C - - - - - 0x010541 04:8531: CD 7B 03  CMP ram_037B
C - - - - - 0x010544 04:8534: F0 1C     BEQ bra_8552
- - - - - - 0x010546 04:8536: 38        SEC
- - - - - - 0x010547 04:8537: E9 12     SBC #con_weapon_id
- - - - - - 0x010549 04:8539: A8        TAY
- - - - - - 0x01054A 04:853A: B9 57 85  LDA tbl_8557_weapon,Y
- - - - - - 0x01054D 04:853D: 9D 59 03  STA ram_0359_obj,X
loc_8540:
C D 0 - - - 0x010550 04:8540: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x010552 04:8542: 30 04     BMI bra_8548    ; if con_004A_flag_knocked_down
- - - - - - 0x010554 04:8544: A9 23     LDA #con_state_23
- - - - - - 0x010556 04:8546: 95 43     STA ram_state,X
bra_8548:
C - - - - - 0x010558 04:8548: 20 CF 85  JSR sub_85CF
C - - - - - 0x01055B 04:854B: A5 23     LDA ram_0023
C - - - - - 0x01055D 04:854D: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x010560 04:8550: 38        SEC
C - - - - - 0x010561 04:8551: 60        RTS
bra_8552:
C - - - - - 0x010562 04:8552: 18        CLC
C - - - - - 0x010563 04:8553: 60        RTS



tbl_8554:
- D 0 - - - 0x010564 04:8554: 07        .byte con_0359_07   ; 04
- D 0 - - - 0x010565 04:8555: 06        .byte con_0359_06   ; 05
- - - - - - 0x010566 04:8556: 07        .byte con_0359_07   ; 06



tbl_8557_weapon:
- - - - - - 0x010567 04:8557: 0E        .byte con_0359_0E   ; 12 con_obj_knife
- - - - - - 0x010568 04:8558: 0F        .byte con_0359_0F   ; 13 con_obj_13
- - - - - - 0x010569 04:8559: 0F        .byte con_0359_0F   ; 14 con_obj_grenade
- - - - - - 0x01056A 04:855A: 0D        .byte con_0359_0D   ; 15 con_obj_chain_whip
- - - - - - 0x01056B 04:855B: 14        .byte con_0359_14   ; 16 con_obj_flame_grenades



sub_855C:
C - - - - - 0x01056C 04:855C: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x01056F 04:855F: C9 04     CMP #con_0361_04
C - - - - - 0x010571 04:8561: D0 3E     BNE bra_85A1_RTS
C - - - - - 0x010573 04:8563: A0 00     LDY #$00
C - - - - - 0x010575 04:8565: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x010578 04:8568: C9 01     CMP #con_0359_01
C - - - - - 0x01057A 04:856A: F0 10     BEQ bra_857C
C - - - - - 0x01057C 04:856C: C8        INY ; 01
C - - - - - 0x01057D 04:856D: C9 03     CMP #con_0359_03
C - - - - - 0x01057F 04:856F: F0 0B     BEQ bra_857C
C - - - - - 0x010581 04:8571: C8        INY ; 02
C - - - - - 0x010582 04:8572: C9 04     CMP #con_0359_04
C - - - - - 0x010584 04:8574: F0 06     BEQ bra_857C
C - - - - - 0x010586 04:8576: C8        INY ; 03
C - - - - - 0x010587 04:8577: C9 07     CMP #con_0359_07
C - - - - - 0x010589 04:8579: F0 01     BEQ bra_857C
C - - - - - 0x01058B 04:857B: C8        INY ; 04
bra_857C:
C - - - - - 0x01058C 04:857C: B9 A2 85  LDA tbl_85A2_pos_X_lo,Y
C - - - - - 0x01058F 04:857F: 38        SEC
C - - - - - 0x010590 04:8580: F5 77     SBC ram_obj_pos_X_lo,X
C - - - - - 0x010592 04:8582: B0 05     BCS bra_8589
C - - - - - 0x010594 04:8584: 49 FF     EOR #$FF
C - - - - - 0x010596 04:8586: 18        CLC
C - - - - - 0x010597 04:8587: 69 01     ADC #$01
bra_8589:
C - - - - - 0x010599 04:8589: 4A        LSR
C - - - - - 0x01059A 04:858A: 85 19     STA ram_0019_t15
C - - - - - 0x01059C 04:858C: A9 08     LDA #$08
C - - - - - 0x01059E 04:858E: 38        SEC
C - - - - - 0x01059F 04:858F: E5 19     SBC ram_0019_t15
C - - - - - 0x0105A1 04:8591: B0 02     BCS bra_8595
C - - - - - 0x0105A3 04:8593: A9 00     LDA #$00
bra_8595:
C - - - - - 0x0105A5 04:8595: 85 19     STA ram_0019_t16_pos_Z_lo
C - - - - - 0x0105A7 04:8597: 20 CF 85  JSR sub_85CF
C - - - - - 0x0105AA 04:859A: A5 29     LDA ram_0029_temp
C - - - - - 0x0105AC 04:859C: 18        CLC
C - - - - - 0x0105AD 04:859D: 65 19     ADC ram_0019_t16_pos_Z_lo
C - - - - - 0x0105AF 04:859F: 95 AD     STA ram_obj_pos_Z_lo,X
bra_85A1_RTS:
C - - - - - 0x0105B1 04:85A1: 60        RTS



tbl_85A2_pos_X_lo:
- D 0 - - - 0x0105B2 04:85A2: 50        .byte $50   ; 00 
- D 0 - - - 0x0105B3 04:85A3: A0        .byte $A0   ; 01 
- D 0 - - - 0x0105B4 04:85A4: C0        .byte $C0   ; 02 
- D 0 - - - 0x0105B5 04:85A5: C0        .byte $C0   ; 03 
- D 0 - - - 0x0105B6 04:85A6: 50        .byte $50   ; 04 



sub_85A7:
C - - - - - 0x0105B7 04:85A7: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x0105B9 04:85A9: 29 03     AND #con_003C_flag_01 + con_003C_flag_02
C - - - - - 0x0105BB 04:85AB: D0 21     BNE bra_85CE_RTS
C - - - - - 0x0105BD 04:85AD: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x0105BF 04:85AF: 29 08     AND #con_004A_flag_not_alive
C - - - - - 0x0105C1 04:85B1: F0 1B     BEQ bra_85CE_RTS
C - - - - - 0x0105C3 04:85B3: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x0105C5 04:85B5: 29 F7     AND #con_004A_flag_not_alive ^ $FF
C - - - - - 0x0105C7 04:85B7: 95 4A     STA ram_004A_obj_flags,X
C - - - - - 0x0105C9 04:85B9: 20 CF 85  JSR sub_85CF
C - - - - - 0x0105CC 04:85BC: A5 23     LDA ram_0023
C - - - - - 0x0105CE 04:85BE: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x0105D1 04:85C1: C9 03     CMP #con_0361_03
C - - - - - 0x0105D3 04:85C3: D0 04     BNE bra_85C9
; bzk optimize, JMP
C - - - - - 0x0105D5 04:85C5: 20 A8 8A  JSR sub_8AA8
C - - - - - 0x0105D8 04:85C8: 60        RTS
bra_85C9:
C - - - - - 0x0105D9 04:85C9: A9 00     LDA #con_0359_00
C - - - - - 0x0105DB 04:85CB: 9D 81 03  STA ram_0381_obj,X
bra_85CE_RTS:
C - - - - - 0x0105DE 04:85CE: 60        RTS



sub_85CF:
C - - - - - 0x0105DF 04:85CF: 98        TYA
C - - - - - 0x0105E0 04:85D0: 48        PHA
C - - - - - 0x0105E1 04:85D1: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0105E4 04:85D4: 0A        ASL
C - - - - - 0x0105E5 04:85D5: A8        TAY
C - - - - - 0x0105E6 04:85D6: B9 1D 8B  LDA tbl_8B1D,Y
C - - - - - 0x0105E9 04:85D9: 85 2F     STA ram_002F_temp
C - - - - - 0x0105EB 04:85DB: B9 1E 8B  LDA tbl_8B1D + $01,Y
C - - - - - 0x0105EE 04:85DE: 85 30     STA ram_0030_temp
C - - - - - 0x0105F0 04:85E0: BD 59 03  LDA ram_0359_obj,X
; * 04
C - - - - - 0x0105F3 04:85E3: 0A        ASL
C - - - - - 0x0105F4 04:85E4: 0A        ASL
C - - - - - 0x0105F5 04:85E5: 18        CLC
C - - - - - 0x0105F6 04:85E6: 7D 59 03  ADC ram_0359_obj,X
C - - - - - 0x0105F9 04:85E9: A8        TAY
C - - - - - 0x0105FA 04:85EA: C8        INY
C - - - - - 0x0105FB 04:85EB: C8        INY
C - - - - - 0x0105FC 04:85EC: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0105FE 04:85EE: 85 29     STA ram_0029_temp
C - - - - - 0x010600 04:85F0: C8        INY
C - - - - - 0x010601 04:85F1: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010603 04:85F3: 85 2A     STA ram_002A_temp
C - - - - - 0x010605 04:85F5: C8        INY
C - - - - - 0x010606 04:85F6: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010608 04:85F8: 85 23     STA ram_0023
C - - - - - 0x01060A 04:85FA: 68        PLA
C - - - - - 0x01060B 04:85FB: A8        TAY
C - - - - - 0x01060C 04:85FC: 60        RTS



sub_85FD:
C - - - - - 0x01060D 04:85FD: A5 1E     LDA ram_001E_temp
C - - - - - 0x01060F 04:85FF: F0 1B     BEQ bra_861C
C - - - - - 0x010611 04:8601: C9 01     CMP #$01
C - - - - - 0x010613 04:8603: F0 27     BEQ bra_862C
C - - - - - 0x010615 04:8605: C9 02     CMP #$02
C - - - - - 0x010617 04:8607: D0 03     BNE bra_860C
C - - - - - 0x010619 04:8609: 4C 70 86  JMP loc_8670
bra_860C:
loc_860C:
C D 0 - - - 0x01061C 04:860C: 18        CLC
C - - - - - 0x01061D 04:860D: AD B1 03  LDA ram_03B1
C - - - - - 0x010620 04:8610: 75 77     ADC ram_obj_pos_X_lo,X
C - - - - - 0x010622 04:8612: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x010624 04:8614: AD B2 03  LDA ram_03B2
C - - - - - 0x010627 04:8617: 75 80     ADC ram_obj_pos_X_hi,X
C - - - - - 0x010629 04:8619: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x01062B 04:861B: 60        RTS
bra_861C:
loc_861C:
C D 0 - - - 0x01062C 04:861C: 18        CLC
C - - - - - 0x01062D 04:861D: AD B1 03  LDA ram_03B1
C - - - - - 0x010630 04:8620: 75 92     ADC ram_obj_pos_Y_lo,X
C - - - - - 0x010632 04:8622: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x010634 04:8624: AD B2 03  LDA ram_03B2
C - - - - - 0x010637 04:8627: 75 9B     ADC ram_obj_pos_Y_hi,X
C - - - - - 0x010639 04:8629: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x01063B 04:862B: 60        RTS
bra_862C:
C - - - - - 0x01063C 04:862C: BD 0F 03  LDA ram_obj_direction,X
C - - - - - 0x01063F 04:862F: 18        CLC
C - - - - - 0x010640 04:8630: 69 10     ADC #$10
C - - - - - 0x010642 04:8632: 29 E0     AND #$E0
; / 20
C - - - - - 0x010644 04:8634: 4A        LSR
C - - - - - 0x010645 04:8635: 4A        LSR
C - - - - - 0x010646 04:8636: 4A        LSR
C - - - - - 0x010647 04:8637: 4A        LSR
C - - - - - 0x010648 04:8638: 4A        LSR
C - - - - - 0x010649 04:8639: 48        PHA
C - - - - - 0x01064A 04:863A: A5 1F     LDA ram_001F
C - - - - - 0x01064C 04:863C: 29 01     AND #$01
C - - - - - 0x01064E 04:863E: D0 18     BNE bra_8658
C - - - - - 0x010650 04:8640: 68        PLA
C - - - - - 0x010651 04:8641: C9 06     CMP #$06
C - - - - - 0x010653 04:8643: F0 10     BEQ bra_8655
C - - - - - 0x010655 04:8645: 38        SEC
C - - - - - 0x010656 04:8646: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x010658 04:8648: ED B1 03  SBC ram_03B1
C - - - - - 0x01065B 04:864B: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01065D 04:864D: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x01065F 04:864F: ED B2 03  SBC ram_03B2
C - - - - - 0x010662 04:8652: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x010664 04:8654: 60        RTS
bra_8655:
C - - - - - 0x010665 04:8655: 4C 1C 86  JMP loc_861C
bra_8658:
C - - - - - 0x010668 04:8658: 68        PLA
C - - - - - 0x010669 04:8659: C9 02     CMP #$02
C - - - - - 0x01066B 04:865B: F0 10     BEQ bra_866D
C - - - - - 0x01066D 04:865D: 38        SEC
C - - - - - 0x01066E 04:865E: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x010670 04:8660: ED B1 03  SBC ram_03B1
C - - - - - 0x010673 04:8663: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x010675 04:8665: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x010677 04:8667: ED B2 03  SBC ram_03B2
C - - - - - 0x01067A 04:866A: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x01067C 04:866C: 60        RTS
bra_866D:
C - - - - - 0x01067D 04:866D: 4C 1C 86  JMP loc_861C



loc_8670:
C D 0 - - - 0x010680 04:8670: BD 0F 03  LDA ram_obj_direction,X
C - - - - - 0x010683 04:8673: 18        CLC
C - - - - - 0x010684 04:8674: 69 10     ADC #$10
C - - - - - 0x010686 04:8676: 29 E0     AND #$E0
; / 20
C - - - - - 0x010688 04:8678: 4A        LSR
C - - - - - 0x010689 04:8679: 4A        LSR
C - - - - - 0x01068A 04:867A: 4A        LSR
C - - - - - 0x01068B 04:867B: 4A        LSR
C - - - - - 0x01068C 04:867C: 4A        LSR
C - - - - - 0x01068D 04:867D: 48        PHA
C - - - - - 0x01068E 04:867E: A5 1F     LDA ram_001F
C - - - - - 0x010690 04:8680: 29 01     AND #$01
C - - - - - 0x010692 04:8682: D0 0B     BNE bra_868F
C - - - - - 0x010694 04:8684: 68        PLA
C - - - - - 0x010695 04:8685: C9 02     CMP #$02
C - - - - - 0x010697 04:8687: F0 03     BEQ bra_868C
C - - - - - 0x010699 04:8689: 4C 0C 86  JMP loc_860C
bra_868C:
C - - - - - 0x01069C 04:868C: 4C 1C 86  JMP loc_861C
bra_868F:
C - - - - - 0x01069F 04:868F: 68        PLA
C - - - - - 0x0106A0 04:8690: C9 06     CMP #$06
C - - - - - 0x0106A2 04:8692: F0 03     BEQ bra_8697
C - - - - - 0x0106A4 04:8694: 4C 0C 86  JMP loc_860C
bra_8697:
C - - - - - 0x0106A7 04:8697: 4C 1C 86  JMP loc_861C


; bzk garbage
- - - - - - 0x0106AA 04:869A: 60        RTS



sub_869B:
; in
    ; Y = 00 01 02
C - - - - - 0x0106AB 04:869B: 84 19     STY ram_0019_t17
C - - - - - 0x0106AD 04:869D: A0 00     LDY #$00
C - - - - - 0x0106AF 04:869F: B5 BF     LDA ram_obj_id,X
C - - - - - 0x0106B1 04:86A1: C9 05     CMP #$05
C - - - - - 0x0106B3 04:86A3: 90 0E     BCC bra_86B3
C - - - - - 0x0106B5 04:86A5: A0 03     LDY #$03
C - - - - - 0x0106B7 04:86A7: C9 09     CMP #$09
C - - - - - 0x0106B9 04:86A9: 90 08     BCC bra_86B3
C - - - - - 0x0106BB 04:86AB: A0 00     LDY #$00
C - - - - - 0x0106BD 04:86AD: C9 12     CMP #$12
C - - - - - 0x0106BF 04:86AF: 90 02     BCC bra_86B3
C - - - - - 0x0106C1 04:86B1: A0 06     LDY #$06
bra_86B3:
C - - - - - 0x0106C3 04:86B3: 98        TYA
C - - - - - 0x0106C4 04:86B4: 18        CLC
C - - - - - 0x0106C5 04:86B5: 65 19     ADC ram_0019_t17
C - - - - - 0x0106C7 04:86B7: A8        TAY
C - - - - - 0x0106C8 04:86B8: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0106CA 04:86BA: 08        PHP
C - - - - - 0x0106CB 04:86BB: B9 12 87  LDA tbl_8712,Y
C - - - - - 0x0106CE 04:86BE: 28        PLP
C - - - - - 0x0106CF 04:86BF: 10 05     BPL bra_86C6
; if mirrored
C - - - - - 0x0106D1 04:86C1: 49 FF     EOR #$FF
C - - - - - 0x0106D3 04:86C3: 18        CLC
C - - - - - 0x0106D4 04:86C4: 69 01     ADC #$01
bra_86C6:
C - - - - - 0x0106D6 04:86C6: 29 FF     AND #$FF
C - - - - - 0x0106D8 04:86C8: 18        CLC
C - - - - - 0x0106D9 04:86C9: 08        PHP
C - - - - - 0x0106DA 04:86CA: 75 77     ADC ram_obj_pos_X_lo,X
C - - - - - 0x0106DC 04:86CC: 85 29     STA ram_0029_temp
C - - - - - 0x0106DE 04:86CE: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x0106E0 04:86D0: 69 00     ADC #$00
C - - - - - 0x0106E2 04:86D2: 28        PLP
C - - - - - 0x0106E3 04:86D3: 10 02     BPL bra_86D7
C - - - - - 0x0106E5 04:86D5: 69 FF     ADC #$FF
bra_86D7:
C - - - - - 0x0106E7 04:86D7: 85 2A     STA ram_002A_temp
C - - - - - 0x0106E9 04:86D9: 29 FF     AND #$FF
C - - - - - 0x0106EB 04:86DB: 10 06     BPL bra_86E3
C - - - - - 0x0106ED 04:86DD: A9 00     LDA #$00
C - - - - - 0x0106EF 04:86DF: 85 29     STA ram_0029_temp
C - - - - - 0x0106F1 04:86E1: 85 2A     STA ram_002A_temp
bra_86E3:
C - - - - - 0x0106F3 04:86E3: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x0106F5 04:86E5: 29 02     AND #con_003C_flag_02
C - - - - - 0x0106F7 04:86E7: D0 18     BNE bra_8701
C - - - - - 0x0106F9 04:86E9: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x0106FB 04:86EB: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0106FD 04:86ED: C9 80     CMP #con_004A_flag_knocked_down
C - - - - - 0x0106FF 04:86EF: D0 10     BNE bra_8701
C - - - - - 0x010701 04:86F1: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x010703 04:86F3: 18        CLC
C - - - - - 0x010704 04:86F4: 69 02     ADC #< $0002
C - - - - - 0x010706 04:86F6: 85 2B     STA ram_002B_temp
C - - - - - 0x010708 04:86F8: B5 B6     LDA ram_obj_pos_Z_hi,X
C - - - - - 0x01070A 04:86FA: 69 00     ADC #> $0002
C - - - - - 0x01070C 04:86FC: 85 2C     STA ram_002C_temp
C - - - - - 0x01070E 04:86FE: 4C 09 87  JMP loc_8709
bra_8701:
C - - - - - 0x010711 04:8701: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x010713 04:8703: 85 2B     STA ram_002B_temp
C - - - - - 0x010715 04:8705: B5 B6     LDA ram_obj_pos_Z_hi,X
C - - - - - 0x010717 04:8707: 85 2C     STA ram_002C_temp
loc_8709:
C D 0 - - - 0x010719 04:8709: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01071B 04:870B: 85 2D     STA ram_002D_temp
C - - - - - 0x01071D 04:870D: B5 9B     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01071F 04:870F: 85 2E     STA ram_002E_temp
C - - - - - 0x010721 04:8711: 60        RTS



tbl_8712:
; 00 
; con_obj_williams
; con_obj_roper
; con_obj_linda
; con_obj_chin_taimei
; con_obj_right_arm
; con_obj_doppelganger
; con_obj_ninja
; con_obj_shadow_warrior
- D 0 - - - 0x010722 04:8712: 00        .byte $00   ; 00 
- D 0 - - - 0x010723 04:8713: FA        .byte $FA   ; 01 
- D 0 - - - 0x010724 04:8714: 06        .byte $06   ; 02 
; 03 
; con_obj_bolo
; con_obj_burnov
; con_obj_abore
- D 0 - - - 0x010725 04:8715: 00        .byte $00   ; 03 
- D 0 - - - 0x010726 04:8716: F8        .byte $F8   ; 04 
- D 0 - - - 0x010727 04:8717: 08        .byte $08   ; 05 
; 06 
- D 0 - - - 0x010728 04:8718: 00        .byte $00   ; 06 
- - - - - - 0x010729 04:8719: FC        .byte $FC   ; 07 
- D 0 - - - 0x01072A 04:871A: 04        .byte $04   ; 08 



sub_871B:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01072B 04:871B: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x01072E 04:871E: 0A        ASL
C - - - - - 0x01072F 04:871F: A8        TAY
C - - - - - 0x010730 04:8720: B9 1D 8B  LDA tbl_8B1D,Y
C - - - - - 0x010733 04:8723: 85 2F     STA ram_002F_temp
C - - - - - 0x010735 04:8725: B9 1E 8B  LDA tbl_8B1D + $01,Y
C - - - - - 0x010738 04:8728: 85 30     STA ram_0030_temp
C - - - - - 0x01073A 04:872A: BD 59 03  LDA ram_0359_obj,X
; * 04
C - - - - - 0x01073D 04:872D: 0A        ASL
C - - - - - 0x01073E 04:872E: 0A        ASL
C - - - - - 0x01073F 04:872F: 18        CLC
C - - - - - 0x010740 04:8730: 7D 59 03  ADC ram_0359_obj,X
C - - - - - 0x010743 04:8733: A8        TAY
C - - - - - 0x010744 04:8734: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010746 04:8736: 8D A9 03  STA ram_03A9
C - - - - - 0x010749 04:8739: C8        INY
C - - - - - 0x01074A 04:873A: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x01074C 04:873C: 8D AA 03  STA ram_03AA
C - - - - - 0x01074F 04:873F: A0 00     LDY #$00
C - - - - - 0x010751 04:8741: AD A9 03  LDA ram_03A9
C - - - - - 0x010754 04:8744: 85 2F     STA ram_002F_temp
C - - - - - 0x010756 04:8746: AD AA 03  LDA ram_03AA
C - - - - - 0x010759 04:8749: 85 30     STA ram_0030_temp
bra_874B_loop:
C - - - - - 0x01075B 04:874B: 38        SEC
C - - - - - 0x01075C 04:874C: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x01075E 04:874E: E5 29     SBC ram_0029_temp
; bzk optimize, useless STA
C - - - - - 0x010760 04:8750: 85 19     STA ram_0019_t18_useless
C - - - - - 0x010762 04:8752: C8        INY
C - - - - - 0x010763 04:8753: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010765 04:8755: E5 2A     SBC ram_002A_temp
C - - - - - 0x010767 04:8757: C8        INY
C - - - - - 0x010768 04:8758: B0 04     BCS bra_875E
C - - - - - 0x01076A 04:875A: C8        INY
C - - - - - 0x01076B 04:875B: C8        INY
C - - - - - 0x01076C 04:875C: D0 ED     BNE bra_874B_loop   ; jmp
bra_875E:
C - - - - - 0x01076E 04:875E: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010770 04:8760: 8D AB 03  STA ram_03AB
C - - - - - 0x010773 04:8763: C8        INY
C - - - - - 0x010774 04:8764: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010776 04:8766: 8D AC 03  STA ram_03AC
C - - - - - 0x010779 04:8769: A0 00     LDY #$00
C - - - - - 0x01077B 04:876B: 84 1F     STY ram_001F
C - - - - - 0x01077D 04:876D: AD AB 03  LDA ram_03AB
C - - - - - 0x010780 04:8770: 85 2F     STA ram_002F_temp
C - - - - - 0x010782 04:8772: AD AC 03  LDA ram_03AC
C - - - - - 0x010785 04:8775: 85 30     STA ram_0030_temp
bra_8777_loop:
C - - - - - 0x010787 04:8777: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010789 04:8779: 30 6C     BMI bra_87E7
C - - - - - 0x01078B 04:877B: 48        PHA
C - - - - - 0x01078C 04:877C: C8        INY
C - - - - - 0x01078D 04:877D: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x01078F 04:877F: 8D AD 03  STA ram_03AD
C - - - - - 0x010792 04:8782: C8        INY
C - - - - - 0x010793 04:8783: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x010795 04:8785: 8D AE 03  STA ram_03AE
C - - - - - 0x010798 04:8788: 68        PLA
C - - - - - 0x010799 04:8789: 85 1E     STA ram_001E_temp
C - - - - - 0x01079B 04:878B: F0 0F     BEQ bra_879C
C - - - - - 0x01079D 04:878D: C9 01     CMP #$01
C - - - - - 0x01079F 04:878F: F0 12     BEQ bra_87A3
C - - - - - 0x0107A1 04:8791: C9 02     CMP #$02
C - - - - - 0x0107A3 04:8793: F0 15     BEQ bra_87AA
C - - - - - 0x0107A5 04:8795: 20 9B 88  JSR sub_889B
C - - - - - 0x0107A8 04:8798: B0 1E     BCS bra_87B8
C - - - - - 0x0107AA 04:879A: 90 13     BCC bra_87AF    ; jmp
bra_879C:
C - - - - - 0x0107AC 04:879C: 20 F5 87  JSR sub_87F5
C - - - - - 0x0107AF 04:879F: B0 17     BCS bra_87B8
C - - - - - 0x0107B1 04:87A1: 90 0C     BCC bra_87AF    ; jmp
bra_87A3:
C - - - - - 0x0107B3 04:87A3: 20 21 88  JSR sub_8821
C - - - - - 0x0107B6 04:87A6: B0 10     BCS bra_87B8
C - - - - - 0x0107B8 04:87A8: 90 05     BCC bra_87AF    ; jmp
bra_87AA:
C - - - - - 0x0107BA 04:87AA: 20 5E 88  JSR sub_885E
C - - - - - 0x0107BD 04:87AD: B0 09     BCS bra_87B8
bra_87AF:
C - - - - - 0x0107BF 04:87AF: 98        TYA
C - - - - - 0x0107C0 04:87B0: 18        CLC
C - - - - - 0x0107C1 04:87B1: 69 04     ADC #$04
C - - - - - 0x0107C3 04:87B3: A8        TAY
C - - - - - 0x0107C4 04:87B4: E6 1F     INC ram_001F
C - - - - - 0x0107C6 04:87B6: D0 BF     BNE bra_8777_loop
bra_87B8:
C - - - - - 0x0107C8 04:87B8: C8        INY
C - - - - - 0x0107C9 04:87B9: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0107CB 04:87BB: 85 19     STA ram_0019_t14
C - - - - - 0x0107CD 04:87BD: C8        INY
C - - - - - 0x0107CE 04:87BE: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0107D0 04:87C0: 85 1A     STA ram_001A_t10
C - - - - - 0x0107D2 04:87C2: C8        INY
C - - - - - 0x0107D3 04:87C3: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0107D5 04:87C5: 85 1B     STA ram_001B_temp
C - - - - - 0x0107D7 04:87C7: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0107DA 04:87CA: 0A        ASL
C - - - - - 0x0107DB 04:87CB: A8        TAY
C - - - - - 0x0107DC 04:87CC: B9 1D 8B  LDA tbl_8B1D,Y
C - - - - - 0x0107DF 04:87CF: 85 2F     STA ram_002F_temp
C - - - - - 0x0107E1 04:87D1: B9 1E 8B  LDA tbl_8B1D + $01,Y
C - - - - - 0x0107E4 04:87D4: 85 30     STA ram_0030_temp
C - - - - - 0x0107E6 04:87D6: A5 1A     LDA ram_001A_t10
; * 04
C - - - - - 0x0107E8 04:87D8: 0A        ASL
C - - - - - 0x0107E9 04:87D9: 0A        ASL
C - - - - - 0x0107EA 04:87DA: 18        CLC
C - - - - - 0x0107EB 04:87DB: 65 1A     ADC ram_001A_t10
C - - - - - 0x0107ED 04:87DD: 18        CLC
C - - - - - 0x0107EE 04:87DE: 69 04     ADC #$04
C - - - - - 0x0107F0 04:87E0: A8        TAY
C - - - - - 0x0107F1 04:87E1: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0107F3 04:87E3: 85 1C     STA ram_001C_t02
C - - - - - 0x0107F5 04:87E5: 38        SEC
C - - - - - 0x0107F6 04:87E6: 60        RTS
bra_87E7:
C - - - - - 0x0107F7 04:87E7: A9 FF     LDA #$FF
; bzk optimize, useless STA
C - - - - - 0x0107F9 04:87E9: 85 19     STA ram_0019_t19_useless
; bzk optimize, useless STA
C - - - - - 0x0107FB 04:87EB: 85 1A     STA ram_001A_t11_useless
C - - - - - 0x0107FD 04:87ED: 85 1C     STA ram_001C_temp
C - - - - - 0x0107FF 04:87EF: 29 7F     AND #$7F
C - - - - - 0x010801 04:87F1: 85 1B     STA ram_001B_temp
C - - - - - 0x010803 04:87F3: 18        CLC
C - - - - - 0x010804 04:87F4: 60        RTS



sub_87F5:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x010805 04:87F5: AD AD 03  LDA ram_03AD
C - - - - - 0x010808 04:87F8: 38        SEC
C - - - - - 0x010809 04:87F9: E5 2D     SBC ram_002D_temp
C - - - - - 0x01080B 04:87FB: 8D B1 03  STA ram_03B1
C - - - - - 0x01080E 04:87FE: AD AE 03  LDA ram_03AE
C - - - - - 0x010811 04:8801: E5 2E     SBC ram_002E_temp
C - - - - - 0x010813 04:8803: 8D B2 03  STA ram_03B2
C - - - - - 0x010816 04:8806: 0D B1 03  ORA ram_03B1
C - - - - - 0x010819 04:8809: F0 12     BEQ bra_881D
C - - - - - 0x01081B 04:880B: A5 1F     LDA ram_001F
C - - - - - 0x01081D 04:880D: 29 01     AND #$01
C - - - - - 0x01081F 04:880F: F0 07     BEQ bra_8818
C - - - - - 0x010821 04:8811: AD B2 03  LDA ram_03B2
C - - - - - 0x010824 04:8814: 30 07     BMI bra_881D
C - - - - - 0x010826 04:8816: 10 07     BPL bra_881F    ; jmp
bra_8818:
C - - - - - 0x010828 04:8818: AD B2 03  LDA ram_03B2
C - - - - - 0x01082B 04:881B: 30 02     BMI bra_881F
bra_881D:
C - - - - - 0x01082D 04:881D: 18        CLC
C - - - - - 0x01082E 04:881E: 60        RTS
bra_881F:
C - - - - - 0x01082F 04:881F: 38        SEC
C - - - - - 0x010830 04:8820: 60        RTS



sub_8821:
C - - - - - 0x010831 04:8821: AD AD 03  LDA ram_03AD
C - - - - - 0x010834 04:8824: 18        CLC
C - - - - - 0x010835 04:8825: 65 29     ADC ram_0029_temp
C - - - - - 0x010837 04:8827: 8D AF 03  STA ram_03AF
C - - - - - 0x01083A 04:882A: AD AE 03  LDA ram_03AE
C - - - - - 0x01083D 04:882D: 65 2A     ADC ram_002A_temp
C - - - - - 0x01083F 04:882F: 8D B0 03  STA ram_03B0
C - - - - - 0x010842 04:8832: AD AF 03  LDA ram_03AF
C - - - - - 0x010845 04:8835: 38        SEC
C - - - - - 0x010846 04:8836: E5 2D     SBC ram_002D_temp
C - - - - - 0x010848 04:8838: 8D B1 03  STA ram_03B1
C - - - - - 0x01084B 04:883B: AD B0 03  LDA ram_03B0
C - - - - - 0x01084E 04:883E: E5 2E     SBC ram_002E_temp
C - - - - - 0x010850 04:8840: 8D B2 03  STA ram_03B2
C - - - - - 0x010853 04:8843: 0D B1 03  ORA ram_03B1
C - - - - - 0x010856 04:8846: F0 12     BEQ bra_885A
C - - - - - 0x010858 04:8848: A5 1F     LDA ram_001F
C - - - - - 0x01085A 04:884A: 29 01     AND #$01
C - - - - - 0x01085C 04:884C: F0 07     BEQ bra_8855
C - - - - - 0x01085E 04:884E: AD B2 03  LDA ram_03B2
C - - - - - 0x010861 04:8851: 30 07     BMI bra_885A
C - - - - - 0x010863 04:8853: 10 07     BPL bra_885C    ; jmp
bra_8855:
C - - - - - 0x010865 04:8855: AD B2 03  LDA ram_03B2
C - - - - - 0x010868 04:8858: 30 02     BMI bra_885C
bra_885A:
C - - - - - 0x01086A 04:885A: 18        CLC
C - - - - - 0x01086B 04:885B: 60        RTS
bra_885C:
C - - - - - 0x01086C 04:885C: 38        SEC
C - - - - - 0x01086D 04:885D: 60        RTS



sub_885E:
C - - - - - 0x01086E 04:885E: AD AD 03  LDA ram_03AD
C - - - - - 0x010871 04:8861: 38        SEC
C - - - - - 0x010872 04:8862: E5 29     SBC ram_0029_temp
C - - - - - 0x010874 04:8864: 8D AF 03  STA ram_03AF
C - - - - - 0x010877 04:8867: AD AE 03  LDA ram_03AE
C - - - - - 0x01087A 04:886A: E5 2A     SBC ram_002A_temp
C - - - - - 0x01087C 04:886C: 8D B0 03  STA ram_03B0
C - - - - - 0x01087F 04:886F: AD AF 03  LDA ram_03AF
C - - - - - 0x010882 04:8872: 38        SEC
C - - - - - 0x010883 04:8873: E5 2D     SBC ram_002D_temp
C - - - - - 0x010885 04:8875: 8D B1 03  STA ram_03B1
C - - - - - 0x010888 04:8878: AD B0 03  LDA ram_03B0
C - - - - - 0x01088B 04:887B: E5 2E     SBC ram_002E_temp
C - - - - - 0x01088D 04:887D: 8D B2 03  STA ram_03B2
C - - - - - 0x010890 04:8880: 0D B1 03  ORA ram_03B1
C - - - - - 0x010893 04:8883: F0 12     BEQ bra_8897
C - - - - - 0x010895 04:8885: A5 1F     LDA ram_001F
C - - - - - 0x010897 04:8887: 29 01     AND #$01
C - - - - - 0x010899 04:8889: F0 07     BEQ bra_8892
C - - - - - 0x01089B 04:888B: AD B2 03  LDA ram_03B2
C - - - - - 0x01089E 04:888E: 30 07     BMI bra_8897
C - - - - - 0x0108A0 04:8890: 10 07     BPL bra_8899    ; jmp
bra_8892:
C - - - - - 0x0108A2 04:8892: AD B2 03  LDA ram_03B2
C - - - - - 0x0108A5 04:8895: 30 02     BMI bra_8899
bra_8897:
C - - - - - 0x0108A7 04:8897: 18        CLC
C - - - - - 0x0108A8 04:8898: 60        RTS
bra_8899:
C - - - - - 0x0108A9 04:8899: 38        SEC
C - - - - - 0x0108AA 04:889A: 60        RTS



sub_889B:
C - - - - - 0x0108AB 04:889B: 20 CA 88  JSR sub_88CA
C - - - - - 0x0108AE 04:889E: AD AD 03  LDA ram_03AD
C - - - - - 0x0108B1 04:88A1: 38        SEC
C - - - - - 0x0108B2 04:88A2: E5 29     SBC ram_0029_temp
C - - - - - 0x0108B4 04:88A4: 8D B1 03  STA ram_03B1
C - - - - - 0x0108B7 04:88A7: AD AE 03  LDA ram_03AE
C - - - - - 0x0108BA 04:88AA: E5 2A     SBC ram_002A_temp
C - - - - - 0x0108BC 04:88AC: 8D B2 03  STA ram_03B2
C - - - - - 0x0108BF 04:88AF: 0D B1 03  ORA ram_03B1
C - - - - - 0x0108C2 04:88B2: F0 12     BEQ bra_88C6
C - - - - - 0x0108C4 04:88B4: A5 1F     LDA ram_001F
C - - - - - 0x0108C6 04:88B6: 29 01     AND #$01
C - - - - - 0x0108C8 04:88B8: F0 07     BEQ bra_88C1
C - - - - - 0x0108CA 04:88BA: AD B2 03  LDA ram_03B2
C - - - - - 0x0108CD 04:88BD: 30 07     BMI bra_88C6
C - - - - - 0x0108CF 04:88BF: 10 07     BPL bra_88C8    ; jmp
bra_88C1:
C - - - - - 0x0108D1 04:88C1: AD B2 03  LDA ram_03B2
C - - - - - 0x0108D4 04:88C4: 30 02     BMI bra_88C8
bra_88C6:
C - - - - - 0x0108D6 04:88C6: 18        CLC
C - - - - - 0x0108D7 04:88C7: 60        RTS
bra_88C8:
C - - - - - 0x0108D8 04:88C8: 38        SEC
C - - - - - 0x0108D9 04:88C9: 60        RTS



sub_88CA:
C - - - - - 0x0108DA 04:88CA: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x0108DD 04:88CD: 29 7F     AND #$7F
C - - - - - 0x0108DF 04:88CF: C9 08     CMP #con_0361_08
C - - - - - 0x0108E1 04:88D1: D0 0C     BNE bra_88DF_RTS
C - - - - - 0x0108E3 04:88D3: A5 1F     LDA ram_001F
C - - - - - 0x0108E5 04:88D5: C9 03     CMP #$03
C - - - - - 0x0108E7 04:88D7: D0 06     BNE bra_88DF_RTS
C - - - - - 0x0108E9 04:88D9: AD 7A 03  LDA ram_037A
C - - - - - 0x0108EC 04:88DC: 8D AD 03  STA ram_03AD
bra_88DF_RTS:
C - - - - - 0x0108EF 04:88DF: 60        RTS



sub_88E0:
C - - - - - 0x0108F0 04:88E0: A5 1B     LDA ram_001B_temp
C - - - - - 0x0108F2 04:88E2: C9 7F     CMP #$7F
C - - - - - 0x0108F4 04:88E4: D0 03     BNE bra_88E9
bra_88E6:
C - - - - - 0x0108F6 04:88E6: 4C 89 89  JMP loc_8989
bra_88E9:
C - - - - - 0x0108F9 04:88E9: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x0108FB 04:88EB: 29 40     AND #con_004A_flag_stunned
C - - - - - 0x0108FD 04:88ED: D0 F7     BNE bra_88E6
C - - - - - 0x0108FF 04:88EF: A5 1B     LDA ram_001B_temp
C - - - - - 0x010901 04:88F1: 0A        ASL
C - - - - - 0x010902 04:88F2: A8        TAY
C - - - - - 0x010903 04:88F3: B9 14 A1  LDA tbl_A114,Y
C - - - - - 0x010906 04:88F6: 85 2F     STA ram_002F_temp
C - - - - - 0x010908 04:88F8: B9 15 A1  LDA tbl_A114 + $01,Y
C - - - - - 0x01090B 04:88FB: 85 30     STA ram_0030_temp
C - - - - - 0x01090D 04:88FD: 38        SEC
C - - - - - 0x01090E 04:88FE: A5 2F     LDA ram_002F_temp
C - - - - - 0x010910 04:8900: F5 77     SBC ram_obj_pos_X_lo,X
C - - - - - 0x010912 04:8902: 8D A9 03  STA ram_03A9
C - - - - - 0x010915 04:8905: A5 30     LDA ram_0030_temp
C - - - - - 0x010917 04:8907: F5 80     SBC ram_obj_pos_X_hi,X
C - - - - - 0x010919 04:8909: 8D AA 03  STA ram_03AA
C - - - - - 0x01091C 04:890C: AD AA 03  LDA ram_03AA
C - - - - - 0x01091F 04:890F: 10 15     BPL bra_8926
C - - - - - 0x010921 04:8911: AD A9 03  LDA ram_03A9
C - - - - - 0x010924 04:8914: 49 FF     EOR #$FF
C - - - - - 0x010926 04:8916: 18        CLC
C - - - - - 0x010927 04:8917: 69 01     ADC #< $0001
C - - - - - 0x010929 04:8919: 8D A9 03  STA ram_03A9
C - - - - - 0x01092C 04:891C: AD AA 03  LDA ram_03AA
C - - - - - 0x01092F 04:891F: 49 FF     EOR #$FF
C - - - - - 0x010931 04:8921: 69 00     ADC #> $0001
C - - - - - 0x010933 04:8923: 8D AA 03  STA ram_03AA
bra_8926:
C - - - - - 0x010936 04:8926: AD AA 03  LDA ram_03AA
C - - - - - 0x010939 04:8929: D0 5E     BNE bra_8989
C - - - - - 0x01093B 04:892B: AD A9 03  LDA ram_03A9
C - - - - - 0x01093E 04:892E: C9 08     CMP #$08
C - - - - - 0x010940 04:8930: B0 57     BCS bra_8989
C - - - - - 0x010942 04:8932: A5 1B     LDA ram_001B_temp
C - - - - - 0x010944 04:8934: 10 31     BPL bra_8967
C - - - - - 0x010946 04:8936: A9 05     LDA #con_state_ladder_climb_down
C - - - - - 0x010948 04:8938: 95 43     STA ram_state,X
C - - - - - 0x01094A 04:893A: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x01094C 04:893C: 38        SEC
C - - - - - 0x01094D 04:893D: E9 0A     SBC #< $000A
C - - - - - 0x01094F 04:893F: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x010951 04:8941: B5 B6     LDA ram_obj_pos_Z_hi,X
C - - - - - 0x010953 04:8943: E9 00     SBC #> $000A
C - - - - - 0x010955 04:8945: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x010957 04:8947: A5 1B     LDA ram_001B_temp
C - - - - - 0x010959 04:8949: 29 7F     AND #$7F
C - - - - - 0x01095B 04:894B: 0A        ASL
C - - - - - 0x01095C 04:894C: A8        TAY
C - - - - - 0x01095D 04:894D: B9 34 A1  LDA tbl_A134,Y
C - - - - - 0x010960 04:8950: 85 29     STA ram_0029_temp
C - - - - - 0x010962 04:8952: B9 35 A1  LDA tbl_A134 + $01,Y
C - - - - - 0x010965 04:8955: 85 2A     STA ram_002A_temp
C - - - - - 0x010967 04:8957: A0 06     LDY #$06
C - - - - - 0x010969 04:8959: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x01096B 04:895B: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x01096E 04:895E: C8        INY ; 07
C - - - - - 0x01096F 04:895F: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x010971 04:8961: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x010974 04:8964: 4C 78 89  JMP loc_8978
bra_8967:
C - - - - - 0x010977 04:8967: A9 03     LDA #con_state_ladder_climb_up
C - - - - - 0x010979 04:8969: 95 43     STA ram_state,X
C - - - - - 0x01097B 04:896B: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x01097D 04:896D: 18        CLC
C - - - - - 0x01097E 04:896E: 69 04     ADC #< $0004
C - - - - - 0x010980 04:8970: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x010982 04:8972: B5 B6     LDA ram_obj_pos_Z_hi,X
C - - - - - 0x010984 04:8974: 69 00     ADC #> $0004
C - - - - - 0x010986 04:8976: 95 B6     STA ram_obj_pos_Z_hi,X
loc_8978:
C D 0 - - - 0x010988 04:8978: A5 2F     LDA ram_002F_temp
C - - - - - 0x01098A 04:897A: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01098C 04:897C: A5 30     LDA ram_0030_temp
C - - - - - 0x01098E 04:897E: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x010990 04:8980: A5 1B     LDA ram_001B_temp
C - - - - - 0x010992 04:8982: 09 80     ORA #$80
C - - - - - 0x010994 04:8984: 9D 69 03  STA ram_0369_obj,X
C - - - - - 0x010997 04:8987: 38        SEC
C - - - - - 0x010998 04:8988: 60        RTS
bra_8989:
loc_8989:
C D 0 - - - 0x010999 04:8989: A9 00     LDA #$00
C - - - - - 0x01099B 04:898B: 9D 69 03  STA ram_0369_obj,X
C - - - - - 0x01099E 04:898E: 18        CLC
C - - - - - 0x01099F 04:898F: 60        RTS



sub_8990:
C - - - - - 0x0109A0 04:8990: A5 1E     LDA ram_001E_temp
C - - - - - 0x0109A2 04:8992: F0 19     BEQ bra_89AD
C - - - - - 0x0109A4 04:8994: AD B2 03  LDA ram_03B2
C - - - - - 0x0109A7 04:8997: 30 06     BMI bra_899F
C - - - - - 0x0109A9 04:8999: AD B1 03  LDA ram_03B1
C - - - - - 0x0109AC 04:899C: 4C A7 89  JMP loc_89A7
bra_899F:
C - - - - - 0x0109AF 04:899F: AD B1 03  LDA ram_03B1
C - - - - - 0x0109B2 04:89A2: 49 FF     EOR #$FF
C - - - - - 0x0109B4 04:89A4: 18        CLC
C - - - - - 0x0109B5 04:89A5: 69 01     ADC #$01
loc_89A7:
C D 0 - - - 0x0109B7 04:89A7: C9 10     CMP #$10
C - - - - - 0x0109B9 04:89A9: B0 02     BCS bra_89AD
C - - - - - 0x0109BB 04:89AB: 18        CLC
C - - - - - 0x0109BC 04:89AC: 60        RTS
bra_89AD:
C - - - - - 0x0109BD 04:89AD: 38        SEC
C - - - - - 0x0109BE 04:89AE: 60        RTS



sub_89AF:
C - - - - - 0x0109BF 04:89AF: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0109C2 04:89B2: C9 09     CMP #con_mission_Trap_Room_pt3
C - - - - - 0x0109C4 04:89B4: F0 4C     BEQ bra_8A02
C - - - - - 0x0109C6 04:89B6: C9 07     CMP #con_mission_Trap_Room_pt1
C - - - - - 0x0109C8 04:89B8: F0 41     BEQ bra_89FB
C - - - - - 0x0109CA 04:89BA: C9 06     CMP #con_mission_Mansion_of_Terror
C - - - - - 0x0109CC 04:89BC: F0 1D     BEQ bra_89DB
C - - - - - 0x0109CE 04:89BE: C9 05     CMP #con_mission_Forest_of_Death
C - - - - - 0x0109D0 04:89C0: F0 12     BEQ bra_89D4
C - - - - - 0x0109D2 04:89C2: C9 04     CMP #con_mission_Undersea_Base_pt2
C - - - - - 0x0109D4 04:89C4: F0 07     BEQ bra_89CD
C - - - - - 0x0109D6 04:89C6: A9 0D     LDA #con_0359_0D
C - - - - - 0x0109D8 04:89C8: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0109DB 04:89CB: D0 53     BNE bra_8A20    ; jmp
bra_89CD:
C - - - - - 0x0109DD 04:89CD: A9 09     LDA #con_0359_09
C - - - - - 0x0109DF 04:89CF: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0109E2 04:89D2: D0 4C     BNE bra_8A20    ; jmp
bra_89D4:
C - - - - - 0x0109E4 04:89D4: A9 0A     LDA #con_0359_0A
C - - - - - 0x0109E6 04:89D6: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0109E9 04:89D9: D0 45     BNE bra_8A20    ; jmp
bra_89DB:
C - - - - - 0x0109EB 04:89DB: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x0109EE 04:89DE: C9 1A     CMP #$1A
C - - - - - 0x0109F0 04:89E0: 90 0B     BCC bra_89ED
C - - - - - 0x0109F2 04:89E2: C9 1E     CMP #$1E
C - - - - - 0x0109F4 04:89E4: 90 0E     BCC bra_89F4
C - - - - - 0x0109F6 04:89E6: A9 13     LDA #con_0359_13
C - - - - - 0x0109F8 04:89E8: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x0109FB 04:89EB: D0 33     BNE bra_8A20    ; jmp
bra_89ED:
C - - - - - 0x0109FD 04:89ED: A9 0E     LDA #con_0359_0E
C - - - - - 0x0109FF 04:89EF: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010A02 04:89F2: D0 2C     BNE bra_8A20    ; jmp
bra_89F4:
C - - - - - 0x010A04 04:89F4: A9 0F     LDA #con_0359_0F
C - - - - - 0x010A06 04:89F6: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010A09 04:89F9: D0 25     BNE bra_8A20    ; jmp
bra_89FB:
C - - - - - 0x010A0B 04:89FB: A9 08     LDA #con_0359_08
C - - - - - 0x010A0D 04:89FD: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010A10 04:8A00: D0 1E     BNE bra_8A20    ; jmp
bra_8A02:
C - - - - - 0x010A12 04:8A02: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x010A15 04:8A05: C9 0D     CMP #$0D
C - - - - - 0x010A17 04:8A07: F0 0B     BEQ bra_8A14
C - - - - - 0x010A19 04:8A09: C9 0E     CMP #$0E
C - - - - - 0x010A1B 04:8A0B: F0 0E     BEQ bra_8A1B
- - - - - - 0x010A1D 04:8A0D: A9 02     LDA #con_0359_02
- - - - - - 0x010A1F 04:8A0F: 9D 59 03  STA ram_0359_obj,X
- - - - - - 0x010A22 04:8A12: D0 0C     BNE bra_8A20    ; jmp
bra_8A14:
C - - - - - 0x010A24 04:8A14: A9 0C     LDA #con_0359_0C
C - - - - - 0x010A26 04:8A16: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010A29 04:8A19: D0 05     BNE bra_8A20    ; jmp
bra_8A1B:
C - - - - - 0x010A2B 04:8A1B: A9 03     LDA #con_0359_03
C - - - - - 0x010A2D 04:8A1D: 9D 59 03  STA ram_0359_obj,X
bra_8A20:   ; bzk optimize, redirect to 0x010A2D, delete several STA
C - - - - - 0x010A30 04:8A20: 20 CF 85  JSR sub_85CF
C - - - - - 0x010A33 04:8A23: A5 23     LDA ram_0023
C - - - - - 0x010A35 04:8A25: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x010A38 04:8A28: 60        RTS



sub_8A29:
C - - - - - 0x010A39 04:8A29: BD 81 03  LDA ram_0381_obj,X
C - - - - - 0x010A3C 04:8A2C: 10 79     BPL bra_8AA7_RTS
C - - - - - 0x010A3E 04:8A2E: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x010A41 04:8A31: 85 22     STA ram_0022
C - - - - - 0x010A43 04:8A33: BD 81 03  LDA ram_0381_obj,X
C - - - - - 0x010A46 04:8A36: 29 7F     AND #$7F
C - - - - - 0x010A48 04:8A38: C9 19     CMP #con_0359_19
C - - - - - 0x010A4A 04:8A3A: D0 0A     BNE bra_8A46
C - - - - - 0x010A4C 04:8A3C: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x010A4E 04:8A3E: C9 28     CMP #$28
C - - - - - 0x010A50 04:8A40: 90 1A     BCC bra_8A5C
C - - - - - 0x010A52 04:8A42: A9 19     LDA #con_0359_19
C - - - - - 0x010A54 04:8A44: D0 18     BNE bra_8A5E    ; jmp
bra_8A46:
C - - - - - 0x010A56 04:8A46: C9 10     CMP #con_0359_10
C - - - - - 0x010A58 04:8A48: D0 14     BNE bra_8A5E
C - - - - - 0x010A5A 04:8A4A: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x010A5C 04:8A4C: D0 0A     BNE bra_8A58
C - - - - - 0x010A5E 04:8A4E: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x010A60 04:8A50: C9 D8     CMP #$D8
C - - - - - 0x010A62 04:8A52: B0 04     BCS bra_8A58
C - - - - - 0x010A64 04:8A54: A9 11     LDA #con_0359_11
C - - - - - 0x010A66 04:8A56: D0 06     BNE bra_8A5E    ; jmp
bra_8A58:
C - - - - - 0x010A68 04:8A58: A9 10     LDA #con_0359_10
C - - - - - 0x010A6A 04:8A5A: D0 02     BNE bra_8A5E    ; jmp
bra_8A5C:
C - - - - - 0x010A6C 04:8A5C: A9 18     LDA #con_0359_18
bra_8A5E:
C - - - - - 0x010A6E 04:8A5E: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x010A71 04:8A61: A0 00     LDY #$00
C - - - - - 0x010A73 04:8A63: 20 9B 86  JSR sub_869B
C - - - - - 0x010A76 04:8A66: 20 1B 87  JSR sub_871B
C - - - - - 0x010A79 04:8A69: 90 06     BCC bra_8A71
C - - - - - 0x010A7B 04:8A6B: A5 19     LDA ram_0019_t14
C - - - - - 0x010A7D 04:8A6D: C9 02     CMP #$02
C - - - - - 0x010A7F 04:8A6F: F0 31     BEQ bra_8AA2
bra_8A71:
C - - - - - 0x010A81 04:8A71: 20 CF 85  JSR sub_85CF
C - - - - - 0x010A84 04:8A74: A5 29     LDA ram_0029_temp
C - - - - - 0x010A86 04:8A76: 8D A9 03  STA ram_03A9
C - - - - - 0x010A89 04:8A79: A5 2A     LDA ram_002A_temp
C - - - - - 0x010A8B 04:8A7B: 8D AA 03  STA ram_03AA
C - - - - - 0x010A8E 04:8A7E: A5 23     LDA ram_0023
C - - - - - 0x010A90 04:8A80: 8D AD 03  STA ram_03AD
C - - - - - 0x010A93 04:8A83: 38        SEC
C - - - - - 0x010A94 04:8A84: AD A9 03  LDA ram_03A9
C - - - - - 0x010A97 04:8A87: E5 2B     SBC ram_002B_temp
C - - - - - 0x010A99 04:8A89: 8D AB 03  STA ram_03AB
C - - - - - 0x010A9C 04:8A8C: AD AA 03  LDA ram_03AA
C - - - - - 0x010A9F 04:8A8F: E5 2C     SBC ram_002C_temp
C - - - - - 0x010AA1 04:8A91: 8D AC 03  STA ram_03AC
C - - - - - 0x010AA4 04:8A94: 10 0C     BPL bra_8AA2
C - - - - - 0x010AA6 04:8A96: A9 00     LDA #$00
C - - - - - 0x010AA8 04:8A98: 9D 81 03  STA ram_0381_obj,X
C - - - - - 0x010AAB 04:8A9B: AD AD 03  LDA ram_03AD
C - - - - - 0x010AAE 04:8A9E: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x010AB1 04:8AA1: 60        RTS
bra_8AA2:
C - - - - - 0x010AB2 04:8AA2: A5 22     LDA ram_0022
C - - - - - 0x010AB4 04:8AA4: 9D 59 03  STA ram_0359_obj,X
bra_8AA7_RTS:
C - - - - - 0x010AB7 04:8AA7: 60        RTS



sub_8AA8:
C - - - - - 0x010AB8 04:8AA8: A0 00     LDY #$00
C - - - - - 0x010ABA 04:8AAA: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x010ABD 04:8AAD: C9 05     CMP #con_mission_Forest_of_Death
C - - - - - 0x010ABF 04:8AAF: F0 02     BEQ bra_8AB3
C - - - - - 0x010AC1 04:8AB1: A0 08     LDY #$08
bra_8AB3:
bra_8AB3_loop:
C - - - - - 0x010AC3 04:8AB3: B9 C9 8A  LDA tbl_8AC9,Y
C - - - - - 0x010AC6 04:8AB6: DD 59 03  CMP ram_0359_obj,X
C - - - - - 0x010AC9 04:8AB9: F0 04     BEQ bra_8ABF
C - - - - - 0x010ACB 04:8ABB: C8        INY
C - - - - - 0x010ACC 04:8ABC: C8        INY
C - - - - - 0x010ACD 04:8ABD: D0 F4     BNE bra_8AB3_loop
bra_8ABF:
C - - - - - 0x010ACF 04:8ABF: C8        INY
C - - - - - 0x010AD0 04:8AC0: B9 C9 8A  LDA tbl_8AC9,Y
C - - - - - 0x010AD3 04:8AC3: 09 80     ORA #$80
C - - - - - 0x010AD5 04:8AC5: 9D 81 03  STA ram_0381_obj,X
C - - - - - 0x010AD8 04:8AC8: 60        RTS



tbl_8AC9:
; 00
- D 0 - - - 0x010AD9 04:8AC9: 0A        .byte con_0359_0A   ; 
- D 0 - - - 0x010ADA 04:8ACA: 19        .byte con_0359_19   ; 
- D 0 - - - 0x010ADB 04:8ACB: 1A        .byte con_0359_1A   ; 
- D 0 - - - 0x010ADC 04:8ACC: 1B        .byte con_0359_1B   ; 
- D 0 - - - 0x010ADD 04:8ACD: 1B        .byte con_0359_1B   ; 
- D 0 - - - 0x010ADE 04:8ACE: 1C        .byte con_0359_1C   ; 
- D 0 - - - 0x010ADF 04:8ACF: 1C        .byte con_0359_1C   ; 
- D 0 - - - 0x010AE0 04:8AD0: 1D        .byte con_0359_1D   ; 
; 08
- D 0 - - - 0x010AE1 04:8AD1: 00        .byte con_0359_00   ; 
- D 0 - - - 0x010AE2 04:8AD2: 01        .byte con_0359_01   ; 
- D 0 - - - 0x010AE3 04:8AD3: 01        .byte con_0359_01   ; 
- D 0 - - - 0x010AE4 04:8AD4: 02        .byte con_0359_02   ; 
- D 0 - - - 0x010AE5 04:8AD5: 02        .byte con_0359_02   ; 
- D 0 - - - 0x010AE6 04:8AD6: 03        .byte con_0359_03   ; 
- D 0 - - - 0x010AE7 04:8AD7: 03        .byte con_0359_03   ; 
- D 0 - - - 0x010AE8 04:8AD8: 04        .byte con_0359_04   ; 
; 
- D 0 - - - 0x010AE9 04:8AD9: 04        .byte con_0359_04   ; 
- D 0 - - - 0x010AEA 04:8ADA: 05        .byte con_0359_05   ; 
- D 0 - - - 0x010AEB 04:8ADB: 06        .byte con_0359_06   ; 
- D 0 - - - 0x010AEC 04:8ADC: 04        .byte con_0359_04   ; 
- D 0 - - - 0x010AED 04:8ADD: 0A        .byte con_0359_0A   ; 
- D 0 - - - 0x010AEE 04:8ADE: 10        .byte con_0359_10   ; 
- D 0 - - - 0x010AEF 04:8ADF: 0E        .byte con_0359_0E   ; 
- D 0 - - - 0x010AF0 04:8AE0: 10        .byte con_0359_10   ; 



sub_8AE1_spikes_on_the_seiling:
C - - - - - 0x010AF1 04:8AE1: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x010AF3 04:8AE3: 29 02     AND #con_003C_flag_02
C - - - - - 0x010AF5 04:8AE5: D0 34     BNE bra_8B1B
C - - - - - 0x010AF7 04:8AE7: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x010AFA 04:8AEA: C9 03     CMP #con_mission_Undersea_Base_pt1
C - - - - - 0x010AFC 04:8AEC: D0 2D     BNE bra_8B1B
C - - - - - 0x010AFE 04:8AEE: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x010B01 04:8AF1: C9 02     CMP #con_0359_02
C - - - - - 0x010B03 04:8AF3: D0 26     BNE bra_8B1B
C - - - - - 0x010B05 04:8AF5: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x010B07 04:8AF7: C9 03     CMP #$03
C - - - - - 0x010B09 04:8AF9: D0 0C     BNE bra_8B07
C - - - - - 0x010B0B 04:8AFB: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x010B0D 04:8AFD: C9 80     CMP #$80
C - - - - - 0x010B0F 04:8AFF: 90 06     BCC bra_8B07
C - - - - - 0x010B11 04:8B01: C9 A0     CMP #$A0
C - - - - - 0x010B13 04:8B03: B0 02     BCS bra_8B07
C - - - - - 0x010B15 04:8B05: 90 14     BCC bra_8B1B    ; jmp
bra_8B07:
C - - - - - 0x010B17 04:8B07: B5 43     LDA ram_state,X
C - - - - - 0x010B19 04:8B09: 29 7F     AND #$7F
C - - - - - 0x010B1B 04:8B0B: C9 2B     CMP #con_state_hit_by_spikes_on_the_ceiling
C - - - - - 0x010B1D 04:8B0D: F0 0C     BEQ bra_8B1B
C - - - - - 0x010B1F 04:8B0F: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x010B21 04:8B11: C9 2B     CMP #$2B
C - - - - - 0x010B23 04:8B13: 90 06     BCC bra_8B1B
C - - - - - 0x010B25 04:8B15: A9 2B     LDA #con_state_hit_by_spikes_on_the_ceiling
C - - - - - 0x010B27 04:8B17: 95 43     STA ram_state,X
C - - - - - 0x010B29 04:8B19: 38        SEC
C - - - - - 0x010B2A 04:8B1A: 60        RTS
bra_8B1B:
C - - - - - 0x010B2B 04:8B1B: 18        CLC
C - - - - - 0x010B2C 04:8B1C: 60        RTS



tbl_8B1D:
tbl_0x010B2D:
- D 0 - - - 0x010B2D 04:8B1D: 3B 8B     .word _off005_8B3B_00_Into_the_Turf
- D 0 - - - 0x010B2F 04:8B1F: A4 8C     .word _off005_8CA4_01_At_the_Heliport
- D 0 - - - 0x010B31 04:8B21: 3A 8E     .word _off005_8E3A_02_Battle_in_the_Chopper
- D 0 - - - 0x010B33 04:8B23: 89 8E     .word _off005_8E89_03_Undersea_Base_pt1
- D 0 - - - 0x010B35 04:8B25: 28 8F     .word _off005_8F28_04_Undersea_Base_pt2
- D 0 - - - 0x010B37 04:8B27: AE 90     .word _off005_90AE_05_Forest_of_Death
- D 0 - - - 0x010B39 04:8B29: FE 96     .word _off005_96FE_06_Mansion_of_Terror
- D 0 - - - 0x010B3B 04:8B2B: 60 9B     .word _off005_9B60_07_Trap_Room_pt1
- D 0 - - - 0x010B3D 04:8B2D: 92 9C     .word _off005_9C92_08_Trap_Room_pt2
- D 0 - - - 0x010B3F 04:8B2F: D6 9C     .word _off005_9CD6_09_Trap_Room_pt3
- D 0 - - - 0x010B41 04:8B31: 92 9C     .word _off005_9C92_0A_Trap_Room_pt4
- D 0 - - - 0x010B43 04:8B33: 18 9F     .word _off005_9F18_0B_Trap_Room_pt5
- D 0 - - - 0x010B45 04:8B35: E3 9F     .word _off005_9FE3_0C_The_Double_Illusion
- D 0 - - - 0x010B47 04:8B37: FE A0     .word _off005_A0FE_0D_Final_Confrontation_pt1
- D 0 - - - 0x010B49 04:8B39: FE A0     .word _off005_A0FE_0E_Final_Confrontation_pt2



_off005_8B3B_00_Into_the_Turf:
; con_mission_Into_the_Turf
- D 0 - I - 0x010B4B 04:8B3B: 59 8B     .word ofs_8B59_00
- D 0 - I - 0x010B4D 04:8B3D: 00        .byte $00   ; 
- D 0 - I - 0x010B4E 04:8B3E: 00        .byte $00   ; 
- D 0 - I - 0x010B4F 04:8B3F: 80        .byte $80   ; 
- D 0 - I - 0x010B50 04:8B40: 71 8B     .word ofs_8B71_01
- D 0 - I - 0x010B52 04:8B42: A0        .byte $A0   ; 
- D 0 - I - 0x010B53 04:8B43: 00        .byte $00   ; 
- D 0 - I - 0x010B54 04:8B44: 80        .byte $80   ; 
- D 0 - I - 0x010B55 04:8B45: 7D 8B     .word ofs_8B7D_02
- D 0 - I - 0x010B57 04:8B47: B0        .byte $B0   ; 
- D 0 - I - 0x010B58 04:8B48: 00        .byte $00   ; 
- D 0 - I - 0x010B59 04:8B49: 80        .byte $80   ; 
- D 0 - I - 0x010B5A 04:8B4A: 89 8B     .word ofs_8B89_03
- D 0 - I - 0x010B5C 04:8B4C: 00        .byte $00   ; 
- D 0 - I - 0x010B5D 04:8B4D: 00        .byte $00   ; 
- D 0 - I - 0x010B5E 04:8B4E: 87        .byte $87   ; 
- D 0 - I - 0x010B5F 04:8B4F: 8D 8B     .word ofs_8B8D_04
- D 0 - I - 0x010B61 04:8B51: 60        .byte $60   ; 
- D 0 - I - 0x010B62 04:8B52: 01        .byte $01   ; 
- D 0 - I - 0x010B63 04:8B53: 00        .byte $00   ; 
- D 0 - I - 0x010B64 04:8B54: 91 8B     .word ofs_8B91_05
- D 0 - I - 0x010B66 04:8B56: B0        .byte $B0   ; 
- D 0 - I - 0x010B67 04:8B57: 01        .byte $01   ; 
- D 0 - I - 0x010B68 04:8B58: 80        .byte $80   ; 



ofs_8B59_00:
- D 0 - I - 0x010B69 04:8B59: 0F        .byte $0F   ; 
- D 0 - I - 0x010B6A 04:8B5A: 01        .byte $01   ; 
- D 0 - I - 0x010B6B 04:8B5B: 9D 8B     .word off_8B9D
- D 0 - I - 0x010B6D 04:8B5D: 3F        .byte $3F   ; 
- D 0 - I - 0x010B6E 04:8B5E: 01        .byte $01   ; 
- D 0 - I - 0x010B6F 04:8B5F: B6 8B     .word off_8BB6
- D 0 - I - 0x010B71 04:8B61: 3F        .byte $3F   ; 
- D 0 - I - 0x010B72 04:8B62: 02        .byte $02   ; 
- D 0 - I - 0x010B73 04:8B63: C3 8B     .word off_8BC3
- D 0 - I - 0x010B75 04:8B65: 5F        .byte $5F   ; 
- D 0 - I - 0x010B76 04:8B66: 02        .byte $02   ; 
- D 0 - I - 0x010B77 04:8B67: D0 8B     .word off_8BD0
- D 0 - I - 0x010B79 04:8B69: BF        .byte $BF   ; 
- D 0 - I - 0x010B7A 04:8B6A: 03        .byte $03   ; 
- D 0 - I - 0x010B7B 04:8B6B: DD 8B     .word off_8BDD
- D 0 - I - 0x010B7D 04:8B6D: FF        .byte $FF   ; 
- D 0 - I - 0x010B7E 04:8B6E: FF        .byte $FF   ; 
- D 0 - I - 0x010B7F 04:8B6F: EA 8B     .word off_8BEA



ofs_8B71_01:
- D 0 - I - 0x010B81 04:8B71: 5F        .byte $5F   ; 
- D 0 - I - 0x010B82 04:8B72: 02        .byte $02   ; 
- D 0 - I - 0x010B83 04:8B73: F7 8B     .word off_8BF7
- D 0 - I - 0x010B85 04:8B75: BF        .byte $BF   ; 
- D 0 - I - 0x010B86 04:8B76: 02        .byte $02   ; 
- D 0 - I - 0x010B87 04:8B77: 04 8C     .word off_8C04
- D 0 - I - 0x010B89 04:8B79: FF        .byte $FF   ; 
- D 0 - I - 0x010B8A 04:8B7A: FF        .byte $FF   ; 
- D 0 - I - 0x010B8B 04:8B7B: 11 8C     .word off_8C11



ofs_8B7D_02:
- D 0 - I - 0x010B8D 04:8B7D: DF        .byte $DF   ; 
- D 0 - I - 0x010B8E 04:8B7E: 02        .byte $02   ; 
- D 0 - I - 0x010B8F 04:8B7F: 1E 8C     .word off_8C1E
- D 0 - I - 0x010B91 04:8B81: 9F        .byte $9F   ; 
- D 0 - I - 0x010B92 04:8B82: 03        .byte $03   ; 
- D 0 - I - 0x010B93 04:8B83: 2B 8C     .word off_8C2B
- D 0 - I - 0x010B95 04:8B85: FF        .byte $FF   ; 
- D 0 - I - 0x010B96 04:8B86: FF        .byte $FF   ; 
- D 0 - I - 0x010B97 04:8B87: 38 8C     .word off_8C38



ofs_8B89_03:
- D 0 - I - 0x010B99 04:8B89: FF        .byte $FF   ; 
- D 0 - I - 0x010B9A 04:8B8A: FF        .byte $FF   ; 
- D 0 - I - 0x010B9B 04:8B8B: 45 8C     .word off_8C45



ofs_8B8D_04:
- D 0 - I - 0x010B9D 04:8B8D: FF        .byte $FF   ; 
- D 0 - I - 0x010B9E 04:8B8E: FF        .byte $FF   ; 
- D 0 - I - 0x010B9F 04:8B8F: 52 8C     .word off_8C52



ofs_8B91_05:
- D 0 - I - 0x010BA1 04:8B91: 3F        .byte $3F   ; 
- D 0 - I - 0x010BA2 04:8B92: 03        .byte $03   ; 
- D 0 - I - 0x010BA3 04:8B93: 6B 8C     .word off_8C6B
- D 0 - I - 0x010BA5 04:8B95: 5F        .byte $5F   ; 
- D 0 - I - 0x010BA6 04:8B96: 03        .byte $03   ; 
- D 0 - I - 0x010BA7 04:8B97: 84 8C     .word off_8C84
- D 0 - I - 0x010BA9 04:8B99: FF        .byte $FF   ; 
- D 0 - I - 0x010BAA 04:8B9A: FF        .byte $FF   ; 
- D 0 - I - 0x010BAB 04:8B9B: 91 8C     .word off_8C91



off_8B9D:
- D 0 - I - 0x010BAD 04:8B9D: 00        .byte $00   ; 
- D 0 - I - 0x010BAE 04:8B9E: 70        .byte $70   ; 
- D 0 - I - 0x010BAF 04:8B9F: 00        .byte $00   ; 
- D 0 - I - 0x010BB0 04:8BA0: 00        .byte $00   ; 
- D 0 - I - 0x010BB1 04:8BA1: 00        .byte $00   ; 
- D 0 - I - 0x010BB2 04:8BA2: 7F        .byte $7F   ; 
- D 0 - I - 0x010BB3 04:8BA3: 00        .byte $00   ; 
- D 0 - I - 0x010BB4 04:8BA4: 30        .byte $30   ; 
- D 0 - I - 0x010BB5 04:8BA5: 00        .byte $00   ; 
- - - - - - 0x010BB6 04:8BA6: 00        .byte $00   ; 
- - - - - - 0x010BB7 04:8BA7: 00        .byte $00   ; 
- - - - - - 0x010BB8 04:8BA8: 7F        .byte $7F   ; 
- D 0 - I - 0x010BB9 04:8BA9: 00        .byte $00   ; 
- D 0 - I - 0x010BBA 04:8BAA: 70        .byte $70   ; 
- D 0 - I - 0x010BBB 04:8BAB: 00        .byte $00   ; 
- - - - - - 0x010BBC 04:8BAC: 00        .byte $00   ; 
- - - - - - 0x010BBD 04:8BAD: 00        .byte $00   ; 
- - - - - - 0x010BBE 04:8BAE: 7F        .byte $7F   ; 
- D 0 - I - 0x010BBF 04:8BAF: 03        .byte $03   ; 
- D 0 - I - 0x010BC0 04:8BB0: 08        .byte $08   ; 
- D 0 - I - 0x010BC1 04:8BB1: 00        .byte $00   ; 
- D 0 - I - 0x010BC2 04:8BB2: 00        .byte $00   ; 
- D 0 - I - 0x010BC3 04:8BB3: 00        .byte $00   ; 
- D 0 - I - 0x010BC4 04:8BB4: 7F        .byte $7F   ; 
- D 0 - I - 0x010BC5 04:8BB5: FF        .byte $FF   ; 

off_8BB6:
- D 0 - I - 0x010BC6 04:8BB6: 01        .byte $01   ; 
- D 0 - I - 0x010BC7 04:8BB7: 60        .byte $60   ; 
- D 0 - I - 0x010BC8 04:8BB8: FF        .byte $FF   ; 
- D 0 - I - 0x010BC9 04:8BB9: 00        .byte $00   ; 
- D 0 - I - 0x010BCA 04:8BBA: 00        .byte $00   ; 
- D 0 - I - 0x010BCB 04:8BBB: 7F        .byte $7F   ; 
- D 0 - I - 0x010BCC 04:8BBC: 00        .byte $00   ; 
- D 0 - I - 0x010BCD 04:8BBD: 30        .byte $30   ; 
- D 0 - I - 0x010BCE 04:8BBE: 00        .byte $00   ; 
- - - - - - 0x010BCF 04:8BBF: 00        .byte $00   ; 
- - - - - - 0x010BD0 04:8BC0: 00        .byte $00   ; 
- - - - - - 0x010BD1 04:8BC1: 7F        .byte $7F   ; 
- D 0 - I - 0x010BD2 04:8BC2: FF        .byte $FF   ; 

off_8BC3:
- D 0 - I - 0x010BD3 04:8BC3: 00        .byte $00   ; 
- D 0 - I - 0x010BD4 04:8BC4: A0        .byte $A0   ; 
- D 0 - I - 0x010BD5 04:8BC5: 00        .byte $00   ; 
- D 0 - I - 0x010BD6 04:8BC6: 00        .byte $00   ; 
- D 0 - I - 0x010BD7 04:8BC7: 00        .byte $00   ; 
- D 0 - I - 0x010BD8 04:8BC8: 7F        .byte $7F   ; 
- D 0 - I - 0x010BD9 04:8BC9: 00        .byte $00   ; 
- D 0 - I - 0x010BDA 04:8BCA: 30        .byte $30   ; 
- D 0 - I - 0x010BDB 04:8BCB: 00        .byte $00   ; 
- - - - - - 0x010BDC 04:8BCC: 00        .byte $00   ; 
- - - - - - 0x010BDD 04:8BCD: 00        .byte $00   ; 
- - - - - - 0x010BDE 04:8BCE: 7F        .byte $7F   ; 
- D 0 - I - 0x010BDF 04:8BCF: FF        .byte $FF   ; 

off_8BD0:
- D 0 - I - 0x010BE0 04:8BD0: 02        .byte $02   ; 
- D 0 - I - 0x010BE1 04:8BD1: E0        .byte $E0   ; 
- D 0 - I - 0x010BE2 04:8BD2: 02        .byte $02   ; 
- D 0 - I - 0x010BE3 04:8BD3: 00        .byte $00   ; 
- D 0 - I - 0x010BE4 04:8BD4: 00        .byte $00   ; 
- D 0 - I - 0x010BE5 04:8BD5: 7F        .byte $7F   ; 
- D 0 - I - 0x010BE6 04:8BD6: 00        .byte $00   ; 
- D 0 - I - 0x010BE7 04:8BD7: 30        .byte $30   ; 
- D 0 - I - 0x010BE8 04:8BD8: 00        .byte $00   ; 
- - - - - - 0x010BE9 04:8BD9: 00        .byte $00   ; 
- - - - - - 0x010BEA 04:8BDA: 00        .byte $00   ; 
- - - - - - 0x010BEB 04:8BDB: 7F        .byte $7F   ; 
- D 0 - I - 0x010BEC 04:8BDC: FF        .byte $FF   ; 

off_8BDD:
- D 0 - I - 0x010BED 04:8BDD: 00        .byte $00   ; 
- D 0 - I - 0x010BEE 04:8BDE: 80        .byte $80   ; 
- D 0 - I - 0x010BEF 04:8BDF: 00        .byte $00   ; 
- D 0 - I - 0x010BF0 04:8BE0: 00        .byte $00   ; 
- D 0 - I - 0x010BF1 04:8BE1: 00        .byte $00   ; 
- D 0 - I - 0x010BF2 04:8BE2: 00        .byte $00   ; 
- D 0 - I - 0x010BF3 04:8BE3: 00        .byte $00   ; 
- D 0 - I - 0x010BF4 04:8BE4: 30        .byte $30   ; 
- D 0 - I - 0x010BF5 04:8BE5: 00        .byte $00   ; 
- - - - - - 0x010BF6 04:8BE6: 00        .byte $00   ; 
- - - - - - 0x010BF7 04:8BE7: 00        .byte $00   ; 
- - - - - - 0x010BF8 04:8BE8: 7F        .byte $7F   ; 
- D 0 - I - 0x010BF9 04:8BE9: FF        .byte $FF   ; 

off_8BEA:
- D 0 - I - 0x010BFA 04:8BEA: 02        .byte $02   ; 
- D 0 - I - 0x010BFB 04:8BEB: 40        .byte $40   ; 
- D 0 - I - 0x010BFC 04:8BEC: 04        .byte $04   ; 
- D 0 - I - 0x010BFD 04:8BED: 00        .byte $00   ; 
- D 0 - I - 0x010BFE 04:8BEE: 00        .byte $00   ; 
- D 0 - I - 0x010BFF 04:8BEF: 7F        .byte $7F   ; 
- D 0 - I - 0x010C00 04:8BF0: 00        .byte $00   ; 
- D 0 - I - 0x010C01 04:8BF1: 30        .byte $30   ; 
- D 0 - I - 0x010C02 04:8BF2: 00        .byte $00   ; 
- - - - - - 0x010C03 04:8BF3: 00        .byte $00   ; 
- - - - - - 0x010C04 04:8BF4: 00        .byte $00   ; 
- - - - - - 0x010C05 04:8BF5: 7F        .byte $7F   ; 
- D 0 - I - 0x010C06 04:8BF6: FF        .byte $FF   ; 

off_8BF7:
- D 0 - I - 0x010C07 04:8BF7: 00        .byte $00   ; 
- D 0 - I - 0x010C08 04:8BF8: A0        .byte $A0   ; 
- D 0 - I - 0x010C09 04:8BF9: 00        .byte $00   ; 
- D 0 - I - 0x010C0A 04:8BFA: 00        .byte $00   ; 
- D 0 - I - 0x010C0B 04:8BFB: 01        .byte $01   ; 
- D 0 - I - 0x010C0C 04:8BFC: 7F        .byte $7F   ; 
- D 0 - I - 0x010C0D 04:8BFD: 02        .byte $02   ; 
- D 0 - I - 0x010C0E 04:8BFE: E0        .byte $E0   ; 
- D 0 - I - 0x010C0F 04:8BFF: 02        .byte $02   ; 
- D 0 - I - 0x010C10 04:8C00: 02        .byte $02   ; 
- D 0 - I - 0x010C11 04:8C01: 03        .byte $03   ; 
- D 0 - I - 0x010C12 04:8C02: 7F        .byte $7F   ; 
- D 0 - I - 0x010C13 04:8C03: FF        .byte $FF   ; 

off_8C04:
- D 0 - I - 0x010C14 04:8C04: 00        .byte $00   ; 
- D 0 - I - 0x010C15 04:8C05: A0        .byte $A0   ; 
- D 0 - I - 0x010C16 04:8C06: 00        .byte $00   ; 
- D 0 - I - 0x010C17 04:8C07: 00        .byte $00   ; 
- D 0 - I - 0x010C18 04:8C08: 01        .byte $01   ; 
- D 0 - I - 0x010C19 04:8C09: 7F        .byte $7F   ; 
- D 0 - I - 0x010C1A 04:8C0A: 00        .byte $00   ; 
- D 0 - I - 0x010C1B 04:8C0B: 80        .byte $80   ; 
- D 0 - I - 0x010C1C 04:8C0C: 00        .byte $00   ; 
- D 0 - I - 0x010C1D 04:8C0D: 02        .byte $02   ; 
- D 0 - I - 0x010C1E 04:8C0E: 03        .byte $03   ; 
- D 0 - I - 0x010C1F 04:8C0F: 80        .byte $80   ; 
- D 0 - I - 0x010C20 04:8C10: FF        .byte $FF   ; 

off_8C11:
- D 0 - I - 0x010C21 04:8C11: 02        .byte $02   ; 
- D 0 - I - 0x010C22 04:8C12: 60        .byte $60   ; 
- D 0 - I - 0x010C23 04:8C13: 03        .byte $03   ; 
- D 0 - I - 0x010C24 04:8C14: 01        .byte $01   ; 
- D 0 - I - 0x010C25 04:8C15: 02        .byte $02   ; 
- D 0 - I - 0x010C26 04:8C16: 7F        .byte $7F   ; 
- D 0 - I - 0x010C27 04:8C17: 00        .byte $00   ; 
- D 0 - I - 0x010C28 04:8C18: 80        .byte $80   ; 
- D 0 - I - 0x010C29 04:8C19: 00        .byte $00   ; 
- D 0 - I - 0x010C2A 04:8C1A: 02        .byte $02   ; 
- D 0 - I - 0x010C2B 04:8C1B: 03        .byte $03   ; 
- D 0 - I - 0x010C2C 04:8C1C: 80        .byte $80   ; 
- D 0 - I - 0x010C2D 04:8C1D: FF        .byte $FF   ; 

off_8C1E:
- D 0 - I - 0x010C2E 04:8C1E: 00        .byte $00   ; 
- D 0 - I - 0x010C2F 04:8C1F: A0        .byte $A0   ; 
- D 0 - I - 0x010C30 04:8C20: 00        .byte $00   ; 
- - - - - - 0x010C31 04:8C21: 00        .byte $00   ; 
- - - - - - 0x010C32 04:8C22: 02        .byte $02   ; 
- - - - - - 0x010C33 04:8C23: 7F        .byte $7F   ; 
- D 0 - I - 0x010C34 04:8C24: 02        .byte $02   ; 
- D 0 - I - 0x010C35 04:8C25: 60        .byte $60   ; 
- D 0 - I - 0x010C36 04:8C26: 03        .byte $03   ; 
- D 0 - I - 0x010C37 04:8C27: 02        .byte $02   ; 
- D 0 - I - 0x010C38 04:8C28: 01        .byte $01   ; 
- D 0 - I - 0x010C39 04:8C29: 7F        .byte $7F   ; 
- D 0 - I - 0x010C3A 04:8C2A: FF        .byte $FF   ; 

off_8C2B:
- D 0 - I - 0x010C3B 04:8C2B: 00        .byte $00   ; 
- D 0 - I - 0x010C3C 04:8C2C: A0        .byte $A0   ; 
- D 0 - I - 0x010C3D 04:8C2D: 00        .byte $00   ; 
- D 0 - I - 0x010C3E 04:8C2E: 00        .byte $00   ; 
- D 0 - I - 0x010C3F 04:8C2F: 02        .byte $02   ; 
- D 0 - I - 0x010C40 04:8C30: 01        .byte $01   ; 
- D 0 - I - 0x010C41 04:8C31: 00        .byte $00   ; 
- D 0 - I - 0x010C42 04:8C32: 80        .byte $80   ; 
- D 0 - I - 0x010C43 04:8C33: 00        .byte $00   ; 
- - - - - - 0x010C44 04:8C34: 02        .byte $02   ; 
- - - - - - 0x010C45 04:8C35: 03        .byte $03   ; 
- - - - - - 0x010C46 04:8C36: 7F        .byte $7F   ; 
- D 0 - I - 0x010C47 04:8C37: FF        .byte $FF   ; 

off_8C38:
- D 0 - I - 0x010C48 04:8C38: 02        .byte $02   ; 
- D 0 - I - 0x010C49 04:8C39: 40        .byte $40   ; 
- D 0 - I - 0x010C4A 04:8C3A: 04        .byte $04   ; 
- D 0 - I - 0x010C4B 04:8C3B: 00        .byte $00   ; 
- D 0 - I - 0x010C4C 04:8C3C: 02        .byte $02   ; 
- D 0 - I - 0x010C4D 04:8C3D: 7F        .byte $7F   ; 
- D 0 - I - 0x010C4E 04:8C3E: 00        .byte $00   ; 
- D 0 - I - 0x010C4F 04:8C3F: 80        .byte $80   ; 
- D 0 - I - 0x010C50 04:8C40: 00        .byte $00   ; 
- - - - - - 0x010C51 04:8C41: 02        .byte $02   ; 
- - - - - - 0x010C52 04:8C42: 03        .byte $03   ; 
- - - - - - 0x010C53 04:8C43: 7F        .byte $7F   ; 
- D 0 - I - 0x010C54 04:8C44: FF        .byte $FF   ; 

off_8C45:
- D 0 - I - 0x010C55 04:8C45: 00        .byte $00   ; 
- D 0 - I - 0x010C56 04:8C46: 00        .byte $00   ; 
- D 0 - I - 0x010C57 04:8C47: 01        .byte $01   ; 
- - - - - - 0x010C58 04:8C48: 00        .byte $00   ; 
- - - - - - 0x010C59 04:8C49: 03        .byte $03   ; 
- - - - - - 0x010C5A 04:8C4A: 7F        .byte $7F   ; 
- D 0 - I - 0x010C5B 04:8C4B: 00        .byte $00   ; 
- D 0 - I - 0x010C5C 04:8C4C: 30        .byte $30   ; 
- D 0 - I - 0x010C5D 04:8C4D: 00        .byte $00   ; 
- - - - - - 0x010C5E 04:8C4E: 00        .byte $00   ; 
- - - - - - 0x010C5F 04:8C4F: 03        .byte $03   ; 
- - - - - - 0x010C60 04:8C50: 7F        .byte $7F   ; 
- D 0 - I - 0x010C61 04:8C51: FF        .byte $FF   ; 

off_8C52:
- D 0 - I - 0x010C62 04:8C52: 00        .byte $00   ; 
- D 0 - I - 0x010C63 04:8C53: A0        .byte $A0   ; 
- D 0 - I - 0x010C64 04:8C54: 00        .byte $00   ; 
- D 0 - I - 0x010C65 04:8C55: 00        .byte $00   ; 
- D 0 - I - 0x010C66 04:8C56: 04        .byte $04   ; 
- D 0 - I - 0x010C67 04:8C57: 02        .byte $02   ; 
- D 0 - I - 0x010C68 04:8C58: 00        .byte $00   ; 
- D 0 - I - 0x010C69 04:8C59: A0        .byte $A0   ; 
- D 0 - I - 0x010C6A 04:8C5A: 00        .byte $00   ; 
- - - - - - 0x010C6B 04:8C5B: 00        .byte $00   ; 
- - - - - - 0x010C6C 04:8C5C: 04        .byte $04   ; 
- - - - - - 0x010C6D 04:8C5D: 81        .byte $81   ; 
- D 0 - I - 0x010C6E 04:8C5E: 03        .byte $03   ; 
- D 0 - I - 0x010C6F 04:8C5F: A0        .byte $A0   ; 
- D 0 - I - 0x010C70 04:8C60: 03        .byte $03   ; 
- - - - - - 0x010C71 04:8C61: 02        .byte $02   ; 
- - - - - - 0x010C72 04:8C62: 03        .byte $03   ; 
- - - - - - 0x010C73 04:8C63: 7F        .byte $7F   ; 
- D 0 - I - 0x010C74 04:8C64: 03        .byte $03   ; 
- D 0 - I - 0x010C75 04:8C65: 80        .byte $80   ; 
- D 0 - I - 0x010C76 04:8C66: 02        .byte $02   ; 
- D 0 - I - 0x010C77 04:8C67: 02        .byte $02   ; 
- D 0 - I - 0x010C78 04:8C68: 03        .byte $03   ; 
- D 0 - I - 0x010C79 04:8C69: 7F        .byte $7F   ; 
- D 0 - I - 0x010C7A 04:8C6A: FF        .byte $FF   ; 

off_8C6B:
- D 0 - I - 0x010C7B 04:8C6B: 00        .byte $00   ; 
- D 0 - I - 0x010C7C 04:8C6C: C0        .byte $C0   ; 
- D 0 - I - 0x010C7D 04:8C6D: 00        .byte $00   ; 
- D 0 - I - 0x010C7E 04:8C6E: 00        .byte $00   ; 
- D 0 - I - 0x010C7F 04:8C6F: 06        .byte $06   ; 
- D 0 - I - 0x010C80 04:8C70: 7F        .byte $7F   ; 
- D 0 - I - 0x010C81 04:8C71: 00        .byte $00   ; 
- D 0 - I - 0x010C82 04:8C72: A0        .byte $A0   ; 
- D 0 - I - 0x010C83 04:8C73: 00        .byte $00   ; 
- - - - - - 0x010C84 04:8C74: 02        .byte $02   ; 
- - - - - - 0x010C85 04:8C75: 03        .byte $03   ; 
- - - - - - 0x010C86 04:8C76: 82        .byte $82   ; 
- D 0 - I - 0x010C87 04:8C77: 00        .byte $00   ; 
- D 0 - I - 0x010C88 04:8C78: C0        .byte $C0   ; 
- D 0 - I - 0x010C89 04:8C79: 00        .byte $00   ; 
- - - - - - 0x010C8A 04:8C7A: 00        .byte $00   ; 
- - - - - - 0x010C8B 04:8C7B: 06        .byte $06   ; 
- - - - - - 0x010C8C 04:8C7C: 7F        .byte $7F   ; 
- D 0 - I - 0x010C8D 04:8C7D: 03        .byte $03   ; 
- D 0 - I - 0x010C8E 04:8C7E: 60        .byte $60   ; 
- D 0 - I - 0x010C8F 04:8C7F: 02        .byte $02   ; 
- D 0 - I - 0x010C90 04:8C80: 02        .byte $02   ; 
- D 0 - I - 0x010C91 04:8C81: 03        .byte $03   ; 
- D 0 - I - 0x010C92 04:8C82: 7F        .byte $7F   ; 
- D 0 - I - 0x010C93 04:8C83: FF        .byte $FF   ; 

off_8C84:
- D 0 - I - 0x010C94 04:8C84: 01        .byte $01   ; 
- D 0 - I - 0x010C95 04:8C85: 80        .byte $80   ; 
- D 0 - I - 0x010C96 04:8C86: FD        .byte $FD   ; 
- D 0 - I - 0x010C97 04:8C87: 00        .byte $00   ; 
- D 0 - I - 0x010C98 04:8C88: 06        .byte $06   ; 
- D 0 - I - 0x010C99 04:8C89: 7F        .byte $7F   ; 
- D 0 - I - 0x010C9A 04:8C8A: 00        .byte $00   ; 
- D 0 - I - 0x010C9B 04:8C8B: A0        .byte $A0   ; 
- D 0 - I - 0x010C9C 04:8C8C: 00        .byte $00   ; 
- - - - - - 0x010C9D 04:8C8D: 02        .byte $02   ; 
- - - - - - 0x010C9E 04:8C8E: 03        .byte $03   ; 
- - - - - - 0x010C9F 04:8C8F: 7F        .byte $7F   ; 
- D 0 - I - 0x010CA0 04:8C90: FF        .byte $FF   ; 

off_8C91:
- D 0 - I - 0x010CA1 04:8C91: 00        .byte $00   ; 
- D 0 - I - 0x010CA2 04:8C92: E0        .byte $E0   ; 
- D 0 - I - 0x010CA3 04:8C93: 00        .byte $00   ; 
- - - - - - 0x010CA4 04:8C94: 00        .byte $00   ; 
- - - - - - 0x010CA5 04:8C95: 06        .byte $06   ; 
- - - - - - 0x010CA6 04:8C96: 7F        .byte $7F   ; 
- D 0 - I - 0x010CA7 04:8C97: 00        .byte $00   ; 
- D 0 - I - 0x010CA8 04:8C98: A0        .byte $A0   ; 
- D 0 - I - 0x010CA9 04:8C99: 00        .byte $00   ; 
- D 0 - I - 0x010CAA 04:8C9A: 02        .byte $02   ; 
- D 0 - I - 0x010CAB 04:8C9B: 03        .byte $03   ; 
- D 0 - I - 0x010CAC 04:8C9C: 7F        .byte $7F   ; 
- D 0 - I - 0x010CAD 04:8C9D: 03        .byte $03   ; 
- D 0 - I - 0x010CAE 04:8C9E: F8        .byte $F8   ; 
- D 0 - I - 0x010CAF 04:8C9F: 03        .byte $03   ; 
- D 0 - I - 0x010CB0 04:8CA0: 00        .byte $00   ; 
- D 0 - I - 0x010CB1 04:8CA1: 06        .byte $06   ; 
- D 0 - I - 0x010CB2 04:8CA2: 7F        .byte $7F   ; 
- D 0 - I - 0x010CB3 04:8CA3: FF        .byte $FF   ; 



_off005_8CA4_01_At_the_Heliport:
; con_mission_At_the_Heliport
- D 0 - I - 0x010CB4 04:8CA4: EA 8C     .word ofs_8CEA_00
- D 0 - I - 0x010CB6 04:8CA6: 60        .byte $60   ; 
- D 0 - I - 0x010CB7 04:8CA7: 01        .byte $01   ; 
- D 0 - I - 0x010CB8 04:8CA8: 00        .byte $00   ; 
- D 0 - I - 0x010CB9 04:8CA9: EE 8C     .word ofs_8CEE_01
- D 0 - I - 0x010CBB 04:8CAB: 30        .byte $30   ; 
- D 0 - I - 0x010CBC 04:8CAC: 01        .byte $01   ; 
- D 0 - I - 0x010CBD 04:8CAD: 00        .byte $00   ; 
- D 0 - I - 0x010CBE 04:8CAE: EE 8C     .word ofs_8CEE_02
- D 0 - I - 0x010CC0 04:8CB0: 30        .byte $30   ; 
- D 0 - I - 0x010CC1 04:8CB1: 01        .byte $01   ; 
- D 0 - I - 0x010CC2 04:8CB2: 00        .byte $00   ; 
- D 0 - I - 0x010CC3 04:8CB3: F2 8C     .word ofs_8CF2_03
- D 0 - I - 0x010CC5 04:8CB5: 50        .byte $50   ; 
- D 0 - I - 0x010CC6 04:8CB6: 00        .byte $00   ; 
- D 0 - I - 0x010CC7 04:8CB7: 00        .byte $00   ; 
- D 0 - I - 0x010CC8 04:8CB8: F6 8C     .word ofs_8CF6_04
- D 0 - I - 0x010CCA 04:8CBA: 50        .byte $50   ; 
- D 0 - I - 0x010CCB 04:8CBB: 00        .byte $00   ; 
- D 0 - I - 0x010CCC 04:8CBC: 00        .byte $00   ; 
- D 0 - I - 0x010CCD 04:8CBD: FA 8C     .word ofs_8CFA_05
- D 0 - I - 0x010CCF 04:8CBF: A0        .byte $A0   ; 
- D 0 - I - 0x010CD0 04:8CC0: 00        .byte $00   ; 
- D 0 - I - 0x010CD1 04:8CC1: 00        .byte $00   ; 
- D 0 - I - 0x010CD2 04:8CC2: FE 8C     .word ofs_8CFE_06
- D 0 - I - 0x010CD4 04:8CC4: 30        .byte $30   ; 
- D 0 - I - 0x010CD5 04:8CC5: 01        .byte $01   ; 
- D 0 - I - 0x010CD6 04:8CC6: 00        .byte $00   ; 
- D 0 - I - 0x010CD7 04:8CC7: 02 8D     .word ofs_8D02_07
- D 0 - I - 0x010CD9 04:8CC9: 80        .byte $80   ; 
- D 0 - I - 0x010CDA 04:8CCA: 01        .byte $01   ; 
- D 0 - I - 0x010CDB 04:8CCB: 00        .byte $00   ; 
- D 0 - I - 0x010CDC 04:8CCC: 06 8D     .word ofs_8D06_08
- D 0 - I - 0x010CDE 04:8CCE: 40        .byte $40   ; 
- D 0 - I - 0x010CDF 04:8CCF: 01        .byte $01   ; 
- D 0 - I - 0x010CE0 04:8CD0: 00        .byte $00   ; 
- - - - - - 0x010CE1 04:8CD1: 16 8D     .word ofs_8D16_09
- - - - - - 0x010CE3 04:8CD3: 00        .byte $00   ; 
- - - - - - 0x010CE4 04:8CD4: 00        .byte $00   ; 
- - - - - - 0x010CE5 04:8CD5: 07        .byte $07   ; 
- D 0 - I - 0x010CE6 04:8CD6: 0A 8D     .word ofs_8D0A_0A
- D 0 - I - 0x010CE8 04:8CD8: 50        .byte $50   ; 
- D 0 - I - 0x010CE9 04:8CD9: 00        .byte $00   ; 
- D 0 - I - 0x010CEA 04:8CDA: 05        .byte $05   ; 
- D 0 - I - 0x010CEB 04:8CDB: 0E 8D     .word ofs_8D0E_0B
- D 0 - I - 0x010CED 04:8CDD: 30        .byte $30   ; 
- D 0 - I - 0x010CEE 04:8CDE: 01        .byte $01   ; 
- D 0 - I - 0x010CEF 04:8CDF: 05        .byte $05   ; 
- D 0 - I - 0x010CF0 04:8CE0: 12 8D     .word ofs_8D12_0C
- D 0 - I - 0x010CF2 04:8CE2: 30        .byte $30   ; 
- D 0 - I - 0x010CF3 04:8CE3: 01        .byte $01   ; 
- D 0 - I - 0x010CF4 04:8CE4: 05        .byte $05   ; 
- D 0 - I - 0x010CF5 04:8CE5: 16 8D     .word ofs_8D16_0D
- D 0 - I - 0x010CF7 04:8CE7: 00        .byte $00   ; 
- D 0 - I - 0x010CF8 04:8CE8: 00        .byte $00   ; 
- D 0 - I - 0x010CF9 04:8CE9: 07        .byte $07   ; 



ofs_8CEA_00:
- D 0 - I - 0x010CFA 04:8CEA: FF        .byte $FF   ; 
- D 0 - I - 0x010CFB 04:8CEB: FF        .byte $FF   ; 
- D 0 - I - 0x010CFC 04:8CEC: 1A 8D     .word off_8D1A



ofs_8CEE_01:
ofs_8CEE_02:
- D 0 - I - 0x010CFE 04:8CEE: FF        .byte $FF   ; 
- D 0 - I - 0x010CFF 04:8CEF: FF        .byte $FF   ; 
- D 0 - I - 0x010D00 04:8CF0: 33 8D     .word off_8D33



ofs_8CF2_03:
- D 0 - I - 0x010D02 04:8CF2: FF        .byte $FF   ; 
- D 0 - I - 0x010D03 04:8CF3: FF        .byte $FF   ; 
- D 0 - I - 0x010D04 04:8CF4: 4C 8D     .word off_8D4C



ofs_8CF6_04:
- D 0 - I - 0x010D06 04:8CF6: FF        .byte $FF   ; 
- D 0 - I - 0x010D07 04:8CF7: FF        .byte $FF   ; 
- D 0 - I - 0x010D08 04:8CF8: 65 8D     .word off_8D65



ofs_8CFA_05:
- D 0 - I - 0x010D0A 04:8CFA: FF        .byte $FF   ; 
- D 0 - I - 0x010D0B 04:8CFB: FF        .byte $FF   ; 
- D 0 - I - 0x010D0C 04:8CFC: 7E 8D     .word off_8D7E



ofs_8CFE_06:
- D 0 - I - 0x010D0E 04:8CFE: FF        .byte $FF   ; 
- D 0 - I - 0x010D0F 04:8CFF: FF        .byte $FF   ; 
- D 0 - I - 0x010D10 04:8D00: 97 8D     .word off_8D97



ofs_8D02_07:
- D 0 - I - 0x010D12 04:8D02: FF        .byte $FF   ; 
- D 0 - I - 0x010D13 04:8D03: FF        .byte $FF   ; 
- D 0 - I - 0x010D14 04:8D04: B0 8D     .word off_8DB0



ofs_8D06_08:
- D 0 - I - 0x010D16 04:8D06: FF        .byte $FF   ; 
- D 0 - I - 0x010D17 04:8D07: FF        .byte $FF   ; 
- D 0 - I - 0x010D18 04:8D08: C9 8D     .word off_8DC9



ofs_8D0A_0A:
- D 0 - I - 0x010D1A 04:8D0A: FF        .byte $FF   ; 
- D 0 - I - 0x010D1B 04:8D0B: FF        .byte $FF   ; 
- D 0 - I - 0x010D1C 04:8D0C: E2 8D     .word off_8DE2



ofs_8D0E_0B:
- D 0 - I - 0x010D1E 04:8D0E: FF        .byte $FF   ; 
- D 0 - I - 0x010D1F 04:8D0F: FF        .byte $FF   ; 
- D 0 - I - 0x010D20 04:8D10: FB 8D     .word off_8DFB



ofs_8D12_0C:
- D 0 - I - 0x010D22 04:8D12: FF        .byte $FF   ; 
- D 0 - I - 0x010D23 04:8D13: FF        .byte $FF   ; 
- D 0 - I - 0x010D24 04:8D14: 14 8E     .word off_8E14



ofs_8D16_09:
ofs_8D16_0D:
- D 0 - I - 0x010D26 04:8D16: FF        .byte $FF   ; 
- D 0 - I - 0x010D27 04:8D17: FF        .byte $FF   ; 
- D 0 - I - 0x010D28 04:8D18: 2D 8E     .word off_8E2D



off_8D1A:
- D 0 - I - 0x010D2A 04:8D1A: 00        .byte $00   ; 
- D 0 - I - 0x010D2B 04:8D1B: 00        .byte $00   ; 
- D 0 - I - 0x010D2C 04:8D1C: 00        .byte $00   ; 
- - - - - - 0x010D2D 04:8D1D: 00        .byte $00   ; 
- - - - - - 0x010D2E 04:8D1E: 00        .byte $00   ; 
- - - - - - 0x010D2F 04:8D1F: 7F        .byte $7F   ; 
- D 0 - I - 0x010D30 04:8D20: 00        .byte $00   ; 
- D 0 - I - 0x010D31 04:8D21: 00        .byte $00   ; 
- D 0 - I - 0x010D32 04:8D22: 00        .byte $00   ; 
- - - - - - 0x010D33 04:8D23: 00        .byte $00   ; 
- - - - - - 0x010D34 04:8D24: 00        .byte $00   ; 
- - - - - - 0x010D35 04:8D25: 7F        .byte $7F   ; 
- D 0 - I - 0x010D36 04:8D26: 03        .byte $03   ; 
- D 0 - I - 0x010D37 04:8D27: A0        .byte $A0   ; 
- D 0 - I - 0x010D38 04:8D28: 00        .byte $00   ; 
- D 0 - I - 0x010D39 04:8D29: 02        .byte $02   ; 
- D 0 - I - 0x010D3A 04:8D2A: 0B        .byte $0B   ; 
- D 0 - I - 0x010D3B 04:8D2B: 7F        .byte $7F   ; 
- D 0 - I - 0x010D3C 04:8D2C: 03        .byte $03   ; 
- D 0 - I - 0x010D3D 04:8D2D: 08        .byte $08   ; 
- D 0 - I - 0x010D3E 04:8D2E: 00        .byte $00   ; 
- - - - - - 0x010D3F 04:8D2F: 00        .byte $00   ; 
- - - - - - 0x010D40 04:8D30: 00        .byte $00   ; 
- - - - - - 0x010D41 04:8D31: 7F        .byte $7F   ; 
- D 0 - I - 0x010D42 04:8D32: FF        .byte $FF   ; 

off_8D33:
- D 0 - I - 0x010D43 04:8D33: 00        .byte $00   ; 
- D 0 - I - 0x010D44 04:8D34: 00        .byte $00   ; 
- D 0 - I - 0x010D45 04:8D35: 00        .byte $00   ; 
- - - - - - 0x010D46 04:8D36: 00        .byte $00   ; 
- - - - - - 0x010D47 04:8D37: 01        .byte $01   ; 
- - - - - - 0x010D48 04:8D38: 7F        .byte $7F   ; 
- D 0 - I - 0x010D49 04:8D39: 00        .byte $00   ; 
- D 0 - I - 0x010D4A 04:8D3A: 00        .byte $00   ; 
- D 0 - I - 0x010D4B 04:8D3B: 00        .byte $00   ; 
- D 0 - I - 0x010D4C 04:8D3C: 00        .byte $00   ; 
- D 0 - I - 0x010D4D 04:8D3D: 01        .byte $01   ; 
- D 0 - I - 0x010D4E 04:8D3E: 85        .byte $85   ; 
- D 0 - I - 0x010D4F 04:8D3F: 03        .byte $03   ; 
- D 0 - I - 0x010D50 04:8D40: 32        .byte $32   ; 
- D 0 - I - 0x010D51 04:8D41: 01        .byte $01   ; 
- D 0 - I - 0x010D52 04:8D42: 02        .byte $02   ; 
- D 0 - I - 0x010D53 04:8D43: 0C        .byte $0C   ; 
- D 0 - I - 0x010D54 04:8D44: 7F        .byte $7F   ; 
- D 0 - I - 0x010D55 04:8D45: 03        .byte $03   ; 
- D 0 - I - 0x010D56 04:8D46: C0        .byte $C0   ; 
- D 0 - I - 0x010D57 04:8D47: 00        .byte $00   ; 
- D 0 - I - 0x010D58 04:8D48: 02        .byte $02   ; 
- D 0 - I - 0x010D59 04:8D49: 0B        .byte $0B   ; 
- D 0 - I - 0x010D5A 04:8D4A: 7F        .byte $7F   ; 
- D 0 - I - 0x010D5B 04:8D4B: FF        .byte $FF   ; 

off_8D4C:
- D 0 - I - 0x010D5C 04:8D4C: 00        .byte $00   ; 
- D 0 - I - 0x010D5D 04:8D4D: 00        .byte $00   ; 
- D 0 - I - 0x010D5E 04:8D4E: 00        .byte $00   ; 
- - - - - - 0x010D5F 04:8D4F: 00        .byte $00   ; 
- - - - - - 0x010D60 04:8D50: 03        .byte $03   ; 
- - - - - - 0x010D61 04:8D51: 05        .byte $05   ; 
- D 0 - I - 0x010D62 04:8D52: 00        .byte $00   ; 
- D 0 - I - 0x010D63 04:8D53: 00        .byte $00   ; 
- D 0 - I - 0x010D64 04:8D54: 00        .byte $00   ; 
- D 0 - I - 0x010D65 04:8D55: 00        .byte $00   ; 
- D 0 - I - 0x010D66 04:8D56: 03        .byte $03   ; 
- D 0 - I - 0x010D67 04:8D57: 7F        .byte $7F   ; 
- D 0 - I - 0x010D68 04:8D58: 03        .byte $03   ; 
- D 0 - I - 0x010D69 04:8D59: 46        .byte $46   ; 
- D 0 - I - 0x010D6A 04:8D5A: 01        .byte $01   ; 
- D 0 - I - 0x010D6B 04:8D5B: 02        .byte $02   ; 
- D 0 - I - 0x010D6C 04:8D5C: 0A        .byte $0A   ; 
- D 0 - I - 0x010D6D 04:8D5D: 7F        .byte $7F   ; 
- D 0 - I - 0x010D6E 04:8D5E: 03        .byte $03   ; 
- D 0 - I - 0x010D6F 04:8D5F: B8        .byte $B8   ; 
- D 0 - I - 0x010D70 04:8D60: 00        .byte $00   ; 
- - - - - - 0x010D71 04:8D61: 02        .byte $02   ; 
- - - - - - 0x010D72 04:8D62: 0D        .byte $0D   ; 
- - - - - - 0x010D73 04:8D63: 7F        .byte $7F   ; 
- D 0 - I - 0x010D74 04:8D64: FF        .byte $FF   ; 

off_8D65:
- D 0 - I - 0x010D75 04:8D65: 00        .byte $00   ; 
- D 0 - I - 0x010D76 04:8D66: 00        .byte $00   ; 
- D 0 - I - 0x010D77 04:8D67: 00        .byte $00   ; 
- D 0 - I - 0x010D78 04:8D68: 00        .byte $00   ; 
- D 0 - I - 0x010D79 04:8D69: 04        .byte $04   ; 
- D 0 - I - 0x010D7A 04:8D6A: 07        .byte $07   ; 
- D 0 - I - 0x010D7B 04:8D6B: 00        .byte $00   ; 
- D 0 - I - 0x010D7C 04:8D6C: 00        .byte $00   ; 
- D 0 - I - 0x010D7D 04:8D6D: 00        .byte $00   ; 
- D 0 - I - 0x010D7E 04:8D6E: 00        .byte $00   ; 
- D 0 - I - 0x010D7F 04:8D6F: 04        .byte $04   ; 
- D 0 - I - 0x010D80 04:8D70: 7F        .byte $7F   ; 
- D 0 - I - 0x010D81 04:8D71: 03        .byte $03   ; 
- D 0 - I - 0x010D82 04:8D72: C0        .byte $C0   ; 
- D 0 - I - 0x010D83 04:8D73: 01        .byte $01   ; 
- D 0 - I - 0x010D84 04:8D74: 02        .byte $02   ; 
- D 0 - I - 0x010D85 04:8D75: 0D        .byte $0D   ; 
- D 0 - I - 0x010D86 04:8D76: 7F        .byte $7F   ; 
- D 0 - I - 0x010D87 04:8D77: 03        .byte $03   ; 
- D 0 - I - 0x010D88 04:8D78: 5A        .byte $5A   ; 
- D 0 - I - 0x010D89 04:8D79: 01        .byte $01   ; 
- D 0 - I - 0x010D8A 04:8D7A: 02        .byte $02   ; 
- D 0 - I - 0x010D8B 04:8D7B: 0A        .byte $0A   ; 
- D 0 - I - 0x010D8C 04:8D7C: 7F        .byte $7F   ; 
- D 0 - I - 0x010D8D 04:8D7D: FF        .byte $FF   ; 

off_8D7E:
- D 0 - I - 0x010D8E 04:8D7E: 00        .byte $00   ; 
- D 0 - I - 0x010D8F 04:8D7F: 00        .byte $00   ; 
- D 0 - I - 0x010D90 04:8D80: 00        .byte $00   ; 
- D 0 - I - 0x010D91 04:8D81: 00        .byte $00   ; 
- D 0 - I - 0x010D92 04:8D82: 05        .byte $05   ; 
- D 0 - I - 0x010D93 04:8D83: 08        .byte $08   ; 
- D 0 - I - 0x010D94 04:8D84: 00        .byte $00   ; 
- D 0 - I - 0x010D95 04:8D85: 00        .byte $00   ; 
- D 0 - I - 0x010D96 04:8D86: 00        .byte $00   ; 
- D 0 - I - 0x010D97 04:8D87: 00        .byte $00   ; 
- D 0 - I - 0x010D98 04:8D88: 05        .byte $05   ; 
- D 0 - I - 0x010D99 04:8D89: 87        .byte $87   ; 
- D 0 - I - 0x010D9A 04:8D8A: 03        .byte $03   ; 
- D 0 - I - 0x010D9B 04:8D8B: D0        .byte $D0   ; 
- D 0 - I - 0x010D9C 04:8D8C: 01        .byte $01   ; 
- D 0 - I - 0x010D9D 04:8D8D: 02        .byte $02   ; 
- D 0 - I - 0x010D9E 04:8D8E: 0D        .byte $0D   ; 
- D 0 - I - 0x010D9F 04:8D8F: 7F        .byte $7F   ; 
- D 0 - I - 0x010DA0 04:8D90: 03        .byte $03   ; 
- D 0 - I - 0x010DA1 04:8D91: 58        .byte $58   ; 
- D 0 - I - 0x010DA2 04:8D92: 01        .byte $01   ; 
- D 0 - I - 0x010DA3 04:8D93: 02        .byte $02   ; 
- D 0 - I - 0x010DA4 04:8D94: 0A        .byte $0A   ; 
- D 0 - I - 0x010DA5 04:8D95: 7F        .byte $7F   ; 
- D 0 - I - 0x010DA6 04:8D96: FF        .byte $FF   ; 

off_8D97:
- D 0 - I - 0x010DA7 04:8D97: 00        .byte $00   ; 
- D 0 - I - 0x010DA8 04:8D98: 00        .byte $00   ; 
- D 0 - I - 0x010DA9 04:8D99: 00        .byte $00   ; 
- D 0 - I - 0x010DAA 04:8D9A: 00        .byte $00   ; 
- D 0 - I - 0x010DAB 04:8D9B: 06        .byte $06   ; 
- D 0 - I - 0x010DAC 04:8D9C: 09        .byte $09   ; 
- D 0 - I - 0x010DAD 04:8D9D: 00        .byte $00   ; 
- D 0 - I - 0x010DAE 04:8D9E: 00        .byte $00   ; 
- D 0 - I - 0x010DAF 04:8D9F: 00        .byte $00   ; 
- - - - - - 0x010DB0 04:8DA0: 00        .byte $00   ; 
- - - - - - 0x010DB1 04:8DA1: 06        .byte $06   ; 
- - - - - - 0x010DB2 04:8DA2: 88        .byte $88   ; 
- D 0 - I - 0x010DB3 04:8DA3: 03        .byte $03   ; 
- D 0 - I - 0x010DB4 04:8DA4: D0        .byte $D0   ; 
- D 0 - I - 0x010DB5 04:8DA5: 01        .byte $01   ; 
- - - - - - 0x010DB6 04:8DA6: 02        .byte $02   ; 
- - - - - - 0x010DB7 04:8DA7: 0D        .byte $0D   ; 
- - - - - - 0x010DB8 04:8DA8: 7F        .byte $7F   ; 
- D 0 - I - 0x010DB9 04:8DA9: 03        .byte $03   ; 
- D 0 - I - 0x010DBA 04:8DAA: 52        .byte $52   ; 
- D 0 - I - 0x010DBB 04:8DAB: 01        .byte $01   ; 
- D 0 - I - 0x010DBC 04:8DAC: 02        .byte $02   ; 
- D 0 - I - 0x010DBD 04:8DAD: 0C        .byte $0C   ; 
- D 0 - I - 0x010DBE 04:8DAE: 7F        .byte $7F   ; 
- D 0 - I - 0x010DBF 04:8DAF: FF        .byte $FF   ; 

off_8DB0:
- D 0 - I - 0x010DC0 04:8DB0: 00        .byte $00   ; 
- D 0 - I - 0x010DC1 04:8DB1: 00        .byte $00   ; 
- D 0 - I - 0x010DC2 04:8DB2: 00        .byte $00   ; 
- D 0 - I - 0x010DC3 04:8DB3: 00        .byte $00   ; 
- D 0 - I - 0x010DC4 04:8DB4: 07        .byte $07   ; 
- D 0 - I - 0x010DC5 04:8DB5: 7F        .byte $7F   ; 
- D 0 - I - 0x010DC6 04:8DB6: 00        .byte $00   ; 
- D 0 - I - 0x010DC7 04:8DB7: 00        .byte $00   ; 
- D 0 - I - 0x010DC8 04:8DB8: 00        .byte $00   ; 
- D 0 - I - 0x010DC9 04:8DB9: 00        .byte $00   ; 
- D 0 - I - 0x010DCA 04:8DBA: 07        .byte $07   ; 
- D 0 - I - 0x010DCB 04:8DBB: 89        .byte $89   ; 
- D 0 - I - 0x010DCC 04:8DBC: 03        .byte $03   ; 
- D 0 - I - 0x010DCD 04:8DBD: FF        .byte $FF   ; 
- D 0 - I - 0x010DCE 04:8DBE: 01        .byte $01   ; 
- D 0 - I - 0x010DCF 04:8DBF: 02        .byte $02   ; 
- D 0 - I - 0x010DD0 04:8DC0: 08        .byte $08   ; 
- D 0 - I - 0x010DD1 04:8DC1: 7F        .byte $7F   ; 
- D 0 - I - 0x010DD2 04:8DC2: 03        .byte $03   ; 
- D 0 - I - 0x010DD3 04:8DC3: 60        .byte $60   ; 
- D 0 - I - 0x010DD4 04:8DC4: 01        .byte $01   ; 
- D 0 - I - 0x010DD5 04:8DC5: 02        .byte $02   ; 
- D 0 - I - 0x010DD6 04:8DC6: 0C        .byte $0C   ; 
- D 0 - I - 0x010DD7 04:8DC7: 7F        .byte $7F   ; 
- D 0 - I - 0x010DD8 04:8DC8: FF        .byte $FF   ; 

off_8DC9:
- D 0 - I - 0x010DD9 04:8DC9: 00        .byte $00   ; 
- D 0 - I - 0x010DDA 04:8DCA: 00        .byte $00   ; 
- D 0 - I - 0x010DDB 04:8DCB: 00        .byte $00   ; 
- - - - - - 0x010DDC 04:8DCC: 00        .byte $00   ; 
- - - - - - 0x010DDD 04:8DCD: 08        .byte $08   ; 
- - - - - - 0x010DDE 04:8DCE: 7F        .byte $7F   ; 
- D 0 - I - 0x010DDF 04:8DCF: 00        .byte $00   ; 
- D 0 - I - 0x010DE0 04:8DD0: 00        .byte $00   ; 
- D 0 - I - 0x010DE1 04:8DD1: 00        .byte $00   ; 
- D 0 - I - 0x010DE2 04:8DD2: 00        .byte $00   ; 
- D 0 - I - 0x010DE3 04:8DD3: 08        .byte $08   ; 
- D 0 - I - 0x010DE4 04:8DD4: 7F        .byte $7F   ; 
- D 0 - I - 0x010DE5 04:8DD5: 03        .byte $03   ; 
- D 0 - I - 0x010DE6 04:8DD6: B0        .byte $B0   ; 
- D 0 - I - 0x010DE7 04:8DD7: 03        .byte $03   ; 
- D 0 - I - 0x010DE8 04:8DD8: 00        .byte $00   ; 
- D 0 - I - 0x010DE9 04:8DD9: 08        .byte $08   ; 
- D 0 - I - 0x010DEA 04:8DDA: 7F        .byte $7F   ; 
- D 0 - I - 0x010DEB 04:8DDB: 03        .byte $03   ; 
- D 0 - I - 0x010DEC 04:8DDC: 00        .byte $00   ; 
- D 0 - I - 0x010DED 04:8DDD: 02        .byte $02   ; 
- D 0 - I - 0x010DEE 04:8DDE: 02        .byte $02   ; 
- D 0 - I - 0x010DEF 04:8DDF: 0D        .byte $0D   ; 
- D 0 - I - 0x010DF0 04:8DE0: 7F        .byte $7F   ; 
- D 0 - I - 0x010DF1 04:8DE1: FF        .byte $FF   ; 

off_8DE2:
- D 0 - I - 0x010DF2 04:8DE2: 00        .byte $00   ; 
- D 0 - I - 0x010DF3 04:8DE3: 00        .byte $00   ; 
- D 0 - I - 0x010DF4 04:8DE4: 00        .byte $00   ; 
- - - - - - 0x010DF5 04:8DE5: 00        .byte $00   ; 
- - - - - - 0x010DF6 04:8DE6: 0A        .byte $0A   ; 
- - - - - - 0x010DF7 04:8DE7: 7F        .byte $7F   ; 
- D 0 - I - 0x010DF8 04:8DE8: 00        .byte $00   ; 
- D 0 - I - 0x010DF9 04:8DE9: 00        .byte $00   ; 
- D 0 - I - 0x010DFA 04:8DEA: 00        .byte $00   ; 
- - - - - - 0x010DFB 04:8DEB: 00        .byte $00   ; 
- - - - - - 0x010DFC 04:8DEC: 0A        .byte $0A   ; 
- - - - - - 0x010DFD 04:8DED: 7F        .byte $7F   ; 
- D 0 - I - 0x010DFE 04:8DEE: 03        .byte $03   ; 
- D 0 - I - 0x010DFF 04:8DEF: 58        .byte $58   ; 
- D 0 - I - 0x010E00 04:8DF0: 01        .byte $01   ; 
- D 0 - I - 0x010E01 04:8DF1: 03        .byte $03   ; 
- D 0 - I - 0x010E02 04:8DF2: 04        .byte $04   ; 
- D 0 - I - 0x010E03 04:8DF3: 7F        .byte $7F   ; 
- D 0 - I - 0x010E04 04:8DF4: 03        .byte $03   ; 
- D 0 - I - 0x010E05 04:8DF5: 48        .byte $48   ; 
- D 0 - I - 0x010E06 04:8DF6: 01        .byte $01   ; 
- D 0 - I - 0x010E07 04:8DF7: 03        .byte $03   ; 
- D 0 - I - 0x010E08 04:8DF8: 03        .byte $03   ; 
- D 0 - I - 0x010E09 04:8DF9: 7F        .byte $7F   ; 
- D 0 - I - 0x010E0A 04:8DFA: FF        .byte $FF   ; 

off_8DFB:
- D 0 - I - 0x010E0B 04:8DFB: 00        .byte $00   ; 
- D 0 - I - 0x010E0C 04:8DFC: 00        .byte $00   ; 
- D 0 - I - 0x010E0D 04:8DFD: 00        .byte $00   ; 
- - - - - - 0x010E0E 04:8DFE: 00        .byte $00   ; 
- - - - - - 0x010E0F 04:8DFF: 0B        .byte $0B   ; 
- - - - - - 0x010E10 04:8E00: 7F        .byte $7F   ; 
- D 0 - I - 0x010E11 04:8E01: 00        .byte $00   ; 
- D 0 - I - 0x010E12 04:8E02: 00        .byte $00   ; 
- D 0 - I - 0x010E13 04:8E03: 00        .byte $00   ; 
- - - - - - 0x010E14 04:8E04: 00        .byte $00   ; 
- - - - - - 0x010E15 04:8E05: 0B        .byte $0B   ; 
- - - - - - 0x010E16 04:8E06: 7F        .byte $7F   ; 
- D 0 - I - 0x010E17 04:8E07: 03        .byte $03   ; 
- D 0 - I - 0x010E18 04:8E08: C0        .byte $C0   ; 
- D 0 - I - 0x010E19 04:8E09: 00        .byte $00   ; 
- D 0 - I - 0x010E1A 04:8E0A: 03        .byte $03   ; 
- D 0 - I - 0x010E1B 04:8E0B: 01        .byte $01   ; 
- D 0 - I - 0x010E1C 04:8E0C: 7F        .byte $7F   ; 
- D 0 - I - 0x010E1D 04:8E0D: 03        .byte $03   ; 
- D 0 - I - 0x010E1E 04:8E0E: A0        .byte $A0   ; 
- D 0 - I - 0x010E1F 04:8E0F: 00        .byte $00   ; 
- - - - - - 0x010E20 04:8E10: 00        .byte $00   ; 
- - - - - - 0x010E21 04:8E11: 0B        .byte $0B   ; 
- - - - - - 0x010E22 04:8E12: 7F        .byte $7F   ; 
- D 0 - I - 0x010E23 04:8E13: FF        .byte $FF   ; 

off_8E14:
- D 0 - I - 0x010E24 04:8E14: 00        .byte $00   ; 
- D 0 - I - 0x010E25 04:8E15: 00        .byte $00   ; 
- D 0 - I - 0x010E26 04:8E16: 00        .byte $00   ; 
- - - - - - 0x010E27 04:8E17: 00        .byte $00   ; 
- - - - - - 0x010E28 04:8E18: 0C        .byte $0C   ; 
- - - - - - 0x010E29 04:8E19: 7F        .byte $7F   ; 
- D 0 - I - 0x010E2A 04:8E1A: 00        .byte $00   ; 
- D 0 - I - 0x010E2B 04:8E1B: 00        .byte $00   ; 
- D 0 - I - 0x010E2C 04:8E1C: 00        .byte $00   ; 
- - - - - - 0x010E2D 04:8E1D: 00        .byte $00   ; 
- - - - - - 0x010E2E 04:8E1E: 0C        .byte $0C   ; 
- - - - - - 0x010E2F 04:8E1F: 7F        .byte $7F   ; 
- D 0 - I - 0x010E30 04:8E20: 03        .byte $03   ; 
- D 0 - I - 0x010E31 04:8E21: 52        .byte $52   ; 
- D 0 - I - 0x010E32 04:8E22: 01        .byte $01   ; 
- D 0 - I - 0x010E33 04:8E23: 03        .byte $03   ; 
- D 0 - I - 0x010E34 04:8E24: 06        .byte $06   ; 
- D 0 - I - 0x010E35 04:8E25: 7F        .byte $7F   ; 
- D 0 - I - 0x010E36 04:8E26: 03        .byte $03   ; 
- D 0 - I - 0x010E37 04:8E27: 32        .byte $32   ; 
- D 0 - I - 0x010E38 04:8E28: 01        .byte $01   ; 
- D 0 - I - 0x010E39 04:8E29: 03        .byte $03   ; 
- D 0 - I - 0x010E3A 04:8E2A: 01        .byte $01   ; 
- D 0 - I - 0x010E3B 04:8E2B: 7F        .byte $7F   ; 
- D 0 - I - 0x010E3C 04:8E2C: FF        .byte $FF   ; 

off_8E2D:
- D 0 - I - 0x010E3D 04:8E2D: 00        .byte $00   ; 
- D 0 - I - 0x010E3E 04:8E2E: 00        .byte $00   ; 
- D 0 - I - 0x010E3F 04:8E2F: 00        .byte $00   ; 
- - - - - - 0x010E40 04:8E30: 00        .byte $00   ; 
- - - - - - 0x010E41 04:8E31: 0D        .byte $0D   ; 
- - - - - - 0x010E42 04:8E32: 7F        .byte $7F   ; 
- D 0 - I - 0x010E43 04:8E33: 00        .byte $00   ; 
- D 0 - I - 0x010E44 04:8E34: 00        .byte $00   ; 
- D 0 - I - 0x010E45 04:8E35: 00        .byte $00   ; 
- - - - - - 0x010E46 04:8E36: 00        .byte $00   ; 
- - - - - - 0x010E47 04:8E37: 0D        .byte $0D   ; 
- - - - - - 0x010E48 04:8E38: 7F        .byte $7F   ; 
- D 0 - I - 0x010E49 04:8E39: FF        .byte $FF   ; 



_off005_8E3A_02_Battle_in_the_Chopper:
; con_mission_Battle_in_the_Chopper
- D 0 - I - 0x010E4A 04:8E3A: 44 8E     .word ofs_8E44_00
- D 0 - I - 0x010E4C 04:8E3C: 00        .byte $00   ; 
- D 0 - I - 0x010E4D 04:8E3D: 00        .byte $00   ; 
- D 0 - I - 0x010E4E 04:8E3E: 80        .byte $80   ; 
- D 0 - I - 0x010E4F 04:8E3F: 44 8E     .word ofs_8E44_01
- D 0 - I - 0x010E51 04:8E41: 00        .byte $00   ; 
- D 0 - I - 0x010E52 04:8E42: 00        .byte $00   ; 
- D 0 - I - 0x010E53 04:8E43: 87        .byte $87   ; 



ofs_8E44_00:
ofs_8E44_01:
- D 0 - I - 0x010E54 04:8E44: 20        .byte $20   ; 
- D 0 - I - 0x010E55 04:8E45: 00        .byte $00   ; 
- D 0 - I - 0x010E56 04:8E46: 50 8E     .word off_8E50
- D 0 - I - 0x010E58 04:8E48: 3F        .byte $3F   ; 
- D 0 - I - 0x010E59 04:8E49: 00        .byte $00   ; 
- D 0 - I - 0x010E5A 04:8E4A: 69 8E     .word off_8E69
- D 0 - I - 0x010E5C 04:8E4C: FF        .byte $FF   ; 
- D 0 - I - 0x010E5D 04:8E4D: FF        .byte $FF   ; 
- D 0 - I - 0x010E5E 04:8E4E: 76 8E     .word off_8E76



off_8E50:
- D 0 - I - 0x010E60 04:8E50: 00        .byte $00   ; 
- D 0 - I - 0x010E61 04:8E51: 50        .byte $50   ; 
- D 0 - I - 0x010E62 04:8E52: 00        .byte $00   ; 
- D 0 - I - 0x010E63 04:8E53: 00        .byte $00   ; 
- D 0 - I - 0x010E64 04:8E54: 00        .byte $00   ; 
- D 0 - I - 0x010E65 04:8E55: 7F        .byte $7F   ; 
- D 0 - I - 0x010E66 04:8E56: 00        .byte $00   ; 
- D 0 - I - 0x010E67 04:8E57: 50        .byte $50   ; 
- D 0 - I - 0x010E68 04:8E58: 00        .byte $00   ; 
- - - - - - 0x010E69 04:8E59: 00        .byte $00   ; 
- - - - - - 0x010E6A 04:8E5A: 00        .byte $00   ; 
- - - - - - 0x010E6B 04:8E5B: 7F        .byte $7F   ; 
- D 0 - I - 0x010E6C 04:8E5C: 00        .byte $00   ; 
- D 0 - I - 0x010E6D 04:8E5D: 50        .byte $50   ; 
- D 0 - I - 0x010E6E 04:8E5E: 00        .byte $00   ; 
- - - - - - 0x010E6F 04:8E5F: 00        .byte $00   ; 
- - - - - - 0x010E70 04:8E60: 00        .byte $00   ; 
- - - - - - 0x010E71 04:8E61: 7F        .byte $7F   ; 
- D 0 - I - 0x010E72 04:8E62: 03        .byte $03   ; 
- D 0 - I - 0x010E73 04:8E63: 20        .byte $20   ; 
- D 0 - I - 0x010E74 04:8E64: 00        .byte $00   ; 
- D 0 - I - 0x010E75 04:8E65: 00        .byte $00   ; 
- D 0 - I - 0x010E76 04:8E66: 00        .byte $00   ; 
- D 0 - I - 0x010E77 04:8E67: 7F        .byte $7F   ; 
- D 0 - I - 0x010E78 04:8E68: FF        .byte $FF   ; 

off_8E69:
- D 0 - I - 0x010E79 04:8E69: 01        .byte $01   ; 
- D 0 - I - 0x010E7A 04:8E6A: 30        .byte $30   ; 
- D 0 - I - 0x010E7B 04:8E6B: 00        .byte $00   ; 
- D 0 - I - 0x010E7C 04:8E6C: 00        .byte $00   ; 
- D 0 - I - 0x010E7D 04:8E6D: 00        .byte $00   ; 
- D 0 - I - 0x010E7E 04:8E6E: 7F        .byte $7F   ; 
- D 0 - I - 0x010E7F 04:8E6F: 00        .byte $00   ; 
- D 0 - I - 0x010E80 04:8E70: 50        .byte $50   ; 
- D 0 - I - 0x010E81 04:8E71: 00        .byte $00   ; 
- - - - - - 0x010E82 04:8E72: 00        .byte $00   ; 
- - - - - - 0x010E83 04:8E73: 00        .byte $00   ; 
- - - - - - 0x010E84 04:8E74: 7F        .byte $7F   ; 
- D 0 - I - 0x010E85 04:8E75: FF        .byte $FF   ; 

off_8E76:
- D 0 - I - 0x010E86 04:8E76: 00        .byte $00   ; 
- D 0 - I - 0x010E87 04:8E77: 70        .byte $70   ; 
- D 0 - I - 0x010E88 04:8E78: 00        .byte $00   ; 
- D 0 - I - 0x010E89 04:8E79: 00        .byte $00   ; 
- D 0 - I - 0x010E8A 04:8E7A: 00        .byte $00   ; 
- D 0 - I - 0x010E8B 04:8E7B: 7F        .byte $7F   ; 
- D 0 - I - 0x010E8C 04:8E7C: 00        .byte $00   ; 
- D 0 - I - 0x010E8D 04:8E7D: 50        .byte $50   ; 
- D 0 - I - 0x010E8E 04:8E7E: 00        .byte $00   ; 
- D 0 - I - 0x010E8F 04:8E7F: 00        .byte $00   ; 
- D 0 - I - 0x010E90 04:8E80: 00        .byte $00   ; 
- D 0 - I - 0x010E91 04:8E81: 7F        .byte $7F   ; 
- D 0 - I - 0x010E92 04:8E82: 03        .byte $03   ; 
- D 0 - I - 0x010E93 04:8E83: E0        .byte $E0   ; 
- D 0 - I - 0x010E94 04:8E84: 00        .byte $00   ; 
- D 0 - I - 0x010E95 04:8E85: 00        .byte $00   ; 
- D 0 - I - 0x010E96 04:8E86: 00        .byte $00   ; 
- D 0 - I - 0x010E97 04:8E87: 7F        .byte $7F   ; 
- D 0 - I - 0x010E98 04:8E88: FF        .byte $FF   ; 



_off005_8E89_03_Undersea_Base_pt1:
; con_mission_Undersea_Base_pt1
- D 0 - I - 0x010E99 04:8E89: 98 8E     .word ofs_8E98_00
- D 0 - I - 0x010E9B 04:8E8B: F0        .byte $F0   ; 
- D 0 - I - 0x010E9C 04:8E8C: 01        .byte $01   ; 
- D 0 - I - 0x010E9D 04:8E8D: 80        .byte $80   ; 
- D 0 - I - 0x010E9E 04:8E8E: A8 8E     .word ofs_8EA8_01
- D 0 - I - 0x010EA0 04:8E90: E0        .byte $E0   ; 
- D 0 - I - 0x010EA1 04:8E91: 01        .byte $01   ; 
- D 0 - I - 0x010EA2 04:8E92: 81        .byte $81   ; 
- D 0 - I - 0x010EA3 04:8E93: AC 8E     .word ofs_8EAC_02
- D 0 - I - 0x010EA5 04:8E95: 10        .byte $10   ; 
- D 0 - I - 0x010EA6 04:8E96: 00        .byte $00   ; 
- D 0 - I - 0x010EA7 04:8E97: 00        .byte $00   ; 



ofs_8E98_00:
- D 0 - I - 0x010EA8 04:8E98: 3F        .byte $3F   ; 
- D 0 - I - 0x010EA9 04:8E99: 00        .byte $00   ; 
- D 0 - I - 0x010EAA 04:8E9A: B0 8E     .word off_8EB0
- D 0 - I - 0x010EAC 04:8E9C: 7F        .byte $7F   ; 
- D 0 - I - 0x010EAD 04:8E9D: 01        .byte $01   ; 
- D 0 - I - 0x010EAE 04:8E9E: C9 8E     .word off_8EC9
- D 0 - I - 0x010EB0 04:8EA0: 9F        .byte $9F   ; 
- D 0 - I - 0x010EB1 04:8EA1: 01        .byte $01   ; 
- D 0 - I - 0x010EB2 04:8EA2: D6 8E     .word off_8ED6
- D 0 - I - 0x010EB4 04:8EA4: FF        .byte $FF   ; 
- D 0 - I - 0x010EB5 04:8EA5: FF        .byte $FF   ; 
- D 0 - I - 0x010EB6 04:8EA6: E3 8E     .word off_8EE3



ofs_8EA8_01:
- D 0 - I - 0x010EB8 04:8EA8: FF        .byte $FF   ; 
- D 0 - I - 0x010EB9 04:8EA9: FF        .byte $FF   ; 
- D 0 - I - 0x010EBA 04:8EAA: F6 8E     .word off_8EF6



ofs_8EAC_02:
- D 0 - I - 0x010EBC 04:8EAC: FF        .byte $FF   ; 
- D 0 - I - 0x010EBD 04:8EAD: FF        .byte $FF   ; 
- D 0 - I - 0x010EBE 04:8EAE: 0F 8F     .word off_8F0F



off_8EB0:
- D 0 - I - 0x010EC0 04:8EB0: 00        .byte $00   ; 
- D 0 - I - 0x010EC1 04:8EB1: 70        .byte $70   ; 
- D 0 - I - 0x010EC2 04:8EB2: 00        .byte $00   ; 
- - - - - - 0x010EC3 04:8EB3: 00        .byte $00   ; 
- - - - - - 0x010EC4 04:8EB4: 00        .byte $00   ; 
- - - - - - 0x010EC5 04:8EB5: 7F        .byte $7F   ; 
- D 0 - I - 0x010EC6 04:8EB6: 00        .byte $00   ; 
- D 0 - I - 0x010EC7 04:8EB7: 40        .byte $40   ; 
- D 0 - I - 0x010EC8 04:8EB8: 00        .byte $00   ; 
- - - - - - 0x010EC9 04:8EB9: 02        .byte $02   ; 
- - - - - - 0x010ECA 04:8EBA: 01        .byte $01   ; 
- - - - - - 0x010ECB 04:8EBB: 7F        .byte $7F   ; 
- D 0 - I - 0x010ECC 04:8EBC: 00        .byte $00   ; 
- D 0 - I - 0x010ECD 04:8EBD: 70        .byte $70   ; 
- D 0 - I - 0x010ECE 04:8EBE: 00        .byte $00   ; 
- - - - - - 0x010ECF 04:8EBF: 00        .byte $00   ; 
- - - - - - 0x010ED0 04:8EC0: 00        .byte $00   ; 
- - - - - - 0x010ED1 04:8EC1: 7F        .byte $7F   ; 
- D 0 - I - 0x010ED2 04:8EC2: 03        .byte $03   ; 
- D 0 - I - 0x010ED3 04:8EC3: 08        .byte $08   ; 
- D 0 - I - 0x010ED4 04:8EC4: 00        .byte $00   ; 
- D 0 - I - 0x010ED5 04:8EC5: 00        .byte $00   ; 
- D 0 - I - 0x010ED6 04:8EC6: 00        .byte $00   ; 
- D 0 - I - 0x010ED7 04:8EC7: 7F        .byte $7F   ; 
- D 0 - I - 0x010ED8 04:8EC8: FF        .byte $FF   ; 

off_8EC9:
- D 0 - I - 0x010ED9 04:8EC9: 00        .byte $00   ; 
- D 0 - I - 0x010EDA 04:8ECA: 70        .byte $70   ; 
- D 0 - I - 0x010EDB 04:8ECB: 00        .byte $00   ; 
- D 0 - I - 0x010EDC 04:8ECC: 00        .byte $00   ; 
- D 0 - I - 0x010EDD 04:8ECD: 00        .byte $00   ; 
- D 0 - I - 0x010EDE 04:8ECE: 7F        .byte $7F   ; 
- D 0 - I - 0x010EDF 04:8ECF: 00        .byte $00   ; 
- D 0 - I - 0x010EE0 04:8ED0: 40        .byte $40   ; 
- D 0 - I - 0x010EE1 04:8ED1: 00        .byte $00   ; 
- D 0 - I - 0x010EE2 04:8ED2: 02        .byte $02   ; 
- D 0 - I - 0x010EE3 04:8ED3: 01        .byte $01   ; 
- D 0 - I - 0x010EE4 04:8ED4: 7F        .byte $7F   ; 
- D 0 - I - 0x010EE5 04:8ED5: FF        .byte $FF   ; 

off_8ED6:
- D 0 - I - 0x010EE6 04:8ED6: 02        .byte $02   ; 
- D 0 - I - 0x010EE7 04:8ED7: F0        .byte $F0   ; 
- D 0 - I - 0x010EE8 04:8ED8: 01        .byte $01   ; 
- D 0 - I - 0x010EE9 04:8ED9: 00        .byte $00   ; 
- D 0 - I - 0x010EEA 04:8EDA: 00        .byte $00   ; 
- D 0 - I - 0x010EEB 04:8EDB: 7F        .byte $7F   ; 
- D 0 - I - 0x010EEC 04:8EDC: 00        .byte $00   ; 
- D 0 - I - 0x010EED 04:8EDD: 40        .byte $40   ; 
- D 0 - I - 0x010EEE 04:8EDE: 00        .byte $00   ; 
- - - - - - 0x010EEF 04:8EDF: 02        .byte $02   ; 
- - - - - - 0x010EF0 04:8EE0: 01        .byte $01   ; 
- - - - - - 0x010EF1 04:8EE1: 7F        .byte $7F   ; 
- D 0 - I - 0x010EF2 04:8EE2: FF        .byte $FF   ; 

off_8EE3:
- D 0 - I - 0x010EF3 04:8EE3: 00        .byte $00   ; 
- D 0 - I - 0x010EF4 04:8EE4: 50        .byte $50   ; 
- D 0 - I - 0x010EF5 04:8EE5: 00        .byte $00   ; 
- D 0 - I - 0x010EF6 04:8EE6: 00        .byte $00   ; 
- D 0 - I - 0x010EF7 04:8EE7: 00        .byte $00   ; 
- D 0 - I - 0x010EF8 04:8EE8: 7F        .byte $7F   ; 
- D 0 - I - 0x010EF9 04:8EE9: 00        .byte $00   ; 
- D 0 - I - 0x010EFA 04:8EEA: 40        .byte $40   ; 
- D 0 - I - 0x010EFB 04:8EEB: 00        .byte $00   ; 
- D 0 - I - 0x010EFC 04:8EEC: 02        .byte $02   ; 
- D 0 - I - 0x010EFD 04:8EED: 01        .byte $01   ; 
- D 0 - I - 0x010EFE 04:8EEE: 7F        .byte $7F   ; 
- D 0 - I - 0x010EFF 04:8EEF: 03        .byte $03   ; 
- D 0 - I - 0x010F00 04:8EF0: F8        .byte $F8   ; 
- D 0 - I - 0x010F01 04:8EF1: 01        .byte $01   ; 
- D 0 - I - 0x010F02 04:8EF2: 00        .byte $00   ; 
- D 0 - I - 0x010F03 04:8EF3: 00        .byte $00   ; 
- D 0 - I - 0x010F04 04:8EF4: 7F        .byte $7F   ; 
- D 0 - I - 0x010F05 04:8EF5: FF        .byte $FF   ; 

off_8EF6:
- D 0 - I - 0x010F06 04:8EF6: 00        .byte $00   ; 
- D 0 - I - 0x010F07 04:8EF7: 40        .byte $40   ; 
- D 0 - I - 0x010F08 04:8EF8: 00        .byte $00   ; 
- - - - - - 0x010F09 04:8EF9: 00        .byte $00   ; 
- - - - - - 0x010F0A 04:8EFA: 01        .byte $01   ; 
- - - - - - 0x010F0B 04:8EFB: 7F        .byte $7F   ; 
- D 0 - I - 0x010F0C 04:8EFC: 00        .byte $00   ; 
- D 0 - I - 0x010F0D 04:8EFD: 00        .byte $00   ; 
- D 0 - I - 0x010F0E 04:8EFE: 00        .byte $00   ; 
- - - - - - 0x010F0F 04:8EFF: 00        .byte $00   ; 
- - - - - - 0x010F10 04:8F00: 01        .byte $01   ; 
- - - - - - 0x010F11 04:8F01: 7F        .byte $7F   ; 
- D 0 - I - 0x010F12 04:8F02: 03        .byte $03   ; 
- D 0 - I - 0x010F13 04:8F03: F8        .byte $F8   ; 
- D 0 - I - 0x010F14 04:8F04: 01        .byte $01   ; 
- - - - - - 0x010F15 04:8F05: 00        .byte $00   ; 
- - - - - - 0x010F16 04:8F06: 01        .byte $01   ; 
- - - - - - 0x010F17 04:8F07: 7F        .byte $7F   ; 
- D 0 - I - 0x010F18 04:8F08: 03        .byte $03   ; 
- D 0 - I - 0x010F19 04:8F09: 08        .byte $08   ; 
- D 0 - I - 0x010F1A 04:8F0A: 00        .byte $00   ; 
- - - - - - 0x010F1B 04:8F0B: 00        .byte $00   ; 
- - - - - - 0x010F1C 04:8F0C: 01        .byte $01   ; 
- - - - - - 0x010F1D 04:8F0D: 7F        .byte $7F   ; 
- D 0 - I - 0x010F1E 04:8F0E: FF        .byte $FF   ; 

off_8F0F:
- D 0 - I - 0x010F1F 04:8F0F: 00        .byte $00   ; 
- D 0 - I - 0x010F20 04:8F10: 50        .byte $50   ; 
- D 0 - I - 0x010F21 04:8F11: 00        .byte $00   ; 
- D 0 - I - 0x010F22 04:8F12: 00        .byte $00   ; 
- D 0 - I - 0x010F23 04:8F13: 02        .byte $02   ; 
- D 0 - I - 0x010F24 04:8F14: 7F        .byte $7F   ; 
- D 0 - I - 0x010F25 04:8F15: 00        .byte $00   ; 
- D 0 - I - 0x010F26 04:8F16: 50        .byte $50   ; 
- D 0 - I - 0x010F27 04:8F17: 00        .byte $00   ; 
- D 0 - I - 0x010F28 04:8F18: 00        .byte $00   ; 
- D 0 - I - 0x010F29 04:8F19: 02        .byte $02   ; 
- D 0 - I - 0x010F2A 04:8F1A: 7F        .byte $7F   ; 
- D 0 - I - 0x010F2B 04:8F1B: 03        .byte $03   ; 
- D 0 - I - 0x010F2C 04:8F1C: F8        .byte $F8   ; 
- D 0 - I - 0x010F2D 04:8F1D: 03        .byte $03   ; 
- D 0 - I - 0x010F2E 04:8F1E: 00        .byte $00   ; 
- D 0 - I - 0x010F2F 04:8F1F: 02        .byte $02   ; 
- D 0 - I - 0x010F30 04:8F20: 7F        .byte $7F   ; 
- D 0 - I - 0x010F31 04:8F21: 03        .byte $03   ; 
- D 0 - I - 0x010F32 04:8F22: 08        .byte $08   ; 
- D 0 - I - 0x010F33 04:8F23: 01        .byte $01   ; 
- D 0 - I - 0x010F34 04:8F24: 00        .byte $00   ; 
- D 0 - I - 0x010F35 04:8F25: 02        .byte $02   ; 
- D 0 - I - 0x010F36 04:8F26: 7F        .byte $7F   ; 
- D 0 - I - 0x010F37 04:8F27: FF        .byte $FF   ; 



_off005_8F28_04_Undersea_Base_pt2:
; con_mission_Undersea_Base_pt2
- D 0 - I - 0x010F38 04:8F28: 6A 8F     .word ofs_8F6A_00
- D 0 - I - 0x010F3A 04:8F2A: 50        .byte $50   ; 
- D 0 - I - 0x010F3B 04:8F2B: 00        .byte $00   ; 
- D 0 - I - 0x010F3C 04:8F2C: 82        .byte $82   ; 
- D 0 - I - 0x010F3D 04:8F2D: 5E 8F     .word ofs_8F5E_01
- D 0 - I - 0x010F3F 04:8F2F: 50        .byte $50   ; 
- D 0 - I - 0x010F40 04:8F30: 00        .byte $00   ; 
- D 0 - I - 0x010F41 04:8F31: 80        .byte $80   ; 
- D 0 - I - 0x010F42 04:8F32: 62 8F     .word ofs_8F62_02
- D 0 - I - 0x010F44 04:8F34: 50        .byte $50   ; 
- D 0 - I - 0x010F45 04:8F35: 00        .byte $00   ; 
- D 0 - I - 0x010F46 04:8F36: 80        .byte $80   ; 
- D 0 - I - 0x010F47 04:8F37: 5A 8F     .word ofs_8F5A_03
- D 0 - I - 0x010F49 04:8F39: 50        .byte $50   ; 
- D 0 - I - 0x010F4A 04:8F3A: 00        .byte $00   ; 
- D 0 - I - 0x010F4B 04:8F3B: 82        .byte $82   ; 
- D 0 - I - 0x010F4C 04:8F3C: 6E 8F     .word ofs_8F6E_04
- D 0 - I - 0x010F4E 04:8F3E: 50        .byte $50   ; 
- D 0 - I - 0x010F4F 04:8F3F: 00        .byte $00   ; 
- D 0 - I - 0x010F50 04:8F40: 80        .byte $80   ; 
- D 0 - I - 0x010F51 04:8F41: 72 8F     .word ofs_8F72_05
- D 0 - I - 0x010F53 04:8F43: 50        .byte $50   ; 
- D 0 - I - 0x010F54 04:8F44: 00        .byte $00   ; 
- D 0 - I - 0x010F55 04:8F45: 80        .byte $80   ; 
- D 0 - I - 0x010F56 04:8F46: 7A 8F     .word ofs_8F7A_06
- D 0 - I - 0x010F58 04:8F48: 50        .byte $50   ; 
- D 0 - I - 0x010F59 04:8F49: 00        .byte $00   ; 
- D 0 - I - 0x010F5A 04:8F4A: 85        .byte $85   ; 
- D 0 - I - 0x010F5B 04:8F4B: 7E 8F     .word ofs_8F7E_07
- D 0 - I - 0x010F5D 04:8F4D: 50        .byte $50   ; 
- D 0 - I - 0x010F5E 04:8F4E: 00        .byte $00   ; 
- D 0 - I - 0x010F5F 04:8F4F: 85        .byte $85   ; 
- D 0 - I - 0x010F60 04:8F50: 82 8F     .word ofs_8F82_08
- D 0 - I - 0x010F62 04:8F52: 50        .byte $50   ; 
- D 0 - I - 0x010F63 04:8F53: 00        .byte $00   ; 
- D 0 - I - 0x010F64 04:8F54: 85        .byte $85   ; 
- D 0 - I - 0x010F65 04:8F55: 8E 8F     .word ofs_8F8E_09
- D 0 - I - 0x010F67 04:8F57: 00        .byte $00   ; 
- D 0 - I - 0x010F68 04:8F58: 00        .byte $00   ; 
- D 0 - I - 0x010F69 04:8F59: 87        .byte $87   ; 



ofs_8F5A_03:
- D 0 - I - 0x010F6A 04:8F5A: FF        .byte $FF   ; 
- D 0 - I - 0x010F6B 04:8F5B: FF        .byte $FF   ; 
- D 0 - I - 0x010F6C 04:8F5C: 92 8F     .word off_8F92



ofs_8F5E_01:
- D 0 - I - 0x010F6E 04:8F5E: FF        .byte $FF   ; 
- D 0 - I - 0x010F6F 04:8F5F: FF        .byte $FF   ; 
- D 0 - I - 0x010F70 04:8F60: AB 8F     .word off_8FAB



ofs_8F62_02:
- D 0 - I - 0x010F72 04:8F62: 4F        .byte $4F   ; 
- D 0 - I - 0x010F73 04:8F63: 00        .byte $00   ; 
- D 0 - I - 0x010F74 04:8F64: C4 8F     .word off_8FC4
- D 0 - I - 0x010F76 04:8F66: FF        .byte $FF   ; 
- D 0 - I - 0x010F77 04:8F67: FF        .byte $FF   ; 
- D 0 - I - 0x010F78 04:8F68: DD 8F     .word off_8FDD



ofs_8F6A_00:
- D 0 - I - 0x010F7A 04:8F6A: FF        .byte $FF   ; 
- D 0 - I - 0x010F7B 04:8F6B: FF        .byte $FF   ; 
- D 0 - I - 0x010F7C 04:8F6C: EA 8F     .word off_8FEA



ofs_8F6E_04:
- D 0 - I - 0x010F7E 04:8F6E: FF        .byte $FF   ; 
- D 0 - I - 0x010F7F 04:8F6F: FF        .byte $FF   ; 
- D 0 - I - 0x010F80 04:8F70: 03 90     .word off_9003



ofs_8F72_05:
- D 0 - I - 0x010F82 04:8F72: AF        .byte $AF   ; 
- D 0 - I - 0x010F83 04:8F73: 00        .byte $00   ; 
- D 0 - I - 0x010F84 04:8F74: 1C 90     .word off_901C
- D 0 - I - 0x010F86 04:8F76: FF        .byte $FF   ; 
- D 0 - I - 0x010F87 04:8F77: FF        .byte $FF   ; 
- D 0 - I - 0x010F88 04:8F78: 29 90     .word off_9029



ofs_8F7A_06:
- D 0 - I - 0x010F8A 04:8F7A: FF        .byte $FF   ; 
- D 0 - I - 0x010F8B 04:8F7B: FF        .byte $FF   ; 
- D 0 - I - 0x010F8C 04:8F7C: 3C 90     .word off_903C



ofs_8F7E_07:
- D 0 - I - 0x010F8E 04:8F7E: FF        .byte $FF   ; 
- D 0 - I - 0x010F8F 04:8F7F: FF        .byte $FF   ; 
- D 0 - I - 0x010F90 04:8F80: 55 90     .word off_9055



ofs_8F82_08:
- D 0 - I - 0x010F92 04:8F82: 6F        .byte $6F   ; 
- D 0 - I - 0x010F93 04:8F83: 00        .byte $00   ; 
- D 0 - I - 0x010F94 04:8F84: 6E 90     .word off_906E
- D 0 - I - 0x010F96 04:8F86: 8F        .byte $8F   ; 
- D 0 - I - 0x010F97 04:8F87: 00        .byte $00   ; 
- D 0 - I - 0x010F98 04:8F88: 7B 90     .word off_907B
- - - - - - 0x010F9A 04:8F8A: FF        .byte $FF   ; 
- - - - - - 0x010F9B 04:8F8B: FF        .byte $FF   ; 
- - - - - - 0x010F9C 04:8F8C: 88 90     .word off_9088



ofs_8F8E_09:
- D 0 - I - 0x010F9E 04:8F8E: FF        .byte $FF   ; 
- D 0 - I - 0x010F9F 04:8F8F: FF        .byte $FF   ; 
- D 0 - I - 0x010FA0 04:8F90: 95 90     .word off_9095



off_8F92:
- D 0 - I - 0x010FA2 04:8F92: 00        .byte $00   ; 
- D 0 - I - 0x010FA3 04:8F93: 50        .byte $50   ; 
- D 0 - I - 0x010FA4 04:8F94: 00        .byte $00   ; 
- D 0 - I - 0x010FA5 04:8F95: 00        .byte $00   ; 
- D 0 - I - 0x010FA6 04:8F96: 00        .byte $00   ; 
- D 0 - I - 0x010FA7 04:8F97: 7F        .byte $7F   ; 
- D 0 - I - 0x010FA8 04:8F98: 00        .byte $00   ; 
- D 0 - I - 0x010FA9 04:8F99: 30        .byte $30   ; 
- D 0 - I - 0x010FAA 04:8F9A: 00        .byte $00   ; 
- D 0 - I - 0x010FAB 04:8F9B: 03        .byte $03   ; 
- D 0 - I - 0x010FAC 04:8F9C: 01        .byte $01   ; 
- D 0 - I - 0x010FAD 04:8F9D: 7F        .byte $7F   ; 
- D 0 - I - 0x010FAE 04:8F9E: 03        .byte $03   ; 
- D 0 - I - 0x010FAF 04:8F9F: 70        .byte $70   ; 
- D 0 - I - 0x010FB0 04:8FA0: 00        .byte $00   ; 
- D 0 - I - 0x010FB1 04:8FA1: 02        .byte $02   ; 
- D 0 - I - 0x010FB2 04:8FA2: 06        .byte $06   ; 
- D 0 - I - 0x010FB3 04:8FA3: 7F        .byte $7F   ; 
- D 0 - I - 0x010FB4 04:8FA4: 03        .byte $03   ; 
- D 0 - I - 0x010FB5 04:8FA5: 20        .byte $20   ; 
- D 0 - I - 0x010FB6 04:8FA6: 00        .byte $00   ; 
- D 0 - I - 0x010FB7 04:8FA7: 02        .byte $02   ; 
- D 0 - I - 0x010FB8 04:8FA8: 09        .byte $09   ; 
- D 0 - I - 0x010FB9 04:8FA9: 7F        .byte $7F   ; 
- D 0 - I - 0x010FBA 04:8FAA: FF        .byte $FF   ; 

off_8FAB:
- D 0 - I - 0x010FBB 04:8FAB: 00        .byte $00   ; 
- D 0 - I - 0x010FBC 04:8FAC: 30        .byte $30   ; 
- D 0 - I - 0x010FBD 04:8FAD: 00        .byte $00   ; 
- D 0 - I - 0x010FBE 04:8FAE: 03        .byte $03   ; 
- D 0 - I - 0x010FBF 04:8FAF: 03        .byte $03   ; 
- D 0 - I - 0x010FC0 04:8FB0: 7F        .byte $7F   ; 
- D 0 - I - 0x010FC1 04:8FB1: 00        .byte $00   ; 
- D 0 - I - 0x010FC2 04:8FB2: 20        .byte $20   ; 
- D 0 - I - 0x010FC3 04:8FB3: 00        .byte $00   ; 
- D 0 - I - 0x010FC4 04:8FB4: 03        .byte $03   ; 
- D 0 - I - 0x010FC5 04:8FB5: 02        .byte $02   ; 
- D 0 - I - 0x010FC6 04:8FB6: 7F        .byte $7F   ; 
- D 0 - I - 0x010FC7 04:8FB7: 03        .byte $03   ; 
- D 0 - I - 0x010FC8 04:8FB8: 70        .byte $70   ; 
- D 0 - I - 0x010FC9 04:8FB9: 00        .byte $00   ; 
- D 0 - I - 0x010FCA 04:8FBA: 02        .byte $02   ; 
- D 0 - I - 0x010FCB 04:8FBB: 07        .byte $07   ; 
- D 0 - I - 0x010FCC 04:8FBC: 7F        .byte $7F   ; 
- D 0 - I - 0x010FCD 04:8FBD: 03        .byte $03   ; 
- D 0 - I - 0x010FCE 04:8FBE: 20        .byte $20   ; 
- D 0 - I - 0x010FCF 04:8FBF: 00        .byte $00   ; 
- - - - - - 0x010FD0 04:8FC0: 02        .byte $02   ; 
- - - - - - 0x010FD1 04:8FC1: 09        .byte $09   ; 
- - - - - - 0x010FD2 04:8FC2: 7F        .byte $7F   ; 
- D 0 - I - 0x010FD3 04:8FC3: FF        .byte $FF   ; 

off_8FC4:
- D 0 - I - 0x010FD4 04:8FC4: 00        .byte $00   ; 
- D 0 - I - 0x010FD5 04:8FC5: 20        .byte $20   ; 
- D 0 - I - 0x010FD6 04:8FC6: 00        .byte $00   ; 
- D 0 - I - 0x010FD7 04:8FC7: 03        .byte $03   ; 
- D 0 - I - 0x010FD8 04:8FC8: 01        .byte $01   ; 
- D 0 - I - 0x010FD9 04:8FC9: 7F        .byte $7F   ; 
- D 0 - I - 0x010FDA 04:8FCA: 00        .byte $00   ; 
- D 0 - I - 0x010FDB 04:8FCB: 00        .byte $00   ; 
- D 0 - I - 0x010FDC 04:8FCC: 00        .byte $00   ; 
- D 0 - I - 0x010FDD 04:8FCD: 02        .byte $02   ; 
- D 0 - I - 0x010FDE 04:8FCE: 09        .byte $09   ; 
- D 0 - I - 0x010FDF 04:8FCF: 7F        .byte $7F   ; 
- D 0 - I - 0x010FE0 04:8FD0: 00        .byte $00   ; 
- D 0 - I - 0x010FE1 04:8FD1: 20        .byte $20   ; 
- D 0 - I - 0x010FE2 04:8FD2: 00        .byte $00   ; 
- - - - - - 0x010FE3 04:8FD3: 03        .byte $03   ; 
- - - - - - 0x010FE4 04:8FD4: 01        .byte $01   ; 
- - - - - - 0x010FE5 04:8FD5: 7F        .byte $7F   ; 
- D 0 - I - 0x010FE6 04:8FD6: 03        .byte $03   ; 
- D 0 - I - 0x010FE7 04:8FD7: 20        .byte $20   ; 
- D 0 - I - 0x010FE8 04:8FD8: 00        .byte $00   ; 
- D 0 - I - 0x010FE9 04:8FD9: 02        .byte $02   ; 
- D 0 - I - 0x010FEA 04:8FDA: 09        .byte $09   ; 
- D 0 - I - 0x010FEB 04:8FDB: 7F        .byte $7F   ; 
- D 0 - I - 0x010FEC 04:8FDC: FF        .byte $FF   ; 

off_8FDD:
- D 0 - I - 0x010FED 04:8FDD: 00        .byte $00   ; 
- D 0 - I - 0x010FEE 04:8FDE: 20        .byte $20   ; 
- D 0 - I - 0x010FEF 04:8FDF: 00        .byte $00   ; 
- - - - - - 0x010FF0 04:8FE0: 03        .byte $03   ; 
- - - - - - 0x010FF1 04:8FE1: 01        .byte $01   ; 
- - - - - - 0x010FF2 04:8FE2: 7F        .byte $7F   ; 
- D 0 - I - 0x010FF3 04:8FE3: 01        .byte $01   ; 
- D 0 - I - 0x010FF4 04:8FE4: B0        .byte $B0   ; 
- D 0 - I - 0x010FF5 04:8FE5: FF        .byte $FF   ; 
- D 0 - I - 0x010FF6 04:8FE6: 02        .byte $02   ; 
- D 0 - I - 0x010FF7 04:8FE7: 08        .byte $08   ; 
- D 0 - I - 0x010FF8 04:8FE8: 7F        .byte $7F   ; 
- D 0 - I - 0x010FF9 04:8FE9: FF        .byte $FF   ; 

off_8FEA:
- D 0 - I - 0x010FFA 04:8FEA: 00        .byte $00   ; 
- D 0 - I - 0x010FFB 04:8FEB: 50        .byte $50   ; 
- D 0 - I - 0x010FFC 04:8FEC: 00        .byte $00   ; 
- - - - - - 0x010FFD 04:8FED: 00        .byte $00   ; 
- - - - - - 0x010FFE 04:8FEE: 03        .byte $03   ; 
- - - - - - 0x010FFF 04:8FEF: 7F        .byte $7F   ; 
- D 0 - I - 0x011000 04:8FF0: 00        .byte $00   ; 
- D 0 - I - 0x011001 04:8FF1: 30        .byte $30   ; 
- D 0 - I - 0x011002 04:8FF2: 00        .byte $00   ; 
- D 0 - I - 0x011003 04:8FF3: 03        .byte $03   ; 
- D 0 - I - 0x011004 04:8FF4: 04        .byte $04   ; 
- D 0 - I - 0x011005 04:8FF5: 7F        .byte $7F   ; 
- D 0 - I - 0x011006 04:8FF6: 03        .byte $03   ; 
- D 0 - I - 0x011007 04:8FF7: E0        .byte $E0   ; 
- D 0 - I - 0x011008 04:8FF8: 00        .byte $00   ; 
- D 0 - I - 0x011009 04:8FF9: 02        .byte $02   ; 
- D 0 - I - 0x01100A 04:8FFA: 09        .byte $09   ; 
- D 0 - I - 0x01100B 04:8FFB: 7F        .byte $7F   ; 
- D 0 - I - 0x01100C 04:8FFC: 03        .byte $03   ; 
- D 0 - I - 0x01100D 04:8FFD: 90        .byte $90   ; 
- D 0 - I - 0x01100E 04:8FFE: 00        .byte $00   ; 
- D 0 - I - 0x01100F 04:8FFF: 02        .byte $02   ; 
- D 0 - I - 0x011010 04:9000: 06        .byte $06   ; 
- D 0 - I - 0x011011 04:9001: 7F        .byte $7F   ; 
- D 0 - I - 0x011012 04:9002: FF        .byte $FF   ; 

off_9003:
- D 0 - I - 0x011013 04:9003: 00        .byte $00   ; 
- D 0 - I - 0x011014 04:9004: 30        .byte $30   ; 
- D 0 - I - 0x011015 04:9005: 00        .byte $00   ; 
- D 0 - I - 0x011016 04:9006: 03        .byte $03   ; 
- D 0 - I - 0x011017 04:9007: 00        .byte $00   ; 
- D 0 - I - 0x011018 04:9008: 7F        .byte $7F   ; 
- D 0 - I - 0x011019 04:9009: 00        .byte $00   ; 
- D 0 - I - 0x01101A 04:900A: 20        .byte $20   ; 
- D 0 - I - 0x01101B 04:900B: 00        .byte $00   ; 
- D 0 - I - 0x01101C 04:900C: 03        .byte $03   ; 
- D 0 - I - 0x01101D 04:900D: 05        .byte $05   ; 
- D 0 - I - 0x01101E 04:900E: 7F        .byte $7F   ; 
- D 0 - I - 0x01101F 04:900F: 03        .byte $03   ; 
- D 0 - I - 0x011020 04:9010: E0        .byte $E0   ; 
- D 0 - I - 0x011021 04:9011: 00        .byte $00   ; 
- - - - - - 0x011022 04:9012: 02        .byte $02   ; 
- - - - - - 0x011023 04:9013: 09        .byte $09   ; 
- - - - - - 0x011024 04:9014: 7F        .byte $7F   ; 
- D 0 - I - 0x011025 04:9015: 03        .byte $03   ; 
- D 0 - I - 0x011026 04:9016: 90        .byte $90   ; 
- D 0 - I - 0x011027 04:9017: 00        .byte $00   ; 
- D 0 - I - 0x011028 04:9018: 02        .byte $02   ; 
- D 0 - I - 0x011029 04:9019: 07        .byte $07   ; 
- D 0 - I - 0x01102A 04:901A: 7F        .byte $7F   ; 
- D 0 - I - 0x01102B 04:901B: FF        .byte $FF   ; 

off_901C:
- D 0 - I - 0x01102C 04:901C: 00        .byte $00   ; 
- D 0 - I - 0x01102D 04:901D: 20        .byte $20   ; 
- D 0 - I - 0x01102E 04:901E: 00        .byte $00   ; 
- D 0 - I - 0x01102F 04:901F: 03        .byte $03   ; 
- D 0 - I - 0x011030 04:9020: 04        .byte $04   ; 
- D 0 - I - 0x011031 04:9021: 7F        .byte $7F   ; 
- D 0 - I - 0x011032 04:9022: 02        .byte $02   ; 
- D 0 - I - 0x011033 04:9023: B0        .byte $B0   ; 
- D 0 - I - 0x011034 04:9024: 00        .byte $00   ; 
- D 0 - I - 0x011035 04:9025: 02        .byte $02   ; 
- D 0 - I - 0x011036 04:9026: 08        .byte $08   ; 
- D 0 - I - 0x011037 04:9027: 7F        .byte $7F   ; 
- D 0 - I - 0x011038 04:9028: FF        .byte $FF   ; 

off_9029:
- D 0 - I - 0x011039 04:9029: 00        .byte $00   ; 
- D 0 - I - 0x01103A 04:902A: 20        .byte $20   ; 
- D 0 - I - 0x01103B 04:902B: 00        .byte $00   ; 
- - - - - - 0x01103C 04:902C: 03        .byte $03   ; 
- - - - - - 0x01103D 04:902D: 04        .byte $04   ; 
- - - - - - 0x01103E 04:902E: 7F        .byte $7F   ; 
- D 0 - I - 0x01103F 04:902F: 00        .byte $00   ; 
- D 0 - I - 0x011040 04:9030: 00        .byte $00   ; 
- D 0 - I - 0x011041 04:9031: 00        .byte $00   ; 
- D 0 - I - 0x011042 04:9032: 02        .byte $02   ; 
- D 0 - I - 0x011043 04:9033: 09        .byte $09   ; 
- D 0 - I - 0x011044 04:9034: 7F        .byte $7F   ; 
- D 0 - I - 0x011045 04:9035: 03        .byte $03   ; 
- D 0 - I - 0x011046 04:9036: E0        .byte $E0   ; 
- D 0 - I - 0x011047 04:9037: 00        .byte $00   ; 
- D 0 - I - 0x011048 04:9038: 02        .byte $02   ; 
- D 0 - I - 0x011049 04:9039: 09        .byte $09   ; 
- D 0 - I - 0x01104A 04:903A: 7F        .byte $7F   ; 
- D 0 - I - 0x01104B 04:903B: FF        .byte $FF   ; 

off_903C:
- D 0 - I - 0x01104C 04:903C: 00        .byte $00   ; 
- D 0 - I - 0x01104D 04:903D: 50        .byte $50   ; 
- D 0 - I - 0x01104E 04:903E: 00        .byte $00   ; 
- - - - - - 0x01104F 04:903F: 00        .byte $00   ; 
- - - - - - 0x011050 04:9040: 06        .byte $06   ; 
- - - - - - 0x011051 04:9041: 7F        .byte $7F   ; 
- D 0 - I - 0x011052 04:9042: 00        .byte $00   ; 
- D 0 - I - 0x011053 04:9043: 30        .byte $30   ; 
- D 0 - I - 0x011054 04:9044: 00        .byte $00   ; 
- - - - - - 0x011055 04:9045: 03        .byte $03   ; 
- - - - - - 0x011056 04:9046: 07        .byte $07   ; 
- - - - - - 0x011057 04:9047: 7F        .byte $7F   ; 
- D 0 - I - 0x011058 04:9048: 03        .byte $03   ; 
- D 0 - I - 0x011059 04:9049: 90        .byte $90   ; 
- D 0 - I - 0x01105A 04:904A: 00        .byte $00   ; 
- - - - - - 0x01105B 04:904B: 03        .byte $03   ; 
- - - - - - 0x01105C 04:904C: 00        .byte $00   ; 
- - - - - - 0x01105D 04:904D: 7F        .byte $7F   ; 
- D 0 - I - 0x01105E 04:904E: 03        .byte $03   ; 
- D 0 - I - 0x01105F 04:904F: 70        .byte $70   ; 
- D 0 - I - 0x011060 04:9050: 00        .byte $00   ; 
- D 0 - I - 0x011061 04:9051: 03        .byte $03   ; 
- D 0 - I - 0x011062 04:9052: 03        .byte $03   ; 
- D 0 - I - 0x011063 04:9053: 7F        .byte $7F   ; 
- D 0 - I - 0x011064 04:9054: FF        .byte $FF   ; 

off_9055:
- D 0 - I - 0x011065 04:9055: 00        .byte $00   ; 
- D 0 - I - 0x011066 04:9056: 30        .byte $30   ; 
- D 0 - I - 0x011067 04:9057: 00        .byte $00   ; 
- - - - - - 0x011068 04:9058: 03        .byte $03   ; 
- - - - - - 0x011069 04:9059: 06        .byte $06   ; 
- - - - - - 0x01106A 04:905A: 7F        .byte $7F   ; 
- D 0 - I - 0x01106B 04:905B: 00        .byte $00   ; 
- D 0 - I - 0x01106C 04:905C: 20        .byte $20   ; 
- D 0 - I - 0x01106D 04:905D: 00        .byte $00   ; 
- - - - - - 0x01106E 04:905E: 03        .byte $03   ; 
- - - - - - 0x01106F 04:905F: 08        .byte $08   ; 
- - - - - - 0x011070 04:9060: 7F        .byte $7F   ; 
- D 0 - I - 0x011071 04:9061: 03        .byte $03   ; 
- D 0 - I - 0x011072 04:9062: 90        .byte $90   ; 
- D 0 - I - 0x011073 04:9063: 00        .byte $00   ; 
- - - - - - 0x011074 04:9064: 03        .byte $03   ; 
- - - - - - 0x011075 04:9065: 04        .byte $04   ; 
- - - - - - 0x011076 04:9066: 7F        .byte $7F   ; 
- D 0 - I - 0x011077 04:9067: 03        .byte $03   ; 
- D 0 - I - 0x011078 04:9068: 70        .byte $70   ; 
- D 0 - I - 0x011079 04:9069: 00        .byte $00   ; 
- D 0 - I - 0x01107A 04:906A: 03        .byte $03   ; 
- D 0 - I - 0x01107B 04:906B: 01        .byte $01   ; 
- D 0 - I - 0x01107C 04:906C: 7F        .byte $7F   ; 
- D 0 - I - 0x01107D 04:906D: FF        .byte $FF   ; 

off_906E:
- D 0 - I - 0x01107E 04:906E: 01        .byte $01   ; 
- D 0 - I - 0x01107F 04:906F: B0        .byte $B0   ; 
- D 0 - I - 0x011080 04:9070: FF        .byte $FF   ; 
- - - - - - 0x011081 04:9071: 03        .byte $03   ; 
- - - - - - 0x011082 04:9072: 02        .byte $02   ; 
- - - - - - 0x011083 04:9073: 7F        .byte $7F   ; 
- D 0 - I - 0x011084 04:9074: 00        .byte $00   ; 
- D 0 - I - 0x011085 04:9075: 00        .byte $00   ; 
- D 0 - I - 0x011086 04:9076: 00        .byte $00   ; 
- - - - - - 0x011087 04:9077: 02        .byte $02   ; 
- - - - - - 0x011088 04:9078: 09        .byte $09   ; 
- - - - - - 0x011089 04:9079: 7F        .byte $7F   ; 
- D 0 - I - 0x01108A 04:907A: FF        .byte $FF   ; 

off_907B:
- D 0 - I - 0x01108B 04:907B: 00        .byte $00   ; 
- D 0 - I - 0x01108C 04:907C: 20        .byte $20   ; 
- D 0 - I - 0x01108D 04:907D: 00        .byte $00   ; 
- - - - - - 0x01108E 04:907E: 03        .byte $03   ; 
- - - - - - 0x01108F 04:907F: 07        .byte $07   ; 
- - - - - - 0x011090 04:9080: 7F        .byte $7F   ; 
- D 0 - I - 0x011091 04:9081: 00        .byte $00   ; 
- D 0 - I - 0x011092 04:9082: 00        .byte $00   ; 
- D 0 - I - 0x011093 04:9083: 00        .byte $00   ; 
- - - - - - 0x011094 04:9084: 02        .byte $02   ; 
- - - - - - 0x011095 04:9085: 09        .byte $09   ; 
- - - - - - 0x011096 04:9086: 7F        .byte $7F   ; 
- D 0 - I - 0x011097 04:9087: FF        .byte $FF   ; 

off_9088:
- - - - - - 0x011098 04:9088: 02        .byte $02   ; 
- - - - - - 0x011099 04:9089: B0        .byte $B0   ; 
- - - - - - 0x01109A 04:908A: 00        .byte $00   ; 
- - - - - - 0x01109B 04:908B: 03        .byte $03   ; 
- - - - - - 0x01109C 04:908C: 05        .byte $05   ; 
- - - - - - 0x01109D 04:908D: 7F        .byte $7F   ; 
- - - - - - 0x01109E 04:908E: 00        .byte $00   ; 
- - - - - - 0x01109F 04:908F: 00        .byte $00   ; 
- - - - - - 0x0110A0 04:9090: 00        .byte $00   ; 
- - - - - - 0x0110A1 04:9091: 02        .byte $02   ; 
- - - - - - 0x0110A2 04:9092: 09        .byte $09   ; 
- - - - - - 0x0110A3 04:9093: 7F        .byte $7F   ; 
- - - - - - 0x0110A4 04:9094: FF        .byte $FF   ; 

off_9095:
- D 0 - I - 0x0110A5 04:9095: 00        .byte $00   ; 
- D 0 - I - 0x0110A6 04:9096: 50        .byte $50   ; 
- D 0 - I - 0x0110A7 04:9097: 00        .byte $00   ; 
- - - - - - 0x0110A8 04:9098: 00        .byte $00   ; 
- - - - - - 0x0110A9 04:9099: 09        .byte $09   ; 
- - - - - - 0x0110AA 04:909A: 7F        .byte $7F   ; 
- D 0 - I - 0x0110AB 04:909B: 00        .byte $00   ; 
- D 0 - I - 0x0110AC 04:909C: 00        .byte $00   ; 
- D 0 - I - 0x0110AD 04:909D: 00        .byte $00   ; 
- D 0 - I - 0x0110AE 04:909E: 00        .byte $00   ; 
- D 0 - I - 0x0110AF 04:909F: 09        .byte $09   ; 
- D 0 - I - 0x0110B0 04:90A0: 7F        .byte $7F   ; 
- D 0 - I - 0x0110B1 04:90A1: 03        .byte $03   ; 
- D 0 - I - 0x0110B2 04:90A2: F8        .byte $F8   ; 
- D 0 - I - 0x0110B3 04:90A3: 00        .byte $00   ; 
- - - - - - 0x0110B4 04:90A4: 00        .byte $00   ; 
- - - - - - 0x0110B5 04:90A5: 09        .byte $09   ; 
- - - - - - 0x0110B6 04:90A6: 7F        .byte $7F   ; 
- D 0 - I - 0x0110B7 04:90A7: 03        .byte $03   ; 
- D 0 - I - 0x0110B8 04:90A8: 08        .byte $08   ; 
- D 0 - I - 0x0110B9 04:90A9: 00        .byte $00   ; 
- - - - - - 0x0110BA 04:90AA: 00        .byte $00   ; 
- - - - - - 0x0110BB 04:90AB: 09        .byte $09   ; 
- - - - - - 0x0110BC 04:90AC: 7F        .byte $7F   ; 
- D 0 - I - 0x0110BD 04:90AD: FF        .byte $FF   ; 



_off005_90AE_05_Forest_of_Death:
; con_mission_Forest_of_Death
- D 0 - I - 0x0110BE 04:90AE: 4E 91     .word ofs_914E_00
- D 0 - I - 0x0110C0 04:90B0: E0        .byte $E0   ; 
- D 0 - I - 0x0110C1 04:90B1: 00        .byte $00   ; 
- D 0 - I - 0x0110C2 04:90B2: 80        .byte $80   ; 
- D 0 - I - 0x0110C3 04:90B3: 5A 91     .word ofs_915A_01
- D 0 - I - 0x0110C5 04:90B5: A0        .byte $A0   ; 
- D 0 - I - 0x0110C6 04:90B6: 00        .byte $00   ; 
- D 0 - I - 0x0110C7 04:90B7: 80        .byte $80   ; 
- D 0 - I - 0x0110C8 04:90B8: 66 91     .word ofs_9166_02
- D 0 - I - 0x0110CA 04:90BA: 30        .byte $30   ; 
- D 0 - I - 0x0110CB 04:90BB: 00        .byte $00   ; 
- D 0 - I - 0x0110CC 04:90BC: 80        .byte $80   ; 
- - - - - - 0x0110CD 04:90BD: 86 91     .word ofs_9186_03
- - - - - - 0x0110CF 04:90BF: 28        .byte $28   ; 
- - - - - - 0x0110D0 04:90C0: 00        .byte $00   ; 
- D 0 - I - 0x0110D1 04:90C1: 81        .byte $81   ; 
- D 0 - I - 0x0110D2 04:90C2: 92 91     .word ofs_9192_04
- D 0 - I - 0x0110D4 04:90C4: 28        .byte $28   ; 
- D 0 - I - 0x0110D5 04:90C5: 00        .byte $00   ; 
- D 0 - I - 0x0110D6 04:90C6: 81        .byte $81   ; 
- - - - - - 0x0110D7 04:90C7: 9E 91     .word ofs_919E_05
- - - - - - 0x0110D9 04:90C9: 28        .byte $28   ; 
- - - - - - 0x0110DA 04:90CA: 00        .byte $00   ; 
- D 0 - I - 0x0110DB 04:90CB: 81        .byte $81   ; 
- D 0 - I - 0x0110DC 04:90CC: AA 91     .word ofs_91AA_06
- D 0 - I - 0x0110DE 04:90CE: 30        .byte $30   ; 
- D 0 - I - 0x0110DF 04:90CF: 00        .byte $00   ; 
- D 0 - I - 0x0110E0 04:90D0: 80        .byte $80   ; 
- D 0 - I - 0x0110E1 04:90D1: C6 91     .word ofs_91C6_07
- D 0 - I - 0x0110E3 04:90D3: 48        .byte $48   ; 
- D 0 - I - 0x0110E4 04:90D4: 00        .byte $00   ; 
- D 0 - I - 0x0110E5 04:90D5: 80        .byte $80   ; 
- D 0 - I - 0x0110E6 04:90D6: D2 91     .word ofs_91D2_08
- D 0 - I - 0x0110E8 04:90D8: 58        .byte $58   ; 
- D 0 - I - 0x0110E9 04:90D9: 00        .byte $00   ; 
- D 0 - I - 0x0110EA 04:90DA: 80        .byte $80   ; 
- D 0 - I - 0x0110EB 04:90DB: DE 91     .word ofs_91DE_09
- D 0 - I - 0x0110ED 04:90DD: 10        .byte $10   ; 
- D 0 - I - 0x0110EE 04:90DE: 01        .byte $01   ; 
- D 0 - I - 0x0110EF 04:90DF: 00        .byte $00   ; 
- D 0 - I - 0x0110F0 04:90E0: EE 91     .word ofs_91EE_0A
- D 0 - I - 0x0110F2 04:90E2: C0        .byte $C0   ; 
- D 0 - I - 0x0110F3 04:90E3: 00        .byte $00   ; 
- D 0 - I - 0x0110F4 04:90E4: 03        .byte $03   ; 
- D 0 - I - 0x0110F5 04:90E5: FA 91     .word ofs_91FA_0B
- D 0 - I - 0x0110F7 04:90E7: 30        .byte $30   ; 
- D 0 - I - 0x0110F8 04:90E8: 00        .byte $00   ; 
- D 0 - I - 0x0110F9 04:90E9: 80        .byte $80   ; 
- D 0 - I - 0x0110FA 04:90EA: FE 91     .word ofs_91FE_0C
- D 0 - I - 0x0110FC 04:90EC: 30        .byte $30   ; 
- D 0 - I - 0x0110FD 04:90ED: 00        .byte $00   ; 
- D 0 - I - 0x0110FE 04:90EE: 80        .byte $80   ; 
- D 0 - I - 0x0110FF 04:90EF: 02 92     .word ofs_9202_0D
- D 0 - I - 0x011101 04:90F1: 30        .byte $30   ; 
- D 0 - I - 0x011102 04:90F2: 00        .byte $00   ; 
- D 0 - I - 0x011103 04:90F3: 80        .byte $80   ; 
- D 0 - I - 0x011104 04:90F4: 06 92     .word ofs_9206_0E
- D 0 - I - 0x011106 04:90F6: 30        .byte $30   ; 
- D 0 - I - 0x011107 04:90F7: 00        .byte $00   ; 
- D 0 - I - 0x011108 04:90F8: 80        .byte $80   ; 
- D 0 - I - 0x011109 04:90F9: 0A 92     .word ofs_920A_0F
- D 0 - I - 0x01110B 04:90FB: 30        .byte $30   ; 
- D 0 - I - 0x01110C 04:90FC: 00        .byte $00   ; 
- D 0 - I - 0x01110D 04:90FD: 80        .byte $80   ; 
- D 0 - I - 0x01110E 04:90FE: 0E 92     .word ofs_920E_10
- D 0 - I - 0x011110 04:9100: 28        .byte $28   ; 
- D 0 - I - 0x011111 04:9101: 00        .byte $00   ; 
- D 0 - I - 0x011112 04:9102: 81        .byte $81   ; 
- D 0 - I - 0x011113 04:9103: 16 92     .word ofs_9216_11
- D 0 - I - 0x011115 04:9105: 28        .byte $28   ; 
- D 0 - I - 0x011116 04:9106: 00        .byte $00   ; 
- D 0 - I - 0x011117 04:9107: 81        .byte $81   ; 
- D 0 - I - 0x011118 04:9108: 1E 92     .word ofs_921E_12
- D 0 - I - 0x01111A 04:910A: 28        .byte $28   ; 
- D 0 - I - 0x01111B 04:910B: 00        .byte $00   ; 
- D 0 - I - 0x01111C 04:910C: 81        .byte $81   ; 
- D 0 - I - 0x01111D 04:910D: 26 92     .word ofs_9226_13
- D 0 - I - 0x01111F 04:910F: 28        .byte $28   ; 
- D 0 - I - 0x011120 04:9110: 00        .byte $00   ; 
- D 0 - I - 0x011121 04:9111: 81        .byte $81   ; 
- D 0 - I - 0x011122 04:9112: 2A 92     .word ofs_922A_14
- D 0 - I - 0x011124 04:9114: 28        .byte $28   ; 
- D 0 - I - 0x011125 04:9115: 00        .byte $00   ; 
- D 0 - I - 0x011126 04:9116: 81        .byte $81   ; 
- D 0 - I - 0x011127 04:9117: 2E 92     .word ofs_922E_15
- D 0 - I - 0x011129 04:9119: 28        .byte $28   ; 
- D 0 - I - 0x01112A 04:911A: 00        .byte $00   ; 
- D 0 - I - 0x01112B 04:911B: 81        .byte $81   ; 
- D 0 - I - 0x01112C 04:911C: 32 92     .word ofs_9232_16
- D 0 - I - 0x01112E 04:911E: 28        .byte $28   ; 
- D 0 - I - 0x01112F 04:911F: 00        .byte $00   ; 
- D 0 - I - 0x011130 04:9120: 81        .byte $81   ; 
- D 0 - I - 0x011131 04:9121: 3A 92     .word ofs_923A_17
- D 0 - I - 0x011133 04:9123: 30        .byte $30   ; 
- D 0 - I - 0x011134 04:9124: 00        .byte $00   ; 
- D 0 - I - 0x011135 04:9125: 07        .byte $07   ; 
- D 0 - I - 0x011136 04:9126: 3E 92     .word ofs_923E_18
- D 0 - I - 0x011138 04:9128: E8        .byte $E8   ; 
- D 0 - I - 0x011139 04:9129: 00        .byte $00   ; 
- D 0 - I - 0x01113A 04:912A: 00        .byte $00   ; 
- D 0 - I - 0x01113B 04:912B: 42 92     .word ofs_9242_19
- D 0 - I - 0x01113D 04:912D: E0        .byte $E0   ; 
- D 0 - I - 0x01113E 04:912E: 00        .byte $00   ; 
- D 0 - I - 0x01113F 04:912F: 00        .byte $00   ; 
- D 0 - I - 0x011140 04:9130: 46 92     .word ofs_9246_1A
- D 0 - I - 0x011142 04:9132: F0        .byte $F0   ; 
- D 0 - I - 0x011143 04:9133: 00        .byte $00   ; 
- D 0 - I - 0x011144 04:9134: 03        .byte $03   ; 
- D 0 - I - 0x011145 04:9135: 4A 92     .word ofs_924A_1B
- D 0 - I - 0x011147 04:9137: 00        .byte $00   ; 
- D 0 - I - 0x011148 04:9138: 01        .byte $01   ; 
- D 0 - I - 0x011149 04:9139: 03        .byte $03   ; 
- D 0 - I - 0x01114A 04:913A: 4E 92     .word ofs_924E_1C
- D 0 - I - 0x01114C 04:913C: 10        .byte $10   ; 
- D 0 - I - 0x01114D 04:913D: 01        .byte $01   ; 
- D 0 - I - 0x01114E 04:913E: 03        .byte $03   ; 
- D 0 - I - 0x01114F 04:913F: 52 92     .word ofs_9252_1D
- D 0 - I - 0x011151 04:9141: 30        .byte $30   ; 
- D 0 - I - 0x011152 04:9142: 01        .byte $01   ; 
- D 0 - I - 0x011153 04:9143: 00        .byte $00   ; 
- D 0 - I - 0x011154 04:9144: 56 92     .word ofs_9256_1E
- D 0 - I - 0x011156 04:9146: E0        .byte $E0   ; 
- D 0 - I - 0x011157 04:9147: 00        .byte $00   ; 
- D 0 - I - 0x011158 04:9148: 05        .byte $05   ; 
- D 0 - I - 0x011159 04:9149: 5A 92     .word ofs_925A_1F
- D 0 - I - 0x01115B 04:914B: E0        .byte $E0   ; 
- D 0 - I - 0x01115C 04:914C: 00        .byte $00   ; 
- D 0 - I - 0x01115D 04:914D: 05        .byte $05   ; 



ofs_914E_00:
- D 0 - I - 0x01115E 04:914E: 1F        .byte $1F   ; 
- D 0 - I - 0x01115F 04:914F: 00        .byte $00   ; 
- D 0 - I - 0x011160 04:9150: 5E 92     .word off_925E
- D 0 - I - 0x011162 04:9152: 1F        .byte $1F   ; 
- D 0 - I - 0x011163 04:9153: 01        .byte $01   ; 
- D 0 - I - 0x011164 04:9154: 77 92     .word off_9277
- D 0 - I - 0x011166 04:9156: FF        .byte $FF   ; 
- D 0 - I - 0x011167 04:9157: FF        .byte $FF   ; 
- D 0 - I - 0x011168 04:9158: 84 92     .word off_9284



ofs_915A_01:
- D 0 - I - 0x01116A 04:915A: 4F        .byte $4F   ; 
- D 0 - I - 0x01116B 04:915B: 01        .byte $01   ; 
- D 0 - I - 0x01116C 04:915C: 91 92     .word off_9291
- D 0 - I - 0x01116E 04:915E: 5F        .byte $5F   ; 
- D 0 - I - 0x01116F 04:915F: 01        .byte $01   ; 
- D 0 - I - 0x011170 04:9160: 9E 92     .word off_929E
- D 0 - I - 0x011172 04:9162: FF        .byte $FF   ; 
- D 0 - I - 0x011173 04:9163: FF        .byte $FF   ; 
- D 0 - I - 0x011174 04:9164: AB 92     .word off_92AB



ofs_9166_02:
- D 0 - I - 0x011176 04:9166: 3F        .byte $3F   ; 
- D 0 - I - 0x011177 04:9167: 01        .byte $01   ; 
- D 0 - I - 0x011178 04:9168: B8 92     .word off_92B8
- D 0 - I - 0x01117A 04:916A: 5F        .byte $5F   ; 
- D 0 - I - 0x01117B 04:916B: 01        .byte $01   ; 
- D 0 - I - 0x01117C 04:916C: D1 92     .word off_92D1
- D 0 - I - 0x01117E 04:916E: 77        .byte $77   ; 
- D 0 - I - 0x01117F 04:916F: 01        .byte $01   ; 
- D 0 - I - 0x011180 04:9170: DE 92     .word off_92DE
- D 0 - I - 0x011182 04:9172: 84        .byte $84   ; 
- D 0 - I - 0x011183 04:9173: 01        .byte $01   ; 
- D 0 - I - 0x011184 04:9174: EB 92     .word off_92EB
- D 0 - I - 0x011186 04:9176: 8F        .byte $8F   ; 
- D 0 - I - 0x011187 04:9177: 01        .byte $01   ; 
- D 0 - I - 0x011188 04:9178: F8 92     .word off_92F8
- D 0 - I - 0x01118A 04:917A: A7        .byte $A7   ; 
- D 0 - I - 0x01118B 04:917B: 01        .byte $01   ; 
- D 0 - I - 0x01118C 04:917C: 05 93     .word off_9305
- D 0 - I - 0x01118E 04:917E: B4        .byte $B4   ; 
- D 0 - I - 0x01118F 04:917F: 01        .byte $01   ; 
- D 0 - I - 0x011190 04:9180: 12 93     .word off_9312
- D 0 - I - 0x011192 04:9182: FF        .byte $FF   ; 
- D 0 - I - 0x011193 04:9183: FF        .byte $FF   ; 
- D 0 - I - 0x011194 04:9184: 1F 93     .word off_931F



ofs_9186_03:
- - - - - - 0x011196 04:9186: 77        .byte $77   ; 
- - - - - - 0x011197 04:9187: 01        .byte $01   ; 
- - - - - - 0x011198 04:9188: 2C 93     .word off_932C
- - - - - - 0x01119A 04:918A: 37        .byte $37   ; 
- - - - - - 0x01119B 04:918B: 02        .byte $02   ; 
- - - - - - 0x01119C 04:918C: 39 93     .word off_9339
- - - - - - 0x01119E 04:918E: FF        .byte $FF   ; 
- - - - - - 0x01119F 04:918F: FF        .byte $FF   ; 
- - - - - - 0x0111A0 04:9190: 46 93     .word off_9346



ofs_9192_04:
- D 0 - I - 0x0111A2 04:9192: A7        .byte $A7   ; 
- D 0 - I - 0x0111A3 04:9193: 01        .byte $01   ; 
- D 0 - I - 0x0111A4 04:9194: 53 93     .word off_9353
- D 0 - I - 0x0111A6 04:9196: 07        .byte $07   ; 
- D 0 - I - 0x0111A7 04:9197: 02        .byte $02   ; 
- D 0 - I - 0x0111A8 04:9198: 60 93     .word off_9360
- - - - - - 0x0111AA 04:919A: FF        .byte $FF   ; 
- - - - - - 0x0111AB 04:919B: FF        .byte $FF   ; 
- - - - - - 0x0111AC 04:919C: 6D 93     .word off_936D



ofs_919E_05:
- - - - - - 0x0111AE 04:919E: B7        .byte $B7   ; 
- - - - - - 0x0111AF 04:919F: 01        .byte $01   ; 
- - - - - - 0x0111B0 04:91A0: 7A 93     .word off_937A
- - - - - - 0x0111B2 04:91A2: F7        .byte $F7   ; 
- - - - - - 0x0111B3 04:91A3: 01        .byte $01   ; 
- - - - - - 0x0111B4 04:91A4: 87 93     .word off_9387
- - - - - - 0x0111B6 04:91A6: FF        .byte $FF   ; 
- - - - - - 0x0111B7 04:91A7: FF        .byte $FF   ; 
- - - - - - 0x0111B8 04:91A8: 94 93     .word off_9394



ofs_91AA_06:
- D 0 - I - 0x0111BA 04:91AA: 07        .byte $07   ; 
- D 0 - I - 0x0111BB 04:91AB: 02        .byte $02   ; 
- D 0 - I - 0x0111BC 04:91AC: A1 93     .word off_93A1
- D 0 - I - 0x0111BE 04:91AE: 2F        .byte $2F   ; 
- D 0 - I - 0x0111BF 04:91AF: 02        .byte $02   ; 
- D 0 - I - 0x0111C0 04:91B0: AE 93     .word off_93AE
- D 0 - I - 0x0111C2 04:91B2: 37        .byte $37   ; 
- D 0 - I - 0x0111C3 04:91B3: 02        .byte $02   ; 
- D 0 - I - 0x0111C4 04:91B4: BB 93     .word off_93BB
- D 0 - I - 0x0111C6 04:91B6: 4F        .byte $4F   ; 
- D 0 - I - 0x0111C7 04:91B7: 02        .byte $02   ; 
- D 0 - I - 0x0111C8 04:91B8: C8 93     .word off_93C8
- D 0 - I - 0x0111CA 04:91BA: 6F        .byte $6F   ; 
- D 0 - I - 0x0111CB 04:91BB: 02        .byte $02   ; 
- D 0 - I - 0x0111CC 04:91BC: D5 93     .word off_93D5
- D 0 - I - 0x0111CE 04:91BE: 7F        .byte $7F   ; 
- D 0 - I - 0x0111CF 04:91BF: 02        .byte $02   ; 
- D 0 - I - 0x0111D0 04:91C0: E2 93     .word off_93E2
- D 0 - I - 0x0111D2 04:91C2: FF        .byte $FF   ; 
- D 0 - I - 0x0111D3 04:91C3: FF        .byte $FF   ; 
- D 0 - I - 0x0111D4 04:91C4: EF 93     .word off_93EF



ofs_91C6_07:
- D 0 - I - 0x0111D6 04:91C6: 6F        .byte $6F   ; 
- D 0 - I - 0x0111D7 04:91C7: 02        .byte $02   ; 
- D 0 - I - 0x0111D8 04:91C8: 02 94     .word off_9402
- D 0 - I - 0x0111DA 04:91CA: 7F        .byte $7F   ; 
- D 0 - I - 0x0111DB 04:91CB: 02        .byte $02   ; 
- D 0 - I - 0x0111DC 04:91CC: 0F 94     .word off_940F
- D 0 - I - 0x0111DE 04:91CE: FF        .byte $FF   ; 
- D 0 - I - 0x0111DF 04:91CF: FF        .byte $FF   ; 
- D 0 - I - 0x0111E0 04:91D0: 1C 94     .word off_941C



ofs_91D2_08:
- D 0 - I - 0x0111E2 04:91D2: 9F        .byte $9F   ; 
- D 0 - I - 0x0111E3 04:91D3: 02        .byte $02   ; 
- D 0 - I - 0x0111E4 04:91D4: 29 94     .word off_9429
- D 0 - I - 0x0111E6 04:91D6: BF        .byte $BF   ; 
- D 0 - I - 0x0111E7 04:91D7: 02        .byte $02   ; 
- D 0 - I - 0x0111E8 04:91D8: 36 94     .word off_9436
- D 0 - I - 0x0111EA 04:91DA: FF        .byte $FF   ; 
- D 0 - I - 0x0111EB 04:91DB: FF        .byte $FF   ; 
- D 0 - I - 0x0111EC 04:91DC: 43 94     .word off_9443



ofs_91DE_09:
- D 0 - I - 0x0111EE 04:91DE: 2F        .byte $2F   ; 
- D 0 - I - 0x0111EF 04:91DF: 02        .byte $02   ; 
- D 0 - I - 0x0111F0 04:91E0: 56 94     .word off_9456
- D 0 - I - 0x0111F2 04:91E2: 8F        .byte $8F   ; 
- D 0 - I - 0x0111F3 04:91E3: 02        .byte $02   ; 
- D 0 - I - 0x0111F4 04:91E4: 6F 94     .word off_946F
- D 0 - I - 0x0111F6 04:91E6: BF        .byte $BF   ; 
- D 0 - I - 0x0111F7 04:91E7: 02        .byte $02   ; 
- D 0 - I - 0x0111F8 04:91E8: 7C 94     .word off_947C
- D 0 - I - 0x0111FA 04:91EA: FF        .byte $FF   ; 
- D 0 - I - 0x0111FB 04:91EB: FF        .byte $FF   ; 
- D 0 - I - 0x0111FC 04:91EC: 89 94     .word off_9489



ofs_91EE_0A:
- D 0 - I - 0x0111FE 04:91EE: FF        .byte $FF   ; 
- D 0 - I - 0x0111FF 04:91EF: 02        .byte $02   ; 
- D 0 - I - 0x011200 04:91F0: 9C 94     .word off_949C
- D 0 - I - 0x011202 04:91F2: A0        .byte $A0   ; 
- D 0 - I - 0x011203 04:91F3: 03        .byte $03   ; 
- D 0 - I - 0x011204 04:91F4: B5 94     .word off_94B5
- D 0 - I - 0x011206 04:91F6: FF        .byte $FF   ; 
- D 0 - I - 0x011207 04:91F7: FF        .byte $FF   ; 
- D 0 - I - 0x011208 04:91F8: C2 94     .word off_94C2



ofs_91FA_0B:
- D 0 - I - 0x01120A 04:91FA: FF        .byte $FF   ; 
- D 0 - I - 0x01120B 04:91FB: FF        .byte $FF   ; 
- D 0 - I - 0x01120C 04:91FC: D5 94     .word off_94D5



ofs_91FE_0C:
- D 0 - I - 0x01120E 04:91FE: FF        .byte $FF   ; 
- D 0 - I - 0x01120F 04:91FF: FF        .byte $FF   ; 
- D 0 - I - 0x011210 04:9200: EE 94     .word off_94EE



ofs_9202_0D:
- D 0 - I - 0x011212 04:9202: FF        .byte $FF   ; 
- D 0 - I - 0x011213 04:9203: FF        .byte $FF   ; 
- D 0 - I - 0x011214 04:9204: 07 95     .word off_9507



ofs_9206_0E:
- D 0 - I - 0x011216 04:9206: FF        .byte $FF   ; 
- D 0 - I - 0x011217 04:9207: FF        .byte $FF   ; 
- D 0 - I - 0x011218 04:9208: 20 95     .word off_9520



ofs_920A_0F:
- D 0 - I - 0x01121A 04:920A: FF        .byte $FF   ; 
- D 0 - I - 0x01121B 04:920B: FF        .byte $FF   ; 
- D 0 - I - 0x01121C 04:920C: 39 95     .word off_9539



ofs_920E_10:
- D 0 - I - 0x01121E 04:920E: AF        .byte $AF   ; 
- D 0 - I - 0x01121F 04:920F: 01        .byte $01   ; 
- - - - - - 0x011220 04:9210: 52 95     .word off_9552
- D 0 - I - 0x011222 04:9212: FF        .byte $FF   ; 
- D 0 - I - 0x011223 04:9213: FF        .byte $FF   ; 
- D 0 - I - 0x011224 04:9214: 5F 95     .word off_955F



ofs_9216_11:
- D 0 - I - 0x011226 04:9216: FF        .byte $FF   ; 
- D 0 - I - 0x011227 04:9217: 01        .byte $01   ; 
- D 0 - I - 0x011228 04:9218: 72 95     .word off_9572
- D 0 - I - 0x01122A 04:921A: FF        .byte $FF   ; 
- D 0 - I - 0x01122B 04:921B: FF        .byte $FF   ; 
- D 0 - I - 0x01122C 04:921C: 8B 95     .word off_958B



ofs_921E_12:
- D 0 - I - 0x01122E 04:921E: 7F        .byte $7F   ; 
- D 0 - I - 0x01122F 04:921F: 01        .byte $01   ; 
- D 0 - I - 0x011230 04:9220: 98 95     .word off_9598
- D 0 - I - 0x011232 04:9222: FF        .byte $FF   ; 
- D 0 - I - 0x011233 04:9223: FF        .byte $FF   ; 
- D 0 - I - 0x011234 04:9224: A5 95     .word off_95A5



ofs_9226_13:
- D 0 - I - 0x011236 04:9226: FF        .byte $FF   ; 
- D 0 - I - 0x011237 04:9227: FF        .byte $FF   ; 
- D 0 - I - 0x011238 04:9228: B8 95     .word off_95B8



ofs_922A_14:
- D 0 - I - 0x01123A 04:922A: FF        .byte $FF   ; 
- D 0 - I - 0x01123B 04:922B: FF        .byte $FF   ; 
- D 0 - I - 0x01123C 04:922C: D1 95     .word off_95D1



ofs_922E_15:
- D 0 - I - 0x01123E 04:922E: FF        .byte $FF   ; 
- D 0 - I - 0x01123F 04:922F: FF        .byte $FF   ; 
- D 0 - I - 0x011240 04:9230: EA 95     .word off_95EA



ofs_9232_16:
- D 0 - I - 0x011242 04:9232: 2F        .byte $2F   ; 
- D 0 - I - 0x011243 04:9233: 02        .byte $02   ; 
- D 0 - I - 0x011244 04:9234: 03 96     .word off_9603
- D 0 - I - 0x011246 04:9236: FF        .byte $FF   ; 
- D 0 - I - 0x011247 04:9237: FF        .byte $FF   ; 
- D 0 - I - 0x011248 04:9238: 1C 96     .word off_961C



ofs_923A_17:
- D 0 - I - 0x01124A 04:923A: FF        .byte $FF   ; 
- D 0 - I - 0x01124B 04:923B: FF        .byte $FF   ; 
- D 0 - I - 0x01124C 04:923C: 29 96     .word off_9629



ofs_923E_18:
- D 0 - I - 0x01124E 04:923E: FF        .byte $FF   ; 
- D 0 - I - 0x01124F 04:923F: FF        .byte $FF   ; 
- D 0 - I - 0x011250 04:9240: 36 96     .word off_9636



ofs_9242_19:
- D 0 - I - 0x011252 04:9242: FF        .byte $FF   ; 
- D 0 - I - 0x011253 04:9243: FF        .byte $FF   ; 
- D 0 - I - 0x011254 04:9244: 4F 96     .word off_964F



ofs_9246_1A:
- D 0 - I - 0x011256 04:9246: FF        .byte $FF   ; 
- D 0 - I - 0x011257 04:9247: FF        .byte $FF   ; 
- D 0 - I - 0x011258 04:9248: 68 96     .word off_9668



ofs_924A_1B:
- D 0 - I - 0x01125A 04:924A: FF        .byte $FF   ; 
- D 0 - I - 0x01125B 04:924B: FF        .byte $FF   ; 
- D 0 - I - 0x01125C 04:924C: 81 96     .word off_9681



ofs_924E_1C:
- D 0 - I - 0x01125E 04:924E: FF        .byte $FF   ; 
- D 0 - I - 0x01125F 04:924F: FF        .byte $FF   ; 
- D 0 - I - 0x011260 04:9250: 9A 96     .word off_969A



ofs_9252_1D:
- D 0 - I - 0x011262 04:9252: FF        .byte $FF   ; 
- D 0 - I - 0x011263 04:9253: FF        .byte $FF   ; 
- D 0 - I - 0x011264 04:9254: B3 96     .word off_96B3



ofs_9256_1E:
- D 0 - I - 0x011266 04:9256: FF        .byte $FF   ; 
- D 0 - I - 0x011267 04:9257: FF        .byte $FF   ; 
- D 0 - I - 0x011268 04:9258: CC 96     .word off_96CC



ofs_925A_1F:
- D 0 - I - 0x01126A 04:925A: FF        .byte $FF   ; 
- D 0 - I - 0x01126B 04:925B: FF        .byte $FF   ; 
- D 0 - I - 0x01126C 04:925C: E5 96     .word off_96E5_tractor



off_925E:
- D 0 - I - 0x01126E 04:925E: 00        .byte $00   ; 
- D 0 - I - 0x01126F 04:925F: 70        .byte $70   ; 
- D 0 - I - 0x011270 04:9260: 00        .byte $00   ; 
- - - - - - 0x011271 04:9261: 00        .byte $00   ; 
- - - - - - 0x011272 04:9262: 00        .byte $00   ; 
- - - - - - 0x011273 04:9263: 7F        .byte $7F   ; 
- D 0 - I - 0x011274 04:9264: 00        .byte $00   ; 
- D 0 - I - 0x011275 04:9265: 46        .byte $46   ; 
- D 0 - I - 0x011276 04:9266: 00        .byte $00   ; 
- - - - - - 0x011277 04:9267: 00        .byte $00   ; 
- - - - - - 0x011278 04:9268: 00        .byte $00   ; 
- - - - - - 0x011279 04:9269: 7F        .byte $7F   ; 
- D 0 - I - 0x01127A 04:926A: 00        .byte $00   ; 
- D 0 - I - 0x01127B 04:926B: 70        .byte $70   ; 
- D 0 - I - 0x01127C 04:926C: 00        .byte $00   ; 
- - - - - - 0x01127D 04:926D: 00        .byte $00   ; 
- - - - - - 0x01127E 04:926E: 00        .byte $00   ; 
- - - - - - 0x01127F 04:926F: 7F        .byte $7F   ; 
- D 0 - I - 0x011280 04:9270: 03        .byte $03   ; 
- D 0 - I - 0x011281 04:9271: 08        .byte $08   ; 
- D 0 - I - 0x011282 04:9272: 00        .byte $00   ; 
- D 0 - I - 0x011283 04:9273: 00        .byte $00   ; 
- D 0 - I - 0x011284 04:9274: 00        .byte $00   ; 
- D 0 - I - 0x011285 04:9275: 7F        .byte $7F   ; 
- D 0 - I - 0x011286 04:9276: FF        .byte $FF   ; 

off_9277:
- D 0 - I - 0x011287 04:9277: 00        .byte $00   ; 
- D 0 - I - 0x011288 04:9278: 70        .byte $70   ; 
- D 0 - I - 0x011289 04:9279: 00        .byte $00   ; 
- D 0 - I - 0x01128A 04:927A: 00        .byte $00   ; 
- D 0 - I - 0x01128B 04:927B: 00        .byte $00   ; 
- D 0 - I - 0x01128C 04:927C: 7F        .byte $7F   ; 
- D 0 - I - 0x01128D 04:927D: 00        .byte $00   ; 
- D 0 - I - 0x01128E 04:927E: 44        .byte $44   ; 
- D 0 - I - 0x01128F 04:927F: 00        .byte $00   ; 
- - - - - - 0x011290 04:9280: 00        .byte $00   ; 
- - - - - - 0x011291 04:9281: 00        .byte $00   ; 
- - - - - - 0x011292 04:9282: 7F        .byte $7F   ; 
- D 0 - I - 0x011293 04:9283: FF        .byte $FF   ; 

off_9284:
- D 0 - I - 0x011294 04:9284: 00        .byte $00   ; 
- D 0 - I - 0x011295 04:9285: 70        .byte $70   ; 
- D 0 - I - 0x011296 04:9286: 00        .byte $00   ; 
- - - - - - 0x011297 04:9287: 00        .byte $00   ; 
- - - - - - 0x011298 04:9288: 00        .byte $00   ; 
- - - - - - 0x011299 04:9289: 7F        .byte $7F   ; 
- D 0 - I - 0x01129A 04:928A: 01        .byte $01   ; 
- D 0 - I - 0x01129B 04:928B: 20        .byte $20   ; 
- D 0 - I - 0x01129C 04:928C: FF        .byte $FF   ; 
- D 0 - I - 0x01129D 04:928D: 02        .byte $02   ; 
- D 0 - I - 0x01129E 04:928E: 01        .byte $01   ; 
- D 0 - I - 0x01129F 04:928F: 7F        .byte $7F   ; 
- D 0 - I - 0x0112A0 04:9290: FF        .byte $FF   ; 

off_9291:
- D 0 - I - 0x0112A1 04:9291: 01        .byte $01   ; 
- D 0 - I - 0x0112A2 04:9292: 20        .byte $20   ; 
- D 0 - I - 0x0112A3 04:9293: FF        .byte $FF   ; 
- D 0 - I - 0x0112A4 04:9294: 00        .byte $00   ; 
- D 0 - I - 0x0112A5 04:9295: 01        .byte $01   ; 
- D 0 - I - 0x0112A6 04:9296: 7F        .byte $7F   ; 
- D 0 - I - 0x0112A7 04:9297: 00        .byte $00   ; 
- D 0 - I - 0x0112A8 04:9298: 40        .byte $40   ; 
- D 0 - I - 0x0112A9 04:9299: 00        .byte $00   ; 
- D 0 - I - 0x0112AA 04:929A: 02        .byte $02   ; 
- D 0 - I - 0x0112AB 04:929B: 02        .byte $02   ; 
- D 0 - I - 0x0112AC 04:929C: 86        .byte $86   ; 
- D 0 - I - 0x0112AD 04:929D: FF        .byte $FF   ; 

off_929E:
- D 0 - I - 0x0112AE 04:929E: 00        .byte $00   ; 
- D 0 - I - 0x0112AF 04:929F: 70        .byte $70   ; 
- D 0 - I - 0x0112B0 04:92A0: 00        .byte $00   ; 
- - - - - - 0x0112B1 04:92A1: 00        .byte $00   ; 
- - - - - - 0x0112B2 04:92A2: 01        .byte $01   ; 
- - - - - - 0x0112B3 04:92A3: 7F        .byte $7F   ; 
- D 0 - I - 0x0112B4 04:92A4: 00        .byte $00   ; 
- D 0 - I - 0x0112B5 04:92A5: 40        .byte $40   ; 
- D 0 - I - 0x0112B6 04:92A6: 00        .byte $00   ; 
- - - - - - 0x0112B7 04:92A7: 02        .byte $02   ; 
- - - - - - 0x0112B8 04:92A8: 02        .byte $02   ; 
- - - - - - 0x0112B9 04:92A9: 7F        .byte $7F   ; 
- D 0 - I - 0x0112BA 04:92AA: FF        .byte $FF   ; 

off_92AB:
- D 0 - I - 0x0112BB 04:92AB: 00        .byte $00   ; 
- D 0 - I - 0x0112BC 04:92AC: 70        .byte $70   ; 
- D 0 - I - 0x0112BD 04:92AD: 00        .byte $00   ; 
- - - - - - 0x0112BE 04:92AE: 00        .byte $00   ; 
- - - - - - 0x0112BF 04:92AF: 01        .byte $01   ; 
- - - - - - 0x0112C0 04:92B0: 7F        .byte $7F   ; 
- D 0 - I - 0x0112C1 04:92B1: 01        .byte $01   ; 
- D 0 - I - 0x0112C2 04:92B2: E0        .byte $E0   ; 
- D 0 - I - 0x0112C3 04:92B3: FE        .byte $FE   ; 
- D 0 - I - 0x0112C4 04:92B4: 02        .byte $02   ; 
- D 0 - I - 0x0112C5 04:92B5: 02        .byte $02   ; 
- D 0 - I - 0x0112C6 04:92B6: 7F        .byte $7F   ; 
- D 0 - I - 0x0112C7 04:92B7: FF        .byte $FF   ; 

off_92B8:
- D 0 - I - 0x0112C8 04:92B8: 00        .byte $00   ; 
- D 0 - I - 0x0112C9 04:92B9: 40        .byte $40   ; 
- D 0 - I - 0x0112CA 04:92BA: 00        .byte $00   ; 
- D 0 - I - 0x0112CB 04:92BB: 00        .byte $00   ; 
- D 0 - I - 0x0112CC 04:92BC: 02        .byte $02   ; 
- D 0 - I - 0x0112CD 04:92BD: 06        .byte $06   ; 
- D 0 - I - 0x0112CE 04:92BE: 00        .byte $00   ; 
- D 0 - I - 0x0112CF 04:92BF: 04        .byte $04   ; 
- D 0 - I - 0x0112D0 04:92C0: 00        .byte $00   ; 
- - - - - - 0x0112D1 04:92C1: 00        .byte $00   ; 
- - - - - - 0x0112D2 04:92C2: 02        .byte $02   ; 
- - - - - - 0x0112D3 04:92C3: 7F        .byte $7F   ; 
- D 0 - I - 0x0112D4 04:92C4: 00        .byte $00   ; 
- D 0 - I - 0x0112D5 04:92C5: 40        .byte $40   ; 
- D 0 - I - 0x0112D6 04:92C6: 00        .byte $00   ; 
- - - - - - 0x0112D7 04:92C7: 00        .byte $00   ; 
- - - - - - 0x0112D8 04:92C8: 02        .byte $02   ; 
- - - - - - 0x0112D9 04:92C9: 7F        .byte $7F   ; 
- D 0 - I - 0x0112DA 04:92CA: 03        .byte $03   ; 
- D 0 - I - 0x0112DB 04:92CB: 08        .byte $08   ; 
- D 0 - I - 0x0112DC 04:92CC: 00        .byte $00   ; 
- - - - - - 0x0112DD 04:92CD: 00        .byte $00   ; 
- - - - - - 0x0112DE 04:92CE: 02        .byte $02   ; 
- - - - - - 0x0112DF 04:92CF: 7F        .byte $7F   ; 
- D 0 - I - 0x0112E0 04:92D0: FF        .byte $FF   ; 

off_92D1:
- D 0 - I - 0x0112E1 04:92D1: 00        .byte $00   ; 
- D 0 - I - 0x0112E2 04:92D2: 40        .byte $40   ; 
- D 0 - I - 0x0112E3 04:92D3: 00        .byte $00   ; 
- D 0 - I - 0x0112E4 04:92D4: 00        .byte $00   ; 
- D 0 - I - 0x0112E5 04:92D5: 02        .byte $02   ; 
- D 0 - I - 0x0112E6 04:92D6: 7F        .byte $7F   ; 
- D 0 - I - 0x0112E7 04:92D7: 01        .byte $01   ; 
- D 0 - I - 0x0112E8 04:92D8: C0        .byte $C0   ; 
- D 0 - I - 0x0112E9 04:92D9: FE        .byte $FE   ; 
- D 0 - I - 0x0112EA 04:92DA: 02        .byte $02   ; 
- D 0 - I - 0x0112EB 04:92DB: 03        .byte $03   ; 
- D 0 - I - 0x0112EC 04:92DC: 7F        .byte $7F   ; 
- D 0 - I - 0x0112ED 04:92DD: FF        .byte $FF   ; 

off_92DE:
- D 0 - I - 0x0112EE 04:92DE: 01        .byte $01   ; 
- D 0 - I - 0x0112EF 04:92DF: E0        .byte $E0   ; 
- D 0 - I - 0x0112F0 04:92E0: FE        .byte $FE   ; 
- D 0 - I - 0x0112F1 04:92E1: 00        .byte $00   ; 
- D 0 - I - 0x0112F2 04:92E2: 02        .byte $02   ; 
- D 0 - I - 0x0112F3 04:92E3: 7F        .byte $7F   ; 
- D 0 - I - 0x0112F4 04:92E4: 01        .byte $01   ; 
- D 0 - I - 0x0112F5 04:92E5: C0        .byte $C0   ; 
- D 0 - I - 0x0112F6 04:92E6: FE        .byte $FE   ; 
- - - - - - 0x0112F7 04:92E7: 02        .byte $02   ; 
- - - - - - 0x0112F8 04:92E8: 03        .byte $03   ; 
- - - - - - 0x0112F9 04:92E9: 7F        .byte $7F   ; 
- D 0 - I - 0x0112FA 04:92EA: FF        .byte $FF   ; 

off_92EB:
- D 0 - I - 0x0112FB 04:92EB: 01        .byte $01   ; 
- D 0 - I - 0x0112FC 04:92EC: E0        .byte $E0   ; 
- D 0 - I - 0x0112FD 04:92ED: FE        .byte $FE   ; 
- D 0 - I - 0x0112FE 04:92EE: 00        .byte $00   ; 
- D 0 - I - 0x0112FF 04:92EF: 02        .byte $02   ; 
- D 0 - I - 0x011300 04:92F0: 7F        .byte $7F   ; 
- D 0 - I - 0x011301 04:92F1: 01        .byte $01   ; 
- D 0 - I - 0x011302 04:92F2: C0        .byte $C0   ; 
- D 0 - I - 0x011303 04:92F3: FE        .byte $FE   ; 
- D 0 - I - 0x011304 04:92F4: 02        .byte $02   ; 
- D 0 - I - 0x011305 04:92F5: 12        .byte $12   ; 
- D 0 - I - 0x011306 04:92F6: 7F        .byte $7F   ; 
- D 0 - I - 0x011307 04:92F7: FF        .byte $FF   ; 

off_92F8:
- D 0 - I - 0x011308 04:92F8: 01        .byte $01   ; 
- D 0 - I - 0x011309 04:92F9: E0        .byte $E0   ; 
- D 0 - I - 0x01130A 04:92FA: FE        .byte $FE   ; 
- D 0 - I - 0x01130B 04:92FB: 00        .byte $00   ; 
- D 0 - I - 0x01130C 04:92FC: 02        .byte $02   ; 
- D 0 - I - 0x01130D 04:92FD: 7F        .byte $7F   ; 
- D 0 - I - 0x01130E 04:92FE: 01        .byte $01   ; 
- D 0 - I - 0x01130F 04:92FF: C0        .byte $C0   ; 
- D 0 - I - 0x011310 04:9300: FE        .byte $FE   ; 
- - - - - - 0x011311 04:9301: 02        .byte $02   ; 
- - - - - - 0x011312 04:9302: 04        .byte $04   ; 
- - - - - - 0x011313 04:9303: 7F        .byte $7F   ; 
- D 0 - I - 0x011314 04:9304: FF        .byte $FF   ; 

off_9305:
- D 0 - I - 0x011315 04:9305: 00        .byte $00   ; 
- D 0 - I - 0x011316 04:9306: 78        .byte $78   ; 
- D 0 - I - 0x011317 04:9307: 00        .byte $00   ; 
- - - - - - 0x011318 04:9308: 00        .byte $00   ; 
- - - - - - 0x011319 04:9309: 02        .byte $02   ; 
- - - - - - 0x01131A 04:930A: 7F        .byte $7F   ; 
- D 0 - I - 0x01131B 04:930B: 01        .byte $01   ; 
- D 0 - I - 0x01131C 04:930C: C0        .byte $C0   ; 
- D 0 - I - 0x01131D 04:930D: FE        .byte $FE   ; 
- D 0 - I - 0x01131E 04:930E: 02        .byte $02   ; 
- D 0 - I - 0x01131F 04:930F: 04        .byte $04   ; 
- D 0 - I - 0x011320 04:9310: 7F        .byte $7F   ; 
- D 0 - I - 0x011321 04:9311: FF        .byte $FF   ; 

off_9312:
- D 0 - I - 0x011322 04:9312: 00        .byte $00   ; 
- D 0 - I - 0x011323 04:9313: 78        .byte $78   ; 
- D 0 - I - 0x011324 04:9314: 00        .byte $00   ; 
- - - - - - 0x011325 04:9315: 00        .byte $00   ; 
- - - - - - 0x011326 04:9316: 02        .byte $02   ; 
- - - - - - 0x011327 04:9317: 7F        .byte $7F   ; 
- D 0 - I - 0x011328 04:9318: 01        .byte $01   ; 
- D 0 - I - 0x011329 04:9319: C0        .byte $C0   ; 
- D 0 - I - 0x01132A 04:931A: FE        .byte $FE   ; 
- D 0 - I - 0x01132B 04:931B: 02        .byte $02   ; 
- D 0 - I - 0x01132C 04:931C: 10        .byte $10   ; 
- D 0 - I - 0x01132D 04:931D: 7F        .byte $7F   ; 
- D 0 - I - 0x01132E 04:931E: FF        .byte $FF   ; 

off_931F:
- D 0 - I - 0x01132F 04:931F: 00        .byte $00   ; 
- D 0 - I - 0x011330 04:9320: 78        .byte $78   ; 
- D 0 - I - 0x011331 04:9321: 00        .byte $00   ; 
- - - - - - 0x011332 04:9322: 00        .byte $00   ; 
- - - - - - 0x011333 04:9323: 02        .byte $02   ; 
- - - - - - 0x011334 04:9324: 7F        .byte $7F   ; 
- D 0 - I - 0x011335 04:9325: 01        .byte $01   ; 
- D 0 - I - 0x011336 04:9326: C0        .byte $C0   ; 
- D 0 - I - 0x011337 04:9327: FE        .byte $FE   ; 
- - - - - - 0x011338 04:9328: 02        .byte $02   ; 
- - - - - - 0x011339 04:9329: 05        .byte $05   ; 
- - - - - - 0x01133A 04:932A: 7F        .byte $7F   ; 
- D 0 - I - 0x01133B 04:932B: FF        .byte $FF   ; 

off_932C:
- - - - - - 0x01133C 04:932C: 01        .byte $01   ; 
- - - - - - 0x01133D 04:932D: C0        .byte $C0   ; 
- - - - - - 0x01133E 04:932E: FE        .byte $FE   ; 
- - - - - - 0x01133F 04:932F: 01        .byte $01   ; 
- - - - - - 0x011340 04:9330: 02        .byte $02   ; 
- - - - - - 0x011341 04:9331: 7F        .byte $7F   ; 
- - - - - - 0x011342 04:9332: 00        .byte $00   ; 
- - - - - - 0x011343 04:9333: 00        .byte $00   ; 
- - - - - - 0x011344 04:9334: 00        .byte $00   ; 
- - - - - - 0x011345 04:9335: 00        .byte $00   ; 
- - - - - - 0x011346 04:9336: 03        .byte $03   ; 
- - - - - - 0x011347 04:9337: 7F        .byte $7F   ; 
- - - - - - 0x011348 04:9338: FF        .byte $FF   ; 

off_9339:
- - - - - - 0x011349 04:9339: 00        .byte $00   ; 
- - - - - - 0x01134A 04:933A: 38        .byte $38   ; 
- - - - - - 0x01134B 04:933B: 00        .byte $00   ; 
- - - - - - 0x01134C 04:933C: 00        .byte $00   ; 
- - - - - - 0x01134D 04:933D: 03        .byte $03   ; 
- - - - - - 0x01134E 04:933E: 7F        .byte $7F   ; 
- - - - - - 0x01134F 04:933F: 00        .byte $00   ; 
- - - - - - 0x011350 04:9340: 00        .byte $00   ; 
- - - - - - 0x011351 04:9341: 00        .byte $00   ; 
- - - - - - 0x011352 04:9342: 00        .byte $00   ; 
- - - - - - 0x011353 04:9343: 03        .byte $03   ; 
- - - - - - 0x011354 04:9344: 7F        .byte $7F   ; 
- - - - - - 0x011355 04:9345: FF        .byte $FF   ; 

off_9346:
- - - - - - 0x011356 04:9346: 02        .byte $02   ; 
- - - - - - 0x011357 04:9347: 70        .byte $70   ; 
- - - - - - 0x011358 04:9348: 02        .byte $02   ; 
- - - - - - 0x011359 04:9349: 01        .byte $01   ; 
- - - - - - 0x01135A 04:934A: 06        .byte $06   ; 
- - - - - - 0x01135B 04:934B: 7F        .byte $7F   ; 
- - - - - - 0x01135C 04:934C: 00        .byte $00   ; 
- - - - - - 0x01135D 04:934D: 00        .byte $00   ; 
- - - - - - 0x01135E 04:934E: 00        .byte $00   ; 
- - - - - - 0x01135F 04:934F: 00        .byte $00   ; 
- - - - - - 0x011360 04:9350: 03        .byte $03   ; 
- - - - - - 0x011361 04:9351: 7F        .byte $7F   ; 
- - - - - - 0x011362 04:9352: FF        .byte $FF   ; 

off_9353:
- D 0 - I - 0x011363 04:9353: 01        .byte $01   ; 
- D 0 - I - 0x011364 04:9354: C0        .byte $C0   ; 
- D 0 - I - 0x011365 04:9355: FE        .byte $FE   ; 
- - - - - - 0x011366 04:9356: 01        .byte $01   ; 
- - - - - - 0x011367 04:9357: 02        .byte $02   ; 
- - - - - - 0x011368 04:9358: 7F        .byte $7F   ; 
- D 0 - I - 0x011369 04:9359: 00        .byte $00   ; 
- D 0 - I - 0x01136A 04:935A: 41        .byte $41   ; 
- D 0 - I - 0x01136B 04:935B: 00        .byte $00   ; 
- - - - - - 0x01136C 04:935C: 00        .byte $00   ; 
- - - - - - 0x01136D 04:935D: 04        .byte $04   ; 
- - - - - - 0x01136E 04:935E: 7F        .byte $7F   ; 
- D 0 - I - 0x01136F 04:935F: FF        .byte $FF   ; 

off_9360:
- D 0 - I - 0x011370 04:9360: 00        .byte $00   ; 
- D 0 - I - 0x011371 04:9361: 68        .byte $68   ; 
- D 0 - I - 0x011372 04:9362: 00        .byte $00   ; 
- - - - - - 0x011373 04:9363: 00        .byte $00   ; 
- - - - - - 0x011374 04:9364: 04        .byte $04   ; 
- - - - - - 0x011375 04:9365: 7F        .byte $7F   ; 
- D 0 - I - 0x011376 04:9366: 00        .byte $00   ; 
- D 0 - I - 0x011377 04:9367: 41        .byte $41   ; 
- D 0 - I - 0x011378 04:9368: 00        .byte $00   ; 
- - - - - - 0x011379 04:9369: 00        .byte $00   ; 
- - - - - - 0x01137A 04:936A: 04        .byte $04   ; 
- - - - - - 0x01137B 04:936B: 7F        .byte $7F   ; 
- D 0 - I - 0x01137C 04:936C: FF        .byte $FF   ; 

off_936D:
- - - - - - 0x01137D 04:936D: 02        .byte $02   ; 
- - - - - - 0x01137E 04:936E: 70        .byte $70   ; 
- - - - - - 0x01137F 04:936F: 02        .byte $02   ; 
- - - - - - 0x011380 04:9370: 01        .byte $01   ; 
- - - - - - 0x011381 04:9371: 06        .byte $06   ; 
- - - - - - 0x011382 04:9372: 7F        .byte $7F   ; 
- - - - - - 0x011383 04:9373: 00        .byte $00   ; 
- - - - - - 0x011384 04:9374: 41        .byte $41   ; 
- - - - - - 0x011385 04:9375: 00        .byte $00   ; 
- - - - - - 0x011386 04:9376: 00        .byte $00   ; 
- - - - - - 0x011387 04:9377: 04        .byte $04   ; 
- - - - - - 0x011388 04:9378: 7F        .byte $7F   ; 
- - - - - - 0x011389 04:9379: FF        .byte $FF   ; 

off_937A:
- - - - - - 0x01138A 04:937A: 01        .byte $01   ; 
- - - - - - 0x01138B 04:937B: C0        .byte $C0   ; 
- - - - - - 0x01138C 04:937C: FE        .byte $FE   ; 
- - - - - - 0x01138D 04:937D: 01        .byte $01   ; 
- - - - - - 0x01138E 04:937E: 02        .byte $02   ; 
- - - - - - 0x01138F 04:937F: 7F        .byte $7F   ; 
- - - - - - 0x011390 04:9380: 00        .byte $00   ; 
- - - - - - 0x011391 04:9381: 71        .byte $71   ; 
- - - - - - 0x011392 04:9382: 00        .byte $00   ; 
- - - - - - 0x011393 04:9383: 00        .byte $00   ; 
- - - - - - 0x011394 04:9384: 05        .byte $05   ; 
- - - - - - 0x011395 04:9385: 7F        .byte $7F   ; 
- - - - - - 0x011396 04:9386: FF        .byte $FF   ; 

off_9387:
- - - - - - 0x011397 04:9387: 00        .byte $00   ; 
- - - - - - 0x011398 04:9388: 78        .byte $78   ; 
- - - - - - 0x011399 04:9389: 00        .byte $00   ; 
- - - - - - 0x01139A 04:938A: 00        .byte $00   ; 
- - - - - - 0x01139B 04:938B: 05        .byte $05   ; 
- - - - - - 0x01139C 04:938C: 7F        .byte $7F   ; 
- - - - - - 0x01139D 04:938D: 00        .byte $00   ; 
- - - - - - 0x01139E 04:938E: 71        .byte $71   ; 
- - - - - - 0x01139F 04:938F: 00        .byte $00   ; 
- - - - - - 0x0113A0 04:9390: 00        .byte $00   ; 
- - - - - - 0x0113A1 04:9391: 05        .byte $05   ; 
- - - - - - 0x0113A2 04:9392: 7F        .byte $7F   ; 
- - - - - - 0x0113A3 04:9393: FF        .byte $FF   ; 

off_9394:
- - - - - - 0x0113A4 04:9394: 02        .byte $02   ; 
- - - - - - 0x0113A5 04:9395: 70        .byte $70   ; 
- - - - - - 0x0113A6 04:9396: 02        .byte $02   ; 
- - - - - - 0x0113A7 04:9397: 00        .byte $00   ; 
- - - - - - 0x0113A8 04:9398: 05        .byte $05   ; 
- - - - - - 0x0113A9 04:9399: 7F        .byte $7F   ; 
- - - - - - 0x0113AA 04:939A: 00        .byte $00   ; 
- - - - - - 0x0113AB 04:939B: 71        .byte $71   ; 
- - - - - - 0x0113AC 04:939C: 00        .byte $00   ; 
- - - - - - 0x0113AD 04:939D: 00        .byte $00   ; 
- - - - - - 0x0113AE 04:939E: 05        .byte $05   ; 
- - - - - - 0x0113AF 04:939F: 7F        .byte $7F   ; 
- - - - - - 0x0113B0 04:93A0: FF        .byte $FF   ; 

off_93A1:
- D 0 - I - 0x0113B1 04:93A1: 00        .byte $00   ; 
- D 0 - I - 0x0113B2 04:93A2: 70        .byte $70   ; 
- D 0 - I - 0x0113B3 04:93A3: 00        .byte $00   ; 
- - - - - - 0x0113B4 04:93A4: 00        .byte $00   ; 
- - - - - - 0x0113B5 04:93A5: 06        .byte $06   ; 
- - - - - - 0x0113B6 04:93A6: 7F        .byte $7F   ; 
- D 0 - I - 0x0113B7 04:93A7: 02        .byte $02   ; 
- D 0 - I - 0x0113B8 04:93A8: 70        .byte $70   ; 
- D 0 - I - 0x0113B9 04:93A9: 02        .byte $02   ; 
- D 0 - I - 0x0113BA 04:93AA: 02        .byte $02   ; 
- D 0 - I - 0x0113BB 04:93AB: 11        .byte $11   ; 
- D 0 - I - 0x0113BC 04:93AC: 7F        .byte $7F   ; 
- D 0 - I - 0x0113BD 04:93AD: FF        .byte $FF   ; 

off_93AE:
- D 0 - I - 0x0113BE 04:93AE: 00        .byte $00   ; 
- D 0 - I - 0x0113BF 04:93AF: 70        .byte $70   ; 
- D 0 - I - 0x0113C0 04:93B0: 00        .byte $00   ; 
- - - - - - 0x0113C1 04:93B1: 00        .byte $00   ; 
- - - - - - 0x0113C2 04:93B2: 06        .byte $06   ; 
- - - - - - 0x0113C3 04:93B3: 7F        .byte $7F   ; 
- D 0 - I - 0x0113C4 04:93B4: 02        .byte $02   ; 
- D 0 - I - 0x0113C5 04:93B5: 70        .byte $70   ; 
- D 0 - I - 0x0113C6 04:93B6: 02        .byte $02   ; 
- - - - - - 0x0113C7 04:93B7: 02        .byte $02   ; 
- - - - - - 0x0113C8 04:93B8: 04        .byte $04   ; 
- - - - - - 0x0113C9 04:93B9: 7F        .byte $7F   ; 
- D 0 - I - 0x0113CA 04:93BA: FF        .byte $FF   ; 

off_93BB:
- D 0 - I - 0x0113CB 04:93BB: 00        .byte $00   ; 
- D 0 - I - 0x0113CC 04:93BC: 70        .byte $70   ; 
- D 0 - I - 0x0113CD 04:93BD: 00        .byte $00   ; 
- - - - - - 0x0113CE 04:93BE: 00        .byte $00   ; 
- - - - - - 0x0113CF 04:93BF: 06        .byte $06   ; 
- - - - - - 0x0113D0 04:93C0: 7F        .byte $7F   ; 
- D 0 - I - 0x0113D1 04:93C1: 02        .byte $02   ; 
- D 0 - I - 0x0113D2 04:93C2: 70        .byte $70   ; 
- D 0 - I - 0x0113D3 04:93C3: 02        .byte $02   ; 
- D 0 - I - 0x0113D4 04:93C4: 02        .byte $02   ; 
- D 0 - I - 0x0113D5 04:93C5: 16        .byte $16   ; 
- D 0 - I - 0x0113D6 04:93C6: 7F        .byte $7F   ; 
- D 0 - I - 0x0113D7 04:93C7: FF        .byte $FF   ; 

off_93C8:
- D 0 - I - 0x0113D8 04:93C8: 00        .byte $00   ; 
- D 0 - I - 0x0113D9 04:93C9: 70        .byte $70   ; 
- D 0 - I - 0x0113DA 04:93CA: 00        .byte $00   ; 
- D 0 - I - 0x0113DB 04:93CB: 00        .byte $00   ; 
- D 0 - I - 0x0113DC 04:93CC: 06        .byte $06   ; 
- D 0 - I - 0x0113DD 04:93CD: 7F        .byte $7F   ; 
- D 0 - I - 0x0113DE 04:93CE: 02        .byte $02   ; 
- D 0 - I - 0x0113DF 04:93CF: 70        .byte $70   ; 
- D 0 - I - 0x0113E0 04:93D0: 02        .byte $02   ; 
- D 0 - I - 0x0113E1 04:93D1: 02        .byte $02   ; 
- D 0 - I - 0x0113E2 04:93D2: 03        .byte $03   ; 
- D 0 - I - 0x0113E3 04:93D3: 7F        .byte $7F   ; 
- D 0 - I - 0x0113E4 04:93D4: FF        .byte $FF   ; 

off_93D5:
- D 0 - I - 0x0113E5 04:93D5: 02        .byte $02   ; 
- D 0 - I - 0x0113E6 04:93D6: C0        .byte $C0   ; 
- D 0 - I - 0x0113E7 04:93D7: 02        .byte $02   ; 
- D 0 - I - 0x0113E8 04:93D8: 01        .byte $01   ; 
- D 0 - I - 0x0113E9 04:93D9: 07        .byte $07   ; 
- D 0 - I - 0x0113EA 04:93DA: 7F        .byte $7F   ; 
- D 0 - I - 0x0113EB 04:93DB: 02        .byte $02   ; 
- D 0 - I - 0x0113EC 04:93DC: 70        .byte $70   ; 
- D 0 - I - 0x0113ED 04:93DD: 02        .byte $02   ; 
- - - - - - 0x0113EE 04:93DE: 02        .byte $02   ; 
- - - - - - 0x0113EF 04:93DF: 03        .byte $03   ; 
- - - - - - 0x0113F0 04:93E0: 7F        .byte $7F   ; 
- D 0 - I - 0x0113F1 04:93E1: FF        .byte $FF   ; 

off_93E2:
- D 0 - I - 0x0113F2 04:93E2: 02        .byte $02   ; 
- D 0 - I - 0x0113F3 04:93E3: C0        .byte $C0   ; 
- D 0 - I - 0x0113F4 04:93E4: 02        .byte $02   ; 
- - - - - - 0x0113F5 04:93E5: 01        .byte $01   ; 
- - - - - - 0x0113F6 04:93E6: 07        .byte $07   ; 
- - - - - - 0x0113F7 04:93E7: 7F        .byte $7F   ; 
- D 0 - I - 0x0113F8 04:93E8: 00        .byte $00   ; 
- D 0 - I - 0x0113F9 04:93E9: 04        .byte $04   ; 
- D 0 - I - 0x0113FA 04:93EA: 00        .byte $00   ; 
- - - - - - 0x0113FB 04:93EB: 00        .byte $00   ; 
- - - - - - 0x0113FC 04:93EC: 06        .byte $06   ; 
- - - - - - 0x0113FD 04:93ED: 7F        .byte $7F   ; 
- D 0 - I - 0x0113FE 04:93EE: FF        .byte $FF   ; 

off_93EF:
- D 0 - I - 0x0113FF 04:93EF: 00        .byte $00   ; 
- D 0 - I - 0x011400 04:93F0: 40        .byte $40   ; 
- D 0 - I - 0x011401 04:93F1: 00        .byte $00   ; 
- - - - - - 0x011402 04:93F2: 00        .byte $00   ; 
- - - - - - 0x011403 04:93F3: 06        .byte $06   ; 
- - - - - - 0x011404 04:93F4: 7F        .byte $7F   ; 
- D 0 - I - 0x011405 04:93F5: 00        .byte $00   ; 
- D 0 - I - 0x011406 04:93F6: 04        .byte $04   ; 
- D 0 - I - 0x011407 04:93F7: 00        .byte $00   ; 
- - - - - - 0x011408 04:93F8: 00        .byte $00   ; 
- - - - - - 0x011409 04:93F9: 06        .byte $06   ; 
- - - - - - 0x01140A 04:93FA: 7F        .byte $7F   ; 
- D 0 - I - 0x01140B 04:93FB: 03        .byte $03   ; 
- D 0 - I - 0x01140C 04:93FC: F8        .byte $F8   ; 
- D 0 - I - 0x01140D 04:93FD: 02        .byte $02   ; 
- - - - - - 0x01140E 04:93FE: 00        .byte $00   ; 
- - - - - - 0x01140F 04:93FF: 06        .byte $06   ; 
- - - - - - 0x011410 04:9400: 7F        .byte $7F   ; 
- D 0 - I - 0x011411 04:9401: FF        .byte $FF   ; 

off_9402:
- D 0 - I - 0x011412 04:9402: 00        .byte $00   ; 
- D 0 - I - 0x011413 04:9403: 70        .byte $70   ; 
- D 0 - I - 0x011414 04:9404: 00        .byte $00   ; 
- D 0 - I - 0x011415 04:9405: 00        .byte $00   ; 
- D 0 - I - 0x011416 04:9406: 07        .byte $07   ; 
- D 0 - I - 0x011417 04:9407: 7F        .byte $7F   ; 
- D 0 - I - 0x011418 04:9408: 02        .byte $02   ; 
- D 0 - I - 0x011419 04:9409: C0        .byte $C0   ; 
- D 0 - I - 0x01141A 04:940A: 02        .byte $02   ; 
- D 0 - I - 0x01141B 04:940B: 02        .byte $02   ; 
- D 0 - I - 0x01141C 04:940C: 06        .byte $06   ; 
- D 0 - I - 0x01141D 04:940D: 7F        .byte $7F   ; 
- D 0 - I - 0x01141E 04:940E: FF        .byte $FF   ; 

off_940F:
- D 0 - I - 0x01141F 04:940F: 02        .byte $02   ; 
- D 0 - I - 0x011420 04:9410: E0        .byte $E0   ; 
- D 0 - I - 0x011421 04:9411: 02        .byte $02   ; 
- D 0 - I - 0x011422 04:9412: 01        .byte $01   ; 
- D 0 - I - 0x011423 04:9413: 08        .byte $08   ; 
- D 0 - I - 0x011424 04:9414: 7F        .byte $7F   ; 
- D 0 - I - 0x011425 04:9415: 02        .byte $02   ; 
- D 0 - I - 0x011426 04:9416: C0        .byte $C0   ; 
- D 0 - I - 0x011427 04:9417: 02        .byte $02   ; 
- - - - - - 0x011428 04:9418: 02        .byte $02   ; 
- - - - - - 0x011429 04:9419: 06        .byte $06   ; 
- - - - - - 0x01142A 04:941A: 7F        .byte $7F   ; 
- D 0 - I - 0x01142B 04:941B: FF        .byte $FF   ; 

off_941C:
- D 0 - I - 0x01142C 04:941C: 02        .byte $02   ; 
- D 0 - I - 0x01142D 04:941D: E0        .byte $E0   ; 
- D 0 - I - 0x01142E 04:941E: 02        .byte $02   ; 
- - - - - - 0x01142F 04:941F: 01        .byte $01   ; 
- - - - - - 0x011430 04:9420: 08        .byte $08   ; 
- - - - - - 0x011431 04:9421: 7F        .byte $7F   ; 
- D 0 - I - 0x011432 04:9422: 00        .byte $00   ; 
- D 0 - I - 0x011433 04:9423: 40        .byte $40   ; 
- D 0 - I - 0x011434 04:9424: 00        .byte $00   ; 
- D 0 - I - 0x011435 04:9425: 02        .byte $02   ; 
- D 0 - I - 0x011436 04:9426: 06        .byte $06   ; 
- D 0 - I - 0x011437 04:9427: 7F        .byte $7F   ; 
- D 0 - I - 0x011438 04:9428: FF        .byte $FF   ; 

off_9429:
- D 0 - I - 0x011439 04:9429: 00        .byte $00   ; 
- D 0 - I - 0x01143A 04:942A: 70        .byte $70   ; 
- D 0 - I - 0x01143B 04:942B: 00        .byte $00   ; 
- D 0 - I - 0x01143C 04:942C: 00        .byte $00   ; 
- D 0 - I - 0x01143D 04:942D: 08        .byte $08   ; 
- D 0 - I - 0x01143E 04:942E: 7F        .byte $7F   ; 
- D 0 - I - 0x01143F 04:942F: 02        .byte $02   ; 
- D 0 - I - 0x011440 04:9430: E0        .byte $E0   ; 
- D 0 - I - 0x011441 04:9431: 02        .byte $02   ; 
- D 0 - I - 0x011442 04:9432: 02        .byte $02   ; 
- D 0 - I - 0x011443 04:9433: 07        .byte $07   ; 
- D 0 - I - 0x011444 04:9434: 7F        .byte $7F   ; 
- D 0 - I - 0x011445 04:9435: FF        .byte $FF   ; 

off_9436:
- D 0 - I - 0x011446 04:9436: 00        .byte $00   ; 
- D 0 - I - 0x011447 04:9437: 70        .byte $70   ; 
- D 0 - I - 0x011448 04:9438: 00        .byte $00   ; 
- D 0 - I - 0x011449 04:9439: 00        .byte $00   ; 
- D 0 - I - 0x01144A 04:943A: 08        .byte $08   ; 
- D 0 - I - 0x01144B 04:943B: 0A        .byte $0A   ; 
- D 0 - I - 0x01144C 04:943C: 00        .byte $00   ; 
- D 0 - I - 0x01144D 04:943D: 40        .byte $40   ; 
- D 0 - I - 0x01144E 04:943E: 00        .byte $00   ; 
- D 0 - I - 0x01144F 04:943F: 02        .byte $02   ; 
- D 0 - I - 0x011450 04:9440: 06        .byte $06   ; 
- D 0 - I - 0x011451 04:9441: 7F        .byte $7F   ; 
- D 0 - I - 0x011452 04:9442: FF        .byte $FF   ; 

off_9443:
- D 0 - I - 0x011453 04:9443: 00        .byte $00   ; 
- D 0 - I - 0x011454 04:9444: 70        .byte $70   ; 
- D 0 - I - 0x011455 04:9445: 00        .byte $00   ; 
- D 0 - I - 0x011456 04:9446: 00        .byte $00   ; 
- D 0 - I - 0x011457 04:9447: 08        .byte $08   ; 
- D 0 - I - 0x011458 04:9448: 0B        .byte $0B   ; 
- D 0 - I - 0x011459 04:9449: 00        .byte $00   ; 
- D 0 - I - 0x01145A 04:944A: 40        .byte $40   ; 
- D 0 - I - 0x01145B 04:944B: 00        .byte $00   ; 
- - - - - - 0x01145C 04:944C: 02        .byte $02   ; 
- - - - - - 0x01145D 04:944D: 06        .byte $06   ; 
- - - - - - 0x01145E 04:944E: 7F        .byte $7F   ; 
- D 0 - I - 0x01145F 04:944F: 03        .byte $03   ; 
- D 0 - I - 0x011460 04:9450: F8        .byte $F8   ; 
- D 0 - I - 0x011461 04:9451: 02        .byte $02   ; 
- D 0 - I - 0x011462 04:9452: 00        .byte $00   ; 
- D 0 - I - 0x011463 04:9453: 08        .byte $08   ; 
- D 0 - I - 0x011464 04:9454: 7F        .byte $7F   ; 
- D 0 - I - 0x011465 04:9455: FF        .byte $FF   ; 

off_9456:
- D 0 - I - 0x011466 04:9456: 00        .byte $00   ; 
- D 0 - I - 0x011467 04:9457: 70        .byte $70   ; 
- D 0 - I - 0x011468 04:9458: 00        .byte $00   ; 
- - - - - - 0x011469 04:9459: 00        .byte $00   ; 
- - - - - - 0x01146A 04:945A: 09        .byte $09   ; 
- - - - - - 0x01146B 04:945B: 7F        .byte $7F   ; 
- D 0 - I - 0x01146C 04:945C: 00        .byte $00   ; 
- D 0 - I - 0x01146D 04:945D: 70        .byte $70   ; 
- D 0 - I - 0x01146E 04:945E: 00        .byte $00   ; 
- - - - - - 0x01146F 04:945F: 00        .byte $00   ; 
- - - - - - 0x011470 04:9460: 09        .byte $09   ; 
- - - - - - 0x011471 04:9461: 7F        .byte $7F   ; 
- D 0 - I - 0x011472 04:9462: 00        .byte $00   ; 
- D 0 - I - 0x011473 04:9463: 70        .byte $70   ; 
- D 0 - I - 0x011474 04:9464: 00        .byte $00   ; 
- - - - - - 0x011475 04:9465: 00        .byte $00   ; 
- - - - - - 0x011476 04:9466: 09        .byte $09   ; 
- - - - - - 0x011477 04:9467: 7F        .byte $7F   ; 
- D 0 - I - 0x011478 04:9468: 03        .byte $03   ; 
- D 0 - I - 0x011479 04:9469: 20        .byte $20   ; 
- D 0 - I - 0x01147A 04:946A: 02        .byte $02   ; 
- D 0 - I - 0x01147B 04:946B: 02        .byte $02   ; 
- D 0 - I - 0x01147C 04:946C: 17        .byte $17   ; 
- D 0 - I - 0x01147D 04:946D: 7F        .byte $7F   ; 
- D 0 - I - 0x01147E 04:946E: FF        .byte $FF   ; 

off_946F:
- D 0 - I - 0x01147F 04:946F: 00        .byte $00   ; 
- D 0 - I - 0x011480 04:9470: 70        .byte $70   ; 
- D 0 - I - 0x011481 04:9471: 00        .byte $00   ; 
- - - - - - 0x011482 04:9472: 00        .byte $00   ; 
- - - - - - 0x011483 04:9473: 09        .byte $09   ; 
- - - - - - 0x011484 04:9474: 7F        .byte $7F   ; 
- D 0 - I - 0x011485 04:9475: 00        .byte $00   ; 
- D 0 - I - 0x011486 04:9476: 70        .byte $70   ; 
- D 0 - I - 0x011487 04:9477: 00        .byte $00   ; 
- - - - - - 0x011488 04:9478: 00        .byte $00   ; 
- - - - - - 0x011489 04:9479: 09        .byte $09   ; 
- - - - - - 0x01148A 04:947A: 7F        .byte $7F   ; 
- D 0 - I - 0x01148B 04:947B: FF        .byte $FF   ; 

off_947C:
- D 0 - I - 0x01148C 04:947C: 00        .byte $00   ; 
- D 0 - I - 0x01148D 04:947D: 70        .byte $70   ; 
- D 0 - I - 0x01148E 04:947E: 00        .byte $00   ; 
- D 0 - I - 0x01148F 04:947F: 00        .byte $00   ; 
- D 0 - I - 0x011490 04:9480: 09        .byte $09   ; 
- D 0 - I - 0x011491 04:9481: 7F        .byte $7F   ; 
- D 0 - I - 0x011492 04:9482: 00        .byte $00   ; 
- D 0 - I - 0x011493 04:9483: 70        .byte $70   ; 
- D 0 - I - 0x011494 04:9484: 00        .byte $00   ; 
- - - - - - 0x011495 04:9485: 00        .byte $00   ; 
- - - - - - 0x011496 04:9486: 09        .byte $09   ; 
- - - - - - 0x011497 04:9487: 8A        .byte $8A   ; 
- D 0 - I - 0x011498 04:9488: FF        .byte $FF   ; 

off_9489:
- D 0 - I - 0x011499 04:9489: 00        .byte $00   ; 
- D 0 - I - 0x01149A 04:948A: 70        .byte $70   ; 
- D 0 - I - 0x01149B 04:948B: 00        .byte $00   ; 
- - - - - - 0x01149C 04:948C: 00        .byte $00   ; 
- - - - - - 0x01149D 04:948D: 09        .byte $09   ; 
- - - - - - 0x01149E 04:948E: 7F        .byte $7F   ; 
- D 0 - I - 0x01149F 04:948F: 00        .byte $00   ; 
- D 0 - I - 0x0114A0 04:9490: 70        .byte $70   ; 
- D 0 - I - 0x0114A1 04:9491: 00        .byte $00   ; 
- D 0 - I - 0x0114A2 04:9492: 00        .byte $00   ; 
- D 0 - I - 0x0114A3 04:9493: 09        .byte $09   ; 
- D 0 - I - 0x0114A4 04:9494: 8B        .byte $8B   ; 
- D 0 - I - 0x0114A5 04:9495: 03        .byte $03   ; 
- D 0 - I - 0x0114A6 04:9496: F8        .byte $F8   ; 
- D 0 - I - 0x0114A7 04:9497: 02        .byte $02   ; 
- D 0 - I - 0x0114A8 04:9498: 02        .byte $02   ; 
- D 0 - I - 0x0114A9 04:9499: 0A        .byte $0A   ; 
- D 0 - I - 0x0114AA 04:949A: 7F        .byte $7F   ; 
- D 0 - I - 0x0114AB 04:949B: FF        .byte $FF   ; 

off_949C:
- D 0 - I - 0x0114AC 04:949C: 00        .byte $00   ; 
- D 0 - I - 0x0114AD 04:949D: 70        .byte $70   ; 
- D 0 - I - 0x0114AE 04:949E: 00        .byte $00   ; 
- D 0 - I - 0x0114AF 04:949F: 00        .byte $00   ; 
- D 0 - I - 0x0114B0 04:94A0: 0A        .byte $0A   ; 
- D 0 - I - 0x0114B1 04:94A1: 7F        .byte $7F   ; 
- D 0 - I - 0x0114B2 04:94A2: 00        .byte $00   ; 
- D 0 - I - 0x0114B3 04:94A3: 70        .byte $70   ; 
- D 0 - I - 0x0114B4 04:94A4: 00        .byte $00   ; 
- - - - - - 0x0114B5 04:94A5: 00        .byte $00   ; 
- - - - - - 0x0114B6 04:94A6: 0A        .byte $0A   ; 
- - - - - - 0x0114B7 04:94A7: 7F        .byte $7F   ; 
- D 0 - I - 0x0114B8 04:94A8: 00        .byte $00   ; 
- D 0 - I - 0x0114B9 04:94A9: 70        .byte $70   ; 
- D 0 - I - 0x0114BA 04:94AA: 00        .byte $00   ; 
- - - - - - 0x0114BB 04:94AB: 00        .byte $00   ; 
- - - - - - 0x0114BC 04:94AC: 0A        .byte $0A   ; 
- - - - - - 0x0114BD 04:94AD: 7F        .byte $7F   ; 
- D 0 - I - 0x0114BE 04:94AE: 03        .byte $03   ; 
- D 0 - I - 0x0114BF 04:94AF: F8        .byte $F8   ; 
- D 0 - I - 0x0114C0 04:94B0: 02        .byte $02   ; 
- D 0 - I - 0x0114C1 04:94B1: 00        .byte $00   ; 
- D 0 - I - 0x0114C2 04:94B2: 0A        .byte $0A   ; 
- D 0 - I - 0x0114C3 04:94B3: 7F        .byte $7F   ; 
- D 0 - I - 0x0114C4 04:94B4: FF        .byte $FF   ; 

off_94B5:
- D 0 - I - 0x0114C5 04:94B5: 00        .byte $00   ; 
- D 0 - I - 0x0114C6 04:94B6: 70        .byte $70   ; 
- D 0 - I - 0x0114C7 04:94B7: 00        .byte $00   ; 
- D 0 - I - 0x0114C8 04:94B8: 00        .byte $00   ; 
- D 0 - I - 0x0114C9 04:94B9: 0A        .byte $0A   ; 
- D 0 - I - 0x0114CA 04:94BA: 7F        .byte $7F   ; 
- D 0 - I - 0x0114CB 04:94BB: 00        .byte $00   ; 
- D 0 - I - 0x0114CC 04:94BC: 70        .byte $70   ; 
- D 0 - I - 0x0114CD 04:94BD: 00        .byte $00   ; 
- D 0 - I - 0x0114CE 04:94BE: 00        .byte $00   ; 
- D 0 - I - 0x0114CF 04:94BF: 0A        .byte $0A   ; 
- D 0 - I - 0x0114D0 04:94C0: 7F        .byte $7F   ; 
- D 0 - I - 0x0114D1 04:94C1: FF        .byte $FF   ; 

off_94C2:
- D 0 - I - 0x0114D2 04:94C2: 00        .byte $00   ; 
- D 0 - I - 0x0114D3 04:94C3: 70        .byte $70   ; 
- D 0 - I - 0x0114D4 04:94C4: 00        .byte $00   ; 
- D 0 - I - 0x0114D5 04:94C5: 00        .byte $00   ; 
- D 0 - I - 0x0114D6 04:94C6: 0A        .byte $0A   ; 
- D 0 - I - 0x0114D7 04:94C7: 7F        .byte $7F   ; 
- D 0 - I - 0x0114D8 04:94C8: 00        .byte $00   ; 
- D 0 - I - 0x0114D9 04:94C9: 70        .byte $70   ; 
- D 0 - I - 0x0114DA 04:94CA: 00        .byte $00   ; 
- D 0 - I - 0x0114DB 04:94CB: 00        .byte $00   ; 
- D 0 - I - 0x0114DC 04:94CC: 0A        .byte $0A   ; 
- D 0 - I - 0x0114DD 04:94CD: 7F        .byte $7F   ; 
- D 0 - I - 0x0114DE 04:94CE: 03        .byte $03   ; 
- D 0 - I - 0x0114DF 04:94CF: F8        .byte $F8   ; 
- D 0 - I - 0x0114E0 04:94D0: 04        .byte $04   ; 
- D 0 - I - 0x0114E1 04:94D1: 00        .byte $00   ; 
- D 0 - I - 0x0114E2 04:94D2: 0A        .byte $0A   ; 
- D 0 - I - 0x0114E3 04:94D3: 7F        .byte $7F   ; 
- D 0 - I - 0x0114E4 04:94D4: FF        .byte $FF   ; 

off_94D5:
- D 0 - I - 0x0114E5 04:94D5: 00        .byte $00   ; 
- D 0 - I - 0x0114E6 04:94D6: 70        .byte $70   ; 
- D 0 - I - 0x0114E7 04:94D7: 00        .byte $00   ; 
- - - - - - 0x0114E8 04:94D8: 00        .byte $00   ; 
- - - - - - 0x0114E9 04:94D9: 0B        .byte $0B   ; 
- - - - - - 0x0114EA 04:94DA: 7F        .byte $7F   ; 
- D 0 - I - 0x0114EB 04:94DB: 00        .byte $00   ; 
- D 0 - I - 0x0114EC 04:94DC: 68        .byte $68   ; 
- D 0 - I - 0x0114ED 04:94DD: 00        .byte $00   ; 
- - - - - - 0x0114EE 04:94DE: 00        .byte $00   ; 
- - - - - - 0x0114EF 04:94DF: 0B        .byte $0B   ; 
- - - - - - 0x0114F0 04:94E0: 7F        .byte $7F   ; 
- D 0 - I - 0x0114F1 04:94E1: 03        .byte $03   ; 
- D 0 - I - 0x0114F2 04:94E2: E0        .byte $E0   ; 
- D 0 - I - 0x0114F3 04:94E3: 01        .byte $01   ; 
- D 0 - I - 0x0114F4 04:94E4: 02        .byte $02   ; 
- D 0 - I - 0x0114F5 04:94E5: 11        .byte $11   ; 
- D 0 - I - 0x0114F6 04:94E6: 7F        .byte $7F   ; 
- D 0 - I - 0x0114F7 04:94E7: 03        .byte $03   ; 
- D 0 - I - 0x0114F8 04:94E8: C0        .byte $C0   ; 
- D 0 - I - 0x0114F9 04:94E9: 01        .byte $01   ; 
- - - - - - 0x0114FA 04:94EA: 02        .byte $02   ; 
- - - - - - 0x0114FB 04:94EB: 10        .byte $10   ; 
- - - - - - 0x0114FC 04:94EC: 7F        .byte $7F   ; 
- D 0 - I - 0x0114FD 04:94ED: FF        .byte $FF   ; 

off_94EE:
- D 0 - I - 0x0114FE 04:94EE: 00        .byte $00   ; 
- D 0 - I - 0x0114FF 04:94EF: 40        .byte $40   ; 
- D 0 - I - 0x011500 04:94F0: 00        .byte $00   ; 
- - - - - - 0x011501 04:94F1: 00        .byte $00   ; 
- - - - - - 0x011502 04:94F2: 0C        .byte $0C   ; 
- - - - - - 0x011503 04:94F3: 7F        .byte $7F   ; 
- D 0 - I - 0x011504 04:94F4: 00        .byte $00   ; 
- D 0 - I - 0x011505 04:94F5: 38        .byte $38   ; 
- D 0 - I - 0x011506 04:94F6: 00        .byte $00   ; 
- - - - - - 0x011507 04:94F7: 00        .byte $00   ; 
- - - - - - 0x011508 04:94F8: 0C        .byte $0C   ; 
- - - - - - 0x011509 04:94F9: 7F        .byte $7F   ; 
- D 0 - I - 0x01150A 04:94FA: 03        .byte $03   ; 
- D 0 - I - 0x01150B 04:94FB: A0        .byte $A0   ; 
- D 0 - I - 0x01150C 04:94FC: 01        .byte $01   ; 
- D 0 - I - 0x01150D 04:94FD: 02        .byte $02   ; 
- D 0 - I - 0x01150E 04:94FE: 13        .byte $13   ; 
- D 0 - I - 0x01150F 04:94FF: 7F        .byte $7F   ; 
- D 0 - I - 0x011510 04:9500: 03        .byte $03   ; 
- D 0 - I - 0x011511 04:9501: 90        .byte $90   ; 
- D 0 - I - 0x011512 04:9502: 01        .byte $01   ; 
- D 0 - I - 0x011513 04:9503: 02        .byte $02   ; 
- D 0 - I - 0x011514 04:9504: 12        .byte $12   ; 
- D 0 - I - 0x011515 04:9505: 7F        .byte $7F   ; 
- D 0 - I - 0x011516 04:9506: FF        .byte $FF   ; 

off_9507:
- D 0 - I - 0x011517 04:9507: 00        .byte $00   ; 
- D 0 - I - 0x011518 04:9508: 40        .byte $40   ; 
- D 0 - I - 0x011519 04:9509: 00        .byte $00   ; 
- - - - - - 0x01151A 04:950A: 00        .byte $00   ; 
- - - - - - 0x01151B 04:950B: 0D        .byte $0D   ; 
- - - - - - 0x01151C 04:950C: 7F        .byte $7F   ; 
- D 0 - I - 0x01151D 04:950D: 00        .byte $00   ; 
- D 0 - I - 0x01151E 04:950E: 38        .byte $38   ; 
- D 0 - I - 0x01151F 04:950F: 00        .byte $00   ; 
- - - - - - 0x011520 04:9510: 00        .byte $00   ; 
- - - - - - 0x011521 04:9511: 0D        .byte $0D   ; 
- - - - - - 0x011522 04:9512: 7F        .byte $7F   ; 
- D 0 - I - 0x011523 04:9513: 03        .byte $03   ; 
- D 0 - I - 0x011524 04:9514: D0        .byte $D0   ; 
- D 0 - I - 0x011525 04:9515: 01        .byte $01   ; 
- D 0 - I - 0x011526 04:9516: 02        .byte $02   ; 
- D 0 - I - 0x011527 04:9517: 14        .byte $14   ; 
- D 0 - I - 0x011528 04:9518: 7F        .byte $7F   ; 
- D 0 - I - 0x011529 04:9519: 03        .byte $03   ; 
- D 0 - I - 0x01152A 04:951A: C0        .byte $C0   ; 
- D 0 - I - 0x01152B 04:951B: 01        .byte $01   ; 
- D 0 - I - 0x01152C 04:951C: 02        .byte $02   ; 
- D 0 - I - 0x01152D 04:951D: 13        .byte $13   ; 
- D 0 - I - 0x01152E 04:951E: 7F        .byte $7F   ; 
- D 0 - I - 0x01152F 04:951F: FF        .byte $FF   ; 

off_9520:
- D 0 - I - 0x011530 04:9520: 00        .byte $00   ; 
- D 0 - I - 0x011531 04:9521: 40        .byte $40   ; 
- D 0 - I - 0x011532 04:9522: 00        .byte $00   ; 
- - - - - - 0x011533 04:9523: 00        .byte $00   ; 
- - - - - - 0x011534 04:9524: 0E        .byte $0E   ; 
- - - - - - 0x011535 04:9525: 7F        .byte $7F   ; 
- D 0 - I - 0x011536 04:9526: 00        .byte $00   ; 
- D 0 - I - 0x011537 04:9527: 38        .byte $38   ; 
- D 0 - I - 0x011538 04:9528: 00        .byte $00   ; 
- - - - - - 0x011539 04:9529: 00        .byte $00   ; 
- - - - - - 0x01153A 04:952A: 0E        .byte $0E   ; 
- - - - - - 0x01153B 04:952B: 7F        .byte $7F   ; 
- D 0 - I - 0x01153C 04:952C: 03        .byte $03   ; 
- D 0 - I - 0x01153D 04:952D: 00        .byte $00   ; 
- D 0 - I - 0x01153E 04:952E: 02        .byte $02   ; 
- D 0 - I - 0x01153F 04:952F: 02        .byte $02   ; 
- D 0 - I - 0x011540 04:9530: 15        .byte $15   ; 
- D 0 - I - 0x011541 04:9531: 7F        .byte $7F   ; 
- D 0 - I - 0x011542 04:9532: 03        .byte $03   ; 
- D 0 - I - 0x011543 04:9533: E0        .byte $E0   ; 
- D 0 - I - 0x011544 04:9534: 01        .byte $01   ; 
- D 0 - I - 0x011545 04:9535: 02        .byte $02   ; 
- D 0 - I - 0x011546 04:9536: 14        .byte $14   ; 
- D 0 - I - 0x011547 04:9537: 7F        .byte $7F   ; 
- D 0 - I - 0x011548 04:9538: FF        .byte $FF   ; 

off_9539:
- D 0 - I - 0x011549 04:9539: 00        .byte $00   ; 
- D 0 - I - 0x01154A 04:953A: 40        .byte $40   ; 
- D 0 - I - 0x01154B 04:953B: 00        .byte $00   ; 
- - - - - - 0x01154C 04:953C: 00        .byte $00   ; 
- - - - - - 0x01154D 04:953D: 0F        .byte $0F   ; 
- - - - - - 0x01154E 04:953E: 7F        .byte $7F   ; 
- D 0 - I - 0x01154F 04:953F: 00        .byte $00   ; 
- D 0 - I - 0x011550 04:9540: 38        .byte $38   ; 
- D 0 - I - 0x011551 04:9541: 00        .byte $00   ; 
- - - - - - 0x011552 04:9542: 00        .byte $00   ; 
- - - - - - 0x011553 04:9543: 0F        .byte $0F   ; 
- - - - - - 0x011554 04:9544: 7F        .byte $7F   ; 
- D 0 - I - 0x011555 04:9545: 03        .byte $03   ; 
- D 0 - I - 0x011556 04:9546: 20        .byte $20   ; 
- D 0 - I - 0x011557 04:9547: 02        .byte $02   ; 
- D 0 - I - 0x011558 04:9548: 02        .byte $02   ; 
- D 0 - I - 0x011559 04:9549: 16        .byte $16   ; 
- D 0 - I - 0x01155A 04:954A: 7F        .byte $7F   ; 
- D 0 - I - 0x01155B 04:954B: 03        .byte $03   ; 
- D 0 - I - 0x01155C 04:954C: 10        .byte $10   ; 
- D 0 - I - 0x01155D 04:954D: 02        .byte $02   ; 
- D 0 - I - 0x01155E 04:954E: 02        .byte $02   ; 
- D 0 - I - 0x01155F 04:954F: 15        .byte $15   ; 
- D 0 - I - 0x011560 04:9550: 7F        .byte $7F   ; 
- D 0 - I - 0x011561 04:9551: FF        .byte $FF   ; 

off_9552:
- - - - - - 0x011562 04:9552: 01        .byte $01   ; 
- - - - - - 0x011563 04:9553: C0        .byte $C0   ; 
- - - - - - 0x011564 04:9554: FE        .byte $FE   ; 
- - - - - - 0x011565 04:9555: 01        .byte $01   ; 
- - - - - - 0x011566 04:9556: 02        .byte $02   ; 
- - - - - - 0x011567 04:9557: 7F        .byte $7F   ; 
- - - - - - 0x011568 04:9558: 00        .byte $00   ; 
- - - - - - 0x011569 04:9559: 68        .byte $68   ; 
- - - - - - 0x01156A 04:955A: 00        .byte $00   ; 
- - - - - - 0x01156B 04:955B: 00        .byte $00   ; 
- - - - - - 0x01156C 04:955C: 10        .byte $10   ; 
- - - - - - 0x01156D 04:955D: 7F        .byte $7F   ; 
- - - - - - 0x01156E 04:955E: FF        .byte $FF   ; 

off_955F:
- D 0 - I - 0x01156F 04:955F: 00        .byte $00   ; 
- D 0 - I - 0x011570 04:9560: 70        .byte $70   ; 
- D 0 - I - 0x011571 04:9561: 00        .byte $00   ; 
- - - - - - 0x011572 04:9562: 00        .byte $00   ; 
- - - - - - 0x011573 04:9563: 10        .byte $10   ; 
- - - - - - 0x011574 04:9564: 7F        .byte $7F   ; 
- D 0 - I - 0x011575 04:9565: 00        .byte $00   ; 
- D 0 - I - 0x011576 04:9566: 68        .byte $68   ; 
- D 0 - I - 0x011577 04:9567: 00        .byte $00   ; 
- - - - - - 0x011578 04:9568: 00        .byte $00   ; 
- - - - - - 0x011579 04:9569: 10        .byte $10   ; 
- - - - - - 0x01157A 04:956A: 7F        .byte $7F   ; 
- D 0 - I - 0x01157B 04:956B: 03        .byte $03   ; 
- D 0 - I - 0x01157C 04:956C: C0        .byte $C0   ; 
- D 0 - I - 0x01157D 04:956D: 01        .byte $01   ; 
- D 0 - I - 0x01157E 04:956E: 01        .byte $01   ; 
- D 0 - I - 0x01157F 04:956F: 0B        .byte $0B   ; 
- D 0 - I - 0x011580 04:9570: 7F        .byte $7F   ; 
- D 0 - I - 0x011581 04:9571: FF        .byte $FF   ; 

off_9572:
- D 0 - I - 0x011582 04:9572: 00        .byte $00   ; 
- D 0 - I - 0x011583 04:9573: 70        .byte $70   ; 
- D 0 - I - 0x011584 04:9574: 00        .byte $00   ; 
- - - - - - 0x011585 04:9575: 00        .byte $00   ; 
- - - - - - 0x011586 04:9576: 11        .byte $11   ; 
- - - - - - 0x011587 04:9577: 7F        .byte $7F   ; 
- D 0 - I - 0x011588 04:9578: 00        .byte $00   ; 
- D 0 - I - 0x011589 04:9579: 68        .byte $68   ; 
- D 0 - I - 0x01158A 04:957A: 00        .byte $00   ; 
- - - - - - 0x01158B 04:957B: 00        .byte $00   ; 
- - - - - - 0x01158C 04:957C: 11        .byte $11   ; 
- - - - - - 0x01158D 04:957D: 7F        .byte $7F   ; 
- D 0 - I - 0x01158E 04:957E: 00        .byte $00   ; 
- D 0 - I - 0x01158F 04:957F: 70        .byte $70   ; 
- D 0 - I - 0x011590 04:9580: 00        .byte $00   ; 
- - - - - - 0x011591 04:9581: 00        .byte $00   ; 
- - - - - - 0x011592 04:9582: 11        .byte $11   ; 
- - - - - - 0x011593 04:9583: 7F        .byte $7F   ; 
- D 0 - I - 0x011594 04:9584: 03        .byte $03   ; 
- D 0 - I - 0x011595 04:9585: E0        .byte $E0   ; 
- D 0 - I - 0x011596 04:9586: 01        .byte $01   ; 
- - - - - - 0x011597 04:9587: 01        .byte $01   ; 
- - - - - - 0x011598 04:9588: 0B        .byte $0B   ; 
- - - - - - 0x011599 04:9589: 7F        .byte $7F   ; 
- D 0 - I - 0x01159A 04:958A: FF        .byte $FF   ; 

off_958B:
- D 0 - I - 0x01159B 04:958B: 02        .byte $02   ; 
- D 0 - I - 0x01159C 04:958C: 70        .byte $70   ; 
- D 0 - I - 0x01159D 04:958D: 02        .byte $02   ; 
- D 0 - I - 0x01159E 04:958E: 01        .byte $01   ; 
- D 0 - I - 0x01159F 04:958F: 06        .byte $06   ; 
- D 0 - I - 0x0115A0 04:9590: 7F        .byte $7F   ; 
- D 0 - I - 0x0115A1 04:9591: 00        .byte $00   ; 
- D 0 - I - 0x0115A2 04:9592: 68        .byte $68   ; 
- D 0 - I - 0x0115A3 04:9593: 00        .byte $00   ; 
- - - - - - 0x0115A4 04:9594: 00        .byte $00   ; 
- - - - - - 0x0115A5 04:9595: 11        .byte $11   ; 
- - - - - - 0x0115A6 04:9596: 7F        .byte $7F   ; 
- D 0 - I - 0x0115A7 04:9597: FF        .byte $FF   ; 

off_9598:
- D 0 - I - 0x0115A8 04:9598: 01        .byte $01   ; 
- D 0 - I - 0x0115A9 04:9599: C0        .byte $C0   ; 
- D 0 - I - 0x0115AA 04:959A: FE        .byte $FE   ; 
- - - - - - 0x0115AB 04:959B: 01        .byte $01   ; 
- - - - - - 0x0115AC 04:959C: 02        .byte $02   ; 
- - - - - - 0x0115AD 04:959D: 7F        .byte $7F   ; 
- D 0 - I - 0x0115AE 04:959E: 00        .byte $00   ; 
- D 0 - I - 0x0115AF 04:959F: 38        .byte $38   ; 
- D 0 - I - 0x0115B0 04:95A0: 00        .byte $00   ; 
- D 0 - I - 0x0115B1 04:95A1: 00        .byte $00   ; 
- D 0 - I - 0x0115B2 04:95A2: 12        .byte $12   ; 
- D 0 - I - 0x0115B3 04:95A3: 7F        .byte $7F   ; 
- D 0 - I - 0x0115B4 04:95A4: FF        .byte $FF   ; 

off_95A5:
- D 0 - I - 0x0115B5 04:95A5: 00        .byte $00   ; 
- D 0 - I - 0x0115B6 04:95A6: 40        .byte $40   ; 
- D 0 - I - 0x0115B7 04:95A7: 00        .byte $00   ; 
- - - - - - 0x0115B8 04:95A8: 00        .byte $00   ; 
- - - - - - 0x0115B9 04:95A9: 12        .byte $12   ; 
- - - - - - 0x0115BA 04:95AA: 7F        .byte $7F   ; 
- D 0 - I - 0x0115BB 04:95AB: 00        .byte $00   ; 
- D 0 - I - 0x0115BC 04:95AC: 38        .byte $38   ; 
- D 0 - I - 0x0115BD 04:95AD: 00        .byte $00   ; 
- - - - - - 0x0115BE 04:95AE: 00        .byte $00   ; 
- - - - - - 0x0115BF 04:95AF: 12        .byte $12   ; 
- - - - - - 0x0115C0 04:95B0: 7F        .byte $7F   ; 
- D 0 - I - 0x0115C1 04:95B1: 03        .byte $03   ; 
- D 0 - I - 0x0115C2 04:95B2: 90        .byte $90   ; 
- D 0 - I - 0x0115C3 04:95B3: 01        .byte $01   ; 
- D 0 - I - 0x0115C4 04:95B4: 01        .byte $01   ; 
- D 0 - I - 0x0115C5 04:95B5: 0C        .byte $0C   ; 
- D 0 - I - 0x0115C6 04:95B6: 7F        .byte $7F   ; 
- D 0 - I - 0x0115C7 04:95B7: FF        .byte $FF   ; 

off_95B8:
- D 0 - I - 0x0115C8 04:95B8: 00        .byte $00   ; 
- D 0 - I - 0x0115C9 04:95B9: 40        .byte $40   ; 
- D 0 - I - 0x0115CA 04:95BA: 00        .byte $00   ; 
- - - - - - 0x0115CB 04:95BB: 00        .byte $00   ; 
- - - - - - 0x0115CC 04:95BC: 13        .byte $13   ; 
- - - - - - 0x0115CD 04:95BD: 7F        .byte $7F   ; 
- D 0 - I - 0x0115CE 04:95BE: 00        .byte $00   ; 
- D 0 - I - 0x0115CF 04:95BF: 38        .byte $38   ; 
- D 0 - I - 0x0115D0 04:95C0: 00        .byte $00   ; 
- - - - - - 0x0115D1 04:95C1: 00        .byte $00   ; 
- - - - - - 0x0115D2 04:95C2: 13        .byte $13   ; 
- - - - - - 0x0115D3 04:95C3: 7F        .byte $7F   ; 
- D 0 - I - 0x0115D4 04:95C4: 03        .byte $03   ; 
- D 0 - I - 0x0115D5 04:95C5: C0        .byte $C0   ; 
- D 0 - I - 0x0115D6 04:95C6: 01        .byte $01   ; 
- D 0 - I - 0x0115D7 04:95C7: 01        .byte $01   ; 
- D 0 - I - 0x0115D8 04:95C8: 0D        .byte $0D   ; 
- D 0 - I - 0x0115D9 04:95C9: 7F        .byte $7F   ; 
- D 0 - I - 0x0115DA 04:95CA: 03        .byte $03   ; 
- D 0 - I - 0x0115DB 04:95CB: A0        .byte $A0   ; 
- D 0 - I - 0x0115DC 04:95CC: 01        .byte $01   ; 
- - - - - - 0x0115DD 04:95CD: 01        .byte $01   ; 
- - - - - - 0x0115DE 04:95CE: 0C        .byte $0C   ; 
- - - - - - 0x0115DF 04:95CF: 7F        .byte $7F   ; 
- D 0 - I - 0x0115E0 04:95D0: FF        .byte $FF   ; 

off_95D1:
- D 0 - I - 0x0115E1 04:95D1: 00        .byte $00   ; 
- D 0 - I - 0x0115E2 04:95D2: 40        .byte $40   ; 
- D 0 - I - 0x0115E3 04:95D3: 00        .byte $00   ; 
- - - - - - 0x0115E4 04:95D4: 00        .byte $00   ; 
- - - - - - 0x0115E5 04:95D5: 14        .byte $14   ; 
- - - - - - 0x0115E6 04:95D6: 7F        .byte $7F   ; 
- D 0 - I - 0x0115E7 04:95D7: 00        .byte $00   ; 
- D 0 - I - 0x0115E8 04:95D8: 38        .byte $38   ; 
- D 0 - I - 0x0115E9 04:95D9: 00        .byte $00   ; 
- - - - - - 0x0115EA 04:95DA: 00        .byte $00   ; 
- - - - - - 0x0115EB 04:95DB: 14        .byte $14   ; 
- - - - - - 0x0115EC 04:95DC: 7F        .byte $7F   ; 
- D 0 - I - 0x0115ED 04:95DD: 03        .byte $03   ; 
- D 0 - I - 0x0115EE 04:95DE: E0        .byte $E0   ; 
- D 0 - I - 0x0115EF 04:95DF: 01        .byte $01   ; 
- D 0 - I - 0x0115F0 04:95E0: 01        .byte $01   ; 
- D 0 - I - 0x0115F1 04:95E1: 0E        .byte $0E   ; 
- D 0 - I - 0x0115F2 04:95E2: 7F        .byte $7F   ; 
- D 0 - I - 0x0115F3 04:95E3: 03        .byte $03   ; 
- D 0 - I - 0x0115F4 04:95E4: D0        .byte $D0   ; 
- D 0 - I - 0x0115F5 04:95E5: 01        .byte $01   ; 
- - - - - - 0x0115F6 04:95E6: 01        .byte $01   ; 
- - - - - - 0x0115F7 04:95E7: 0D        .byte $0D   ; 
- - - - - - 0x0115F8 04:95E8: 7F        .byte $7F   ; 
- D 0 - I - 0x0115F9 04:95E9: FF        .byte $FF   ; 

off_95EA:
- D 0 - I - 0x0115FA 04:95EA: 00        .byte $00   ; 
- D 0 - I - 0x0115FB 04:95EB: 40        .byte $40   ; 
- D 0 - I - 0x0115FC 04:95EC: 00        .byte $00   ; 
- - - - - - 0x0115FD 04:95ED: 00        .byte $00   ; 
- - - - - - 0x0115FE 04:95EE: 15        .byte $15   ; 
- - - - - - 0x0115FF 04:95EF: 7F        .byte $7F   ; 
- D 0 - I - 0x011600 04:95F0: 00        .byte $00   ; 
- D 0 - I - 0x011601 04:95F1: 38        .byte $38   ; 
- D 0 - I - 0x011602 04:95F2: 00        .byte $00   ; 
- - - - - - 0x011603 04:95F3: 00        .byte $00   ; 
- - - - - - 0x011604 04:95F4: 15        .byte $15   ; 
- - - - - - 0x011605 04:95F5: 7F        .byte $7F   ; 
- D 0 - I - 0x011606 04:95F6: 03        .byte $03   ; 
- D 0 - I - 0x011607 04:95F7: 10        .byte $10   ; 
- D 0 - I - 0x011608 04:95F8: 02        .byte $02   ; 
- D 0 - I - 0x011609 04:95F9: 01        .byte $01   ; 
- D 0 - I - 0x01160A 04:95FA: 0F        .byte $0F   ; 
- D 0 - I - 0x01160B 04:95FB: 7F        .byte $7F   ; 
- D 0 - I - 0x01160C 04:95FC: 03        .byte $03   ; 
- D 0 - I - 0x01160D 04:95FD: 00        .byte $00   ; 
- D 0 - I - 0x01160E 04:95FE: 02        .byte $02   ; 
- - - - - - 0x01160F 04:95FF: 01        .byte $01   ; 
- - - - - - 0x011610 04:9600: 0E        .byte $0E   ; 
- - - - - - 0x011611 04:9601: 7F        .byte $7F   ; 
- D 0 - I - 0x011612 04:9602: FF        .byte $FF   ; 

off_9603:
- D 0 - I - 0x011613 04:9603: 00        .byte $00   ; 
- D 0 - I - 0x011614 04:9604: 40        .byte $40   ; 
- D 0 - I - 0x011615 04:9605: 00        .byte $00   ; 
- - - - - - 0x011616 04:9606: 00        .byte $00   ; 
- - - - - - 0x011617 04:9607: 16        .byte $16   ; 
- - - - - - 0x011618 04:9608: 7F        .byte $7F   ; 
- D 0 - I - 0x011619 04:9609: 00        .byte $00   ; 
- D 0 - I - 0x01161A 04:960A: 38        .byte $38   ; 
- D 0 - I - 0x01161B 04:960B: 00        .byte $00   ; 
- - - - - - 0x01161C 04:960C: 00        .byte $00   ; 
- - - - - - 0x01161D 04:960D: 16        .byte $16   ; 
- - - - - - 0x01161E 04:960E: 7F        .byte $7F   ; 
- D 0 - I - 0x01161F 04:960F: 00        .byte $00   ; 
- D 0 - I - 0x011620 04:9610: 40        .byte $40   ; 
- D 0 - I - 0x011621 04:9611: 00        .byte $00   ; 
- - - - - - 0x011622 04:9612: 00        .byte $00   ; 
- - - - - - 0x011623 04:9613: 16        .byte $16   ; 
- - - - - - 0x011624 04:9614: 7F        .byte $7F   ; 
- D 0 - I - 0x011625 04:9615: 03        .byte $03   ; 
- D 0 - I - 0x011626 04:9616: 20        .byte $20   ; 
- D 0 - I - 0x011627 04:9617: 02        .byte $02   ; 
- - - - - - 0x011628 04:9618: 01        .byte $01   ; 
- - - - - - 0x011629 04:9619: 0F        .byte $0F   ; 
- - - - - - 0x01162A 04:961A: 7F        .byte $7F   ; 
- D 0 - I - 0x01162B 04:961B: FF        .byte $FF   ; 

off_961C:
- D 0 - I - 0x01162C 04:961C: 02        .byte $02   ; 
- D 0 - I - 0x01162D 04:961D: 70        .byte $70   ; 
- D 0 - I - 0x01162E 04:961E: 02        .byte $02   ; 
- D 0 - I - 0x01162F 04:961F: 01        .byte $01   ; 
- D 0 - I - 0x011630 04:9620: 06        .byte $06   ; 
- D 0 - I - 0x011631 04:9621: 7F        .byte $7F   ; 
- D 0 - I - 0x011632 04:9622: 00        .byte $00   ; 
- D 0 - I - 0x011633 04:9623: 38        .byte $38   ; 
- D 0 - I - 0x011634 04:9624: 00        .byte $00   ; 
- - - - - - 0x011635 04:9625: 00        .byte $00   ; 
- - - - - - 0x011636 04:9626: 16        .byte $16   ; 
- - - - - - 0x011637 04:9627: 7F        .byte $7F   ; 
- D 0 - I - 0x011638 04:9628: FF        .byte $FF   ; 

off_9629:
- D 0 - I - 0x011639 04:9629: 00        .byte $00   ; 
- D 0 - I - 0x01163A 04:962A: 70        .byte $70   ; 
- D 0 - I - 0x01163B 04:962B: 00        .byte $00   ; 
- - - - - - 0x01163C 04:962C: 00        .byte $00   ; 
- - - - - - 0x01163D 04:962D: 17        .byte $17   ; 
- - - - - - 0x01163E 04:962E: 7F        .byte $7F   ; 
- D 0 - I - 0x01163F 04:962F: 00        .byte $00   ; 
- D 0 - I - 0x011640 04:9630: 00        .byte $00   ; 
- D 0 - I - 0x011641 04:9631: 00        .byte $00   ; 
- - - - - - 0x011642 04:9632: 00        .byte $00   ; 
- - - - - - 0x011643 04:9633: 17        .byte $17   ; 
- - - - - - 0x011644 04:9634: 7F        .byte $7F   ; 
- D 0 - I - 0x011645 04:9635: FF        .byte $FF   ; 

off_9636:
- D 0 - I - 0x011646 04:9636: 00        .byte $00   ; 
- D 0 - I - 0x011647 04:9637: 70        .byte $70   ; 
- D 0 - I - 0x011648 04:9638: 00        .byte $00   ; 
- - - - - - 0x011649 04:9639: 00        .byte $00   ; 
- - - - - - 0x01164A 04:963A: 18        .byte $18   ; 
- - - - - - 0x01164B 04:963B: 7F        .byte $7F   ; 
- D 0 - I - 0x01164C 04:963C: 00        .byte $00   ; 
- D 0 - I - 0x01164D 04:963D: 70        .byte $70   ; 
- D 0 - I - 0x01164E 04:963E: 00        .byte $00   ; 
- D 0 - I - 0x01164F 04:963F: 00        .byte $00   ; 
- D 0 - I - 0x011650 04:9640: 18        .byte $18   ; 
- D 0 - I - 0x011651 04:9641: 7F        .byte $7F   ; 
- D 0 - I - 0x011652 04:9642: 03        .byte $03   ; 
- D 0 - I - 0x011653 04:9643: 20        .byte $20   ; 
- D 0 - I - 0x011654 04:9644: 04        .byte $04   ; 
- D 0 - I - 0x011655 04:9645: 02        .byte $02   ; 
- D 0 - I - 0x011656 04:9646: 1E        .byte $1E   ; 
- D 0 - I - 0x011657 04:9647: 7F        .byte $7F   ; 
- D 0 - I - 0x011658 04:9648: 03        .byte $03   ; 
- D 0 - I - 0x011659 04:9649: 08        .byte $08   ; 
- D 0 - I - 0x01165A 04:964A: 04        .byte $04   ; 
- D 0 - I - 0x01165B 04:964B: 02        .byte $02   ; 
- D 0 - I - 0x01165C 04:964C: 0A        .byte $0A   ; 
- D 0 - I - 0x01165D 04:964D: 7F        .byte $7F   ; 
- D 0 - I - 0x01165E 04:964E: FF        .byte $FF   ; 

off_964F:
- D 0 - I - 0x01165F 04:964F: 00        .byte $00   ; 
- D 0 - I - 0x011660 04:9650: 70        .byte $70   ; 
- D 0 - I - 0x011661 04:9651: 00        .byte $00   ; 
- D 0 - I - 0x011662 04:9652: 00        .byte $00   ; 
- D 0 - I - 0x011663 04:9653: 19        .byte $19   ; 
- D 0 - I - 0x011664 04:9654: 7F        .byte $7F   ; 
- D 0 - I - 0x011665 04:9655: 00        .byte $00   ; 
- D 0 - I - 0x011666 04:9656: 70        .byte $70   ; 
- D 0 - I - 0x011667 04:9657: 00        .byte $00   ; 
- D 0 - I - 0x011668 04:9658: 00        .byte $00   ; 
- D 0 - I - 0x011669 04:9659: 19        .byte $19   ; 
- D 0 - I - 0x01166A 04:965A: 7F        .byte $7F   ; 
- D 0 - I - 0x01166B 04:965B: 03        .byte $03   ; 
- D 0 - I - 0x01166C 04:965C: 5C        .byte $5C   ; 
- D 0 - I - 0x01166D 04:965D: 04        .byte $04   ; 
- D 0 - I - 0x01166E 04:965E: 02        .byte $02   ; 
- D 0 - I - 0x01166F 04:965F: 1F        .byte $1F   ; 
- D 0 - I - 0x011670 04:9660: 7F        .byte $7F   ; 
- D 0 - I - 0x011671 04:9661: 03        .byte $03   ; 
- D 0 - I - 0x011672 04:9662: 30        .byte $30   ; 
- D 0 - I - 0x011673 04:9663: 04        .byte $04   ; 
- D 0 - I - 0x011674 04:9664: 02        .byte $02   ; 
- D 0 - I - 0x011675 04:9665: 1E        .byte $1E   ; 
- D 0 - I - 0x011676 04:9666: 7F        .byte $7F   ; 
- D 0 - I - 0x011677 04:9667: FF        .byte $FF   ; 

off_9668:
- D 0 - I - 0x011678 04:9668: 00        .byte $00   ; 
- D 0 - I - 0x011679 04:9669: 70        .byte $70   ; 
- D 0 - I - 0x01167A 04:966A: 00        .byte $00   ; 
- D 0 - I - 0x01167B 04:966B: 00        .byte $00   ; 
- D 0 - I - 0x01167C 04:966C: 1A        .byte $1A   ; 
- D 0 - I - 0x01167D 04:966D: 7F        .byte $7F   ; 
- D 0 - I - 0x01167E 04:966E: 00        .byte $00   ; 
- D 0 - I - 0x01167F 04:966F: 70        .byte $70   ; 
- D 0 - I - 0x011680 04:9670: 00        .byte $00   ; 
- - - - - - 0x011681 04:9671: 00        .byte $00   ; 
- - - - - - 0x011682 04:9672: 1A        .byte $1A   ; 
- - - - - - 0x011683 04:9673: 7F        .byte $7F   ; 
- D 0 - I - 0x011684 04:9674: 03        .byte $03   ; 
- D 0 - I - 0x011685 04:9675: D8        .byte $D8   ; 
- D 0 - I - 0x011686 04:9676: 04        .byte $04   ; 
- - - - - - 0x011687 04:9677: 02        .byte $02   ; 
- - - - - - 0x011688 04:9678: 0A        .byte $0A   ; 
- - - - - - 0x011689 04:9679: 7F        .byte $7F   ; 
- D 0 - I - 0x01168A 04:967A: 03        .byte $03   ; 
- D 0 - I - 0x01168B 04:967B: 70        .byte $70   ; 
- D 0 - I - 0x01168C 04:967C: 04        .byte $04   ; 
- D 0 - I - 0x01168D 04:967D: 02        .byte $02   ; 
- D 0 - I - 0x01168E 04:967E: 1F        .byte $1F   ; 
- D 0 - I - 0x01168F 04:967F: 7F        .byte $7F   ; 
- D 0 - I - 0x011690 04:9680: FF        .byte $FF   ; 

off_9681:
- D 0 - I - 0x011691 04:9681: 00        .byte $00   ; 
- D 0 - I - 0x011692 04:9682: 70        .byte $70   ; 
- D 0 - I - 0x011693 04:9683: 00        .byte $00   ; 
- D 0 - I - 0x011694 04:9684: 00        .byte $00   ; 
- D 0 - I - 0x011695 04:9685: 1B        .byte $1B   ; 
- D 0 - I - 0x011696 04:9686: 7F        .byte $7F   ; 
- D 0 - I - 0x011697 04:9687: 00        .byte $00   ; 
- D 0 - I - 0x011698 04:9688: 70        .byte $70   ; 
- D 0 - I - 0x011699 04:9689: 00        .byte $00   ; 
- - - - - - 0x01169A 04:968A: 00        .byte $00   ; 
- - - - - - 0x01169B 04:968B: 1B        .byte $1B   ; 
- - - - - - 0x01169C 04:968C: 7F        .byte $7F   ; 
- D 0 - I - 0x01169D 04:968D: 03        .byte $03   ; 
- D 0 - I - 0x01169E 04:968E: A0        .byte $A0   ; 
- D 0 - I - 0x01169F 04:968F: 04        .byte $04   ; 
- D 0 - I - 0x0116A0 04:9690: 02        .byte $02   ; 
- D 0 - I - 0x0116A1 04:9691: 1A        .byte $1A   ; 
- D 0 - I - 0x0116A2 04:9692: 7F        .byte $7F   ; 
- D 0 - I - 0x0116A3 04:9693: 03        .byte $03   ; 
- D 0 - I - 0x0116A4 04:9694: 60        .byte $60   ; 
- D 0 - I - 0x0116A5 04:9695: 04        .byte $04   ; 
- D 0 - I - 0x0116A6 04:9696: 02        .byte $02   ; 
- D 0 - I - 0x0116A7 04:9697: 19        .byte $19   ; 
- D 0 - I - 0x0116A8 04:9698: 7F        .byte $7F   ; 
- D 0 - I - 0x0116A9 04:9699: FF        .byte $FF   ; 

off_969A:
- D 0 - I - 0x0116AA 04:969A: 00        .byte $00   ; 
- D 0 - I - 0x0116AB 04:969B: 70        .byte $70   ; 
- D 0 - I - 0x0116AC 04:969C: 00        .byte $00   ; 
- D 0 - I - 0x0116AD 04:969D: 00        .byte $00   ; 
- D 0 - I - 0x0116AE 04:969E: 1C        .byte $1C   ; 
- D 0 - I - 0x0116AF 04:969F: 7F        .byte $7F   ; 
- D 0 - I - 0x0116B0 04:96A0: 00        .byte $00   ; 
- D 0 - I - 0x0116B1 04:96A1: 70        .byte $70   ; 
- D 0 - I - 0x0116B2 04:96A2: 00        .byte $00   ; 
- - - - - - 0x0116B3 04:96A3: 00        .byte $00   ; 
- - - - - - 0x0116B4 04:96A4: 1C        .byte $1C   ; 
- - - - - - 0x0116B5 04:96A5: 7F        .byte $7F   ; 
- D 0 - I - 0x0116B6 04:96A6: 03        .byte $03   ; 
- D 0 - I - 0x0116B7 04:96A7: 80        .byte $80   ; 
- D 0 - I - 0x0116B8 04:96A8: 04        .byte $04   ; 
- D 0 - I - 0x0116B9 04:96A9: 02        .byte $02   ; 
- D 0 - I - 0x0116BA 04:96AA: 1B        .byte $1B   ; 
- D 0 - I - 0x0116BB 04:96AB: 7F        .byte $7F   ; 
- D 0 - I - 0x0116BC 04:96AC: 03        .byte $03   ; 
- D 0 - I - 0x0116BD 04:96AD: 60        .byte $60   ; 
- D 0 - I - 0x0116BE 04:96AE: 04        .byte $04   ; 
- D 0 - I - 0x0116BF 04:96AF: 02        .byte $02   ; 
- D 0 - I - 0x0116C0 04:96B0: 19        .byte $19   ; 
- D 0 - I - 0x0116C1 04:96B1: 7F        .byte $7F   ; 
- D 0 - I - 0x0116C2 04:96B2: FF        .byte $FF   ; 

off_96B3:
- D 0 - I - 0x0116C3 04:96B3: 00        .byte $00   ; 
- D 0 - I - 0x0116C4 04:96B4: 70        .byte $70   ; 
- D 0 - I - 0x0116C5 04:96B5: 00        .byte $00   ; 
- D 0 - I - 0x0116C6 04:96B6: 00        .byte $00   ; 
- D 0 - I - 0x0116C7 04:96B7: 1D        .byte $1D   ; 
- D 0 - I - 0x0116C8 04:96B8: 7F        .byte $7F   ; 
- D 0 - I - 0x0116C9 04:96B9: 00        .byte $00   ; 
- D 0 - I - 0x0116CA 04:96BA: 70        .byte $70   ; 
- D 0 - I - 0x0116CB 04:96BB: 00        .byte $00   ; 
- - - - - - 0x0116CC 04:96BC: 00        .byte $00   ; 
- - - - - - 0x0116CD 04:96BD: 1D        .byte $1D   ; 
- - - - - - 0x0116CE 04:96BE: 7F        .byte $7F   ; 
- D 0 - I - 0x0116CF 04:96BF: 03        .byte $03   ; 
- D 0 - I - 0x0116D0 04:96C0: F0        .byte $F0   ; 
- D 0 - I - 0x0116D1 04:96C1: 04        .byte $04   ; 
- D 0 - I - 0x0116D2 04:96C2: 02        .byte $02   ; 
- D 0 - I - 0x0116D3 04:96C3: 0A        .byte $0A   ; 
- D 0 - I - 0x0116D4 04:96C4: 7F        .byte $7F   ; 
- D 0 - I - 0x0116D5 04:96C5: 03        .byte $03   ; 
- D 0 - I - 0x0116D6 04:96C6: 50        .byte $50   ; 
- D 0 - I - 0x0116D7 04:96C7: 04        .byte $04   ; 
- D 0 - I - 0x0116D8 04:96C8: 02        .byte $02   ; 
- D 0 - I - 0x0116D9 04:96C9: 19        .byte $19   ; 
- D 0 - I - 0x0116DA 04:96CA: 7F        .byte $7F   ; 
- D 0 - I - 0x0116DB 04:96CB: FF        .byte $FF   ; 

off_96CC:
- D 0 - I - 0x0116DC 04:96CC: 00        .byte $00   ; 
- D 0 - I - 0x0116DD 04:96CD: 70        .byte $70   ; 
- D 0 - I - 0x0116DE 04:96CE: 00        .byte $00   ; 
- - - - - - 0x0116DF 04:96CF: 00        .byte $00   ; 
- - - - - - 0x0116E0 04:96D0: 1E        .byte $1E   ; 
- - - - - - 0x0116E1 04:96D1: 7F        .byte $7F   ; 
- D 0 - I - 0x0116E2 04:96D2: 00        .byte $00   ; 
- D 0 - I - 0x0116E3 04:96D3: 70        .byte $70   ; 
- D 0 - I - 0x0116E4 04:96D4: 00        .byte $00   ; 
- - - - - - 0x0116E5 04:96D5: 00        .byte $00   ; 
- - - - - - 0x0116E6 04:96D6: 1E        .byte $1E   ; 
- - - - - - 0x0116E7 04:96D7: 7F        .byte $7F   ; 
- D 0 - I - 0x0116E8 04:96D8: 03        .byte $03   ; 
- D 0 - I - 0x0116E9 04:96D9: 30        .byte $30   ; 
- D 0 - I - 0x0116EA 04:96DA: 04        .byte $04   ; 
- D 0 - I - 0x0116EB 04:96DB: 03        .byte $03   ; 
- D 0 - I - 0x0116EC 04:96DC: 19        .byte $19   ; 
- D 0 - I - 0x0116ED 04:96DD: 7F        .byte $7F   ; 
- D 0 - I - 0x0116EE 04:96DE: 03        .byte $03   ; 
- D 0 - I - 0x0116EF 04:96DF: 20        .byte $20   ; 
- D 0 - I - 0x0116F0 04:96E0: 04        .byte $04   ; 
- D 0 - I - 0x0116F1 04:96E1: 01        .byte $01   ; 
- D 0 - I - 0x0116F2 04:96E2: 18        .byte $18   ; 
- D 0 - I - 0x0116F3 04:96E3: 7F        .byte $7F   ; 
- D 0 - I - 0x0116F4 04:96E4: FF        .byte $FF   ; 

off_96E5_tractor:
- D 0 - I - 0x0116F5 04:96E5: 00        .byte $00   ; 
- D 0 - I - 0x0116F6 04:96E6: 70        .byte $70   ; 
- D 0 - I - 0x0116F7 04:96E7: 00        .byte $00   ; 
- - - - - - 0x0116F8 04:96E8: 00        .byte $00   ; 
- - - - - - 0x0116F9 04:96E9: 1F        .byte $1F   ; 
- - - - - - 0x0116FA 04:96EA: 7F        .byte $7F   ; 
- D 0 - I - 0x0116FB 04:96EB: 00        .byte $00   ; 
- D 0 - I - 0x0116FC 04:96EC: 70        .byte $70   ; 
- D 0 - I - 0x0116FD 04:96ED: 00        .byte $00   ; 
- D 0 - I - 0x0116FE 04:96EE: 00        .byte $00   ; 
- D 0 - I - 0x0116FF 04:96EF: 1F        .byte $1F   ; 
- D 0 - I - 0x011700 04:96F0: 7F        .byte $7F   ; 
- D 0 - I - 0x011701 04:96F1: 03        .byte $03   ; 
- D 0 - I - 0x011702 04:96F2: 70        .byte $70   ; 
- D 0 - I - 0x011703 04:96F3: 04        .byte $04   ; 
- D 0 - I - 0x011704 04:96F4: 01        .byte $01   ; 
- D 0 - I - 0x011705 04:96F5: 1A        .byte $1A   ; 
- D 0 - I - 0x011706 04:96F6: 7F        .byte $7F   ; 
- D 0 - I - 0x011707 04:96F7: 03        .byte $03   ; 
- D 0 - I - 0x011708 04:96F8: 5C        .byte $5C   ; 
- D 0 - I - 0x011709 04:96F9: 04        .byte $04   ; 
- D 0 - I - 0x01170A 04:96FA: 03        .byte $03   ; 
- D 0 - I - 0x01170B 04:96FB: 19        .byte $19   ; 
- D 0 - I - 0x01170C 04:96FC: 7F        .byte $7F   ; 
- D 0 - I - 0x01170D 04:96FD: FF        .byte $FF   ; 



_off005_96FE_06_Mansion_of_Terror:
; con_mission_Mansion_of_Terror
- D 0 - I - 0x01170E 04:96FE: A3 97     .word ofs_97A3_00
- D 0 - I - 0x011710 04:9700: 50        .byte $50   ; 
- D 0 - I - 0x011711 04:9701: 00        .byte $00   ; 
- D 0 - I - 0x011712 04:9702: 03        .byte $03   ; 
- D 0 - I - 0x011713 04:9703: A7 97     .word ofs_97A7_01
- D 0 - I - 0x011715 04:9705: 60        .byte $60   ; 
- D 0 - I - 0x011716 04:9706: 00        .byte $00   ; 
- D 0 - I - 0x011717 04:9707: 03        .byte $03   ; 
- D 0 - I - 0x011718 04:9708: AB 97     .word ofs_97AB_02
- D 0 - I - 0x01171A 04:970A: 70        .byte $70   ; 
- D 0 - I - 0x01171B 04:970B: 00        .byte $00   ; 
- D 0 - I - 0x01171C 04:970C: 03        .byte $03   ; 
- D 0 - I - 0x01171D 04:970D: AF 97     .word ofs_97AF_03
- D 0 - I - 0x01171F 04:970F: 80        .byte $80   ; 
- D 0 - I - 0x011720 04:9710: 00        .byte $00   ; 
- D 0 - I - 0x011721 04:9711: 03        .byte $03   ; 
- D 0 - I - 0x011722 04:9712: B3 97     .word ofs_97B3_04
- D 0 - I - 0x011724 04:9714: 90        .byte $90   ; 
- D 0 - I - 0x011725 04:9715: 00        .byte $00   ; 
- D 0 - I - 0x011726 04:9716: 03        .byte $03   ; 
- D 0 - I - 0x011727 04:9717: B7 97     .word ofs_97B7_05
- D 0 - I - 0x011729 04:9719: A8        .byte $A8   ; 
- D 0 - I - 0x01172A 04:971A: 00        .byte $00   ; 
- D 0 - I - 0x01172B 04:971B: 00        .byte $00   ; 
- D 0 - I - 0x01172C 04:971C: BB 97     .word ofs_97BB_06
- D 0 - I - 0x01172E 04:971E: 78        .byte $78   ; 
- D 0 - I - 0x01172F 04:971F: 00        .byte $00   ; 
- D 0 - I - 0x011730 04:9720: 03        .byte $03   ; 
- D 0 - I - 0x011731 04:9721: BF 97     .word ofs_97BF_07
- D 0 - I - 0x011733 04:9723: 38        .byte $38   ; 
- D 0 - I - 0x011734 04:9724: 00        .byte $00   ; 
- D 0 - I - 0x011735 04:9725: 06        .byte $06   ; 
- D 0 - I - 0x011736 04:9726: C3 97     .word ofs_97C3_08
- D 0 - I - 0x011738 04:9728: 50        .byte $50   ; 
- D 0 - I - 0x011739 04:9729: 00        .byte $00   ; 
- D 0 - I - 0x01173A 04:972A: 00        .byte $00   ; 
- D 0 - I - 0x01173B 04:972B: C7 97     .word ofs_97C7_09
- D 0 - I - 0x01173D 04:972D: 70        .byte $70   ; 
- D 0 - I - 0x01173E 04:972E: 00        .byte $00   ; 
- D 0 - I - 0x01173F 04:972F: 00        .byte $00   ; 
- D 0 - I - 0x011740 04:9730: CB 97     .word ofs_97CB_0A
- D 0 - I - 0x011742 04:9732: 50        .byte $50   ; 
- D 0 - I - 0x011743 04:9733: 00        .byte $00   ; 
- D 0 - I - 0x011744 04:9734: 03        .byte $03   ; 
- D 0 - I - 0x011745 04:9735: CF 97     .word ofs_97CF_0B
- D 0 - I - 0x011747 04:9737: 38        .byte $38   ; 
- D 0 - I - 0x011748 04:9738: 00        .byte $00   ; 
- D 0 - I - 0x011749 04:9739: 06        .byte $06   ; 
- D 0 - I - 0x01174A 04:973A: D3 97     .word ofs_97D3_0C
- D 0 - I - 0x01174C 04:973C: 38        .byte $38   ; 
- D 0 - I - 0x01174D 04:973D: 00        .byte $00   ; 
- D 0 - I - 0x01174E 04:973E: 06        .byte $06   ; 
- D 0 - I - 0x01174F 04:973F: D7 97     .word ofs_97D7_0D
- D 0 - I - 0x011751 04:9741: 38        .byte $38   ; 
- D 0 - I - 0x011752 04:9742: 00        .byte $00   ; 
- D 0 - I - 0x011753 04:9743: 06        .byte $06   ; 
- D 0 - I - 0x011754 04:9744: DB 97     .word ofs_97DB_0E
- D 0 - I - 0x011756 04:9746: 50        .byte $50   ; 
- D 0 - I - 0x011757 04:9747: 00        .byte $00   ; 
- D 0 - I - 0x011758 04:9748: 03        .byte $03   ; 
- D 0 - I - 0x011759 04:9749: DF 97     .word ofs_97DF_0F
- D 0 - I - 0x01175B 04:974B: 50        .byte $50   ; 
- D 0 - I - 0x01175C 04:974C: 00        .byte $00   ; 
- D 0 - I - 0x01175D 04:974D: 00        .byte $00   ; 
- D 0 - I - 0x01175E 04:974E: E3 97     .word ofs_97E3_10
- D 0 - I - 0x011760 04:9750: 60        .byte $60   ; 
- D 0 - I - 0x011761 04:9751: 00        .byte $00   ; 
- D 0 - I - 0x011762 04:9752: 00        .byte $00   ; 
- D 0 - I - 0x011763 04:9753: E7 97     .word ofs_97E7_11
- D 0 - I - 0x011765 04:9755: 70        .byte $70   ; 
- D 0 - I - 0x011766 04:9756: 00        .byte $00   ; 
- D 0 - I - 0x011767 04:9757: 00        .byte $00   ; 
- D 0 - I - 0x011768 04:9758: EB 97     .word ofs_97EB_12
- D 0 - I - 0x01176A 04:975A: 80        .byte $80   ; 
- D 0 - I - 0x01176B 04:975B: 00        .byte $00   ; 
- D 0 - I - 0x01176C 04:975C: 00        .byte $00   ; 
- D 0 - I - 0x01176D 04:975D: EF 97     .word ofs_97EF_13
- D 0 - I - 0x01176F 04:975F: 90        .byte $90   ; 
- D 0 - I - 0x011770 04:9760: 00        .byte $00   ; 
- D 0 - I - 0x011771 04:9761: 00        .byte $00   ; 
- D 0 - I - 0x011772 04:9762: F3 97     .word ofs_97F3_14
- D 0 - I - 0x011774 04:9764: 90        .byte $90   ; 
- D 0 - I - 0x011775 04:9765: 00        .byte $00   ; 
- D 0 - I - 0x011776 04:9766: 00        .byte $00   ; 
- D 0 - I - 0x011777 04:9767: F7 97     .word ofs_97F7_15
- D 0 - I - 0x011779 04:9769: A0        .byte $A0   ; 
- D 0 - I - 0x01177A 04:976A: 00        .byte $00   ; 
- D 0 - I - 0x01177B 04:976B: 00        .byte $00   ; 
- D 0 - I - 0x01177C 04:976C: FB 97     .word ofs_97FB_16
- D 0 - I - 0x01177E 04:976E: B0        .byte $B0   ; 
- D 0 - I - 0x01177F 04:976F: 00        .byte $00   ; 
- D 0 - I - 0x011780 04:9770: 00        .byte $00   ; 
- D 0 - I - 0x011781 04:9771: FF 97     .word ofs_97FF_17
- D 0 - I - 0x011783 04:9773: B8        .byte $B8   ; 
- D 0 - I - 0x011784 04:9774: 00        .byte $00   ; 
- D 0 - I - 0x011785 04:9775: 00        .byte $00   ; 
- D 0 - I - 0x011786 04:9776: 03 98     .word ofs_9803_18
- D 0 - I - 0x011788 04:9778: 60        .byte $60   ; 
- D 0 - I - 0x011789 04:9779: 00        .byte $00   ; 
- D 0 - I - 0x01178A 04:977A: 05        .byte $05   ; 
- D 0 - I - 0x01178B 04:977B: 07 98     .word ofs_9807_19
- D 0 - I - 0x01178D 04:977D: 70        .byte $70   ; 
- D 0 - I - 0x01178E 04:977E: 00        .byte $00   ; 
- D 0 - I - 0x01178F 04:977F: 05        .byte $05   ; 
- D 0 - I - 0x011790 04:9780: 0B 98     .word ofs_980B_1A
- D 0 - I - 0x011792 04:9782: 80        .byte $80   ; 
- D 0 - I - 0x011793 04:9783: 00        .byte $00   ; 
- D 0 - I - 0x011794 04:9784: 05        .byte $05   ; 
- D 0 - I - 0x011795 04:9785: 0F 98     .word ofs_980F_1B
- D 0 - I - 0x011797 04:9787: 90        .byte $90   ; 
- D 0 - I - 0x011798 04:9788: 00        .byte $00   ; 
- D 0 - I - 0x011799 04:9789: 05        .byte $05   ; 
- D 0 - I - 0x01179A 04:978A: 13 98     .word ofs_9813_1C
- D 0 - I - 0x01179C 04:978C: 90        .byte $90   ; 
- D 0 - I - 0x01179D 04:978D: 00        .byte $00   ; 
- D 0 - I - 0x01179E 04:978E: 05        .byte $05   ; 
- D 0 - I - 0x01179F 04:978F: 17 98     .word ofs_9817_1D
- D 0 - I - 0x0117A1 04:9791: B0        .byte $B0   ; 
- D 0 - I - 0x0117A2 04:9792: 00        .byte $00   ; 
- D 0 - I - 0x0117A3 04:9793: 05        .byte $05   ; 
- D 0 - I - 0x0117A4 04:9794: 1B 98     .word ofs_981B_1E
- D 0 - I - 0x0117A6 04:9796: B0        .byte $B0   ; 
- D 0 - I - 0x0117A7 04:9797: 00        .byte $00   ; 
- D 0 - I - 0x0117A8 04:9798: 05        .byte $05   ; 
- D 0 - I - 0x0117A9 04:9799: 1F 98     .word ofs_981F_1F
- D 0 - I - 0x0117AB 04:979B: B0        .byte $B0   ; 
- D 0 - I - 0x0117AC 04:979C: 00        .byte $00   ; 
- D 0 - I - 0x0117AD 04:979D: 05        .byte $05   ; 
- - - - - - 0x0117AE 04:979E: 23 98     .word ofs_9823_20
- - - - - - 0x0117B0 04:97A0: 00        .byte $00   ; 
- - - - - - 0x0117B1 04:97A1: 00        .byte $00   ; 
- D 0 - I - 0x0117B2 04:97A2: 07        .byte $07   ; 



ofs_97A3_00:
- D 0 - I - 0x0117B3 04:97A3: FF        .byte $FF   ; 
- D 0 - I - 0x0117B4 04:97A4: FF        .byte $FF   ; 
- D 0 - I - 0x0117B5 04:97A5: 27 98     .word off_9827



ofs_97A7_01:
- D 0 - I - 0x0117B7 04:97A7: FF        .byte $FF   ; 
- D 0 - I - 0x0117B8 04:97A8: FF        .byte $FF   ; 
- D 0 - I - 0x0117B9 04:97A9: 40 98     .word off_9840



ofs_97AB_02:
- D 0 - I - 0x0117BB 04:97AB: FF        .byte $FF   ; 
- D 0 - I - 0x0117BC 04:97AC: FF        .byte $FF   ; 
- D 0 - I - 0x0117BD 04:97AD: 59 98     .word off_9859



ofs_97AF_03:
- D 0 - I - 0x0117BF 04:97AF: FF        .byte $FF   ; 
- D 0 - I - 0x0117C0 04:97B0: FF        .byte $FF   ; 
- D 0 - I - 0x0117C1 04:97B1: 72 98     .word off_9872



ofs_97B3_04:
- D 0 - I - 0x0117C3 04:97B3: FF        .byte $FF   ; 
- D 0 - I - 0x0117C4 04:97B4: FF        .byte $FF   ; 
- D 0 - I - 0x0117C5 04:97B5: 8B 98     .word off_988B



ofs_97B7_05:
- D 0 - I - 0x0117C7 04:97B7: FF        .byte $FF   ; 
- D 0 - I - 0x0117C8 04:97B8: FF        .byte $FF   ; 
- D 0 - I - 0x0117C9 04:97B9: A4 98     .word off_98A4



ofs_97BB_06:
- D 0 - I - 0x0117CB 04:97BB: FF        .byte $FF   ; 
- D 0 - I - 0x0117CC 04:97BC: FF        .byte $FF   ; 
- D 0 - I - 0x0117CD 04:97BD: BD 98     .word off_98BD



ofs_97BF_07:
- D 0 - I - 0x0117CF 04:97BF: FF        .byte $FF   ; 
- D 0 - I - 0x0117D0 04:97C0: FF        .byte $FF   ; 
- D 0 - I - 0x0117D1 04:97C1: D6 98     .word off_98D6



ofs_97C3_08:
- D 0 - I - 0x0117D3 04:97C3: FF        .byte $FF   ; 
- D 0 - I - 0x0117D4 04:97C4: FF        .byte $FF   ; 
- D 0 - I - 0x0117D5 04:97C5: EF 98     .word off_98EF



ofs_97C7_09:
- D 0 - I - 0x0117D7 04:97C7: FF        .byte $FF   ; 
- D 0 - I - 0x0117D8 04:97C8: FF        .byte $FF   ; 
- D 0 - I - 0x0117D9 04:97C9: 08 99     .word off_9908



ofs_97CB_0A:
- D 0 - I - 0x0117DB 04:97CB: FF        .byte $FF   ; 
- D 0 - I - 0x0117DC 04:97CC: FF        .byte $FF   ; 
- D 0 - I - 0x0117DD 04:97CD: 21 99     .word off_9921



ofs_97CF_0B:
- D 0 - I - 0x0117DF 04:97CF: FF        .byte $FF   ; 
- D 0 - I - 0x0117E0 04:97D0: FF        .byte $FF   ; 
- D 0 - I - 0x0117E1 04:97D1: 3A 99     .word off_993A



ofs_97D3_0C:
- D 0 - I - 0x0117E3 04:97D3: FF        .byte $FF   ; 
- D 0 - I - 0x0117E4 04:97D4: FF        .byte $FF   ; 
- D 0 - I - 0x0117E5 04:97D5: 53 99     .word off_9953



ofs_97D7_0D:
- D 0 - I - 0x0117E7 04:97D7: FF        .byte $FF   ; 
- D 0 - I - 0x0117E8 04:97D8: FF        .byte $FF   ; 
- D 0 - I - 0x0117E9 04:97D9: 6C 99     .word off_996C



ofs_97DB_0E:
- D 0 - I - 0x0117EB 04:97DB: FF        .byte $FF   ; 
- D 0 - I - 0x0117EC 04:97DC: FF        .byte $FF   ; 
- D 0 - I - 0x0117ED 04:97DD: 85 99     .word off_9985



ofs_97DF_0F:
- D 0 - I - 0x0117EF 04:97DF: FF        .byte $FF   ; 
- D 0 - I - 0x0117F0 04:97E0: FF        .byte $FF   ; 
- D 0 - I - 0x0117F1 04:97E1: 9E 99     .word off_999E



ofs_97E3_10:
- D 0 - I - 0x0117F3 04:97E3: FF        .byte $FF   ; 
- D 0 - I - 0x0117F4 04:97E4: FF        .byte $FF   ; 
- D 0 - I - 0x0117F5 04:97E5: B7 99     .word off_99B7



ofs_97E7_11:
- D 0 - I - 0x0117F7 04:97E7: FF        .byte $FF   ; 
- D 0 - I - 0x0117F8 04:97E8: FF        .byte $FF   ; 
- D 0 - I - 0x0117F9 04:97E9: D0 99     .word off_99D0



ofs_97EB_12:
- D 0 - I - 0x0117FB 04:97EB: FF        .byte $FF   ; 
- D 0 - I - 0x0117FC 04:97EC: FF        .byte $FF   ; 
- D 0 - I - 0x0117FD 04:97ED: E9 99     .word off_99E9



ofs_97EF_13:
- D 0 - I - 0x0117FF 04:97EF: FF        .byte $FF   ; 
- D 0 - I - 0x011800 04:97F0: FF        .byte $FF   ; 
- D 0 - I - 0x011801 04:97F1: 02 9A     .word off_9A02



ofs_97F3_14:
- D 0 - I - 0x011803 04:97F3: FF        .byte $FF   ; 
- D 0 - I - 0x011804 04:97F4: FF        .byte $FF   ; 
- D 0 - I - 0x011805 04:97F5: 1B 9A     .word off_9A1B



ofs_97F7_15:
- D 0 - I - 0x011807 04:97F7: FF        .byte $FF   ; 
- D 0 - I - 0x011808 04:97F8: FF        .byte $FF   ; 
- D 0 - I - 0x011809 04:97F9: 34 9A     .word off_9A34



ofs_97FB_16:
- D 0 - I - 0x01180B 04:97FB: FF        .byte $FF   ; 
- D 0 - I - 0x01180C 04:97FC: FF        .byte $FF   ; 
- D 0 - I - 0x01180D 04:97FD: 4D 9A     .word off_9A4D



ofs_97FF_17:
- D 0 - I - 0x01180F 04:97FF: FF        .byte $FF   ; 
- D 0 - I - 0x011810 04:9800: FF        .byte $FF   ; 
- D 0 - I - 0x011811 04:9801: 66 9A     .word off_9A66



ofs_9803_18:
- D 0 - I - 0x011813 04:9803: FF        .byte $FF   ; 
- D 0 - I - 0x011814 04:9804: FF        .byte $FF   ; 
- D 0 - I - 0x011815 04:9805: 7F 9A     .word off_9A7F



ofs_9807_19:
- D 0 - I - 0x011817 04:9807: FF        .byte $FF   ; 
- D 0 - I - 0x011818 04:9808: FF        .byte $FF   ; 
- D 0 - I - 0x011819 04:9809: 98 9A     .word off_9A98



ofs_980B_1A:
- D 0 - I - 0x01181B 04:980B: FF        .byte $FF   ; 
- D 0 - I - 0x01181C 04:980C: FF        .byte $FF   ; 
- D 0 - I - 0x01181D 04:980D: B1 9A     .word off_9AB1



ofs_980F_1B:
- D 0 - I - 0x01181F 04:980F: FF        .byte $FF   ; 
- D 0 - I - 0x011820 04:9810: FF        .byte $FF   ; 
- D 0 - I - 0x011821 04:9811: CA 9A     .word off_9ACA



ofs_9813_1C:
- D 0 - I - 0x011823 04:9813: FF        .byte $FF   ; 
- D 0 - I - 0x011824 04:9814: FF        .byte $FF   ; 
- D 0 - I - 0x011825 04:9815: E3 9A     .word off_9AE3



ofs_9817_1D:
- D 0 - I - 0x011827 04:9817: FF        .byte $FF   ; 
- D 0 - I - 0x011828 04:9818: FF        .byte $FF   ; 
- D 0 - I - 0x011829 04:9819: FC 9A     .word off_9AFC



ofs_981B_1E:
- D 0 - I - 0x01182B 04:981B: FF        .byte $FF   ; 
- D 0 - I - 0x01182C 04:981C: FF        .byte $FF   ; 
- D 0 - I - 0x01182D 04:981D: 15 9B     .word off_9B15



ofs_981F_1F:
- D 0 - I - 0x01182F 04:981F: FF        .byte $FF   ; 
- D 0 - I - 0x011830 04:9820: FF        .byte $FF   ; 
- D 0 - I - 0x011831 04:9821: 2E 9B     .word off_9B2E



ofs_9823_20:
- - - - - - 0x011833 04:9823: FF        .byte $FF   ; 
- - - - - - 0x011834 04:9824: FF        .byte $FF   ; 
- - - - - - 0x011835 04:9825: 47 9B     .word off_9B47



off_9827:
- D 0 - I - 0x011837 04:9827: 00        .byte $00   ; 
- D 0 - I - 0x011838 04:9828: 00        .byte $00   ; 
- D 0 - I - 0x011839 04:9829: 00        .byte $00   ; 
- - - - - - 0x01183A 04:982A: 00        .byte $00   ; 
- - - - - - 0x01183B 04:982B: 00        .byte $00   ; 
- - - - - - 0x01183C 04:982C: 7F        .byte $7F   ; 
- D 0 - I - 0x01183D 04:982D: 00        .byte $00   ; 
- D 0 - I - 0x01183E 04:982E: 00        .byte $00   ; 
- D 0 - I - 0x01183F 04:982F: 00        .byte $00   ; 
- - - - - - 0x011840 04:9830: 00        .byte $00   ; 
- - - - - - 0x011841 04:9831: 00        .byte $00   ; 
- - - - - - 0x011842 04:9832: 7F        .byte $7F   ; 
- D 0 - I - 0x011843 04:9833: 03        .byte $03   ; 
- D 0 - I - 0x011844 04:9834: FF        .byte $FF   ; 
- D 0 - I - 0x011845 04:9835: 02        .byte $02   ; 
- - - - - - 0x011846 04:9836: 00        .byte $00   ; 
- - - - - - 0x011847 04:9837: 00        .byte $00   ; 
- - - - - - 0x011848 04:9838: 7F        .byte $7F   ; 
- D 0 - I - 0x011849 04:9839: 03        .byte $03   ; 
- D 0 - I - 0x01184A 04:983A: D0        .byte $D0   ; 
- D 0 - I - 0x01184B 04:983B: 02        .byte $02   ; 
- D 0 - I - 0x01184C 04:983C: 02        .byte $02   ; 
- D 0 - I - 0x01184D 04:983D: 20        .byte $20   ; 
- D 0 - I - 0x01184E 04:983E: 7F        .byte $7F   ; 
- D 0 - I - 0x01184F 04:983F: FF        .byte $FF   ; 

off_9840:
- D 0 - I - 0x011850 04:9840: 00        .byte $00   ; 
- D 0 - I - 0x011851 04:9841: 00        .byte $00   ; 
- D 0 - I - 0x011852 04:9842: 00        .byte $00   ; 
- - - - - - 0x011853 04:9843: 00        .byte $00   ; 
- - - - - - 0x011854 04:9844: 01        .byte $01   ; 
- - - - - - 0x011855 04:9845: 7F        .byte $7F   ; 
- D 0 - I - 0x011856 04:9846: 00        .byte $00   ; 
- D 0 - I - 0x011857 04:9847: 00        .byte $00   ; 
- D 0 - I - 0x011858 04:9848: 00        .byte $00   ; 
- - - - - - 0x011859 04:9849: 00        .byte $00   ; 
- - - - - - 0x01185A 04:984A: 01        .byte $01   ; 
- - - - - - 0x01185B 04:984B: 7F        .byte $7F   ; 
- D 0 - I - 0x01185C 04:984C: 03        .byte $03   ; 
- D 0 - I - 0x01185D 04:984D: D0        .byte $D0   ; 
- D 0 - I - 0x01185E 04:984E: 02        .byte $02   ; 
- D 0 - I - 0x01185F 04:984F: 02        .byte $02   ; 
- D 0 - I - 0x011860 04:9850: 00        .byte $00   ; 
- D 0 - I - 0x011861 04:9851: 7F        .byte $7F   ; 
- D 0 - I - 0x011862 04:9852: 03        .byte $03   ; 
- D 0 - I - 0x011863 04:9853: A0        .byte $A0   ; 
- D 0 - I - 0x011864 04:9854: 02        .byte $02   ; 
- - - - - - 0x011865 04:9855: 02        .byte $02   ; 
- - - - - - 0x011866 04:9856: 20        .byte $20   ; 
- - - - - - 0x011867 04:9857: 7F        .byte $7F   ; 
- D 0 - I - 0x011868 04:9858: FF        .byte $FF   ; 

off_9859:
- D 0 - I - 0x011869 04:9859: 00        .byte $00   ; 
- D 0 - I - 0x01186A 04:985A: 00        .byte $00   ; 
- D 0 - I - 0x01186B 04:985B: 00        .byte $00   ; 
- - - - - - 0x01186C 04:985C: 00        .byte $00   ; 
- - - - - - 0x01186D 04:985D: 02        .byte $02   ; 
- - - - - - 0x01186E 04:985E: 7F        .byte $7F   ; 
- D 0 - I - 0x01186F 04:985F: 00        .byte $00   ; 
- D 0 - I - 0x011870 04:9860: 00        .byte $00   ; 
- D 0 - I - 0x011871 04:9861: 00        .byte $00   ; 
- - - - - - 0x011872 04:9862: 00        .byte $00   ; 
- - - - - - 0x011873 04:9863: 02        .byte $02   ; 
- - - - - - 0x011874 04:9864: 7F        .byte $7F   ; 
- D 0 - I - 0x011875 04:9865: 03        .byte $03   ; 
- D 0 - I - 0x011876 04:9866: A0        .byte $A0   ; 
- D 0 - I - 0x011877 04:9867: 02        .byte $02   ; 
- D 0 - I - 0x011878 04:9868: 02        .byte $02   ; 
- D 0 - I - 0x011879 04:9869: 01        .byte $01   ; 
- D 0 - I - 0x01187A 04:986A: 7F        .byte $7F   ; 
- D 0 - I - 0x01187B 04:986B: 03        .byte $03   ; 
- D 0 - I - 0x01187C 04:986C: 80        .byte $80   ; 
- D 0 - I - 0x01187D 04:986D: 02        .byte $02   ; 
- - - - - - 0x01187E 04:986E: 02        .byte $02   ; 
- - - - - - 0x01187F 04:986F: 20        .byte $20   ; 
- - - - - - 0x011880 04:9870: 7F        .byte $7F   ; 
- D 0 - I - 0x011881 04:9871: FF        .byte $FF   ; 

off_9872:
- D 0 - I - 0x011882 04:9872: 00        .byte $00   ; 
- D 0 - I - 0x011883 04:9873: 00        .byte $00   ; 
- D 0 - I - 0x011884 04:9874: 00        .byte $00   ; 
- - - - - - 0x011885 04:9875: 00        .byte $00   ; 
- - - - - - 0x011886 04:9876: 03        .byte $03   ; 
- - - - - - 0x011887 04:9877: 7F        .byte $7F   ; 
- D 0 - I - 0x011888 04:9878: 00        .byte $00   ; 
- D 0 - I - 0x011889 04:9879: 00        .byte $00   ; 
- D 0 - I - 0x01188A 04:987A: 00        .byte $00   ; 
- - - - - - 0x01188B 04:987B: 00        .byte $00   ; 
- - - - - - 0x01188C 04:987C: 03        .byte $03   ; 
- - - - - - 0x01188D 04:987D: 7F        .byte $7F   ; 
- D 0 - I - 0x01188E 04:987E: 03        .byte $03   ; 
- D 0 - I - 0x01188F 04:987F: 80        .byte $80   ; 
- D 0 - I - 0x011890 04:9880: 02        .byte $02   ; 
- D 0 - I - 0x011891 04:9881: 02        .byte $02   ; 
- D 0 - I - 0x011892 04:9882: 02        .byte $02   ; 
- D 0 - I - 0x011893 04:9883: 7F        .byte $7F   ; 
- D 0 - I - 0x011894 04:9884: 03        .byte $03   ; 
- D 0 - I - 0x011895 04:9885: 60        .byte $60   ; 
- D 0 - I - 0x011896 04:9886: 02        .byte $02   ; 
- D 0 - I - 0x011897 04:9887: 02        .byte $02   ; 
- D 0 - I - 0x011898 04:9888: 07        .byte $07   ; 
- D 0 - I - 0x011899 04:9889: 7F        .byte $7F   ; 
- D 0 - I - 0x01189A 04:988A: FF        .byte $FF   ; 

off_988B:
- D 0 - I - 0x01189B 04:988B: 00        .byte $00   ; 
- D 0 - I - 0x01189C 04:988C: 00        .byte $00   ; 
- D 0 - I - 0x01189D 04:988D: 00        .byte $00   ; 
- - - - - - 0x01189E 04:988E: 00        .byte $00   ; 
- - - - - - 0x01189F 04:988F: 04        .byte $04   ; 
- - - - - - 0x0118A0 04:9890: 7F        .byte $7F   ; 
- D 0 - I - 0x0118A1 04:9891: 00        .byte $00   ; 
- D 0 - I - 0x0118A2 04:9892: 00        .byte $00   ; 
- D 0 - I - 0x0118A3 04:9893: 00        .byte $00   ; 
- - - - - - 0x0118A4 04:9894: 00        .byte $00   ; 
- - - - - - 0x0118A5 04:9895: 04        .byte $04   ; 
- - - - - - 0x0118A6 04:9896: 7F        .byte $7F   ; 
- D 0 - I - 0x0118A7 04:9897: 03        .byte $03   ; 
- D 0 - I - 0x0118A8 04:9898: 60        .byte $60   ; 
- D 0 - I - 0x0118A9 04:9899: 02        .byte $02   ; 
- D 0 - I - 0x0118AA 04:989A: 02        .byte $02   ; 
- D 0 - I - 0x0118AB 04:989B: 03        .byte $03   ; 
- D 0 - I - 0x0118AC 04:989C: 7F        .byte $7F   ; 
- D 0 - I - 0x0118AD 04:989D: 03        .byte $03   ; 
- D 0 - I - 0x0118AE 04:989E: 40        .byte $40   ; 
- D 0 - I - 0x0118AF 04:989F: 02        .byte $02   ; 
- D 0 - I - 0x0118B0 04:98A0: 02        .byte $02   ; 
- D 0 - I - 0x0118B1 04:98A1: 06        .byte $06   ; 
- D 0 - I - 0x0118B2 04:98A2: 7F        .byte $7F   ; 
- D 0 - I - 0x0118B3 04:98A3: FF        .byte $FF   ; 

off_98A4:
- D 0 - I - 0x0118B4 04:98A4: 00        .byte $00   ; 
- D 0 - I - 0x0118B5 04:98A5: 00        .byte $00   ; 
- D 0 - I - 0x0118B6 04:98A6: 00        .byte $00   ; 
- - - - - - 0x0118B7 04:98A7: 00        .byte $00   ; 
- - - - - - 0x0118B8 04:98A8: 05        .byte $05   ; 
- - - - - - 0x0118B9 04:98A9: 7F        .byte $7F   ; 
- D 0 - I - 0x0118BA 04:98AA: 00        .byte $00   ; 
- D 0 - I - 0x0118BB 04:98AB: 00        .byte $00   ; 
- D 0 - I - 0x0118BC 04:98AC: 00        .byte $00   ; 
- - - - - - 0x0118BD 04:98AD: 00        .byte $00   ; 
- - - - - - 0x0118BE 04:98AE: 05        .byte $05   ; 
- - - - - - 0x0118BF 04:98AF: 7F        .byte $7F   ; 
- D 0 - I - 0x0118C0 04:98B0: 03        .byte $03   ; 
- D 0 - I - 0x0118C1 04:98B1: 40        .byte $40   ; 
- D 0 - I - 0x0118C2 04:98B2: 02        .byte $02   ; 
- D 0 - I - 0x0118C3 04:98B3: 02        .byte $02   ; 
- D 0 - I - 0x0118C4 04:98B4: 04        .byte $04   ; 
- D 0 - I - 0x0118C5 04:98B5: 7F        .byte $7F   ; 
- D 0 - I - 0x0118C6 04:98B6: 03        .byte $03   ; 
- D 0 - I - 0x0118C7 04:98B7: 20        .byte $20   ; 
- D 0 - I - 0x0118C8 04:98B8: 02        .byte $02   ; 
- D 0 - I - 0x0118C9 04:98B9: 02        .byte $02   ; 
- D 0 - I - 0x0118CA 04:98BA: 07        .byte $07   ; 
- D 0 - I - 0x0118CB 04:98BB: 7F        .byte $7F   ; 
- D 0 - I - 0x0118CC 04:98BC: FF        .byte $FF   ; 

off_98BD:
- D 0 - I - 0x0118CD 04:98BD: 00        .byte $00   ; 
- D 0 - I - 0x0118CE 04:98BE: 00        .byte $00   ; 
- D 0 - I - 0x0118CF 04:98BF: 00        .byte $00   ; 
- - - - - - 0x0118D0 04:98C0: 00        .byte $00   ; 
- - - - - - 0x0118D1 04:98C1: 06        .byte $06   ; 
- - - - - - 0x0118D2 04:98C2: 7F        .byte $7F   ; 
- D 0 - I - 0x0118D3 04:98C3: 00        .byte $00   ; 
- D 0 - I - 0x0118D4 04:98C4: 00        .byte $00   ; 
- D 0 - I - 0x0118D5 04:98C5: 00        .byte $00   ; 
- - - - - - 0x0118D6 04:98C6: 00        .byte $00   ; 
- - - - - - 0x0118D7 04:98C7: 06        .byte $06   ; 
- - - - - - 0x0118D8 04:98C8: 7F        .byte $7F   ; 
- D 0 - I - 0x0118D9 04:98C9: 03        .byte $03   ; 
- D 0 - I - 0x0118DA 04:98CA: 40        .byte $40   ; 
- D 0 - I - 0x0118DB 04:98CB: 02        .byte $02   ; 
- D 0 - I - 0x0118DC 04:98CC: 02        .byte $02   ; 
- D 0 - I - 0x0118DD 04:98CD: 07        .byte $07   ; 
- D 0 - I - 0x0118DE 04:98CE: 7F        .byte $7F   ; 
- D 0 - I - 0x0118DF 04:98CF: 03        .byte $03   ; 
- D 0 - I - 0x0118E0 04:98D0: 20        .byte $20   ; 
- D 0 - I - 0x0118E1 04:98D1: 02        .byte $02   ; 
- D 0 - I - 0x0118E2 04:98D2: 02        .byte $02   ; 
- D 0 - I - 0x0118E3 04:98D3: 07        .byte $07   ; 
- D 0 - I - 0x0118E4 04:98D4: 7F        .byte $7F   ; 
- D 0 - I - 0x0118E5 04:98D5: FF        .byte $FF   ; 

off_98D6:
- D 0 - I - 0x0118E6 04:98D6: 00        .byte $00   ; 
- D 0 - I - 0x0118E7 04:98D7: 00        .byte $00   ; 
- D 0 - I - 0x0118E8 04:98D8: 00        .byte $00   ; 
- - - - - - 0x0118E9 04:98D9: 00        .byte $00   ; 
- - - - - - 0x0118EA 04:98DA: 07        .byte $07   ; 
- - - - - - 0x0118EB 04:98DB: 7F        .byte $7F   ; 
- D 0 - I - 0x0118EC 04:98DC: 00        .byte $00   ; 
- D 0 - I - 0x0118ED 04:98DD: 00        .byte $00   ; 
- D 0 - I - 0x0118EE 04:98DE: 00        .byte $00   ; 
- - - - - - 0x0118EF 04:98DF: 00        .byte $00   ; 
- - - - - - 0x0118F0 04:98E0: 07        .byte $07   ; 
- - - - - - 0x0118F1 04:98E1: 7F        .byte $7F   ; 
- D 0 - I - 0x0118F2 04:98E2: 03        .byte $03   ; 
- D 0 - I - 0x0118F3 04:98E3: 60        .byte $60   ; 
- D 0 - I - 0x0118F4 04:98E4: 02        .byte $02   ; 
- - - - - - 0x0118F5 04:98E5: 02        .byte $02   ; 
- - - - - - 0x0118F6 04:98E6: 20        .byte $20   ; 
- - - - - - 0x0118F7 04:98E7: 7F        .byte $7F   ; 
- D 0 - I - 0x0118F8 04:98E8: 03        .byte $03   ; 
- D 0 - I - 0x0118F9 04:98E9: 10        .byte $10   ; 
- D 0 - I - 0x0118FA 04:98EA: 02        .byte $02   ; 
- D 0 - I - 0x0118FB 04:98EB: 01        .byte $01   ; 
- D 0 - I - 0x0118FC 04:98EC: 08        .byte $08   ; 
- D 0 - I - 0x0118FD 04:98ED: 7F        .byte $7F   ; 
- D 0 - I - 0x0118FE 04:98EE: FF        .byte $FF   ; 

off_98EF:
- D 0 - I - 0x0118FF 04:98EF: 00        .byte $00   ; 
- D 0 - I - 0x011900 04:98F0: 00        .byte $00   ; 
- D 0 - I - 0x011901 04:98F1: 00        .byte $00   ; 
- - - - - - 0x011902 04:98F2: 00        .byte $00   ; 
- - - - - - 0x011903 04:98F3: 08        .byte $08   ; 
- - - - - - 0x011904 04:98F4: 7F        .byte $7F   ; 
- D 0 - I - 0x011905 04:98F5: 00        .byte $00   ; 
- D 0 - I - 0x011906 04:98F6: 00        .byte $00   ; 
- D 0 - I - 0x011907 04:98F7: 00        .byte $00   ; 
- - - - - - 0x011908 04:98F8: 00        .byte $00   ; 
- - - - - - 0x011909 04:98F9: 08        .byte $08   ; 
- - - - - - 0x01190A 04:98FA: 7F        .byte $7F   ; 
- D 0 - I - 0x01190B 04:98FB: 03        .byte $03   ; 
- D 0 - I - 0x01190C 04:98FC: 10        .byte $10   ; 
- D 0 - I - 0x01190D 04:98FD: 02        .byte $02   ; 
- D 0 - I - 0x01190E 04:98FE: 02        .byte $02   ; 
- D 0 - I - 0x01190F 04:98FF: 07        .byte $07   ; 
- D 0 - I - 0x011910 04:9900: 7F        .byte $7F   ; 
- D 0 - I - 0x011911 04:9901: 03        .byte $03   ; 
- D 0 - I - 0x011912 04:9902: A0        .byte $A0   ; 
- D 0 - I - 0x011913 04:9903: 01        .byte $01   ; 
- D 0 - I - 0x011914 04:9904: 01        .byte $01   ; 
- D 0 - I - 0x011915 04:9905: 09        .byte $09   ; 
- D 0 - I - 0x011916 04:9906: 7F        .byte $7F   ; 
- D 0 - I - 0x011917 04:9907: FF        .byte $FF   ; 

off_9908:
- D 0 - I - 0x011918 04:9908: 00        .byte $00   ; 
- D 0 - I - 0x011919 04:9909: 00        .byte $00   ; 
- D 0 - I - 0x01191A 04:990A: 00        .byte $00   ; 
- - - - - - 0x01191B 04:990B: 00        .byte $00   ; 
- - - - - - 0x01191C 04:990C: 09        .byte $09   ; 
- - - - - - 0x01191D 04:990D: 7F        .byte $7F   ; 
- D 0 - I - 0x01191E 04:990E: 00        .byte $00   ; 
- D 0 - I - 0x01191F 04:990F: 00        .byte $00   ; 
- D 0 - I - 0x011920 04:9910: 00        .byte $00   ; 
- - - - - - 0x011921 04:9911: 00        .byte $00   ; 
- - - - - - 0x011922 04:9912: 09        .byte $09   ; 
- - - - - - 0x011923 04:9913: 7F        .byte $7F   ; 
- D 0 - I - 0x011924 04:9914: 03        .byte $03   ; 
- D 0 - I - 0x011925 04:9915: A0        .byte $A0   ; 
- D 0 - I - 0x011926 04:9916: 01        .byte $01   ; 
- D 0 - I - 0x011927 04:9917: 02        .byte $02   ; 
- D 0 - I - 0x011928 04:9918: 08        .byte $08   ; 
- D 0 - I - 0x011929 04:9919: 7F        .byte $7F   ; 
- D 0 - I - 0x01192A 04:991A: 03        .byte $03   ; 
- D 0 - I - 0x01192B 04:991B: 60        .byte $60   ; 
- D 0 - I - 0x01192C 04:991C: 01        .byte $01   ; 
- D 0 - I - 0x01192D 04:991D: 02        .byte $02   ; 
- D 0 - I - 0x01192E 04:991E: 0A        .byte $0A   ; 
- D 0 - I - 0x01192F 04:991F: 7F        .byte $7F   ; 
- D 0 - I - 0x011930 04:9920: FF        .byte $FF   ; 

off_9921:
- D 0 - I - 0x011931 04:9921: 00        .byte $00   ; 
- D 0 - I - 0x011932 04:9922: 00        .byte $00   ; 
- D 0 - I - 0x011933 04:9923: 00        .byte $00   ; 
- - - - - - 0x011934 04:9924: 00        .byte $00   ; 
- - - - - - 0x011935 04:9925: 0A        .byte $0A   ; 
- - - - - - 0x011936 04:9926: 7F        .byte $7F   ; 
- D 0 - I - 0x011937 04:9927: 00        .byte $00   ; 
- D 0 - I - 0x011938 04:9928: 00        .byte $00   ; 
- D 0 - I - 0x011939 04:9929: 00        .byte $00   ; 
- D 0 - I - 0x01193A 04:992A: 00        .byte $00   ; 
- D 0 - I - 0x01193B 04:992B: 0A        .byte $0A   ; 
- D 0 - I - 0x01193C 04:992C: 7F        .byte $7F   ; 
- D 0 - I - 0x01193D 04:992D: 03        .byte $03   ; 
- D 0 - I - 0x01193E 04:992E: 60        .byte $60   ; 
- D 0 - I - 0x01193F 04:992F: 01        .byte $01   ; 
- D 0 - I - 0x011940 04:9930: 01        .byte $01   ; 
- D 0 - I - 0x011941 04:9931: 09        .byte $09   ; 
- D 0 - I - 0x011942 04:9932: 7F        .byte $7F   ; 
- D 0 - I - 0x011943 04:9933: 03        .byte $03   ; 
- D 0 - I - 0x011944 04:9934: F0        .byte $F0   ; 
- D 0 - I - 0x011945 04:9935: 00        .byte $00   ; 
- D 0 - I - 0x011946 04:9936: 02        .byte $02   ; 
- D 0 - I - 0x011947 04:9937: 0B        .byte $0B   ; 
- D 0 - I - 0x011948 04:9938: 7F        .byte $7F   ; 
- D 0 - I - 0x011949 04:9939: FF        .byte $FF   ; 

off_993A:
- D 0 - I - 0x01194A 04:993A: 00        .byte $00   ; 
- D 0 - I - 0x01194B 04:993B: 00        .byte $00   ; 
- D 0 - I - 0x01194C 04:993C: 00        .byte $00   ; 
- - - - - - 0x01194D 04:993D: 00        .byte $00   ; 
- - - - - - 0x01194E 04:993E: 0B        .byte $0B   ; 
- - - - - - 0x01194F 04:993F: 7F        .byte $7F   ; 
- D 0 - I - 0x011950 04:9940: 00        .byte $00   ; 
- D 0 - I - 0x011951 04:9941: 00        .byte $00   ; 
- D 0 - I - 0x011952 04:9942: 00        .byte $00   ; 
- - - - - - 0x011953 04:9943: 00        .byte $00   ; 
- - - - - - 0x011954 04:9944: 0B        .byte $0B   ; 
- - - - - - 0x011955 04:9945: 7F        .byte $7F   ; 
- D 0 - I - 0x011956 04:9946: 03        .byte $03   ; 
- D 0 - I - 0x011957 04:9947: F0        .byte $F0   ; 
- D 0 - I - 0x011958 04:9948: 00        .byte $00   ; 
- D 0 - I - 0x011959 04:9949: 01        .byte $01   ; 
- D 0 - I - 0x01195A 04:994A: 0A        .byte $0A   ; 
- D 0 - I - 0x01195B 04:994B: 7F        .byte $7F   ; 
- D 0 - I - 0x01195C 04:994C: 03        .byte $03   ; 
- D 0 - I - 0x01195D 04:994D: E0        .byte $E0   ; 
- D 0 - I - 0x01195E 04:994E: 00        .byte $00   ; 
- D 0 - I - 0x01195F 04:994F: 01        .byte $01   ; 
- D 0 - I - 0x011960 04:9950: 0E        .byte $0E   ; 
- D 0 - I - 0x011961 04:9951: 7F        .byte $7F   ; 
- D 0 - I - 0x011962 04:9952: FF        .byte $FF   ; 

off_9953:
- D 0 - I - 0x011963 04:9953: 00        .byte $00   ; 
- D 0 - I - 0x011964 04:9954: 00        .byte $00   ; 
- D 0 - I - 0x011965 04:9955: 00        .byte $00   ; 
- - - - - - 0x011966 04:9956: 00        .byte $00   ; 
- - - - - - 0x011967 04:9957: 0C        .byte $0C   ; 
- - - - - - 0x011968 04:9958: 7F        .byte $7F   ; 
- D 0 - I - 0x011969 04:9959: 00        .byte $00   ; 
- D 0 - I - 0x01196A 04:995A: 00        .byte $00   ; 
- D 0 - I - 0x01196B 04:995B: 00        .byte $00   ; 
- - - - - - 0x01196C 04:995C: 00        .byte $00   ; 
- - - - - - 0x01196D 04:995D: 0C        .byte $0C   ; 
- - - - - - 0x01196E 04:995E: 7F        .byte $7F   ; 
- D 0 - I - 0x01196F 04:995F: 03        .byte $03   ; 
- D 0 - I - 0x011970 04:9960: A0        .byte $A0   ; 
- D 0 - I - 0x011971 04:9961: 00        .byte $00   ; 
- D 0 - I - 0x011972 04:9962: 01        .byte $01   ; 
- D 0 - I - 0x011973 04:9963: 0E        .byte $0E   ; 
- D 0 - I - 0x011974 04:9964: 7F        .byte $7F   ; 
- D 0 - I - 0x011975 04:9965: 03        .byte $03   ; 
- D 0 - I - 0x011976 04:9966: 90        .byte $90   ; 
- D 0 - I - 0x011977 04:9967: 00        .byte $00   ; 
- D 0 - I - 0x011978 04:9968: 01        .byte $01   ; 
- D 0 - I - 0x011979 04:9969: 0F        .byte $0F   ; 
- D 0 - I - 0x01197A 04:996A: 7F        .byte $7F   ; 
- D 0 - I - 0x01197B 04:996B: FF        .byte $FF   ; 

off_996C:
- D 0 - I - 0x01197C 04:996C: 00        .byte $00   ; 
- D 0 - I - 0x01197D 04:996D: 00        .byte $00   ; 
- D 0 - I - 0x01197E 04:996E: 00        .byte $00   ; 
- - - - - - 0x01197F 04:996F: 00        .byte $00   ; 
- - - - - - 0x011980 04:9970: 0D        .byte $0D   ; 
- - - - - - 0x011981 04:9971: 7F        .byte $7F   ; 
- D 0 - I - 0x011982 04:9972: 00        .byte $00   ; 
- D 0 - I - 0x011983 04:9973: 00        .byte $00   ; 
- D 0 - I - 0x011984 04:9974: 00        .byte $00   ; 
- - - - - - 0x011985 04:9975: 00        .byte $00   ; 
- - - - - - 0x011986 04:9976: 0D        .byte $0D   ; 
- - - - - - 0x011987 04:9977: 7F        .byte $7F   ; 
- D 0 - I - 0x011988 04:9978: 03        .byte $03   ; 
- D 0 - I - 0x011989 04:9979: 40        .byte $40   ; 
- D 0 - I - 0x01198A 04:997A: 00        .byte $00   ; 
- - - - - - 0x01198B 04:997B: 01        .byte $01   ; 
- - - - - - 0x01198C 04:997C: 0F        .byte $0F   ; 
- - - - - - 0x01198D 04:997D: 7F        .byte $7F   ; 
- D 0 - I - 0x01198E 04:997E: 03        .byte $03   ; 
- D 0 - I - 0x01198F 04:997F: 08        .byte $08   ; 
- D 0 - I - 0x011990 04:9980: 00        .byte $00   ; 
- - - - - - 0x011991 04:9981: 00        .byte $00   ; 
- - - - - - 0x011992 04:9982: 0D        .byte $0D   ; 
- - - - - - 0x011993 04:9983: 7F        .byte $7F   ; 
- D 0 - I - 0x011994 04:9984: FF        .byte $FF   ; 

off_9985:
- D 0 - I - 0x011995 04:9985: 00        .byte $00   ; 
- D 0 - I - 0x011996 04:9986: 00        .byte $00   ; 
- D 0 - I - 0x011997 04:9987: 00        .byte $00   ; 
- - - - - - 0x011998 04:9988: 00        .byte $00   ; 
- - - - - - 0x011999 04:9989: 0E        .byte $0E   ; 
- - - - - - 0x01199A 04:998A: 7F        .byte $7F   ; 
- D 0 - I - 0x01199B 04:998B: 00        .byte $00   ; 
- D 0 - I - 0x01199C 04:998C: 00        .byte $00   ; 
- D 0 - I - 0x01199D 04:998D: 00        .byte $00   ; 
- - - - - - 0x01199E 04:998E: 00        .byte $00   ; 
- - - - - - 0x01199F 04:998F: 0E        .byte $0E   ; 
- - - - - - 0x0119A0 04:9990: 7F        .byte $7F   ; 
- D 0 - I - 0x0119A1 04:9991: 03        .byte $03   ; 
- D 0 - I - 0x0119A2 04:9992: E0        .byte $E0   ; 
- D 0 - I - 0x0119A3 04:9993: 00        .byte $00   ; 
- - - - - - 0x0119A4 04:9994: 02        .byte $02   ; 
- - - - - - 0x0119A5 04:9995: 0B        .byte $0B   ; 
- - - - - - 0x0119A6 04:9996: 7F        .byte $7F   ; 
- D 0 - I - 0x0119A7 04:9997: 03        .byte $03   ; 
- D 0 - I - 0x0119A8 04:9998: A0        .byte $A0   ; 
- D 0 - I - 0x0119A9 04:9999: 00        .byte $00   ; 
- D 0 - I - 0x0119AA 04:999A: 02        .byte $02   ; 
- D 0 - I - 0x0119AB 04:999B: 0C        .byte $0C   ; 
- D 0 - I - 0x0119AC 04:999C: 7F        .byte $7F   ; 
- D 0 - I - 0x0119AD 04:999D: FF        .byte $FF   ; 

off_999E:
- D 0 - I - 0x0119AE 04:999E: 00        .byte $00   ; 
- D 0 - I - 0x0119AF 04:999F: 00        .byte $00   ; 
- D 0 - I - 0x0119B0 04:99A0: 00        .byte $00   ; 
- - - - - - 0x0119B1 04:99A1: 00        .byte $00   ; 
- - - - - - 0x0119B2 04:99A2: 0F        .byte $0F   ; 
- - - - - - 0x0119B3 04:99A3: 7F        .byte $7F   ; 
- D 0 - I - 0x0119B4 04:99A4: 00        .byte $00   ; 
- D 0 - I - 0x0119B5 04:99A5: 00        .byte $00   ; 
- D 0 - I - 0x0119B6 04:99A6: 00        .byte $00   ; 
- - - - - - 0x0119B7 04:99A7: 00        .byte $00   ; 
- - - - - - 0x0119B8 04:99A8: 0F        .byte $0F   ; 
- - - - - - 0x0119B9 04:99A9: 7F        .byte $7F   ; 
- D 0 - I - 0x0119BA 04:99AA: 03        .byte $03   ; 
- D 0 - I - 0x0119BB 04:99AB: 90        .byte $90   ; 
- D 0 - I - 0x0119BC 04:99AC: 00        .byte $00   ; 
- D 0 - I - 0x0119BD 04:99AD: 02        .byte $02   ; 
- D 0 - I - 0x0119BE 04:99AE: 0C        .byte $0C   ; 
- D 0 - I - 0x0119BF 04:99AF: 7F        .byte $7F   ; 
- D 0 - I - 0x0119C0 04:99B0: 03        .byte $03   ; 
- D 0 - I - 0x0119C1 04:99B1: 40        .byte $40   ; 
- D 0 - I - 0x0119C2 04:99B2: 00        .byte $00   ; 
- D 0 - I - 0x0119C3 04:99B3: 02        .byte $02   ; 
- D 0 - I - 0x0119C4 04:99B4: 0D        .byte $0D   ; 
- D 0 - I - 0x0119C5 04:99B5: 7F        .byte $7F   ; 
- D 0 - I - 0x0119C6 04:99B6: FF        .byte $FF   ; 

off_99B7:
- D 0 - I - 0x0119C7 04:99B7: 00        .byte $00   ; 
- D 0 - I - 0x0119C8 04:99B8: 00        .byte $00   ; 
- D 0 - I - 0x0119C9 04:99B9: 00        .byte $00   ; 
- - - - - - 0x0119CA 04:99BA: 00        .byte $00   ; 
- - - - - - 0x0119CB 04:99BB: 10        .byte $10   ; 
- - - - - - 0x0119CC 04:99BC: 7F        .byte $7F   ; 
- D 0 - I - 0x0119CD 04:99BD: 00        .byte $00   ; 
- D 0 - I - 0x0119CE 04:99BE: 00        .byte $00   ; 
- D 0 - I - 0x0119CF 04:99BF: 00        .byte $00   ; 
- - - - - - 0x0119D0 04:99C0: 00        .byte $00   ; 
- - - - - - 0x0119D1 04:99C1: 10        .byte $10   ; 
- - - - - - 0x0119D2 04:99C2: 7F        .byte $7F   ; 
- D 0 - I - 0x0119D3 04:99C3: 03        .byte $03   ; 
- D 0 - I - 0x0119D4 04:99C4: F0        .byte $F0   ; 
- D 0 - I - 0x0119D5 04:99C5: 00        .byte $00   ; 
- D 0 - I - 0x0119D6 04:99C6: 02        .byte $02   ; 
- D 0 - I - 0x0119D7 04:99C7: 0A        .byte $0A   ; 
- D 0 - I - 0x0119D8 04:99C8: 7F        .byte $7F   ; 
- D 0 - I - 0x0119D9 04:99C9: 03        .byte $03   ; 
- D 0 - I - 0x0119DA 04:99CA: E0        .byte $E0   ; 
- D 0 - I - 0x0119DB 04:99CB: 00        .byte $00   ; 
- D 0 - I - 0x0119DC 04:99CC: 02        .byte $02   ; 
- D 0 - I - 0x0119DD 04:99CD: 18        .byte $18   ; 
- D 0 - I - 0x0119DE 04:99CE: 7F        .byte $7F   ; 
- D 0 - I - 0x0119DF 04:99CF: FF        .byte $FF   ; 

off_99D0:
- D 0 - I - 0x0119E0 04:99D0: 00        .byte $00   ; 
- D 0 - I - 0x0119E1 04:99D1: 00        .byte $00   ; 
- D 0 - I - 0x0119E2 04:99D2: 00        .byte $00   ; 
- - - - - - 0x0119E3 04:99D3: 00        .byte $00   ; 
- - - - - - 0x0119E4 04:99D4: 11        .byte $11   ; 
- - - - - - 0x0119E5 04:99D5: 7F        .byte $7F   ; 
- D 0 - I - 0x0119E6 04:99D6: 00        .byte $00   ; 
- D 0 - I - 0x0119E7 04:99D7: 00        .byte $00   ; 
- D 0 - I - 0x0119E8 04:99D8: 00        .byte $00   ; 
- - - - - - 0x0119E9 04:99D9: 00        .byte $00   ; 
- - - - - - 0x0119EA 04:99DA: 11        .byte $11   ; 
- - - - - - 0x0119EB 04:99DB: 7F        .byte $7F   ; 
- D 0 - I - 0x0119EC 04:99DC: 03        .byte $03   ; 
- D 0 - I - 0x0119ED 04:99DD: D0        .byte $D0   ; 
- D 0 - I - 0x0119EE 04:99DE: 00        .byte $00   ; 
- - - - - - 0x0119EF 04:99DF: 02        .byte $02   ; 
- - - - - - 0x0119F0 04:99E0: 18        .byte $18   ; 
- - - - - - 0x0119F1 04:99E1: 7F        .byte $7F   ; 
- D 0 - I - 0x0119F2 04:99E2: 03        .byte $03   ; 
- D 0 - I - 0x0119F3 04:99E3: B0        .byte $B0   ; 
- D 0 - I - 0x0119F4 04:99E4: 00        .byte $00   ; 
- D 0 - I - 0x0119F5 04:99E5: 02        .byte $02   ; 
- D 0 - I - 0x0119F6 04:99E6: 19        .byte $19   ; 
- D 0 - I - 0x0119F7 04:99E7: 7F        .byte $7F   ; 
- D 0 - I - 0x0119F8 04:99E8: FF        .byte $FF   ; 

off_99E9:
- D 0 - I - 0x0119F9 04:99E9: 00        .byte $00   ; 
- D 0 - I - 0x0119FA 04:99EA: 00        .byte $00   ; 
- D 0 - I - 0x0119FB 04:99EB: 00        .byte $00   ; 
- - - - - - 0x0119FC 04:99EC: 00        .byte $00   ; 
- - - - - - 0x0119FD 04:99ED: 12        .byte $12   ; 
- - - - - - 0x0119FE 04:99EE: 7F        .byte $7F   ; 
- D 0 - I - 0x0119FF 04:99EF: 00        .byte $00   ; 
- D 0 - I - 0x011A00 04:99F0: 00        .byte $00   ; 
- D 0 - I - 0x011A01 04:99F1: 00        .byte $00   ; 
- - - - - - 0x011A02 04:99F2: 00        .byte $00   ; 
- - - - - - 0x011A03 04:99F3: 12        .byte $12   ; 
- - - - - - 0x011A04 04:99F4: 7F        .byte $7F   ; 
- D 0 - I - 0x011A05 04:99F5: 03        .byte $03   ; 
- D 0 - I - 0x011A06 04:99F6: A0        .byte $A0   ; 
- D 0 - I - 0x011A07 04:99F7: 00        .byte $00   ; 
- - - - - - 0x011A08 04:99F8: 02        .byte $02   ; 
- - - - - - 0x011A09 04:99F9: 19        .byte $19   ; 
- - - - - - 0x011A0A 04:99FA: 7F        .byte $7F   ; 
- D 0 - I - 0x011A0B 04:99FB: 03        .byte $03   ; 
- D 0 - I - 0x011A0C 04:99FC: 80        .byte $80   ; 
- D 0 - I - 0x011A0D 04:99FD: 00        .byte $00   ; 
- D 0 - I - 0x011A0E 04:99FE: 02        .byte $02   ; 
- D 0 - I - 0x011A0F 04:99FF: 1A        .byte $1A   ; 
- D 0 - I - 0x011A10 04:9A00: 7F        .byte $7F   ; 
- D 0 - I - 0x011A11 04:9A01: FF        .byte $FF   ; 

off_9A02:
- D 0 - I - 0x011A12 04:9A02: 00        .byte $00   ; 
- D 0 - I - 0x011A13 04:9A03: 00        .byte $00   ; 
- D 0 - I - 0x011A14 04:9A04: 00        .byte $00   ; 
- - - - - - 0x011A15 04:9A05: 00        .byte $00   ; 
- - - - - - 0x011A16 04:9A06: 13        .byte $13   ; 
- - - - - - 0x011A17 04:9A07: 7F        .byte $7F   ; 
- D 0 - I - 0x011A18 04:9A08: 00        .byte $00   ; 
- D 0 - I - 0x011A19 04:9A09: 00        .byte $00   ; 
- D 0 - I - 0x011A1A 04:9A0A: 00        .byte $00   ; 
- - - - - - 0x011A1B 04:9A0B: 00        .byte $00   ; 
- - - - - - 0x011A1C 04:9A0C: 13        .byte $13   ; 
- - - - - - 0x011A1D 04:9A0D: 7F        .byte $7F   ; 
- D 0 - I - 0x011A1E 04:9A0E: 03        .byte $03   ; 
- D 0 - I - 0x011A1F 04:9A0F: 70        .byte $70   ; 
- D 0 - I - 0x011A20 04:9A10: 00        .byte $00   ; 
- D 0 - I - 0x011A21 04:9A11: 02        .byte $02   ; 
- D 0 - I - 0x011A22 04:9A12: 1A        .byte $1A   ; 
- D 0 - I - 0x011A23 04:9A13: 7F        .byte $7F   ; 
- D 0 - I - 0x011A24 04:9A14: 03        .byte $03   ; 
- D 0 - I - 0x011A25 04:9A15: 60        .byte $60   ; 
- D 0 - I - 0x011A26 04:9A16: 00        .byte $00   ; 
- D 0 - I - 0x011A27 04:9A17: 02        .byte $02   ; 
- D 0 - I - 0x011A28 04:9A18: 1B        .byte $1B   ; 
- D 0 - I - 0x011A29 04:9A19: 7F        .byte $7F   ; 
- D 0 - I - 0x011A2A 04:9A1A: FF        .byte $FF   ; 

off_9A1B:
- D 0 - I - 0x011A2B 04:9A1B: 00        .byte $00   ; 
- D 0 - I - 0x011A2C 04:9A1C: 00        .byte $00   ; 
- D 0 - I - 0x011A2D 04:9A1D: 00        .byte $00   ; 
- - - - - - 0x011A2E 04:9A1E: 00        .byte $00   ; 
- - - - - - 0x011A2F 04:9A1F: 14        .byte $14   ; 
- - - - - - 0x011A30 04:9A20: 7F        .byte $7F   ; 
- D 0 - I - 0x011A31 04:9A21: 00        .byte $00   ; 
- D 0 - I - 0x011A32 04:9A22: 00        .byte $00   ; 
- D 0 - I - 0x011A33 04:9A23: 00        .byte $00   ; 
- - - - - - 0x011A34 04:9A24: 00        .byte $00   ; 
- - - - - - 0x011A35 04:9A25: 14        .byte $14   ; 
- - - - - - 0x011A36 04:9A26: 7F        .byte $7F   ; 
- D 0 - I - 0x011A37 04:9A27: 03        .byte $03   ; 
- D 0 - I - 0x011A38 04:9A28: 50        .byte $50   ; 
- D 0 - I - 0x011A39 04:9A29: 00        .byte $00   ; 
- D 0 - I - 0x011A3A 04:9A2A: 02        .byte $02   ; 
- D 0 - I - 0x011A3B 04:9A2B: 1B        .byte $1B   ; 
- D 0 - I - 0x011A3C 04:9A2C: 7F        .byte $7F   ; 
- D 0 - I - 0x011A3D 04:9A2D: 03        .byte $03   ; 
- D 0 - I - 0x011A3E 04:9A2E: 40        .byte $40   ; 
- D 0 - I - 0x011A3F 04:9A2F: 00        .byte $00   ; 
- D 0 - I - 0x011A40 04:9A30: 02        .byte $02   ; 
- D 0 - I - 0x011A41 04:9A31: 1C        .byte $1C   ; 
- D 0 - I - 0x011A42 04:9A32: 7F        .byte $7F   ; 
- D 0 - I - 0x011A43 04:9A33: FF        .byte $FF   ; 

off_9A34:
- D 0 - I - 0x011A44 04:9A34: 00        .byte $00   ; 
- D 0 - I - 0x011A45 04:9A35: 00        .byte $00   ; 
- D 0 - I - 0x011A46 04:9A36: 00        .byte $00   ; 
- - - - - - 0x011A47 04:9A37: 00        .byte $00   ; 
- - - - - - 0x011A48 04:9A38: 15        .byte $15   ; 
- - - - - - 0x011A49 04:9A39: 7F        .byte $7F   ; 
- D 0 - I - 0x011A4A 04:9A3A: 00        .byte $00   ; 
- D 0 - I - 0x011A4B 04:9A3B: 00        .byte $00   ; 
- D 0 - I - 0x011A4C 04:9A3C: 00        .byte $00   ; 
- - - - - - 0x011A4D 04:9A3D: 00        .byte $00   ; 
- - - - - - 0x011A4E 04:9A3E: 15        .byte $15   ; 
- - - - - - 0x011A4F 04:9A3F: 7F        .byte $7F   ; 
- D 0 - I - 0x011A50 04:9A40: 03        .byte $03   ; 
- D 0 - I - 0x011A51 04:9A41: 30        .byte $30   ; 
- D 0 - I - 0x011A52 04:9A42: 00        .byte $00   ; 
- D 0 - I - 0x011A53 04:9A43: 02        .byte $02   ; 
- D 0 - I - 0x011A54 04:9A44: 1D        .byte $1D   ; 
- D 0 - I - 0x011A55 04:9A45: 7F        .byte $7F   ; 
- D 0 - I - 0x011A56 04:9A46: 03        .byte $03   ; 
- D 0 - I - 0x011A57 04:9A47: 10        .byte $10   ; 
- D 0 - I - 0x011A58 04:9A48: 00        .byte $00   ; 
- - - - - - 0x011A59 04:9A49: 02        .byte $02   ; 
- - - - - - 0x011A5A 04:9A4A: 0D        .byte $0D   ; 
- - - - - - 0x011A5B 04:9A4B: 7F        .byte $7F   ; 
- D 0 - I - 0x011A5C 04:9A4C: FF        .byte $FF   ; 

off_9A4D:
- D 0 - I - 0x011A5D 04:9A4D: 00        .byte $00   ; 
- D 0 - I - 0x011A5E 04:9A4E: 00        .byte $00   ; 
- D 0 - I - 0x011A5F 04:9A4F: 00        .byte $00   ; 
- - - - - - 0x011A60 04:9A50: 00        .byte $00   ; 
- - - - - - 0x011A61 04:9A51: 16        .byte $16   ; 
- - - - - - 0x011A62 04:9A52: 7F        .byte $7F   ; 
- D 0 - I - 0x011A63 04:9A53: 00        .byte $00   ; 
- D 0 - I - 0x011A64 04:9A54: 00        .byte $00   ; 
- D 0 - I - 0x011A65 04:9A55: 00        .byte $00   ; 
- - - - - - 0x011A66 04:9A56: 00        .byte $00   ; 
- - - - - - 0x011A67 04:9A57: 16        .byte $16   ; 
- - - - - - 0x011A68 04:9A58: 7F        .byte $7F   ; 
- D 0 - I - 0x011A69 04:9A59: 03        .byte $03   ; 
- D 0 - I - 0x011A6A 04:9A5A: 60        .byte $60   ; 
- D 0 - I - 0x011A6B 04:9A5B: 00        .byte $00   ; 
- D 0 - I - 0x011A6C 04:9A5C: 02        .byte $02   ; 
- D 0 - I - 0x011A6D 04:9A5D: 1E        .byte $1E   ; 
- D 0 - I - 0x011A6E 04:9A5E: 7F        .byte $7F   ; 
- D 0 - I - 0x011A6F 04:9A5F: 03        .byte $03   ; 
- D 0 - I - 0x011A70 04:9A60: 40        .byte $40   ; 
- D 0 - I - 0x011A71 04:9A61: 00        .byte $00   ; 
- - - - - - 0x011A72 04:9A62: 02        .byte $02   ; 
- - - - - - 0x011A73 04:9A63: 1D        .byte $1D   ; 
- - - - - - 0x011A74 04:9A64: 7F        .byte $7F   ; 
- D 0 - I - 0x011A75 04:9A65: FF        .byte $FF   ; 

off_9A66:
- D 0 - I - 0x011A76 04:9A66: 00        .byte $00   ; 
- D 0 - I - 0x011A77 04:9A67: 00        .byte $00   ; 
- D 0 - I - 0x011A78 04:9A68: 00        .byte $00   ; 
- - - - - - 0x011A79 04:9A69: 00        .byte $00   ; 
- - - - - - 0x011A7A 04:9A6A: 17        .byte $17   ; 
- - - - - - 0x011A7B 04:9A6B: 7F        .byte $7F   ; 
- D 0 - I - 0x011A7C 04:9A6C: 00        .byte $00   ; 
- D 0 - I - 0x011A7D 04:9A6D: 00        .byte $00   ; 
- D 0 - I - 0x011A7E 04:9A6E: 00        .byte $00   ; 
- D 0 - I - 0x011A7F 04:9A6F: 00        .byte $00   ; 
- D 0 - I - 0x011A80 04:9A70: 17        .byte $17   ; 
- D 0 - I - 0x011A81 04:9A71: 7F        .byte $7F   ; 
- D 0 - I - 0x011A82 04:9A72: 03        .byte $03   ; 
- D 0 - I - 0x011A83 04:9A73: A0        .byte $A0   ; 
- D 0 - I - 0x011A84 04:9A74: 00        .byte $00   ; 
- - - - - - 0x011A85 04:9A75: 02        .byte $02   ; 
- - - - - - 0x011A86 04:9A76: 19        .byte $19   ; 
- - - - - - 0x011A87 04:9A77: 7F        .byte $7F   ; 
- D 0 - I - 0x011A88 04:9A78: 03        .byte $03   ; 
- D 0 - I - 0x011A89 04:9A79: 80        .byte $80   ; 
- D 0 - I - 0x011A8A 04:9A7A: 00        .byte $00   ; 
- D 0 - I - 0x011A8B 04:9A7B: 02        .byte $02   ; 
- D 0 - I - 0x011A8C 04:9A7C: 1F        .byte $1F   ; 
- D 0 - I - 0x011A8D 04:9A7D: 7F        .byte $7F   ; 
- D 0 - I - 0x011A8E 04:9A7E: FF        .byte $FF   ; 

off_9A7F:
- D 0 - I - 0x011A8F 04:9A7F: 00        .byte $00   ; 
- D 0 - I - 0x011A90 04:9A80: 00        .byte $00   ; 
- D 0 - I - 0x011A91 04:9A81: 00        .byte $00   ; 
- - - - - - 0x011A92 04:9A82: 00        .byte $00   ; 
- - - - - - 0x011A93 04:9A83: 18        .byte $18   ; 
- - - - - - 0x011A94 04:9A84: 7F        .byte $7F   ; 
- D 0 - I - 0x011A95 04:9A85: 00        .byte $00   ; 
- D 0 - I - 0x011A96 04:9A86: 00        .byte $00   ; 
- D 0 - I - 0x011A97 04:9A87: 00        .byte $00   ; 
- - - - - - 0x011A98 04:9A88: 00        .byte $00   ; 
- - - - - - 0x011A99 04:9A89: 81        .byte $81   ; 
- - - - - - 0x011A9A 04:9A8A: 7F        .byte $7F   ; 
- D 0 - I - 0x011A9B 04:9A8B: 03        .byte $03   ; 
- D 0 - I - 0x011A9C 04:9A8C: E0        .byte $E0   ; 
- D 0 - I - 0x011A9D 04:9A8D: 00        .byte $00   ; 
- - - - - - 0x011A9E 04:9A8E: 03        .byte $03   ; 
- - - - - - 0x011A9F 04:9A8F: 10        .byte $10   ; 
- - - - - - 0x011AA0 04:9A90: 7F        .byte $7F   ; 
- D 0 - I - 0x011AA1 04:9A91: 03        .byte $03   ; 
- D 0 - I - 0x011AA2 04:9A92: D0        .byte $D0   ; 
- D 0 - I - 0x011AA3 04:9A93: 00        .byte $00   ; 
- - - - - - 0x011AA4 04:9A94: 01        .byte $01   ; 
- - - - - - 0x011AA5 04:9A95: 11        .byte $11   ; 
- - - - - - 0x011AA6 04:9A96: 7F        .byte $7F   ; 
- D 0 - I - 0x011AA7 04:9A97: FF        .byte $FF   ; 

off_9A98:
- D 0 - I - 0x011AA8 04:9A98: 00        .byte $00   ; 
- D 0 - I - 0x011AA9 04:9A99: 00        .byte $00   ; 
- D 0 - I - 0x011AAA 04:9A9A: 00        .byte $00   ; 
- - - - - - 0x011AAB 04:9A9B: 00        .byte $00   ; 
- - - - - - 0x011AAC 04:9A9C: 19        .byte $19   ; 
- - - - - - 0x011AAD 04:9A9D: 7F        .byte $7F   ; 
- D 0 - I - 0x011AAE 04:9A9E: 00        .byte $00   ; 
- D 0 - I - 0x011AAF 04:9A9F: 00        .byte $00   ; 
- D 0 - I - 0x011AB0 04:9AA0: 00        .byte $00   ; 
- - - - - - 0x011AB1 04:9AA1: 00        .byte $00   ; 
- - - - - - 0x011AB2 04:9AA2: 19        .byte $19   ; 
- - - - - - 0x011AB3 04:9AA3: 7F        .byte $7F   ; 
- D 0 - I - 0x011AB4 04:9AA4: 03        .byte $03   ; 
- D 0 - I - 0x011AB5 04:9AA5: B0        .byte $B0   ; 
- D 0 - I - 0x011AB6 04:9AA6: 00        .byte $00   ; 
- - - - - - 0x011AB7 04:9AA7: 03        .byte $03   ; 
- - - - - - 0x011AB8 04:9AA8: 11        .byte $11   ; 
- - - - - - 0x011AB9 04:9AA9: 7F        .byte $7F   ; 
- D 0 - I - 0x011ABA 04:9AAA: 03        .byte $03   ; 
- D 0 - I - 0x011ABB 04:9AAB: A0        .byte $A0   ; 
- D 0 - I - 0x011ABC 04:9AAC: 00        .byte $00   ; 
- D 0 - I - 0x011ABD 04:9AAD: 01        .byte $01   ; 
- D 0 - I - 0x011ABE 04:9AAE: 12        .byte $12   ; 
- D 0 - I - 0x011ABF 04:9AAF: 7F        .byte $7F   ; 
- D 0 - I - 0x011AC0 04:9AB0: FF        .byte $FF   ; 

off_9AB1:
- D 0 - I - 0x011AC1 04:9AB1: 00        .byte $00   ; 
- D 0 - I - 0x011AC2 04:9AB2: 00        .byte $00   ; 
- D 0 - I - 0x011AC3 04:9AB3: 00        .byte $00   ; 
- - - - - - 0x011AC4 04:9AB4: 00        .byte $00   ; 
- - - - - - 0x011AC5 04:9AB5: 1A        .byte $1A   ; 
- - - - - - 0x011AC6 04:9AB6: 7F        .byte $7F   ; 
- D 0 - I - 0x011AC7 04:9AB7: 00        .byte $00   ; 
- D 0 - I - 0x011AC8 04:9AB8: 00        .byte $00   ; 
- D 0 - I - 0x011AC9 04:9AB9: 00        .byte $00   ; 
- - - - - - 0x011ACA 04:9ABA: 00        .byte $00   ; 
- - - - - - 0x011ACB 04:9ABB: 1A        .byte $1A   ; 
- - - - - - 0x011ACC 04:9ABC: 7F        .byte $7F   ; 
- D 0 - I - 0x011ACD 04:9ABD: 03        .byte $03   ; 
- D 0 - I - 0x011ACE 04:9ABE: 80        .byte $80   ; 
- D 0 - I - 0x011ACF 04:9ABF: 00        .byte $00   ; 
- D 0 - I - 0x011AD0 04:9AC0: 03        .byte $03   ; 
- D 0 - I - 0x011AD1 04:9AC1: 12        .byte $12   ; 
- D 0 - I - 0x011AD2 04:9AC2: 7F        .byte $7F   ; 
- D 0 - I - 0x011AD3 04:9AC3: 03        .byte $03   ; 
- D 0 - I - 0x011AD4 04:9AC4: 70        .byte $70   ; 
- D 0 - I - 0x011AD5 04:9AC5: 00        .byte $00   ; 
- D 0 - I - 0x011AD6 04:9AC6: 01        .byte $01   ; 
- D 0 - I - 0x011AD7 04:9AC7: 13        .byte $13   ; 
- D 0 - I - 0x011AD8 04:9AC8: 7F        .byte $7F   ; 
- D 0 - I - 0x011AD9 04:9AC9: FF        .byte $FF   ; 

off_9ACA:
- D 0 - I - 0x011ADA 04:9ACA: 00        .byte $00   ; 
- D 0 - I - 0x011ADB 04:9ACB: 00        .byte $00   ; 
- D 0 - I - 0x011ADC 04:9ACC: 00        .byte $00   ; 
- - - - - - 0x011ADD 04:9ACD: 00        .byte $00   ; 
- - - - - - 0x011ADE 04:9ACE: 1B        .byte $1B   ; 
- - - - - - 0x011ADF 04:9ACF: 7F        .byte $7F   ; 
- D 0 - I - 0x011AE0 04:9AD0: 00        .byte $00   ; 
- D 0 - I - 0x011AE1 04:9AD1: 00        .byte $00   ; 
- D 0 - I - 0x011AE2 04:9AD2: 00        .byte $00   ; 
- - - - - - 0x011AE3 04:9AD3: 00        .byte $00   ; 
- - - - - - 0x011AE4 04:9AD4: 1B        .byte $1B   ; 
- - - - - - 0x011AE5 04:9AD5: 7F        .byte $7F   ; 
- D 0 - I - 0x011AE6 04:9AD6: 03        .byte $03   ; 
- D 0 - I - 0x011AE7 04:9AD7: 60        .byte $60   ; 
- D 0 - I - 0x011AE8 04:9AD8: 00        .byte $00   ; 
- - - - - - 0x011AE9 04:9AD9: 03        .byte $03   ; 
- - - - - - 0x011AEA 04:9ADA: 13        .byte $13   ; 
- - - - - - 0x011AEB 04:9ADB: 7F        .byte $7F   ; 
- D 0 - I - 0x011AEC 04:9ADC: 03        .byte $03   ; 
- D 0 - I - 0x011AED 04:9ADD: 50        .byte $50   ; 
- D 0 - I - 0x011AEE 04:9ADE: 00        .byte $00   ; 
- D 0 - I - 0x011AEF 04:9ADF: 03        .byte $03   ; 
- D 0 - I - 0x011AF0 04:9AE0: 14        .byte $14   ; 
- D 0 - I - 0x011AF1 04:9AE1: 7F        .byte $7F   ; 
- D 0 - I - 0x011AF2 04:9AE2: FF        .byte $FF   ; 

off_9AE3:
- D 0 - I - 0x011AF3 04:9AE3: 00        .byte $00   ; 
- D 0 - I - 0x011AF4 04:9AE4: 00        .byte $00   ; 
- D 0 - I - 0x011AF5 04:9AE5: 00        .byte $00   ; 
- - - - - - 0x011AF6 04:9AE6: 00        .byte $00   ; 
- - - - - - 0x011AF7 04:9AE7: 1C        .byte $1C   ; 
- - - - - - 0x011AF8 04:9AE8: 7F        .byte $7F   ; 
- D 0 - I - 0x011AF9 04:9AE9: 00        .byte $00   ; 
- D 0 - I - 0x011AFA 04:9AEA: 00        .byte $00   ; 
- D 0 - I - 0x011AFB 04:9AEB: 00        .byte $00   ; 
- - - - - - 0x011AFC 04:9AEC: 00        .byte $00   ; 
- - - - - - 0x011AFD 04:9AED: 1C        .byte $1C   ; 
- - - - - - 0x011AFE 04:9AEE: 7F        .byte $7F   ; 
- D 0 - I - 0x011AFF 04:9AEF: 03        .byte $03   ; 
- D 0 - I - 0x011B00 04:9AF0: 40        .byte $40   ; 
- D 0 - I - 0x011B01 04:9AF1: 00        .byte $00   ; 
- - - - - - 0x011B02 04:9AF2: 03        .byte $03   ; 
- - - - - - 0x011B03 04:9AF3: 14        .byte $14   ; 
- - - - - - 0x011B04 04:9AF4: 7F        .byte $7F   ; 
- D 0 - I - 0x011B05 04:9AF5: 03        .byte $03   ; 
- D 0 - I - 0x011B06 04:9AF6: 30        .byte $30   ; 
- D 0 - I - 0x011B07 04:9AF7: 00        .byte $00   ; 
- D 0 - I - 0x011B08 04:9AF8: 01        .byte $01   ; 
- D 0 - I - 0x011B09 04:9AF9: 15        .byte $15   ; 
- D 0 - I - 0x011B0A 04:9AFA: 7F        .byte $7F   ; 
- D 0 - I - 0x011B0B 04:9AFB: FF        .byte $FF   ; 

off_9AFC:
- D 0 - I - 0x011B0C 04:9AFC: 00        .byte $00   ; 
- D 0 - I - 0x011B0D 04:9AFD: 00        .byte $00   ; 
- D 0 - I - 0x011B0E 04:9AFE: 00        .byte $00   ; 
- - - - - - 0x011B0F 04:9AFF: 00        .byte $00   ; 
- - - - - - 0x011B10 04:9B00: 1D        .byte $1D   ; 
- - - - - - 0x011B11 04:9B01: 7F        .byte $7F   ; 
- D 0 - I - 0x011B12 04:9B02: 00        .byte $00   ; 
- D 0 - I - 0x011B13 04:9B03: 00        .byte $00   ; 
- D 0 - I - 0x011B14 04:9B04: 00        .byte $00   ; 
- - - - - - 0x011B15 04:9B05: 00        .byte $00   ; 
- - - - - - 0x011B16 04:9B06: 1D        .byte $1D   ; 
- - - - - - 0x011B17 04:9B07: 7F        .byte $7F   ; 
- D 0 - I - 0x011B18 04:9B08: 03        .byte $03   ; 
- D 0 - I - 0x011B19 04:9B09: 40        .byte $40   ; 
- D 0 - I - 0x011B1A 04:9B0A: 00        .byte $00   ; 
- D 0 - I - 0x011B1B 04:9B0B: 01        .byte $01   ; 
- D 0 - I - 0x011B1C 04:9B0C: 16        .byte $16   ; 
- D 0 - I - 0x011B1D 04:9B0D: 7F        .byte $7F   ; 
- D 0 - I - 0x011B1E 04:9B0E: 03        .byte $03   ; 
- D 0 - I - 0x011B1F 04:9B0F: 30        .byte $30   ; 
- D 0 - I - 0x011B20 04:9B10: 00        .byte $00   ; 
- - - - - - 0x011B21 04:9B11: 03        .byte $03   ; 
- - - - - - 0x011B22 04:9B12: 15        .byte $15   ; 
- - - - - - 0x011B23 04:9B13: 7F        .byte $7F   ; 
- D 0 - I - 0x011B24 04:9B14: FF        .byte $FF   ; 

off_9B15:
- D 0 - I - 0x011B25 04:9B15: 00        .byte $00   ; 
- D 0 - I - 0x011B26 04:9B16: 00        .byte $00   ; 
- D 0 - I - 0x011B27 04:9B17: 00        .byte $00   ; 
- - - - - - 0x011B28 04:9B18: 00        .byte $00   ; 
- - - - - - 0x011B29 04:9B19: 1E        .byte $1E   ; 
- - - - - - 0x011B2A 04:9B1A: 7F        .byte $7F   ; 
- D 0 - I - 0x011B2B 04:9B1B: 00        .byte $00   ; 
- D 0 - I - 0x011B2C 04:9B1C: 00        .byte $00   ; 
- D 0 - I - 0x011B2D 04:9B1D: 00        .byte $00   ; 
- - - - - - 0x011B2E 04:9B1E: 00        .byte $00   ; 
- - - - - - 0x011B2F 04:9B1F: 1E        .byte $1E   ; 
- - - - - - 0x011B30 04:9B20: 7F        .byte $7F   ; 
- D 0 - I - 0x011B31 04:9B21: 03        .byte $03   ; 
- D 0 - I - 0x011B32 04:9B22: 70        .byte $70   ; 
- D 0 - I - 0x011B33 04:9B23: 00        .byte $00   ; 
- D 0 - I - 0x011B34 04:9B24: 03        .byte $03   ; 
- D 0 - I - 0x011B35 04:9B25: 1F        .byte $1F   ; 
- D 0 - I - 0x011B36 04:9B26: 7F        .byte $7F   ; 
- D 0 - I - 0x011B37 04:9B27: 03        .byte $03   ; 
- D 0 - I - 0x011B38 04:9B28: 60        .byte $60   ; 
- D 0 - I - 0x011B39 04:9B29: 00        .byte $00   ; 
- - - - - - 0x011B3A 04:9B2A: 03        .byte $03   ; 
- - - - - - 0x011B3B 04:9B2B: 16        .byte $16   ; 
- - - - - - 0x011B3C 04:9B2C: 7F        .byte $7F   ; 
- D 0 - I - 0x011B3D 04:9B2D: FF        .byte $FF   ; 

off_9B2E:
- D 0 - I - 0x011B3E 04:9B2E: 00        .byte $00   ; 
- D 0 - I - 0x011B3F 04:9B2F: 00        .byte $00   ; 
- D 0 - I - 0x011B40 04:9B30: 00        .byte $00   ; 
- - - - - - 0x011B41 04:9B31: 00        .byte $00   ; 
- - - - - - 0x011B42 04:9B32: 1F        .byte $1F   ; 
- - - - - - 0x011B43 04:9B33: 7F        .byte $7F   ; 
- D 0 - I - 0x011B44 04:9B34: 00        .byte $00   ; 
- D 0 - I - 0x011B45 04:9B35: 00        .byte $00   ; 
- D 0 - I - 0x011B46 04:9B36: 00        .byte $00   ; 
- - - - - - 0x011B47 04:9B37: 00        .byte $00   ; 
- - - - - - 0x011B48 04:9B38: 1F        .byte $1F   ; 
- - - - - - 0x011B49 04:9B39: 7F        .byte $7F   ; 
- D 0 - I - 0x011B4A 04:9B3A: 03        .byte $03   ; 
- D 0 - I - 0x011B4B 04:9B3B: 80        .byte $80   ; 
- D 0 - I - 0x011B4C 04:9B3C: 00        .byte $00   ; 
- D 0 - I - 0x011B4D 04:9B3D: 01        .byte $01   ; 
- D 0 - I - 0x011B4E 04:9B3E: 17        .byte $17   ; 
- D 0 - I - 0x011B4F 04:9B3F: 7F        .byte $7F   ; 
- D 0 - I - 0x011B50 04:9B40: 03        .byte $03   ; 
- D 0 - I - 0x011B51 04:9B41: 70        .byte $70   ; 
- D 0 - I - 0x011B52 04:9B42: 00        .byte $00   ; 
- - - - - - 0x011B53 04:9B43: 03        .byte $03   ; 
- - - - - - 0x011B54 04:9B44: 1E        .byte $1E   ; 
- - - - - - 0x011B55 04:9B45: 7F        .byte $7F   ; 
- D 0 - I - 0x011B56 04:9B46: FF        .byte $FF   ; 

off_9B47:
- - - - - - 0x011B57 04:9B47: 00        .byte $00   ; 
- - - - - - 0x011B58 04:9B48: 00        .byte $00   ; 
- - - - - - 0x011B59 04:9B49: 00        .byte $00   ; 
- - - - - - 0x011B5A 04:9B4A: 00        .byte $00   ; 
- - - - - - 0x011B5B 04:9B4B: 20        .byte $20   ; 
- - - - - - 0x011B5C 04:9B4C: 7F        .byte $7F   ; 
- - - - - - 0x011B5D 04:9B4D: 00        .byte $00   ; 
- - - - - - 0x011B5E 04:9B4E: 00        .byte $00   ; 
- - - - - - 0x011B5F 04:9B4F: 00        .byte $00   ; 
- - - - - - 0x011B60 04:9B50: 00        .byte $00   ; 
- - - - - - 0x011B61 04:9B51: 20        .byte $20   ; 
- - - - - - 0x011B62 04:9B52: 7F        .byte $7F   ; 
- - - - - - 0x011B63 04:9B53: 03        .byte $03   ; 
- - - - - - 0x011B64 04:9B54: FF        .byte $FF   ; 
- - - - - - 0x011B65 04:9B55: 02        .byte $02   ; 
- - - - - - 0x011B66 04:9B56: 00        .byte $00   ; 
- - - - - - 0x011B67 04:9B57: 20        .byte $20   ; 
- - - - - - 0x011B68 04:9B58: 7F        .byte $7F   ; 
- - - - - - 0x011B69 04:9B59: 03        .byte $03   ; 
- - - - - - 0x011B6A 04:9B5A: 60        .byte $60   ; 
- - - - - - 0x011B6B 04:9B5B: 02        .byte $02   ; 
- - - - - - 0x011B6C 04:9B5C: 01        .byte $01   ; 
- - - - - - 0x011B6D 04:9B5D: 07        .byte $07   ; 
- - - - - - 0x011B6E 04:9B5E: 7F        .byte $7F   ; 
- - - - - - 0x011B6F 04:9B5F: FF        .byte $FF   ; 



_off005_9B60_07_Trap_Room_pt1:
; con_mission_Trap_Room_pt1
- D 0 - I - 0x011B70 04:9B60: 8D 9B     .word ofs_9B8D_00
- D 0 - I - 0x011B72 04:9B62: B0        .byte $B0   ; 
- D 0 - I - 0x011B73 04:9B63: 00        .byte $00   ; 
- D 0 - I - 0x011B74 04:9B64: 00        .byte $00   ; 
- D 0 - I - 0x011B75 04:9B65: 91 9B     .word ofs_9B91_01
- D 0 - I - 0x011B77 04:9B67: A0        .byte $A0   ; 
- D 0 - I - 0x011B78 04:9B68: 00        .byte $00   ; 
- D 0 - I - 0x011B79 04:9B69: 02        .byte $02   ; 
- D 0 - I - 0x011B7A 04:9B6A: 95 9B     .word ofs_9B95_02
- D 0 - I - 0x011B7C 04:9B6C: 70        .byte $70   ; 
- D 0 - I - 0x011B7D 04:9B6D: 00        .byte $00   ; 
- D 0 - I - 0x011B7E 04:9B6E: 02        .byte $02   ; 
- D 0 - I - 0x011B7F 04:9B6F: 99 9B     .word ofs_9B99_03
- D 0 - I - 0x011B81 04:9B71: 70        .byte $70   ; 
- D 0 - I - 0x011B82 04:9B72: 00        .byte $00   ; 
- D 0 - I - 0x011B83 04:9B73: 02        .byte $02   ; 
- D 0 - I - 0x011B84 04:9B74: 9D 9B     .word ofs_9B9D_04
- D 0 - I - 0x011B86 04:9B76: 58        .byte $58   ; 
- D 0 - I - 0x011B87 04:9B77: 00        .byte $00   ; 
- D 0 - I - 0x011B88 04:9B78: 00        .byte $00   ; 
- D 0 - I - 0x011B89 04:9B79: A1 9B     .word ofs_9BA1_05
- D 0 - I - 0x011B8B 04:9B7B: A0        .byte $A0   ; 
- D 0 - I - 0x011B8C 04:9B7C: 00        .byte $00   ; 
- D 0 - I - 0x011B8D 04:9B7D: 05        .byte $05   ; 
- D 0 - I - 0x011B8E 04:9B7E: A5 9B     .word ofs_9BA5_06
- D 0 - I - 0x011B90 04:9B80: 70        .byte $70   ; 
- D 0 - I - 0x011B91 04:9B81: 00        .byte $00   ; 
- D 0 - I - 0x011B92 04:9B82: 05        .byte $05   ; 
- D 0 - I - 0x011B93 04:9B83: A9 9B     .word ofs_9BA9_07
- D 0 - I - 0x011B95 04:9B85: 58        .byte $58   ; 
- D 0 - I - 0x011B96 04:9B86: 00        .byte $00   ; 
- D 0 - I - 0x011B97 04:9B87: 05        .byte $05   ; 
- D 0 - I - 0x011B98 04:9B88: AD 9B     .word ofs_9BAD_08
- D 0 - I - 0x011B9A 04:9B8A: 38        .byte $38   ; 
- D 0 - I - 0x011B9B 04:9B8B: 00        .byte $00   ; 
- D 0 - I - 0x011B9C 04:9B8C: 06        .byte $06   ; 



ofs_9B8D_00:
- D 0 - I - 0x011B9D 04:9B8D: FF        .byte $FF   ; 
- D 0 - I - 0x011B9E 04:9B8E: FF        .byte $FF   ; 
- D 0 - I - 0x011B9F 04:9B8F: B1 9B     .word off_9BB1



ofs_9B91_01:
- D 0 - I - 0x011BA1 04:9B91: FF        .byte $FF   ; 
- D 0 - I - 0x011BA2 04:9B92: FF        .byte $FF   ; 
- D 0 - I - 0x011BA3 04:9B93: CA 9B     .word off_9BCA



ofs_9B95_02:
- D 0 - I - 0x011BA5 04:9B95: FF        .byte $FF   ; 
- D 0 - I - 0x011BA6 04:9B96: FF        .byte $FF   ; 
- D 0 - I - 0x011BA7 04:9B97: E3 9B     .word off_9BE3



ofs_9B99_03:
- D 0 - I - 0x011BA9 04:9B99: FF        .byte $FF   ; 
- D 0 - I - 0x011BAA 04:9B9A: FF        .byte $FF   ; 
- D 0 - I - 0x011BAB 04:9B9B: FC 9B     .word off_9BFC



ofs_9B9D_04:
- D 0 - I - 0x011BAD 04:9B9D: FF        .byte $FF   ; 
- D 0 - I - 0x011BAE 04:9B9E: FF        .byte $FF   ; 
- D 0 - I - 0x011BAF 04:9B9F: 15 9C     .word off_9C15



ofs_9BA1_05:
- D 0 - I - 0x011BB1 04:9BA1: FF        .byte $FF   ; 
- D 0 - I - 0x011BB2 04:9BA2: FF        .byte $FF   ; 
- D 0 - I - 0x011BB3 04:9BA3: 2E 9C     .word off_9C2E



ofs_9BA5_06:
- D 0 - I - 0x011BB5 04:9BA5: FF        .byte $FF   ; 
- D 0 - I - 0x011BB6 04:9BA6: FF        .byte $FF   ; 
- D 0 - I - 0x011BB7 04:9BA7: 47 9C     .word off_9C47



ofs_9BA9_07:
- D 0 - I - 0x011BB9 04:9BA9: FF        .byte $FF   ; 
- D 0 - I - 0x011BBA 04:9BAA: FF        .byte $FF   ; 
- D 0 - I - 0x011BBB 04:9BAB: 60 9C     .word off_9C60



ofs_9BAD_08:
- D 0 - I - 0x011BBD 04:9BAD: FF        .byte $FF   ; 
- D 0 - I - 0x011BBE 04:9BAE: FF        .byte $FF   ; 
- D 0 - I - 0x011BBF 04:9BAF: 79 9C     .word off_9C79



off_9BB1:
- D 0 - I - 0x011BC1 04:9BB1: 00        .byte $00   ; 
- D 0 - I - 0x011BC2 04:9BB2: 00        .byte $00   ; 
- D 0 - I - 0x011BC3 04:9BB3: 00        .byte $00   ; 
- D 0 - I - 0x011BC4 04:9BB4: 00        .byte $00   ; 
- D 0 - I - 0x011BC5 04:9BB5: 00        .byte $00   ; 
- D 0 - I - 0x011BC6 04:9BB6: 7F        .byte $7F   ; 
- D 0 - I - 0x011BC7 04:9BB7: 00        .byte $00   ; 
- D 0 - I - 0x011BC8 04:9BB8: 00        .byte $00   ; 
- D 0 - I - 0x011BC9 04:9BB9: 00        .byte $00   ; 
- D 0 - I - 0x011BCA 04:9BBA: 00        .byte $00   ; 
- D 0 - I - 0x011BCB 04:9BBB: 00        .byte $00   ; 
- D 0 - I - 0x011BCC 04:9BBC: 7F        .byte $7F   ; 
- D 0 - I - 0x011BCD 04:9BBD: 03        .byte $03   ; 
- D 0 - I - 0x011BCE 04:9BBE: 40        .byte $40   ; 
- D 0 - I - 0x011BCF 04:9BBF: 00        .byte $00   ; 
- D 0 - I - 0x011BD0 04:9BC0: 02        .byte $02   ; 
- D 0 - I - 0x011BD1 04:9BC1: 05        .byte $05   ; 
- D 0 - I - 0x011BD2 04:9BC2: 7F        .byte $7F   ; 
- D 0 - I - 0x011BD3 04:9BC3: 03        .byte $03   ; 
- D 0 - I - 0x011BD4 04:9BC4: 08        .byte $08   ; 
- D 0 - I - 0x011BD5 04:9BC5: 00        .byte $00   ; 
- - - - - - 0x011BD6 04:9BC6: 00        .byte $00   ; 
- - - - - - 0x011BD7 04:9BC7: 00        .byte $00   ; 
- - - - - - 0x011BD8 04:9BC8: 7F        .byte $7F   ; 
- D 0 - I - 0x011BD9 04:9BC9: FF        .byte $FF   ; 

off_9BCA:
- D 0 - I - 0x011BDA 04:9BCA: 00        .byte $00   ; 
- D 0 - I - 0x011BDB 04:9BCB: 00        .byte $00   ; 
- D 0 - I - 0x011BDC 04:9BCC: 00        .byte $00   ; 
- D 0 - I - 0x011BDD 04:9BCD: 00        .byte $00   ; 
- D 0 - I - 0x011BDE 04:9BCE: 01        .byte $01   ; 
- D 0 - I - 0x011BDF 04:9BCF: 7F        .byte $7F   ; 
- D 0 - I - 0x011BE0 04:9BD0: 00        .byte $00   ; 
- D 0 - I - 0x011BE1 04:9BD1: 00        .byte $00   ; 
- D 0 - I - 0x011BE2 04:9BD2: 00        .byte $00   ; 
- D 0 - I - 0x011BE3 04:9BD3: 00        .byte $00   ; 
- D 0 - I - 0x011BE4 04:9BD4: 01        .byte $01   ; 
- D 0 - I - 0x011BE5 04:9BD5: 7F        .byte $7F   ; 
- D 0 - I - 0x011BE6 04:9BD6: 03        .byte $03   ; 
- D 0 - I - 0x011BE7 04:9BD7: 80        .byte $80   ; 
- D 0 - I - 0x011BE8 04:9BD8: 00        .byte $00   ; 
- D 0 - I - 0x011BE9 04:9BD9: 02        .byte $02   ; 
- D 0 - I - 0x011BEA 04:9BDA: 02        .byte $02   ; 
- D 0 - I - 0x011BEB 04:9BDB: 7F        .byte $7F   ; 
- D 0 - I - 0x011BEC 04:9BDC: 03        .byte $03   ; 
- D 0 - I - 0x011BED 04:9BDD: 50        .byte $50   ; 
- D 0 - I - 0x011BEE 04:9BDE: 00        .byte $00   ; 
- D 0 - I - 0x011BEF 04:9BDF: 02        .byte $02   ; 
- D 0 - I - 0x011BF0 04:9BE0: 05        .byte $05   ; 
- D 0 - I - 0x011BF1 04:9BE1: 7F        .byte $7F   ; 
- D 0 - I - 0x011BF2 04:9BE2: FF        .byte $FF   ; 

off_9BE3:
- D 0 - I - 0x011BF3 04:9BE3: 00        .byte $00   ; 
- D 0 - I - 0x011BF4 04:9BE4: 00        .byte $00   ; 
- D 0 - I - 0x011BF5 04:9BE5: 00        .byte $00   ; 
- D 0 - I - 0x011BF6 04:9BE6: 00        .byte $00   ; 
- D 0 - I - 0x011BF7 04:9BE7: 02        .byte $02   ; 
- D 0 - I - 0x011BF8 04:9BE8: 7F        .byte $7F   ; 
- D 0 - I - 0x011BF9 04:9BE9: 00        .byte $00   ; 
- D 0 - I - 0x011BFA 04:9BEA: 00        .byte $00   ; 
- D 0 - I - 0x011BFB 04:9BEB: 00        .byte $00   ; 
- D 0 - I - 0x011BFC 04:9BEC: 00        .byte $00   ; 
- D 0 - I - 0x011BFD 04:9BED: 02        .byte $02   ; 
- D 0 - I - 0x011BFE 04:9BEE: 7F        .byte $7F   ; 
- D 0 - I - 0x011BFF 04:9BEF: 03        .byte $03   ; 
- D 0 - I - 0x011C00 04:9BF0: A0        .byte $A0   ; 
- D 0 - I - 0x011C01 04:9BF1: 00        .byte $00   ; 
- D 0 - I - 0x011C02 04:9BF2: 02        .byte $02   ; 
- D 0 - I - 0x011C03 04:9BF3: 06        .byte $06   ; 
- D 0 - I - 0x011C04 04:9BF4: 7F        .byte $7F   ; 
- D 0 - I - 0x011C05 04:9BF5: 03        .byte $03   ; 
- D 0 - I - 0x011C06 04:9BF6: 80        .byte $80   ; 
- D 0 - I - 0x011C07 04:9BF7: 00        .byte $00   ; 
- D 0 - I - 0x011C08 04:9BF8: 02        .byte $02   ; 
- D 0 - I - 0x011C09 04:9BF9: 08        .byte $08   ; 
- D 0 - I - 0x011C0A 04:9BFA: 7F        .byte $7F   ; 
- D 0 - I - 0x011C0B 04:9BFB: FF        .byte $FF   ; 

off_9BFC:
- D 0 - I - 0x011C0C 04:9BFC: 00        .byte $00   ; 
- D 0 - I - 0x011C0D 04:9BFD: 00        .byte $00   ; 
- D 0 - I - 0x011C0E 04:9BFE: 00        .byte $00   ; 
- D 0 - I - 0x011C0F 04:9BFF: 00        .byte $00   ; 
- D 0 - I - 0x011C10 04:9C00: 03        .byte $03   ; 
- D 0 - I - 0x011C11 04:9C01: 7F        .byte $7F   ; 
- D 0 - I - 0x011C12 04:9C02: 00        .byte $00   ; 
- D 0 - I - 0x011C13 04:9C03: 00        .byte $00   ; 
- D 0 - I - 0x011C14 04:9C04: 00        .byte $00   ; 
- D 0 - I - 0x011C15 04:9C05: 00        .byte $00   ; 
- D 0 - I - 0x011C16 04:9C06: 03        .byte $03   ; 
- D 0 - I - 0x011C17 04:9C07: 7F        .byte $7F   ; 
- D 0 - I - 0x011C18 04:9C08: 03        .byte $03   ; 
- D 0 - I - 0x011C19 04:9C09: C0        .byte $C0   ; 
- D 0 - I - 0x011C1A 04:9C0A: 00        .byte $00   ; 
- D 0 - I - 0x011C1B 04:9C0B: 02        .byte $02   ; 
- D 0 - I - 0x011C1C 04:9C0C: 07        .byte $07   ; 
- D 0 - I - 0x011C1D 04:9C0D: 7F        .byte $7F   ; 
- D 0 - I - 0x011C1E 04:9C0E: 03        .byte $03   ; 
- D 0 - I - 0x011C1F 04:9C0F: B0        .byte $B0   ; 
- D 0 - I - 0x011C20 04:9C10: 00        .byte $00   ; 
- D 0 - I - 0x011C21 04:9C11: 02        .byte $02   ; 
- D 0 - I - 0x011C22 04:9C12: 06        .byte $06   ; 
- D 0 - I - 0x011C23 04:9C13: 7F        .byte $7F   ; 
- D 0 - I - 0x011C24 04:9C14: FF        .byte $FF   ; 

off_9C15:
- D 0 - I - 0x011C25 04:9C15: 00        .byte $00   ; 
- D 0 - I - 0x011C26 04:9C16: 00        .byte $00   ; 
- D 0 - I - 0x011C27 04:9C17: 00        .byte $00   ; 
- D 0 - I - 0x011C28 04:9C18: 00        .byte $00   ; 
- D 0 - I - 0x011C29 04:9C19: 04        .byte $04   ; 
- D 0 - I - 0x011C2A 04:9C1A: 7F        .byte $7F   ; 
- D 0 - I - 0x011C2B 04:9C1B: 00        .byte $00   ; 
- D 0 - I - 0x011C2C 04:9C1C: 00        .byte $00   ; 
- D 0 - I - 0x011C2D 04:9C1D: 00        .byte $00   ; 
- D 0 - I - 0x011C2E 04:9C1E: 00        .byte $00   ; 
- D 0 - I - 0x011C2F 04:9C1F: 04        .byte $04   ; 
- D 0 - I - 0x011C30 04:9C20: 7F        .byte $7F   ; 
- D 0 - I - 0x011C31 04:9C21: 03        .byte $03   ; 
- D 0 - I - 0x011C32 04:9C22: F8        .byte $F8   ; 
- D 0 - I - 0x011C33 04:9C23: 00        .byte $00   ; 
- - - - - - 0x011C34 04:9C24: 00        .byte $00   ; 
- - - - - - 0x011C35 04:9C25: 04        .byte $04   ; 
- - - - - - 0x011C36 04:9C26: 7F        .byte $7F   ; 
- D 0 - I - 0x011C37 04:9C27: 03        .byte $03   ; 
- D 0 - I - 0x011C38 04:9C28: E0        .byte $E0   ; 
- D 0 - I - 0x011C39 04:9C29: 00        .byte $00   ; 
- D 0 - I - 0x011C3A 04:9C2A: 02        .byte $02   ; 
- D 0 - I - 0x011C3B 04:9C2B: 07        .byte $07   ; 
- D 0 - I - 0x011C3C 04:9C2C: 7F        .byte $7F   ; 
- D 0 - I - 0x011C3D 04:9C2D: FF        .byte $FF   ; 

off_9C2E:
- D 0 - I - 0x011C3E 04:9C2E: 00        .byte $00   ; 
- D 0 - I - 0x011C3F 04:9C2F: 00        .byte $00   ; 
- D 0 - I - 0x011C40 04:9C30: 00        .byte $00   ; 
- - - - - - 0x011C41 04:9C31: 00        .byte $00   ; 
- - - - - - 0x011C42 04:9C32: 05        .byte $05   ; 
- - - - - - 0x011C43 04:9C33: 7F        .byte $7F   ; 
- D 0 - I - 0x011C44 04:9C34: 00        .byte $00   ; 
- D 0 - I - 0x011C45 04:9C35: 00        .byte $00   ; 
- D 0 - I - 0x011C46 04:9C36: 00        .byte $00   ; 
- - - - - - 0x011C47 04:9C37: 00        .byte $00   ; 
- - - - - - 0x011C48 04:9C38: 05        .byte $05   ; 
- - - - - - 0x011C49 04:9C39: 7F        .byte $7F   ; 
- D 0 - I - 0x011C4A 04:9C3A: 03        .byte $03   ; 
- D 0 - I - 0x011C4B 04:9C3B: 50        .byte $50   ; 
- D 0 - I - 0x011C4C 04:9C3C: 00        .byte $00   ; 
- D 0 - I - 0x011C4D 04:9C3D: 03        .byte $03   ; 
- D 0 - I - 0x011C4E 04:9C3E: 01        .byte $01   ; 
- D 0 - I - 0x011C4F 04:9C3F: 7F        .byte $7F   ; 
- D 0 - I - 0x011C50 04:9C40: 03        .byte $03   ; 
- D 0 - I - 0x011C51 04:9C41: 40        .byte $40   ; 
- D 0 - I - 0x011C52 04:9C42: 00        .byte $00   ; 
- - - - - - 0x011C53 04:9C43: 03        .byte $03   ; 
- - - - - - 0x011C54 04:9C44: 00        .byte $00   ; 
- - - - - - 0x011C55 04:9C45: 7F        .byte $7F   ; 
- D 0 - I - 0x011C56 04:9C46: FF        .byte $FF   ; 

off_9C47:
- D 0 - I - 0x011C57 04:9C47: 00        .byte $00   ; 
- D 0 - I - 0x011C58 04:9C48: 00        .byte $00   ; 
- D 0 - I - 0x011C59 04:9C49: 00        .byte $00   ; 
- - - - - - 0x011C5A 04:9C4A: 00        .byte $00   ; 
- - - - - - 0x011C5B 04:9C4B: 06        .byte $06   ; 
- - - - - - 0x011C5C 04:9C4C: 7F        .byte $7F   ; 
- D 0 - I - 0x011C5D 04:9C4D: 00        .byte $00   ; 
- D 0 - I - 0x011C5E 04:9C4E: 00        .byte $00   ; 
- D 0 - I - 0x011C5F 04:9C4F: 00        .byte $00   ; 
- - - - - - 0x011C60 04:9C50: 00        .byte $00   ; 
- - - - - - 0x011C61 04:9C51: 06        .byte $06   ; 
- - - - - - 0x011C62 04:9C52: 7F        .byte $7F   ; 
- D 0 - I - 0x011C63 04:9C53: 03        .byte $03   ; 
- D 0 - I - 0x011C64 04:9C54: B0        .byte $B0   ; 
- D 0 - I - 0x011C65 04:9C55: 00        .byte $00   ; 
- D 0 - I - 0x011C66 04:9C56: 03        .byte $03   ; 
- D 0 - I - 0x011C67 04:9C57: 03        .byte $03   ; 
- D 0 - I - 0x011C68 04:9C58: 7F        .byte $7F   ; 
- D 0 - I - 0x011C69 04:9C59: 03        .byte $03   ; 
- D 0 - I - 0x011C6A 04:9C5A: A0        .byte $A0   ; 
- D 0 - I - 0x011C6B 04:9C5B: 00        .byte $00   ; 
- D 0 - I - 0x011C6C 04:9C5C: 03        .byte $03   ; 
- D 0 - I - 0x011C6D 04:9C5D: 02        .byte $02   ; 
- D 0 - I - 0x011C6E 04:9C5E: 7F        .byte $7F   ; 
- D 0 - I - 0x011C6F 04:9C5F: FF        .byte $FF   ; 

off_9C60:
- D 0 - I - 0x011C70 04:9C60: 00        .byte $00   ; 
- D 0 - I - 0x011C71 04:9C61: 00        .byte $00   ; 
- D 0 - I - 0x011C72 04:9C62: 00        .byte $00   ; 
- - - - - - 0x011C73 04:9C63: 00        .byte $00   ; 
- - - - - - 0x011C74 04:9C64: 07        .byte $07   ; 
- - - - - - 0x011C75 04:9C65: 7F        .byte $7F   ; 
- D 0 - I - 0x011C76 04:9C66: 00        .byte $00   ; 
- D 0 - I - 0x011C77 04:9C67: 00        .byte $00   ; 
- D 0 - I - 0x011C78 04:9C68: 00        .byte $00   ; 
- - - - - - 0x011C79 04:9C69: 00        .byte $00   ; 
- - - - - - 0x011C7A 04:9C6A: 07        .byte $07   ; 
- - - - - - 0x011C7B 04:9C6B: 7F        .byte $7F   ; 
- D 0 - I - 0x011C7C 04:9C6C: 03        .byte $03   ; 
- D 0 - I - 0x011C7D 04:9C6D: E0        .byte $E0   ; 
- D 0 - I - 0x011C7E 04:9C6E: 00        .byte $00   ; 
- D 0 - I - 0x011C7F 04:9C6F: 03        .byte $03   ; 
- D 0 - I - 0x011C80 04:9C70: 04        .byte $04   ; 
- D 0 - I - 0x011C81 04:9C71: 7F        .byte $7F   ; 
- D 0 - I - 0x011C82 04:9C72: 03        .byte $03   ; 
- D 0 - I - 0x011C83 04:9C73: C0        .byte $C0   ; 
- D 0 - I - 0x011C84 04:9C74: 00        .byte $00   ; 
- - - - - - 0x011C85 04:9C75: 01        .byte $01   ; 
- - - - - - 0x011C86 04:9C76: 03        .byte $03   ; 
- - - - - - 0x011C87 04:9C77: 7F        .byte $7F   ; 
- D 0 - I - 0x011C88 04:9C78: FF        .byte $FF   ; 

off_9C79:
- D 0 - I - 0x011C89 04:9C79: 00        .byte $00   ; 
- D 0 - I - 0x011C8A 04:9C7A: 00        .byte $00   ; 
- D 0 - I - 0x011C8B 04:9C7B: 00        .byte $00   ; 
- - - - - - 0x011C8C 04:9C7C: 00        .byte $00   ; 
- - - - - - 0x011C8D 04:9C7D: 08        .byte $08   ; 
- - - - - - 0x011C8E 04:9C7E: 7F        .byte $7F   ; 
- D 0 - I - 0x011C8F 04:9C7F: 00        .byte $00   ; 
- D 0 - I - 0x011C90 04:9C80: 00        .byte $00   ; 
- D 0 - I - 0x011C91 04:9C81: 00        .byte $00   ; 
- - - - - - 0x011C92 04:9C82: 00        .byte $00   ; 
- - - - - - 0x011C93 04:9C83: 08        .byte $08   ; 
- - - - - - 0x011C94 04:9C84: 7F        .byte $7F   ; 
- D 0 - I - 0x011C95 04:9C85: 03        .byte $03   ; 
- D 0 - I - 0x011C96 04:9C86: E0        .byte $E0   ; 
- D 0 - I - 0x011C97 04:9C87: 00        .byte $00   ; 
- - - - - - 0x011C98 04:9C88: 01        .byte $01   ; 
- - - - - - 0x011C99 04:9C89: 04        .byte $04   ; 
- - - - - - 0x011C9A 04:9C8A: 7F        .byte $7F   ; 
- D 0 - I - 0x011C9B 04:9C8B: 03        .byte $03   ; 
- D 0 - I - 0x011C9C 04:9C8C: 08        .byte $08   ; 
- D 0 - I - 0x011C9D 04:9C8D: 00        .byte $00   ; 
- - - - - - 0x011C9E 04:9C8E: 00        .byte $00   ; 
- - - - - - 0x011C9F 04:9C8F: 08        .byte $08   ; 
- - - - - - 0x011CA0 04:9C90: 7F        .byte $7F   ; 
- D 0 - I - 0x011CA1 04:9C91: FF        .byte $FF   ; 



_off005_9C92_08_Trap_Room_pt2:
; con_mission_Trap_Room_pt2
_off005_9C92_0A_Trap_Room_pt4:
; con_mission_Trap_Room_pt4
- D 0 - I - 0x011CA2 04:9C92: 9C 9C     .word ofs_9C9C_00
- D 0 - I - 0x011CA4 04:9C94: 70        .byte $70   ; 
- D 0 - I - 0x011CA5 04:9C95: 00        .byte $00   ; 
- D 0 - I - 0x011CA6 04:9C96: 08        .byte $08   ; 
- D 0 - I - 0x011CA7 04:9C97: A0 9C     .word ofs_9CA0_02
- D 0 - I - 0x011CA9 04:9C99: 38        .byte $38   ; 
- D 0 - I - 0x011CAA 04:9C9A: 00        .byte $00   ; 
- D 0 - I - 0x011CAB 04:9C9B: 06        .byte $06   ; 



ofs_9C9C_00:
- D 0 - I - 0x011CAC 04:9C9C: FF        .byte $FF   ; 
- D 0 - I - 0x011CAD 04:9C9D: FF        .byte $FF   ; 
- D 0 - I - 0x011CAE 04:9C9E: A4 9C     .word off_9CA4



ofs_9CA0_02:
- D 0 - I - 0x011CB0 04:9CA0: FF        .byte $FF   ; 
- D 0 - I - 0x011CB1 04:9CA1: FF        .byte $FF   ; 
- D 0 - I - 0x011CB2 04:9CA2: BD 9C     .word off_9CBD



off_9CA4:
- D 0 - I - 0x011CB4 04:9CA4: 00        .byte $00   ; 
- D 0 - I - 0x011CB5 04:9CA5: 00        .byte $00   ; 
- D 0 - I - 0x011CB6 04:9CA6: 00        .byte $00   ; 
- D 0 - I - 0x011CB7 04:9CA7: 00        .byte $00   ; 
- D 0 - I - 0x011CB8 04:9CA8: 00        .byte $00   ; 
- D 0 - I - 0x011CB9 04:9CA9: 7F        .byte $7F   ; 
- D 0 - I - 0x011CBA 04:9CAA: 00        .byte $00   ; 
- D 0 - I - 0x011CBB 04:9CAB: 00        .byte $00   ; 
- D 0 - I - 0x011CBC 04:9CAC: 00        .byte $00   ; 
- D 0 - I - 0x011CBD 04:9CAD: 00        .byte $00   ; 
- D 0 - I - 0x011CBE 04:9CAE: 00        .byte $00   ; 
- D 0 - I - 0x011CBF 04:9CAF: 7F        .byte $7F   ; 
- D 0 - I - 0x011CC0 04:9CB0: 03        .byte $03   ; 
- D 0 - I - 0x011CC1 04:9CB1: 20        .byte $20   ; 
- D 0 - I - 0x011CC2 04:9CB2: 01        .byte $01   ; 
- D 0 - I - 0x011CC3 04:9CB3: 00        .byte $00   ; 
- D 0 - I - 0x011CC4 04:9CB4: 00        .byte $00   ; 
- D 0 - I - 0x011CC5 04:9CB5: 7F        .byte $7F   ; 
- D 0 - I - 0x011CC6 04:9CB6: 03        .byte $03   ; 
- D 0 - I - 0x011CC7 04:9CB7: 20        .byte $20   ; 
- D 0 - I - 0x011CC8 04:9CB8: 00        .byte $00   ; 
- D 0 - I - 0x011CC9 04:9CB9: 02        .byte $02   ; 
- D 0 - I - 0x011CCA 04:9CBA: 01        .byte $01   ; 
- D 0 - I - 0x011CCB 04:9CBB: 7F        .byte $7F   ; 
- D 0 - I - 0x011CCC 04:9CBC: FF        .byte $FF   ; 

off_9CBD:
- D 0 - I - 0x011CCD 04:9CBD: 00        .byte $00   ; 
- D 0 - I - 0x011CCE 04:9CBE: 00        .byte $00   ; 
- D 0 - I - 0x011CCF 04:9CBF: 00        .byte $00   ; 
- - - - - - 0x011CD0 04:9CC0: 00        .byte $00   ; 
- - - - - - 0x011CD1 04:9CC1: 01        .byte $01   ; 
- - - - - - 0x011CD2 04:9CC2: 7F        .byte $7F   ; 
- D 0 - I - 0x011CD3 04:9CC3: 00        .byte $00   ; 
- D 0 - I - 0x011CD4 04:9CC4: 00        .byte $00   ; 
- D 0 - I - 0x011CD5 04:9CC5: 00        .byte $00   ; 
- - - - - - 0x011CD6 04:9CC6: 00        .byte $00   ; 
- - - - - - 0x011CD7 04:9CC7: 01        .byte $01   ; 
- - - - - - 0x011CD8 04:9CC8: 7F        .byte $7F   ; 
- D 0 - I - 0x011CD9 04:9CC9: 03        .byte $03   ; 
- D 0 - I - 0x011CDA 04:9CCA: F8        .byte $F8   ; 
- D 0 - I - 0x011CDB 04:9CCB: 00        .byte $00   ; 
- - - - - - 0x011CDC 04:9CCC: 00        .byte $00   ; 
- - - - - - 0x011CDD 04:9CCD: 01        .byte $01   ; 
- - - - - - 0x011CDE 04:9CCE: 7F        .byte $7F   ; 
- D 0 - I - 0x011CDF 04:9CCF: 03        .byte $03   ; 
- D 0 - I - 0x011CE0 04:9CD0: 08        .byte $08   ; 
- D 0 - I - 0x011CE1 04:9CD1: 00        .byte $00   ; 
- D 0 - I - 0x011CE2 04:9CD2: 00        .byte $00   ; 
- D 0 - I - 0x011CE3 04:9CD3: 01        .byte $01   ; 
- D 0 - I - 0x011CE4 04:9CD4: 7F        .byte $7F   ; 
- D 0 - I - 0x011CE5 04:9CD5: FF        .byte $FF   ; 



_off005_9CD6_09_Trap_Room_pt3:
; con_mission_Trap_Room_pt3
- D 0 - I - 0x011CE6 04:9CD6: 2B 9D     .word ofs_9D2B_00
- D 0 - I - 0x011CE8 04:9CD8: 50        .byte $50   ; 
- D 0 - I - 0x011CE9 04:9CD9: 00        .byte $00   ; 
- D 0 - I - 0x011CEA 04:9CDA: 00        .byte $00   ; 
- D 0 - I - 0x011CEB 04:9CDB: 2F 9D     .word ofs_9D2F_01
- D 0 - I - 0x011CED 04:9CDD: 58        .byte $58   ; 
- D 0 - I - 0x011CEE 04:9CDE: 00        .byte $00   ; 
- D 0 - I - 0x011CEF 04:9CDF: 04        .byte $04   ; 
- D 0 - I - 0x011CF0 04:9CE0: 33 9D     .word ofs_9D33_02
- D 0 - I - 0x011CF2 04:9CE2: 68        .byte $68   ; 
- D 0 - I - 0x011CF3 04:9CE3: 00        .byte $00   ; 
- D 0 - I - 0x011CF4 04:9CE4: 00        .byte $00   ; 
- D 0 - I - 0x011CF5 04:9CE5: 37 9D     .word ofs_9D37_03
- D 0 - I - 0x011CF7 04:9CE7: 78        .byte $78   ; 
- D 0 - I - 0x011CF8 04:9CE8: 00        .byte $00   ; 
- D 0 - I - 0x011CF9 04:9CE9: 04        .byte $04   ; 
- D 0 - I - 0x011CFA 04:9CEA: 3B 9D     .word ofs_9D3B_04
- D 0 - I - 0x011CFC 04:9CEC: 58        .byte $58   ; 
- D 0 - I - 0x011CFD 04:9CED: 00        .byte $00   ; 
- D 0 - I - 0x011CFE 04:9CEE: 04        .byte $04   ; 
- D 0 - I - 0x011CFF 04:9CEF: 3F 9D     .word ofs_9D3F_05
- D 0 - I - 0x011D01 04:9CF1: 40        .byte $40   ; 
- D 0 - I - 0x011D02 04:9CF2: 00        .byte $00   ; 
- D 0 - I - 0x011D03 04:9CF3: 00        .byte $00   ; 
- D 0 - I - 0x011D04 04:9CF4: 43 9D     .word ofs_9D43_06
- D 0 - I - 0x011D06 04:9CF6: B8        .byte $B8   ; 
- D 0 - I - 0x011D07 04:9CF7: 00        .byte $00   ; 
- D 0 - I - 0x011D08 04:9CF8: 00        .byte $00   ; 
- D 0 - I - 0x011D09 04:9CF9: 47 9D     .word ofs_9D47_07
- D 0 - I - 0x011D0B 04:9CFB: A8        .byte $A8   ; 
- D 0 - I - 0x011D0C 04:9CFC: 00        .byte $00   ; 
- D 0 - I - 0x011D0D 04:9CFD: 04        .byte $04   ; 
- D 0 - I - 0x011D0E 04:9CFE: 4B 9D     .word ofs_9D4B_08
- D 0 - I - 0x011D10 04:9D00: B0        .byte $B0   ; 
- D 0 - I - 0x011D11 04:9D01: 00        .byte $00   ; 
- D 0 - I - 0x011D12 04:9D02: 00        .byte $00   ; 
- D 0 - I - 0x011D13 04:9D03: 4F 9D     .word ofs_9D4F_09
- D 0 - I - 0x011D15 04:9D05: B0        .byte $B0   ; 
- D 0 - I - 0x011D16 04:9D06: 00        .byte $00   ; 
- D 0 - I - 0x011D17 04:9D07: 00        .byte $00   ; 
- D 0 - I - 0x011D18 04:9D08: 53 9D     .word ofs_9D53_0A
- D 0 - I - 0x011D1A 04:9D0A: B8        .byte $B8   ; 
- D 0 - I - 0x011D1B 04:9D0B: 00        .byte $00   ; 
- D 0 - I - 0x011D1C 04:9D0C: 04        .byte $04   ; 
- D 0 - I - 0x011D1D 04:9D0D: 57 9D     .word ofs_9D57_0B
- D 0 - I - 0x011D1F 04:9D0F: B0        .byte $B0   ; 
- D 0 - I - 0x011D20 04:9D10: 00        .byte $00   ; 
- D 0 - I - 0x011D21 04:9D11: 00        .byte $00   ; 
- D 0 - I - 0x011D22 04:9D12: 5B 9D     .word ofs_9D5B_0C
- D 0 - I - 0x011D24 04:9D14: 38        .byte $38   ; 
- D 0 - I - 0x011D25 04:9D15: 00        .byte $00   ; 
- D 0 - I - 0x011D26 04:9D16: 06        .byte $06   ; 
- D 0 - I - 0x011D27 04:9D17: 5F 9D     .word ofs_9D5F_0D
- D 0 - I - 0x011D29 04:9D19: 58        .byte $58   ; 
- D 0 - I - 0x011D2A 04:9D1A: 00        .byte $00   ; 
- D 0 - I - 0x011D2B 04:9D1B: 05        .byte $05   ; 
- D 0 - I - 0x011D2C 04:9D1C: 63 9D     .word ofs_9D63_0E
- D 0 - I - 0x011D2E 04:9D1E: A8        .byte $A8   ; 
- D 0 - I - 0x011D2F 04:9D1F: 00        .byte $00   ; 
- D 0 - I - 0x011D30 04:9D20: 05        .byte $05   ; 
- D 0 - I - 0x011D31 04:9D21: 67 9D     .word ofs_9D67_0F
- D 0 - I - 0x011D33 04:9D23: B0        .byte $B0   ; 
- D 0 - I - 0x011D34 04:9D24: 00        .byte $00   ; 
- D 0 - I - 0x011D35 04:9D25: 05        .byte $05   ; 
- D 0 - I - 0x011D36 04:9D26: 6B 9D     .word ofs_9D6B_10
- - - - - - 0x011D38 04:9D28: B0        .byte $B0   ; 
- - - - - - 0x011D39 04:9D29: 00        .byte $00   ; 
- D 0 - I - 0x011D3A 04:9D2A: 05        .byte $05   ; 



ofs_9D2B_00:
- D 0 - I - 0x011D3B 04:9D2B: FF        .byte $FF   ; 
- D 0 - I - 0x011D3C 04:9D2C: FF        .byte $FF   ; 
- D 0 - I - 0x011D3D 04:9D2D: 6F 9D     .word off_9D6F



ofs_9D2F_01:
- D 0 - I - 0x011D3F 04:9D2F: FF        .byte $FF   ; 
- D 0 - I - 0x011D40 04:9D30: FF        .byte $FF   ; 
- D 0 - I - 0x011D41 04:9D31: 88 9D     .word off_9D88



ofs_9D33_02:
- D 0 - I - 0x011D43 04:9D33: FF        .byte $FF   ; 
- D 0 - I - 0x011D44 04:9D34: FF        .byte $FF   ; 
- D 0 - I - 0x011D45 04:9D35: A1 9D     .word off_9DA1



ofs_9D37_03:
- D 0 - I - 0x011D47 04:9D37: FF        .byte $FF   ; 
- D 0 - I - 0x011D48 04:9D38: FF        .byte $FF   ; 
- D 0 - I - 0x011D49 04:9D39: BA 9D     .word off_9DBA



ofs_9D3B_04:
- D 0 - I - 0x011D4B 04:9D3B: FF        .byte $FF   ; 
- D 0 - I - 0x011D4C 04:9D3C: FF        .byte $FF   ; 
- D 0 - I - 0x011D4D 04:9D3D: D3 9D     .word off_9DD3



ofs_9D3F_05:
- D 0 - I - 0x011D4F 04:9D3F: FF        .byte $FF   ; 
- D 0 - I - 0x011D50 04:9D40: FF        .byte $FF   ; 
- D 0 - I - 0x011D51 04:9D41: EC 9D     .word off_9DEC



ofs_9D43_06:
- D 0 - I - 0x011D53 04:9D43: FF        .byte $FF   ; 
- D 0 - I - 0x011D54 04:9D44: FF        .byte $FF   ; 
- D 0 - I - 0x011D55 04:9D45: 05 9E     .word off_9E05



ofs_9D47_07:
- D 0 - I - 0x011D57 04:9D47: FF        .byte $FF   ; 
- D 0 - I - 0x011D58 04:9D48: FF        .byte $FF   ; 
- D 0 - I - 0x011D59 04:9D49: 1E 9E     .word off_9E1E



ofs_9D4B_08:
- D 0 - I - 0x011D5B 04:9D4B: FF        .byte $FF   ; 
- D 0 - I - 0x011D5C 04:9D4C: FF        .byte $FF   ; 
- D 0 - I - 0x011D5D 04:9D4D: 37 9E     .word off_9E37



ofs_9D4F_09:
- D 0 - I - 0x011D5F 04:9D4F: FF        .byte $FF   ; 
- D 0 - I - 0x011D60 04:9D50: FF        .byte $FF   ; 
- D 0 - I - 0x011D61 04:9D51: 50 9E     .word off_9E50



ofs_9D53_0A:
- D 0 - I - 0x011D63 04:9D53: FF        .byte $FF   ; 
- D 0 - I - 0x011D64 04:9D54: FF        .byte $FF   ; 
- D 0 - I - 0x011D65 04:9D55: 69 9E     .word off_9E69



ofs_9D57_0B:
- D 0 - I - 0x011D67 04:9D57: FF        .byte $FF   ; 
- D 0 - I - 0x011D68 04:9D58: FF        .byte $FF   ; 
- D 0 - I - 0x011D69 04:9D59: 82 9E     .word off_9E82



ofs_9D5B_0C:
- D 0 - I - 0x011D6B 04:9D5B: FF        .byte $FF   ; 
- D 0 - I - 0x011D6C 04:9D5C: FF        .byte $FF   ; 
- D 0 - I - 0x011D6D 04:9D5D: 9B 9E     .word off_9E9B



ofs_9D5F_0D:
- D 0 - I - 0x011D6F 04:9D5F: FF        .byte $FF   ; 
- D 0 - I - 0x011D70 04:9D60: FF        .byte $FF   ; 
- D 0 - I - 0x011D71 04:9D61: B4 9E     .word off_9EB4



ofs_9D63_0E:
- D 0 - I - 0x011D73 04:9D63: FF        .byte $FF   ; 
- D 0 - I - 0x011D74 04:9D64: FF        .byte $FF   ; 
- D 0 - I - 0x011D75 04:9D65: CD 9E     .word off_9ECD



ofs_9D67_0F:
- D 0 - I - 0x011D77 04:9D67: FF        .byte $FF   ; 
- D 0 - I - 0x011D78 04:9D68: FF        .byte $FF   ; 
- D 0 - I - 0x011D79 04:9D69: E6 9E     .word off_9EE6



ofs_9D6B_10:
- D 0 - I - 0x011D7B 04:9D6B: FF        .byte $FF   ; 
- D 0 - I - 0x011D7C 04:9D6C: FF        .byte $FF   ; 
- D 0 - I - 0x011D7D 04:9D6D: FF 9E     .word off_9EFF



off_9D6F:
- D 0 - I - 0x011D7F 04:9D6F: 00        .byte $00   ; 
- D 0 - I - 0x011D80 04:9D70: 00        .byte $00   ; 
- D 0 - I - 0x011D81 04:9D71: 00        .byte $00   ; 
- D 0 - I - 0x011D82 04:9D72: 00        .byte $00   ; 
- D 0 - I - 0x011D83 04:9D73: 00        .byte $00   ; 
- D 0 - I - 0x011D84 04:9D74: 7F        .byte $7F   ; 
- D 0 - I - 0x011D85 04:9D75: 00        .byte $00   ; 
- D 0 - I - 0x011D86 04:9D76: 00        .byte $00   ; 
- D 0 - I - 0x011D87 04:9D77: 00        .byte $00   ; 
- D 0 - I - 0x011D88 04:9D78: 00        .byte $00   ; 
- D 0 - I - 0x011D89 04:9D79: 00        .byte $00   ; 
- D 0 - I - 0x011D8A 04:9D7A: 7F        .byte $7F   ; 
- D 0 - I - 0x011D8B 04:9D7B: 03        .byte $03   ; 
- D 0 - I - 0x011D8C 04:9D7C: 40        .byte $40   ; 
- D 0 - I - 0x011D8D 04:9D7D: 00        .byte $00   ; 
- D 0 - I - 0x011D8E 04:9D7E: 01        .byte $01   ; 
- D 0 - I - 0x011D8F 04:9D7F: 01        .byte $01   ; 
- D 0 - I - 0x011D90 04:9D80: 7F        .byte $7F   ; 
- D 0 - I - 0x011D91 04:9D81: 03        .byte $03   ; 
- D 0 - I - 0x011D92 04:9D82: 08        .byte $08   ; 
- D 0 - I - 0x011D93 04:9D83: 00        .byte $00   ; 
- - - - - - 0x011D94 04:9D84: 00        .byte $00   ; 
- - - - - - 0x011D95 04:9D85: 00        .byte $00   ; 
- - - - - - 0x011D96 04:9D86: 7F        .byte $7F   ; 
- D 0 - I - 0x011D97 04:9D87: FF        .byte $FF   ; 

off_9D88:
- D 0 - I - 0x011D98 04:9D88: 00        .byte $00   ; 
- D 0 - I - 0x011D99 04:9D89: 00        .byte $00   ; 
- D 0 - I - 0x011D9A 04:9D8A: 00        .byte $00   ; 
- - - - - - 0x011D9B 04:9D8B: 00        .byte $00   ; 
- - - - - - 0x011D9C 04:9D8C: 01        .byte $01   ; 
- - - - - - 0x011D9D 04:9D8D: 7F        .byte $7F   ; 
- D 0 - I - 0x011D9E 04:9D8E: 00        .byte $00   ; 
- D 0 - I - 0x011D9F 04:9D8F: 00        .byte $00   ; 
- D 0 - I - 0x011DA0 04:9D90: 00        .byte $00   ; 
- - - - - - 0x011DA1 04:9D91: 00        .byte $00   ; 
- - - - - - 0x011DA2 04:9D92: 01        .byte $01   ; 
- - - - - - 0x011DA3 04:9D93: 7F        .byte $7F   ; 
- D 0 - I - 0x011DA4 04:9D94: 03        .byte $03   ; 
- D 0 - I - 0x011DA5 04:9D95: 60        .byte $60   ; 
- D 0 - I - 0x011DA6 04:9D96: 00        .byte $00   ; 
- D 0 - I - 0x011DA7 04:9D97: 02        .byte $02   ; 
- D 0 - I - 0x011DA8 04:9D98: 0D        .byte $0D   ; 
- D 0 - I - 0x011DA9 04:9D99: 7F        .byte $7F   ; 
- D 0 - I - 0x011DAA 04:9D9A: 03        .byte $03   ; 
- D 0 - I - 0x011DAB 04:9D9B: 40        .byte $40   ; 
- D 0 - I - 0x011DAC 04:9D9C: 00        .byte $00   ; 
- D 0 - I - 0x011DAD 04:9D9D: 02        .byte $02   ; 
- D 0 - I - 0x011DAE 04:9D9E: 00        .byte $00   ; 
- D 0 - I - 0x011DAF 04:9D9F: 7F        .byte $7F   ; 
- D 0 - I - 0x011DB0 04:9DA0: FF        .byte $FF   ; 

off_9DA1:
- D 0 - I - 0x011DB1 04:9DA1: 00        .byte $00   ; 
- D 0 - I - 0x011DB2 04:9DA2: 00        .byte $00   ; 
- D 0 - I - 0x011DB3 04:9DA3: 00        .byte $00   ; 
- D 0 - I - 0x011DB4 04:9DA4: 00        .byte $00   ; 
- D 0 - I - 0x011DB5 04:9DA5: 02        .byte $02   ; 
- D 0 - I - 0x011DB6 04:9DA6: 7F        .byte $7F   ; 
- D 0 - I - 0x011DB7 04:9DA7: 00        .byte $00   ; 
- D 0 - I - 0x011DB8 04:9DA8: 00        .byte $00   ; 
- D 0 - I - 0x011DB9 04:9DA9: 00        .byte $00   ; 
- - - - - - 0x011DBA 04:9DAA: 00        .byte $00   ; 
- - - - - - 0x011DBB 04:9DAB: 02        .byte $02   ; 
- - - - - - 0x011DBC 04:9DAC: 7F        .byte $7F   ; 
- D 0 - I - 0x011DBD 04:9DAD: 03        .byte $03   ; 
- D 0 - I - 0x011DBE 04:9DAE: 90        .byte $90   ; 
- D 0 - I - 0x011DBF 04:9DAF: 00        .byte $00   ; 
- D 0 - I - 0x011DC0 04:9DB0: 01        .byte $01   ; 
- D 0 - I - 0x011DC1 04:9DB1: 03        .byte $03   ; 
- D 0 - I - 0x011DC2 04:9DB2: 7F        .byte $7F   ; 
- D 0 - I - 0x011DC3 04:9DB3: 03        .byte $03   ; 
- D 0 - I - 0x011DC4 04:9DB4: 70        .byte $70   ; 
- D 0 - I - 0x011DC5 04:9DB5: 00        .byte $00   ; 
- - - - - - 0x011DC6 04:9DB6: 02        .byte $02   ; 
- - - - - - 0x011DC7 04:9DB7: 0D        .byte $0D   ; 
- - - - - - 0x011DC8 04:9DB8: 7F        .byte $7F   ; 
- D 0 - I - 0x011DC9 04:9DB9: FF        .byte $FF   ; 

off_9DBA:
- D 0 - I - 0x011DCA 04:9DBA: 00        .byte $00   ; 
- D 0 - I - 0x011DCB 04:9DBB: 00        .byte $00   ; 
- D 0 - I - 0x011DCC 04:9DBC: 00        .byte $00   ; 
- - - - - - 0x011DCD 04:9DBD: 00        .byte $00   ; 
- - - - - - 0x011DCE 04:9DBE: 03        .byte $03   ; 
- - - - - - 0x011DCF 04:9DBF: 7F        .byte $7F   ; 
- D 0 - I - 0x011DD0 04:9DC0: 00        .byte $00   ; 
- D 0 - I - 0x011DD1 04:9DC1: 00        .byte $00   ; 
- D 0 - I - 0x011DD2 04:9DC2: 00        .byte $00   ; 
- - - - - - 0x011DD3 04:9DC3: 00        .byte $00   ; 
- - - - - - 0x011DD4 04:9DC4: 03        .byte $03   ; 
- - - - - - 0x011DD5 04:9DC5: 7F        .byte $7F   ; 
- D 0 - I - 0x011DD6 04:9DC6: 03        .byte $03   ; 
- D 0 - I - 0x011DD7 04:9DC7: B0        .byte $B0   ; 
- D 0 - I - 0x011DD8 04:9DC8: 00        .byte $00   ; 
- D 0 - I - 0x011DD9 04:9DC9: 02        .byte $02   ; 
- D 0 - I - 0x011DDA 04:9DCA: 04        .byte $04   ; 
- D 0 - I - 0x011DDB 04:9DCB: 7F        .byte $7F   ; 
- D 0 - I - 0x011DDC 04:9DCC: 03        .byte $03   ; 
- D 0 - I - 0x011DDD 04:9DCD: 90        .byte $90   ; 
- D 0 - I - 0x011DDE 04:9DCE: 00        .byte $00   ; 
- D 0 - I - 0x011DDF 04:9DCF: 02        .byte $02   ; 
- D 0 - I - 0x011DE0 04:9DD0: 02        .byte $02   ; 
- D 0 - I - 0x011DE1 04:9DD1: 7F        .byte $7F   ; 
- D 0 - I - 0x011DE2 04:9DD2: FF        .byte $FF   ; 

off_9DD3:
- D 0 - I - 0x011DE3 04:9DD3: 00        .byte $00   ; 
- D 0 - I - 0x011DE4 04:9DD4: 00        .byte $00   ; 
- D 0 - I - 0x011DE5 04:9DD5: 00        .byte $00   ; 
- D 0 - I - 0x011DE6 04:9DD6: 00        .byte $00   ; 
- D 0 - I - 0x011DE7 04:9DD7: 04        .byte $04   ; 
- D 0 - I - 0x011DE8 04:9DD8: 7F        .byte $7F   ; 
- D 0 - I - 0x011DE9 04:9DD9: 00        .byte $00   ; 
- D 0 - I - 0x011DEA 04:9DDA: 00        .byte $00   ; 
- D 0 - I - 0x011DEB 04:9DDB: 00        .byte $00   ; 
- D 0 - I - 0x011DEC 04:9DDC: 00        .byte $00   ; 
- D 0 - I - 0x011DED 04:9DDD: 04        .byte $04   ; 
- D 0 - I - 0x011DEE 04:9DDE: 7F        .byte $7F   ; 
- D 0 - I - 0x011DEF 04:9DDF: 03        .byte $03   ; 
- D 0 - I - 0x011DF0 04:9DE0: D0        .byte $D0   ; 
- D 0 - I - 0x011DF1 04:9DE1: 00        .byte $00   ; 
- D 0 - I - 0x011DF2 04:9DE2: 02        .byte $02   ; 
- D 0 - I - 0x011DF3 04:9DE3: 05        .byte $05   ; 
- D 0 - I - 0x011DF4 04:9DE4: 7F        .byte $7F   ; 
- D 0 - I - 0x011DF5 04:9DE5: 03        .byte $03   ; 
- D 0 - I - 0x011DF6 04:9DE6: B0        .byte $B0   ; 
- D 0 - I - 0x011DF7 04:9DE7: 00        .byte $00   ; 
- - - - - - 0x011DF8 04:9DE8: 02        .byte $02   ; 
- - - - - - 0x011DF9 04:9DE9: 0C        .byte $0C   ; 
- - - - - - 0x011DFA 04:9DEA: 7F        .byte $7F   ; 
- D 0 - I - 0x011DFB 04:9DEB: FF        .byte $FF   ; 

off_9DEC:
- D 0 - I - 0x011DFC 04:9DEC: 00        .byte $00   ; 
- D 0 - I - 0x011DFD 04:9DED: 00        .byte $00   ; 
- D 0 - I - 0x011DFE 04:9DEE: 00        .byte $00   ; 
- D 0 - I - 0x011DFF 04:9DEF: 00        .byte $00   ; 
- D 0 - I - 0x011E00 04:9DF0: 05        .byte $05   ; 
- D 0 - I - 0x011E01 04:9DF1: 0C        .byte $0C   ; 
- D 0 - I - 0x011E02 04:9DF2: 00        .byte $00   ; 
- D 0 - I - 0x011E03 04:9DF3: 00        .byte $00   ; 
- D 0 - I - 0x011E04 04:9DF4: 00        .byte $00   ; 
- D 0 - I - 0x011E05 04:9DF5: 00        .byte $00   ; 
- D 0 - I - 0x011E06 04:9DF6: 05        .byte $05   ; 
- D 0 - I - 0x011E07 04:9DF7: 7F        .byte $7F   ; 
- D 0 - I - 0x011E08 04:9DF8: 03        .byte $03   ; 
- D 0 - I - 0x011E09 04:9DF9: F0        .byte $F0   ; 
- D 0 - I - 0x011E0A 04:9DFA: 00        .byte $00   ; 
- D 0 - I - 0x011E0B 04:9DFB: 00        .byte $00   ; 
- D 0 - I - 0x011E0C 04:9DFC: 05        .byte $05   ; 
- D 0 - I - 0x011E0D 04:9DFD: 7F        .byte $7F   ; 
- D 0 - I - 0x011E0E 04:9DFE: 03        .byte $03   ; 
- D 0 - I - 0x011E0F 04:9DFF: D0        .byte $D0   ; 
- D 0 - I - 0x011E10 04:9E00: 00        .byte $00   ; 
- D 0 - I - 0x011E11 04:9E01: 01        .byte $01   ; 
- D 0 - I - 0x011E12 04:9E02: 04        .byte $04   ; 
- D 0 - I - 0x011E13 04:9E03: 7F        .byte $7F   ; 
- D 0 - I - 0x011E14 04:9E04: FF        .byte $FF   ; 

off_9E05:
- D 0 - I - 0x011E15 04:9E05: 00        .byte $00   ; 
- D 0 - I - 0x011E16 04:9E06: 00        .byte $00   ; 
- D 0 - I - 0x011E17 04:9E07: 00        .byte $00   ; 
- D 0 - I - 0x011E18 04:9E08: 00        .byte $00   ; 
- D 0 - I - 0x011E19 04:9E09: 06        .byte $06   ; 
- D 0 - I - 0x011E1A 04:9E0A: 7F        .byte $7F   ; 
- D 0 - I - 0x011E1B 04:9E0B: 00        .byte $00   ; 
- D 0 - I - 0x011E1C 04:9E0C: 00        .byte $00   ; 
- D 0 - I - 0x011E1D 04:9E0D: 00        .byte $00   ; 
- D 0 - I - 0x011E1E 04:9E0E: 00        .byte $00   ; 
- D 0 - I - 0x011E1F 04:9E0F: 06        .byte $06   ; 
- D 0 - I - 0x011E20 04:9E10: 8C        .byte $8C   ; 
- D 0 - I - 0x011E21 04:9E11: 03        .byte $03   ; 
- D 0 - I - 0x011E22 04:9E12: F0        .byte $F0   ; 
- D 0 - I - 0x011E23 04:9E13: 00        .byte $00   ; 
- D 0 - I - 0x011E24 04:9E14: 00        .byte $00   ; 
- D 0 - I - 0x011E25 04:9E15: 06        .byte $06   ; 
- D 0 - I - 0x011E26 04:9E16: 7F        .byte $7F   ; 
- D 0 - I - 0x011E27 04:9E17: 03        .byte $03   ; 
- D 0 - I - 0x011E28 04:9E18: D0        .byte $D0   ; 
- D 0 - I - 0x011E29 04:9E19: 00        .byte $00   ; 
- D 0 - I - 0x011E2A 04:9E1A: 02        .byte $02   ; 
- D 0 - I - 0x011E2B 04:9E1B: 07        .byte $07   ; 
- D 0 - I - 0x011E2C 04:9E1C: 7F        .byte $7F   ; 
- D 0 - I - 0x011E2D 04:9E1D: FF        .byte $FF   ; 

off_9E1E:
- D 0 - I - 0x011E2E 04:9E1E: 00        .byte $00   ; 
- D 0 - I - 0x011E2F 04:9E1F: 00        .byte $00   ; 
- D 0 - I - 0x011E30 04:9E20: 00        .byte $00   ; 
- - - - - - 0x011E31 04:9E21: 00        .byte $00   ; 
- - - - - - 0x011E32 04:9E22: 07        .byte $07   ; 
- - - - - - 0x011E33 04:9E23: 7F        .byte $7F   ; 
- D 0 - I - 0x011E34 04:9E24: 00        .byte $00   ; 
- D 0 - I - 0x011E35 04:9E25: 00        .byte $00   ; 
- D 0 - I - 0x011E36 04:9E26: 00        .byte $00   ; 
- - - - - - 0x011E37 04:9E27: 00        .byte $00   ; 
- - - - - - 0x011E38 04:9E28: 07        .byte $07   ; 
- - - - - - 0x011E39 04:9E29: 7F        .byte $7F   ; 
- D 0 - I - 0x011E3A 04:9E2A: 03        .byte $03   ; 
- D 0 - I - 0x011E3B 04:9E2B: D0        .byte $D0   ; 
- D 0 - I - 0x011E3C 04:9E2C: 00        .byte $00   ; 
- D 0 - I - 0x011E3D 04:9E2D: 01        .byte $01   ; 
- D 0 - I - 0x011E3E 04:9E2E: 06        .byte $06   ; 
- D 0 - I - 0x011E3F 04:9E2F: 7F        .byte $7F   ; 
- D 0 - I - 0x011E40 04:9E30: 03        .byte $03   ; 
- D 0 - I - 0x011E41 04:9E31: B0        .byte $B0   ; 
- D 0 - I - 0x011E42 04:9E32: 00        .byte $00   ; 
- D 0 - I - 0x011E43 04:9E33: 02        .byte $02   ; 
- D 0 - I - 0x011E44 04:9E34: 0E        .byte $0E   ; 
- D 0 - I - 0x011E45 04:9E35: 7F        .byte $7F   ; 
- D 0 - I - 0x011E46 04:9E36: FF        .byte $FF   ; 

off_9E37:
- D 0 - I - 0x011E47 04:9E37: 00        .byte $00   ; 
- D 0 - I - 0x011E48 04:9E38: 00        .byte $00   ; 
- D 0 - I - 0x011E49 04:9E39: 00        .byte $00   ; 
- - - - - - 0x011E4A 04:9E3A: 00        .byte $00   ; 
- - - - - - 0x011E4B 04:9E3B: 08        .byte $08   ; 
- - - - - - 0x011E4C 04:9E3C: 7F        .byte $7F   ; 
- D 0 - I - 0x011E4D 04:9E3D: 00        .byte $00   ; 
- D 0 - I - 0x011E4E 04:9E3E: 00        .byte $00   ; 
- D 0 - I - 0x011E4F 04:9E3F: 00        .byte $00   ; 
- - - - - - 0x011E50 04:9E40: 00        .byte $00   ; 
- - - - - - 0x011E51 04:9E41: 08        .byte $08   ; 
- - - - - - 0x011E52 04:9E42: 7F        .byte $7F   ; 
- D 0 - I - 0x011E53 04:9E43: 03        .byte $03   ; 
- D 0 - I - 0x011E54 04:9E44: A0        .byte $A0   ; 
- D 0 - I - 0x011E55 04:9E45: 00        .byte $00   ; 
- D 0 - I - 0x011E56 04:9E46: 02        .byte $02   ; 
- D 0 - I - 0x011E57 04:9E47: 0E        .byte $0E   ; 
- D 0 - I - 0x011E58 04:9E48: 7F        .byte $7F   ; 
- D 0 - I - 0x011E59 04:9E49: 03        .byte $03   ; 
- D 0 - I - 0x011E5A 04:9E4A: 90        .byte $90   ; 
- D 0 - I - 0x011E5B 04:9E4B: 00        .byte $00   ; 
- D 0 - I - 0x011E5C 04:9E4C: 02        .byte $02   ; 
- D 0 - I - 0x011E5D 04:9E4D: 10        .byte $10   ; 
- D 0 - I - 0x011E5E 04:9E4E: 7F        .byte $7F   ; 
- D 0 - I - 0x011E5F 04:9E4F: FF        .byte $FF   ; 

off_9E50:
- D 0 - I - 0x011E60 04:9E50: 00        .byte $00   ; 
- D 0 - I - 0x011E61 04:9E51: 00        .byte $00   ; 
- D 0 - I - 0x011E62 04:9E52: 00        .byte $00   ; 
- - - - - - 0x011E63 04:9E53: 00        .byte $00   ; 
- - - - - - 0x011E64 04:9E54: 09        .byte $09   ; 
- - - - - - 0x011E65 04:9E55: 7F        .byte $7F   ; 
- D 0 - I - 0x011E66 04:9E56: 00        .byte $00   ; 
- D 0 - I - 0x011E67 04:9E57: 00        .byte $00   ; 
- D 0 - I - 0x011E68 04:9E58: 00        .byte $00   ; 
- - - - - - 0x011E69 04:9E59: 00        .byte $00   ; 
- - - - - - 0x011E6A 04:9E5A: 09        .byte $09   ; 
- - - - - - 0x011E6B 04:9E5B: 7F        .byte $7F   ; 
- D 0 - I - 0x011E6C 04:9E5C: 03        .byte $03   ; 
- D 0 - I - 0x011E6D 04:9E5D: 80        .byte $80   ; 
- D 0 - I - 0x011E6E 04:9E5E: 00        .byte $00   ; 
- D 0 - I - 0x011E6F 04:9E5F: 02        .byte $02   ; 
- D 0 - I - 0x011E70 04:9E60: 0F        .byte $0F   ; 
- D 0 - I - 0x011E71 04:9E61: 7F        .byte $7F   ; 
- D 0 - I - 0x011E72 04:9E62: 03        .byte $03   ; 
- D 0 - I - 0x011E73 04:9E63: 70        .byte $70   ; 
- D 0 - I - 0x011E74 04:9E64: 00        .byte $00   ; 
- D 0 - I - 0x011E75 04:9E65: 02        .byte $02   ; 
- D 0 - I - 0x011E76 04:9E66: 10        .byte $10   ; 
- D 0 - I - 0x011E77 04:9E67: 7F        .byte $7F   ; 
- D 0 - I - 0x011E78 04:9E68: FF        .byte $FF   ; 

off_9E69:
- D 0 - I - 0x011E79 04:9E69: 00        .byte $00   ; 
- D 0 - I - 0x011E7A 04:9E6A: 00        .byte $00   ; 
- D 0 - I - 0x011E7B 04:9E6B: 00        .byte $00   ; 
- D 0 - I - 0x011E7C 04:9E6C: 00        .byte $00   ; 
- D 0 - I - 0x011E7D 04:9E6D: 0A        .byte $0A   ; 
- D 0 - I - 0x011E7E 04:9E6E: 7F        .byte $7F   ; 
- D 0 - I - 0x011E7F 04:9E6F: 00        .byte $00   ; 
- D 0 - I - 0x011E80 04:9E70: 00        .byte $00   ; 
- D 0 - I - 0x011E81 04:9E71: 00        .byte $00   ; 
- D 0 - I - 0x011E82 04:9E72: 00        .byte $00   ; 
- D 0 - I - 0x011E83 04:9E73: 0A        .byte $0A   ; 
- D 0 - I - 0x011E84 04:9E74: 7F        .byte $7F   ; 
- D 0 - I - 0x011E85 04:9E75: 03        .byte $03   ; 
- D 0 - I - 0x011E86 04:9E76: 60        .byte $60   ; 
- D 0 - I - 0x011E87 04:9E77: 00        .byte $00   ; 
- D 0 - I - 0x011E88 04:9E78: 02        .byte $02   ; 
- D 0 - I - 0x011E89 04:9E79: 10        .byte $10   ; 
- D 0 - I - 0x011E8A 04:9E7A: 7F        .byte $7F   ; 
- D 0 - I - 0x011E8B 04:9E7B: 03        .byte $03   ; 
- D 0 - I - 0x011E8C 04:9E7C: 40        .byte $40   ; 
- D 0 - I - 0x011E8D 04:9E7D: 00        .byte $00   ; 
- D 0 - I - 0x011E8E 04:9E7E: 02        .byte $02   ; 
- D 0 - I - 0x011E8F 04:9E7F: 0B        .byte $0B   ; 
- D 0 - I - 0x011E90 04:9E80: 7F        .byte $7F   ; 
- D 0 - I - 0x011E91 04:9E81: FF        .byte $FF   ; 

off_9E82:
- D 0 - I - 0x011E92 04:9E82: 00        .byte $00   ; 
- D 0 - I - 0x011E93 04:9E83: 00        .byte $00   ; 
- D 0 - I - 0x011E94 04:9E84: 00        .byte $00   ; 
- - - - - - 0x011E95 04:9E85: 00        .byte $00   ; 
- - - - - - 0x011E96 04:9E86: 0B        .byte $0B   ; 
- - - - - - 0x011E97 04:9E87: 7F        .byte $7F   ; 
- D 0 - I - 0x011E98 04:9E88: 00        .byte $00   ; 
- D 0 - I - 0x011E99 04:9E89: 00        .byte $00   ; 
- D 0 - I - 0x011E9A 04:9E8A: 00        .byte $00   ; 
- D 0 - I - 0x011E9B 04:9E8B: 00        .byte $00   ; 
- D 0 - I - 0x011E9C 04:9E8C: 0B        .byte $0B   ; 
- D 0 - I - 0x011E9D 04:9E8D: 7F        .byte $7F   ; 
- D 0 - I - 0x011E9E 04:9E8E: 03        .byte $03   ; 
- D 0 - I - 0x011E9F 04:9E8F: 40        .byte $40   ; 
- D 0 - I - 0x011EA0 04:9E90: 00        .byte $00   ; 
- - - - - - 0x011EA1 04:9E91: 01        .byte $01   ; 
- - - - - - 0x011EA2 04:9E92: 0A        .byte $0A   ; 
- - - - - - 0x011EA3 04:9E93: 7F        .byte $7F   ; 
- D 0 - I - 0x011EA4 04:9E94: 03        .byte $03   ; 
- D 0 - I - 0x011EA5 04:9E95: 08        .byte $08   ; 
- D 0 - I - 0x011EA6 04:9E96: 00        .byte $00   ; 
- - - - - - 0x011EA7 04:9E97: 00        .byte $00   ; 
- - - - - - 0x011EA8 04:9E98: 0B        .byte $0B   ; 
- - - - - - 0x011EA9 04:9E99: 7F        .byte $7F   ; 
- D 0 - I - 0x011EAA 04:9E9A: FF        .byte $FF   ; 

off_9E9B:
- D 0 - I - 0x011EAB 04:9E9B: 00        .byte $00   ; 
- D 0 - I - 0x011EAC 04:9E9C: 00        .byte $00   ; 
- D 0 - I - 0x011EAD 04:9E9D: 00        .byte $00   ; 
- - - - - - 0x011EAE 04:9E9E: 00        .byte $00   ; 
- - - - - - 0x011EAF 04:9E9F: 0C        .byte $0C   ; 
- - - - - - 0x011EB0 04:9EA0: 7F        .byte $7F   ; 
- D 0 - I - 0x011EB1 04:9EA1: 00        .byte $00   ; 
- D 0 - I - 0x011EB2 04:9EA2: 00        .byte $00   ; 
- D 0 - I - 0x011EB3 04:9EA3: 00        .byte $00   ; 
- - - - - - 0x011EB4 04:9EA4: 00        .byte $00   ; 
- - - - - - 0x011EB5 04:9EA5: 0C        .byte $0C   ; 
- - - - - - 0x011EB6 04:9EA6: 7F        .byte $7F   ; 
- D 0 - I - 0x011EB7 04:9EA7: 03        .byte $03   ; 
- D 0 - I - 0x011EB8 04:9EA8: B0        .byte $B0   ; 
- D 0 - I - 0x011EB9 04:9EA9: 00        .byte $00   ; 
- - - - - - 0x011EBA 04:9EAA: 01        .byte $01   ; 
- - - - - - 0x011EBB 04:9EAB: 04        .byte $04   ; 
- - - - - - 0x011EBC 04:9EAC: 7F        .byte $7F   ; 
- D 0 - I - 0x011EBD 04:9EAD: 03        .byte $03   ; 
- D 0 - I - 0x011EBE 04:9EAE: 60        .byte $60   ; 
- D 0 - I - 0x011EBF 04:9EAF: 00        .byte $00   ; 
- - - - - - 0x011EC0 04:9EB0: 01        .byte $01   ; 
- - - - - - 0x011EC1 04:9EB1: 01        .byte $01   ; 
- - - - - - 0x011EC2 04:9EB2: 7F        .byte $7F   ; 
- D 0 - I - 0x011EC3 04:9EB3: FF        .byte $FF   ; 

off_9EB4:
- D 0 - I - 0x011EC4 04:9EB4: 00        .byte $00   ; 
- D 0 - I - 0x011EC5 04:9EB5: 00        .byte $00   ; 
- D 0 - I - 0x011EC6 04:9EB6: 00        .byte $00   ; 
- - - - - - 0x011EC7 04:9EB7: 00        .byte $00   ; 
- - - - - - 0x011EC8 04:9EB8: 0D        .byte $0D   ; 
- - - - - - 0x011EC9 04:9EB9: 7F        .byte $7F   ; 
- D 0 - I - 0x011ECA 04:9EBA: 00        .byte $00   ; 
- D 0 - I - 0x011ECB 04:9EBB: 00        .byte $00   ; 
- D 0 - I - 0x011ECC 04:9EBC: 00        .byte $00   ; 
- - - - - - 0x011ECD 04:9EBD: 00        .byte $00   ; 
- - - - - - 0x011ECE 04:9EBE: 0D        .byte $0D   ; 
- - - - - - 0x011ECF 04:9EBF: 7F        .byte $7F   ; 
- D 0 - I - 0x011ED0 04:9EC0: 03        .byte $03   ; 
- D 0 - I - 0x011ED1 04:9EC1: 70        .byte $70   ; 
- D 0 - I - 0x011ED2 04:9EC2: 00        .byte $00   ; 
- D 0 - I - 0x011ED3 04:9EC3: 01        .byte $01   ; 
- D 0 - I - 0x011ED4 04:9EC4: 02        .byte $02   ; 
- D 0 - I - 0x011ED5 04:9EC5: 7F        .byte $7F   ; 
- D 0 - I - 0x011ED6 04:9EC6: 03        .byte $03   ; 
- D 0 - I - 0x011ED7 04:9EC7: 60        .byte $60   ; 
- D 0 - I - 0x011ED8 04:9EC8: 00        .byte $00   ; 
- - - - - - 0x011ED9 04:9EC9: 03        .byte $03   ; 
- - - - - - 0x011EDA 04:9ECA: 01        .byte $01   ; 
- - - - - - 0x011EDB 04:9ECB: 7F        .byte $7F   ; 
- D 0 - I - 0x011EDC 04:9ECC: FF        .byte $FF   ; 

off_9ECD:
- D 0 - I - 0x011EDD 04:9ECD: 00        .byte $00   ; 
- D 0 - I - 0x011EDE 04:9ECE: 00        .byte $00   ; 
- D 0 - I - 0x011EDF 04:9ECF: 00        .byte $00   ; 
- - - - - - 0x011EE0 04:9ED0: 00        .byte $00   ; 
- - - - - - 0x011EE1 04:9ED1: 0E        .byte $0E   ; 
- - - - - - 0x011EE2 04:9ED2: 7F        .byte $7F   ; 
- D 0 - I - 0x011EE3 04:9ED3: 00        .byte $00   ; 
- D 0 - I - 0x011EE4 04:9ED4: 00        .byte $00   ; 
- D 0 - I - 0x011EE5 04:9ED5: 00        .byte $00   ; 
- - - - - - 0x011EE6 04:9ED6: 00        .byte $00   ; 
- - - - - - 0x011EE7 04:9ED7: 0E        .byte $0E   ; 
- - - - - - 0x011EE8 04:9ED8: 7F        .byte $7F   ; 
- D 0 - I - 0x011EE9 04:9ED9: 03        .byte $03   ; 
- D 0 - I - 0x011EEA 04:9EDA: B0        .byte $B0   ; 
- D 0 - I - 0x011EEB 04:9EDB: 00        .byte $00   ; 
- - - - - - 0x011EEC 04:9EDC: 03        .byte $03   ; 
- - - - - - 0x011EED 04:9EDD: 07        .byte $07   ; 
- - - - - - 0x011EEE 04:9EDE: 7F        .byte $7F   ; 
- D 0 - I - 0x011EEF 04:9EDF: 03        .byte $03   ; 
- D 0 - I - 0x011EF0 04:9EE0: A0        .byte $A0   ; 
- D 0 - I - 0x011EF1 04:9EE1: 00        .byte $00   ; 
- D 0 - I - 0x011EF2 04:9EE2: 01        .byte $01   ; 
- D 0 - I - 0x011EF3 04:9EE3: 08        .byte $08   ; 
- D 0 - I - 0x011EF4 04:9EE4: 7F        .byte $7F   ; 
- D 0 - I - 0x011EF5 04:9EE5: FF        .byte $FF   ; 

off_9EE6:
- D 0 - I - 0x011EF6 04:9EE6: 00        .byte $00   ; 
- D 0 - I - 0x011EF7 04:9EE7: 00        .byte $00   ; 
- D 0 - I - 0x011EF8 04:9EE8: 00        .byte $00   ; 
- - - - - - 0x011EF9 04:9EE9: 00        .byte $00   ; 
- - - - - - 0x011EFA 04:9EEA: 0F        .byte $0F   ; 
- - - - - - 0x011EFB 04:9EEB: 7F        .byte $7F   ; 
- D 0 - I - 0x011EFC 04:9EEC: 00        .byte $00   ; 
- D 0 - I - 0x011EFD 04:9EED: 00        .byte $00   ; 
- D 0 - I - 0x011EFE 04:9EEE: 00        .byte $00   ; 
- - - - - - 0x011EFF 04:9EEF: 00        .byte $00   ; 
- - - - - - 0x011F00 04:9EF0: 0F        .byte $0F   ; 
- - - - - - 0x011F01 04:9EF1: 7F        .byte $7F   ; 
- D 0 - I - 0x011F02 04:9EF2: 03        .byte $03   ; 
- D 0 - I - 0x011F03 04:9EF3: 90        .byte $90   ; 
- D 0 - I - 0x011F04 04:9EF4: 00        .byte $00   ; 
- - - - - - 0x011F05 04:9EF5: 03        .byte $03   ; 
- - - - - - 0x011F06 04:9EF6: 08        .byte $08   ; 
- - - - - - 0x011F07 04:9EF7: 7F        .byte $7F   ; 
- D 0 - I - 0x011F08 04:9EF8: 03        .byte $03   ; 
- D 0 - I - 0x011F09 04:9EF9: 80        .byte $80   ; 
- D 0 - I - 0x011F0A 04:9EFA: 00        .byte $00   ; 
- D 0 - I - 0x011F0B 04:9EFB: 03        .byte $03   ; 
- D 0 - I - 0x011F0C 04:9EFC: 09        .byte $09   ; 
- D 0 - I - 0x011F0D 04:9EFD: 7F        .byte $7F   ; 
- D 0 - I - 0x011F0E 04:9EFE: FF        .byte $FF   ; 

off_9EFF:
- D 0 - I - 0x011F0F 04:9EFF: 00        .byte $00   ; 
- D 0 - I - 0x011F10 04:9F00: 00        .byte $00   ; 
- D 0 - I - 0x011F11 04:9F01: 00        .byte $00   ; 
- - - - - - 0x011F12 04:9F02: 00        .byte $00   ; 
- - - - - - 0x011F13 04:9F03: 10        .byte $10   ; 
- - - - - - 0x011F14 04:9F04: 7F        .byte $7F   ; 
- D 0 - I - 0x011F15 04:9F05: 00        .byte $00   ; 
- D 0 - I - 0x011F16 04:9F06: 00        .byte $00   ; 
- D 0 - I - 0x011F17 04:9F07: 00        .byte $00   ; 
- - - - - - 0x011F18 04:9F08: 00        .byte $00   ; 
- - - - - - 0x011F19 04:9F09: 10        .byte $10   ; 
- - - - - - 0x011F1A 04:9F0A: 7F        .byte $7F   ; 
- D 0 - I - 0x011F1B 04:9F0B: 03        .byte $03   ; 
- D 0 - I - 0x011F1C 04:9F0C: 70        .byte $70   ; 
- D 0 - I - 0x011F1D 04:9F0D: 00        .byte $00   ; 
- D 0 - I - 0x011F1E 04:9F0E: 03        .byte $03   ; 
- D 0 - I - 0x011F1F 04:9F0F: 09        .byte $09   ; 
- D 0 - I - 0x011F20 04:9F10: 7F        .byte $7F   ; 
- D 0 - I - 0x011F21 04:9F11: 03        .byte $03   ; 
- D 0 - I - 0x011F22 04:9F12: 60        .byte $60   ; 
- D 0 - I - 0x011F23 04:9F13: 00        .byte $00   ; 
- D 0 - I - 0x011F24 04:9F14: 01        .byte $01   ; 
- D 0 - I - 0x011F25 04:9F15: 0A        .byte $0A   ; 
- D 0 - I - 0x011F26 04:9F16: 7F        .byte $7F   ; 
- D 0 - I - 0x011F27 04:9F17: FF        .byte $FF   ; 



_off005_9F18_0B_Trap_Room_pt5:
; con_mission_Trap_Room_pt5
- D 0 - I - 0x011F28 04:9F18: 2C 9F     .word ofs_9F2C_00
- D 0 - I - 0x011F2A 04:9F1A: 40        .byte $40   ; 
- D 0 - I - 0x011F2B 04:9F1B: 00        .byte $00   ; 
- D 0 - I - 0x011F2C 04:9F1C: 80        .byte $80   ; 
- D 0 - I - 0x011F2D 04:9F1D: 3C 9F     .word ofs_9F3C_01
- D 0 - I - 0x011F2F 04:9F1F: 80        .byte $80   ; 
- D 0 - I - 0x011F30 04:9F20: 00        .byte $00   ; 
- D 0 - I - 0x011F31 04:9F21: 80        .byte $80   ; 
- D 0 - I - 0x011F32 04:9F22: 44 9F     .word ofs_9F44_02
- D 0 - I - 0x011F34 04:9F24: 80        .byte $80   ; 
- D 0 - I - 0x011F35 04:9F25: 00        .byte $00   ; 
- D 0 - I - 0x011F36 04:9F26: 80        .byte $80   ; 
- D 0 - I - 0x011F37 04:9F27: 4C 9F     .word ofs_9F4C_03
- D 0 - I - 0x011F39 04:9F29: 00        .byte $00   ; 
- D 0 - I - 0x011F3A 04:9F2A: 00        .byte $00   ; 
- D 0 - I - 0x011F3B 04:9F2B: 07        .byte $07   ; 



ofs_9F2C_00:
- D 0 - I - 0x011F3C 04:9F2C: 2F        .byte $2F   ; 
- D 0 - I - 0x011F3D 04:9F2D: 00        .byte $00   ; 
- D 0 - I - 0x011F3E 04:9F2E: 50 9F     .word off_9F50
- D 0 - I - 0x011F40 04:9F30: 7F        .byte $7F   ; 
- D 0 - I - 0x011F41 04:9F31: 00        .byte $00   ; 
- D 0 - I - 0x011F42 04:9F32: 5D 9F     .word off_9F5D
- D 0 - I - 0x011F44 04:9F34: CF        .byte $CF   ; 
- D 0 - I - 0x011F45 04:9F35: 00        .byte $00   ; 
- D 0 - I - 0x011F46 04:9F36: 6A 9F     .word off_9F6A
- D 0 - I - 0x011F48 04:9F38: FF        .byte $FF   ; 
- D 0 - I - 0x011F49 04:9F39: FF        .byte $FF   ; 
- D 0 - I - 0x011F4A 04:9F3A: 77 9F     .word off_9F77



ofs_9F3C_01:
- D 0 - I - 0x011F4C 04:9F3C: F8        .byte $F8   ; 
- D 0 - I - 0x011F4D 04:9F3D: 00        .byte $00   ; 
- D 0 - I - 0x011F4E 04:9F3E: 84 9F     .word off_9F84
- - - - - - 0x011F50 04:9F40: FF        .byte $FF   ; 
- - - - - - 0x011F51 04:9F41: FF        .byte $FF   ; 
- - - - - - 0x011F52 04:9F42: 91 9F     .word off_9F91



ofs_9F44_02:
- D 0 - I - 0x011F54 04:9F44: 7F        .byte $7F   ; 
- D 0 - I - 0x011F55 04:9F45: 00        .byte $00   ; 
- D 0 - I - 0x011F56 04:9F46: 9E 9F     .word off_9F9E
- D 0 - I - 0x011F58 04:9F48: FF        .byte $FF   ; 
- D 0 - I - 0x011F59 04:9F49: FF        .byte $FF   ; 
- D 0 - I - 0x011F5A 04:9F4A: B7 9F     .word off_9FB7



ofs_9F4C_03:
- D 0 - I - 0x011F5C 04:9F4C: FF        .byte $FF   ; 
- D 0 - I - 0x011F5D 04:9F4D: FF        .byte $FF   ; 
- D 0 - I - 0x011F5E 04:9F4E: CA 9F     .word off_9FCA



off_9F50:
- D 0 - I - 0x011F60 04:9F50: 01        .byte $01   ; 
- D 0 - I - 0x011F61 04:9F51: 00        .byte $00   ; 
- D 0 - I - 0x011F62 04:9F52: 00        .byte $00   ; 
- D 0 - I - 0x011F63 04:9F53: 00        .byte $00   ; 
- D 0 - I - 0x011F64 04:9F54: 00        .byte $00   ; 
- D 0 - I - 0x011F65 04:9F55: 7F        .byte $7F   ; 
- D 0 - I - 0x011F66 04:9F56: 00        .byte $00   ; 
- D 0 - I - 0x011F67 04:9F57: 00        .byte $00   ; 
- D 0 - I - 0x011F68 04:9F58: 00        .byte $00   ; 
- - - - - - 0x011F69 04:9F59: 02        .byte $02   ; 
- - - - - - 0x011F6A 04:9F5A: 03        .byte $03   ; 
- - - - - - 0x011F6B 04:9F5B: 7F        .byte $7F   ; 
- D 0 - I - 0x011F6C 04:9F5C: FF        .byte $FF   ; 

off_9F5D:
- D 0 - I - 0x011F6D 04:9F5D: 00        .byte $00   ; 
- D 0 - I - 0x011F6E 04:9F5E: 30        .byte $30   ; 
- D 0 - I - 0x011F6F 04:9F5F: 00        .byte $00   ; 
- D 0 - I - 0x011F70 04:9F60: 00        .byte $00   ; 
- D 0 - I - 0x011F71 04:9F61: 00        .byte $00   ; 
- D 0 - I - 0x011F72 04:9F62: 0D        .byte $0D   ; 
- D 0 - I - 0x011F73 04:9F63: 00        .byte $00   ; 
- D 0 - I - 0x011F74 04:9F64: 00        .byte $00   ; 
- D 0 - I - 0x011F75 04:9F65: 00        .byte $00   ; 
- D 0 - I - 0x011F76 04:9F66: 02        .byte $02   ; 
- D 0 - I - 0x011F77 04:9F67: 03        .byte $03   ; 
- D 0 - I - 0x011F78 04:9F68: 7F        .byte $7F   ; 
- D 0 - I - 0x011F79 04:9F69: FF        .byte $FF   ; 

off_9F6A:
- D 0 - I - 0x011F7A 04:9F6A: 00        .byte $00   ; 
- D 0 - I - 0x011F7B 04:9F6B: 30        .byte $30   ; 
- D 0 - I - 0x011F7C 04:9F6C: 00        .byte $00   ; 
- D 0 - I - 0x011F7D 04:9F6D: 00        .byte $00   ; 
- D 0 - I - 0x011F7E 04:9F6E: 00        .byte $00   ; 
- D 0 - I - 0x011F7F 04:9F6F: 0E        .byte $0E   ; 
- D 0 - I - 0x011F80 04:9F70: 00        .byte $00   ; 
- D 0 - I - 0x011F81 04:9F71: 00        .byte $00   ; 
- D 0 - I - 0x011F82 04:9F72: 00        .byte $00   ; 
- - - - - - 0x011F83 04:9F73: 02        .byte $02   ; 
- - - - - - 0x011F84 04:9F74: 03        .byte $03   ; 
- - - - - - 0x011F85 04:9F75: 7F        .byte $7F   ; 
- D 0 - I - 0x011F86 04:9F76: FF        .byte $FF   ; 

off_9F77:
- D 0 - I - 0x011F87 04:9F77: 02        .byte $02   ; 
- D 0 - I - 0x011F88 04:9F78: 00        .byte $00   ; 
- D 0 - I - 0x011F89 04:9F79: 01        .byte $01   ; 
- D 0 - I - 0x011F8A 04:9F7A: 00        .byte $00   ; 
- D 0 - I - 0x011F8B 04:9F7B: 00        .byte $00   ; 
- D 0 - I - 0x011F8C 04:9F7C: 7F        .byte $7F   ; 
- D 0 - I - 0x011F8D 04:9F7D: 00        .byte $00   ; 
- D 0 - I - 0x011F8E 04:9F7E: 00        .byte $00   ; 
- D 0 - I - 0x011F8F 04:9F7F: 00        .byte $00   ; 
- - - - - - 0x011F90 04:9F80: 02        .byte $02   ; 
- - - - - - 0x011F91 04:9F81: 03        .byte $03   ; 
- - - - - - 0x011F92 04:9F82: 7F        .byte $7F   ; 
- D 0 - I - 0x011F93 04:9F83: FF        .byte $FF   ; 

off_9F84:
- D 0 - I - 0x011F94 04:9F84: 00        .byte $00   ; 
- D 0 - I - 0x011F95 04:9F85: 20        .byte $20   ; 
- D 0 - I - 0x011F96 04:9F86: 00        .byte $00   ; 
- - - - - - 0x011F97 04:9F87: 02        .byte $02   ; 
- - - - - - 0x011F98 04:9F88: 00        .byte $00   ; 
- - - - - - 0x011F99 04:9F89: 7F        .byte $7F   ; 
- D 0 - I - 0x011F9A 04:9F8A: 02        .byte $02   ; 
- D 0 - I - 0x011F9B 04:9F8B: F8        .byte $F8   ; 
- D 0 - I - 0x011F9C 04:9F8C: 00        .byte $00   ; 
- D 0 - I - 0x011F9D 04:9F8D: 02        .byte $02   ; 
- D 0 - I - 0x011F9E 04:9F8E: 00        .byte $00   ; 
- D 0 - I - 0x011F9F 04:9F8F: 7F        .byte $7F   ; 
- D 0 - I - 0x011FA0 04:9F90: FF        .byte $FF   ; 

off_9F91:
- - - - - - 0x011FA1 04:9F91: 00        .byte $00   ; 
- - - - - - 0x011FA2 04:9F92: 20        .byte $20   ; 
- - - - - - 0x011FA3 04:9F93: 00        .byte $00   ; 
- - - - - - 0x011FA4 04:9F94: 02        .byte $02   ; 
- - - - - - 0x011FA5 04:9F95: 00        .byte $00   ; 
- - - - - - 0x011FA6 04:9F96: 7F        .byte $7F   ; 
- - - - - - 0x011FA7 04:9F97: 00        .byte $00   ; 
- - - - - - 0x011FA8 04:9F98: 00        .byte $00   ; 
- - - - - - 0x011FA9 04:9F99: 00        .byte $00   ; 
- - - - - - 0x011FAA 04:9F9A: 02        .byte $02   ; 
- - - - - - 0x011FAB 04:9F9B: 00        .byte $00   ; 
- - - - - - 0x011FAC 04:9F9C: 7F        .byte $7F   ; 
- - - - - - 0x011FAD 04:9F9D: FF        .byte $FF   ; 

off_9F9E:
- D 0 - I - 0x011FAE 04:9F9E: 00        .byte $00   ; 
- D 0 - I - 0x011FAF 04:9F9F: 38        .byte $38   ; 
- D 0 - I - 0x011FB0 04:9FA0: 00        .byte $00   ; 
- D 0 - I - 0x011FB1 04:9FA1: 00        .byte $00   ; 
- D 0 - I - 0x011FB2 04:9FA2: 02        .byte $02   ; 
- D 0 - I - 0x011FB3 04:9FA3: 7F        .byte $7F   ; 
- D 0 - I - 0x011FB4 04:9FA4: 00        .byte $00   ; 
- D 0 - I - 0x011FB5 04:9FA5: 30        .byte $30   ; 
- D 0 - I - 0x011FB6 04:9FA6: 00        .byte $00   ; 
- D 0 - I - 0x011FB7 04:9FA7: 02        .byte $02   ; 
- D 0 - I - 0x011FB8 04:9FA8: 00        .byte $00   ; 
- D 0 - I - 0x011FB9 04:9FA9: 8D        .byte $8D   ; 
- D 0 - I - 0x011FBA 04:9FAA: 00        .byte $00   ; 
- D 0 - I - 0x011FBB 04:9FAB: 38        .byte $38   ; 
- D 0 - I - 0x011FBC 04:9FAC: 00        .byte $00   ; 
- - - - - - 0x011FBD 04:9FAD: 00        .byte $00   ; 
- - - - - - 0x011FBE 04:9FAE: 02        .byte $02   ; 
- - - - - - 0x011FBF 04:9FAF: 7F        .byte $7F   ; 
- D 0 - I - 0x011FC0 04:9FB0: 03        .byte $03   ; 
- D 0 - I - 0x011FC1 04:9FB1: 34        .byte $34   ; 
- D 0 - I - 0x011FC2 04:9FB2: 00        .byte $00   ; 
- D 0 - I - 0x011FC3 04:9FB3: 00        .byte $00   ; 
- D 0 - I - 0x011FC4 04:9FB4: 02        .byte $02   ; 
- D 0 - I - 0x011FC5 04:9FB5: 7F        .byte $7F   ; 
- D 0 - I - 0x011FC6 04:9FB6: FF        .byte $FF   ; 

off_9FB7:
- D 0 - I - 0x011FC7 04:9FB7: 00        .byte $00   ; 
- D 0 - I - 0x011FC8 04:9FB8: 38        .byte $38   ; 
- D 0 - I - 0x011FC9 04:9FB9: 00        .byte $00   ; 
- - - - - - 0x011FCA 04:9FBA: 00        .byte $00   ; 
- - - - - - 0x011FCB 04:9FBB: 02        .byte $02   ; 
- - - - - - 0x011FCC 04:9FBC: 7F        .byte $7F   ; 
- D 0 - I - 0x011FCD 04:9FBD: 00        .byte $00   ; 
- D 0 - I - 0x011FCE 04:9FBE: 30        .byte $30   ; 
- D 0 - I - 0x011FCF 04:9FBF: 00        .byte $00   ; 
- D 0 - I - 0x011FD0 04:9FC0: 02        .byte $02   ; 
- D 0 - I - 0x011FD1 04:9FC1: 00        .byte $00   ; 
- D 0 - I - 0x011FD2 04:9FC2: 8E        .byte $8E   ; 
- D 0 - I - 0x011FD3 04:9FC3: 03        .byte $03   ; 
- D 0 - I - 0x011FD4 04:9FC4: CC        .byte $CC   ; 
- D 0 - I - 0x011FD5 04:9FC5: 00        .byte $00   ; 
- D 0 - I - 0x011FD6 04:9FC6: 00        .byte $00   ; 
- D 0 - I - 0x011FD7 04:9FC7: 02        .byte $02   ; 
- D 0 - I - 0x011FD8 04:9FC8: 7F        .byte $7F   ; 
- D 0 - I - 0x011FD9 04:9FC9: FF        .byte $FF   ; 

off_9FCA:
- D 0 - I - 0x011FDA 04:9FCA: 00        .byte $00   ; 
- D 0 - I - 0x011FDB 04:9FCB: 00        .byte $00   ; 
- D 0 - I - 0x011FDC 04:9FCC: 00        .byte $00   ; 
- - - - - - 0x011FDD 04:9FCD: 00        .byte $00   ; 
- - - - - - 0x011FDE 04:9FCE: 03        .byte $03   ; 
- - - - - - 0x011FDF 04:9FCF: 7F        .byte $7F   ; 
- D 0 - I - 0x011FE0 04:9FD0: 00        .byte $00   ; 
- D 0 - I - 0x011FE1 04:9FD1: 00        .byte $00   ; 
- D 0 - I - 0x011FE2 04:9FD2: 00        .byte $00   ; 
- D 0 - I - 0x011FE3 04:9FD3: 00        .byte $00   ; 
- D 0 - I - 0x011FE4 04:9FD4: 03        .byte $03   ; 
- D 0 - I - 0x011FE5 04:9FD5: 7F        .byte $7F   ; 
- D 0 - I - 0x011FE6 04:9FD6: 03        .byte $03   ; 
- D 0 - I - 0x011FE7 04:9FD7: F8        .byte $F8   ; 
- D 0 - I - 0x011FE8 04:9FD8: 00        .byte $00   ; 
- - - - - - 0x011FE9 04:9FD9: 00        .byte $00   ; 
- - - - - - 0x011FEA 04:9FDA: 03        .byte $03   ; 
- - - - - - 0x011FEB 04:9FDB: 7F        .byte $7F   ; 
- D 0 - I - 0x011FEC 04:9FDC: 03        .byte $03   ; 
- D 0 - I - 0x011FED 04:9FDD: 08        .byte $08   ; 
- D 0 - I - 0x011FEE 04:9FDE: 00        .byte $00   ; 
- - - - - - 0x011FEF 04:9FDF: 00        .byte $00   ; 
- - - - - - 0x011FF0 04:9FE0: 03        .byte $03   ; 
- - - - - - 0x011FF1 04:9FE1: 7F        .byte $7F   ; 
- D 0 - I - 0x011FF2 04:9FE2: FF        .byte $FF   ; 



_off005_9FE3_0C_The_Double_Illusion:
; con_mission_The_Double_Illusion
- D 0 - I - 0x011FF3 04:9FE3: F7 9F     .word ofs_9FF7_00
- D 0 - I - 0x011FF5 04:9FE5: 00        .byte $00   ; 
- D 0 - I - 0x011FF6 04:9FE6: 01        .byte $01   ; 
- D 0 - I - 0x011FF7 04:9FE7: 80        .byte $80   ; 
- D 0 - I - 0x011FF8 04:9FE8: 0F A0     .word ofs_A00F_01
- D 0 - I - 0x011FFA 04:9FEA: 40        .byte $40   ; 
- D 0 - I - 0x011FFB 04:9FEB: 00        .byte $00   ; 
- D 0 - I - 0x011FFC 04:9FEC: 80        .byte $80   ; 
- D 0 - I - 0x011FFD 04:9FED: 1F A0     .word ofs_A01F_02
- D 0 - I - 0x011FFF 04:9FEF: D8        .byte $D8   ; 
- D 0 - I - 0x012000 04:9FF0: 00        .byte $00   ; 
- D 0 - I - 0x012001 04:9FF1: 86        .byte $86   ; 
- D 0 - I - 0x012002 04:9FF2: 27 A0     .word ofs_A027_03
- D 0 - I - 0x012004 04:9FF4: 00        .byte $00   ; 
- D 0 - I - 0x012005 04:9FF5: 00        .byte $00   ; 
- D 0 - I - 0x012006 04:9FF6: 07        .byte $07   ; 



ofs_9FF7_00:
- D 0 - I - 0x012007 04:9FF7: 1F        .byte $1F   ; 
- D 0 - I - 0x012008 04:9FF8: 00        .byte $00   ; 
- D 0 - I - 0x012009 04:9FF9: 2B A0     .word off_A02B
- D 0 - I - 0x01200B 04:9FFB: BF        .byte $BF   ; 
- D 0 - I - 0x01200C 04:9FFC: 01        .byte $01   ; 
- D 0 - I - 0x01200D 04:9FFD: 38 A0     .word off_A038
- D 0 - I - 0x01200F 04:9FFF: CF        .byte $CF   ; 
- D 1 - I - 0x012010 04:A000: 01        .byte $01   ; 
- D 1 - I - 0x012011 04:A001: 45 A0     .word off_A045
- D 1 - I - 0x012013 04:A003: EF        .byte $EF   ; 
- D 1 - I - 0x012014 04:A004: 01        .byte $01   ; 
- D 1 - I - 0x012015 04:A005: 52 A0     .word off_A052
- D 1 - I - 0x012017 04:A007: FF        .byte $FF   ; 
- D 1 - I - 0x012018 04:A008: 01        .byte $01   ; 
- D 1 - I - 0x012019 04:A009: 5F A0     .word off_A05F
- D 1 - I - 0x01201B 04:A00B: FF        .byte $FF   ; 
- D 1 - I - 0x01201C 04:A00C: FF        .byte $FF   ; 
- D 1 - I - 0x01201D 04:A00D: 6C A0     .word off_A06C



ofs_A00F_01:
- D 1 - I - 0x01201F 04:A00F: FF        .byte $FF   ; 
- D 1 - I - 0x012020 04:A010: 02        .byte $02   ; 
- D 1 - I - 0x012021 04:A011: 7F A0     .word off_A07F
- D 1 - I - 0x012023 04:A013: 2F        .byte $2F   ; 
- D 1 - I - 0x012024 04:A014: 03        .byte $03   ; 
- D 1 - I - 0x012025 04:A015: 98 A0     .word off_A098
- D 1 - I - 0x012027 04:A017: CF        .byte $CF   ; 
- D 1 - I - 0x012028 04:A018: 03        .byte $03   ; 
- D 1 - I - 0x012029 04:A019: A5 A0     .word off_A0A5
- D 1 - I - 0x01202B 04:A01B: FF        .byte $FF   ; 
- D 1 - I - 0x01202C 04:A01C: FF        .byte $FF   ; 
- D 1 - I - 0x01202D 04:A01D: B2 A0     .word off_A0B2



ofs_A01F_02:
- D 1 - I - 0x01202F 04:A01F: BF        .byte $BF   ; 
- D 1 - I - 0x012030 04:A020: 01        .byte $01   ; 
- D 1 - I - 0x012031 04:A021: BF A0     .word off_A0BF
- - - - - - 0x012033 04:A023: FF        .byte $FF   ; 
- - - - - - 0x012034 04:A024: FF        .byte $FF   ; 
- - - - - - 0x012035 04:A025: D8 A0     .word off_A0D8



ofs_A027_03:
- D 1 - I - 0x012037 04:A027: FF        .byte $FF   ; 
- D 1 - I - 0x012038 04:A028: FF        .byte $FF   ; 
- D 1 - I - 0x012039 04:A029: E5 A0     .word off_A0E5



off_A02B:
- D 1 - I - 0x01203B 04:A02B: 01        .byte $01   ; 
- D 1 - I - 0x01203C 04:A02C: 60        .byte $60   ; 
- D 1 - I - 0x01203D 04:A02D: 00        .byte $00   ; 
- - - - - - 0x01203E 04:A02E: 00        .byte $00   ; 
- - - - - - 0x01203F 04:A02F: 00        .byte $00   ; 
- - - - - - 0x012040 04:A030: 7F        .byte $7F   ; 
- D 1 - I - 0x012041 04:A031: 00        .byte $00   ; 
- D 1 - I - 0x012042 04:A032: 60        .byte $60   ; 
- D 1 - I - 0x012043 04:A033: 00        .byte $00   ; 
- - - - - - 0x012044 04:A034: 02        .byte $02   ; 
- - - - - - 0x012045 04:A035: 02        .byte $02   ; 
- - - - - - 0x012046 04:A036: 7F        .byte $7F   ; 
- D 1 - I - 0x012047 04:A037: FF        .byte $FF   ; 

off_A038:
- D 1 - I - 0x012048 04:A038: 00        .byte $00   ; 
- D 1 - I - 0x012049 04:A039: 80        .byte $80   ; 
- D 1 - I - 0x01204A 04:A03A: 00        .byte $00   ; 
- D 1 - I - 0x01204B 04:A03B: 00        .byte $00   ; 
- D 1 - I - 0x01204C 04:A03C: 00        .byte $00   ; 
- D 1 - I - 0x01204D 04:A03D: 7F        .byte $7F   ; 
- D 1 - I - 0x01204E 04:A03E: 00        .byte $00   ; 
- D 1 - I - 0x01204F 04:A03F: 60        .byte $60   ; 
- D 1 - I - 0x012050 04:A040: 00        .byte $00   ; 
- D 1 - I - 0x012051 04:A041: 02        .byte $02   ; 
- D 1 - I - 0x012052 04:A042: 02        .byte $02   ; 
- D 1 - I - 0x012053 04:A043: 7F        .byte $7F   ; 
- D 1 - I - 0x012054 04:A044: FF        .byte $FF   ; 

off_A045:
- D 1 - I - 0x012055 04:A045: 00        .byte $00   ; 
- D 1 - I - 0x012056 04:A046: 80        .byte $80   ; 
- D 1 - I - 0x012057 04:A047: 00        .byte $00   ; 
- - - - - - 0x012058 04:A048: 00        .byte $00   ; 
- - - - - - 0x012059 04:A049: 00        .byte $00   ; 
- - - - - - 0x01205A 04:A04A: 7F        .byte $7F   ; 
- D 1 - I - 0x01205B 04:A04B: 02        .byte $02   ; 
- D 1 - I - 0x01205C 04:A04C: 20        .byte $20   ; 
- D 1 - I - 0x01205D 04:A04D: 02        .byte $02   ; 
- - - - - - 0x01205E 04:A04E: 02        .byte $02   ; 
- - - - - - 0x01205F 04:A04F: 02        .byte $02   ; 
- - - - - - 0x012060 04:A050: 7F        .byte $7F   ; 
- D 1 - I - 0x012061 04:A051: FF        .byte $FF   ; 

off_A052:
- D 1 - I - 0x012062 04:A052: 02        .byte $02   ; 
- D 1 - I - 0x012063 04:A053: 50        .byte $50   ; 
- D 1 - I - 0x012064 04:A054: 02        .byte $02   ; 
- D 1 - I - 0x012065 04:A055: 00        .byte $00   ; 
- D 1 - I - 0x012066 04:A056: 00        .byte $00   ; 
- D 1 - I - 0x012067 04:A057: 7F        .byte $7F   ; 
- D 1 - I - 0x012068 04:A058: 02        .byte $02   ; 
- D 1 - I - 0x012069 04:A059: 20        .byte $20   ; 
- D 1 - I - 0x01206A 04:A05A: 02        .byte $02   ; 
- - - - - - 0x01206B 04:A05B: 02        .byte $02   ; 
- - - - - - 0x01206C 04:A05C: 02        .byte $02   ; 
- - - - - - 0x01206D 04:A05D: 7F        .byte $7F   ; 
- D 1 - I - 0x01206E 04:A05E: FF        .byte $FF   ; 

off_A05F:
- D 1 - I - 0x01206F 04:A05F: 02        .byte $02   ; 
- D 1 - I - 0x012070 04:A060: 50        .byte $50   ; 
- D 1 - I - 0x012071 04:A061: 02        .byte $02   ; 
- D 1 - I - 0x012072 04:A062: 00        .byte $00   ; 
- D 1 - I - 0x012073 04:A063: 00        .byte $00   ; 
- D 1 - I - 0x012074 04:A064: 7F        .byte $7F   ; 
- D 1 - I - 0x012075 04:A065: 00        .byte $00   ; 
- D 1 - I - 0x012076 04:A066: 30        .byte $30   ; 
- D 1 - I - 0x012077 04:A067: 00        .byte $00   ; 
- - - - - - 0x012078 04:A068: 02        .byte $02   ; 
- - - - - - 0x012079 04:A069: 03        .byte $03   ; 
- - - - - - 0x01207A 04:A06A: 7F        .byte $7F   ; 
- D 1 - I - 0x01207B 04:A06B: FF        .byte $FF   ; 

off_A06C:
- D 1 - I - 0x01207C 04:A06C: 00        .byte $00   ; 
- D 1 - I - 0x01207D 04:A06D: 50        .byte $50   ; 
- D 1 - I - 0x01207E 04:A06E: 00        .byte $00   ; 
- D 1 - I - 0x01207F 04:A06F: 00        .byte $00   ; 
- D 1 - I - 0x012080 04:A070: 00        .byte $00   ; 
- D 1 - I - 0x012081 04:A071: 7F        .byte $7F   ; 
- D 1 - I - 0x012082 04:A072: 00        .byte $00   ; 
- D 1 - I - 0x012083 04:A073: 30        .byte $30   ; 
- D 1 - I - 0x012084 04:A074: 00        .byte $00   ; 
- D 1 - I - 0x012085 04:A075: 02        .byte $02   ; 
- D 1 - I - 0x012086 04:A076: 01        .byte $01   ; 
- D 1 - I - 0x012087 04:A077: 8F        .byte $8F   ; 
- D 1 - I - 0x012088 04:A078: 03        .byte $03   ; 
- D 1 - I - 0x012089 04:A079: F8        .byte $F8   ; 
- D 1 - I - 0x01208A 04:A07A: 02        .byte $02   ; 
- D 1 - I - 0x01208B 04:A07B: 00        .byte $00   ; 
- D 1 - I - 0x01208C 04:A07C: 00        .byte $00   ; 
- D 1 - I - 0x01208D 04:A07D: 7F        .byte $7F   ; 
- D 1 - I - 0x01208E 04:A07E: FF        .byte $FF   ; 

off_A07F:
- D 1 - I - 0x01208F 04:A07F: 00        .byte $00   ; 
- D 1 - I - 0x012090 04:A080: 30        .byte $30   ; 
- D 1 - I - 0x012091 04:A081: 00        .byte $00   ; 
- D 1 - I - 0x012092 04:A082: 00        .byte $00   ; 
- D 1 - I - 0x012093 04:A083: 01        .byte $01   ; 
- D 1 - I - 0x012094 04:A084: 0F        .byte $0F   ; 
- D 1 - I - 0x012095 04:A085: 00        .byte $00   ; 
- D 1 - I - 0x012096 04:A086: 10        .byte $10   ; 
- D 1 - I - 0x012097 04:A087: 00        .byte $00   ; 
- D 1 - I - 0x012098 04:A088: 02        .byte $02   ; 
- D 1 - I - 0x012099 04:A089: 03        .byte $03   ; 
- D 1 - I - 0x01209A 04:A08A: 7F        .byte $7F   ; 
- D 1 - I - 0x01209B 04:A08B: 00        .byte $00   ; 
- D 1 - I - 0x01209C 04:A08C: 30        .byte $30   ; 
- D 1 - I - 0x01209D 04:A08D: 00        .byte $00   ; 
- - - - - - 0x01209E 04:A08E: 00        .byte $00   ; 
- - - - - - 0x01209F 04:A08F: 01        .byte $01   ; 
- - - - - - 0x0120A0 04:A090: 7F        .byte $7F   ; 
- D 1 - I - 0x0120A1 04:A091: 03        .byte $03   ; 
- D 1 - I - 0x0120A2 04:A092: 08        .byte $08   ; 
- D 1 - I - 0x0120A3 04:A093: 02        .byte $02   ; 
- D 1 - I - 0x0120A4 04:A094: 00        .byte $00   ; 
- D 1 - I - 0x0120A5 04:A095: 01        .byte $01   ; 
- D 1 - I - 0x0120A6 04:A096: 7F        .byte $7F   ; 
- D 1 - I - 0x0120A7 04:A097: FF        .byte $FF   ; 

off_A098:
- D 1 - I - 0x0120A8 04:A098: 01        .byte $01   ; 
- D 1 - I - 0x0120A9 04:A099: 30        .byte $30   ; 
- D 1 - I - 0x0120AA 04:A09A: FD        .byte $FD   ; 
- D 1 - I - 0x0120AB 04:A09B: 00        .byte $00   ; 
- D 1 - I - 0x0120AC 04:A09C: 01        .byte $01   ; 
- D 1 - I - 0x0120AD 04:A09D: 7F        .byte $7F   ; 
- D 1 - I - 0x0120AE 04:A09E: 00        .byte $00   ; 
- D 1 - I - 0x0120AF 04:A09F: 10        .byte $10   ; 
- D 1 - I - 0x0120B0 04:A0A0: 00        .byte $00   ; 
- D 1 - I - 0x0120B1 04:A0A1: 02        .byte $02   ; 
- D 1 - I - 0x0120B2 04:A0A2: 03        .byte $03   ; 
- D 1 - I - 0x0120B3 04:A0A3: 7F        .byte $7F   ; 
- D 1 - I - 0x0120B4 04:A0A4: FF        .byte $FF   ; 

off_A0A5:
- D 1 - I - 0x0120B5 04:A0A5: 00        .byte $00   ; 
- D 1 - I - 0x0120B6 04:A0A6: 60        .byte $60   ; 
- D 1 - I - 0x0120B7 04:A0A7: 00        .byte $00   ; 
- D 1 - I - 0x0120B8 04:A0A8: 00        .byte $00   ; 
- D 1 - I - 0x0120B9 04:A0A9: 01        .byte $01   ; 
- D 1 - I - 0x0120BA 04:A0AA: 7F        .byte $7F   ; 
- D 1 - I - 0x0120BB 04:A0AB: 00        .byte $00   ; 
- D 1 - I - 0x0120BC 04:A0AC: 10        .byte $10   ; 
- D 1 - I - 0x0120BD 04:A0AD: 00        .byte $00   ; 
- D 1 - I - 0x0120BE 04:A0AE: 02        .byte $02   ; 
- D 1 - I - 0x0120BF 04:A0AF: 03        .byte $03   ; 
- D 1 - I - 0x0120C0 04:A0B0: 7F        .byte $7F   ; 
- D 1 - I - 0x0120C1 04:A0B1: FF        .byte $FF   ; 

off_A0B2:
- D 1 - I - 0x0120C2 04:A0B2: 02        .byte $02   ; 
- D 1 - I - 0x0120C3 04:A0B3: 30        .byte $30   ; 
- D 1 - I - 0x0120C4 04:A0B4: 04        .byte $04   ; 
- D 1 - I - 0x0120C5 04:A0B5: 00        .byte $00   ; 
- D 1 - I - 0x0120C6 04:A0B6: 01        .byte $01   ; 
- D 1 - I - 0x0120C7 04:A0B7: 7F        .byte $7F   ; 
- D 1 - I - 0x0120C8 04:A0B8: 00        .byte $00   ; 
- D 1 - I - 0x0120C9 04:A0B9: 10        .byte $10   ; 
- D 1 - I - 0x0120CA 04:A0BA: 00        .byte $00   ; 
- D 1 - I - 0x0120CB 04:A0BB: 02        .byte $02   ; 
- D 1 - I - 0x0120CC 04:A0BC: 03        .byte $03   ; 
- D 1 - I - 0x0120CD 04:A0BD: 7F        .byte $7F   ; 
- D 1 - I - 0x0120CE 04:A0BE: FF        .byte $FF   ; 

off_A0BF:
- D 1 - I - 0x0120CF 04:A0BF: 00        .byte $00   ; 
- D 1 - I - 0x0120D0 04:A0C0: 60        .byte $60   ; 
- D 1 - I - 0x0120D1 04:A0C1: 00        .byte $00   ; 
- - - - - - 0x0120D2 04:A0C2: 00        .byte $00   ; 
- - - - - - 0x0120D3 04:A0C3: 02        .byte $02   ; 
- - - - - - 0x0120D4 04:A0C4: 7F        .byte $7F   ; 
- D 1 - I - 0x0120D5 04:A0C5: 00        .byte $00   ; 
- D 1 - I - 0x0120D6 04:A0C6: 40        .byte $40   ; 
- D 1 - I - 0x0120D7 04:A0C7: 00        .byte $00   ; 
- D 1 - I - 0x0120D8 04:A0C8: 00        .byte $00   ; 
- D 1 - I - 0x0120D9 04:A0C9: 02        .byte $02   ; 
- D 1 - I - 0x0120DA 04:A0CA: 7F        .byte $7F   ; 
- D 1 - I - 0x0120DB 04:A0CB: 00        .byte $00   ; 
- D 1 - I - 0x0120DC 04:A0CC: 60        .byte $60   ; 
- D 1 - I - 0x0120DD 04:A0CD: 00        .byte $00   ; 
- - - - - - 0x0120DE 04:A0CE: 00        .byte $00   ; 
- - - - - - 0x0120DF 04:A0CF: 02        .byte $02   ; 
- - - - - - 0x0120E0 04:A0D0: 7F        .byte $7F   ; 
- D 1 - I - 0x0120E1 04:A0D1: 03        .byte $03   ; 
- D 1 - I - 0x0120E2 04:A0D2: 08        .byte $08   ; 
- D 1 - I - 0x0120E3 04:A0D3: 00        .byte $00   ; 
- - - - - - 0x0120E4 04:A0D4: 00        .byte $00   ; 
- - - - - - 0x0120E5 04:A0D5: 02        .byte $02   ; 
- - - - - - 0x0120E6 04:A0D6: 7F        .byte $7F   ; 
- D 1 - I - 0x0120E7 04:A0D7: FF        .byte $FF   ; 

off_A0D8:
- - - - - - 0x0120E8 04:A0D8: 02        .byte $02   ; 
- - - - - - 0x0120E9 04:A0D9: 20        .byte $20   ; 
- - - - - - 0x0120EA 04:A0DA: 02        .byte $02   ; 
- - - - - - 0x0120EB 04:A0DB: 00        .byte $00   ; 
- - - - - - 0x0120EC 04:A0DC: 02        .byte $02   ; 
- - - - - - 0x0120ED 04:A0DD: 7F        .byte $7F   ; 
- - - - - - 0x0120EE 04:A0DE: 00        .byte $00   ; 
- - - - - - 0x0120EF 04:A0DF: 40        .byte $40   ; 
- - - - - - 0x0120F0 04:A0E0: 00        .byte $00   ; 
- - - - - - 0x0120F1 04:A0E1: 00        .byte $00   ; 
- - - - - - 0x0120F2 04:A0E2: 02        .byte $02   ; 
- - - - - - 0x0120F3 04:A0E3: 7F        .byte $7F   ; 
- - - - - - 0x0120F4 04:A0E4: FF        .byte $FF   ; 

off_A0E5:
- D 1 - I - 0x0120F5 04:A0E5: 00        .byte $00   ; 
- D 1 - I - 0x0120F6 04:A0E6: 30        .byte $30   ; 
- D 1 - I - 0x0120F7 04:A0E7: 00        .byte $00   ; 
- - - - - - 0x0120F8 04:A0E8: 00        .byte $00   ; 
- - - - - - 0x0120F9 04:A0E9: 03        .byte $03   ; 
- - - - - - 0x0120FA 04:A0EA: 7F        .byte $7F   ; 
- D 1 - I - 0x0120FB 04:A0EB: 00        .byte $00   ; 
- D 1 - I - 0x0120FC 04:A0EC: 10        .byte $10   ; 
- D 1 - I - 0x0120FD 04:A0ED: 00        .byte $00   ; 
- D 1 - I - 0x0120FE 04:A0EE: 00        .byte $00   ; 
- D 1 - I - 0x0120FF 04:A0EF: 03        .byte $03   ; 
- D 1 - I - 0x012100 04:A0F0: 7F        .byte $7F   ; 
- D 1 - I - 0x012101 04:A0F1: 03        .byte $03   ; 
- D 1 - I - 0x012102 04:A0F2: 20        .byte $20   ; 
- D 1 - I - 0x012103 04:A0F3: 04        .byte $04   ; 
- - - - - - 0x012104 04:A0F4: 00        .byte $00   ; 
- - - - - - 0x012105 04:A0F5: 03        .byte $03   ; 
- - - - - - 0x012106 04:A0F6: 7F        .byte $7F   ; 
- D 1 - I - 0x012107 04:A0F7: 03        .byte $03   ; 
- D 1 - I - 0x012108 04:A0F8: 08        .byte $08   ; 
- D 1 - I - 0x012109 04:A0F9: 02        .byte $02   ; 
- - - - - - 0x01210A 04:A0FA: 00        .byte $00   ; 
- - - - - - 0x01210B 04:A0FB: 03        .byte $03   ; 
- - - - - - 0x01210C 04:A0FC: 7F        .byte $7F   ; 
- D 1 - I - 0x01210D 04:A0FD: FF        .byte $FF   ; 



_off005_A0FE_0D_Final_Confrontation_pt1:
; con_mission_Final_Confrontation_pt1
_off005_A0FE_0E_Final_Confrontation_pt2:
; con_mission_Final_Confrontation_pt2
- D 1 - I - 0x01210E 04:A0FE: 03 A1     .word ofs_A103_00
- D 1 - I - 0x012110 04:A100: 00        .byte $00   ; 
- D 1 - I - 0x012111 04:A101: 00        .byte $00   ; 
- D 1 - I - 0x012112 04:A102: 80        .byte $80   ; 



ofs_A103_00:
- D 1 - I - 0x012113 04:A103: FF        .byte $FF   ; 
- D 1 - I - 0x012114 04:A104: FF        .byte $FF   ; 
- D 1 - I - 0x012115 04:A105: 07 A1     .word off_A107



off_A107:
- D 1 - I - 0x012117 04:A107: 00        .byte $00   ; 
- D 1 - I - 0x012118 04:A108: 70        .byte $70   ; 
- D 1 - I - 0x012119 04:A109: 00        .byte $00   ; 
- D 1 - I - 0x01211A 04:A10A: 00        .byte $00   ; 
- D 1 - I - 0x01211B 04:A10B: 00        .byte $00   ; 
- D 1 - I - 0x01211C 04:A10C: 7F        .byte $7F   ; 
- D 1 - I - 0x01211D 04:A10D: 00        .byte $00   ; 
- D 1 - I - 0x01211E 04:A10E: 30        .byte $30   ; 
- D 1 - I - 0x01211F 04:A10F: 00        .byte $00   ; 
- - - - - - 0x012120 04:A110: 00        .byte $00   ; 
- - - - - - 0x012121 04:A111: 00        .byte $00   ; 
- - - - - - 0x012122 04:A112: 7F        .byte $7F   ; 
- D 1 - I - 0x012123 04:A113: FF        .byte $FF   ; 



tbl_A114:
- D 1 - - - 0x012124 04:A114: C8 02     .word $02C8 ; 00 
- D 1 - - - 0x012126 04:A116: 98 03     .word $0398 ; 01 
- D 1 - - - 0x012128 04:A118: 88 02     .word $0288 ; 02 
- - - - - - 0x01212A 04:A11A: 00 00     .word $0000 ; 03 
- - - - - - 0x01212C 04:A11C: 00 00     .word $0000 ; 04 
- D 1 - - - 0x01212E 04:A11E: E8 00     .word $00E8 ; 05 
- D 1 - - - 0x012130 04:A120: 35 01     .word $0135 ; 06 
- D 1 - - - 0x012132 04:A122: 78 01     .word $0178 ; 07 
- D 1 - - - 0x012134 04:A124: A8 01     .word $01A8 ; 08 
- D 1 - - - 0x012136 04:A126: 78 01     .word $0178 ; 09 
- D 1 - - - 0x012138 04:A128: A8 02     .word $02A8 ; 0A 
- D 1 - - - 0x01213A 04:A12A: D8 02     .word $02D8 ; 0B 
- D 1 - - - 0x01213C 04:A12C: E8 00     .word $00E8 ; 0C 
- D 1 - - - 0x01213E 04:A12E: 48 00     .word $0048 ; 0D 
- D 1 - - - 0x012140 04:A130: B8 00     .word $00B8 ; 0E 
- D 1 - - - 0x012142 04:A132: B8 02     .word $02B8 ; 0F 



tbl_A134:
- D 1 - - - 0x012144 04:A134: 54 A1     .word _off007_A154_00
- D 1 - - - 0x012146 04:A136: 5C A1     .word _off007_A15C_01
- D 1 - - - 0x012148 04:A138: 64 A1     .word _off007_A164_02
- - - - - - 0x01214A 04:A13A: 54 A1     .word _off007_A154_03
- - - - - - 0x01214C 04:A13C: 54 A1     .word _off007_A154_04
- D 1 - - - 0x01214E 04:A13E: 6C A1     .word _off007_A16C_05
- D 1 - - - 0x012150 04:A140: 74 A1     .word _off007_A174_06
- D 1 - - - 0x012152 04:A142: 7C A1     .word _off007_A17C_07
- D 1 - - - 0x012154 04:A144: 84 A1     .word _off007_A184_08
- D 1 - - - 0x012156 04:A146: 8C A1     .word _off007_A18C_09
- D 1 - - - 0x012158 04:A148: 94 A1     .word _off007_A194_0A
- D 1 - - - 0x01215A 04:A14A: 9C A1     .word _off007_A19C_0B
- D 1 - - - 0x01215C 04:A14C: A4 A1     .word _off007_A1A4_0C
- D 1 - - - 0x01215E 04:A14E: AC A1     .word _off007_A1AC_0D
- - - - - - 0x012160 04:A150: B4 A1     .word _off007_A1B4_0E
- D 1 - - - 0x012162 04:A152: BC A1     .word _off007_A1BC_0F



_off007_A154_00:
_off007_A154_03:
_off007_A154_04:
- D 1 - I - 0x012164 04:A154: 98        .byte $98   ; 
- D 1 - I - 0x012165 04:A155: 00        .byte $00   ; 
- D 1 - I - 0x012166 04:A156: 01        .byte con_0359_01   ; 0359 ???
- D 1 - I - 0x012167 04:A157: 80        .byte con_0361_00 + $80   ; 
- D 1 - I - 0x012168 04:A158: 03        .byte $03   ; 
- D 1 - I - 0x012169 04:A159: 00        .byte $00   ; 
- D 1 - I - 0x01216A 04:A15A: 00        .byte con_0359_00   ; 0359 ???
- D 1 - I - 0x01216B 04:A15B: 80        .byte con_0361_00 + $80   ; 



_off007_A15C_01:
- D 1 - I - 0x01216C 04:A15C: 58        .byte $58   ; 
- D 1 - I - 0x01216D 04:A15D: 01        .byte $01   ; 
- D 1 - I - 0x01216E 04:A15E: 04        .byte con_0359_04   ; 0359 ???
- D 1 - I - 0x01216F 04:A15F: 00        .byte con_0361_00   ; 
- - - - - - 0x012170 04:A160: B2        .byte $B2   ; 
- - - - - - 0x012171 04:A161: 00        .byte $00   ; 
- - - - - - 0x012172 04:A162: 02        .byte con_0359_02   ; 0359 ???
- - - - - - 0x012173 04:A163: 80        .byte con_0361_00 + $80   ; 



_off007_A164_02:
- D 1 - I - 0x012174 04:A164: A8        .byte $A8   ; 
- D 1 - I - 0x012175 04:A165: 01        .byte $01   ; 
- D 1 - I - 0x012176 04:A166: 05        .byte con_0359_05   ; 0359 ???
- D 1 - I - 0x012177 04:A167: 80        .byte con_0361_00 + $80   ; 
- - - - - - 0x012178 04:A168: 62        .byte $62   ; 
- - - - - - 0x012179 04:A169: 01        .byte $01   ; 
- - - - - - 0x01217A 04:A16A: 04        .byte con_0359_04   ; 0359 ???
- - - - - - 0x01217B 04:A16B: 00        .byte con_0361_00   ; 



_off007_A16C_05:
- - - - - - 0x01217C 04:A16C: 28        .byte $28   ; 
- - - - - - 0x01217D 04:A16D: 01        .byte $01   ; 
- - - - - - 0x01217E 04:A16E: 01        .byte con_0359_01   ; 0359 ???
- - - - - - 0x01217F 04:A16F: 00        .byte con_0361_00   ; 
- D 1 - I - 0x012180 04:A170: 52        .byte $52   ; 
- D 1 - I - 0x012181 04:A171: 00        .byte $00   ; 
- D 1 - I - 0x012182 04:A172: 03        .byte con_0359_03   ; 0359 ???
- D 1 - I - 0x012183 04:A173: 00        .byte con_0361_00   ; 



_off007_A174_06:
- D 1 - I - 0x012184 04:A174: 98        .byte $98   ; 
- D 1 - I - 0x012185 04:A175: 00        .byte $00   ; 
- D 1 - I - 0x012186 04:A176: 01        .byte con_0359_01   ; 0359 ???
- D 1 - I - 0x012187 04:A177: 00        .byte con_0361_00   ; 
- D 1 - I - 0x012188 04:A178: 32        .byte $32   ; 
- D 1 - I - 0x012189 04:A179: 00        .byte $00   ; 
- D 1 - I - 0x01218A 04:A17A: 02        .byte con_0359_02   ; 0359 ???
- D 1 - I - 0x01218B 04:A17B: 00        .byte con_0361_00   ; 



_off007_A17C_07:
- D 1 - I - 0x01218C 04:A17C: 98        .byte $98   ; 
- D 1 - I - 0x01218D 04:A17D: 00        .byte $00   ; 
- D 1 - I - 0x01218E 04:A17E: 05        .byte con_0359_05   ; 0359 ???
- D 1 - I - 0x01218F 04:A17F: 00        .byte con_0361_00   ; 
- D 1 - I - 0x012190 04:A180: 52        .byte $52   ; 
- D 1 - I - 0x012191 04:A181: 00        .byte $00   ; 
- D 1 - I - 0x012192 04:A182: 04        .byte con_0359_04   ; 0359 ???
- D 1 - I - 0x012193 04:A183: 00        .byte con_0361_00   ; 



_off007_A184_08:
- D 1 - I - 0x012194 04:A184: 28        .byte $28   ; 
- D 1 - I - 0x012195 04:A185: 01        .byte $01   ; 
- D 1 - I - 0x012196 04:A186: 06        .byte con_0359_06   ; 0359 ???
- D 1 - I - 0x012197 04:A187: 00        .byte con_0361_00   ; 
- - - - - - 0x012198 04:A188: A2        .byte $A2   ; 
- - - - - - 0x012199 04:A189: 00        .byte $00   ; 
- - - - - - 0x01219A 04:A18A: 05        .byte con_0359_05   ; 0359 ???
- - - - - - 0x01219B 04:A18B: 00        .byte con_0361_00   ; 



_off007_A18C_09:
- D 1 - I - 0x01219C 04:A18C: 78        .byte $78   ; 
- D 1 - I - 0x01219D 04:A18D: 01        .byte $01   ; 
- D 1 - I - 0x01219E 04:A18E: 07        .byte con_0359_07   ; 0359 ???
- D 1 - I - 0x01219F 04:A18F: 00        .byte con_0361_00   ; 
- D 1 - I - 0x0121A0 04:A190: 32        .byte $32   ; 
- D 1 - I - 0x0121A1 04:A191: 01        .byte $01   ; 
- D 1 - I - 0x0121A2 04:A192: 06        .byte con_0359_06   ; 0359 ???
- D 1 - I - 0x0121A3 04:A193: 00        .byte con_0361_00   ; 



_off007_A194_0A:
- D 1 - I - 0x0121A4 04:A194: 08        .byte $08   ; 
- D 1 - I - 0x0121A5 04:A195: 01        .byte $01   ; 
- D 1 - I - 0x0121A6 04:A196: 09        .byte con_0359_09   ; 0359 ???
- D 1 - I - 0x0121A7 04:A197: 00        .byte con_0361_00   ; 
- D 1 - I - 0x0121A8 04:A198: 5A        .byte $5A   ; 
- D 1 - I - 0x0121A9 04:A199: 00        .byte $00   ; 
- D 1 - I - 0x0121AA 04:A19A: 08        .byte con_0359_08   ; 0359 ???
- D 1 - I - 0x0121AB 04:A19B: 80        .byte con_0361_00 + $80   ; 



_off007_A19C_0B:
- D 1 - I - 0x0121AC 04:A19C: 08        .byte $08   ; 
- D 1 - I - 0x0121AD 04:A19D: 01        .byte $01   ; 
- - - - - - 0x0121AE 04:A19E: 09        .byte con_0359_09   ; 0359 ???
- - - - - - 0x0121AF 04:A19F: 00        .byte con_0361_00   ; 
- D 1 - I - 0x0121B0 04:A1A0: 5A        .byte $5A   ; 
- D 1 - I - 0x0121B1 04:A1A1: 00        .byte $00   ; 
- D 1 - I - 0x0121B2 04:A1A2: 08        .byte con_0359_08   ; 0359 ???
- D 1 - I - 0x0121B3 04:A1A3: 80        .byte con_0361_00 + $80   ; 



_off007_A1A4_0C:
- D 1 - I - 0x0121B4 04:A1A4: B0        .byte $B0   ; 
- D 1 - I - 0x0121B5 04:A1A5: 00        .byte $00   ; 
- D 1 - I - 0x0121B6 04:A1A6: 06        .byte con_0359_06   ; 0359 ???
- D 1 - I - 0x0121B7 04:A1A7: 00        .byte con_0361_00   ; 
- - - - - - 0x0121B8 04:A1A8: 42        .byte $42   ; 
- - - - - - 0x0121B9 04:A1A9: 00        .byte $00   ; 
- - - - - - 0x0121BA 04:A1AA: 05        .byte con_0359_05   ; 0359 ???
- - - - - - 0x0121BB 04:A1AB: 00        .byte con_0361_00   ; 



_off007_A1AC_0D:
- D 1 - I - 0x0121BC 04:A1AC: 78        .byte $78   ; 
- D 1 - I - 0x0121BD 04:A1AD: 00        .byte $00   ; 
- D 1 - I - 0x0121BE 04:A1AE: 02        .byte con_0359_02   ; 0359 ???
- D 1 - I - 0x0121BF 04:A1AF: 80        .byte con_0361_00 + $80   ; 
- - - - - - 0x0121C0 04:A1B0: 42        .byte $42   ; 
- - - - - - 0x0121C1 04:A1B1: 00        .byte $00   ; 
- - - - - - 0x0121C2 04:A1B2: 00        .byte con_0359_00   ; 0359 ???
- - - - - - 0x0121C3 04:A1B3: 80        .byte con_0361_00 + $80   ; 



_off007_A1B4_0E:
- - - - - - 0x0121C4 04:A1B4: 78        .byte $78   ; 
- - - - - - 0x0121C5 04:A1B5: 00        .byte $00   ; 
- - - - - - 0x0121C6 04:A1B6: 02        .byte con_0359_02   ; 0359 ???
- - - - - - 0x0121C7 04:A1B7: 80        .byte con_0361_00 + $80   ; 
- - - - - - 0x0121C8 04:A1B8: 42        .byte $42   ; 
- - - - - - 0x0121C9 04:A1B9: 00        .byte $00   ; 
- - - - - - 0x0121CA 04:A1BA: 00        .byte con_0359_00   ; 0359 ???
- - - - - - 0x0121CB 04:A1BB: 80        .byte con_0361_00 + $80   ; 



_off007_A1BC_0F:
- D 1 - I - 0x0121CC 04:A1BC: F8        .byte $F8   ; 
- D 1 - I - 0x0121CD 04:A1BD: 00        .byte $00   ; 
- D 1 - I - 0x0121CE 04:A1BE: 00        .byte con_0359_00   ; 0359 ???
- D 1 - I - 0x0121CF 04:A1BF: 80        .byte con_0361_00 + $80   ; 
- D 1 - I - 0x0121D0 04:A1C0: 42        .byte $42   ; 
- D 1 - I - 0x0121D1 04:A1C1: 00        .byte $00   ; 
- D 1 - I - 0x0121D2 04:A1C2: 01        .byte con_0359_01   ; 0359 ???
- D 1 - I - 0x0121D3 04:A1C3: 80        .byte con_0361_00 + $80   ; 


; bzk garbage
- - - - - - 0x0121D4 04:A1C4: 00        .byte $00, $00, $00, $00   ; 



loc_A1C8:
C D 1 - - - 0x0121D8 04:A1C8: 8A        TXA
C - - - - - 0x0121D9 04:A1C9: 48        PHA
C - - - - - 0x0121DA 04:A1CA: 98        TYA
C - - - - - 0x0121DB 04:A1CB: 48        PHA
C - - - - - 0x0121DC 04:A1CC: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0121DF 04:A1CF: C9 0D     CMP #con_mission_Final_Confrontation_pt1
C - - - - - 0x0121E1 04:A1D1: F0 55     BEQ bra_A228
C - - - - - 0x0121E3 04:A1D3: 20 2D A2  JSR sub_A22D
C - - - - - 0x0121E6 04:A1D6: B0 50     BCS bra_A228
C - - - - - 0x0121E8 04:A1D8: 20 78 A2  JSR sub_A278
C - - - - - 0x0121EB 04:A1DB: A2 00     LDX #$00
C - - - - - 0x0121ED 04:A1DD: A9 02     LDA #$02
C - - - - - 0x0121EF 04:A1DF: 85 3B     STA ram_obj_index
bra_A1E1_loop:
C - - - - - 0x0121F1 04:A1E1: B5 3E     LDA ram_003C_obj_flags + $02,X
C - - - - - 0x0121F3 04:A1E3: 10 3A     BPL bra_A21F    ; if not con_003C_flag_exist
C - - - - - 0x0121F5 04:A1E5: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x0121F7 04:A1E7: C9 1E     CMP #con_obj_symbol_II
C - - - - - 0x0121F9 04:A1E9: F0 34     BEQ bra_A21F
C - - - - - 0x0121FB 04:A1EB: 20 20 80  JSR sub_8020_collision_with_background
C - - - - - 0x0121FE 04:A1EE: 20 63 A4  JSR sub_A463
C - - - - - 0x012201 04:A1F1: B0 2C     BCS bra_A21F
C - - - - - 0x012203 04:A1F3: B5 45     LDA ram_state + $02,X
C - - - - - 0x012205 04:A1F5: 10 28     BPL bra_A21F
C - - - - - 0x012207 04:A1F7: 29 7F     AND #$7F
C - - - - - 0x012209 04:A1F9: C9 12     CMP #con_state_land_after_jump
C - - - - - 0x01220B 04:A1FB: F0 0A     BEQ bra_A207
C - - - - - 0x01220D 04:A1FD: C9 5A     CMP #con_state_5A
C - - - - - 0x01220F 04:A1FF: F0 06     BEQ bra_A207
C - - - - - 0x012211 04:A201: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x012213 04:A203: 29 43     AND #con_004A_flag_stunned + con_004A_flag_01 + con_004A_flag_hair_grabbed
C - - - - - 0x012215 04:A205: F0 12     BEQ bra_A219
bra_A207:
C - - - - - 0x012217 04:A207: A9 00     LDA #$00    ; con_006C_00
C - - - - - 0x012219 04:A209: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x01221B 04:A20B: 9D 7A 04  STA ram_047A_enemy,X
C - - - - - 0x01221E 04:A20E: 9D 60 04  STA ram_0460_enemy,X
C - - - - - 0x012221 04:A211: 9D 64 04  STA ram_0464_obj,X
C - - - - - 0x012224 04:A214: 8D 90 03  STA ram_0390
C - - - - - 0x012227 04:A217: F0 06     BEQ bra_A21F    ; jmp
bra_A219:
C - - - - - 0x012229 04:A219: 20 CB A5  JSR sub_A5CB_calculate_enemy_ai_template
C - - - - - 0x01222C 04:A21C: 20 2F A9  JSR sub_A92F_enemy_ai_handler
bra_A21F:
C - - - - - 0x01222F 04:A21F: E6 3B     INC ram_obj_index
C - - - - - 0x012231 04:A221: E8        INX
C - - - - - 0x012232 04:A222: A5 3B     LDA ram_obj_index
C - - - - - 0x012234 04:A224: C9 04     CMP #$04
C - - - - - 0x012236 04:A226: 90 B9     BCC bra_A1E1_loop
bra_A228:
C - - - - - 0x012238 04:A228: 68        PLA
C - - - - - 0x012239 04:A229: A8        TAY
C - - - - - 0x01223A 04:A22A: 68        PLA
C - - - - - 0x01223B 04:A22B: AA        TAX
C - - - - - 0x01223C 04:A22C: 60        RTS



sub_A22D:
C - - - - - 0x01223D 04:A22D: A9 00     LDA #$00
C - - - - - 0x01223F 04:A22F: 8D 52 04  STA ram_0452
C - - - - - 0x012242 04:A232: A8        TAY ; 00
C - - - - - 0x012243 04:A233: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 003C
C - - - - - 0x012246 04:A236: 10 08     BPL bra_A240    ; if not con_003C_flag_exist
C - - - - - 0x012248 04:A238: AD 52 04  LDA ram_0452
C - - - - - 0x01224B 04:A23B: 09 01     ORA #$01
C - - - - - 0x01224D 04:A23D: 8D 52 04  STA ram_0452
bra_A240:
C - - - - - 0x012250 04:A240: C8        INY ; 01
C - - - - - 0x012251 04:A241: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 003D
C - - - - - 0x012254 04:A244: 10 08     BPL bra_A24E    ; if not con_003C_flag_exist
C - - - - - 0x012256 04:A246: AD 52 04  LDA ram_0452
C - - - - - 0x012259 04:A249: 09 02     ORA #$02
C - - - - - 0x01225B 04:A24B: 8D 52 04  STA ram_0452
bra_A24E:
C - - - - - 0x01225E 04:A24E: A9 00     LDA #$00
C - - - - - 0x012260 04:A250: 8D 53 04  STA ram_0453
C - - - - - 0x012263 04:A253: C8        INY ; 02
C - - - - - 0x012264 04:A254: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 003E
C - - - - - 0x012267 04:A257: 10 08     BPL bra_A261    ; if not con_003C_flag_exist
C - - - - - 0x012269 04:A259: AD 53 04  LDA ram_0453
C - - - - - 0x01226C 04:A25C: 09 01     ORA #$01
C - - - - - 0x01226E 04:A25E: 8D 53 04  STA ram_0453
bra_A261:
C - - - - - 0x012271 04:A261: C8        INY ; 03
C - - - - - 0x012272 04:A262: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 003F
C - - - - - 0x012275 04:A265: 10 08     BPL bra_A26F    ; if not con_003C_flag_exist
C - - - - - 0x012277 04:A267: AD 53 04  LDA ram_0453
C - - - - - 0x01227A 04:A26A: 09 02     ORA #$02
C - - - - - 0x01227C 04:A26C: 8D 53 04  STA ram_0453
bra_A26F:
C - - - - - 0x01227F 04:A26F: AD 53 04  LDA ram_0453
C - - - - - 0x012282 04:A272: F0 02     BEQ bra_A276
C - - - - - 0x012284 04:A274: 18        CLC
C - - - - - 0x012285 04:A275: 60        RTS
bra_A276:
C - - - - - 0x012286 04:A276: 38        SEC
C - - - - - 0x012287 04:A277: 60        RTS



sub_A278:
C - - - - - 0x012288 04:A278: A0 00     LDY #$00
C - - - - - 0x01228A 04:A27A: AD 52 04  LDA ram_0452
C - - - - - 0x01228D 04:A27D: F0 1D     BEQ bra_A29C_RTS
C - - - - - 0x01228F 04:A27F: C9 03     CMP #$03
C - - - - - 0x012291 04:A281: D0 03     BNE bra_A286
C - - - - - 0x012293 04:A283: 4C E5 A2  JMP loc_A2E5
bra_A286:
C - - - - - 0x012296 04:A286: C9 02     CMP #$02
C - - - - - 0x012298 04:A288: D0 01     BNE bra_A28B
C - - - - - 0x01229A 04:A28A: C8        INY
bra_A28B:
C - - - - - 0x01229B 04:A28B: A2 00     LDX #$00
C - - - - - 0x01229D 04:A28D: AD 53 04  LDA ram_0453
C - - - - - 0x0122A0 04:A290: C9 03     CMP #$03
C - - - - - 0x0122A2 04:A292: F0 09     BEQ bra_A29D
C - - - - - 0x0122A4 04:A294: C9 02     CMP #$02
C - - - - - 0x0122A6 04:A296: D0 01     BNE bra_A299
C - - - - - 0x0122A8 04:A298: E8        INX
bra_A299:
; bzk optimize, JMP
C - - - - - 0x0122A9 04:A299: 20 FB A3  JSR sub_A3FB
bra_A29C_RTS:
C - - - - - 0x0122AC 04:A29C: 60        RTS
bra_A29D:
bra_A29D_loop:
C - - - - - 0x0122AD 04:A29D: 20 FB A3  JSR sub_A3FB
C - - - - - 0x0122B0 04:A2A0: E8        INX
C - - - - - 0x0122B1 04:A2A1: E0 02     CPX #$02
C - - - - - 0x0122B3 04:A2A3: 90 F8     BCC bra_A29D_loop
C - - - - - 0x0122B5 04:A2A5: A2 00     LDX #$00
C - - - - - 0x0122B7 04:A2A7: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0122BA 04:A2AA: 18        CLC
C - - - - - 0x0122BB 04:A2AB: 7D 5A 04  ADC ram_045A_enemy,X
C - - - - - 0x0122BE 04:A2AE: 85 29     STA ram_0029_temp
C - - - - - 0x0122C0 04:A2B0: A9 00     LDA #$00
C - - - - - 0x0122C2 04:A2B2: 69 00     ADC #$00
C - - - - - 0x0122C4 04:A2B4: 85 2A     STA ram_002A_temp
C - - - - - 0x0122C6 04:A2B6: E8        INX
C - - - - - 0x0122C7 04:A2B7: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0122CA 04:A2BA: 18        CLC
C - - - - - 0x0122CB 04:A2BB: 7D 5A 04  ADC ram_045A_enemy,X
C - - - - - 0x0122CE 04:A2BE: 85 2B     STA ram_002B_temp
C - - - - - 0x0122D0 04:A2C0: A9 00     LDA #$00
C - - - - - 0x0122D2 04:A2C2: 69 00     ADC #$00
C - - - - - 0x0122D4 04:A2C4: 85 2C     STA ram_002C_temp
C - - - - - 0x0122D6 04:A2C6: A0 00     LDY #$00
C - - - - - 0x0122D8 04:A2C8: A2 00     LDX #$00
C - - - - - 0x0122DA 04:A2CA: A5 29     LDA ram_0029_temp
C - - - - - 0x0122DC 04:A2CC: 38        SEC
C - - - - - 0x0122DD 04:A2CD: E5 2B     SBC ram_002B_temp
C - - - - - 0x0122DF 04:A2CF: 85 2D     STA ram_002D_temp
C - - - - - 0x0122E1 04:A2D1: A5 2A     LDA ram_002A_temp
C - - - - - 0x0122E3 04:A2D3: E5 2C     SBC ram_002C_temp
C - - - - - 0x0122E5 04:A2D5: 85 2E     STA ram_002E_temp
C - - - - - 0x0122E7 04:A2D7: 90 01     BCC bra_A2DA
C - - - - - 0x0122E9 04:A2D9: C8        INY
bra_A2DA:
C - - - - - 0x0122EA 04:A2DA: 98        TYA
C - - - - - 0x0122EB 04:A2DB: 9D 5E 04  STA ram_045E_enemy,X
C - - - - - 0x0122EE 04:A2DE: 49 01     EOR #$01
C - - - - - 0x0122F0 04:A2E0: E8        INX
C - - - - - 0x0122F1 04:A2E1: 9D 5E 04  STA ram_045E_enemy,X
C - - - - - 0x0122F4 04:A2E4: 60        RTS



loc_A2E5:
C D 1 - - - 0x0122F5 04:A2E5: A2 00     LDX #$00
C - - - - - 0x0122F7 04:A2E7: AD 53 04  LDA ram_0453
C - - - - - 0x0122FA 04:A2EA: C9 03     CMP #$03
C - - - - - 0x0122FC 04:A2EC: F0 05     BEQ bra_A2F3
C - - - - - 0x0122FE 04:A2EE: C9 02     CMP #$02
C - - - - - 0x012300 04:A2F0: D0 01     BNE bra_A2F3
C - - - - - 0x012302 04:A2F2: E8        INX
bra_A2F3:
C - - - - - 0x012303 04:A2F3: A0 00     LDY #$00
C - - - - - 0x012305 04:A2F5: 20 72 B2  JSR sub_B272
C - - - - - 0x012308 04:A2F8: A5 1A     LDA ram_001A_t12
C - - - - - 0x01230A 04:A2FA: 85 1B     STA ram_001B_temp
C - - - - - 0x01230C 04:A2FC: A5 29     LDA ram_0029_temp
C - - - - - 0x01230E 04:A2FE: 85 2F     STA ram_002F_temp
C - - - - - 0x012310 04:A300: A5 2B     LDA ram_002B_temp
C - - - - - 0x012312 04:A302: 8D A9 03  STA ram_03A9
C - - - - - 0x012315 04:A305: A5 2D     LDA ram_002D_temp
C - - - - - 0x012317 04:A307: 8D AB 03  STA ram_03AB
C - - - - - 0x01231A 04:A30A: C8        INY
C - - - - - 0x01231B 04:A30B: 20 72 B2  JSR sub_B272
C - - - - - 0x01231E 04:A30E: A5 1A     LDA ram_001A_t12
C - - - - - 0x012320 04:A310: 85 1C     STA ram_001C_temp
C - - - - - 0x012322 04:A312: A5 29     LDA ram_0029_temp
C - - - - - 0x012324 04:A314: 8D AD 03  STA ram_03AD
C - - - - - 0x012327 04:A317: A5 2B     LDA ram_002B_temp
C - - - - - 0x012329 04:A319: 8D AF 03  STA ram_03AF
C - - - - - 0x01232C 04:A31C: A5 2D     LDA ram_002D_temp
C - - - - - 0x01232E 04:A31E: 8D B1 03  STA ram_03B1
C - - - - - 0x012331 04:A321: A5 2F     LDA ram_002F_temp
C - - - - - 0x012333 04:A323: 18        CLC
C - - - - - 0x012334 04:A324: 6D A9 03  ADC ram_03A9
C - - - - - 0x012337 04:A327: 85 29     STA ram_0029_temp
C - - - - - 0x012339 04:A329: A9 00     LDA #$00
C - - - - - 0x01233B 04:A32B: 69 00     ADC #$00
C - - - - - 0x01233D 04:A32D: 85 2A     STA ram_002A_temp
C - - - - - 0x01233F 04:A32F: A5 29     LDA ram_0029_temp
C - - - - - 0x012341 04:A331: 18        CLC
C - - - - - 0x012342 04:A332: 6D AB 03  ADC ram_03AB
C - - - - - 0x012345 04:A335: 85 29     STA ram_0029_temp
C - - - - - 0x012347 04:A337: A5 2A     LDA ram_002A_temp
C - - - - - 0x012349 04:A339: 69 00     ADC #$00
C - - - - - 0x01234B 04:A33B: 85 2A     STA ram_002A_temp
C - - - - - 0x01234D 04:A33D: AD AD 03  LDA ram_03AD
C - - - - - 0x012350 04:A340: 18        CLC
C - - - - - 0x012351 04:A341: 6D AF 03  ADC ram_03AF
C - - - - - 0x012354 04:A344: 85 2B     STA ram_002B_temp
C - - - - - 0x012356 04:A346: A9 00     LDA #$00
C - - - - - 0x012358 04:A348: 69 00     ADC #$00
C - - - - - 0x01235A 04:A34A: 85 2C     STA ram_002C_temp
C - - - - - 0x01235C 04:A34C: A5 2B     LDA ram_002B_temp
C - - - - - 0x01235E 04:A34E: 18        CLC
C - - - - - 0x01235F 04:A34F: 6D B1 03  ADC ram_03B1
C - - - - - 0x012362 04:A352: 85 2B     STA ram_002B_temp
C - - - - - 0x012364 04:A354: A5 2C     LDA ram_002C_temp
C - - - - - 0x012366 04:A356: 69 00     ADC #$00
C - - - - - 0x012368 04:A358: 85 2C     STA ram_002C_temp
C - - - - - 0x01236A 04:A35A: A0 00     LDY #$00
C - - - - - 0x01236C 04:A35C: A5 29     LDA ram_0029_temp
C - - - - - 0x01236E 04:A35E: 38        SEC
C - - - - - 0x01236F 04:A35F: E5 2B     SBC ram_002B_temp
C - - - - - 0x012371 04:A361: 85 2D     STA ram_002D_temp
C - - - - - 0x012373 04:A363: A5 2A     LDA ram_002A_temp
C - - - - - 0x012375 04:A365: E5 2C     SBC ram_002C_temp
C - - - - - 0x012377 04:A367: 85 2E     STA ram_002E_temp
C - - - - - 0x012379 04:A369: 90 01     BCC bra_A36C
C - - - - - 0x01237B 04:A36B: C8        INY
bra_A36C:
C - - - - - 0x01237C 04:A36C: AD 53 04  LDA ram_0453
C - - - - - 0x01237F 04:A36F: C9 03     CMP #$03
C - - - - - 0x012381 04:A371: F0 3F     BEQ bra_A3B2
C - - - - - 0x012383 04:A373: 20 1C A4  JSR sub_A41C
C - - - - - 0x012386 04:A376: 98        TYA
C - - - - - 0x012387 04:A377: D0 1C     BNE bra_A395
C - - - - - 0x012389 04:A379: 9D 56 04  STA ram_0454_obj_aim + $02,X
C - - - - - 0x01238C 04:A37C: A5 2F     LDA ram_002F_temp
C - - - - - 0x01238E 04:A37E: 9D 58 04  STA ram_0458_enemy,X
C - - - - - 0x012391 04:A381: AD A9 03  LDA ram_03A9
C - - - - - 0x012394 04:A384: 9D 5A 04  STA ram_045A_enemy,X
C - - - - - 0x012397 04:A387: AD AB 03  LDA ram_03AB
C - - - - - 0x01239A 04:A38A: 9D 5C 04  STA ram_045C_enemy,X
C - - - - - 0x01239D 04:A38D: A5 1B     LDA ram_001B_temp
C - - - - - 0x01239F 04:A38F: 9D 6C 04  STA ram_046A_obj + $02,X
C - - - - - 0x0123A2 04:A392: 4C AF A3  JMP loc_A3AF
bra_A395:
C - - - - - 0x0123A5 04:A395: 9D 56 04  STA ram_0454_obj_aim + $02,X
C - - - - - 0x0123A8 04:A398: AD AD 03  LDA ram_03AD
C - - - - - 0x0123AB 04:A39B: 9D 58 04  STA ram_0458_enemy,X
C - - - - - 0x0123AE 04:A39E: AD AF 03  LDA ram_03AF
C - - - - - 0x0123B1 04:A3A1: 9D 5A 04  STA ram_045A_enemy,X
C - - - - - 0x0123B4 04:A3A4: AD B1 03  LDA ram_03B1
C - - - - - 0x0123B7 04:A3A7: 9D 5C 04  STA ram_045C_enemy,X
C - - - - - 0x0123BA 04:A3AA: A5 1C     LDA ram_001C_temp
C - - - - - 0x0123BC 04:A3AC: 9D 6C 04  STA ram_046A_obj + $02,X
loc_A3AF:
C D 1 - - - 0x0123BF 04:A3AF: 4C 16 A4  JMP loc_A416
bra_A3B2:
C - - - - - 0x0123C2 04:A3B2: 20 1C A4  JSR sub_A41C
C - - - - - 0x0123C5 04:A3B5: 98        TYA
C - - - - - 0x0123C6 04:A3B6: 9D 56 04  STA ram_0454_obj_aim + $02,X
C - - - - - 0x0123C9 04:A3B9: D0 19     BNE bra_A3D4
C - - - - - 0x0123CB 04:A3BB: A5 2F     LDA ram_002F_temp
C - - - - - 0x0123CD 04:A3BD: 9D 58 04  STA ram_0458_enemy,X
C - - - - - 0x0123D0 04:A3C0: AD A9 03  LDA ram_03A9
C - - - - - 0x0123D3 04:A3C3: 9D 5A 04  STA ram_045A_enemy,X
C - - - - - 0x0123D6 04:A3C6: AD AB 03  LDA ram_03AB
C - - - - - 0x0123D9 04:A3C9: 9D 5C 04  STA ram_045C_enemy,X
C - - - - - 0x0123DC 04:A3CC: A5 1B     LDA ram_001B_temp
C - - - - - 0x0123DE 04:A3CE: 9D 6C 04  STA ram_046A_obj + $02,X
C - - - - - 0x0123E1 04:A3D1: 4C EB A3  JMP loc_A3EB
bra_A3D4:
C - - - - - 0x0123E4 04:A3D4: AD AD 03  LDA ram_03AD
C - - - - - 0x0123E7 04:A3D7: 9D 58 04  STA ram_0458_enemy,X
C - - - - - 0x0123EA 04:A3DA: AD AF 03  LDA ram_03AF
C - - - - - 0x0123ED 04:A3DD: 9D 5A 04  STA ram_045A_enemy,X
C - - - - - 0x0123F0 04:A3E0: AD B1 03  LDA ram_03B1
C - - - - - 0x0123F3 04:A3E3: 9D 5C 04  STA ram_045C_enemy,X
C - - - - - 0x0123F6 04:A3E6: A5 1C     LDA ram_001C_temp
C - - - - - 0x0123F8 04:A3E8: 9D 6C 04  STA ram_046A_obj + $02,X
loc_A3EB:
C D 1 - - - 0x0123FB 04:A3EB: 8A        TXA
C - - - - - 0x0123FC 04:A3EC: 9D 5E 04  STA ram_045E_enemy,X
C - - - - - 0x0123FF 04:A3EF: E8        INX
C - - - - - 0x012400 04:A3F0: 98        TYA
C - - - - - 0x012401 04:A3F1: 49 01     EOR #$01
C - - - - - 0x012403 04:A3F3: 9D 56 04  STA ram_0454_obj_aim + $02,X
C - - - - - 0x012406 04:A3F6: A8        TAY
; bzk optimize, JMP
C - - - - - 0x012407 04:A3F7: 20 FF A3  JSR sub_A3FF
C - - - - - 0x01240A 04:A3FA: 60        RTS



sub_A3FB:
C - - - - - 0x01240B 04:A3FB: 98        TYA
C - - - - - 0x01240C 04:A3FC: 9D 56 04  STA ram_0454_obj_aim + $02,X
sub_A3FF:
C - - - - - 0x01240F 04:A3FF: 20 72 B2  JSR sub_B272
C - - - - - 0x012412 04:A402: A5 29     LDA ram_0029_temp
C - - - - - 0x012414 04:A404: 9D 58 04  STA ram_0458_enemy,X
C - - - - - 0x012417 04:A407: A5 2B     LDA ram_002B_temp
C - - - - - 0x012419 04:A409: 9D 5A 04  STA ram_045A_enemy,X
C - - - - - 0x01241C 04:A40C: A5 2D     LDA ram_002D_temp
C - - - - - 0x01241E 04:A40E: 9D 5C 04  STA ram_045C_enemy,X
C - - - - - 0x012421 04:A411: A5 1A     LDA ram_001A_t12
C - - - - - 0x012423 04:A413: 9D 6C 04  STA ram_046A_obj + $02,X
loc_A416:
C D 1 - - - 0x012426 04:A416: A9 00     LDA #$00
C - - - - - 0x012428 04:A418: 9D 5E 04  STA ram_045E_enemy,X
C - - - - - 0x01242B 04:A41B: 60        RTS



sub_A41C:
C - - - - - 0x01242C 04:A41C: AD 90 03  LDA ram_0390
C - - - - - 0x01242F 04:A41F: F0 1E     BEQ bra_A43F
C - - - - - 0x012431 04:A421: C9 01     CMP #$01
C - - - - - 0x012433 04:A423: D0 24     BNE bra_A449
C - - - - - 0x012435 04:A425: AD 53 04  LDA ram_0453
C - - - - - 0x012438 04:A428: C9 03     CMP #$03
C - - - - - 0x01243A 04:A42A: F0 1D     BEQ bra_A449
C - - - - - 0x01243C 04:A42C: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x01243F 04:A42F: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x012442 04:A432: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x012444 04:A434: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x012446 04:A436: D0 27     BNE bra_A45F
C - - - - - 0x012448 04:A438: 98        TYA
C - - - - - 0x012449 04:A439: 49 01     EOR #$01
C - - - - - 0x01244B 04:A43B: A8        TAY
C - - - - - 0x01244C 04:A43C: 4C 5F A4  JMP loc_A45F
bra_A43F:
C - - - - - 0x01244F 04:A43F: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x012452 04:A442: 29 C0     AND #$C0
C - - - - - 0x012454 04:A444: F0 19     BEQ bra_A45F
C - - - - - 0x012456 04:A446: EE 90 03  INC ram_0390
bra_A449:
C - - - - - 0x012459 04:A449: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x01245C 04:A44C: EE 8F 03  INC ram_038F_counter
C - - - - - 0x01245F 04:A44F: AD 8F 03  LDA ram_038F_counter
C - - - - - 0x012462 04:A452: C9 30     CMP #$30
C - - - - - 0x012464 04:A454: 90 0C     BCC bra_A462_RTS
C - - - - - 0x012466 04:A456: A9 00     LDA #$00
C - - - - - 0x012468 04:A458: 8D 90 03  STA ram_0390
C - - - - - 0x01246B 04:A45B: 8D 8F 03  STA ram_038F_counter
C - - - - - 0x01246E 04:A45E: 60        RTS
bra_A45F:
loc_A45F:
C D 1 - - - 0x01246F 04:A45F: EE 90 03  INC ram_0390
bra_A462_RTS:
C - - - - - 0x012472 04:A462: 60        RTS



sub_A463:
C - - - - - 0x012473 04:A463: A0 00     LDY #$00
C - - - - - 0x012475 04:A465: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x012477 04:A467: 10 07     BPL bra_A470
C - - - - - 0x012479 04:A469: 98        TYA
C - - - - - 0x01247A 04:A46A: 9D A1 03  STA ram_03A1_obj,X
C - - - - - 0x01247D 04:A46D: 4C 40 A5  JMP loc_A540
bra_A470:
C - - - - - 0x012480 04:A470: 98        TYA
C - - - - - 0x012481 04:A471: 9D 60 04  STA ram_0460_enemy,X
C - - - - - 0x012484 04:A474: 9D 7A 04  STA ram_047A_enemy,X
C - - - - - 0x012487 04:A477: 9D 89 03  STA ram_0389_enemy,X
C - - - - - 0x01248A 04:A47A: 20 80 A5  JSR sub_A580
C - - - - - 0x01248D 04:A47D: 8A        TXA
C - - - - - 0x01248E 04:A47E: 48        PHA
C - - - - - 0x01248F 04:A47F: A6 3B     LDX ram_obj_index
C - - - - - 0x012491 04:A481: 20 CF 85  JSR sub_85CF
C - - - - - 0x012494 04:A484: 68        PLA
C - - - - - 0x012495 04:A485: AA        TAX
C - - - - - 0x012496 04:A486: A5 23     LDA ram_0023
C - - - - - 0x012498 04:A488: 9D 63 03  STA ram_0361_obj + $02,X
C - - - - - 0x01249B 04:A48B: 29 7F     AND #$7F
C - - - - - 0x01249D 04:A48D: C9 03     CMP #con_0361_03
C - - - - - 0x01249F 04:A48F: D0 09     BNE bra_A49A
C - - - - - 0x0124A1 04:A491: 8A        TXA
C - - - - - 0x0124A2 04:A492: 48        PHA
C - - - - - 0x0124A3 04:A493: A6 3B     LDX ram_obj_index
C - - - - - 0x0124A5 04:A495: 20 A8 8A  JSR sub_8AA8
C - - - - - 0x0124A8 04:A498: 68        PLA
C - - - - - 0x0124A9 04:A499: AA        TAX
bra_A49A:
C - - - - - 0x0124AA 04:A49A: A9 00     LDA #$00
C - - - - - 0x0124AC 04:A49C: 9D 83 03  STA ram_0381_obj + $02,X
C - - - - - 0x0124AF 04:A49F: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x0124B1 04:A4A1: C9 07     CMP #con_obj_burnov
C - - - - - 0x0124B3 04:A4A3: D0 07     BNE bra_A4AC
C - - - - - 0x0124B5 04:A4A5: A9 01     LDA #$01
C - - - - - 0x0124B7 04:A4A7: 9D 89 03  STA ram_0389_enemy,X
C - - - - - 0x0124BA 04:A4AA: D0 2B     BNE bra_A4D7    ; jmp
bra_A4AC:
C - - - - - 0x0124BC 04:A4AC: B5 45     LDA ram_state + $02,X
C - - - - - 0x0124BE 04:A4AE: 29 7F     AND #$7F
C - - - - - 0x0124C0 04:A4B0: C9 04     CMP #con_state_ladder_climb_idle
C - - - - - 0x0124C2 04:A4B2: D0 23     BNE bra_A4D7
C - - - - - 0x0124C4 04:A4B4: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0124C7 04:A4B7: D0 04     BNE bra_A4BD
; if con_mission_Into_the_Turf
C - - - - - 0x0124C9 04:A4B9: A9 80     LDA #$80
C - - - - - 0x0124CB 04:A4BB: D0 0C     BNE bra_A4C9    ; jmp
bra_A4BD:
C - - - - - 0x0124CD 04:A4BD: B5 79     LDA ram_obj_pos_X_lo + $02,X
C - - - - - 0x0124CF 04:A4BF: C9 A8     CMP #$A8
C - - - - - 0x0124D1 04:A4C1: D0 04     BNE bra_A4C7
- - - - - - 0x0124D3 04:A4C3: A9 8A     LDA #$8A
- - - - - - 0x0124D5 04:A4C5: D0 02     BNE bra_A4C9    ; jmp
bra_A4C7:
C - - - - - 0x0124D7 04:A4C7: A9 8B     LDA #$8B
bra_A4C9:
C - - - - - 0x0124D9 04:A4C9: 9D 6B 03  STA ram_0369_obj + $02,X
C - - - - - 0x0124DC 04:A4CC: A9 02     LDA #con_006C_02
C - - - - - 0x0124DE 04:A4CE: 09 80     ORA #$80    ; bzk optimize, 82
C - - - - - 0x0124E0 04:A4D0: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x0124E2 04:A4D2: A9 06     LDA #$06
C - - - - - 0x0124E4 04:A4D4: 9D 70 04  STA ram_0470_obj,X
bra_A4D7:
C - - - - - 0x0124E7 04:A4D7: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x0124E9 04:A4D9: 29 0F     AND #$0F
C - - - - - 0x0124EB 04:A4DB: F0 04     BEQ bra_A4E1
C - - - - - 0x0124ED 04:A4DD: C9 01     CMP #$01
C - - - - - 0x0124EF 04:A4DF: D0 08     BNE bra_A4E9
bra_A4E1:
C - - - - - 0x0124F1 04:A4E1: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x0124F3 04:A4E3: 09 80     ORA #$80
C - - - - - 0x0124F5 04:A4E5: 95 6A     STA ram_006A_enemy,X
C - - - - - 0x0124F7 04:A4E7: D0 57     BNE bra_A540    ; jmp
bra_A4E9:
C - - - - - 0x0124F9 04:A4E9: A0 81     LDY #$81
C - - - - - 0x0124FB 04:A4EB: 20 97 A5  JSR sub_A597
C - - - - - 0x0124FE 04:A4EE: B0 48     BCS bra_A538
C - - - - - 0x012500 04:A4F0: A5 D2     LDA ram_cam_pos_Y_lo
C - - - - - 0x012502 04:A4F2: 18        CLC
C - - - - - 0x012503 04:A4F3: 69 78     ADC #< $0078
C - - - - - 0x012505 04:A4F5: 85 29     STA ram_0029_temp
C - - - - - 0x012507 04:A4F7: A5 D3     LDA ram_cam_pos_Y_hi
C - - - - - 0x012509 04:A4F9: 69 00     ADC #> $0078
C - - - - - 0x01250B 04:A4FB: 85 2A     STA ram_002A_temp
C - - - - - 0x01250D 04:A4FD: B5 94     LDA ram_obj_pos_Y_lo + $02,X
C - - - - - 0x01250F 04:A4FF: 18        CLC
C - - - - - 0x012510 04:A500: 75 AF     ADC ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012512 04:A502: 85 2D     STA ram_002D_temp
C - - - - - 0x012514 04:A504: B5 9D     LDA ram_obj_pos_Y_hi + $02,X
C - - - - - 0x012516 04:A506: 75 B8     ADC ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012518 04:A508: 85 2E     STA ram_002E_temp
C - - - - - 0x01251A 04:A50A: A5 29     LDA ram_0029_temp
C - - - - - 0x01251C 04:A50C: 38        SEC
C - - - - - 0x01251D 04:A50D: E5 2D     SBC ram_002D_temp
C - - - - - 0x01251F 04:A50F: 85 29     STA ram_0029_temp
C - - - - - 0x012521 04:A511: A5 2A     LDA ram_002A_temp
C - - - - - 0x012523 04:A513: E5 2E     SBC ram_002E_temp
C - - - - - 0x012525 04:A515: 85 2A     STA ram_002A_temp
C - - - - - 0x012527 04:A517: B0 03     BCS bra_A51C
C - - - - - 0x012529 04:A519: 20 60 B2  JSR sub_B260
bra_A51C:
C - - - - - 0x01252C 04:A51C: A5 29     LDA ram_0029_temp
C - - - - - 0x01252E 04:A51E: 38        SEC
C - - - - - 0x01252F 04:A51F: E9 78     SBC #< $0078
C - - - - - 0x012531 04:A521: 85 29     STA ram_0029_temp
C - - - - - 0x012533 04:A523: A5 2A     LDA ram_002A_temp
C - - - - - 0x012535 04:A525: E9 00     SBC #> $0078
C - - - - - 0x012537 04:A527: 85 2A     STA ram_002A_temp
C - - - - - 0x012539 04:A529: B0 0D     BCS bra_A538
C - - - - - 0x01253B 04:A52B: 8A        TXA
C - - - - - 0x01253C 04:A52C: D0 12     BNE bra_A540
C - - - - - 0x01253E 04:A52E: FE A1 03  INC ram_03A1_obj,X
C - - - - - 0x012541 04:A531: BD A1 03  LDA ram_03A1_obj,X
C - - - - - 0x012544 04:A534: C9 08     CMP #$08
C - - - - - 0x012546 04:A536: B0 08     BCS bra_A540
bra_A538:
C - - - - - 0x012548 04:A538: B5 3E     LDA ram_003C_obj_flags + $02,X
C - - - - - 0x01254A 04:A53A: 09 20     ORA #con_003C_flag_20
C - - - - - 0x01254C 04:A53C: 95 3E     STA ram_003C_obj_flags + $02,X
C - - - - - 0x01254E 04:A53E: 38        SEC
C - - - - - 0x01254F 04:A53F: 60        RTS
bra_A540:
loc_A540:
C D 1 - - - 0x012550 04:A540: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x012552 04:A542: 09 80     ORA #$80
C - - - - - 0x012554 04:A544: 95 6A     STA ram_006A_enemy,X
C - - - - - 0x012556 04:A546: B5 3E     LDA ram_003C_obj_flags + $02,X
C - - - - - 0x012558 04:A548: 29 DF     AND #con_003C_flag_20 ^ $FF
C - - - - - 0x01255A 04:A54A: 95 3E     STA ram_003C_obj_flags + $02,X
C - - - - - 0x01255C 04:A54C: 29 40     AND #$40
C - - - - - 0x01255E 04:A54E: F0 2E     BEQ bra_A57E
C - - - - - 0x012560 04:A550: BD 89 03  LDA ram_0389_enemy,X
C - - - - - 0x012563 04:A553: F0 1D     BEQ bra_A572
C - - - - - 0x012565 04:A555: BD 63 03  LDA ram_0361_obj + $02,X
C - - - - - 0x012568 04:A558: 29 7F     AND #$7F
C - - - - - 0x01256A 04:A55A: C9 06     CMP #con_0361_06
C - - - - - 0x01256C 04:A55C: F0 14     BEQ bra_A572
C - - - - - 0x01256E 04:A55E: B5 3E     LDA ram_003C_obj_flags + $02,X
C - - - - - 0x012570 04:A560: 29 BF     AND #con_003C_flag_40 ^ $FF
C - - - - - 0x012572 04:A562: 95 3E     STA ram_003C_obj_flags + $02,X
C - - - - - 0x012574 04:A564: DE 89 03  DEC ram_0389_enemy,X
C - - - - - 0x012577 04:A567: A9 28     LDA #$28
C - - - - - 0x012579 04:A569: 9D 20 04  STA ram_hp + $02,X
C - - - - - 0x01257C 04:A56C: A9 2A     LDA #con_state_burnov_revives
C - - - - - 0x01257E 04:A56E: 95 45     STA ram_state + $02,X
C - - - - - 0x012580 04:A570: D0 0C     BNE bra_A57E    ; jmp
bra_A572:
C - - - - - 0x012582 04:A572: B5 45     LDA ram_state + $02,X
C - - - - - 0x012584 04:A574: 29 7F     AND #$7F
C - - - - - 0x012586 04:A576: C9 26     CMP #con_state_death_normal
C - - - - - 0x012588 04:A578: F0 04     BEQ bra_A57E
C - - - - - 0x01258A 04:A57A: A9 26     LDA #con_state_death_normal
C - - - - - 0x01258C 04:A57C: 95 45     STA ram_state + $02,X
bra_A57E:
C - - - - - 0x01258E 04:A57E: 18        CLC
C - - - - - 0x01258F 04:A57F: 60        RTS



sub_A580:
C - - - - - 0x012590 04:A580: BD 48 04  LDA ram_0446_obj + $02,X
C - - - - - 0x012593 04:A583: 10 11     BPL bra_A596_RTS
C - - - - - 0x012595 04:A585: 29 7F     AND #$7F
C - - - - - 0x012597 04:A587: A8        TAY
C - - - - - 0x012598 04:A588: C8        INY
C - - - - - 0x012599 04:A589: 98        TYA
; * 10
C - - - - - 0x01259A 04:A58A: 0A        ASL
C - - - - - 0x01259B 04:A58B: 0A        ASL
C - - - - - 0x01259C 04:A58C: 0A        ASL
C - - - - - 0x01259D 04:A58D: 0A        ASL
C - - - - - 0x01259E 04:A58E: 85 19     STA ram_0019_t20
C - - - - - 0x0125A0 04:A590: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x0125A2 04:A592: 05 19     ORA ram_0019_t20
C - - - - - 0x0125A4 04:A594: 95 6A     STA ram_006A_enemy,X
bra_A596_RTS:
C - - - - - 0x0125A6 04:A596: 60        RTS



sub_A597:
; in
    ; Y = 81 8C
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0125A7 04:A597: 84 19     STY ram_0019_t21
C - - - - - 0x0125A9 04:A599: A5 D0     LDA ram_cam_pos_X_lo
C - - - - - 0x0125AB 04:A59B: 18        CLC
C - - - - - 0x0125AC 04:A59C: 69 80     ADC #< $0080
C - - - - - 0x0125AE 04:A59E: 85 29     STA ram_0029_temp
C - - - - - 0x0125B0 04:A5A0: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x0125B2 04:A5A2: 69 00     ADC #> $0080
C - - - - - 0x0125B4 04:A5A4: 85 2A     STA ram_002A_temp
C - - - - - 0x0125B6 04:A5A6: A5 29     LDA ram_0029_temp
C - - - - - 0x0125B8 04:A5A8: 38        SEC
C - - - - - 0x0125B9 04:A5A9: F5 79     SBC ram_obj_pos_X_lo + $02,X
C - - - - - 0x0125BB 04:A5AB: 85 29     STA ram_0029_temp
C - - - - - 0x0125BD 04:A5AD: A5 2A     LDA ram_002A_temp
C - - - - - 0x0125BF 04:A5AF: F5 82     SBC ram_obj_pos_X_hi + $02,X
C - - - - - 0x0125C1 04:A5B1: 85 2A     STA ram_002A_temp
C - - - - - 0x0125C3 04:A5B3: B0 03     BCS bra_A5B8
C - - - - - 0x0125C5 04:A5B5: 20 60 B2  JSR sub_B260
bra_A5B8:
C - - - - - 0x0125C8 04:A5B8: A5 29     LDA ram_0029_temp
C - - - - - 0x0125CA 04:A5BA: 38        SEC
C - - - - - 0x0125CB 04:A5BB: E5 19     SBC ram_0019_t21
C - - - - - 0x0125CD 04:A5BD: 85 29     STA ram_0029_temp
C - - - - - 0x0125CF 04:A5BF: A5 2A     LDA ram_002A_temp
C - - - - - 0x0125D1 04:A5C1: E9 00     SBC #$00
C - - - - - 0x0125D3 04:A5C3: 85 2A     STA ram_002A_temp
C - - - - - 0x0125D5 04:A5C5: B0 02     BCS bra_A5C9
C - - - - - 0x0125D7 04:A5C7: 18        CLC
C - - - - - 0x0125D8 04:A5C8: 60        RTS
bra_A5C9:
C - - - - - 0x0125D9 04:A5C9: 38        SEC
C - - - - - 0x0125DA 04:A5CA: 60        RTS



sub_A5CB_calculate_enemy_ai_template:
C - - - - - 0x0125DB 04:A5CB: 20 DD B2  JSR sub_B2DD
C - - - - - 0x0125DE 04:A5CE: AD 52 04  LDA ram_0452
C - - - - - 0x0125E1 04:A5D1: D0 02     BNE bra_A5D5
C - - - - - 0x0125E3 04:A5D3: F0 47     BEQ bra_A61C    ; jmp
bra_A5D5:
C - - - - - 0x0125E5 04:A5D5: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x0125E7 04:A5D7: C9 0F     CMP #con_obj_ninja
C - - - - - 0x0125E9 04:A5D9: D0 03     BNE bra_A5DE
C - - - - - 0x0125EB 04:A5DB: 4C 97 A7  JMP loc_A797
bra_A5DE:
C - - - - - 0x0125EE 04:A5DE: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x0125F1 04:A5E1: 29 C0     AND #$C0
C - - - - - 0x0125F3 04:A5E3: F0 03     BEQ bra_A5E8
bra_A5E5:
C - - - - - 0x0125F5 04:A5E5: 4C 74 A7  JMP loc_A774
bra_A5E8:
C - - - - - 0x0125F8 04:A5E8: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0125FA 04:A5EA: 10 02     BPL bra_A5EE    ; if not con_004A_flag_knocked_down
C - - - - - 0x0125FC 04:A5EC: 30 F7     BMI bra_A5E5    ; jmp if con_004A_flag_knocked_down
bra_A5EE:
C - - - - - 0x0125FE 04:A5EE: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012600 04:A5F0: 10 0B     BPL bra_A5FD
C - - - - - 0x012602 04:A5F2: B5 6C     LDA ram_enemy_ai_template,X ; bzk optimize, loading the same A
C - - - - - 0x012604 04:A5F4: 29 7F     AND #$7F
C - - - - - 0x012606 04:A5F6: C9 0A     CMP #con_006C_0A
C - - - - - 0x012608 04:A5F8: D0 EB     BNE bra_A5E5
C - - - - - 0x01260A 04:A5FA: 4C BF A6  JMP loc_A6BF
bra_A5FD:
C - - - - - 0x01260D 04:A5FD: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x012610 04:A600: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x012613 04:A603: D9 59 03  CMP ram_0359_obj,Y
C - - - - - 0x012616 04:A606: F0 25     BEQ bra_A62D
C - - - - - 0x012618 04:A608: B9 61 03  LDA ram_0361_obj,Y
C - - - - - 0x01261B 04:A60B: 29 7F     AND #$7F
C - - - - - 0x01261D 04:A60D: C9 01     CMP #con_0361_01
C - - - - - 0x01261F 04:A60F: F0 0B     BEQ bra_A61C
C - - - - - 0x012621 04:A611: C9 06     CMP #con_0361_06
C - - - - - 0x012623 04:A613: F0 07     BEQ bra_A61C
C - - - - - 0x012625 04:A615: C9 07     CMP #con_0361_07
C - - - - - 0x012627 04:A617: F0 03     BEQ bra_A61C
C - - - - - 0x012629 04:A619: 4C 48 A7  JMP loc_A748
bra_A61C:
C - - - - - 0x01262C 04:A61C: BD 6B 03  LDA ram_0369_obj + $02,X
C - - - - - 0x01262F 04:A61F: 30 C4     BMI bra_A5E5
C - - - - - 0x012631 04:A621: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x012633 04:A623: 30 C0     BMI bra_A5E5    ; if con_004A_flag_knocked_down
C - - - - - 0x012635 04:A625: A9 00     LDA #$00
C - - - - - 0x012637 04:A627: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x01263A 04:A62A: 4C 54 A7  JMP loc_A754
bra_A62D:
C - - - - - 0x01263D 04:A62D: B9 69 03  LDA ram_0369_obj,Y
C - - - - - 0x012640 04:A630: 10 0A     BPL bra_A63C
C - - - - - 0x012642 04:A632: BD 5C 04  LDA ram_045C_enemy,X
C - - - - - 0x012645 04:A635: C9 18     CMP #$18
C - - - - - 0x012647 04:A637: 90 03     BCC bra_A63C
C - - - - - 0x012649 04:A639: 4C 48 A7  JMP loc_A748
bra_A63C:
C - - - - - 0x01264C 04:A63C: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x01264F 04:A63F: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x012652 04:A642: 29 7F     AND #$7F
C - - - - - 0x012654 04:A644: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x012656 04:A646: D0 08     BNE bra_A650
C - - - - - 0x012658 04:A648: A9 03     LDA #$03
C - - - - - 0x01265A 04:A64A: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x01265D 04:A64D: 4C 54 A7  JMP loc_A754
bra_A650:
C - - - - - 0x012660 04:A650: 20 6A B3  JSR sub_B36A
C - - - - - 0x012663 04:A653: 90 03     BCC bra_A658
C - - - - - 0x012665 04:A655: 4C 4C A7  JMP loc_A74C
bra_A658:
C - - - - - 0x012668 04:A658: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x01266B 04:A65B: C9 09     CMP #$09
C - - - - - 0x01266D 04:A65D: B0 0A     BCS bra_A669
C - - - - - 0x01266F 04:A65F: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x012672 04:A662: C9 04     CMP #$04
C - - - - - 0x012674 04:A664: B0 03     BCS bra_A669
C - - - - - 0x012676 04:A666: 4C 60 A7  JMP loc_A760
bra_A669:
C - - - - - 0x012679 04:A669: BD 7A 04  LDA ram_047A_enemy,X
C - - - - - 0x01267C 04:A66C: F0 06     BEQ bra_A674
C - - - - - 0x01267E 04:A66E: C9 FF     CMP #$FF
C - - - - - 0x012680 04:A670: F0 02     BEQ bra_A674
C - - - - - 0x012682 04:A672: D0 0B     BNE bra_A67F    ; jmp
bra_A674:
C - - - - - 0x012684 04:A674: 20 8F B3  JSR sub_B38F_send_enemy_after_lying_weapon
C - - - - - 0x012687 04:A677: 90 03     BCC bra_A67C
C - - - - - 0x012689 04:A679: 4C 50 A7  JMP loc_A750
bra_A67C:
C - - - - - 0x01268C 04:A67C: 20 4A B5  JSR sub_B54A
bra_A67F:
C - - - - - 0x01268F 04:A67F: BD 7A 04  LDA ram_047A_enemy,X
C - - - - - 0x012692 04:A682: C9 01     CMP #$01
C - - - - - 0x012694 04:A684: D0 39     BNE bra_A6BF
C - - - - - 0x012696 04:A686: 20 97 B6  JSR sub_B697
C - - - - - 0x012699 04:A689: 90 60     BCC bra_A6EB
C - - - - - 0x01269B 04:A68B: 20 CC B6  JSR sub_B6CC
C - - - - - 0x01269E 04:A68E: B0 0B     BCS bra_A69B
C - - - - - 0x0126A0 04:A690: 98        TYA
C - - - - - 0x0126A1 04:A691: F0 58     BEQ bra_A6EB
C - - - - - 0x0126A3 04:A693: A9 04     LDA #$04
C - - - - - 0x0126A5 04:A695: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x0126A8 04:A698: 4C 54 A7  JMP loc_A754
bra_A69B:
C - - - - - 0x0126AB 04:A69B: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x0126AE 04:A69E: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x0126B1 04:A6A1: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0126B3 04:A6A3: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0126B5 04:A6A5: F0 10     BEQ bra_A6B7
C - - - - - 0x0126B7 04:A6A7: 20 06 B5  JSR sub_B506
C - - - - - 0x0126BA 04:A6AA: B0 03     BCS bra_A6AF
C - - - - - 0x0126BC 04:A6AC: 4C 58 A7  JMP loc_A758
bra_A6AF:
C - - - - - 0x0126BF 04:A6AF: A9 01     LDA #$01
C - - - - - 0x0126C1 04:A6B1: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x0126C4 04:A6B4: 4C 54 A7  JMP loc_A754
bra_A6B7:
C - - - - - 0x0126C7 04:A6B7: A9 02     LDA #$02
C - - - - - 0x0126C9 04:A6B9: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x0126CC 04:A6BC: 4C 54 A7  JMP loc_A754
bra_A6BF:
loc_A6BF:
C D 1 - - - 0x0126CF 04:A6BF: 20 AE B6  JSR sub_B6AE
C - - - - - 0x0126D2 04:A6C2: B0 03     BCS bra_A6C7
C - - - - - 0x0126D4 04:A6C4: 4C 68 A7  JMP loc_A768
bra_A6C7:
C - - - - - 0x0126D7 04:A6C7: 20 CC B6  JSR sub_B6CC
C - - - - - 0x0126DA 04:A6CA: B0 08     BCS bra_A6D4
C - - - - - 0x0126DC 04:A6CC: A9 00     LDA #$00
C - - - - - 0x0126DE 04:A6CE: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x0126E1 04:A6D1: 4C 54 A7  JMP loc_A754
bra_A6D4:
C - - - - - 0x0126E4 04:A6D4: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x0126E7 04:A6D7: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x0126EA 04:A6DA: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0126EC 04:A6DC: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0126EE 04:A6DE: F0 03     BEQ bra_A6E3
C - - - - - 0x0126F0 04:A6E0: 4C 5C A7  JMP loc_A75C
bra_A6E3:
C - - - - - 0x0126F3 04:A6E3: A9 02     LDA #$02
C - - - - - 0x0126F5 04:A6E5: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x0126F8 04:A6E8: 4C 54 A7  JMP loc_A754
bra_A6EB:
C - - - - - 0x0126FB 04:A6EB: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x0126FD 04:A6ED: 29 7F     AND #$7F
C - - - - - 0x0126FF 04:A6EF: C9 01     CMP #con_006C_01
C - - - - - 0x012701 04:A6F1: D0 03     BNE bra_A6F6
C - - - - - 0x012703 04:A6F3: 4C 74 A7  JMP loc_A774
bra_A6F6:
C - - - - - 0x012706 04:A6F6: 8A        TXA
C - - - - - 0x012707 04:A6F7: 49 01     EOR #$01
C - - - - - 0x012709 04:A6F9: A8        TAY
C - - - - - 0x01270A 04:A6FA: B9 6C 00  LDA a: ram_enemy_ai_template,Y
C - - - - - 0x01270D 04:A6FD: 29 7F     AND #$7F
C - - - - - 0x01270F 04:A6FF: C9 01     CMP #con_006C_01
C - - - - - 0x012711 04:A701: F0 3D     BEQ bra_A740
C - - - - - 0x012713 04:A703: BD 5E 04  LDA ram_045E_enemy,X
C - - - - - 0x012716 04:A706: F0 38     BEQ bra_A740
C - - - - - 0x012718 04:A708: B9 6C 04  LDA ram_046A_obj + $02,Y
C - - - - - 0x01271B 04:A70B: 10 07     BPL bra_A714
C - - - - - 0x01271D 04:A70D: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012720 04:A710: 30 09     BMI bra_A71B
C - - - - - 0x012722 04:A712: 10 2C     BPL bra_A740    ; jmp
bra_A714:
C - - - - - 0x012724 04:A714: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012727 04:A717: 10 02     BPL bra_A71B
C - - - - - 0x012729 04:A719: 30 25     BMI bra_A740    ; jmp
bra_A71B:
C - - - - - 0x01272B 04:A71B: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x01272E 04:A71E: C9 04     CMP #$04
C - - - - - 0x012730 04:A720: B0 1E     BCS bra_A740
C - - - - - 0x012732 04:A722: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x012735 04:A725: C9 30     CMP #$30
C - - - - - 0x012737 04:A727: 90 02     BCC bra_A72B
C - - - - - 0x012739 04:A729: B0 15     BCS bra_A740    ; jmp
bra_A72B:
C - - - - - 0x01273B 04:A72B: BD 63 03  LDA ram_0361_obj + $02,X
C - - - - - 0x01273E 04:A72E: 30 14     BMI bra_A744
C - - - - - 0x012740 04:A730: B9 45 00  LDA a: ram_state + $02,Y
C - - - - - 0x012743 04:A733: 29 7F     AND #$7F
C - - - - - 0x012745 04:A735: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x012747 04:A737: F0 07     BEQ bra_A740
C - - - - - 0x012749 04:A739: A9 04     LDA #$04
C - - - - - 0x01274B 04:A73B: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x01274E 04:A73E: D0 14     BNE bra_A754    ; jmp
bra_A740:
C - - - - - 0x012750 04:A740: A9 00     LDA #con_006C_00
C - - - - - 0x012752 04:A742: F0 2E     BEQ bra_A772    ; jmp
bra_A744:
C - - - - - 0x012754 04:A744: A9 01     LDA #con_006C_01
C - - - - - 0x012756 04:A746: D0 2A     BNE bra_A772    ; jmp



loc_A748:
C D 1 - - - 0x012758 04:A748: A9 02     LDA #con_006C_02
C - - - - - 0x01275A 04:A74A: D0 26     BNE bra_A772    ; jmp



loc_A74C:
C D 1 - - - 0x01275C 04:A74C: A9 03     LDA #con_006C_03
C - - - - - 0x01275E 04:A74E: D0 22     BNE bra_A772    ; jmp



loc_A750:
C D 1 - - - 0x012760 04:A750: A9 04     LDA #con_006C_04
C - - - - - 0x012762 04:A752: D0 1E     BNE bra_A772    ; jmp



bra_A754:
loc_A754:
C D 1 - - - 0x012764 04:A754: A9 05     LDA #con_006C_05
C - - - - - 0x012766 04:A756: D0 1A     BNE bra_A772    ; jmp



loc_A758:
C D 1 - - - 0x012768 04:A758: A9 06     LDA #con_006C_06
C - - - - - 0x01276A 04:A75A: D0 16     BNE bra_A772    ; jmp



loc_A75C:
C D 1 - - - 0x01276C 04:A75C: A9 07     LDA #con_006C_07
C - - - - - 0x01276E 04:A75E: D0 12     BNE bra_A772    ; jmp



loc_A760:
C D 1 - - - 0x012770 04:A760: A9 08     LDA #con_006C_08
C - - - - - 0x012772 04:A762: D0 0E     BNE bra_A772    ; jmp


; bzk garbage
- - - - - - 0x012774 04:A764: A9 09     LDA #$09
- - - - - - 0x012776 04:A766: D0 0A     BNE bra_A772



loc_A768:
C D 1 - - - 0x012778 04:A768: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x01277A 04:A76A: 29 7F     AND #$7F
C - - - - - 0x01277C 04:A76C: C9 0A     CMP #con_006C_0A
C - - - - - 0x01277E 04:A76E: F0 04     BEQ bra_A774
C - - - - - 0x012780 04:A770: A9 0A     LDA #con_006C_0A
bra_A772:
C - - - - - 0x012782 04:A772: 95 6C     STA ram_enemy_ai_template,X
bra_A774:
loc_A774:
C D 1 - - - 0x012784 04:A774: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012786 04:A776: 29 7F     AND #$7F
C - - - - - 0x012788 04:A778: C9 01     CMP #con_006C_01
C - - - - - 0x01278A 04:A77A: F0 05     BEQ bra_A781
C - - - - - 0x01278C 04:A77C: A9 00     LDA #$00
C - - - - - 0x01278E 04:A77E: 9D 66 04  STA ram_0464_obj + $02,X
bra_A781:
C - - - - - 0x012791 04:A781: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012793 04:A783: 29 7F     AND #$7F
C - - - - - 0x012795 04:A785: C9 00     CMP #con_006C_00
C - - - - - 0x012797 04:A787: F0 0D     BEQ bra_A796_RTS
C - - - - - 0x012799 04:A789: C9 01     CMP #con_006C_01
C - - - - - 0x01279B 04:A78B: F0 09     BEQ bra_A796_RTS
C - - - - - 0x01279D 04:A78D: C9 0A     CMP #con_006C_0A
C - - - - - 0x01279F 04:A78F: F0 05     BEQ bra_A796_RTS
C - - - - - 0x0127A1 04:A791: A9 00     LDA #$00
C - - - - - 0x0127A3 04:A793: 9D 60 04  STA ram_0460_enemy,X
bra_A796_RTS:
C - - - - - 0x0127A6 04:A796: 60        RTS



loc_A797:
C D 1 - - - 0x0127A7 04:A797: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x0127AA 04:A79A: 29 80     AND #$80
C - - - - - 0x0127AC 04:A79C: D0 08     BNE bra_A7A6_RTS
C - - - - - 0x0127AE 04:A79E: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0127B0 04:A7A0: 30 04     BMI bra_A7A6_RTS    ; if con_004A_flag_knocked_down
C - - - - - 0x0127B2 04:A7A2: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x0127B4 04:A7A4: 10 01     BPL bra_A7A7
bra_A7A6_RTS:
C - - - - - 0x0127B6 04:A7A6: 60        RTS
bra_A7A7:
C - - - - - 0x0127B7 04:A7A7: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0127BA 04:A7AA: C9 1C     CMP #$1C
C - - - - - 0x0127BC 04:A7AC: B0 1E     BCS bra_A7CC
C - - - - - 0x0127BE 04:A7AE: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x0127C1 04:A7B1: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0127C4 04:A7B4: 29 7F     AND #$7F
C - - - - - 0x0127C6 04:A7B6: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x0127C8 04:A7B8: F0 6F     BEQ bra_A829
C - - - - - 0x0127CA 04:A7BA: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x0127CD 04:A7BD: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0127CF 04:A7BF: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0127D1 04:A7C1: F0 66     BEQ bra_A829
C - - - - - 0x0127D3 04:A7C3: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x0127D6 04:A7C6: C9 04     CMP #$04
C - - - - - 0x0127D8 04:A7C8: B0 5F     BCS bra_A829
C - - - - - 0x0127DA 04:A7CA: 90 61     BCC bra_A82D    ; jmp
bra_A7CC:
C - - - - - 0x0127DC 04:A7CC: C9 40     CMP #$40
C - - - - - 0x0127DE 04:A7CE: B0 51     BCS bra_A821
C - - - - - 0x0127E0 04:A7D0: 8A        TXA
C - - - - - 0x0127E1 04:A7D1: 49 01     EOR #$01
C - - - - - 0x0127E3 04:A7D3: A8        TAY
C - - - - - 0x0127E4 04:A7D4: B9 6C 00  LDA a: ram_enemy_ai_template,Y
C - - - - - 0x0127E7 04:A7D7: 29 7F     AND #$7F
C - - - - - 0x0127E9 04:A7D9: C9 01     CMP #con_006C_01
C - - - - - 0x0127EB 04:A7DB: F0 18     BEQ bra_A7F5
C - - - - - 0x0127ED 04:A7DD: BD 5E 04  LDA ram_045E_enemy,X
C - - - - - 0x0127F0 04:A7E0: F0 13     BEQ bra_A7F5
C - - - - - 0x0127F2 04:A7E2: B9 6C 04  LDA ram_046A_obj + $02,Y
C - - - - - 0x0127F5 04:A7E5: 10 07     BPL bra_A7EE
C - - - - - 0x0127F7 04:A7E7: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0127FA 04:A7EA: 30 39     BMI bra_A825
C - - - - - 0x0127FC 04:A7EC: 10 07     BPL bra_A7F5    ; jmp
bra_A7EE:
C - - - - - 0x0127FE 04:A7EE: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012801 04:A7F1: 10 32     BPL bra_A825
; bzk optimize, useless BMI
C - - - - - 0x012803 04:A7F3: 30 00     BMI bra_A7F5    ; jmp
bra_A7F5:
C - - - - - 0x012805 04:A7F5: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x012808 04:A7F8: C9 30     CMP #$30
C - - - - - 0x01280A 04:A7FA: 90 17     BCC bra_A813
C - - - - - 0x01280C 04:A7FC: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x01280F 04:A7FF: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x012812 04:A802: 29 7F     AND #$7F
C - - - - - 0x012814 04:A804: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x012816 04:A806: F0 12     BEQ bra_A81A
C - - - - - 0x012818 04:A808: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x01281B 04:A80B: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x01281D 04:A80D: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x01281F 04:A80F: F0 09     BEQ bra_A81A
C - - - - - 0x012821 04:A811: D0 1E     BNE bra_A831    ; jmp
bra_A813:
C - - - - - 0x012823 04:A813: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x012826 04:A816: C9 10     CMP #$10
C - - - - - 0x012828 04:A818: B0 1F     BCS bra_A839
bra_A81A:
C - - - - - 0x01282A 04:A81A: A9 00     LDA #$00
C - - - - - 0x01282C 04:A81C: 9D 7E 04  STA ram_047C_obj + $02,X
C - - - - - 0x01282F 04:A81F: F0 14     BEQ bra_A835    ; jmp
bra_A821:
C - - - - - 0x012831 04:A821: A9 00     LDA #con_006C_00
C - - - - - 0x012833 04:A823: F0 16     BEQ bra_A83B    ; jmp
bra_A825:
C - - - - - 0x012835 04:A825: A9 01     LDA #con_006C_01
C - - - - - 0x012837 04:A827: D0 12     BNE bra_A83B    ; jmp
bra_A829:
C - - - - - 0x012839 04:A829: A9 02     LDA #con_006C_02
C - - - - - 0x01283B 04:A82B: D0 0E     BNE bra_A83B    ; jmp
bra_A82D:
C - - - - - 0x01283D 04:A82D: A9 03     LDA #con_006C_03
C - - - - - 0x01283F 04:A82F: D0 0A     BNE bra_A83B    ; jmp
bra_A831:
C - - - - - 0x012841 04:A831: A9 04     LDA #con_006C_04
C - - - - - 0x012843 04:A833: D0 06     BNE bra_A83B    ; jmp
bra_A835:
C - - - - - 0x012845 04:A835: A9 05     LDA #con_006C_05
C - - - - - 0x012847 04:A837: D0 02     BNE bra_A83B    ; jmp
bra_A839:
C - - - - - 0x012849 04:A839: A9 06     LDA #con_006C_06
bra_A83B:
C - - - - - 0x01284B 04:A83B: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x01284D 04:A83D: 60        RTS



loc_A83E_ninja_ai:
C D 1 - - - 0x01284E 04:A83E: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012850 04:A840: 29 7F     AND #$7F
C - - - - - 0x012852 04:A842: 0A        ASL
C - - - - - 0x012853 04:A843: A8        TAY
C - - - - - 0x012854 04:A844: B9 51 A8  LDA tbl_A851,Y
C - - - - - 0x012857 04:A847: 85 29     STA ram_0029_temp
C - - - - - 0x012859 04:A849: B9 52 A8  LDA tbl_A851 + $01,Y
C - - - - - 0x01285C 04:A84C: 85 2A     STA ram_002A_temp
C - - - - - 0x01285E 04:A84E: 6C 29 00  JMP (ram_0029_temp)



tbl_A851:
- D 1 - - - 0x012861 04:A851: 5F A8     .word ofs_004_A85F_00
- D 1 - - - 0x012863 04:A853: 68 A8     .word ofs_004_A868_01
- D 1 - - - 0x012865 04:A855: E0 A8     .word ofs_004_A8E0_02
- D 1 - - - 0x012867 04:A857: 86 A8     .word ofs_004_A886_03
- D 1 - - - 0x012869 04:A859: 86 A8     .word ofs_004_A886_04
- D 1 - - - 0x01286B 04:A85B: EF AF     .word ofs_004_AFEF_05
- D 1 - - - 0x01286D 04:A85D: FB A8     .word ofs_004_A8FB_06



ofs_004_A85F_00:
C - - J - - 0x01286F 04:A85F: 20 16 B7  JSR sub_B716
C - - - - - 0x012872 04:A862: B0 03     BCS bra_A867_RTS
; bzk optimize, JMP
C - - - - - 0x012874 04:A864: 20 23 B2  JSR sub_B223
bra_A867_RTS:
C - - - - - 0x012877 04:A867: 60        RTS



ofs_004_A868_01:
C - - J - - 0x012878 04:A868: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x01287A 04:A86A: 30 17     BMI bra_A883
C - - - - - 0x01287C 04:A86C: 09 80     ORA #$80
C - - - - - 0x01287E 04:A86E: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x012880 04:A870: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012883 04:A873: 10 06     BPL bra_A87B
C - - - - - 0x012885 04:A875: 20 3C B2  JSR sub_B23C
C - - - - - 0x012888 04:A878: 4C 7E A8  JMP loc_A87E
bra_A87B:
C - - - - - 0x01288B 04:A87B: 20 30 B2  JSR sub_B230
loc_A87E:
C D 1 - - - 0x01288E 04:A87E: A9 0C     LDA #con_state_ninja_jump_high
C - - - - - 0x012890 04:A880: 95 45     STA ram_state + $02,X
C - - - - - 0x012892 04:A882: 60        RTS
bra_A883:
C - - - - - 0x012893 04:A883: 4C 26 A9  JMP loc_A926



ofs_004_A886_03:
ofs_004_A886_04:
C - - J - - 0x012896 04:A886: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012898 04:A888: 30 1D     BMI bra_A8A7
C - - - - - 0x01289A 04:A88A: 09 80     ORA #$80
C - - - - - 0x01289C 04:A88C: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x01289E 04:A88E: A0 00     LDY #$00
C - - - - - 0x0128A0 04:A890: 29 7F     AND #$7F
C - - - - - 0x0128A2 04:A892: C9 03     CMP #$03
C - - - - - 0x0128A4 04:A894: F0 01     BEQ bra_A897
C - - - - - 0x0128A6 04:A896: C8        INY
bra_A897:
C - - - - - 0x0128A7 04:A897: 20 4A B5  JSR sub_B54A
C - - - - - 0x0128AA 04:A89A: 20 26 B1  JSR sub_B126_set_state_enemy_attack
C - - - - - 0x0128AD 04:A89D: B5 45     LDA ram_state + $02,X
C - - - - - 0x0128AF 04:A89F: C9 4A     CMP #con_state_4A
C - - - - - 0x0128B1 04:A8A1: D0 03     BNE bra_A8A6_RTS
; bzk optimize, JMP
C - - - - - 0x0128B3 04:A8A3: 20 16 B7  JSR sub_B716
bra_A8A6_RTS:
C - - - - - 0x0128B6 04:A8A6: 60        RTS
bra_A8A7:
C - - - - - 0x0128B7 04:A8A7: B5 45     LDA ram_state + $02,X
C - - - - - 0x0128B9 04:A8A9: 29 7F     AND #$7F
C - - - - - 0x0128BB 04:A8AB: C9 00     CMP #con_state_idle
C - - - - - 0x0128BD 04:A8AD: D0 03     BNE bra_A8B2
; con_006C_00
C - - - - - 0x0128BF 04:A8AF: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x0128C1 04:A8B1: 60        RTS
bra_A8B2:
C - - - - - 0x0128C2 04:A8B2: C9 02     CMP #$02
C - - - - - 0x0128C4 04:A8B4: D0 11     BNE bra_A8C7
C - - - - - 0x0128C6 04:A8B6: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x0128C9 04:A8B9: 30 1C     BMI bra_A8D7
C - - - - - 0x0128CB 04:A8BB: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0128CE 04:A8BE: C9 1C     CMP #$1C
C - - - - - 0x0128D0 04:A8C0: B0 1D     BCS bra_A8DF_RTS
C - - - - - 0x0128D2 04:A8C2: A9 4A     LDA #con_state_4A
C - - - - - 0x0128D4 04:A8C4: 95 45     STA ram_state + $02,X
C - - - - - 0x0128D6 04:A8C6: 60        RTS
bra_A8C7:
C - - - - - 0x0128D7 04:A8C7: C9 4A     CMP #$4A
C - - - - - 0x0128D9 04:A8C9: D0 14     BNE bra_A8DF_RTS
C - - - - - 0x0128DB 04:A8CB: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x0128DE 04:A8CE: 30 07     BMI bra_A8D7
C - - - - - 0x0128E0 04:A8D0: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0128E3 04:A8D3: C9 28     CMP #$28
C - - - - - 0x0128E5 04:A8D5: 90 08     BCC bra_A8DF_RTS
bra_A8D7:
C - - - - - 0x0128E7 04:A8D7: 20 23 B2  JSR sub_B223
C - - - - - 0x0128EA 04:A8DA: A9 00     LDA #$00
C - - - - - 0x0128EC 04:A8DC: 9D 60 04  STA ram_0460_enemy,X
bra_A8DF_RTS:
C - - - - - 0x0128EF 04:A8DF: 60        RTS



ofs_004_A8E0_02:
C - - J - - 0x0128F0 04:A8E0: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x0128F2 04:A8E2: 30 42     BMI bra_A926
C - - - - - 0x0128F4 04:A8E4: 09 80     ORA #$80
C - - - - - 0x0128F6 04:A8E6: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x0128F8 04:A8E8: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0128FB 04:A8EB: 10 06     BPL bra_A8F3
C - - - - - 0x0128FD 04:A8ED: 20 48 B2  JSR sub_B248
C - - - - - 0x012900 04:A8F0: 4C F6 A8  JMP loc_A8F6
bra_A8F3:
C - - - - - 0x012903 04:A8F3: 20 54 B2  JSR sub_B254
loc_A8F6:
C D 1 - - - 0x012906 04:A8F6: A9 0B     LDA #con_state_ninja_jump_low
C - - - - - 0x012908 04:A8F8: 95 45     STA ram_state + $02,X
C - - - - - 0x01290A 04:A8FA: 60        RTS



ofs_004_A8FB_06:
C - - J - - 0x01290B 04:A8FB: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x01290D 04:A8FD: 30 27     BMI bra_A926
C - - - - - 0x01290F 04:A8FF: 09 80     ORA #$80
C - - - - - 0x012911 04:A901: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x012913 04:A903: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012916 04:A906: 29 01     AND #$01
C - - - - - 0x012918 04:A908: F0 07     BEQ bra_A911
C - - - - - 0x01291A 04:A90A: A9 80     LDA #$80
C - - - - - 0x01291C 04:A90C: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x01291F 04:A90F: D0 05     BNE bra_A916    ; jmp
bra_A911:
C - - - - - 0x012921 04:A911: A9 00     LDA #$00
C - - - - - 0x012923 04:A913: 9D 11 03  STA ram_obj_direction + $02,X
bra_A916:
C - - - - - 0x012926 04:A916: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x012929 04:A919: C9 18     CMP #$18
C - - - - - 0x01292B 04:A91B: 90 04     BCC bra_A921
C - - - - - 0x01292D 04:A91D: A9 08     LDA #con_state_jump_foward_player
C - - - - - 0x01292F 04:A91F: D0 02     BNE bra_A923    ; jmp
bra_A921:
C - - - - - 0x012931 04:A921: A9 07     LDA #con_state_fall_from_platform
bra_A923:
C - - - - - 0x012933 04:A923: 95 45     STA ram_state + $02,X
C - - - - - 0x012935 04:A925: 60        RTS
bra_A926:
loc_A926:
C D 1 - - - 0x012936 04:A926: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x012938 04:A928: 30 04     BMI bra_A92E_RTS    ; if con_004A_flag_knocked_down
- - - - - - 0x01293A 04:A92A: A9 00     LDA #con_006C_00
- - - - - - 0x01293C 04:A92C: 95 6C     STA ram_enemy_ai_template,X
bra_A92E_RTS:
C - - - - - 0x01293E 04:A92E: 60        RTS



sub_A92F_enemy_ai_handler:
C - - - - - 0x01293F 04:A92F: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x012941 04:A931: C9 0F     CMP #con_obj_ninja
C - - - - - 0x012943 04:A933: D0 03     BNE bra_A938
C - - - - - 0x012945 04:A935: 4C 3E A8  JMP loc_A83E_ninja_ai
bra_A938:
C - - - - - 0x012948 04:A938: C9 11     CMP #$11
C - - - - - 0x01294A 04:A93A: D0 2F     BNE bra_A96B
C - - - - - 0x01294C 04:A93C: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x01294E 04:A93E: C9 02     CMP #$02
C - - - - - 0x012950 04:A940: F0 1B     BEQ bra_A95D
C - - - - - 0x012952 04:A942: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x012954 04:A944: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x012956 04:A946: D0 23     BNE bra_A96B
C - - - - - 0x012958 04:A948: EE 8E 03  INC ram_038E_counter
C - - - - - 0x01295B 04:A94B: AD 8E 03  LDA ram_038E_counter
C - - - - - 0x01295E 04:A94E: C9 60     CMP #$60
C - - - - - 0x012960 04:A950: 90 0B     BCC bra_A95D
C - - - - - 0x012962 04:A952: F0 12     BEQ bra_A966
C - - - - - 0x012964 04:A954: C9 C0     CMP #$C0
C - - - - - 0x012966 04:A956: 90 13     BCC bra_A96B
C - - - - - 0x012968 04:A958: A9 00     LDA #$00
C - - - - - 0x01296A 04:A95A: 8D 8E 03  STA ram_038E_counter
bra_A95D:
C - - - - - 0x01296D 04:A95D: B5 3E     LDA ram_003C_obj_flags + $02,X
C - - - - - 0x01296F 04:A95F: 29 EF     AND #con_003C_flag_invisible ^ $FF
C - - - - - 0x012971 04:A961: 95 3E     STA ram_003C_obj_flags + $02,X
C - - - - - 0x012973 04:A963: 4C 6B A9  JMP loc_A96B
bra_A966:
C - - - - - 0x012976 04:A966: A9 5A     LDA #con_state_5A
C - - - - - 0x012978 04:A968: 95 45     STA ram_state + $02,X
C - - - - - 0x01297A 04:A96A: 60        RTS
bra_A96B:
loc_A96B:
C D 1 - - - 0x01297B 04:A96B: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x01297D 04:A96D: 29 7F     AND #$7F
C - - - - - 0x01297F 04:A96F: 0A        ASL
C - - - - - 0x012980 04:A970: A8        TAY
C - - - - - 0x012981 04:A971: B9 7E A9  LDA tbl_A97E,Y
C - - - - - 0x012984 04:A974: 85 29     STA ram_0029_temp
C - - - - - 0x012986 04:A976: B9 7F A9  LDA tbl_A97E + $01,Y
C - - - - - 0x012989 04:A979: 85 2A     STA ram_002A_temp
C - - - - - 0x01298B 04:A97B: 6C 29 00  JMP (ram_0029_temp)



tbl_A97E:
- D 1 - - - 0x01298E 04:A97E: 94 A9     .word ofs_005_A994_00
- D 1 - - - 0x012990 04:A980: 18 AA     .word ofs_005_AA18_01
- D 1 - - - 0x012992 04:A982: 16 AB     .word ofs_005_AB16_02
- D 1 - - - 0x012994 04:A984: 3A AF     .word ofs_005_AF3A_03
- D 1 - - - 0x012996 04:A986: 5C AF     .word ofs_005_AF5C_04_go_for_weapon
- D 1 - - - 0x012998 04:A988: EF AF     .word ofs_005_AFEF_05
- D 1 - - - 0x01299A 04:A98A: B5 B0     .word ofs_005_B0B5_06
- D 1 - - - 0x01299C 04:A98C: FE B0     .word ofs_005_B0FE_07
- D 1 - - - 0x01299E 04:A98E: 3C B1     .word ofs_005_B13C_08
- - - - - - 0x0129A0 04:A990: 8C B1     .word ofs_005_B18C_09_RTS
- D 1 - - - 0x0129A2 04:A992: 8D B1     .word ofs_005_B18D_0A



ofs_005_A994_00:
C - - J - - 0x0129A4 04:A994: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0129A6 04:A996: 10 01     BPL bra_A999    ; if not con_004A_flag_knocked_down
C - - - - - 0x0129A8 04:A998: 60        RTS
bra_A999:
C - - - - - 0x0129A9 04:A999: 20 16 B7  JSR sub_B716
C - - - - - 0x0129AC 04:A99C: B0 69     BCS bra_AA07
C - - - - - 0x0129AE 04:A99E: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0129B0 04:A9A0: 29 01     AND #con_004A_flag_01
C - - - - - 0x0129B2 04:A9A2: D0 63     BNE bra_AA07
C - - - - - 0x0129B4 04:A9A4: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x0129B7 04:A9A7: C9 04     CMP #$04
C - - - - - 0x0129B9 04:A9A9: B0 1A     BCS bra_A9C5
bra_A9AB:
C - - - - - 0x0129BB 04:A9AB: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0129BE 04:A9AE: C9 04     CMP #$04
C - - - - - 0x0129C0 04:A9B0: 90 52     BCC bra_AA04
C - - - - - 0x0129C2 04:A9B2: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0129C5 04:A9B5: 10 07     BPL bra_A9BE
C - - - - - 0x0129C7 04:A9B7: A9 C0     LDA #$C0
C - - - - - 0x0129C9 04:A9B9: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0129CC 04:A9BC: D0 38     BNE bra_A9F6    ; jmp
bra_A9BE:
C - - - - - 0x0129CE 04:A9BE: A9 40     LDA #$40
C - - - - - 0x0129D0 04:A9C0: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0129D3 04:A9C3: D0 31     BNE bra_A9F6    ; jmp
bra_A9C5:
C - - - - - 0x0129D5 04:A9C5: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x0129D8 04:A9C8: 30 E1     BMI bra_A9AB
C - - - - - 0x0129DA 04:A9CA: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0129DD 04:A9CD: C9 30     CMP #$30
C - - - - - 0x0129DF 04:A9CF: 90 12     BCC bra_A9E3
C - - - - - 0x0129E1 04:A9D1: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0129E4 04:A9D4: 10 04     BPL bra_A9DA
C - - - - - 0x0129E6 04:A9D6: 29 7F     AND #$7F
C - - - - - 0x0129E8 04:A9D8: 09 02     ORA #$02
bra_A9DA:
C - - - - - 0x0129EA 04:A9DA: A8        TAY
C - - - - - 0x0129EB 04:A9DB: B9 14 AA  LDA tbl_AA14,Y
C - - - - - 0x0129EE 04:A9DE: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0129F1 04:A9E1: D0 13     BNE bra_A9F6
bra_A9E3:
C - - - - - 0x0129F3 04:A9E3: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0129F6 04:A9E6: 29 01     AND #$01
C - - - - - 0x0129F8 04:A9E8: F0 07     BEQ bra_A9F1
C - - - - - 0x0129FA 04:A9EA: A9 80     LDA #$80
C - - - - - 0x0129FC 04:A9EC: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0129FF 04:A9EF: D0 05     BNE bra_A9F6    ; jmp
bra_A9F1:
C - - - - - 0x012A01 04:A9F1: A9 00     LDA #$00
C - - - - - 0x012A03 04:A9F3: 9D 11 03  STA ram_obj_direction + $02,X
bra_A9F6:
C - - - - - 0x012A06 04:A9F6: B5 45     LDA ram_state + $02,X
C - - - - - 0x012A08 04:A9F8: 29 7F     AND #$7F
C - - - - - 0x012A0A 04:A9FA: C9 01     CMP #con_state_walk
C - - - - - 0x012A0C 04:A9FC: F0 09     BEQ bra_AA07
C - - - - - 0x012A0E 04:A9FE: A9 01     LDA #con_state_walk
C - - - - - 0x012A10 04:AA00: 95 45     STA ram_state + $02,X
C - - - - - 0x012A12 04:AA02: D0 03     BNE bra_AA07    ; jmp
bra_AA04:
C - - - - - 0x012A14 04:AA04: 20 23 B2  JSR sub_B223
bra_AA07:
C - - - - - 0x012A17 04:AA07: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012A1A 04:AA0A: 30 04     BMI bra_AA10
; bzk optimize, JMP
C - - - - - 0x012A1C 04:AA0C: 20 35 B2  JSR sub_B235
C - - - - - 0x012A1F 04:AA0F: 60        RTS
bra_AA10:
; bzk optimize, JMP
C - - - - - 0x012A20 04:AA10: 20 41 B2  JSR sub_B241
C - - - - - 0x012A23 04:AA13: 60        RTS



tbl_AA14:
- D 1 - - - 0x012A24 04:AA14: 20        .byte $20   ; 00 
- D 1 - - - 0x012A25 04:AA15: 60        .byte $60   ; 01 
- D 1 - - - 0x012A26 04:AA16: E0        .byte $E0   ; 02 
- D 1 - - - 0x012A27 04:AA17: A0        .byte $A0   ; 03 



ofs_005_AA18_01:
C - - J - - 0x012A28 04:AA18: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x012A2A 04:AA1A: 10 01     BPL bra_AA1D    ; if not con_004A_flag_knocked_down
- - - - - - 0x012A2C 04:AA1C: 60        RTS
bra_AA1D:
C - - - - - 0x012A2D 04:AA1D: BD 66 04  LDA ram_0464_obj + $02,X
C - - - - - 0x012A30 04:AA20: 0A        ASL
C - - - - - 0x012A31 04:AA21: A8        TAY
C - - - - - 0x012A32 04:AA22: B9 2F AA  LDA tbl_AA2F,Y
C - - - - - 0x012A35 04:AA25: 85 29     STA ram_0029_temp
C - - - - - 0x012A37 04:AA27: B9 30 AA  LDA tbl_AA2F + $01,Y
C - - - - - 0x012A3A 04:AA2A: 85 2A     STA ram_002A_temp
C - - - - - 0x012A3C 04:AA2C: 6C 29 00  JMP (ram_0029_temp)



tbl_AA2F:
- D 1 - - - 0x012A3F 04:AA2F: 39 AA     .word ofs_006_AA39_00
- D 1 - - - 0x012A41 04:AA31: 53 AA     .word ofs_006_AA53_01
- D 1 - - - 0x012A43 04:AA33: 83 AA     .word ofs_006_AA83_02
- D 1 - - - 0x012A45 04:AA35: BF AA     .word ofs_006_AABF_03
- D 1 - - - 0x012A47 04:AA37: FA AA     .word ofs_006_AAFA_04



ofs_006_AA39_00:
C - - J - - 0x012A49 04:AA39: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012A4C 04:AA3C: 29 01     AND #$01
C - - - - - 0x012A4E 04:AA3E: F0 07     BEQ bra_AA47
C - - - - - 0x012A50 04:AA40: A9 00     LDA #$00
C - - - - - 0x012A52 04:AA42: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012A55 04:AA45: F0 05     BEQ bra_AA4C    ; jmp
bra_AA47:
C - - - - - 0x012A57 04:AA47: A9 80     LDA #$80
C - - - - - 0x012A59 04:AA49: 9D 11 03  STA ram_obj_direction + $02,X
bra_AA4C:
C - - - - - 0x012A5C 04:AA4C: A9 01     LDA #con_state_walk
C - - - - - 0x012A5E 04:AA4E: 95 45     STA ram_state + $02,X
C - - - - - 0x012A60 04:AA50: FE 66 04  INC ram_0464_obj + $02,X
loc_AA53:
ofs_006_AA53_01:
C - - - - - 0x012A63 04:AA53: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x012A66 04:AA56: C9 0C     CMP #$0C
C - - - - - 0x012A68 04:AA58: B0 0F     BCS bra_AA69
C - - - - - 0x012A6A 04:AA5A: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012A6D 04:AA5D: 10 09     BPL bra_AA68_RTS
C - - - - - 0x012A6F 04:AA5F: 29 7F     AND #$7F
C - - - - - 0x012A71 04:AA61: C9 02     CMP #$02
C - - - - - 0x012A73 04:AA63: F0 03     BEQ bra_AA68_RTS
; bzk optimize, JMP
C - - - - - 0x012A75 04:AA65: 20 1A B2  JSR sub_B21A
bra_AA68_RTS:
C - - - - - 0x012A78 04:AA68: 60        RTS
bra_AA69:
C - - - - - 0x012A79 04:AA69: A9 00     LDA #$00
C - - - - - 0x012A7B 04:AA6B: 9D 6E 04  STA ram_046E_enemy,X
C - - - - - 0x012A7E 04:AA6E: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012A81 04:AA71: 10 0A     BPL bra_AA7D
C - - - - - 0x012A83 04:AA73: 20 3C B2  JSR sub_B23C
C - - - - - 0x012A86 04:AA76: A9 FF     LDA #$FF
C - - - - - 0x012A88 04:AA78: 9D 6E 04  STA ram_046E_enemy,X
C - - - - - 0x012A8B 04:AA7B: D0 03     BNE bra_AA80    ; jmp
bra_AA7D:
C - - - - - 0x012A8D 04:AA7D: 20 30 B2  JSR sub_B230
bra_AA80:
C - - - - - 0x012A90 04:AA80: FE 66 04  INC ram_0464_obj + $02,X
ofs_006_AA83_02:
C - - - - - 0x012A93 04:AA83: 20 3C B8  JSR sub_B83C
C - - - - - 0x012A96 04:AA86: B0 05     BCS bra_AA8D_RTS
C - - - - - 0x012A98 04:AA88: BD 66 04  LDA ram_0464_obj + $02,X
C - - - - - 0x012A9B 04:AA8B: D0 01     BNE bra_AA8E
bra_AA8D_RTS:
C - - - - - 0x012A9D 04:AA8D: 60        RTS
bra_AA8E:
C - - - - - 0x012A9E 04:AA8E: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012AA1 04:AA91: 10 07     BPL bra_AA9A
C - - - - - 0x012AA3 04:AA93: 20 1A B2  JSR sub_B21A
C - - - - - 0x012AA6 04:AA96: FE 66 04  INC ram_0464_obj + $02,X
C - - - - - 0x012AA9 04:AA99: 60        RTS
bra_AA9A:
C - - - - - 0x012AAA 04:AA9A: BD 6E 04  LDA ram_046E_enemy,X
C - - - - - 0x012AAD 04:AA9D: 30 07     BMI bra_AAA6
C - - - - - 0x012AAF 04:AA9F: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012AB2 04:AAA2: 10 09     BPL bra_AAAD
C - - - - - 0x012AB4 04:AAA4: 30 0F     BMI bra_AAB5    ; jmp
bra_AAA6:
C - - - - - 0x012AB6 04:AAA6: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012AB9 04:AAA9: 30 02     BMI bra_AAAD
C - - - - - 0x012ABB 04:AAAB: 10 08     BPL bra_AAB5    ; jmp
bra_AAAD:
C - - - - - 0x012ABD 04:AAAD: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x012AC0 04:AAB0: C9 20     CMP #$20
C - - - - - 0x012AC2 04:AAB2: B0 5A     BCS bra_AB0E
C - - - - - 0x012AC4 04:AAB4: 60        RTS
bra_AAB5:
C - - - - - 0x012AC5 04:AAB5: B5 65     LDA ram_0063_obj_facing + $02,X
C - - - - - 0x012AC7 04:AAB7: 49 80     EOR #$80
C - - - - - 0x012AC9 04:AAB9: 95 65     STA ram_0063_obj_facing + $02,X
C - - - - - 0x012ACB 04:AABB: FE 66 04  INC ram_0464_obj + $02,X
C - - - - - 0x012ACE 04:AABE: 60        RTS



ofs_006_AABF_03:
C - - J - - 0x012ACF 04:AABF: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012AD2 04:AAC2: 10 18     BPL bra_AADC
C - - - - - 0x012AD4 04:AAC4: 20 1A B2  JSR sub_B21A
C - - - - - 0x012AD7 04:AAC7: A9 00     LDA #$00
C - - - - - 0x012AD9 04:AAC9: 9D 6E 04  STA ram_046E_enemy,X
C - - - - - 0x012ADC 04:AACC: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012ADF 04:AACF: 10 05     BPL bra_AAD6
C - - - - - 0x012AE1 04:AAD1: A9 FF     LDA #$FF
C - - - - - 0x012AE3 04:AAD3: 9D 6E 04  STA ram_046E_enemy,X
bra_AAD6:
C - - - - - 0x012AE6 04:AAD6: A9 02     LDA #$02
C - - - - - 0x012AE8 04:AAD8: 9D 66 04  STA ram_0464_obj + $02,X
C - - - - - 0x012AEB 04:AADB: 60        RTS
bra_AADC:
C - - - - - 0x012AEC 04:AADC: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x012AEF 04:AADF: C9 20     CMP #$20
C - - - - - 0x012AF1 04:AAE1: 90 32     BCC bra_AB15_RTS
C - - - - - 0x012AF3 04:AAE3: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012AF6 04:AAE6: 29 01     AND #$01
C - - - - - 0x012AF8 04:AAE8: F0 07     BEQ bra_AAF1
C - - - - - 0x012AFA 04:AAEA: A9 80     LDA #$80
C - - - - - 0x012AFC 04:AAEC: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012AFF 04:AAEF: D0 05     BNE bra_AAF6    ; jmp
bra_AAF1:
C - - - - - 0x012B01 04:AAF1: A9 00     LDA #$00
C - - - - - 0x012B03 04:AAF3: 9D 11 03  STA ram_obj_direction + $02,X
bra_AAF6:
C - - - - - 0x012B06 04:AAF6: FE 66 04  INC ram_0464_obj + $02,X
C - - - - - 0x012B09 04:AAF9: 60        RTS



ofs_006_AAFA_04:
C - - J - - 0x012B0A 04:AAFA: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012B0D 04:AAFD: 10 08     BPL bra_AB07
- - - - - - 0x012B0F 04:AAFF: A9 01     LDA #$01
- - - - - - 0x012B11 04:AB01: 9D 66 04  STA ram_0464_obj + $02,X
- - - - - - 0x012B14 04:AB04: 4C 53 AA  JMP loc_AA53
bra_AB07:
C - - - - - 0x012B17 04:AB07: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x012B1A 04:AB0A: C9 04     CMP #$04
C - - - - - 0x012B1C 04:AB0C: B0 07     BCS bra_AB15_RTS
bra_AB0E:
C - - - - - 0x012B1E 04:AB0E: A9 00     LDA #$00    ; con_006C_00
C - - - - - 0x012B20 04:AB10: 9D 66 04  STA ram_0464_obj + $02,X
C - - - - - 0x012B23 04:AB13: 95 6C     STA ram_enemy_ai_template,X
bra_AB15_RTS:
C - - - - - 0x012B25 04:AB15: 60        RTS



ofs_005_AB16_02:
C - - J - - 0x012B26 04:AB16: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012B28 04:AB18: 30 20     BMI bra_AB3A
C - - - - - 0x012B2A 04:AB1A: 09 80     ORA #$80
C - - - - - 0x012B2C 04:AB1C: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x012B2E 04:AB1E: A9 00     LDA #$00
C - - - - - 0x012B30 04:AB20: 9D 70 04  STA ram_0470_obj,X
C - - - - - 0x012B33 04:AB23: 9D 72 04  STA ram_0470_obj + $02,X
C - - - - - 0x012B36 04:AB26: A9 01     LDA #con_state_walk
C - - - - - 0x012B38 04:AB28: 95 45     STA ram_state + $02,X
C - - - - - 0x012B3A 04:AB2A: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012B3D 04:AB2D: 10 05     BPL bra_AB34
C - - - - - 0x012B3F 04:AB2F: 20 41 B2  JSR sub_B241
C - - - - - 0x012B42 04:AB32: D0 03     BNE bra_AB37
bra_AB34:
C - - - - - 0x012B44 04:AB34: 20 35 B2  JSR sub_B235
bra_AB37:
C - - - - - 0x012B47 04:AB37: 20 32 B4  JSR sub_B432
bra_AB3A:
C - - - - - 0x012B4A 04:AB3A: BD 70 04  LDA ram_0470_obj,X
C - - - - - 0x012B4D 04:AB3D: 0A        ASL
C - - - - - 0x012B4E 04:AB3E: A8        TAY
C - - - - - 0x012B4F 04:AB3F: B9 4C AB  LDA tbl_AB4C,Y
C - - - - - 0x012B52 04:AB42: 85 29     STA ram_0029_temp
C - - - - - 0x012B54 04:AB44: B9 4D AB  LDA tbl_AB4C + $01,Y
C - - - - - 0x012B57 04:AB47: 85 2A     STA ram_002A_temp
C - - - - - 0x012B59 04:AB49: 6C 29 00  JMP (ram_0029_temp)



tbl_AB4C:
- D 1 - - - 0x012B5C 04:AB4C: 5E AB     .word ofs_007_AB5E_00
- D 1 - - - 0x012B5E 04:AB4E: 0A AC     .word ofs_007_AC0A_01
- D 1 - - - 0x012B60 04:AB50: F2 AC     .word ofs_007_ACF2_02
- D 1 - - - 0x012B62 04:AB52: F2 AC     .word ofs_007_ACF2_03
- D 1 - - - 0x012B64 04:AB54: CD AD     .word ofs_007_ADCD_04
- - - - - - 0x012B66 04:AB56: 78 AE     .word ofs_007_AE78_05
- D 1 - - - 0x012B68 04:AB58: 78 AE     .word ofs_007_AE78_06
- D 1 - - - 0x012B6A 04:AB5A: E9 AE     .word ofs_007_AEE9_07
- D 1 - - - 0x012B6C 04:AB5C: FD AE     .word ofs_007_AEFD_08



ofs_007_AB5E_00:
C - - J - - 0x012B6E 04:AB5E: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x012B70 04:AB60: C9 06     CMP #$06
C - - - - - 0x012B72 04:AB62: 90 0C     BCC bra_AB70
C - - - - - 0x012B74 04:AB64: C9 0A     CMP #$0A
C - - - - - 0x012B76 04:AB66: B0 08     BCS bra_AB70
; if bosses or green ninja
; con_obj_bolo
; con_obj_burnov
; con_obj_abore
; con_obj_chin_taimei
- - - - - - 0x012B78 04:AB68: A9 07     LDA #$07
- - - - - - 0x012B7A 04:AB6A: 9D 70 04  STA ram_0470_obj,X
- - - - - - 0x012B7D 04:AB6D: 4C E9 AE  JMP loc_AEE9
bra_AB70:
C - - - - - 0x012B80 04:AB70: BD 72 04  LDA ram_0470_obj + $02,X
C - - - - - 0x012B83 04:AB73: F0 06     BEQ bra_AB7B
C - - - - - 0x012B85 04:AB75: C9 01     CMP #$01
C - - - - - 0x012B87 04:AB77: F0 2F     BEQ bra_ABA8
C - - - - - 0x012B89 04:AB79: D0 3A     BNE bra_ABB5
bra_AB7B:
C - - - - - 0x012B8B 04:AB7B: BD 74 04  LDA ram_0474_enemy,X
C - - - - - 0x012B8E 04:AB7E: 38        SEC
C - - - - - 0x012B8F 04:AB7F: F5 79     SBC ram_obj_pos_X_lo + $02,X
C - - - - - 0x012B91 04:AB81: 85 29     STA ram_0029_temp
C - - - - - 0x012B93 04:AB83: BD 76 04  LDA ram_0476_obj,X
C - - - - - 0x012B96 04:AB86: F5 82     SBC ram_obj_pos_X_hi + $02,X
C - - - - - 0x012B98 04:AB88: 85 2A     STA ram_002A_temp
C - - - - - 0x012B9A 04:AB8A: B0 0A     BCS bra_AB96
C - - - - - 0x012B9C 04:AB8C: 20 60 B2  JSR sub_B260
C - - - - - 0x012B9F 04:AB8F: A9 C0     LDA #$C0
C - - - - - 0x012BA1 04:AB91: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012BA4 04:AB94: D0 05     BNE bra_AB9B
bra_AB96:
C - - - - - 0x012BA6 04:AB96: A9 40     LDA #$40
C - - - - - 0x012BA8 04:AB98: 9D 11 03  STA ram_obj_direction + $02,X
bra_AB9B:
C - - - - - 0x012BAB 04:AB9B: A5 2A     LDA ram_002A_temp
C - - - - - 0x012BAD 04:AB9D: D0 6A     BNE bra_AC09_RTS
C - - - - - 0x012BAF 04:AB9F: A5 29     LDA ram_0029_temp
C - - - - - 0x012BB1 04:ABA1: C9 08     CMP #$08
C - - - - - 0x012BB3 04:ABA3: B0 64     BCS bra_AC09_RTS
C - - - - - 0x012BB5 04:ABA5: FE 72 04  INC ram_0470_obj + $02,X
bra_ABA8:
C - - - - - 0x012BB8 04:ABA8: A9 00     LDA #$00
C - - - - - 0x012BBA 04:ABAA: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012BBD 04:ABAD: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012BC0 04:ABB0: 10 57     BPL bra_AC09_RTS
C - - - - - 0x012BC2 04:ABB2: FE 72 04  INC ram_0470_obj + $02,X
bra_ABB5:
C - - - - - 0x012BC5 04:ABB5: 8A        TXA
C - - - - - 0x012BC6 04:ABB6: 49 01     EOR #$01
C - - - - - 0x012BC8 04:ABB8: A8        TAY
C - - - - - 0x012BC9 04:ABB9: B9 3E 00  LDA a: ram_003C_obj_flags + $02,Y
C - - - - - 0x012BCC 04:ABBC: 10 23     BPL bra_ABE1    ; if not con_003C_flag_exist
C - - - - - 0x012BCE 04:ABBE: B9 6B 03  LDA ram_0369_obj + $02,Y
C - - - - - 0x012BD1 04:ABC1: 10 1E     BPL bra_ABE1
C - - - - - 0x012BD3 04:ABC3: B9 11 03  LDA ram_obj_direction + $02,Y
C - - - - - 0x012BD6 04:ABC6: D0 19     BNE bra_ABE1
C - - - - - 0x012BD8 04:ABC8: B9 AF 00  LDA a: ram_obj_pos_Z_lo + $02,Y
C - - - - - 0x012BDB 04:ABCB: 38        SEC
C - - - - - 0x012BDC 04:ABCC: F5 AF     SBC ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012BDE 04:ABCE: 85 29     STA ram_0029_temp
C - - - - - 0x012BE0 04:ABD0: B9 B8 00  LDA a: ram_obj_pos_Z_hi + $02,Y
C - - - - - 0x012BE3 04:ABD3: F5 B8     SBC ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012BE5 04:ABD5: 85 2A     STA ram_002A_temp
C - - - - - 0x012BE7 04:ABD7: A5 29     LDA ram_0029_temp
C - - - - - 0x012BE9 04:ABD9: C9 28     CMP #$28
C - - - - - 0x012BEB 04:ABDB: B0 04     BCS bra_ABE1
; bzk optimize, JMP
C - - - - - 0x012BED 04:ABDD: 20 23 B2  JSR sub_B223
C - - - - - 0x012BF0 04:ABE0: 60        RTS
bra_ABE1:
C - - - - - 0x012BF1 04:ABE1: A9 04     LDA #con_state_ladder_climb_idle
C - - - - - 0x012BF3 04:ABE3: 95 45     STA ram_state + $02,X
C - - - - - 0x012BF5 04:ABE5: B5 AF     LDA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012BF7 04:ABE7: 18        CLC
C - - - - - 0x012BF8 04:ABE8: 69 04     ADC #< $0004
C - - - - - 0x012BFA 04:ABEA: 95 AF     STA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012BFC 04:ABEC: B5 B8     LDA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012BFE 04:ABEE: 69 00     ADC #> $0004
C - - - - - 0x012C00 04:ABF0: 95 B8     STA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012C02 04:ABF2: BD 74 04  LDA ram_0474_enemy,X
C - - - - - 0x012C05 04:ABF5: 95 79     STA ram_obj_pos_X_lo + $02,X
C - - - - - 0x012C07 04:ABF7: BD 76 04  LDA ram_0476_obj,X
C - - - - - 0x012C0A 04:ABFA: 95 82     STA ram_obj_pos_X_hi + $02,X
C - - - - - 0x012C0C 04:ABFC: BD 78 04  LDA ram_0476_obj + $02,X
C - - - - - 0x012C0F 04:ABFF: 09 80     ORA #$80
C - - - - - 0x012C11 04:AC01: 9D 6B 03  STA ram_0369_obj + $02,X
C - - - - - 0x012C14 04:AC04: A9 06     LDA #$06
C - - - - - 0x012C16 04:AC06: 9D 70 04  STA ram_0470_obj,X
bra_AC09_RTS:
C - - - - - 0x012C19 04:AC09: 60        RTS



ofs_007_AC0A_01:
C - - J - - 0x012C1A 04:AC0A: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x012C1C 04:AC0C: C9 06     CMP #$06
C - - - - - 0x012C1E 04:AC0E: 90 0C     BCC bra_AC1C
C - - - - - 0x012C20 04:AC10: C9 0A     CMP #$0A
C - - - - - 0x012C22 04:AC12: B0 08     BCS bra_AC1C
; if bosses or green ninja
; con_obj_bolo
; con_obj_burnov
; con_obj_abore
; con_obj_chin_taimei
- - - - - - 0x012C24 04:AC14: A9 07     LDA #$07
- - - - - - 0x012C26 04:AC16: 9D 70 04  STA ram_0470_obj,X
- - - - - - 0x012C29 04:AC19: 4C E9 AE  JMP loc_AEE9
bra_AC1C:
C - - - - - 0x012C2C 04:AC1C: BD 72 04  LDA ram_0470_obj + $02,X
C - - - - - 0x012C2F 04:AC1F: F0 06     BEQ bra_AC27
C - - - - - 0x012C31 04:AC21: C9 01     CMP #$01
C - - - - - 0x012C33 04:AC23: F0 2F     BEQ bra_AC54
C - - - - - 0x012C35 04:AC25: D0 5A     BNE bra_AC81    ; jmp
bra_AC27:
C - - - - - 0x012C37 04:AC27: BD 74 04  LDA ram_0474_enemy,X
C - - - - - 0x012C3A 04:AC2A: 38        SEC
C - - - - - 0x012C3B 04:AC2B: F5 79     SBC ram_obj_pos_X_lo + $02,X
C - - - - - 0x012C3D 04:AC2D: 85 29     STA ram_0029_temp
C - - - - - 0x012C3F 04:AC2F: BD 76 04  LDA ram_0476_obj,X
C - - - - - 0x012C42 04:AC32: F5 82     SBC ram_obj_pos_X_hi + $02,X
C - - - - - 0x012C44 04:AC34: 85 2A     STA ram_002A_temp
C - - - - - 0x012C46 04:AC36: B0 0A     BCS bra_AC42
C - - - - - 0x012C48 04:AC38: 20 60 B2  JSR sub_B260
C - - - - - 0x012C4B 04:AC3B: A9 C0     LDA #$C0
C - - - - - 0x012C4D 04:AC3D: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012C50 04:AC40: D0 05     BNE bra_AC47    ; jmp
bra_AC42:
C - - - - - 0x012C52 04:AC42: A9 40     LDA #$40
C - - - - - 0x012C54 04:AC44: 9D 11 03  STA ram_obj_direction + $02,X
bra_AC47:
C - - - - - 0x012C57 04:AC47: A5 2A     LDA ram_002A_temp
C - - - - - 0x012C59 04:AC49: D0 1D     BNE bra_AC68_RTS
C - - - - - 0x012C5B 04:AC4B: A5 29     LDA ram_0029_temp
C - - - - - 0x012C5D 04:AC4D: C9 08     CMP #$08
C - - - - - 0x012C5F 04:AC4F: B0 17     BCS bra_AC68_RTS
C - - - - - 0x012C61 04:AC51: FE 72 04  INC ram_0470_obj + $02,X
bra_AC54:
C - - - - - 0x012C64 04:AC54: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x012C67 04:AC57: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x012C6A 04:AC5A: DD 5B 03  CMP ram_0359_obj + $02,X
C - - - - - 0x012C6D 04:AC5D: D0 0A     BNE bra_AC69
C - - - - - 0x012C6F 04:AC5F: B9 69 03  LDA ram_0369_obj,Y
C - - - - - 0x012C72 04:AC62: 30 05     BMI bra_AC69
C - - - - - 0x012C74 04:AC64: A9 00     LDA #con_006C_00
C - - - - - 0x012C76 04:AC66: 95 6C     STA ram_enemy_ai_template,X
bra_AC68_RTS:
C - - - - - 0x012C78 04:AC68: 60        RTS
bra_AC69:
C - - - - - 0x012C79 04:AC69: A9 80     LDA #$80
C - - - - - 0x012C7B 04:AC6B: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012C7E 04:AC6E: BD 63 03  LDA ram_0361_obj + $02,X
C - - - - - 0x012C81 04:AC71: 10 0B     BPL bra_AC7E
C - - - - - 0x012C83 04:AC73: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012C86 04:AC76: 10 79     BPL bra_ACF1_RTS
C - - - - - 0x012C88 04:AC78: 29 7F     AND #$7F
C - - - - - 0x012C8A 04:AC7A: C9 02     CMP #$02
C - - - - - 0x012C8C 04:AC7C: D0 73     BNE bra_ACF1_RTS
bra_AC7E:
C - - - - - 0x012C8E 04:AC7E: FE 72 04  INC ram_0470_obj + $02,X
bra_AC81:
C - - - - - 0x012C91 04:AC81: 8A        TXA
C - - - - - 0x012C92 04:AC82: 49 01     EOR #$01
C - - - - - 0x012C94 04:AC84: A8        TAY
C - - - - - 0x012C95 04:AC85: B9 3E 00  LDA a: ram_003C_obj_flags + $02,Y
C - - - - - 0x012C98 04:AC88: 10 24     BPL bra_ACAE    ; if not con_003C_flag_exist
C - - - - - 0x012C9A 04:AC8A: B9 6B 03  LDA ram_0369_obj + $02,Y
C - - - - - 0x012C9D 04:AC8D: 10 1F     BPL bra_ACAE
C - - - - - 0x012C9F 04:AC8F: B9 11 03  LDA ram_obj_direction + $02,Y
C - - - - - 0x012CA2 04:AC92: F0 1A     BEQ bra_ACAE
C - - - - - 0x012CA4 04:AC94: B5 AF     LDA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012CA6 04:AC96: 38        SEC
C - - - - - 0x012CA7 04:AC97: F9 AF 00  SBC a: ram_obj_pos_Z_lo + $02,Y
C - - - - - 0x012CAA 04:AC9A: 85 29     STA ram_0029_temp
C - - - - - 0x012CAC 04:AC9C: B5 B8     LDA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012CAE 04:AC9E: F9 B8 00  SBC a: ram_obj_pos_Z_hi + $02,Y
C - - - - - 0x012CB1 04:ACA1: 85 2A     STA ram_002A_temp
C - - - - - 0x012CB3 04:ACA3: A5 29     LDA ram_0029_temp
C - - - - - 0x012CB5 04:ACA5: C9 28     CMP #$28
C - - - - - 0x012CB7 04:ACA7: B0 05     BCS bra_ACAE
C - - - - - 0x012CB9 04:ACA9: A9 4B     LDA #con_state_4B
C - - - - - 0x012CBB 04:ACAB: 95 45     STA ram_state + $02,X
C - - - - - 0x012CBD 04:ACAD: 60        RTS
bra_ACAE:
C - - - - - 0x012CBE 04:ACAE: A9 04     LDA #con_state_ladder_climb_idle
C - - - - - 0x012CC0 04:ACB0: 95 45     STA ram_state + $02,X
C - - - - - 0x012CC2 04:ACB2: B5 AF     LDA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012CC4 04:ACB4: 38        SEC
C - - - - - 0x012CC5 04:ACB5: E9 0A     SBC #< $000A
C - - - - - 0x012CC7 04:ACB7: 95 AF     STA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012CC9 04:ACB9: B5 B8     LDA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012CCB 04:ACBB: E9 00     SBC #> $000A
C - - - - - 0x012CCD 04:ACBD: 95 B8     STA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012CCF 04:ACBF: BD 74 04  LDA ram_0474_enemy,X
C - - - - - 0x012CD2 04:ACC2: 95 79     STA ram_obj_pos_X_lo + $02,X
C - - - - - 0x012CD4 04:ACC4: BD 76 04  LDA ram_0476_obj,X
C - - - - - 0x012CD7 04:ACC7: 95 82     STA ram_obj_pos_X_hi + $02,X
C - - - - - 0x012CD9 04:ACC9: BD 78 04  LDA ram_0476_obj + $02,X
C - - - - - 0x012CDC 04:ACCC: 09 80     ORA #$80
C - - - - - 0x012CDE 04:ACCE: 9D 6B 03  STA ram_0369_obj + $02,X
C - - - - - 0x012CE1 04:ACD1: 29 7F     AND #$7F
C - - - - - 0x012CE3 04:ACD3: 0A        ASL
C - - - - - 0x012CE4 04:ACD4: A8        TAY
C - - - - - 0x012CE5 04:ACD5: B9 34 A1  LDA tbl_A134,Y
C - - - - - 0x012CE8 04:ACD8: 85 29     STA ram_0029_temp
C - - - - - 0x012CEA 04:ACDA: B9 35 A1  LDA tbl_A134 + $01,Y
C - - - - - 0x012CED 04:ACDD: 85 2A     STA ram_002A_temp
C - - - - - 0x012CEF 04:ACDF: A0 06     LDY #$06
C - - - - - 0x012CF1 04:ACE1: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x012CF3 04:ACE3: 9D 5B 03  STA ram_0359_obj + $02,X
C - - - - - 0x012CF6 04:ACE6: C8        INY ; 07
C - - - - - 0x012CF7 04:ACE7: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x012CF9 04:ACE9: 9D 63 03  STA ram_0361_obj + $02,X
C - - - - - 0x012CFC 04:ACEC: A9 06     LDA #$06
C - - - - - 0x012CFE 04:ACEE: 9D 70 04  STA ram_0470_obj,X
bra_ACF1_RTS:
C - - - - - 0x012D01 04:ACF1: 60        RTS



ofs_007_ACF2_02:
ofs_007_ACF2_03:
C - - J - - 0x012D02 04:ACF2: BD 72 04  LDA ram_0470_obj + $02,X
C - - - - - 0x012D05 04:ACF5: F0 07     BEQ bra_ACFE
C - - - - - 0x012D07 04:ACF7: C9 01     CMP #$01
C - - - - - 0x012D09 04:ACF9: F0 54     BEQ bra_AD4F
C - - - - - 0x012D0B 04:ACFB: 4C 90 AD  JMP loc_AD90
bra_ACFE:
C - - - - - 0x012D0E 04:ACFE: 20 93 AD  JSR sub_AD93
C - - - - - 0x012D11 04:AD01: B0 EE     BCS bra_ACF1_RTS
C - - - - - 0x012D13 04:AD03: BD 74 04  LDA ram_0474_enemy,X
C - - - - - 0x012D16 04:AD06: 38        SEC
C - - - - - 0x012D17 04:AD07: F5 94     SBC ram_obj_pos_Y_lo + $02,X
C - - - - - 0x012D19 04:AD09: 85 29     STA ram_0029_temp
C - - - - - 0x012D1B 04:AD0B: BD 76 04  LDA ram_0476_obj,X
C - - - - - 0x012D1E 04:AD0E: F5 9D     SBC ram_obj_pos_Y_hi + $02,X
C - - - - - 0x012D20 04:AD10: 85 2A     STA ram_002A_temp
C - - - - - 0x012D22 04:AD12: B0 0A     BCS bra_AD1E
C - - - - - 0x012D24 04:AD14: 20 60 B2  JSR sub_B260
C - - - - - 0x012D27 04:AD17: A9 80     LDA #$80
C - - - - - 0x012D29 04:AD19: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012D2C 04:AD1C: D0 05     BNE bra_AD23
bra_AD1E:
C - - - - - 0x012D2E 04:AD1E: A9 00     LDA #$00
C - - - - - 0x012D30 04:AD20: 9D 11 03  STA ram_obj_direction + $02,X
bra_AD23:
C - - - - - 0x012D33 04:AD23: A5 29     LDA ram_0029_temp
C - - - - - 0x012D35 04:AD25: C9 08     CMP #$08
C - - - - - 0x012D37 04:AD27: 90 15     BCC bra_AD3E
C - - - - - 0x012D39 04:AD29: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012D3C 04:AD2C: 10 C3     BPL bra_ACF1_RTS
C - - - - - 0x012D3E 04:AD2E: B5 65     LDA ram_0063_obj_facing + $02,X
C - - - - - 0x012D40 04:AD30: 10 07     BPL bra_AD39
- - - - - - 0x012D42 04:AD32: A9 C0     LDA #$C0
- - - - - - 0x012D44 04:AD34: 9D 11 03  STA ram_obj_direction + $02,X
- - - - - - 0x012D47 04:AD37: D0 05     BNE bra_AD3E
bra_AD39:
C - - - - - 0x012D49 04:AD39: A9 40     LDA #$40
C - - - - - 0x012D4B 04:AD3B: 9D 11 03  STA ram_obj_direction + $02,X
bra_AD3E:
C - - - - - 0x012D4E 04:AD3E: BD 78 04  LDA ram_0476_obj + $02,X
C - - - - - 0x012D51 04:AD41: 30 06     BMI bra_AD49
C - - - - - 0x012D53 04:AD43: 20 30 B2  JSR sub_B230
C - - - - - 0x012D56 04:AD46: 4C 4C AD  JMP loc_AD4C
bra_AD49:
C - - - - - 0x012D59 04:AD49: 20 3C B2  JSR sub_B23C
loc_AD4C:
C D 1 - - - 0x012D5C 04:AD4C: FE 72 04  INC ram_0470_obj + $02,X
bra_AD4F:
C - - - - - 0x012D5F 04:AD4F: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012D62 04:AD52: 10 3B     BPL bra_AD8F_RTS
C - - - - - 0x012D64 04:AD54: 29 7F     AND #$7F
C - - - - - 0x012D66 04:AD56: C9 02     CMP #$02
C - - - - - 0x012D68 04:AD58: F0 04     BEQ bra_AD5E
C - - - - - 0x012D6A 04:AD5A: C9 01     CMP #$01
C - - - - - 0x012D6C 04:AD5C: D0 31     BNE bra_AD8F_RTS
bra_AD5E:
C - - - - - 0x012D6E 04:AD5E: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x012D70 04:AD60: C9 04     CMP #con_obj_linda
C - - - - - 0x012D72 04:AD62: F0 24     BEQ bra_AD88
C - - - - - 0x012D74 04:AD64: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x012D77 04:AD67: C9 08     CMP #$08
C - - - - - 0x012D79 04:AD69: B0 1D     BCS bra_AD88
C - - - - - 0x012D7B 04:AD6B: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x012D7D 04:AD6D: C9 09     CMP #con_obj_chin_taimei
C - - - - - 0x012D7F 04:AD6F: F0 11     BEQ bra_AD82
C - - - - - 0x012D81 04:AD71: BD 63 03  LDA ram_0361_obj + $02,X
C - - - - - 0x012D84 04:AD74: 30 06     BMI bra_AD7C
C - - - - - 0x012D86 04:AD76: A9 09     LDA #con_state_jump_foward_enemy
C - - - - - 0x012D88 04:AD78: 95 45     STA ram_state + $02,X
C - - - - - 0x012D8A 04:AD7A: D0 10     BNE bra_AD8C    ; jmp
bra_AD7C:
- - - - - - 0x012D8C 04:AD7C: A9 38     LDA #con_state_38
- - - - - - 0x012D8E 04:AD7E: 95 45     STA ram_state + $02,X
- - - - - - 0x012D90 04:AD80: D0 0A     BNE bra_AD8C    ; jmp
bra_AD82:
C - - - - - 0x012D92 04:AD82: A9 48     LDA #con_state_48
C - - - - - 0x012D94 04:AD84: 95 45     STA ram_state + $02,X
C - - - - - 0x012D96 04:AD86: D0 04     BNE bra_AD8C    ; jmp
bra_AD88:
C - - - - - 0x012D98 04:AD88: A9 08     LDA #con_state_jump_foward_player
C - - - - - 0x012D9A 04:AD8A: 95 45     STA ram_state + $02,X
bra_AD8C:
C - - - - - 0x012D9C 04:AD8C: FE 72 04  INC ram_0470_obj + $02,X
bra_AD8F_RTS:
C - - - - - 0x012D9F 04:AD8F: 60        RTS



loc_AD90:
; bzk optimize
C D 1 - - - 0x012DA0 04:AD90: 4C 6F AE  JMP loc_AE6F



sub_AD93:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x012DA3 04:AD93: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x012DA6 04:AD96: C9 05     CMP #con_mission_Forest_of_Death
C - - - - - 0x012DA8 04:AD98: D0 31     BNE bra_ADCB
C - - - - - 0x012DAA 04:AD9A: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x012DAD 04:AD9D: C9 06     CMP #con_0359_06
C - - - - - 0x012DAF 04:AD9F: D0 2A     BNE bra_ADCB
- - - - - - 0x012DB1 04:ADA1: B5 94     LDA ram_obj_pos_Y_lo + $02,X
- - - - - - 0x012DB3 04:ADA3: C9 41     CMP #$41
- - - - - - 0x012DB5 04:ADA5: B0 24     BCS bra_ADCB
- - - - - - 0x012DB7 04:ADA7: A9 C0     LDA #$C0
- - - - - - 0x012DB9 04:ADA9: 9D 11 03  STA ram_obj_direction + $02,X
- - - - - - 0x012DBC 04:ADAC: B5 79     LDA ram_obj_pos_X_lo + $02,X
- - - - - - 0x012DBE 04:ADAE: 38        SEC
- - - - - - 0x012DBF 04:ADAF: E9 70     SBC #$70
- - - - - - 0x012DC1 04:ADB1: 85 19     STA ram_0019_t22
- - - - - - 0x012DC3 04:ADB3: B0 0E     BCS bra_ADC3
- - - - - - 0x012DC5 04:ADB5: A5 19     LDA ram_0019_t22
- - - - - - 0x012DC7 04:ADB7: 49 FF     EOR #$FF
- - - - - - 0x012DC9 04:ADB9: 18        CLC
- - - - - - 0x012DCA 04:ADBA: 69 01     ADC #$01
- - - - - - 0x012DCC 04:ADBC: 85 19     STA ram_0019_t22
- - - - - - 0x012DCE 04:ADBE: A9 40     LDA #$40
- - - - - - 0x012DD0 04:ADC0: 9D 11 03  STA ram_obj_direction + $02,X
bra_ADC3:
- - - - - - 0x012DD3 04:ADC3: A5 19     LDA ram_0019_t22
- - - - - - 0x012DD5 04:ADC5: C9 04     CMP #$04
- - - - - - 0x012DD7 04:ADC7: 90 02     BCC bra_ADCB
- - - - - - 0x012DD9 04:ADC9: 38        SEC
- - - - - - 0x012DDA 04:ADCA: 60        RTS
bra_ADCB:
C - - - - - 0x012DDB 04:ADCB: 18        CLC
C - - - - - 0x012DDC 04:ADCC: 60        RTS



ofs_007_ADCD_04:
C - - J - - 0x012DDD 04:ADCD: BD 72 04  LDA ram_0470_obj + $02,X
C - - - - - 0x012DE0 04:ADD0: F0 0B     BEQ bra_ADDD
C - - - - - 0x012DE2 04:ADD2: C9 01     CMP #$01
C - - - - - 0x012DE4 04:ADD4: F0 18     BEQ bra_ADEE
C - - - - - 0x012DE6 04:ADD6: C9 02     CMP #$02
C - - - - - 0x012DE8 04:ADD8: F0 5C     BEQ bra_AE36
C - - - - - 0x012DEA 04:ADDA: 4C 6F AE  JMP loc_AE6F
bra_ADDD:
C - - - - - 0x012DED 04:ADDD: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012DF0 04:ADE0: 30 06     BMI bra_ADE8
C - - - - - 0x012DF2 04:ADE2: 20 30 B2  JSR sub_B230
C - - - - - 0x012DF5 04:ADE5: 4C EB AD  JMP loc_ADEB
bra_ADE8:
C - - - - - 0x012DF8 04:ADE8: 20 3C B2  JSR sub_B23C
loc_ADEB:
C D 1 - - - 0x012DFB 04:ADEB: FE 72 04  INC ram_0470_obj + $02,X
bra_ADEE:
C - - - - - 0x012DFE 04:ADEE: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012E01 04:ADF1: 10 21     BPL bra_AE14
C - - - - - 0x012E03 04:ADF3: 29 7F     AND #$7F
C - - - - - 0x012E05 04:ADF5: C9 02     CMP #$02
C - - - - - 0x012E07 04:ADF7: F0 07     BEQ bra_AE00
C - - - - - 0x012E09 04:ADF9: BD 63 03  LDA ram_0361_obj + $02,X
C - - - - - 0x012E0C 04:ADFC: 10 79     BPL bra_AE77_RTS
C - - - - - 0x012E0E 04:ADFE: 30 20     BMI bra_AE20    ; jmp
bra_AE00:
C - - - - - 0x012E10 04:AE00: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x012E12 04:AE02: C9 08     CMP #con_obj_abore
C - - - - - 0x012E14 04:AE04: D0 04     BNE bra_AE0A
C - - - - - 0x012E16 04:AE06: A9 08     LDA #con_state_jump_foward_player
C - - - - - 0x012E18 04:AE08: D0 02     BNE bra_AE0C    ; jmp
bra_AE0A:
C - - - - - 0x012E1A 04:AE0A: A9 07     LDA #con_state_fall_from_platform
bra_AE0C:
C - - - - - 0x012E1C 04:AE0C: 95 45     STA ram_state + $02,X
C - - - - - 0x012E1E 04:AE0E: A9 03     LDA #$03
C - - - - - 0x012E20 04:AE10: 9D 72 04  STA ram_0470_obj + $02,X
C - - - - - 0x012E23 04:AE13: 60        RTS
bra_AE14:
C - - - - - 0x012E24 04:AE14: BD 63 03  LDA ram_0361_obj + $02,X
C - - - - - 0x012E27 04:AE17: 10 5E     BPL bra_AE77_RTS
C - - - - - 0x012E29 04:AE19: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x012E2C 04:AE1C: C9 12     CMP #$12
C - - - - - 0x012E2E 04:AE1E: B0 57     BCS bra_AE77_RTS
bra_AE20:
C - - - - - 0x012E30 04:AE20: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x012E33 04:AE23: 29 01     AND #$01
C - - - - - 0x012E35 04:AE25: F0 07     BEQ bra_AE2E
C - - - - - 0x012E37 04:AE27: A9 80     LDA #$80
C - - - - - 0x012E39 04:AE29: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012E3C 04:AE2C: D0 05     BNE bra_AE33    ; jmp
bra_AE2E:
C - - - - - 0x012E3E 04:AE2E: A9 00     LDA #$00
C - - - - - 0x012E40 04:AE30: 9D 11 03  STA ram_obj_direction + $02,X
bra_AE33:
C - - - - - 0x012E43 04:AE33: FE 72 04  INC ram_0470_obj + $02,X
bra_AE36:
C - - - - - 0x012E46 04:AE36: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x012E49 04:AE39: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x012E4C 04:AE3C: DD 5B 03  CMP ram_0359_obj + $02,X
C - - - - - 0x012E4F 04:AE3F: D0 07     BNE bra_AE48
C - - - - - 0x012E51 04:AE41: B9 69 03  LDA ram_0369_obj,Y
C - - - - - 0x012E54 04:AE44: 30 02     BMI bra_AE48
C - - - - - 0x012E56 04:AE46: 10 2B     BPL bra_AE73
bra_AE48:
C - - - - - 0x012E58 04:AE48: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012E5B 04:AE4B: 10 2A     BPL bra_AE77_RTS
C - - - - - 0x012E5D 04:AE4D: 29 7F     AND #$7F
C - - - - - 0x012E5F 04:AE4F: C9 02     CMP #$02
C - - - - - 0x012E61 04:AE51: F0 01     BEQ bra_AE54
C - - - - - 0x012E63 04:AE53: 60        RTS
bra_AE54:
C - - - - - 0x012E64 04:AE54: A9 07     LDA #con_state_fall_from_platform
C - - - - - 0x012E66 04:AE56: 95 45     STA ram_state + $02,X
C - - - - - 0x012E68 04:AE58: FE 72 04  INC ram_0470_obj + $02,X
C - - - - - 0x012E6B 04:AE5B: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x012E6E 04:AE5E: C9 0B     CMP #con_mission_Trap_Room_pt5
C - - - - - 0x012E70 04:AE60: D0 15     BNE bra_AE77_RTS
C - - - - - 0x012E72 04:AE62: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x012E75 04:AE65: C9 01     CMP #con_0359_01
C - - - - - 0x012E77 04:AE67: D0 0E     BNE bra_AE77_RTS
- - - - - - 0x012E79 04:AE69: A9 C0     LDA #$C0
- - - - - - 0x012E7B 04:AE6B: 9D 11 03  STA ram_obj_direction + $02,X
- - - - - - 0x012E7E 04:AE6E: 60        RTS



loc_AE6F:
C D 1 - - - 0x012E7F 04:AE6F: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x012E81 04:AE71: 30 04     BMI bra_AE77_RTS    ; if con_004A_flag_knocked_down
bra_AE73:
C - - - - - 0x012E83 04:AE73: A9 00     LDA #con_006C_00
C - - - - - 0x012E85 04:AE75: 95 6C     STA ram_enemy_ai_template,X
bra_AE77_RTS:
C - - - - - 0x012E87 04:AE77: 60        RTS



ofs_007_AE78_05:
ofs_007_AE78_06:
C - - J - - 0x012E88 04:AE78: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x012E8B 04:AE7B: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x012E8E 04:AE7E: DD 5B 03  CMP ram_0359_obj + $02,X
C - - - - - 0x012E91 04:AE81: D0 05     BNE bra_AE88
C - - - - - 0x012E93 04:AE83: B9 69 03  LDA ram_0369_obj,Y
C - - - - - 0x012E96 04:AE86: 10 40     BPL bra_AEC8
bra_AE88:
C - - - - - 0x012E98 04:AE88: B5 AF     LDA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x012E9A 04:AE8A: 38        SEC
C - - - - - 0x012E9B 04:AE8B: F9 AD 00  SBC a: ram_obj_pos_Z_lo,Y
C - - - - - 0x012E9E 04:AE8E: 85 29     STA ram_0029_temp
C - - - - - 0x012EA0 04:AE90: B5 B8     LDA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x012EA2 04:AE92: F9 B6 00  SBC a: ram_obj_pos_Z_hi,Y
C - - - - - 0x012EA5 04:AE95: 85 2A     STA ram_002A_temp
C - - - - - 0x012EA7 04:AE97: B0 23     BCS bra_AEBC
C - - - - - 0x012EA9 04:AE99: B9 69 03  LDA ram_0369_obj,Y
C - - - - - 0x012EAC 04:AE9C: 10 07     BPL bra_AEA5
C - - - - - 0x012EAE 04:AE9E: BD 5C 04  LDA ram_045C_enemy,X
C - - - - - 0x012EB1 04:AEA1: C9 1C     CMP #$1C
C - - - - - 0x012EB3 04:AEA3: 90 3A     BCC bra_AEDF
bra_AEA5:
C - - - - - 0x012EB5 04:AEA5: BD 6B 03  LDA ram_0369_obj + $02,X
C - - - - - 0x012EB8 04:AEA8: 10 3A     BPL bra_AEE4
C - - - - - 0x012EBA 04:AEAA: A9 00     LDA #$00
C - - - - - 0x012EBC 04:AEAC: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012EBF 04:AEAF: B5 45     LDA ram_state + $02,X
C - - - - - 0x012EC1 04:AEB1: 29 7F     AND #$7F
C - - - - - 0x012EC3 04:AEB3: C9 03     CMP #con_state_ladder_climb_up
C - - - - - 0x012EC5 04:AEB5: F0 31     BEQ bra_AEE8_RTS
C - - - - - 0x012EC7 04:AEB7: A9 03     LDA #con_state_ladder_climb_up
C - - - - - 0x012EC9 04:AEB9: 95 45     STA ram_state + $02,X
C - - - - - 0x012ECB 04:AEBB: 60        RTS
bra_AEBC:
C - - - - - 0x012ECC 04:AEBC: B9 69 03  LDA ram_0369_obj,Y
C - - - - - 0x012ECF 04:AEBF: 10 07     BPL bra_AEC8
C - - - - - 0x012ED1 04:AEC1: BD 5C 04  LDA ram_045C_enemy,X
C - - - - - 0x012ED4 04:AEC4: C9 1C     CMP #$1C
C - - - - - 0x012ED6 04:AEC6: 90 17     BCC bra_AEDF
bra_AEC8:
C - - - - - 0x012ED8 04:AEC8: BD 6B 03  LDA ram_0369_obj + $02,X
C - - - - - 0x012EDB 04:AECB: 10 17     BPL bra_AEE4
C - - - - - 0x012EDD 04:AECD: A9 80     LDA #$80
C - - - - - 0x012EDF 04:AECF: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012EE2 04:AED2: B5 45     LDA ram_state + $02,X
C - - - - - 0x012EE4 04:AED4: 29 7F     AND #$7F
C - - - - - 0x012EE6 04:AED6: C9 05     CMP #con_state_ladder_climb_down
C - - - - - 0x012EE8 04:AED8: F0 0E     BEQ bra_AEE8_RTS
C - - - - - 0x012EEA 04:AEDA: A9 05     LDA #con_state_ladder_climb_down
C - - - - - 0x012EEC 04:AEDC: 95 45     STA ram_state + $02,X
C - - - - - 0x012EEE 04:AEDE: 60        RTS
bra_AEDF:
C - - - - - 0x012EEF 04:AEDF: A9 04     LDA #con_state_ladder_climb_idle
C - - - - - 0x012EF1 04:AEE1: 95 45     STA ram_state + $02,X
C - - - - - 0x012EF3 04:AEE3: 60        RTS
bra_AEE4:
C - - - - - 0x012EF4 04:AEE4: A9 00     LDA #con_006C_00
C - - - - - 0x012EF6 04:AEE6: 95 6C     STA ram_enemy_ai_template,X
bra_AEE8_RTS:
C - - - - - 0x012EF8 04:AEE8: 60        RTS



loc_AEE9:
ofs_007_AEE9_07:
C - - J - - 0x012EF9 04:AEE9: 20 23 B2  JSR sub_B223
C - - - - - 0x012EFC 04:AEEC: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x012EFF 04:AEEF: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x012F02 04:AEF2: DD 5B 03  CMP ram_0359_obj + $02,X
C - - - - - 0x012F05 04:AEF5: D0 F1     BNE bra_AEE8_RTS
C - - - - - 0x012F07 04:AEF7: B9 69 03  LDA ram_0369_obj,Y
C - - - - - 0x012F0A 04:AEFA: 10 E8     BPL bra_AEE4
- - - - - - 0x012F0C 04:AEFC: 60        RTS



ofs_007_AEFD_08:
C - - J - - 0x012F0D 04:AEFD: BD 72 04  LDA ram_0470_obj + $02,X
C - - - - - 0x012F10 04:AF00: D0 2F     BNE bra_AF31
C - - - - - 0x012F12 04:AF02: BD 74 04  LDA ram_0474_enemy,X
C - - - - - 0x012F15 04:AF05: 38        SEC
C - - - - - 0x012F16 04:AF06: F5 79     SBC ram_obj_pos_X_lo + $02,X
C - - - - - 0x012F18 04:AF08: 85 29     STA ram_0029_temp
C - - - - - 0x012F1A 04:AF0A: BD 76 04  LDA ram_0476_obj,X
C - - - - - 0x012F1D 04:AF0D: F5 82     SBC ram_obj_pos_X_hi + $02,X
C - - - - - 0x012F1F 04:AF0F: 85 2A     STA ram_002A_temp
C - - - - - 0x012F21 04:AF11: B0 08     BCS bra_AF1B
C - - - - - 0x012F23 04:AF13: 20 60 B2  JSR sub_B260
C - - - - - 0x012F26 04:AF16: 20 3C B2  JSR sub_B23C
C - - - - - 0x012F29 04:AF19: D0 03     BNE bra_AF1E
bra_AF1B:
C - - - - - 0x012F2B 04:AF1B: 20 30 B2  JSR sub_B230
bra_AF1E:
C - - - - - 0x012F2E 04:AF1E: A5 29     LDA ram_0029_temp
C - - - - - 0x012F30 04:AF20: C9 08     CMP #$08
C - - - - - 0x012F32 04:AF22: 90 01     BCC bra_AF25
C - - - - - 0x012F34 04:AF24: 60        RTS
bra_AF25:
C - - - - - 0x012F35 04:AF25: A9 08     LDA #con_state_jump_foward_player
C - - - - - 0x012F37 04:AF27: 95 45     STA ram_state + $02,X
C - - - - - 0x012F39 04:AF29: A9 00     LDA #$00
C - - - - - 0x012F3B 04:AF2B: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012F3E 04:AF2E: FE 72 04  INC ram_0470_obj + $02,X
bra_AF31:
C - - - - - 0x012F41 04:AF31: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x012F43 04:AF33: 30 04     BMI bra_AF39_RTS    ; if con_004A_flag_knocked_down
bra_AF35:
C - - - - - 0x012F45 04:AF35: A9 00     LDA #con_006C_00
C - - - - - 0x012F47 04:AF37: 95 6C     STA ram_enemy_ai_template,X
bra_AF39_RTS:
C - - - - - 0x012F49 04:AF39: 60        RTS



ofs_005_AF3A_03:
C - - J - - 0x012F4A 04:AF3A: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012F4C 04:AF3C: 30 13     BMI bra_AF51
C - - - - - 0x012F4E 04:AF3E: 09 80     ORA #$80
C - - - - - 0x012F50 04:AF40: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x012F52 04:AF42: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x012F54 04:AF44: C9 11     CMP #con_obj_shadow_warrior
C - - - - - 0x012F56 04:AF46: D0 04     BNE bra_AF4C
C - - - - - 0x012F58 04:AF48: A9 44     LDA #con_state_44
C - - - - - 0x012F5A 04:AF4A: D0 02     BNE bra_AF4E    ; jmp
bra_AF4C:
C - - - - - 0x012F5C 04:AF4C: A9 4B     LDA #con_state_4B
bra_AF4E:
C - - - - - 0x012F5E 04:AF4E: 95 45     STA ram_state + $02,X
C - - - - - 0x012F60 04:AF50: 60        RTS
bra_AF51:
C - - - - - 0x012F61 04:AF51: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x012F64 04:AF54: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x012F67 04:AF57: 29 80     AND #con_004A_flag_knocked_down
C - - - - - 0x012F69 04:AF59: F0 DA     BEQ bra_AF35    ; bzk optimize, BPL
C - - - - - 0x012F6B 04:AF5B: 60        RTS



ofs_005_AF5C_04_go_for_weapon:
C - - J - - 0x012F6C 04:AF5C: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x012F6E 04:AF5E: 30 0D     BMI bra_AF6D
C - - - - - 0x012F70 04:AF60: 09 80     ORA #$80
C - - - - - 0x012F72 04:AF62: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x012F74 04:AF64: A9 01     LDA #con_state_walk
C - - - - - 0x012F76 04:AF66: 95 45     STA ram_state + $02,X
C - - - - - 0x012F78 04:AF68: A9 00     LDA #$00
C - - - - - 0x012F7A 04:AF6A: 9D 72 04  STA ram_0470_obj + $02,X
bra_AF6D:
C - - - - - 0x012F7D 04:AF6D: BD 72 04  LDA ram_0470_obj + $02,X
C - - - - - 0x012F80 04:AF70: F0 03     BEQ bra_AF75
C - - - - - 0x012F82 04:AF72: 4C E2 AF  JMP loc_AFE2
bra_AF75:
C - - - - - 0x012F85 04:AF75: BC 54 04  LDY ram_0454_obj_aim,X
C - - - - - 0x012F88 04:AF78: 20 72 B2  JSR sub_B272
C - - - - - 0x012F8B 04:AF7B: A5 2B     LDA ram_002B_temp
C - - - - - 0x012F8D 04:AF7D: C9 04     CMP #$04
C - - - - - 0x012F8F 04:AF7F: B0 18     BCS bra_AF99
bra_AF81:
C - - - - - 0x012F91 04:AF81: A5 29     LDA ram_0029_temp
C - - - - - 0x012F93 04:AF83: C9 06     CMP #$06
C - - - - - 0x012F95 04:AF85: 90 35     BCC bra_AFBC
C - - - - - 0x012F97 04:AF87: A5 1A     LDA ram_001A_t12
C - - - - - 0x012F99 04:AF89: 10 07     BPL bra_AF92
C - - - - - 0x012F9B 04:AF8B: A9 C0     LDA #$C0
C - - - - - 0x012F9D 04:AF8D: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012FA0 04:AF90: D0 1E     BNE bra_AFB0    ; jmp
bra_AF92:
C - - - - - 0x012FA2 04:AF92: A9 40     LDA #$40
C - - - - - 0x012FA4 04:AF94: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012FA7 04:AF97: D0 17     BNE bra_AFB0    ; jmp
bra_AF99:
C - - - - - 0x012FA9 04:AF99: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x012FAC 04:AF9C: 30 E3     BMI bra_AF81
C - - - - - 0x012FAE 04:AF9E: A5 1A     LDA ram_001A_t12
C - - - - - 0x012FB0 04:AFA0: 29 01     AND #$01
C - - - - - 0x012FB2 04:AFA2: F0 07     BEQ bra_AFAB
C - - - - - 0x012FB4 04:AFA4: A9 80     LDA #$80
C - - - - - 0x012FB6 04:AFA6: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x012FB9 04:AFA9: D0 05     BNE bra_AFB0    ; jmp
bra_AFAB:
C - - - - - 0x012FBB 04:AFAB: A9 00     LDA #$00
C - - - - - 0x012FBD 04:AFAD: 9D 11 03  STA ram_obj_direction + $02,X
bra_AFB0:
C - - - - - 0x012FC0 04:AFB0: A5 1A     LDA ram_001A_t12
C - - - - - 0x012FC2 04:AFB2: 10 04     BPL bra_AFB8
; bzk optimize, JMP
C - - - - - 0x012FC4 04:AFB4: 20 41 B2  JSR sub_B241
C - - - - - 0x012FC7 04:AFB7: 60        RTS
bra_AFB8:
; bzk optimize, JMP
C - - - - - 0x012FC8 04:AFB8: 20 35 B2  JSR sub_B235
C - - - - - 0x012FCB 04:AFBB: 60        RTS
bra_AFBC:
C - - - - - 0x012FCC 04:AFBC: BD 54 04  LDA ram_0454_obj_aim,X
C - - - - - 0x012FCF 04:AFBF: 9D 4C 04  STA ram_044A_obj + $02,X
C - - - - - 0x012FD2 04:AFC2: BC 54 04  LDY ram_0454_obj_aim,X
C - - - - - 0x012FD5 04:AFC5: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x012FD8 04:AFC8: 85 19     STA ram_0019_t23
C - - - - - 0x012FDA 04:AFCA: A0 00     LDY #$00
bra_AFCC_loop:
C - - - - - 0x012FDC 04:AFCC: B9 64 B3  LDA tbl_B364,Y
C - - - - - 0x012FDF 04:AFCF: C5 19     CMP ram_0019_t23
C - - - - - 0x012FE1 04:AFD1: F0 03     BEQ bra_AFD6
C - - - - - 0x012FE3 04:AFD3: C8        INY
C - - - - - 0x012FE4 04:AFD4: D0 F6     BNE bra_AFCC_loop    ; jmp
bra_AFD6:
C - - - - - 0x012FE6 04:AFD6: 98        TYA
C - - - - - 0x012FE7 04:AFD7: 9D 48 04  STA ram_0446_obj + $02,X
C - - - - - 0x012FEA 04:AFDA: A9 11     LDA #con_state_pick_up_weapon
C - - - - - 0x012FEC 04:AFDC: 95 45     STA ram_state + $02,X
C - - - - - 0x012FEE 04:AFDE: FE 72 04  INC ram_0470_obj + $02,X
C - - - - - 0x012FF1 04:AFE1: 60        RTS



loc_AFE2:
C D 1 - - - 0x012FF2 04:AFE2: B5 45     LDA ram_state + $02,X
C - - - - - 0x012FF4 04:AFE4: 29 7F     AND #$7F
C - - - - - 0x012FF6 04:AFE6: C9 00     CMP #con_state_idle
C - - - - - 0x012FF8 04:AFE8: D0 04     BNE bra_AFEE_RTS
C - - - - - 0x012FFA 04:AFEA: A9 00     LDA #con_006C_00
C - - - - - 0x012FFC 04:AFEC: 95 6C     STA ram_enemy_ai_template,X
bra_AFEE_RTS:
C - - - - - 0x012FFE 04:AFEE: 60        RTS



ofs_004_AFEF_05:
ofs_005_AFEF_05:
C - - J - - 0x012FFF 04:AFEF: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x013001 04:AFF1: 30 2E     BMI bra_B021
C - - - - - 0x013003 04:AFF3: 09 80     ORA #$80
C - - - - - 0x013005 04:AFF5: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x013007 04:AFF7: BD 7E 04  LDA ram_047C_obj + $02,X
C - - - - - 0x01300A 04:AFFA: C9 03     CMP #$03
C - - - - - 0x01300C 04:AFFC: 90 13     BCC bra_B011
C - - - - - 0x01300E 04:AFFE: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x013011 04:B001: 10 06     BPL bra_B009
C - - - - - 0x013013 04:B003: 20 48 B2  JSR sub_B248
C - - - - - 0x013016 04:B006: 4C 0C B0  JMP loc_B00C
bra_B009:
C - - - - - 0x013019 04:B009: 20 54 B2  JSR sub_B254
loc_B00C:
C D 1 - - - 0x01301C 04:B00C: A9 01     LDA #con_state_walk
C - - - - - 0x01301E 04:B00E: 95 45     STA ram_state + $02,X
C - - - - - 0x013020 04:B010: 60        RTS
bra_B011:
C - - - - - 0x013021 04:B011: 20 23 B2  JSR sub_B223
C - - - - - 0x013024 04:B014: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x013027 04:B017: 10 04     BPL bra_B01D
; bzk optimize, JMP
C - - - - - 0x013029 04:B019: 20 41 B2  JSR sub_B241
C - - - - - 0x01302C 04:B01C: 60        RTS
bra_B01D:
; bzk optimize, JMP
C - - - - - 0x01302D 04:B01D: 20 35 B2  JSR sub_B235
C - - - - - 0x013030 04:B020: 60        RTS
bra_B021:
C - - - - - 0x013031 04:B021: BD 7E 04  LDA ram_047C_obj + $02,X
C - - - - - 0x013034 04:B024: 0A        ASL
C - - - - - 0x013035 04:B025: A8        TAY
C - - - - - 0x013036 04:B026: B9 33 B0  LDA tbl_B033,Y
C - - - - - 0x013039 04:B029: 85 29     STA ram_0029_temp
C - - - - - 0x01303B 04:B02B: B9 34 B0  LDA tbl_B033 + $01,Y
C - - - - - 0x01303E 04:B02E: 85 2A     STA ram_002A_temp
C - - - - - 0x013040 04:B030: 6C 29 00  JMP (ram_0029_temp)



tbl_B033:
- D 1 - - - 0x013043 04:B033: 3D B0     .word ofs_008_B03D_00
- D 1 - - - 0x013045 04:B035: 42 B0     .word ofs_008_B042_01
- D 1 - - - 0x013047 04:B037: 51 B0     .word ofs_008_B051_02
- D 1 - - - 0x013049 04:B039: 5E B0     .word ofs_008_B05E_03
- D 1 - - - 0x01304B 04:B03B: 75 B0     .word ofs_008_B075_04



ofs_008_B03D_00:
bra_B03D:
C - - - - - 0x01304D 04:B03D: A9 00     LDA #con_006C_00
C - - - - - 0x01304F 04:B03F: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x013051 04:B041: 60        RTS



ofs_008_B042_01:
C - - J - - 0x013052 04:B042: DE 64 04  DEC ram_0464_obj,X
C - - - - - 0x013055 04:B045: BD 64 04  LDA ram_0464_obj,X
C - - - - - 0x013058 04:B048: D0 2A     BNE bra_B074_RTS
C - - - - - 0x01305A 04:B04A: A9 FF     LDA #$FF
C - - - - - 0x01305C 04:B04C: 9D 64 04  STA ram_0464_obj,X
C - - - - - 0x01305F 04:B04F: D0 EC     BNE bra_B03D    ; jmp



ofs_008_B051_02:
C - - J - - 0x013061 04:B051: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x013064 04:B054: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x013067 04:B057: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x013069 04:B059: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x01306B 04:B05B: D0 E0     BNE bra_B03D
C - - - - - 0x01306D 04:B05D: 60        RTS



ofs_008_B05E_03:
C - - J - - 0x01306E 04:B05E: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x013071 04:B061: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x013074 04:B064: 29 7F     AND #$7F
C - - - - - 0x013076 04:B066: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x013078 04:B068: D0 D3     BNE bra_B03D
C - - - - - 0x01307A 04:B06A: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x01307D 04:B06D: C9 24     CMP #$24
C - - - - - 0x01307F 04:B06F: 90 03     BCC bra_B074_RTS
bra_B071:
; bzk optimize, JMP
C - - - - - 0x013081 04:B071: 20 23 B2  JSR sub_B223
bra_B074_RTS:
C - - - - - 0x013084 04:B074: 60        RTS



ofs_008_B075_04:
C - - J - - 0x013085 04:B075: BD 5E 04  LDA ram_045E_enemy,X
C - - - - - 0x013088 04:B078: F0 C3     BEQ bra_B03D
C - - - - - 0x01308A 04:B07A: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x01308D 04:B07D: C9 06     CMP #$06
C - - - - - 0x01308F 04:B07F: B0 BC     BCS bra_B03D
C - - - - - 0x013091 04:B081: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x013094 04:B084: C9 30     CMP #$30
C - - - - - 0x013096 04:B086: B0 06     BCS bra_B08E
C - - - - - 0x013098 04:B088: C9 28     CMP #$28
C - - - - - 0x01309A 04:B08A: 90 09     BCC bra_B095
C - - - - - 0x01309C 04:B08C: B0 E3     BCS bra_B071    ; jmp
bra_B08E:
C - - - - - 0x01309E 04:B08E: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0130A1 04:B091: 10 09     BPL bra_B09C
C - - - - - 0x0130A3 04:B093: 30 0E     BMI bra_B0A3    ; jmp
bra_B095:
C - - - - - 0x0130A5 04:B095: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0130A8 04:B098: 10 09     BPL bra_B0A3
C - - - - - 0x0130AA 04:B09A: 30 00     BMI bra_B09C    ; jmp   bzk optimize, useless check
bra_B09C:
C - - - - - 0x0130AC 04:B09C: A9 40     LDA #$40
C - - - - - 0x0130AE 04:B09E: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0130B1 04:B0A1: D0 05     BNE bra_B0A8    ; jmp
bra_B0A3:
C - - - - - 0x0130B3 04:B0A3: A9 C0     LDA #$C0
C - - - - - 0x0130B5 04:B0A5: 9D 11 03  STA ram_obj_direction + $02,X
bra_B0A8:
C - - - - - 0x0130B8 04:B0A8: B5 45     LDA ram_state + $02,X
C - - - - - 0x0130BA 04:B0AA: 29 7F     AND #$7F
C - - - - - 0x0130BC 04:B0AC: C9 01     CMP #con_state_walk
C - - - - - 0x0130BE 04:B0AE: F0 04     BEQ bra_B0B4_RTS
C - - - - - 0x0130C0 04:B0B0: A9 01     LDA #con_state_walk
C - - - - - 0x0130C2 04:B0B2: 95 45     STA ram_state + $02,X
bra_B0B4_RTS:
C - - - - - 0x0130C4 04:B0B4: 60        RTS



ofs_005_B0B5_06:
C - - J - - 0x0130C5 04:B0B5: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x0130C7 04:B0B7: 30 5D     BMI bra_B116
C - - - - - 0x0130C9 04:B0B9: 09 80     ORA #$80
C - - - - - 0x0130CB 04:B0BB: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x0130CD 04:B0BD: 20 26 B1  JSR sub_B126_set_state_enemy_attack
C - - - - - 0x0130D0 04:B0C0: B5 45     LDA ram_state + $02,X
C - - - - - 0x0130D2 04:B0C2: C9 53     CMP #con_state_bolo_throw
C - - - - - 0x0130D4 04:B0C4: F0 04     BEQ bra_B0CA
C - - - - - 0x0130D6 04:B0C6: C9 54     CMP #con_state_burnov_grab
C - - - - - 0x0130D8 04:B0C8: D0 27     BNE bra_B0F1
bra_B0CA:
C - - - - - 0x0130DA 04:B0CA: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x0130DD 04:B0CD: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0130E0 04:B0D0: 29 7F     AND #$7F
C - - - - - 0x0130E2 04:B0D2: C9 12     CMP #con_state_land_after_jump
C - - - - - 0x0130E4 04:B0D4: F0 0F     BEQ bra_B0E5
C - - - - - 0x0130E6 04:B0D6: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x0130E8 04:B0D8: F0 0B     BEQ bra_B0E5
C - - - - - 0x0130EA 04:B0DA: C9 26     CMP #con_state_death_normal
C - - - - - 0x0130EC 04:B0DC: F0 07     BEQ bra_B0E5
C - - - - - 0x0130EE 04:B0DE: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x0130F1 04:B0E1: 29 80     AND #con_004A_flag_knocked_down
C - - - - - 0x0130F3 04:B0E3: F0 06     BEQ bra_B0EB    ; bzk optimize, BPL
bra_B0E5:
C - - - - - 0x0130F5 04:B0E5: A9 2D     LDA #con_state_punch_normal
C - - - - - 0x0130F7 04:B0E7: 95 45     STA ram_state + $02,X
C - - - - - 0x0130F9 04:B0E9: D0 06     BNE bra_B0F1    ; jmp
bra_B0EB:
C - - - - - 0x0130FB 04:B0EB: BD 56 04  LDA ram_0454_obj_aim + $02,X
C - - - - - 0x0130FE 04:B0EE: 9D 4C 04  STA ram_044A_obj + $02,X
bra_B0F1:
C - - - - - 0x013101 04:B0F1: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x013104 04:B0F4: 10 04     BPL bra_B0FA
; bzk optimize, JMP
C - - - - - 0x013106 04:B0F6: 20 3C B2  JSR sub_B23C
C - - - - - 0x013109 04:B0F9: 60        RTS
bra_B0FA:
; bzk optimize, JMP
C - - - - - 0x01310A 04:B0FA: 20 30 B2  JSR sub_B230
C - - - - - 0x01310D 04:B0FD: 60        RTS



ofs_005_B0FE_07:
C - - J - - 0x01310E 04:B0FE: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x013110 04:B100: 30 14     BMI bra_B116
C - - - - - 0x013112 04:B102: 09 80     ORA #$80
C - - - - - 0x013114 04:B104: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x013116 04:B106: 20 26 B1  JSR sub_B126_set_state_enemy_attack
C - - - - - 0x013119 04:B109: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x01311C 04:B10C: 10 04     BPL bra_B112
; bzk optimize, JMP
C - - - - - 0x01311E 04:B10E: 20 3C B2  JSR sub_B23C
C - - - - - 0x013121 04:B111: 60        RTS
bra_B112:
; bzk optimize, JMP
C - - - - - 0x013122 04:B112: 20 30 B2  JSR sub_B230
C - - - - - 0x013125 04:B115: 60        RTS
bra_B116:
C - - - - - 0x013126 04:B116: B5 45     LDA ram_state + $02,X
C - - - - - 0x013128 04:B118: 29 7F     AND #$7F
C - - - - - 0x01312A 04:B11A: C9 00     CMP #con_state_idle
C - - - - - 0x01312C 04:B11C: D0 07     BNE bra_B125_RTS
C - - - - - 0x01312E 04:B11E: A9 00     LDA #$00    ; con_006C_00
C - - - - - 0x013130 04:B120: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x013132 04:B122: 9D 7A 04  STA ram_047A_enemy,X
bra_B125_RTS:
C - - - - - 0x013135 04:B125: 60        RTS



sub_B126_set_state_enemy_attack:
C - - - - - 0x013136 04:B126: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x013138 04:B128: 0A        ASL
C - - - - - 0x013139 04:B129: A8        TAY
C - - - - - 0x01313A 04:B12A: B9 42 B9  LDA tbl_B942_enemy_moves,Y
C - - - - - 0x01313D 04:B12D: 85 29     STA ram_0029_temp
C - - - - - 0x01313F 04:B12F: B9 43 B9  LDA tbl_B942_enemy_moves + $01,Y
C - - - - - 0x013142 04:B132: 85 2A     STA ram_002A_temp
C - - - - - 0x013144 04:B134: BC 6A 04  LDY ram_046A_obj,X
C - - - - - 0x013147 04:B137: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x013149 04:B139: 95 45     STA ram_state + $02,X
C - - - - - 0x01314B 04:B13B: 60        RTS



ofs_005_B13C_08:
C - - J - - 0x01314C 04:B13C: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x01314E 04:B13E: 30 21     BMI bra_B161
C - - - - - 0x013150 04:B140: 09 80     ORA #$80
C - - - - - 0x013152 04:B142: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x013154 04:B144: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x013157 04:B147: 10 06     BPL bra_B14F
C - - - - - 0x013159 04:B149: 20 48 B2  JSR sub_B248
C - - - - - 0x01315C 04:B14C: 4C 52 B1  JMP loc_B152
bra_B14F:
C - - - - - 0x01315F 04:B14F: 20 54 B2  JSR sub_B254
loc_B152:
C D 1 - - - 0x013162 04:B152: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x013164 04:B154: C9 11     CMP #con_obj_shadow_warrior
C - - - - - 0x013166 04:B156: D0 04     BNE bra_B15C
C - - - - - 0x013168 04:B158: A9 44     LDA #con_state_44
C - - - - - 0x01316A 04:B15A: D0 02     BNE bra_B15E    ; jmp
bra_B15C:
C - - - - - 0x01316C 04:B15C: A9 01     LDA #con_state_walk
bra_B15E:
C - - - - - 0x01316E 04:B15E: 95 45     STA ram_state + $02,X
C - - - - - 0x013170 04:B160: 60        RTS
bra_B161:
C - - - - - 0x013171 04:B161: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x013174 04:B164: 10 03     BPL bra_B169
C - - - - - 0x013176 04:B166: 20 1A B2  JSR sub_B21A
bra_B169:
C - - - - - 0x013179 04:B169: 20 6A B3  JSR sub_B36A
C - - - - - 0x01317C 04:B16C: 90 0B     BCC bra_B179
C - - - - - 0x01317E 04:B16E: A9 4B     LDA #con_state_4B
C - - - - - 0x013180 04:B170: 95 45     STA ram_state + $02,X
C - - - - - 0x013182 04:B172: A9 03     LDA #con_006C_03
C - - - - - 0x013184 04:B174: 09 80     ORA #$80
C - - - - - 0x013186 04:B176: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x013188 04:B178: 60        RTS
bra_B179:
C - - - - - 0x013189 04:B179: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x01318C 04:B17C: C9 04     CMP #$04
C - - - - - 0x01318E 04:B17E: B0 07     BCS bra_B187
C - - - - - 0x013190 04:B180: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x013193 04:B183: C9 0A     CMP #$0A
C - - - - - 0x013195 04:B185: 90 04     BCC bra_B18B_RTS
bra_B187:
C - - - - - 0x013197 04:B187: A9 00     LDA #con_006C_00
C - - - - - 0x013199 04:B189: 95 6C     STA ram_enemy_ai_template,X
bra_B18B_RTS:
C - - - - - 0x01319B 04:B18B: 60        RTS



ofs_005_B18C_09_RTS:
- - - - - - 0x01319C 04:B18C: 60        RTS



ofs_005_B18D_0A:
C - - J - - 0x01319D 04:B18D: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x01319F 04:B18F: 30 04     BMI bra_B195
C - - - - - 0x0131A1 04:B191: 09 80     ORA #$80
C - - - - - 0x0131A3 04:B193: 95 6C     STA ram_enemy_ai_template,X
bra_B195:
C - - - - - 0x0131A5 04:B195: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x0131A8 04:B198: 10 0C     BPL bra_B1A6
C - - - - - 0x0131AA 04:B19A: A9 FF     LDA #$FF
C - - - - - 0x0131AC 04:B19C: 9D 7A 04  STA ram_047A_enemy,X
C - - - - - 0x0131AF 04:B19F: A9 00     LDA #con_006C_00
C - - - - - 0x0131B1 04:B1A1: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x0131B3 04:B1A3: 4C 06 B2  JMP loc_B206
bra_B1A6:
C - - - - - 0x0131B6 04:B1A6: 20 16 B7  JSR sub_B716
C - - - - - 0x0131B9 04:B1A9: B0 3C     BCS bra_B1E7
C - - - - - 0x0131BB 04:B1AB: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0131BD 04:B1AD: 29 01     AND #con_004A_flag_01
C - - - - - 0x0131BF 04:B1AF: F0 01     BEQ bra_B1B2
C - - - - - 0x0131C1 04:B1B1: 60        RTS
bra_B1B2:
C - - - - - 0x0131C2 04:B1B2: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0131C5 04:B1B5: DD 7C 04  CMP ram_047C_obj,X
C - - - - - 0x0131C8 04:B1B8: 90 3E     BCC bra_B1F8
C - - - - - 0x0131CA 04:B1BA: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x0131CD 04:B1BD: C9 04     CMP #$04
C - - - - - 0x0131CF 04:B1BF: B0 13     BCS bra_B1D4
C - - - - - 0x0131D1 04:B1C1: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0131D4 04:B1C4: 10 07     BPL bra_B1CD
C - - - - - 0x0131D6 04:B1C6: A9 C0     LDA #$C0
C - - - - - 0x0131D8 04:B1C8: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0131DB 04:B1CB: D0 1A     BNE bra_B1E7    ; jmp
bra_B1CD:
C - - - - - 0x0131DD 04:B1CD: A9 40     LDA #$40
C - - - - - 0x0131DF 04:B1CF: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0131E2 04:B1D2: D0 13     BNE bra_B1E7    ; jmp
bra_B1D4:
C - - - - - 0x0131E4 04:B1D4: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0131E7 04:B1D7: 29 01     AND #$01
C - - - - - 0x0131E9 04:B1D9: F0 07     BEQ bra_B1E2
C - - - - - 0x0131EB 04:B1DB: A9 80     LDA #$80
C - - - - - 0x0131ED 04:B1DD: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0131F0 04:B1E0: D0 05     BNE bra_B1E7    ; jmp
bra_B1E2:
C - - - - - 0x0131F2 04:B1E2: A9 00     LDA #$00
C - - - - - 0x0131F4 04:B1E4: 9D 11 03  STA ram_obj_direction + $02,X
bra_B1E7:
C - - - - - 0x0131F7 04:B1E7: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0131FA 04:B1EA: 10 06     BPL bra_B1F2
C - - - - - 0x0131FC 04:B1EC: 20 41 B2  JSR sub_B241
C - - - - - 0x0131FF 04:B1EF: 4C 06 B2  JMP loc_B206
bra_B1F2:
C - - - - - 0x013202 04:B1F2: 20 35 B2  JSR sub_B235
C - - - - - 0x013205 04:B1F5: 4C 06 B2  JMP loc_B206
bra_B1F8:
C - - - - - 0x013208 04:B1F8: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x01320B 04:B1FB: 10 06     BPL bra_B203
C - - - - - 0x01320D 04:B1FD: 20 48 B2  JSR sub_B248
C - - - - - 0x013210 04:B200: 4C 06 B2  JMP loc_B206
bra_B203:
C - - - - - 0x013213 04:B203: 20 54 B2  JSR sub_B254
loc_B206:
C D 1 - - - 0x013216 04:B206: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x013219 04:B209: 29 C0     AND #$C0
C - - - - - 0x01321B 04:B20B: D0 0C     BNE bra_B219_RTS
C - - - - - 0x01321D 04:B20D: B5 45     LDA ram_state + $02,X
C - - - - - 0x01321F 04:B20F: 29 7F     AND #$7F
C - - - - - 0x013221 04:B211: C9 01     CMP #con_state_walk
C - - - - - 0x013223 04:B213: F0 04     BEQ bra_B219_RTS
C - - - - - 0x013225 04:B215: A9 01     LDA #con_state_walk
C - - - - - 0x013227 04:B217: 95 45     STA ram_state + $02,X
bra_B219_RTS:
C - - - - - 0x013229 04:B219: 60        RTS



sub_B21A:
C - - - - - 0x01322A 04:B21A: BD 11 03  LDA ram_obj_direction + $02,X
C - - - - - 0x01322D 04:B21D: 49 80     EOR #$80
C - - - - - 0x01322F 04:B21F: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x013232 04:B222: 60        RTS



sub_B223:
C - - - - - 0x013233 04:B223: B5 45     LDA ram_state + $02,X
C - - - - - 0x013235 04:B225: 29 7F     AND #$7F
C - - - - - 0x013237 04:B227: C9 00     CMP #con_state_idle
C - - - - - 0x013239 04:B229: F0 04     BEQ bra_B22F_RTS
C - - - - - 0x01323B 04:B22B: A9 00     LDA #con_state_idle
C - - - - - 0x01323D 04:B22D: 95 45     STA ram_state + $02,X
bra_B22F_RTS:
C - - - - - 0x01323F 04:B22F: 60        RTS



sub_B230:
C - - - - - 0x013240 04:B230: A9 40     LDA #$40
C - - - - - 0x013242 04:B232: 9D 11 03  STA ram_obj_direction + $02,X
sub_B235:
C - - - - - 0x013245 04:B235: B5 65     LDA ram_0063_obj_facing + $02,X
C - - - - - 0x013247 04:B237: 29 7F     AND #$7F
C - - - - - 0x013249 04:B239: 95 65     STA ram_0063_obj_facing + $02,X
C - - - - - 0x01324B 04:B23B: 60        RTS



sub_B23C:
C - - - - - 0x01324C 04:B23C: A9 C0     LDA #$C0
C - - - - - 0x01324E 04:B23E: 9D 11 03  STA ram_obj_direction + $02,X
sub_B241:
C - - - - - 0x013251 04:B241: B5 65     LDA ram_0063_obj_facing + $02,X
C - - - - - 0x013253 04:B243: 09 80     ORA #$80
C - - - - - 0x013255 04:B245: 95 65     STA ram_0063_obj_facing + $02,X
C - - - - - 0x013257 04:B247: 60        RTS



sub_B248:
C - - - - - 0x013258 04:B248: A9 40     LDA #$40
C - - - - - 0x01325A 04:B24A: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x01325D 04:B24D: B5 65     LDA ram_0063_obj_facing + $02,X
C - - - - - 0x01325F 04:B24F: 09 80     ORA #$80
C - - - - - 0x013261 04:B251: 95 65     STA ram_0063_obj_facing + $02,X
C - - - - - 0x013263 04:B253: 60        RTS



sub_B254:
C - - - - - 0x013264 04:B254: A9 C0     LDA #$C0
C - - - - - 0x013266 04:B256: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x013269 04:B259: B5 65     LDA ram_0063_obj_facing + $02,X
C - - - - - 0x01326B 04:B25B: 29 7F     AND #$7F
C - - - - - 0x01326D 04:B25D: 95 65     STA ram_0063_obj_facing + $02,X
C - - - - - 0x01326F 04:B25F: 60        RTS



sub_B260:
C - - - - - 0x013270 04:B260: A5 29     LDA ram_0029_temp
C - - - - - 0x013272 04:B262: 49 FF     EOR #$FF
C - - - - - 0x013274 04:B264: 18        CLC
C - - - - - 0x013275 04:B265: 69 01     ADC #< $0001
C - - - - - 0x013277 04:B267: 85 29     STA ram_0029_temp
C - - - - - 0x013279 04:B269: A5 2A     LDA ram_002A_temp
C - - - - - 0x01327B 04:B26B: 49 FF     EOR #$FF
C - - - - - 0x01327D 04:B26D: 69 00     ADC #> $0001
C - - - - - 0x01327F 04:B26F: 85 2A     STA ram_002A_temp
C - - - - - 0x013281 04:B271: 60        RTS



sub_B272:
C - - - - - 0x013282 04:B272: B5 94     LDA ram_obj_pos_Y_lo + $02,X
C - - - - - 0x013284 04:B274: 38        SEC
C - - - - - 0x013285 04:B275: F9 92 00  SBC a: ram_obj_pos_Y_lo,Y
C - - - - - 0x013288 04:B278: 85 29     STA ram_0029_temp
C - - - - - 0x01328A 04:B27A: B5 9D     LDA ram_obj_pos_Y_hi + $02,X
C - - - - - 0x01328C 04:B27C: F9 9B 00  SBC a: ram_obj_pos_Y_hi,Y
C - - - - - 0x01328F 04:B27F: 85 2A     STA ram_002A_temp
C - - - - - 0x013291 04:B281: 20 BF B2  JSR sub_B2BF
C - - - - - 0x013294 04:B284: A5 29     LDA ram_0029_temp
C - - - - - 0x013296 04:B286: 85 2B     STA ram_002B_temp
C - - - - - 0x013298 04:B288: A5 19     LDA ram_0019_t24_flag
C - - - - - 0x01329A 04:B28A: 85 1A     STA ram_001A_t12
C - - - - - 0x01329C 04:B28C: B5 AF     LDA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x01329E 04:B28E: 38        SEC
C - - - - - 0x01329F 04:B28F: F9 AD 00  SBC a: ram_obj_pos_Z_lo,Y
C - - - - - 0x0132A2 04:B292: 85 29     STA ram_0029_temp
C - - - - - 0x0132A4 04:B294: B5 B8     LDA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x0132A6 04:B296: F9 B6 00  SBC a: ram_obj_pos_Z_hi,Y
C - - - - - 0x0132A9 04:B299: 85 2A     STA ram_002A_temp
C - - - - - 0x0132AB 04:B29B: 20 BF B2  JSR sub_B2BF
C - - - - - 0x0132AE 04:B29E: A5 29     LDA ram_0029_temp
C - - - - - 0x0132B0 04:B2A0: 85 2D     STA ram_002D_temp
C - - - - - 0x0132B2 04:B2A2: B5 79     LDA ram_obj_pos_X_lo + $02,X
C - - - - - 0x0132B4 04:B2A4: 38        SEC
C - - - - - 0x0132B5 04:B2A5: F9 77 00  SBC a: ram_obj_pos_X_lo,Y
C - - - - - 0x0132B8 04:B2A8: 85 29     STA ram_0029_temp
C - - - - - 0x0132BA 04:B2AA: B5 82     LDA ram_obj_pos_X_hi + $02,X
C - - - - - 0x0132BC 04:B2AC: F9 80 00  SBC a: ram_obj_pos_X_hi,Y
C - - - - - 0x0132BF 04:B2AF: 85 2A     STA ram_002A_temp
C - - - - - 0x0132C1 04:B2B1: 20 BF B2  JSR sub_B2BF
C - - - - - 0x0132C4 04:B2B4: A5 19     LDA ram_0019_t24_flag
C - - - - - 0x0132C6 04:B2B6: F0 06     BEQ bra_B2BE_RTS
C - - - - - 0x0132C8 04:B2B8: A5 1A     LDA ram_001A_t12
C - - - - - 0x0132CA 04:B2BA: 09 80     ORA #$80
C - - - - - 0x0132CC 04:B2BC: 85 1A     STA ram_001A_t12
bra_B2BE_RTS:
C - - - - - 0x0132CE 04:B2BE: 60        RTS



sub_B2BF:
C - - - - - 0x0132CF 04:B2BF: A9 00     LDA #$00
C - - - - - 0x0132D1 04:B2C1: 85 19     STA ram_0019_t24_flag
C - - - - - 0x0132D3 04:B2C3: A5 2A     LDA ram_002A_temp
C - - - - - 0x0132D5 04:B2C5: 10 09     BPL bra_B2D0
C - - - - - 0x0132D7 04:B2C7: 20 60 B2  JSR sub_B260
C - - - - - 0x0132DA 04:B2CA: A5 2A     LDA ram_002A_temp
C - - - - - 0x0132DC 04:B2CC: F0 0E     BEQ bra_B2DC_RTS
C - - - - - 0x0132DE 04:B2CE: D0 08     BNE bra_B2D8    ; jmp
bra_B2D0:
C - - - - - 0x0132E0 04:B2D0: A9 01     LDA #$01
C - - - - - 0x0132E2 04:B2D2: 85 19     STA ram_0019_t24_flag
C - - - - - 0x0132E4 04:B2D4: A5 2A     LDA ram_002A_temp
C - - - - - 0x0132E6 04:B2D6: F0 04     BEQ bra_B2DC_RTS
bra_B2D8:
C - - - - - 0x0132E8 04:B2D8: A9 FF     LDA #$FF
C - - - - - 0x0132EA 04:B2DA: 85 29     STA ram_0029_temp
bra_B2DC_RTS:
C - - - - - 0x0132EC 04:B2DC: 60        RTS



sub_B2DD:
C - - - - - 0x0132ED 04:B2DD: BD 4C 04  LDA ram_044A_obj + $02,X
C - - - - - 0x0132F0 04:B2E0: 30 10     BMI bra_B2F2_RTS
C - - - - - 0x0132F2 04:B2E2: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x0132F4 04:B2E4: 29 70     AND #$70
C - - - - - 0x0132F6 04:B2E6: D0 0B     BNE bra_B2F3
C - - - - - 0x0132F8 04:B2E8: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x0132FA 04:B2EA: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x0132FC 04:B2EC: F0 13     BEQ bra_B301
C - - - - - 0x0132FE 04:B2EE: C9 0F     CMP #con_obj_ninja
C - - - - - 0x013300 04:B2F0: F0 0F     BEQ bra_B301
bra_B2F2_RTS:
C - - - - - 0x013302 04:B2F2: 60        RTS
bra_B2F3:
; / 10
C - - - - - 0x013303 04:B2F3: 4A        LSR
C - - - - - 0x013304 04:B2F4: 4A        LSR
C - - - - - 0x013305 04:B2F5: 4A        LSR
C - - - - - 0x013306 04:B2F6: 4A        LSR
C - - - - - 0x013307 04:B2F7: C9 03     CMP #$03
C - - - - - 0x013309 04:B2F9: F0 68     BEQ bra_B363_RTS
C - - - - - 0x01330B 04:B2FB: C9 05     CMP #$05
C - - - - - 0x01330D 04:B2FD: F0 64     BEQ bra_B363_RTS
C - - - - - 0x01330F 04:B2FF: 85 1A     STA ram_001A_t13
bra_B301:
C - - - - - 0x013311 04:B301: A0 04     LDY #$04
C - - - - - 0x013313 04:B303: 84 19     STY ram_0019_t25_object_index
bra_B305_loop:
C - - - - - 0x013315 04:B305: A4 19     LDY ram_0019_t25_object_index
C - - - - - 0x013317 04:B307: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 0040 0041
C - - - - - 0x01331A 04:B30A: 10 09     BPL bra_B315    ; if not con_003C_flag_exist
C - - - - - 0x01331C 04:B30C: E6 19     INC ram_0019_t25_object_index
C - - - - - 0x01331E 04:B30E: A5 19     LDA ram_0019_t25_object_index
C - - - - - 0x013320 04:B310: C9 06     CMP #$06
C - - - - - 0x013322 04:B312: 90 F1     BCC bra_B305_loop
C - - - - - 0x013324 04:B314: 60        RTS
bra_B315:
C - - - - - 0x013325 04:B315: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x013327 04:B317: 29 70     AND #$70
C - - - - - 0x013329 04:B319: F0 1B     BEQ bra_B336
C - - - - - 0x01332B 04:B31B: C6 1A     DEC ram_001A_t13
C - - - - - 0x01332D 04:B31D: A5 1A     LDA ram_001A_t13
C - - - - - 0x01332F 04:B31F: 09 80     ORA #$80
C - - - - - 0x013331 04:B321: 9D 48 04  STA ram_0446_obj + $02,X
C - - - - - 0x013334 04:B324: 29 7F     AND #$7F
C - - - - - 0x013336 04:B326: A8        TAY
C - - - - - 0x013337 04:B327: B9 64 B3  LDA tbl_B364,Y
C - - - - - 0x01333A 04:B32A: A4 19     LDY ram_0019_t25_object_index
C - - - - - 0x01333C 04:B32C: 99 BF 00  STA a: ram_obj_id,Y
C - - - - - 0x01333F 04:B32F: A9 82     LDA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x013341 04:B331: 99 3C 00  STA a: ram_003C_obj_flags,Y ; 0040 0041
C - - - - - 0x013344 04:B334: D0 19     BNE bra_B34F    ; jmp
bra_B336:
C - - - - - 0x013346 04:B336: A4 19     LDY ram_0019_t25_object_index
C - - - - - 0x013348 04:B338: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x01334A 04:B33A: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x01334C 04:B33C: D0 07     BNE bra_B345
C - - - - - 0x01334E 04:B33E: A9 1C     LDA #con_obj_fireball
C - - - - - 0x013350 04:B340: 99 BF 00  STA a: ram_obj_id,Y
C - - - - - 0x013353 04:B343: D0 05     BNE bra_B34A    ; jmp
bra_B345:
C - - - - - 0x013355 04:B345: A9 19     LDA #con_obj_19
C - - - - - 0x013357 04:B347: 99 BF 00  STA a: ram_obj_id,Y
bra_B34A:
C - - - - - 0x01335A 04:B34A: A9 82     LDA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x01335C 04:B34C: 99 3C 00  STA a: ram_003C_obj_flags,Y ; 0040 0041
bra_B34F:
C - - - - - 0x01335F 04:B34F: A5 19     LDA ram_0019_t25_object_index
C - - - - - 0x013361 04:B351: 09 80     ORA #$80
C - - - - - 0x013363 04:B353: 9D 4C 04  STA ram_044A_obj + $02,X
C - - - - - 0x013366 04:B356: A9 7F     LDA #con_state_hair_grabbed
C - - - - - 0x013368 04:B358: 99 43 00  STA a: ram_state,Y
C - - - - - 0x01336B 04:B35B: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x01336E 04:B35E: 09 20     ORA #con_004A_flag_20
C - - - - - 0x013370 04:B360: 99 4A 00  STA a: ram_004A_obj_flags,Y
bra_B363_RTS:
C - - - - - 0x013373 04:B363: 60        RTS



tbl_B364:
- D 1 - - - 0x013374 04:B364: 12        .byte con_obj_knife   ; 00 
- D 1 - - - 0x013375 04:B365: 14        .byte con_obj_grenade   ; 01 
- D 1 - - - 0x013376 04:B366: 15        .byte con_obj_chain_whip   ; 02 
- D 1 - - - 0x013377 04:B367: 16        .byte con_obj_flame_grenades   ; 03 
- D 1 - - - 0x013378 04:B368: 17        .byte con_obj_baton   ; 04 
- D 1 - - - 0x013379 04:B369: 1A        .byte con_obj_boomerang   ; 05 



sub_B36A:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01337A 04:B36A: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x01337D 04:B36D: C9 08     CMP #$08
C - - - - - 0x01337F 04:B36F: B0 1C     BCS bra_B38D
C - - - - - 0x013381 04:B371: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x013384 04:B374: C9 2C     CMP #$2C
C - - - - - 0x013386 04:B376: B0 15     BCS bra_B38D
C - - - - - 0x013388 04:B378: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x01338B 04:B37B: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x01338E 04:B37E: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x013390 04:B380: C9 80     CMP #con_004A_flag_knocked_down
C - - - - - 0x013392 04:B382: D0 09     BNE bra_B38D
C - - - - - 0x013394 04:B384: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x013397 04:B387: 29 03     AND #$03
C - - - - - 0x013399 04:B389: D0 02     BNE bra_B38D
C - - - - - 0x01339B 04:B38B: 38        SEC
C - - - - - 0x01339C 04:B38C: 60        RTS
bra_B38D:
C - - - - - 0x01339D 04:B38D: 18        CLC
C - - - - - 0x01339E 04:B38E: 60        RTS



sub_B38F_send_enemy_after_lying_weapon:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01339F 04:B38F: BD 48 04  LDA ram_0446_obj + $02,X
C - - - - - 0x0133A2 04:B392: 30 75     BMI bra_B409
C - - - - - 0x0133A4 04:B394: A0 04     LDY #$04
C - - - - - 0x0133A6 04:B396: 84 19     STY ram_0019_t26_object_index
bra_B398_loop:
C - - - - - 0x0133A8 04:B398: A4 19     LDY ram_0019_t26_object_index
C - - - - - 0x0133AA 04:B39A: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 0040 0041 0042
C - - - - - 0x0133AD 04:B39D: 10 4F     BPL bra_B3EE    ; if not con_003C_flag_exist
C - - - - - 0x0133AF 04:B39F: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0133B2 04:B3A2: 29 7F     AND #$7F
C - - - - - 0x0133B4 04:B3A4: C9 65     CMP #con_state_weapon_on_the_ground
C - - - - - 0x0133B6 04:B3A6: D0 46     BNE bra_B3EE
C - - - - - 0x0133B8 04:B3A8: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x0133BB 04:B3AB: DD 5B 03  CMP ram_0359_obj + $02,X
C - - - - - 0x0133BE 04:B3AE: D0 3E     BNE bra_B3EE
C - - - - - 0x0133C0 04:B3B0: A0 00     LDY #$00
C - - - - - 0x0133C2 04:B3B2: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x0133C4 04:B3B4: C9 02     CMP #con_obj_williams
C - - - - - 0x0133C6 04:B3B6: F0 0C     BEQ bra_B3C4
C - - - - - 0x0133C8 04:B3B8: A0 0D     LDY #$0D
C - - - - - 0x0133CA 04:B3BA: C9 03     CMP #con_obj_roper
C - - - - - 0x0133CC 04:B3BC: F0 06     BEQ bra_B3C4
C - - - - - 0x0133CE 04:B3BE: A0 1A     LDY #$1A
C - - - - - 0x0133D0 04:B3C0: C9 04     CMP #con_obj_linda
C - - - - - 0x0133D2 04:B3C2: D0 45     BNE bra_B409
bra_B3C4:
C - - - - - 0x0133D4 04:B3C4: 84 1C     STY ram_001C_temp
C - - - - - 0x0133D6 04:B3C6: A4 19     LDY ram_0019_t26_object_index
C - - - - - 0x0133D8 04:B3C8: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x0133DB 04:B3CB: 38        SEC
C - - - - - 0x0133DC 04:B3CC: E9 12     SBC #con_weapon_id
; weapons
; bzk optimize, useless STA
C - - - - - 0x0133DE 04:B3CE: 85 1A     STA ram_001A_t14_useless
C - - - - - 0x0133E0 04:B3D0: 18        CLC
C - - - - - 0x0133E1 04:B3D1: 65 1C     ADC ram_001C_temp
C - - - - - 0x0133E3 04:B3D3: A8        TAY
C - - - - - 0x0133E4 04:B3D4: B9 0B B4  LDA tbl_B40B_weapon_for_enemy_type,Y
C - - - - - 0x0133E7 04:B3D7: C9 FF     CMP #$FF
C - - - - - 0x0133E9 04:B3D9: F0 13     BEQ bra_B3EE
C - - - - - 0x0133EB 04:B3DB: 18        CLC
C - - - - - 0x0133EC 04:B3DC: 69 01     ADC #$01
; * 10
C - - - - - 0x0133EE 04:B3DE: 0A        ASL
C - - - - - 0x0133EF 04:B3DF: 0A        ASL
C - - - - - 0x0133F0 04:B3E0: 0A        ASL
C - - - - - 0x0133F1 04:B3E1: 0A        ASL
C - - - - - 0x0133F2 04:B3E2: 85 1B     STA ram_001B_temp
C - - - - - 0x0133F4 04:B3E4: B5 6A     LDA ram_006A_enemy,X
C - - - - - 0x0133F6 04:B3E6: 29 70     AND #$70
C - - - - - 0x0133F8 04:B3E8: C5 1B     CMP ram_001B_temp
C - - - - - 0x0133FA 04:B3EA: D0 02     BNE bra_B3EE
C - - - - - 0x0133FC 04:B3EC: F0 0A     BEQ bra_B3F8    ; jmp
bra_B3EE:
C - - - - - 0x0133FE 04:B3EE: E6 19     INC ram_0019_t26_object_index
C - - - - - 0x013400 04:B3F0: A5 19     LDA ram_0019_t26_object_index
C - - - - - 0x013402 04:B3F2: C9 07     CMP #$07
C - - - - - 0x013404 04:B3F4: 90 A2     BCC bra_B398_loop
C - - - - - 0x013406 04:B3F6: B0 11     BCS bra_B409    ; jmp
bra_B3F8:
C - - - - - 0x013408 04:B3F8: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x01340B 04:B3FB: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x01340E 04:B3FE: 29 40     AND #con_004A_flag_stunned
C - - - - - 0x013410 04:B400: D0 00     BNE bra_B402    ; bzk optimize, useless check
bra_B402:
C - - - - - 0x013412 04:B402: A5 19     LDA ram_0019_t26_object_index
C - - - - - 0x013414 04:B404: 9D 54 04  STA ram_0454_obj_aim,X
C - - - - - 0x013417 04:B407: 38        SEC
C - - - - - 0x013418 04:B408: 60        RTS
bra_B409:
C - - - - - 0x013419 04:B409: 18        CLC
C - - - - - 0x01341A 04:B40A: 60        RTS



tbl_B40B_weapon_for_enemy_type:
; 00 williams
- D 1 - - - 0x01341B 04:B40B: 00        .byte $00   ; 12 con_obj_knife
- - - - - - 0x01341C 04:B40C: FF        .byte $FF   ; 13 con_obj_13
- - - - - - 0x01341D 04:B40D: FF        .byte $FF   ; 14 con_obj_grenade
- - - - - - 0x01341E 04:B40E: FF        .byte $FF   ; 15 con_obj_chain_whip
- - - - - - 0x01341F 04:B40F: FF        .byte $FF   ; 16 con_obj_flame_grenades
- D 1 - - - 0x013420 04:B410: 04        .byte $04   ; 17 con_obj_baton
- - - - - - 0x013421 04:B411: FF        .byte $FF   ; 18 con_obj_18
- - - - - - 0x013422 04:B412: FF        .byte $FF   ; 19 con_obj_19
- - - - - - 0x013423 04:B413: FF        .byte $FF   ; 1A con_obj_boomerang
- - - - - - 0x013424 04:B414: FF        .byte $FF   ; 1B con_obj_jumping_spike
- - - - - - 0x013425 04:B415: FF        .byte $FF   ; 1C con_obj_fireball
- - - - - - 0x013426 04:B416: FF        .byte $FF   ; 1D con_obj_1D
- - - - - - 0x013427 04:B417: FF        .byte $FF   ; 1E con_obj_symbol_II
; 0D roper
- - - - - - 0x013428 04:B418: FF        .byte $FF   ; 12 con_obj_knife
- - - - - - 0x013429 04:B419: FF        .byte $FF   ; 13 con_obj_13
- - - - - - 0x01342A 04:B41A: FF        .byte $FF   ; 14 con_obj_grenade
- - - - - - 0x01342B 04:B41B: FF        .byte $FF   ; 15 con_obj_chain_whip
- D 1 - - - 0x01342C 04:B41C: FF        .byte $FF   ; 16 con_obj_flame_grenades
- - - - - - 0x01342D 04:B41D: FF        .byte $FF   ; 17 con_obj_baton
- - - - - - 0x01342E 04:B41E: FF        .byte $FF   ; 18 con_obj_18
- - - - - - 0x01342F 04:B41F: FF        .byte $FF   ; 19 con_obj_19
- - - - - - 0x013430 04:B420: 05        .byte $05   ; 1A con_obj_boomerang
- - - - - - 0x013431 04:B421: FF        .byte $FF   ; 1B con_obj_jumping_spike
- - - - - - 0x013432 04:B422: FF        .byte $FF   ; 1C con_obj_fireball
- - - - - - 0x013433 04:B423: FF        .byte $FF   ; 1D con_obj_1D
- - - - - - 0x013434 04:B424: FF        .byte $FF   ; 1E con_obj_symbol_II
; 1A linda
- - - - - - 0x013435 04:B425: FF        .byte $FF   ; 12 con_obj_knife
- - - - - - 0x013436 04:B426: FF        .byte $FF   ; 13 con_obj_13
- D 1 - - - 0x013437 04:B427: FF        .byte $FF   ; 14 con_obj_grenade
- D 1 - - - 0x013438 04:B428: 02        .byte $02   ; 15 con_obj_chain_whip
- - - - - - 0x013439 04:B429: FF        .byte $FF   ; 16 con_obj_flame_grenades
- - - - - - 0x01343A 04:B42A: FF        .byte $FF   ; 17 con_obj_baton
- - - - - - 0x01343B 04:B42B: FF        .byte $FF   ; 18 con_obj_18
- - - - - - 0x01343C 04:B42C: FF        .byte $FF   ; 19 con_obj_19
- - - - - - 0x01343D 04:B42D: FF        .byte $FF   ; 1A con_obj_boomerang
- - - - - - 0x01343E 04:B42E: FF        .byte $FF   ; 1B con_obj_jumping_spike
- - - - - - 0x01343F 04:B42F: FF        .byte $FF   ; 1C con_obj_fireball
- - - - - - 0x013440 04:B430: FF        .byte $FF   ; 1D con_obj_1D
- - - - - - 0x013441 04:B431: FF        .byte $FF   ; 1E con_obj_symbol_II



sub_B432:
C - - - - - 0x013442 04:B432: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x013445 04:B435: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x013448 04:B438: DD 5B 03  CMP ram_0359_obj + $02,X
C - - - - - 0x01344B 04:B43B: D0 0F     BNE bra_B44C
C - - - - - 0x01344D 04:B43D: B9 AD 00  LDA a: ram_obj_pos_Z_lo,Y
C - - - - - 0x013450 04:B440: 8D A9 03  STA ram_03A9
C - - - - - 0x013453 04:B443: B9 B6 00  LDA a: ram_obj_pos_Z_hi,Y
C - - - - - 0x013456 04:B446: 8D AA 03  STA ram_03AA
C - - - - - 0x013459 04:B449: 4C 78 B4  JMP loc_B478
bra_B44C:
C - - - - - 0x01345C 04:B44C: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x01345F 04:B44F: 9D 6E 04  STA ram_046E_enemy,X
C - - - - - 0x013462 04:B452: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x013465 04:B455: 0A        ASL
C - - - - - 0x013466 04:B456: A8        TAY
C - - - - - 0x013467 04:B457: B9 1D 8B  LDA tbl_8B1D,Y
C - - - - - 0x01346A 04:B45A: 85 2F     STA ram_002F_temp
C - - - - - 0x01346C 04:B45C: B9 1E 8B  LDA tbl_8B1D + $01,Y
C - - - - - 0x01346F 04:B45F: 85 30     STA ram_0030_temp
C - - - - - 0x013471 04:B461: BD 6E 04  LDA ram_046E_enemy,X
; * 04
C - - - - - 0x013474 04:B464: 0A        ASL
C - - - - - 0x013475 04:B465: 0A        ASL
C - - - - - 0x013476 04:B466: 18        CLC
C - - - - - 0x013477 04:B467: 7D 6E 04  ADC ram_046E_enemy,X
C - - - - - 0x01347A 04:B46A: A8        TAY
C - - - - - 0x01347B 04:B46B: C8        INY
C - - - - - 0x01347C 04:B46C: C8        INY
C - - - - - 0x01347D 04:B46D: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x01347F 04:B46F: 8D A9 03  STA ram_03A9
C - - - - - 0x013482 04:B472: C8        INY
C - - - - - 0x013483 04:B473: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x013485 04:B475: 8D AA 03  STA ram_03AA
loc_B478:
C D 1 - - - 0x013488 04:B478: A9 00     LDA #$00
C - - - - - 0x01348A 04:B47A: 9D 6E 04  STA ram_046E_enemy,X
C - - - - - 0x01348D 04:B47D: B5 AF     LDA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x01348F 04:B47F: 38        SEC
C - - - - - 0x013490 04:B480: ED A9 03  SBC ram_03A9
C - - - - - 0x013493 04:B483: 85 2F     STA ram_002F_temp
C - - - - - 0x013495 04:B485: B5 B8     LDA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x013497 04:B487: ED AA 03  SBC ram_03AA
C - - - - - 0x01349A 04:B48A: 85 30     STA ram_0030_temp
C - - - - - 0x01349C 04:B48C: 90 03     BCC bra_B491
C - - - - - 0x01349E 04:B48E: FE 6E 04  INC ram_046E_enemy,X
bra_B491:
C - - - - - 0x0134A1 04:B491: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0134A4 04:B494: 0A        ASL
C - - - - - 0x0134A5 04:B495: A8        TAY
C - - - - - 0x0134A6 04:B496: B9 5C BD  LDA tbl_BD5C,Y
C - - - - - 0x0134A9 04:B499: 85 2F     STA ram_002F_temp
C - - - - - 0x0134AB 04:B49B: B9 5D BD  LDA tbl_BD5C + $01,Y
C - - - - - 0x0134AE 04:B49E: 85 30     STA ram_0030_temp
C - - - - - 0x0134B0 04:B4A0: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x0134B3 04:B4A3: 0A        ASL
C - - - - - 0x0134B4 04:B4A4: A8        TAY
C - - - - - 0x0134B5 04:B4A5: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0134B7 04:B4A7: 85 29     STA ram_0029_temp
C - - - - - 0x0134B9 04:B4A9: C8        INY
C - - - - - 0x0134BA 04:B4AA: B1 2F     LDA (ram_002F_temp),Y
C - - - - - 0x0134BC 04:B4AC: 85 2A     STA ram_002A_temp
C - - - - - 0x0134BE 04:B4AE: A0 00     LDY #$00
C - - - - - 0x0134C0 04:B4B0: BD 6E 04  LDA ram_046E_enemy,X
C - - - - - 0x0134C3 04:B4B3: F0 02     BEQ bra_B4B7
C - - - - - 0x0134C5 04:B4B5: A0 04     LDY #$04
bra_B4B7:
C - - - - - 0x0134C7 04:B4B7: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x0134C9 04:B4B9: 9D 70 04  STA ram_0470_obj,X
C - - - - - 0x0134CC 04:B4BC: C8        INY
C - - - - - 0x0134CD 04:B4BD: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x0134CF 04:B4BF: 9D 78 04  STA ram_0476_obj + $02,X
C - - - - - 0x0134D2 04:B4C2: C8        INY
C - - - - - 0x0134D3 04:B4C3: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x0134D5 04:B4C5: 9D 74 04  STA ram_0474_enemy,X
C - - - - - 0x0134D8 04:B4C8: C8        INY
C - - - - - 0x0134D9 04:B4C9: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x0134DB 04:B4CB: 9D 76 04  STA ram_0476_obj,X
C - - - - - 0x0134DE 04:B4CE: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x0134E1 04:B4D1: C9 05     CMP #con_mission_Forest_of_Death
C - - - - - 0x0134E3 04:B4D3: D0 18     BNE bra_B4ED
C - - - - - 0x0134E5 04:B4D5: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x0134E7 04:B4D7: C9 03     CMP #$03
C - - - - - 0x0134E9 04:B4D9: 90 12     BCC bra_B4ED
C - - - - - 0x0134EB 04:B4DB: BD 74 04  LDA ram_0474_enemy,X
C - - - - - 0x0134EE 04:B4DE: 38        SEC
C - - - - - 0x0134EF 04:B4DF: ED F5 00  SBC a: ram_00F5
C - - - - - 0x0134F2 04:B4E2: 9D 74 04  STA ram_0474_enemy,X
C - - - - - 0x0134F5 04:B4E5: BD 76 04  LDA ram_0476_obj,X
C - - - - - 0x0134F8 04:B4E8: E9 00     SBC #$00
C - - - - - 0x0134FA 04:B4EA: 9D 76 04  STA ram_0476_obj,X
bra_B4ED:
C - - - - - 0x0134FD 04:B4ED: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x013500 04:B4F0: C9 01     CMP #con_mission_At_the_Heliport
C - - - - - 0x013502 04:B4F2: D0 11     BNE bra_B505_RTS
C - - - - - 0x013504 04:B4F4: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x013507 04:B4F7: C9 01     CMP #con_0359_01
C - - - - - 0x013509 04:B4F9: D0 0A     BNE bra_B505_RTS
C - - - - - 0x01350B 04:B4FB: AD 23 04  LDA ram_mission_id_lo
C - - - - - 0x01350E 04:B4FE: D0 05     BNE bra_B505_RTS
C - - - - - 0x013510 04:B500: A9 07     LDA #$07
C - - - - - 0x013512 04:B502: 9D 70 04  STA ram_0470_obj,X
bra_B505_RTS:
C - - - - - 0x013515 04:B505: 60        RTS



sub_B506:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x013516 04:B506: BD 64 04  LDA ram_0464_obj,X
C - - - - - 0x013519 04:B509: C9 FF     CMP #$FF
C - - - - - 0x01351B 04:B50B: F0 24     BEQ bra_B531
C - - - - - 0x01351D 04:B50D: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x01351F 04:B50F: A8        TAY
C - - - - - 0x013520 04:B510: B9 38 B5  LDA tbl_B538,Y
C - - - - - 0x013523 04:B513: F0 1C     BEQ bra_B531
C - - - - - 0x013525 04:B515: 85 19     STA ram_0019_t27
C - - - - - 0x013527 04:B517: AD 35 04  LDA ram_difficulty
C - - - - - 0x01352A 04:B51A: F0 0A     BEQ bra_B526    ; if easy
; if not easy
C - - - - - 0x01352C 04:B51C: C9 01     CMP #$01
C - - - - - 0x01352E 04:B51E: F0 04     BEQ bra_B524    ; if normal
; if difficult
C - - - - - 0x013530 04:B520: A9 00     LDA #$00
C - - - - - 0x013532 04:B522: 85 19     STA ram_0019_t27
bra_B524:
C - - - - - 0x013534 04:B524: C6 19     DEC ram_0019_t27
bra_B526:
C - - - - - 0x013536 04:B526: A5 19     LDA ram_0019_t27
C - - - - - 0x013538 04:B528: F0 07     BEQ bra_B531
C - - - - - 0x01353A 04:B52A: 30 05     BMI bra_B531
C - - - - - 0x01353C 04:B52C: 9D 64 04  STA ram_0464_obj,X
C - - - - - 0x01353F 04:B52F: 38        SEC
C - - - - - 0x013540 04:B530: 60        RTS
bra_B531:
C - - - - - 0x013541 04:B531: A9 00     LDA #$00
C - - - - - 0x013543 04:B533: 9D 64 04  STA ram_0464_obj,X
C - - - - - 0x013546 04:B536: 18        CLC
C - - - - - 0x013547 04:B537: 60        RTS



tbl_B538:
- - - - - - 0x013548 04:B538: 00        .byte $00   ; 00 con_obj_billy
- - - - - - 0x013549 04:B539: 00        .byte $00   ; 01 con_obj_jimmy
- D 1 - - - 0x01354A 04:B53A: 07        .byte $07   ; 02 con_obj_williams
- D 1 - - - 0x01354B 04:B53B: 07        .byte $07   ; 03 con_obj_roper
- D 1 - - - 0x01354C 04:B53C: 07        .byte $07   ; 04 con_obj_linda
- - - - - - 0x01354D 04:B53D: 00        .byte $00   ; 05 con_obj_05
- D 1 - - - 0x01354E 04:B53E: 02        .byte $02   ; 06 con_obj_bolo
- D 1 - - - 0x01354F 04:B53F: 02        .byte $02   ; 07 con_obj_burnov
- D 1 - - - 0x013550 04:B540: 02        .byte $02   ; 08 con_obj_abore
- D 1 - - - 0x013551 04:B541: 01        .byte $01   ; 09 con_obj_chin_taimei
- D 1 - - - 0x013552 04:B542: 05        .byte $05   ; 0A con_obj_right_arm
- - - - - - 0x013553 04:B543: 00        .byte $00   ; 0B con_obj_0B
- D 1 - - - 0x013554 04:B544: 03        .byte $03   ; 0C con_obj_doppelganger
- - - - - - 0x013555 04:B545: 00        .byte $00   ; 0D con_obj_0D
- - - - - - 0x013556 04:B546: 00        .byte $00   ; 0E con_obj_0E
- - - - - - 0x013557 04:B547: 03        .byte $03   ; 0F con_obj_ninja
- - - - - - 0x013558 04:B548: 00        .byte $00   ; 10 con_obj_10
- D 1 - - - 0x013559 04:B549: 01        .byte $01   ; 11 con_obj_shadow_warrior



sub_B54A:
C - - - - - 0x01355A 04:B54A: BD 7A 04  LDA ram_047A_enemy,X
C - - - - - 0x01355D 04:B54D: C9 FF     CMP #$FF
C - - - - - 0x01355F 04:B54F: F0 3F     BEQ bra_B590
C - - - - - 0x013561 04:B551: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x013563 04:B553: C9 0F     CMP #con_obj_ninja
C - - - - - 0x013565 04:B555: D0 05     BNE bra_B55C
C - - - - - 0x013567 04:B557: 98        TYA
C - - - - - 0x013568 04:B558: F0 36     BEQ bra_B590
C - - - - - 0x01356A 04:B55A: D0 3B     BNE bra_B597    ; jmp
bra_B55C:
C - - - - - 0x01356C 04:B55C: 0A        ASL
C - - - - - 0x01356D 04:B55D: A8        TAY
C - - - - - 0x01356E 04:B55E: B9 B5 B8  LDA tbl_B8B5,Y
C - - - - - 0x013571 04:B561: 85 29     STA ram_0029_temp
C - - - - - 0x013573 04:B563: B9 B6 B8  LDA tbl_B8B5 + $01,Y
C - - - - - 0x013576 04:B566: 85 2A     STA ram_002A_temp
C - - - - - 0x013578 04:B568: A0 00     LDY #$00
C - - - - - 0x01357A 04:B56A: BD 48 04  LDA ram_0446_obj + $02,X
C - - - - - 0x01357D 04:B56D: 10 18     BPL bra_B587
C - - - - - 0x01357F 04:B56F: 29 7F     AND #$7F
C - - - - - 0x013581 04:B571: C9 02     CMP #$02
C - - - - - 0x013583 04:B573: D0 0D     BNE bra_B582
C - - - - - 0x013585 04:B575: A9 04     LDA #$04
C - - - - - 0x013587 04:B577: 9D 6A 04  STA ram_046A_obj,X
C - - - - - 0x01358A 04:B57A: A9 01     LDA #$01
C - - - - - 0x01358C 04:B57C: 9D 7A 04  STA ram_047A_enemy,X
C - - - - - 0x01358F 04:B57F: 4C 36 B6  JMP loc_B636
bra_B582:
C - - - - - 0x013592 04:B582: A8        TAY
C - - - - - 0x013593 04:B583: B9 4D B6  LDA tbl_B64D,Y
C - - - - - 0x013596 04:B586: A8        TAY
bra_B587:
C - - - - - 0x013597 04:B587: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01359A 04:B58A: 29 07     AND #$07
C - - - - - 0x01359C 04:B58C: D1 29     CMP (ram_0029_temp),Y
C - - - - - 0x01359E 04:B58E: 90 07     BCC bra_B597
bra_B590:
C - - - - - 0x0135A0 04:B590: A9 01     LDA #$01
C - - - - - 0x0135A2 04:B592: 9D 7A 04  STA ram_047A_enemy,X
C - - - - - 0x0135A5 04:B595: D0 05     BNE bra_B59C    ; jmp
bra_B597:
C - - - - - 0x0135A7 04:B597: A9 02     LDA #$02
C - - - - - 0x0135A9 04:B599: 9D 7A 04  STA ram_047A_enemy,X
bra_B59C:
C - - - - - 0x0135AC 04:B59C: A9 00     LDA #$00
C - - - - - 0x0135AE 04:B59E: 85 29     STA ram_0029_temp
C - - - - - 0x0135B0 04:B5A0: BD 48 04  LDA ram_0446_obj + $02,X
C - - - - - 0x0135B3 04:B5A3: 10 08     BPL bra_B5AD
C - - - - - 0x0135B5 04:B5A5: 29 7F     AND #$7F
C - - - - - 0x0135B7 04:B5A7: A8        TAY
C - - - - - 0x0135B8 04:B5A8: B9 EB B8  LDA tbl_B8EB,Y
C - - - - - 0x0135BB 04:B5AB: 85 29     STA ram_0029_temp
bra_B5AD:
C - - - - - 0x0135BD 04:B5AD: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x0135BF 04:B5AF: 0A        ASL
C - - - - - 0x0135C0 04:B5B0: A8        TAY
C - - - - - 0x0135C1 04:B5B1: B9 98 B9  LDA tbl_B998_enemy_ai,Y
C - - - - - 0x0135C4 04:B5B4: 85 2B     STA ram_002B_temp
C - - - - - 0x0135C6 04:B5B6: B9 99 B9  LDA tbl_B998_enemy_ai + $01,Y
C - - - - - 0x0135C9 04:B5B9: 85 2C     STA ram_002C_temp
C - - - - - 0x0135CB 04:B5BB: A5 29     LDA ram_0029_temp
C - - - - - 0x0135CD 04:B5BD: 18        CLC
C - - - - - 0x0135CE 04:B5BE: 65 2B     ADC ram_002B_temp
C - - - - - 0x0135D0 04:B5C0: 85 2D     STA ram_002D_temp
C - - - - - 0x0135D2 04:B5C2: A9 00     LDA #$00
C - - - - - 0x0135D4 04:B5C4: 65 2C     ADC ram_002C_temp
C - - - - - 0x0135D6 04:B5C6: 85 2E     STA ram_002E_temp
C - - - - - 0x0135D8 04:B5C8: BC 56 04  LDY ram_0454_obj_aim + $02,X
C - - - - - 0x0135DB 04:B5CB: B5 65     LDA ram_0063_obj_facing + $02,X
C - - - - - 0x0135DD 04:B5CD: 29 80     AND #$80
C - - - - - 0x0135DF 04:B5CF: 85 19     STA ram_0019_t28
C - - - - - 0x0135E1 04:B5D1: B9 63 00  LDA a: ram_0063_obj_facing,Y
C - - - - - 0x0135E4 04:B5D4: 29 80     AND #$80
C - - - - - 0x0135E6 04:B5D6: 45 19     EOR ram_0019_t28
C - - - - - 0x0135E8 04:B5D8: D0 04     BNE bra_B5DE
C - - - - - 0x0135EA 04:B5DA: A9 10     LDA #$10
C - - - - - 0x0135EC 04:B5DC: D0 18     BNE bra_B5F6    ; jmp
bra_B5DE:
C - - - - - 0x0135EE 04:B5DE: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0135F1 04:B5E1: 29 7F     AND #$7F
C - - - - - 0x0135F3 04:B5E3: C9 18     CMP #con_state_18
C - - - - - 0x0135F5 04:B5E5: D0 04     BNE bra_B5EB
C - - - - - 0x0135F7 04:B5E7: A9 30     LDA #$30
C - - - - - 0x0135F9 04:B5E9: D0 0B     BNE bra_B5F6    ; jmp
bra_B5EB:
C - - - - - 0x0135FB 04:B5EB: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x0135FE 04:B5EE: 10 04     BPL bra_B5F4    ; if not con_004A_flag_knocked_down
C - - - - - 0x013600 04:B5F0: A9 20     LDA #$20
C - - - - - 0x013602 04:B5F2: D0 02     BNE bra_B5F6    ; jmp
bra_B5F4:
C - - - - - 0x013604 04:B5F4: A9 00     LDA #$00
bra_B5F6:
C - - - - - 0x013606 04:B5F6: 85 19     STA ram_0019_t29
C - - - - - 0x013608 04:B5F8: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x01360A 04:B5FA: C9 06     CMP #$06
C - - - - - 0x01360C 04:B5FC: 90 09     BCC bra_B607_not_boss
C - - - - - 0x01360E 04:B5FE: C9 09     CMP #$09
C - - - - - 0x013610 04:B600: B0 05     BCS bra_B607_not_boss
; if bosses
; con_obj_bolo
; con_obj_burnov
; con_obj_abore
C - - - - - 0x013612 04:B602: A5 19     LDA ram_0019_t29
C - - - - - 0x013614 04:B604: 4A        LSR
C - - - - - 0x013615 04:B605: 85 19     STA ram_0019_t29
bra_B607_not_boss:
C - - - - - 0x013617 04:B607: A5 19     LDA ram_0019_t29
C - - - - - 0x013619 04:B609: 18        CLC
C - - - - - 0x01361A 04:B60A: 65 2D     ADC ram_002D_temp
C - - - - - 0x01361C 04:B60C: 85 29     STA ram_0029_temp
C - - - - - 0x01361E 04:B60E: A9 00     LDA #$00
C - - - - - 0x013620 04:B610: 65 2E     ADC ram_002E_temp
C - - - - - 0x013622 04:B612: 85 2A     STA ram_002A_temp
C - - - - - 0x013624 04:B614: BD 7A 04  LDA ram_047A_enemy,X
C - - - - - 0x013627 04:B617: C9 01     CMP #$01
C - - - - - 0x013629 04:B619: F0 0D     BEQ bra_B628
C - - - - - 0x01362B 04:B61B: A5 29     LDA ram_0029_temp
C - - - - - 0x01362D 04:B61D: 18        CLC
C - - - - - 0x01362E 04:B61E: 69 08     ADC #< $0008
C - - - - - 0x013630 04:B620: 85 29     STA ram_0029_temp
C - - - - - 0x013632 04:B622: A5 2A     LDA ram_002A_temp
C - - - - - 0x013634 04:B624: 69 00     ADC #> $0008
C - - - - - 0x013636 04:B626: 85 2A     STA ram_002A_temp
bra_B628:
C - - - - - 0x013638 04:B628: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01363B 04:B62B: 29 07     AND #$07
C - - - - - 0x01363D 04:B62D: A8        TAY
C - - - - - 0x01363E 04:B62E: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x013640 04:B630: 9D 6A 04  STA ram_046A_obj,X
C - - - - - 0x013643 04:B633: 20 53 B6  JSR sub_B653
loc_B636:
C D 1 - - - 0x013646 04:B636: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x013648 04:B638: 0A        ASL
C - - - - - 0x013649 04:B639: A8        TAY
C - - - - - 0x01364A 04:B63A: B9 F1 B8  LDA tbl_B8F1,Y
C - - - - - 0x01364D 04:B63D: 85 29     STA ram_0029_temp
C - - - - - 0x01364F 04:B63F: B9 F2 B8  LDA tbl_B8F1 + $01,Y
C - - - - - 0x013652 04:B642: 85 2A     STA ram_002A_temp
C - - - - - 0x013654 04:B644: BC 6A 04  LDY ram_046A_obj,X
C - - - - - 0x013657 04:B647: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x013659 04:B649: 9D 7C 04  STA ram_047C_obj,X
C - - - - - 0x01365C 04:B64C: 60        RTS



tbl_B64D:
- D 1 - - - 0x01365D 04:B64D: 01        .byte $01   ; 00 
- D 1 - - - 0x01365E 04:B64E: 02        .byte $02   ; 01 
- - - - - - 0x01365F 04:B64F: 01        .byte $01   ; 02 
- D 1 - - - 0x013660 04:B650: 02        .byte $02   ; 03 
- D 1 - - - 0x013661 04:B651: 02        .byte $02   ; 04 
- D 1 - - - 0x013662 04:B652: 01        .byte $01   ; 05 



sub_B653:
C - - - - - 0x013663 04:B653: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x013665 04:B655: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x013667 04:B657: F0 2C     BEQ bra_B685
C - - - - - 0x013669 04:B659: C9 02     CMP #con_obj_williams
C - - - - - 0x01366B 04:B65B: F0 14     BEQ bra_B671
C - - - - - 0x01366D 04:B65D: C9 0A     CMP #con_obj_right_arm
C - - - - - 0x01366F 04:B65F: F0 10     BEQ bra_B671
C - - - - - 0x013671 04:B661: C9 0F     CMP #con_obj_ninja
C - - - - - 0x013673 04:B663: D0 31     BNE bra_B696_RTS
C - - - - - 0x013675 04:B665: BD 6A 04  LDA ram_046A_obj,X
C - - - - - 0x013678 04:B668: C9 03     CMP #$03
C - - - - - 0x01367A 04:B66A: F0 20     BEQ bra_B68C
C - - - - - 0x01367C 04:B66C: C9 04     CMP #$04
C - - - - - 0x01367E 04:B66E: F0 1C     BEQ bra_B68C
C - - - - - 0x013680 04:B670: 60        RTS
bra_B671:
C - - - - - 0x013681 04:B671: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x013684 04:B674: C9 03     CMP #con_mission_Undersea_Base_pt1
C - - - - - 0x013686 04:B676: D0 1E     BNE bra_B696_RTS
C - - - - - 0x013688 04:B678: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x01368B 04:B67B: F0 19     BEQ bra_B696_RTS
; if not con_0359_00
C - - - - - 0x01368D 04:B67D: BD 6A 04  LDA ram_046A_obj,X
C - - - - - 0x013690 04:B680: C9 02     CMP #$02
C - - - - - 0x013692 04:B682: F0 0D     BEQ bra_B691
C - - - - - 0x013694 04:B684: 60        RTS
bra_B685:
C - - - - - 0x013695 04:B685: BD 6A 04  LDA ram_046A_obj,X
C - - - - - 0x013698 04:B688: C9 07     CMP #$07
C - - - - - 0x01369A 04:B68A: D0 0A     BNE bra_B696_RTS
bra_B68C:
C - - - - - 0x01369C 04:B68C: BD 4C 04  LDA ram_044A_obj + $02,X
C - - - - - 0x01369F 04:B68F: 30 05     BMI bra_B696_RTS
bra_B691:
C - - - - - 0x0136A1 04:B691: A9 00     LDA #$00
C - - - - - 0x0136A3 04:B693: 9D 6A 04  STA ram_046A_obj,X
bra_B696_RTS:
C - - - - - 0x0136A6 04:B696: 60        RTS



sub_B697:
C - - - - - 0x0136A7 04:B697: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0136A9 04:B699: 30 11     BMI bra_B6AC    ; if con_004A_flag_knocked_down
C - - - - - 0x0136AB 04:B69B: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x0136AE 04:B69E: C9 04     CMP #$04
C - - - - - 0x0136B0 04:B6A0: B0 0A     BCS bra_B6AC
C - - - - - 0x0136B2 04:B6A2: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0136B5 04:B6A5: DD 7C 04  CMP ram_047C_obj,X
C - - - - - 0x0136B8 04:B6A8: B0 02     BCS bra_B6AC
C - - - - - 0x0136BA 04:B6AA: 38        SEC
C - - - - - 0x0136BB 04:B6AB: 60        RTS
bra_B6AC:
C - - - - - 0x0136BC 04:B6AC: 18        CLC
C - - - - - 0x0136BD 04:B6AD: 60        RTS



sub_B6AE:
C - - - - - 0x0136BE 04:B6AE: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0136C0 04:B6B0: 30 18     BMI bra_B6CA    ; if con_004A_flag_knocked_down
C - - - - - 0x0136C2 04:B6B2: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x0136C5 04:B6B5: C9 04     CMP #$04
C - - - - - 0x0136C7 04:B6B7: B0 F3     BCS bra_B6AC
C - - - - - 0x0136C9 04:B6B9: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0136CC 04:B6BC: 38        SEC
C - - - - - 0x0136CD 04:B6BD: FD 7C 04  SBC ram_047C_obj,X
C - - - - - 0x0136D0 04:B6C0: 85 29     STA ram_0029_temp
C - - - - - 0x0136D2 04:B6C2: 90 06     BCC bra_B6CA
C - - - - - 0x0136D4 04:B6C4: C9 04     CMP #$04
C - - - - - 0x0136D6 04:B6C6: B0 02     BCS bra_B6CA
C - - - - - 0x0136D8 04:B6C8: 38        SEC
C - - - - - 0x0136D9 04:B6C9: 60        RTS
bra_B6CA:
C - - - - - 0x0136DA 04:B6CA: 18        CLC
C - - - - - 0x0136DB 04:B6CB: 60        RTS



sub_B6CC:
C - - - - - 0x0136DC 04:B6CC: BD 5E 04  LDA ram_045E_enemy,X
C - - - - - 0x0136DF 04:B6CF: F0 41     BEQ bra_B712
C - - - - - 0x0136E1 04:B6D1: 8A        TXA
C - - - - - 0x0136E2 04:B6D2: 49 01     EOR #$01
C - - - - - 0x0136E4 04:B6D4: A8        TAY
C - - - - - 0x0136E5 04:B6D5: B9 6C 04  LDA ram_046A_obj + $02,Y
C - - - - - 0x0136E8 04:B6D8: 10 1C     BPL bra_B6F6
C - - - - - 0x0136EA 04:B6DA: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0136ED 04:B6DD: 10 1C     BPL bra_B6FB
bra_B6DF:
C - - - - - 0x0136EF 04:B6DF: B9 4C 00  LDA a: ram_004A_obj_flags + $02,Y
C - - - - - 0x0136F2 04:B6E2: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0136F4 04:B6E4: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x0136F6 04:B6E6: F0 2A     BEQ bra_B712
C - - - - - 0x0136F8 04:B6E8: B9 45 00  LDA a: ram_state + $02,Y
C - - - - - 0x0136FB 04:B6EB: 29 7F     AND #$7F
C - - - - - 0x0136FD 04:B6ED: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x0136FF 04:B6EF: F0 21     BEQ bra_B712
C - - - - - 0x013701 04:B6F1: A9 00     LDA #$00
C - - - - - 0x013703 04:B6F3: A8        TAY
C - - - - - 0x013704 04:B6F4: F0 1E     BEQ bra_B714    ; jmp
bra_B6F6:
C - - - - - 0x013706 04:B6F6: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x013709 04:B6F9: 10 E4     BPL bra_B6DF
bra_B6FB:
C - - - - - 0x01370B 04:B6FB: B9 4C 00  LDA a: ram_004A_obj_flags + $02,Y
C - - - - - 0x01370E 04:B6FE: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x013710 04:B700: C9 C0     CMP #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x013712 04:B702: F0 0E     BEQ bra_B712
C - - - - - 0x013714 04:B704: B9 45 00  LDA a: ram_state + $02,Y
C - - - - - 0x013717 04:B707: 29 7F     AND #$7F
C - - - - - 0x013719 04:B709: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x01371B 04:B70B: F0 05     BEQ bra_B712
C - - - - - 0x01371D 04:B70D: A9 FF     LDA #$FF
C - - - - - 0x01371F 04:B70F: A8        TAY
C - - - - - 0x013720 04:B710: D0 02     BNE bra_B714    ; jmp
bra_B712:
C - - - - - 0x013722 04:B712: 38        SEC
C - - - - - 0x013723 04:B713: 60        RTS
bra_B714:
C - - - - - 0x013724 04:B714: 18        CLC
C - - - - - 0x013725 04:B715: 60        RTS



sub_B716:
C - - - - - 0x013726 04:B716: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x013728 04:B718: 30 0A     BMI bra_B724    ; if con_004A_flag_knocked_down
C - - - - - 0x01372A 04:B71A: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x01372C 04:B71C: C9 02     CMP #con_obj_williams
C - - - - - 0x01372E 04:B71E: F0 07     BEQ bra_B727
C - - - - - 0x013730 04:B720: C9 0F     CMP #con_obj_ninja
C - - - - - 0x013732 04:B722: F0 03     BEQ bra_B727
bra_B724:
C - - - - - 0x013734 04:B724: 4C 2E B8  JMP loc_B82E
bra_B727:
C - - - - - 0x013737 04:B727: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x01373A 04:B72A: F0 0F     BEQ bra_B73B
C - - - - - 0x01373C 04:B72C: 29 01     AND #$01
C - - - - - 0x01373E 04:B72E: D0 F4     BNE bra_B724
C - - - - - 0x013740 04:B730: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x013743 04:B733: 10 03     BPL bra_B738
C - - - - - 0x013745 04:B735: 4C F8 B7  JMP loc_B7F8
bra_B738:
C - - - - - 0x013748 04:B738: 4C D3 B7  JMP loc_B7D3
bra_B73B:
C - - - - - 0x01374B 04:B73B: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x01374D 04:B73D: C9 0F     CMP #con_obj_ninja
C - - - - - 0x01374F 04:B73F: D0 04     BNE bra_B745
bra_B741:
C - - - - - 0x013751 04:B741: A9 02     LDA #con_state_run
C - - - - - 0x013753 04:B743: D0 12     BNE bra_B757    ; jmp
bra_B745:
C - - - - - 0x013755 04:B745: BD 48 04  LDA ram_0446_obj + $02,X
C - - - - - 0x013758 04:B748: 10 04     BPL bra_B74E
C - - - - - 0x01375A 04:B74A: C9 84     CMP #$84
C - - - - - 0x01375C 04:B74C: F0 F3     BEQ bra_B741
bra_B74E:
C - - - - - 0x01375E 04:B74E: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x013761 04:B751: 29 07     AND #$07
C - - - - - 0x013763 04:B753: A8        TAY
C - - - - - 0x013764 04:B754: B9 30 B8  LDA tbl_B830_williams_state,Y
bra_B757:
C - - - - - 0x013767 04:B757: 85 19     STA ram_0019_t30_williams_run_state
C - - - - - 0x013769 04:B759: A9 30     LDA #$30
C - - - - - 0x01376B 04:B75B: 85 1A     STA ram_001A_t15
C - - - - - 0x01376D 04:B75D: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x01376F 04:B75F: 29 7F     AND #$7F
C - - - - - 0x013771 04:B761: C9 0A     CMP #con_006C_0A
C - - - - - 0x013773 04:B763: D0 05     BNE bra_B76A
C - - - - - 0x013775 04:B765: BD 7C 04  LDA ram_047C_obj,X
C - - - - - 0x013778 04:B768: 85 1A     STA ram_001A_t15
bra_B76A:
C - - - - - 0x01377A 04:B76A: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x01377D 04:B76D: C5 1A     CMP ram_001A_t15
C - - - - - 0x01377F 04:B76F: 90 B3     BCC bra_B724
C - - - - - 0x013781 04:B771: A5 19     LDA ram_0019_t30_williams_run_state
C - - - - - 0x013783 04:B773: C9 02     CMP #con_state_run
C - - - - - 0x013785 04:B775: F0 0E     BEQ bra_B785_williams_normal_running
; if williams is somersault running
C - - - - - 0x013787 04:B777: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x01378A 04:B77A: C9 04     CMP #$04
C - - - - - 0x01378C 04:B77C: B0 A6     BCS bra_B724
C - - - - - 0x01378E 04:B77E: A5 19     LDA ram_0019_t30_williams_run_state
C - - - - - 0x013790 04:B780: 95 45     STA ram_state + $02,X
C - - - - - 0x013792 04:B782: 4C B1 B7  JMP loc_B7B1
bra_B785_williams_normal_running:
C - - - - - 0x013795 04:B785: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x013798 04:B788: C9 04     CMP #$04
C - - - - - 0x01379A 04:B78A: B0 07     BCS bra_B793
C - - - - - 0x01379C 04:B78C: A5 19     LDA ram_0019_t30_williams_run_state
C - - - - - 0x01379E 04:B78E: 95 45     STA ram_state + $02,X
C - - - - - 0x0137A0 04:B790: 4C B1 B7  JMP loc_B7B1
bra_B793:
C - - - - - 0x0137A3 04:B793: A5 19     LDA ram_0019_t30_williams_run_state
C - - - - - 0x0137A5 04:B795: 95 45     STA ram_state + $02,X
C - - - - - 0x0137A7 04:B797: 20 35 B2  JSR sub_B235
C - - - - - 0x0137AA 04:B79A: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0137AD 04:B79D: 10 09     BPL bra_B7A8
C - - - - - 0x0137AF 04:B79F: 29 7F     AND #$7F
C - - - - - 0x0137B1 04:B7A1: 09 02     ORA #$02
C - - - - - 0x0137B3 04:B7A3: 48        PHA
C - - - - - 0x0137B4 04:B7A4: 20 41 B2  JSR sub_B241
C - - - - - 0x0137B7 04:B7A7: 68        PLA
bra_B7A8:
C - - - - - 0x0137B8 04:B7A8: A8        TAY
C - - - - - 0x0137B9 04:B7A9: B9 38 B8  LDA tbl_B838_direction,Y
C - - - - - 0x0137BC 04:B7AC: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x0137BF 04:B7AF: D0 0E     BNE bra_B7BF    ; jmp
loc_B7B1:
C D 1 - - - 0x0137C1 04:B7B1: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x0137C4 04:B7B4: 10 06     BPL bra_B7BC
C - - - - - 0x0137C6 04:B7B6: 20 3C B2  JSR sub_B23C
C - - - - - 0x0137C9 04:B7B9: 4C BF B7  JMP loc_B7BF
bra_B7BC:
C - - - - - 0x0137CC 04:B7BC: 20 30 B2  JSR sub_B230
bra_B7BF:
loc_B7BF:
C D 1 - - - 0x0137CF 04:B7BF: B5 45     LDA ram_state + $02,X
C - - - - - 0x0137D1 04:B7C1: C9 02     CMP #con_state_run
C - - - - - 0x0137D3 04:B7C3: F0 07     BEQ bra_B7CC
C - - - - - 0x0137D5 04:B7C5: A9 40     LDA #$40
C - - - - - 0x0137D7 04:B7C7: 9D 60 04  STA ram_0460_enemy,X
C - - - - - 0x0137DA 04:B7CA: D0 60     BNE bra_B82C    ; jmp
bra_B7CC:
C - - - - - 0x0137DC 04:B7CC: A9 80     LDA #$80
C - - - - - 0x0137DE 04:B7CE: 9D 60 04  STA ram_0460_enemy,X
C - - - - - 0x0137E1 04:B7D1: D0 59     BNE bra_B82C    ; jmp
loc_B7D3:
C D 1 - - - 0x0137E3 04:B7D3: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x0137E6 04:B7D6: 30 18     BMI bra_B7F0
C - - - - - 0x0137E8 04:B7D8: A9 2C     LDA #$2C
C - - - - - 0x0137EA 04:B7DA: 85 19     STA ram_0019_t31
C - - - - - 0x0137EC 04:B7DC: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x0137EE 04:B7DE: 29 7F     AND #$7F
C - - - - - 0x0137F0 04:B7E0: C9 0A     CMP #con_006C_0A
C - - - - - 0x0137F2 04:B7E2: D0 05     BNE bra_B7E9
C - - - - - 0x0137F4 04:B7E4: BD 7C 04  LDA ram_047C_obj,X
C - - - - - 0x0137F7 04:B7E7: 85 19     STA ram_0019_t31
bra_B7E9:
C - - - - - 0x0137F9 04:B7E9: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x0137FC 04:B7EC: C5 19     CMP ram_0019_t31
C - - - - - 0x0137FE 04:B7EE: B0 3C     BCS bra_B82C
bra_B7F0:
C - - - - - 0x013800 04:B7F0: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x013802 04:B7F2: 09 01     ORA #con_004A_flag_01
C - - - - - 0x013804 04:B7F4: 95 4C     STA ram_004A_obj_flags + $02,X
C - - - - - 0x013806 04:B7F6: D0 2D     BNE bra_B825    ; jmp
loc_B7F8:
C D 1 - - - 0x013808 04:B7F8: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x01380B 04:B7FB: 30 28     BMI bra_B825
C - - - - - 0x01380D 04:B7FD: A9 20     LDA #$20
C - - - - - 0x01380F 04:B7FF: 85 19     STA ram_0019_t32
C - - - - - 0x013811 04:B801: B5 6C     LDA ram_enemy_ai_template,X
C - - - - - 0x013813 04:B803: 29 7F     AND #$7F
C - - - - - 0x013815 04:B805: C9 0A     CMP #con_006C_0A
C - - - - - 0x013817 04:B807: D0 05     BNE bra_B80E
C - - - - - 0x013819 04:B809: BD 7C 04  LDA ram_047C_obj,X
C - - - - - 0x01381C 04:B80C: 85 19     STA ram_0019_t32
bra_B80E:
C - - - - - 0x01381E 04:B80E: BD 11 03  LDA ram_obj_direction + $02,X
C - - - - - 0x013821 04:B811: 29 10     AND #$10
C - - - - - 0x013823 04:B813: F0 09     BEQ bra_B81E
C - - - - - 0x013825 04:B815: BD 5A 04  LDA ram_045A_enemy,X
C - - - - - 0x013828 04:B818: C9 04     CMP #$04
C - - - - - 0x01382A 04:B81A: B0 02     BCS bra_B81E
C - - - - - 0x01382C 04:B81C: 90 07     BCC bra_B825    ; jmp
bra_B81E:
C - - - - - 0x01382E 04:B81E: BD 58 04  LDA ram_0458_enemy,X
C - - - - - 0x013831 04:B821: C5 19     CMP ram_0019_t32
C - - - - - 0x013833 04:B823: B0 07     BCS bra_B82C
bra_B825:
C - - - - - 0x013835 04:B825: A9 00     LDA #$00
C - - - - - 0x013837 04:B827: 9D 60 04  STA ram_0460_enemy,X
C - - - - - 0x01383A 04:B82A: F0 02     BEQ bra_B82E    ; jmp
bra_B82C:
C - - - - - 0x01383C 04:B82C: 38        SEC
C - - - - - 0x01383D 04:B82D: 60        RTS
bra_B82E:
loc_B82E:
C D 1 - - - 0x01383E 04:B82E: 18        CLC
C - - - - - 0x01383F 04:B82F: 60        RTS



tbl_B830_williams_state:
- D 1 - - - 0x013840 04:B830: 0D        .byte con_state_somersault_run   ; 00 
- D 1 - - - 0x013841 04:B831: 0D        .byte con_state_somersault_run   ; 01 
- D 1 - - - 0x013842 04:B832: 0D        .byte con_state_somersault_run   ; 02 
- D 1 - - - 0x013843 04:B833: 0D        .byte con_state_somersault_run   ; 03 
- D 1 - - - 0x013844 04:B834: 02        .byte con_state_run   ; 04 
- D 1 - - - 0x013845 04:B835: 02        .byte con_state_run   ; 05 
- D 1 - - - 0x013846 04:B836: 02        .byte con_state_run   ; 06 
- D 1 - - - 0x013847 04:B837: 02        .byte con_state_run   ; 07 



tbl_B838_direction:
- D 1 - - - 0x013848 04:B838: 30        .byte $30   ; 00 
- D 1 - - - 0x013849 04:B839: 50        .byte $50   ; 01 
- D 1 - - - 0x01384A 04:B83A: D0        .byte $D0   ; 02 
- D 1 - - - 0x01384B 04:B83B: B0        .byte $B0   ; 03 



sub_B83C:
C - - - - - 0x01384C 04:B83C: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x01384E 04:B83E: C9 02     CMP #con_obj_williams
C - - - - - 0x013850 04:B840: F0 03     BEQ bra_B845
bra_B842:
C - - - - - 0x013852 04:B842: 4C B3 B8  JMP loc_B8B3
bra_B845:
C - - - - - 0x013855 04:B845: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x013858 04:B848: F0 06     BEQ bra_B850
C - - - - - 0x01385A 04:B84A: 29 01     AND #$01
C - - - - - 0x01385C 04:B84C: D0 F4     BNE bra_B842
C - - - - - 0x01385E 04:B84E: F0 35     BEQ bra_B885    ; jmp
bra_B850:
C - - - - - 0x013860 04:B850: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x013863 04:B853: 29 07     AND #$07
C - - - - - 0x013865 04:B855: A8        TAY
C - - - - - 0x013866 04:B856: B9 30 B8  LDA tbl_B830_williams_state,Y
C - - - - - 0x013869 04:B859: 95 45     STA ram_state + $02,X
C - - - - - 0x01386B 04:B85B: BD 6C 04  LDA ram_046A_obj + $02,X
C - - - - - 0x01386E 04:B85E: 10 07     BPL bra_B867
C - - - - - 0x013870 04:B860: A9 C0     LDA #$C0
C - - - - - 0x013872 04:B862: 9D 11 03  STA ram_obj_direction + $02,X
C - - - - - 0x013875 04:B865: D0 05     BNE bra_B86C    ; jmp
bra_B867:
C - - - - - 0x013877 04:B867: A9 40     LDA #$40
C - - - - - 0x013879 04:B869: 9D 11 03  STA ram_obj_direction + $02,X
bra_B86C:
C - - - - - 0x01387C 04:B86C: B5 45     LDA ram_state + $02,X
C - - - - - 0x01387E 04:B86E: C9 02     CMP #con_state_run
C - - - - - 0x013880 04:B870: F0 07     BEQ bra_B879
C - - - - - 0x013882 04:B872: A9 40     LDA #$40
C - - - - - 0x013884 04:B874: 9D 60 04  STA ram_0460_enemy,X
C - - - - - 0x013887 04:B877: D0 05     BNE bra_B87E    ; jmp
bra_B879:
C - - - - - 0x013889 04:B879: A9 80     LDA #$80
C - - - - - 0x01388B 04:B87B: 9D 60 04  STA ram_0460_enemy,X
bra_B87E:
C - - - - - 0x01388E 04:B87E: A9 00     LDA #$00
C - - - - - 0x013890 04:B880: 9D 68 04  STA ram_0468_enemy,X
C - - - - - 0x013893 04:B883: F0 2C     BEQ bra_B8B1    ; jmp
bra_B885:
C - - - - - 0x013895 04:B885: BD 73 03  LDA ram_0371_obj + $02,X
C - - - - - 0x013898 04:B888: 30 0A     BMI bra_B894
C - - - - - 0x01389A 04:B88A: FE 68 04  INC ram_0468_enemy,X
C - - - - - 0x01389D 04:B88D: BD 68 04  LDA ram_0468_enemy,X
C - - - - - 0x0138A0 04:B890: C9 16     CMP #$16
C - - - - - 0x0138A2 04:B892: 90 1D     BCC bra_B8B1
bra_B894:
C - - - - - 0x0138A4 04:B894: BD 60 04  LDA ram_0460_enemy,X
C - - - - - 0x0138A7 04:B897: 30 08     BMI bra_B8A1
C - - - - - 0x0138A9 04:B899: B5 4C     LDA ram_004A_obj_flags + $02,X
C - - - - - 0x0138AB 04:B89B: 09 01     ORA #con_004A_flag_01
C - - - - - 0x0138AD 04:B89D: 95 4C     STA ram_004A_obj_flags + $02,X
C - - - - - 0x0138AF 04:B89F: D0 04     BNE bra_B8A5    ; jmp
bra_B8A1:
C - - - - - 0x0138B1 04:B8A1: A9 01     LDA #con_state_walk
C - - - - - 0x0138B3 04:B8A3: 95 45     STA ram_state + $02,X
bra_B8A5:
C - - - - - 0x0138B5 04:B8A5: A9 00     LDA #$00    ; con_006C_00
C - - - - - 0x0138B7 04:B8A7: 9D 66 04  STA ram_0464_obj + $02,X
C - - - - - 0x0138BA 04:B8AA: 9D 60 04  STA ram_0460_enemy,X
C - - - - - 0x0138BD 04:B8AD: 95 6C     STA ram_enemy_ai_template,X
C - - - - - 0x0138BF 04:B8AF: F0 02     BEQ bra_B8B3    ; jmp
bra_B8B1:
C - - - - - 0x0138C1 04:B8B1: 38        SEC
C - - - - - 0x0138C2 04:B8B2: 60        RTS
bra_B8B3:
loc_B8B3:
C D 1 - - - 0x0138C3 04:B8B3: 18        CLC
C - - - - - 0x0138C4 04:B8B4: 60        RTS



tbl_B8B5:
- - - - - - 0x0138C5 04:B8B5: D9 B8     .word _off008_B8D9_00
- - - - - - 0x0138C7 04:B8B7: D9 B8     .word _off008_B8D9_01
- D 1 - - - 0x0138C9 04:B8B9: D9 B8     .word _off008_B8D9_02
- D 1 - - - 0x0138CB 04:B8BB: DC B8     .word _off008_B8DC_03
- D 1 - - - 0x0138CD 04:B8BD: E0 B8     .word _off008_B8E0_04
- - - - - - 0x0138CF 04:B8BF: D9 B8     .word _off008_B8D9_05
- D 1 - - - 0x0138D1 04:B8C1: E3 B8     .word _off008_B8E3_06
- D 1 - - - 0x0138D3 04:B8C3: E4 B8     .word _off008_B8E4_07
- D 1 - - - 0x0138D5 04:B8C5: E5 B8     .word _off008_B8E5_08
- D 1 - - - 0x0138D7 04:B8C7: E6 B8     .word _off008_B8E6_09
- D 1 - - - 0x0138D9 04:B8C9: E7 B8     .word _off008_B8E7_0A
- - - - - - 0x0138DB 04:B8CB: D9 B8     .word _off008_B8D9_0B
- D 1 - - - 0x0138DD 04:B8CD: E8 B8     .word _off008_B8E8_0C
- - - - - - 0x0138DF 04:B8CF: D9 B8     .word _off008_B8D9_0D
- - - - - - 0x0138E1 04:B8D1: D9 B8     .word _off008_B8D9_0E
- - - - - - 0x0138E3 04:B8D3: E9 B8     .word _off008_B8E9_0F
- - - - - - 0x0138E5 04:B8D5: D9 B8     .word _off008_B8D9_10
- D 1 - - - 0x0138E7 04:B8D7: EA B8     .word _off008_B8EA_11



_off008_B8D9_00:
_off008_B8D9_01:
_off008_B8D9_02:
_off008_B8D9_05:
_off008_B8D9_0B:
_off008_B8D9_0D:
_off008_B8D9_0E:
_off008_B8D9_10:
- D 1 - I - 0x0138E9 04:B8D9: 01        .byte $01   ; 
- D 1 - I - 0x0138EA 04:B8DA: 06        .byte $06   ; 
- D 1 - I - 0x0138EB 04:B8DB: 00        .byte $00   ; 

_off008_B8DC_03:
- D 1 - I - 0x0138EC 04:B8DC: 01        .byte $01   ; 
- D 1 - I - 0x0138ED 04:B8DD: 04        .byte $04   ; 
- D 1 - I - 0x0138EE 04:B8DE: 04        .byte $04   ; 
- - - - - - 0x0138EF 04:B8DF: 04        .byte $04   ; 

_off008_B8E0_04:
- D 1 - I - 0x0138F0 04:B8E0: 00        .byte $00   ; 
- - - - - - 0x0138F1 04:B8E1: 00        .byte $00   ; 
- D 1 - I - 0x0138F2 04:B8E2: 04        .byte $04   ; 

_off008_B8E3_06:
- D 1 - I - 0x0138F3 04:B8E3: 00        .byte $00   ; 

_off008_B8E4_07:
- D 1 - I - 0x0138F4 04:B8E4: 00        .byte $00   ; 

_off008_B8E5_08:
- D 1 - I - 0x0138F5 04:B8E5: 00        .byte $00   ; 

_off008_B8E6_09:
- D 1 - I - 0x0138F6 04:B8E6: 03        .byte $03   ; 

_off008_B8E7_0A:
- D 1 - I - 0x0138F7 04:B8E7: 02        .byte $02   ; 

_off008_B8E8_0C:
- D 1 - I - 0x0138F8 04:B8E8: 02        .byte $02   ; 

_off008_B8E9_0F:
- - - - - - 0x0138F9 04:B8E9: 06        .byte $06   ; 

_off008_B8EA_11:
- D 1 - I - 0x0138FA 04:B8EA: 02        .byte $02   ; 



tbl_B8EB:
- D 1 - - - 0x0138FB 04:B8EB: 40        .byte $40   ; 00 
- D 1 - - - 0x0138FC 04:B8EC: 40        .byte $40   ; 01 
- - - - - - 0x0138FD 04:B8ED: 40        .byte $40   ; 02 
- D 1 - - - 0x0138FE 04:B8EE: 80        .byte $80   ; 03 
- D 1 - - - 0x0138FF 04:B8EF: 80        .byte $80   ; 04 
- D 1 - - - 0x013900 04:B8F0: 40        .byte $40   ; 05 



tbl_B8F1:
- - - - - - 0x013901 04:B8F1: 15 B9     .word _off009_B915_00_billy
- - - - - - 0x013903 04:B8F3: 15 B9     .word _off009_B915_01_jimmy
- D 1 - - - 0x013905 04:B8F5: 15 B9     .word _off009_B915_02_williams
- D 1 - - - 0x013907 04:B8F7: 1A B9     .word _off009_B91A_03_roper
- D 1 - - - 0x013909 04:B8F9: 1E B9     .word _off009_B91E_04_linda
- - - - - - 0x01390B 04:B8FB: 15 B9     .word _off009_B915_05
- D 1 - - - 0x01390D 04:B8FD: 23 B9     .word _off009_B923_06_bolo
- D 1 - - - 0x01390F 04:B8FF: 26 B9     .word _off009_B926_07_burnov
- D 1 - - - 0x013911 04:B901: 28 B9     .word _off009_B928_08_abore
- D 1 - - - 0x013913 04:B903: 2B B9     .word _off009_B92B_09_chin_taimei
- D 1 - - - 0x013915 04:B905: 2F B9     .word _off009_B92F_0A_right_arm
- - - - - - 0x013917 04:B907: 15 B9     .word _off009_B915_0B
- D 1 - - - 0x013919 04:B909: 34 B9     .word _off009_B934_0C_doppelganger
- - - - - - 0x01391B 04:B90B: 15 B9     .word _off009_B915_0D
- - - - - - 0x01391D 04:B90D: 15 B9     .word _off009_B915_0E
- D 1 - - - 0x01391F 04:B90F: 15 B9     .word _off009_B915_0F_ninja
- - - - - - 0x013921 04:B911: 15 B9     .word _off009_B915_10
- D 1 - - - 0x013923 04:B913: 3C B9     .word _off009_B93C_11_shadow_warrior



_off009_B915_00_billy:
; con_obj_billy
_off009_B915_01_jimmy:
; con_obj_jimmy
_off009_B915_02_williams:
; con_obj_williams
_off009_B915_05:
; con_obj_05
_off009_B915_0B:
; con_obj_0B
_off009_B915_0D:
; con_obj_0D
_off009_B915_0E:
; con_obj_0E
_off009_B915_0F_ninja:
; con_obj_ninja
_off009_B915_10:
; con_obj_10
- D 1 - I - 0x013925 04:B915: 1C        .byte $1C   ; 
- D 1 - I - 0x013926 04:B916: 1A        .byte $1A   ; 
- D 1 - I - 0x013927 04:B917: 2A        .byte $2A   ; 
- D 1 - I - 0x013928 04:B918: 50        .byte $50   ; 
- D 1 - I - 0x013929 04:B919: 1E        .byte $1E   ; 



_off009_B91A_03_roper:
; con_obj_roper
- D 1 - I - 0x01392A 04:B91A: 1C        .byte $1C   ; 
- D 1 - I - 0x01392B 04:B91B: 2A        .byte $2A   ; 
- D 1 - I - 0x01392C 04:B91C: 60        .byte $60   ; 
- D 1 - I - 0x01392D 04:B91D: 50        .byte $50   ; 



_off009_B91E_04_linda:
; con_obj_linda
- D 1 - I - 0x01392E 04:B91E: 1C        .byte $1C   ; 
- D 1 - I - 0x01392F 04:B91F: 1C        .byte $1C   ; 
- D 1 - I - 0x013930 04:B920: 1C        .byte $1C   ; 
- D 1 - I - 0x013931 04:B921: 50        .byte $50   ; 
- D 1 - I - 0x013932 04:B922: 20        .byte $20   ; 



_off009_B923_06_bolo:
; con_obj_bolo
- D 1 - I - 0x013933 04:B923: 24        .byte $24   ; 
- D 1 - I - 0x013934 04:B924: 1C        .byte $1C   ; 
- D 1 - I - 0x013935 04:B925: 1C        .byte $1C   ; 



_off009_B926_07_burnov:
; con_obj_burnov
- D 1 - I - 0x013936 04:B926: 22        .byte $22   ; 
- D 1 - I - 0x013937 04:B927: 1A        .byte $1A   ; 



_off009_B928_08_abore:
; con_obj_abore
- D 1 - I - 0x013938 04:B928: 24        .byte $24   ; 
- D 1 - I - 0x013939 04:B929: 1C        .byte $1C   ; 
- D 1 - I - 0x01393A 04:B92A: 2C        .byte $2C   ; 



_off009_B92B_09_chin_taimei:
; con_obj_chin_taimei
- D 1 - I - 0x01393B 04:B92B: 1A        .byte $1A   ; 
- D 1 - I - 0x01393C 04:B92C: 1C        .byte $1C   ; 
- D 1 - I - 0x01393D 04:B92D: 34        .byte $34   ; 
- - - - - - 0x01393E 04:B92E: 1C        .byte $1C   ; 



_off009_B92F_0A_right_arm:
; con_obj_right_arm
- D 1 - I - 0x01393F 04:B92F: 1C        .byte $1C   ; 
- D 1 - I - 0x013940 04:B930: 1C        .byte $1C   ; 
- D 1 - I - 0x013941 04:B931: 2A        .byte $2A   ; 
- D 1 - I - 0x013942 04:B932: 18        .byte $18   ; 
- D 1 - I - 0x013943 04:B933: 1C        .byte $1C   ; 



_off009_B934_0C_doppelganger:
; con_obj_doppelganger
- - - - - - 0x013944 04:B934: 1C        .byte $1C   ; 
- D 1 - I - 0x013945 04:B935: 1C        .byte $1C   ; 
- - - - - - 0x013946 04:B936: 28        .byte $28   ; 
- D 1 - I - 0x013947 04:B937: 1A        .byte $1A   ; 
- D 1 - I - 0x013948 04:B938: 1C        .byte $1C   ; 
- D 1 - I - 0x013949 04:B939: 1C        .byte $1C   ; 
- D 1 - I - 0x01394A 04:B93A: 40        .byte $40   ; 
- D 1 - I - 0x01394B 04:B93B: 38        .byte $38   ; 



_off009_B93C_11_shadow_warrior:
; con_obj_shadow_warrior
- D 1 - I - 0x01394C 04:B93C: 22        .byte $22   ; 
- D 1 - I - 0x01394D 04:B93D: 22        .byte $22   ; 
- D 1 - I - 0x01394E 04:B93E: 1C        .byte $1C   ; 
- D 1 - I - 0x01394F 04:B93F: 20        .byte $20   ; 
- D 1 - I - 0x013950 04:B940: 20        .byte $20   ; 
- D 1 - I - 0x013951 04:B941: 32        .byte $32   ; 



tbl_B942_enemy_moves:
- - - - - - 0x013952 04:B942: 66 B9     .word _off010_B966_00_billy
- - - - - - 0x013954 04:B944: 66 B9     .word _off010_B966_01_jimmy
- D 1 - - - 0x013956 04:B946: 66 B9     .word _off010_B966_02_williams
- D 1 - - - 0x013958 04:B948: 6B B9     .word _off010_B96B_03_roper
- D 1 - - - 0x01395A 04:B94A: 6F B9     .word _off010_B96F_04_linda
- - - - - - 0x01395C 04:B94C: 66 B9     .word _off010_B966_05
- D 1 - - - 0x01395E 04:B94E: 74 B9     .word _off010_B974_06_bolo
- D 1 - - - 0x013960 04:B950: 77 B9     .word _off010_B977_07_burnov
- D 1 - - - 0x013962 04:B952: 79 B9     .word _off010_B979_08_abore
- D 1 - - - 0x013964 04:B954: 7C B9     .word _off010_B97C_09_chin_taimei
- D 1 - - - 0x013966 04:B956: 80 B9     .word _off010_B980_0A_right_arm
- - - - - - 0x013968 04:B958: 66 B9     .word _off010_B966_0B
- D 1 - - - 0x01396A 04:B95A: 85 B9     .word _off010_B985_0C_doppelganger
- - - - - - 0x01396C 04:B95C: 66 B9     .word _off010_B966_0D
- - - - - - 0x01396E 04:B95E: 66 B9     .word _off010_B966_0E
- D 1 - - - 0x013970 04:B960: 8D B9     .word _off010_B98D_0F_ninja
- - - - - - 0x013972 04:B962: 66 B9     .word _off010_B966_10
- D 1 - - - 0x013974 04:B964: 92 B9     .word _off010_B992_11_shadow_warrior



_off010_B966_00_billy:
; con_obj_billy
_off010_B966_01_jimmy:
; con_obj_jimmy
_off010_B966_02_williams:
; con_obj_williams
_off010_B966_05:
; con_obj_05
_off010_B966_0B:
; con_obj_0B
_off010_B966_0D:
; con_obj_0D
_off010_B966_0E:
; con_obj_0E
_off010_B966_10:
; con_obj_10
- D 1 - I - 0x013976 04:B966: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x013977 04:B967: 3D        .byte con_state_punch_strong   ; 
- D 1 - I - 0x013978 04:B968: 38        .byte con_state_38   ; 
- D 1 - I - 0x013979 04:B969: 42        .byte con_state_42   ; 
- D 1 - I - 0x01397A 04:B96A: 43        .byte con_state_43   ; 



_off010_B96B_03_roper:
; con_obj_roper
- D 1 - I - 0x01397B 04:B96B: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x01397C 04:B96C: 38        .byte con_state_38   ; 
- D 1 - I - 0x01397D 04:B96D: 42        .byte con_state_42   ; 
- D 1 - I - 0x01397E 04:B96E: 42        .byte con_state_42   ; 



_off010_B96F_04_linda:
; con_obj_linda
- D 1 - I - 0x01397F 04:B96F: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x013980 04:B970: 31        .byte con_state_31   ; 
- D 1 - I - 0x013981 04:B971: 3C        .byte con_state_elbow   ; 
- D 1 - I - 0x013982 04:B972: 42        .byte con_state_42   ; 
- D 1 - I - 0x013983 04:B973: 45        .byte con_state_45   ; 



_off010_B974_06_bolo:
; con_obj_bolo
- D 1 - I - 0x013984 04:B974: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x013985 04:B975: 30        .byte con_state_30   ; 
- D 1 - I - 0x013986 04:B976: 53        .byte con_state_bolo_throw   ; 



_off010_B977_07_burnov:
; con_obj_burnov
- D 1 - I - 0x013987 04:B977: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x013988 04:B978: 54        .byte con_state_burnov_grab   ; 



_off010_B979_08_abore:
; con_obj_abore
- D 1 - I - 0x013989 04:B979: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x01398A 04:B97A: 3D        .byte con_state_punch_strong   ; 
- D 1 - I - 0x01398B 04:B97B: 47        .byte con_state_47   ; 



_off010_B97C_09_chin_taimei:
; con_obj_chin_taimei
- D 1 - I - 0x01398C 04:B97C: 34        .byte con_state_34   ; 
- D 1 - I - 0x01398D 04:B97D: 3E        .byte con_state_chin_taimei_sword   ; 
- D 1 - I - 0x01398E 04:B97E: 48        .byte con_state_48   ; 
- - - - - - 0x01398F 04:B97F: 46        .byte con_state_46   ; 



_off010_B980_0A_right_arm:
; con_obj_right_arm
- D 1 - I - 0x013990 04:B980: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x013991 04:B981: 33        .byte con_state_33   ; 
- D 1 - I - 0x013992 04:B982: 38        .byte con_state_38   ; 
- D 1 - I - 0x013993 04:B983: 5B        .byte con_state_5B   ; 
- D 1 - I - 0x013994 04:B984: 32        .byte con_state_32   ; 



_off010_B985_0C_doppelganger:
; con_obj_doppelganger
- - - - - - 0x013995 04:B985: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x013996 04:B986: 33        .byte con_state_33   ; 
- - - - - - 0x013997 04:B987: 38        .byte con_state_38   ; 
- D 1 - I - 0x013998 04:B988: 2F        .byte con_state_uppercut_normal   ; 
- D 1 - I - 0x013999 04:B989: 31        .byte con_state_31   ; 
- D 1 - I - 0x01399A 04:B98A: 30        .byte con_state_30   ; 
- D 1 - I - 0x01399B 04:B98B: 0E        .byte con_state_doppelganger_dispawn   ; 
- D 1 - I - 0x01399C 04:B98C: 3F        .byte con_state_3F   ; 



_off010_B98D_0F_ninja:
; con_obj_ninja
- D 1 - I - 0x01399D 04:B98D: 4A        .byte con_state_4A   ; 
- D 1 - I - 0x01399E 04:B98E: 2E        .byte con_state_ninja_knife   ; 
- D 1 - I - 0x01399F 04:B98F: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x0139A0 04:B990: 4D        .byte con_state_4D   ; 
- D 1 - I - 0x0139A1 04:B991: 0C        .byte con_state_ninja_jump_high   ; 



_off010_B992_11_shadow_warrior:
; con_obj_shadow_warrior
- D 1 - I - 0x0139A2 04:B992: 4C        .byte con_state_4C   ; 
- D 1 - I - 0x0139A3 04:B993: 31        .byte con_state_31   ; 
- D 1 - I - 0x0139A4 04:B994: 36        .byte con_state_36   ; 
- D 1 - I - 0x0139A5 04:B995: 2D        .byte con_state_punch_normal   ; 
- D 1 - I - 0x0139A6 04:B996: 5E        .byte con_state_5E   ; 
- D 1 - I - 0x0139A7 04:B997: 5D        .byte con_state_5D   ; 



tbl_B998_enemy_ai:
- - - - - - 0x0139A8 04:B998: BC B9     .word _off011_B9BC_00_billy
- - - - - - 0x0139AA 04:B99A: BC B9     .word _off011_B9BC_01_jimmy
- D 1 - - - 0x0139AC 04:B99C: BC B9     .word _off011_B9BC_02_williams
- D 1 - - - 0x0139AE 04:B99E: 7C BA     .word _off011_BA7C_03_roper
- D 1 - - - 0x0139B0 04:B9A0: 3C BB     .word _off011_BB3C_04_linda
- - - - - - 0x0139B2 04:B9A2: BC B9     .word _off011_B9BC_05
- D 1 - - - 0x0139B4 04:B9A4: BC BB     .word _off011_BBBC_06_bolo
- D 1 - - - 0x0139B6 04:B9A6: DC BB     .word _off011_BBDC_07_burnov
- D 1 - - - 0x0139B8 04:B9A8: FC BB     .word _off011_BBFC_08_abore
- D 1 - - - 0x0139BA 04:B9AA: 1C BC     .word _off011_BC1C_09_chin_taimei
- D 1 - - - 0x0139BC 04:B9AC: 5C BC     .word _off011_BC5C_0A_right_arm
- - - - - - 0x0139BE 04:B9AE: BC B9     .word _off011_B9BC_0B
- D 1 - - - 0x0139C0 04:B9B0: 9C BC     .word _off011_BC9C_0C_doppelganger
- - - - - - 0x0139C2 04:B9B2: BC B9     .word _off011_B9BC_0D
- - - - - - 0x0139C4 04:B9B4: BC B9     .word _off011_B9BC_0E
- D 1 - - - 0x0139C6 04:B9B6: DC BC     .word _off011_BCDC_0F_ninja
- - - - - - 0x0139C8 04:B9B8: BC B9     .word _off011_B9BC_10
- D 1 - - - 0x0139CA 04:B9BA: 1C BD     .word _off011_BD1C_11_shadow_warrior



_off011_B9BC_00_billy:
; con_obj_billy
_off011_B9BC_01_jimmy:
; con_obj_jimmy
_off011_B9BC_02_williams:
; con_obj_williams
_off011_B9BC_05:
; con_obj_05
_off011_B9BC_0B:
; con_obj_0B
_off011_B9BC_0D:
; con_obj_0D
_off011_B9BC_0E:
; con_obj_0E
_off011_B9BC_10:
; con_obj_10
- - - - - - 0x0139CC 04:B9BC: 00        .byte $00   ; 
- D 1 - I - 0x0139CD 04:B9BD: 00        .byte $00   ; 
- D 1 - I - 0x0139CE 04:B9BE: 00        .byte $00   ; 
- D 1 - I - 0x0139CF 04:B9BF: 00        .byte $00   ; 
- D 1 - I - 0x0139D0 04:B9C0: 01        .byte $01   ; 
- D 1 - I - 0x0139D1 04:B9C1: 01        .byte $01   ; 
- D 1 - I - 0x0139D2 04:B9C2: 00        .byte $00   ; 
- D 1 - I - 0x0139D3 04:B9C3: 01        .byte $01   ; 
- D 1 - I - 0x0139D4 04:B9C4: 02        .byte $02   ; 
- - - - - - 0x0139D5 04:B9C5: 02        .byte $02   ; 
- - - - - - 0x0139D6 04:B9C6: 02        .byte $02   ; 
- - - - - - 0x0139D7 04:B9C7: 02        .byte $02   ; 
- - - - - - 0x0139D8 04:B9C8: 02        .byte $02   ; 
- - - - - - 0x0139D9 04:B9C9: 02        .byte $02   ; 
- - - - - - 0x0139DA 04:B9CA: 02        .byte $02   ; 
- - - - - - 0x0139DB 04:B9CB: 02        .byte $02   ; 
- - - - - - 0x0139DC 04:B9CC: 00        .byte $00   ; 
- D 1 - I - 0x0139DD 04:B9CD: 00        .byte $00   ; 
- D 1 - I - 0x0139DE 04:B9CE: 00        .byte $00   ; 
- D 1 - I - 0x0139DF 04:B9CF: 01        .byte $01   ; 
- D 1 - I - 0x0139E0 04:B9D0: 01        .byte $01   ; 
- D 1 - I - 0x0139E1 04:B9D1: 01        .byte $01   ; 
- D 1 - I - 0x0139E2 04:B9D2: 00        .byte $00   ; 
- D 1 - I - 0x0139E3 04:B9D3: 01        .byte $01   ; 
- D 1 - I - 0x0139E4 04:B9D4: 02        .byte $02   ; 
- - - - - - 0x0139E5 04:B9D5: 02        .byte $02   ; 
- - - - - - 0x0139E6 04:B9D6: 02        .byte $02   ; 
- - - - - - 0x0139E7 04:B9D7: 02        .byte $02   ; 
- - - - - - 0x0139E8 04:B9D8: 02        .byte $02   ; 
- - - - - - 0x0139E9 04:B9D9: 02        .byte $02   ; 
- - - - - - 0x0139EA 04:B9DA: 02        .byte $02   ; 
- - - - - - 0x0139EB 04:B9DB: 02        .byte $02   ; 
- - - - - - 0x0139EC 04:B9DC: 00        .byte $00   ; 
- D 1 - I - 0x0139ED 04:B9DD: 00        .byte $00   ; 
- D 1 - I - 0x0139EE 04:B9DE: 00        .byte $00   ; 
- D 1 - I - 0x0139EF 04:B9DF: 00        .byte $00   ; 
- D 1 - I - 0x0139F0 04:B9E0: 01        .byte $01   ; 
- D 1 - I - 0x0139F1 04:B9E1: 01        .byte $01   ; 
- D 1 - I - 0x0139F2 04:B9E2: 01        .byte $01   ; 
- D 1 - I - 0x0139F3 04:B9E3: 02        .byte $02   ; 
- D 1 - I - 0x0139F4 04:B9E4: 02        .byte $02   ; 
- - - - - - 0x0139F5 04:B9E5: 02        .byte $02   ; 
- - - - - - 0x0139F6 04:B9E6: 02        .byte $02   ; 
- - - - - - 0x0139F7 04:B9E7: 02        .byte $02   ; 
- - - - - - 0x0139F8 04:B9E8: 02        .byte $02   ; 
- - - - - - 0x0139F9 04:B9E9: 02        .byte $02   ; 
- - - - - - 0x0139FA 04:B9EA: 02        .byte $02   ; 
- - - - - - 0x0139FB 04:B9EB: 02        .byte $02   ; 
- - - - - - 0x0139FC 04:B9EC: 00        .byte $00   ; 
- D 1 - I - 0x0139FD 04:B9ED: 00        .byte $00   ; 
- D 1 - I - 0x0139FE 04:B9EE: 01        .byte $01   ; 
- D 1 - I - 0x0139FF 04:B9EF: 01        .byte $01   ; 
- D 1 - I - 0x013A00 04:B9F0: 01        .byte $01   ; 
- D 1 - I - 0x013A01 04:B9F1: 02        .byte $02   ; 
- D 1 - I - 0x013A02 04:B9F2: 02        .byte $02   ; 
- D 1 - I - 0x013A03 04:B9F3: 02        .byte $02   ; 
- D 1 - I - 0x013A04 04:B9F4: 02        .byte $02   ; 
- - - - - - 0x013A05 04:B9F5: 02        .byte $02   ; 
- - - - - - 0x013A06 04:B9F6: 02        .byte $02   ; 
- - - - - - 0x013A07 04:B9F7: 02        .byte $02   ; 
- - - - - - 0x013A08 04:B9F8: 02        .byte $02   ; 
- - - - - - 0x013A09 04:B9F9: 02        .byte $02   ; 
- - - - - - 0x013A0A 04:B9FA: 02        .byte $02   ; 
- - - - - - 0x013A0B 04:B9FB: 02        .byte $02   ; 
- D 1 - I - 0x013A0C 04:B9FC: 00        .byte $00   ; 
- D 1 - I - 0x013A0D 04:B9FD: 00        .byte $00   ; 
- D 1 - I - 0x013A0E 04:B9FE: 00        .byte $00   ; 
- - - - - - 0x013A0F 04:B9FF: 00        .byte $00   ; 
- D 1 - I - 0x013A10 04:BA00: 00        .byte $00   ; 
- D 1 - I - 0x013A11 04:BA01: 01        .byte $01   ; 
- D 1 - I - 0x013A12 04:BA02: 01        .byte $01   ; 
- D 1 - I - 0x013A13 04:BA03: 00        .byte $00   ; 
- D 1 - I - 0x013A14 04:BA04: 02        .byte $02   ; 
- D 1 - I - 0x013A15 04:BA05: 03        .byte $03   ; 
- D 1 - I - 0x013A16 04:BA06: 03        .byte $03   ; 
- D 1 - I - 0x013A17 04:BA07: 03        .byte $03   ; 
- D 1 - I - 0x013A18 04:BA08: 03        .byte $03   ; 
- D 1 - I - 0x013A19 04:BA09: 03        .byte $03   ; 
- - - - - - 0x013A1A 04:BA0A: 03        .byte $03   ; 
- - - - - - 0x013A1B 04:BA0B: 03        .byte $03   ; 
- - - - - - 0x013A1C 04:BA0C: 00        .byte $00   ; 
- - - - - - 0x013A1D 04:BA0D: 00        .byte $00   ; 
- - - - - - 0x013A1E 04:BA0E: 00        .byte $00   ; 
- D 1 - I - 0x013A1F 04:BA0F: 00        .byte $00   ; 
- - - - - - 0x013A20 04:BA10: 01        .byte $01   ; 
- - - - - - 0x013A21 04:BA11: 01        .byte $01   ; 
- D 1 - I - 0x013A22 04:BA12: 00        .byte $00   ; 
- D 1 - I - 0x013A23 04:BA13: 00        .byte $00   ; 
- D 1 - I - 0x013A24 04:BA14: 02        .byte $02   ; 
- D 1 - I - 0x013A25 04:BA15: 03        .byte $03   ; 
- D 1 - I - 0x013A26 04:BA16: 03        .byte $03   ; 
- D 1 - I - 0x013A27 04:BA17: 03        .byte $03   ; 
- D 1 - I - 0x013A28 04:BA18: 03        .byte $03   ; 
- D 1 - I - 0x013A29 04:BA19: 03        .byte $03   ; 
- - - - - - 0x013A2A 04:BA1A: 03        .byte $03   ; 
- - - - - - 0x013A2B 04:BA1B: 03        .byte $03   ; 
- - - - - - 0x013A2C 04:BA1C: 00        .byte $00   ; 
- - - - - - 0x013A2D 04:BA1D: 00        .byte $00   ; 
- - - - - - 0x013A2E 04:BA1E: 00        .byte $00   ; 
- - - - - - 0x013A2F 04:BA1F: 00        .byte $00   ; 
- - - - - - 0x013A30 04:BA20: 00        .byte $00   ; 
- D 1 - I - 0x013A31 04:BA21: 01        .byte $01   ; 
- - - - - - 0x013A32 04:BA22: 01        .byte $01   ; 
- - - - - - 0x013A33 04:BA23: 02        .byte $02   ; 
- D 1 - I - 0x013A34 04:BA24: 02        .byte $02   ; 
- - - - - - 0x013A35 04:BA25: 02        .byte $02   ; 
- - - - - - 0x013A36 04:BA26: 02        .byte $02   ; 
- - - - - - 0x013A37 04:BA27: 03        .byte $03   ; 
- - - - - - 0x013A38 04:BA28: 03        .byte $03   ; 
- - - - - - 0x013A39 04:BA29: 03        .byte $03   ; 
- - - - - - 0x013A3A 04:BA2A: 03        .byte $03   ; 
- - - - - - 0x013A3B 04:BA2B: 03        .byte $03   ; 
- - - - - - 0x013A3C 04:BA2C: 00        .byte $00   ; 
- - - - - - 0x013A3D 04:BA2D: 00        .byte $00   ; 
- - - - - - 0x013A3E 04:BA2E: 01        .byte $01   ; 
- - - - - - 0x013A3F 04:BA2F: 02        .byte $02   ; 
- - - - - - 0x013A40 04:BA30: 02        .byte $02   ; 
- - - - - - 0x013A41 04:BA31: 02        .byte $02   ; 
- - - - - - 0x013A42 04:BA32: 02        .byte $02   ; 
- - - - - - 0x013A43 04:BA33: 02        .byte $02   ; 
- - - - - - 0x013A44 04:BA34: 03        .byte $03   ; 
- - - - - - 0x013A45 04:BA35: 03        .byte $03   ; 
- - - - - - 0x013A46 04:BA36: 03        .byte $03   ; 
- - - - - - 0x013A47 04:BA37: 03        .byte $03   ; 
- D 1 - I - 0x013A48 04:BA38: 03        .byte $03   ; 
- - - - - - 0x013A49 04:BA39: 03        .byte $03   ; 
- - - - - - 0x013A4A 04:BA3A: 03        .byte $03   ; 
- - - - - - 0x013A4B 04:BA3B: 03        .byte $03   ; 
- D 1 - I - 0x013A4C 04:BA3C: 02        .byte $02   ; 
- D 1 - I - 0x013A4D 04:BA3D: 04        .byte $04   ; 
- D 1 - I - 0x013A4E 04:BA3E: 04        .byte $04   ; 
- D 1 - I - 0x013A4F 04:BA3F: 04        .byte $04   ; 
- D 1 - I - 0x013A50 04:BA40: 04        .byte $04   ; 
- D 1 - I - 0x013A51 04:BA41: 04        .byte $04   ; 
- D 1 - I - 0x013A52 04:BA42: 04        .byte $04   ; 
- D 1 - I - 0x013A53 04:BA43: 04        .byte $04   ; 
- - - - - - 0x013A54 04:BA44: 04        .byte $04   ; 
- - - - - - 0x013A55 04:BA45: 04        .byte $04   ; 
- - - - - - 0x013A56 04:BA46: 04        .byte $04   ; 
- - - - - - 0x013A57 04:BA47: 04        .byte $04   ; 
- - - - - - 0x013A58 04:BA48: 04        .byte $04   ; 
- - - - - - 0x013A59 04:BA49: 04        .byte $04   ; 
- - - - - - 0x013A5A 04:BA4A: 04        .byte $04   ; 
- - - - - - 0x013A5B 04:BA4B: 04        .byte $04   ; 
- D 1 - I - 0x013A5C 04:BA4C: 02        .byte $02   ; 
- - - - - - 0x013A5D 04:BA4D: 04        .byte $04   ; 
- D 1 - I - 0x013A5E 04:BA4E: 04        .byte $04   ; 
- D 1 - I - 0x013A5F 04:BA4F: 04        .byte $04   ; 
- D 1 - I - 0x013A60 04:BA50: 04        .byte $04   ; 
- D 1 - I - 0x013A61 04:BA51: 04        .byte $04   ; 
- D 1 - I - 0x013A62 04:BA52: 04        .byte $04   ; 
- D 1 - I - 0x013A63 04:BA53: 04        .byte $04   ; 
- - - - - - 0x013A64 04:BA54: 04        .byte $04   ; 
- - - - - - 0x013A65 04:BA55: 04        .byte $04   ; 
- - - - - - 0x013A66 04:BA56: 04        .byte $04   ; 
- - - - - - 0x013A67 04:BA57: 04        .byte $04   ; 
- - - - - - 0x013A68 04:BA58: 04        .byte $04   ; 
- - - - - - 0x013A69 04:BA59: 04        .byte $04   ; 
- - - - - - 0x013A6A 04:BA5A: 04        .byte $04   ; 
- - - - - - 0x013A6B 04:BA5B: 04        .byte $04   ; 
- - - - - - 0x013A6C 04:BA5C: 04        .byte $04   ; 
- D 1 - I - 0x013A6D 04:BA5D: 04        .byte $04   ; 
- - - - - - 0x013A6E 04:BA5E: 04        .byte $04   ; 
- D 1 - I - 0x013A6F 04:BA5F: 04        .byte $04   ; 
- D 1 - I - 0x013A70 04:BA60: 04        .byte $04   ; 
- D 1 - I - 0x013A71 04:BA61: 04        .byte $04   ; 
- D 1 - I - 0x013A72 04:BA62: 04        .byte $04   ; 
- D 1 - I - 0x013A73 04:BA63: 04        .byte $04   ; 
- - - - - - 0x013A74 04:BA64: 04        .byte $04   ; 
- - - - - - 0x013A75 04:BA65: 04        .byte $04   ; 
- - - - - - 0x013A76 04:BA66: 04        .byte $04   ; 
- - - - - - 0x013A77 04:BA67: 04        .byte $04   ; 
- - - - - - 0x013A78 04:BA68: 04        .byte $04   ; 
- - - - - - 0x013A79 04:BA69: 04        .byte $04   ; 
- - - - - - 0x013A7A 04:BA6A: 04        .byte $04   ; 
- - - - - - 0x013A7B 04:BA6B: 04        .byte $04   ; 
- - - - - - 0x013A7C 04:BA6C: 04        .byte $04   ; 
- - - - - - 0x013A7D 04:BA6D: 04        .byte $04   ; 
- - - - - - 0x013A7E 04:BA6E: 04        .byte $04   ; 
- - - - - - 0x013A7F 04:BA6F: 04        .byte $04   ; 
- - - - - - 0x013A80 04:BA70: 04        .byte $04   ; 
- - - - - - 0x013A81 04:BA71: 04        .byte $04   ; 
- - - - - - 0x013A82 04:BA72: 04        .byte $04   ; 
- - - - - - 0x013A83 04:BA73: 04        .byte $04   ; 
- - - - - - 0x013A84 04:BA74: 04        .byte $04   ; 
- - - - - - 0x013A85 04:BA75: 04        .byte $04   ; 
- - - - - - 0x013A86 04:BA76: 04        .byte $04   ; 
- - - - - - 0x013A87 04:BA77: 04        .byte $04   ; 
- - - - - - 0x013A88 04:BA78: 04        .byte $04   ; 
- - - - - - 0x013A89 04:BA79: 04        .byte $04   ; 
- - - - - - 0x013A8A 04:BA7A: 04        .byte $04   ; 
- - - - - - 0x013A8B 04:BA7B: 04        .byte $04   ; 



_off011_BA7C_03_roper:
; con_obj_roper
- D 1 - I - 0x013A8C 04:BA7C: 00        .byte $00   ; 
- D 1 - I - 0x013A8D 04:BA7D: 00        .byte $00   ; 
- D 1 - I - 0x013A8E 04:BA7E: 00        .byte $00   ; 
- D 1 - I - 0x013A8F 04:BA7F: 00        .byte $00   ; 
- D 1 - I - 0x013A90 04:BA80: 00        .byte $00   ; 
- D 1 - I - 0x013A91 04:BA81: 00        .byte $00   ; 
- D 1 - I - 0x013A92 04:BA82: 00        .byte $00   ; 
- D 1 - I - 0x013A93 04:BA83: 00        .byte $00   ; 
- D 1 - I - 0x013A94 04:BA84: 01        .byte $01   ; 
- - - - - - 0x013A95 04:BA85: 01        .byte $01   ; 
- - - - - - 0x013A96 04:BA86: 01        .byte $01   ; 
- - - - - - 0x013A97 04:BA87: 01        .byte $01   ; 
- - - - - - 0x013A98 04:BA88: 01        .byte $01   ; 
- - - - - - 0x013A99 04:BA89: 01        .byte $01   ; 
- - - - - - 0x013A9A 04:BA8A: 01        .byte $01   ; 
- - - - - - 0x013A9B 04:BA8B: 01        .byte $01   ; 
- - - - - - 0x013A9C 04:BA8C: 00        .byte $00   ; 
- D 1 - I - 0x013A9D 04:BA8D: 00        .byte $00   ; 
- D 1 - I - 0x013A9E 04:BA8E: 00        .byte $00   ; 
- D 1 - I - 0x013A9F 04:BA8F: 00        .byte $00   ; 
- D 1 - I - 0x013AA0 04:BA90: 00        .byte $00   ; 
- D 1 - I - 0x013AA1 04:BA91: 00        .byte $00   ; 
- D 1 - I - 0x013AA2 04:BA92: 00        .byte $00   ; 
- D 1 - I - 0x013AA3 04:BA93: 00        .byte $00   ; 
- D 1 - I - 0x013AA4 04:BA94: 01        .byte $01   ; 
- - - - - - 0x013AA5 04:BA95: 01        .byte $01   ; 
- - - - - - 0x013AA6 04:BA96: 01        .byte $01   ; 
- - - - - - 0x013AA7 04:BA97: 01        .byte $01   ; 
- - - - - - 0x013AA8 04:BA98: 01        .byte $01   ; 
- - - - - - 0x013AA9 04:BA99: 01        .byte $01   ; 
- - - - - - 0x013AAA 04:BA9A: 01        .byte $01   ; 
- - - - - - 0x013AAB 04:BA9B: 01        .byte $01   ; 
- - - - - - 0x013AAC 04:BA9C: 00        .byte $00   ; 
- D 1 - I - 0x013AAD 04:BA9D: 00        .byte $00   ; 
- D 1 - I - 0x013AAE 04:BA9E: 00        .byte $00   ; 
- D 1 - I - 0x013AAF 04:BA9F: 00        .byte $00   ; 
- D 1 - I - 0x013AB0 04:BAA0: 00        .byte $00   ; 
- D 1 - I - 0x013AB1 04:BAA1: 00        .byte $00   ; 
- D 1 - I - 0x013AB2 04:BAA2: 00        .byte $00   ; 
- D 1 - I - 0x013AB3 04:BAA3: 01        .byte $01   ; 
- D 1 - I - 0x013AB4 04:BAA4: 01        .byte $01   ; 
- - - - - - 0x013AB5 04:BAA5: 01        .byte $01   ; 
- - - - - - 0x013AB6 04:BAA6: 01        .byte $01   ; 
- - - - - - 0x013AB7 04:BAA7: 01        .byte $01   ; 
- - - - - - 0x013AB8 04:BAA8: 01        .byte $01   ; 
- - - - - - 0x013AB9 04:BAA9: 01        .byte $01   ; 
- - - - - - 0x013ABA 04:BAAA: 01        .byte $01   ; 
- - - - - - 0x013ABB 04:BAAB: 01        .byte $01   ; 
- - - - - - 0x013ABC 04:BAAC: 00        .byte $00   ; 
- D 1 - I - 0x013ABD 04:BAAD: 00        .byte $00   ; 
- D 1 - I - 0x013ABE 04:BAAE: 00        .byte $00   ; 
- D 1 - I - 0x013ABF 04:BAAF: 01        .byte $01   ; 
- D 1 - I - 0x013AC0 04:BAB0: 01        .byte $01   ; 
- D 1 - I - 0x013AC1 04:BAB1: 01        .byte $01   ; 
- D 1 - I - 0x013AC2 04:BAB2: 01        .byte $01   ; 
- D 1 - I - 0x013AC3 04:BAB3: 01        .byte $01   ; 
- D 1 - I - 0x013AC4 04:BAB4: 01        .byte $01   ; 
- - - - - - 0x013AC5 04:BAB5: 01        .byte $01   ; 
- - - - - - 0x013AC6 04:BAB6: 01        .byte $01   ; 
- - - - - - 0x013AC7 04:BAB7: 01        .byte $01   ; 
- - - - - - 0x013AC8 04:BAB8: 01        .byte $01   ; 
- - - - - - 0x013AC9 04:BAB9: 01        .byte $01   ; 
- - - - - - 0x013ACA 04:BABA: 01        .byte $01   ; 
- - - - - - 0x013ACB 04:BABB: 01        .byte $01   ; 
- D 1 - I - 0x013ACC 04:BABC: 00        .byte $00   ; 
- - - - - - 0x013ACD 04:BABD: 00        .byte $00   ; 
- - - - - - 0x013ACE 04:BABE: 00        .byte $00   ; 
- D 1 - I - 0x013ACF 04:BABF: 00        .byte $00   ; 
- D 1 - I - 0x013AD0 04:BAC0: 00        .byte $00   ; 
- D 1 - I - 0x013AD1 04:BAC1: 00        .byte $00   ; 
- D 1 - I - 0x013AD2 04:BAC2: 00        .byte $00   ; 
- D 1 - I - 0x013AD3 04:BAC3: 00        .byte $00   ; 
- D 1 - I - 0x013AD4 04:BAC4: 02        .byte $02   ; 
- D 1 - I - 0x013AD5 04:BAC5: 02        .byte $02   ; 
- D 1 - I - 0x013AD6 04:BAC6: 02        .byte $02   ; 
- D 1 - I - 0x013AD7 04:BAC7: 02        .byte $02   ; 
- - - - - - 0x013AD8 04:BAC8: 02        .byte $02   ; 
- - - - - - 0x013AD9 04:BAC9: 02        .byte $02   ; 
- - - - - - 0x013ADA 04:BACA: 02        .byte $02   ; 
- - - - - - 0x013ADB 04:BACB: 02        .byte $02   ; 
- - - - - - 0x013ADC 04:BACC: 00        .byte $00   ; 
- - - - - - 0x013ADD 04:BACD: 00        .byte $00   ; 
- - - - - - 0x013ADE 04:BACE: 00        .byte $00   ; 
- - - - - - 0x013ADF 04:BACF: 00        .byte $00   ; 
- D 1 - I - 0x013AE0 04:BAD0: 00        .byte $00   ; 
- D 1 - I - 0x013AE1 04:BAD1: 00        .byte $00   ; 
- - - - - - 0x013AE2 04:BAD2: 00        .byte $00   ; 
- D 1 - I - 0x013AE3 04:BAD3: 00        .byte $00   ; 
- D 1 - I - 0x013AE4 04:BAD4: 02        .byte $02   ; 
- D 1 - I - 0x013AE5 04:BAD5: 02        .byte $02   ; 
- - - - - - 0x013AE6 04:BAD6: 02        .byte $02   ; 
- D 1 - I - 0x013AE7 04:BAD7: 02        .byte $02   ; 
- - - - - - 0x013AE8 04:BAD8: 02        .byte $02   ; 
- - - - - - 0x013AE9 04:BAD9: 02        .byte $02   ; 
- - - - - - 0x013AEA 04:BADA: 02        .byte $02   ; 
- - - - - - 0x013AEB 04:BADB: 02        .byte $02   ; 
- - - - - - 0x013AEC 04:BADC: 00        .byte $00   ; 
- - - - - - 0x013AED 04:BADD: 00        .byte $00   ; 
- - - - - - 0x013AEE 04:BADE: 00        .byte $00   ; 
- - - - - - 0x013AEF 04:BADF: 00        .byte $00   ; 
- D 1 - I - 0x013AF0 04:BAE0: 00        .byte $00   ; 
- - - - - - 0x013AF1 04:BAE1: 00        .byte $00   ; 
- - - - - - 0x013AF2 04:BAE2: 00        .byte $00   ; 
- D 1 - I - 0x013AF3 04:BAE3: 00        .byte $00   ; 
- - - - - - 0x013AF4 04:BAE4: 02        .byte $02   ; 
- - - - - - 0x013AF5 04:BAE5: 02        .byte $02   ; 
- D 1 - I - 0x013AF6 04:BAE6: 02        .byte $02   ; 
- D 1 - I - 0x013AF7 04:BAE7: 02        .byte $02   ; 
- - - - - - 0x013AF8 04:BAE8: 02        .byte $02   ; 
- - - - - - 0x013AF9 04:BAE9: 02        .byte $02   ; 
- - - - - - 0x013AFA 04:BAEA: 02        .byte $02   ; 
- - - - - - 0x013AFB 04:BAEB: 02        .byte $02   ; 
- - - - - - 0x013AFC 04:BAEC: 00        .byte $00   ; 
- - - - - - 0x013AFD 04:BAED: 00        .byte $00   ; 
- - - - - - 0x013AFE 04:BAEE: 00        .byte $00   ; 
- - - - - - 0x013AFF 04:BAEF: 01        .byte $01   ; 
- - - - - - 0x013B00 04:BAF0: 01        .byte $01   ; 
- - - - - - 0x013B01 04:BAF1: 01        .byte $01   ; 
- - - - - - 0x013B02 04:BAF2: 01        .byte $01   ; 
- - - - - - 0x013B03 04:BAF3: 01        .byte $01   ; 
- - - - - - 0x013B04 04:BAF4: 02        .byte $02   ; 
- - - - - - 0x013B05 04:BAF5: 02        .byte $02   ; 
- - - - - - 0x013B06 04:BAF6: 02        .byte $02   ; 
- D 1 - I - 0x013B07 04:BAF7: 02        .byte $02   ; 
- - - - - - 0x013B08 04:BAF8: 02        .byte $02   ; 
- - - - - - 0x013B09 04:BAF9: 02        .byte $02   ; 
- - - - - - 0x013B0A 04:BAFA: 02        .byte $02   ; 
- - - - - - 0x013B0B 04:BAFB: 02        .byte $02   ; 
- D 1 - I - 0x013B0C 04:BAFC: 00        .byte $00   ; 
- D 1 - I - 0x013B0D 04:BAFD: 00        .byte $00   ; 
- D 1 - I - 0x013B0E 04:BAFE: 00        .byte $00   ; 
- - - - - - 0x013B0F 04:BAFF: 00        .byte $00   ; 
- D 1 - I - 0x013B10 04:BB00: 00        .byte $00   ; 
- D 1 - I - 0x013B11 04:BB01: 00        .byte $00   ; 
- D 1 - I - 0x013B12 04:BB02: 00        .byte $00   ; 
- D 1 - I - 0x013B13 04:BB03: 00        .byte $00   ; 
- D 1 - I - 0x013B14 04:BB04: 03        .byte $03   ; 
- D 1 - I - 0x013B15 04:BB05: 03        .byte $03   ; 
- D 1 - I - 0x013B16 04:BB06: 03        .byte $03   ; 
- D 1 - I - 0x013B17 04:BB07: 03        .byte $03   ; 
- - - - - - 0x013B18 04:BB08: 03        .byte $03   ; 
- - - - - - 0x013B19 04:BB09: 03        .byte $03   ; 
- - - - - - 0x013B1A 04:BB0A: 03        .byte $03   ; 
- - - - - - 0x013B1B 04:BB0B: 03        .byte $03   ; 
- D 1 - I - 0x013B1C 04:BB0C: 00        .byte $00   ; 
- D 1 - I - 0x013B1D 04:BB0D: 00        .byte $00   ; 
- - - - - - 0x013B1E 04:BB0E: 00        .byte $00   ; 
- - - - - - 0x013B1F 04:BB0F: 00        .byte $00   ; 
- D 1 - I - 0x013B20 04:BB10: 00        .byte $00   ; 
- D 1 - I - 0x013B21 04:BB11: 00        .byte $00   ; 
- D 1 - I - 0x013B22 04:BB12: 00        .byte $00   ; 
- D 1 - I - 0x013B23 04:BB13: 00        .byte $00   ; 
- D 1 - I - 0x013B24 04:BB14: 03        .byte $03   ; 
- D 1 - I - 0x013B25 04:BB15: 03        .byte $03   ; 
- D 1 - I - 0x013B26 04:BB16: 03        .byte $03   ; 
- D 1 - I - 0x013B27 04:BB17: 03        .byte $03   ; 
- - - - - - 0x013B28 04:BB18: 03        .byte $03   ; 
- - - - - - 0x013B29 04:BB19: 03        .byte $03   ; 
- - - - - - 0x013B2A 04:BB1A: 03        .byte $03   ; 
- - - - - - 0x013B2B 04:BB1B: 03        .byte $03   ; 
- - - - - - 0x013B2C 04:BB1C: 00        .byte $00   ; 
- - - - - - 0x013B2D 04:BB1D: 00        .byte $00   ; 
- - - - - - 0x013B2E 04:BB1E: 00        .byte $00   ; 
- - - - - - 0x013B2F 04:BB1F: 00        .byte $00   ; 
- D 1 - I - 0x013B30 04:BB20: 00        .byte $00   ; 
- D 1 - I - 0x013B31 04:BB21: 00        .byte $00   ; 
- D 1 - I - 0x013B32 04:BB22: 00        .byte $00   ; 
- - - - - - 0x013B33 04:BB23: 01        .byte $01   ; 
- - - - - - 0x013B34 04:BB24: 03        .byte $03   ; 
- D 1 - I - 0x013B35 04:BB25: 03        .byte $03   ; 
- D 1 - I - 0x013B36 04:BB26: 03        .byte $03   ; 
- D 1 - I - 0x013B37 04:BB27: 03        .byte $03   ; 
- - - - - - 0x013B38 04:BB28: 03        .byte $03   ; 
- - - - - - 0x013B39 04:BB29: 03        .byte $03   ; 
- - - - - - 0x013B3A 04:BB2A: 03        .byte $03   ; 
- - - - - - 0x013B3B 04:BB2B: 03        .byte $03   ; 
- - - - - - 0x013B3C 04:BB2C: 00        .byte $00   ; 
- - - - - - 0x013B3D 04:BB2D: 01        .byte $01   ; 
- - - - - - 0x013B3E 04:BB2E: 01        .byte $01   ; 
- - - - - - 0x013B3F 04:BB2F: 01        .byte $01   ; 
- - - - - - 0x013B40 04:BB30: 01        .byte $01   ; 
- - - - - - 0x013B41 04:BB31: 01        .byte $01   ; 
- - - - - - 0x013B42 04:BB32: 01        .byte $01   ; 
- - - - - - 0x013B43 04:BB33: 01        .byte $01   ; 
- - - - - - 0x013B44 04:BB34: 03        .byte $03   ; 
- - - - - - 0x013B45 04:BB35: 03        .byte $03   ; 
- - - - - - 0x013B46 04:BB36: 03        .byte $03   ; 
- - - - - - 0x013B47 04:BB37: 03        .byte $03   ; 
- - - - - - 0x013B48 04:BB38: 03        .byte $03   ; 
- - - - - - 0x013B49 04:BB39: 03        .byte $03   ; 
- - - - - - 0x013B4A 04:BB3A: 03        .byte $03   ; 
- - - - - - 0x013B4B 04:BB3B: 03        .byte $03   ; 



_off011_BB3C_04_linda:
; con_obj_linda
- D 1 - I - 0x013B4C 04:BB3C: 00        .byte $00   ; 
- D 1 - I - 0x013B4D 04:BB3D: 00        .byte $00   ; 
- D 1 - I - 0x013B4E 04:BB3E: 00        .byte $00   ; 
- D 1 - I - 0x013B4F 04:BB3F: 00        .byte $00   ; 
- D 1 - I - 0x013B50 04:BB40: 00        .byte $00   ; 
- D 1 - I - 0x013B51 04:BB41: 01        .byte $01   ; 
- D 1 - I - 0x013B52 04:BB42: 02        .byte $02   ; 
- D 1 - I - 0x013B53 04:BB43: 02        .byte $02   ; 
- - - - - - 0x013B54 04:BB44: 00        .byte $00   ; 
- - - - - - 0x013B55 04:BB45: 00        .byte $00   ; 
- - - - - - 0x013B56 04:BB46: 00        .byte $00   ; 
- - - - - - 0x013B57 04:BB47: 00        .byte $00   ; 
- - - - - - 0x013B58 04:BB48: 00        .byte $00   ; 
- - - - - - 0x013B59 04:BB49: 00        .byte $00   ; 
- - - - - - 0x013B5A 04:BB4A: 00        .byte $00   ; 
- - - - - - 0x013B5B 04:BB4B: 00        .byte $00   ; 
- D 1 - I - 0x013B5C 04:BB4C: 00        .byte $00   ; 
- D 1 - I - 0x013B5D 04:BB4D: 00        .byte $00   ; 
- D 1 - I - 0x013B5E 04:BB4E: 01        .byte $01   ; 
- D 1 - I - 0x013B5F 04:BB4F: 02        .byte $02   ; 
- D 1 - I - 0x013B60 04:BB50: 02        .byte $02   ; 
- D 1 - I - 0x013B61 04:BB51: 02        .byte $02   ; 
- D 1 - I - 0x013B62 04:BB52: 02        .byte $02   ; 
- D 1 - I - 0x013B63 04:BB53: 02        .byte $02   ; 
- - - - - - 0x013B64 04:BB54: 00        .byte $00   ; 
- - - - - - 0x013B65 04:BB55: 00        .byte $00   ; 
- - - - - - 0x013B66 04:BB56: 00        .byte $00   ; 
- - - - - - 0x013B67 04:BB57: 00        .byte $00   ; 
- - - - - - 0x013B68 04:BB58: 00        .byte $00   ; 
- - - - - - 0x013B69 04:BB59: 00        .byte $00   ; 
- - - - - - 0x013B6A 04:BB5A: 00        .byte $00   ; 
- - - - - - 0x013B6B 04:BB5B: 00        .byte $00   ; 
- D 1 - I - 0x013B6C 04:BB5C: 00        .byte $00   ; 
- D 1 - I - 0x013B6D 04:BB5D: 00        .byte $00   ; 
- D 1 - I - 0x013B6E 04:BB5E: 00        .byte $00   ; 
- D 1 - I - 0x013B6F 04:BB5F: 00        .byte $00   ; 
- D 1 - I - 0x013B70 04:BB60: 01        .byte $01   ; 
- D 1 - I - 0x013B71 04:BB61: 01        .byte $01   ; 
- D 1 - I - 0x013B72 04:BB62: 01        .byte $01   ; 
- D 1 - I - 0x013B73 04:BB63: 02        .byte $02   ; 
- - - - - - 0x013B74 04:BB64: 00        .byte $00   ; 
- - - - - - 0x013B75 04:BB65: 00        .byte $00   ; 
- - - - - - 0x013B76 04:BB66: 00        .byte $00   ; 
- - - - - - 0x013B77 04:BB67: 00        .byte $00   ; 
- - - - - - 0x013B78 04:BB68: 00        .byte $00   ; 
- - - - - - 0x013B79 04:BB69: 00        .byte $00   ; 
- - - - - - 0x013B7A 04:BB6A: 00        .byte $00   ; 
- - - - - - 0x013B7B 04:BB6B: 00        .byte $00   ; 
- - - - - - 0x013B7C 04:BB6C: 00        .byte $00   ; 
- - - - - - 0x013B7D 04:BB6D: 01        .byte $01   ; 
- - - - - - 0x013B7E 04:BB6E: 01        .byte $01   ; 
- - - - - - 0x013B7F 04:BB6F: 01        .byte $01   ; 
- D 1 - I - 0x013B80 04:BB70: 01        .byte $01   ; 
- D 1 - I - 0x013B81 04:BB71: 01        .byte $01   ; 
- D 1 - I - 0x013B82 04:BB72: 02        .byte $02   ; 
- - - - - - 0x013B83 04:BB73: 02        .byte $02   ; 
- - - - - - 0x013B84 04:BB74: 00        .byte $00   ; 
- - - - - - 0x013B85 04:BB75: 00        .byte $00   ; 
- - - - - - 0x013B86 04:BB76: 00        .byte $00   ; 
- - - - - - 0x013B87 04:BB77: 00        .byte $00   ; 
- - - - - - 0x013B88 04:BB78: 00        .byte $00   ; 
- - - - - - 0x013B89 04:BB79: 00        .byte $00   ; 
- - - - - - 0x013B8A 04:BB7A: 00        .byte $00   ; 
- - - - - - 0x013B8B 04:BB7B: 00        .byte $00   ; 
- - - - - - 0x013B8C 04:BB7C: 00        .byte $00   ; 
- - - - - - 0x013B8D 04:BB7D: 00        .byte $00   ; 
- - - - - - 0x013B8E 04:BB7E: 00        .byte $00   ; 
- - - - - - 0x013B8F 04:BB7F: 00        .byte $00   ; 
- D 1 - I - 0x013B90 04:BB80: 01        .byte $01   ; 
- D 1 - I - 0x013B91 04:BB81: 01        .byte $01   ; 
- D 1 - I - 0x013B92 04:BB82: 02        .byte $02   ; 
- D 1 - I - 0x013B93 04:BB83: 02        .byte $02   ; 
- D 1 - I - 0x013B94 04:BB84: 03        .byte $03   ; 
- D 1 - I - 0x013B95 04:BB85: 03        .byte $03   ; 
- D 1 - I - 0x013B96 04:BB86: 03        .byte $03   ; 
- D 1 - I - 0x013B97 04:BB87: 03        .byte $03   ; 
- - - - - - 0x013B98 04:BB88: 03        .byte $03   ; 
- - - - - - 0x013B99 04:BB89: 03        .byte $03   ; 
- - - - - - 0x013B9A 04:BB8A: 03        .byte $03   ; 
- - - - - - 0x013B9B 04:BB8B: 03        .byte $03   ; 
- - - - - - 0x013B9C 04:BB8C: 00        .byte $00   ; 
- D 1 - I - 0x013B9D 04:BB8D: 00        .byte $00   ; 
- - - - - - 0x013B9E 04:BB8E: 01        .byte $01   ; 
- - - - - - 0x013B9F 04:BB8F: 01        .byte $01   ; 
- D 1 - I - 0x013BA0 04:BB90: 01        .byte $01   ; 
- - - - - - 0x013BA1 04:BB91: 02        .byte $02   ; 
- D 1 - I - 0x013BA2 04:BB92: 02        .byte $02   ; 
- D 1 - I - 0x013BA3 04:BB93: 02        .byte $02   ; 
- - - - - - 0x013BA4 04:BB94: 03        .byte $03   ; 
- - - - - - 0x013BA5 04:BB95: 03        .byte $03   ; 
- D 1 - I - 0x013BA6 04:BB96: 03        .byte $03   ; 
- D 1 - I - 0x013BA7 04:BB97: 03        .byte $03   ; 
- - - - - - 0x013BA8 04:BB98: 03        .byte $03   ; 
- - - - - - 0x013BA9 04:BB99: 03        .byte $03   ; 
- - - - - - 0x013BAA 04:BB9A: 03        .byte $03   ; 
- - - - - - 0x013BAB 04:BB9B: 03        .byte $03   ; 
- - - - - - 0x013BAC 04:BB9C: 00        .byte $00   ; 
- - - - - - 0x013BAD 04:BB9D: 00        .byte $00   ; 
- - - - - - 0x013BAE 04:BB9E: 00        .byte $00   ; 
- - - - - - 0x013BAF 04:BB9F: 00        .byte $00   ; 
- D 1 - I - 0x013BB0 04:BBA0: 00        .byte $00   ; 
- D 1 - I - 0x013BB1 04:BBA1: 01        .byte $01   ; 
- D 1 - I - 0x013BB2 04:BBA2: 02        .byte $02   ; 
- - - - - - 0x013BB3 04:BBA3: 02        .byte $02   ; 
- - - - - - 0x013BB4 04:BBA4: 03        .byte $03   ; 
- D 1 - I - 0x013BB5 04:BBA5: 03        .byte $03   ; 
- - - - - - 0x013BB6 04:BBA6: 03        .byte $03   ; 
- D 1 - I - 0x013BB7 04:BBA7: 03        .byte $03   ; 
- - - - - - 0x013BB8 04:BBA8: 03        .byte $03   ; 
- - - - - - 0x013BB9 04:BBA9: 03        .byte $03   ; 
- - - - - - 0x013BBA 04:BBAA: 03        .byte $03   ; 
- - - - - - 0x013BBB 04:BBAB: 03        .byte $03   ; 
- - - - - - 0x013BBC 04:BBAC: 00        .byte $00   ; 
- - - - - - 0x013BBD 04:BBAD: 00        .byte $00   ; 
- - - - - - 0x013BBE 04:BBAE: 00        .byte $00   ; 
- - - - - - 0x013BBF 04:BBAF: 01        .byte $01   ; 
- - - - - - 0x013BC0 04:BBB0: 01        .byte $01   ; 
- - - - - - 0x013BC1 04:BBB1: 02        .byte $02   ; 
- - - - - - 0x013BC2 04:BBB2: 02        .byte $02   ; 
- - - - - - 0x013BC3 04:BBB3: 02        .byte $02   ; 
- - - - - - 0x013BC4 04:BBB4: 03        .byte $03   ; 
- - - - - - 0x013BC5 04:BBB5: 03        .byte $03   ; 
- - - - - - 0x013BC6 04:BBB6: 03        .byte $03   ; 
- - - - - - 0x013BC7 04:BBB7: 03        .byte $03   ; 
- - - - - - 0x013BC8 04:BBB8: 03        .byte $03   ; 
- - - - - - 0x013BC9 04:BBB9: 03        .byte $03   ; 
- - - - - - 0x013BCA 04:BBBA: 03        .byte $03   ; 
- - - - - - 0x013BCB 04:BBBB: 03        .byte $03   ; 



_off011_BBBC_06_bolo:
; con_obj_bolo
- D 1 - I - 0x013BCC 04:BBBC: 00        .byte $00   ; 
- D 1 - I - 0x013BCD 04:BBBD: 00        .byte $00   ; 
- D 1 - I - 0x013BCE 04:BBBE: 00        .byte $00   ; 
- D 1 - I - 0x013BCF 04:BBBF: 00        .byte $00   ; 
- D 1 - I - 0x013BD0 04:BBC0: 00        .byte $00   ; 
- D 1 - I - 0x013BD1 04:BBC1: 01        .byte $01   ; 
- D 1 - I - 0x013BD2 04:BBC2: 01        .byte $01   ; 
- D 1 - I - 0x013BD3 04:BBC3: 02        .byte $02   ; 
- D 1 - I - 0x013BD4 04:BBC4: 00        .byte $00   ; 
- D 1 - I - 0x013BD5 04:BBC5: 01        .byte $01   ; 
- D 1 - I - 0x013BD6 04:BBC6: 00        .byte $00   ; 
- D 1 - I - 0x013BD7 04:BBC7: 01        .byte $01   ; 
- D 1 - I - 0x013BD8 04:BBC8: 01        .byte $01   ; 
- D 1 - I - 0x013BD9 04:BBC9: 01        .byte $01   ; 
- D 1 - I - 0x013BDA 04:BBCA: 01        .byte $01   ; 
- D 1 - I - 0x013BDB 04:BBCB: 01        .byte $01   ; 
- D 1 - I - 0x013BDC 04:BBCC: 00        .byte $00   ; 
- D 1 - I - 0x013BDD 04:BBCD: 01        .byte $01   ; 
- D 1 - I - 0x013BDE 04:BBCE: 00        .byte $00   ; 
- D 1 - I - 0x013BDF 04:BBCF: 00        .byte $00   ; 
- D 1 - I - 0x013BE0 04:BBD0: 00        .byte $00   ; 
- D 1 - I - 0x013BE1 04:BBD1: 01        .byte $01   ; 
- D 1 - I - 0x013BE2 04:BBD2: 00        .byte $00   ; 
- D 1 - I - 0x013BE3 04:BBD3: 01        .byte $01   ; 
- - - - - - 0x013BE4 04:BBD4: 02        .byte $02   ; 
- D 1 - I - 0x013BE5 04:BBD5: 02        .byte $02   ; 
- D 1 - I - 0x013BE6 04:BBD6: 02        .byte $02   ; 
- - - - - - 0x013BE7 04:BBD7: 02        .byte $02   ; 
- D 1 - I - 0x013BE8 04:BBD8: 02        .byte $02   ; 
- D 1 - I - 0x013BE9 04:BBD9: 02        .byte $02   ; 
- - - - - - 0x013BEA 04:BBDA: 02        .byte $02   ; 
- - - - - - 0x013BEB 04:BBDB: 02        .byte $02   ; 



_off011_BBDC_07_burnov:
; con_obj_burnov
- D 1 - I - 0x013BEC 04:BBDC: 00        .byte $00   ; 
- D 1 - I - 0x013BED 04:BBDD: 00        .byte $00   ; 
- D 1 - I - 0x013BEE 04:BBDE: 00        .byte $00   ; 
- D 1 - I - 0x013BEF 04:BBDF: 00        .byte $00   ; 
- D 1 - I - 0x013BF0 04:BBE0: 00        .byte $00   ; 
- D 1 - I - 0x013BF1 04:BBE1: 00        .byte $00   ; 
- D 1 - I - 0x013BF2 04:BBE2: 00        .byte $00   ; 
- D 1 - I - 0x013BF3 04:BBE3: 01        .byte $01   ; 
- D 1 - I - 0x013BF4 04:BBE4: 00        .byte $00   ; 
- D 1 - I - 0x013BF5 04:BBE5: 00        .byte $00   ; 
- D 1 - I - 0x013BF6 04:BBE6: 00        .byte $00   ; 
- D 1 - I - 0x013BF7 04:BBE7: 00        .byte $00   ; 
- D 1 - I - 0x013BF8 04:BBE8: 00        .byte $00   ; 
- D 1 - I - 0x013BF9 04:BBE9: 01        .byte $01   ; 
- D 1 - I - 0x013BFA 04:BBEA: 01        .byte $01   ; 
- D 1 - I - 0x013BFB 04:BBEB: 01        .byte $01   ; 
- D 1 - I - 0x013BFC 04:BBEC: 00        .byte $00   ; 
- D 1 - I - 0x013BFD 04:BBED: 00        .byte $00   ; 
- D 1 - I - 0x013BFE 04:BBEE: 00        .byte $00   ; 
- D 1 - I - 0x013BFF 04:BBEF: 00        .byte $00   ; 
- D 1 - I - 0x013C00 04:BBF0: 00        .byte $00   ; 
- D 1 - I - 0x013C01 04:BBF1: 00        .byte $00   ; 
- D 1 - I - 0x013C02 04:BBF2: 00        .byte $00   ; 
- D 1 - I - 0x013C03 04:BBF3: 00        .byte $00   ; 
- D 1 - I - 0x013C04 04:BBF4: 01        .byte $01   ; 
- D 1 - I - 0x013C05 04:BBF5: 01        .byte $01   ; 
- D 1 - I - 0x013C06 04:BBF6: 01        .byte $01   ; 
- - - - - - 0x013C07 04:BBF7: 01        .byte $01   ; 
- D 1 - I - 0x013C08 04:BBF8: 01        .byte $01   ; 
- D 1 - I - 0x013C09 04:BBF9: 01        .byte $01   ; 
- D 1 - I - 0x013C0A 04:BBFA: 01        .byte $01   ; 
- D 1 - I - 0x013C0B 04:BBFB: 01        .byte $01   ; 



_off011_BBFC_08_abore:
; con_obj_abore
- D 1 - I - 0x013C0C 04:BBFC: 00        .byte $00   ; 
- D 1 - I - 0x013C0D 04:BBFD: 01        .byte $01   ; 
- D 1 - I - 0x013C0E 04:BBFE: 00        .byte $00   ; 
- D 1 - I - 0x013C0F 04:BBFF: 00        .byte $00   ; 
- D 1 - I - 0x013C10 04:BC00: 01        .byte $01   ; 
- D 1 - I - 0x013C11 04:BC01: 00        .byte $00   ; 
- D 1 - I - 0x013C12 04:BC02: 01        .byte $01   ; 
- D 1 - I - 0x013C13 04:BC03: 02        .byte $02   ; 
- D 1 - I - 0x013C14 04:BC04: 00        .byte $00   ; 
- D 1 - I - 0x013C15 04:BC05: 01        .byte $01   ; 
- D 1 - I - 0x013C16 04:BC06: 01        .byte $01   ; 
- D 1 - I - 0x013C17 04:BC07: 02        .byte $02   ; 
- D 1 - I - 0x013C18 04:BC08: 02        .byte $02   ; 
- D 1 - I - 0x013C19 04:BC09: 01        .byte $01   ; 
- D 1 - I - 0x013C1A 04:BC0A: 02        .byte $02   ; 
- D 1 - I - 0x013C1B 04:BC0B: 02        .byte $02   ; 
- D 1 - I - 0x013C1C 04:BC0C: 02        .byte $02   ; 
- D 1 - I - 0x013C1D 04:BC0D: 00        .byte $00   ; 
- D 1 - I - 0x013C1E 04:BC0E: 01        .byte $01   ; 
- D 1 - I - 0x013C1F 04:BC0F: 01        .byte $01   ; 
- D 1 - I - 0x013C20 04:BC10: 01        .byte $01   ; 
- D 1 - I - 0x013C21 04:BC11: 02        .byte $02   ; 
- D 1 - I - 0x013C22 04:BC12: 02        .byte $02   ; 
- D 1 - I - 0x013C23 04:BC13: 00        .byte $00   ; 
- - - - - - 0x013C24 04:BC14: 00        .byte $00   ; 
- - - - - - 0x013C25 04:BC15: 00        .byte $00   ; 
- - - - - - 0x013C26 04:BC16: 01        .byte $01   ; 
- - - - - - 0x013C27 04:BC17: 02        .byte $02   ; 
- - - - - - 0x013C28 04:BC18: 01        .byte $01   ; 
- - - - - - 0x013C29 04:BC19: 02        .byte $02   ; 
- - - - - - 0x013C2A 04:BC1A: 01        .byte $01   ; 
- - - - - - 0x013C2B 04:BC1B: 02        .byte $02   ; 



_off011_BC1C_09_chin_taimei:
; con_obj_chin_taimei
- - - - - - 0x013C2C 04:BC1C: 00        .byte $00   ; 
- - - - - - 0x013C2D 04:BC1D: 00        .byte $00   ; 
- D 1 - I - 0x013C2E 04:BC1E: 00        .byte $00   ; 
- D 1 - I - 0x013C2F 04:BC1F: 00        .byte $00   ; 
- D 1 - I - 0x013C30 04:BC20: 01        .byte $01   ; 
- D 1 - I - 0x013C31 04:BC21: 01        .byte $01   ; 
- D 1 - I - 0x013C32 04:BC22: 01        .byte $01   ; 
- D 1 - I - 0x013C33 04:BC23: 01        .byte $01   ; 
- D 1 - I - 0x013C34 04:BC24: 02        .byte $02   ; 
- D 1 - I - 0x013C35 04:BC25: 02        .byte $02   ; 
- D 1 - I - 0x013C36 04:BC26: 02        .byte $02   ; 
- - - - - - 0x013C37 04:BC27: 02        .byte $02   ; 
- - - - - - 0x013C38 04:BC28: 02        .byte $02   ; 
- - - - - - 0x013C39 04:BC29: 02        .byte $02   ; 
- - - - - - 0x013C3A 04:BC2A: 02        .byte $02   ; 
- - - - - - 0x013C3B 04:BC2B: 02        .byte $02   ; 
- - - - - - 0x013C3C 04:BC2C: 00        .byte $00   ; 
- D 1 - I - 0x013C3D 04:BC2D: 00        .byte $00   ; 
- - - - - - 0x013C3E 04:BC2E: 00        .byte $00   ; 
- D 1 - I - 0x013C3F 04:BC2F: 00        .byte $00   ; 
- D 1 - I - 0x013C40 04:BC30: 01        .byte $01   ; 
- D 1 - I - 0x013C41 04:BC31: 01        .byte $01   ; 
- D 1 - I - 0x013C42 04:BC32: 01        .byte $01   ; 
- D 1 - I - 0x013C43 04:BC33: 01        .byte $01   ; 
- D 1 - I - 0x013C44 04:BC34: 02        .byte $02   ; 
- D 1 - I - 0x013C45 04:BC35: 02        .byte $02   ; 
- D 1 - I - 0x013C46 04:BC36: 02        .byte $02   ; 
- - - - - - 0x013C47 04:BC37: 02        .byte $02   ; 
- - - - - - 0x013C48 04:BC38: 02        .byte $02   ; 
- - - - - - 0x013C49 04:BC39: 02        .byte $02   ; 
- - - - - - 0x013C4A 04:BC3A: 02        .byte $02   ; 
- - - - - - 0x013C4B 04:BC3B: 02        .byte $02   ; 
- - - - - - 0x013C4C 04:BC3C: 01        .byte $01   ; 
- - - - - - 0x013C4D 04:BC3D: 01        .byte $01   ; 
- - - - - - 0x013C4E 04:BC3E: 01        .byte $01   ; 
- D 1 - I - 0x013C4F 04:BC3F: 01        .byte $01   ; 
- D 1 - I - 0x013C50 04:BC40: 01        .byte $01   ; 
- D 1 - I - 0x013C51 04:BC41: 01        .byte $01   ; 
- D 1 - I - 0x013C52 04:BC42: 01        .byte $01   ; 
- D 1 - I - 0x013C53 04:BC43: 01        .byte $01   ; 
- D 1 - I - 0x013C54 04:BC44: 02        .byte $02   ; 
- D 1 - I - 0x013C55 04:BC45: 02        .byte $02   ; 
- D 1 - I - 0x013C56 04:BC46: 02        .byte $02   ; 
- - - - - - 0x013C57 04:BC47: 02        .byte $02   ; 
- - - - - - 0x013C58 04:BC48: 02        .byte $02   ; 
- - - - - - 0x013C59 04:BC49: 02        .byte $02   ; 
- - - - - - 0x013C5A 04:BC4A: 02        .byte $02   ; 
- - - - - - 0x013C5B 04:BC4B: 02        .byte $02   ; 
- - - - - - 0x013C5C 04:BC4C: 03        .byte $03   ; 
- - - - - - 0x013C5D 04:BC4D: 03        .byte $03   ; 
- - - - - - 0x013C5E 04:BC4E: 03        .byte $03   ; 
- - - - - - 0x013C5F 04:BC4F: 03        .byte $03   ; 
- - - - - - 0x013C60 04:BC50: 03        .byte $03   ; 
- - - - - - 0x013C61 04:BC51: 03        .byte $03   ; 
- - - - - - 0x013C62 04:BC52: 03        .byte $03   ; 
- - - - - - 0x013C63 04:BC53: 03        .byte $03   ; 
- - - - - - 0x013C64 04:BC54: 02        .byte $02   ; 
- - - - - - 0x013C65 04:BC55: 02        .byte $02   ; 
- - - - - - 0x013C66 04:BC56: 02        .byte $02   ; 
- - - - - - 0x013C67 04:BC57: 02        .byte $02   ; 
- - - - - - 0x013C68 04:BC58: 02        .byte $02   ; 
- - - - - - 0x013C69 04:BC59: 02        .byte $02   ; 
- - - - - - 0x013C6A 04:BC5A: 02        .byte $02   ; 
- - - - - - 0x013C6B 04:BC5B: 02        .byte $02   ; 



_off011_BC5C_0A_right_arm:
; con_obj_right_arm
- - - - - - 0x013C6C 04:BC5C: 00        .byte $00   ; 
- - - - - - 0x013C6D 04:BC5D: 00        .byte $00   ; 
- D 1 - I - 0x013C6E 04:BC5E: 00        .byte $00   ; 
- D 1 - I - 0x013C6F 04:BC5F: 01        .byte $01   ; 
- D 1 - I - 0x013C70 04:BC60: 01        .byte $01   ; 
- D 1 - I - 0x013C71 04:BC61: 03        .byte $03   ; 
- D 1 - I - 0x013C72 04:BC62: 03        .byte $03   ; 
- D 1 - I - 0x013C73 04:BC63: 04        .byte $04   ; 
- D 1 - I - 0x013C74 04:BC64: 02        .byte $02   ; 
- D 1 - I - 0x013C75 04:BC65: 02        .byte $02   ; 
- - - - - - 0x013C76 04:BC66: 02        .byte $02   ; 
- - - - - - 0x013C77 04:BC67: 02        .byte $02   ; 
- - - - - - 0x013C78 04:BC68: 02        .byte $02   ; 
- - - - - - 0x013C79 04:BC69: 02        .byte $02   ; 
- - - - - - 0x013C7A 04:BC6A: 02        .byte $02   ; 
- - - - - - 0x013C7B 04:BC6B: 02        .byte $02   ; 
- - - - - - 0x013C7C 04:BC6C: 00        .byte $00   ; 
- D 1 - I - 0x013C7D 04:BC6D: 01        .byte $01   ; 
- D 1 - I - 0x013C7E 04:BC6E: 01        .byte $01   ; 
- D 1 - I - 0x013C7F 04:BC6F: 01        .byte $01   ; 
- D 1 - I - 0x013C80 04:BC70: 03        .byte $03   ; 
- D 1 - I - 0x013C81 04:BC71: 04        .byte $04   ; 
- D 1 - I - 0x013C82 04:BC72: 04        .byte $04   ; 
- D 1 - I - 0x013C83 04:BC73: 04        .byte $04   ; 
- D 1 - I - 0x013C84 04:BC74: 02        .byte $02   ; 
- D 1 - I - 0x013C85 04:BC75: 02        .byte $02   ; 
- - - - - - 0x013C86 04:BC76: 02        .byte $02   ; 
- - - - - - 0x013C87 04:BC77: 02        .byte $02   ; 
- - - - - - 0x013C88 04:BC78: 02        .byte $02   ; 
- - - - - - 0x013C89 04:BC79: 02        .byte $02   ; 
- - - - - - 0x013C8A 04:BC7A: 02        .byte $02   ; 
- - - - - - 0x013C8B 04:BC7B: 02        .byte $02   ; 
- - - - - - 0x013C8C 04:BC7C: 00        .byte $00   ; 
- - - - - - 0x013C8D 04:BC7D: 01        .byte $01   ; 
- D 1 - I - 0x013C8E 04:BC7E: 01        .byte $01   ; 
- D 1 - I - 0x013C8F 04:BC7F: 03        .byte $03   ; 
- D 1 - I - 0x013C90 04:BC80: 04        .byte $04   ; 
- D 1 - I - 0x013C91 04:BC81: 04        .byte $04   ; 
- D 1 - I - 0x013C92 04:BC82: 04        .byte $04   ; 
- D 1 - I - 0x013C93 04:BC83: 04        .byte $04   ; 
- D 1 - I - 0x013C94 04:BC84: 02        .byte $02   ; 
- D 1 - I - 0x013C95 04:BC85: 02        .byte $02   ; 
- - - - - - 0x013C96 04:BC86: 02        .byte $02   ; 
- - - - - - 0x013C97 04:BC87: 02        .byte $02   ; 
- - - - - - 0x013C98 04:BC88: 02        .byte $02   ; 
- - - - - - 0x013C99 04:BC89: 02        .byte $02   ; 
- - - - - - 0x013C9A 04:BC8A: 02        .byte $02   ; 
- - - - - - 0x013C9B 04:BC8B: 02        .byte $02   ; 
- - - - - - 0x013C9C 04:BC8C: 00        .byte $00   ; 
- - - - - - 0x013C9D 04:BC8D: 01        .byte $01   ; 
- D 1 - I - 0x013C9E 04:BC8E: 03        .byte $03   ; 
- D 1 - I - 0x013C9F 04:BC8F: 03        .byte $03   ; 
- D 1 - I - 0x013CA0 04:BC90: 03        .byte $03   ; 
- D 1 - I - 0x013CA1 04:BC91: 04        .byte $04   ; 
- D 1 - I - 0x013CA2 04:BC92: 04        .byte $04   ; 
- D 1 - I - 0x013CA3 04:BC93: 04        .byte $04   ; 
- D 1 - I - 0x013CA4 04:BC94: 02        .byte $02   ; 
- D 1 - I - 0x013CA5 04:BC95: 02        .byte $02   ; 
- - - - - - 0x013CA6 04:BC96: 02        .byte $02   ; 
- - - - - - 0x013CA7 04:BC97: 02        .byte $02   ; 
- - - - - - 0x013CA8 04:BC98: 02        .byte $02   ; 
- - - - - - 0x013CA9 04:BC99: 02        .byte $02   ; 
- - - - - - 0x013CAA 04:BC9A: 02        .byte $02   ; 
- - - - - - 0x013CAB 04:BC9B: 02        .byte $02   ; 



_off011_BC9C_0C_doppelganger:
; con_obj_doppelganger
- - - - - - 0x013CAC 04:BC9C: 00        .byte $00   ; 
- - - - - - 0x013CAD 04:BC9D: 00        .byte $00   ; 
- D 1 - I - 0x013CAE 04:BC9E: 01        .byte $01   ; 
- D 1 - I - 0x013CAF 04:BC9F: 03        .byte $03   ; 
- D 1 - I - 0x013CB0 04:BCA0: 04        .byte $04   ; 
- D 1 - I - 0x013CB1 04:BCA1: 05        .byte $05   ; 
- D 1 - I - 0x013CB2 04:BCA2: 06        .byte $06   ; 
- D 1 - I - 0x013CB3 04:BCA3: 06        .byte $06   ; 
- D 1 - I - 0x013CB4 04:BCA4: 07        .byte $07   ; 
- D 1 - I - 0x013CB5 04:BCA5: 07        .byte $07   ; 
- - - - - - 0x013CB6 04:BCA6: 07        .byte $07   ; 
- - - - - - 0x013CB7 04:BCA7: 07        .byte $07   ; 
- - - - - - 0x013CB8 04:BCA8: 07        .byte $07   ; 
- - - - - - 0x013CB9 04:BCA9: 07        .byte $07   ; 
- - - - - - 0x013CBA 04:BCAA: 07        .byte $07   ; 
- - - - - - 0x013CBB 04:BCAB: 07        .byte $07   ; 
- - - - - - 0x013CBC 04:BCAC: 00        .byte $00   ; 
- - - - - - 0x013CBD 04:BCAD: 01        .byte $01   ; 
- D 1 - I - 0x013CBE 04:BCAE: 01        .byte $01   ; 
- D 1 - I - 0x013CBF 04:BCAF: 03        .byte $03   ; 
- D 1 - I - 0x013CC0 04:BCB0: 04        .byte $04   ; 
- D 1 - I - 0x013CC1 04:BCB1: 04        .byte $04   ; 
- D 1 - I - 0x013CC2 04:BCB2: 05        .byte $05   ; 
- D 1 - I - 0x013CC3 04:BCB3: 05        .byte $05   ; 
- D 1 - I - 0x013CC4 04:BCB4: 07        .byte $07   ; 
- D 1 - I - 0x013CC5 04:BCB5: 07        .byte $07   ; 
- - - - - - 0x013CC6 04:BCB6: 02        .byte $02   ; 
- - - - - - 0x013CC7 04:BCB7: 07        .byte $07   ; 
- - - - - - 0x013CC8 04:BCB8: 07        .byte $07   ; 
- - - - - - 0x013CC9 04:BCB9: 07        .byte $07   ; 
- - - - - - 0x013CCA 04:BCBA: 07        .byte $07   ; 
- - - - - - 0x013CCB 04:BCBB: 07        .byte $07   ; 
- - - - - - 0x013CCC 04:BCBC: 00        .byte $00   ; 
- - - - - - 0x013CCD 04:BCBD: 00        .byte $00   ; 
- D 1 - I - 0x013CCE 04:BCBE: 01        .byte $01   ; 
- D 1 - I - 0x013CCF 04:BCBF: 01        .byte $01   ; 
- D 1 - I - 0x013CD0 04:BCC0: 03        .byte $03   ; 
- D 1 - I - 0x013CD1 04:BCC1: 03        .byte $03   ; 
- D 1 - I - 0x013CD2 04:BCC2: 04        .byte $04   ; 
- D 1 - I - 0x013CD3 04:BCC3: 04        .byte $04   ; 
- D 1 - I - 0x013CD4 04:BCC4: 07        .byte $07   ; 
- D 1 - I - 0x013CD5 04:BCC5: 07        .byte $07   ; 
- - - - - - 0x013CD6 04:BCC6: 07        .byte $07   ; 
- - - - - - 0x013CD7 04:BCC7: 07        .byte $07   ; 
- - - - - - 0x013CD8 04:BCC8: 07        .byte $07   ; 
- - - - - - 0x013CD9 04:BCC9: 07        .byte $07   ; 
- - - - - - 0x013CDA 04:BCCA: 07        .byte $07   ; 
- - - - - - 0x013CDB 04:BCCB: 07        .byte $07   ; 
- - - - - - 0x013CDC 04:BCCC: 01        .byte $01   ; 
- - - - - - 0x013CDD 04:BCCD: 03        .byte $03   ; 
- - - - - - 0x013CDE 04:BCCE: 04        .byte $04   ; 
- D 1 - I - 0x013CDF 04:BCCF: 05        .byte $05   ; 
- D 1 - I - 0x013CE0 04:BCD0: 06        .byte $06   ; 
- D 1 - I - 0x013CE1 04:BCD1: 06        .byte $06   ; 
- - - - - - 0x013CE2 04:BCD2: 06        .byte $06   ; 
- D 1 - I - 0x013CE3 04:BCD3: 06        .byte $06   ; 
- - - - - - 0x013CE4 04:BCD4: 07        .byte $07   ; 
- D 1 - I - 0x013CE5 04:BCD5: 07        .byte $07   ; 
- - - - - - 0x013CE6 04:BCD6: 07        .byte $07   ; 
- - - - - - 0x013CE7 04:BCD7: 07        .byte $07   ; 
- - - - - - 0x013CE8 04:BCD8: 07        .byte $07   ; 
- - - - - - 0x013CE9 04:BCD9: 07        .byte $07   ; 
- - - - - - 0x013CEA 04:BCDA: 07        .byte $07   ; 
- - - - - - 0x013CEB 04:BCDB: 07        .byte $07   ; 



_off011_BCDC_0F_ninja:
; con_obj_ninja
- D 1 - I - 0x013CEC 04:BCDC: 01        .byte $01   ; 
- D 1 - I - 0x013CED 04:BCDD: 01        .byte $01   ; 
- D 1 - I - 0x013CEE 04:BCDE: 02        .byte $02   ; 
- D 1 - I - 0x013CEF 04:BCDF: 02        .byte $02   ; 
- D 1 - I - 0x013CF0 04:BCE0: 02        .byte $02   ; 
- D 1 - I - 0x013CF1 04:BCE1: 02        .byte $02   ; 
- D 1 - I - 0x013CF2 04:BCE2: 02        .byte $02   ; 
- D 1 - I - 0x013CF3 04:BCE3: 02        .byte $02   ; 
- D 1 - I - 0x013CF4 04:BCE4: 00        .byte $00   ; 
- D 1 - I - 0x013CF5 04:BCE5: 00        .byte $00   ; 
- D 1 - I - 0x013CF6 04:BCE6: 03        .byte $03   ; 
- D 1 - I - 0x013CF7 04:BCE7: 03        .byte $03   ; 
- D 1 - I - 0x013CF8 04:BCE8: 03        .byte $03   ; 
- D 1 - I - 0x013CF9 04:BCE9: 03        .byte $03   ; 
- D 1 - I - 0x013CFA 04:BCEA: 04        .byte $04   ; 
- D 1 - I - 0x013CFB 04:BCEB: 04        .byte $04   ; 
- - - - - - 0x013CFC 04:BCEC: 01        .byte $01   ; 
- D 1 - I - 0x013CFD 04:BCED: 01        .byte $01   ; 
- D 1 - I - 0x013CFE 04:BCEE: 01        .byte $01   ; 
- D 1 - I - 0x013CFF 04:BCEF: 01        .byte $01   ; 
- - - - - - 0x013D00 04:BCF0: 02        .byte $02   ; 
- D 1 - I - 0x013D01 04:BCF1: 02        .byte $02   ; 
- D 1 - I - 0x013D02 04:BCF2: 02        .byte $02   ; 
- D 1 - I - 0x013D03 04:BCF3: 02        .byte $02   ; 
- D 1 - I - 0x013D04 04:BCF4: 00        .byte $00   ; 
- D 1 - I - 0x013D05 04:BCF5: 00        .byte $00   ; 
- D 1 - I - 0x013D06 04:BCF6: 03        .byte $03   ; 
- D 1 - I - 0x013D07 04:BCF7: 03        .byte $03   ; 
- D 1 - I - 0x013D08 04:BCF8: 03        .byte $03   ; 
- D 1 - I - 0x013D09 04:BCF9: 04        .byte $04   ; 
- D 1 - I - 0x013D0A 04:BCFA: 04        .byte $04   ; 
- D 1 - I - 0x013D0B 04:BCFB: 04        .byte $04   ; 
- D 1 - I - 0x013D0C 04:BCFC: 01        .byte $01   ; 
- D 1 - I - 0x013D0D 04:BCFD: 01        .byte $01   ; 
- D 1 - I - 0x013D0E 04:BCFE: 01        .byte $01   ; 
- D 1 - I - 0x013D0F 04:BCFF: 02        .byte $02   ; 
- D 1 - I - 0x013D10 04:BD00: 02        .byte $02   ; 
- D 1 - I - 0x013D11 04:BD01: 02        .byte $02   ; 
- D 1 - I - 0x013D12 04:BD02: 02        .byte $02   ; 
- D 1 - I - 0x013D13 04:BD03: 02        .byte $02   ; 
- - - - - - 0x013D14 04:BD04: 03        .byte $03   ; 
- - - - - - 0x013D15 04:BD05: 03        .byte $03   ; 
- D 1 - I - 0x013D16 04:BD06: 03        .byte $03   ; 
- D 1 - I - 0x013D17 04:BD07: 03        .byte $03   ; 
- D 1 - I - 0x013D18 04:BD08: 04        .byte $04   ; 
- - - - - - 0x013D19 04:BD09: 04        .byte $04   ; 
- - - - - - 0x013D1A 04:BD0A: 04        .byte $04   ; 
- - - - - - 0x013D1B 04:BD0B: 04        .byte $04   ; 
- - - - - - 0x013D1C 04:BD0C: 01        .byte $01   ; 
- - - - - - 0x013D1D 04:BD0D: 01        .byte $01   ; 
- - - - - - 0x013D1E 04:BD0E: 01        .byte $01   ; 
- - - - - - 0x013D1F 04:BD0F: 01        .byte $01   ; 
- - - - - - 0x013D20 04:BD10: 01        .byte $01   ; 
- - - - - - 0x013D21 04:BD11: 01        .byte $01   ; 
- - - - - - 0x013D22 04:BD12: 01        .byte $01   ; 
- - - - - - 0x013D23 04:BD13: 02        .byte $02   ; 
- - - - - - 0x013D24 04:BD14: 00        .byte $00   ; 
- - - - - - 0x013D25 04:BD15: 00        .byte $00   ; 
- - - - - - 0x013D26 04:BD16: 00        .byte $00   ; 
- - - - - - 0x013D27 04:BD17: 00        .byte $00   ; 
- - - - - - 0x013D28 04:BD18: 00        .byte $00   ; 
- - - - - - 0x013D29 04:BD19: 00        .byte $00   ; 
- - - - - - 0x013D2A 04:BD1A: 03        .byte $03   ; 
- - - - - - 0x013D2B 04:BD1B: 04        .byte $04   ; 



_off011_BD1C_11_shadow_warrior:
; con_obj_shadow_warrior
- - - - - - 0x013D2C 04:BD1C: 02        .byte $02   ; 
- - - - - - 0x013D2D 04:BD1D: 01        .byte $01   ; 
- D 1 - I - 0x013D2E 04:BD1E: 01        .byte $01   ; 
- D 1 - I - 0x013D2F 04:BD1F: 02        .byte $02   ; 
- D 1 - I - 0x013D30 04:BD20: 03        .byte $03   ; 
- D 1 - I - 0x013D31 04:BD21: 03        .byte $03   ; 
- D 1 - I - 0x013D32 04:BD22: 03        .byte $03   ; 
- D 1 - I - 0x013D33 04:BD23: 04        .byte $04   ; 
- D 1 - I - 0x013D34 04:BD24: 00        .byte $00   ; 
- D 1 - I - 0x013D35 04:BD25: 00        .byte $00   ; 
- - - - - - 0x013D36 04:BD26: 00        .byte $00   ; 
- - - - - - 0x013D37 04:BD27: 00        .byte $00   ; 
- - - - - - 0x013D38 04:BD28: 05        .byte $05   ; 
- - - - - - 0x013D39 04:BD29: 05        .byte $05   ; 
- - - - - - 0x013D3A 04:BD2A: 05        .byte $05   ; 
- - - - - - 0x013D3B 04:BD2B: 05        .byte $05   ; 
- - - - - - 0x013D3C 04:BD2C: 01        .byte $01   ; 
- - - - - - 0x013D3D 04:BD2D: 01        .byte $01   ; 
- D 1 - I - 0x013D3E 04:BD2E: 02        .byte $02   ; 
- D 1 - I - 0x013D3F 04:BD2F: 03        .byte $03   ; 
- D 1 - I - 0x013D40 04:BD30: 03        .byte $03   ; 
- D 1 - I - 0x013D41 04:BD31: 03        .byte $03   ; 
- D 1 - I - 0x013D42 04:BD32: 04        .byte $04   ; 
- D 1 - I - 0x013D43 04:BD33: 04        .byte $04   ; 
- D 1 - I - 0x013D44 04:BD34: 00        .byte $00   ; 
- D 1 - I - 0x013D45 04:BD35: 00        .byte $00   ; 
- - - - - - 0x013D46 04:BD36: 00        .byte $00   ; 
- - - - - - 0x013D47 04:BD37: 00        .byte $00   ; 
- - - - - - 0x013D48 04:BD38: 05        .byte $05   ; 
- - - - - - 0x013D49 04:BD39: 05        .byte $05   ; 
- - - - - - 0x013D4A 04:BD3A: 05        .byte $05   ; 
- - - - - - 0x013D4B 04:BD3B: 05        .byte $05   ; 
- - - - - - 0x013D4C 04:BD3C: 05        .byte $05   ; 
- - - - - - 0x013D4D 04:BD3D: 01        .byte $01   ; 
- D 1 - I - 0x013D4E 04:BD3E: 01        .byte $01   ; 
- D 1 - I - 0x013D4F 04:BD3F: 01        .byte $01   ; 
- D 1 - I - 0x013D50 04:BD40: 02        .byte $02   ; 
- D 1 - I - 0x013D51 04:BD41: 02        .byte $02   ; 
- D 1 - I - 0x013D52 04:BD42: 03        .byte $03   ; 
- D 1 - I - 0x013D53 04:BD43: 04        .byte $04   ; 
- D 1 - I - 0x013D54 04:BD44: 05        .byte $05   ; 
- D 1 - I - 0x013D55 04:BD45: 05        .byte $05   ; 
- - - - - - 0x013D56 04:BD46: 05        .byte $05   ; 
- - - - - - 0x013D57 04:BD47: 05        .byte $05   ; 
- - - - - - 0x013D58 04:BD48: 05        .byte $05   ; 
- - - - - - 0x013D59 04:BD49: 05        .byte $05   ; 
- - - - - - 0x013D5A 04:BD4A: 05        .byte $05   ; 
- - - - - - 0x013D5B 04:BD4B: 05        .byte $05   ; 
- - - - - - 0x013D5C 04:BD4C: 01        .byte $01   ; 
- - - - - - 0x013D5D 04:BD4D: 03        .byte $03   ; 
- - - - - - 0x013D5E 04:BD4E: 01        .byte $01   ; 
- - - - - - 0x013D5F 04:BD4F: 02        .byte $02   ; 
- - - - - - 0x013D60 04:BD50: 02        .byte $02   ; 
- - - - - - 0x013D61 04:BD51: 03        .byte $03   ; 
- - - - - - 0x013D62 04:BD52: 04        .byte $04   ; 
- - - - - - 0x013D63 04:BD53: 04        .byte $04   ; 
- D 1 - I - 0x013D64 04:BD54: 00        .byte $00   ; 
- - - - - - 0x013D65 04:BD55: 00        .byte $00   ; 
- - - - - - 0x013D66 04:BD56: 00        .byte $00   ; 
- - - - - - 0x013D67 04:BD57: 00        .byte $00   ; 
- - - - - - 0x013D68 04:BD58: 00        .byte $00   ; 
- - - - - - 0x013D69 04:BD59: 05        .byte $05   ; 
- - - - - - 0x013D6A 04:BD5A: 05        .byte $05   ; 
- - - - - - 0x013D6B 04:BD5B: 05        .byte $05   ; 



tbl_BD5C:
- D 1 - - - 0x013D6C 04:BD5C: 7A BD     .word _off006_BD7A_00_Into_the_Turf
- D 1 - - - 0x013D6E 04:BD5E: BE BD     .word _off006_BDBE_01_At_the_Heliport
- - - - - - 0x013D70 04:BD60: F8 BD     .word _off006_BDF8_02_Battle_in_the_Chopper
- D 1 - - - 0x013D72 04:BD62: F8 BD     .word _off006_BDF8_03_Undersea_Base_pt1
- - - - - - 0x013D74 04:BD64: F8 BD     .word _off006_BDF8_04_Undersea_Base_pt2
- D 1 - - - 0x013D76 04:BD66: F8 BD     .word _off006_BDF8_05_Forest_of_Death
- D 1 - - - 0x013D78 04:BD68: 84 BE     .word _off006_BE84_06_Mansion_of_Terror
- - - - - - 0x013D7A 04:BD6A: B6 BE     .word _off006_BEB6_07_Trap_Room_pt1
- - - - - - 0x013D7C 04:BD6C: B6 BE     .word _off006_BEB6_08_Trap_Room_pt2
- - - - - - 0x013D7E 04:BD6E: B8 BE     .word _off006_BEB8_09_Trap_Room_pt3
- - - - - - 0x013D80 04:BD70: B6 BE     .word _off006_BEB6_0A_Trap_Room_pt4
- D 1 - - - 0x013D82 04:BD72: B8 BE     .word _off006_BEB8_0B_Trap_Room_pt5
- D 1 - - - 0x013D84 04:BD74: B6 BE     .word _off006_BEB6_0C_The_Double_Illusion
- - - - - - 0x013D86 04:BD76: B6 BE     .word _off006_BEB6_0D_Final_Confrontation_pt1
- - - - - - 0x013D88 04:BD78: B6 BE     .word _off006_BEB6_0E_Final_Confrontation_pt2



_off006_BD7A_00_Into_the_Turf:
; con_mission_Into_the_Turf
- D 1 - I - 0x013D8A 04:BD7A: 86 BD     .word off_BD86_00
- D 1 - I - 0x013D8C 04:BD7C: 8E BD     .word off_BD8E_01
- D 1 - I - 0x013D8E 04:BD7E: 96 BD     .word off_BD96_02
- - - - - - 0x013D90 04:BD80: 86 BD     .word off_BD86_03
- D 1 - I - 0x013D92 04:BD82: 9E BD     .word off_BD9E_04
- D 1 - I - 0x013D94 04:BD84: A6 BD     .word off_BDA6_05



off_BD86_00:
off_BD86_03:
- D 1 - I - 0x013D96 04:BD86: 00        .byte $00   ; 
- D 1 - I - 0x013D97 04:BD87: 00        .byte $00   ; 
- D 1 - I - 0x013D98 04:BD88: C8        .byte $C8   ; 
- D 1 - I - 0x013D99 04:BD89: 02        .byte $02   ; 
- - - - - - 0x013D9A 04:BD8A: 00        .byte $00   ; 
- - - - - - 0x013D9B 04:BD8B: 00        .byte $00   ; 
- - - - - - 0x013D9C 04:BD8C: C8        .byte $C8   ; 
- - - - - - 0x013D9D 04:BD8D: 02        .byte $02   ; 



off_BD8E_01:
- D 1 - I - 0x013D9E 04:BD8E: 02        .byte $02   ; 
- D 1 - I - 0x013D9F 04:BD8F: 00        .byte $00   ; 
- D 1 - I - 0x013DA0 04:BD90: 98        .byte $98   ; 
- D 1 - I - 0x013DA1 04:BD91: 00        .byte $00   ; 
- D 1 - I - 0x013DA2 04:BD92: 01        .byte $01   ; 
- D 1 - I - 0x013DA3 04:BD93: 00        .byte $00   ; 
- D 1 - I - 0x013DA4 04:BD94: C8        .byte $C8   ; 
- D 1 - I - 0x013DA5 04:BD95: 02        .byte $02   ; 



off_BD96_02:
- - - - - - 0x013DA6 04:BD96: 00        .byte $00   ; 
- - - - - - 0x013DA7 04:BD97: 01        .byte $01   ; 
- - - - - - 0x013DA8 04:BD98: 98        .byte $98   ; 
- - - - - - 0x013DA9 04:BD99: 03        .byte $03   ; 
- D 1 - I - 0x013DAA 04:BD9A: 04        .byte $04   ; 
- D 1 - I - 0x013DAB 04:BD9B: 00        .byte $00   ; 
- D 1 - I - 0x013DAC 04:BD9C: C0        .byte $C0   ; 
- D 1 - I - 0x013DAD 04:BD9D: 02        .byte $02   ; 



off_BD9E_04:
- - - - - - 0x013DAE 04:BD9E: 00        .byte $00   ; 
- - - - - - 0x013DAF 04:BD9F: 02        .byte $02   ; 
- - - - - - 0x013DB0 04:BDA0: 88        .byte $88   ; 
- - - - - - 0x013DB1 04:BDA1: 02        .byte $02   ; 
- D 1 - I - 0x013DB2 04:BDA2: 07        .byte $07   ; 
- D 1 - I - 0x013DB3 04:BDA3: 00        .byte $00   ; 
- D 1 - I - 0x013DB4 04:BDA4: 00        .byte $00   ; 
- D 1 - I - 0x013DB5 04:BDA5: 00        .byte $00   ; 



off_BDA6_05:
- - - - - - 0x013DB6 04:BDA6: 01        .byte $01   ; 
- - - - - - 0x013DB7 04:BDA7: 02        .byte $02   ; 
- - - - - - 0x013DB8 04:BDA8: 88        .byte $88   ; 
- - - - - - 0x013DB9 04:BDA9: 02        .byte $02   ; 
- D 1 - I - 0x013DBA 04:BDAA: 01        .byte $01   ; 
- D 1 - I - 0x013DBB 04:BDAB: 02        .byte $02   ; 
- D 1 - I - 0x013DBC 04:BDAC: 88        .byte $88   ; 
- D 1 - I - 0x013DBD 04:BDAD: 02        .byte $02   ; 



off_BDAE_00:    ; 3 links
off_BDAE_02:    ; 2 links
off_BDAE_03:
off_BDAE_04:
off_BDAE_05:
off_BDAE_10:
off_BDAE_11:
off_BDAE_12:
off_BDAE_13:
off_BDAE_14:
off_BDAE_15:
off_BDAE_16:
off_BDAE_17:
- - - - - - 0x013DBE 04:BDAE: 07        .byte $07   ; 
- - - - - - 0x013DBF 04:BDAF: 00        .byte $00   ; 
- - - - - - 0x013DC0 04:BDB0: 00        .byte $00   ; 
- - - - - - 0x013DC1 04:BDB1: 00        .byte $00   ; 
- D 1 - I - 0x013DC2 04:BDB2: 07        .byte $07   ; 
- D 1 - I - 0x013DC3 04:BDB3: 00        .byte $00   ; 
- D 1 - I - 0x013DC4 04:BDB4: 00        .byte $00   ; 
- D 1 - I - 0x013DC5 04:BDB5: 00        .byte $00   ; 



off_BDB6_08:
off_BDB6_0B:
off_BDB6_0C:
off_BDB6_0D:
off_BDB6_0E:
off_BDB6_0F:
off_BDB6_18:
off_BDB6_1D:
off_BDB6_09:
off_BDB6_10:
off_BDB6_01:
off_BDB6_02:
- - - - - - 0x013DC6 04:BDB6: 04        .byte $04   ; 
- - - - - - 0x013DC7 04:BDB7: 00        .byte $00   ; 
- - - - - - 0x013DC8 04:BDB8: 00        .byte $00   ; 
- - - - - - 0x013DC9 04:BDB9: 00        .byte $00   ; 
- D 1 - I - 0x013DCA 04:BDBA: 04        .byte $04   ; 
- D 1 - I - 0x013DCB 04:BDBB: 00        .byte $00   ; 
- D 1 - I - 0x013DCC 04:BDBC: 00        .byte $00   ; 
- D 1 - I - 0x013DCD 04:BDBD: 00        .byte $00   ; 



_off006_BDBE_01_At_the_Heliport:
; con_mission_At_the_Heliport
- - - - - - 0x013DCE 04:BDBE: AE BD     .word off_BDAE_00
- D 1 - I - 0x013DD0 04:BDC0: D0 BD     .word off_BDD0_01
- - - - - - 0x013DD2 04:BDC2: AE BD     .word off_BDAE_02
- D 1 - I - 0x013DD4 04:BDC4: D0 BD     .word off_BDD0_03
- - - - - - 0x013DD6 04:BDC6: D8 BD     .word off_BDD8_04
- D 1 - I - 0x013DD8 04:BDC8: E0 BD     .word off_BDE0_05
- D 1 - I - 0x013DDA 04:BDCA: E8 BD     .word off_BDE8_06
- D 1 - I - 0x013DDC 04:BDCC: F0 BD     .word off_BDF0_07
- - - - - - 0x013DDE 04:BDCE: B6 BD     .word off_BDB6_08



off_BDD0_01:
off_BDD0_03:
- D 1 - I - 0x013DE0 04:BDD0: 03        .byte $03   ; 
- D 1 - I - 0x013DE1 04:BDD1: 00        .byte $00   ; 
- D 1 - I - 0x013DE2 04:BDD2: 00        .byte $00   ; 
- D 1 - I - 0x013DE3 04:BDD3: 00        .byte $00   ; 
- D 1 - I - 0x013DE4 04:BDD4: 03        .byte $03   ; 
- D 1 - I - 0x013DE5 04:BDD5: 00        .byte $00   ; 
- D 1 - I - 0x013DE6 04:BDD6: 00        .byte $00   ; 
- D 1 - I - 0x013DE7 04:BDD7: 00        .byte $00   ; 



off_BDD8_04:
- - - - - - 0x013DE8 04:BDD8: 00        .byte $00   ; 
- - - - - - 0x013DE9 04:BDD9: 07        .byte $07   ; 
- - - - - - 0x013DEA 04:BDDA: 78        .byte $78   ; 
- - - - - - 0x013DEB 04:BDDB: 01        .byte $01   ; 
- - - - - - 0x013DEC 04:BDDC: 03        .byte $03   ; 
- - - - - - 0x013DED 04:BDDD: 80        .byte $80   ; 
- - - - - - 0x013DEE 04:BDDE: 00        .byte $00   ; 
- - - - - - 0x013DEF 04:BDDF: 00        .byte $00   ; 



off_BDE0_05:
- - - - - - 0x013DF0 04:BDE0: 00        .byte $00   ; 
- - - - - - 0x013DF1 04:BDE1: 08        .byte $08   ; 
- - - - - - 0x013DF2 04:BDE2: A8        .byte $A8   ; 
- - - - - - 0x013DF3 04:BDE3: 01        .byte $01   ; 
- D 1 - I - 0x013DF4 04:BDE4: 01        .byte $01   ; 
- D 1 - I - 0x013DF5 04:BDE5: 07        .byte $07   ; 
- D 1 - I - 0x013DF6 04:BDE6: 78        .byte $78   ; 
- D 1 - I - 0x013DF7 04:BDE7: 01        .byte $01   ; 



off_BDE8_06:
- D 1 - I - 0x013DF8 04:BDE8: 00        .byte $00   ; 
- D 1 - I - 0x013DF9 04:BDE9: 09        .byte $09   ; 
- D 1 - I - 0x013DFA 04:BDEA: 78        .byte $78   ; 
- D 1 - I - 0x013DFB 04:BDEB: 01        .byte $01   ; 
- - - - - - 0x013DFC 04:BDEC: 07        .byte $07   ; 
- - - - - - 0x013DFD 04:BDED: 00        .byte $00   ; 
- - - - - - 0x013DFE 04:BDEE: 00        .byte $00   ; 
- - - - - - 0x013DFF 04:BDEF: 00        .byte $00   ; 



off_BDF0_07:
- - - - - - 0x013E00 04:BDF0: 01        .byte $01   ; 
- - - - - - 0x013E01 04:BDF1: 09        .byte $09   ; 
- - - - - - 0x013E02 04:BDF2: 78        .byte $78   ; 
- - - - - - 0x013E03 04:BDF3: 01        .byte $01   ; 
- D 1 - I - 0x013E04 04:BDF4: 01        .byte $01   ; 
- D 1 - I - 0x013E05 04:BDF5: 09        .byte $09   ; 
- D 1 - I - 0x013E06 04:BDF6: 78        .byte $78   ; 
- D 1 - I - 0x013E07 04:BDF7: 01        .byte $01   ; 



_off006_BDF8_02_Battle_in_the_Chopper:
; con_mission_Battle_in_the_Chopper
_off006_BDF8_03_Undersea_Base_pt1:
; con_mission_Undersea_Base_pt1
_off006_BDF8_04_Undersea_Base_pt2:
; con_mission_Undersea_Base_pt2
_off006_BDF8_05_Forest_of_Death:
; con_mission_Forest_of_Death
- - - - - - 0x013E08 04:BDF8: AE BD     .word off_BDAE_00
- D 1 - I - 0x013E0A 04:BDFA: 34 BE     .word off_BE34_01
- - - - - - 0x013E0C 04:BDFC: AE BD     .word off_BDAE_02
- - - - - - 0x013E0E 04:BDFE: AE BD     .word off_BDAE_03
- - - - - - 0x013E10 04:BE00: AE BD     .word off_BDAE_04
- - - - - - 0x013E12 04:BE02: AE BD     .word off_BDAE_05
- - - - - - 0x013E14 04:BE04: 3C BE     .word off_BE3C_06
- - - - - - 0x013E16 04:BE06: 44 BE     .word off_BE44_07
- D 1 - I - 0x013E18 04:BE08: 4C BE     .word off_BE4C_08
- D 1 - I - 0x013E1A 04:BE0A: 54 BE     .word off_BE54_09
- D 1 - I - 0x013E1C 04:BE0C: 5C BE     .word off_BE5C_0A
- - - - - - 0x013E1E 04:BE0E: B6 BD     .word off_BDB6_0B
- - - - - - 0x013E20 04:BE10: B6 BD     .word off_BDB6_0C
- - - - - - 0x013E22 04:BE12: B6 BD     .word off_BDB6_0D
- - - - - - 0x013E24 04:BE14: B6 BD     .word off_BDB6_0E
- - - - - - 0x013E26 04:BE16: B6 BD     .word off_BDB6_0F
- - - - - - 0x013E28 04:BE18: AE BD     .word off_BDAE_10
- - - - - - 0x013E2A 04:BE1A: AE BD     .word off_BDAE_11
- - - - - - 0x013E2C 04:BE1C: AE BD     .word off_BDAE_12
- - - - - - 0x013E2E 04:BE1E: AE BD     .word off_BDAE_13
- - - - - - 0x013E30 04:BE20: AE BD     .word off_BDAE_14
- - - - - - 0x013E32 04:BE22: AE BD     .word off_BDAE_15
- - - - - - 0x013E34 04:BE24: AE BD     .word off_BDAE_16
- - - - - - 0x013E36 04:BE26: AE BD     .word off_BDAE_17
- D 1 - I - 0x013E38 04:BE28: B6 BD     .word off_BDB6_18
- D 1 - I - 0x013E3A 04:BE2A: 64 BE     .word off_BE64_19
- D 1 - I - 0x013E3C 04:BE2C: 6C BE     .word off_BE6C_1A
- D 1 - I - 0x013E3E 04:BE2E: 74 BE     .word off_BE74_1B
- D 1 - I - 0x013E40 04:BE30: 7C BE     .word off_BE7C_1C
- D 1 - I - 0x013E42 04:BE32: B6 BD     .word off_BDB6_1D



off_BE34_01:
- D 1 - I - 0x013E44 04:BE34: 07        .byte $07   ; 
- D 1 - I - 0x013E45 04:BE35: 00        .byte $00   ; 
- D 1 - I - 0x013E46 04:BE36: 00        .byte $00   ; 
- D 1 - I - 0x013E47 04:BE37: 00        .byte $00   ; 
- - - - - - 0x013E48 04:BE38: 01        .byte $01   ; 
- - - - - - 0x013E49 04:BE39: 06        .byte $06   ; 
- - - - - - 0x013E4A 04:BE3A: 35        .byte $35   ; 
- - - - - - 0x013E4B 04:BE3B: 01        .byte $01   ; 



off_BE3C_06:
- - - - - - 0x013E4C 04:BE3C: 02        .byte $02   ; 
- - - - - - 0x013E4D 04:BE3D: 00        .byte $00   ; 
- - - - - - 0x013E4E 04:BE3E: 60        .byte $60   ; 
- - - - - - 0x013E4F 04:BE3F: 00        .byte $00   ; 
- - - - - - 0x013E50 04:BE40: 02        .byte $02   ; 
- - - - - - 0x013E51 04:BE41: 00        .byte $00   ; 
- - - - - - 0x013E52 04:BE42: 60        .byte $60   ; 
- - - - - - 0x013E53 04:BE43: 00        .byte $00   ; 



off_BE44_07:
- - - - - - 0x013E54 04:BE44: 02        .byte $02   ; 
- - - - - - 0x013E55 04:BE45: 00        .byte $00   ; 
- - - - - - 0x013E56 04:BE46: 60        .byte $60   ; 
- - - - - - 0x013E57 04:BE47: 00        .byte $00   ; 
- - - - - - 0x013E58 04:BE48: 04        .byte $04   ; 
- - - - - - 0x013E59 04:BE49: 00        .byte $00   ; 
- - - - - - 0x013E5A 04:BE4A: 50        .byte $50   ; 
- - - - - - 0x013E5B 04:BE4B: 02        .byte $02   ; 



off_BE4C_08:
- D 1 - I - 0x013E5C 04:BE4C: 00        .byte $00   ; 
- D 1 - I - 0x013E5D 04:BE4D: 0A        .byte $0A   ; 
- D 1 - I - 0x013E5E 04:BE4E: A8        .byte $A8   ; 
- D 1 - I - 0x013E5F 04:BE4F: 02        .byte $02   ; 
- D 1 - I - 0x013E60 04:BE50: 04        .byte $04   ; 
- D 1 - I - 0x013E61 04:BE51: 00        .byte $00   ; 
- D 1 - I - 0x013E62 04:BE52: 70        .byte $70   ; 
- D 1 - I - 0x013E63 04:BE53: 02        .byte $02   ; 



off_BE54_09:
- - - - - - 0x013E64 04:BE54: 04        .byte $04   ; 
- - - - - - 0x013E65 04:BE55: 00        .byte $00   ; 
- - - - - - 0x013E66 04:BE56: FF        .byte $FF   ; 
- - - - - - 0x013E67 04:BE57: 02        .byte $02   ; 
- D 1 - I - 0x013E68 04:BE58: 07        .byte $07   ; 
- D 1 - I - 0x013E69 04:BE59: 00        .byte $00   ; 
- D 1 - I - 0x013E6A 04:BE5A: 00        .byte $00   ; 
- D 1 - I - 0x013E6B 04:BE5B: 00        .byte $00   ; 



off_BE5C_0A:
- D 1 - I - 0x013E6C 04:BE5C: 08        .byte $08   ; 
- D 1 - I - 0x013E6D 04:BE5D: 00        .byte $00   ; 
- D 1 - I - 0x013E6E 04:BE5E: 40        .byte $40   ; 
- D 1 - I - 0x013E6F 04:BE5F: 04        .byte $04   ; 
- - - - - - 0x013E70 04:BE60: 04        .byte $04   ; 
- - - - - - 0x013E71 04:BE61: 00        .byte $00   ; 
- - - - - - 0x013E72 04:BE62: 70        .byte $70   ; 
- - - - - - 0x013E73 04:BE63: 00        .byte $00   ; 



off_BE64_19:
- D 1 - I - 0x013E74 04:BE64: 02        .byte $02   ; 
- D 1 - I - 0x013E75 04:BE65: 00        .byte $00   ; 
- D 1 - I - 0x013E76 04:BE66: 70        .byte $70   ; 
- D 1 - I - 0x013E77 04:BE67: 00        .byte $00   ; 
- D 1 - I - 0x013E78 04:BE68: 04        .byte $04   ; 
- D 1 - I - 0x013E79 04:BE69: 00        .byte $00   ; 
- D 1 - I - 0x013E7A 04:BE6A: 70        .byte $70   ; 
- D 1 - I - 0x013E7B 04:BE6B: 00        .byte $00   ; 



off_BE6C_1A:
- D 1 - I - 0x013E7C 04:BE6C: 08        .byte $08   ; 
- D 1 - I - 0x013E7D 04:BE6D: 00        .byte $00   ; 
- D 1 - I - 0x013E7E 04:BE6E: 90        .byte $90   ; 
- D 1 - I - 0x013E7F 04:BE6F: 04        .byte $04   ; 
- D 1 - I - 0x013E80 04:BE70: 04        .byte $04   ; 
- D 1 - I - 0x013E81 04:BE71: 00        .byte $00   ; 
- D 1 - I - 0x013E82 04:BE72: 70        .byte $70   ; 
- D 1 - I - 0x013E83 04:BE73: 04        .byte $04   ; 



off_BE74_1B:
- D 1 - I - 0x013E84 04:BE74: 08        .byte $08   ; 
- D 1 - I - 0x013E85 04:BE75: 00        .byte $00   ; 
- D 1 - I - 0x013E86 04:BE76: 70        .byte $70   ; 
- D 1 - I - 0x013E87 04:BE77: 04        .byte $04   ; 
- - - - - - 0x013E88 04:BE78: 04        .byte $04   ; 
- - - - - - 0x013E89 04:BE79: 00        .byte $00   ; 
- - - - - - 0x013E8A 04:BE7A: 50        .byte $50   ; 
- - - - - - 0x013E8B 04:BE7B: 04        .byte $04   ; 



off_BE7C_1C:
- D 1 - I - 0x013E8C 04:BE7C: 08        .byte $08   ; 
- D 1 - I - 0x013E8D 04:BE7D: 00        .byte $00   ; 
- D 1 - I - 0x013E8E 04:BE7E: 70        .byte $70   ; 
- D 1 - I - 0x013E8F 04:BE7F: 04        .byte $04   ; 
- D 1 - I - 0x013E90 04:BE80: 04        .byte $04   ; 
- D 1 - I - 0x013E91 04:BE81: 00        .byte $00   ; 
- D 1 - I - 0x013E92 04:BE82: 50        .byte $50   ; 
- D 1 - I - 0x013E93 04:BE83: 04        .byte $04   ; 



_off006_BE84_06_Mansion_of_Terror:
; con_mission_Mansion_of_Terror
- - - - - - 0x013E94 04:BE84: A6 BE     .word off_BEA6_00
- - - - - - 0x013E96 04:BE86: A6 BE     .word off_BEA6_01
- - - - - - 0x013E98 04:BE88: A6 BE     .word off_BEA6_02
- - - - - - 0x013E9A 04:BE8A: A6 BE     .word off_BEA6_03
- - - - - - 0x013E9C 04:BE8C: A6 BE     .word off_BEA6_04
- - - - - - 0x013E9E 04:BE8E: A6 BE     .word off_BEA6_05
- - - - - - 0x013EA0 04:BE90: A6 BE     .word off_BEA6_06
- - - - - - 0x013EA2 04:BE92: A6 BE     .word off_BEA6_07
- D 1 - I - 0x013EA4 04:BE94: A6 BE     .word off_BEA6_08
- D 1 - I - 0x013EA6 04:BE96: B6 BD     .word off_BDB6_09
- D 1 - I - 0x013EA8 04:BE98: AE BE     .word off_BEAE_0A
- - - - - - 0x013EAA 04:BE9A: A6 BE     .word off_BEA6_0B
- - - - - - 0x013EAC 04:BE9C: A6 BE     .word off_BEA6_0C
- - - - - - 0x013EAE 04:BE9E: A6 BE     .word off_BEA6_0D
- - - - - - 0x013EB0 04:BEA0: A6 BE     .word off_BEA6_0E
- - - - - - 0x013EB2 04:BEA2: A6 BE     .word off_BEA6_0F
- - - - - - 0x013EB4 04:BEA4: B6 BD     .word off_BDB6_10



off_BEA6_00:
off_BEA6_01:
off_BEA6_02:
off_BEA6_03:
off_BEA6_04:
off_BEA6_05:
off_BEA6_06:
off_BEA6_07:
off_BEA6_08:
off_BEA6_0B:
off_BEA6_0C:
off_BEA6_0D:
off_BEA6_0E:
off_BEA6_0F:
- D 1 - I - 0x013EB6 04:BEA6: 02        .byte $02   ; 
- D 1 - I - 0x013EB7 04:BEA7: 80        .byte $80   ; 
- D 1 - I - 0x013EB8 04:BEA8: 00        .byte $00   ; 
- D 1 - I - 0x013EB9 04:BEA9: 00        .byte $00   ; 
- D 1 - I - 0x013EBA 04:BEAA: 02        .byte $02   ; 
- D 1 - I - 0x013EBB 04:BEAB: 80        .byte $80   ; 
- D 1 - I - 0x013EBC 04:BEAC: 00        .byte $00   ; 
- D 1 - I - 0x013EBD 04:BEAD: 00        .byte $00   ; 



off_BEAE_0A:
- D 1 - I - 0x013EBE 04:BEAE: 02        .byte $02   ; 
- D 1 - I - 0x013EBF 04:BEAF: 00        .byte $00   ; 
- D 1 - I - 0x013EC0 04:BEB0: 00        .byte $00   ; 
- D 1 - I - 0x013EC1 04:BEB1: 00        .byte $00   ; 
- - - - - - 0x013EC2 04:BEB2: 02        .byte $02   ; 
- - - - - - 0x013EC3 04:BEB3: 00        .byte $00   ; 
- - - - - - 0x013EC4 04:BEB4: 00        .byte $00   ; 
- - - - - - 0x013EC5 04:BEB5: 00        .byte $00   ; 



_off006_BEB6_07_Trap_Room_pt1:
; con_mission_Trap_Room_pt1
_off006_BEB6_08_Trap_Room_pt2:
; con_mission_Trap_Room_pt2
_off006_BEB6_0A_Trap_Room_pt4:
; con_mission_Trap_Room_pt4
_off006_BEB6_0C_The_Double_Illusion:
; con_mission_The_Double_Illusion
_off006_BEB6_0D_Final_Confrontation_pt1:
; con_mission_Final_Confrontation_pt1
_off006_BEB6_0E_Final_Confrontation_pt2:
; con_mission_Final_Confrontation_pt2
- D 1 - I - 0x013EC6 04:BEB6: AE BD     .word off_BDAE_00



_off006_BEB8_09_Trap_Room_pt3:
; con_mission_Trap_Room_pt3
_off006_BEB8_0B_Trap_Room_pt5:
; con_mission_Trap_Room_pt5
- D 1 - I - 0x013EC8 04:BEB8: BE BE     .word off_BEBE_00
- D 1 - I - 0x013ECA 04:BEBA: B6 BD     .word off_BDB6_01
- D 1 - I - 0x013ECC 04:BEBC: B6 BD     .word off_BDB6_02



off_BEBE_00:
- D 1 - I - 0x013ECE 04:BEBE: 00        .byte $00   ; 
- D 1 - I - 0x013ECF 04:BEBF: 0D        .byte $0D   ; 
- D 1 - I - 0x013ED0 04:BEC0: 48        .byte $48   ; 
- D 1 - I - 0x013ED1 04:BEC1: 00        .byte $00   ; 
- - - - - - 0x013ED2 04:BEC2: 00        .byte $00   ; 
- - - - - - 0x013ED3 04:BEC3: 0D        .byte $0D   ; 
- - - - - - 0x013ED4 04:BEC4: 48        .byte $48   ; 
- - - - - - 0x013ED5 04:BEC5: 00        .byte $00   ; 
- - - - - - 0x013ED6 04:BEC6: 00        .byte $00   ; 



loc_BEC7:
C D 1 - - - 0x013ED7 04:BEC7: 98        TYA
C - - - - - 0x013ED8 04:BEC8: 48        PHA
C - - - - - 0x013ED9 04:BEC9: 8A        TXA
C - - - - - 0x013EDA 04:BECA: 48        PHA
C - - - - - 0x013EDB 04:BECB: A5 2B     LDA ram_002B_temp
C - - - - - 0x013EDD 04:BECD: 48        PHA
C - - - - - 0x013EDE 04:BECE: A5 2C     LDA ram_002C_temp
C - - - - - 0x013EE0 04:BED0: 48        PHA
C - - - - - 0x013EE1 04:BED1: A0 00     LDY #$00
; bzk optimize, LDA instead of LDA,Y
; bzk bug?
C - - - - - 0x013EE3 04:BED3: B9 3C 00  LDA a: ram_003C_obj_flags,Y
C - - - - - 0x013EE6 04:BED6: 30 1D     BMI bra_BEF5    ; if con_003C_flag_exist
bra_BED8:
C - - - - - 0x013EE8 04:BED8: C8        INY
C - - - - - 0x013EE9 04:BED9: B9 3C 00  LDA a: ram_003C_obj_flags,Y
C - - - - - 0x013EEC 04:BEDC: 30 17     BMI bra_BEF5    ; if con_003C_flag_exist
C - - - - - 0x013EEE 04:BEDE: 10 03     BPL bra_BEE3    ; jmp if not con_003C_flag_exist
bra_BEE0:
C - - - - - 0x013EF0 04:BEE0: 98        TYA
C - - - - - 0x013EF1 04:BEE1: F0 F5     BEQ bra_BED8
bra_BEE3:
C - - - - - 0x013EF3 04:BEE3: AD 91 03  LDA ram_0391
C - - - - - 0x013EF6 04:BEE6: 95 94     STA ram_obj_pos_Y_lo + $02,X
C - - - - - 0x013EF8 04:BEE8: A9 00     LDA #$00
C - - - - - 0x013EFA 04:BEEA: 95 9D     STA ram_obj_pos_Y_hi + $02,X
C - - - - - 0x013EFC 04:BEEC: AD 92 03  LDA ram_0392
C - - - - - 0x013EFF 04:BEEF: 9D 5B 03  STA ram_0359_obj + $02,X
C - - - - - 0x013F02 04:BEF2: 4C 16 BF  JMP loc_BF16
bra_BEF5:
C - - - - - 0x013F05 04:BEF5: B9 61 03  LDA ram_0361_obj,Y
C - - - - - 0x013F08 04:BEF8: 29 7F     AND #$7F
C - - - - - 0x013F0A 04:BEFA: C9 07     CMP #con_0361_07
C - - - - - 0x013F0C 04:BEFC: F0 E2     BEQ bra_BEE0
C - - - - - 0x013F0E 04:BEFE: C9 06     CMP #con_0361_06
C - - - - - 0x013F10 04:BF00: F0 DE     BEQ bra_BEE0
C - - - - - 0x013F12 04:BF02: C9 01     CMP #con_0361_01
C - - - - - 0x013F14 04:BF04: F0 DA     BEQ bra_BEE0
C - - - - - 0x013F16 04:BF06: B9 92 00  LDA a: ram_obj_pos_Y_lo,Y
C - - - - - 0x013F19 04:BF09: 95 94     STA ram_obj_pos_Y_lo + $02,X
C - - - - - 0x013F1B 04:BF0B: B9 9B 00  LDA a: ram_obj_pos_Y_hi,Y
C - - - - - 0x013F1E 04:BF0E: 95 9D     STA ram_obj_pos_Y_hi + $02,X
C - - - - - 0x013F20 04:BF10: B9 59 03  LDA ram_0359_obj,Y
C - - - - - 0x013F23 04:BF13: 9D 5B 03  STA ram_0359_obj + $02,X
loc_BF16:
C D 1 - - - 0x013F26 04:BF16: A9 10     LDA #$10
C - - - - - 0x013F28 04:BF18: 85 2B     STA ram_002B_temp
C - - - - - 0x013F2A 04:BF1A: 8A        TXA
C - - - - - 0x013F2B 04:BF1B: F0 04     BEQ bra_BF21
C - - - - - 0x013F2D 04:BF1D: A9 28     LDA #$28
C - - - - - 0x013F2F 04:BF1F: 85 2B     STA ram_002B_temp
bra_BF21:
C - - - - - 0x013F31 04:BF21: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x013F33 04:BF23: D0 06     BNE bra_BF2B
C - - - - - 0x013F35 04:BF25: A5 D0     LDA ram_cam_pos_X_lo
C - - - - - 0x013F37 04:BF27: C9 40     CMP #$40
C - - - - - 0x013F39 04:BF29: 90 4B     BCC bra_BF76
bra_BF2B:
C - - - - - 0x013F3B 04:BF2B: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x013F3E 04:BF2E: D0 13     BNE bra_BF43
; if con_mission_Into_the_Turf
C - - - - - 0x013F40 04:BF30: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x013F43 04:BF33: D0 0E     BNE bra_BF43
; if con_0359_00
C - - - - - 0x013F45 04:BF35: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x013F47 04:BF37: C9 02     CMP #$02
C - - - - - 0x013F49 04:BF39: D0 38     BNE bra_BF73
C - - - - - 0x013F4B 04:BF3B: A5 D0     LDA ram_cam_pos_X_lo
C - - - - - 0x013F4D 04:BF3D: C9 A0     CMP #$A0
C - - - - - 0x013F4F 04:BF3F: B0 02     BCS bra_BF43
C - - - - - 0x013F51 04:BF41: 90 30     BCC bra_BF73    ; jmp
bra_BF43:
C - - - - - 0x013F53 04:BF43: AD 22 04  LDA ram_mission_id_hi
C - - - - - 0x013F56 04:BF46: 0A        ASL
C - - - - - 0x013F57 04:BF47: A8        TAY
C - - - - - 0x013F58 04:BF48: B9 B5 BF  LDA tbl_BFB5,Y
C - - - - - 0x013F5B 04:BF4B: 85 29     STA ram_0029_temp
C - - - - - 0x013F5D 04:BF4D: B9 B6 BF  LDA tbl_BFB5 + $01,Y
C - - - - - 0x013F60 04:BF50: 85 2A     STA ram_002A_temp
C - - - - - 0x013F62 04:BF52: BD 5B 03  LDA ram_0359_obj + $02,X
C - - - - - 0x013F65 04:BF55: 0A        ASL
C - - - - - 0x013F66 04:BF56: A8        TAY
C - - - - - 0x013F67 04:BF57: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x013F69 04:BF59: 85 2D     STA ram_002D_temp
C - - - - - 0x013F6B 04:BF5B: C8        INY
C - - - - - 0x013F6C 04:BF5C: B1 29     LDA (ram_0029_temp),Y
C - - - - - 0x013F6E 04:BF5E: 85 2E     STA ram_002E_temp
C - - - - - 0x013F70 04:BF60: 30 11     BMI bra_BF73
C - - - - - 0x013F72 04:BF62: A5 2D     LDA ram_002D_temp
C - - - - - 0x013F74 04:BF64: 38        SEC
C - - - - - 0x013F75 04:BF65: E5 D0     SBC ram_cam_pos_X_lo
C - - - - - 0x013F77 04:BF67: 85 2F     STA ram_002F_temp
C - - - - - 0x013F79 04:BF69: A5 2E     LDA ram_002E_temp
C - - - - - 0x013F7B 04:BF6B: E5 D1     SBC ram_cam_pos_X_hi
C - - - - - 0x013F7D 04:BF6D: 85 30     STA ram_0030_temp
C - - - - - 0x013F7F 04:BF6F: B0 05     BCS bra_BF76
C - - - - - 0x013F81 04:BF71: 90 13     BCC bra_BF86    ; jmp
bra_BF73:
C - - - - - 0x013F83 04:BF73: 8A        TXA
C - - - - - 0x013F84 04:BF74: D0 10     BNE bra_BF86
bra_BF76:
C - - - - - 0x013F86 04:BF76: A5 D0     LDA ram_cam_pos_X_lo
C - - - - - 0x013F88 04:BF78: 18        CLC
C - - - - - 0x013F89 04:BF79: 65 2B     ADC ram_002B_temp
C - - - - - 0x013F8B 04:BF7B: 95 79     STA ram_obj_pos_X_lo + $02,X
C - - - - - 0x013F8D 04:BF7D: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x013F8F 04:BF7F: 69 01     ADC #$01
C - - - - - 0x013F91 04:BF81: 95 82     STA ram_obj_pos_X_hi + $02,X
C - - - - - 0x013F93 04:BF83: 4C 93 BF  JMP loc_BF93
bra_BF86:
C - - - - - 0x013F96 04:BF86: A5 D0     LDA ram_cam_pos_X_lo
C - - - - - 0x013F98 04:BF88: 38        SEC
C - - - - - 0x013F99 04:BF89: E5 2B     SBC ram_002B_temp
C - - - - - 0x013F9B 04:BF8B: 95 79     STA ram_obj_pos_X_lo + $02,X
C - - - - - 0x013F9D 04:BF8D: A5 D1     LDA ram_cam_pos_X_hi
C - - - - - 0x013F9F 04:BF8F: E9 00     SBC #$00
C - - - - - 0x013FA1 04:BF91: 95 82     STA ram_obj_pos_X_hi + $02,X
loc_BF93:
C D 1 - - - 0x013FA3 04:BF93: 8A        TXA
C - - - - - 0x013FA4 04:BF94: 48        PHA
C - - - - - 0x013FA5 04:BF95: 18        CLC
C - - - - - 0x013FA6 04:BF96: 69 02     ADC #$02
C - - - - - 0x013FA8 04:BF98: AA        TAX
C - - - - - 0x013FA9 04:BF99: 20 CF 85  JSR sub_85CF
C - - - - - 0x013FAC 04:BF9C: 68        PLA
C - - - - - 0x013FAD 04:BF9D: AA        TAX
C - - - - - 0x013FAE 04:BF9E: A5 29     LDA ram_0029_temp
C - - - - - 0x013FB0 04:BFA0: 95 AF     STA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x013FB2 04:BFA2: A5 2A     LDA ram_002A_temp
C - - - - - 0x013FB4 04:BFA4: 95 B8     STA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x013FB6 04:BFA6: A9 01     LDA #$01
C - - - - - 0x013FB8 04:BFA8: 95 6A     STA ram_006A_enemy,X
C - - - - - 0x013FBA 04:BFAA: 68        PLA
C - - - - - 0x013FBB 04:BFAB: 85 2C     STA ram_002C_temp
C - - - - - 0x013FBD 04:BFAD: 68        PLA
C - - - - - 0x013FBE 04:BFAE: 85 2B     STA ram_002B_temp
C - - - - - 0x013FC0 04:BFB0: 68        PLA
C - - - - - 0x013FC1 04:BFB1: AA        TAX
C - - - - - 0x013FC2 04:BFB2: 68        PLA
C - - - - - 0x013FC3 04:BFB3: A8        TAY
C - - - - - 0x013FC4 04:BFB4: 60        RTS



tbl_BFB5:
- D 1 - - - 0x013FC5 04:BFB5: D1 BF     .word _off012_BFD1_00_Into_the_Turf
- D 1 - - - 0x013FC7 04:BFB7: E3 BF     .word _off012_BFE3_01_At_the_Heliport
- - - - - - 0x013FC9 04:BFB9: E3 BF     .word _off012_BFE3_02_Battle_in_the_Chopper
- D 1 - - - 0x013FCB 04:BFBB: DD BF     .word _off012_BFDD_03_Undersea_Base_pt1
- - - - - - 0x013FCD 04:BFBD: E3 BF     .word _off012_BFE3_04_Undersea_Base_pt2
- - - - - - 0x013FCF 04:BFBF: E3 BF     .word _off012_BFE3_05_Forest_of_Death
- - - - - - 0x013FD1 04:BFC1: E3 BF     .word _off012_BFE3_06_Mansion_of_Terror
- - - - - - 0x013FD3 04:BFC3: E3 BF     .word _off012_BFE3_07_Trap_Room_pt1
- - - - - - 0x013FD5 04:BFC5: E3 BF     .word _off012_BFE3_08_Trap_Room_pt2
- - - - - - 0x013FD7 04:BFC7: E3 BF     .word _off012_BFE3_09_Trap_Room_pt3
- - - - - - 0x013FD9 04:BFC9: E3 BF     .word _off012_BFE3_0A_Trap_Room_pt4
- - - - - - 0x013FDB 04:BFCB: E3 BF     .word _off012_BFE3_0B_Trap_Room_pt5
- D 1 - - - 0x013FDD 04:BFCD: F9 BF     .word _off012_BFF9_0C_The_Double_Illusion
- - - - - - 0x013FDF 04:BFCF: E3 BF     .word _off012_BFE3_0D_Final_Confrontation_pt1



_off012_BFD1_00_Into_the_Turf:
; con_mission_Into_the_Turf
- D 1 - I - 0x013FE1 04:BFD1: F0        .byte $F0   ; 
- D 1 - I - 0x013FE2 04:BFD2: 00        .byte $00   ; 
- D 1 - I - 0x013FE3 04:BFD3: FF        .byte $FF   ; 
- D 1 - I - 0x013FE4 04:BFD4: FF        .byte $FF   ; 
- - - - - - 0x013FE5 04:BFD5: FF        .byte $FF   ; 
- - - - - - 0x013FE6 04:BFD6: FF        .byte $FF   ; 
- - - - - - 0x013FE7 04:BFD7: FF        .byte $FF   ; 
- - - - - - 0x013FE8 04:BFD8: FF        .byte $FF   ; 
- - - - - - 0x013FE9 04:BFD9: 89        .byte $89   ; 
- - - - - - 0x013FEA 04:BFDA: 02        .byte $02   ; 
- D 1 - I - 0x013FEB 04:BFDB: 80        .byte $80   ; 
- D 1 - I - 0x013FEC 04:BFDC: 02        .byte $02   ; 



_off012_BFDD_03_Undersea_Base_pt1:
; con_mission_Undersea_Base_pt1
- D 1 - I - 0x013FED 04:BFDD: B0        .byte $B0   ; 
- D 1 - I - 0x013FEE 04:BFDE: 00        .byte $00   ; 
- D 1 - I - 0x013FEF 04:BFDF: FF        .byte $FF   ; 
- D 1 - I - 0x013FF0 04:BFE0: FF        .byte $FF   ; 
- D 1 - I - 0x013FF1 04:BFE1: FF        .byte $FF   ; 
- D 1 - I - 0x013FF2 04:BFE2: FF        .byte $FF   ; 



_off012_BFE3_01_At_the_Heliport:
; con_mission_At_the_Heliport
_off012_BFE3_02_Battle_in_the_Chopper:
; con_mission_Battle_in_the_Chopper
_off012_BFE3_04_Undersea_Base_pt2:
; con_mission_Undersea_Base_pt2
_off012_BFE3_05_Forest_of_Death:
; con_mission_Forest_of_Death
_off012_BFE3_06_Mansion_of_Terror:
; con_mission_Mansion_of_Terror
_off012_BFE3_07_Trap_Room_pt1:
; con_mission_Trap_Room_pt1
_off012_BFE3_08_Trap_Room_pt2:
; con_mission_Trap_Room_pt2
_off012_BFE3_09_Trap_Room_pt3:
; con_mission_Trap_Room_pt3
_off012_BFE3_0A_Trap_Room_pt4:
; con_mission_Trap_Room_pt4
_off012_BFE3_0B_Trap_Room_pt5:
; con_mission_Trap_Room_pt5
_off012_BFE3_0D_Final_Confrontation_pt1:
; con_mission_Final_Confrontation_pt1
- - - - - - 0x013FF3 04:BFE3: FF        .byte $FF   ; 
- - - - - - 0x013FF4 04:BFE4: FF        .byte $FF   ; 
- - - - - - 0x013FF5 04:BFE5: FF        .byte $FF   ; 
- - - - - - 0x013FF6 04:BFE6: FF        .byte $FF   ; 
- - - - - - 0x013FF7 04:BFE7: FF        .byte $FF   ; 
- - - - - - 0x013FF8 04:BFE8: FF        .byte $FF   ; 
- - - - - - 0x013FF9 04:BFE9: FF        .byte $FF   ; 
- - - - - - 0x013FFA 04:BFEA: FF        .byte $FF   ; 
- - - - - - 0x013FFB 04:BFEB: FF        .byte $FF   ; 
- - - - - - 0x013FFC 04:BFEC: FF        .byte $FF   ; 
- - - - - - 0x013FFD 04:BFED: FF        .byte $FF   ; 
- - - - - - 0x013FFE 04:BFEE: FF        .byte $FF   ; 
- - - - - - 0x013FFF 04:BFEF: FF        .byte $FF   ; 
- - - - - - 0x014000 04:BFF0: FF        .byte $FF   ; 
- - - - - - 0x014001 04:BFF1: FF        .byte $FF   ; 
- - - - - - 0x014002 04:BFF2: FF        .byte $FF   ; 
- D 1 - I - 0x014003 04:BFF3: FF        .byte $FF   ; 
- D 1 - I - 0x014004 04:BFF4: FF        .byte $FF   ; 
- - - - - - 0x014005 04:BFF5: FF        .byte $FF   ; 
- - - - - - 0x014006 04:BFF6: FF        .byte $FF   ; 
- - - - - - 0x014007 04:BFF7: FF        .byte $FF   ; 
- - - - - - 0x014008 04:BFF8: FF        .byte $FF   ; 



_off012_BFF9_0C_The_Double_Illusion:
; con_mission_The_Double_Illusion
- D 1 - I - 0x014009 04:BFF9: FF        .byte $FF   ; 
- D 1 - I - 0x01400A 04:BFFA: FF        .byte $FF   ; 
- D 1 - I - 0x01400B 04:BFFB: 10        .byte $10   ; 
- D 1 - I - 0x01400C 04:BFFC: 02        .byte $02   ; 
- - - - - - 0x01400D 04:BFFD: FF        .byte $FF   ; 
- - - - - - 0x01400E 04:BFFE: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 04: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_04_ID"
- D 1 - - - 0x01400F 04:BFFF: 04        .byte con_prg_bank + $04   ; 



