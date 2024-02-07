.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x018010-0x01C00F



.export sub_0x018010_objects_handler
.export sub_0x01AC10_secret_menu_handler
.export sub_0x01B010_draw_static_screen
.export sub_0x01B014_draw_static_screen



sub_0x018010_objects_handler:
C - - - - - 0x018010 06:8000: A5 B1     LDA ram_hearts
C - - - - - 0x018012 06:8002: F0 3A     BEQ bra_803E_RTS
; if not dead
C - - - - - 0x018014 06:8004: A2 01     LDX #$01
C - - - - - 0x018016 06:8006: 86 EF     STX ram_00EF    ; counter
bra_8008_loop:
C - - - - - 0x018018 06:8008: A9 06     LDA #$06
C - - - - - 0x01801A 06:800A: 85 99     STA ram_0099
C - - - - - 0x01801C 06:800C: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01801F 06:800F: 10 25     BPL bra_8036
C - - - - - 0x018021 06:8011: BD A0 04  LDA ram_04A0_obj,X
C - - - - - 0x018024 06:8014: D0 16     BNE bra_802C
C - - - - - 0x018026 06:8016: BC 10 03  LDY ram_obj_id,X
C - - - - - 0x018029 06:8019: B9 20 85  LDA tbl_8520_lo,Y
C - - - - - 0x01802C 06:801C: 85 00     STA ram_0000
C - - - - - 0x01802E 06:801E: B9 80 85  LDA tbl_8580_hi,Y
C - - - - - 0x018031 06:8021: 85 01     STA ram_0001
C - - - - - 0x018033 06:8023: A9 80     LDA #> (ofs_802C - $01)
C - - - - - 0x018035 06:8025: 48        PHA
C - - - - - 0x018036 06:8026: A9 2B     LDA #< (ofs_802C - $01)
C - - - - - 0x018038 06:8028: 48        PHA
C - - - - - 0x018039 06:8029: 6C 00 00  JMP (ram_0000)
bra_802C:
ofs_802C:
C - - - - - 0x01803C 06:802C: E0 03     CPX #$03
C - - - - - 0x01803E 06:802E: 90 06     BCC bra_8036
C - - - - - 0x018040 06:8030: 20 3F 80  JSR sub_803F
C - - - - - 0x018043 06:8033: 20 FF 80  JSR sub_80FF
bra_8036:
C - - - - - 0x018046 06:8036: E6 EF     INC ram_00EF    ; counter
C - - - - - 0x018048 06:8038: A6 EF     LDX ram_00EF    ; counter
C - - - - - 0x01804A 06:803A: E0 10     CPX #$10
C - - - - - 0x01804C 06:803C: D0 CA     BNE bra_8008_loop
bra_803E_RTS:
C - - - - - 0x01804E 06:803E: 60        RTS



sub_803F:
C - - - - - 0x01804F 06:803F: 20 F2 FA  JSR sub_0x01FB02
C - - - - - 0x018052 06:8042: B0 79     BCS bra_80BD_RTS
C - - - - - 0x018054 06:8044: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x018057 06:8047: 29 40     AND #$40
C - - - - - 0x018059 06:8049: F0 73     BEQ bra_80BE
C - - - - - 0x01805B 06:804B: A5 3F     LDA ram_003F
C - - - - - 0x01805D 06:804D: 05 2F     ORA ram_002F
C - - - - - 0x01805F 06:804F: D0 6C     BNE bra_80BD_RTS
C - - - - - 0x018061 06:8051: A5 BB     LDA ram_no_damage_cheat
C - - - - - 0x018063 06:8053: D0 68     BNE bra_80BD_RTS
C - - - - - 0x018065 06:8055: A9 07     LDA #con_ariel_damaged
C - - - - - 0x018067 06:8057: C5 30     CMP ram_ariel_status
C - - - - - 0x018069 06:8059: F0 62     BEQ bra_80BD_RTS
C - - - - - 0x01806B 06:805B: C6 B1     DEC ram_hearts
C - - - - - 0x01806D 06:805D: D0 05     BNE bra_8064    ; if not dead
; if dead
C - - - - - 0x01806F 06:805F: A0 00     LDY #$00
C - - - - - 0x018071 06:8061: 8C 80 04  STY ram_0480_obj
bra_8064:
C - - - - - 0x018074 06:8064: A4 30     LDY ram_ariel_status
C - - - - - 0x018076 06:8066: 8C 60 04  STY ram_0460_obj
C - - - - - 0x018079 06:8069: 85 30     STA ram_ariel_status
C - - - - - 0x01807B 06:806B: A9 1D     LDA #con_sfx_get_hit
C - - - - - 0x01807D 06:806D: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018080 06:8070: C0 04     CPY #$04
C - - - - - 0x018082 06:8072: F0 27     BEQ bra_809B
C - - - - - 0x018084 06:8074: C0 05     CPY #$05
C - - - - - 0x018086 06:8076: F0 23     BEQ bra_809B
C - - - - - 0x018088 06:8078: A9 08     LDA #$08
C - - - - - 0x01808A 06:807A: 8D 30 04  STA ram_0430_obj
C - - - - - 0x01808D 06:807D: A9 00     LDA #$00
C - - - - - 0x01808F 06:807F: 8D 18 04  STA ram_animation_cnt
C - - - - - 0x018092 06:8082: 8D 48 04  STA ram_0448
C - - - - - 0x018095 06:8085: 8D 60 04  STA ram_0460_obj
C - - - - - 0x018098 06:8088: C0 02     CPY #$02
C - - - - - 0x01809A 06:808A: D0 0F     BNE bra_809B
C - - - - - 0x01809C 06:808C: 8C 60 04  STY ram_0460_obj
C - - - - - 0x01809F 06:808F: AC B0 03  LDY ram_spd_Y_hi
C - - - - - 0x0180A2 06:8092: 30 29     BMI bra_80BD_RTS
- - - - - - 0x0180A4 06:8094: 8D A0 03  STA ram_spd_Y_lo
- - - - - - 0x0180A7 06:8097: 8D B0 03  STA ram_spd_Y_hi
- - - - - - 0x0180AA 06:809A: 60        RTS
bra_809B:
C - - - - - 0x0180AB 06:809B: A9 00     LDA #$00
C - - - - - 0x0180AD 06:809D: 85 3A     STA ram_003A
C - - - - - 0x0180AF 06:809F: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x0180B2 06:80A2: A9 01     LDA #$01
C - - - - - 0x0180B4 06:80A4: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x0180B7 06:80A7: A9 10     LDA #$10
C - - - - - 0x0180B9 06:80A9: 8D 70 04  STA ram_obj_timer
C - - - - - 0x0180BC 06:80AC: A9 01     LDA #$01
C - - - - - 0x0180BE 06:80AE: 8D D0 03  STA ram_direction
C - - - - - 0x0180C1 06:80B1: AD 00 04  LDA ram_0400_obj
C - - - - - 0x0180C4 06:80B4: 29 40     AND #$40
C - - - - - 0x0180C6 06:80B6: F0 21     BEQ bra_80D9_RTS
C - - - - - 0x0180C8 06:80B8: A9 02     LDA #$02
C - - - - - 0x0180CA 06:80BA: 8D D0 03  STA ram_direction
bra_80BD_RTS:
C - - - - - 0x0180CD 06:80BD: 60        RTS
bra_80BE:
C - - - - - 0x0180CE 06:80BE: A5 3A     LDA ram_003A
C - - - - - 0x0180D0 06:80C0: 05 30     ORA ram_ariel_status
C - - - - - 0x0180D2 06:80C2: D0 15     BNE bra_80D9_RTS
C - - - - - 0x0180D4 06:80C4: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x0180D7 06:80C7: C9 30     CMP #con_obj_id_shell
C - - - - - 0x0180D9 06:80C9: F0 0C     BEQ bra_80D7
C - - - - - 0x0180DB 06:80CB: C9 02     CMP #$02
C - - - - - 0x0180DD 06:80CD: D0 0A     BNE bra_80D9_RTS
C - - - - - 0x0180DF 06:80CF: 86 3A     STX ram_003A
C - - - - - 0x0180E1 06:80D1: A9 00     LDA #$00
C - - - - - 0x0180E3 06:80D3: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x0180E6 06:80D6: 60        RTS
bra_80D7:
C - - - - - 0x0180E7 06:80D7: 86 3A     STX ram_003A
bra_80D9_RTS:
C - - - - - 0x0180E9 06:80D9: 60        RTS
bra_80DA:
C - - - - - 0x0180EA 06:80DA: 86 01     STX ram_0001
C - - - - - 0x0180EC 06:80DC: A6 00     LDX ram_0000
C - - - - - 0x0180EE 06:80DE: A4 3D     LDY ram_weapon_power
C - - - - - 0x0180F0 06:80E0: A9 00     LDA #$00    ; con_obj_id_00
C - - - - - 0x0180F2 06:80E2: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x0180F5 06:80E5: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0180F8 06:80E8: B9 F7 80  LDA tbl_80F7,Y
C - - - - - 0x0180FB 06:80EB: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x0180FE 06:80EE: B9 FB 80  LDA tbl_80FB,Y
C - - - - - 0x018101 06:80F1: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x018104 06:80F4: A6 01     LDX ram_0001
C - - - - - 0x018106 06:80F6: 60        RTS



tbl_80F7:
; bzk optimize, same bytes
- D 0 - - - 0x018107 06:80F7: 80        .byte $80   ; 00
- D 0 - - - 0x018108 06:80F8: 80        .byte $80   ; 01
- D 0 - - - 0x018109 06:80F9: 80        .byte $80   ; 02
- D 0 - - - 0x01810A 06:80FA: 80        .byte $80   ; 03

tbl_80FB:
- D 0 - - - 0x01810B 06:80FB: 10        .byte $10   ; 00
- D 0 - - - 0x01810C 06:80FC: 10        .byte $10   ; 01
- D 0 - - - 0x01810D 06:80FD: 51        .byte $51   ; 02
- D 0 - - - 0x01810E 06:80FE: 14        .byte $14   ; 03



sub_80FF:
C - - - - - 0x01810F 06:80FF: 20 A0 FB  JSR sub_0x01FBB0
C - - - - - 0x018112 06:8102: B0 D5     BCS bra_80D9_RTS
C - - - - - 0x018114 06:8104: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x018117 06:8107: C9 06     CMP #con_obj_id_piranha_ghost
C - - - - - 0x018119 06:8109: F0 CE     BEQ bra_80D9_RTS
C - - - - - 0x01811B 06:810B: 84 00     STY ram_0000
C - - - - - 0x01811D 06:810D: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x018120 06:8110: A8        TAY
C - - - - - 0x018121 06:8111: B9 C0 84  LDA tbl_84C0,Y
C - - - - - 0x018124 06:8114: F0 C4     BEQ bra_80DA
C - - - - - 0x018126 06:8116: B9 60 84  LDA tbl_8460,Y
C - - - - - 0x018129 06:8119: F0 1F     BEQ bra_813A
C - - - - - 0x01812B 06:811B: A9 00     LDA #$00
C - - - - - 0x01812D 06:811D: 85 01     STA ram_0001
C - - - - - 0x01812F 06:811F: A5 3D     LDA ram_weapon_power
C - - - - - 0x018131 06:8121: D0 39     BNE bra_815C
C - - - - - 0x018133 06:8123: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x018136 06:8126: C9 1C     CMP #con_obj_id_sleeping_fish
C - - - - - 0x018138 06:8128: F0 10     BEQ bra_813A
C - - - - - 0x01813A 06:812A: C9 1E     CMP #con_obj_id_mother_fish
C - - - - - 0x01813C 06:812C: F0 0C     BEQ bra_813A
C - - - - - 0x01813E 06:812E: C9 0A     CMP #con_obj_id_octopus
C - - - - - 0x018140 06:8130: F0 08     BEQ bra_813A
C - - - - - 0x018142 06:8132: BD A0 04  LDA ram_04A0_obj,X
C - - - - - 0x018145 06:8135: D0 25     BNE bra_815C
C - - - - - 0x018147 06:8137: 20 32 88  JSR sub_8832
bra_813A:
C - - - - - 0x01814A 06:813A: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x01814D 06:813D: C9 0C     CMP #con_obj_id_boss_shark_1
C - - - - - 0x01814F 06:813F: F0 76     BEQ bra_81B7
C - - - - - 0x018151 06:8141: C9 0D     CMP #con_obj_id_boss_shark_2
C - - - - - 0x018153 06:8143: F0 72     BEQ bra_81B7
C - - - - - 0x018155 06:8145: C9 2A     CMP #con_obj_id_boss_walrus
C - - - - - 0x018157 06:8147: F0 6E     BEQ bra_81B7
C - - - - - 0x018159 06:8149: C9 2C     CMP #con_obj_id_boss_eel_1
C - - - - - 0x01815B 06:814B: F0 6A     BEQ bra_81B7
C - - - - - 0x01815D 06:814D: C9 2D     CMP #con_obj_id_boss_eel_2
C - - - - - 0x01815F 06:814F: F0 66     BEQ bra_81B7
C - - - - - 0x018161 06:8151: C9 2E     CMP #con_obj_id_boss_seahorse
C - - - - - 0x018163 06:8153: F0 62     BEQ bra_81B7
C - - - - - 0x018165 06:8155: A9 78     LDA #$78
C - - - - - 0x018167 06:8157: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x01816A 06:815A: D0 5B     BNE bra_81B7   ; jmp
bra_815C:
C - - - - - 0x01816C 06:815C: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x01816F 06:815F: 29 20     AND #$20
C - - - - - 0x018171 06:8161: F0 60     BEQ bra_81C3_RTS
C - - - - - 0x018173 06:8163: A5 3D     LDA ram_weapon_power
C - - - - - 0x018175 06:8165: C9 01     CMP #$01
C - - - - - 0x018177 06:8167: D0 0F     BNE bra_8178
C - - - - - 0x018179 06:8169: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x01817C 06:816C: C9 1C     CMP #con_obj_id_sleeping_fish
C - - - - - 0x01817E 06:816E: F0 CA     BEQ bra_813A
C - - - - - 0x018180 06:8170: C9 1E     CMP #con_obj_id_mother_fish
C - - - - - 0x018182 06:8172: F0 C6     BEQ bra_813A
C - - - - - 0x018184 06:8174: C9 0A     CMP #con_obj_id_octopus
C - - - - - 0x018186 06:8176: F0 C2     BEQ bra_813A
bra_8178:
C - - - - - 0x018188 06:8178: A5 3D     LDA ram_weapon_power
C - - - - - 0x01818A 06:817A: C9 03     CMP #$03
C - - - - - 0x01818C 06:817C: D0 04     BNE bra_8182
C - - - - - 0x01818E 06:817E: A9 0C     LDA #$0C
C - - - - - 0x018190 06:8180: 85 01     STA ram_0001
bra_8182:
C - - - - - 0x018192 06:8182: B9 60 84  LDA tbl_8460,Y
C - - - - - 0x018195 06:8185: 38        SEC
C - - - - - 0x018196 06:8186: E5 01     SBC ram_0001
C - - - - - 0x018198 06:8188: 9D 30 04  STA ram_0430_obj,X
C - - - - - 0x01819B 06:818B: B9 C0 84  LDA tbl_84C0,Y
C - - - - - 0x01819E 06:818E: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x0181A1 06:8191: A9 02     LDA #con_obj_id_enemy_inside_bubble
C - - - - - 0x0181A3 06:8193: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x0181A6 06:8196: A9 80     LDA #$80
C - - - - - 0x0181A8 06:8198: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x0181AB 06:819B: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x0181AE 06:819E: 29 1F     AND #$1F
C - - - - - 0x0181B0 06:81A0: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0181B3 06:81A3: A9 00     LDA #$00
C - - - - - 0x0181B5 06:81A5: 9D 18 04  STA ram_animation_cnt,X
C - - - - - 0x0181B8 06:81A8: 9D 48 04  STA ram_0448,X
C - - - - - 0x0181BB 06:81AB: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x0181BE 06:81AE: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x0181C1 06:81B1: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x0181C4 06:81B4: 9D A0 04  STA ram_04A0_obj,X
bra_81B7:
C - - - - - 0x0181C7 06:81B7: A9 00     LDA #$00
C - - - - - 0x0181C9 06:81B9: A4 00     LDY ram_0000
C - - - - - 0x0181CB 06:81BB: 99 00 03  STA ram_obj_flags,Y
C - - - - - 0x0181CE 06:81BE: A9 13     LDA #con_sfx_bubble_hit
C - - - - - 0x0181D0 06:81C0: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
bra_81C3_RTS:
C - - - - - 0x0181D3 06:81C3: 60        RTS



sub_81C4:
C - - - - - 0x0181D4 06:81C4: 86 04     STX ram_0004
C - - - - - 0x0181D6 06:81C6: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0181D9 06:81C9: 30 03     BMI bra_81CE
C - - - - - 0x0181DB 06:81CB: 4C 84 82  JMP loc_8284
bra_81CE:
C - - - - - 0x0181DE 06:81CE: A9 00     LDA #$00
C - - - - - 0x0181E0 06:81D0: 85 07     STA ram_0007
C - - - - - 0x0181E2 06:81D2: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x0181E5 06:81D5: 29 1F     AND #$1F
C - - - - - 0x0181E7 06:81D7: C9 02     CMP #$02
C - - - - - 0x0181E9 06:81D9: F0 04     BEQ bra_81DF
C - - - - - 0x0181EB 06:81DB: C9 03     CMP #$03
C - - - - - 0x0181ED 06:81DD: D0 04     BNE bra_81E3
bra_81DF:
C - - - - - 0x0181EF 06:81DF: A9 08     LDA #$08
C - - - - - 0x0181F1 06:81E1: 85 07     STA ram_0007
bra_81E3:
C - - - - - 0x0181F3 06:81E3: A0 0F     LDY #$0F
C - - - - - 0x0181F5 06:81E5: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0181F8 06:81E8: 38        SEC
C - - - - - 0x0181F9 06:81E9: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x0181FB 06:81EB: B0 03     BCS bra_81F0
C - - - - - 0x0181FD 06:81ED: E9 0F     SBC #$0F
C - - - - - 0x0181FF 06:81EF: 18        CLC
bra_81F0:
C - - - - - 0x018200 06:81F0: 85 05     STA ram_0005
C - - - - - 0x018202 06:81F2: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x018205 06:81F5: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x018207 06:81F7: 29 01     AND #$01
C - - - - - 0x018209 06:81F9: F0 03     BEQ bra_81FE
C - - - - - 0x01820B 06:81FB: 4C 84 82  JMP loc_8284
bra_81FE:
loc_81FE:
C D 0 - - - 0x01820E 06:81FE: C4 04     CPY ram_0004
C - - - - - 0x018210 06:8200: F0 7A     BEQ bra_827C
C - - - - - 0x018212 06:8202: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x018215 06:8205: 10 75     BPL bra_827C
C - - - - - 0x018217 06:8207: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01821A 06:820A: 10 70     BPL bra_827C
C - - - - - 0x01821C 06:820C: 29 04     AND #$04
C - - - - - 0x01821E 06:820E: D0 6C     BNE bra_827C
C - - - - - 0x018220 06:8210: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x018223 06:8213: 29 40     AND #$40
C - - - - - 0x018225 06:8215: F0 65     BEQ bra_827C
C - - - - - 0x018227 06:8217: BE 10 03  LDX ram_obj_id,Y
C - - - - - 0x01822A 06:821A: BD C0 84  LDA tbl_84C0,X
C - - - - - 0x01822D 06:821D: F0 5D     BEQ bra_827C
C - - - - - 0x01822F 06:821F: B9 A0 04  LDA ram_04A0_obj,Y
C - - - - - 0x018232 06:8222: D0 58     BNE bra_827C
C - - - - - 0x018234 06:8224: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x018237 06:8227: 29 1F     AND #$1F
C - - - - - 0x018239 06:8229: AA        TAX
C - - - - - 0x01823A 06:822A: BD 80 FB  LDA tbl_0x01FB90,X
C - - - - - 0x01823D 06:822D: 18        CLC
C - - - - - 0x01823E 06:822E: 65 07     ADC ram_0007
C - - - - - 0x018240 06:8230: 85 02     STA ram_0002
C - - - - - 0x018242 06:8232: C6 02     DEC ram_0002
C - - - - - 0x018244 06:8234: BD 60 FB  LDA tbl_0x01FB70,X
C - - - - - 0x018247 06:8237: 18        CLC
C - - - - - 0x018248 06:8238: 65 07     ADC ram_0007
C - - - - - 0x01824A 06:823A: 85 03     STA ram_0003
C - - - - - 0x01824C 06:823C: A6 04     LDX ram_0004
C - - - - - 0x01824E 06:823E: B9 30 03  LDA ram_pos_X_lo,Y
C - - - - - 0x018251 06:8241: 38        SEC
C - - - - - 0x018252 06:8242: FD 30 03  SBC ram_pos_X_lo,X
C - - - - - 0x018255 06:8245: 48        PHA
C - - - - - 0x018256 06:8246: B9 40 03  LDA ram_pos_X_hi,Y
C - - - - - 0x018259 06:8249: FD 40 03  SBC ram_pos_X_hi,X
C - - - - - 0x01825C 06:824C: 68        PLA
C - - - - - 0x01825D 06:824D: B0 04     BCS bra_8253
C - - - - - 0x01825F 06:824F: 49 FF     EOR #$FF
C - - - - - 0x018261 06:8251: 69 01     ADC #$01
bra_8253:
C - - - - - 0x018263 06:8253: C5 02     CMP ram_0002
C - - - - - 0x018265 06:8255: B0 25     BCS bra_827C
C - - - - - 0x018267 06:8257: B9 60 03  LDA ram_pos_Y_lo,Y
C - - - - - 0x01826A 06:825A: 38        SEC
C - - - - - 0x01826B 06:825B: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01826D 06:825D: B0 03     BCS bra_8262
C - - - - - 0x01826F 06:825F: E9 0F     SBC #$0F
C - - - - - 0x018271 06:8261: 18        CLC
bra_8262:
C - - - - - 0x018272 06:8262: 85 1F     STA ram_001F
C - - - - - 0x018274 06:8264: B9 70 03  LDA ram_pos_Y_hi,Y
C - - - - - 0x018277 06:8267: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x018279 06:8269: 29 01     AND #$01
C - - - - - 0x01827B 06:826B: D0 0F     BNE bra_827C
C - - - - - 0x01827D 06:826D: A5 1F     LDA ram_001F
C - - - - - 0x01827F 06:826F: 38        SEC
C - - - - - 0x018280 06:8270: E5 05     SBC ram_0005
C - - - - - 0x018282 06:8272: B0 04     BCS bra_8278
C - - - - - 0x018284 06:8274: 49 FF     EOR #$FF
C - - - - - 0x018286 06:8276: 69 01     ADC #$01
bra_8278:
C - - - - - 0x018288 06:8278: C5 03     CMP ram_0003
C - - - - - 0x01828A 06:827A: 90 12     BCC bra_828E
bra_827C:
C - - - - - 0x01828C 06:827C: 88        DEY
C - - - - - 0x01828D 06:827D: C0 02     CPY #$02
C - - - - - 0x01828F 06:827F: F0 03     BEQ bra_8284
C - - - - - 0x018291 06:8281: 4C FE 81  JMP loc_81FE
bra_8284:
loc_8284:
C D 0 - - - 0x018294 06:8284: A6 04     LDX ram_0004
C - - - - - 0x018296 06:8286: 38        SEC
C - - - - - 0x018297 06:8287: 60        RTS
bra_8288:
C - - - - - 0x018298 06:8288: 4C D6 83  JMP loc_83D6
bra_828B:
C - - - - - 0x01829B 06:828B: 4C 1B 84  JMP loc_841B
bra_828E:
C - - - - - 0x01829E 06:828E: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x0182A1 06:8291: C9 47     CMP #con_obj_id_boss_ursula_small_top
C - - - - - 0x0182A3 06:8293: F0 F3     BEQ bra_8288
C - - - - - 0x0182A5 06:8295: C9 57     CMP #con_obj_id_boss_ursula_big_alive
C - - - - - 0x0182A7 06:8297: F0 F2     BEQ bra_828B
C - - - - - 0x0182A9 06:8299: B9 F0 03  LDA ram_03F0_obj,Y
C - - - - - 0x0182AC 06:829C: 38        SEC
C - - - - - 0x0182AD 06:829D: E9 01     SBC #$01
C - - - - - 0x0182AF 06:829F: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x0182B2 06:82A2: F0 33     BEQ bra_82D7
C - - - - - 0x0182B4 06:82A4: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x0182B7 06:82A7: C9 1C     CMP #con_obj_id_sleeping_fish
C - - - - - 0x0182B9 06:82A9: F0 08     BEQ bra_82B3
C - - - - - 0x0182BB 06:82AB: C9 1E     CMP #con_obj_id_mother_fish
C - - - - - 0x0182BD 06:82AD: F0 04     BEQ bra_82B3
C - - - - - 0x0182BF 06:82AF: C9 0A     CMP #con_obj_id_octopus
C - - - - - 0x0182C1 06:82B1: D0 15     BNE bra_82C8
bra_82B3:
C - - - - - 0x0182C3 06:82B3: A6 04     LDX ram_0004
C - - - - - 0x0182C5 06:82B5: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0182C8 06:82B8: C9 73     CMP #$73
C - - - - - 0x0182CA 06:82BA: F0 1B     BEQ bra_82D7
C - - - - - 0x0182CC 06:82BC: C9 74     CMP #$74
C - - - - - 0x0182CE 06:82BE: F0 17     BEQ bra_82D7
C - - - - - 0x0182D0 06:82C0: C9 7F     CMP #$7F
C - - - - - 0x0182D2 06:82C2: F0 13     BEQ bra_82D7
C - - - - - 0x0182D4 06:82C4: C9 80     CMP #$80
C - - - - - 0x0182D6 06:82C6: F0 0F     BEQ bra_82D7
bra_82C8:
C - - - - - 0x0182D8 06:82C8: A9 1D     LDA #con_sfx_get_hit
C - - - - - 0x0182DA 06:82CA: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x0182DD 06:82CD: A6 04     LDX ram_0004
C - - - - - 0x0182DF 06:82CF: A9 BC     LDA #$BC
C - - - - - 0x0182E1 06:82D1: 99 A0 04  STA ram_04A0_obj,Y
C - - - - - 0x0182E4 06:82D4: 4C 5F 83  JMP loc_835F
bra_82D7:
C - - - - - 0x0182E7 06:82D7: BE 10 03  LDX ram_obj_id,Y
C - - - - - 0x0182EA 06:82DA: BD C0 84  LDA tbl_84C0,X
C - - - - - 0x0182ED 06:82DD: 99 30 04  STA ram_0430_obj,Y
C - - - - - 0x0182F0 06:82E0: A9 00     LDA #$00
C - - - - - 0x0182F2 06:82E2: 99 48 04  STA ram_0448,Y
C - - - - - 0x0182F5 06:82E5: 99 18 04  STA ram_animation_cnt,Y
C - - - - - 0x0182F8 06:82E8: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x0182FB 06:82EB: A9 1B     LDA #con_sfx_enemy_killed
C - - - - - 0x0182FD 06:82ED: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018300 06:82F0: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x018303 06:82F3: C9 5C     CMP #$5C
C - - - - - 0x018305 06:82F5: F0 0C     BEQ bra_8303
C - - - - - 0x018307 06:82F7: C9 57     CMP #$57
C - - - - - 0x018309 06:82F9: F0 08     BEQ bra_8303
C - - - - - 0x01830B 06:82FB: C9 5B     CMP #$5B
C - - - - - 0x01830D 06:82FD: F0 04     BEQ bra_8303
C - - - - - 0x01830F 06:82FF: C9 55     CMP #$55
C - - - - - 0x018311 06:8301: D0 33     BNE bra_8336
bra_8303:
C - - - - - 0x018313 06:8303: A6 04     LDX ram_0004
C - - - - - 0x018315 06:8305: A9 00     LDA #$00
C - - - - - 0x018317 06:8307: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01831A 06:830A: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x01831D 06:830D: A9 04     LDA #$04
C - - - - - 0x01831F 06:830F: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x018322 06:8312: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x018325 06:8315: A9 3D     LDA #con_obj_id_dead_boss
C - - - - - 0x018327 06:8317: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01832A 06:831A: A9 09     LDA #$09
C - - - - - 0x01832C 06:831C: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01832F 06:831F: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x018332 06:8322: 29 40     AND #$40
C - - - - - 0x018334 06:8324: D0 05     BNE bra_832B
C - - - - - 0x018336 06:8326: A9 0A     LDA #$0A
C - - - - - 0x018338 06:8328: 99 D0 03  STA ram_direction,Y
bra_832B:
C - - - - - 0x01833B 06:832B: A9 00     LDA #$00
C - - - - - 0x01833D 06:832D: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018340 06:8330: 99 A0 04  STA ram_04A0_obj,Y
C - - - - - 0x018343 06:8333: 4C 5F 83  JMP loc_835F
bra_8336:
C - - - - - 0x018346 06:8336: A6 04     LDX ram_0004
C - - - - - 0x018348 06:8338: A9 DD     LDA #$DD
C - - - - - 0x01834A 06:833A: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01834D 06:833D: A9 00     LDA #$00
C - - - - - 0x01834F 06:833F: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x018352 06:8342: A9 77     LDA #$77
C - - - - - 0x018354 06:8344: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x018357 06:8347: A9 03     LDA #$03
C - - - - - 0x018359 06:8349: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x01835C 06:834C: A9 42     LDA #con_obj_id_dead_enemy
C - - - - - 0x01835E 06:834E: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018361 06:8351: BD D0 03  LDA ram_direction,X
C - - - - - 0x018364 06:8354: 99 D0 03  STA ram_direction,Y
C - - - - - 0x018367 06:8357: A9 00     LDA #$00
C - - - - - 0x018369 06:8359: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01836C 06:835C: 99 A0 04  STA ram_04A0_obj,Y
loc_835F:
C D 0 - - - 0x01836F 06:835F: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x018372 06:8362: C9 40     CMP #$40
C - - - - - 0x018374 06:8364: F0 6E     BEQ bra_83D4
; check for rocks and barrels
C - - - - - 0x018376 06:8366: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x018379 06:8369: C9 30     CMP #$30
C - - - - - 0x01837B 06:836B: 90 04     BCC bra_8371
C - - - - - 0x01837D 06:836D: C9 34     CMP #$34
C - - - - - 0x01837F 06:836F: 90 63     BCC bra_83D4    ; if 31-33
bra_8371:
sub_8371:
loc_8371:
C D 0 - - - 0x018381 06:8371: A9 DD     LDA #$DD
C - - - - - 0x018383 06:8373: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x018386 06:8376: A9 00     LDA #$00
C - - - - - 0x018388 06:8378: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01838B 06:837B: A9 77     LDA #$77
C - - - - - 0x01838D 06:837D: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018390 06:8380: A9 03     LDA #$03
C - - - - - 0x018392 06:8382: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018395 06:8385: A9 4C     LDA #con_obj_id_bubble_burst
C - - - - - 0x018397 06:8387: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01839A 06:838A: BD D0 03  LDA ram_direction,X
C - - - - - 0x01839D 06:838D: 49 03     EOR #$03
C - - - - - 0x01839F 06:838F: 9D D0 03  STA ram_direction,X
C - - - - - 0x0183A2 06:8392: A9 00     LDA #$00
C - - - - - 0x0183A4 06:8394: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0183A7 06:8397: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x0183AA 06:839A: A9 10     LDA #$10
C - - - - - 0x0183AC 06:839C: 85 06     STA ram_0006
C - - - - - 0x0183AE 06:839E: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0183B1 06:83A1: C9 7B     CMP #$7B
C - - - - - 0x0183B3 06:83A3: B0 13     BCS bra_83B8
C - - - - - 0x0183B5 06:83A5: A9 14     LDA #$14
C - - - - - 0x0183B7 06:83A7: 85 06     STA ram_0006
C - - - - - 0x0183B9 06:83A9: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0183BC 06:83AC: C9 75     CMP #$75
C - - - - - 0x0183BE 06:83AE: F0 17     BEQ bra_83C7
C - - - - - 0x0183C0 06:83B0: C9 73     CMP #$73
C - - - - - 0x0183C2 06:83B2: 90 13     BCC bra_83C7
C - - - - - 0x0183C4 06:83B4: A9 4F     LDA #$4F
C - - - - - 0x0183C6 06:83B6: 85 06     STA ram_0006
bra_83B8:
C - - - - - 0x0183C8 06:83B8: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0183CB 06:83BB: C9 81     CMP #$81
C - - - - - 0x0183CD 06:83BD: F0 08     BEQ bra_83C7
C - - - - - 0x0183CF 06:83BF: C9 7F     CMP #$7F
C - - - - - 0x0183D1 06:83C1: 90 04     BCC bra_83C7
C - - - - - 0x0183D3 06:83C3: A9 11     LDA #$11
C - - - - - 0x0183D5 06:83C5: 85 06     STA ram_0006
bra_83C7:
C - - - - - 0x0183D7 06:83C7: A5 06     LDA ram_0006
C - - - - - 0x0183D9 06:83C9: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0183DC 06:83CC: E4 3A     CPX ram_003A
C - - - - - 0x0183DE 06:83CE: D0 04     BNE bra_83D4
C - - - - - 0x0183E0 06:83D0: A9 00     LDA #$00
C - - - - - 0x0183E2 06:83D2: 85 3A     STA ram_003A
bra_83D4:
C - - - - - 0x0183E4 06:83D4: 18        CLC
C - - - - - 0x0183E5 06:83D5: 60        RTS



loc_83D6:
C D 0 - - - 0x0183E6 06:83D6: B9 F0 03  LDA ram_03F0_obj,Y
C - - - - - 0x0183E9 06:83D9: 38        SEC
C - - - - - 0x0183EA 06:83DA: E9 01     SBC #$01
C - - - - - 0x0183EC 06:83DC: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x0183EF 06:83DF: F0 22     BEQ bra_8403
C - - - - - 0x0183F1 06:83E1: A9 7A     LDA #$7A
C - - - - - 0x0183F3 06:83E3: 99 30 04  STA ram_0430_obj,Y
C - - - - - 0x0183F6 06:83E6: A9 00     LDA #$00
C - - - - - 0x0183F8 06:83E8: 99 18 04  STA ram_animation_cnt,Y
C - - - - - 0x0183FB 06:83EB: 99 48 04  STA ram_0448,Y
C - - - - - 0x0183FE 06:83EE: A9 3C     LDA #$3C
C - - - - - 0x018400 06:83F0: 99 80 04  STA ram_0480_obj,Y
C - - - - - 0x018403 06:83F3: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x018406 06:83F6: 29 BF     AND #$BF
C - - - - - 0x018408 06:83F8: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01840B 06:83FB: A9 1D     LDA #con_sfx_get_hit
C - - - - - 0x01840D 06:83FD: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018410 06:8400: 4C 5F 83  JMP loc_835F
bra_8403:
C - - - - - 0x018413 06:8403: A9 3E     LDA #con_obj_id_boss_ursula_small_dead
C - - - - - 0x018415 06:8405: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018418 06:8408: A9 00     LDA #$00
C - - - - - 0x01841A 06:840A: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01841D 06:840D: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x018420 06:8410: 99 70 04  STA ram_obj_timer,Y
C - - - - - 0x018423 06:8413: A9 1D     LDA #con_sfx_get_hit
C - - - - - 0x018425 06:8415: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018428 06:8418: 4C 5F 83  JMP loc_835F



loc_841B:
C D 0 - - - 0x01842B 06:841B: B9 F0 03  LDA ram_03F0_obj,Y
C - - - - - 0x01842E 06:841E: 38        SEC
C - - - - - 0x01842F 06:841F: E9 01     SBC #$01
C - - - - - 0x018431 06:8421: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x018434 06:8424: F0 14     BEQ bra_843A
C - - - - - 0x018436 06:8426: A9 3C     LDA #$3C
C - - - - - 0x018438 06:8428: 85 7F     STA ram_007F
C - - - - - 0x01843A 06:842A: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x01843D 06:842D: 29 BF     AND #$BF
C - - - - - 0x01843F 06:842F: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018442 06:8432: A9 1D     LDA #con_sfx_get_hit
C - - - - - 0x018444 06:8434: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018447 06:8437: 4C 5F 83  JMP loc_835F
bra_843A:
; triggers when you beat final boss
C - - - - - 0x01844A 06:843A: A9 01     LDA #$01    ; on
C - - - - - 0x01844C 06:843C: 85 BB     STA ram_no_damage_cheat
C - - - - - 0x01844E 06:843E: A9 F2     LDA #con_sound_ctrl_F2
C - - - - - 0x018450 06:8440: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018453 06:8443: A9 1F     LDA #con_sfx_1F
C - - - - - 0x018455 06:8445: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018458 06:8448: A9 59     LDA #con_obj_id_boss_ursula_big_dead
C - - - - - 0x01845A 06:844A: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01845D 06:844D: A9 00     LDA #$00
C - - - - - 0x01845F 06:844F: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018462 06:8452: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x018465 06:8455: 99 70 04  STA ram_obj_timer,Y
C - - - - - 0x018468 06:8458: A9 40     LDA #$40
C - - - - - 0x01846A 06:845A: 99 80 04  STA ram_0480_obj,Y
C - - - - - 0x01846D 06:845D: 4C 5F 83  JMP loc_835F



tbl_8460:
- - - - - - 0x018470 06:8460: 00        .byte $00   ; 00
- - - - - - 0x018471 06:8461: 00        .byte $00   ; 01
- - - - - - 0x018472 06:8462: 00        .byte $00   ; 02
- D 0 - - - 0x018473 06:8463: 7B        .byte $7B   ; 03
- - - - - - 0x018474 06:8464: 00        .byte $00   ; 04
- D 0 - - - 0x018475 06:8465: 7D        .byte $7D   ; 05
- - - - - - 0x018476 06:8466: 00        .byte $00   ; 06
- - - - - - 0x018477 06:8467: 00        .byte $00   ; 07
- D 0 - - - 0x018478 06:8468: 00        .byte $00   ; 08
- - - - - - 0x018479 06:8469: 00        .byte $00   ; 09
- D 0 - - - 0x01847A 06:846A: 82        .byte $82   ; 0A
- - - - - - 0x01847B 06:846B: 00        .byte $00   ; 0B
- D 0 - - - 0x01847C 06:846C: 00        .byte $00   ; 0C
- D 0 - - - 0x01847D 06:846D: 00        .byte $00   ; 0D
- D 0 - - - 0x01847E 06:846E: 7B        .byte $7B   ; 0E
- - - - - - 0x01847F 06:846F: 00        .byte $00   ; 0F
- D 0 - - - 0x018480 06:8470: 00        .byte $00   ; 10
- - - - - - 0x018481 06:8471: 00        .byte $00   ; 11
- D 0 - - - 0x018482 06:8472: 7B        .byte $7B   ; 12
- D 0 - - - 0x018483 06:8473: 00        .byte $00   ; 13
- D 0 - - - 0x018484 06:8474: 00        .byte $00   ; 14
- D 0 - - - 0x018485 06:8475: 7C        .byte $7C   ; 15
- D 0 - - - 0x018486 06:8476: 7E        .byte $7E   ; 16
- - - - - - 0x018487 06:8477: 7E        .byte $7E   ; 17
- - - - - - 0x018488 06:8478: 7E        .byte $7E   ; 18
- - - - - - 0x018489 06:8479: 7E        .byte $7E   ; 19
- - - - - - 0x01848A 06:847A: 7E        .byte $7E   ; 1A
- - - - - - 0x01848B 06:847B: 7E        .byte $7E   ; 1B
- D 0 - - - 0x01848C 06:847C: 7F        .byte $7F   ; 1C
- D 0 - - - 0x01848D 06:847D: 7E        .byte $7E   ; 1D
- D 0 - - - 0x01848E 06:847E: 80        .byte $80   ; 1E
- D 0 - - - 0x01848F 06:847F: 7E        .byte $7E   ; 1F
- D 0 - - - 0x018490 06:8480: 81        .byte $81   ; 20
- - - - - - 0x018491 06:8481: 00        .byte $00   ; 21
- - - - - - 0x018492 06:8482: 00        .byte $00   ; 22
- D 0 - - - 0x018493 06:8483: 00        .byte $00   ; 23
- D 0 - - - 0x018494 06:8484: 7B        .byte $7B   ; 24
- D 0 - - - 0x018495 06:8485: 00        .byte $00   ; 25
- - - - - - 0x018496 06:8486: 00        .byte $00   ; 26
- - - - - - 0x018497 06:8487: 00        .byte $00   ; 27
- - - - - - 0x018498 06:8488: 00        .byte $00   ; 28
- - - - - - 0x018499 06:8489: 00        .byte $00   ; 29
- - - - - - 0x01849A 06:848A: 00        .byte $00   ; 2A
- - - - - - 0x01849B 06:848B: 00        .byte $00   ; 2B
- D 0 - - - 0x01849C 06:848C: 00        .byte $00   ; 2C
- D 0 - - - 0x01849D 06:848D: 00        .byte $00   ; 2D
- D 0 - - - 0x01849E 06:848E: 00        .byte $00   ; 2E
- D 0 - - - 0x01849F 06:848F: 7B        .byte $7B   ; 2F
- - - - - - 0x0184A0 06:8490: 00        .byte $00   ; 30
- - - - - - 0x0184A1 06:8491: 00        .byte $00   ; 31
- - - - - - 0x0184A2 06:8492: 00        .byte $00   ; 32
- - - - - - 0x0184A3 06:8493: 00        .byte $00   ; 33
- - - - - - 0x0184A4 06:8494: 00        .byte $00   ; 34
- - - - - - 0x0184A5 06:8495: 00        .byte $00   ; 35
- - - - - - 0x0184A6 06:8496: 00        .byte $00   ; 36
- - - - - - 0x0184A7 06:8497: 00        .byte $00   ; 37
- - - - - - 0x0184A8 06:8498: 00        .byte $00   ; 38
- - - - - - 0x0184A9 06:8499: 00        .byte $00   ; 39
- - - - - - 0x0184AA 06:849A: 00        .byte $00   ; 3A
- - - - - - 0x0184AB 06:849B: 00        .byte $00   ; 3B
- - - - - - 0x0184AC 06:849C: 00        .byte $00   ; 3C
- - - - - - 0x0184AD 06:849D: 00        .byte $00   ; 3D
- - - - - - 0x0184AE 06:849E: 00        .byte $00   ; 3E
- - - - - - 0x0184AF 06:849F: 00        .byte $00   ; 3F
- - - - - - 0x0184B0 06:84A0: 00        .byte $00   ; 40
- - - - - - 0x0184B1 06:84A1: 00        .byte $00   ; 41
- - - - - - 0x0184B2 06:84A2: 00        .byte $00   ; 42
- - - - - - 0x0184B3 06:84A3: 00        .byte $00   ; 43
- - - - - - 0x0184B4 06:84A4: 00        .byte $00   ; 44
- D 0 - - - 0x0184B5 06:84A5: 00        .byte $00   ; 45
- - - - - - 0x0184B6 06:84A6: 00        .byte $00   ; 46
- - - - - - 0x0184B7 06:84A7: 00        .byte $00   ; 47
- - - - - - 0x0184B8 06:84A8: 00        .byte $00   ; 48
- - - - - - 0x0184B9 06:84A9: 00        .byte $00   ; 49
- - - - - - 0x0184BA 06:84AA: 00        .byte $00   ; 4A
- - - - - - 0x0184BB 06:84AB: 7E        .byte $7E   ; 4B
- - - - - - 0x0184BC 06:84AC: 00        .byte $00   ; 4C
- - - - - - 0x0184BD 06:84AD: 00        .byte $00   ; 4D
- - - - - - 0x0184BE 06:84AE: 00        .byte $00   ; 4E
- - - - - - 0x0184BF 06:84AF: 00        .byte $00   ; 4F
- - - - - - 0x0184C0 06:84B0: 00        .byte $00   ; 50
- - - - - - 0x0184C1 06:84B1: 00        .byte $00   ; 51
- - - - - - 0x0184C2 06:84B2: 00        .byte $00   ; 52
- - - - - - 0x0184C3 06:84B3: 00        .byte $00   ; 53
- - - - - - 0x0184C4 06:84B4: 00        .byte $00   ; 54
- - - - - - 0x0184C5 06:84B5: 00        .byte $00   ; 55
- - - - - - 0x0184C6 06:84B6: 00        .byte $00   ; 56
- - - - - - 0x0184C7 06:84B7: 00        .byte $00   ; 57
- D 0 - - - 0x0184C8 06:84B8: 7B        .byte $7B   ; 58
- - - - - - 0x0184C9 06:84B9: 00        .byte $00   ; 59
- - - - - - 0x0184CA 06:84BA: 00        .byte $00   ; 5A
- D 0 - - - 0x0184CB 06:84BB: 00        .byte $00   ; 5B
- - - - - - 0x0184CC 06:84BC: 00        .byte $00   ; 5C
- - - - - - 0x0184CD 06:84BD: 00        .byte $00   ; 5D
- - - - - - 0x0184CE 06:84BE: 00        .byte $00   ; 5E
- - - - - - 0x0184CF 06:84BF: 00        .byte $00   ; 5F



tbl_84C0:
- D 0 - - - 0x0184D0 06:84C0: 00        .byte $00   ; 00
- - - - - - 0x0184D1 06:84C1: 00        .byte $00   ; 01
- D 0 - - - 0x0184D2 06:84C2: 00        .byte $00   ; 02
- D 0 - - - 0x0184D3 06:84C3: 60        .byte $60   ; 03
- - - - - - 0x0184D4 06:84C4: 00        .byte $00   ; 04
- D 0 - - - 0x0184D5 06:84C5: 66        .byte $66   ; 05
- D 0 - - - 0x0184D6 06:84C6: 00        .byte $00   ; 06
- D 0 - - - 0x0184D7 06:84C7: 00        .byte $00   ; 07
- D 0 - - - 0x0184D8 06:84C8: 6A        .byte $6A   ; 08
- - - - - - 0x0184D9 06:84C9: 00        .byte $00   ; 09
- D 0 - - - 0x0184DA 06:84CA: 63        .byte $63   ; 0A
- D 0 - - - 0x0184DB 06:84CB: 00        .byte $00   ; 0B
- D 0 - - - 0x0184DC 06:84CC: 5C        .byte $5C   ; 0C
- D 0 - - - 0x0184DD 06:84CD: 5C        .byte $5C   ; 0D
- D 0 - - - 0x0184DE 06:84CE: 60        .byte $60   ; 0E
- D 0 - - - 0x0184DF 06:84CF: 00        .byte $00   ; 0F
- D 0 - - - 0x0184E0 06:84D0: 61        .byte $61   ; 10
- - - - - - 0x0184E1 06:84D1: 61        .byte $61   ; 11
- D 0 - - - 0x0184E2 06:84D2: 60        .byte $60   ; 12
- D 0 - - - 0x0184E3 06:84D3: 61        .byte $61   ; 13
- D 0 - - - 0x0184E4 06:84D4: 67        .byte $67   ; 14
- D 0 - - - 0x0184E5 06:84D5: 62        .byte $62   ; 15
- D 0 - - - 0x0184E6 06:84D6: 68        .byte $68   ; 16
- - - - - - 0x0184E7 06:84D7: 68        .byte $68   ; 17
- - - - - - 0x0184E8 06:84D8: 68        .byte $68   ; 18
- - - - - - 0x0184E9 06:84D9: 68        .byte $68   ; 19
- - - - - - 0x0184EA 06:84DA: 68        .byte $68   ; 1A
- - - - - - 0x0184EB 06:84DB: 68        .byte $68   ; 1B
- D 0 - - - 0x0184EC 06:84DC: 69        .byte $69   ; 1C
- D 0 - - - 0x0184ED 06:84DD: 68        .byte $68   ; 1D
- D 0 - - - 0x0184EE 06:84DE: 6B        .byte $6B   ; 1E
- D 0 - - - 0x0184EF 06:84DF: 68        .byte $68   ; 1F
- D 0 - - - 0x0184F0 06:84E0: 65        .byte $65   ; 20
- D 0 - - - 0x0184F1 06:84E1: 00        .byte $00   ; 21
- D 0 - - - 0x0184F2 06:84E2: 67        .byte $67   ; 22
- D 0 - - - 0x0184F3 06:84E3: 67        .byte $67   ; 23
- D 0 - - - 0x0184F4 06:84E4: 60        .byte $60   ; 24
- D 0 - - - 0x0184F5 06:84E5: 6D        .byte $6D   ; 25
- - - - - - 0x0184F6 06:84E6: 00        .byte $00   ; 26
- - - - - - 0x0184F7 06:84E7: 00        .byte $00   ; 27
- - - - - - 0x0184F8 06:84E8: 00        .byte $00   ; 28
- - - - - - 0x0184F9 06:84E9: 00        .byte $00   ; 29
- D 0 - - - 0x0184FA 06:84EA: 57        .byte $57   ; 2A
- D 0 - - - 0x0184FB 06:84EB: 00        .byte $00   ; 2B
- D 0 - - - 0x0184FC 06:84EC: 5B        .byte $5B   ; 2C
- D 0 - - - 0x0184FD 06:84ED: 5B        .byte $5B   ; 2D
- D 0 - - - 0x0184FE 06:84EE: 55        .byte $55   ; 2E
- D 0 - - - 0x0184FF 06:84EF: 60        .byte $60   ; 2F
- - - - - - 0x018500 06:84F0: 00        .byte $00   ; 30
- D 0 - - - 0x018501 06:84F1: 00        .byte $00   ; 31
- D 0 - - - 0x018502 06:84F2: 00        .byte $00   ; 32
- D 0 - - - 0x018503 06:84F3: 00        .byte $00   ; 33
- D 0 - - - 0x018504 06:84F4: 00        .byte $00   ; 34
- D 0 - - - 0x018505 06:84F5: 00        .byte $00   ; 35
- - - - - - 0x018506 06:84F6: 00        .byte $00   ; 36
- D 0 - - - 0x018507 06:84F7: 00        .byte $00   ; 37
- - - - - - 0x018508 06:84F8: 00        .byte $00   ; 38
- - - - - - 0x018509 06:84F9: 00        .byte $00   ; 39
- - - - - - 0x01850A 06:84FA: 00        .byte $00   ; 3A
- - - - - - 0x01850B 06:84FB: 00        .byte $00   ; 3B
- - - - - - 0x01850C 06:84FC: 00        .byte $00   ; 3C
- - - - - - 0x01850D 06:84FD: 00        .byte $00   ; 3D
- - - - - - 0x01850E 06:84FE: 00        .byte $00   ; 3E
- - - - - - 0x01850F 06:84FF: 00        .byte $00   ; 3F
- - - - - - 0x018510 06:8500: 00        .byte $00   ; 40
- D 0 - - - 0x018511 06:8501: 00        .byte $00   ; 41
- D 0 - - - 0x018512 06:8502: 00        .byte $00   ; 42
- - - - - - 0x018513 06:8503: 00        .byte $00   ; 43
- D 0 - - - 0x018514 06:8504: 00        .byte $00   ; 44
- D 0 - - - 0x018515 06:8505: 6C        .byte $6C   ; 45
- D 0 - - - 0x018516 06:8506: 00        .byte $00   ; 46
- D 0 - - - 0x018517 06:8507: 7A        .byte $7A   ; 47
- D 0 - - - 0x018518 06:8508: 00        .byte $00   ; 48
- D 0 - - - 0x018519 06:8509: 00        .byte $00   ; 49
- - - - - - 0x01851A 06:850A: 00        .byte $00   ; 4A
- D 0 - - - 0x01851B 06:850B: 68        .byte $68   ; 4B
- D 0 - - - 0x01851C 06:850C: 00        .byte $00   ; 4C
- - - - - - 0x01851D 06:850D: 00        .byte $00   ; 4D
- - - - - - 0x01851E 06:850E: 00        .byte $00   ; 4E
- - - - - - 0x01851F 06:850F: 00        .byte $00   ; 4F
- - - - - - 0x018520 06:8510: 00        .byte $00   ; 50
- - - - - - 0x018521 06:8511: 00        .byte $00   ; 51
- - - - - - 0x018522 06:8512: 00        .byte $00   ; 52
- - - - - - 0x018523 06:8513: 00        .byte $00   ; 53
- - - - - - 0x018524 06:8514: 00        .byte $00   ; 54
- - - - - - 0x018525 06:8515: 00        .byte $00   ; 55
- - - - - - 0x018526 06:8516: 00        .byte $00   ; 56
- D 0 - - - 0x018527 06:8517: 81        .byte $81   ; 57
- D 0 - - - 0x018528 06:8518: 60        .byte $60   ; 58
- - - - - - 0x018529 06:8519: 00        .byte $00   ; 59
- - - - - - 0x01852A 06:851A: 00        .byte $00   ; 5A
- D 0 - - - 0x01852B 06:851B: 61        .byte $61   ; 5B
- - - - - - 0x01852C 06:851C: 00        .byte $00   ; 5C
- - - - - - 0x01852D 06:851D: 00        .byte $00   ; 5D
- - - - - - 0x01852E 06:851E: 00        .byte $00   ; 5E
- - - - - - 0x01852F 06:851F: 00        .byte $00   ; 5F



tbl_8520_lo:
; !!! внимательно проверить чтобы где индекс объекта считывается в Y,
; чтоб были правильно подправлены addr,Y как в случае с 38 39, а также 17-1B
; see screenshots inside misc folder
- D 0 - - - 0x018530 06:8520: E0        .byte < ofs_005_85E0_00_RTS   ; 
- D 0 - - - 0x018531 06:8521: E1        .byte < ofs_005_85E1_01_projectile_player   ; 
- D 0 - - - 0x018532 06:8522: 8F        .byte < ofs_005_888F_02_enemy_inside_bubble   ; 
- D 0 - - - 0x018533 06:8523: 14        .byte < ofs_005_8A14_03_piranha_stupid   ; 
- D 0 - - - 0x018534 06:8524: 7A        .byte < ofs_005_867A_04_sand_splashes_player   ; 
- D 0 - - - 0x018535 06:8525: 65        .byte < ofs_005_8A65_05_seahorse   ; 
- D 0 - - - 0x018536 06:8526: 9B        .byte < ofs_005_8A9B_06_piranha_ghost    ; 
- D 0 - - - 0x018537 06:8527: DC        .byte < ofs_005_8BDC_07_ghost_sheet   ; 
- D 0 - - - 0x018538 06:8528: E2        .byte < ofs_005_8BE2_08_shooting_fish   ; 
- D 0 - - - 0x018539 06:8529: A3        .byte < ofs_005_8CA3_09_projectile_shooting_fish   ; 
- D 0 - - - 0x01853A 06:852A: BA        .byte < ofs_005_8CBA_0A_octopus   ; 
- D 0 - - - 0x01853B 06:852B: C5        .byte < ofs_005_8DC5_0B_projectile_octopus   ; 
- D 0 - - - 0x01853C 06:852C: A7        .byte < ofs_005_9BA7_0C_boss_shark_1   ; 
- D 0 - - - 0x01853D 06:852D: C4        .byte < ofs_005_9CC4_0D_boss_shark_2   ; 
- D 0 - - - 0x01853E 06:852E: 37        .byte < ofs_005_9D37_0E_piranha_minion_shark   ; 
- D 0 - - - 0x01853F 06:852F: B3        .byte < ofs_005_A3B3_0F_cannon   ; 
- D 0 - - - 0x018540 06:8530: 89        .byte < ofs_005_8F89_10_sea_urchin_1   ; 
- D 0 - - - 0x018541 06:8531: C7        .byte < ofs_005_8FC7_11_spawner_sea_urchin   ; 
- D 0 - - - 0x018542 06:8532: 46        .byte < ofs_005_9046_12_piranha_smart   ; 
- D 0 - - - 0x018543 06:8533: F0        .byte < ofs_005_A5F0_13_sea_urchin_2   ; 
- D 0 - - - 0x018544 06:8534: F0        .byte < ofs_005_A5F0_14_starfish_3   ; 
- D 0 - - - 0x018545 06:8535: 8F        .byte < ofs_005_908F_15_crab_naked   ; 
- D 0 - - - 0x018546 06:8536: D9        .byte < ofs_005_91D9_16_mini_fish_1   ; 
- - - - - - 0x018547 06:8537: 3F        .byte < ofs_005_913F_17   ; unused but exists 0x013C1B
- - - - - - 0x018548 06:8538: 3F        .byte < ofs_005_913F_18   ; unused
- - - - - - 0x018549 06:8539: 3F        .byte < ofs_005_913F_19   ; unused
- - - - - - 0x01854A 06:853A: 3F        .byte < ofs_005_913F_1A   ; unused
- - - - - - 0x01854B 06:853B: 3F        .byte < ofs_005_913F_1B   ; unused
- D 0 - - - 0x01854C 06:853C: A9        .byte < ofs_005_92A9_1C_sleeping_fish   ; 
- D 0 - - - 0x01854D 06:853D: 29        .byte < ofs_005_9229_1D_mini_fish_2   ; 
- D 0 - - - 0x01854E 06:853E: 67        .byte < ofs_005_9367_1E_mother_fish   ; 
- D 0 - - - 0x01854F 06:853F: 74        .byte < ofs_005_9274_1F_mini_fish_3   ; 
- D 0 - - - 0x018550 06:8540: 0C        .byte < ofs_005_940C_20_shrimp   ; 
- D 0 - - - 0x018551 06:8541: 60        .byte < ofs_005_9460_21_RTS_green_snake   ; 
- D 0 - - - 0x018552 06:8542: 61        .byte < ofs_005_9461_22_spawner_starfish   ; 
- D 0 - - - 0x018553 06:8543: 4F        .byte < ofs_005_954F_23_starfish_1   ; 
- D 0 - - - 0x018554 06:8544: 04        .byte < ofs_005_9604_24_ice_cube_fish   ; 
- D 0 - - - 0x018555 06:8545: 8F        .byte < ofs_005_908F_25_crab_helmet   ; 
- D 0 - - - 0x018556 06:8546: 9D        .byte < ofs_005_869D_26_weapon_power_00   ; 
- D 0 - - - 0x018557 06:8547: C1        .byte < ofs_005_86C1_27_weapon_power_01   ; 
- D 0 - - - 0x018558 06:8548: F1        .byte < ofs_005_86F1_28_weapon_power_02   ; 
- D 0 - - - 0x018559 06:8549: 15        .byte < ofs_005_8715_29_weapon_power_03   ; 
- D 0 - - - 0x01855A 06:854A: 3A        .byte < ofs_005_9D3A_2A_boss_walrus    ; 
- D 0 - - - 0x01855B 06:854B: C7        .byte < ofs_005_9EC7_2B_weapon_walrus   ; 
- D 0 - - - 0x01855C 06:854C: 60        .byte < ofs_005_9F60_2C_boss_eel_1   ; 
- D 0 - - - 0x01855D 06:854D: 60        .byte < ofs_005_9F60_2D_boss_eel_2   ; 
- D 0 - - - 0x01855E 06:854E: CF        .byte < ofs_005_A1CF_2E_boss_seahorse   ; 
- D 0 - - - 0x01855F 06:854F: 24        .byte < ofs_005_A324_2F_piranha_cannon   ; 
- D 0 - - - 0x018560 06:8550: 6D        .byte < ofs_005_986D_30_shell   ; 
- D 0 - - - 0x018561 06:8551: D5        .byte < ofs_005_97D5_31_rock_small   ; 
- D 0 - - - 0x018562 06:8552: D5        .byte < ofs_005_97D5_32_rock_big   ; 
- D 0 - - - 0x018563 06:8553: 5D        .byte < ofs_005_975D_33_barrel   ; 
- D 0 - - - 0x018564 06:8554: 36        .byte < ofs_005_9A36_34_heart_big   ; 
- D 0 - - - 0x018565 06:8555: 36        .byte < ofs_005_9A36_35_heart_small   ; 
- D 0 - - - 0x018566 06:8556: 11        .byte < ofs_005_9A11_36_extra_life   ; 
- D 0 - - - 0x018567 06:8557: EE        .byte < ofs_005_87EE_37_jar   ; 
- D 0 - - - 0x018568 06:8558: 8B        .byte < ofs_005_998B_38_chest_pearl_purple   ; 
- D 0 - - - 0x018569 06:8559: 8B        .byte < ofs_005_998B_39_chest_pearl_green   ; 
- D 0 - - - 0x01856A 06:855A: 69        .byte < ofs_005_9A69_3A_item_fork   ; 
- D 0 - - - 0x01856B 06:855B: 69        .byte < ofs_005_9A69_3B_item_pipe   ; 
- D 0 - - - 0x01856C 06:855C: CB        .byte < ofs_005_8DCB_3C_spawner_volcano_bottom   ; 
- D 0 - - - 0x01856D 06:855D: 8B        .byte < ofs_005_878B_3D_dead_boss   ; 
- D 0 - - - 0x01856E 06:855E: 3D        .byte < ofs_005_A63D_3E_boss_ursula_small_dead   ; 
- - - - - - 0x01856F 06:855F: 8E        .byte < ofs_005_888E_3F_RTS   ; unused but exists 0x013C37
- D 0 - - - 0x018570 06:8560: 8E        .byte < ofs_005_888E_40_RTS_chest_empty   ; 
- D 0 - - - 0x018571 06:8561: E3        .byte < ofs_005_8EE3_41_spawner_mini_fish   ; 
- D 0 - - - 0x018572 06:8562: 7D        .byte < ofs_005_877D_42_dead_enemy   ; 
- D 0 - - - 0x018573 06:8563: CB        .byte < ofs_005_8DCB_43_spawner_volcano_top   ; 
- D 0 - - - 0x018574 06:8564: 8C        .byte < ofs_005_8E8C_44_projectile_volcano   ; 
- D 0 - - - 0x018575 06:8565: 54        .byte < ofs_005_9654_45_sand_fish   ; 
- D 0 - - - 0x018576 06:8566: E1        .byte < ofs_005_96E1_46_sand_splashes_fish   ; 
- D 0 - - - 0x018577 06:8567: D9        .byte < ofs_005_A3D9_47_boss_ursula_small_top   ; 
- D 0 - - - 0x018578 06:8568: 4F        .byte < ofs_005_A54F_48_projectile_ursula_fake   ; 
- D 0 - - - 0x018579 06:8569: F0        .byte < ofs_005_A5F0_49_projectile_ursula_real   ; 
- D 0 - - - 0x01857A 06:856A: F6        .byte < ofs_005_A5F6_4A_boss_ursula_small_bottom   ; 
- D 0 - - - 0x01857B 06:856B: 6E        .byte < ofs_005_8F6E_4B_mini_fish_4   ; 
- D 0 - - - 0x01857C 06:856C: 6B        .byte < ofs_005_876B_4C_bubble_burst   ; 
- D 0 - - - 0x01857D 06:856D: A1        .byte < ofs_005_9AA1_4D_secret_heart_sand   ; 
- D 0 - - - 0x01857E 06:856E: A1        .byte < ofs_005_9AA1_4E_secret_heart_left   ; 
- D 0 - - - 0x01857F 06:856F: A1        .byte < ofs_005_9AA1_4F_secret_heart_right   ; 
- D 0 - - - 0x018580 06:8570: A1        .byte < ofs_005_9AA1_50_secret_heart_down   ; 
- D 0 - - - 0x018581 06:8571: A1        .byte < ofs_005_9AA1_51_secret_heart_up   ; 
- D 0 - - - 0x018582 06:8572: 0A        .byte < ofs_005_9B0A_52_secret_item_sand   ; 
- D 0 - - - 0x018583 06:8573: 0A        .byte < ofs_005_9B0A_53_secret_item_left   ; 
- - - - - - 0x018584 06:8574: 0A        .byte < ofs_005_9B0A_54_secret_item_right   ;  unused but working
- D 0 - - - 0x018585 06:8575: 0A        .byte < ofs_005_9B0A_55_secret_item_down   ; 
- D 0 - - - 0x018586 06:8576: 0A        .byte < ofs_005_9B0A_56_secret_item_up   ; 
- D 0 - - - 0x018587 06:8577: 92        .byte < ofs_005_A692_57_boss_ursula_big_alive   ; 
- D 0 - - - 0x018588 06:8578: 3E        .byte < ofs_005_A83E_58_piranha_minion_ursula   ; 
- D 0 - - - 0x018589 06:8579: 79        .byte < ofs_005_A879_59_boss_ursula_big_dead   ; 
- D 0 - - - 0x01858A 06:857A: D8        .byte < ofs_005_A0D8_5A_spawner_crabs   ; 
- D 0 - - - 0x01858B 06:857B: 24        .byte < ofs_005_A324_5B_starfish_2   ; 
- D 0 - - - 0x01858C 06:857C: 21        .byte < ofs_005_8821_5C_half_trapped_enemy   ; 
- D 0 - - - 0x01858D 06:857D: 72        .byte < ofs_005_8872_5D_swimming_bubbles   ; 
- D 0 - - - 0x01858E 06:857E: 7F        .byte < ofs_005_887F_5E_teleport   ; 
- - - - - - 0x01858F 06:857F: 8E        .byte < ofs_005_888E_5F_RTS   ; unused



tbl_8580_hi:
; see screenshots inside misc folder
- D 0 - - - 0x018590 06:8580: 85        .byte > ofs_005_85E0_00_RTS   ; 
- D 0 - - - 0x018591 06:8581: 85        .byte > ofs_005_85E1_01_projectile_player   ; 
- D 0 - - - 0x018592 06:8582: 88        .byte > ofs_005_888F_02_enemy_inside_bubble   ; 
- D 0 - - - 0x018593 06:8583: 8A        .byte > ofs_005_8A14_03_piranha_stupid   ; 
- D 0 - - - 0x018594 06:8584: 86        .byte > ofs_005_867A_04_sand_splashes_player   ; 
- D 0 - - - 0x018595 06:8585: 8A        .byte > ofs_005_8A65_05_seahorse   ; 
- D 0 - - - 0x018596 06:8586: 8A        .byte > ofs_005_8A9B_06_piranha_ghost    ; 
- D 0 - - - 0x018597 06:8587: 8B        .byte > ofs_005_8BDC_07_ghost_sheet   ; 
- D 0 - - - 0x018598 06:8588: 8B        .byte > ofs_005_8BE2_08_shooting_fish   ; 
- D 0 - - - 0x018599 06:8589: 8C        .byte > ofs_005_8CA3_09_projectile_shooting_fish   ; 
- D 0 - - - 0x01859A 06:858A: 8C        .byte > ofs_005_8CBA_0A_octopus   ; 
- D 0 - - - 0x01859B 06:858B: 8D        .byte > ofs_005_8DC5_0B_projectile_octopus   ; 
- D 0 - - - 0x01859C 06:858C: 9B        .byte > ofs_005_9BA7_0C_boss_shark_1   ; 
- D 0 - - - 0x01859D 06:858D: 9C        .byte > ofs_005_9CC4_0D_boss_shark_2   ; 
- D 0 - - - 0x01859E 06:858E: 9D        .byte > ofs_005_9D37_0E_piranha_minion_shark   ; 
- D 0 - - - 0x01859F 06:858F: A3        .byte > ofs_005_A3B3_0F_cannon   ; 
- D 0 - - - 0x0185A0 06:8590: 8F        .byte > ofs_005_8F89_10_sea_urchin_1   ; 
- D 0 - - - 0x0185A1 06:8591: 8F        .byte > ofs_005_8FC7_11_spawner_sea_urchin   ; 
- D 0 - - - 0x0185A2 06:8592: 90        .byte > ofs_005_9046_12_piranha_smart   ; 
- D 0 - - - 0x0185A3 06:8593: A5        .byte > ofs_005_A5F0_13_sea_urchin_2   ; 
- D 0 - - - 0x0185A4 06:8594: A5        .byte > ofs_005_A5F0_14_starfish_3   ; 
- D 0 - - - 0x0185A5 06:8595: 90        .byte > ofs_005_908F_15_crab_naked   ; 
- D 0 - - - 0x0185A6 06:8596: 91        .byte > ofs_005_91D9_16_mini_fish_1   ; 
- - - - - - 0x0185A7 06:8597: 91        .byte > ofs_005_913F_17   ; unused but exists 0x013C1B
- - - - - - 0x0185A8 06:8598: 91        .byte > ofs_005_913F_18   ; unused
- - - - - - 0x0185A9 06:8599: 91        .byte > ofs_005_913F_19   ; unused
- - - - - - 0x0185AA 06:859A: 91        .byte > ofs_005_913F_1A   ; unused
- - - - - - 0x0185AB 06:859B: 91        .byte > ofs_005_913F_1B   ; unused
- D 0 - - - 0x0185AC 06:859C: 92        .byte > ofs_005_92A9_1C_sleeping_fish   ; 
- D 0 - - - 0x0185AD 06:859D: 92        .byte > ofs_005_9229_1D_mini_fish_2   ; 
- D 0 - - - 0x0185AE 06:859E: 93        .byte > ofs_005_9367_1E_mother_fish   ; 
- D 0 - - - 0x0185AF 06:859F: 92        .byte > ofs_005_9274_1F_mini_fish_3   ; 
- D 0 - - - 0x0185B0 06:85A0: 94        .byte > ofs_005_940C_20_shrimp   ; 
- D 0 - - - 0x0185B1 06:85A1: 94        .byte > ofs_005_9460_21_RTS_green_snake   ; 
- D 0 - - - 0x0185B2 06:85A2: 94        .byte > ofs_005_9461_22_spawner_starfish   ; 
- D 0 - - - 0x0185B3 06:85A3: 95        .byte > ofs_005_954F_23_starfish_1   ; 
- D 0 - - - 0x0185B4 06:85A4: 96        .byte > ofs_005_9604_24_ice_cube_fish   ; 
- D 0 - - - 0x0185B5 06:85A5: 90        .byte > ofs_005_908F_25_crab_helmet   ; 
- D 0 - - - 0x0185B6 06:85A6: 86        .byte > ofs_005_869D_26_weapon_power_00   ; 
- D 0 - - - 0x0185B7 06:85A7: 86        .byte > ofs_005_86C1_27_weapon_power_01   ; 
- D 0 - - - 0x0185B8 06:85A8: 86        .byte > ofs_005_86F1_28_weapon_power_02   ; 
- D 0 - - - 0x0185B9 06:85A9: 87        .byte > ofs_005_8715_29_weapon_power_03   ; 
- D 0 - - - 0x0185BA 06:85AA: 9D        .byte > ofs_005_9D3A_2A_boss_walrus    ; 
- D 0 - - - 0x0185BB 06:85AB: 9E        .byte > ofs_005_9EC7_2B_weapon_walrus   ; 
- D 0 - - - 0x0185BC 06:85AC: 9F        .byte > ofs_005_9F60_2C_boss_eel_1   ; 
- D 0 - - - 0x0185BD 06:85AD: 9F        .byte > ofs_005_9F60_2D_boss_eel_2   ; 
- D 0 - - - 0x0185BE 06:85AE: A1        .byte > ofs_005_A1CF_2E_boss_seahorse   ; 
- D 0 - - - 0x0185BF 06:85AF: A3        .byte > ofs_005_A324_2F_piranha_cannon   ; 
- D 0 - - - 0x0185C0 06:85B0: 98        .byte > ofs_005_986D_30_shell   ; 
- D 0 - - - 0x0185C1 06:85B1: 97        .byte > ofs_005_97D5_31_rock_small   ; 
- D 0 - - - 0x0185C2 06:85B2: 97        .byte > ofs_005_97D5_32_rock_big   ; 
- D 0 - - - 0x0185C3 06:85B3: 97        .byte > ofs_005_975D_33_barrel   ; 
- D 0 - - - 0x0185C4 06:85B4: 9A        .byte > ofs_005_9A36_34_heart_big   ; 
- D 0 - - - 0x0185C5 06:85B5: 9A        .byte > ofs_005_9A36_35_heart_small   ; 
- D 0 - - - 0x0185C6 06:85B6: 9A        .byte > ofs_005_9A11_36_extra_life   ; 
- D 0 - - - 0x0185C7 06:85B7: 87        .byte > ofs_005_87EE_37_jar   ; 
- D 0 - - - 0x0185C8 06:85B8: 99        .byte > ofs_005_998B_38_chest_pearl_purple   ; 
- D 0 - - - 0x0185C9 06:85B9: 99        .byte > ofs_005_998B_39_chest_pearl_green   ; 
- D 0 - - - 0x0185CA 06:85BA: 9A        .byte > ofs_005_9A69_3A_item_fork   ; 
- D 0 - - - 0x0185CB 06:85BB: 9A        .byte > ofs_005_9A69_3B_item_pipe   ; 
- D 0 - - - 0x0185CC 06:85BC: 8D        .byte > ofs_005_8DCB_3C_spawner_volcano_bottom   ; 
- D 0 - - - 0x0185CD 06:85BD: 87        .byte > ofs_005_878B_3D_dead_boss   ; 
- D 0 - - - 0x0185CE 06:85BE: A6        .byte > ofs_005_A63D_3E_boss_ursula_small_dead   ; 
- - - - - - 0x0185CF 06:85BF: 88        .byte > ofs_005_888E_3F_RTS   ; unused but exists 0x013C37
- D 0 - - - 0x0185D0 06:85C0: 88        .byte > ofs_005_888E_40_RTS_chest_empty   ; 
- D 0 - - - 0x0185D1 06:85C1: 8E        .byte > ofs_005_8EE3_41_spawner_mini_fish   ; 
- D 0 - - - 0x0185D2 06:85C2: 87        .byte > ofs_005_877D_42_dead_enemy   ; 
- D 0 - - - 0x0185D3 06:85C3: 8D        .byte > ofs_005_8DCB_43_spawner_volcano_top   ; 
- D 0 - - - 0x0185D4 06:85C4: 8E        .byte > ofs_005_8E8C_44_projectile_volcano   ; 
- D 0 - - - 0x0185D5 06:85C5: 96        .byte > ofs_005_9654_45_sand_fish   ; 
- D 0 - - - 0x0185D6 06:85C6: 96        .byte > ofs_005_96E1_46_sand_splashes_fish   ; 
- D 0 - - - 0x0185D7 06:85C7: A3        .byte > ofs_005_A3D9_47_boss_ursula_small_top   ; 
- D 0 - - - 0x0185D8 06:85C8: A5        .byte > ofs_005_A54F_48_projectile_ursula_fake   ; 
- D 0 - - - 0x0185D9 06:85C9: A5        .byte > ofs_005_A5F0_49_projectile_ursula_real   ; 
- D 0 - - - 0x0185DA 06:85CA: A5        .byte > ofs_005_A5F6_4A_boss_ursula_small_bottom   ; 
- D 0 - - - 0x0185DB 06:85CB: 8F        .byte > ofs_005_8F6E_4B_mini_fish_4   ; 
- D 0 - - - 0x0185DC 06:85CC: 87        .byte > ofs_005_876B_4C_bubble_burst   ; 
- D 0 - - - 0x0185DD 06:85CD: 9A        .byte > ofs_005_9AA1_4D_secret_heart_sand   ; 
- D 0 - - - 0x0185DE 06:85CE: 9A        .byte > ofs_005_9AA1_4E_secret_heart_left   ; 
- D 0 - - - 0x0185DF 06:85CF: 9A        .byte > ofs_005_9AA1_4F_secret_heart_right   ; 
- D 0 - - - 0x0185E0 06:85D0: 9A        .byte > ofs_005_9AA1_50_secret_heart_down   ; 
- D 0 - - - 0x0185E1 06:85D1: 9A        .byte > ofs_005_9AA1_51_secret_heart_up   ; 
- D 0 - - - 0x0185E2 06:85D2: 9B        .byte > ofs_005_9B0A_52_secret_item_sand   ; 
- D 0 - - - 0x0185E3 06:85D3: 9B        .byte > ofs_005_9B0A_53_secret_item_left   ; 
- - - - - - 0x0185E4 06:85D4: 9B        .byte > ofs_005_9B0A_54_secret_item_right   ;  unused but working
- D 0 - - - 0x0185E5 06:85D5: 9B        .byte > ofs_005_9B0A_55_secret_item_down   ; 
- D 0 - - - 0x0185E6 06:85D6: 9B        .byte > ofs_005_9B0A_56_secret_item_up   ; 
- D 0 - - - 0x0185E7 06:85D7: A6        .byte > ofs_005_A692_57_boss_ursula_big_alive   ; 
- D 0 - - - 0x0185E8 06:85D8: A8        .byte > ofs_005_A83E_58_piranha_minion_ursula   ; 
- D 0 - - - 0x0185E9 06:85D9: A8        .byte > ofs_005_A879_59_boss_ursula_big_dead   ; 
- D 0 - - - 0x0185EA 06:85DA: A0        .byte > ofs_005_A0D8_5A_spawner_crabs   ; 
- D 0 - - - 0x0185EB 06:85DB: A3        .byte > ofs_005_A324_5B_starfish_2   ; 
- D 0 - - - 0x0185EC 06:85DC: 88        .byte > ofs_005_8821_5C_half_trapped_enemy   ; 
- D 0 - - - 0x0185ED 06:85DD: 88        .byte > ofs_005_8872_5D_swimming_bubbles   ; 
- D 0 - - - 0x0185EE 06:85DE: 88        .byte > ofs_005_887F_5E_teleport   ; 
- - - - - - 0x0185EF 06:85DF: 88        .byte > ofs_005_888E_5F_RTS   ; unused



ofs_005_85E0_00_RTS:
bra_85E0_RTS:
C - - J - - 0x0185F0 06:85E0: 60        RTS



ofs_005_85E1_01_projectile_player:
; enemy in a bubble or a shell
C - - J - - 0x0185F1 06:85E1: 20 C4 81  JSR sub_81C4
C - - - - - 0x0185F4 06:85E4: B0 0A     BCS bra_85F0
C - - - - - 0x0185F6 06:85E6: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0185F9 06:85E9: C9 40     CMP #$40
C - - - - - 0x0185FB 06:85EB: D0 F3     BNE bra_85E0_RTS
C - - - - - 0x0185FD 06:85ED: 4C 47 86  JMP loc_8647
bra_85F0:
C - - - - - 0x018600 06:85F0: 20 35 D5  JSR sub_0x01D545
C - - - - - 0x018603 06:85F3: B0 06     BCS bra_85FB
C - - - - - 0x018605 06:85F5: A9 00     LDA #$00
C - - - - - 0x018607 06:85F7: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01860A 06:85FA: 60        RTS
bra_85FB:
C - - - - - 0x01860B 06:85FB: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01860E 06:85FE: C9 40     CMP #$40
C - - - - - 0x018610 06:8600: F0 1D     BEQ bra_861F
C - - - - - 0x018612 06:8602: A0 08     LDY #$08
C - - - - - 0x018614 06:8604: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x018617 06:8607: B0 0E     BCS bra_8617
C - - - - - 0x018619 06:8609: A0 06     LDY #$06
C - - - - - 0x01861B 06:860B: 20 CC FC  JSR sub_0x01FCDC
C - - - - - 0x01861E 06:860E: A5 10     LDA ram_0010
C - - - - - 0x018620 06:8610: F0 05     BEQ bra_8617
C - - - - - 0x018622 06:8612: B0 03     BCS bra_8617
C - - - - - 0x018624 06:8614: 4C 4E 98  JMP loc_984E
bra_8617:
C - - - - - 0x018627 06:8617: 20 71 83  JSR sub_8371
C - - - - - 0x01862A 06:861A: A9 1B     LDA #con_sfx_enemy_killed
C - - - - - 0x01862C 06:861C: 4C A0 FC  JMP loc_0x01FCB0_play_sfx
bra_861F:
C - - - - - 0x01862F 06:861F: A0 08     LDY #$08
C - - - - - 0x018631 06:8621: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x018634 06:8624: 20 4E 98  JSR sub_984E
C - - - - - 0x018637 06:8627: 90 13     BCC bra_863C
C - - - - - 0x018639 06:8629: A5 BE     LDA ram_00BE
C - - - - - 0x01863B 06:862B: C9 30     CMP #$30
C - - - - - 0x01863D 06:862D: D0 18     BNE bra_8647
C - - - - - 0x01863F 06:862F: A5 1A     LDA ram_001A
C - - - - - 0x018641 06:8631: D0 46     BNE bra_8679_RTS
C - - - - - 0x018643 06:8633: 20 BA E7  JSR sub_0x01E7CA
C - - - - - 0x018646 06:8636: 20 64 FE  JSR sub_0x01FE74
C - - - - - 0x018649 06:8639: 4C 47 86  JMP loc_8647
bra_863C:
C - - - - - 0x01864C 06:863C: A0 06     LDY #$06
C - - - - - 0x01864E 06:863E: 20 CC FC  JSR sub_0x01FCDC
C - - - - - 0x018651 06:8641: A5 10     LDA ram_0010
C - - - - - 0x018653 06:8643: F0 02     BEQ bra_8647
C - - - - - 0x018655 06:8645: 90 32     BCC bra_8679_RTS
bra_8647:
loc_8647:
C D 0 - - - 0x018657 06:8647: BD D0 03  LDA ram_direction,X
C - - - - - 0x01865A 06:864A: 29 08     AND #$08
C - - - - - 0x01865C 06:864C: F0 14     BEQ bra_8662
C - - - - - 0x01865E 06:864E: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018661 06:8651: 38        SEC
C - - - - - 0x018662 06:8652: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x018664 06:8654: B0 02     BCS bra_8658
C - - - - - 0x018666 06:8656: E9 0F     SBC #$0F
bra_8658:
C - - - - - 0x018668 06:8658: C9 04     CMP #$04
C - - - - - 0x01866A 06:865A: B0 06     BCS bra_8662
C - - - - - 0x01866C 06:865C: A9 00     LDA #$00
C - - - - - 0x01866E 06:865E: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x018671 06:8661: 60        RTS
bra_8662:
sub_8662:
C - - - - - 0x018672 06:8662: A9 04     LDA #$04
C - - - - - 0x018674 06:8664: 9D D0 03  STA ram_direction,X
C - - - - - 0x018677 06:8667: A9 00     LDA #$00
C - - - - - 0x018679 06:8669: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01867C 06:866C: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01867F 06:866F: A9 81     LDA #$81
C - - - - - 0x018681 06:8671: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x018684 06:8674: A9 30     LDA #con_obj_id_shell
C - - - - - 0x018686 06:8676: 9D 10 03  STA ram_obj_id,X
bra_8679_RTS:
C - - - - - 0x018689 06:8679: 60        RTS



ofs_005_867A_04_sand_splashes_player:
; caused by player's tail
C - - J - - 0x01868A 06:867A: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01868D 06:867D: F0 09     BEQ bra_8688
C - - - - - 0x01868F 06:867F: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018692 06:8682: A9 00     LDA #$00
C - - - - - 0x018694 06:8684: 9D 48 04  STA ram_0448,X
C - - - - - 0x018697 06:8687: 60        RTS
bra_8688:
C - - - - - 0x018698 06:8688: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01869B 06:868B: 29 04     AND #$04
C - - - - - 0x01869D 06:868D: F0 0D     BEQ bra_869C_RTS
C - - - - - 0x01869F 06:868F: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0186A2 06:8692: 29 FB     AND #$FB
C - - - - - 0x0186A4 06:8694: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0186A7 06:8697: A9 21     LDA #con_sfx_sand
C - - - - - 0x0186A9 06:8699: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
bra_869C_RTS:
C - - - - - 0x0186AC 06:869C: 60        RTS



ofs_005_869D_26_weapon_power_00:
; player weapon power 0 (default)
C - - J - - 0x0186AD 06:869D: A0 0C     LDY #$0C
C - - - - - 0x0186AF 06:869F: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x0186B2 06:86A2: B0 0D     BCS bra_86B1
C - - - - - 0x0186B4 06:86A4: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0186B7 06:86A7: 29 BF     AND #$BF
C - - - - - 0x0186B9 06:86A9: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0186BC 06:86AC: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x0186BF 06:86AF: D0 0F     BNE bra_86C0_RTS
bra_86B1:
C - - - - - 0x0186C1 06:86B1: A9 10     LDA #$10
C - - - - - 0x0186C3 06:86B3: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0186C6 06:86B6: A9 00     LDA #con_obj_id_00
C - - - - - 0x0186C8 06:86B8: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x0186CB 06:86BB: A9 14     LDA #con_sfx_bubble_burst
C - - - - - 0x0186CD 06:86BD: 4C A0 FC  JMP loc_0x01FCB0_play_sfx
bra_86C0_RTS:
C - - - - - 0x0186D0 06:86C0: 60        RTS



ofs_005_86C1_27_weapon_power_01:
; player weapon power 1
C - - J - - 0x0186D1 06:86C1: A0 0C     LDY #$0C
C - - - - - 0x0186D3 06:86C3: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x0186D6 06:86C6: B0 0D     BCS bra_86D5
C - - - - - 0x0186D8 06:86C8: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0186DB 06:86CB: 29 BF     AND #$BF
C - - - - - 0x0186DD 06:86CD: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0186E0 06:86D0: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x0186E3 06:86D3: D0 0F     BNE bra_86E4
bra_86D5:
C - - - - - 0x0186E5 06:86D5: A9 10     LDA #$10
C - - - - - 0x0186E7 06:86D7: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0186EA 06:86DA: A9 00     LDA #con_obj_id_00
C - - - - - 0x0186EC 06:86DC: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x0186EF 06:86DF: A9 14     LDA #con_sfx_bubble_burst
C - - - - - 0x0186F1 06:86E1: 4C A0 FC  JMP loc_0x01FCB0_play_sfx
bra_86E4:
C - - - - - 0x0186F4 06:86E4: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x0186F7 06:86E7: C9 02     CMP #$02
C - - - - - 0x0186F9 06:86E9: D0 05     BNE bra_86F0_RTS
C - - - - - 0x0186FB 06:86EB: A9 00     LDA #$00
C - - - - - 0x0186FD 06:86ED: 9D 48 04  STA ram_0448,X
bra_86F0_RTS:
C - - - - - 0x018700 06:86F0: 60        RTS



ofs_005_86F1_28_weapon_power_02:
; player weapon power 2
C - - J - - 0x018701 06:86F1: A0 0C     LDY #$0C
C - - - - - 0x018703 06:86F3: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x018706 06:86F6: B0 0D     BCS bra_8705
C - - - - - 0x018708 06:86F8: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01870B 06:86FB: 29 BF     AND #$BF
C - - - - - 0x01870D 06:86FD: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x018710 06:8700: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018713 06:8703: D0 0F     BNE bra_8714_RTS
bra_8705:
C - - - - - 0x018715 06:8705: A9 51     LDA #$51
C - - - - - 0x018717 06:8707: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01871A 06:870A: A9 00     LDA #con_obj_id_00
C - - - - - 0x01871C 06:870C: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01871F 06:870F: A9 14     LDA #con_sfx_bubble_burst
C - - - - - 0x018721 06:8711: 4C A0 FC  JMP loc_0x01FCB0_play_sfx
bra_8714_RTS:
C - - - - - 0x018724 06:8714: 60        RTS



ofs_005_8715_29_weapon_power_03:
; player weapon power 3
C - - J - - 0x018725 06:8715: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x018728 06:8718: D0 23     BNE bra_873D
C - - - - - 0x01872A 06:871A: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x01872D 06:871D: FE 80 04  INC ram_0480_obj,X
C - - - - - 0x018730 06:8720: 29 03     AND #$03
C - - - - - 0x018732 06:8722: A8        TAY
C - - - - - 0x018733 06:8723: BD D0 03  LDA ram_direction,X
C - - - - - 0x018736 06:8726: 29 03     AND #$03
C - - - - - 0x018738 06:8728: 19 67 87  ORA tbl_8767,Y
C - - - - - 0x01873B 06:872B: 9D D0 03  STA ram_direction,X
C - - - - - 0x01873E 06:872E: A9 03     LDA #$03
C - - - - - 0x018740 06:8730: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x018743 06:8733: A9 00     LDA #$00
C - - - - - 0x018745 06:8735: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018748 06:8738: A9 02     LDA #$02
C - - - - - 0x01874A 06:873A: 9D B0 03  STA ram_spd_Y_hi,X
bra_873D:
C - - - - - 0x01874D 06:873D: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x018750 06:8740: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x018753 06:8743: A0 0C     LDY #$0C
C - - - - - 0x018755 06:8745: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x018758 06:8748: B0 0D     BCS bra_8757
C - - - - - 0x01875A 06:874A: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01875D 06:874D: 29 BF     AND #$BF
C - - - - - 0x01875F 06:874F: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x018762 06:8752: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018765 06:8755: D0 0F     BNE bra_8766_RTS
bra_8757:
C - - - - - 0x018767 06:8757: A9 14     LDA #$14
C - - - - - 0x018769 06:8759: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01876C 06:875C: A9 00     LDA #con_obj_id_00
C - - - - - 0x01876E 06:875E: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x018771 06:8761: A9 14     LDA #con_sfx_bubble_burst
C - - - - - 0x018773 06:8763: 4C A0 FC  JMP loc_0x01FCB0_play_sfx
bra_8766_RTS:
C - - - - - 0x018776 06:8766: 60        RTS



tbl_8767:
- D 0 - - - 0x018777 06:8767: 08        .byte $08   ; 00
- D 0 - - - 0x018778 06:8768: 04        .byte $04   ; 01
- D 0 - - - 0x018779 06:8769: 04        .byte $04   ; 02
- D 0 - - - 0x01877A 06:876A: 08        .byte $08   ; 03



ofs_005_876B_4C_bubble_burst:
; bubble projectile with trapped enemy when it expires or hits something
C - - J - - 0x01877B 06:876B: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x01877E 06:876E: C9 03     CMP #$03
C - - - - - 0x018780 06:8770: D0 18     BNE bra_878A_RTS
C - - - - - 0x018782 06:8772: BD 90 04  LDA ram_0490_obj,X
C - - - - - 0x018785 06:8775: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x018788 06:8778: A9 42     LDA #con_obj_id_dead_enemy
C - - - - - 0x01878A 06:877A: 9D 10 03  STA ram_obj_id,X
ofs_005_877D_42_dead_enemy:
; corpses of any enemy (not bosses)
C - - J - - 0x01878D 06:877D: A9 40     LDA #$40
C - - - - - 0x01878F 06:877F: 85 99     STA ram_0099
C - - - - - 0x018791 06:8781: 20 11 F9  JSR sub_0x01F921
C - - - - - 0x018794 06:8784: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x018797 06:8787: 20 4E 98  JSR sub_984E
bra_878A_RTS:
C - - - - - 0x01879A 06:878A: 60        RTS



ofs_005_878B_3D_dead_boss:
; bosses from stages 1-4, they fly away off screen, then jar 37 appears
C - - J - - 0x01879B 06:878B: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x01879E 06:878E: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x0187A1 06:8791: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0187A4 06:8794: C9 08     CMP #$08
C - - - - - 0x0187A6 06:8796: 90 0C     BCC bra_87A4
C - - - - - 0x0187A8 06:8798: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x0187AB 06:879B: C9 08     CMP #$08
C - - - - - 0x0187AD 06:879D: 90 05     BCC bra_87A4
C - - - - - 0x0187AF 06:879F: C9 F8     CMP #$F8
C - - - - - 0x0187B1 06:87A1: B0 01     BCS bra_87A4
bra_87A3_RTS:
C - - - - - 0x0187B3 06:87A3: 60        RTS
bra_87A4:
C - - - - - 0x0187B4 06:87A4: A5 E9     LDA ram_stage
C - - - - - 0x0187B6 06:87A6: C9 01     CMP #$01
C - - - - - 0x0187B8 06:87A8: D0 17     BNE bra_87C1
; if stage 2
C - - - - - 0x0187BA 06:87AA: A0 0F     LDY #$0F
bra_87AC_loop:
C - - - - - 0x0187BC 06:87AC: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x0187BF 06:87AF: 10 0B     BPL bra_87BC
C - - - - - 0x0187C1 06:87B1: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x0187C4 06:87B4: C9 2C     CMP #con_obj_id_boss_eel_1
C - - - - - 0x0187C6 06:87B6: F0 EB     BEQ bra_87A3_RTS
C - - - - - 0x0187C8 06:87B8: C9 2D     CMP #con_obj_id_boss_eel_2
C - - - - - 0x0187CA 06:87BA: F0 E7     BEQ bra_87A3_RTS
bra_87BC:
C - - - - - 0x0187CC 06:87BC: 88        DEY
C - - - - - 0x0187CD 06:87BD: C0 02     CPY #$02
C - - - - - 0x0187CF 06:87BF: D0 EB     BNE bra_87AC_loop
bra_87C1:
loc_87C1:
C D 0 - - - 0x0187D1 06:87C1: A9 00     LDA #$00
C - - - - - 0x0187D3 06:87C3: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x0187D6 06:87C6: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x0187D9 06:87C9: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0187DC 06:87CC: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x0187DF 06:87CF: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x0187E2 06:87D2: A9 80     LDA #$80
C - - - - - 0x0187E4 06:87D4: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x0187E7 06:87D7: A9 37     LDA #con_obj_id_jar
C - - - - - 0x0187E9 06:87D9: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x0187EC 06:87DC: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0187EF 06:87DF: 09 04     ORA #$04
C - - - - - 0x0187F1 06:87E1: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0187F4 06:87E4: A9 3C     LDA #$3C
C - - - - - 0x0187F6 06:87E6: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x0187F9 06:87E9: A9 49     LDA #$49
C - - - - - 0x0187FB 06:87EB: 4C 45 FC  JMP loc_0x01FC55



ofs_005_87EE_37_jar:
; appears from the top of the screen and drops down after boss is defeated
C - - J - - 0x0187FE 06:87EE: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x018801 06:87F1: F0 0D     BEQ bra_8800
C - - - - - 0x018803 06:87F3: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018806 06:87F6: D0 28     BNE bra_8820_RTS
C - - - - - 0x018808 06:87F8: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01880B 06:87FB: 29 FB     AND #$FB
C - - - - - 0x01880D 06:87FD: 9D 00 04  STA ram_0400_obj,X
bra_8800:
C - - - - - 0x018810 06:8800: 20 11 F9  JSR sub_0x01F921
C - - - - - 0x018813 06:8803: A9 80     LDA #$80
C - - - - - 0x018815 06:8805: DD 60 03  CMP ram_pos_Y_lo,X
C - - - - - 0x018818 06:8808: B0 03     BCS bra_880D
C - - - - - 0x01881A 06:880A: 9D 60 03  STA ram_pos_Y_lo,X
bra_880D:
C - - - - - 0x01881D 06:880D: 20 F2 FA  JSR sub_0x01FB02
C - - - - - 0x018820 06:8810: B0 0E     BCS bra_8820_RTS
C - - - - - 0x018822 06:8812: A9 07     LDA #con_music_stage_complete
C - - - - - 0x018824 06:8814: 20 9E FC  JSR sub_0x01FCAE_play_music
C - - - - - 0x018827 06:8817: A9 00     LDA #$00
C - - - - - 0x018829 06:8819: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01882C 06:881C: A9 B4     LDA #$B4
C - - - - - 0x01882E 06:881E: 85 2F     STA ram_002F
bra_8820_RTS:
C - - - - - 0x018830 06:8820: 60        RTS



ofs_005_8821_5C_half_trapped_enemy:
; half-bubbled with default weapon, drawing on top of the enemy
C - - J - - 0x018831 06:8821: A9 00     LDA #$00
C - - - - - 0x018833 06:8823: 9D 48 04  STA ram_0448,X
C - - - - - 0x018836 06:8826: BC 60 04  LDY ram_0460_obj,X
C - - - - - 0x018839 06:8829: B9 A0 04  LDA ram_04A0_obj,Y
C - - - - - 0x01883C 06:882C: D0 F2     BNE bra_8820_RTS
C - - - - - 0x01883E 06:882E: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x018841 06:8831: 60        RTS



sub_8832:
C - - - - - 0x018842 06:8832: 84 02     STY ram_0002
C - - - - - 0x018844 06:8834: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x018847 06:8837: B0 36     BCS bra_886F
C - - - - - 0x018849 06:8839: A9 12     LDA #$12
C - - - - - 0x01884B 06:883B: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x01884E 06:883E: A9 01     LDA #$01
C - - - - - 0x018850 06:8840: 99 18 04  STA ram_animation_cnt,Y
C - - - - - 0x018853 06:8843: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x018856 06:8846: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018859 06:8849: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01885C 06:884C: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01885F 06:884F: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018862 06:8852: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x018865 06:8855: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x018868 06:8858: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01886B 06:885B: A9 5C     LDA #con_obj_id_half_trapped_enemy
C - - - - - 0x01886D 06:885D: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018870 06:8860: A9 00     LDA #$00
C - - - - - 0x018872 06:8862: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018875 06:8865: 99 A0 04  STA ram_04A0_obj,Y
C - - - - - 0x018878 06:8868: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x01887B 06:886B: 8A        TXA
C - - - - - 0x01887C 06:886C: 99 60 04  STA ram_0460_obj,Y
bra_886F:
C - - - - - 0x01887F 06:886F: A4 02     LDY ram_0002
C - - - - - 0x018881 06:8871: 60        RTS



ofs_005_8872_5D_swimming_bubbles:
; bubbles during stage 6 boss fight, swim at the bottom
C - - J - - 0x018882 06:8872: A5 7E     LDA ram_007E
C - - - - - 0x018884 06:8874: F0 03     BEQ bra_8879
C - - - - - 0x018886 06:8876: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis
bra_8879:
C - - - - - 0x018889 06:8879: A9 00     LDA #$00
C - - - - - 0x01888B 06:887B: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01888E 06:887E: 60        RTS



ofs_005_887F_5E_teleport:
; one specific teleport at stage 5
C - - J - - 0x01888F 06:887F: A5 28     LDA ram_0028
C - - - - - 0x018891 06:8881: C9 01     CMP #$01
C - - - - - 0x018893 06:8883: D0 08     BNE bra_888D_RTS
C - - - - - 0x018895 06:8885: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x018898 06:8888: 29 FB     AND #$FB
C - - - - - 0x01889A 06:888A: 9D 00 04  STA ram_0400_obj,X
bra_888D_RTS:
C - - - - - 0x01889D 06:888D: 60        RTS



ofs_005_888E_3F_RTS:
ofs_005_888E_40_RTS_chest_empty:
; empty chest, can be opened with shell/rock/barrel
ofs_005_888E_5F_RTS:
C - - J - - 0x01889E 06:888E: 60        RTS



ofs_005_888F_02_enemy_inside_bubble:
; any bubbled enemy has 02 index but different graphics
; player can pick up and carry this bubble
; you can open hidden spots with it
; bubble expires eventually and bursts, transforms to 4C, then to 42
C - - J - - 0x01889F 06:888F: E4 3A     CPX ram_003A
C - - - - - 0x0188A1 06:8891: D0 03     BNE bra_8896
C - - - - - 0x0188A3 06:8893: 4C 4E 89  JMP loc_894E
bra_8896:
C - - - - - 0x0188A6 06:8896: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x0188A9 06:8899: 29 0F     AND #$0F
C - - - - - 0x0188AB 06:889B: D0 23     BNE bra_88C0
C - - - - - 0x0188AD 06:889D: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x0188B0 06:88A0: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x0188B3 06:88A3: A9 40     LDA #$40
C - - - - - 0x0188B5 06:88A5: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x0188B8 06:88A8: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x0188BB 06:88AB: A9 E0     LDA #$E0
C - - - - - 0x0188BD 06:88AD: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x0188C0 06:88B0: A9 14     LDA #$14
C - - - - - 0x0188C2 06:88B2: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x0188C5 06:88B5: A9 04     LDA #$04
C - - - - - 0x0188C7 06:88B7: 9D D0 03  STA ram_direction,X
C - - - - - 0x0188CA 06:88BA: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x0188CD 06:88BD: 20 4E 98  JSR sub_984E
bra_88C0:
C - - - - - 0x0188D0 06:88C0: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x0188D3 06:88C3: F0 42     BEQ bra_8907
C - - - - - 0x0188D5 06:88C5: A9 00     LDA #$00
C - - - - - 0x0188D7 06:88C7: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x0188DA 06:88CA: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x0188DD 06:88CD: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x0188E0 06:88D0: D0 0D     BNE bra_88DF
C - - - - - 0x0188E2 06:88D2: BD D0 03  LDA ram_direction,X
C - - - - - 0x0188E5 06:88D5: 49 0C     EOR #$0C
C - - - - - 0x0188E7 06:88D7: 9D D0 03  STA ram_direction,X
C - - - - - 0x0188EA 06:88DA: A9 0C     LDA #$0C
C - - - - - 0x0188EC 06:88DC: 9D 70 04  STA ram_obj_timer,X
bra_88DF:
C - - - - - 0x0188EF 06:88DF: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x0188F2 06:88E2: D0 5A     BNE bra_893E_RTS
C - - - - - 0x0188F4 06:88E4: A9 09     LDA #$09
C - - - - - 0x0188F6 06:88E6: 9D D0 03  STA ram_direction,X
C - - - - - 0x0188F9 06:88E9: A9 00     LDA #$00
C - - - - - 0x0188FB 06:88EB: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x0188FE 06:88EE: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x018901 06:88F1: A9 01     LDA #$01
C - - - - - 0x018903 06:88F3: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018906 06:88F6: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x018909 06:88F9: C9 7B     CMP #$7B
C - - - - - 0x01890B 06:88FB: B0 0A     BCS bra_8907
C - - - - - 0x01890D 06:88FD: A9 05     LDA #$05
C - - - - - 0x01890F 06:88FF: 9D D0 03  STA ram_direction,X
C - - - - - 0x018912 06:8902: A9 00     LDA #$00
C - - - - - 0x018914 06:8904: 9D 80 04  STA ram_0480_obj,X
bra_8907:
C - - - - - 0x018917 06:8907: A0 06     LDY #$06
C - - - - - 0x018919 06:8909: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x01891C 06:890C: 29 1F     AND #$1F
C - - - - - 0x01891E 06:890E: C9 02     CMP #$02
C - - - - - 0x018920 06:8910: F0 04     BEQ bra_8916
C - - - - - 0x018922 06:8912: C9 03     CMP #$03
C - - - - - 0x018924 06:8914: D0 02     BNE bra_8918
bra_8916:
C - - - - - 0x018926 06:8916: A0 08     LDY #$08
bra_8918:
C - - - - - 0x018928 06:8918: 20 CC FC  JSR sub_0x01FCDC
C - - - - - 0x01892B 06:891B: B0 22     BCS bra_893F
C - - - - - 0x01892D 06:891D: A9 00     LDA #$00
C - - - - - 0x01892F 06:891F: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x018932 06:8922: A5 10     LDA ram_0010
C - - - - - 0x018934 06:8924: F0 25     BEQ bra_894B
C - - - - - 0x018936 06:8926: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x018939 06:8929: 20 4E 98  JSR sub_984E
C - - - - - 0x01893C 06:892C: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x01893F 06:892F: D0 0D     BNE bra_893E_RTS
C - - - - - 0x018941 06:8931: A9 0C     LDA #$0C
C - - - - - 0x018943 06:8933: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x018946 06:8936: BD D0 03  LDA ram_direction,X
C - - - - - 0x018949 06:8939: 49 03     EOR #$03
C - - - - - 0x01894B 06:893B: 9D D0 03  STA ram_direction,X
bra_893E_RTS:
C - - - - - 0x01894E 06:893E: 60        RTS
bra_893F:
C - - - - - 0x01894F 06:893F: BD D0 03  LDA ram_direction,X
C - - - - - 0x018952 06:8942: 29 08     AND #$08
C - - - - - 0x018954 06:8944: D0 05     BNE bra_894B
C - - - - - 0x018956 06:8946: DE 80 04  DEC ram_0480_obj,X
C - - - - - 0x018959 06:8949: D0 F3     BNE bra_893E_RTS
bra_894B:
C - - - - - 0x01895B 06:894B: 4C 71 83  JMP loc_8371



loc_894E:
C D 0 - - - 0x01895E 06:894E: DE 80 04  DEC ram_0480_obj,X
C - - - - - 0x018961 06:8951: F0 F8     BEQ bra_894B
loc_8953:
C D 0 - - - 0x018963 06:8953: 20 C4 81  JSR sub_81C4
C - - - - - 0x018966 06:8956: A0 08     LDY #$08
C - - - - - 0x018968 06:8958: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01896B 06:895B: C9 84     CMP #$84
C - - - - - 0x01896D 06:895D: F0 14     BEQ bra_8973
C - - - - - 0x01896F 06:895F: A0 05     LDY #$05
C - - - - - 0x018971 06:8961: C9 03     CMP #$03
C - - - - - 0x018973 06:8963: F0 0E     BEQ bra_8973
C - - - - - 0x018975 06:8965: A0 01     LDY #$01
C - - - - - 0x018977 06:8967: C9 02     CMP #$02
C - - - - - 0x018979 06:8969: F0 08     BEQ bra_8973
C - - - - - 0x01897B 06:896B: C9 15     CMP #$15
C - - - - - 0x01897D 06:896D: F0 04     BEQ bra_8973
C - - - - - 0x01897F 06:896F: A0 00     LDY #$00
C - - - - - 0x018981 06:8971: F0 06     BEQ bra_8979   ; jmp
bra_8973:
C - - - - - 0x018983 06:8973: 98        TYA
C - - - - - 0x018984 06:8974: 18        CLC
C - - - - - 0x018985 06:8975: 6D 18 04  ADC ram_animation_cnt
C - - - - - 0x018988 06:8978: A8        TAY
bra_8979:
C - - - - - 0x018989 06:8979: AD 70 03  LDA ram_pos_Y_hi
C - - - - - 0x01898C 06:897C: 9D 70 03  STA ram_pos_Y_hi,X
C - - - - - 0x01898F 06:897F: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x018992 06:8982: 18        CLC
C - - - - - 0x018993 06:8983: 79 FE 89  ADC tbl_89FE_pos_Y_lo,Y
C - - - - - 0x018996 06:8986: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x018999 06:8989: B9 FE 89  LDA tbl_89FE_pos_Y_lo,Y
C - - - - - 0x01899C 06:898C: 30 16     BMI bra_89A4
C - - - - - 0x01899E 06:898E: C9 F0     CMP #$F0
C - - - - - 0x0189A0 06:8990: 90 29     BCC bra_89BB
- - - - - - 0x0189A2 06:8992: BD 60 03  LDA ram_pos_Y_lo,X
- - - - - - 0x0189A5 06:8995: 69 0F     ADC #$0F
- - - - - - 0x0189A7 06:8997: 9D 60 03  STA ram_pos_Y_lo,X
- - - - - - 0x0189AA 06:899A: A5 50     LDA ram_substage
- - - - - - 0x0189AC 06:899C: 30 1A     BMI bra_89B8    ; if vertical up
- - - - - - 0x0189AE 06:899E: FE 70 03  INC ram_pos_Y_hi,X
- - - - - - 0x0189B1 06:89A1: 4C BB 89  JMP loc_89BB
bra_89A4:
C - - - - - 0x0189B4 06:89A4: B0 15     BCS bra_89BB
C - - - - - 0x0189B6 06:89A6: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0189B9 06:89A9: E9 0F     SBC #$0F
C - - - - - 0x0189BB 06:89AB: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x0189BE 06:89AE: A5 50     LDA ram_substage
C - - - - - 0x0189C0 06:89B0: 10 06     BPL bra_89B8
; if vertical up
C - - - - - 0x0189C2 06:89B2: FE 70 03  INC ram_pos_Y_hi,X
C - - - - - 0x0189C5 06:89B5: 4C BB 89  JMP loc_89BB
bra_89B8:
C - - - - - 0x0189C8 06:89B8: DE 70 03  DEC ram_pos_Y_hi,X
bra_89BB:
loc_89BB:
C D 0 - - - 0x0189CB 06:89BB: AD 30 04  LDA ram_0430_obj
C - - - - - 0x0189CE 06:89BE: C9 03     CMP #$03
C - - - - - 0x0189D0 06:89C0: D0 0F     BNE bra_89D1
C - - - - - 0x0189D2 06:89C2: AD 18 04  LDA ram_animation_cnt
C - - - - - 0x0189D5 06:89C5: C9 02     CMP #$02
C - - - - - 0x0189D7 06:89C7: D0 08     BNE bra_89D1
C - - - - - 0x0189D9 06:89C9: AD 00 04  LDA ram_0400_obj
C - - - - - 0x0189DC 06:89CC: 49 40     EOR #$40
C - - - - - 0x0189DE 06:89CE: 4C D4 89  JMP loc_89D4
bra_89D1:
C - - - - - 0x0189E1 06:89D1: AD 00 04  LDA ram_0400_obj
loc_89D4:
C D 0 - - - 0x0189E4 06:89D4: 29 40     AND #$40
C - - - - - 0x0189E6 06:89D6: F0 13     BEQ bra_89EB
C - - - - - 0x0189E8 06:89D8: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x0189EB 06:89DB: 18        CLC
C - - - - - 0x0189EC 06:89DC: 79 09 8A  ADC tbl_8A09_pos_X_lo,Y
C - - - - - 0x0189EF 06:89DF: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x0189F2 06:89E2: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x0189F5 06:89E5: 69 00     ADC #$00
C - - - - - 0x0189F7 06:89E7: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x0189FA 06:89EA: 60        RTS
bra_89EB:
C - - - - - 0x0189FB 06:89EB: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x0189FE 06:89EE: 38        SEC
C - - - - - 0x0189FF 06:89EF: F9 09 8A  SBC tbl_8A09_pos_X_lo,Y
C - - - - - 0x018A02 06:89F2: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x018A05 06:89F5: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x018A08 06:89F8: E9 00     SBC #$00
C - - - - - 0x018A0A 06:89FA: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x018A0D 06:89FD: 60        RTS



tbl_89FE_pos_Y_lo:
- D 0 - - - 0x018A0E 06:89FE: FA        .byte $FA   ; 00
- D 0 - - - 0x018A0F 06:89FF: 08        .byte $08   ; 01
- D 0 - - - 0x018A10 06:8A00: 09        .byte $09   ; 02
- D 0 - - - 0x018A11 06:8A01: 08        .byte $08   ; 03
- D 0 - - - 0x018A12 06:8A02: 09        .byte $09   ; 04
- D 0 - - - 0x018A13 06:8A03: 0B        .byte $0B   ; 05
- D 0 - - - 0x018A14 06:8A04: 0D        .byte $0D   ; 06
- D 0 - - - 0x018A15 06:8A05: 03        .byte $03   ; 07
- D 0 - - - 0x018A16 06:8A06: 03        .byte $03   ; 08
- D 0 - - - 0x018A17 06:8A07: 0D        .byte $0D   ; 09
- D 0 - - - 0x018A18 06:8A08: 0B        .byte $0B   ; 0A



tbl_8A09_pos_X_lo:
- D 0 - - - 0x018A19 06:8A09: 14        .byte $14   ; 00
- D 0 - - - 0x018A1A 06:8A0A: 07        .byte $07   ; 01
- D 0 - - - 0x018A1B 06:8A0B: 07        .byte $07   ; 02
- D 0 - - - 0x018A1C 06:8A0C: 07        .byte $07   ; 03
- D 0 - - - 0x018A1D 06:8A0D: 07        .byte $07   ; 04
- D 0 - - - 0x018A1E 06:8A0E: 04        .byte $04   ; 05
- D 0 - - - 0x018A1F 06:8A0F: 00        .byte $00   ; 06
- D 0 - - - 0x018A20 06:8A10: 0E        .byte $0E   ; 07
- D 0 - - - 0x018A21 06:8A11: 0E        .byte $0E   ; 08
- D 0 - - - 0x018A22 06:8A12: 00        .byte $00   ; 09
- D 0 - - - 0x018A23 06:8A13: 04        .byte $04   ; 0A



ofs_005_8A14_03_piranha_stupid:
; swims with zig-zag movements, accelerates straight foward when notices a player
C - - J - - 0x018A24 06:8A14: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x018A27 06:8A17: 29 0F     AND #$0F
C - - - - - 0x018A29 06:8A19: D0 1A     BNE bra_8A35
C - - - - - 0x018A2B 06:8A1B: FE 00 03  INC ram_obj_flags,X
loc_8A1E:
C D 0 - - - 0x018A2E 06:8A1E: A9 40     LDA #$40
C - - - - - 0x018A30 06:8A20: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018A33 06:8A23: A9 00     LDA #$00
C - - - - - 0x018A35 06:8A25: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018A38 06:8A28: BD D0 03  LDA ram_direction,X
C - - - - - 0x018A3B 06:8A2B: 09 04     ORA #$04
C - - - - - 0x018A3D 06:8A2D: 9D D0 03  STA ram_direction,X
C - - - - - 0x018A40 06:8A30: A9 1F     LDA #$1F
C - - - - - 0x018A42 06:8A32: 9D 70 04  STA ram_obj_timer,X
bra_8A35:
loc_8A35:
C D 0 - - - 0x018A45 06:8A35: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x018A48 06:8A38: DD 60 03  CMP ram_pos_Y_lo,X
C - - - - - 0x018A4B 06:8A3B: D0 10     BNE bra_8A4D
C - - - - - 0x018A4D 06:8A3D: A9 00     LDA #$00
C - - - - - 0x018A4F 06:8A3F: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018A52 06:8A42: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018A55 06:8A45: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x018A58 06:8A48: A9 01     LDA #$01
C - - - - - 0x018A5A 06:8A4A: 9D 90 03  STA ram_spd_X_hi,X
bra_8A4D:
loc_8A4D:
C D 0 - - - 0x018A5D 06:8A4D: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x018A60 06:8A50: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x018A63 06:8A53: 10 0D     BPL bra_8A62
C - - - - - 0x018A65 06:8A55: A9 1F     LDA #$1F
C - - - - - 0x018A67 06:8A57: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x018A6A 06:8A5A: BD D0 03  LDA ram_direction,X
C - - - - - 0x018A6D 06:8A5D: 49 0C     EOR #$0C
C - - - - - 0x018A6F 06:8A5F: 9D D0 03  STA ram_direction,X
bra_8A62:
C - - - - - 0x018A72 06:8A62: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis



ofs_005_8A65_05_seahorse:
; normal enemy, not boss
C - - J - - 0x018A75 06:8A65: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x018A78 06:8A68: 29 0F     AND #$0F
C - - - - - 0x018A7A 06:8A6A: D0 1A     BNE bra_8A86
C - - - - - 0x018A7C 06:8A6C: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x018A7F 06:8A6F: C9 60     CMP #$60
C - - - - - 0x018A81 06:8A71: B0 12     BCS bra_8A85_RTS
C - - - - - 0x018A83 06:8A73: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x018A86 06:8A76: A9 20     LDA #$20
C - - - - - 0x018A88 06:8A78: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x018A8B 06:8A7B: A9 00     LDA #$00
C - - - - - 0x018A8D 06:8A7D: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018A90 06:8A80: A9 01     LDA #$01
C - - - - - 0x018A92 06:8A82: 9D B0 03  STA ram_spd_Y_hi,X
bra_8A85_RTS:
C - - - - - 0x018A95 06:8A85: 60        RTS
bra_8A86:
C - - - - - 0x018A96 06:8A86: C9 02     CMP #$02
C - - - - - 0x018A98 06:8A88: D0 03     BNE bra_8A8D
C - - - - - 0x018A9A 06:8A8A: 4C 35 8A  JMP loc_8A35
bra_8A8D:
C - - - - - 0x018A9D 06:8A8D: 20 EB F8  JSR sub_0x01F8FB_move_object_up
C - - - - - 0x018AA0 06:8A90: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018AA3 06:8A93: 10 F0     BPL bra_8A85_RTS
C - - - - - 0x018AA5 06:8A95: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x018AA8 06:8A98: 4C 1E 8A  JMP loc_8A1E



ofs_005_8A9B_06_piranha_ghost:
; transforms into 03 when sheet is thrown off
C - - J - - 0x018AAB 06:8A9B: 20 A0 FB  JSR sub_0x01FBB0
C - - - - - 0x018AAE 06:8A9E: B0 03     BCS bra_8AA3
C - - - - - 0x018AB0 06:8AA0: 4C 2C 8B  JMP loc_8B2C
bra_8AA3:
C - - - - - 0x018AB3 06:8AA3: A0 0F     LDY #$0F
C - - - - - 0x018AB5 06:8AA5: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018AB8 06:8AA8: 38        SEC
C - - - - - 0x018AB9 06:8AA9: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x018ABB 06:8AAB: 85 00     STA ram_0000
C - - - - - 0x018ABD 06:8AAD: B0 04     BCS bra_8AB3_loop
- - - - - - 0x018ABF 06:8AAF: 69 0F     ADC #$0F
- - - - - - 0x018AC1 06:8AB1: 85 00     STA ram_0000
bra_8AB3_loop:
C - - - - - 0x018AC3 06:8AB3: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x018AC6 06:8AB6: 10 5B     BPL bra_8B13
C - - - - - 0x018AC8 06:8AB8: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x018ACB 06:8ABB: 10 56     BPL bra_8B13
C - - - - - 0x018ACD 06:8ABD: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x018AD0 06:8AC0: C9 40     CMP #$40
C - - - - - 0x018AD2 06:8AC2: F0 0B     BEQ bra_8ACF
C - - - - - 0x018AD4 06:8AC4: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x018AD7 06:8AC7: C9 02     CMP #con_obj_id_enemy_inside_bubble
C - - - - - 0x018AD9 06:8AC9: F0 04     BEQ bra_8ACF
C - - - - - 0x018ADB 06:8ACB: C9 01     CMP #con_obj_id_projectile_player
C - - - - - 0x018ADD 06:8ACD: D0 44     BNE bra_8B13
bra_8ACF:
C - - - - - 0x018ADF 06:8ACF: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x018AE2 06:8AD2: 38        SEC
C - - - - - 0x018AE3 06:8AD3: F9 30 03  SBC ram_pos_X_lo,Y
C - - - - - 0x018AE6 06:8AD6: 48        PHA
C - - - - - 0x018AE7 06:8AD7: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x018AEA 06:8ADA: F9 40 03  SBC ram_pos_X_hi,Y
C - - - - - 0x018AED 06:8ADD: 68        PLA
C - - - - - 0x018AEE 06:8ADE: B0 04     BCS bra_8AE4
C - - - - - 0x018AF0 06:8AE0: 49 FF     EOR #$FF
C - - - - - 0x018AF2 06:8AE2: 69 01     ADC #$01
bra_8AE4:
C - - - - - 0x018AF4 06:8AE4: C9 14     CMP #$14
C - - - - - 0x018AF6 06:8AE6: B0 2B     BCS bra_8B13
C - - - - - 0x018AF8 06:8AE8: B9 60 03  LDA ram_pos_Y_lo,Y
C - - - - - 0x018AFB 06:8AEB: 38        SEC
C - - - - - 0x018AFC 06:8AEC: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x018AFE 06:8AEE: B0 03     BCS bra_8AF3
- - - - - - 0x018B00 06:8AF0: 69 0F     ADC #$0F
- - - - - - 0x018B02 06:8AF2: 38        SEC
bra_8AF3:
C - - - - - 0x018B03 06:8AF3: E5 00     SBC ram_0000
C - - - - - 0x018B05 06:8AF5: B0 04     BCS bra_8AFB
C - - - - - 0x018B07 06:8AF7: 49 FF     EOR #$FF
C - - - - - 0x018B09 06:8AF9: 69 01     ADC #$01
bra_8AFB:
C - - - - - 0x018B0B 06:8AFB: C9 14     CMP #$14
C - - - - - 0x018B0D 06:8AFD: B0 14     BCS bra_8B13
C - - - - - 0x018B0F 06:8AFF: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x018B12 06:8B02: C9 40     CMP #$40
C - - - - - 0x018B14 06:8B04: D0 15     BNE bra_8B1B
C - - - - - 0x018B16 06:8B06: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x018B19 06:8B09: 29 0F     AND #$0F
C - - - - - 0x018B1B 06:8B0B: F0 06     BEQ bra_8B13
C - - - - - 0x018B1D 06:8B0D: 20 62 86  JSR sub_8662
C - - - - - 0x018B20 06:8B10: 4C 31 8B  JMP loc_8B31
bra_8B13:
C - - - - - 0x018B23 06:8B13: 88        DEY
C - - - - - 0x018B24 06:8B14: C0 02     CPY #$02
C - - - - - 0x018B26 06:8B16: D0 9B     BNE bra_8AB3_loop
C - - - - - 0x018B28 06:8B18: 4C B8 8B  JMP loc_8BB8
bra_8B1B:
C - - - - - 0x018B2B 06:8B1B: 86 00     STX ram_0000
C - - - - - 0x018B2D 06:8B1D: B9 90 04  LDA ram_0490_obj,Y
C - - - - - 0x018B30 06:8B20: F0 05     BEQ bra_8B27
C - - - - - 0x018B32 06:8B22: 98        TYA
C - - - - - 0x018B33 06:8B23: AA        TAX
C - - - - - 0x018B34 06:8B24: 20 71 83  JSR sub_8371
bra_8B27:
C - - - - - 0x018B37 06:8B27: A6 00     LDX ram_0000
C - - - - - 0x018B39 06:8B29: 4C 31 8B  JMP loc_8B31



loc_8B2C:
C D 0 - - - 0x018B3C 06:8B2C: A9 00     LDA #$00
C - - - - - 0x018B3E 06:8B2E: 99 00 03  STA ram_obj_flags,Y
loc_8B31:
C D 0 - - - 0x018B41 06:8B31: A9 20     LDA #$20
C - - - - - 0x018B43 06:8B33: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x018B46 06:8B36: A9 03     LDA #con_obj_id_piranha_stupid
C - - - - - 0x018B48 06:8B38: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x018B4B 06:8B3B: A9 60     LDA #$60
C - - - - - 0x018B4D 06:8B3D: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x018B50 06:8B40: A9 81     LDA #$81
C - - - - - 0x018B52 06:8B42: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x018B55 06:8B45: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x018B58 06:8B48: BD D0 03  LDA ram_direction,X
C - - - - - 0x018B5B 06:8B4B: 09 08     ORA #$08
C - - - - - 0x018B5D 06:8B4D: 9D D0 03  STA ram_direction,X
C - - - - - 0x018B60 06:8B50: A9 80     LDA #$80
C - - - - - 0x018B62 06:8B52: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018B65 06:8B55: A9 00     LDA #$00
C - - - - - 0x018B67 06:8B57: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018B6A 06:8B5A: A9 1F     LDA #$1F
C - - - - - 0x018B6C 06:8B5C: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x018B6F 06:8B5F: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x018B72 06:8B62: B0 53     BCS bra_8BB7_RTS
C - - - - - 0x018B74 06:8B64: 86 0F     STX ram_000F
C - - - - - 0x018B76 06:8B66: A9 3F     LDA #$3F
C - - - - - 0x018B78 06:8B68: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x018B7B 06:8B6B: A9 07     LDA #con_obj_id_ghost_sheet
C - - - - - 0x018B7D 06:8B6D: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018B80 06:8B70: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x018B83 06:8B73: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018B86 06:8B76: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x018B89 06:8B79: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x018B8C 06:8B7C: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018B8F 06:8B7F: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x018B92 06:8B82: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x018B95 06:8B85: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x018B98 06:8B88: A9 F3     LDA #$F3
C - - - - - 0x018B9A 06:8B8A: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x018B9D 06:8B8D: A9 00     LDA #$00
C - - - - - 0x018B9F 06:8B8F: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x018BA2 06:8B92: A9 01     LDA #$01
C - - - - - 0x018BA4 06:8B94: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x018BA7 06:8B97: A9 6F     LDA #$6F
C - - - - - 0x018BA9 06:8B99: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x018BAC 06:8B9C: A9 45     LDA #$45
C - - - - - 0x018BAE 06:8B9E: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018BB1 06:8BA1: A9 01     LDA #$01
C - - - - - 0x018BB3 06:8BA3: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x018BB6 06:8BA6: BD D0 03  LDA ram_direction,X
C - - - - - 0x018BB9 06:8BA9: 49 03     EOR #$03
C - - - - - 0x018BBB 06:8BAB: 09 04     ORA #$04
C - - - - - 0x018BBD 06:8BAD: 99 D0 03  STA ram_direction,Y
C - - - - - 0x018BC0 06:8BB0: 98        TYA
C - - - - - 0x018BC1 06:8BB1: AA        TAX
C - - - - - 0x018BC2 06:8BB2: 20 89 FC  JSR sub_0x01FC99
C - - - - - 0x018BC5 06:8BB5: A6 0F     LDX ram_000F
bra_8BB7_RTS:
C - - - - - 0x018BC7 06:8BB7: 60        RTS



loc_8BB8:
C D 0 - - - 0x018BC8 06:8BB8: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x018BCB 06:8BBB: 29 0F     AND #$0F
C - - - - - 0x018BCD 06:8BBD: D0 1A     BNE bra_8BD9
C - - - - - 0x018BCF 06:8BBF: A9 80     LDA #$80
C - - - - - 0x018BD1 06:8BC1: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018BD4 06:8BC4: A9 00     LDA #$00
C - - - - - 0x018BD6 06:8BC6: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018BD9 06:8BC9: BD D0 03  LDA ram_direction,X
C - - - - - 0x018BDC 06:8BCC: 09 04     ORA #$04
C - - - - - 0x018BDE 06:8BCE: 9D D0 03  STA ram_direction,X
C - - - - - 0x018BE1 06:8BD1: A9 1F     LDA #$1F
C - - - - - 0x018BE3 06:8BD3: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x018BE6 06:8BD6: FE 00 03  INC ram_obj_flags,X
bra_8BD9:
C - - - - - 0x018BE9 06:8BD9: 4C 4D 8A  JMP loc_8A4D



ofs_005_8BDC_07_ghost_sheet:
; the thing you throw off from piranha ghost 06
C - - J - - 0x018BEC 06:8BDC: 20 C3 F8  JSR sub_0x01F8D3_move_object_down
C - - - - - 0x018BEF 06:8BDF: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis



ofs_005_8BE2_08_shooting_fish:
; floats on the surface of the water
; shoots with 09 (spit)
C - - J - - 0x018BF2 06:8BE2: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x018BF5 06:8BE5: 20 89 FC  JSR sub_0x01FC99
C - - - - - 0x018BF8 06:8BE8: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x018BFB 06:8BEB: 29 0F     AND #$0F
C - - - - - 0x018BFD 06:8BED: D0 20     BNE bra_8C0F
C - - - - - 0x018BFF 06:8BEF: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x018C02 06:8BF2: C9 40     CMP #$40
C - - - - - 0x018C04 06:8BF4: B0 42     BCS bra_8C38_RTS
C - - - - - 0x018C06 06:8BF6: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018C09 06:8BF9: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x018C0C 06:8BFC: 90 3A     BCC bra_8C38_RTS
C - - - - - 0x018C0E 06:8BFE: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x018C11 06:8C01: A0 40     LDY #$40
C - - - - - 0x018C13 06:8C03: A5 E7     LDA ram_random + $03
C - - - - - 0x018C15 06:8C05: 29 01     AND #$01
C - - - - - 0x018C17 06:8C07: D0 02     BNE bra_8C0B
C - - - - - 0x018C19 06:8C09: A0 20     LDY #$20
bra_8C0B:
C - - - - - 0x018C1B 06:8C0B: 98        TYA
C - - - - - 0x018C1C 06:8C0C: 9D 60 04  STA ram_0460_obj,X
bra_8C0F:
C - - - - - 0x018C1F 06:8C0F: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x018C22 06:8C12: C9 38     CMP #$38
C - - - - - 0x018C24 06:8C14: F0 0A     BEQ bra_8C20
C - - - - - 0x018C26 06:8C16: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018C29 06:8C19: D0 1D     BNE bra_8C38_RTS
C - - - - - 0x018C2B 06:8C1B: A9 38     LDA #$38
C - - - - - 0x018C2D 06:8C1D: 4C 45 FC  JMP loc_0x01FC55
bra_8C20:
C - - - - - 0x018C30 06:8C20: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x018C33 06:8C23: F0 13     BEQ bra_8C38_RTS
C - - - - - 0x018C35 06:8C25: BD 48 04  LDA ram_0448,X
C - - - - - 0x018C38 06:8C28: F0 0F     BEQ bra_8C39
C - - - - - 0x018C3A 06:8C2A: C9 10     CMP #$10
C - - - - - 0x018C3C 06:8C2C: D0 0A     BNE bra_8C38_RTS
C - - - - - 0x018C3E 06:8C2E: A9 80     LDA #$80
C - - - - - 0x018C40 06:8C30: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x018C43 06:8C33: A9 37     LDA #$37
C - - - - - 0x018C45 06:8C35: 20 45 FC  JSR sub_0x01FC55
bra_8C38_RTS:
C - - - - - 0x018C48 06:8C38: 60        RTS
bra_8C39:
C - - - - - 0x018C49 06:8C39: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x018C4C 06:8C3C: B0 FA     BCS bra_8C38_RTS
C - - - - - 0x018C4E 06:8C3E: 86 0F     STX ram_000F
C - - - - - 0x018C50 06:8C40: A9 6A     LDA #$6A
C - - - - - 0x018C52 06:8C42: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x018C55 06:8C45: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x018C58 06:8C48: A9 01     LDA #$01
C - - - - - 0x018C5A 06:8C4A: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x018C5D 06:8C4D: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x018C60 06:8C50: A9 41     LDA #$41
C - - - - - 0x018C62 06:8C52: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018C65 06:8C55: A9 01     LDA #$01
C - - - - - 0x018C67 06:8C57: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x018C6A 06:8C5A: A9 39     LDA #$39
C - - - - - 0x018C6C 06:8C5C: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x018C6F 06:8C5F: A9 09     LDA #con_obj_id_projectile_shooting_fish
C - - - - - 0x018C71 06:8C61: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018C74 06:8C64: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018C77 06:8C67: 38        SEC
C - - - - - 0x018C78 06:8C68: E9 10     SBC #$10
C - - - - - 0x018C7A 06:8C6A: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x018C7D 06:8C6D: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x018C80 06:8C70: 38        SEC
C - - - - - 0x018C81 06:8C71: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x018C84 06:8C74: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x018C87 06:8C77: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018C8A 06:8C7A: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x018C8D 06:8C7D: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x018C90 06:8C80: BD D0 03  LDA ram_direction,X
C - - - - - 0x018C93 06:8C83: 99 D0 03  STA ram_direction,Y
C - - - - - 0x018C96 06:8C86: 29 02     AND #$02
C - - - - - 0x018C98 06:8C88: AA        TAX
C - - - - - 0x018C99 06:8C89: B9 30 03  LDA ram_pos_X_lo,Y
C - - - - - 0x018C9C 06:8C8C: 18        CLC
C - - - - - 0x018C9D 06:8C8D: 7D 9F 8C  ADC tbl_8C9F_pos_X,X
C - - - - - 0x018CA0 06:8C90: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018CA3 06:8C93: B9 40 03  LDA ram_pos_X_hi,Y
C - - - - - 0x018CA6 06:8C96: 7D A0 8C  ADC tbl_8C9F_pos_X + $01,X
C - - - - - 0x018CA9 06:8C99: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x018CAC 06:8C9C: A6 0F     LDX ram_000F
C - - - - - 0x018CAE 06:8C9E: 60        RTS



tbl_8C9F_pos_X:
- D 0 - - - 0x018CAF 06:8C9F: 10 00     .word $0010 ; 00 01
- D 0 - - - 0x018CB1 06:8CA1: F0 FF     .word $FFF0 ; 02 03



ofs_005_8CA3_09_projectile_shooting_fish:
; projectile made by a shooting fish 08 (spit)
C - - J - - 0x018CB3 06:8CA3: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x018CB6 06:8CA6: C9 3A     CMP #$3A
C - - - - - 0x018CB8 06:8CA8: F0 0F     BEQ bra_8CB9_RTS
C - - - - - 0x018CBA 06:8CAA: A0 05     LDY #$05
C - - - - - 0x018CBC 06:8CAC: 20 33 F7  JSR sub_0x01F743
C - - - - - 0x018CBF 06:8CAF: B0 03     BCS bra_8CB4
C - - - - - 0x018CC1 06:8CB1: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis
bra_8CB4:
- - - - - - 0x018CC4 06:8CB4: A9 00     LDA #$00
- - - - - - 0x018CC6 06:8CB6: 9D 00 03  STA ram_obj_flags,X
bra_8CB9_RTS:
- - - - - - 0x018CC9 06:8CB9: 60        RTS



ofs_005_8CBA_0A_octopus:
; moves up and down, shoots 2 small rocks 0A
C - - J - - 0x018CCA 06:8CBA: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x018CCD 06:8CBD: 29 0F     AND #$0F
C - - - - - 0x018CCF 06:8CBF: D0 15     BNE bra_8CD6
C - - - - - 0x018CD1 06:8CC1: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x018CD4 06:8CC4: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018CD7 06:8CC7: A9 01     LDA #$01
C - - - - - 0x018CD9 06:8CC9: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018CDC 06:8CCC: A9 30     LDA #$30
C - - - - - 0x018CDE 06:8CCE: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x018CE1 06:8CD1: A9 08     LDA #$08
C - - - - - 0x018CE3 06:8CD3: 9D D0 03  STA ram_direction,X
bra_8CD6:
C - - - - - 0x018CE6 06:8CD6: BD D0 03  LDA ram_direction,X
C - - - - - 0x018CE9 06:8CD9: 48        PHA
C - - - - - 0x018CEA 06:8CDA: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x018CED 06:8CDD: 20 89 FC  JSR sub_0x01FC99
C - - - - - 0x018CF0 06:8CE0: 68        PLA
C - - - - - 0x018CF1 06:8CE1: 29 0C     AND #$0C
C - - - - - 0x018CF3 06:8CE3: 1D D0 03  ORA ram_direction,X
C - - - - - 0x018CF6 06:8CE6: 9D D0 03  STA ram_direction,X
C - - - - - 0x018CF9 06:8CE9: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x018CFC 06:8CEC: BD D0 03  LDA ram_direction,X
C - - - - - 0x018CFF 06:8CEF: 29 08     AND #$08
C - - - - - 0x018D01 06:8CF1: D0 06     BNE bra_8CF9
C - - - - - 0x018D03 06:8CF3: 9D 48 04  STA ram_0448,X
C - - - - - 0x018D06 06:8CF6: 9D 18 04  STA ram_animation_cnt,X
bra_8CF9:
C - - - - - 0x018D09 06:8CF9: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018D0C 06:8CFC: D0 2C     BNE bra_8D2A
C - - - - - 0x018D0E 06:8CFE: BD D0 03  LDA ram_direction,X
C - - - - - 0x018D11 06:8D01: 49 0C     EOR #$0C
C - - - - - 0x018D13 06:8D03: 9D D0 03  STA ram_direction,X
C - - - - - 0x018D16 06:8D06: 29 08     AND #$08
C - - - - - 0x018D18 06:8D08: D0 11     BNE bra_8D1B
C - - - - - 0x018D1A 06:8D0A: A9 80     LDA #$80
C - - - - - 0x018D1C 06:8D0C: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018D1F 06:8D0F: A9 00     LDA #$00
C - - - - - 0x018D21 06:8D11: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018D24 06:8D14: A9 60     LDA #$60
C - - - - - 0x018D26 06:8D16: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x018D29 06:8D19: D0 0F     BNE bra_8D2A   ; jmp
bra_8D1B:
C - - - - - 0x018D2B 06:8D1B: A9 00     LDA #$00
C - - - - - 0x018D2D 06:8D1D: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018D30 06:8D20: A9 01     LDA #$01
C - - - - - 0x018D32 06:8D22: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018D35 06:8D25: A9 30     LDA #$30
C - - - - - 0x018D37 06:8D27: 9D 60 04  STA ram_0460_obj,X
bra_8D2A:
C - - - - - 0x018D3A 06:8D2A: BD 48 04  LDA ram_0448,X
C - - - - - 0x018D3D 06:8D2D: D0 07     BNE bra_8D36_RTS
C - - - - - 0x018D3F 06:8D2F: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x018D42 06:8D32: C9 01     CMP #$01
C - - - - - 0x018D44 06:8D34: F0 01     BEQ bra_8D37
bra_8D36_RTS:
C - - - - - 0x018D46 06:8D36: 60        RTS
bra_8D37:
C - - - - - 0x018D47 06:8D37: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x018D4A 06:8D3A: 10 FA     BPL bra_8D36_RTS
C - - - - - 0x018D4C 06:8D3C: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x018D4F 06:8D3F: B0 F5     BCS bra_8D36_RTS
C - - - - - 0x018D51 06:8D41: A9 87     LDA #$87
C - - - - - 0x018D53 06:8D43: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x018D56 06:8D46: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x018D59 06:8D49: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018D5C 06:8D4C: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x018D5F 06:8D4F: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x018D62 06:8D52: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018D65 06:8D55: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x018D68 06:8D58: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x018D6B 06:8D5B: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x018D6E 06:8D5E: A9 41     LDA #$41
C - - - - - 0x018D70 06:8D60: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018D73 06:8D63: A9 01     LDA #$01
C - - - - - 0x018D75 06:8D65: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x018D78 06:8D68: A9 0B     LDA #con_obj_id_projectile_octopus
C - - - - - 0x018D7A 06:8D6A: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018D7D 06:8D6D: BD D0 03  LDA ram_direction,X
C - - - - - 0x018D80 06:8D70: 29 03     AND #$03
C - - - - - 0x018D82 06:8D72: 99 D0 03  STA ram_direction,Y
C - - - - - 0x018D85 06:8D75: 86 00     STX ram_0000
C - - - - - 0x018D87 06:8D77: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x018D8A 06:8D7A: AA        TAX
C - - - - - 0x018D8B 06:8D7B: BD B7 8D  LDA tbl_8DB7_spd_X_lo,X
C - - - - - 0x018D8E 06:8D7E: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x018D91 06:8D81: BD B9 8D  LDA tbl_8DB9_spd_X_hi,X
C - - - - - 0x018D94 06:8D84: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x018D97 06:8D87: BD BB 8D  LDA tbl_8DBB_spd_Y_lo,X
C - - - - - 0x018D9A 06:8D8A: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x018D9D 06:8D8D: BD BD 8D  LDA tbl_8DBD_spd_Y_hi,X
C - - - - - 0x018DA0 06:8D90: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x018DA3 06:8D93: B9 D0 03  LDA ram_direction,Y
C - - - - - 0x018DA6 06:8D96: 29 01     AND #$01
C - - - - - 0x018DA8 06:8D98: AA        TAX
C - - - - - 0x018DA9 06:8D99: B9 30 03  LDA ram_pos_X_lo,Y
C - - - - - 0x018DAC 06:8D9C: 18        CLC
C - - - - - 0x018DAD 06:8D9D: 7D C1 8D  ADC tbl_8DC1_pos_X_lo,X
C - - - - - 0x018DB0 06:8DA0: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018DB3 06:8DA3: B9 40 03  LDA ram_pos_X_hi,Y
C - - - - - 0x018DB6 06:8DA6: 7D C3 8D  ADC tbl_8DC3_pos_X_hi,X
C - - - - - 0x018DB9 06:8DA9: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x018DBC 06:8DAC: A6 00     LDX ram_0000
C - - - - - 0x018DBE 06:8DAE: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x018DC1 06:8DB1: 49 01     EOR #$01
C - - - - - 0x018DC3 06:8DB3: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x018DC6 06:8DB6: 60        RTS



tbl_8DB7_spd_X_lo:
- D 0 - - - 0x018DC7 06:8DB7: DF        .byte < $00DF   ; 
- D 0 - - - 0x018DC8 06:8DB8: 4F        .byte < $004F   ; 

tbl_8DB9_spd_X_hi:
- D 0 - - - 0x018DC9 06:8DB9: 00        .byte > $00DF   ; 
- D 0 - - - 0x018DCA 06:8DBA: 00        .byte > $004F   ; 



tbl_8DBB_spd_Y_lo:
- D 0 - - - 0x018DCB 06:8DBB: DF        .byte < $00DF   ; 
- D 0 - - - 0x018DCC 06:8DBC: 3C        .byte < $013C   ; 

tbl_8DBD_spd_Y_hi:
- D 0 - - - 0x018DCD 06:8DBD: 00        .byte > $00DF   ; 
- D 0 - - - 0x018DCE 06:8DBE: 01        .byte > $013C   ; 


; bzk garbage
- - - - - - 0x018DCF 06:8DBF: 41        .byte $41   ; 
- - - - - - 0x018DD0 06:8DC0: 81        .byte $81   ; 



tbl_8DC1_pos_X_lo:
- D 0 - - - 0x018DD1 06:8DC1: F0        .byte < $FFF0   ; 
- D 0 - - - 0x018DD2 06:8DC2: 10        .byte < $0010   ; 

tbl_8DC3_pos_X_hi:
- D 0 - - - 0x018DD3 06:8DC3: FF        .byte > $FFF0   ; 
- D 0 - - - 0x018DD4 06:8DC4: 00        .byte > $0010   ; 



ofs_005_8DC5_0B_projectile_octopus:
; projectile made by octopus 0A (purple small rocks)
C - - J - - 0x018DD5 06:8DC5: 20 11 F9  JSR sub_0x01F921
C - - - - - 0x018DD8 06:8DC8: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis



ofs_005_8DCB_3C_spawner_volcano_bottom:
; object constantly spawns 3 44, facing up
ofs_005_8DCB_43_spawner_volcano_top:
; object constantly spawns 3 44, facing down
C - - J - - 0x018DDB 06:8DCB: A9 00     LDA #$00
C - - - - - 0x018DDD 06:8DCD: 85 00     STA ram_0000
C - - - - - 0x018DDF 06:8DCF: A0 0F     LDY #$0F
bra_8DD1_loop:
C - - - - - 0x018DE1 06:8DD1: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x018DE4 06:8DD4: F0 15     BEQ bra_8DEB
C - - - - - 0x018DE6 06:8DD6: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x018DE9 06:8DD9: C9 5E     CMP #$5E
C - - - - - 0x018DEB 06:8DDB: D0 0E     BNE bra_8DEB
C - - - - - 0x018DED 06:8DDD: E6 00     INC ram_0000
C - - - - - 0x018DEF 06:8DDF: B9 18 04  LDA ram_animation_cnt,Y
C - - - - - 0x018DF2 06:8DE2: C9 03     CMP #$03
C - - - - - 0x018DF4 06:8DE4: D0 05     BNE bra_8DEB
C - - - - - 0x018DF6 06:8DE6: A9 00     LDA #$00
C - - - - - 0x018DF8 06:8DE8: 99 48 04  STA ram_0448,Y
bra_8DEB:
C - - - - - 0x018DFB 06:8DEB: 88        DEY
C - - - - - 0x018DFC 06:8DEC: C0 02     CPY #$02
C - - - - - 0x018DFE 06:8DEE: D0 E1     BNE bra_8DD1_loop
C - - - - - 0x018E00 06:8DF0: A5 00     LDA ram_0000
C - - - - - 0x018E02 06:8DF2: D0 07     BNE bra_8DFB_RTS
C - - - - - 0x018E04 06:8DF4: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x018E07 06:8DF7: C9 40     CMP #$40
C - - - - - 0x018E09 06:8DF9: 90 01     BCC bra_8DFC
bra_8DFB_RTS:
C - - - - - 0x018E0B 06:8DFB: 60        RTS
bra_8DFC:
C - - - - - 0x018E0C 06:8DFC: A9 23     LDA #con_sfx_23
C - - - - - 0x018E0E 06:8DFE: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x018E11 06:8E01: A9 02     LDA #$02
C - - - - - 0x018E13 06:8E03: 85 0F     STA ram_000F
C - - - - - 0x018E15 06:8E05: 86 0E     STX ram_000E
C - - - - - 0x018E17 06:8E07: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x018E1A 06:8E0A: 29 01     AND #$01
C - - - - - 0x018E1C 06:8E0C: 85 0D     STA ram_000D    ; 00 if 3C, 01 if 43
bra_8E0E_loop:
C - - - - - 0x018E1E 06:8E0E: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x018E21 06:8E11: B0 E8     BCS bra_8DFB_RTS
C - - - - - 0x018E23 06:8E13: A9 5E     LDA #$5E
C - - - - - 0x018E25 06:8E15: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x018E28 06:8E18: A9 44     LDA #con_obj_id_projectile_volcano
C - - - - - 0x018E2A 06:8E1A: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018E2D 06:8E1D: A9 40     LDA #$40
C - - - - - 0x018E2F 06:8E1F: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018E32 06:8E22: A9 01     LDA #$01
C - - - - - 0x018E34 06:8E24: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x018E37 06:8E27: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018E3A 06:8E2A: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x018E3D 06:8E2D: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x018E40 06:8E30: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x018E43 06:8E33: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x018E46 06:8E36: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018E49 06:8E39: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x018E4C 06:8E3C: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x018E4F 06:8E3F: A9 BE     LDA #< $01BE
C - - - - - 0x018E51 06:8E41: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x018E54 06:8E44: A9 01     LDA #> $01BE
C - - - - - 0x018E56 06:8E46: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x018E59 06:8E49: A6 0D     LDX ram_000D    ; 00 if 3C, 01 if 43
C - - - - - 0x018E5B 06:8E4B: BD 7B 8E  LDA tbl_8E7B,X
C - - - - - 0x018E5E 06:8E4E: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x018E61 06:8E51: A6 0F     LDX ram_000F
C - - - - - 0x018E63 06:8E53: BD 7D 8E  LDA tbl_8E7D_direction,X
C - - - - - 0x018E66 06:8E56: 99 D0 03  STA ram_direction,Y
C - - - - - 0x018E69 06:8E59: A5 0D     LDA ram_000D    ; 00 if 3C, 01 if 43
C - - - - - 0x018E6B 06:8E5B: F0 03     BEQ bra_8E60
; if 43 volcano
C - - - - - 0x018E6D 06:8E5D: E8        INX
C - - - - - 0x018E6E 06:8E5E: E8        INX
C - - - - - 0x018E6F 06:8E5F: E8        INX
bra_8E60:
C - - - - - 0x018E70 06:8E60: BD 80 8E  LDA tbl_8E80_spd_X_lo,X
C - - - - - 0x018E73 06:8E63: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x018E76 06:8E66: BD 86 8E  LDA tbl_8E86_spd_X_hi,X
C - - - - - 0x018E79 06:8E69: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x018E7C 06:8E6C: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x018E7F 06:8E6F: 29 FB     AND #$FB
C - - - - - 0x018E81 06:8E71: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x018E84 06:8E74: A6 0E     LDX ram_000E
C - - - - - 0x018E86 06:8E76: C6 0F     DEC ram_000F
C - - - - - 0x018E88 06:8E78: 10 94     BPL bra_8E0E_loop
C - - - - - 0x018E8A 06:8E7A: 60        RTS



tbl_8E7B:
- D 0 - - - 0x018E8B 06:8E7B: 80        .byte $80   ; 3C
- D 0 - - - 0x018E8C 06:8E7C: 40        .byte $40   ; 43

tbl_8E7D_direction:
- D 0 - - - 0x018E8D 06:8E7D: 02        .byte $02   ; 00
- D 0 - - - 0x018E8E 06:8E7E: 00        .byte $00   ; 01
- D 0 - - - 0x018E8F 06:8E7F: 01        .byte $01   ; 02



tbl_8E80_spd_X_lo:
- D 0 - - - 0x018E90 06:8E80: 6F        .byte < $006F   ; 
- D 0 - - - 0x018E91 06:8E81: 00        .byte < $0000   ; 
- D 0 - - - 0x018E92 06:8E82: 6F        .byte < $006F   ; 

- D 0 - - - 0x018E93 06:8E83: DE        .byte < $00DE   ; 
- D 0 - - - 0x018E94 06:8E84: 00        .byte < $0000   ; 
- D 0 - - - 0x018E95 06:8E85: DE        .byte < $00DE   ; 

tbl_8E86_spd_X_hi:
- D 0 - - - 0x018E96 06:8E86: 00        .byte > $006F   ; 
- D 0 - - - 0x018E97 06:8E87: 00        .byte > $0000   ; 
- D 0 - - - 0x018E98 06:8E88: 00        .byte > $006F   ; 

- D 0 - - - 0x018E99 06:8E89: 00        .byte > $00DE   ; 
- D 0 - - - 0x018E9A 06:8E8A: 00        .byte > $0000   ; 
- D 0 - - - 0x018E9B 06:8E8B: 00        .byte > $00DE   ; 



ofs_005_8E8C_44_projectile_volcano:
; spawns from 3C and 43
C - - J - - 0x018E9C 06:8E8C: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x018E9F 06:8E8F: C9 14     CMP #$14
C - - - - - 0x018EA1 06:8E91: F0 39     BEQ bra_8ECC_RTS
C - - - - - 0x018EA3 06:8E93: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x018EA6 06:8E96: 29 0F     AND #$0F
C - - - - - 0x018EA8 06:8E98: D0 33     BNE bra_8ECD
C - - - - - 0x018EAA 06:8E9A: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018EAD 06:8E9D: D0 1E     BNE bra_8EBD
C - - - - - 0x018EAF 06:8E9F: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x018EB2 06:8EA2: A9 06     LDA #$06
C - - - - - 0x018EB4 06:8EA4: 9D D0 03  STA ram_direction,X
C - - - - - 0x018EB7 06:8EA7: A9 00     LDA #$00
C - - - - - 0x018EB9 06:8EA9: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x018EBC 06:8EAC: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x018EBF 06:8EAF: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x018EC2 06:8EB2: A9 33     LDA #$33
C - - - - - 0x018EC4 06:8EB4: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x018EC7 06:8EB7: A9 0A     LDA #$0A
C - - - - - 0x018EC9 06:8EB9: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x018ECC 06:8EBC: 60        RTS
bra_8EBD:
sub_8EBD:
C - - - - - 0x018ECD 06:8EBD: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x018ED0 06:8EC0: A0 00     LDY #$00
C - - - - - 0x018ED2 06:8EC2: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x018ED5 06:8EC5: 90 05     BCC bra_8ECC_RTS
C - - - - - 0x018ED7 06:8EC7: A9 14     LDA #$14
C - - - - - 0x018ED9 06:8EC9: 20 45 FC  JSR sub_0x01FC55
bra_8ECC_RTS:
C - - - - - 0x018EDC 06:8ECC: 60        RTS
bra_8ECD:
C - - - - - 0x018EDD 06:8ECD: 20 BD 8E  JSR sub_8EBD
C - - - - - 0x018EE0 06:8ED0: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x018EE3 06:8ED3: D0 F7     BNE bra_8ECC_RTS
C - - - - - 0x018EE5 06:8ED5: BD D0 03  LDA ram_direction,X
C - - - - - 0x018EE8 06:8ED8: 49 03     EOR #$03
C - - - - - 0x018EEA 06:8EDA: 9D D0 03  STA ram_direction,X
C - - - - - 0x018EED 06:8EDD: A9 10     LDA #$10
C - - - - - 0x018EEF 06:8EDF: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x018EF2 06:8EE2: 60        RTS



ofs_005_8EE3_41_spawner_mini_fish:
; object constantly spawns mini fishes 4B, some sea plant
C - - J - - 0x018EF3 06:8EE3: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x018EF6 06:8EE6: 29 0F     AND #$0F
C - - - - - 0x018EF8 06:8EE8: D0 0A     BNE bra_8EF4
C - - - - - 0x018EFA 06:8EEA: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x018EFD 06:8EED: C9 40     CMP #$40
C - - - - - 0x018EFF 06:8EEF: B0 DB     BCS bra_8ECC_RTS
C - - - - - 0x018F01 06:8EF1: FE 00 03  INC ram_obj_flags,X
bra_8EF4:
C - - - - - 0x018F04 06:8EF4: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x018F07 06:8EF7: C9 0E     CMP #$0E
C - - - - - 0x018F09 06:8EF9: D0 D1     BNE bra_8ECC_RTS
C - - - - - 0x018F0B 06:8EFB: BD 48 04  LDA ram_0448,X
C - - - - - 0x018F0E 06:8EFE: D0 CC     BNE bra_8ECC_RTS
C - - - - - 0x018F10 06:8F00: FE 60 04  INC ram_0460_obj,X
C - - - - - 0x018F13 06:8F03: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x018F16 06:8F06: 29 01     AND #$01
C - - - - - 0x018F18 06:8F08: F0 C2     BEQ bra_8ECC_RTS
C - - - - - 0x018F1A 06:8F0A: A9 80     LDA #$80
C - - - - - 0x018F1C 06:8F0C: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x018F1F 06:8F0F: A9 01     LDA #$01
C - - - - - 0x018F21 06:8F11: 85 0F     STA ram_000F
C - - - - - 0x018F23 06:8F13: 86 0E     STX ram_000E
bra_8F15_loop:
C - - - - - 0x018F25 06:8F15: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x018F28 06:8F18: B0 B2     BCS bra_8ECC_RTS
C - - - - - 0x018F2A 06:8F1A: A9 33     LDA #$33
C - - - - - 0x018F2C 06:8F1C: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x018F2F 06:8F1F: A9 4B     LDA #con_obj_id_mini_fish_4
C - - - - - 0x018F31 06:8F21: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018F34 06:8F24: A9 61     LDA #$61
C - - - - - 0x018F36 06:8F26: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x018F39 06:8F29: A9 01     LDA #$01
C - - - - - 0x018F3B 06:8F2B: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x018F3E 06:8F2E: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x018F41 06:8F31: 38        SEC
C - - - - - 0x018F42 06:8F32: E9 08     SBC #$08
C - - - - - 0x018F44 06:8F34: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x018F47 06:8F37: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x018F4A 06:8F3A: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x018F4D 06:8F3D: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x018F50 06:8F40: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x018F53 06:8F43: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x018F56 06:8F46: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x018F59 06:8F49: A9 11     LDA #$11
C - - - - - 0x018F5B 06:8F4B: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x018F5E 06:8F4E: A9 01     LDA #$01
C - - - - - 0x018F60 06:8F50: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x018F63 06:8F53: A9 44     LDA #$44
C - - - - - 0x018F65 06:8F55: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x018F68 06:8F58: A9 00     LDA #$00
C - - - - - 0x018F6A 06:8F5A: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x018F6D 06:8F5D: A6 0F     LDX ram_000F
C - - - - - 0x018F6F 06:8F5F: BD 6C 8F  LDA tbl_8F6C_direction,X
C - - - - - 0x018F72 06:8F62: 99 D0 03  STA ram_direction,Y
C - - - - - 0x018F75 06:8F65: A6 0E     LDX ram_000E
C - - - - - 0x018F77 06:8F67: C6 0F     DEC ram_000F
C - - - - - 0x018F79 06:8F69: 10 AA     BPL bra_8F15_loop
C - - - - - 0x018F7B 06:8F6B: 60        RTS



tbl_8F6C_direction:
- D 0 - - - 0x018F7C 06:8F6C: 01        .byte $01   ; 00
- D 0 - - - 0x018F7D 06:8F6D: 02        .byte $02   ; 01



ofs_005_8F6E_4B_mini_fish_4:
; newborn minifish from 41 sea plant, transforms into 16 later
C - - J - - 0x018F7E 06:8F6E: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x018F81 06:8F71: 20 11 F9  JSR sub_0x01F921
C - - - - - 0x018F84 06:8F74: BD B0 03  LDA ram_spd_Y_hi,X
C - - - - - 0x018F87 06:8F77: 10 0F     BPL bra_8F88_RTS
C - - - - - 0x018F89 06:8F79: A9 00     LDA #$00
C - - - - - 0x018F8B 06:8F7B: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x018F8E 06:8F7E: A9 16     LDA #con_obj_id_mini_fish_1
C - - - - - 0x018F90 06:8F80: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x018F93 06:8F83: A9 81     LDA #$81
C - - - - - 0x018F95 06:8F85: 9D 00 03  STA ram_obj_flags,X
bra_8F88_RTS:
C - - - - - 0x018F98 06:8F88: 60        RTS



ofs_005_8F89_10_sea_urchin_1:
; created by a spawner 11
C - - J - - 0x018F99 06:8F89: A0 00     LDY #$00
C - - - - - 0x018F9B 06:8F8B: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x018F9E 06:8F8E: B0 06     BCS bra_8F96
C - - - - - 0x018FA0 06:8F90: A9 00     LDA #$00
C - - - - - 0x018FA2 06:8F92: 9D D0 03  STA ram_direction,X
C - - - - - 0x018FA5 06:8F95: 60        RTS
bra_8F96:
C - - - - - 0x018FA6 06:8F96: A5 42     LDA ram_0042
C - - - - - 0x018FA8 06:8F98: C9 90     CMP #$90
C - - - - - 0x018FAA 06:8F9A: D0 11     BNE bra_8FAD
C - - - - - 0x018FAC 06:8F9C: A5 43     LDA ram_0043
C - - - - - 0x018FAE 06:8F9E: C9 90     CMP #$90
C - - - - - 0x018FB0 06:8FA0: D0 0B     BNE bra_8FAD
C - - - - - 0x018FB2 06:8FA2: A9 14     LDA #$14
C - - - - - 0x018FB4 06:8FA4: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x018FB7 06:8FA7: A9 00     LDA #con_obj_id_00
C - - - - - 0x018FB9 06:8FA9: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x018FBC 06:8FAC: 60        RTS
bra_8FAD:
C - - - - - 0x018FBD 06:8FAD: BD D0 03  LDA ram_direction,X
C - - - - - 0x018FC0 06:8FB0: 29 03     AND #$03
C - - - - - 0x018FC2 06:8FB2: D0 03     BNE bra_8FB7
C - - - - - 0x018FC4 06:8FB4: 20 6F FC  JSR sub_0x01FC7F
bra_8FB7:
C - - - - - 0x018FC7 06:8FB7: A0 00     LDY #$00
C - - - - - 0x018FC9 06:8FB9: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x018FCC 06:8FBC: 90 08     BCC bra_8FC6_RTS
C - - - - - 0x018FCE 06:8FBE: BD D0 03  LDA ram_direction,X
C - - - - - 0x018FD1 06:8FC1: 49 03     EOR #$03
C - - - - - 0x018FD3 06:8FC3: 9D D0 03  STA ram_direction,X
bra_8FC6_RTS:
C - - - - - 0x018FD6 06:8FC6: 60        RTS



ofs_005_8FC7_11_spawner_sea_urchin:
; object constantly spawns sea urchins 10
C - - J - - 0x018FD7 06:8FC7: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x018FDA 06:8FCA: C9 60     CMP #$60
C - - - - - 0x018FDC 06:8FCC: B0 75     BCS bra_9043_RTS
C - - - - - 0x018FDE 06:8FCE: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x018FE1 06:8FD1: D0 6D     BNE bra_9040
C - - - - - 0x018FE3 06:8FD3: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x018FE6 06:8FD6: B0 63     BCS bra_903B
C - - - - - 0x018FE8 06:8FD8: A9 80     LDA #$80
C - - - - - 0x018FEA 06:8FDA: 99 00 03  STA ram_obj_flags,Y
C - - - - - 0x018FED 06:8FDD: A9 10     LDA #con_obj_id_sea_urchin_1
C - - - - - 0x018FEF 06:8FDF: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x018FF2 06:8FE2: A9 90     LDA #$90
C - - - - - 0x018FF4 06:8FE4: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x018FF7 06:8FE7: A9 23     LDA #$23
C - - - - - 0x018FF9 06:8FE9: 99 30 04  STA ram_0430_obj,Y
C - - - - - 0x018FFC 06:8FEC: A9 40     LDA #$40
C - - - - - 0x018FFE 06:8FEE: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x019001 06:8FF1: A9 01     LDA #$01
C - - - - - 0x019003 06:8FF3: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x019006 06:8FF6: A9 00     LDA #$00
C - - - - - 0x019008 06:8FF8: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01900B 06:8FFB: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01900E 06:8FFE: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x019011 06:9001: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x019014 06:9004: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x019017 06:9007: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01901A 06:900A: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01901D 06:900D: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x019020 06:9010: A9 C0     LDA #$C0
C - - - - - 0x019022 06:9012: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x019025 06:9015: A9 FF     LDA #$FF
C - - - - - 0x019027 06:9017: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x01902A 06:901A: A9 80     LDA #$80
C - - - - - 0x01902C 06:901C: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01902F 06:901F: A9 00     LDA #$00
C - - - - - 0x019031 06:9021: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x019034 06:9024: A9 00     LDA #$00
C - - - - - 0x019036 06:9026: 99 18 04  STA ram_animation_cnt,Y
C - - - - - 0x019039 06:9029: 99 48 04  STA ram_0448,Y
C - - - - - 0x01903C 06:902C: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01903F 06:902F: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x019042 06:9032: 99 70 04  STA ram_obj_timer,Y
C - - - - - 0x019045 06:9035: 99 80 04  STA ram_0480_obj,Y
C - - - - - 0x019048 06:9038: 99 90 04  STA ram_0490_obj,Y
bra_903B:
C - - - - - 0x01904B 06:903B: A9 81     LDA #$81
C - - - - - 0x01904D 06:903D: 9D 60 04  STA ram_0460_obj,X
bra_9040:
C - - - - - 0x019050 06:9040: DE 60 04  DEC ram_0460_obj,X
bra_9043_RTS:
C - - - - - 0x019053 06:9043: 60        RTS


; bzk garbage
- - - - - - 0x019054 06:9044: 41        .byte $41   ; 
- - - - - - 0x019055 06:9045: 81        .byte $81   ; 



ofs_005_9046_12_piranha_smart:
; swims back and forth, accelerates towards player position when notices
C - - J - - 0x019056 06:9046: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019059 06:9049: 29 0F     AND #$0F
C - - - - - 0x01905B 06:904B: C9 01     CMP #$01
C - - - - - 0x01905D 06:904D: F0 2F     BEQ bra_907E
C - - - - - 0x01905F 06:904F: C9 02     CMP #$02
C - - - - - 0x019061 06:9051: F0 36     BEQ bra_9089
C - - - - - 0x019063 06:9053: FE 60 04  INC ram_0460_obj,X
C - - - - - 0x019066 06:9056: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019069 06:9059: C9 80     CMP #$80
C - - - - - 0x01906B 06:905B: D0 0D     BNE bra_906A
C - - - - - 0x01906D 06:905D: A9 00     LDA #$00
C - - - - - 0x01906F 06:905F: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019072 06:9062: BD D0 03  LDA ram_direction,X
C - - - - - 0x019075 06:9065: 49 03     EOR #$03
C - - - - - 0x019077 06:9067: 9D D0 03  STA ram_direction,X
bra_906A:
C - - - - - 0x01907A 06:906A: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x01907D 06:906D: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x019080 06:9070: C9 40     CMP #$40
C - - - - - 0x019082 06:9072: B0 CF     BCS bra_9043_RTS
C - - - - - 0x019084 06:9074: 20 12 FD  JSR sub_0x01FD22
C - - - - - 0x019087 06:9077: C9 40     CMP #$40
C - - - - - 0x019089 06:9079: B0 C8     BCS bra_9043_RTS
C - - - - - 0x01908B 06:907B: FE 00 03  INC ram_obj_flags,X
bra_907E:
C - - - - - 0x01908E 06:907E: 20 4A FD  JSR sub_0x01FD5A
C - - - - - 0x019091 06:9081: A0 10     LDY #$10
C - - - - - 0x019093 06:9083: 20 E5 FD  JSR sub_0x01FDF5
C - - - - - 0x019096 06:9086: FE 00 03  INC ram_obj_flags,X
bra_9089:
C - - - - - 0x019099 06:9089: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x01909C 06:908C: 4C 00 FD  JMP loc_0x01FD10_move_object_Y_axis



ofs_005_908F_15_crab_naked:
; crab without a white helmet
ofs_005_908F_25_crab_helmet:
; crab with a white helmet
C - - J - - 0x01909F 06:908F: A0 00     LDY #$00
C - - - - - 0x0190A1 06:9091: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x0190A4 06:9094: B0 15     BCS bra_90AB
C - - - - - 0x0190A6 06:9096: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x0190A9 06:9099: 29 DF     AND #$DF
C - - - - - 0x0190AB 06:909B: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0190AE 06:909E: A9 00     LDA #$00
C - - - - - 0x0190B0 06:90A0: 9D D0 03  STA ram_direction,X
C - - - - - 0x0190B3 06:90A3: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0190B6 06:90A6: 09 01     ORA #$01
C - - - - - 0x0190B8 06:90A8: 4C 45 FC  JMP loc_0x01FC55
bra_90AB:
C - - - - - 0x0190BB 06:90AB: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0190BE 06:90AE: 29 01     AND #$01
C - - - - - 0x0190C0 06:90B0: D0 1E     BNE bra_90D0
C - - - - - 0x0190C2 06:90B2: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x0190C5 06:90B5: C9 15     CMP #con_obj_id_crab_naked
C - - - - - 0x0190C7 06:90B7: D0 17     BNE bra_90D0    ; if crab with helmet
; if naked crab
C - - - - - 0x0190C9 06:90B9: A5 42     LDA ram_0042
C - - - - - 0x0190CB 06:90BB: C9 90     CMP #$90
C - - - - - 0x0190CD 06:90BD: D0 11     BNE bra_90D0
C - - - - - 0x0190CF 06:90BF: A5 43     LDA ram_0043
C - - - - - 0x0190D1 06:90C1: C9 90     CMP #$90
C - - - - - 0x0190D3 06:90C3: D0 0B     BNE bra_90D0
- - - - - - 0x0190D5 06:90C5: A9 14     LDA #$14
- - - - - - 0x0190D7 06:90C7: 20 45 FC  JSR sub_0x01FC55
- - - - - - 0x0190DA 06:90CA: A9 00     LDA #con_obj_id_00
- - - - - - 0x0190DC 06:90CC: 9D 10 03  STA ram_obj_id,X
- - - - - - 0x0190DF 06:90CF: 60        RTS
bra_90D0:
C - - - - - 0x0190E0 06:90D0: BD D0 03  LDA ram_direction,X
C - - - - - 0x0190E3 06:90D3: 29 03     AND #$03
C - - - - - 0x0190E5 06:90D5: D0 03     BNE bra_90DA
C - - - - - 0x0190E7 06:90D7: 20 6F FC  JSR sub_0x01FC7F
bra_90DA:
C - - - - - 0x0190EA 06:90DA: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x0190ED 06:90DD: D0 17     BNE bra_90F6
C - - - - - 0x0190EF 06:90DF: A5 E4     LDA ram_random
C - - - - - 0x0190F1 06:90E1: 65 E5     ADC ram_random + $01
C - - - - - 0x0190F3 06:90E3: 29 01     AND #$01
C - - - - - 0x0190F5 06:90E5: 85 00     STA ram_0000
C - - - - - 0x0190F7 06:90E7: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x0190FA 06:90EA: 29 01     AND #$01
C - - - - - 0x0190FC 06:90EC: 0A        ASL
C - - - - - 0x0190FD 06:90ED: 05 00     ORA ram_0000
C - - - - - 0x0190FF 06:90EF: A8        TAY
C - - - - - 0x019100 06:90F0: B9 3B 91  LDA tbl_913B,Y
C - - - - - 0x019103 06:90F3: 9D 60 04  STA ram_0460_obj,X
bra_90F6:
C - - - - - 0x019106 06:90F6: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019109 06:90F9: 29 01     AND #$01
C - - - - - 0x01910B 06:90FB: D0 0F     BNE bra_910C
C - - - - - 0x01910D 06:90FD: A0 00     LDY #$00
C - - - - - 0x01910F 06:90FF: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x019112 06:9102: 90 08     BCC bra_910C
C - - - - - 0x019114 06:9104: BD D0 03  LDA ram_direction,X
C - - - - - 0x019117 06:9107: 49 03     EOR #$03
C - - - - - 0x019119 06:9109: 9D D0 03  STA ram_direction,X
bra_910C:
C - - - - - 0x01911C 06:910C: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01911F 06:910F: D0 29     BNE bra_913A_RTS
C - - - - - 0x019121 06:9111: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019124 06:9114: 49 01     EOR #$01
C - - - - - 0x019126 06:9116: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019129 06:9119: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x01912C 06:911C: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x01912F 06:911F: 29 DF     AND #$DF
C - - - - - 0x019131 06:9121: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x019134 06:9124: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x019137 06:9127: C9 15     CMP #con_obj_id_crab_naked
C - - - - - 0x019139 06:9129: D0 0F     BNE bra_913A_RTS
C - - - - - 0x01913B 06:912B: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01913E 06:912E: 29 01     AND #$01
C - - - - - 0x019140 06:9130: D0 08     BNE bra_913A_RTS
C - - - - - 0x019142 06:9132: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x019145 06:9135: 09 20     ORA #$20
C - - - - - 0x019147 06:9137: 9D C0 03  STA ram_03C0_obj,X
bra_913A_RTS:
C - - - - - 0x01914A 06:913A: 60        RTS



tbl_913B:
; 00
- D 0 - - - 0x01914B 06:913B: 60        .byte $60   ; 00
- D 0 - - - 0x01914C 06:913C: 80        .byte $80   ; 01
; 01
- D 0 - - - 0x01914D 06:913D: 40        .byte $40   ; 00
- D 0 - - - 0x01914E 06:913E: 80        .byte $80   ; 01



ofs_005_913F_17:
ofs_005_913F_18:
ofs_005_913F_19:
ofs_005_913F_1A:
ofs_005_913F_1B:
- - - - - - 0x01914F 06:913F: BD 00 03  LDA ram_obj_flags,X
- - - - - - 0x019152 06:9142: 29 0F     AND #$0F
- - - - - - 0x019154 06:9144: D0 2A     BNE bra_9170
- - - - - - 0x019156 06:9146: FE 00 03  INC ram_obj_flags,X
- - - - - - 0x019159 06:9149: BD 10 03  LDA ram_obj_id,X    ; 17-1B
- - - - - - 0x01915C 06:914C: A8        TAY
- - - - - - 0x01915D 06:914D: B9 79 92  LDA tbl_9290_direction - $17,Y
- - - - - - 0x019160 06:9150: 9D D0 03  STA ram_direction,X
- - - - - - 0x019163 06:9153: B9 7E 92  LDA tbl_9295_spd_X_lo - $17,Y
- - - - - - 0x019166 06:9156: 9D 80 03  STA ram_spd_X_lo,X
- - - - - - 0x019169 06:9159: B9 83 92  LDA tbl_929A_spd_X_hi - $17,Y
- - - - - - 0x01916C 06:915C: 9D 90 03  STA ram_spd_X_hi,X
- - - - - - 0x01916F 06:915F: B9 88 92  LDA tbl_929F_spd_Y_lo - $17,Y
- - - - - - 0x019172 06:9162: 9D A0 03  STA ram_spd_Y_lo,X
- - - - - - 0x019175 06:9165: B9 8D 92  LDA tbl_92A4_spd_Y_hi - $17,Y
- - - - - - 0x019178 06:9168: 9D B0 03  STA ram_spd_Y_hi,X
- - - - - - 0x01917B 06:916B: A9 20     LDA #$20
- - - - - - 0x01917D 06:916D: 9D 60 04  STA ram_0460_obj,X
bra_9170:
- - - - - - 0x019180 06:9170: BD 60 04  LDA ram_0460_obj,X
- - - - - - 0x019183 06:9173: D0 44     BNE bra_91B9
- - - - - - 0x019185 06:9175: 20 33 FD  JSR sub_0x01FD43
- - - - - - 0x019188 06:9178: C9 20     CMP #$20
- - - - - - 0x01918A 06:917A: B0 0F     BCS bra_918B
- - - - - - 0x01918C 06:917C: 20 12 FD  JSR sub_0x01FD22
- - - - - - 0x01918F 06:917F: C9 20     CMP #$20
- - - - - - 0x019191 06:9181: B0 08     BCS bra_918B
- - - - - - 0x019193 06:9183: BD D0 03  LDA ram_direction,X
- - - - - - 0x019196 06:9186: 29 04     AND #$04
- - - - - - 0x019198 06:9188: D0 2A     BNE bra_91B4
- - - - - - 0x01919A 06:918A: 60        RTS
bra_918B:
- - - - - - 0x01919B 06:918B: BD D0 03  LDA ram_direction,X
- - - - - - 0x01919E 06:918E: 29 08     AND #$08
- - - - - - 0x0191A0 06:9190: D0 22     BNE bra_91B4
- - - - - - 0x0191A2 06:9192: BD 70 04  LDA ram_obj_timer,X
- - - - - - 0x0191A5 06:9195: D0 17     BNE bra_91AE
- - - - - - 0x0191A7 06:9197: BD 00 04  LDA ram_0400_obj,X
- - - - - - 0x0191AA 06:919A: 49 40     EOR #$40
- - - - - - 0x0191AC 06:919C: 9D 00 04  STA ram_0400_obj,X
- - - - - - 0x0191AF 06:919F: A5 E4     LDA ram_random
- - - - - - 0x0191B1 06:91A1: 65 E6     ADC ram_random + $02
- - - - - - 0x0191B3 06:91A3: 85 E6     STA ram_random + $02
- - - - - - 0x0191B5 06:91A5: 29 01     AND #$01
- - - - - - 0x0191B7 06:91A7: A8        TAY
- - - - - - 0x0191B8 06:91A8: B9 8E 92  LDA tbl_928E,Y
- - - - - - 0x0191BB 06:91AB: 9D 70 04  STA ram_obj_timer,X
bra_91AE:
- - - - - - 0x0191BE 06:91AE: DE 70 04  DEC ram_obj_timer,X
- - - - - - 0x0191C1 06:91B1: 4C D8 91  JMP loc_91D8_RTS
bra_91B4:
- - - - - - 0x0191C4 06:91B4: A9 20     LDA #$20
- - - - - - 0x0191C6 06:91B6: 9D 60 04  STA ram_0460_obj,X
bra_91B9:
- - - - - - 0x0191C9 06:91B9: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
- - - - - - 0x0191CC 06:91BC: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
- - - - - - 0x0191CF 06:91BF: DE 60 04  DEC ram_0460_obj,X
- - - - - - 0x0191D2 06:91C2: D0 14     BNE bra_91D8_RTS
- - - - - - 0x0191D4 06:91C4: BD D0 03  LDA ram_direction,X
- - - - - - 0x0191D7 06:91C7: 49 0C     EOR #$0C
- - - - - - 0x0191D9 06:91C9: 9D D0 03  STA ram_direction,X
- - - - - - 0x0191DC 06:91CC: 29 03     AND #$03
- - - - - - 0x0191DE 06:91CE: F0 08     BEQ bra_91D8_RTS
- - - - - - 0x0191E0 06:91D0: BD D0 03  LDA ram_direction,X
- - - - - - 0x0191E3 06:91D3: 49 03     EOR #$03
- - - - - - 0x0191E5 06:91D5: 9D D0 03  STA ram_direction,X
bra_91D8_RTS:
loc_91D8_RTS:
C - - - - - 0x0191E8 06:91D8: 60        RTS



ofs_005_91D9_16_mini_fish_1:
; a couple of times tries to follow a player,
; then give ups and keeps swimming away
; this is basically a smart mini fish, others do a fixed swim pattern
C - - J - - 0x0191E9 06:91D9: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x0191EC 06:91DC: 29 0F     AND #$0F
C - - - - - 0x0191EE 06:91DE: D0 11     BNE bra_91F1
- - - - - - 0x0191F0 06:91E0: 20 33 FD  JSR sub_0x01FD43
- - - - - - 0x0191F3 06:91E3: C9 40     CMP #$40
- - - - - - 0x0191F5 06:91E5: B0 F1     BCS bra_91D8_RTS
- - - - - - 0x0191F7 06:91E7: 20 12 FD  JSR sub_0x01FD22
- - - - - - 0x0191FA 06:91EA: C9 40     CMP #$40
- - - - - - 0x0191FC 06:91EC: B0 EA     BCS bra_91D8_RTS
- - - - - - 0x0191FE 06:91EE: FE 00 03  INC ram_obj_flags,X
bra_91F1:
C - - - - - 0x019201 06:91F1: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019204 06:91F4: C9 FF     CMP #$FF
C - - - - - 0x019206 06:91F6: F0 2B     BEQ bra_9223
C - - - - - 0x019208 06:91F8: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01920B 06:91FB: 29 0F     AND #$0F
C - - - - - 0x01920D 06:91FD: D0 08     BNE bra_9207
C - - - - - 0x01920F 06:91FF: 20 4A FD  JSR sub_0x01FD5A
C - - - - - 0x019212 06:9202: A0 08     LDY #$08
C - - - - - 0x019214 06:9204: 20 E5 FD  JSR sub_0x01FDF5
bra_9207:
C - - - - - 0x019217 06:9207: FE 60 04  INC ram_0460_obj,X
C - - - - - 0x01921A 06:920A: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01921D 06:920D: C9 FF     CMP #$FF
C - - - - - 0x01921F 06:920F: D0 12     BNE bra_9223
C - - - - - 0x019221 06:9211: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019224 06:9214: 29 40     AND #$40
C - - - - - 0x019226 06:9216: F0 04     BEQ bra_921C
C - - - - - 0x019228 06:9218: A9 06     LDA #$06
C - - - - - 0x01922A 06:921A: D0 02     BNE bra_921E   ; jmp
bra_921C:
C - - - - - 0x01922C 06:921C: A9 0A     LDA #$0A
bra_921E:
C - - - - - 0x01922E 06:921E: A0 08     LDY #$08
C - - - - - 0x019230 06:9220: 20 E5 FD  JSR sub_0x01FDF5
bra_9223:
sub_9223:
C - - - - - 0x019233 06:9223: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019236 06:9226: 4C 00 FD  JMP loc_0x01FD10_move_object_Y_axis



ofs_005_9229_1D_mini_fish_2:
; spawns from 1C sleeping fish and goes back to its mouth
; transforms into 16 if player is close enough
C - - J - - 0x019239 06:9229: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01923C 06:922C: D0 37     BNE bra_9265
C - - - - - 0x01923E 06:922E: BD D0 03  LDA ram_direction,X
C - - - - - 0x019241 06:9231: 29 08     AND #$08
C - - - - - 0x019243 06:9233: D0 04     BNE bra_9239
C - - - - - 0x019245 06:9235: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019248 06:9238: 60        RTS
bra_9239:
C - - - - - 0x019249 06:9239: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01924C 06:923C: F0 1A     BEQ bra_9258
C - - - - - 0x01924E 06:923E: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x019251 06:9241: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x019254 06:9244: C9 40     CMP #$40
C - - - - - 0x019256 06:9246: B0 90     BCS bra_91D8_RTS
C - - - - - 0x019258 06:9248: 20 12 FD  JSR sub_0x01FD22
C - - - - - 0x01925B 06:924B: C9 40     CMP #$40
C - - - - - 0x01925D 06:924D: B0 89     BCS bra_91D8_RTS
C - - - - - 0x01925F 06:924F: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x019262 06:9252: A9 16     LDA #con_obj_id_mini_fish_1
C - - - - - 0x019264 06:9254: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019267 06:9257: 60        RTS
bra_9258:
C - - - - - 0x019268 06:9258: BD D0 03  LDA ram_direction,X
C - - - - - 0x01926B 06:925B: 49 0F     EOR #$0F
C - - - - - 0x01926D 06:925D: 9D D0 03  STA ram_direction,X
C - - - - - 0x019270 06:9260: A9 20     LDA #$20
C - - - - - 0x019272 06:9262: 9D 60 04  STA ram_0460_obj,X
bra_9265:
C - - - - - 0x019275 06:9265: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019278 06:9268: 48        PHA
C - - - - - 0x019279 06:9269: 20 23 92  JSR sub_9223
C - - - - - 0x01927C 06:926C: 68        PLA
C - - - - - 0x01927D 06:926D: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019280 06:9270: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019283 06:9273: 60        RTS



ofs_005_9274_1F_mini_fish_3:
; spawns from 1E mother fish
; swims diagonally in 1 of 4 directions
; transforms into 16 if player is close enough
C - - J - - 0x019284 06:9274: 20 23 92  JSR sub_9223
C - - - - - 0x019287 06:9277: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x01928A 06:927A: C9 20     CMP #$20
C - - - - - 0x01928C 06:927C: B0 0F     BCS bra_928D_RTS
C - - - - - 0x01928E 06:927E: 20 12 FD  JSR sub_0x01FD22
C - - - - - 0x019291 06:9281: C9 20     CMP #$20
C - - - - - 0x019293 06:9283: B0 08     BCS bra_928D_RTS
C - - - - - 0x019295 06:9285: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x019298 06:9288: A9 16     LDA #con_obj_id_mini_fish_1
C - - - - - 0x01929A 06:928A: 9D 10 03  STA ram_obj_id,X
bra_928D_RTS:
C - - - - - 0x01929D 06:928D: 60        RTS



tbl_928E:
- - - - - - 0x01929E 06:928E: 41        .byte $41   ; 
- - - - - - 0x01929F 06:928F: 82        .byte $82   ; 




tbl_9290_direction:
- - - - - - 0x0192A0 06:9290: 0A        .byte $0A   ; 17
- - - - - - 0x0192A1 06:9291: 0A        .byte $0A   ; 18
- - - - - - 0x0192A2 06:9292: 08        .byte $08   ; 19
- - - - - - 0x0192A3 06:9293: 09        .byte $09   ; 1A
- - - - - - 0x0192A4 06:9294: 09        .byte $09   ; 1B

tbl_9295_spd_X_lo:
- - - - - - 0x0192A5 06:9295: DD        .byte < $00DD   ; 17
- - - - - - 0x0192A6 06:9296: 80        .byte < $0080   ; 18
- - - - - - 0x0192A7 06:9297: 00        .byte < $0000   ; 19
- - - - - - 0x0192A8 06:9298: 80        .byte < $0080   ; 1A
- - - - - - 0x0192A9 06:9299: DD        .byte < $00DD   ; 1B

tbl_929A_spd_X_hi:
- - - - - - 0x0192AA 06:929A: 00        .byte > $00DD   ; 17
- - - - - - 0x0192AB 06:929B: 00        .byte > $0080   ; 18
- - - - - - 0x0192AC 06:929C: 00        .byte > $0000   ; 19
- - - - - - 0x0192AD 06:929D: 00        .byte > $0080   ; 1A
- - - - - - 0x0192AE 06:929E: 00        .byte > $00DD   ; 1B

tbl_929F_spd_Y_lo:
- - - - - - 0x0192AF 06:929F: 80        .byte < $0080   ; 17
- - - - - - 0x0192B0 06:92A0: DD        .byte < $00DD   ; 18
- - - - - - 0x0192B1 06:92A1: 00        .byte < $0100   ; 19
- - - - - - 0x0192B2 06:92A2: DD        .byte < $00DD   ; 1A
- - - - - - 0x0192B3 06:92A3: 80        .byte < $0080   ; 1B

tbl_92A4_spd_Y_hi:
- - - - - - 0x0192B4 06:92A4: 00        .byte > $0080   ; 17
- - - - - - 0x0192B5 06:92A5: 00        .byte > $00DD   ; 18
- - - - - - 0x0192B6 06:92A6: 01        .byte > $0100   ; 19
- - - - - - 0x0192B7 06:92A7: 00        .byte > $00DD   ; 1A
- - - - - - 0x0192B8 06:92A8: 00        .byte > $0080   ; 1B



ofs_005_92A9_1C_sleeping_fish:
; spawns spawns 3 1D mini fishes from its mouth,
; which return to its mouth later if not disturbed
C - - J - - 0x0192B9 06:92A9: BD 48 04  LDA ram_0448,X
C - - - - - 0x0192BC 06:92AC: 1D 18 04  ORA ram_animation_cnt,X
C - - - - - 0x0192BF 06:92AF: D0 DC     BNE bra_928D_RTS
C - - - - - 0x0192C1 06:92B1: A0 0F     LDY #$0F
bra_92B3_loop:
C - - - - - 0x0192C3 06:92B3: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x0192C6 06:92B6: 10 07     BPL bra_92BF
C - - - - - 0x0192C8 06:92B8: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x0192CB 06:92BB: C9 33     CMP #$33
C - - - - - 0x0192CD 06:92BD: F0 CE     BEQ bra_928D_RTS
bra_92BF:
C - - - - - 0x0192CF 06:92BF: 88        DEY
C - - - - - 0x0192D0 06:92C0: C0 02     CPY #$02
C - - - - - 0x0192D2 06:92C2: D0 EF     BNE bra_92B3_loop
C - - - - - 0x0192D4 06:92C4: 86 00     STX ram_0000
C - - - - - 0x0192D6 06:92C6: A9 01     LDA #$01
C - - - - - 0x0192D8 06:92C8: 85 05     STA ram_0005
C - - - - - 0x0192DA 06:92CA: A0 00     LDY #$00
C - - - - - 0x0192DC 06:92CC: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0192DF 06:92CF: 29 40     AND #$40
C - - - - - 0x0192E1 06:92D1: D0 04     BNE bra_92D7
C - - - - - 0x0192E3 06:92D3: A0 02     LDY #$02
C - - - - - 0x0192E5 06:92D5: 84 05     STY ram_0005
bra_92D7:
C - - - - - 0x0192E7 06:92D7: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x0192EA 06:92DA: 18        CLC
C - - - - - 0x0192EB 06:92DB: 79 63 93  ADC tbl_9363_pos_X,Y
C - - - - - 0x0192EE 06:92DE: 85 01     STA ram_0001
C - - - - - 0x0192F0 06:92E0: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x0192F3 06:92E3: 79 64 93  ADC tbl_9363_pos_X + $01,Y
C - - - - - 0x0192F6 06:92E6: 85 02     STA ram_0002
C - - - - - 0x0192F8 06:92E8: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0192FB 06:92EB: 38        SEC
C - - - - - 0x0192FC 06:92EC: E9 06     SBC #$06
C - - - - - 0x0192FE 06:92EE: 85 03     STA ram_0003
C - - - - - 0x019300 06:92F0: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x019303 06:92F3: 85 04     STA ram_0004
C - - - - - 0x019305 06:92F5: A0 02     LDY #$02
bra_92F7_loop:
C - - - - - 0x019307 06:92F7: 20 44 FE  JSR sub_0x01FE54
C - - - - - 0x01930A 06:92FA: B0 5E     BCS bra_935A
C - - - - - 0x01930C 06:92FC: A9 80     LDA #$80
C - - - - - 0x01930E 06:92FE: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019311 06:9301: A9 90     LDA #$90
C - - - - - 0x019313 06:9303: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019316 06:9306: A9 1D     LDA #con_obj_id_mini_fish_2
C - - - - - 0x019318 06:9308: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01931B 06:930B: A9 61     LDA #$61
C - - - - - 0x01931D 06:930D: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x019320 06:9310: A9 01     LDA #$01
C - - - - - 0x019322 06:9312: 9D F0 03  STA ram_03F0_obj,X
C - - - - - 0x019325 06:9315: A9 33     LDA #$33
C - - - - - 0x019327 06:9317: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01932A 06:931A: A5 05     LDA ram_0005
C - - - - - 0x01932C 06:931C: 09 08     ORA #$08
C - - - - - 0x01932E 06:931E: 9D D0 03  STA ram_direction,X
C - - - - - 0x019331 06:9321: B9 5D 93  LDA tbl_935D_spd_Y_lo,Y
C - - - - - 0x019334 06:9324: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x019337 06:9327: B9 60 93  LDA tbl_9360_spd_X_lo,Y
C - - - - - 0x01933A 06:932A: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01933D 06:932D: A5 01     LDA ram_0001
C - - - - - 0x01933F 06:932F: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x019342 06:9332: A5 02     LDA ram_0002
C - - - - - 0x019344 06:9334: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x019347 06:9337: A5 03     LDA ram_0003
C - - - - - 0x019349 06:9339: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01934C 06:933C: A5 04     LDA ram_0004
C - - - - - 0x01934E 06:933E: 9D 70 03  STA ram_pos_Y_hi,X
C - - - - - 0x019351 06:9341: A9 20     LDA #$20
C - - - - - 0x019353 06:9343: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019356 06:9346: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019359 06:9349: A9 00     LDA #$00
C - - - - - 0x01935B 06:934B: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x01935E 06:934E: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x019361 06:9351: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019364 06:9354: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019367 06:9357: 88        DEY
C - - - - - 0x019368 06:9358: 10 9D     BPL bra_92F7_loop
bra_935A:
C - - - - - 0x01936A 06:935A: A6 00     LDX ram_0000
bra_935C_RTS:
C - - - - - 0x01936C 06:935C: 60        RTS



tbl_935D_spd_Y_lo:
- D 0 - - - 0x01936D 06:935D: EC        .byte $EC   ; 00
- D 0 - - - 0x01936E 06:935E: 76        .byte $76   ; 01
- D 0 - - - 0x01936F 06:935F: 3B        .byte $3B   ; 02

tbl_9360_spd_X_lo:
- D 0 - - - 0x019370 06:9360: 61        .byte $61   ; 00
- D 0 - - - 0x019371 06:9361: 30        .byte $30   ; 01
- D 0 - - - 0x019372 06:9362: 18        .byte $18   ; 02



tbl_9363_pos_X:
- - - - - - 0x019373 06:9363: 0C 00     .word $000C ; 00
- D 0 - - - 0x019375 06:9365: F4 FF     .word $FFF4 ; 02



ofs_005_9367_1E_mother_fish:
; spawns 4 1F mini fishes 1-2 times while swimming
C - - J - - 0x019377 06:9367: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01937A 06:936A: C9 3C     CMP #$3C
C - - - - - 0x01937C 06:936C: D0 0C     BNE bra_937A
C - - - - - 0x01937E 06:936E: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x019381 06:9371: C9 02     CMP #$02
C - - - - - 0x019383 06:9373: D0 E7     BNE bra_935C_RTS
C - - - - - 0x019385 06:9375: A9 3B     LDA #$3B
C - - - - - 0x019387 06:9377: 4C 45 FC  JMP loc_0x01FC55
bra_937A:
C - - - - - 0x01938A 06:937A: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01938D 06:937D: C9 60     CMP #$60
C - - - - - 0x01938F 06:937F: F0 06     BEQ bra_9387
C - - - - - 0x019391 06:9381: FE 60 04  INC ram_0460_obj,X
C - - - - - 0x019394 06:9384: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis
bra_9387:
C - - - - - 0x019397 06:9387: A9 00     LDA #$00
C - - - - - 0x019399 06:9389: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01939C 06:938C: A9 3C     LDA #$3C
C - - - - - 0x01939E 06:938E: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0193A1 06:9391: 86 00     STX ram_0000
C - - - - - 0x0193A3 06:9393: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x0193A6 06:9396: 85 01     STA ram_0001
C - - - - - 0x0193A8 06:9398: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x0193AB 06:939B: 85 02     STA ram_0002
C - - - - - 0x0193AD 06:939D: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0193B0 06:93A0: 85 03     STA ram_0003
C - - - - - 0x0193B2 06:93A2: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x0193B5 06:93A5: 85 04     STA ram_0004
C - - - - - 0x0193B7 06:93A7: A0 03     LDY #$03
bra_93A9_loop:
C - - - - - 0x0193B9 06:93A9: 20 44 FE  JSR sub_0x01FE54
C - - - - - 0x0193BC 06:93AC: B0 57     BCS bra_9405
C - - - - - 0x0193BE 06:93AE: A9 80     LDA #$80
C - - - - - 0x0193C0 06:93B0: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x0193C3 06:93B3: A9 90     LDA #$90
C - - - - - 0x0193C5 06:93B5: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0193C8 06:93B8: A9 1F     LDA #con_obj_id_mini_fish_3
C - - - - - 0x0193CA 06:93BA: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x0193CD 06:93BD: A9 61     LDA #$61
C - - - - - 0x0193CF 06:93BF: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0193D2 06:93C2: A9 01     LDA #$01
C - - - - - 0x0193D4 06:93C4: 9D F0 03  STA ram_03F0_obj,X
C - - - - - 0x0193D7 06:93C7: A9 33     LDA #$33
C - - - - - 0x0193D9 06:93C9: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0193DC 06:93CC: B9 08 94  LDA tbl_9408,Y
C - - - - - 0x0193DF 06:93CF: 9D D0 03  STA ram_direction,X
C - - - - - 0x0193E2 06:93D2: A9 43     LDA #$43
C - - - - - 0x0193E4 06:93D4: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x0193E7 06:93D7: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x0193EA 06:93DA: A5 01     LDA ram_0001
C - - - - - 0x0193EC 06:93DC: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x0193EF 06:93DF: A5 02     LDA ram_0002
C - - - - - 0x0193F1 06:93E1: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x0193F4 06:93E4: A5 03     LDA ram_0003
C - - - - - 0x0193F6 06:93E6: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x0193F9 06:93E9: A5 04     LDA ram_0004
C - - - - - 0x0193FB 06:93EB: 9D 70 03  STA ram_pos_Y_hi,X
C - - - - - 0x0193FE 06:93EE: A9 00     LDA #$00
C - - - - - 0x019400 06:93F0: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019403 06:93F3: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019406 06:93F6: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x019409 06:93F9: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x01940C 06:93FC: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01940F 06:93FF: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019412 06:9402: 88        DEY
C - - - - - 0x019413 06:9403: 10 A4     BPL bra_93A9_loop
bra_9405:
C - - - - - 0x019415 06:9405: A6 00     LDX ram_0000
C - - - - - 0x019417 06:9407: 60        RTS



tbl_9408:
- D 0 - - - 0x019418 06:9408: 09        .byte $09   ; 00
- D 0 - - - 0x019419 06:9409: 05        .byte $05   ; 01
- D 0 - - - 0x01941A 06:940A: 0A        .byte $0A   ; 02
- D 0 - - - 0x01941B 06:940B: 06        .byte $06   ; 03



ofs_005_940C_20_shrimp:
; quickly swims to player position if close enough
C - - J - - 0x01941C 06:940C: A9 00     LDA #$00
C - - - - - 0x01941E 06:940E: 9D 48 04  STA ram_0448,X
C - - - - - 0x019421 06:9411: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019424 06:9414: D0 38     BNE bra_944E
C - - - - - 0x019426 06:9416: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x019429 06:9419: F0 23     BEQ bra_943E
C - - - - - 0x01942B 06:941B: DE 18 04  DEC ram_animation_cnt,X
C - - - - - 0x01942E 06:941E: A5 E4     LDA ram_random
C - - - - - 0x019430 06:9420: 65 E5     ADC ram_random + $01
C - - - - - 0x019432 06:9422: 85 E5     STA ram_random + $01
C - - - - - 0x019434 06:9424: 29 03     AND #$03
C - - - - - 0x019436 06:9426: A8        TAY
C - - - - - 0x019437 06:9427: B9 5C 94  LDA tbl_945C,Y
C - - - - - 0x01943A 06:942A: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01943D 06:942D: A9 80     LDA #$80
C - - - - - 0x01943F 06:942F: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x019442 06:9432: A9 00     LDA #$00
C - - - - - 0x019444 06:9434: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019447 06:9437: A9 04     LDA #$04
C - - - - - 0x019449 06:9439: 9D D0 03  STA ram_direction,X
C - - - - - 0x01944C 06:943C: D0 10     BNE bra_944E   ; jmp
bra_943E:
C - - - - - 0x01944E 06:943E: 20 4A FD  JSR sub_0x01FD5A
C - - - - - 0x019451 06:9441: A0 00     LDY #$00
C - - - - - 0x019453 06:9443: 20 E5 FD  JSR sub_0x01FDF5
C - - - - - 0x019456 06:9446: A9 20     LDA #$20
C - - - - - 0x019458 06:9448: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01945B 06:944B: FE 18 04  INC ram_animation_cnt,X
bra_944E:
C - - - - - 0x01945E 06:944E: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x019461 06:9451: F0 03     BEQ bra_9456
C - - - - - 0x019463 06:9453: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
bra_9456:
C - - - - - 0x019466 06:9456: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019469 06:9459: 4C 00 FD  JMP loc_0x01FD10_move_object_Y_axis



tbl_945C:
- D 0 - - - 0x01946C 06:945C: 00        .byte $00   ; 00
- D 0 - - - 0x01946D 06:945D: 40        .byte $40   ; 01
- D 0 - - - 0x01946E 06:945E: 40        .byte $40   ; 02
- D 0 - - - 0x01946F 06:945F: 80        .byte $80   ; 03



ofs_005_9460_21_RTS_green_snake:
; green snake with a big head at the room before final boss
C - - J - - 0x019470 06:9460: 60        RTS



ofs_005_9461_22_spawner_starfish:
; object constantly spawns starfishes 23
C - - J - - 0x019471 06:9461: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019474 06:9464: 29 0F     AND #$0F
C - - - - - 0x019476 06:9466: F0 21     BEQ bra_9489
C - - - - - 0x019478 06:9468: A9 00     LDA #$00
C - - - - - 0x01947A 06:946A: 85 00     STA ram_0000
C - - - - - 0x01947C 06:946C: A0 0E     LDY #$0E
bra_946E_loop:
C - - - - - 0x01947E 06:946E: B9 01 03  LDA ram_obj_flags + $01,Y
C - - - - - 0x019481 06:9471: 10 09     BPL bra_947C
C - - - - - 0x019483 06:9473: B9 31 04  LDA ram_0430_obj + $01,Y
C - - - - - 0x019486 06:9476: C9 32     CMP #$32
C - - - - - 0x019488 06:9478: D0 02     BNE bra_947C
C - - - - - 0x01948A 06:947A: E6 00     INC ram_0000
bra_947C:
C - - - - - 0x01948C 06:947C: 88        DEY
C - - - - - 0x01948D 06:947D: D0 EF     BNE bra_946E_loop
C - - - - - 0x01948F 06:947F: A5 00     LDA ram_0000
C - - - - - 0x019491 06:9481: D0 05     BNE bra_9488_RTS
C - - - - - 0x019493 06:9483: A9 80     LDA #$80
C - - - - - 0x019495 06:9485: 9D 00 03  STA ram_obj_flags,X
bra_9488_RTS:
C - - - - - 0x019498 06:9488: 60        RTS
bra_9489:
C - - - - - 0x019499 06:9489: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01949C 06:948C: F0 04     BEQ bra_9492
C - - - - - 0x01949E 06:948E: DE 60 04  DEC ram_0460_obj,X
bra_9491_RTS:
C - - - - - 0x0194A1 06:9491: 60        RTS
bra_9492:
C - - - - - 0x0194A2 06:9492: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x0194A5 06:9495: D0 22     BNE bra_94B9
C - - - - - 0x0194A7 06:9497: A5 E4     LDA ram_random
C - - - - - 0x0194A9 06:9499: 65 E6     ADC ram_random + $02
C - - - - - 0x0194AB 06:949B: 85 E5     STA ram_random + $01
C - - - - - 0x0194AD 06:949D: 29 07     AND #$07
C - - - - - 0x0194AF 06:949F: 85 00     STA ram_0000
C - - - - - 0x0194B1 06:94A1: 0A        ASL
C - - - - - 0x0194B2 06:94A2: 0A        ASL
C - - - - - 0x0194B3 06:94A3: 65 00     ADC ram_0000
C - - - - - 0x0194B5 06:94A5: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x0194B8 06:94A8: A5 E4     LDA ram_random
C - - - - - 0x0194BA 06:94AA: 65 E5     ADC ram_random + $01
C - - - - - 0x0194BC 06:94AC: 85 E6     STA ram_random + $02
C - - - - - 0x0194BE 06:94AE: 29 07     AND #$07
C - - - - - 0x0194C0 06:94B0: 85 00     STA ram_0000
C - - - - - 0x0194C2 06:94B2: 0A        ASL
C - - - - - 0x0194C3 06:94B3: 0A        ASL
C - - - - - 0x0194C4 06:94B4: 65 00     ADC ram_0000
C - - - - - 0x0194C6 06:94B6: 9D 90 04  STA ram_0490_obj,X
bra_94B9:
C - - - - - 0x0194C9 06:94B9: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x0194CC 06:94BC: B0 D3     BCS bra_9491_RTS
C - - - - - 0x0194CE 06:94BE: A9 23     LDA #con_obj_id_starfish_1
C - - - - - 0x0194D0 06:94C0: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x0194D3 06:94C3: A9 32     LDA #$32
C - - - - - 0x0194D5 06:94C5: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x0194D8 06:94C8: A9 40     LDA #$40
C - - - - - 0x0194DA 06:94CA: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x0194DD 06:94CD: A9 01     LDA #$01
C - - - - - 0x0194DF 06:94CF: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x0194E2 06:94D2: A9 00     LDA #$00
C - - - - - 0x0194E4 06:94D4: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x0194E7 06:94D7: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x0194EA 06:94DA: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x0194ED 06:94DD: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x0194F0 06:94E0: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0194F3 06:94E3: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x0194F6 06:94E6: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x0194F9 06:94E9: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x0194FC 06:94EC: A9 08     LDA #$08
C - - - - - 0x0194FE 06:94EE: 99 D0 03  STA ram_direction,Y
C - - - - - 0x019501 06:94F1: A9 02     LDA #$02
C - - - - - 0x019503 06:94F3: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x019506 06:94F6: A9 00     LDA #$00
C - - - - - 0x019508 06:94F8: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x01950B 06:94FB: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x01950E 06:94FE: 99 70 04  STA ram_obj_timer,Y
C - - - - - 0x019511 06:9501: 99 80 04  STA ram_0480_obj,Y
C - - - - - 0x019514 06:9504: 99 90 04  STA ram_0490_obj,Y
C - - - - - 0x019517 06:9507: 86 00     STX ram_0000
C - - - - - 0x019519 06:9509: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01951C 06:950C: 18        CLC
C - - - - - 0x01951D 06:950D: 7D 80 04  ADC ram_0480_obj,X
C - - - - - 0x019520 06:9510: AA        TAX
C - - - - - 0x019521 06:9511: BD 9C 95  LDA tbl_959C_index,X
C - - - - - 0x019524 06:9514: AA        TAX
C - - - - - 0x019525 06:9515: BD EC 95  LDA tbl_95EC,X
C - - - - - 0x019528 06:9518: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x01952B 06:951B: A6 00     LDX ram_0000
C - - - - - 0x01952D 06:951D: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019530 06:9520: 18        CLC
C - - - - - 0x019531 06:9521: 7D 90 04  ADC ram_0490_obj,X
C - - - - - 0x019534 06:9524: AA        TAX
C - - - - - 0x019535 06:9525: BD C4 95  LDA tbl_95C4_index,X
C - - - - - 0x019538 06:9528: AA        TAX
C - - - - - 0x019539 06:9529: BD F1 95  LDA tbl_95F1,X
C - - - - - 0x01953C 06:952C: 99 70 04  STA ram_obj_timer,Y
C - - - - - 0x01953F 06:952F: BD F8 95  LDA tbl_95F8,X
C - - - - - 0x019542 06:9532: 99 80 04  STA ram_0480_obj,Y
C - - - - - 0x019545 06:9535: A6 00     LDX ram_0000
C - - - - - 0x019547 06:9537: A9 0C     LDA #$0C
C - - - - - 0x019549 06:9539: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01954C 06:953C: FE 70 04  INC ram_obj_timer,X
C - - - - - 0x01954F 06:953F: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019552 06:9542: C9 05     CMP #$05
C - - - - - 0x019554 06:9544: D0 08     BNE bra_954E_RTS
C - - - - - 0x019556 06:9546: A9 00     LDA #$00
C - - - - - 0x019558 06:9548: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01955B 06:954B: FE 00 03  INC ram_obj_flags,X
bra_954E_RTS:
C - - - - - 0x01955E 06:954E: 60        RTS



ofs_005_954F_23_starfish_1:
; spawns from 22, flies up, then drops down at a random spot
C - - J - - 0x01955F 06:954F: BD D0 03  LDA ram_direction,X
C - - - - - 0x019562 06:9552: 29 08     AND #$08
C - - - - - 0x019564 06:9554: F0 43     BEQ bra_9599
C - - - - - 0x019566 06:9556: A9 00     LDA #$00
C - - - - - 0x019568 06:9558: 9D 48 04  STA ram_0448,X
C - - - - - 0x01956B 06:955B: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01956E 06:955E: C9 08     CMP #$08
C - - - - - 0x019570 06:9560: D0 37     BNE bra_9599
C - - - - - 0x019572 06:9562: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019575 06:9565: 09 04     ORA #$04
C - - - - - 0x019577 06:9567: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01957A 06:956A: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01957D 06:956D: D0 DF     BNE bra_954E_RTS
C - - - - - 0x01957F 06:956F: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019582 06:9572: 29 FB     AND #$FB
C - - - - - 0x019584 06:9574: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019587 06:9577: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01958A 06:957A: 18        CLC
C - - - - - 0x01958B 06:957B: 7D 70 04  ADC ram_obj_timer,X
C - - - - - 0x01958E 06:957E: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x019591 06:9581: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x019594 06:9584: 7D 80 04  ADC ram_0480_obj,X
C - - - - - 0x019597 06:9587: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x01959A 06:958A: A9 04     LDA #$04
C - - - - - 0x01959C 06:958C: 9D D0 03  STA ram_direction,X
C - - - - - 0x01959F 06:958F: A9 C0     LDA #$C0
C - - - - - 0x0195A1 06:9591: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x0195A4 06:9594: A9 00     LDA #$00
C - - - - - 0x0195A6 06:9596: 9D B0 03  STA ram_spd_Y_hi,X
bra_9599:
C - - - - - 0x0195A9 06:9599: 4C 00 FD  JMP loc_0x01FD10_move_object_Y_axis



tbl_959C_index:
; 00
- D 0 - - - 0x0195AC 06:959C: 00        .byte $00   ; 
- D 0 - - - 0x0195AD 06:959D: 01        .byte $01   ; 
- D 0 - - - 0x0195AE 06:959E: 02        .byte $02   ; 
- D 0 - - - 0x0195AF 06:959F: 03        .byte $03   ; 
- D 0 - - - 0x0195B0 06:95A0: 04        .byte $04   ; 
; 01
- D 0 - - - 0x0195B1 06:95A1: 02        .byte $02   ; 
- D 0 - - - 0x0195B2 06:95A2: 00        .byte $00   ; 
- D 0 - - - 0x0195B3 06:95A3: 04        .byte $04   ; 
- D 0 - - - 0x0195B4 06:95A4: 01        .byte $01   ; 
- D 0 - - - 0x0195B5 06:95A5: 03        .byte $03   ; 
; 02
- D 0 - - - 0x0195B6 06:95A6: 03        .byte $03   ; 
- D 0 - - - 0x0195B7 06:95A7: 01        .byte $01   ; 
- D 0 - - - 0x0195B8 06:95A8: 00        .byte $00   ; 
- D 0 - - - 0x0195B9 06:95A9: 04        .byte $04   ; 
- D 0 - - - 0x0195BA 06:95AA: 02        .byte $02   ; 
; 03
- D 0 - - - 0x0195BB 06:95AB: 04        .byte $04   ; 
- D 0 - - - 0x0195BC 06:95AC: 03        .byte $03   ; 
- D 0 - - - 0x0195BD 06:95AD: 01        .byte $01   ; 
- D 0 - - - 0x0195BE 06:95AE: 02        .byte $02   ; 
- D 0 - - - 0x0195BF 06:95AF: 00        .byte $00   ; 
; 04
- D 0 - - - 0x0195C0 06:95B0: 01        .byte $01   ; 
- D 0 - - - 0x0195C1 06:95B1: 04        .byte $04   ; 
- D 0 - - - 0x0195C2 06:95B2: 03        .byte $03   ; 
- D 0 - - - 0x0195C3 06:95B3: 00        .byte $00   ; 
- D 0 - - - 0x0195C4 06:95B4: 02        .byte $02   ; 
; 05
- D 0 - - - 0x0195C5 06:95B5: 00        .byte $00   ; 
- D 0 - - - 0x0195C6 06:95B6: 02        .byte $02   ; 
- D 0 - - - 0x0195C7 06:95B7: 04        .byte $04   ; 
- D 0 - - - 0x0195C8 06:95B8: 01        .byte $01   ; 
- D 0 - - - 0x0195C9 06:95B9: 03        .byte $03   ; 
; 06
- D 0 - - - 0x0195CA 06:95BA: 03        .byte $03   ; 
- D 0 - - - 0x0195CB 06:95BB: 02        .byte $02   ; 
- D 0 - - - 0x0195CC 06:95BC: 00        .byte $00   ; 
- D 0 - - - 0x0195CD 06:95BD: 04        .byte $04   ; 
- D 0 - - - 0x0195CE 06:95BE: 01        .byte $01   ; 
; 07
- D 0 - - - 0x0195CF 06:95BF: 04        .byte $04   ; 
- D 0 - - - 0x0195D0 06:95C0: 00        .byte $00   ; 
- D 0 - - - 0x0195D1 06:95C1: 02        .byte $02   ; 
- D 0 - - - 0x0195D2 06:95C2: 01        .byte $01   ; 
- D 0 - - - 0x0195D3 06:95C3: 03        .byte $03   ; 



tbl_95C4_index:
; 00
- D 0 - - - 0x0195D4 06:95C4: 00        .byte $00   ; 
- D 0 - - - 0x0195D5 06:95C5: 01        .byte $01   ; 
- D 0 - - - 0x0195D6 06:95C6: 02        .byte $02   ; 
- D 0 - - - 0x0195D7 06:95C7: 03        .byte $03   ; 
- D 0 - - - 0x0195D8 06:95C8: 04        .byte $04   ; 
; 01
- D 0 - - - 0x0195D9 06:95C9: 05        .byte $05   ; 
- D 0 - - - 0x0195DA 06:95CA: 06        .byte $06   ; 
- D 0 - - - 0x0195DB 06:95CB: 04        .byte $04   ; 
- D 0 - - - 0x0195DC 06:95CC: 03        .byte $03   ; 
- D 0 - - - 0x0195DD 06:95CD: 02        .byte $02   ; 
; 02
- D 0 - - - 0x0195DE 06:95CE: 02        .byte $02   ; 
- D 0 - - - 0x0195DF 06:95CF: 05        .byte $05   ; 
- D 0 - - - 0x0195E0 06:95D0: 04        .byte $04   ; 
- D 0 - - - 0x0195E1 06:95D1: 06        .byte $06   ; 
- D 0 - - - 0x0195E2 06:95D2: 01        .byte $01   ; 
; 03
- D 0 - - - 0x0195E3 06:95D3: 01        .byte $01   ; 
- D 0 - - - 0x0195E4 06:95D4: 03        .byte $03   ; 
- D 0 - - - 0x0195E5 06:95D5: 05        .byte $05   ; 
- D 0 - - - 0x0195E6 06:95D6: 06        .byte $06   ; 
- D 0 - - - 0x0195E7 06:95D7: 00        .byte $00   ; 
; 04
- D 0 - - - 0x0195E8 06:95D8: 02        .byte $02   ; 
- D 0 - - - 0x0195E9 06:95D9: 01        .byte $01   ; 
- D 0 - - - 0x0195EA 06:95DA: 04        .byte $04   ; 
- D 0 - - - 0x0195EB 06:95DB: 03        .byte $03   ; 
- D 0 - - - 0x0195EC 06:95DC: 06        .byte $06   ; 
; 05
- D 0 - - - 0x0195ED 06:95DD: 06        .byte $06   ; 
- D 0 - - - 0x0195EE 06:95DE: 03        .byte $03   ; 
- D 0 - - - 0x0195EF 06:95DF: 04        .byte $04   ; 
- D 0 - - - 0x0195F0 06:95E0: 00        .byte $00   ; 
- D 0 - - - 0x0195F1 06:95E1: 05        .byte $05   ; 
; 06
- D 0 - - - 0x0195F2 06:95E2: 03        .byte $03   ; 
- D 0 - - - 0x0195F3 06:95E3: 06        .byte $06   ; 
- D 0 - - - 0x0195F4 06:95E4: 02        .byte $02   ; 
- D 0 - - - 0x0195F5 06:95E5: 00        .byte $00   ; 
- D 0 - - - 0x0195F6 06:95E6: 01        .byte $01   ; 
; 07
- D 0 - - - 0x0195F7 06:95E7: 04        .byte $04   ; 
- D 0 - - - 0x0195F8 06:95E8: 00        .byte $00   ; 
- D 0 - - - 0x0195F9 06:95E9: 01        .byte $01   ; 
- D 0 - - - 0x0195FA 06:95EA: 05        .byte $05   ; 
- D 0 - - - 0x0195FB 06:95EB: 06        .byte $06   ; 



tbl_95EC:
- D 0 - - - 0x0195FC 06:95EC: 48        .byte $48   ; 00
- D 0 - - - 0x0195FD 06:95ED: 4C        .byte $4C   ; 01
- D 0 - - - 0x0195FE 06:95EE: 50        .byte $50   ; 02
- D 0 - - - 0x0195FF 06:95EF: 64        .byte $64   ; 03
- D 0 - - - 0x019600 06:95F0: 78        .byte $78   ; 04



tbl_95F1:
- D 0 - - - 0x019601 06:95F1: A0        .byte $A0   ; 00
- D 0 - - - 0x019602 06:95F2: C0        .byte $C0   ; 01
- D 0 - - - 0x019603 06:95F3: E0        .byte $E0   ; 02
- D 0 - - - 0x019604 06:95F4: 00        .byte $00   ; 03
- D 0 - - - 0x019605 06:95F5: 20        .byte $20   ; 04
- D 0 - - - 0x019606 06:95F6: 40        .byte $40   ; 05
- D 0 - - - 0x019607 06:95F7: 60        .byte $60   ; 06

tbl_95F8:
- D 0 - - - 0x019608 06:95F8: FF        .byte $FF   ; 00
- D 0 - - - 0x019609 06:95F9: FF        .byte $FF   ; 01
- D 0 - - - 0x01960A 06:95FA: FF        .byte $FF   ; 02
- D 0 - - - 0x01960B 06:95FB: 00        .byte $00   ; 03
- D 0 - - - 0x01960C 06:95FC: 00        .byte $00   ; 04
- D 0 - - - 0x01960D 06:95FD: 00        .byte $00   ; 05
- D 0 - - - 0x01960E 06:95FE: 00        .byte $00   ; 06


; bzk garbage
- - - - - - 0x01960F 06:95FF: 48        .byte $48   ; 
- - - - - - 0x019610 06:9600: 3C        .byte $3C   ; 
- - - - - - 0x019611 06:9601: 30        .byte $30   ; 
- - - - - - 0x019612 06:9602: 24        .byte $24   ; 
- - - - - - 0x019613 06:9603: 18        .byte $18   ; 



ofs_005_9604_24_ice_cube_fish:
; drops down from heaven, transforms into 03 after landing and unfreezing
C - - J - - 0x019614 06:9604: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019617 06:9607: 29 0F     AND #$0F
C - - - - - 0x019619 06:9609: D0 21     BNE bra_962C
C - - - - - 0x01961B 06:960B: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x01961E 06:960E: C9 60     CMP #$60
C - - - - - 0x019620 06:9610: B0 3D     BCS bra_964F_RTS
C - - - - - 0x019622 06:9612: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019625 06:9615: 29 FB     AND #$FB
C - - - - - 0x019627 06:9617: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01962A 06:961A: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01962D 06:961D: A5 E4     LDA ram_random
C - - - - - 0x01962F 06:961F: 65 E7     ADC ram_random + $03
C - - - - - 0x019631 06:9621: 85 E7     STA ram_random + $03
C - - - - - 0x019633 06:9623: 29 03     AND #$03
C - - - - - 0x019635 06:9625: A8        TAY
C - - - - - 0x019636 06:9626: B9 50 96  LDA tbl_9650,Y
C - - - - - 0x019639 06:9629: 9D 60 04  STA ram_0460_obj,X
bra_962C:
C - - - - - 0x01963C 06:962C: A0 00     LDY #$00
C - - - - - 0x01963E 06:962E: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x019641 06:9631: 90 1C     BCC bra_964F_RTS
C - - - - - 0x019643 06:9633: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019646 06:9636: D0 17     BNE bra_964F_RTS
C - - - - - 0x019648 06:9638: A9 80     LDA #$80
C - - - - - 0x01964A 06:963A: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01964D 06:963D: A9 03     LDA #con_obj_id_piranha_stupid
C - - - - - 0x01964F 06:963F: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019652 06:9642: A9 60     LDA #$60
C - - - - - 0x019654 06:9644: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x019657 06:9647: A9 20     LDA #$20
C - - - - - 0x019659 06:9649: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01965C 06:964C: 20 6F FC  JSR sub_0x01FC7F
bra_964F_RTS:
C - - - - - 0x01965F 06:964F: 60        RTS



tbl_9650:
- D 0 - - - 0x019660 06:9650: 20        .byte $20   ; 00
- D 0 - - - 0x019661 06:9651: 40        .byte $40   ; 01
- D 0 - - - 0x019662 06:9652: 80        .byte $80   ; 02
- D 0 - - - 0x019663 06:9653: 20        .byte $20   ; 03



ofs_005_9654_45_sand_fish:
; hides inside sand, moves when player is close enough
C - - J - - 0x019664 06:9654: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019667 06:9657: 29 0F     AND #$0F
C - - - - - 0x019669 06:9659: D0 38     BNE bra_9693
C - - - - - 0x01966B 06:965B: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x01966E 06:965E: 20 89 FC  JSR sub_0x01FC99
C - - - - - 0x019671 06:9661: 20 33 FD  JSR sub_0x01FD43
C - - - - - 0x019674 06:9664: C9 30     CMP #$30
C - - - - - 0x019676 06:9666: B0 2A     BCS bra_9692_RTS
C - - - - - 0x019678 06:9668: 20 12 FD  JSR sub_0x01FD22
C - - - - - 0x01967B 06:966B: C9 30     CMP #$30
C - - - - - 0x01967D 06:966D: B0 23     BCS bra_9692_RTS
C - - - - - 0x01967F 06:966F: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x019682 06:9672: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x019685 06:9675: 90 1B     BCC bra_9692_RTS
C - - - - - 0x019687 06:9677: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01968A 06:967A: A9 00     LDA #$00
C - - - - - 0x01968C 06:967C: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01968F 06:967F: A9 02     LDA #$02
C - - - - - 0x019691 06:9681: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019694 06:9684: A9 40     LDA #$40
C - - - - - 0x019696 06:9686: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019699 06:9689: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01969C 06:968C: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01969F 06:968F: 4C FD 96  JMP loc_96FD
bra_9692_RTS:
C - - - - - 0x0196A2 06:9692: 60        RTS
bra_9693:
C - - - - - 0x0196A3 06:9693: C9 01     CMP #$01
C - - - - - 0x0196A5 06:9695: D0 3E     BNE bra_96D5
C - - - - - 0x0196A7 06:9697: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x0196AA 06:969A: F0 1C     BEQ bra_96B8
C - - - - - 0x0196AC 06:969C: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x0196AF 06:969F: D0 F1     BNE bra_9692_RTS
C - - - - - 0x0196B1 06:96A1: A9 53     LDA #$53
C - - - - - 0x0196B3 06:96A3: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0196B6 06:96A6: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0196B9 06:96A9: 38        SEC
C - - - - - 0x0196BA 06:96AA: E9 08     SBC #$08
C - - - - - 0x0196BC 06:96AC: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x0196BF 06:96AF: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x0196C2 06:96B2: 09 40     ORA #$40
C - - - - - 0x0196C4 06:96B4: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0196C7 06:96B7: 60        RTS
bra_96B8:
C - - - - - 0x0196C8 06:96B8: 20 EB F8  JSR sub_0x01F8FB_move_object_up
C - - - - - 0x0196CB 06:96BB: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x0196CE 06:96BE: DD 60 03  CMP ram_pos_Y_lo,X
C - - - - - 0x0196D1 06:96C1: 90 CF     BCC bra_9692_RTS
C - - - - - 0x0196D3 06:96C3: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x0196D6 06:96C6: A9 40     LDA #$40
C - - - - - 0x0196D8 06:96C8: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x0196DB 06:96CB: DE 30 04  DEC ram_0430_obj,X
C - - - - - 0x0196DE 06:96CE: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x0196E1 06:96D1: 20 89 FC  JSR sub_0x01FC99
C - - - - - 0x0196E4 06:96D4: 60        RTS
bra_96D5:
C - - - - - 0x0196E5 06:96D5: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x0196E8 06:96D8: F0 04     BEQ bra_96DE
C - - - - - 0x0196EA 06:96DA: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x0196ED 06:96DD: 60        RTS
bra_96DE:
C - - - - - 0x0196EE 06:96DE: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis



ofs_005_96E1_46_sand_splashes_fish:
; caused by 45 sand fish
C - - J - - 0x0196F1 06:96E1: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x0196F4 06:96E4: C9 02     CMP #$02
C - - - - - 0x0196F6 06:96E6: D0 AA     BNE bra_9692_RTS
C - - - - - 0x0196F8 06:96E8: BD 48 04  LDA ram_0448,X
C - - - - - 0x0196FB 06:96EB: D0 A5     BNE bra_9692_RTS
C - - - - - 0x0196FD 06:96ED: FE 80 04  INC ram_0480_obj,X
C - - - - - 0x019700 06:96F0: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x019703 06:96F3: C9 05     CMP #$05
C - - - - - 0x019705 06:96F5: 90 06     BCC bra_96FD
C - - - - - 0x019707 06:96F7: A9 00     LDA #$00
C - - - - - 0x019709 06:96F9: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01970C 06:96FC: 60        RTS
bra_96FD:
loc_96FD:
C D 0 - - - 0x01970D 06:96FD: 86 0F     STX ram_000F
C - - - - - 0x01970F 06:96FF: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x019712 06:9702: B0 8E     BCS bra_9692_RTS
C - - - - - 0x019714 06:9704: A9 14     LDA #$14
C - - - - - 0x019716 06:9706: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x019719 06:9709: A9 46     LDA #con_obj_id_sand_splashes_fish
C - - - - - 0x01971B 06:970B: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01971E 06:970E: A9 00     LDA #$00
C - - - - - 0x019720 06:9710: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x019723 06:9713: A9 01     LDA #$01
C - - - - - 0x019725 06:9715: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x019728 06:9718: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01972B 06:971B: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01972E 06:971E: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x019731 06:9721: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x019734 06:9724: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x019737 06:9727: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01973A 06:972A: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01973D 06:972D: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x019740 06:9730: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x019743 06:9733: 99 80 04  STA ram_0480_obj,Y
C - - - - - 0x019746 06:9736: AA        TAX
C - - - - - 0x019747 06:9737: B9 60 03  LDA ram_pos_Y_lo,Y
C - - - - - 0x01974A 06:973A: 38        SEC
C - - - - - 0x01974B 06:973B: FD 53 97  SBC tbl_9753_pos_Y_lo,X
C - - - - - 0x01974E 06:973E: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x019751 06:9741: B9 30 03  LDA ram_pos_X_lo,Y
C - - - - - 0x019754 06:9744: 38        SEC
C - - - - - 0x019755 06:9745: FD 58 97  SBC tbl_9758_pos_X_lo,X
C - - - - - 0x019758 06:9748: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01975B 06:974B: A9 21     LDA #con_sfx_sand
C - - - - - 0x01975D 06:974D: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x019760 06:9750: A6 0F     LDX ram_000F
C - - - - - 0x019762 06:9752: 60        RTS



tbl_9753_pos_Y_lo:
- D 0 - - - 0x019763 06:9753: 08        .byte $08   ; 00
- D 0 - - - 0x019764 06:9754: 08        .byte $08   ; 01
- D 0 - - - 0x019765 06:9755: F8        .byte $F8   ; 02
- D 0 - - - 0x019766 06:9756: 08        .byte $08   ; 03
- D 0 - - - 0x019767 06:9757: F8        .byte $F8   ; 04

tbl_9758_pos_X_lo:
- D 0 - - - 0x019768 06:9758: 08        .byte $08   ; 00
- D 0 - - - 0x019769 06:9759: F4        .byte $F4   ; 01
- D 0 - - - 0x01976A 06:975A: FC        .byte $FC   ; 02
- D 0 - - - 0x01976B 06:975B: 04        .byte $04   ; 03
- D 0 - - - 0x01976C 06:975C: F4        .byte $F4   ; 04



ofs_005_975D_33_barrel:
; can be moved with 27, 28 or 29
C - - J - - 0x01976D 06:975D: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019770 06:9760: 29 0F     AND #$0F
C - - - - - 0x019772 06:9762: D0 27     BNE bra_978B
C - - - - - 0x019774 06:9764: A5 3D     LDA ram_weapon_power
C - - - - - 0x019776 06:9766: F0 6C     BEQ bra_97D4_RTS
C - - - - - 0x019778 06:9768: 20 A0 FB  JSR sub_0x01FBB0
C - - - - - 0x01977B 06:976B: B0 67     BCS bra_97D4_RTS
C - - - - - 0x01977D 06:976D: A9 00     LDA #$00
C - - - - - 0x01977F 06:976F: 99 00 03  STA ram_obj_flags,Y
C - - - - - 0x019782 06:9772: B9 D0 03  LDA ram_direction,Y
C - - - - - 0x019785 06:9775: 9D D0 03  STA ram_direction,X
C - - - - - 0x019788 06:9778: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01978B 06:977B: A9 4E     LDA #$4E
C - - - - - 0x01978D 06:977D: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019790 06:9780: A9 00     LDA #$00
C - - - - - 0x019792 06:9782: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x019795 06:9785: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019798 06:9788: FE 00 03  INC ram_obj_flags,X
bra_978B:
C - - - - - 0x01979B 06:978B: 20 C4 81  JSR sub_81C4
C - - - - - 0x01979E 06:978E: A0 0A     LDY #$0A
C - - - - - 0x0197A0 06:9790: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x0197A3 06:9793: B0 28     BCS bra_97BD
C - - - - - 0x0197A5 06:9795: A0 08     LDY #$08
C - - - - - 0x0197A7 06:9797: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x0197AA 06:979A: B0 09     BCS bra_97A5
C - - - - - 0x0197AC 06:979C: A9 00     LDA #$00
C - - - - - 0x0197AE 06:979E: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x0197B1 06:97A1: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x0197B4 06:97A4: 60        RTS
bra_97A5:
C - - - - - 0x0197B5 06:97A5: A5 BE     LDA ram_00BE
C - - - - - 0x0197B7 06:97A7: C9 30     CMP #$30
C - - - - - 0x0197B9 06:97A9: D0 07     BNE bra_97B2
- - - - - - 0x0197BB 06:97AB: A5 1A     LDA ram_001A
- - - - - - 0x0197BD 06:97AD: D0 03     BNE bra_97B2
- - - - - - 0x0197BF 06:97AF: 20 BA E7  JSR sub_0x01E7CA
bra_97B2:
C - - - - - 0x0197C2 06:97B2: A9 80     LDA #$80
C - - - - - 0x0197C4 06:97B4: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x0197C7 06:97B7: A9 00     LDA #$00
C - - - - - 0x0197C9 06:97B9: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x0197CC 06:97BC: 60        RTS
bra_97BD:
C - - - - - 0x0197CD 06:97BD: A5 BE     LDA ram_00BE
C - - - - - 0x0197CF 06:97BF: C9 30     CMP #$30
C - - - - - 0x0197D1 06:97C1: D0 07     BNE bra_97CA
C - - - - - 0x0197D3 06:97C3: A5 1A     LDA ram_001A
C - - - - - 0x0197D5 06:97C5: D0 0D     BNE bra_97D4_RTS
C - - - - - 0x0197D7 06:97C7: 20 BA E7  JSR sub_0x01E7CA
bra_97CA:
C - - - - - 0x0197DA 06:97CA: A9 4F     LDA #$4F
C - - - - - 0x0197DC 06:97CC: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0197DF 06:97CF: A9 00     LDA #con_obj_id_00
C - - - - - 0x0197E1 06:97D1: 9D 10 03  STA ram_obj_id,X
bra_97D4_RTS:
C - - - - - 0x0197E4 06:97D4: 60        RTS



ofs_005_97D5_31_rock_small:
; can be moved with weapon 28 or 29
ofs_005_97D5_32_rock_big:
; can be moved with weapon 29
C - - J - - 0x0197E5 06:97D5: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x0197E8 06:97D8: 29 0F     AND #$0F
C - - - - - 0x0197EA 06:97DA: D0 35     BNE bra_9811
C - - - - - 0x0197EC 06:97DC: BC 10 03  LDY ram_obj_id,X
C - - - - - 0x0197EF 06:97DF: A5 3D     LDA ram_weapon_power
C - - - - - 0x0197F1 06:97E1: D9 3A 98  CMP tbl_986B - $31,Y
C - - - - - 0x0197F4 06:97E4: 90 EE     BCC bra_97D4_RTS
C - - - - - 0x0197F6 06:97E6: 20 A0 FB  JSR sub_0x01FBB0
C - - - - - 0x0197F9 06:97E9: B0 E9     BCS bra_97D4_RTS
C - - - - - 0x0197FB 06:97EB: A9 00     LDA #$00
C - - - - - 0x0197FD 06:97ED: 99 00 03  STA ram_obj_flags,Y
C - - - - - 0x019800 06:97F0: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019803 06:97F3: B9 D0 03  LDA ram_direction,Y
C - - - - - 0x019806 06:97F6: 9D D0 03  STA ram_direction,X
C - - - - - 0x019809 06:97F9: 20 89 FC  JSR sub_0x01FC99
C - - - - - 0x01980C 06:97FC: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01980F 06:97FF: A9 40     LDA #$40
C - - - - - 0x019811 06:9801: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019814 06:9804: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019817 06:9807: A9 C0     LDA #$C0
C - - - - - 0x019819 06:9809: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01981C 06:980C: A9 FF     LDA #$FF
C - - - - - 0x01981E 06:980E: 9D B0 03  STA ram_spd_Y_hi,X
bra_9811:
C - - - - - 0x019821 06:9811: 20 C4 81  JSR sub_81C4
C - - - - - 0x019824 06:9814: BC 10 03  LDY ram_obj_id,X
C - - - - - 0x019827 06:9817: B9 36 98  LDA tbl_9867 - $31,Y
C - - - - - 0x01982A 06:981A: A8        TAY
C - - - - - 0x01982B 06:981B: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x01982E 06:981E: B0 0B     BCS bra_982B
C - - - - - 0x019830 06:9820: A9 00     LDA #$00
C - - - - - 0x019832 06:9822: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019835 06:9825: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019838 06:9828: 4C 4E 98  JMP loc_984E
bra_982B:
C - - - - - 0x01983B 06:982B: 20 57 98  JSR sub_9857
C - - - - - 0x01983E 06:982E: F0 1E     BEQ bra_984E
C - - - - - 0x019840 06:9830: BD 80 03  LDA ram_spd_X_lo,X
C - - - - - 0x019843 06:9833: F0 14     BEQ bra_9849
C - - - - - 0x019845 06:9835: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019848 06:9838: F0 0F     BEQ bra_9849
C - - - - - 0x01984A 06:983A: BC 10 03  LDY ram_obj_id,X
C - - - - - 0x01984D 06:983D: B9 38 98  LDA tbl_9869 - $31,Y
C - - - - - 0x019850 06:9840: A8        TAY
C - - - - - 0x019851 06:9841: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x019854 06:9844: 90 08     BCC bra_984E
C - - - - - 0x019856 06:9846: 20 57 98  JSR sub_9857
bra_9849:
C - - - - - 0x019859 06:9849: A9 80     LDA #$80
C - - - - - 0x01985B 06:984B: 9D 00 03  STA ram_obj_flags,X
bra_984E:
loc_984E:
sub_984E:
C D 0 - - - 0x01985E 06:984E: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019861 06:9851: 29 BF     AND #$BF
C - - - - - 0x019863 06:9853: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019866 06:9856: 60        RTS



sub_9857:
C - - - - - 0x019867 06:9857: A5 BE     LDA ram_00BE
C - - - - - 0x019869 06:9859: C9 30     CMP #$30
C - - - - - 0x01986B 06:985B: D0 09     BNE bra_9866_RTS
C - - - - - 0x01986D 06:985D: A5 1A     LDA ram_001A
C - - - - - 0x01986F 06:985F: D0 05     BNE bra_9866_RTS
C - - - - - 0x019871 06:9861: 20 BA E7  JSR sub_0x01E7CA
C - - - - - 0x019874 06:9864: A9 00     LDA #$00
bra_9866_RTS:
C - - - - - 0x019876 06:9866: 60        RTS



tbl_9867:
- D 0 - - - 0x019877 06:9867: 00        .byte $00   ; 31
- D 0 - - - 0x019878 06:9868: 08        .byte $08   ; 32



tbl_9869:
- D 0 - - - 0x019879 06:9869: 00        .byte $00   ; 31
- D 0 - - - 0x01987A 06:986A: 0A        .byte $0A   ; 32



tbl_986B:
- D 0 - - - 0x01987B 06:986B: 02        .byte $02   ; 31
- D 0 - - - 0x01987C 06:986C: 03        .byte $03   ; 32



ofs_005_986D_30_shell:
; can be hidden in sand
; can be used as a weapon
; can open chests and hidden spots with it
C - - J - - 0x01987D 06:986D: A0 05     LDY #$05
C - - - - - 0x01987F 06:986F: 20 7F E2  JSR sub_0x01E28F
C - - - - - 0x019882 06:9872: A5 10     LDA ram_0010
C - - - - - 0x019884 06:9874: D0 04     BNE bra_987A
C - - - - - 0x019886 06:9876: A9 40     LDA #$40
C - - - - - 0x019888 06:9878: 85 99     STA ram_0099
bra_987A:
C - - - - - 0x01988A 06:987A: E4 3A     CPX ram_003A
C - - - - - 0x01988C 06:987C: D0 0B     BNE bra_9889
C - - - - - 0x01988E 06:987E: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019891 06:9881: 09 01     ORA #$01
C - - - - - 0x019893 06:9883: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019896 06:9886: 4C 53 89  JMP loc_8953
bra_9889:
C - - - - - 0x019899 06:9889: A5 99     LDA ram_0099
C - - - - - 0x01989B 06:988B: C9 40     CMP #$40
C - - - - - 0x01989D 06:988D: F0 18     BEQ bra_98A7
C - - - - - 0x01989F 06:988F: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x0198A2 06:9892: F0 13     BEQ bra_98A7
C - - - - - 0x0198A4 06:9894: BD B0 03  LDA ram_spd_Y_hi,X
C - - - - - 0x0198A7 06:9897: 10 0E     BPL bra_98A7
C - - - - - 0x0198A9 06:9899: A9 00     LDA #$00
C - - - - - 0x0198AB 06:989B: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x0198AE 06:989E: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x0198B1 06:98A1: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x0198B4 06:98A4: 9D D0 03  STA ram_direction,X
bra_98A7:
C - - - - - 0x0198B7 06:98A7: A0 06     LDY #$06
C - - - - - 0x0198B9 06:98A9: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x0198BC 06:98AC: 08        PHP
C - - - - - 0x0198BD 06:98AD: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x0198C0 06:98B0: 29 F0     AND #$F0
C - - - - - 0x0198C2 06:98B2: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x0198C5 06:98B5: B0 08     BCS bra_98BF
C - - - - - 0x0198C7 06:98B7: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x0198CA 06:98BA: 09 01     ORA #$01
C - - - - - 0x0198CC 06:98BC: 9D 00 03  STA ram_obj_flags,X
bra_98BF:
C - - - - - 0x0198CF 06:98BF: A5 BE     LDA ram_00BE
C - - - - - 0x0198D1 06:98C1: C9 30     CMP #$30
C - - - - - 0x0198D3 06:98C3: D0 07     BNE bra_98CC
C - - - - - 0x0198D5 06:98C5: A5 1A     LDA ram_001A
C - - - - - 0x0198D7 06:98C7: D0 03     BNE bra_98CC
C - - - - - 0x0198D9 06:98C9: 20 BA E7  JSR sub_0x01E7CA
bra_98CC:
C - - - - - 0x0198DC 06:98CC: A0 08     LDY #$08
C - - - - - 0x0198DE 06:98CE: 20 B9 FC  JSR sub_0x01FCC9
C - - - - - 0x0198E1 06:98D1: 20 4E 98  JSR sub_984E
C - - - - - 0x0198E4 06:98D4: 90 0D     BCC bra_98E3
C - - - - - 0x0198E6 06:98D6: A5 BE     LDA ram_00BE
C - - - - - 0x0198E8 06:98D8: C9 30     CMP #$30
C - - - - - 0x0198EA 06:98DA: D0 07     BNE bra_98E3
C - - - - - 0x0198EC 06:98DC: A5 1A     LDA ram_001A
C - - - - - 0x0198EE 06:98DE: D0 03     BNE bra_98E3
C - - - - - 0x0198F0 06:98E0: 20 BA E7  JSR sub_0x01E7CA
bra_98E3:
C - - - - - 0x0198F3 06:98E3: 28        PLP
C - - - - - 0x0198F4 06:98E4: 90 05     BCC bra_98EB
C - - - - - 0x0198F6 06:98E6: A9 00     LDA #$00
C - - - - - 0x0198F8 06:98E8: 9D D0 03  STA ram_direction,X
bra_98EB:
C - - - - - 0x0198FB 06:98EB: A5 30     LDA ram_ariel_status
C - - - - - 0x0198FD 06:98ED: C9 04     CMP #con_ariel_coming_to_ice
C - - - - - 0x0198FF 06:98EF: F0 17     BEQ bra_9908
C - - - - - 0x019901 06:98F1: C9 05     CMP #con_ariel_coming_to_surface
C - - - - - 0x019903 06:98F3: F0 13     BEQ bra_9908
C - - - - - 0x019905 06:98F5: 20 A0 FB  JSR sub_0x01FBB0
C - - - - - 0x019908 06:98F8: B0 63     BCS bra_995D
C - - - - - 0x01990A 06:98FA: A9 00     LDA #$00
C - - - - - 0x01990C 06:98FC: 99 00 03  STA ram_obj_flags,Y
C - - - - - 0x01990F 06:98FF: B9 D0 03  LDA ram_direction,Y
C - - - - - 0x019912 06:9902: 9D D0 03  STA ram_direction,X
C - - - - - 0x019915 06:9905: 4C 23 99  JMP loc_9923
bra_9908:
C - - - - - 0x019918 06:9908: BD D0 03  LDA ram_direction,X
C - - - - - 0x01991B 06:990B: D0 50     BNE bra_995D
C - - - - - 0x01991D 06:990D: 20 F2 FA  JSR sub_0x01FB02
C - - - - - 0x019920 06:9910: B0 4B     BCS bra_995D
C - - - - - 0x019922 06:9912: A9 01     LDA #$01
C - - - - - 0x019924 06:9914: 9D D0 03  STA ram_direction,X
C - - - - - 0x019927 06:9917: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01992A 06:991A: 29 40     AND #$40
C - - - - - 0x01992C 06:991C: D0 05     BNE bra_9923
C - - - - - 0x01992E 06:991E: A9 02     LDA #$02
C - - - - - 0x019930 06:9920: 9D D0 03  STA ram_direction,X
bra_9923:
loc_9923:
C D 0 - - - 0x019933 06:9923: A9 00     LDA #$00
C - - - - - 0x019935 06:9925: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019938 06:9928: A5 99     LDA ram_0099
C - - - - - 0x01993A 06:992A: C9 40     CMP #$40
C - - - - - 0x01993C 06:992C: F0 16     BEQ bra_9944
C - - - - - 0x01993E 06:992E: A9 3C     LDA #$3C
C - - - - - 0x019940 06:9930: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x019943 06:9933: A9 01     LDA #$01
C - - - - - 0x019945 06:9935: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019948 06:9938: A9 60     LDA #$60
C - - - - - 0x01994A 06:993A: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01994D 06:993D: A9 00     LDA #$00
C - - - - - 0x01994F 06:993F: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019952 06:9942: F0 19     BEQ bra_995D   ; jmp
bra_9944:
C - - - - - 0x019954 06:9944: A9 FF     LDA #$FF
C - - - - - 0x019956 06:9946: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019959 06:9949: A9 00     LDA #$00
C - - - - - 0x01995B 06:994B: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01995E 06:994E: A9 04     LDA #$04
C - - - - - 0x019960 06:9950: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019963 06:9953: A9 00     LDA #$00
C - - - - - 0x019965 06:9955: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019968 06:9958: A9 01     LDA #$01
C - - - - - 0x01996A 06:995A: 9D 90 03  STA ram_spd_X_hi,X
bra_995D:
C - - - - - 0x01996D 06:995D: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019970 06:9960: 29 0F     AND #$0F
C - - - - - 0x019972 06:9962: F0 26     BEQ bra_998A_RTS
C - - - - - 0x019974 06:9964: 20 C4 81  JSR sub_81C4
C - - - - - 0x019977 06:9967: B0 14     BCS bra_997D
C - - - - - 0x019979 06:9969: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01997C 06:996C: C9 2A     CMP #con_obj_id_boss_walrus
C - - - - - 0x01997E 06:996E: D0 1A     BNE bra_998A_RTS
C - - - - - 0x019980 06:9970: A9 00     LDA #con_obj_id_00
C - - - - - 0x019982 06:9972: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019985 06:9975: A9 10     LDA #$10
C - - - - - 0x019987 06:9977: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01998A 06:997A: 4C 64 FE  JMP loc_0x01FE74
bra_997D:
C - - - - - 0x01998D 06:997D: 20 35 D5  JSR sub_0x01D545
C - - - - - 0x019990 06:9980: B0 08     BCS bra_998A_RTS
C - - - - - 0x019992 06:9982: A9 00     LDA #$00
C - - - - - 0x019994 06:9984: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019997 06:9987: 20 64 FE  JSR sub_0x01FE74
bra_998A_RTS:
C - - - - - 0x01999A 06:998A: 60        RTS



ofs_005_998B_38_chest_pearl_purple:
; a chest with a purple pearl, can be opened with shell/rock/barrel
ofs_005_998B_39_chest_pearl_green:
; a chest with a green pearl, can be opened with shell/rock/barrel
C - - J - - 0x01999B 06:998B: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01999E 06:998E: 29 0F     AND #$0F
C - - - - - 0x0199A0 06:9990: D0 2D     BNE bra_99BF
C - - - - - 0x0199A2 06:9992: A0 05     LDY #$05
C - - - - - 0x0199A4 06:9994: 20 7F E2  JSR sub_0x01E28F
C - - - - - 0x0199A7 06:9997: A5 10     LDA ram_0010
C - - - - - 0x0199A9 06:9999: C9 30     CMP #$30
C - - - - - 0x0199AB 06:999B: F0 73     BEQ bra_9A10_RTS
C - - - - - 0x0199AD 06:999D: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0199B0 06:99A0: 29 FB     AND #$FB
C - - - - - 0x0199B2 06:99A2: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0199B5 06:99A5: 20 64 FE  JSR sub_0x01FE74
C - - - - - 0x0199B8 06:99A8: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x0199BB 06:99AB: A9 10     LDA #$10
C - - - - - 0x0199BD 06:99AD: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x0199C0 06:99B0: A9 00     LDA #$00
C - - - - - 0x0199C2 06:99B2: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x0199C5 06:99B5: A9 01     LDA #$01
C - - - - - 0x0199C7 06:99B7: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x0199CA 06:99BA: A9 08     LDA #$08
C - - - - - 0x0199CC 06:99BC: 9D D0 03  STA ram_direction,X
bra_99BF:
C - - - - - 0x0199CF 06:99BF: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x0199D2 06:99C2: F0 06     BEQ bra_99CA
C - - - - - 0x0199D4 06:99C4: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x0199D7 06:99C7: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
bra_99CA:
C - - - - - 0x0199DA 06:99CA: 20 F2 FA  JSR sub_0x01FB02
C - - - - - 0x0199DD 06:99CD: B0 41     BCS bra_9A10_RTS
C - - - - - 0x0199DF 06:99CF: A9 19     LDA #con_sfx_item_pickup
C - - - - - 0x0199E1 06:99D1: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x0199E4 06:99D4: A9 51     LDA #$51
C - - - - - 0x0199E6 06:99D6: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0199E9 06:99D9: BC 10 03  LDY ram_obj_id,X
; destroy object
C - - - - - 0x0199EC 06:99DC: A9 00     LDA #con_obj_id_00
C - - - - - 0x0199EE 06:99DE: 9D 10 03  STA ram_obj_id,X
; check stat for overflow
C - - - - - 0x0199F1 06:99E1: B9 05 00  LDA ram_weapon_stats - $38,Y
C - - - - - 0x0199F4 06:99E4: C9 03     CMP #$03
C - - - - - 0x0199F6 06:99E6: F0 11     BEQ bra_99F9    ; if overflow
; increase stat
C - - - - - 0x0199F8 06:99E8: B9 05 00  LDA ram_weapon_stats - $38,Y
C - - - - - 0x0199FB 06:99EB: 18        CLC
C - - - - - 0x0199FC 06:99EC: 69 01     ADC #$01
C - - - - - 0x0199FE 06:99EE: 99 05 00  STA ram_weapon_stats - $38,Y
; 
C - - - - - 0x019A01 06:99F1: C0 38     CPY #con_obj_id_chest_pearl_purple
C - - - - - 0x019A03 06:99F3: D0 04     BNE bra_99F9    ; if green
; if purple, reset weapon range to default
C - - - - - 0x019A05 06:99F5: A9 00     LDA #$00
C - - - - - 0x019A07 06:99F7: 85 3E     STA ram_weapon_range
bra_99F9:
; increase score and counter
C - - - - - 0x019A09 06:99F9: B9 7C 00  LDA ram_item_pearl_purple - $38,Y   ; ram_item_pearl_green
C - - - - - 0x019A0C 06:99FC: C9 09     CMP #$09
C - - - - - 0x019A0E 06:99FE: F0 10     BEQ bra_9A10_RTS
C - - - - - 0x019A10 06:9A00: B9 7C 00  LDA ram_item_pearl_purple - $38,Y   ; ram_item_pearl_green
C - - - - - 0x019A13 06:9A03: 18        CLC
C - - - - - 0x019A14 06:9A04: 69 01     ADC #$01
C - - - - - 0x019A16 06:9A06: 99 7C 00  STA ram_item_pearl_purple - $38,Y   ; ram_item_pearl_green
C - - - - - 0x019A19 06:9A09: 98        TYA
C - - - - - 0x019A1A 06:9A0A: 38        SEC
C - - - - - 0x019A1B 06:9A0B: E9 36     SBC #$36
C - - - - - 0x019A1D 06:9A0D: 20 78 9B  JSR sub_9B78_increase_score_for_object
bra_9A10_RTS:
C - - - - - 0x019A20 06:9A10: 60        RTS



ofs_005_9A11_36_extra_life:
; extra life, can be found trapped by rocks/barrels or inside secret areas
C - - J - - 0x019A21 06:9A11: 20 F2 FA  JSR sub_0x01FB02
C - - - - - 0x019A24 06:9A14: B0 FA     BCS bra_9A10_RTS
C - - - - - 0x019A26 06:9A16: 20 64 FE  JSR sub_0x01FE74
C - - - - - 0x019A29 06:9A19: A9 19     LDA #con_sfx_item_pickup
C - - - - - 0x019A2B 06:9A1B: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x019A2E 06:9A1E: A9 51     LDA #$51
C - - - - - 0x019A30 06:9A20: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019A33 06:9A23: A9 00     LDA #con_obj_id_00
C - - - - - 0x019A35 06:9A25: 9D 10 03  STA ram_obj_id,X
; bzk optimize, why play this sound again?
C - - - - - 0x019A38 06:9A28: A9 19     LDA #con_sfx_item_pickup
C - - - - - 0x019A3A 06:9A2A: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x019A3D 06:9A2D: A5 B0     LDA ram_lives
C - - - - - 0x019A3F 06:9A2F: C9 09     CMP #$09
C - - - - - 0x019A41 06:9A31: F0 DD     BEQ bra_9A10_RTS
C - - - - - 0x019A43 06:9A33: E6 B0     INC ram_lives
C - - - - - 0x019A45 06:9A35: 60        RTS



ofs_005_9A36_34_heart_big:
; hidden item heart big
ofs_005_9A36_35_heart_small:
; hidden item heart small
C - - J - - 0x019A46 06:9A36: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019A49 06:9A39: F0 04     BEQ bra_9A3F
C - - - - - 0x019A4B 06:9A3B: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019A4E 06:9A3E: 60        RTS
bra_9A3F:
C - - - - - 0x019A4F 06:9A3F: 20 F2 FA  JSR sub_0x01FB02
C - - - - - 0x019A52 06:9A42: B0 22     BCS bra_9A66_RTS
C - - - - - 0x019A54 06:9A44: BC 10 03  LDY ram_obj_id,X
C - - - - - 0x019A57 06:9A47: A5 B1     LDA ram_hearts
C - - - - - 0x019A59 06:9A49: 18        CLC
C - - - - - 0x019A5A 06:9A4A: 79 33 9A  ADC tbl_9A67 - $34,Y
C - - - - - 0x019A5D 06:9A4D: 85 B1     STA ram_hearts
C - - - - - 0x019A5F 06:9A4F: C9 05     CMP #$05
C - - - - - 0x019A61 06:9A51: 90 04     BCC bra_9A57_not_overflow
C - - - - - 0x019A63 06:9A53: A9 05     LDA #$05
C - - - - - 0x019A65 06:9A55: 85 B1     STA ram_hearts
bra_9A57_not_overflow:
C - - - - - 0x019A67 06:9A57: A9 51     LDA #$51
C - - - - - 0x019A69 06:9A59: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019A6C 06:9A5C: A9 00     LDA #con_obj_id_00
C - - - - - 0x019A6E 06:9A5E: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019A71 06:9A61: A9 19     LDA #con_sfx_item_pickup
C - - - - - 0x019A73 06:9A63: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
bra_9A66_RTS:
C - - - - - 0x019A76 06:9A66: 60        RTS



tbl_9A67:
- D 0 - - - 0x019A77 06:9A67: 02        .byte $02   ; 34 big heart
- D 0 - - - 0x019A78 06:9A68: 01        .byte $01   ; 35 small heart



ofs_005_9A69_3A_item_fork:
; hidden item fork, can be found in corners or sand
ofs_005_9A69_3B_item_pipe:
; hidden item pipe, can be found in corners or sand
C - - J - - 0x019A79 06:9A69: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019A7C 06:9A6C: F0 04     BEQ bra_9A72
C - - - - - 0x019A7E 06:9A6E: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019A81 06:9A71: 60        RTS
bra_9A72:
C - - - - - 0x019A82 06:9A72: 20 F2 FA  JSR sub_0x01FB02
C - - - - - 0x019A85 06:9A75: B0 29     BCS bra_9AA0_RTS
C - - - - - 0x019A87 06:9A77: A9 19     LDA #con_sfx_item_pickup
C - - - - - 0x019A89 06:9A79: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x019A8C 06:9A7C: A9 51     LDA #$51
C - - - - - 0x019A8E 06:9A7E: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019A91 06:9A81: BC 10 03  LDY ram_obj_id,X
C - - - - - 0x019A94 06:9A84: A9 00     LDA #con_obj_id_00
C - - - - - 0x019A96 06:9A86: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019A99 06:9A89: B9 78 00  LDA ram_item_fork - $3A,Y   ; ram_item_pipe
C - - - - - 0x019A9C 06:9A8C: C9 09     CMP #$09
C - - - - - 0x019A9E 06:9A8E: F0 10     BEQ bra_9AA0_RTS
C - - - - - 0x019AA0 06:9A90: B9 78 00  LDA ram_item_fork - $3A,Y   ; ram_item_pipe
C - - - - - 0x019AA3 06:9A93: 18        CLC
C - - - - - 0x019AA4 06:9A94: 69 01     ADC #$01
C - - - - - 0x019AA6 06:9A96: 99 78 00  STA ram_item_fork - $3A,Y   ; ram_item_pipe
C - - - - - 0x019AA9 06:9A99: 98        TYA
C - - - - - 0x019AAA 06:9A9A: 38        SEC
C - - - - - 0x019AAB 06:9A9B: E9 3A     SBC #$3A
C - - - - - 0x019AAD 06:9A9D: 20 78 9B  JSR sub_9B78_increase_score_for_object
bra_9AA0_RTS:
C - - - - - 0x019AB0 06:9AA0: 60        RTS



ofs_005_9AA1_4D_secret_heart_sand:
; hidden small/big heart in a sand
ofs_005_9AA1_4E_secret_heart_left:
; hidden small/big heart left side, moves right when unlocked
ofs_005_9AA1_4F_secret_heart_right:
; hidden small/big heart right side, moves left when unlocked
ofs_005_9AA1_50_secret_heart_down:
; hidden small/big heart down side, moves up when unlocked
ofs_005_9AA1_51_secret_heart_up:
; hidden small/big heart up side, moves down when unlocked
C - - J - - 0x019AB1 06:9AA1: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019AB4 06:9AA4: 29 04     AND #$04
C - - - - - 0x019AB6 06:9AA6: D0 61     BNE bra_9B09_RTS
C - - - - - 0x019AB8 06:9AA8: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019ABB 06:9AAB: D0 46     BNE bra_9AF3
C - - - - - 0x019ABD 06:9AAD: A9 10     LDA #$10
C - - - - - 0x019ABF 06:9AAF: DD 30 04  CMP ram_0430_obj,X
C - - - - - 0x019AC2 06:9AB2: F0 03     BEQ bra_9AB7
C - - - - - 0x019AC4 06:9AB4: 20 45 FC  JSR sub_0x01FC55
bra_9AB7:
C - - - - - 0x019AC7 06:9AB7: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x019ACA 06:9ABA: C9 05     CMP #$05
C - - - - - 0x019ACC 06:9ABC: D0 4B     BNE bra_9B09_RTS
C - - - - - 0x019ACE 06:9ABE: A5 E4     LDA ram_random
C - - - - - 0x019AD0 06:9AC0: 65 E5     ADC ram_random + $01
C - - - - - 0x019AD2 06:9AC2: 85 E6     STA ram_random + $02
C - - - - - 0x019AD4 06:9AC4: 29 01     AND #$01
C - - - - - 0x019AD6 06:9AC6: 48        PHA
C - - - - - 0x019AD7 06:9AC7: 18        CLC
C - - - - - 0x019AD8 06:9AC8: 69 46     ADC #$46
C - - - - - 0x019ADA 06:9ACA: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019ADD 06:9ACD: 68        PLA
C - - - - - 0x019ADE 06:9ACE: 18        CLC
C - - - - - 0x019ADF 06:9ACF: 69 34     ADC #$34    ; con_obj_id_heart_big     con_obj_id_heart_small
C - - - - - 0x019AE1 06:9AD1: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019AE4 06:9AD4: A9 10     LDA #$10
C - - - - - 0x019AE6 06:9AD6: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019AE9 06:9AD9: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x019AEC 06:9ADC: A8        TAY
C - - - - - 0x019AED 06:9ADD: B9 26 9B  LDA tbl_9B73_direction - $4D,Y
C - - - - - 0x019AF0 06:9AE0: 9D D0 03  STA ram_direction,X
C - - - - - 0x019AF3 06:9AE3: A9 00     LDA #$00
C - - - - - 0x019AF5 06:9AE5: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019AF8 06:9AE8: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x019AFB 06:9AEB: A9 01     LDA #$01
C - - - - - 0x019AFD 06:9AED: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019B00 06:9AF0: 9D B0 03  STA ram_spd_Y_hi,X
bra_9AF3:
C - - - - - 0x019B03 06:9AF3: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019B06 06:9AF6: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x019B09 06:9AF9: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x019B0C 06:9AFC: D0 0B     BNE bra_9B09_RTS
C - - - - - 0x019B0E 06:9AFE: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019B11 06:9B01: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019B14 06:9B04: A9 0F     LDA #$0F
C - - - - - 0x019B16 06:9B06: 9D 60 04  STA ram_0460_obj,X
bra_9B09_RTS:
C - - - - - 0x019B19 06:9B09: 60        RTS



ofs_005_9B0A_52_secret_item_sand:
; hidden fork/pipe in a sand
ofs_005_9B0A_53_secret_item_left:
; hidden fork/pipe left side, moves right when unlocked
ofs_005_9B0A_54_secret_item_right:
; hidden fork/pipe right side, moves left when unlocked (unused but working)
ofs_005_9B0A_55_secret_item_down:
; hidden fork/pipe down side, moves up when unlocked
ofs_005_9B0A_56_secret_item_up:
; hidden fork/pipe up side, moves down when unlocked
C - - J - - 0x019B1A 06:9B0A: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019B1D 06:9B0D: 29 04     AND #$04
C - - - - - 0x019B1F 06:9B0F: D0 61     BNE bra_9B72_RTS
C - - - - - 0x019B21 06:9B11: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019B24 06:9B14: D0 46     BNE bra_9B5C
C - - - - - 0x019B26 06:9B16: A9 10     LDA #$10
C - - - - - 0x019B28 06:9B18: DD 30 04  CMP ram_0430_obj,X
C - - - - - 0x019B2B 06:9B1B: F0 03     BEQ bra_9B20
C - - - - - 0x019B2D 06:9B1D: 20 45 FC  JSR sub_0x01FC55
bra_9B20:
C - - - - - 0x019B30 06:9B20: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x019B33 06:9B23: C9 05     CMP #$05
C - - - - - 0x019B35 06:9B25: D0 4B     BNE bra_9B72_RTS
C - - - - - 0x019B37 06:9B27: A5 E4     LDA ram_random
C - - - - - 0x019B39 06:9B29: 65 E6     ADC ram_random + $02
C - - - - - 0x019B3B 06:9B2B: 85 E5     STA ram_random + $01
C - - - - - 0x019B3D 06:9B2D: 29 01     AND #$01
C - - - - - 0x019B3F 06:9B2F: 48        PHA
C - - - - - 0x019B40 06:9B30: 18        CLC
C - - - - - 0x019B41 06:9B31: 69 4C     ADC #$4C
C - - - - - 0x019B43 06:9B33: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019B46 06:9B36: 68        PLA
C - - - - - 0x019B47 06:9B37: 18        CLC
C - - - - - 0x019B48 06:9B38: 69 3A     ADC #$3A    ; con_obj_id_item_fork     con_obj_id_item_pipe
C - - - - - 0x019B4A 06:9B3A: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019B4D 06:9B3D: A9 10     LDA #$10
C - - - - - 0x019B4F 06:9B3F: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019B52 06:9B42: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x019B55 06:9B45: A8        TAY
C - - - - - 0x019B56 06:9B46: B9 21 9B  LDA tbl_9B73_direction - $52,Y
C - - - - - 0x019B59 06:9B49: 9D D0 03  STA ram_direction,X
C - - - - - 0x019B5C 06:9B4C: A9 00     LDA #$00
C - - - - - 0x019B5E 06:9B4E: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019B61 06:9B51: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x019B64 06:9B54: A9 01     LDA #$01
C - - - - - 0x019B66 06:9B56: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019B69 06:9B59: 9D B0 03  STA ram_spd_Y_hi,X
bra_9B5C:
C - - - - - 0x019B6C 06:9B5C: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019B6F 06:9B5F: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x019B72 06:9B62: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x019B75 06:9B65: D0 0B     BNE bra_9B72_RTS
C - - - - - 0x019B77 06:9B67: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019B7A 06:9B6A: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019B7D 06:9B6D: A9 0F     LDA #$0F
C - - - - - 0x019B7F 06:9B6F: 9D 60 04  STA ram_0460_obj,X
bra_9B72_RTS:
C - - - - - 0x019B82 06:9B72: 60        RTS



tbl_9B73_direction:
- D 0 - - - 0x019B83 06:9B73: 00        .byte $00   ; 4D 52
- D 0 - - - 0x019B84 06:9B74: 01        .byte $01   ; 4E 53 right
- D 0 - - - 0x019B85 06:9B75: 02        .byte $02   ; 4F 54 left
- D 0 - - - 0x019B86 06:9B76: 08        .byte $08   ; 50 55 up
- D 0 - - - 0x019B87 06:9B77: 04        .byte $04   ; 51 56 down



sub_9B78_increase_score_for_object:
C - - - - - 0x019B88 06:9B78: 0A        ASL
C - - - - - 0x019B89 06:9B79: 0A        ASL
C - - - - - 0x019B8A 06:9B7A: 09 03     ORA #$03
C - - - - - 0x019B8C 06:9B7C: A8        TAY
C - - - - - 0x019B8D 06:9B7D: A9 03     LDA #$03
C - - - - - 0x019B8F 06:9B7F: 85 00     STA ram_0000    ; counter
C - - - - - 0x019B91 06:9B81: 18        CLC
bra_9B82_loop:
C - - - - - 0x019B92 06:9B82: B9 07 05  LDA ram_score_obj,Y
C - - - - - 0x019B95 06:9B85: 79 97 9B  ADC tbl_9B97_points,Y
C - - - - - 0x019B98 06:9B88: C9 0A     CMP #$0A
C - - - - - 0x019B9A 06:9B8A: 90 02     BCC bra_9B8E
C - - - - - 0x019B9C 06:9B8C: E9 0A     SBC #$0A
bra_9B8E:
C - - - - - 0x019B9E 06:9B8E: 99 07 05  STA ram_score_obj,Y
C - - - - - 0x019BA1 06:9B91: 88        DEY
C - - - - - 0x019BA2 06:9B92: C6 00     DEC ram_0000    ; counter
C - - - - - 0x019BA4 06:9B94: 10 EC     BPL bra_9B82_loop
C - - - - - 0x019BA6 06:9B96: 60        RTS



tbl_9B97_points:
- D 0 - - - 0x019BA7 06:9B97: 00        .byte $00, $08, $00, $00   ; 00 (3A) fork 800
- D 0 - - - 0x019BAB 06:9B9B: 00        .byte $00, $05, $00, $00   ; 01 (3B) pipe 500
- D 0 - - - 0x019BAF 06:9B9F: 01        .byte $01, $00, $00, $00   ; 02 (38) pearl purple 1000
- D 0 - - - 0x019BB3 06:9BA3: 01        .byte $01, $00, $00, $00   ; 03 (39) pearl green 1000



ofs_005_9BA7_0C_boss_shark_1:
; stage 1 boss when he spawns minions
C - - J - - 0x019BB7 06:9BA7: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019BBA 06:9BAA: 29 0F     AND #$0F
C - - - - - 0x019BBC 06:9BAC: D0 1D     BNE bra_9BCB
C - - - - - 0x019BBE 06:9BAE: 20 09 A6  JSR sub_A609
C - - - - - 0x019BC1 06:9BB1: 90 3C     BCC bra_9BEF_RTS
C - - - - - 0x019BC3 06:9BB3: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019BC6 06:9BB6: FE 70 04  INC ram_obj_timer,X
C - - - - - 0x019BC9 06:9BB9: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019BCC 06:9BBC: C9 40     CMP #$40
C - - - - - 0x019BCE 06:9BBE: D0 2F     BNE bra_9BEF_RTS
C - - - - - 0x019BD0 06:9BC0: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x019BD3 06:9BC3: A9 00     LDA #$00
C - - - - - 0x019BD5 06:9BC5: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019BD8 06:9BC8: 9D 70 04  STA ram_obj_timer,X
bra_9BCB:
C - - - - - 0x019BDB 06:9BCB: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019BDE 06:9BCE: F0 20     BEQ bra_9BF0
C - - - - - 0x019BE0 06:9BD0: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x019BE3 06:9BD3: D0 1A     BNE bra_9BEF_RTS
C - - - - - 0x019BE5 06:9BD5: A9 02     LDA #$02
C - - - - - 0x019BE7 06:9BD7: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019BEA 06:9BDA: A9 00     LDA #$00
C - - - - - 0x019BEC 06:9BDC: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019BEF 06:9BDF: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019BF2 06:9BE2: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x019BF5 06:9BE5: A9 0D     LDA #con_obj_id_boss_shark_2
C - - - - - 0x019BF7 06:9BE7: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019BFA 06:9BEA: A9 5D     LDA #$5D
C - - - - - 0x019BFC 06:9BEC: 20 45 FC  JSR sub_0x01FC55
bra_9BEF_RTS:
C - - - - - 0x019BFF 06:9BEF: 60        RTS
bra_9BF0:
C - - - - - 0x019C00 06:9BF0: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019C03 06:9BF3: 29 0F     AND #$0F
C - - - - - 0x019C05 06:9BF5: C9 03     CMP #$03
C - - - - - 0x019C07 06:9BF7: F0 48     BEQ bra_9C41
C - - - - - 0x019C09 06:9BF9: 20 12 FD  JSR sub_0x01FD22
C - - - - - 0x019C0C 06:9BFC: C9 20     CMP #$20
C - - - - - 0x019C0E 06:9BFE: B0 1C     BCS bra_9C1C
C - - - - - 0x019C10 06:9C00: BD 90 04  LDA ram_0490_obj,X
C - - - - - 0x019C13 06:9C03: D0 0A     BNE bra_9C0F
C - - - - - 0x019C15 06:9C05: A5 E4     LDA ram_random
C - - - - - 0x019C17 06:9C07: 65 E5     ADC ram_random + $01
C - - - - - 0x019C19 06:9C09: 85 E5     STA ram_random + $01
C - - - - - 0x019C1B 06:9C0B: 29 01     AND #$01
C - - - - - 0x019C1D 06:9C0D: D0 06     BNE bra_9C15
bra_9C0F:
loc_9C0F:
C D 0 - - - 0x019C1F 06:9C0F: A9 A0     LDA #$A0
C - - - - - 0x019C21 06:9C11: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019C24 06:9C14: 60        RTS
bra_9C15:
C - - - - - 0x019C25 06:9C15: A9 83     LDA #$83
C - - - - - 0x019C27 06:9C17: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019C2A 06:9C1A: D0 0C     BNE bra_9C28   ; jmp
bra_9C1C:
C - - - - - 0x019C2C 06:9C1C: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019C2F 06:9C1F: 29 0F     AND #$0F
C - - - - - 0x019C31 06:9C21: C9 01     CMP #$01
C - - - - - 0x019C33 06:9C23: D0 1C     BNE bra_9C41
C - - - - - 0x019C35 06:9C25: FE 00 03  INC ram_obj_flags,X
bra_9C28:
C - - - - - 0x019C38 06:9C28: A9 20     LDA #$20
C - - - - - 0x019C3A 06:9C2A: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019C3D 06:9C2D: A9 00     LDA #$00
C - - - - - 0x019C3F 06:9C2F: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x019C42 06:9C32: A8        TAY
C - - - - - 0x019C43 06:9C33: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x019C46 06:9C36: DD 60 03  CMP ram_pos_Y_lo,X
C - - - - - 0x019C49 06:9C39: 90 02     BCC bra_9C3D
C - - - - - 0x019C4B 06:9C3B: A0 03     LDY #$03
bra_9C3D:
C - - - - - 0x019C4D 06:9C3D: 98        TYA
C - - - - - 0x019C4E 06:9C3E: 9D 80 04  STA ram_0480_obj,X
bra_9C41:
C - - - - - 0x019C51 06:9C41: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019C54 06:9C44: D0 75     BNE bra_9CBB_RTS
C - - - - - 0x019C56 06:9C46: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x019C59 06:9C49: B0 70     BCS bra_9CBB_RTS
C - - - - - 0x019C5B 06:9C4B: 86 0F     STX ram_000F
C - - - - - 0x019C5D 06:9C4D: A9 20     LDA #$20
C - - - - - 0x019C5F 06:9C4F: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x019C62 06:9C52: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x019C65 06:9C55: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x019C68 06:9C58: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x019C6B 06:9C5B: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x019C6E 06:9C5E: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x019C71 06:9C61: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x019C74 06:9C64: BD D0 03  LDA ram_direction,X
C - - - - - 0x019C77 06:9C67: 99 D0 03  STA ram_direction,Y
C - - - - - 0x019C7A 06:9C6A: 29 01     AND #$01
C - - - - - 0x019C7C 06:9C6C: AA        TAX
C - - - - - 0x019C7D 06:9C6D: BD BC 9C  LDA tbl_9CBC,X
C - - - - - 0x019C80 06:9C70: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x019C83 06:9C73: A6 0F     LDX ram_000F
C - - - - - 0x019C85 06:9C75: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x019C88 06:9C78: AA        TAX
C - - - - - 0x019C89 06:9C79: B9 60 03  LDA ram_pos_Y_lo,Y
C - - - - - 0x019C8C 06:9C7C: 18        CLC
C - - - - - 0x019C8D 06:9C7D: 7D BE 9C  ADC tbl_9CBE_pos_X_lo,X
C - - - - - 0x019C90 06:9C80: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x019C93 06:9C83: A6 0F     LDX ram_000F
C - - - - - 0x019C95 06:9C85: C9 08     CMP #$08
C - - - - - 0x019C97 06:9C87: 90 86     BCC bra_9C0F
C - - - - - 0x019C99 06:9C89: C9 E8     CMP #$E8
C - - - - - 0x019C9B 06:9C8B: B0 82     BCS bra_9C0F
C - - - - - 0x019C9D 06:9C8D: A9 00     LDA #$00
C - - - - - 0x019C9F 06:9C8F: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x019CA2 06:9C92: A9 01     LDA #$01
C - - - - - 0x019CA4 06:9C94: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x019CA7 06:9C97: A9 60     LDA #$60
C - - - - - 0x019CA9 06:9C99: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x019CAC 06:9C9C: A9 01     LDA #$01
C - - - - - 0x019CAE 06:9C9E: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x019CB1 06:9CA1: A9 0E     LDA #con_obj_id_piranha_minion_shark
C - - - - - 0x019CB3 06:9CA3: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x019CB6 06:9CA6: A9 40     LDA #$40
C - - - - - 0x019CB8 06:9CA8: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019CBB 06:9CAB: FE 80 04  INC ram_0480_obj,X
C - - - - - 0x019CBE 06:9CAE: FE 90 04  INC ram_0490_obj,X
C - - - - - 0x019CC1 06:9CB1: BD 90 04  LDA ram_0490_obj,X
C - - - - - 0x019CC4 06:9CB4: C9 03     CMP #$03
C - - - - - 0x019CC6 06:9CB6: 90 03     BCC bra_9CBB_RTS
C - - - - - 0x019CC8 06:9CB8: 4C 0F 9C  JMP loc_9C0F
bra_9CBB_RTS:
C - - - - - 0x019CCB 06:9CBB: 60        RTS



tbl_9CBC:
- D 0 - - - 0x019CCC 06:9CBC: FC        .byte $FC   ; 00
- D 0 - - - 0x019CCD 06:9CBD: 04        .byte $04   ; 01



tbl_9CBE_pos_X_lo:
- D 0 - - - 0x019CCE 06:9CBE: E0        .byte $E0   ; 00
- D 0 - - - 0x019CCF 06:9CBF: C0        .byte $C0   ; 01
- D 0 - - - 0x019CD0 06:9CC0: A0        .byte $A0   ; 02
- D 0 - - - 0x019CD1 06:9CC1: 20        .byte $20   ; 03
- D 0 - - - 0x019CD2 06:9CC2: 40        .byte $40   ; 04
- D 0 - - - 0x019CD3 06:9CC3: 60        .byte $60   ; 05



ofs_005_9CC4_0D_boss_shark_2:
; stage 1 boss boss when accelerates straight foward
C - - J - - 0x019CD4 06:9CC4: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019CD7 06:9CC7: F0 41     BEQ bra_9D0A
C - - - - - 0x019CD9 06:9CC9: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019CDC 06:9CCC: D0 ED     BNE bra_9CBB_RTS
C - - - - - 0x019CDE 06:9CCE: A9 5C     LDA #$5C
C - - - - - 0x019CE0 06:9CD0: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019CE3 06:9CD3: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019CE6 06:9CD6: 29 FB     AND #$FB
C - - - - - 0x019CE8 06:9CD8: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019CEB 06:9CDB: A9 80     LDA #$80
C - - - - - 0x019CED 06:9CDD: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019CF0 06:9CE0: A9 00     LDA #$00
C - - - - - 0x019CF2 06:9CE2: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019CF5 06:9CE5: A9 80     LDA #$80
C - - - - - 0x019CF7 06:9CE7: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019CFA 06:9CEA: A9 0C     LDA #con_obj_id_boss_shark_1
C - - - - - 0x019CFC 06:9CEC: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019CFF 06:9CEF: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x019D02 06:9CF2: C9 70     CMP #$70
C - - - - - 0x019D04 06:9CF4: B0 0A     BCS bra_9D00
C - - - - - 0x019D06 06:9CF6: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x019D09 06:9CF9: 18        CLC
C - - - - - 0x019D0A 06:9CFA: 69 48     ADC #$48
C - - - - - 0x019D0C 06:9CFC: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x019D0F 06:9CFF: 60        RTS
bra_9D00:
C - - - - - 0x019D10 06:9D00: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x019D13 06:9D03: 38        SEC
C - - - - - 0x019D14 06:9D04: E9 48     SBC #$48
C - - - - - 0x019D16 06:9D06: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x019D19 06:9D09: 60        RTS
bra_9D0A:
C - - - - - 0x019D1A 06:9D0A: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019D1D 06:9D0D: BD D0 03  LDA ram_direction,X
C - - - - - 0x019D20 06:9D10: 29 01     AND #$01
C - - - - - 0x019D22 06:9D12: F0 08     BEQ bra_9D1C
C - - - - - 0x019D24 06:9D14: A9 FC     LDA #$FC
C - - - - - 0x019D26 06:9D16: DD 30 03  CMP ram_pos_X_lo,X
C - - - - - 0x019D29 06:9D19: 90 09     BCC bra_9D24
C - - - - - 0x019D2B 06:9D1B: 60        RTS
bra_9D1C:
C - - - - - 0x019D2C 06:9D1C: A9 04     LDA #$04
C - - - - - 0x019D2E 06:9D1E: DD 30 03  CMP ram_pos_X_lo,X
C - - - - - 0x019D31 06:9D21: B0 01     BCS bra_9D24
C - - - - - 0x019D33 06:9D23: 60        RTS
bra_9D24:
C - - - - - 0x019D34 06:9D24: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x019D37 06:9D27: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019D3A 06:9D2A: 09 04     ORA #$04
C - - - - - 0x019D3C 06:9D2C: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019D3F 06:9D2F: A9 60     LDA #$60
C - - - - - 0x019D41 06:9D31: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019D44 06:9D34: 4C 5A 9E  JMP loc_9E5A



ofs_005_9D37_0E_piranha_minion_shark:
; piranha fish during stage 1 boss fight, just swims straight foward
C - - J - - 0x019D47 06:9D37: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis



ofs_005_9D3A_2A_boss_walrus:
; stage 3 boss
C - - J - - 0x019D4A 06:9D3A: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019D4D 06:9D3D: 29 0F     AND #$0F
C - - - - - 0x019D4F 06:9D3F: D0 48     BNE bra_9D89
C - - - - - 0x019D51 06:9D41: 85 BC     STA ram_00BC
C - - - - - 0x019D53 06:9D43: 20 09 A6  JSR sub_A609
C - - - - - 0x019D56 06:9D46: 90 40     BCC bra_9D88_RTS
C - - - - - 0x019D58 06:9D48: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019D5B 06:9D4B: FE 70 04  INC ram_obj_timer,X
C - - - - - 0x019D5E 06:9D4E: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019D61 06:9D51: C9 60     CMP #$60
C - - - - - 0x019D63 06:9D53: 90 33     BCC bra_9D88_RTS
C - - - - - 0x019D65 06:9D55: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x019D68 06:9D58: A5 E4     LDA ram_random
C - - - - - 0x019D6A 06:9D5A: 29 01     AND #$01
C - - - - - 0x019D6C 06:9D5C: A8        TAY
C - - - - - 0x019D6D 06:9D5D: B9 B1 9E  LDA tbl_9EB1,Y
C - - - - - 0x019D70 06:9D60: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019D73 06:9D63: 85 00     STA ram_0000
C - - - - - 0x019D75 06:9D65: A5 E5     LDA ram_random + $01
C - - - - - 0x019D77 06:9D67: 65 E7     ADC ram_random + $03
C - - - - - 0x019D79 06:9D69: 85 E7     STA ram_random + $03
C - - - - - 0x019D7B 06:9D6B: 29 07     AND #$07
C - - - - - 0x019D7D 06:9D6D: A4 00     LDY ram_0000
C - - - - - 0x019D7F 06:9D6F: C0 06     CPY #$06
C - - - - - 0x019D81 06:9D71: F0 02     BEQ bra_9D75
C - - - - - 0x019D83 06:9D73: 29 03     AND #$03
bra_9D75:
C - - - - - 0x019D85 06:9D75: 0A        ASL
C - - - - - 0x019D86 06:9D76: A8        TAY
C - - - - - 0x019D87 06:9D77: B9 B3 9E  LDA tbl_9EB3,Y
C - - - - - 0x019D8A 06:9D7A: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x019D8D 06:9D7D: B9 B4 9E  LDA tbl_9EB3 + $01,Y
C - - - - - 0x019D90 06:9D80: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x019D93 06:9D83: A9 70     LDA #$70
C - - - - - 0x019D95 06:9D85: 9D 60 04  STA ram_0460_obj,X
bra_9D88_RTS:
C - - - - - 0x019D98 06:9D88: 60        RTS
bra_9D89:
C - - - - - 0x019D99 06:9D89: C9 01     CMP #$01
C - - - - - 0x019D9B 06:9D8B: F0 03     BEQ bra_9D90
C - - - - - 0x019D9D 06:9D8D: 4C 6B 9E  JMP loc_9E6B
bra_9D90:
C - - - - - 0x019DA0 06:9D90: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019DA3 06:9D93: C9 58     CMP #$58
C - - - - - 0x019DA5 06:9D95: D0 08     BNE bra_9D9F
C - - - - - 0x019DA7 06:9D97: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x019DAA 06:9D9A: F0 03     BEQ bra_9D9F
C - - - - - 0x019DAC 06:9D9C: DE 30 04  DEC ram_0430_obj,X
bra_9D9F:
C - - - - - 0x019DAF 06:9D9F: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019DB2 06:9DA2: F0 14     BEQ bra_9DB8
C - - - - - 0x019DB4 06:9DA4: A4 BC     LDY ram_00BC
C - - - - - 0x019DB6 06:9DA6: F0 E0     BEQ bra_9D88_RTS
C - - - - - 0x019DB8 06:9DA8: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x019DBB 06:9DAB: 29 0F     AND #$0F
C - - - - - 0x019DBD 06:9DAD: F0 D9     BEQ bra_9D88_RTS
C - - - - - 0x019DBF 06:9DAF: A9 00     LDA #$00
C - - - - - 0x019DC1 06:9DB1: 85 BC     STA ram_00BC
C - - - - - 0x019DC3 06:9DB3: A9 58     LDA #$58
C - - - - - 0x019DC5 06:9DB5: 4C 45 FC  JMP loc_0x01FC55
bra_9DB8:
C - - - - - 0x019DC8 06:9DB8: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x019DCB 06:9DBB: D0 08     BNE bra_9DC5
C - - - - - 0x019DCD 06:9DBD: A9 57     LDA #$57
C - - - - - 0x019DCF 06:9DBF: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019DD2 06:9DC2: 4C 52 9E  JMP loc_9E52
bra_9DC5:
C - - - - - 0x019DD5 06:9DC5: A9 C0     LDA #$C0
C - - - - - 0x019DD7 06:9DC7: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019DDA 06:9DCA: A9 00     LDA #$00
C - - - - - 0x019DDC 06:9DCC: 85 00     STA ram_0000
C - - - - - 0x019DDE 06:9DCE: A0 0F     LDY #$0F
bra_9DD0_loop:
C - - - - - 0x019DE0 06:9DD0: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x019DE3 06:9DD3: 10 09     BPL bra_9DDE
C - - - - - 0x019DE5 06:9DD5: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x019DE8 06:9DD8: C9 40     CMP #$40
C - - - - - 0x019DEA 06:9DDA: D0 02     BNE bra_9DDE
C - - - - - 0x019DEC 06:9DDC: E6 00     INC ram_0000
bra_9DDE:
C - - - - - 0x019DEE 06:9DDE: 88        DEY
C - - - - - 0x019DEF 06:9DDF: C0 02     CPY #$02
C - - - - - 0x019DF1 06:9DE1: D0 ED     BNE bra_9DD0_loop
C - - - - - 0x019DF3 06:9DE3: A0 00     LDY #$00
C - - - - - 0x019DF5 06:9DE5: A5 00     LDA ram_0000
C - - - - - 0x019DF7 06:9DE7: C9 02     CMP #$02
C - - - - - 0x019DF9 06:9DE9: B0 0F     BCS bra_9DFA
C - - - - - 0x019DFB 06:9DEB: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019DFE 06:9DEE: DD 80 04  CMP ram_0480_obj,X
C - - - - - 0x019E01 06:9DF1: F0 05     BEQ bra_9DF8
C - - - - - 0x019E03 06:9DF3: DD 90 04  CMP ram_0490_obj,X
C - - - - - 0x019E06 06:9DF6: D0 02     BNE bra_9DFA
bra_9DF8:
C - - - - - 0x019E08 06:9DF8: A0 01     LDY #$01
bra_9DFA:
C - - - - - 0x019E0A 06:9DFA: 84 0E     STY ram_000E
C - - - - - 0x019E0C 06:9DFC: 86 0F     STX ram_000F
C - - - - - 0x019E0E 06:9DFE: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x019E11 06:9E01: B0 85     BCS bra_9D88_RTS
C - - - - - 0x019E13 06:9E03: 84 BC     STY ram_00BC
C - - - - - 0x019E15 06:9E05: A6 0E     LDX ram_000E
C - - - - - 0x019E17 06:9E07: BD C5 9E  LDA tbl_9EC5,X
C - - - - - 0x019E1A 06:9E0A: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x019E1D 06:9E0D: BD C3 9E  LDA tbl_9EC3,X
C - - - - - 0x019E20 06:9E10: A6 0F     LDX ram_000F
C - - - - - 0x019E22 06:9E12: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x019E25 06:9E15: A9 08     LDA #$08
C - - - - - 0x019E27 06:9E17: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x019E2A 06:9E1A: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x019E2D 06:9E1D: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x019E30 06:9E20: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x019E33 06:9E23: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x019E36 06:9E26: BD D0 03  LDA ram_direction,X
C - - - - - 0x019E39 06:9E29: 99 D0 03  STA ram_direction,Y
C - - - - - 0x019E3C 06:9E2C: 29 01     AND #$01
C - - - - - 0x019E3E 06:9E2E: AA        TAX
C - - - - - 0x019E3F 06:9E2F: BD AD 9E  LDA tbl_9EAD,X
C - - - - - 0x019E42 06:9E32: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x019E45 06:9E35: A9 80     LDA #$80
C - - - - - 0x019E47 06:9E37: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x019E4A 06:9E3A: A9 01     LDA #$01
C - - - - - 0x019E4C 06:9E3C: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x019E4F 06:9E3F: A9 00     LDA #$00
C - - - - - 0x019E51 06:9E41: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x019E54 06:9E44: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x019E57 06:9E47: A9 01     LDA #$01
C - - - - - 0x019E59 06:9E49: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x019E5C 06:9E4C: A9 2B     LDA #con_obj_id_weapon_walrus
C - - - - - 0x019E5E 06:9E4E: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x019E61 06:9E51: 60        RTS



loc_9E52:
C D 0 - - - 0x019E62 06:9E52: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x019E65 06:9E55: A9 60     LDA #$60
C - - - - - 0x019E67 06:9E57: 9D 60 04  STA ram_0460_obj,X
loc_9E5A:
C D 0 - - - 0x019E6A 06:9E5A: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019E6D 06:9E5D: 49 40     EOR #$40
C - - - - - 0x019E6F 06:9E5F: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019E72 06:9E62: BD D0 03  LDA ram_direction,X
C - - - - - 0x019E75 06:9E65: 49 03     EOR #$03
C - - - - - 0x019E77 06:9E67: 9D D0 03  STA ram_direction,X
C - - - - - 0x019E7A 06:9E6A: 60        RTS



loc_9E6B:
C D 0 - - - 0x019E7B 06:9E6B: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019E7E 06:9E6E: F0 27     BEQ bra_9E97
C - - - - - 0x019E80 06:9E70: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x019E83 06:9E73: D0 37     BNE bra_9EAC_RTS
C - - - - - 0x019E85 06:9E75: BD D0 03  LDA ram_direction,X
C - - - - - 0x019E88 06:9E78: 29 01     AND #$01
C - - - - - 0x019E8A 06:9E7A: A8        TAY
C - - - - - 0x019E8B 06:9E7B: B9 AF 9E  LDA tbl_9EAF,Y
C - - - - - 0x019E8E 06:9E7E: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x019E91 06:9E81: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019E94 06:9E84: 29 FB     AND #$FB
C - - - - - 0x019E96 06:9E86: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019E99 06:9E89: A9 80     LDA #$80
C - - - - - 0x019E9B 06:9E8B: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019E9E 06:9E8E: A9 00     LDA #$00
C - - - - - 0x019EA0 06:9E90: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019EA3 06:9E93: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019EA6 06:9E96: 60        RTS
bra_9E97:
C - - - - - 0x019EA7 06:9E97: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019EAA 06:9E9A: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019EAD 06:9E9D: D0 0D     BNE bra_9EAC_RTS
C - - - - - 0x019EAF 06:9E9F: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019EB2 06:9EA2: 09 04     ORA #$04
C - - - - - 0x019EB4 06:9EA4: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019EB7 06:9EA7: A9 20     LDA #$20
C - - - - - 0x019EB9 06:9EA9: 9D 70 04  STA ram_obj_timer,X
bra_9EAC_RTS:
C - - - - - 0x019EBC 06:9EAC: 60        RTS



tbl_9EAD:
- D 0 - - - 0x019EBD 06:9EAD: D0        .byte $D0   ; 00
- D 0 - - - 0x019EBE 06:9EAE: 30        .byte $30   ; 01



tbl_9EAF:
- D 0 - - - 0x019EBF 06:9EAF: FC        .byte $FC   ; 00
- D 0 - - - 0x019EC0 06:9EB0: 04        .byte $04   ; 01



tbl_9EB1:
- D 0 - - - 0x019EC1 06:9EB1: 04        .byte $04   ; 00
- D 0 - - - 0x019EC2 06:9EB2: 06        .byte $06   ; 01



tbl_9EB3:
- D 0 - - - 0x019EC3 06:9EB3: 03        .byte $03, $02   ; 00
- D 0 - - - 0x019EC5 06:9EB5: 03        .byte $03, $01   ; 01
- D 0 - - - 0x019EC7 06:9EB7: 02        .byte $02, $01   ; 02
- D 0 - - - 0x019EC9 06:9EB9: 04        .byte $04, $03   ; 03
- D 0 - - - 0x019ECB 06:9EBB: 05        .byte $05, $03   ; 04
- - - - - - 0x019ECD 06:9EBD: 05        .byte $05, $02   ; 05
- D 0 - - - 0x019ECF 06:9EBF: 04        .byte $04, $02   ; 06
- D 0 - - - 0x019ED1 06:9EC1: 05        .byte $05, $01   ; 07



tbl_9EC3:
- D 0 - - - 0x019ED3 06:9EC3: 22        .byte $22   ; 00
- D 0 - - - 0x019ED4 06:9EC4: 40        .byte $40   ; 01

tbl_9EC5:
- D 0 - - - 0x019ED5 06:9EC5: 40        .byte $40   ; 00
- D 0 - - - 0x019ED6 06:9EC6: 00        .byte $00   ; 01



ofs_005_9EC7_2B_weapon_walrus:
; spawns 24 or 30 but with 2B index
; they change index to normal when stop sliding
C - - J - - 0x019ED7 06:9EC7: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019EDA 06:9ECA: 29 0F     AND #$0F
C - - - - - 0x019EDC 06:9ECC: D0 28     BNE bra_9EF6
C - - - - - 0x019EDE 06:9ECE: A0 00     LDY #$00
C - - - - - 0x019EE0 06:9ED0: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019EE3 06:9ED3: C9 40     CMP #$40
C - - - - - 0x019EE5 06:9ED5: D0 02     BNE bra_9ED9
C - - - - - 0x019EE7 06:9ED7: A0 06     LDY #$06
bra_9ED9:
C - - - - - 0x019EE9 06:9ED9: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x019EEC 06:9EDC: 90 08     BCC bra_9EE6
C - - - - - 0x019EEE 06:9EDE: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x019EF1 06:9EE1: A9 02     LDA #$02
C - - - - - 0x019EF3 06:9EE3: 9D 70 04  STA ram_obj_timer,X
bra_9EE6:
C - - - - - 0x019EF6 06:9EE6: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019EF9 06:9EE9: C9 40     CMP #$40
C - - - - - 0x019EFB 06:9EEB: D0 72     BNE bra_9F5F_RTS
C - - - - - 0x019EFD 06:9EED: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019F00 06:9EF0: 29 BF     AND #$BF
C - - - - - 0x019F02 06:9EF2: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x019F05 06:9EF5: 60        RTS
bra_9EF6:
C - - - - - 0x019F06 06:9EF6: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x019F09 06:9EF9: A0 00     LDY #$00
C - - - - - 0x019F0B 06:9EFB: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019F0E 06:9EFE: C9 40     CMP #$40
C - - - - - 0x019F10 06:9F00: D0 02     BNE bra_9F04
C - - - - - 0x019F12 06:9F02: A0 06     LDY #$06
bra_9F04:
C - - - - - 0x019F14 06:9F04: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019F17 06:9F07: F0 09     BEQ bra_9F12
C - - - - - 0x019F19 06:9F09: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x019F1C 06:9F0C: D0 04     BNE bra_9F12
C - - - - - 0x019F1E 06:9F0E: A9 00     LDA #$00
C - - - - - 0x019F20 06:9F10: 85 BC     STA ram_00BC
bra_9F12:
C - - - - - 0x019F22 06:9F12: 20 2F F8  JSR sub_0x01F83F
C - - - - - 0x019F25 06:9F15: B0 CF     BCS bra_9EE6
C - - - - - 0x019F27 06:9F17: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019F2A 06:9F1A: C9 22     CMP #$22
C - - - - - 0x019F2C 06:9F1C: D0 24     BNE bra_9F42
C - - - - - 0x019F2E 06:9F1E: A9 24     LDA #con_obj_id_ice_cube_fish
C - - - - - 0x019F30 06:9F20: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019F33 06:9F23: A9 81     LDA #$81
C - - - - - 0x019F35 06:9F25: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019F38 06:9F28: A5 E4     LDA ram_random
C - - - - - 0x019F3A 06:9F2A: 65 E7     ADC ram_random + $03
C - - - - - 0x019F3C 06:9F2C: 85 E7     STA ram_random + $03
C - - - - - 0x019F3E 06:9F2E: 29 03     AND #$03
C - - - - - 0x019F40 06:9F30: A8        TAY
C - - - - - 0x019F41 06:9F31: B9 50 96  LDA tbl_9650,Y
C - - - - - 0x019F44 06:9F34: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x019F47 06:9F37: A9 80     LDA #$80
C - - - - - 0x019F49 06:9F39: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019F4C 06:9F3C: A9 00     LDA #$00
C - - - - - 0x019F4E 06:9F3E: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019F51 06:9F41: 60        RTS
bra_9F42:
C - - - - - 0x019F52 06:9F42: A9 30     LDA #con_obj_id_shell
C - - - - - 0x019F54 06:9F44: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x019F57 06:9F47: A9 81     LDA #$81
C - - - - - 0x019F59 06:9F49: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x019F5C 06:9F4C: A9 00     LDA #$00
C - - - - - 0x019F5E 06:9F4E: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x019F61 06:9F51: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x019F64 06:9F54: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x019F67 06:9F57: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x019F6A 06:9F5A: A9 FF     LDA #$FF
C - - - - - 0x019F6C 06:9F5C: 9D 60 04  STA ram_0460_obj,X
bra_9F5F_RTS:
C - - - - - 0x019F6F 06:9F5F: 60        RTS



ofs_005_9F60_2C_boss_eel_1:
; stage 2 boss, 1st eel
ofs_005_9F60_2D_boss_eel_2:
; stage 2 boss, 2nd eel
C - - J - - 0x019F70 06:9F60: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019F73 06:9F63: 29 0F     AND #$0F
C - - - - - 0x019F75 06:9F65: D0 22     BNE bra_9F89
C - - - - - 0x019F77 06:9F67: 20 09 A6  JSR sub_A609
C - - - - - 0x019F7A 06:9F6A: 90 1C     BCC bra_9F88_RTS
C - - - - - 0x019F7C 06:9F6C: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x019F7F 06:9F6F: C9 2C     CMP #con_obj_id_boss_eel_1
C - - - - - 0x019F81 06:9F71: F0 12     BEQ bra_9F85    ; if 1st eel
; if 2nd eel
C - - - - - 0x019F83 06:9F73: FE 70 04  INC ram_obj_timer,X
C - - - - - 0x019F86 06:9F76: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x019F89 06:9F79: C9 0C     CMP #$0C
C - - - - - 0x019F8B 06:9F7B: D0 0B     BNE bra_9F88_RTS
C - - - - - 0x019F8D 06:9F7D: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x019F90 06:9F80: 29 FB     AND #$FB
C - - - - - 0x019F92 06:9F82: 9D 00 04  STA ram_0400_obj,X
bra_9F85:
C - - - - - 0x019F95 06:9F85: FE 00 03  INC ram_obj_flags,X
bra_9F88_RTS:
C - - - - - 0x019F98 06:9F88: 60        RTS
bra_9F89:
C - - - - - 0x019F99 06:9F89: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x019F9C 06:9F8C: 29 0F     AND #$0F
C - - - - - 0x019F9E 06:9F8E: C9 01     CMP #$01
C - - - - - 0x019FA0 06:9F90: F0 03     BEQ bra_9F95
C - - - - - 0x019FA2 06:9F92: 4C 2B A0  JMP loc_A02B
bra_9F95:
C - - - - - 0x019FA5 06:9F95: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x019FA8 06:9F98: F0 22     BEQ bra_9FBC
C - - - - - 0x019FAA 06:9F9A: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x019FAD 06:9F9D: D0 E9     BNE bra_9F88_RTS
C - - - - - 0x019FAF 06:9F9F: A5 E5     LDA ram_random + $01
C - - - - - 0x019FB1 06:9FA1: 65 E6     ADC ram_random + $02
C - - - - - 0x019FB3 06:9FA3: 85 E6     STA ram_random + $02
C - - - - - 0x019FB5 06:9FA5: 29 03     AND #$03
C - - - - - 0x019FB7 06:9FA7: D0 67     BNE bra_A010
C - - - - - 0x019FB9 06:9FA9: A9 5B     LDA #$5B
C - - - - - 0x019FBB 06:9FAB: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019FBE 06:9FAE: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x019FC1 06:9FB1: A9 00     LDA #$00
C - - - - - 0x019FC3 06:9FB3: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x019FC6 06:9FB6: A9 46     LDA #$46
C - - - - - 0x019FC8 06:9FB8: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x019FCB 06:9FBB: 60        RTS
bra_9FBC:
C - - - - - 0x019FCC 06:9FBC: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x019FCF 06:9FBF: C9 59     CMP #$59
C - - - - - 0x019FD1 06:9FC1: D0 30     BNE bra_9FF3
C - - - - - 0x019FD3 06:9FC3: A9 08     LDA #$08
C - - - - - 0x019FD5 06:9FC5: DD 18 04  CMP ram_animation_cnt,X
C - - - - - 0x019FD8 06:9FC8: D0 BE     BNE bra_9F88_RTS
C - - - - - 0x019FDA 06:9FCA: DD 48 04  CMP ram_0448,X
C - - - - - 0x019FDD 06:9FCD: D0 B9     BNE bra_9F88_RTS
C - - - - - 0x019FDF 06:9FCF: A9 5A     LDA #$5A
C - - - - - 0x019FE1 06:9FD1: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x019FE4 06:9FD4: A9 42     LDA #$42
C - - - - - 0x019FE6 06:9FD6: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x019FE9 06:9FD9: BD D0 03  LDA ram_direction,X
loc_9FDC:
C D 0 - - - 0x019FEC 06:9FDC: 29 02     AND #$02
C - - - - - 0x019FEE 06:9FDE: A8        TAY
C - - - - - 0x019FEF 06:9FDF: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x019FF2 06:9FE2: 18        CLC
C - - - - - 0x019FF3 06:9FE3: 79 A1 A1  ADC tbl_A1A1_pos_X,Y
C - - - - - 0x019FF6 06:9FE6: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x019FF9 06:9FE9: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x019FFC 06:9FEC: 79 A2 A1  ADC tbl_A1A1_pos_X + $01,Y
C - - - - - 0x019FFF 06:9FEF: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x01A002 06:9FF2: 60        RTS
bra_9FF3:
C - - - - - 0x01A003 06:9FF3: C9 45     CMP #$45
C - - - - - 0x01A005 06:9FF5: D0 12     BNE bra_A009
C - - - - - 0x01A007 06:9FF7: A9 02     LDA #$02
C - - - - - 0x01A009 06:9FF9: DD 18 04  CMP ram_animation_cnt,X
C - - - - - 0x01A00C 06:9FFC: D0 8A     BNE bra_9F88_RTS
C - - - - - 0x01A00E 06:9FFE: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01A011 06:A001: A9 00     LDA #$00
C - - - - - 0x01A013 06:A003: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01A016 06:A006: 4C 67 A0  JMP loc_A067
bra_A009:
C - - - - - 0x01A019 06:A009: 20 12 FD  JSR sub_0x01FD22
C - - - - - 0x01A01C 06:A00C: C9 10     CMP #$10
C - - - - - 0x01A01E 06:A00E: B0 15     BCS bra_A025
bra_A010:
C - - - - - 0x01A020 06:A010: A9 00     LDA #$00
C - - - - - 0x01A022 06:A012: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x01A025 06:A015: A9 45     LDA #$45
C - - - - - 0x01A027 06:A017: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01A02A 06:A01A: BD D0 03  LDA ram_direction,X
C - - - - - 0x01A02D 06:A01D: 49 03     EOR #$03
C - - - - - 0x01A02F 06:A01F: 9D D0 03  STA ram_direction,X
C - - - - - 0x01A032 06:A022: 4C DC 9F  JMP loc_9FDC
bra_A025:
C - - - - - 0x01A035 06:A025: A9 C0     LDA #$C0
C - - - - - 0x01A037 06:A027: 9D 60 04  STA ram_0460_obj,X
bra_A02A_RTS:
C - - - - - 0x01A03A 06:A02A: 60        RTS



loc_A02B:
C D 1 - - - 0x01A03B 06:A02B: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01A03E 06:A02E: F0 1D     BEQ bra_A04D
C - - - - - 0x01A040 06:A030: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x01A043 06:A033: D0 F5     BNE bra_A02A_RTS
C - - - - - 0x01A045 06:A035: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01A048 06:A038: 29 FB     AND #$FB
C - - - - - 0x01A04A 06:A03A: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01A04D 06:A03D: A9 81     LDA #$81
C - - - - - 0x01A04F 06:A03F: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01A052 06:A042: A9 59     LDA #$59
C - - - - - 0x01A054 06:A044: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01A057 06:A047: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x01A05A 06:A04A: 4C 89 FC  JMP loc_0x01FC99
bra_A04D:
C - - - - - 0x01A05D 06:A04D: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x01A060 06:A050: BD D0 03  LDA ram_direction,X
C - - - - - 0x01A063 06:A053: 29 01     AND #$01
C - - - - - 0x01A065 06:A055: F0 09     BEQ bra_A060
C - - - - - 0x01A067 06:A057: A9 F0     LDA #$F0
C - - - - - 0x01A069 06:A059: DD 30 03  CMP ram_pos_X_lo,X
C - - - - - 0x01A06C 06:A05C: B0 79     BCS bra_A0D7_RTS
C - - - - - 0x01A06E 06:A05E: 90 07     BCC bra_A067   ; jmp
bra_A060:
C - - - - - 0x01A070 06:A060: A9 10     LDA #$10
C - - - - - 0x01A072 06:A062: DD 30 03  CMP ram_pos_X_lo,X
C - - - - - 0x01A075 06:A065: 90 70     BCC bra_A0D7_RTS
bra_A067:
loc_A067:
C D 1 - - - 0x01A077 06:A067: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01A07A 06:A06A: 09 04     ORA #$04
C - - - - - 0x01A07C 06:A06C: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01A07F 06:A06F: A9 40     LDA #$40
C - - - - - 0x01A081 06:A071: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01A084 06:A074: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x01A087 06:A077: 29 01     AND #$01
C - - - - - 0x01A089 06:A079: A8        TAY
C - - - - - 0x01A08A 06:A07A: B9 C5 A1  LDA tbl_A1C5,Y
C - - - - - 0x01A08D 06:A07D: 85 00     STA ram_0000
C - - - - - 0x01A08F 06:A07F: A0 0F     LDY #$0F
bra_A081_loop:
C - - - - - 0x01A091 06:A081: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A094 06:A084: 10 07     BPL bra_A08D
C - - - - - 0x01A096 06:A086: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01A099 06:A089: C5 00     CMP ram_0000
C - - - - - 0x01A09B 06:A08B: F0 05     BEQ bra_A092
bra_A08D:
C - - - - - 0x01A09D 06:A08D: 88        DEY
C - - - - - 0x01A09E 06:A08E: C0 02     CPY #$02
C - - - - - 0x01A0A0 06:A090: D0 EF     BNE bra_A081_loop
bra_A092:
C - - - - - 0x01A0A2 06:A092: A5 E4     LDA ram_random
C - - - - - 0x01A0A4 06:A094: 65 E7     ADC ram_random + $03
C - - - - - 0x01A0A6 06:A096: 85 E7     STA ram_random + $03
C - - - - - 0x01A0A8 06:A098: 29 0F     AND #$0F
C - - - - - 0x01A0AA 06:A09A: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x01A0AD 06:A09D: C9 0D     CMP #$0D
C - - - - - 0x01A0AF 06:A09F: 90 05     BCC bra_A0A6
C - - - - - 0x01A0B1 06:A0A1: A9 0C     LDA #$0C
C - - - - - 0x01A0B3 06:A0A3: 9D 80 04  STA ram_0480_obj,X
bra_A0A6:
C - - - - - 0x01A0B6 06:A0A6: 38        SEC
C - - - - - 0x01A0B7 06:A0A7: F9 80 04  SBC ram_0480_obj,Y
C - - - - - 0x01A0BA 06:A0AA: B0 05     BCS bra_A0B1
C - - - - - 0x01A0BC 06:A0AC: 49 FF     EOR #$FF
C - - - - - 0x01A0BE 06:A0AE: 18        CLC
C - - - - - 0x01A0BF 06:A0AF: 69 01     ADC #$01
bra_A0B1:
C - - - - - 0x01A0C1 06:A0B1: C9 02     CMP #$02
C - - - - - 0x01A0C3 06:A0B3: B0 12     BCS bra_A0C7
C - - - - - 0x01A0C5 06:A0B5: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x01A0C8 06:A0B8: 18        CLC
C - - - - - 0x01A0C9 06:A0B9: 69 05     ADC #$05
C - - - - - 0x01A0CB 06:A0BB: 29 0F     AND #$0F
C - - - - - 0x01A0CD 06:A0BD: C9 0D     CMP #$0D
C - - - - - 0x01A0CF 06:A0BF: 90 03     BCC bra_A0C4
C - - - - - 0x01A0D1 06:A0C1: 38        SEC
C - - - - - 0x01A0D2 06:A0C2: E9 0C     SBC #$0C
bra_A0C4:
C - - - - - 0x01A0D4 06:A0C4: 9D 80 04  STA ram_0480_obj,X
bra_A0C7:
C - - - - - 0x01A0D7 06:A0C7: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x01A0DA 06:A0CA: A8        TAY
C - - - - - 0x01A0DB 06:A0CB: B9 A5 A1  LDA tbl_A1A5_pos_X_lo,Y
C - - - - - 0x01A0DE 06:A0CE: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x01A0E1 06:A0D1: B9 B5 A1  LDA tbl_A1B5_pos_Y_lo,Y
C - - - - - 0x01A0E4 06:A0D4: 9D 60 03  STA ram_pos_Y_lo,X
bra_A0D7_RTS:
C - - - - - 0x01A0E7 06:A0D7: 60        RTS



ofs_005_A0D8_5A_spawner_crabs:
; object constantly spawns crabs 15 during boss fight at stage 2
C - - J - - 0x01A0E8 06:A0D8: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01A0EB 06:A0DB: 29 0F     AND #$0F
C - - - - - 0x01A0ED 06:A0DD: D0 12     BNE bra_A0F1
C - - - - - 0x01A0EF 06:A0DF: FE 60 04  INC ram_0460_obj,X
C - - - - - 0x01A0F2 06:A0E2: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01A0F5 06:A0E5: C9 70     CMP #$70
C - - - - - 0x01A0F7 06:A0E7: 90 EE     BCC bra_A0D7_RTS
C - - - - - 0x01A0F9 06:A0E9: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01A0FC 06:A0EC: A9 00     LDA #$00
C - - - - - 0x01A0FE 06:A0EE: 9D 60 04  STA ram_0460_obj,X
bra_A0F1:
C - - - - - 0x01A101 06:A0F1: A0 0F     LDY #$0F
bra_A0F3_loop:
C - - - - - 0x01A103 06:A0F3: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A106 06:A0F6: 10 0B     BPL bra_A103
C - - - - - 0x01A108 06:A0F8: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01A10B 06:A0FB: C9 2C     CMP #con_obj_id_boss_eel_1
C - - - - - 0x01A10D 06:A0FD: F0 0F     BEQ bra_A10E
C - - - - - 0x01A10F 06:A0FF: C9 2D     CMP #con_obj_id_boss_eel_2
C - - - - - 0x01A111 06:A101: F0 0B     BEQ bra_A10E
bra_A103:
C - - - - - 0x01A113 06:A103: 88        DEY
C - - - - - 0x01A114 06:A104: C0 02     CPY #$02
C - - - - - 0x01A116 06:A106: D0 EB     BNE bra_A0F3_loop
C - - - - - 0x01A118 06:A108: A9 00     LDA #$00
C - - - - - 0x01A11A 06:A10A: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01A11D 06:A10D: 60        RTS
bra_A10E:
C - - - - - 0x01A11E 06:A10E: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01A121 06:A111: F0 05     BEQ bra_A118
C - - - - - 0x01A123 06:A113: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x01A126 06:A116: D0 BF     BNE bra_A0D7_RTS
bra_A118:
C - - - - - 0x01A128 06:A118: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01A12B 06:A11B: D0 1D     BNE bra_A13A
C - - - - - 0x01A12D 06:A11D: A0 0F     LDY #$0F
bra_A11F_loop:
C - - - - - 0x01A12F 06:A11F: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A132 06:A122: 10 07     BPL bra_A12B
C - - - - - 0x01A134 06:A124: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01A137 06:A127: C9 15     CMP #con_obj_id_crab_naked
C - - - - - 0x01A139 06:A129: F0 AC     BEQ bra_A0D7_RTS
bra_A12B:
C - - - - - 0x01A13B 06:A12B: 88        DEY
C - - - - - 0x01A13C 06:A12C: C0 02     CPY #$02
C - - - - - 0x01A13E 06:A12E: D0 EF     BNE bra_A11F_loop
C - - - - - 0x01A140 06:A130: A9 40     LDA #$40
C - - - - - 0x01A142 06:A132: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01A145 06:A135: A9 02     LDA #$02
C - - - - - 0x01A147 06:A137: 9D 60 04  STA ram_0460_obj,X
bra_A13A:
C - - - - - 0x01A14A 06:A13A: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x01A14D 06:A13D: B0 98     BCS bra_A0D7_RTS
C - - - - - 0x01A14F 06:A13F: 86 0F     STX ram_000F
C - - - - - 0x01A151 06:A141: A9 26     LDA #$26
C - - - - - 0x01A153 06:A143: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x01A156 06:A146: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01A159 06:A149: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01A15C 06:A14C: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01A15F 06:A14F: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01A162 06:A152: A5 E4     LDA ram_random
C - - - - - 0x01A164 06:A154: 65 E5     ADC ram_random + $01
C - - - - - 0x01A166 06:A156: 85 E5     STA ram_random + $01
C - - - - - 0x01A168 06:A158: 29 03     AND #$03
C - - - - - 0x01A16A 06:A15A: DD 80 04  CMP ram_0480_obj,X
C - - - - - 0x01A16D 06:A15D: D0 05     BNE bra_A164
C - - - - - 0x01A16F 06:A15F: 18        CLC
C - - - - - 0x01A170 06:A160: 69 02     ADC #$02
C - - - - - 0x01A172 06:A162: 29 03     AND #$03
bra_A164:
C - - - - - 0x01A174 06:A164: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x01A177 06:A167: AA        TAX
C - - - - - 0x01A178 06:A168: BD C7 A1  LDA tbl_A1C7_pos_X_lo,X
C - - - - - 0x01A17B 06:A16B: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01A17E 06:A16E: BD CB A1  LDA tbl_A1CB_pos_Y_lo,X
C - - - - - 0x01A181 06:A171: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01A184 06:A174: 98        TYA
C - - - - - 0x01A185 06:A175: AA        TAX
C - - - - - 0x01A186 06:A176: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x01A189 06:A179: 20 89 FC  JSR sub_0x01FC99
C - - - - - 0x01A18C 06:A17C: A9 00     LDA #$00
C - - - - - 0x01A18E 06:A17E: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x01A191 06:A181: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x01A194 06:A184: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x01A197 06:A187: A9 80     LDA #$80
C - - - - - 0x01A199 06:A189: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01A19C 06:A18C: A9 60     LDA #$60
C - - - - - 0x01A19E 06:A18E: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01A1A1 06:A191: A9 01     LDA #$01
C - - - - - 0x01A1A3 06:A193: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x01A1A6 06:A196: A9 15     LDA #con_obj_id_crab_naked
C - - - - - 0x01A1A8 06:A198: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01A1AB 06:A19B: A6 0F     LDX ram_000F
C - - - - - 0x01A1AD 06:A19D: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A1B0 06:A1A0: 60        RTS



tbl_A1A1_pos_X:
- D 1 - - - 0x01A1B1 06:A1A1: 08 00     .word $0008 ; 00
- D 1 - - - 0x01A1B3 06:A1A3: F8 FF     .word $FFF8 ; 02



tbl_A1A5_pos_X_lo:
- D 1 - - - 0x01A1B5 06:A1A5: 78        .byte $78   ; 00
- D 1 - - - 0x01A1B6 06:A1A6: 28        .byte $28   ; 01
- D 1 - - - 0x01A1B7 06:A1A7: D8        .byte $D8   ; 02
- D 1 - - - 0x01A1B8 06:A1A8: 58        .byte $58   ; 03
- D 1 - - - 0x01A1B9 06:A1A9: 98        .byte $98   ; 04
- D 1 - - - 0x01A1BA 06:A1AA: 38        .byte $38   ; 05
- D 1 - - - 0x01A1BB 06:A1AB: C8        .byte $C8   ; 06
- D 1 - - - 0x01A1BC 06:A1AC: 68        .byte $68   ; 07
- D 1 - - - 0x01A1BD 06:A1AD: 28        .byte $28   ; 08
- D 1 - - - 0x01A1BE 06:A1AE: A8        .byte $A8   ; 09
- D 1 - - - 0x01A1BF 06:A1AF: 88        .byte $88   ; 0A
- D 1 - - - 0x01A1C0 06:A1B0: 48        .byte $48   ; 0B
- D 1 - - - 0x01A1C1 06:A1B1: D8        .byte $D8   ; 0C
- - - - - - 0x01A1C2 06:A1B2: 00        .byte $00   ; 0D
- - - - - - 0x01A1C3 06:A1B3: 00        .byte $00   ; 0E
- - - - - - 0x01A1C4 06:A1B4: 00        .byte $00   ; 0F



tbl_A1B5_pos_Y_lo:
- D 1 - - - 0x01A1C5 06:A1B5: 28        .byte $28   ; 00
- D 1 - - - 0x01A1C6 06:A1B6: 38        .byte $38   ; 01
- D 1 - - - 0x01A1C7 06:A1B7: 38        .byte $38   ; 02
- D 1 - - - 0x01A1C8 06:A1B8: 48        .byte $48   ; 03
- D 1 - - - 0x01A1C9 06:A1B9: 58        .byte $58   ; 04
- D 1 - - - 0x01A1CA 06:A1BA: 68        .byte $68   ; 05
- D 1 - - - 0x01A1CB 06:A1BB: 68        .byte $68   ; 06
- D 1 - - - 0x01A1CC 06:A1BC: 78        .byte $78   ; 07
- D 1 - - - 0x01A1CD 06:A1BD: 88        .byte $88   ; 08
- D 1 - - - 0x01A1CE 06:A1BE: 88        .byte $88   ; 09
- D 1 - - - 0x01A1CF 06:A1BF: 98        .byte $98   ; 0A
- D 1 - - - 0x01A1D0 06:A1C0: A8        .byte $A8   ; 0B
- D 1 - - - 0x01A1D1 06:A1C1: A8        .byte $A8   ; 0C
- - - - - - 0x01A1D2 06:A1C2: 00        .byte $00   ; 0D
- - - - - - 0x01A1D3 06:A1C3: 00        .byte $00   ; 0E
- - - - - - 0x01A1D4 06:A1C4: 00        .byte $00   ; 0F



tbl_A1C5:
- D 1 - - - 0x01A1D5 06:A1C5: 2D        .byte con_obj_id_boss_eel_2   ; 00
- D 1 - - - 0x01A1D6 06:A1C6: 2C        .byte con_obj_id_boss_eel_1   ; 01



tbl_A1C7_pos_X_lo:
- D 1 - - - 0x01A1D7 06:A1C7: 78        .byte $78   ; 00
- D 1 - - - 0x01A1D8 06:A1C8: 28        .byte $28   ; 01
- D 1 - - - 0x01A1D9 06:A1C9: D8        .byte $D8   ; 02
- D 1 - - - 0x01A1DA 06:A1CA: 78        .byte $78   ; 03

tbl_A1CB_pos_Y_lo:
- D 1 - - - 0x01A1DB 06:A1CB: 28        .byte $28   ; 00
- D 1 - - - 0x01A1DC 06:A1CC: 38        .byte $38   ; 01
- D 1 - - - 0x01A1DD 06:A1CD: 38        .byte $38   ; 02
- D 1 - - - 0x01A1DE 06:A1CE: 28        .byte $28   ; 03



ofs_005_A1CF_2E_boss_seahorse:
; stage 4 boss
C - - J - - 0x01A1DF 06:A1CF: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01A1E2 06:A1D2: 29 0F     AND #$0F
C - - - - - 0x01A1E4 06:A1D4: D0 2F     BNE bra_A205
C - - - - - 0x01A1E6 06:A1D6: 20 09 A6  JSR sub_A609
C - - - - - 0x01A1E9 06:A1D9: 90 29     BCC bra_A204_RTS
C - - - - - 0x01A1EB 06:A1DB: A9 00     LDA #$00
C - - - - - 0x01A1ED 06:A1DD: 9D 48 04  STA ram_0448,X
C - - - - - 0x01A1F0 06:A1E0: A9 04     LDA #$04
C - - - - - 0x01A1F2 06:A1E2: 9D D0 03  STA ram_direction,X
C - - - - - 0x01A1F5 06:A1E5: A9 B0     LDA #$B0
C - - - - - 0x01A1F7 06:A1E7: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01A1FA 06:A1EA: A9 00     LDA #$00
C - - - - - 0x01A1FC 06:A1EC: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01A1FF 06:A1EF: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x01A202 06:A1F2: FE 70 04  INC ram_obj_timer,X
C - - - - - 0x01A205 06:A1F5: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01A208 06:A1F8: C9 7A     CMP #$7A
C - - - - - 0x01A20A 06:A1FA: 90 08     BCC bra_A204_RTS
C - - - - - 0x01A20C 06:A1FC: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01A20F 06:A1FF: A9 40     LDA #$40
C - - - - - 0x01A211 06:A201: 9D 60 04  STA ram_0460_obj,X
bra_A204_RTS:
C - - - - - 0x01A214 06:A204: 60        RTS
bra_A205:
C - - - - - 0x01A215 06:A205: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01A218 06:A208: C9 56     CMP #$56
C - - - - - 0x01A21A 06:A20A: D0 11     BNE bra_A21D
C - - - - - 0x01A21C 06:A20C: A9 06     LDA #$06
C - - - - - 0x01A21E 06:A20E: DD 18 04  CMP ram_animation_cnt,X
C - - - - - 0x01A221 06:A211: D0 0A     BNE bra_A21D
C - - - - - 0x01A223 06:A213: DD 48 04  CMP ram_0448,X
C - - - - - 0x01A226 06:A216: D0 05     BNE bra_A21D
C - - - - - 0x01A228 06:A218: A9 55     LDA #$55
C - - - - - 0x01A22A 06:A21A: 20 45 FC  JSR sub_0x01FC55
bra_A21D:
C - - - - - 0x01A22D 06:A21D: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A230 06:A220: D0 E2     BNE bra_A204_RTS
C - - - - - 0x01A232 06:A222: A5 E5     LDA ram_random + $01
C - - - - - 0x01A234 06:A224: 65 E6     ADC ram_random + $02
C - - - - - 0x01A236 06:A226: 85 E6     STA ram_random + $02
C - - - - - 0x01A238 06:A228: 29 03     AND #$03
C - - - - - 0x01A23A 06:A22A: A8        TAY
C - - - - - 0x01A23B 06:A22B: B9 86 A3  LDA tbl_A386,Y
C - - - - - 0x01A23E 06:A22E: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01A241 06:A231: A9 00     LDA #$00
C - - - - - 0x01A243 06:A233: 85 00     STA ram_0000
C - - - - - 0x01A245 06:A235: A0 0F     LDY #$0F
bra_A237_loop:
C - - - - - 0x01A247 06:A237: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A24A 06:A23A: 10 15     BPL bra_A251
C - - - - - 0x01A24C 06:A23C: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01A24F 06:A23F: C9 20     CMP #$20
C - - - - - 0x01A251 06:A241: F0 0C     BEQ bra_A24F
C - - - - - 0x01A253 06:A243: C9 6F     CMP #$6F
C - - - - - 0x01A255 06:A245: F0 08     BEQ bra_A24F
C - - - - - 0x01A257 06:A247: C9 7B     CMP #$7B
C - - - - - 0x01A259 06:A249: F0 04     BEQ bra_A24F
C - - - - - 0x01A25B 06:A24B: C9 23     CMP #$23
C - - - - - 0x01A25D 06:A24D: D0 02     BNE bra_A251
bra_A24F:
C - - - - - 0x01A25F 06:A24F: E6 00     INC ram_0000
bra_A251:
C - - - - - 0x01A261 06:A251: 88        DEY
C - - - - - 0x01A262 06:A252: C0 02     CPY #$02
C - - - - - 0x01A264 06:A254: D0 E1     BNE bra_A237_loop
C - - - - - 0x01A266 06:A256: A5 00     LDA ram_0000
C - - - - - 0x01A268 06:A258: C9 02     CMP #$02
C - - - - - 0x01A26A 06:A25A: B0 A8     BCS bra_A204_RTS
C - - - - - 0x01A26C 06:A25C: A9 56     LDA #$56
C - - - - - 0x01A26E 06:A25E: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01A271 06:A261: A9 18     LDA #con_sfx_18
C - - - - - 0x01A273 06:A263: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x01A276 06:A266: A9 01     LDA #$01
C - - - - - 0x01A278 06:A268: 85 0E     STA ram_000E
C - - - - - 0x01A27A 06:A26A: 86 0F     STX ram_000F
bra_A26C_loop:
C - - - - - 0x01A27C 06:A26C: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x01A27F 06:A26F: B0 93     BCS bra_A204_RTS
C - - - - - 0x01A281 06:A271: A9 0A     LDA #$0A
C - - - - - 0x01A283 06:A273: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01A286 06:A276: A6 0E     LDX ram_000E
C - - - - - 0x01A288 06:A278: BD 8C A3  LDA tbl_A38C_pos_Y_lo,X
C - - - - - 0x01A28B 06:A27B: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01A28E 06:A27E: BD 8A A3  LDA tbl_A38A_pos_X_lo,X
C - - - - - 0x01A291 06:A281: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01A294 06:A284: A5 E7     LDA ram_random + $03
C - - - - - 0x01A296 06:A286: 65 E5     ADC ram_random + $01
C - - - - - 0x01A298 06:A288: 85 E7     STA ram_random + $03
C - - - - - 0x01A29A 06:A28A: 29 03     AND #$03
C - - - - - 0x01A29C 06:A28C: AA        TAX
C - - - - - 0x01A29D 06:A28D: BD 92 A3  LDA tbl_A392,X
C - - - - - 0x01A2A0 06:A290: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01A2A3 06:A293: BD 96 A3  LDA tbl_A396,X
C - - - - - 0x01A2A6 06:A296: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01A2A9 06:A299: A9 01     LDA #$01
C - - - - - 0x01A2AB 06:A29B: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x01A2AE 06:A29E: BD 8E A3  LDA tbl_A38E,X
C - - - - - 0x01A2B1 06:A2A1: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x01A2B4 06:A2A4: A5 E6     LDA ram_random + $02
C - - - - - 0x01A2B6 06:A2A6: 65 E5     ADC ram_random + $01
C - - - - - 0x01A2B8 06:A2A8: 85 E5     STA ram_random + $01
C - - - - - 0x01A2BA 06:A2AA: 29 07     AND #$07
C - - - - - 0x01A2BC 06:A2AC: AA        TAX
C - - - - - 0x01A2BD 06:A2AD: BD 9A A3  LDA tbl_A39A_index,X
C - - - - - 0x01A2C0 06:A2B0: AA        TAX
C - - - - - 0x01A2C1 06:A2B1: BD A2 A3  LDA tbl_A3A2_spd_lo,X
C - - - - - 0x01A2C4 06:A2B4: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01A2C7 06:A2B7: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x01A2CA 06:A2BA: BD A5 A3  LDA tbl_A3A5_spd_hi,X
C - - - - - 0x01A2CD 06:A2BD: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x01A2D0 06:A2C0: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x01A2D3 06:A2C3: BD A8 A3  LDA tbl_A3A8,X
C - - - - - 0x01A2D6 06:A2C6: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x01A2D9 06:A2C9: A6 0F     LDX ram_000F
C - - - - - 0x01A2DB 06:A2CB: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01A2DE 06:A2CE: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01A2E1 06:A2D1: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01A2E4 06:A2D4: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01A2E7 06:A2D7: C6 0E     DEC ram_000E
C - - - - - 0x01A2E9 06:A2D9: 10 91     BPL bra_A26C_loop
C - - - - - 0x01A2EB 06:A2DB: A9 01     LDA #$01
C - - - - - 0x01A2ED 06:A2DD: 85 0E     STA ram_000E
C - - - - - 0x01A2EF 06:A2DF: 86 0F     STX ram_000F
bra_A2E1_loop:
C - - - - - 0x01A2F1 06:A2E1: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x01A2F4 06:A2E4: B0 65     BCS bra_A34B_RTS
C - - - - - 0x01A2F6 06:A2E6: A9 00     LDA #con_obj_id_00
C - - - - - 0x01A2F8 06:A2E8: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01A2FB 06:A2EB: A9 14     LDA #$14
C - - - - - 0x01A2FD 06:A2ED: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x01A300 06:A2F0: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01A303 06:A2F3: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01A306 06:A2F6: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01A309 06:A2F9: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01A30C 06:A2FC: A6 0E     LDX ram_000E
C - - - - - 0x01A30E 06:A2FE: BD AB A3  LDA tbl_A3AB_pos_X_lo,X
C - - - - - 0x01A311 06:A301: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01A314 06:A304: BD AD A3  LDA tbl_A3AD_pos_Y_lo,X
C - - - - - 0x01A317 06:A307: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01A31A 06:A30A: A6 0F     LDX ram_000F
C - - - - - 0x01A31C 06:A30C: C6 0E     DEC ram_000E
C - - - - - 0x01A31E 06:A30E: 10 D1     BPL bra_A2E1_loop
C - - - - - 0x01A320 06:A310: A0 0F     LDY #$0F
bra_A312_loop:
C - - - - - 0x01A322 06:A312: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01A325 06:A315: C9 64     CMP #$64
C - - - - - 0x01A327 06:A317: D0 05     BNE bra_A31E
C - - - - - 0x01A329 06:A319: A9 77     LDA #$77
C - - - - - 0x01A32B 06:A31B: 20 51 FC  JSR sub_0x01FC61
bra_A31E:
C - - - - - 0x01A32E 06:A31E: 88        DEY
C - - - - - 0x01A32F 06:A31F: C0 02     CPY #$02
C - - - - - 0x01A331 06:A321: D0 EF     BNE bra_A312_loop
C - - - - - 0x01A333 06:A323: 60        RTS




ofs_005_A324_2F_piranha_cannon:
; spawns from 0F, transforms into 12 later
ofs_005_A324_5B_starfish_2:
; spawns from 0F, transforms into 10 later
C - - J - - 0x01A334 06:A324: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01A337 06:A327: 29 0F     AND #$0F
C - - - - - 0x01A339 06:A329: D0 21     BNE bra_A34C
C - - - - - 0x01A33B 06:A32B: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x01A33E 06:A32E: 20 00 FD  JSR sub_0x01FD10_move_object_Y_axis
C - - - - - 0x01A341 06:A331: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A344 06:A334: D0 15     BNE bra_A34B_RTS
C - - - - - 0x01A346 06:A336: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01A349 06:A339: A9 0C     LDA #$0C
C - - - - - 0x01A34B 06:A33B: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01A34E 06:A33E: A9 00     LDA #$00
C - - - - - 0x01A350 06:A340: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01A353 06:A343: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01A356 06:A346: A9 02     LDA #$02
C - - - - - 0x01A358 06:A348: 9D D0 03  STA ram_direction,X
bra_A34B_RTS:
C - - - - - 0x01A35B 06:A34B: 60        RTS
bra_A34C:
C - - - - - 0x01A35C 06:A34C: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A35F 06:A34F: F0 06     BEQ bra_A357
C - - - - - 0x01A361 06:A351: 20 11 F9  JSR sub_0x01F921
C - - - - - 0x01A364 06:A354: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis
bra_A357:
C - - - - - 0x01A367 06:A357: A0 00     LDY #$00
C - - - - - 0x01A369 06:A359: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01A36C 06:A35C: C9 20     CMP #$20
C - - - - - 0x01A36E 06:A35E: D0 02     BNE bra_A362
C - - - - - 0x01A370 06:A360: A0 01     LDY #$01    ; bzk optimize, INY
bra_A362:
C - - - - - 0x01A372 06:A362: B9 AF A3  LDA tbl_A3AF,Y
C - - - - - 0x01A375 06:A365: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01A378 06:A368: B9 B1 A3  LDA tbl_A3B1,Y
C - - - - - 0x01A37B 06:A36B: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01A37E 06:A36E: A9 80     LDA #$80
C - - - - - 0x01A380 06:A370: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01A383 06:A373: A9 00     LDA #$00
C - - - - - 0x01A385 06:A375: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01A388 06:A378: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01A38B 06:A37B: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01A38E 06:A37E: A9 01     LDA #$01
C - - - - - 0x01A390 06:A380: 9D D0 03  STA ram_direction,X
C - - - - - 0x01A393 06:A383: 4C 89 FC  JMP loc_0x01FC99



tbl_A386:
- D 1 - - - 0x01A396 06:A386: 40        .byte $40   ; 00
- D 1 - - - 0x01A397 06:A387: 20        .byte $20   ; 01
- D 1 - - - 0x01A398 06:A388: 60        .byte $60   ; 02
- D 1 - - - 0x01A399 06:A389: 40        .byte $40   ; 03



tbl_A38A_pos_X_lo:
- D 1 - - - 0x01A39A 06:A38A: 72        .byte $72   ; 00
- D 1 - - - 0x01A39B 06:A38B: 8A        .byte $8A   ; 01

tbl_A38C_pos_Y_lo:
- D 1 - - - 0x01A39C 06:A38C: 71        .byte $71   ; 00
- D 1 - - - 0x01A39D 06:A38D: 81        .byte $81   ; 01



tbl_A38E:
- D 1 - - - 0x01A39E 06:A38E: 20        .byte $20   ; 00
- D 1 - - - 0x01A39F 06:A38F: 23        .byte $23   ; 01
- D 1 - - - 0x01A3A0 06:A390: 20        .byte $20   ; 02
- D 1 - - - 0x01A3A1 06:A391: 20        .byte $20   ; 03

tbl_A392:
- D 1 - - - 0x01A3A2 06:A392: 60        .byte $60   ; 00
- D 1 - - - 0x01A3A3 06:A393: 40        .byte $40   ; 01
- D 1 - - - 0x01A3A4 06:A394: 60        .byte $60   ; 02
- D 1 - - - 0x01A3A5 06:A395: 60        .byte $60   ; 03

tbl_A396:
- D 1 - - - 0x01A3A6 06:A396: 2F        .byte con_obj_id_piranha_cannon   ; 00
- D 1 - - - 0x01A3A7 06:A397: 5B        .byte con_obj_id_starfish_2   ; 01
- D 1 - - - 0x01A3A8 06:A398: 2F        .byte con_obj_id_piranha_cannon   ; 02
- D 1 - - - 0x01A3A9 06:A399: 2F        .byte con_obj_id_piranha_cannon   ; 03



tbl_A39A_index:
- D 1 - - - 0x01A3AA 06:A39A: 00        .byte $00   ; 00
- D 1 - - - 0x01A3AB 06:A39B: 01        .byte $01   ; 01
- D 1 - - - 0x01A3AC 06:A39C: 02        .byte $02   ; 02
- D 1 - - - 0x01A3AD 06:A39D: 00        .byte $00   ; 03
- D 1 - - - 0x01A3AE 06:A39E: 01        .byte $01   ; 04
- D 1 - - - 0x01A3AF 06:A39F: 02        .byte $02   ; 05
- D 1 - - - 0x01A3B0 06:A3A0: 00        .byte $00   ; 06
- D 1 - - - 0x01A3B1 06:A3A1: 01        .byte $01   ; 07

tbl_A3A2_spd_lo:
- D 1 - - - 0x01A3B2 06:A3A2: 80        .byte < $0080   ; 00
- D 1 - - - 0x01A3B3 06:A3A3: CC        .byte < $00CC   ; 01
- D 1 - - - 0x01A3B4 06:A3A4: 00        .byte < $0100   ; 02

tbl_A3A5_spd_hi:
- D 1 - - - 0x01A3B5 06:A3A5: 00        .byte > $0080   ; 00
- D 1 - - - 0x01A3B6 06:A3A6: 00        .byte > $00CC   ; 01
- D 1 - - - 0x01A3B7 06:A3A7: 01        .byte > $0100   ; 02

tbl_A3A8:
- D 1 - - - 0x01A3B8 06:A3A8: 40        .byte $40   ; 00
- D 1 - - - 0x01A3B9 06:A3A9: 50        .byte $50   ; 01
- D 1 - - - 0x01A3BA 06:A3AA: 60        .byte $60   ; 02



tbl_A3AB_pos_X_lo:
- D 1 - - - 0x01A3BB 06:A3AB: 7C        .byte $7C   ; 00
- D 1 - - - 0x01A3BC 06:A3AC: 94        .byte $94   ; 01

tbl_A3AD_pos_Y_lo:
- D 1 - - - 0x01A3BD 06:A3AD: 7B        .byte $7B   ; 00
- D 1 - - - 0x01A3BE 06:A3AE: 8B        .byte $8B   ; 01



tbl_A3AF:
- D 1 - - - 0x01A3BF 06:A3AF: 10        .byte con_obj_id_sea_urchin_1   ; 00
- D 1 - - - 0x01A3C0 06:A3B0: 12        .byte con_obj_id_piranha_smart   ; 01

tbl_A3B1:
- D 1 - - - 0x01A3C1 06:A3B1: 80        .byte $80   ; 00
- D 1 - - - 0x01A3C2 06:A3B2: 81        .byte $81   ; 01



ofs_005_A3B3_0F_cannon:
; sinked ship cannon during stage 4 boss fight
; as soon as it shoots for the first time, Y coordinates are cleared,
; but it's still working as intended 
C - - J - - 0x01A3C3 06:A3B3: A0 0F     LDY #$0F
bra_A3B5_loop:
C - - - - - 0x01A3C5 06:A3B5: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01A3C8 06:A3B8: C9 3D     CMP #con_obj_id_dead_boss
C - - - - - 0x01A3CA 06:A3BA: D0 06     BNE bra_A3C2
C - - - - - 0x01A3CC 06:A3BC: A9 00     LDA #$00
C - - - - - 0x01A3CE 06:A3BE: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01A3D1 06:A3C1: 60        RTS
bra_A3C2:
C - - - - - 0x01A3D2 06:A3C2: 88        DEY
C - - - - - 0x01A3D3 06:A3C3: C0 02     CPY #$02
C - - - - - 0x01A3D5 06:A3C5: D0 EE     BNE bra_A3B5_loop
C - - - - - 0x01A3D7 06:A3C7: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01A3DA 06:A3CA: C9 77     CMP #$77
C - - - - - 0x01A3DC 06:A3CC: D0 0A     BNE bra_A3D8_RTS
C - - - - - 0x01A3DE 06:A3CE: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x01A3E1 06:A3D1: F0 05     BEQ bra_A3D8_RTS
C - - - - - 0x01A3E3 06:A3D3: A9 64     LDA #$64
C - - - - - 0x01A3E5 06:A3D5: 4C 45 FC  JMP loc_0x01FC55
bra_A3D8_RTS:
C - - - - - 0x01A3E8 06:A3D8: 60        RTS



ofs_005_A3D9_47_boss_ursula_small_top:
; stage 5 boss, upper half of the body
; this is her hurtbox and actual spawner of 48 and 49
C - - J - - 0x01A3E9 06:A3D9: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01A3EC 06:A3DC: 48        PHA
C - - - - - 0x01A3ED 06:A3DD: A9 48     LDA #$48
C - - - - - 0x01A3EF 06:A3DF: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01A3F2 06:A3E2: A9 49     LDA #$49
C - - - - - 0x01A3F4 06:A3E4: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x01A3F7 06:A3E7: 20 3F 80  JSR sub_803F
C - - - - - 0x01A3FA 06:A3EA: 68        PLA
C - - - - - 0x01A3FB 06:A3EB: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01A3FE 06:A3EE: A9 62     LDA #$62
C - - - - - 0x01A400 06:A3F0: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x01A403 06:A3F3: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01A406 06:A3F6: C9 7A     CMP #$7A
C - - - - - 0x01A408 06:A3F8: D0 1A     BNE bra_A414
C - - - - - 0x01A40A 06:A3FA: DE 80 04  DEC ram_0480_obj,X
C - - - - - 0x01A40D 06:A3FD: D0 D9     BNE bra_A3D8_RTS
C - - - - - 0x01A40F 06:A3FF: A9 78     LDA #$78
C - - - - - 0x01A411 06:A401: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01A414 06:A404: A9 00     LDA #$00
C - - - - - 0x01A416 06:A406: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01A419 06:A409: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01A41C 06:A40C: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x01A41F 06:A40F: 09 40     ORA #$40
C - - - - - 0x01A421 06:A411: 9D C0 03  STA ram_03C0_obj,X
bra_A414:
C - - - - - 0x01A424 06:A414: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01A427 06:A417: 29 0F     AND #$0F
C - - - - - 0x01A429 06:A419: D0 08     BNE bra_A423
C - - - - - 0x01A42B 06:A41B: 20 09 A6  JSR sub_A609
C - - - - - 0x01A42E 06:A41E: 90 B8     BCC bra_A3D8_RTS
C - - - - - 0x01A430 06:A420: FE 00 03  INC ram_obj_flags,X
bra_A423:
C - - - - - 0x01A433 06:A423: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01A436 06:A426: F0 08     BEQ bra_A430
C - - - - - 0x01A438 06:A428: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A43B 06:A42B: D0 AB     BNE bra_A3D8_RTS
C - - - - - 0x01A43D 06:A42D: DE 30 04  DEC ram_0430_obj,X
bra_A430:
C - - - - - 0x01A440 06:A430: A9 00     LDA #$00
C - - - - - 0x01A442 06:A432: 85 00     STA ram_0000
C - - - - - 0x01A444 06:A434: A0 0F     LDY #$0F
bra_A436_loop:
C - - - - - 0x01A446 06:A436: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A449 06:A439: 10 19     BPL bra_A454
C - - - - - 0x01A44B 06:A43B: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01A44E 06:A43E: C9 28     CMP #$28
C - - - - - 0x01A450 06:A440: F0 10     BEQ bra_A452
C - - - - - 0x01A452 06:A442: C9 20     CMP #$20
C - - - - - 0x01A454 06:A444: F0 0C     BEQ bra_A452
C - - - - - 0x01A456 06:A446: C9 34     CMP #$34
C - - - - - 0x01A458 06:A448: F0 08     BEQ bra_A452
C - - - - - 0x01A45A 06:A44A: C9 36     CMP #$36
C - - - - - 0x01A45C 06:A44C: F0 04     BEQ bra_A452
C - - - - - 0x01A45E 06:A44E: C9 3D     CMP #$3D
C - - - - - 0x01A460 06:A450: D0 02     BNE bra_A454
bra_A452:
C - - - - - 0x01A462 06:A452: E6 00     INC ram_0000
bra_A454:
C - - - - - 0x01A464 06:A454: 88        DEY
C - - - - - 0x01A465 06:A455: C0 02     CPY #$02
C - - - - - 0x01A467 06:A457: D0 DD     BNE bra_A436_loop
C - - - - - 0x01A469 06:A459: A5 00     LDA ram_0000
C - - - - - 0x01A46B 06:A45B: C9 03     CMP #$03
C - - - - - 0x01A46D 06:A45D: 90 01     BCC bra_A460
C - - - - - 0x01A46F 06:A45F: 60        RTS
bra_A460:
C - - - - - 0x01A470 06:A460: FE 30 04  INC ram_0430_obj,X
C - - - - - 0x01A473 06:A463: A9 5A     LDA #$5A
C - - - - - 0x01A475 06:A465: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01A478 06:A468: A0 0F     LDY #$0F
bra_A46A_loop:
C - - - - - 0x01A47A 06:A46A: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A47D 06:A46D: 10 07     BPL bra_A476
C - - - - - 0x01A47F 06:A46F: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01A482 06:A472: C9 4A     CMP #con_obj_id_boss_ursula_small_bottom
C - - - - - 0x01A484 06:A474: F0 05     BEQ bra_A47B
bra_A476:
C - - - - - 0x01A486 06:A476: 88        DEY
C - - - - - 0x01A487 06:A477: C0 02     CPY #$02
C - - - - - 0x01A489 06:A479: D0 EF     BNE bra_A46A_loop
bra_A47B:
C - - - - - 0x01A48B 06:A47B: A9 01     LDA #$01
C - - - - - 0x01A48D 06:A47D: 99 18 04  STA ram_animation_cnt,Y
C - - - - - 0x01A490 06:A480: 99 48 04  STA ram_0448,Y
C - - - - - 0x01A493 06:A483: A9 5A     LDA #$5A
C - - - - - 0x01A495 06:A485: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x01A498 06:A488: A0 00     LDY #$00
C - - - - - 0x01A49A 06:A48A: A9 40     LDA #$40
C - - - - - 0x01A49C 06:A48C: 85 00     STA ram_0000
bra_A48E_loop:
C - - - - - 0x01A49E 06:A48E: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01A4A1 06:A491: C5 00     CMP ram_0000
C - - - - - 0x01A4A3 06:A493: 90 0D     BCC bra_A4A2
C - - - - - 0x01A4A5 06:A495: C8        INY
C - - - - - 0x01A4A6 06:A496: C8        INY
C - - - - - 0x01A4A7 06:A497: A5 00     LDA ram_0000
C - - - - - 0x01A4A9 06:A499: 18        CLC
C - - - - - 0x01A4AA 06:A49A: 69 20     ADC #$20
C - - - - - 0x01A4AC 06:A49C: 85 00     STA ram_0000
C - - - - - 0x01A4AE 06:A49E: C9 E0     CMP #$E0
C - - - - - 0x01A4B0 06:A4A0: D0 EC     BNE bra_A48E_loop
bra_A4A2:
C - - - - - 0x01A4B2 06:A4A2: 84 0F     STY ram_000F
C - - - - - 0x01A4B4 06:A4A4: 86 0E     STX ram_000E
bra_A4A6_loop:
C - - - - - 0x01A4B6 06:A4A6: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x01A4B9 06:A4A9: B0 6B     BCS bra_A516_RTS
C - - - - - 0x01A4BB 06:A4AB: A9 48     LDA #con_obj_id_projectile_ursula_fake
C - - - - - 0x01A4BD 06:A4AD: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01A4C0 06:A4B0: A9 40     LDA #$40
C - - - - - 0x01A4C2 06:A4B2: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01A4C5 06:A4B5: A9 01     LDA #$01
C - - - - - 0x01A4C7 06:A4B7: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x01A4CA 06:A4BA: A5 E5     LDA ram_random + $01
C - - - - - 0x01A4CC 06:A4BC: 65 E4     ADC ram_random
C - - - - - 0x01A4CE 06:A4BE: 85 E4     STA ram_random
C - - - - - 0x01A4D0 06:A4C0: 29 07     AND #$07
C - - - - - 0x01A4D2 06:A4C2: AA        TAX
C - - - - - 0x01A4D3 06:A4C3: BD 47 A5  LDA tbl_A547,X
C - - - - - 0x01A4D6 06:A4C6: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x01A4D9 06:A4C9: D0 05     BNE bra_A4D0
C - - - - - 0x01A4DB 06:A4CB: A9 49     LDA #con_obj_id_projectile_ursula_real
C - - - - - 0x01A4DD 06:A4CD: 99 10 03  STA ram_obj_id,Y
bra_A4D0:
C - - - - - 0x01A4E0 06:A4D0: A6 0E     LDX ram_000E
C - - - - - 0x01A4E2 06:A4D2: A9 28     LDA #$28
C - - - - - 0x01A4E4 06:A4D4: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x01A4E7 06:A4D7: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01A4EA 06:A4DA: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01A4ED 06:A4DD: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01A4F0 06:A4E0: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01A4F3 06:A4E3: A9 38     LDA #$38
C - - - - - 0x01A4F5 06:A4E5: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01A4F8 06:A4E8: A9 00     LDA #$00
C - - - - - 0x01A4FA 06:A4EA: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x01A4FD 06:A4ED: A9 01     LDA #$01
C - - - - - 0x01A4FF 06:A4EF: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x01A502 06:A4F2: A6 0F     LDX ram_000F
C - - - - - 0x01A504 06:A4F4: BD 17 A5  LDA tbl_A517_pos_X_lo,X
C - - - - - 0x01A507 06:A4F7: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01A50A 06:A4FA: BD 23 A5  LDA tbl_A523_direction,X
C - - - - - 0x01A50D 06:A4FD: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01A510 06:A500: BD 2F A5  LDA tbl_A52F_spd_X_lo,X
C - - - - - 0x01A513 06:A503: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01A516 06:A506: BD 3B A5  LDA tbl_A53B_spd_Y_lo,X
C - - - - - 0x01A519 06:A509: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x01A51C 06:A50C: A6 0E     LDX ram_000E
C - - - - - 0x01A51E 06:A50E: E6 0F     INC ram_000F
C - - - - - 0x01A520 06:A510: A5 0F     LDA ram_000F
C - - - - - 0x01A522 06:A512: 29 01     AND #$01
C - - - - - 0x01A524 06:A514: D0 90     BNE bra_A4A6_loop
bra_A516_RTS:
C - - - - - 0x01A526 06:A516: 60        RTS



tbl_A517_pos_X_lo:
- D 1 - - - 0x01A527 06:A517: 78        .byte $78   ; 00
- D 1 - - - 0x01A528 06:A518: 88        .byte $88   ; 01
- D 1 - - - 0x01A529 06:A519: 88        .byte $88   ; 02
- D 1 - - - 0x01A52A 06:A51A: 78        .byte $78   ; 03
- D 1 - - - 0x01A52B 06:A51B: 88        .byte $88   ; 04
- D 1 - - - 0x01A52C 06:A51C: 78        .byte $78   ; 05
- D 1 - - - 0x01A52D 06:A51D: 78        .byte $78   ; 06
- D 1 - - - 0x01A52E 06:A51E: 88        .byte $88   ; 07
- D 1 - - - 0x01A52F 06:A51F: 88        .byte $88   ; 08
- D 1 - - - 0x01A530 06:A520: 78        .byte $78   ; 09
- D 1 - - - 0x01A531 06:A521: 78        .byte $78   ; 0A
- D 1 - - - 0x01A532 06:A522: 88        .byte $88   ; 0B

tbl_A523_direction:
- D 1 - - - 0x01A533 06:A523: 02        .byte $02   ; 00
- D 1 - - - 0x01A534 06:A524: 01        .byte $01   ; 01
- D 1 - - - 0x01A535 06:A525: 02        .byte $02   ; 02
- D 1 - - - 0x01A536 06:A526: 01        .byte $01   ; 03
- D 1 - - - 0x01A537 06:A527: 02        .byte $02   ; 04
- D 1 - - - 0x01A538 06:A528: 02        .byte $02   ; 05
- D 1 - - - 0x01A539 06:A529: 01        .byte $01   ; 06
- D 1 - - - 0x01A53A 06:A52A: 01        .byte $01   ; 07
- D 1 - - - 0x01A53B 06:A52B: 02        .byte $02   ; 08
- D 1 - - - 0x01A53C 06:A52C: 01        .byte $01   ; 09
- D 1 - - - 0x01A53D 06:A52D: 02        .byte $02   ; 0A
- D 1 - - - 0x01A53E 06:A52E: 01        .byte $01   ; 0B

tbl_A52F_spd_X_lo:
- D 1 - - - 0x01A53F 06:A52F: 60        .byte $60   ; 00
- D 1 - - - 0x01A540 06:A530: 44        .byte $44   ; 01
- D 1 - - - 0x01A541 06:A531: 60        .byte $60   ; 02
- D 1 - - - 0x01A542 06:A532: 44        .byte $44   ; 03
- D 1 - - - 0x01A543 06:A533: 44        .byte $44   ; 04
- D 1 - - - 0x01A544 06:A534: 60        .byte $60   ; 05
- D 1 - - - 0x01A545 06:A535: 44        .byte $44   ; 06
- D 1 - - - 0x01A546 06:A536: 60        .byte $60   ; 07
- D 1 - - - 0x01A547 06:A537: 44        .byte $44   ; 08
- D 1 - - - 0x01A548 06:A538: 60        .byte $60   ; 09
- D 1 - - - 0x01A549 06:A539: 44        .byte $44   ; 0A
- D 1 - - - 0x01A54A 06:A53A: 60        .byte $60   ; 0B

tbl_A53B_spd_Y_lo:
- D 1 - - - 0x01A54B 06:A53B: 83        .byte $83   ; 00
- D 1 - - - 0x01A54C 06:A53C: 11        .byte $11   ; 01
- D 1 - - - 0x01A54D 06:A53D: 83        .byte $83   ; 02
- D 1 - - - 0x01A54E 06:A53E: 11        .byte $11   ; 03
- D 1 - - - 0x01A54F 06:A53F: 11        .byte $11   ; 04
- D 1 - - - 0x01A550 06:A540: 83        .byte $83   ; 05
- D 1 - - - 0x01A551 06:A541: 11        .byte $11   ; 06
- D 1 - - - 0x01A552 06:A542: 83        .byte $83   ; 07
- D 1 - - - 0x01A553 06:A543: 11        .byte $11   ; 08
- D 1 - - - 0x01A554 06:A544: 83        .byte $83   ; 09
- D 1 - - - 0x01A555 06:A545: 11        .byte $11   ; 0A
- D 1 - - - 0x01A556 06:A546: 83        .byte $83   ; 0B



tbl_A547:
- D 1 - - - 0x01A557 06:A547: 60        .byte $60   ; 00
- D 1 - - - 0x01A558 06:A548: 80        .byte $80   ; 01
- D 1 - - - 0x01A559 06:A549: A0        .byte $A0   ; 02
- D 1 - - - 0x01A55A 06:A54A: C0        .byte $C0   ; 03
- D 1 - - - 0x01A55B 06:A54B: 00        .byte $00   ; 04
- D 1 - - - 0x01A55C 06:A54C: A0        .byte $A0   ; 05
- D 1 - - - 0x01A55D 06:A54D: 80        .byte $80   ; 06
- D 1 - - - 0x01A55E 06:A54E: 60        .byte $60   ; 07



ofs_005_A54F_48_projectile_ursula_fake:
; stage 5 boss projectile, transorms into 03, 05, 12, 13 or 14
C - - J - - 0x01A55F 06:A54F: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01A562 06:A552: 29 0F     AND #$0F
C - - - - - 0x01A564 06:A554: D0 32     BNE bra_A588
C - - - - - 0x01A566 06:A556: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x01A569 06:A559: 20 11 F9  JSR sub_0x01F921
C - - - - - 0x01A56C 06:A55C: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01A56F 06:A55F: DD 60 03  CMP ram_pos_Y_lo,X
C - - - - - 0x01A572 06:A562: B0 B2     BCS bra_A516_RTS
C - - - - - 0x01A574 06:A564: A9 1E     LDA #$1E
C - - - - - 0x01A576 06:A566: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01A579 06:A569: FE 00 03  INC ram_obj_flags,X
C - - - - - 0x01A57C 06:A56C: A5 E6     LDA ram_random + $02
C - - - - - 0x01A57E 06:A56E: 65 E7     ADC ram_random + $03
C - - - - - 0x01A580 06:A570: 85 E7     STA ram_random + $03
C - - - - - 0x01A582 06:A572: 29 0F     AND #$0F
C - - - - - 0x01A584 06:A574: A8        TAY
C - - - - - 0x01A585 06:A575: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01A588 06:A578: B9 C0 A5  LDA tbl_A5C0,Y
C - - - - - 0x01A58B 06:A57B: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x01A58E 06:A57E: C0 05     CPY #$05
C - - - - - 0x01A590 06:A580: 90 3D     BCC bra_A5BF_RTS
C - - - - - 0x01A592 06:A582: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x01A595 06:A585: 4C 89 FC  JMP loc_0x01FC99
bra_A588:
C - - - - - 0x01A598 06:A588: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A59B 06:A58B: D0 89     BNE bra_A516_RTS
C - - - - - 0x01A59D 06:A58D: A9 80     LDA #$80
C - - - - - 0x01A59F 06:A58F: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01A5A2 06:A592: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01A5A5 06:A595: A8        TAY
C - - - - - 0x01A5A6 06:A596: B9 E0 A5  LDA tbl_A5E0,Y
C - - - - - 0x01A5A9 06:A599: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x01A5AC 06:A59C: B9 D0 A5  LDA tbl_A5D0,Y
C - - - - - 0x01A5AF 06:A59F: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01A5B2 06:A5A2: C9 12     CMP #con_obj_id_piranha_smart
C - - - - - 0x01A5B4 06:A5A4: D0 05     BNE bra_A5AB
C - - - - - 0x01A5B6 06:A5A6: A9 81     LDA #$81
C - - - - - 0x01A5B8 06:A5A8: 9D 00 03  STA ram_obj_flags,X
bra_A5AB:
C - - - - - 0x01A5BB 06:A5AB: C0 05     CPY #$05
C - - - - - 0x01A5BD 06:A5AD: 90 10     BCC bra_A5BF_RTS
C - - - - - 0x01A5BF 06:A5AF: A9 80     LDA #$80
C - - - - - 0x01A5C1 06:A5B1: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01A5C4 06:A5B4: A9 00     LDA #$00
C - - - - - 0x01A5C6 06:A5B6: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01A5C9 06:A5B9: 20 6F FC  JSR sub_0x01FC7F
C - - - - - 0x01A5CC 06:A5BC: 20 89 FC  JSR sub_0x01FC99
bra_A5BF_RTS:
C - - - - - 0x01A5CF 06:A5BF: 60        RTS



tbl_A5C0:
- D 1 - - - 0x01A5D0 06:A5C0: 36        .byte $36   ; 00
- D 1 - - - 0x01A5D1 06:A5C1: 36        .byte $36   ; 01
- D 1 - - - 0x01A5D2 06:A5C2: 36        .byte $36   ; 02
- D 1 - - - 0x01A5D3 06:A5C3: 3D        .byte $3D   ; 03
- D 1 - - - 0x01A5D4 06:A5C4: 3D        .byte $3D   ; 04
- D 1 - - - 0x01A5D5 06:A5C5: 20        .byte $20   ; 05
- D 1 - - - 0x01A5D6 06:A5C6: 20        .byte $20   ; 06
- D 1 - - - 0x01A5D7 06:A5C7: 20        .byte $20   ; 07
- D 1 - - - 0x01A5D8 06:A5C8: 20        .byte $20   ; 08
- D 1 - - - 0x01A5D9 06:A5C9: 20        .byte $20   ; 09
- D 1 - - - 0x01A5DA 06:A5CA: 34        .byte $34   ; 0A
- D 1 - - - 0x01A5DB 06:A5CB: 34        .byte $34   ; 0B
- D 1 - - - 0x01A5DC 06:A5CC: 20        .byte $20   ; 0C
- D 1 - - - 0x01A5DD 06:A5CD: 20        .byte $20   ; 0D
- D 1 - - - 0x01A5DE 06:A5CE: 20        .byte $20   ; 0E
- D 1 - - - 0x01A5DF 06:A5CF: 34        .byte $34   ; 0F



tbl_A5D0:
- D 1 - - - 0x01A5E0 06:A5D0: 13        .byte con_obj_id_sea_urchin_2   ; 00
- D 1 - - - 0x01A5E1 06:A5D1: 13        .byte con_obj_id_sea_urchin_2   ; 01
- D 1 - - - 0x01A5E2 06:A5D2: 13        .byte con_obj_id_sea_urchin_2   ; 02
- D 1 - - - 0x01A5E3 06:A5D3: 14        .byte con_obj_id_starfish_3   ; 03
- D 1 - - - 0x01A5E4 06:A5D4: 14        .byte con_obj_id_starfish_3   ; 04
- D 1 - - - 0x01A5E5 06:A5D5: 03        .byte con_obj_id_piranha_stupid   ; 05
- D 1 - - - 0x01A5E6 06:A5D6: 12        .byte con_obj_id_piranha_smart   ; 06
- D 1 - - - 0x01A5E7 06:A5D7: 12        .byte con_obj_id_piranha_smart   ; 07
- D 1 - - - 0x01A5E8 06:A5D8: 12        .byte con_obj_id_piranha_smart   ; 08
- D 1 - - - 0x01A5E9 06:A5D9: 03        .byte con_obj_id_piranha_stupid   ; 09
- D 1 - - - 0x01A5EA 06:A5DA: 05        .byte con_obj_id_seahorse   ; 0A
- D 1 - - - 0x01A5EB 06:A5DB: 05        .byte con_obj_id_seahorse   ; 0B
- D 1 - - - 0x01A5EC 06:A5DC: 03        .byte con_obj_id_piranha_stupid   ; 0C
- D 1 - - - 0x01A5ED 06:A5DD: 12        .byte con_obj_id_piranha_smart   ; 0D
- D 1 - - - 0x01A5EE 06:A5DE: 03        .byte con_obj_id_piranha_stupid   ; 0E
- D 1 - - - 0x01A5EF 06:A5DF: 05        .byte con_obj_id_seahorse   ; 0F



tbl_A5E0:
- D 1 - - - 0x01A5F0 06:A5E0: 40        .byte $40   ; 00
- D 1 - - - 0x01A5F1 06:A5E1: 40        .byte $40   ; 01
- D 1 - - - 0x01A5F2 06:A5E2: 40        .byte $40   ; 02
- D 1 - - - 0x01A5F3 06:A5E3: 40        .byte $40   ; 03
- D 1 - - - 0x01A5F4 06:A5E4: 40        .byte $40   ; 04
- D 1 - - - 0x01A5F5 06:A5E5: 60        .byte $60   ; 05
- D 1 - - - 0x01A5F6 06:A5E6: 60        .byte $60   ; 06
- D 1 - - - 0x01A5F7 06:A5E7: 60        .byte $60   ; 07
- D 1 - - - 0x01A5F8 06:A5E8: 60        .byte $60   ; 08
- D 1 - - - 0x01A5F9 06:A5E9: 60        .byte $60   ; 09
- D 1 - - - 0x01A5FA 06:A5EA: 60        .byte $60   ; 0A
- D 1 - - - 0x01A5FB 06:A5EB: 60        .byte $60   ; 0B
- D 1 - - - 0x01A5FC 06:A5EC: 60        .byte $60   ; 0C
- D 1 - - - 0x01A5FD 06:A5ED: 60        .byte $60   ; 0D
- D 1 - - - 0x01A5FE 06:A5EE: 60        .byte $60   ; 0E
- D 1 - - - 0x01A5FF 06:A5EF: 60        .byte $60   ; 0F



ofs_005_A5F0_13_sea_urchin_2:
; created by projectile 48
ofs_005_A5F0_14_starfish_3:
; created by projectile 48
ofs_005_A5F0_49_projectile_ursula_real:
; stage 5 boss projectile, looks like 48 but doesn't transform, just drops down
C - - J - - 0x01A600 06:A5F0: 20 DF FC  JSR sub_0x01FCEF_move_object_X_axis
C - - - - - 0x01A603 06:A5F3: 4C 11 F9  JMP loc_0x01F921



ofs_005_A5F6_4A_boss_ursula_small_bottom:
; stage 5 boss, lower half of the body
; lights up when spawner is activated
C - - J - - 0x01A606 06:A5F6: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x01A609 06:A5F9: F0 08     BEQ bra_A603
C - - - - - 0x01A60B 06:A5FB: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A60E 06:A5FE: D0 03     BNE bra_A603
C - - - - - 0x01A610 06:A600: DE 18 04  DEC ram_animation_cnt,X
bra_A603:
C - - - - - 0x01A613 06:A603: A9 00     LDA #$00
C - - - - - 0x01A615 06:A605: 9D 48 04  STA ram_0448,X
C - - - - - 0x01A618 06:A608: 60        RTS



sub_A609:
C - - - - - 0x01A619 06:A609: A5 D9     LDA ram_music_id
C - - - - - 0x01A61B 06:A60B: C9 08     CMP #$08
C - - - - - 0x01A61D 06:A60D: B0 1D     BCS bra_A62C
C - - - - - 0x01A61F 06:A60F: A5 30     LDA ram_ariel_status
C - - - - - 0x01A621 06:A611: F0 04     BEQ bra_A617    ; if con_ariel_default
C - - - - - 0x01A623 06:A613: C9 04     CMP #$04
C - - - - - 0x01A625 06:A615: D0 22     BNE bra_A639
bra_A617:
C - - - - - 0x01A627 06:A617: A5 30     LDA ram_ariel_status
C - - - - - 0x01A629 06:A619: 8D 70 04  STA ram_obj_timer
C - - - - - 0x01A62C 06:A61C: A9 08     LDA #$08    ; con_music_boss_fight  con_ariel_waiting_for_boss
C - - - - - 0x01A62E 06:A61E: 85 30     STA ram_ariel_status
C - - - - - 0x01A630 06:A620: 85 53     STA ram_0053
C - - - - - 0x01A632 06:A622: 20 9E FC  JSR sub_0x01FCAE_play_music
C - - - - - 0x01A635 06:A625: A9 60     LDA #$60
C - - - - - 0x01A637 06:A627: 85 5F     STA ram_005F
C - - - - - 0x01A639 06:A629: 8D 60 04  STA ram_0460_obj
bra_A62C:
C - - - - - 0x01A63C 06:A62C: A5 5F     LDA ram_005F
C - - - - - 0x01A63E 06:A62E: F0 0B     BEQ bra_A63B
C - - - - - 0x01A640 06:A630: C6 5F     DEC ram_005F
C - - - - - 0x01A642 06:A632: D0 05     BNE bra_A639
C - - - - - 0x01A644 06:A634: A9 00     LDA #$00
C - - - - - 0x01A646 06:A636: 9D 48 04  STA ram_0448,X
bra_A639:
C - - - - - 0x01A649 06:A639: 18        CLC
C - - - - - 0x01A64A 06:A63A: 60        RTS
bra_A63B:
C - - - - - 0x01A64B 06:A63B: 38        SEC
C - - - - - 0x01A64C 06:A63C: 60        RTS



ofs_005_A63D_3E_boss_ursula_small_dead:
; replaces 47 when defeated
C - - J - - 0x01A64D 06:A63D: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01A650 06:A640: 29 04     AND #$04
C - - - - - 0x01A652 06:A642: D0 1F     BNE bra_A663
C - - - - - 0x01A654 06:A644: 09 04     ORA #$04
C - - - - - 0x01A656 06:A646: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01A659 06:A649: A0 0F     LDY #$0F
bra_A64B_loop:
C - - - - - 0x01A65B 06:A64B: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A65E 06:A64E: 10 0E     BPL bra_A65E
C - - - - - 0x01A660 06:A650: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01A663 06:A653: C9 21     CMP #$21
C - - - - - 0x01A665 06:A655: D0 07     BNE bra_A65E
C - - - - - 0x01A667 06:A657: A9 00     LDA #$00
C - - - - - 0x01A669 06:A659: 99 00 03  STA ram_obj_flags,Y
C - - - - - 0x01A66C 06:A65C: F0 05     BEQ bra_A663   ; jmp
bra_A65E:
C - - - - - 0x01A66E 06:A65E: 88        DEY
C - - - - - 0x01A66F 06:A65F: C0 02     CPY #$02
C - - - - - 0x01A671 06:A661: D0 E8     BNE bra_A64B_loop
bra_A663:
C - - - - - 0x01A673 06:A663: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01A676 06:A666: FE 60 04  INC ram_0460_obj,X
C - - - - - 0x01A679 06:A669: 29 07     AND #$07
C - - - - - 0x01A67B 06:A66B: D0 24     BNE bra_A691_RTS
C - - - - - 0x01A67D 06:A66D: FE 70 04  INC ram_obj_timer,X
C - - - - - 0x01A680 06:A670: A0 07     LDY #$07
bra_A672_loop:
C - - - - - 0x01A682 06:A672: B9 00 06  LDA ram_pal_buffer_1,Y
C - - - - - 0x01A685 06:A675: 38        SEC
C - - - - - 0x01A686 06:A676: E9 10     SBC #$10
C - - - - - 0x01A688 06:A678: B0 02     BCS bra_A67C
C - - - - - 0x01A68A 06:A67A: A9 0F     LDA #$0F
bra_A67C:
C - - - - - 0x01A68C 06:A67C: 99 00 06  STA ram_pal_buffer_1,Y
C - - - - - 0x01A68F 06:A67F: 99 20 06  STA ram_pal_buffer_2,Y
C - - - - - 0x01A692 06:A682: 88        DEY
C - - - - - 0x01A693 06:A683: 10 ED     BPL bra_A672_loop
C - - - - - 0x01A695 06:A685: 84 18     STY ram_0018
C - - - - - 0x01A697 06:A687: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01A69A 06:A68A: C9 04     CMP #$04
C - - - - - 0x01A69C 06:A68C: D0 03     BNE bra_A691_RTS
C - - - - - 0x01A69E 06:A68E: 4C C1 87  JMP loc_87C1
bra_A691_RTS:
C - - - - - 0x01A6A1 06:A691: 60        RTS



ofs_005_A692_57_boss_ursula_big_alive:
; stage 6 boss while alive (hurtbox)
C - - J - - 0x01A6A2 06:A692: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01A6A5 06:A695: 48        PHA
C - - - - - 0x01A6A6 06:A696: A9 5C     LDA #$5C
C - - - - - 0x01A6A8 06:A698: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01A6AB 06:A69B: A9 48     LDA #$48
C - - - - - 0x01A6AD 06:A69D: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x01A6B0 06:A6A0: 20 3F 80  JSR sub_803F
C - - - - - 0x01A6B3 06:A6A3: 68        PLA
C - - - - - 0x01A6B4 06:A6A4: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01A6B7 06:A6A7: A9 67     LDA #$67
C - - - - - 0x01A6B9 06:A6A9: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x01A6BC 06:A6AC: A5 7F     LDA ram_007F
C - - - - - 0x01A6BE 06:A6AE: F0 2B     BEQ bra_A6DB
C - - - - - 0x01A6C0 06:A6B0: C6 7F     DEC ram_007F
C - - - - - 0x01A6C2 06:A6B2: D0 08     BNE bra_A6BC
C - - - - - 0x01A6C4 06:A6B4: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x01A6C7 06:A6B7: 09 40     ORA #$40
C - - - - - 0x01A6C9 06:A6B9: 9D C0 03  STA ram_03C0_obj,X
bra_A6BC:
C - - - - - 0x01A6CC 06:A6BC: A0 0B     LDY #$0B
bra_A6BE_loop:
C - - - - - 0x01A6CE 06:A6BE: B9 20 06  LDA ram_pal_buffer_2,Y
C - - - - - 0x01A6D1 06:A6C1: 99 00 06  STA ram_pal_buffer_1,Y
C - - - - - 0x01A6D4 06:A6C4: 88        DEY
C - - - - - 0x01A6D5 06:A6C5: 10 F7     BPL bra_A6BE_loop
C - - - - - 0x01A6D7 06:A6C7: A5 7F     LDA ram_007F
C - - - - - 0x01A6D9 06:A6C9: 4A        LSR
C - - - - - 0x01A6DA 06:A6CA: 4A        LSR
C - - - - - 0x01A6DB 06:A6CB: 29 01     AND #$01
C - - - - - 0x01A6DD 06:A6CD: F0 0A     BEQ bra_A6D9
C - - - - - 0x01A6DF 06:A6CF: A0 0B     LDY #$0B
C - - - - - 0x01A6E1 06:A6D1: A9 0F     LDA #$0F
bra_A6D3_loop:
C - - - - - 0x01A6E3 06:A6D3: 99 00 06  STA ram_pal_buffer_1,Y
C - - - - - 0x01A6E6 06:A6D6: 88        DEY
C - - - - - 0x01A6E7 06:A6D7: 10 FA     BPL bra_A6D3_loop
bra_A6D9:
C - - - - - 0x01A6E9 06:A6D9: E6 18     INC ram_0018
bra_A6DB:
C - - - - - 0x01A6EB 06:A6DB: 20 95 A7  JSR sub_A795
C - - - - - 0x01A6EE 06:A6DE: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x01A6F1 06:A6E1: 29 0F     AND #$0F
C - - - - - 0x01A6F3 06:A6E3: D0 1D     BNE bra_A702
C - - - - - 0x01A6F5 06:A6E5: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x01A6F8 06:A6E8: D0 31     BNE bra_A71B_RTS
C - - - - - 0x01A6FA 06:A6EA: FE 90 04  INC ram_0490_obj,X
C - - - - - 0x01A6FD 06:A6ED: BD 90 04  LDA ram_0490_obj,X
C - - - - - 0x01A700 06:A6F0: C9 B4     CMP #$B4
C - - - - - 0x01A702 06:A6F2: 90 08     BCC bra_A6FC
C - - - - - 0x01A704 06:A6F4: A9 00     LDA #$00
C - - - - - 0x01A706 06:A6F6: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x01A709 06:A6F9: FE 00 03  INC ram_obj_flags,X
bra_A6FC:
C - - - - - 0x01A70C 06:A6FC: A9 00     LDA #$00
C - - - - - 0x01A70E 06:A6FE: 9D 48 04  STA ram_0448,X
C - - - - - 0x01A711 06:A701: 60        RTS
bra_A702:
C - - - - - 0x01A712 06:A702: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x01A715 06:A705: C9 02     CMP #$02
C - - - - - 0x01A717 06:A707: D0 12     BNE bra_A71B_RTS
C - - - - - 0x01A719 06:A709: A9 00     LDA #$00
C - - - - - 0x01A71B 06:A70B: 9D 48 04  STA ram_0448,X
C - - - - - 0x01A71E 06:A70E: BD 90 04  LDA ram_0490_obj,X
C - - - - - 0x01A721 06:A711: F0 09     BEQ bra_A71C
C - - - - - 0x01A723 06:A713: DE 90 04  DEC ram_0490_obj,X
C - - - - - 0x01A726 06:A716: D0 03     BNE bra_A71B_RTS
C - - - - - 0x01A728 06:A718: DE 00 03  DEC ram_obj_flags,X
bra_A71B_RTS:
C - - - - - 0x01A72B 06:A71B: 60        RTS
bra_A71C:
C - - - - - 0x01A72C 06:A71C: A5 7B     LDA ram_007B
C - - - - - 0x01A72E 06:A71E: 05 7C     ORA ram_007C
C - - - - - 0x01A730 06:A720: D0 F9     BNE bra_A71B_RTS
C - - - - - 0x01A732 06:A722: A9 22     LDA #con_sfx_22
C - - - - - 0x01A734 06:A724: 20 A0 FC  JSR sub_0x01FCB0_play_sfx
C - - - - - 0x01A737 06:A727: A5 E4     LDA ram_random
C - - - - - 0x01A739 06:A729: 65 E5     ADC ram_random + $01
C - - - - - 0x01A73B 06:A72B: 85 E5     STA ram_random + $01
C - - - - - 0x01A73D 06:A72D: 29 03     AND #$03
C - - - - - 0x01A73F 06:A72F: A8        TAY
C - - - - - 0x01A740 06:A730: B9 3A A8  LDA tbl_A83A,Y
C - - - - - 0x01A743 06:A733: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x01A746 06:A736: 85 7E     STA ram_007E
C - - - - - 0x01A748 06:A738: A5 E4     LDA ram_random
C - - - - - 0x01A74A 06:A73A: 65 E6     ADC ram_random + $02
C - - - - - 0x01A74C 06:A73C: 85 E6     STA ram_random + $02
C - - - - - 0x01A74E 06:A73E: 29 01     AND #$01
C - - - - - 0x01A750 06:A740: A8        TAY
C - - - - - 0x01A751 06:A741: B9 31 A8  LDA tbl_A831_direction,Y
C - - - - - 0x01A754 06:A744: 85 7A     STA ram_007A
C - - - - - 0x01A756 06:A746: A9 00     LDA #$00
C - - - - - 0x01A758 06:A748: 85 7D     STA ram_007D
C - - - - - 0x01A75A 06:A74A: 85 7B     STA ram_007B
C - - - - - 0x01A75C 06:A74C: 85 7C     STA ram_007C
C - - - - - 0x01A75E 06:A74E: 85 1C     STA ram_001C
C - - - - - 0x01A760 06:A750: A0 0F     LDY #$0F
bra_A752_loop:
C - - - - - 0x01A762 06:A752: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A765 06:A755: 10 0B     BPL bra_A762
C - - - - - 0x01A767 06:A757: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01A76A 06:A75A: C9 85     CMP #$85
C - - - - - 0x01A76C 06:A75C: F0 0A     BEQ bra_A768
C - - - - - 0x01A76E 06:A75E: C9 88     CMP #$88
C - - - - - 0x01A770 06:A760: F0 11     BEQ bra_A773
bra_A762:
C - - - - - 0x01A772 06:A762: 88        DEY
C - - - - - 0x01A773 06:A763: C0 02     CPY #$02
C - - - - - 0x01A775 06:A765: D0 EB     BNE bra_A752_loop
C - - - - - 0x01A777 06:A767: 60        RTS
bra_A768:
C - - - - - 0x01A778 06:A768: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01A77B 06:A76B: 29 FB     AND #$FB
C - - - - - 0x01A77D 06:A76D: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01A780 06:A770: 4C 8B A7  JMP loc_A78B
bra_A773:
C - - - - - 0x01A783 06:A773: A5 7A     LDA ram_007A
C - - - - - 0x01A785 06:A775: 29 01     AND #$01
C - - - - - 0x01A787 06:A777: 4A        LSR
C - - - - - 0x01A788 06:A778: 6A        ROR
C - - - - - 0x01A789 06:A779: 4A        LSR
C - - - - - 0x01A78A 06:A77A: 85 00     STA ram_0000
C - - - - - 0x01A78C 06:A77C: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01A78F 06:A77F: 29 BF     AND #$BF
C - - - - - 0x01A791 06:A781: 05 00     ORA ram_0000
C - - - - - 0x01A793 06:A783: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01A796 06:A786: A9 89     LDA #$89
C - - - - - 0x01A798 06:A788: 99 30 04  STA ram_0430_obj,Y
loc_A78B:
C D 1 - - - 0x01A79B 06:A78B: A9 00     LDA #$00
C - - - - - 0x01A79D 06:A78D: 99 48 04  STA ram_0448,Y
C - - - - - 0x01A7A0 06:A790: 99 18 04  STA ram_animation_cnt,Y
C - - - - - 0x01A7A3 06:A793: F0 CD     BEQ bra_A762   ; jmp



sub_A795:
C - - - - - 0x01A7A5 06:A795: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01A7A8 06:A798: F0 0A     BEQ bra_A7A4
C - - - - - 0x01A7AA 06:A79A: DE 60 04  DEC ram_0460_obj,X
C - - - - - 0x01A7AD 06:A79D: D0 30     BNE bra_A7CF_RTS
C - - - - - 0x01A7AF 06:A79F: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01A7B2 06:A7A2: D0 2C     BNE bra_A7D0
bra_A7A4:
C - - - - - 0x01A7B4 06:A7A4: A9 03     LDA #$03
C - - - - - 0x01A7B6 06:A7A6: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x01A7B9 06:A7A9: A0 02     LDY #$02
C - - - - - 0x01A7BB 06:A7AB: 65 E7     ADC ram_random + $03
C - - - - - 0x01A7BD 06:A7AD: 29 01     AND #$01
C - - - - - 0x01A7BF 06:A7AF: D0 02     BNE bra_A7B3
C - - - - - 0x01A7C1 06:A7B1: A0 00     LDY #$00
bra_A7B3:
C - - - - - 0x01A7C3 06:A7B3: 98        TYA
C - - - - - 0x01A7C4 06:A7B4: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x01A7C7 06:A7B7: A0 0F     LDY #$0F
bra_A7B9_loop:
C - - - - - 0x01A7C9 06:A7B9: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01A7CC 06:A7BC: 10 07     BPL bra_A7C5
C - - - - - 0x01A7CE 06:A7BE: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01A7D1 06:A7C1: C9 58     CMP #con_obj_id_piranha_minion_ursula
C - - - - - 0x01A7D3 06:A7C3: F0 6B     BEQ bra_A830_RTS
bra_A7C5:
C - - - - - 0x01A7D5 06:A7C5: 88        DEY
C - - - - - 0x01A7D6 06:A7C6: C0 02     CPY #$02
C - - - - - 0x01A7D8 06:A7C8: D0 EF     BNE bra_A7B9_loop
C - - - - - 0x01A7DA 06:A7CA: A9 78     LDA #$78
C - - - - - 0x01A7DC 06:A7CC: 9D 60 04  STA ram_0460_obj,X
bra_A7CF_RTS:
C - - - - - 0x01A7DF 06:A7CF: 60        RTS
bra_A7D0:
C - - - - - 0x01A7E0 06:A7D0: 86 0F     STX ram_000F
C - - - - - 0x01A7E2 06:A7D2: 20 54 FE  JSR sub_0x01FE64
C - - - - - 0x01A7E5 06:A7D5: B0 59     BCS bra_A830_RTS
C - - - - - 0x01A7E7 06:A7D7: A9 58     LDA #con_obj_id_piranha_minion_ursula
C - - - - - 0x01A7E9 06:A7D9: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01A7EC 06:A7DC: A9 20     LDA #$20
C - - - - - 0x01A7EE 06:A7DE: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x01A7F1 06:A7E1: A9 60     LDA #$60
C - - - - - 0x01A7F3 06:A7E3: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01A7F6 06:A7E6: A9 01     LDA #$01
C - - - - - 0x01A7F8 06:A7E8: 99 F0 03  STA ram_03F0_obj,Y
C - - - - - 0x01A7FB 06:A7EB: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01A7FE 06:A7EE: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01A801 06:A7F1: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01A804 06:A7F4: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01A807 06:A7F7: A9 00     LDA #$00
C - - - - - 0x01A809 06:A7F9: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01A80C 06:A7FC: A9 01     LDA #$01
C - - - - - 0x01A80E 06:A7FE: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x01A811 06:A801: A5 E5     LDA ram_random + $01
C - - - - - 0x01A813 06:A803: 65 E6     ADC ram_random + $02
C - - - - - 0x01A815 06:A805: 29 01     AND #$01
C - - - - - 0x01A817 06:A807: AA        TAX
C - - - - - 0x01A818 06:A808: BD 31 A8  LDA tbl_A831_direction,X
C - - - - - 0x01A81B 06:A80B: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01A81E 06:A80E: 29 01     AND #$01
C - - - - - 0x01A820 06:A810: AA        TAX
C - - - - - 0x01A821 06:A811: BD 33 A8  LDA tbl_A833_pos_X_lo,X
C - - - - - 0x01A824 06:A814: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01A827 06:A817: A6 0F     LDX ram_000F
C - - - - - 0x01A829 06:A819: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x01A82C 06:A81C: AA        TAX
C - - - - - 0x01A82D 06:A81D: BD 35 A8  LDA tbl_A835_pos_Y_lo,X
C - - - - - 0x01A830 06:A820: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01A833 06:A823: A6 0F     LDX ram_000F
C - - - - - 0x01A835 06:A825: FE 80 04  INC ram_0480_obj,X
C - - - - - 0x01A838 06:A828: DE 70 04  DEC ram_obj_timer,X
C - - - - - 0x01A83B 06:A82B: A9 20     LDA #$20
C - - - - - 0x01A83D 06:A82D: 9D 60 04  STA ram_0460_obj,X
bra_A830_RTS:
C - - - - - 0x01A840 06:A830: 60        RTS



tbl_A831_direction:
- D 1 - - - 0x01A841 06:A831: 01        .byte $01   ; 00
- D 1 - - - 0x01A842 06:A832: 02        .byte $02   ; 01



tbl_A833_pos_X_lo:
- D 1 - - - 0x01A843 06:A833: F8        .byte $F8   ; 02
- D 1 - - - 0x01A844 06:A834: 08        .byte $08   ; 01



tbl_A835_pos_Y_lo:
- D 1 - - - 0x01A845 06:A835: 98        .byte $98   ; 00
- D 1 - - - 0x01A846 06:A836: B8        .byte $B8   ; 01
- D 1 - - - 0x01A847 06:A837: D8        .byte $D8   ; 02
- D 1 - - - 0x01A848 06:A838: B8        .byte $B8   ; 03
- D 1 - - - 0x01A849 06:A839: 98        .byte $98   ; 04



tbl_A83A:
- D 1 - - - 0x01A84A 06:A83A: B4        .byte $B4   ; 00
- D 1 - - - 0x01A84B 06:A83B: F0        .byte $F0   ; 01
- D 1 - - - 0x01A84C 06:A83C: FF        .byte $FF   ; 02
- D 1 - - - 0x01A84D 06:A83D: B4        .byte $B4   ; 03



ofs_005_A83E_58_piranha_minion_ursula:
; piranha fish during stage 6 boss fight, swims at the bottom
C - - J - - 0x01A84E 06:A83E: A9 00     LDA #$00
C - - - - - 0x01A850 06:A840: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01A853 06:A843: A9 01     LDA #$01
C - - - - - 0x01A855 06:A845: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01A858 06:A848: A5 7A     LDA ram_007A
C - - - - - 0x01A85A 06:A84A: F0 2A     BEQ bra_A876
C - - - - - 0x01A85C 06:A84C: DD D0 03  CMP ram_direction,X
C - - - - - 0x01A85F 06:A84F: F0 14     BEQ bra_A865
C - - - - - 0x01A861 06:A851: BD 80 03  LDA ram_spd_X_lo,X
C - - - - - 0x01A864 06:A854: 38        SEC
C - - - - - 0x01A865 06:A855: E5 7B     SBC ram_007B
C - - - - - 0x01A867 06:A857: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01A86A 06:A85A: BD 90 03  LDA ram_spd_X_hi,X
C - - - - - 0x01A86D 06:A85D: E9 00     SBC #$00
C - - - - - 0x01A86F 06:A85F: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01A872 06:A862: 4C 76 A8  JMP loc_A876
bra_A865:
C - - - - - 0x01A875 06:A865: BD 80 03  LDA ram_spd_X_lo,X
C - - - - - 0x01A878 06:A868: 18        CLC
C - - - - - 0x01A879 06:A869: 65 7B     ADC ram_007B
C - - - - - 0x01A87B 06:A86B: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01A87E 06:A86E: BD 90 03  LDA ram_spd_X_hi,X
C - - - - - 0x01A881 06:A871: 69 00     ADC #$00
C - - - - - 0x01A883 06:A873: 9D 90 03  STA ram_spd_X_hi,X
bra_A876:
loc_A876:
C D 1 - - - 0x01A886 06:A876: 4C DF FC  JMP loc_0x01FCEF_move_object_X_axis



ofs_005_A879_59_boss_ursula_big_dead:
; stage 6 boss when dead, she begins to dissapear
C - - J - - 0x01A889 06:A879: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x01A88C 06:A87C: F0 10     BEQ bra_A88E
C - - - - - 0x01A88E 06:A87E: DE 80 04  DEC ram_0480_obj,X
C - - - - - 0x01A891 06:A881: 4A        LSR
C - - - - - 0x01A892 06:A882: 4A        LSR
C - - - - - 0x01A893 06:A883: 29 01     AND #$01
C - - - - - 0x01A895 06:A885: A8        TAY
C - - - - - 0x01A896 06:A886: B9 DC A8  LDA tbl_A8DC,Y
C - - - - - 0x01A899 06:A889: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01A89B 06:A88B: 85 F7     STA ram_copy_scroll_X
C - - - - - 0x01A89D 06:A88D: 60        RTS
bra_A88E:
C - - - - - 0x01A89E 06:A88E: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01A8A1 06:A891: 29 04     AND #$04
C - - - - - 0x01A8A3 06:A893: D0 17     BNE bra_A8AC
C - - - - - 0x01A8A5 06:A895: 09 04     ORA #$04
C - - - - - 0x01A8A7 06:A897: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01A8AA 06:A89A: 86 00     STX ram_0000
C - - - - - 0x01A8AC 06:A89C: A0 0F     LDY #$0F
C - - - - - 0x01A8AE 06:A89E: A9 00     LDA #$00
bra_A8A0_loop:
C - - - - - 0x01A8B0 06:A8A0: C4 00     CPY ram_0000
C - - - - - 0x01A8B2 06:A8A2: F0 03     BEQ bra_A8A7
C - - - - - 0x01A8B4 06:A8A4: 99 00 03  STA ram_obj_flags,Y
bra_A8A7:
C - - - - - 0x01A8B7 06:A8A7: 88        DEY
C - - - - - 0x01A8B8 06:A8A8: C0 02     CPY #$02
C - - - - - 0x01A8BA 06:A8AA: D0 F4     BNE bra_A8A0_loop
bra_A8AC:
C - - - - - 0x01A8BC 06:A8AC: BD 60 04  LDA ram_0460_obj,X
C - - - - - 0x01A8BF 06:A8AF: FE 60 04  INC ram_0460_obj,X
C - - - - - 0x01A8C2 06:A8B2: 29 07     AND #$07
C - - - - - 0x01A8C4 06:A8B4: D0 25     BNE bra_A8DB_RTS
C - - - - - 0x01A8C6 06:A8B6: FE 70 04  INC ram_obj_timer,X
C - - - - - 0x01A8C9 06:A8B9: A0 0B     LDY #$0B
bra_A8BB_loop:
C - - - - - 0x01A8CB 06:A8BB: B9 00 06  LDA ram_pal_buffer_1,Y
C - - - - - 0x01A8CE 06:A8BE: 38        SEC
C - - - - - 0x01A8CF 06:A8BF: E9 10     SBC #$10
C - - - - - 0x01A8D1 06:A8C1: B0 02     BCS bra_A8C5
C - - - - - 0x01A8D3 06:A8C3: A9 0F     LDA #$0F
bra_A8C5:
C - - - - - 0x01A8D5 06:A8C5: 99 00 06  STA ram_pal_buffer_1,Y
C - - - - - 0x01A8D8 06:A8C8: 99 20 06  STA ram_pal_buffer_2,Y
C - - - - - 0x01A8DB 06:A8CB: 88        DEY
C - - - - - 0x01A8DC 06:A8CC: 10 ED     BPL bra_A8BB_loop
C - - - - - 0x01A8DE 06:A8CE: 84 18     STY ram_0018
C - - - - - 0x01A8E0 06:A8D0: BD 70 04  LDA ram_obj_timer,X
C - - - - - 0x01A8E3 06:A8D3: C9 05     CMP #$05
C - - - - - 0x01A8E5 06:A8D5: D0 04     BNE bra_A8DB_RTS
C - - - - - 0x01A8E7 06:A8D7: A9 FF     LDA #$FF
C - - - - - 0x01A8E9 06:A8D9: 85 2F     STA ram_002F
bra_A8DB_RTS:
C - - - - - 0x01A8EB 06:A8DB: 60        RTS



tbl_A8DC:
- D 1 - - - 0x01A8EC 06:A8DC: 04        .byte $04   ; 00
- D 1 - - - 0x01A8ED 06:A8DD: 00        .byte $00   ; 01


; bzk garbage
- - - - - - 0x01A8EE 06:A8DE: FF        .byte $FF, $FF   ; 
- - - - - - 0x01A8F0 06:A8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A900 06:A8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A910 06:A900: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A920 06:A910: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A930 06:A920: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A940 06:A930: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A950 06:A940: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A960 06:A950: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A970 06:A960: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A980 06:A970: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A990 06:A980: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9A0 06:A990: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9B0 06:A9A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9C0 06:A9B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9D0 06:A9C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9E0 06:A9D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9F0 06:A9E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA00 06:A9F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA10 06:AA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA20 06:AA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA30 06:AA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA40 06:AA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA50 06:AA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA60 06:AA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA70 06:AA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA80 06:AA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AA90 06:AA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AAA0 06:AA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AAB0 06:AAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AAC0 06:AAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AAD0 06:AAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AAE0 06:AAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AAF0 06:AAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AB00 06:AAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AB10 06:AB00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB20 06:AB10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB30 06:AB20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB40 06:AB30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB50 06:AB40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB60 06:AB50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB70 06:AB60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB80 06:AB70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB90 06:AB80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABA0 06:AB90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABB0 06:ABA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABC0 06:ABB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABD0 06:ABC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABE0 06:ABD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABF0 06:ABE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AC00 06:ABF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01AC10_secret_menu_handler:
C - - - - - 0x01AC10 06:AC00: A0 00     LDY #$00
bra_AC02_loop:
C - - - - - 0x01AC12 06:AC02: B9 4C AC  LDA tbl_AC4C_menu_tiles,Y
C - - - - - 0x01AC15 06:AC05: 99 80 07  STA ram_ppu_buffer,Y
C - - - - - 0x01AC18 06:AC08: C9 FF     CMP #$FF
C - - - - - 0x01AC1A 06:AC0A: F0 03     BEQ bra_AC0F
C - - - - - 0x01AC1C 06:AC0C: C8        INY
C - - - - - 0x01AC1D 06:AC0D: D0 F3     BNE bra_AC02_loop
bra_AC0F:
C - - - - - 0x01AC1F 06:AC0F: 85 19     STA ram_0019
C - - - - - 0x01AC21 06:AC11: A9 60     LDA #$60
C - - - - - 0x01AC23 06:AC13: 8D 58 02  STA ram_spr_Y + $58
C - - - - - 0x01AC26 06:AC16: A9 4A     LDA #$4A
C - - - - - 0x01AC28 06:AC18: 8D 59 02  STA ram_spr_T + $58
C - - - - - 0x01AC2B 06:AC1B: A9 02     LDA #$02
C - - - - - 0x01AC2D 06:AC1D: 8D 5A 02  STA ram_spr_A + $58
C - - - - - 0x01AC30 06:AC20: A9 30     LDA #$30
C - - - - - 0x01AC32 06:AC22: 8D 5B 02  STA ram_spr_X + $58
C - - - - - 0x01AC35 06:AC25: 20 AD FF  JSR sub_0x01FFBD
C - - - - - 0x01AC38 06:AC28: A9 00     LDA #$00    ; off
C - - - - - 0x01AC3A 06:AC2A: 85 BB     STA ram_no_damage_cheat
loc_AC2C_loop:
C D 1 - - - 0x01AC3C 06:AC2C: A5 14     LDA ram_btn_press
C - - - - - 0x01AC3E 06:AC2E: 29 10     AND #con_btn_Start
C - - - - - 0x01AC40 06:AC30: D0 19     BNE bra_AC4B_RTS
C - - - - - 0x01AC42 06:AC32: A5 14     LDA ram_btn_press
C - - - - - 0x01AC44 06:AC34: 29 03     AND #con_btns_LR
C - - - - - 0x01AC46 06:AC36: F0 0D     BEQ bra_AC45
C - - - - - 0x01AC48 06:AC38: 48        PHA
C - - - - - 0x01AC49 06:AC39: A8        TAY
C - - - - - 0x01AC4A 06:AC3A: B9 64 AC  LDA tbl_AC65_cursor_pos - $01,Y
C - - - - - 0x01AC4D 06:AC3D: 8D 5B 02  STA ram_spr_X + $58
C - - - - - 0x01AC50 06:AC40: 68        PLA
C - - - - - 0x01AC51 06:AC41: 29 01     AND #$01
C - - - - - 0x01AC53 06:AC43: 85 BB     STA ram_no_damage_cheat
bra_AC45:
C - - - - - 0x01AC55 06:AC45: 20 AD FF  JSR sub_0x01FFBD
C - - - - - 0x01AC58 06:AC48: 4C 2C AC  JMP loc_AC2C_loop
bra_AC4B_RTS:
C - - - - - 0x01AC5B 06:AC4B: 60        RTS



tbl_AC4C_menu_tiles:
; normal/no damage
- D 1 - - - 0x01AC5C 06:AC4C: 21 87     .dbyt $2187
- D 1 - - - 0x01AC5E 06:AC4E: 14        .byte $14   ; counter
- D 1 - - - 0x01AC5F 06:AC4F: 61        .byte $61, $62, $65, $60, $54, $5F, $00, $00, $00, $00, $00, $00, $61, $62, $00, $57   ; 
- D 1 - - - 0x01AC6F 06:AC5F: 54        .byte $54, $60, $54, $5A, $58   ; 

- D 1 - - - 0x01AC74 06:AC64: FF        .byte $FF   ; end token



tbl_AC65_cursor_pos:
- D 1 - - - 0x01AC75 06:AC65: 90        .byte $90   ; 01 left
- D 1 - - - 0x01AC76 06:AC66: 30        .byte $30   ; 02 right


; bzk garbage
- - - - - - 0x01AC77 06:AC67: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AC80 06:AC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AC90 06:AC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACA0 06:AC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACB0 06:ACA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACC0 06:ACB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACD0 06:ACC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACE0 06:ACD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACF0 06:ACE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD00 06:ACF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD10 06:AD00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD20 06:AD10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD30 06:AD20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD40 06:AD30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD50 06:AD40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD60 06:AD50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD70 06:AD60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD80 06:AD70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD90 06:AD80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADA0 06:AD90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADB0 06:ADA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADC0 06:ADB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADD0 06:ADC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADE0 06:ADD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADF0 06:ADE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AE00 06:ADF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AE10 06:AE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE20 06:AE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE30 06:AE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE40 06:AE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE50 06:AE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE60 06:AE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE70 06:AE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE80 06:AE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE90 06:AE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEA0 06:AE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEB0 06:AEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEC0 06:AEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AED0 06:AEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEE0 06:AED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEF0 06:AEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF00 06:AEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF10 06:AF00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF20 06:AF10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF30 06:AF20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF40 06:AF30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF50 06:AF40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF60 06:AF50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF70 06:AF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF80 06:AF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AF90 06:AF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AFA0 06:AF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AFB0 06:AFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AFC0 06:AFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AFD0 06:AFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AFE0 06:AFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AFF0 06:AFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01B000 06:AFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01B010_draw_static_screen:
C - - - - - 0x01B010 06:B000: A9 00     LDA #$00
C - - - - - 0x01B012 06:B002: 85 03     STA ram_0003
sub_0x01B014_draw_static_screen:
C - - - - - 0x01B014 06:B004: BD 43 B0  LDA tbl_B043_static_screen_data_lo,X
C - - - - - 0x01B017 06:B007: 85 00     STA ram_0000
C - - - - - 0x01B019 06:B009: BD 5A B0  LDA tbl_B05A_static_screen_data_hi,X
C - - - - - 0x01B01C 06:B00C: 85 01     STA ram_0001
C - - - - - 0x01B01E 06:B00E: A0 00     LDY #$00
bra_B010:
C - - - - - 0x01B020 06:B010: AD 02 20  LDA $2002
C - - - - - 0x01B023 06:B013: B1 00     LDA (ram_0000),Y
C - - - - - 0x01B025 06:B015: F0 25     BEQ bra_B03C_RTS
C - - - - - 0x01B027 06:B017: 05 03     ORA ram_0003
C - - - - - 0x01B029 06:B019: 8D 06 20  STA $2006
C - - - - - 0x01B02C 06:B01C: 20 3D B0  JSR sub_B03D
C - - - - - 0x01B02F 06:B01F: B1 00     LDA (ram_0000),Y
C - - - - - 0x01B031 06:B021: 8D 06 20  STA $2006
C - - - - - 0x01B034 06:B024: 20 3D B0  JSR sub_B03D
C - - - - - 0x01B037 06:B027: B1 00     LDA (ram_0000),Y
C - - - - - 0x01B039 06:B029: 85 02     STA ram_0002
C - - - - - 0x01B03B 06:B02B: 20 3D B0  JSR sub_B03D
bra_B02E_loop:
C - - - - - 0x01B03E 06:B02E: B1 00     LDA (ram_0000),Y
C - - - - - 0x01B040 06:B030: 8D 07 20  STA $2007
C - - - - - 0x01B043 06:B033: 20 3D B0  JSR sub_B03D
C - - - - - 0x01B046 06:B036: C6 02     DEC ram_0002
C - - - - - 0x01B048 06:B038: 10 F4     BPL bra_B02E_loop
C - - - - - 0x01B04A 06:B03A: 30 D4     BMI bra_B010   ; jmp
bra_B03C_RTS:
C - - - - - 0x01B04C 06:B03C: 60        RTS



sub_B03D:
C - - - - - 0x01B04D 06:B03D: C8        INY
C - - - - - 0x01B04E 06:B03E: D0 02     BNE bra_B042_RTS
C - - - - - 0x01B050 06:B040: E6 01     INC ram_0001
bra_B042_RTS:
C - - - - - 0x01B052 06:B042: 60        RTS



tbl_B043_static_screen_data_lo:
- D 1 - - - 0x01B053 06:B043: 71        .byte < _off005_B071_00_title   ; 
- D 1 - - - 0x01B054 06:B044: E6        .byte < _off005_B1E6_01_pause   ; 
- D 1 - - - 0x01B055 06:B045: D2        .byte < _off005_B2D2_02_stage_clear   ; 
- D 1 - - - 0x01B056 06:B046: 2B        .byte < _off005_B42B_03   ; cutscene
- D 1 - - - 0x01B057 06:B047: 55        .byte < _off005_B555_04   ; cutscene
- D 1 - - - 0x01B058 06:B048: 7F        .byte < _off005_B67F_05   ; cutscene
- D 1 - - - 0x01B059 06:B049: A9        .byte < _off005_B7A9_06   ; cutscene
- D 1 - - - 0x01B05A 06:B04A: D3        .byte < _off005_B8D3_07   ; cutscene
- D 1 - - - 0x01B05B 06:B04B: FD        .byte < _off005_B9FD_08   ; cutscene
- D 1 - - - 0x01B05C 06:B04C: A9        .byte < _off005_B7A9_09   ; cutscene
- D 1 - - - 0x01B05D 06:B04D: 27        .byte < _off005_BB27_0A   ; cutscene
- D 1 - - - 0x01B05E 06:B04E: 51        .byte < _off005_BC51_0B   ; cutscene
- D 1 - - - 0x01B05F 06:B04F: 51        .byte < _off005_BC51_0C   ; cutscene
- D 1 - - - 0x01B060 06:B050: 51        .byte < _off005_BC51_0D   ; cutscene
- D 1 - - - 0x01B061 06:B051: 51        .byte < _off005_BC51_0E   ; cutscene
- D 1 - - - 0x01B062 06:B052: 51        .byte < _off005_BC51_0F   ; cutscene
- D 1 - - - 0x01B063 06:B053: F4        .byte < _off005_B2F4_10_copyrights   ; 
- D 1 - - - 0x01B064 06:B054: 86        .byte < _off005_B386_11_game_over   ; 
- D 1 - - - 0x01B065 06:B055: A5        .byte < _off005_B3A5_12_stage_1   ; 
- D 1 - - - 0x01B066 06:B056: BF        .byte < _off005_B3BF_13_stage_2   ; 
- D 1 - - - 0x01B067 06:B057: D8        .byte < _off005_B3D8_14_stage_3   ; 
- D 1 - - - 0x01B068 06:B058: F0        .byte < _off005_B3F0_15_stage_4   ; 
- D 1 - - - 0x01B069 06:B059: 0E        .byte < _off005_B40E_16_stage_5   ; 



tbl_B05A_static_screen_data_hi:
- D 1 - - - 0x01B06A 06:B05A: B0        .byte > _off005_B071_00_title   ; 
- D 1 - - - 0x01B06B 06:B05B: B1        .byte > _off005_B1E6_01_pause   ; 
- D 1 - - - 0x01B06C 06:B05C: B2        .byte > _off005_B2D2_02_stage_clear   ; 
- D 1 - - - 0x01B06D 06:B05D: B4        .byte > _off005_B42B_03   ; cutscene
- D 1 - - - 0x01B06E 06:B05E: B5        .byte > _off005_B555_04   ; cutscene
- D 1 - - - 0x01B06F 06:B05F: B6        .byte > _off005_B67F_05   ; cutscene
- D 1 - - - 0x01B070 06:B060: B7        .byte > _off005_B7A9_06   ; cutscene
- D 1 - - - 0x01B071 06:B061: B8        .byte > _off005_B8D3_07   ; cutscene
- D 1 - - - 0x01B072 06:B062: B9        .byte > _off005_B9FD_08   ; cutscene
- D 1 - - - 0x01B073 06:B063: B7        .byte > _off005_B7A9_09   ; cutscene
- D 1 - - - 0x01B074 06:B064: BB        .byte > _off005_BB27_0A   ; cutscene
- D 1 - - - 0x01B075 06:B065: BC        .byte > _off005_BC51_0B   ; cutscene
- D 1 - - - 0x01B076 06:B066: BC        .byte > _off005_BC51_0C   ; cutscene
- D 1 - - - 0x01B077 06:B067: BC        .byte > _off005_BC51_0D   ; cutscene
- D 1 - - - 0x01B078 06:B068: BC        .byte > _off005_BC51_0E   ; cutscene
- D 1 - - - 0x01B079 06:B069: BC        .byte > _off005_BC51_0F   ; cutscene
- D 1 - - - 0x01B07A 06:B06A: B2        .byte > _off005_B2F4_10_copyrights   ; 
- D 1 - - - 0x01B07B 06:B06B: B3        .byte > _off005_B386_11_game_over   ; 
- D 1 - - - 0x01B07C 06:B06C: B3        .byte > _off005_B3A5_12_stage_1   ; 
- D 1 - - - 0x01B07D 06:B06D: B3        .byte > _off005_B3BF_13_stage_2   ; 
- D 1 - - - 0x01B07E 06:B06E: B3        .byte > _off005_B3D8_14_stage_3   ; 
- D 1 - - - 0x01B07F 06:B06F: B3        .byte > _off005_B3F0_15_stage_4   ; 
- D 1 - - - 0x01B080 06:B070: B4        .byte > _off005_B40E_16_stage_5   ; 



_off005_B071_00_title:
- D 1 - I - 0x01B081 06:B071: 20 8C     .dbyt $208C
- D 1 - I - 0x01B083 06:B073: 0A        .byte $0A   ; 
- D 1 - I - 0x01B084 06:B074: 07        .byte $07, $08, $09, $0A, $0B, $0B, $0C, $0C, $0D, $0E, $0F   ; 

- D 1 - I - 0x01B08F 06:B07F: 20 A7     .dbyt $20A7
- D 1 - I - 0x01B091 06:B081: 0F        .byte $0F   ; 
- D 1 - I - 0x01B092 06:B082: 10        .byte $10, $11, $12, $13, $00, $17, $18, $19, $1A, $1B, $1C, $17, $17, $1D, $1E, $1F   ; 

- D 1 - I - 0x01B0A2 06:B092: 20 C7     .dbyt $20C7
- D 1 - I - 0x01B0A4 06:B094: 11        .byte $11   ; 
- D 1 - I - 0x01B0A5 06:B095: 20        .byte $20, $21, $22, $23, $14, $15, $14, $27, $28, $2B, $2C, $13, $2E, $2F, $13, $01   ; 

- D 1 - I - 0x01B0B5 06:B0A5: 02        .byte $02, $03   ; 

- D 1 - I - 0x01B0B7 06:B0A7: 20 E7     .dbyt $20E7
- D 1 - I - 0x01B0B9 06:B0A9: 11        .byte $11   ; 
- D 1 - I - 0x01B0BA 06:B0AA: 30        .byte $30, $31, $32, $33, $24, $25, $36, $37, $38, $3B, $3C, $33, $3E, $3F, $33, $30   ; 
- D 1 - I - 0x01B0CA 06:B0BA: 00        .byte $00, $04   ; 

- D 1 - I - 0x01B0CC 06:B0BC: 21 07     .dbyt $2107
- D 1 - I - 0x01B0CE 06:B0BE: 11        .byte $11   ; 
- D 1 - I - 0x01B0CF 06:B0BF: 40        .byte $40, $41, $42, $43, $34, $35, $34, $29, $3A, $4B, $4C, $4D, $49, $4E, $43, $40   ; 
- D 1 - I - 0x01B0DF 06:B0CF: 00        .byte $00, $05   ; 

- D 1 - I - 0x01B0E1 06:B0D1: 21 27     .dbyt $2127
- D 1 - I - 0x01B0E3 06:B0D3: 13        .byte $13   ; 
- D 1 - I - 0x01B0E4 06:B0D4: 50        .byte $50, $51, $52, $53, $44, $45, $44, $39, $4A, $2A, $3D, $2D, $39, $4F, $53, $26   ; 
- D 1 - I - 0x01B0F4 06:B0E4: 16        .byte $16, $06, $67, $60   ; 

- D 1 - I - 0x01B0F8 06:B0E8: 21 4F     .dbyt $214F
- D 1 - I - 0x01B0FA 06:B0EA: 01        .byte $01   ; 
- D 1 - I - 0x01B0FB 06:B0EB: 46        .byte $46, $47   ; 

- D 1 - I - 0x01B0FD 06:B0ED: 21 87     .dbyt $2187
- D 1 - I - 0x01B0FF 06:B0EF: 11        .byte $11   ; 
- D 1 - I - 0x01B100 06:B0F0: 63        .byte $63, $65, $58, $66, $66, $00, $66, $67, $54, $65, $67, $00, $55, $68, $67, $67   ; 
- D 1 - I - 0x01B110 06:B100: 62        .byte $62, $61   ; 

- D 1 - I - 0x01B112 06:B102: 21 ED     .dbyt $21ED
- D 1 - I - 0x01B114 06:B104: 05        .byte $05   ; 
- D 1 - I - 0x01B115 06:B105: 80        .byte $80, $80, $82, $80, $80, $80   ; 

- D 1 - I - 0x01B11B 06:B10B: 22 0C     .dbyt $220C
- D 1 - I - 0x01B11D 06:B10D: 07        .byte $07   ; 
- D 1 - I - 0x01B11E 06:B10E: 80        .byte $80, $80, $91, $92, $80, $80, $80, $80   ; 

- D 1 - I - 0x01B126 06:B116: 22 2C     .dbyt $222C
- D 1 - I - 0x01B128 06:B118: 07        .byte $07   ; 
- D 1 - I - 0x01B129 06:B119: 80        .byte $80, $90, $A1, $A2, $80, $80, $80, $80   ; 

- D 1 - I - 0x01B131 06:B121: 22 4B     .dbyt $224B
- D 1 - I - 0x01B133 06:B123: 09        .byte $09   ; 
- D 1 - I - 0x01B134 06:B124: 80        .byte $80, $A0, $81, $00, $B2, $80, $80, $80, $80, $80   ; 

- D 1 - I - 0x01B13E 06:B12E: 22 6B     .dbyt $226B
- D 1 - I - 0x01B140 06:B130: 09        .byte $09   ; 
- D 1 - I - 0x01B141 06:B131: B0        .byte $B0, $B1, $8C, $00, $83, $84, $85, $80, $80, $80   ; 

- D 1 - I - 0x01B14B 06:B13B: 22 8B     .dbyt $228B
- D 1 - I - 0x01B14D 06:B13D: 09        .byte $09   ; 
- D 1 - I - 0x01B14E 06:B13E: 80        .byte $80, $80, $80, $AD, $93, $94, $95, $80, $80, $80   ; 

- D 1 - I - 0x01B158 06:B148: 22 AB     .dbyt $22AB
- D 1 - I - 0x01B15A 06:B14A: 09        .byte $09   ; 
- D 1 - I - 0x01B15B 06:B14B: 80        .byte $80, $80, $80, $88, $00, $A4, $A5, $A6, $80, $80   ; 

- D 1 - I - 0x01B165 06:B155: 22 CC     .dbyt $22CC
- D 1 - I - 0x01B167 06:B157: 07        .byte $07   ; 
- D 1 - I - 0x01B168 06:B158: 80        .byte $80, $A3, $98, $B3, $B4, $B5, $86, $80   ; 

- D 1 - I - 0x01B170 06:B160: 22 E7     .dbyt $22E7
- D 1 - I - 0x01B172 06:B162: 11        .byte $11   ; 
- D 1 - I - 0x01B173 06:B163: BE        .byte $BE, $87, $87, $9E, $9F, $89, $8A, $00, $00, $8E, $8F, $96, $97, $B7, $87, $87   ; 
- D 1 - I - 0x01B183 06:B173: 87        .byte $87, $BF   ; 

- D 1 - I - 0x01B185 06:B175: 23 09     .dbyt $2309
- D 1 - I - 0x01B187 06:B177: 0D        .byte $0D   ; 
- D 1 - I - 0x01B188 06:B178: AE        .byte $AE, $9D, $8B, $8A, $00, $00, $00, $00, $00, $AC, $A7, $A8, $AA, $AB   ; 

- D 1 - I - 0x01B196 06:B186: 23 28     .dbyt $2328
- D 1 - I - 0x01B198 06:B188: 0F        .byte $0F   ; 
- D 1 - I - 0x01B199 06:B189: AE        .byte $AE, $9D, $80, $99, $9A, $AF, $9A, $8D, $00, $AF, $00, $B6, $80, $80, $AA, $AB   ; 

- D 1 - I - 0x01B1A9 06:B199: 23 49     .dbyt $2349
- D 1 - I - 0x01B1AB 06:B19B: 0C        .byte $0C   ; 
- D 1 - I - 0x01B1AC 06:B19C: AE        .byte $AE, $9D, $AA, $AB, $00, $00, $00, $00, $00, $AE, $9D, $AA, $AB   ; 

- D 1 - I - 0x01B1B9 06:B1A9: 23 6A     .dbyt $236A
- D 1 - I - 0x01B1BB 06:B1AB: 0A        .byte $0A   ; 
- D 1 - I - 0x01B1BC 06:B1AC: AE        .byte $AE, $9D, $AA, $AB, $00, $00, $00, $AE, $9D, $AA, $AB   ; 

- D 1 - I - 0x01B1C7 06:B1B7: 23 C9     .dbyt $23C9
- D 1 - I - 0x01B1C9 06:B1B9: 05        .byte $05   ; 
- D 1 - I - 0x01B1CA 06:B1BA: 33        .byte $33, $00, $05, $05, $05, $CF   ; 

- D 1 - I - 0x01B1D0 06:B1C0: 23 D1     .dbyt $23D1
- D 1 - I - 0x01B1D2 06:B1C2: 05        .byte $05   ; 
- D 1 - I - 0x01B1D3 06:B1C3: 00        .byte $00, $00, $00, $00, $00, $00   ; 

- D 1 - I - 0x01B1D9 06:B1C9: 23 DB     .dbyt $23DB
- D 1 - I - 0x01B1DB 06:B1CB: 01        .byte $01   ; 
- D 1 - I - 0x01B1DC 06:B1CC: 5F        .byte $5F, $5F   ; 

- D 1 - I - 0x01B1DE 06:B1CE: 23 E2     .dbyt $23E2
- D 1 - I - 0x01B1E0 06:B1D0: 03        .byte $03   ; 
- D 1 - I - 0x01B1E1 06:B1D1: 7F        .byte $7F, $55, $65, $DF   ; 

- D 1 - I - 0x01B1E5 06:B1D5: 23 E9     .dbyt $23E9
- D 1 - I - 0x01B1E7 06:B1D7: 05        .byte $05   ; 
- D 1 - I - 0x01B1E8 06:B1D8: 3F        .byte $3F, $57, $99, $2A, $4D, $CF   ; 

- D 1 - I - 0x01B1EE 06:B1DE: 23 F2     .dbyt $23F2
- D 1 - I - 0x01B1F0 06:B1E0: 03        .byte $03   ; 
- D 1 - I - 0x01B1F1 06:B1E1: 55        .byte $55, $D5, $51, $D4   ; 

- D 1 - I - 0x01B1F5 06:B1E5: 00        .byte $00   ; end token



_off005_B1E6_01_pause:
- D 1 - I - 0x01B1F6 06:B1E6: 20 A5     .dbyt $20A5
- D 1 - I - 0x01B1F8 06:B1E8: 05        .byte $05   ; 
- D 1 - I - 0x01B1F9 06:B1E9: 26        .byte $26, $16, $22, $25, $18, $49   ; 

- D 1 - I - 0x01B1FF 06:B1EF: 20 B8     .dbyt $20B8
- D 1 - I - 0x01B201 06:B1F1: 00        .byte $00   ; 
- D 1 - I - 0x01B202 06:B1F2: 3F        .byte $3F   ; 

- D 1 - I - 0x01B203 06:B1F3: 21 2D     .dbyt $212D
- D 1 - I - 0x01B205 06:B1F5: 05        .byte $05   ; 
- D 1 - I - 0x01B206 06:B1F6: 70        .byte $70, $71, $71, $71, $71, $72   ; 

- D 1 - I - 0x01B20C 06:B1FC: 21 4D     .dbyt $214D
- D 1 - I - 0x01B20E 06:B1FE: 05        .byte $05   ; 
- D 1 - I - 0x01B20F 06:B1FF: 73        .byte $73, $60, $61, $62, $63, $74   ; 

- D 1 - I - 0x01B215 06:B205: 21 6D     .dbyt $216D
- D 1 - I - 0x01B217 06:B207: 05        .byte $05   ; 
- D 1 - I - 0x01B218 06:B208: 73        .byte $73, $64, $65, $66, $67, $74   ; 

- D 1 - I - 0x01B21E 06:B20E: 21 8D     .dbyt $218D
- D 1 - I - 0x01B220 06:B210: 06        .byte $06   ; 
- D 1 - I - 0x01B221 06:B211: 73        .byte $73, $68, $69, $6A, $6B, $74, $76   ; 

- D 1 - I - 0x01B228 06:B218: 21 AD     .dbyt $21AD
- D 1 - I - 0x01B22A 06:B21A: 06        .byte $06   ; 
- D 1 - I - 0x01B22B 06:B21B: 73        .byte $73, $6C, $6D, $6E, $6F, $74, $77   ; 

- D 1 - I - 0x01B232 06:B222: 21 CD     .dbyt $21CD
- D 1 - I - 0x01B234 06:B224: 06        .byte $06   ; 
- D 1 - I - 0x01B235 06:B225: 70        .byte $70, $75, $75, $75, $75, $72, $78   ; 

- D 1 - I - 0x01B23C 06:B22C: 22 2D     .dbyt $222D
- D 1 - I - 0x01B23E 06:B22E: 05        .byte $05   ; 
- D 1 - I - 0x01B23F 06:B22F: 26        .byte $26, $27, $14, $27, $28, $26   ; 

- D 1 - I - 0x01B245 06:B235: 22 66     .dbyt $2266
- D 1 - I - 0x01B247 06:B237: 15        .byte $15   ; 
- D 1 - I - 0x01B248 06:B238: 79        .byte $79, $7A, $7A, $7A, $7A, $7A, $50, $7A, $7A, $50, $7A, $7A, $50, $7A, $7A, $7B   ; 
- D 1 - I - 0x01B258 06:B248: 00        .byte $00, $79, $7A, $7A, $7A, $7B   ; 

- D 1 - I - 0x01B25E 06:B24E: 22 86     .dbyt $2286
- D 1 - I - 0x01B260 06:B250: 15        .byte $15   ; 
- D 1 - I - 0x01B261 06:B251: 7F        .byte $7F, $23, $22, $2A, $18, $25, $7F, $00, $00, $7F, $00, $00, $7F, $00, $00, $7F   ; 
- D 1 - I - 0x01B271 06:B261: 00        .byte $00, $7F, $00, $00, $00, $7F   ; 

- D 1 - I - 0x01B277 06:B267: 22 A6     .dbyt $22A6
- D 1 - I - 0x01B279 06:B269: 15        .byte $15   ; 
- D 1 - I - 0x01B27A 06:B26A: 7C        .byte $7C, $7D, $7D, $7D, $7D, $7D, $51, $7D, $7D, $51, $7D, $7D, $51, $7D, $7D, $7E   ; 
- D 1 - I - 0x01B28A 06:B27A: 00        .byte $00, $7F, $00, $00, $00, $7F   ; 

- D 1 - I - 0x01B290 06:B280: 22 D7     .dbyt $22D7
- D 1 - I - 0x01B292 06:B282: 04        .byte $04   ; 
- D 1 - I - 0x01B293 06:B283: 7F        .byte $7F, $00, $00, $00, $7F   ; 

- D 1 - I - 0x01B298 06:B288: 22 E6     .dbyt $22E6
- D 1 - I - 0x01B29A 06:B28A: 15        .byte $15   ; 
- D 1 - I - 0x01B29B 06:B28B: 79        .byte $79, $7A, $7A, $7A, $7A, $7A, $50, $7A, $7A, $50, $7A, $7A, $50, $7A, $7A, $7B   ; 
- D 1 - I - 0x01B2AB 06:B29B: 00        .byte $00, $7C, $7D, $7D, $7D, $7E   ; 

- D 1 - I - 0x01B2B1 06:B2A1: 23 06     .dbyt $2306
- D 1 - I - 0x01B2B3 06:B2A3: 0F        .byte $0F   ; 
- D 1 - I - 0x01B2B4 06:B2A4: 7F        .byte $7F, $25, $14, $21, $1A, $18, $7F, $00, $00, $7F, $00, $00, $7F, $00, $00, $7F   ; 

- D 1 - I - 0x01B2C4 06:B2B4: 23 26     .dbyt $2326
- D 1 - I - 0x01B2C6 06:B2B6: 0F        .byte $0F   ; 
- D 1 - I - 0x01B2C7 06:B2B7: 7C        .byte $7C, $7D, $7D, $7D, $7D, $7D, $51, $7D, $7D, $51, $7D, $7D, $51, $7D, $7D, $7E   ; 

- D 1 - I - 0x01B2D7 06:B2C7: 23 D3     .dbyt $23D3
- D 1 - I - 0x01B2D9 06:B2C9: 01        .byte $01   ; 
- D 1 - I - 0x01B2DA 06:B2CA: 40        .byte $40, $10   ; 

- D 1 - I - 0x01B2DC 06:B2CC: 23 DB     .dbyt $23DB
- D 1 - I - 0x01B2DE 06:B2CE: 01        .byte $01   ; 
- D 1 - I - 0x01B2DF 06:B2CF: 04        .byte $04, $01   ; 

- D 1 - I - 0x01B2E1 06:B2D1: 00        .byte $00   ; end token



_off005_B2D2_02_stage_clear:
- D 1 - I - 0x01B2E2 06:B2D2: 20 A5     .dbyt $20A5
- D 1 - I - 0x01B2E4 06:B2D4: 05        .byte $05   ; 
- D 1 - I - 0x01B2E5 06:B2D5: 26        .byte $26, $16, $22, $25, $18, $49   ; SCORE:

- D 1 - I - 0x01B2EB 06:B2DB: 20 B8     .dbyt $20B8
- D 1 - I - 0x01B2ED 06:B2DD: 00        .byte $00   ; 
- D 1 - I - 0x01B2EE 06:B2DE: 3F        .byte $3F   ; =

- D 1 - I - 0x01B2EF 06:B2DF: 21 48     .dbyt $2148
- D 1 - I - 0x01B2F1 06:B2E1: 10        .byte $10   ; 
- D 1 - I - 0x01B2F2 06:B2E2: 26        .byte $26, $27, $14, $1A, $18, $00, $16, $1F, $18, $14, $25, $00, $23, $22, $1C, $21   ; 
- D 1 - I - 0x01B302 06:B2F2: 27        .byte $27   ; STAGE CLEAR POINT

- D 1 - I - 0x01B303 06:B2F3: 00        .byte $00   ; end token



_off005_B2F4_10_copyrights:
- D 1 - I - 0x01B304 06:B2F4: 20 EB     .dbyt $20EB
- D 1 - I - 0x01B306 06:B2F6: 07        .byte $07   ; 
- D 1 - I - 0x01B307 06:B2F7: 2F        .byte $2F, $00, $17, $1C, $26, $21, $18, $2C   ; @ DISNEY

- D 1 - I - 0x01B30F 06:B2FF: 21 46     .dbyt $2146
- D 1 - I - 0x01B311 06:B301: 13        .byte $13   ; 
- D 1 - I - 0x01B312 06:B302: 2A        .byte $2A, $14, $1F, $27, $00, $17, $1C, $26, $21, $18, $2C, $00, $23, $25, $22, $17   ; 
- D 1 - I - 0x01B322 06:B312: 28        .byte $28, $16, $18, $25   ; WALT DISNEY PRODUCER

- D 1 - I - 0x01B326 06:B316: 21 87     .dbyt $2187
- D 1 - I - 0x01B328 06:B318: 10        .byte $10   ; 
- D 1 - I - 0x01B329 06:B319: 26        .byte $26, $27, $18, $23, $1B, $14, $21, $00, $1F, $3C, $00, $15, $28, $27, $1F, $18   ; 
- D 1 - I - 0x01B339 06:B329: 25        .byte $25   ; STEPHAN L. BUTLER

- D 1 - I - 0x01B33A 06:B32A: 21 E2     .dbyt $21E2
- D 1 - I - 0x01B33C 06:B32C: 1B        .byte $1B   ; 
- D 1 - I - 0x01B33D 06:B32D: 23        .byte $23, $25, $22, $17, $28, $16, $18, $17, $00, $15, $2C, $00, $16, $14, $23, $16   ; 
- D 1 - I - 0x01B34D 06:B33D: 22        .byte $22, $20, $00, $16, $22, $3C, $3D, $1F, $27, $17, $3C, $30   ; PRODUCED BY CAPCOM CO.,LTD./

- D 1 - I - 0x01B359 06:B349: 22 28     .dbyt $2228
- D 1 - I - 0x01B35B 06:B34B: 0F        .byte $0F   ; 
- D 1 - I - 0x01B35C 06:B34C: 16        .byte $16, $14, $23, $16, $22, $20, $00, $28, $26, $14, $3C, $00, $1C, $21, $16, $3C   ; CAPCOM USA. INC.

- D 1 - I - 0x01B36C 06:B35C: 22 AA     .dbyt $22AA
- D 1 - I - 0x01B36E 06:B35E: 0A        .byte $0A   ; 
- D 1 - I - 0x01B36F 06:B35F: 1F        .byte $1F, $1C, $16, $18, $21, $26, $18, $17, $00, $15, $2C   ; LICENSED BY

- D 1 - I - 0x01B37A 06:B36A: 22 E4     .dbyt $22E4
- D 1 - I - 0x01B37C 06:B36C: 17        .byte $17   ; 
- D 1 - I - 0x01B37D 06:B36D: 21        .byte $21, $1C, $21, $27, $18, $21, $17, $22, $00, $22, $19, $00, $14, $20, $18, $25   ; 
- D 1 - I - 0x01B38D 06:B37D: 1C        .byte $1C, $16, $14, $3C, $1C, $21, $16, $3C   ; NINTENDO OF AMERICA.INC.

- D 1 - I - 0x01B395 06:B385: 00        .byte $00   ; end token



_off005_B386_11_game_over:
- D 1 - I - 0x01B396 06:B386: 21 6B     .dbyt $216B
- D 1 - I - 0x01B398 06:B388: 09        .byte $09   ; 
- D 1 - I - 0x01B399 06:B389: 1A        .byte $1A, $14, $20, $18, $00, $00, $22, $29, $18, $25   ; GAME  OVER

- D 1 - I - 0x01B3A3 06:B393: 22 0D     .dbyt $220D
- D 1 - I - 0x01B3A5 06:B395: 07        .byte $07   ; 
- D 1 - I - 0x01B3A6 06:B396: 16        .byte $16, $22, $21, $27, $1C, $21, $28, $18   ; CONTINUE

- D 1 - I - 0x01B3AE 06:B39E: 22 4D     .dbyt $224D
- D 1 - I - 0x01B3B0 06:B3A0: 02        .byte $02   ; 
- D 1 - I - 0x01B3B1 06:B3A1: 18        .byte $18, $21, $17   ; END

- D 1 - I - 0x01B3B4 06:B3A4: 00        .byte $00   ; end token



_off005_B3A5_12_stage_1:
- D 1 - I - 0x01B3B5 06:B3A5: 21 8D     .dbyt $218D
- D 1 - I - 0x01B3B7 06:B3A7: 06        .byte $06   ; 
- D 1 - I - 0x01B3B8 06:B3A8: 26        .byte $26, $27, $14, $1A, $18, $00, $31   ; STAGE 1

- D 1 - I - 0x01B3BF 06:B3AF: 21 EA     .dbyt $21EA
- D 1 - I - 0x01B3C1 06:B3B1: 0B        .byte $0B   ; 
- D 1 - I - 0x01B3C2 06:B3B2: 26        .byte $26, $18, $14, $00, $22, $19, $00, $16, $22, $25, $14, $1F   ; SEA OF CORAL

- D 1 - I - 0x01B3CE 06:B3BE: 00        .byte $00   ; end token



_off005_B3BF_13_stage_2:
- D 1 - I - 0x01B3CF 06:B3BF: 21 8D     .dbyt $218D
- D 1 - I - 0x01B3D1 06:B3C1: 06        .byte $06   ; 
- D 1 - I - 0x01B3D2 06:B3C2: 26        .byte $26, $27, $14, $1A, $18, $00, $32   ; STAGE 2

- D 1 - I - 0x01B3D9 06:B3C9: 21 EB     .dbyt $21EB
- D 1 - I - 0x01B3DB 06:B3CB: 0A        .byte $0A   ; 
- D 1 - I - 0x01B3DC 06:B3CC: 26        .byte $26, $28, $21, $1E, $18, $21, $00, $26, $1B, $1C, $23   ; SUNKEN SHIP

- D 1 - I - 0x01B3E7 06:B3D7: 00        .byte $00   ; end token



_off005_B3D8_14_stage_3:
- D 1 - I - 0x01B3E8 06:B3D8: 21 8D     .dbyt $218D
- D 1 - I - 0x01B3EA 06:B3DA: 06        .byte $06   ; 
- D 1 - I - 0x01B3EB 06:B3DB: 26        .byte $26, $27, $14, $1A, $18, $00, $33   ; STAGE 3

- D 1 - I - 0x01B3F2 06:B3E2: 21 EB     .dbyt $21EB
- D 1 - I - 0x01B3F4 06:B3E4: 09        .byte $09   ; 
- D 1 - I - 0x01B3F5 06:B3E5: 26        .byte $26, $18, $14, $00, $22, $19, $00, $1C, $16, $18   ; SEA OF ICE

- D 1 - I - 0x01B3FF 06:B3EF: 00        .byte $00   ; end token



_off005_B3F0_15_stage_4:
- D 1 - I - 0x01B400 06:B3F0: 21 8D     .dbyt $218D
- D 1 - I - 0x01B402 06:B3F2: 06        .byte $06   ; 
- D 1 - I - 0x01B403 06:B3F3: 26        .byte $26, $27, $14, $1A, $18, $00, $34   ; STAGE 4

- D 1 - I - 0x01B40A 06:B3FA: 21 E8     .dbyt $21E8
- D 1 - I - 0x01B40C 06:B3FC: 0F        .byte $0F   ; 
- D 1 - I - 0x01B40D 06:B3FD: 28        .byte $28, $21, $17, $18, $25, $26, $18, $14, $00, $29, $22, $1F, $16, $14, $21, $22   ; UNDERSEA VOLCANO

- D 1 - I - 0x01B41D 06:B40D: 00        .byte $00   ; end token



_off005_B40E_16_stage_5:
- D 1 - I - 0x01B41E 06:B40E: 21 8D     .dbyt $218D
- D 1 - I - 0x01B420 06:B410: 06        .byte $06   ; 
- D 1 - I - 0x01B421 06:B411: 26        .byte $26, $27, $14, $1A, $18, $00, $35   ; STAGE 5

- D 1 - I - 0x01B428 06:B418: 21 E9     .dbyt $21E9
- D 1 - I - 0x01B42A 06:B41A: 0E        .byte $0E   ; 
- D 1 - I - 0x01B42B 06:B41B: 28        .byte $28, $25, $26, $28, $1F, $14, $3E, $26, $00, $16, $14, $26, $27, $1F, $18   ; URSULA`S CASTLE

- D 1 - I - 0x01B43A 06:B42A: 00        .byte $00   ; end token



_off005_B42B_03:
- D 1 - I - 0x01B43B 06:B42B: 20 C4     .dbyt $20C4
- D 1 - I - 0x01B43D 06:B42D: 17        .byte $17   ; 
- D 1 - I - 0x01B43E 06:B42E: 81        .byte $81, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $81, $80, $80   ; 
- D 1 - I - 0x01B44E 06:B43E: 80        .byte $80, $80, $81, $80, $80, $80, $80, $80   ; 

- D 1 - I - 0x01B456 06:B446: 20 E4     .dbyt $20E4
- D 1 - I - 0x01B458 06:B448: 17        .byte $17   ; 
- D 1 - I - 0x01B459 06:B449: 80        .byte $80, $80, $83, $84, $80, $81, $80, $80, $80, $80, $82, $80, $80, $80, $80, $81   ; 
- D 1 - I - 0x01B469 06:B459: 80        .byte $80, $80, $80, $80, $80, $81, $80, $80   ; 

- D 1 - I - 0x01B471 06:B461: 21 04     .dbyt $2104
- D 1 - I - 0x01B473 06:B463: 17        .byte $17   ; 
- D 1 - I - 0x01B474 06:B464: 80        .byte $80, $80, $85, $86, $80, $80, $80, $80, $80, $80, $80, $80, $8C, $8D, $DB, $80   ; 
- D 1 - I - 0x01B484 06:B474: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80   ; 

- D 1 - I - 0x01B48C 06:B47C: 21 24     .dbyt $2124
- D 1 - I - 0x01B48E 06:B47E: 17        .byte $17   ; 
- D 1 - I - 0x01B48F 06:B47F: 80        .byte $80, $81, $80, $80, $80, $80, $80, $81, $80, $8E, $8F, $90, $91, $00, $92, $80   ; 
- D 1 - I - 0x01B49F 06:B48F: 80        .byte $80, $80, $80, $80, $80, $82, $80, $81   ; 

- D 1 - I - 0x01B4A7 06:B497: 21 44     .dbyt $2144
- D 1 - I - 0x01B4A9 06:B499: 17        .byte $17   ; 
- D 1 - I - 0x01B4AA 06:B49A: 80        .byte $80, $80, $80, $80, $82, $80, $80, $80, $93, $94, $95, $96, $97, $98, $99, $80   ; 
- D 1 - I - 0x01B4BA 06:B4AA: 80        .byte $80, $81, $80, $80, $80, $80, $80, $80   ; 

- D 1 - I - 0x01B4C2 06:B4B2: 21 64     .dbyt $2164
- D 1 - I - 0x01B4C4 06:B4B4: 17        .byte $17   ; 
- D 1 - I - 0x01B4C5 06:B4B5: 87        .byte $87, $88, $89, $8A, $80, $80, $80, $80, $9A, $9B, $9C, $80, $9D, $9E, $9F, $A0   ; 
- D 1 - I - 0x01B4D5 06:B4C5: 80        .byte $80, $80, $80, $80, $A1, $A2, $A3, $87   ; 

- D 1 - I - 0x01B4DD 06:B4CD: 21 84     .dbyt $2184
- D 1 - I - 0x01B4DF 06:B4CF: 17        .byte $17   ; 
- D 1 - I - 0x01B4E0 06:B4D0: 00        .byte $00, $00, $00, $00, $88, $88, $8A, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AC   ; 
- D 1 - I - 0x01B4F0 06:B4E0: AD        .byte $AD, $A1, $A2, $A3, $00, $00, $00, $00   ; 

- D 1 - I - 0x01B4F8 06:B4E8: 21 A4     .dbyt $21A4
- D 1 - I - 0x01B4FA 06:B4EA: 17        .byte $17   ; 
- D 1 - I - 0x01B4FB 06:B4EB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $AE, $AF, $B7, $B8, $B9, $BA, $BB, $BC, $BD   ; 
- D 1 - I - 0x01B50B 06:B4FB: BE        .byte $BE, $00, $00, $00, $00, $00, $00, $00   ; 

- D 1 - I - 0x01B513 06:B503: 21 C4     .dbyt $21C4
- D 1 - I - 0x01B515 06:B505: 17        .byte $17   ; 
- D 1 - I - 0x01B516 06:B506: 8B        .byte $8B, $8B, $8B, $8B, $8B, $8B, $8B, $BF, $C0, $C1, $8B, $C2, $C3, $C4, $C5, $C6   ; 
- D 1 - I - 0x01B526 06:B516: C7        .byte $C7, $C8, $8B, $C9, $CA, $8B, $8B, $8B   ; 

- D 1 - I - 0x01B52E 06:B51E: 21 E4     .dbyt $21E4
- D 1 - I - 0x01B530 06:B520: 17        .byte $17   ; 
- D 1 - I - 0x01B531 06:B521: 80        .byte $80, $80, $80, $80, $80, $CB, $CC, $CD, $CE, $CF, $D0, $D1, $D2, $D3, $D4, $D5   ; 
- D 1 - I - 0x01B541 06:B531: D6        .byte $D6, $D7, $D8, $D9, $DA, $80, $80, $80   ; 

- D 1 - I - 0x01B549 06:B539: 23 C9     .dbyt $23C9
- D 1 - I - 0x01B54B 06:B53B: 05        .byte $05   ; 
- D 1 - I - 0x01B54C 06:B53C: A0        .byte $A0, $E0, $B0, $A0, $B0, $E0   ; 

- D 1 - I - 0x01B552 06:B542: 23 D1     .dbyt $23D1
- D 1 - I - 0x01B554 06:B544: 05        .byte $05   ; 
- D 1 - I - 0x01B555 06:B545: FA        .byte $FA, $EB, $FF, $FF, $EF, $FA   ; 

- D 1 - I - 0x01B55B 06:B54B: 23 D9     .dbyt $23D9
- D 1 - I - 0x01B55D 06:B54D: 05        .byte $05   ; 
- D 1 - I - 0x01B55E 06:B54E: 0F        .byte $0F, $0F, $0F, $07, $0D, $0F   ; 

- D 1 - I - 0x01B564 06:B554: 00        .byte $00   ; end token



_off005_B555_04:
- D 1 - I - 0x01B565 06:B555: 20 C4     .dbyt $20C4
- D 1 - I - 0x01B567 06:B557: 17        .byte $17   ; 
- D 1 - I - 0x01B568 06:B558: 02        .byte $02, $02, $02, $E8, $E9, $EA, $E8, $E9, $EA, $02, $02, $02, $02, $02, $02, $E8   ; 
- D 1 - I - 0x01B578 06:B568: E9        .byte $E9, $EA, $02, $02, $02, $02, $02, $02   ; 

- D 1 - I - 0x01B580 06:B570: 20 E4     .dbyt $20E4
- D 1 - I - 0x01B582 06:B572: 17        .byte $17   ; 
- D 1 - I - 0x01B583 06:B573: EB        .byte $EB, $EC, $EB, $EC, $EB, $EB, $EC, $EB, $EC, $EB, $EB, $EC, $EB, $EC, $EC, $EC   ; 
- D 1 - I - 0x01B593 06:B583: EC        .byte $EC, $EC, $EB, $EC, $EB, $EB, $EB, $EC   ; 

- D 1 - I - 0x01B59B 06:B58B: 21 04     .dbyt $2104
- D 1 - I - 0x01B59D 06:B58D: 17        .byte $17   ; 
- D 1 - I - 0x01B59E 06:B58E: 03        .byte $03, $ED, $ED, $03, $ED, $ED, $03, $03, $03, $03, $03, $03, $ED, $03, $03, $03   ; 
- D 1 - I - 0x01B5AE 06:B59E: 03        .byte $03, $EE, $ED, $03, $EE, $ED, $ED, $ED   ; 

- D 1 - I - 0x01B5B6 06:B5A6: 21 24     .dbyt $2124
- D 1 - I - 0x01B5B8 06:B5A8: 17        .byte $17   ; 
- D 1 - I - 0x01B5B9 06:B5A9: EE        .byte $EE, $EE, $03, $ED, $EE, $03, $80, $81, $82, $83, $84, $03, $03, $EE, $03, $03   ; 
- D 1 - I - 0x01B5C9 06:B5B9: 03        .byte $03, $03, $03, $03, $03, $EE, $03, $ED   ; 

- D 1 - I - 0x01B5D1 06:B5C1: 21 44     .dbyt $2144
- D 1 - I - 0x01B5D3 06:B5C3: 17        .byte $17   ; 
- D 1 - I - 0x01B5D4 06:B5C4: 03        .byte $03, $03, $03, $03, $03, $03, $85, $86, $87, $88, $89, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01B5E4 06:B5D4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B5EC 06:B5DC: 21 64     .dbyt $2164
- D 1 - I - 0x01B5EE 06:B5DE: 17        .byte $17   ; 
- D 1 - I - 0x01B5EF 06:B5DF: 03        .byte $03, $03, $EE, $03, $03, $03, $8A, $8B, $8C, $8D, $8E, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01B5FF 06:B5EF: 03        .byte $03, $03, $03, $03, $03, $03, $03, $EE   ; 

- D 1 - I - 0x01B607 06:B5F7: 21 84     .dbyt $2184
- D 1 - I - 0x01B609 06:B5F9: 17        .byte $17   ; 
- D 1 - I - 0x01B60A 06:B5FA: 03        .byte $03, $03, $03, $ED, $03, $03, $8F, $90, $91, $92, $93, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01B61A 06:B60A: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B622 06:B612: 21 A4     .dbyt $21A4
- D 1 - I - 0x01B624 06:B614: 17        .byte $17   ; 
- D 1 - I - 0x01B625 06:B615: 03        .byte $03, $03, $03, $03, $03, $94, $95, $96, $97, $98, $99, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01B635 06:B625: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B63D 06:B62D: 21 C4     .dbyt $21C4
- D 1 - I - 0x01B63F 06:B62F: 17        .byte $17   ; 
- D 1 - I - 0x01B640 06:B630: 03        .byte $03, $03, $F0, $F1, $F2, $9B, $9C, $9D, $9E, $9F, $F3, $F4, $03, $F5, $03, $03   ; 
- D 1 - I - 0x01B650 06:B640: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B658 06:B648: 21 E4     .dbyt $21E4
- D 1 - I - 0x01B65A 06:B64A: 17        .byte $17   ; 
- D 1 - I - 0x01B65B 06:B64B: 03        .byte $03, $03, $F6, $F7, $F8, $A2, $A3, $A4, $A5, $A6, $F9, $FA, $FB, $FC, $03, $03   ; 
- D 1 - I - 0x01B66B 06:B65B: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B673 06:B663: 23 C9     .dbyt $23C9
- D 1 - I - 0x01B675 06:B665: 05        .byte $05   ; 
- D 1 - I - 0x01B676 06:B666: 00        .byte $00, $00, $00, $00, $00, $00   ; 

- D 1 - I - 0x01B67C 06:B66C: 23 D1     .dbyt $23D1
- D 1 - I - 0x01B67E 06:B66E: 05        .byte $05   ; 
- D 1 - I - 0x01B67F 06:B66F: 00        .byte $00, $44, $55, $00, $00, $00   ; 

- D 1 - I - 0x01B685 06:B675: 23 D9     .dbyt $23D9
- D 1 - I - 0x01B687 06:B677: 05        .byte $05   ; 
- D 1 - I - 0x01B688 06:B678: 80        .byte $80, $55, $95, $20, $00, $00   ; 

- D 1 - I - 0x01B68E 06:B67E: 00        .byte $00   ; end token



_off005_B67F_05:
- D 1 - I - 0x01B68F 06:B67F: 20 C4     .dbyt $20C4
- D 1 - I - 0x01B691 06:B681: 17        .byte $17   ; 
- D 1 - I - 0x01B692 06:B682: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02   ; 
- D 1 - I - 0x01B6A2 06:B692: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02   ; 

- D 1 - I - 0x01B6AA 06:B69A: 20 E4     .dbyt $20E4
- D 1 - I - 0x01B6AC 06:B69C: 17        .byte $17   ; 
- D 1 - I - 0x01B6AD 06:B69D: 02        .byte $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01B6BD 06:B6AD: 00        .byte $00, $00, $00, $00, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B6C5 06:B6B5: 21 04     .dbyt $2104
- D 1 - I - 0x01B6C7 06:B6B7: 17        .byte $17   ; 
- D 1 - I - 0x01B6C8 06:B6B8: 02        .byte $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01B6D8 06:B6C8: 00        .byte $00, $00, $00, $00, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B6E0 06:B6D0: 21 24     .dbyt $2124
- D 1 - I - 0x01B6E2 06:B6D2: 17        .byte $17   ; 
- D 1 - I - 0x01B6E3 06:B6D3: 02        .byte $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01B6F3 06:B6E3: 00        .byte $00, $00, $00, $00, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B6FB 06:B6EB: 21 44     .dbyt $2144
- D 1 - I - 0x01B6FD 06:B6ED: 17        .byte $17   ; 
- D 1 - I - 0x01B6FE 06:B6EE: 02        .byte $02, $02, $00, $00, $00, $00, $80, $81, $00, $82, $83, $00, $00, $84, $85, $00   ; 
- D 1 - I - 0x01B70E 06:B6FE: 80        .byte $80, $81, $00, $00, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B716 06:B706: 21 64     .dbyt $2164
- D 1 - I - 0x01B718 06:B708: 17        .byte $17   ; 
- D 1 - I - 0x01B719 06:B709: 02        .byte $02, $02, $00, $00, $00, $00, $86, $87, $00, $88, $89, $8A, $8B, $8C, $8D, $00   ; 
- D 1 - I - 0x01B729 06:B719: 8E        .byte $8E, $8F, $00, $00, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B731 06:B721: 21 84     .dbyt $2184
- D 1 - I - 0x01B733 06:B723: 17        .byte $17   ; 
- D 1 - I - 0x01B734 06:B724: 02        .byte $02, $02, $00, $00, $00, $00, $90, $91, $92, $00, $93, $94, $95, $96, $00, $97   ; 
- D 1 - I - 0x01B744 06:B734: 98        .byte $98, $99, $00, $00, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B74C 06:B73C: 21 A4     .dbyt $21A4
- D 1 - I - 0x01B74E 06:B73E: 17        .byte $17   ; 
- D 1 - I - 0x01B74F 06:B73F: 02        .byte $02, $02, $00, $00, $9A, $81, $00, $9B, $9C, $9D, $9E, $9F, $A0, $A1, $A2, $A3   ; 
- D 1 - I - 0x01B75F 06:B74F: A4        .byte $A4, $00, $80, $A5, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B767 06:B757: 21 C4     .dbyt $21C4
- D 1 - I - 0x01B769 06:B759: 17        .byte $17   ; 
- D 1 - I - 0x01B76A 06:B75A: 02        .byte $02, $02, $00, $00, $00, $A6, $A7, $A8, $A9, $00, $00, $00, $00, $00, $00, $AE   ; 
- D 1 - I - 0x01B77A 06:B76A: AF        .byte $AF, $B0, $B1, $00, $00, $00, $02, $02   ; 

- D 1 - I - 0x01B782 06:B772: 21 E4     .dbyt $21E4
- D 1 - I - 0x01B784 06:B774: 17        .byte $17   ; 
- D 1 - I - 0x01B785 06:B775: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02   ; 
- D 1 - I - 0x01B795 06:B785: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02   ; 

- D 1 - I - 0x01B79D 06:B78D: 23 C9     .dbyt $23C9
- D 1 - I - 0x01B79F 06:B78F: 05        .byte $05   ; 
- D 1 - I - 0x01B7A0 06:B790: 50        .byte $50, $50, $50, $50, $50, $50   ; 

- D 1 - I - 0x01B7A6 06:B796: 23 D1     .dbyt $23D1
- D 1 - I - 0x01B7A8 06:B798: 05        .byte $05   ; 
- D 1 - I - 0x01B7A9 06:B799: 55        .byte $55, $55, $55, $55, $55, $55   ; 

- D 1 - I - 0x01B7AF 06:B79F: 23 D9     .dbyt $23D9
- D 1 - I - 0x01B7B1 06:B7A1: 05        .byte $05   ; 
- D 1 - I - 0x01B7B2 06:B7A2: 55        .byte $55, $55, $55, $55, $55, $55   ; 

- D 1 - I - 0x01B7B8 06:B7A8: 00        .byte $00   ; end token



_off005_B7A9_06:
_off005_B7A9_09:
- D 1 - I - 0x01B7B9 06:B7A9: 20 C4     .dbyt $20C4
- D 1 - I - 0x01B7BB 06:B7AB: 17        .byte $17   ; 
- D 1 - I - 0x01B7BC 06:B7AC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01B7CC 06:B7BC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B7D4 06:B7C4: 20 E4     .dbyt $20E4
- D 1 - I - 0x01B7D6 06:B7C6: 17        .byte $17   ; 
- D 1 - I - 0x01B7D7 06:B7C7: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $A8, $A9, $AA   ; 
- D 1 - I - 0x01B7E7 06:B7D7: AB        .byte $AB, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B7EF 06:B7DF: 21 04     .dbyt $2104
- D 1 - I - 0x01B7F1 06:B7E1: 17        .byte $17   ; 
- D 1 - I - 0x01B7F2 06:B7E2: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $AC, $AD, $AE   ; 
- D 1 - I - 0x01B802 06:B7F2: AF        .byte $AF, $B0, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B80A 06:B7FA: 21 24     .dbyt $2124
- D 1 - I - 0x01B80C 06:B7FC: 17        .byte $17   ; 
- D 1 - I - 0x01B80D 06:B7FD: 03        .byte $03, $03, $03, $03, $03, $03, $80, $81, $82, $83, $84, $03, $03, $B1, $B2, $B3   ; 
- D 1 - I - 0x01B81D 06:B80D: B4        .byte $B4, $B5, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B825 06:B815: 21 44     .dbyt $2144
- D 1 - I - 0x01B827 06:B817: 17        .byte $17   ; 
- D 1 - I - 0x01B828 06:B818: 03        .byte $03, $03, $03, $03, $03, $03, $85, $86, $87, $88, $89, $03, $03, $B6, $B7, $B8   ; 
- D 1 - I - 0x01B838 06:B828: B9        .byte $B9, $BA, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B840 06:B830: 21 64     .dbyt $2164
- D 1 - I - 0x01B842 06:B832: 17        .byte $17   ; 
- D 1 - I - 0x01B843 06:B833: 03        .byte $03, $03, $03, $03, $03, $03, $8A, $8B, $8C, $8D, $8E, $03, $03, $BB, $BC, $BD   ; 
- D 1 - I - 0x01B853 06:B843: BE        .byte $BE, $BF, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B85B 06:B84B: 21 84     .dbyt $2184
- D 1 - I - 0x01B85D 06:B84D: 17        .byte $17   ; 
- D 1 - I - 0x01B85E 06:B84E: 03        .byte $03, $03, $03, $03, $03, $03, $8F, $90, $91, $92, $93, $03, $03, $03, $C0, $C1   ; 
- D 1 - I - 0x01B86E 06:B85E: C2        .byte $C2, $C3, $C4, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B876 06:B866: 21 A4     .dbyt $21A4
- D 1 - I - 0x01B878 06:B868: 17        .byte $17   ; 
- D 1 - I - 0x01B879 06:B869: 03        .byte $03, $03, $03, $03, $03, $94, $95, $96, $97, $98, $99, $03, $03, $C5, $C6, $C7   ; 
- D 1 - I - 0x01B889 06:B879: C8        .byte $C8, $C9, $CA, $CB, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B891 06:B881: 21 C4     .dbyt $21C4
- D 1 - I - 0x01B893 06:B883: 17        .byte $17   ; 
- D 1 - I - 0x01B894 06:B884: 03        .byte $03, $03, $03, $03, $9A, $9B, $9C, $9D, $9E, $9F, $A0, $03, $03, $CC, $CD, $CE   ; 
- D 1 - I - 0x01B8A4 06:B894: CF        .byte $CF, $D0, $D1, $D2, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B8AC 06:B89C: 21 E4     .dbyt $21E4
- D 1 - I - 0x01B8AE 06:B89E: 17        .byte $17   ; 
- D 1 - I - 0x01B8AF 06:B89F: 03        .byte $03, $03, $03, $03, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $03, $03, $D3, $D4, $D5   ; 
- D 1 - I - 0x01B8BF 06:B8AF: D6        .byte $D6, $D7, $D8, $D9, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B8C7 06:B8B7: 23 C9     .dbyt $23C9
- D 1 - I - 0x01B8C9 06:B8B9: 05        .byte $05   ; 
- D 1 - I - 0x01B8CA 06:B8BA: 00        .byte $00, $00, $00, $50, $10, $00   ; 

- D 1 - I - 0x01B8D0 06:B8C0: 23 D1     .dbyt $23D1
- D 1 - I - 0x01B8D2 06:B8C2: 05        .byte $05   ; 
- D 1 - I - 0x01B8D3 06:B8C3: 00        .byte $00, $44, $55, $55, $11, $00   ; 

- D 1 - I - 0x01B8D9 06:B8C9: 23 D9     .dbyt $23D9
- D 1 - I - 0x01B8DB 06:B8CB: 05        .byte $05   ; 
- D 1 - I - 0x01B8DC 06:B8CC: 00        .byte $00, $55, $55, $80, $22, $00   ; 

- D 1 - I - 0x01B8E2 06:B8D2: 00        .byte $00   ; end token



_off005_B8D3_07:
- D 1 - I - 0x01B8E3 06:B8D3: 20 C4     .dbyt $20C4
- D 1 - I - 0x01B8E5 06:B8D5: 17        .byte $17   ; 
- D 1 - I - 0x01B8E6 06:B8D6: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01B8F6 06:B8E6: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B8FE 06:B8EE: 20 E4     .dbyt $20E4
- D 1 - I - 0x01B900 06:B8F0: 17        .byte $17   ; 
- D 1 - I - 0x01B901 06:B8F1: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $A8, $A9, $AA   ; 
- D 1 - I - 0x01B911 06:B901: AB        .byte $AB, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B919 06:B909: 21 04     .dbyt $2104
- D 1 - I - 0x01B91B 06:B90B: 17        .byte $17   ; 
- D 1 - I - 0x01B91C 06:B90C: 03        .byte $03, $03, $03, $03, $03, $DA, $03, $03, $DB, $DC, $03, $03, $03, $AC, $AD, $AE   ; 
- D 1 - I - 0x01B92C 06:B91C: AF        .byte $AF, $B0, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B934 06:B924: 21 24     .dbyt $2124
- D 1 - I - 0x01B936 06:B926: 17        .byte $17   ; 
- D 1 - I - 0x01B937 06:B927: 03        .byte $03, $03, $03, $03, $03, $DD, $DE, $DF, $E0, $E1, $03, $03, $03, $B1, $B2, $B3   ; 
- D 1 - I - 0x01B947 06:B937: B4        .byte $B4, $B5, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B94F 06:B93F: 21 44     .dbyt $2144
- D 1 - I - 0x01B951 06:B941: 17        .byte $17   ; 
- D 1 - I - 0x01B952 06:B942: 03        .byte $03, $03, $03, $03, $03, $E2, $E3, $E4, $E5, $03, $03, $03, $03, $B6, $B7, $B8   ; 
- D 1 - I - 0x01B962 06:B952: B9        .byte $B9, $BA, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B96A 06:B95A: 21 64     .dbyt $2164
- D 1 - I - 0x01B96C 06:B95C: 17        .byte $17   ; 
- D 1 - I - 0x01B96D 06:B95D: 03        .byte $03, $03, $03, $03, $03, $03, $03, $E6, $E7, $03, $03, $03, $03, $BB, $BC, $BD   ; 
- D 1 - I - 0x01B97D 06:B96D: BE        .byte $BE, $BF, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B985 06:B975: 21 84     .dbyt $2184
- D 1 - I - 0x01B987 06:B977: 17        .byte $17   ; 
- D 1 - I - 0x01B988 06:B978: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $C0, $C1   ; 
- D 1 - I - 0x01B998 06:B988: C2        .byte $C2, $C3, $C4, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B9A0 06:B990: 21 A4     .dbyt $21A4
- D 1 - I - 0x01B9A2 06:B992: 17        .byte $17   ; 
- D 1 - I - 0x01B9A3 06:B993: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $C5, $C6, $C7   ; 
- D 1 - I - 0x01B9B3 06:B9A3: C8        .byte $C8, $C9, $CA, $CB, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B9BB 06:B9AB: 21 C4     .dbyt $21C4
- D 1 - I - 0x01B9BD 06:B9AD: 17        .byte $17   ; 
- D 1 - I - 0x01B9BE 06:B9AE: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $CC, $CD, $CE   ; 
- D 1 - I - 0x01B9CE 06:B9BE: CF        .byte $CF, $D0, $D1, $D2, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B9D6 06:B9C6: 21 E4     .dbyt $21E4
- D 1 - I - 0x01B9D8 06:B9C8: 17        .byte $17   ; 
- D 1 - I - 0x01B9D9 06:B9C9: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $D3, $D4, $D5   ; 
- D 1 - I - 0x01B9E9 06:B9D9: D6        .byte $D6, $D7, $D8, $D9, $03, $03, $03, $03   ; 

- D 1 - I - 0x01B9F1 06:B9E1: 23 C9     .dbyt $23C9
- D 1 - I - 0x01B9F3 06:B9E3: 05        .byte $05   ; 
- D 1 - I - 0x01B9F4 06:B9E4: 00        .byte $00, $00, $00, $50, $10, $00   ; 

- D 1 - I - 0x01B9FA 06:B9EA: 23 D1     .dbyt $23D1
- D 1 - I - 0x01B9FC 06:B9EC: 05        .byte $05   ; 
- D 1 - I - 0x01B9FD 06:B9ED: 00        .byte $00, $D5, $33, $55, $11, $00   ; 

- D 1 - I - 0x01BA03 06:B9F3: 23 D9     .dbyt $23D9
- D 1 - I - 0x01BA05 06:B9F5: 05        .byte $05   ; 
- D 1 - I - 0x01BA06 06:B9F6: 00        .byte $00, $00, $00, $80, $22, $00   ; 

- D 1 - I - 0x01BA0C 06:B9FC: 00        .byte $00   ; end token



_off005_B9FD_08:
- D 1 - I - 0x01BA0D 06:B9FD: 20 C4     .dbyt $20C4
- D 1 - I - 0x01BA0F 06:B9FF: 17        .byte $17   ; 
- D 1 - I - 0x01BA10 06:BA00: 80        .byte $80, $80, $80, $80, $80, $80, $C8, $C9, $CA, $80, $80, $80, $80, $80, $80, $80   ; 
- D 1 - I - 0x01BA20 06:BA10: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80   ; 

- D 1 - I - 0x01BA28 06:BA18: 20 E4     .dbyt $20E4
- D 1 - I - 0x01BA2A 06:BA1A: 17        .byte $17   ; 
- D 1 - I - 0x01BA2B 06:BA1B: 80        .byte $80, $C8, $C9, $CA, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80   ; 
- D 1 - I - 0x01BA3B 06:BA2B: 80        .byte $80, $80, $80, $80, $80, $80, $80, $BB   ; 

- D 1 - I - 0x01BA43 06:BA33: 21 04     .dbyt $2104
- D 1 - I - 0x01BA45 06:BA35: 17        .byte $17   ; 
- D 1 - I - 0x01BA46 06:BA36: AE        .byte $AE, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $AC, $AD, $AE   ; 
- D 1 - I - 0x01BA56 06:BA46: AC        .byte $AC, $B0, $80, $80, $C8, $C9, $BC, $BD   ; 

- D 1 - I - 0x01BA5E 06:BA4E: 21 24     .dbyt $2124
- D 1 - I - 0x01BA60 06:BA50: 17        .byte $17   ; 
- D 1 - I - 0x01BA61 06:BA51: CF        .byte $CF, $B2, $81, $81, $81, $81, $81, $81, $81, $82, $81, $81, $B1, $CF, $CF, $CF   ; 
- D 1 - I - 0x01BA71 06:BA61: CF        .byte $CF, $CF, $B2, $81, $BE, $BF, $C0, $C1   ; 

- D 1 - I - 0x01BA79 06:BA69: 21 44     .dbyt $2144
- D 1 - I - 0x01BA7B 06:BA6B: 17        .byte $17   ; 
- D 1 - I - 0x01BA7C 06:BA6C: CB        .byte $CB, $CC, $CB, $CC, $CB, $CB, $CB, $83, $84, $85, $CB, $CC, $CB, $CC, $CB, $CC   ; 
- D 1 - I - 0x01BA8C 06:BA7C: B3        .byte $B3, $B4, $CB, $CC, $CB, $C2, $C3, $C4   ; 

- D 1 - I - 0x01BA94 06:BA84: 21 64     .dbyt $2164
- D 1 - I - 0x01BA96 06:BA86: 17        .byte $17   ; 
- D 1 - I - 0x01BA97 06:BA87: CD        .byte $CD, $CE, $CD, $CE, $86, $87, $88, $89, $8A, $8B, $CD, $CE, $CD, $CE, $CD, $B5   ; 
- D 1 - I - 0x01BAA7 06:BA97: B6        .byte $B6, $B7, $CD, $CE, $CD, $CE, $C5, $C6   ; 

- D 1 - I - 0x01BAAF 06:BA9F: 21 84     .dbyt $2184
- D 1 - I - 0x01BAB1 06:BAA1: 17        .byte $17   ; 
- D 1 - I - 0x01BAB2 06:BAA2: AF        .byte $AF, $AF, $AF, $AF, $8C, $8D, $8E, $8F, $90, $91, $AF, $AF, $AF, $AF, $AF, $B8   ; 
- D 1 - I - 0x01BAC2 06:BAB2: B9        .byte $B9, $BA, $CD, $AF, $AF, $AF, $AF, $C7   ; 

- D 1 - I - 0x01BACA 06:BABA: 21 A4     .dbyt $21A4
- D 1 - I - 0x01BACC 06:BABC: 17        .byte $17   ; 
- D 1 - I - 0x01BACD 06:BABD: AF        .byte $AF, $AF, $AF, $AF, $92, $93, $94, $95, $96, $97, $98, $AF, $AF, $AF, $AF, $AF   ; 
- D 1 - I - 0x01BADD 06:BACD: AF        .byte $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF   ; 

- D 1 - I - 0x01BAE5 06:BAD5: 21 C4     .dbyt $21C4
- D 1 - I - 0x01BAE7 06:BAD7: 17        .byte $17   ; 
- D 1 - I - 0x01BAE8 06:BAD8: AF        .byte $AF, $AF, $AF, $AF, $99, $9A, $9B, $9C, $9D, $9E, $9F, $A0, $A1, $A2, $AF, $AF   ; 
- D 1 - I - 0x01BAF8 06:BAE8: AF        .byte $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF   ; 

- D 1 - I - 0x01BB00 06:BAF0: 21 E4     .dbyt $21E4
- D 1 - I - 0x01BB02 06:BAF2: 17        .byte $17   ; 
- D 1 - I - 0x01BB03 06:BAF3: AF        .byte $AF, $AF, $AF, $AF, $A3, $AF, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AF, $AF   ; 
- D 1 - I - 0x01BB13 06:BB03: AF        .byte $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF   ; 

- D 1 - I - 0x01BB1B 06:BB0B: 23 C9     .dbyt $23C9
- D 1 - I - 0x01BB1D 06:BB0D: 05        .byte $05   ; 
- D 1 - I - 0x01BB1E 06:BB0E: 50        .byte $50, $50, $50, $50, $50, $10   ; 

- D 1 - I - 0x01BB24 06:BB14: 23 D1     .dbyt $23D1
- D 1 - I - 0x01BB26 06:BB16: 05        .byte $05   ; 
- D 1 - I - 0x01BB27 06:BB17: F5        .byte $F5, $B5, $E5, $F5, $F5, $F1   ; 

- D 1 - I - 0x01BB2D 06:BB1D: 23 D9     .dbyt $23D9
- D 1 - I - 0x01BB2F 06:BB1F: 05        .byte $05   ; 
- D 1 - I - 0x01BB30 06:BB20: FF        .byte $FF, $BA, $AA, $EB, $FE, $FF   ; 

- D 1 - I - 0x01BB36 06:BB26: 00        .byte $00   ; end token



_off005_BB27_0A:
- D 1 - I - 0x01BB37 06:BB27: 20 C4     .dbyt $20C4
- D 1 - I - 0x01BB39 06:BB29: 17        .byte $17   ; 
- D 1 - I - 0x01BB3A 06:BB2A: 00        .byte $00, $00, $00, $D7, $D8, $D1, $D1, $D1, $D1, $D1, $D1, $D1, $D1, $D1, $D1, $D1   ; 
- D 1 - I - 0x01BB4A 06:BB3A: D1        .byte $D1, $D1, $D1, $D5, $D6, $00, $00, $00   ; 

- D 1 - I - 0x01BB52 06:BB42: 20 E4     .dbyt $20E4
- D 1 - I - 0x01BB54 06:BB44: 17        .byte $17   ; 
- D 1 - I - 0x01BB55 06:BB45: 00        .byte $00, $00, $00, $D1, $D1, $D5, $D6, $D7, $D8, $D1, $D1, $D1, $D1, $D1, $D1, $D1   ; 
- D 1 - I - 0x01BB65 06:BB55: D1        .byte $D1, $D1, $D1, $D1, $D1, $00, $00, $00   ; 

- D 1 - I - 0x01BB6D 06:BB5D: 21 04     .dbyt $2104
- D 1 - I - 0x01BB6F 06:BB5F: 17        .byte $17   ; 
- D 1 - I - 0x01BB70 06:BB60: 00        .byte $00, $00, $00, $DC, $D1, $D1, $D1, $D1, $DC, $DC, $D1, $D1, $80, $81, $82, $83   ; 
- D 1 - I - 0x01BB80 06:BB70: D5        .byte $D5, $D6, $D7, $D8, $D1, $00, $00, $00   ; 

- D 1 - I - 0x01BB88 06:BB78: 21 24     .dbyt $2124
- D 1 - I - 0x01BB8A 06:BB7A: 17        .byte $17   ; 
- D 1 - I - 0x01BB8B 06:BB7B: 00        .byte $00, $00, $D1, $D0, $D1, $D1, $D1, $D1, $84, $85, $D1, $D1, $86, $87, $88, $89   ; 
- D 1 - I - 0x01BB9B 06:BB8B: D1        .byte $D1, $D1, $D1, $D1, $D1, $D1, $00, $00   ; 

- D 1 - I - 0x01BBA3 06:BB93: 21 44     .dbyt $2144
- D 1 - I - 0x01BBA5 06:BB95: 17        .byte $17   ; 
- D 1 - I - 0x01BBA6 06:BB96: 00        .byte $00, $00, $D1, $D2, $DD, $CE, $CE, $8A, $8B, $8C, $CE, $CE, $CE, $8D, $8E, $8F   ; 
- D 1 - I - 0x01BBB6 06:BBA6: CE        .byte $CE, $CE, $CE, $CE, $CA, $C9, $00, $00   ; 

- D 1 - I - 0x01BBBE 06:BBAE: 21 64     .dbyt $2164
- D 1 - I - 0x01BBC0 06:BBB0: 17        .byte $17   ; 
- D 1 - I - 0x01BBC1 06:BBB1: 00        .byte $00, $D3, $D3, $D4, $DE, $CF, $CF, $90, $91, $92, $CF, $CF, $CF, $93, $94, $95   ; 
- D 1 - I - 0x01BBD1 06:BBC1: 96        .byte $96, $97, $C6, $C7, $C8, $C9, $00, $00   ; 

- D 1 - I - 0x01BBD9 06:BBC9: 21 84     .dbyt $2184
- D 1 - I - 0x01BBDB 06:BBCB: 17        .byte $17   ; 
- D 1 - I - 0x01BBDC 06:BBCC: 00        .byte $00, $00, $CB, $CB, $D9, $DA, $98, $99, $9A, $9B, $DA, $9C, $9D, $9E, $9F, $A0   ; 
- D 1 - I - 0x01BBEC 06:BBDC: A1        .byte $A1, $A2, $DA, $DA, $DA, $DA, $00, $00   ; 

- D 1 - I - 0x01BBF4 06:BBE4: 21 A4     .dbyt $21A4
- D 1 - I - 0x01BBF6 06:BBE6: 17        .byte $17   ; 
- D 1 - I - 0x01BBF7 06:BBE7: 00        .byte $00, $00, $D9, $DA, $DA, $DB, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AC   ; 
- D 1 - I - 0x01BC07 06:BBF7: AD        .byte $AD, $AE, $DB, $DC, $DB, $DB, $00, $00   ; 

- D 1 - I - 0x01BC0F 06:BBFF: 21 C4     .dbyt $21C4
- D 1 - I - 0x01BC11 06:BC01: 17        .byte $17   ; 
- D 1 - I - 0x01BC12 06:BC02: 00        .byte $00, $CC, $CC, $CC, $CC, $AF, $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9   ; 
- D 1 - I - 0x01BC22 06:BC12: BA        .byte $BA, $BB, $CC, $CC, $CC, $CC, $CC, $00   ; 

- D 1 - I - 0x01BC2A 06:BC1A: 21 E4     .dbyt $21E4
- D 1 - I - 0x01BC2C 06:BC1C: 17        .byte $17   ; 
- D 1 - I - 0x01BC2D 06:BC1D: 00        .byte $00, $DC, $CD, $DC, $CD, $DC, $BC, $BD, $BE, $BF, $C0, $DC, $CD, $C1, $C2, $C3   ; 
- D 1 - I - 0x01BC3D 06:BC2D: C4        .byte $C4, $C5, $CD, $DC, $CD, $DC, $CD, $00   ; 

- D 1 - I - 0x01BC45 06:BC35: 23 C9     .dbyt $23C9
- D 1 - I - 0x01BC47 06:BC37: 05        .byte $05   ; 
- D 1 - I - 0x01BC48 06:BC38: 00        .byte $00, $00, $00, $00, $00, $00   ; 

- D 1 - I - 0x01BC4E 06:BC3E: 23 D1     .dbyt $23D1
- D 1 - I - 0x01BC50 06:BC40: 05        .byte $05   ; 
- D 1 - I - 0x01BC51 06:BC41: A8        .byte $A8, $50, $51, $55, $50, $10   ; 

- D 1 - I - 0x01BC57 06:BC47: 23 D9     .dbyt $23D9
- D 1 - I - 0x01BC59 06:BC49: 05        .byte $05   ; 
- D 1 - I - 0x01BC5A 06:BC4A: 00        .byte $00, $00, $00, $00, $00, $00   ; 

- D 1 - I - 0x01BC60 06:BC50: 00        .byte $00   ; end token



_off005_BC51_0B:
_off005_BC51_0C:
_off005_BC51_0D:
_off005_BC51_0E:
_off005_BC51_0F:
- D 1 - I - 0x01BC61 06:BC51: 20 C4     .dbyt $20C4
- D 1 - I - 0x01BC63 06:BC53: 17        .byte $17   ; 
- D 1 - I - 0x01BC64 06:BC54: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01BC74 06:BC64: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01BC7C 06:BC6C: 20 E4     .dbyt $20E4
- D 1 - I - 0x01BC7E 06:BC6E: 17        .byte $17   ; 
- D 1 - I - 0x01BC7F 06:BC6F: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01BC8F 06:BC7F: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01BC97 06:BC87: 21 04     .dbyt $2104
- D 1 - I - 0x01BC99 06:BC89: 17        .byte $17   ; 
- D 1 - I - 0x01BC9A 06:BC8A: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01BCAA 06:BC9A: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01BCB2 06:BCA2: 21 24     .dbyt $2124
- D 1 - I - 0x01BCB4 06:BCA4: 17        .byte $17   ; 
- D 1 - I - 0x01BCB5 06:BCA5: 03        .byte $03, $03, $FE, $03, $03, $03, $80, $81, $82, $83, $84, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01BCC5 06:BCB5: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01BCCD 06:BCBD: 21 44     .dbyt $2144
- D 1 - I - 0x01BCCF 06:BCBF: 17        .byte $17   ; 
- D 1 - I - 0x01BCD0 06:BCC0: 03        .byte $03, $03, $03, $03, $03, $03, $85, $86, $87, $88, $89, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01BCE0 06:BCD0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01BCE8 06:BCD8: 21 64     .dbyt $2164
- D 1 - I - 0x01BCEA 06:BCDA: 17        .byte $17   ; 
- D 1 - I - 0x01BCEB 06:BCDB: 03        .byte $03, $03, $03, $FE, $03, $03, $8A, $8B, $8C, $8D, $8E, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01BCFB 06:BCEB: 03        .byte $03, $03, $03, $03, $03, $03, $FE, $03   ; 

- D 1 - I - 0x01BD03 06:BCF3: 21 84     .dbyt $2184
- D 1 - I - 0x01BD05 06:BCF5: 17        .byte $17   ; 
- D 1 - I - 0x01BD06 06:BCF6: 03        .byte $03, $03, $03, $03, $03, $03, $8F, $90, $91, $92, $93, $03, $03, $FE, $03, $03   ; 
- D 1 - I - 0x01BD16 06:BD06: 03        .byte $03, $03, $03, $03, $03, $03, $EF, $03   ; 

- D 1 - I - 0x01BD1E 06:BD0E: 21 A4     .dbyt $21A4
- D 1 - I - 0x01BD20 06:BD10: 17        .byte $17   ; 
- D 1 - I - 0x01BD21 06:BD11: 03        .byte $03, $03, $FE, $03, $03, $94, $95, $96, $97, $98, $99, $03, $03, $EF, $03, $03   ; 
- D 1 - I - 0x01BD31 06:BD21: 03        .byte $03, $03, $03, $03, $EF, $03, $FF, $03   ; 

- D 1 - I - 0x01BD39 06:BD29: 21 C4     .dbyt $21C4
- D 1 - I - 0x01BD3B 06:BD2B: 17        .byte $17   ; 
- D 1 - I - 0x01BD3C 06:BD2C: 03        .byte $03, $03, $EF, $03, $9A, $9B, $9C, $9D, $9E, $9F, $A0, $03, $03, $FF, $03, $EF   ; 
- D 1 - I - 0x01BD4C 06:BD3C: 03        .byte $03, $03, $03, $03, $FF, $03, $03, $03   ; 

- D 1 - I - 0x01BD54 06:BD44: 21 E4     .dbyt $21E4
- D 1 - I - 0x01BD56 06:BD46: 17        .byte $17   ; 
- D 1 - I - 0x01BD57 06:BD47: 03        .byte $03, $03, $FF, $03, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $03, $03, $03, $03, $FF   ; 
- D 1 - I - 0x01BD67 06:BD57: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 1 - I - 0x01BD6F 06:BD5F: 23 C9     .dbyt $23C9
- D 1 - I - 0x01BD71 06:BD61: 05        .byte $05   ; 
- D 1 - I - 0x01BD72 06:BD62: 00        .byte $00, $00, $00, $00, $00, $00   ; 

- D 1 - I - 0x01BD78 06:BD68: 23 D1     .dbyt $23D1
- D 1 - I - 0x01BD7A 06:BD6A: 05        .byte $05   ; 
- D 1 - I - 0x01BD7B 06:BD6B: 00        .byte $00, $44, $55, $00, $00, $00   ; 

- D 1 - I - 0x01BD81 06:BD71: 23 D9     .dbyt $23D9
- D 1 - I - 0x01BD83 06:BD73: 05        .byte $05   ; 
- D 1 - I - 0x01BD84 06:BD74: 00        .byte $00, $55, $55, $00, $00, $00   ; 

- D 1 - I - 0x01BD8A 06:BD7A: 00        .byte $00   ; end token


; bzk garbage
- - - - - - 0x01BD8B 06:BD7B: 00        .byte $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BD90 06:BD80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BDA0 06:BD90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BDB0 06:BDA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BDC0 06:BDB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BDD0 06:BDC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BDE0 06:BDD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BDF0 06:BDE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BE00 06:BDF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BE10 06:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE20 06:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE30 06:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE40 06:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE50 06:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE60 06:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE70 06:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE80 06:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE90 06:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEA0 06:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEB0 06:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEC0 06:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BED0 06:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEE0 06:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEF0 06:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF00 06:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF10 06:BF00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF20 06:BF10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF30 06:BF20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF40 06:BF30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF50 06:BF40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF60 06:BF50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF70 06:BF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF80 06:BF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF90 06:BF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFA0 06:BF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFB0 06:BFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFC0 06:BFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFD0 06:BFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFE0 06:BFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFF0 06:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01C000 06:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 06: %Xh [%d]", ($C000 - *), ($C000 - *))



