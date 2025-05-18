.segment "BANK_0C"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x018010-0x01C00F



.export sub_0x018927_add_spd_Y
.export sub_0x018947_move_obj_Y_axis
.export loc_0x018947_move_obj_Y_axis
.export sub_0x018ACB_object_handler
.export ofs_005_2C_0x0194FE_03
.export ofs_005_2C_0x019992_02
.export ofs_005_2C_0x019992_04
.export ofs_005_2C_0x019A73_01
.export ofs_005_24_0x019E2E_01
.export ofs_005_24_0x019E38_02
.export ofs_005_24_0x019E38_03
.export ofs_005_25_0x019E7D_01
.export tbl_0x01A0F4_pos_X_lo
.export tbl_0x01A0FD_pos_Y_lo
.export tbl_0x01A107_score
.export tbl_0x01A83C_object_handler
.export _off011_0x01B8E4_00
.export _off011_0x01B8E4_01
.export _off011_0x01B8E4_02
.export _off013_0x01B83D_00
.export _off013_0x01B83D_01
.export _off013_0x01B83D_02
.export _off014_0x01B8E4_00
.export _off014_0x01B8E4_01
.export _off014_0x01B8E4_02
.export _off010_0x01B93F_00
.export _off010_0x01B93F_01
.export _off010_0x01B93F_02
.export _off015_0x01BD2A_00
.export _off015_0x01BD2A_01
.export _off015_0x01BD2A_02



_off009_8000_01_various_objects:
_off009_8000_04_continue_screen_bag:
- D 0 - - - 0x018010 06:8000: 4D 80     .word ofs_005_01_804D_01_ringing_phone
- D 0 - I - 0x018012 06:8002: 19 81     .word ofs_005_01_8119_02
- D 0 - I - 0x018014 06:8004: 32 81     .word ofs_005_01_8132_03
- D 0 - I - 0x018016 06:8006: 50 81     .word ofs_005_01_8150_04
- D 0 - I - 0x018018 06:8008: 88 81     .word ofs_005_01_8188_05
- D 0 - I - 0x01801A 06:800A: 9D 81     .word ofs_005_01_819D_06
- - - - - - 0x01801C 06:800C: BC 81     .word ofs_005_01_81BC_07_RTS
- D 0 - I - 0x01801E 06:800E: BC 81     .word ofs_005_01_81BC_08_RTS
- D 0 - I - 0x018020 06:8010: BD 81     .word ofs_005_01_81BD_09
- D 0 - I - 0x018022 06:8012: E1 81     .word ofs_005_01_81E1_0A
- D 0 - I - 0x018024 06:8014: 6E 82     .word ofs_005_01_826E_0B_RTS
- D 0 - I - 0x018026 06:8016: 1B 8A     .word ofs_005_01_8A1B_0C
- D 0 - I - 0x018028 06:8018: 92 8A     .word ofs_005_01_8A92_0D



_off009_801A_02_title_screen_bag:
- D 0 - I - 0x01802A 06:801A: 6F 82     .word ofs_005_02_826F_01
- D 0 - I - 0x01802C 06:801C: BC 82     .word ofs_005_02_82BC_02
- D 0 - I - 0x01802E 06:801E: E3 82     .word ofs_005_02_82E3_03
- D 0 - I - 0x018030 06:8020: 0A 83     .word ofs_005_02_830A_04
- D 0 - I - 0x018032 06:8022: 1C 83     .word ofs_005_02_831C_05
- D 0 - I - 0x018034 06:8024: 27 83     .word ofs_005_02_8327_06
- D 0 - I - 0x018036 06:8026: 65 83     .word ofs_005_02_8365_07



_off009_8028_03_felix_at_felix_world:
- D 0 - I - 0x018038 06:8028: 9C 88     .word ofs_005_03_889C_01
- D 0 - I - 0x01803A 06:802A: E0 88     .word ofs_005_03_88E0_02
- - - - - - 0x01803C 06:802C: F7 88     .word ofs_005_03_88F7_03



_off009_802E_0D_milk:
- D 0 - I - 0x01803E 06:802E: A6 87     .word ofs_005_0D_87A6_01
- D 0 - I - 0x018040 06:8030: 31 87     .word ofs_005_0D_8731_02
- D 0 - I - 0x018042 06:8032: 9A 87     .word ofs_005_0D_879A_03
- D 0 - I - 0x018044 06:8034: 36 88     .word ofs_005_0D_8836_04



_off009_8036_0E_heart_1up:
- D 0 - I - 0x018046 06:8036: 78 86     .word ofs_005_0E_8678_01
- D 0 - I - 0x018048 06:8038: 42 85     .word ofs_005_0E_8542_02
- D 0 - I - 0x01804A 06:803A: 6C 86     .word ofs_005_0E_866C_03
- D 0 - I - 0x01804C 06:803C: 36 88     .word ofs_005_0E_8836_04



_off009_803E_0F_small_cloud:
- - - - - - 0x01804E 06:803E: 1F 85     .word ofs_005_0F_851F_01
- D 0 - I - 0x018050 06:8040: 4A 80     .word ofs_005_0F_804A_02
- D 0 - I - 0x018052 06:8042: 4A 88     .word ofs_005_0F_884A_03



_off009_8044_1B_rescued_kitty:
- D 0 - I - 0x018054 06:8044: 77 83     .word ofs_005_1B_8377_01
- D 0 - I - 0x018056 06:8046: 9A 83     .word ofs_005_1B_839A_02
- D 0 - I - 0x018058 06:8048: 07 84     .word ofs_005_1B_8407_03




ofs_005_0F_804A_02:
; bzk optimize
C - - J - - 0x01805A 06:804A: 4C 30 85  JMP loc_8530



ofs_005_01_804D_01_ringing_phone:
C - - J - - 0x01805D 06:804D: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018060 06:8050: 09 04     ORA #con_0776_04
C - - - - - 0x018062 06:8052: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018065 06:8055: AD B8 03  LDA ram_03B8
C - - - - - 0x018068 06:8058: C9 98     CMP #$98
C - - - - - 0x01806A 06:805A: 90 20     BCC bra_807C
C - - - - - 0x01806C 06:805C: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01806F 06:805F: 29 F3     AND #(con_0776_04 + con_0776_08) ^ $FF
C - - - - - 0x018071 06:8061: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018074 06:8064: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018077 06:8067: 18        CLC
C - - - - - 0x018078 06:8068: 69 01     ADC #< $0001
C - - - - - 0x01807A 06:806A: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01807D 06:806D: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x018080 06:8070: 69 00     ADC #> $0001
C - - - - - 0x018082 06:8072: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018085 06:8075: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018088 06:8078: C9 4A     CMP #$4A
C - - - - - 0x01808A 06:807A: F0 1C     BEQ bra_8098
bra_807C:
C - - - - - 0x01808C 06:807C: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x01808F 06:807F: FE 1E 07  INC ram_071E_obj_queue_id,X
C - - - - - 0x018092 06:8082: 29 3F     AND #$3F
C - - - - - 0x018094 06:8084: D0 0E     BNE bra_8094
C - - - - - 0x018096 06:8086: A9 03     LDA #con_sfx_03
C - - - - - 0x018098 06:8088: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x01809B 06:808B: 8A        TXA
C - - - - - 0x01809C 06:808C: 48        PHA
C - - - - - 0x01809D 06:808D: A9 05     LDA #$05    ; "Riiing...!" text
C - - - - - 0x01809F 06:808F: 20 18 E9  JSR sub_0x01E928_print_professor_text
C - - - - - 0x0180A2 06:8092: 68        PLA
C - - - - - 0x0180A3 06:8093: AA        TAX
bra_8094:
C - - - - - 0x0180A4 06:8094: 4A        LSR
C - - - - - 0x0180A5 06:8095: B0 1E     BCS bra_80B5
C - - - - - 0x0180A7 06:8097: 60        RTS
bra_8098:
C - - - - - 0x0180A8 06:8098: A9 02     LDA #$02
C - - - - - 0x0180AA 06:809A: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0180AD 06:809D: A9 02     LDA #$02
C - - - - - 0x0180AF 06:809F: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x0180B2 06:80A2: A9 14     LDA #$14
C - - - - - 0x0180B4 06:80A4: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x0180B7 06:80A7: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x0180BA 06:80AA: A9 03     LDA #$03
C - - - - - 0x0180BC 06:80AC: 20 BE 80  JSR sub_80BE
C - - - - - 0x0180BF 06:80AF: A9 11     LDA #con_sfx_11
; bzk optimize, JMP
C - - - - - 0x0180C1 06:80B1: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x0180C4 06:80B4: 60        RTS
bra_80B5:
C - - - - - 0x0180C5 06:80B5: 4A        LSR
C - - - - - 0x0180C6 06:80B6: C9 0C     CMP #$0C
C - - - - - 0x0180C8 06:80B8: 29 01     AND #$01
C - - - - - 0x0180CA 06:80BA: 90 02     BCC bra_80BE
C - - - - - 0x0180CC 06:80BC: A9 02     LDA #$02
bra_80BE:
sub_80BE:
C - - - - - 0x0180CE 06:80BE: 29 03     AND #$03
C - - - - - 0x0180D0 06:80C0: 4A        LSR
C - - - - - 0x0180D1 06:80C1: 90 02     BCC bra_80C5
C - - - - - 0x0180D3 06:80C3: 09 12     ORA #$12
bra_80C5:
C - - - - - 0x0180D5 06:80C5: 4A        LSR
C - - - - - 0x0180D6 06:80C6: 90 02     BCC bra_80CA
C - - - - - 0x0180D8 06:80C8: 09 12     ORA #$12
bra_80CA:
C - - - - - 0x0180DA 06:80CA: A8        TAY
C - - - - - 0x0180DB 06:80CB: 8A        TXA
C - - - - - 0x0180DC 06:80CC: 48        PHA
C - - - - - 0x0180DD 06:80CD: A2 00     LDX #$00
bra_80CF_loop:
C - - - - - 0x0180DF 06:80CF: B9 F5 80  LDA tbl_80F5_ringing_phone_tiles,Y
C - - - - - 0x0180E2 06:80D2: 9D 00 61  STA ram_6100,X
C - - - - - 0x0180E5 06:80D5: C8        INY
C - - - - - 0x0180E6 06:80D6: E8        INX
C - - - - - 0x0180E7 06:80D7: E0 09     CPX #$09
C - - - - - 0x0180E9 06:80D9: 90 F4     BCC bra_80CF_loop
C - - - - - 0x0180EB 06:80DB: A9 E9     LDA #< tbl_80E9_ringing_phone
C - - - - - 0x0180ED 06:80DD: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x0180EF 06:80DF: A9 80     LDA #> tbl_80E9_ringing_phone
C - - - - - 0x0180F1 06:80E1: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x0180F3 06:80E3: 20 C2 C7  JSR sub_0x01C7D2_prepare_screen_data
C - - - - - 0x0180F6 06:80E6: 68        PLA
C - - - - - 0x0180F7 06:80E7: AA        TAX
C - - - - - 0x0180F8 06:80E8: 60        RTS



tbl_80E9_ringing_phone:
- D 0 - I - 0x0180F9 06:80E9: 01        .byte $01   ; ??? 001
- D 0 - I - 0x0180FA 06:80EA: 0C        .byte con_prg_bank + $0C   ; 
- D 0 - I - 0x0180FB 06:80EB: 03        .byte $03   ; 
- D 0 - I - 0x0180FC 06:80EC: 03        .byte $03   ; 
- D 0 - I - 0x0180FD 06:80ED: 8B 2A     .word $2A8B ; ppu address
- D 0 - I - 0x0180FF 06:80EF: 00        .byte $00   ; 
- D 0 - I - 0x018100 06:80F0: 20        .byte $20   ; 
- D 0 - I - 0x018101 06:80F1: 00        .byte $00   ; 
- D 0 - I - 0x018102 06:80F2: 20        .byte $20   ; 
- D 0 - I - 0x018103 06:80F3: 00 61     .word ram_6100 ; 



tbl_80F5_ringing_phone_tiles:
; 00 
- D 0 - - - 0x018105 06:80F5: 26        .byte $26, $26, $26   ; 
- D 0 - - - 0x018108 06:80F8: 7D        .byte $7D, $8D, $9D   ; 
- D 0 - - - 0x01810B 06:80FB: 31        .byte $31, $32, $33   ; 
; 09 
- D 0 - - - 0x01810E 06:80FE: 7D        .byte $7D, $8D, $9D   ; 
- D 0 - - - 0x018111 06:8101: 26        .byte $26, $26, $26   ; 
- D 0 - - - 0x018114 06:8104: 31        .byte $31, $32, $33   ; 
; 12 
- D 0 - - - 0x018117 06:8107: 26        .byte $26, $26, $26   ; 
- D 0 - - - 0x01811A 06:810A: 26        .byte $26, $26, $26   ; 
- D 0 - - - 0x01811D 06:810D: 20        .byte $20, $21, $22   ; 
; 1B 
- D 0 - - - 0x018120 06:8110: 26        .byte $26, $26, $26   ; 
- D 0 - - - 0x018123 06:8113: 26        .byte $26, $26, $26   ; 
- D 0 - - - 0x018126 06:8116: 31        .byte $31, $32, $33   ; 



ofs_005_01_8119_02:
C - - J - - 0x018129 06:8119: DE B0 06  DEC ram_obj_spd_X_fr,X
C - - - - - 0x01812C 06:811C: F0 01     BEQ bra_811F
C - - - - - 0x01812E 06:811E: 60        RTS
bra_811F:
C - - - - - 0x01812F 06:811F: A9 03     LDA #$03
C - - - - - 0x018131 06:8121: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018134 06:8124: A9 02     LDA #$02
C - - - - - 0x018136 06:8126: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018139 06:8129: A9 28     LDA #$28
C - - - - - 0x01813B 06:812B: 9D B0 06  STA ram_obj_spd_X_fr,X
; bzk optimize, JMP
C - - - - - 0x01813E 06:812E: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x018141 06:8131: 60        RTS



ofs_005_01_8132_03:
C - - J - - 0x018142 06:8132: DE B0 06  DEC ram_obj_spd_X_fr,X
C - - - - - 0x018145 06:8135: F0 01     BEQ bra_8138
C - - - - - 0x018147 06:8137: 60        RTS
bra_8138:
C - - - - - 0x018148 06:8138: A9 FF     LDA #$FF
C - - - - - 0x01814A 06:813A: 8D B8 03  STA ram_03B8
C - - - - - 0x01814D 06:813D: A9 04     LDA #$04
C - - - - - 0x01814F 06:813F: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018152 06:8142: A9 02     LDA #$02
C - - - - - 0x018154 06:8144: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018157 06:8147: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x01815A 06:814A: A9 46     LDA #$46
C - - - - - 0x01815C 06:814C: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01815F 06:814F: 60        RTS



ofs_005_01_8150_04:
C - - J - - 0x018160 06:8150: AD B8 03  LDA ram_03B8
C - - - - - 0x018163 06:8153: C9 FD     CMP #$FD
C - - - - - 0x018165 06:8155: F0 04     BEQ bra_815B
bra_8157:
C - - - - - 0x018167 06:8157: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01816A 06:815A: 60        RTS
bra_815B:
C - - - - - 0x01816B 06:815B: DE B0 06  DEC ram_obj_spd_X_fr,X
C - - - - - 0x01816E 06:815E: D0 F7     BNE bra_8157
C - - - - - 0x018170 06:8160: A9 11     LDA #con_sfx_11
C - - - - - 0x018172 06:8162: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x018175 06:8165: A9 02     LDA #$02
C - - - - - 0x018177 06:8167: 20 BE 80  JSR sub_80BE
C - - - - - 0x01817A 06:816A: A9 05     LDA #$05
C - - - - - 0x01817C 06:816C: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01817F 06:816F: A9 04     LDA #$04
C - - - - - 0x018181 06:8171: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018184 06:8174: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x018187 06:8177: 20 75 C1  JSR sub_0x01C185_wait_for_nmi_to_end
C - - - - - 0x01818A 06:817A: 20 75 C1  JSR sub_0x01C185_wait_for_nmi_to_end
C - - - - - 0x01818D 06:817D: A9 06     LDA #con_sfx_06
C - - - - - 0x01818F 06:817F: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x018192 06:8182: A9 09     LDA #$09
C - - - - - 0x018194 06:8184: 8D 1A 06  STA ram_0616_obj + $04
C - - - - - 0x018197 06:8187: 60        RTS



ofs_005_01_8188_05:
C - - J - - 0x018198 06:8188: AD B8 03  LDA ram_03B8
C - - - - - 0x01819B 06:818B: C9 FC     CMP #$FC
C - - - - - 0x01819D 06:818D: F0 01     BEQ bra_8190
C - - - - - 0x01819F 06:818F: 60        RTS
bra_8190:
C - - - - - 0x0181A0 06:8190: A9 06     LDA #$06
C - - - - - 0x0181A2 06:8192: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0181A5 06:8195: A9 03     LDA #$03
C - - - - - 0x0181A7 06:8197: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x0181AA 06:819A: 4C C8 E1  JMP loc_0x01E1D8_initialize_animation



ofs_005_01_819D_06:
C - - J - - 0x0181AD 06:819D: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0181B0 06:81A0: 18        CLC
C - - - - - 0x0181B1 06:81A1: 69 02     ADC #< $0002
C - - - - - 0x0181B3 06:81A3: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x0181B6 06:81A6: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0181B9 06:81A9: 69 00     ADC #> $0002
C - - - - - 0x0181BB 06:81AB: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0181BE 06:81AE: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0181C1 06:81B1: C9 10     CMP #$10
C - - - - - 0x0181C3 06:81B3: F0 01     BEQ bra_81B6
C - - - - - 0x0181C5 06:81B5: 60        RTS
bra_81B6:
C - - - - - 0x0181C6 06:81B6: A9 00     LDA #$00
C - - - - - 0x0181C8 06:81B8: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0181CB 06:81BB: 60        RTS



ofs_005_01_81BC_07_RTS:
ofs_005_01_81BC_08_RTS:
C - - J - - 0x0181CC 06:81BC: 60        RTS



ofs_005_01_81BD_09:
C - - J - - 0x0181CD 06:81BD: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0181D0 06:81C0: 38        SEC
C - - - - - 0x0181D1 06:81C1: E9 02     SBC #< $0002
C - - - - - 0x0181D3 06:81C3: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x0181D6 06:81C6: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0181D9 06:81C9: E9 00     SBC #> $0002
C - - - - - 0x0181DB 06:81CB: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0181DE 06:81CE: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0181E1 06:81D1: C9 52     CMP #$52
; bzk optimize, BNE to RTS
C - - - - - 0x0181E3 06:81D3: F0 01     BEQ bra_81D6
C - - - - - 0x0181E5 06:81D5: 60        RTS
bra_81D6:
C - - - - - 0x0181E6 06:81D6: A9 FC     LDA #$FC
C - - - - - 0x0181E8 06:81D8: 8D B8 03  STA ram_03B8
C - - - - - 0x0181EB 06:81DB: A9 00     LDA #$00
C - - - - - 0x0181ED 06:81DD: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0181F0 06:81E0: 60        RTS



ofs_005_01_81E1_0A:
C - - J - - 0x0181F1 06:81E1: A9 07     LDA #$07
C - - - - - 0x0181F3 06:81E3: 85 3C     STA ram_003C
C - - - - - 0x0181F5 06:81E5: A9 50     LDA #$50
C - - - - - 0x0181F7 06:81E7: E0 02     CPX #$02
C - - - - - 0x0181F9 06:81E9: D0 02     BNE bra_81ED
C - - - - - 0x0181FB 06:81EB: A9 38     LDA #$38
bra_81ED:
C - - - - - 0x0181FD 06:81ED: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x018200 06:81F0: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x018203 06:81F3: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x018206 06:81F6: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x018209 06:81F9: D0 62     BNE bra_825D_RTS
C - - - - - 0x01820B 06:81FB: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01820E 06:81FE: C9 8F     CMP #$8F
C - - - - - 0x018210 06:8200: 90 5B     BCC bra_825D_RTS
C - - - - - 0x018212 06:8202: A9 0A     LDA #$0A
C - - - - - 0x018214 06:8204: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018217 06:8207: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x01821A 06:820A: A9 90     LDA #$90
C - - - - - 0x01821C 06:820C: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01821F 06:820F: A9 10     LDA #$10
C - - - - - 0x018221 06:8211: E0 02     CPX #$02
C - - - - - 0x018223 06:8213: D0 02     BNE bra_8217
C - - - - - 0x018225 06:8215: A9 40     LDA #$40
bra_8217:
C - - - - - 0x018227 06:8217: 18        CLC
C - - - - - 0x018228 06:8218: 7D B0 06  ADC ram_obj_spd_X_fr,X
C - - - - - 0x01822B 06:821B: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01822E 06:821E: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x018231 06:8221: 69 00     ADC #$00
C - - - - - 0x018233 06:8223: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018236 06:8226: F0 36     BEQ bra_825E
C - - - - - 0x018238 06:8228: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01823B 06:822B: 49 FF     EOR #$FF
C - - - - - 0x01823D 06:822D: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018240 06:8230: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x018243 06:8233: 49 FF     EOR #$FF
C - - - - - 0x018245 06:8235: 18        CLC
C - - - - - 0x018246 06:8236: 69 01     ADC #< $0001
C - - - - - 0x018248 06:8238: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01824B 06:823B: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01824E 06:823E: 69 00     ADC #> $0001
C - - - - - 0x018250 06:8240: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018253 06:8243: F0 18     BEQ bra_825D_RTS
C - - - - - 0x018255 06:8245: E0 02     CPX #$02
C - - - - - 0x018257 06:8247: D0 03     BNE bra_824C
C - - - - - 0x018259 06:8249: 20 4C 82  JSR sub_824C
bra_824C:
sub_824C:
C - - - - - 0x01825C 06:824C: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01825F 06:824F: 18        CLC
C - - - - - 0x018260 06:8250: 69 80     ADC #< $0080
C - - - - - 0x018262 06:8252: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x018265 06:8255: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018268 06:8258: 69 00     ADC #> $0080
C - - - - - 0x01826A 06:825A: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_825D_RTS:
C - - - - - 0x01826D 06:825D: 60        RTS
bra_825E:
C - - - - - 0x01826E 06:825E: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018271 06:8261: A9 0B     LDA #$0B
C - - - - - 0x018273 06:8263: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018276 06:8266: A9 0B     LDA #$0B
C - - - - - 0x018278 06:8268: 9D 34 07  STA ram_0734_obj,X
; bzk optimize, JMP
C - - - - - 0x01827B 06:826B: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
ofs_005_01_826E_0B_RTS:
C - - - - - 0x01827E 06:826E: 60        RTS



ofs_005_02_826F_01:
C - - J - - 0x01827F 06:826F: A9 07     LDA #$07
C - - - - - 0x018281 06:8271: 85 3C     STA ram_003C
C - - - - - 0x018283 06:8273: A9 50     LDA #$50
C - - - - - 0x018285 06:8275: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x018288 06:8278: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x01828B 06:827B: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x01828E 06:827E: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x018291 06:8281: C9 77     CMP #$77
C - - - - - 0x018293 06:8283: 90 36     BCC bra_82BB_RTS
C - - - - - 0x018295 06:8285: A9 01     LDA #$01
C - - - - - 0x018297 06:8287: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01829A 06:828A: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x01829D 06:828D: FE 16 06  INC ram_0616_obj,X
C - - - - - 0x0182A0 06:8290: A9 77     LDA #$77
C - - - - - 0x0182A2 06:8292: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0182A5 06:8295: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x0182A8 06:8298: F0 06     BEQ bra_82A0
C - - - - - 0x0182AA 06:829A: 38        SEC
C - - - - - 0x0182AB 06:829B: E9 30     SBC #$30
C - - - - - 0x0182AD 06:829D: 9D B0 06  STA ram_obj_spd_X_fr,X
bra_82A0:
C - - - - - 0x0182B0 06:82A0: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0182B3 06:82A3: 49 FF     EOR #$FF
C - - - - - 0x0182B5 06:82A5: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0182B8 06:82A8: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0182BB 06:82AB: 49 FF     EOR #$FF
C - - - - - 0x0182BD 06:82AD: 18        CLC
C - - - - - 0x0182BE 06:82AE: 69 01     ADC #< $0001
C - - - - - 0x0182C0 06:82B0: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0182C3 06:82B3: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0182C6 06:82B6: 69 00     ADC #> $0001
C - - - - - 0x0182C8 06:82B8: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_82BB_RTS:
C - - - - - 0x0182CB 06:82BB: 60        RTS



ofs_005_02_82BC_02:
C - - J - - 0x0182CC 06:82BC: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x0182CF 06:82BF: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x0182D1 06:82C1: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x0182D4 06:82C4: 29 08     AND #con_0776_08
C - - - - - 0x0182D6 06:82C6: F0 10     BEQ bra_82D8_RTS
C - - - - - 0x0182D8 06:82C8: A9 02     LDA #$02
C - - - - - 0x0182DA 06:82CA: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x0182DD 06:82CD: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x0182E0 06:82D0: DE 16 06  DEC ram_0616_obj,X
C - - - - - 0x0182E3 06:82D3: CE D0 03  DEC ram_03D0
C - - - - - 0x0182E6 06:82D6: F0 01     BEQ bra_82D9
bra_82D8_RTS:
C - - - - - 0x0182E8 06:82D8: 60        RTS
bra_82D9:
C - - - - - 0x0182E9 06:82D9: A9 3C     LDA #$3C
C - - - - - 0x0182EB 06:82DB: 8D D0 03  STA ram_03D0
C - - - - - 0x0182EE 06:82DE: A9 09     LDA #$09
C - - - - - 0x0182F0 06:82E0: 9D 34 07  STA ram_0734_obj,X
ofs_005_02_82E3_03:
C - - - - - 0x0182F3 06:82E3: A9 03     LDA #$03
C - - - - - 0x0182F5 06:82E5: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0182F8 06:82E8: CE D0 03  DEC ram_03D0
C - - - - - 0x0182FB 06:82EB: F0 10     BEQ bra_82FD
C - - - - - 0x0182FD 06:82ED: AD D0 03  LDA ram_03D0
C - - - - - 0x018300 06:82F0: C9 0F     CMP #$0F
C - - - - - 0x018302 06:82F2: D0 08     BNE bra_82FC_RTS
C - - - - - 0x018304 06:82F4: A9 01     LDA #$01
C - - - - - 0x018306 06:82F6: 9D 34 07  STA ram_0734_obj,X
; bzk optimize, JMP
C - - - - - 0x018309 06:82F9: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_82FC_RTS:
C - - - - - 0x01830C 06:82FC: 60        RTS
bra_82FD:
C - - - - - 0x01830D 06:82FD: A9 04     LDA #$04
C - - - - - 0x01830F 06:82FF: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018312 06:8302: A9 04     LDA #$04
C - - - - - 0x018314 06:8304: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018317 06:8307: 4C C8 E1  JMP loc_0x01E1D8_initialize_animation



ofs_005_02_830A_04:
C - - J - - 0x01831A 06:830A: AD D0 03  LDA ram_03D0
C - - - - - 0x01831D 06:830D: C9 12     CMP #$12
C - - - - - 0x01831F 06:830F: F0 0B     BEQ bra_831C
C - - - - - 0x018321 06:8311: C9 1A     CMP #$1A
C - - - - - 0x018323 06:8313: B0 07     BCS bra_831C
C - - - - - 0x018325 06:8315: 20 B4 C4  JSR sub_0x01C4C4
C - - - - - 0x018328 06:8318: EE D0 03  INC ram_03D0
C - - - - - 0x01832B 06:831B: 60        RTS
bra_831C:
ofs_005_02_831C_05:
C - - - - - 0x01832C 06:831C: A9 13     LDA #$13
C - - - - - 0x01832E 06:831E: 8D D0 03  STA ram_03D0
C - - - - - 0x018331 06:8321: A9 05     LDA #$05
C - - - - - 0x018333 06:8323: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018336 06:8326: 60        RTS



ofs_005_02_8327_06:
C - - J - - 0x018337 06:8327: A9 05     LDA #$05
C - - - - - 0x018339 06:8329: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01833C 06:832C: A9 00     LDA #$00
C - - - - - 0x01833E 06:832E: 85 00     STA ram_0000_t40_pos_X_hi
C - - - - - 0x018340 06:8330: A9 77     LDA #$77
C - - - - - 0x018342 06:8332: 38        SEC
C - - - - - 0x018343 06:8333: ED 85 06  SBC ram_obj_pos_Y_lo + $01
C - - - - - 0x018346 06:8336: C9 80     CMP #$80
C - - - - - 0x018348 06:8338: 6A        ROR
loc_8339:
C D 0 - - - 0x018349 06:8339: C9 80     CMP #$80
C - - - - - 0x01834B 06:833B: 6A        ROR
C - - - - - 0x01834C 06:833C: C9 80     CMP #$80
C - - - - - 0x01834E 06:833E: 6A        ROR
C - - - - - 0x01834F 06:833F: C9 80     CMP #$80
C - - - - - 0x018351 06:8341: 90 02     BCC bra_8345
C - - - - - 0x018353 06:8343: C6 00     DEC ram_0000_t40_pos_X_hi   ; -> FF
bra_8345:
C - - - - - 0x018355 06:8345: 18        CLC
C - - - - - 0x018356 06:8346: 6D 43 06  ADC ram_obj_pos_X_lo + $01
C - - - - - 0x018359 06:8349: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01835C 06:834C: AD 59 06  LDA ram_obj_pos_X_hi + $01
C - - - - - 0x01835F 06:834F: 65 00     ADC ram_0000_t40_pos_X_hi
C - - - - - 0x018361 06:8351: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018364 06:8354: AD 85 06  LDA ram_obj_pos_Y_lo + $01
C - - - - - 0x018367 06:8357: C9 4F     CMP #$4F
C - - - - - 0x018369 06:8359: B0 09     BCS bra_8364_RTS
C - - - - - 0x01836B 06:835B: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x01836E 06:835E: 18        CLC
C - - - - - 0x01836F 06:835F: 69 02     ADC #$02
C - - - - - 0x018371 06:8361: 9D 34 07  STA ram_0734_obj,X
bra_8364_RTS:
C - - - - - 0x018374 06:8364: 60        RTS



ofs_005_02_8365_07:
C - - J - - 0x018375 06:8365: A9 06     LDA #$06
C - - - - - 0x018377 06:8367: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01837A 06:836A: A9 00     LDA #$00
C - - - - - 0x01837C 06:836C: 85 00     STA ram_0000_t40_pos_X_hi
C - - - - - 0x01837E 06:836E: AD 85 06  LDA ram_obj_pos_Y_lo + $01
C - - - - - 0x018381 06:8371: 38        SEC
C - - - - - 0x018382 06:8372: E9 77     SBC #$77
C - - - - - 0x018384 06:8374: 4C 39 83  JMP loc_8339



ofs_005_1B_8377_01:
C - - J - - 0x018387 06:8377: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01838A 06:837A: 29 F0     AND #$F0
C - - - - - 0x01838C 06:837C: 09 01     ORA #$01
C - - - - - 0x01838E 06:837E: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x018391 06:8381: A9 02     LDA #$02
C - - - - - 0x018393 06:8383: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018396 06:8386: A9 00     LDA #$00
C - - - - - 0x018398 06:8388: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01839B 06:838B: A9 71     LDA #$71
C - - - - - 0x01839D 06:838D: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x0183A0 06:8390: A9 08     LDA #$08
C - - - - - 0x0183A2 06:8392: 8D 2A 04  STA ram_042A
C - - - - - 0x0183A5 06:8395: A9 0A     LDA #$0A
C - - - - - 0x0183A7 06:8397: 8D 2B 04  STA ram_042B
ofs_005_1B_839A_02:
C - - - - - 0x0183AA 06:839A: DE 1E 07  DEC ram_071E_obj_queue_id,X
C - - - - - 0x0183AD 06:839D: D0 1C     BNE bra_83BB
C - - - - - 0x0183AF 06:839F: A0 00     LDY #$00
bra_83A1_loop:
C - - - - - 0x0183B1 06:83A1: B9 B7 84  LDA tbl_84B7_congratulations,Y
C - - - - - 0x0183B4 06:83A4: 99 00 6F  STA ram_data_6F00,Y
C - - - - - 0x0183B7 06:83A7: C8        INY
C - - - - - 0x0183B8 06:83A8: C0 0C     CPY #$0C
C - - - - - 0x0183BA 06:83AA: 90 F5     BCC bra_83A1_loop
C - - - - - 0x0183BC 06:83AC: A9 C3     LDA #< tbl_84C3_congratultions
C - - - - - 0x0183BE 06:83AE: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x0183C1 06:83B1: A9 84     LDA #> tbl_84C3_congratultions
C - - - - - 0x0183C3 06:83B3: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x0183C6 06:83B6: A9 03     LDA #$03
C - - - - - 0x0183C8 06:83B8: 9D 16 06  STA ram_0616_obj,X
bra_83BB:
loc_83BB:
C D 0 - - - 0x0183CB 06:83BB: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x0183CE 06:83BE: F0 37     BEQ bra_83F7
C - - - - - 0x0183D0 06:83C0: BC CE 07  LDY ram_07CE_obj_hp,X
C - - - - - 0x0183D3 06:83C3: B9 15 85  LDA tbl_8515_felix_buttons_with_kitty,Y
C - - - - - 0x0183D6 06:83C6: 20 A4 C9  JSR sub_0x01C9B4_set_custom_buttons
C - - - - - 0x0183D9 06:83C9: DE 2C 06  DEC ram_obj_pos_X_fr,X
C - - - - - 0x0183DC 06:83CC: D0 0C     BNE bra_83DA
C - - - - - 0x0183DE 06:83CE: C8        INY
C - - - - - 0x0183DF 06:83CF: B9 15 85  LDA tbl_8515_felix_buttons_with_kitty,Y
C - - - - - 0x0183E2 06:83D2: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x0183E5 06:83D5: C8        INY
C - - - - - 0x0183E6 06:83D6: 98        TYA
C - - - - - 0x0183E7 06:83D7: 9D CE 07  STA ram_07CE_obj_hp,X
bra_83DA:
C - - - - - 0x0183EA 06:83DA: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x0183ED 06:83DD: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0183F0 06:83E0: C9 52     CMP #$52
C - - - - - 0x0183F2 06:83E2: A9 03     LDA #$03
C - - - - - 0x0183F4 06:83E4: 85 3C     STA ram_003C
C - - - - - 0x0183F6 06:83E6: A9 21     LDA #$21
C - - - - - 0x0183F8 06:83E8: B0 03     BCS bra_83ED
C - - - - - 0x0183FA 06:83EA: 4C 17 89  JMP loc_8917_add_spd_Y
bra_83ED:
C - - - - - 0x0183FD 06:83ED: A9 FD     LDA #$FD
C - - - - - 0x0183FF 06:83EF: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018402 06:83F2: A9 21     LDA #$21
C - - - - - 0x018404 06:83F4: 4C 17 89  JMP loc_8917_add_spd_Y
bra_83F7:
C - - - - - 0x018407 06:83F7: A9 00     LDA #$00
C - - - - - 0x018409 06:83F9: 20 A4 C9  JSR sub_0x01C9B4_set_custom_buttons
C - - - - - 0x01840C 06:83FC: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x01840E 06:83FE: 29 1F     AND #$1F
C - - - - - 0x018410 06:8400: D0 D8     BNE bra_83DA
C - - - - - 0x018412 06:8402: A9 51     LDA #$51
C - - - - - 0x018414 06:8404: 4C 7C A0  JMP loc_A07C



ofs_005_1B_8407_03:
C - - J - - 0x018417 06:8407: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x018419 06:8409: 29 07     AND #$07
C - - - - - 0x01841B 06:840B: D0 61     BNE bra_846E
C - - - - - 0x01841D 06:840D: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x018420 06:8410: 18        CLC
C - - - - - 0x018421 06:8411: 6D 04 6F  ADC ram_6F04
C - - - - - 0x018424 06:8414: 8D 04 6F  STA ram_6F04
C - - - - - 0x018427 06:8417: AD 05 6F  LDA ram_6F05
C - - - - - 0x01842A 06:841A: 69 00     ADC #$00
C - - - - - 0x01842C 06:841C: 8D 05 6F  STA ram_6F05
C - - - - - 0x01842F 06:841F: A9 00     LDA #$00
C - - - - - 0x018431 06:8421: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x018434 06:8424: A0 00     LDY #$00
C - - - - - 0x018436 06:8426: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x018439 06:8429: 85 00     STA ram_0000_t01_data
C - - - - - 0x01843B 06:842B: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01843E 06:842E: 85 01     STA ram_0000_t01_data + $01
C - - - - - 0x018440 06:8430: B1 00     LDA (ram_0000_t01_data),Y
C - - - - - 0x018442 06:8432: F0 3D     BEQ bra_8471_00
C - - - - - 0x018444 06:8434: 48        PHA
C - - - - - 0x018445 06:8435: A5 00     LDA ram_0000_t01_data
C - - - - - 0x018447 06:8437: 18        CLC
C - - - - - 0x018448 06:8438: 69 01     ADC #< $0001
C - - - - - 0x01844A 06:843A: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01844D 06:843D: A5 01     LDA ram_0000_t01_data + $01
C - - - - - 0x01844F 06:843F: 69 00     ADC #> $0001
C - - - - - 0x018451 06:8441: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018454 06:8444: 68        PLA
C - - - - - 0x018455 06:8445: C9 20     CMP #$20
C - - - - - 0x018457 06:8447: 90 22     BCC bra_846B_00_1F
C - - - - - 0x018459 06:8449: F0 1E     BEQ bra_8469_20
C - - - - - 0x01845B 06:844B: C9 FF     CMP #$FF
C - - - - - 0x01845D 06:844D: F0 56     BEQ bra_84A5_FF
; 20-FE letters and symbols
C - - - - - 0x01845F 06:844F: 18        CLC
C - - - - - 0x018460 06:8450: 69 80     ADC #$80
C - - - - - 0x018462 06:8452: 8D 10 6F  STA ram_6F10
C - - - - - 0x018465 06:8455: A9 00     LDA #< ram_data_6F00
C - - - - - 0x018467 06:8457: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x018469 06:8459: A9 6F     LDA #> ram_data_6F00
C - - - - - 0x01846B 06:845B: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01846D 06:845D: 8A        TXA
C - - - - - 0x01846E 06:845E: 48        PHA
C - - - - - 0x01846F 06:845F: 20 C2 C7  JSR sub_0x01C7D2_prepare_screen_data
C - - - - - 0x018472 06:8462: 68        PLA
C - - - - - 0x018473 06:8463: AA        TAX
C - - - - - 0x018474 06:8464: A9 09     LDA #con_sfx_09
C - - - - - 0x018476 06:8466: 20 1A FF  JSR sub_0x01FF2A_play_sound
bra_8469_20:
; space tile
C - - - - - 0x018479 06:8469: A9 01     LDA #$01
bra_846B_00_1F:
C - - - - - 0x01847B 06:846B: 9D 1E 07  STA ram_071E_obj_queue_id,X
bra_846E:
C - - - - - 0x01847E 06:846E: 4C BB 83  JMP loc_83BB
bra_8471_00:
C - - - - - 0x018481 06:8471: 8A        TXA
C - - - - - 0x018482 06:8472: 48        PHA
C - - - - - 0x018483 06:8473: AD 2B 04  LDA ram_042B
C - - - - - 0x018486 06:8476: C9 08     CMP #$08
C - - - - - 0x018488 06:8478: D0 0E     BNE bra_8488
C - - - - - 0x01848A 06:847A: A9 86     LDA #con_mus_cfg_86
C - - - - - 0x01848C 06:847C: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x01848F 06:847F: E0 2A     CPX #$2A
C - - - - - 0x018491 06:8481: F0 05     BEQ bra_8488
C - - - - - 0x018493 06:8483: A9 2A     LDA #con_music_the_end
C - - - - - 0x018495 06:8485: 20 1A FF  JSR sub_0x01FF2A_play_sound
bra_8488:
C - - - - - 0x018498 06:8488: 68        PLA
C - - - - - 0x018499 06:8489: AA        TAX
C - - - - - 0x01849A 06:848A: CE 2A 04  DEC ram_042A
C - - - - - 0x01849D 06:848D: F0 03     BEQ bra_8492
C - - - - - 0x01849F 06:848F: 4C BB 83  JMP loc_83BB
bra_8492:
C - - - - - 0x0184A2 06:8492: A9 08     LDA #$08
C - - - - - 0x0184A4 06:8494: 8D 2A 04  STA ram_042A
C - - - - - 0x0184A7 06:8497: CE 2B 04  DEC ram_042B
C - - - - - 0x0184AA 06:849A: F0 03     BEQ bra_849F
C - - - - - 0x0184AC 06:849C: 4C BB 83  JMP loc_83BB
bra_849F:
C - - - - - 0x0184AF 06:849F: A9 01     LDA #$01
C - - - - - 0x0184B1 06:84A1: 8D B7 03  STA ram_03B7
C - - - - - 0x0184B4 06:84A4: 60        RTS
bra_84A5_FF:
C - - - - - 0x0184B5 06:84A5: AD 04 6F  LDA ram_6F04
C - - - - - 0x0184B8 06:84A8: 18        CLC
C - - - - - 0x0184B9 06:84A9: 69 20     ADC #$20
C - - - - - 0x0184BB 06:84AB: 29 E0     AND #$E0
C - - - - - 0x0184BD 06:84AD: 38        SEC
C - - - - - 0x0184BE 06:84AE: ED 04 6F  SBC ram_6F04
C - - - - - 0x0184C1 06:84B1: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x0184C4 06:84B4: 4C BB 83  JMP loc_83BB



tbl_84B7_congratulations:
- D 0 - - - 0x0184C7 06:84B7: 01        .byte $01   ; ??? 001
- D 0 - - - 0x0184C8 06:84B8: 00        .byte con_prg_bank + $00   ; 
- D 0 - - - 0x0184C9 06:84B9: 01        .byte $01   ; 
- D 0 - - - 0x0184CA 06:84BA: 01        .byte $01   ; 
- D 0 - - - 0x0184CB 06:84BB: 00 29     .word $2900 ; ppu address
- D 0 - - - 0x0184CD 06:84BD: 00        .byte $00   ; 
- D 0 - - - 0x0184CE 06:84BE: 20        .byte $20   ; 
- D 0 - - - 0x0184CF 06:84BF: 00        .byte $00   ; 
- D 0 - - - 0x0184D0 06:84C0: 20        .byte $20   ; 
- D 0 - - - 0x0184D1 06:84C1: 10 6F     .word ram_6F10 ; 



tbl_84C3_congratultions:
- D 0 - I - 0x0184D3 06:84C3: FF        .byte $FF   ; skip line
- D 0 - I - 0x0184D4 06:84C4: FF        .byte $FF   ; skip line
- D 0 - I - 0x0184D5 06:84C5: FF        .byte $FF   ; skip line

- D 0 - I - 0x0184D6 06:84C6: 05        .byte $05   ; text offset
- D 0 - I - 0x0184D7 06:84C7: 43        .byte "Congratulations"
- D 0 - I - 0x0184E6 06:84D6: 40        .byte $40   ; !
- D 0 - I - 0x0184E7 06:84D7: FF        .byte $FF   ; end line

- D 0 - I - 0x0184E8 06:84D8: FF        .byte $FF   ; skip line

- D 0 - I - 0x0184E9 06:84D9: 06        .byte $06   ; text offset
- D 0 - I - 0x0184EA 06:84DA: 41        .byte "At last FELIX"
- D 0 - I - 0x0184F7 06:84E7: 40        .byte $40   ; !
- D 0 - I - 0x0184F8 06:84E8: FF        .byte $FF   ; end line

- D 0 - I - 0x0184F9 06:84E9: FF        .byte $FF   ; skip line

- D 0 - I - 0x0184FA 06:84EA: 06        .byte $06   ; text offset
- D 0 - I - 0x0184FB 06:84EB: 59        .byte "You rescued Kitty"
- D 0 - I - 0x01850C 06:84FC: 40        .byte $40   ; !
- D 0 - I - 0x01850D 06:84FD: FF        .byte $FF   ; end line

- D 0 - I - 0x01850E 06:84FE: FF        .byte $FF   ; skip line
- D 0 - I - 0x01850F 06:84FF: FF        .byte $FF   ; skip line

- D 0 - I - 0x018510 06:8500: 0D        .byte $0D   ; text offset
- D 0 - I - 0x018511 06:8501: 49        .byte "I love you"
- D 0 - I - 0x01851B 06:850B: 7C        .byte $7C   ; ,
- D 0 - I - 0x01851C 06:850C: FF        .byte $FF   ; end line

- D 0 - I - 0x01851D 06:850D: 10        .byte $10   ; text offset
- D 0 - I - 0x01851E 06:850E: 46        .byte "FELIX"
- D 0 - I - 0x018523 06:8513: 40        .byte $40   ; !

- D 0 - I - 0x018524 06:8514: 00        .byte $00   ; end token



tbl_8515_felix_buttons_with_kitty:
; buttons when felix comes to kitty
; 00 
- D 0 - - - 0x018525 06:8515: 00        .byte $00   ; 
- D 0 - - - 0x018526 06:8516: 01        .byte $01   ; 
; 02 
- D 0 - - - 0x018527 06:8517: 80        .byte con_btn_Right   ; 
- D 0 - - - 0x018528 06:8518: 07        .byte $07   ; 
; 04 
- D 0 - - - 0x018529 06:8519: 81        .byte con_btn_Right + con_btn_A   ; 
- D 0 - - - 0x01852A 06:851A: 34        .byte $34   ; 
; 06 
- D 0 - - - 0x01852B 06:851B: 00        .byte $00   ; 
- D 0 - - - 0x01852C 06:851C: 10        .byte $10   ; 
; 08 
- D 0 - - - 0x01852D 06:851D: 80        .byte con_btn_Right   ; 
- D 0 - - - 0x01852E 06:851E: 00        .byte $00   ; 



ofs_005_0F_851F_01:
- - - - - - 0x01852F 06:851F: A9 01     LDA #$01
- - - - - - 0x018531 06:8521: 9D 34 07  STA ram_0734_obj,X
- - - - - - 0x018534 06:8524: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
- - - - - - 0x018537 06:8527: BD 76 07  LDA ram_0776_obj_flags,X
- - - - - - 0x01853A 06:852A: 09 04     ORA #con_0776_04
- - - - - - 0x01853C 06:852C: 9D 76 07  STA ram_0776_obj_flags,X
- - - - - - 0x01853F 06:852F: 60        RTS



loc_8530:
sub_8530:
C D 0 - - - 0x018540 06:8530: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018543 06:8533: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x018545 06:8535: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018548 06:8538: 29 08     AND #con_0776_08
C - - - - - 0x01854A 06:853A: F0 05     BEQ bra_8541_RTS
C - - - - - 0x01854C 06:853C: A9 00     LDA #$00
C - - - - - 0x01854E 06:853E: 9D 16 06  STA ram_0616_obj,X
bra_8541_RTS:
C - - - - - 0x018551 06:8541: 60        RTS



ofs_005_0E_8542_02:
C - - J - - 0x018552 06:8542: A9 05     LDA #$05
C - - - - - 0x018554 06:8544: 85 3C     STA ram_003C
C - - - - - 0x018556 06:8546: A9 30     LDA #$30
C - - - - - 0x018558 06:8548: 20 17 89  JSR sub_8917_add_spd_Y
loc_854B:
C D 0 - - - 0x01855B 06:854B: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x01855E 06:854E: 20 E2 86  JSR sub_86E2
C - - - - - 0x018561 06:8551: 20 7B 86  JSR sub_867B
C - - - - - 0x018564 06:8554: 20 B8 86  JSR sub_86B8
C - - - - - 0x018567 06:8557: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01856A 06:855A: 10 03     BPL bra_855F
C - - - - - 0x01856C 06:855C: 4C 30 85  JMP loc_8530
bra_855F:
C - - - - - 0x01856F 06:855F: A9 08     LDA #$08
C - - - - - 0x018571 06:8561: 20 FF 89  JSR sub_89FF
C - - - - - 0x018574 06:8564: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x018577 06:8567: D0 03     BNE bra_856C
C - - - - - 0x018579 06:8569: 4C 30 85  JMP loc_8530
bra_856C:
C - - - - - 0x01857C 06:856C: 4A        LSR
C - - - - - 0x01857D 06:856D: C9 02     CMP #$02
C - - - - - 0x01857F 06:856F: F0 68     BEQ bra_85D9
C - - - - - 0x018581 06:8571: A9 00     LDA #$00
C - - - - - 0x018583 06:8573: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x018586 06:8576: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x018589 06:8579: 29 F0     AND #$F0
C - - - - - 0x01858B 06:857B: 09 08     ORA #$08
C - - - - - 0x01858D 06:857D: 9D 84 06  STA ram_obj_pos_Y_lo,X
loc_8580:
C - - - - - 0x018590 06:8580: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018593 06:8583: 49 FF     EOR #$FF
C - - - - - 0x018595 06:8585: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018598 06:8588: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01859B 06:858B: 49 FF     EOR #$FF
C - - - - - 0x01859D 06:858D: 18        CLC
C - - - - - 0x01859E 06:858E: 69 01     ADC #< $0001
C - - - - - 0x0185A0 06:8590: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0185A3 06:8593: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0185A6 06:8596: 69 00     ADC #> $0001
C - - - - - 0x0185A8 06:8598: C9 80     CMP #$80
C - - - - - 0x0185AA 06:859A: 6A        ROR
C - - - - - 0x0185AB 06:859B: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0185AE 06:859E: 85 05     STA ram_0005_t01_spd_Y_lo
C - - - - - 0x0185B0 06:85A0: 7E DC 06  ROR ram_obj_spd_Y_fr,X
C - - - - - 0x0185B3 06:85A3: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0185B6 06:85A6: 85 04     STA ram_0004_t10
C - - - - - 0x0185B8 06:85A8: A5 05     LDA ram_0005_t01_spd_Y_lo
C - - - - - 0x0185BA 06:85AA: C9 80     CMP #$80
C - - - - - 0x0185BC 06:85AC: 66 05     ROR ram_0005_t01_spd_Y_lo
C - - - - - 0x0185BE 06:85AE: A5 04     LDA ram_0004_t10
C - - - - - 0x0185C0 06:85B0: 6A        ROR
C - - - - - 0x0185C1 06:85B1: 18        CLC
C - - - - - 0x0185C2 06:85B2: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x0185C5 06:85B5: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0185C8 06:85B8: A5 05     LDA ram_0005_t01_spd_Y_lo
C - - - - - 0x0185CA 06:85BA: 7D F2 06  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x0185CD 06:85BD: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0185D0 06:85C0: F0 11     BEQ bra_85D3
C - - - - - 0x0185D2 06:85C2: C9 FF     CMP #$FF
C - - - - - 0x0185D4 06:85C4: F0 03     BEQ bra_85C9
C - - - - - 0x0185D6 06:85C6: 4C 30 85  JMP loc_8530
bra_85C9:
C - - - - - 0x0185D9 06:85C9: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0185DC 06:85CC: C9 B0     CMP #$B0
C - - - - - 0x0185DE 06:85CE: B0 03     BCS bra_85D3
C - - - - - 0x0185E0 06:85D0: 4C 30 85  JMP loc_8530
bra_85D3:
C - - - - - 0x0185E3 06:85D3: A9 01     LDA #$01
C - - - - - 0x0185E5 06:85D5: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0185E8 06:85D8: 60        RTS
bra_85D9:
- - - - - - 0x0185E9 06:85D9: B0 47     BCS bra_8622
- - - - - - 0x0185EB 06:85DB: A5 06     LDA ram_0006_temp
- - - - - - 0x0185ED 06:85DD: 29 F0     AND #$F0
- - - - - - 0x0185EF 06:85DF: 85 06     STA ram_0006_temp
- - - - - - 0x0185F1 06:85E1: BD 42 06  LDA ram_obj_pos_X_lo,X
- - - - - - 0x0185F4 06:85E4: 29 0F     AND #$0F
- - - - - - 0x0185F6 06:85E6: 49 FF     EOR #$FF
- - - - - - 0x0185F8 06:85E8: 38        SEC
- - - - - - 0x0185F9 06:85E9: 65 06     ADC ram_0006_temp
- - - - - - 0x0185FB 06:85EB: 85 06     STA ram_0006_temp
- - - - - - 0x0185FD 06:85ED: A5 07     LDA ram_0007_temp
- - - - - - 0x0185FF 06:85EF: E9 00     SBC #$00
- - - - - - 0x018601 06:85F1: 85 07     STA ram_0007_temp
- - - - - - 0x018603 06:85F3: A5 06     LDA ram_0006_temp
- - - - - - 0x018605 06:85F5: 38        SEC
- - - - - - 0x018606 06:85F6: E9 08     SBC #< $0008
- - - - - - 0x018608 06:85F8: 85 06     STA ram_0006_temp
- - - - - - 0x01860A 06:85FA: A5 07     LDA ram_0007_temp
- - - - - - 0x01860C 06:85FC: E9 00     SBC #> $0008
- - - - - - 0x01860E 06:85FE: 85 07     STA ram_0007_temp
- - - - - - 0x018610 06:8600: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x018613 06:8603: 38        SEC
- - - - - - 0x018614 06:8604: E5 06     SBC ram_0006_temp
- - - - - - 0x018616 06:8606: BD 9A 06  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x018619 06:8609: E5 07     SBC ram_0007_temp
- - - - - - 0x01861B 06:860B: 30 03     BMI bra_8610
- - - - - - 0x01861D 06:860D: 4C 30 85  JMP loc_8530
bra_8610:
- - - - - - 0x018620 06:8610: A9 00     LDA #$00
- - - - - - 0x018622 06:8612: 9D 6E 06  STA ram_obj_pos_Y_fr,X
- - - - - - 0x018625 06:8615: A5 06     LDA ram_0006_temp
- - - - - - 0x018627 06:8617: 9D 84 06  STA ram_obj_pos_Y_lo,X
- - - - - - 0x01862A 06:861A: A5 07     LDA ram_0007_temp
- - - - - - 0x01862C 06:861C: 9D 9A 06  STA ram_obj_pos_Y_hi,X
- - - - - - 0x01862F 06:861F: 4C 80 85  JMP loc_8580
bra_8622:
- - - - - - 0x018632 06:8622: A5 06     LDA ram_0006_temp
- - - - - - 0x018634 06:8624: 29 F0     AND #$F0
- - - - - - 0x018636 06:8626: 85 06     STA ram_0006_temp
- - - - - - 0x018638 06:8628: A9 0F     LDA #$0F
- - - - - - 0x01863A 06:862A: 38        SEC
- - - - - - 0x01863B 06:862B: FD 42 06  SBC ram_obj_pos_X_lo,X
- - - - - - 0x01863E 06:862E: 29 0F     AND #$0F
- - - - - - 0x018640 06:8630: 49 FF     EOR #$FF
- - - - - - 0x018642 06:8632: 38        SEC
- - - - - - 0x018643 06:8633: 65 06     ADC ram_0006_temp
- - - - - - 0x018645 06:8635: 85 06     STA ram_0006_temp
- - - - - - 0x018647 06:8637: A5 07     LDA ram_0007_temp
- - - - - - 0x018649 06:8639: E9 00     SBC #$00
- - - - - - 0x01864B 06:863B: 85 07     STA ram_0007_temp
- - - - - - 0x01864D 06:863D: A5 06     LDA ram_0006_temp
- - - - - - 0x01864F 06:863F: 38        SEC
- - - - - - 0x018650 06:8640: E9 08     SBC #< $0008
- - - - - - 0x018652 06:8642: 85 06     STA ram_0006_temp
- - - - - - 0x018654 06:8644: A5 07     LDA ram_0007_temp
- - - - - - 0x018656 06:8646: E9 00     SBC #> $0008
- - - - - - 0x018658 06:8648: 85 07     STA ram_0007_temp
- - - - - - 0x01865A 06:864A: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x01865D 06:864D: 38        SEC
- - - - - - 0x01865E 06:864E: E5 06     SBC ram_0006_temp
- - - - - - 0x018660 06:8650: BD 9A 06  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x018663 06:8653: E5 07     SBC ram_0007_temp
- - - - - - 0x018665 06:8655: 30 03     BMI bra_865A
- - - - - - 0x018667 06:8657: 4C 30 85  JMP loc_8530
bra_865A:
- - - - - - 0x01866A 06:865A: A9 00     LDA #$00
- - - - - - 0x01866C 06:865C: 9D 6E 06  STA ram_obj_pos_Y_fr,X
- - - - - - 0x01866F 06:865F: A5 06     LDA ram_0006_temp
- - - - - - 0x018671 06:8661: 9D 84 06  STA ram_obj_pos_Y_lo,X
- - - - - - 0x018674 06:8664: A5 07     LDA ram_0007_temp
- - - - - - 0x018676 06:8666: 9D 9A 06  STA ram_obj_pos_Y_hi,X
- - - - - - 0x018679 06:8669: 4C 80 85  JMP loc_8580



ofs_005_0E_866C_03:
C - - J - - 0x01867C 06:866C: A9 03     LDA #$03
C - - - - - 0x01867E 06:866E: 85 3C     STA ram_003C
C - - - - - 0x018680 06:8670: A9 18     LDA #$18
C - - - - - 0x018682 06:8672: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x018685 06:8675: 4C 4B 85  JMP loc_854B



ofs_005_0E_8678_01:
C - - J - - 0x018688 06:8678: 20 30 85  JSR sub_8530
sub_867B:
C - - - - - 0x01868B 06:867B: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x01868E 06:867E: 1D A2 07  ORA ram_07A2_obj,X
C - - - - - 0x018691 06:8681: F0 17     BEQ bra_869A_RTS
C - - - - - 0x018693 06:8683: A9 00     LDA #$00
C - - - - - 0x018695 06:8685: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x018698 06:8688: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x01869B 06:868B: BD B8 07  LDA ram_07B8_obj,X
C - - - - - 0x01869E 06:868E: D0 0A     BNE bra_869A_RTS
C - - - - - 0x0186A0 06:8690: BD 60 07  LDA ram_obj_anim_cnt,X
C - - - - - 0x0186A3 06:8693: C9 02     CMP #$02
C - - - - - 0x0186A5 06:8695: 90 03     BCC bra_869A_RTS
C - - - - - 0x0186A7 06:8697: 4C 9B 86  JMP loc_869B
bra_869A_RTS:
C - - - - - 0x0186AA 06:869A: 60        RTS



loc_869B:
C D 0 - - - 0x0186AB 06:869B: AD B9 03  LDA ram_03B9
C - - - - - 0x0186AE 06:869E: D0 17     BNE bra_86B7_RTS
C - - - - - 0x0186B0 06:86A0: 8E B9 03  STX ram_03B9
C - - - - - 0x0186B3 06:86A3: A9 00     LDA #$00
C - - - - - 0x0186B5 06:86A5: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0186B8 06:86A8: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x0186BB 06:86AB: C9 02     CMP #$02
C - - - - - 0x0186BD 06:86AD: D0 08     BNE bra_86B7_RTS
C - - - - - 0x0186BF 06:86AF: AD B9 03  LDA ram_03B9
C - - - - - 0x0186C2 06:86B2: 09 80     ORA #$80
C - - - - - 0x0186C4 06:86B4: 8D B9 03  STA ram_03B9
bra_86B7_RTS:
C - - - - - 0x0186C7 06:86B7: 60        RTS



sub_86B8:
C - - - - - 0x0186C8 06:86B8: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x0186CB 06:86BB: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0186CE 06:86BE: C9 80     CMP #$80
C - - - - - 0x0186D0 06:86C0: 90 1F     BCC bra_86E1_RTS
C - - - - - 0x0186D2 06:86C2: A9 F8     LDA #$F8
C - - - - - 0x0186D4 06:86C4: 20 0D 8A  JSR sub_8A0D
C - - - - - 0x0186D7 06:86C7: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x0186DA 06:86CA: C9 01     CMP #$01
C - - - - - 0x0186DC 06:86CC: D0 13     BNE bra_86E1_RTS
C - - - - - 0x0186DE 06:86CE: 20 BA 89  JSR sub_89BA_clear_Y_speed
; C = 1?
C - - - - - 0x0186E1 06:86D1: A5 06     LDA ram_0006_temp
C - - - - - 0x0186E3 06:86D3: 29 F0     AND #$F0
C - - - - - 0x0186E5 06:86D5: 69 18     ADC #< $0018
C - - - - - 0x0186E7 06:86D7: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0186EA 06:86DA: A5 07     LDA ram_0007_temp
C - - - - - 0x0186EC 06:86DC: 69 00     ADC #> $0018
C - - - - - 0x0186EE 06:86DE: 9D 9A 06  STA ram_obj_pos_Y_hi,X
bra_86E1_RTS:
C - - - - - 0x0186F1 06:86E1: 60        RTS



sub_86E2:
C - - - - - 0x0186F2 06:86E2: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x0186F5 06:86E5: 1D C6 06  ORA ram_obj_spd_X_lo,X
C - - - - - 0x0186F8 06:86E8: F0 1F     BEQ bra_8709_RTS
C - - - - - 0x0186FA 06:86EA: A9 FD     LDA #$FD
C - - - - - 0x0186FC 06:86EC: 20 0D 8A  JSR sub_8A0D
C - - - - - 0x0186FF 06:86EF: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x018702 06:86F2: 30 0B     BMI bra_86FF
C - - - - - 0x018704 06:86F4: A9 04     LDA #$04
C - - - - - 0x018706 06:86F6: 20 E3 89  JSR sub_89E3
C - - - - - 0x018709 06:86F9: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x01870C 06:86FC: D0 0C     BNE bra_870A
C - - - - - 0x01870E 06:86FE: 60        RTS
bra_86FF:
C - - - - - 0x01870F 06:86FF: A9 FC     LDA #$FC
C - - - - - 0x018711 06:8701: 20 F1 89  JSR sub_89F1
C - - - - - 0x018714 06:8704: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x018717 06:8707: D0 01     BNE bra_870A
bra_8709_RTS:
C - - - - - 0x018719 06:8709: 60        RTS
bra_870A:
C - - - - - 0x01871A 06:870A: 4A        LSR
C - - - - - 0x01871B 06:870B: C9 02     CMP #$02
C - - - - - 0x01871D 06:870D: F0 FA     BEQ bra_8709_RTS
C - - - - - 0x01871F 06:870F: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x018722 06:8712: 49 FF     EOR #$FF
C - - - - - 0x018724 06:8714: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018727 06:8717: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01872A 06:871A: 49 FF     EOR #$FF
C - - - - - 0x01872C 06:871C: 18        CLC
C - - - - - 0x01872D 06:871D: 69 01     ADC #< $0001
C - - - - - 0x01872F 06:871F: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x018732 06:8722: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x018735 06:8725: 69 00     ADC #> $0001
C - - - - - 0x018737 06:8727: C9 80     CMP #$80
C - - - - - 0x018739 06:8729: 6A        ROR
C - - - - - 0x01873A 06:872A: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01873D 06:872D: 7E B0 06  ROR ram_obj_spd_X_fr,X
C - - - - - 0x018740 06:8730: 60        RTS



ofs_005_0D_8731_02:
C - - J - - 0x018741 06:8731: A9 07     LDA #$07
C - - - - - 0x018743 06:8733: 85 3C     STA ram_003C
C - - - - - 0x018745 06:8735: A9 40     LDA #$40
C - - - - - 0x018747 06:8737: 20 17 89  JSR sub_8917_add_spd_Y
loc_873A:
C D 0 - - - 0x01874A 06:873A: 20 A9 87  JSR sub_87A9
C - - - - - 0x01874D 06:873D: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x018750 06:8740: 20 CF 87  JSR sub_87CF
C - - - - - 0x018753 06:8743: 20 B8 86  JSR sub_86B8
C - - - - - 0x018756 06:8746: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018759 06:8749: 10 03     BPL bra_874E
C - - - - - 0x01875B 06:874B: 4C 30 85  JMP loc_8530
bra_874E:
C - - - - - 0x01875E 06:874E: A9 08     LDA #$08
C - - - - - 0x018760 06:8750: 20 FF 89  JSR sub_89FF
C - - - - - 0x018763 06:8753: C9 02     CMP #$02
C - - - - - 0x018765 06:8755: F0 72     BEQ bra_87C9
C - - - - - 0x018767 06:8757: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x01876A 06:875A: D0 03     BNE bra_875F
C - - - - - 0x01876C 06:875C: 4C 30 85  JMP loc_8530
bra_875F:
C - - - - - 0x01876F 06:875F: 4A        LSR
C - - - - - 0x018770 06:8760: C9 02     CMP #$02
C - - - - - 0x018772 06:8762: F0 1D     BEQ bra_8781
C - - - - - 0x018774 06:8764: A9 00     LDA #$00
C - - - - - 0x018776 06:8766: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x018779 06:8769: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01877C 06:876C: 29 F0     AND #$F0
C - - - - - 0x01877E 06:876E: 09 08     ORA #$08
C - - - - - 0x018780 06:8770: 9D 84 06  STA ram_obj_pos_Y_lo,X
loc_8773:
C D 0 - - - 0x018783 06:8773: A9 01     LDA #$01
C - - - - - 0x018785 06:8775: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018788 06:8778: 20 BA 89  JSR sub_89BA_clear_Y_speed
C - - - - - 0x01878B 06:877B: 20 B1 89  JSR sub_89B1_clear_X_speed
C - - - - - 0x01878E 06:877E: 4C 30 85  JMP loc_8530
bra_8781:
C - - - - - 0x018791 06:8781: A5 06     LDA ram_0006_temp
C - - - - - 0x018793 06:8783: 29 08     AND #$08
C - - - - - 0x018795 06:8785: D0 03     BNE bra_878A
C - - - - - 0x018797 06:8787: 4C 30 85  JMP loc_8530
bra_878A:
C - - - - - 0x01879A 06:878A: A9 00     LDA #$00
C - - - - - 0x01879C 06:878C: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01879F 06:878F: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0187A2 06:8792: 29 F0     AND #$F0
C - - - - - 0x0187A4 06:8794: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0187A7 06:8797: 4C 73 87  JMP loc_8773



ofs_005_0D_879A_03:
C - - J - - 0x0187AA 06:879A: A9 04     LDA #$04
C - - - - - 0x0187AC 06:879C: 85 3C     STA ram_003C
C - - - - - 0x0187AE 06:879E: A9 20     LDA #$20
C - - - - - 0x0187B0 06:87A0: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x0187B3 06:87A3: 4C 3A 87  JMP loc_873A



ofs_005_0D_87A6_01:
C - - J - - 0x0187B6 06:87A6: 20 30 85  JSR sub_8530
sub_87A9:
C - - - - - 0x0187B9 06:87A9: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x0187BC 06:87AC: 1D A2 07  ORA ram_07A2_obj,X
C - - - - - 0x0187BF 06:87AF: F0 17     BEQ bra_87C8_RTS
C - - - - - 0x0187C1 06:87B1: A9 00     LDA #$00
C - - - - - 0x0187C3 06:87B3: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x0187C6 06:87B6: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x0187C9 06:87B9: BD B8 07  LDA ram_07B8_obj,X
C - - - - - 0x0187CC 06:87BC: D0 0A     BNE bra_87C8_RTS
C - - - - - 0x0187CE 06:87BE: BD 60 07  LDA ram_obj_anim_cnt,X
C - - - - - 0x0187D1 06:87C1: C9 02     CMP #$02
C - - - - - 0x0187D3 06:87C3: 90 03     BCC bra_87C8_RTS
C - - - - - 0x0187D5 06:87C5: 4C 00 88  JMP loc_8800_pick_up_milk
bra_87C8_RTS:
C - - - - - 0x0187D8 06:87C8: 60        RTS
bra_87C9:
C - - - - - 0x0187D9 06:87C9: A9 00     LDA #$00
C - - - - - 0x0187DB 06:87CB: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0187DE 06:87CE: 60        RTS



sub_87CF:
C - - - - - 0x0187DF 06:87CF: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x0187E2 06:87D2: 1D C6 06  ORA ram_obj_spd_X_lo,X
C - - - - - 0x0187E5 06:87D5: F0 1F     BEQ bra_87F6_RTS
C - - - - - 0x0187E7 06:87D7: A9 08     LDA #$08
C - - - - - 0x0187E9 06:87D9: 20 FF 89  JSR sub_89FF
C - - - - - 0x0187EC 06:87DC: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x0187EF 06:87DF: 30 0B     BMI bra_87EC
C - - - - - 0x0187F1 06:87E1: A9 04     LDA #$04
C - - - - - 0x0187F3 06:87E3: 20 E3 89  JSR sub_89E3
C - - - - - 0x0187F6 06:87E6: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x0187F9 06:87E9: D0 0C     BNE bra_87F7
C - - - - - 0x0187FB 06:87EB: 60        RTS
bra_87EC:
C - - - - - 0x0187FC 06:87EC: A9 FC     LDA #$FC
C - - - - - 0x0187FE 06:87EE: 20 F1 89  JSR sub_89F1
C - - - - - 0x018801 06:87F1: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x018804 06:87F4: D0 01     BNE bra_87F7
bra_87F6_RTS:
C - - - - - 0x018806 06:87F6: 60        RTS
bra_87F7:
C - - - - - 0x018807 06:87F7: A9 00     LDA #$00
C - - - - - 0x018809 06:87F9: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01880C 06:87FC: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01880F 06:87FF: 60        RTS



loc_8800_pick_up_milk:
C D 0 - - - 0x018810 06:8800: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x018813 06:8803: F0 1A     BEQ bra_881F
C - - - - - 0x018815 06:8805: A9 96     LDA #$96
C - - - - - 0x018817 06:8807: 8D C1 03  STA ram_03C1_weapon_timer_lo
C - - - - - 0x01881A 06:880A: AD C0 03  LDA ram_03C0_weapon_timer_hi
C - - - - - 0x01881D 06:880D: 18        CLC
C - - - - - 0x01881E 06:880E: 69 02     ADC #$02
C - - - - - 0x018820 06:8810: C9 0A     CMP #$0A
C - - - - - 0x018822 06:8812: B0 06     BCS bra_881A
C - - - - - 0x018824 06:8814: 8D C0 03  STA ram_03C0_weapon_timer_hi
C - - - - - 0x018827 06:8817: 4C 1F 88  JMP loc_881F
bra_881A:
C - - - - - 0x01882A 06:881A: A9 0A     LDA #$0A
C - - - - - 0x01882C 06:881C: 8D C0 03  STA ram_03C0_weapon_timer_hi
bra_881F:
loc_881F:
C D 0 - - - 0x01882F 06:881F: A9 16     LDA #con_sfx_16
C - - - - - 0x018831 06:8821: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x018834 06:8824: A9 04     LDA #$04
C - - - - - 0x018836 06:8826: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018839 06:8829: A9 03     LDA #$03
C - - - - - 0x01883B 06:882B: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01883E 06:882E: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x018841 06:8831: A9 0A     LDA #con_add_score_500p
C - - - - - 0x018843 06:8833: 4C C3 DD  JMP loc_0x01DDD3_add_score



ofs_005_0D_8836_04:
ofs_005_0E_8836_04:
C - - J - - 0x018846 06:8836: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x018849 06:8839: 38        SEC
C - - - - - 0x01884A 06:883A: E9 01     SBC #< $0001
C - - - - - 0x01884C 06:883C: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01884F 06:883F: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x018852 06:8842: E9 00     SBC #> $0001
C - - - - - 0x018854 06:8844: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x018857 06:8847: 4C 30 85  JMP loc_8530



ofs_005_0F_884A_03:
C - - J - - 0x01885A 06:884A: DE 1E 07  DEC ram_071E_obj_queue_id,X
C - - - - - 0x01885D 06:884D: F0 2E     BEQ bra_887D
C - - - - - 0x01885F 06:884F: A9 00     LDA #$00
C - - - - - 0x018861 06:8851: 85 01     STA ram_0001_t02_pos_X_hi
C - - - - - 0x018863 06:8853: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x018866 06:8856: 38        SEC
C - - - - - 0x018867 06:8857: E9 3C     SBC #$3C
C - - - - - 0x018869 06:8859: 90 21     BCC bra_887C_RTS
C - - - - - 0x01886B 06:885B: F0 26     BEQ bra_8883
C - - - - - 0x01886D 06:885D: 0A        ASL
; * 04
C - - - - - 0x01886E 06:885E: 0A        ASL
C - - - - - 0x01886F 06:885F: 26 01     ROL ram_0001_t02_pos_X_hi
C - - - - - 0x018871 06:8861: 0A        ASL
C - - - - - 0x018872 06:8862: 26 01     ROL ram_0001_t02_pos_X_hi
; C = 0?
C - - - - - 0x018874 06:8864: 69 6E     ADC #< $006E
C - - - - - 0x018876 06:8866: 85 00     STA ram_0000_t41_pos_X_lo
C - - - - - 0x018878 06:8868: A5 01     LDA ram_0001_t02_pos_X_hi
C - - - - - 0x01887A 06:886A: 69 00     ADC #> $006E
C - - - - - 0x01887C 06:886C: 85 01     STA ram_0001_t02_pos_X_hi
C - - - - - 0x01887E 06:886E: A5 B9     LDA ram_cam_pos_X_lo
C - - - - - 0x018880 06:8870: 65 00     ADC ram_0000_t41_pos_X_lo
C - - - - - 0x018882 06:8872: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018885 06:8875: A5 B7     LDA ram_cam_pos_X_hi
C - - - - - 0x018887 06:8877: 65 01     ADC ram_0001_t02_pos_X_hi
C - - - - - 0x018889 06:8879: 9D 58 06  STA ram_obj_pos_X_hi,X
bra_887C_RTS:
C - - - - - 0x01888C 06:887C: 60        RTS
bra_887D:
C - - - - - 0x01888D 06:887D: A9 00     LDA #$00
C - - - - - 0x01888F 06:887F: 8D FA 03  STA ram_03FA
C - - - - - 0x018892 06:8882: 60        RTS
bra_8883:
C - - - - - 0x018893 06:8883: A9 80     LDA #con_mus_cfg_80
C - - - - - 0x018895 06:8885: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x018898 06:8888: A9 09     LDA #con_sfx_09
C - - - - - 0x01889A 06:888A: 20 1A FF  JSR sub_0x01FF2A_play_sound
; C = 0?
C - - - - - 0x01889D 06:888D: A5 B9     LDA ram_cam_pos_X_lo
C - - - - - 0x01889F 06:888F: 69 6E     ADC #< $006E
C - - - - - 0x0188A1 06:8891: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x0188A4 06:8894: A5 B7     LDA ram_cam_pos_X_hi
C - - - - - 0x0188A6 06:8896: 69 00     ADC #> $006E
C - - - - - 0x0188A8 06:8898: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0188AB 06:889B: 60        RTS



ofs_005_03_889C_01:
C - - J - - 0x0188AC 06:889C: 20 02 89  JSR sub_8902
C - - - - - 0x0188AF 06:889F: C9 98     CMP #$98
C - - - - - 0x0188B1 06:88A1: F0 26     BEQ bra_88C9
C - - - - - 0x0188B3 06:88A3: C9 60     CMP #$60
C - - - - - 0x0188B5 06:88A5: D0 12     BNE bra_88B9
C - - - - - 0x0188B7 06:88A7: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x0188BA 06:88AA: F0 0D     BEQ bra_88B9
C - - - - - 0x0188BC 06:88AC: A9 0C     LDA #con_sfx_0C
C - - - - - 0x0188BE 06:88AE: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x0188C1 06:88B1: A9 05     LDA #$05
C - - - - - 0x0188C3 06:88B3: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x0188C6 06:88B6: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_88B9:
C - - - - - 0x0188C9 06:88B9: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x0188CC 06:88BC: 29 08     AND #con_0776_08
C - - - - - 0x0188CE 06:88BE: F0 08     BEQ bra_88C8_RTS
- - - - - - 0x0188D0 06:88C0: 20 F4 CD  JSR sub_0x01CE04
- - - - - - 0x0188D3 06:88C3: A9 01     LDA #$01
- - - - - - 0x0188D5 06:88C5: 9D 16 06  STA ram_0616_obj,X
bra_88C8_RTS:
C - - - - - 0x0188D8 06:88C8: 60        RTS
bra_88C9:
C - - - - - 0x0188D9 06:88C9: A9 F9     LDA #$F9
C - - - - - 0x0188DB 06:88CB: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0188DE 06:88CE: A9 03     LDA #$03    ; jumping at felix world screen
C - - - - - 0x0188E0 06:88D0: 8D C2 03  STA ram_03C2_felix_state
C - - - - - 0x0188E3 06:88D3: 20 F4 CD  JSR sub_0x01CE04
; felix jumps at "felix world" screen
C - - - - - 0x0188E6 06:88D6: A9 02     LDA #$02
C - - - - - 0x0188E8 06:88D8: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0188EB 06:88DB: A9 0A     LDA #con_sfx_0A
C - - - - - 0x0188ED 06:88DD: 4C 1A FF  JMP loc_0x01FF2A_play_sound



ofs_005_03_88E0_02:
C - - J - - 0x0188F0 06:88E0: A9 32     LDA #$32
C - - - - - 0x0188F2 06:88E2: 85 3C     STA ram_003C
C - - - - - 0x0188F4 06:88E4: A9 38     LDA #$38
C - - - - - 0x0188F6 06:88E6: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x0188F9 06:88E9: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x0188FC 06:88EC: 20 02 89  JSR sub_8902
C - - - - - 0x0188FF 06:88EF: 1D 58 06  ORA ram_obj_pos_X_hi,X
C - - - - - 0x018902 06:88F2: C9 21     CMP #$21
C - - - - - 0x018904 06:88F4: F0 01     BEQ bra_88F7
C - - - - - 0x018906 06:88F6: 60        RTS
bra_88F7:
ofs_005_03_88F7_03:
C - - - - - 0x018907 06:88F7: A9 03     LDA #$03
C - - - - - 0x018909 06:88F9: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01890C 06:88FC: A9 01     LDA #$01
C - - - - - 0x01890E 06:88FE: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x018911 06:8901: 60        RTS



sub_8902:
C - - - - - 0x018912 06:8902: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018915 06:8905: 18        CLC
C - - - - - 0x018916 06:8906: 69 02     ADC #< $0002
C - - - - - 0x018918 06:8908: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01891B 06:890B: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01891E 06:890E: 69 00     ADC #> $0002
C - - - - - 0x018920 06:8910: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018923 06:8913: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018926 06:8916: 60        RTS



sub_8917_add_spd_Y:
loc_8917_add_spd_Y:
sub_0x018927_add_spd_Y:
; in
    ; A = 
    ; ram_003C = 
C D 0 - - - 0x018927 06:8917: 18        CLC
C - - - - - 0x018928 06:8918: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x01892B 06:891B: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01892E 06:891E: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018931 06:8921: 69 00     ADC #$00
C - - - - - 0x018933 06:8923: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018936 06:8926: 30 0E     BMI bra_8936_RTS
C - - - - - 0x018938 06:8928: C5 3C     CMP ram_003C
C - - - - - 0x01893A 06:892A: 90 0A     BCC bra_8936_RTS
C - - - - - 0x01893C 06:892C: A9 00     LDA #$00
C - - - - - 0x01893E 06:892E: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x018941 06:8931: A5 3C     LDA ram_003C
C - - - - - 0x018943 06:8933: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_8936_RTS:
C - - - - - 0x018946 06:8936: 60        RTS



sub_8937_move_obj_Y_axis:
loc_8937_move_obj_Y_axis:
sub_0x018947_move_obj_Y_axis:
loc_0x018947_move_obj_Y_axis:
C D 0 - - - 0x018947 06:8937: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01894A 06:893A: 30 1C     BMI bra_8958
C - - - - - 0x01894C 06:893C: BD 6E 06  LDA ram_obj_pos_Y_fr,X
C - - - - - 0x01894F 06:893F: 18        CLC
C - - - - - 0x018950 06:8940: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x018953 06:8943: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x018956 06:8946: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x018959 06:8949: 7D F2 06  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x01895C 06:894C: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01895F 06:894F: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x018962 06:8952: 69 00     ADC #$00
C - - - - - 0x018964 06:8954: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x018967 06:8957: 60        RTS
bra_8958:
C - - - - - 0x018968 06:8958: BD 6E 06  LDA ram_obj_pos_Y_fr,X
C - - - - - 0x01896B 06:895B: 18        CLC
C - - - - - 0x01896C 06:895C: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x01896F 06:895F: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x018972 06:8962: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x018975 06:8965: 7D F2 06  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x018978 06:8968: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01897B 06:896B: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01897E 06:896E: 69 FF     ADC #$FF
C - - - - - 0x018980 06:8970: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x018983 06:8973: 60        RTS



sub_8974_move_obj_X_axis:
loc_8974_move_obj_X_axis:
C D 0 - - - 0x018984 06:8974: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x018987 06:8977: 30 1C     BMI bra_8995
C - - - - - 0x018989 06:8979: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x01898C 06:897C: 18        CLC
C - - - - - 0x01898D 06:897D: 7D B0 06  ADC ram_obj_spd_X_fr,X
C - - - - - 0x018990 06:8980: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x018993 06:8983: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018996 06:8986: 7D C6 06  ADC ram_obj_spd_X_lo,X
C - - - - - 0x018999 06:8989: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01899C 06:898C: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01899F 06:898F: 69 00     ADC #$00
C - - - - - 0x0189A1 06:8991: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0189A4 06:8994: 60        RTS
bra_8995:
C - - - - - 0x0189A5 06:8995: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x0189A8 06:8998: 18        CLC
C - - - - - 0x0189A9 06:8999: 7D B0 06  ADC ram_obj_spd_X_fr,X
C - - - - - 0x0189AC 06:899C: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x0189AF 06:899F: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0189B2 06:89A2: 7D C6 06  ADC ram_obj_spd_X_lo,X
C - - - - - 0x0189B5 06:89A5: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x0189B8 06:89A8: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0189BB 06:89AB: 69 FF     ADC #$FF
C - - - - - 0x0189BD 06:89AD: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0189C0 06:89B0: 60        RTS



sub_89B1_clear_X_speed:
C - - - - - 0x0189C1 06:89B1: A9 00     LDA #$00
C - - - - - 0x0189C3 06:89B3: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x0189C6 06:89B6: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x0189C9 06:89B9: 60        RTS



sub_89BA_clear_Y_speed:
loc_89BA_clear_Y_speed:
C D 0 - - - 0x0189CA 06:89BA: A9 00     LDA #$00
C - - - - - 0x0189CC 06:89BC: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0189CF 06:89BF: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0189D2 06:89C2: 60        RTS



loc_89C3_move_obj_X_axis_right:
sub_89C3_move_obj_X_axis_right:
C D 0 - - - 0x0189D3 06:89C3: 18        CLC
C - - - - - 0x0189D4 06:89C4: 7D 42 06  ADC ram_obj_pos_X_lo,X
C - - - - - 0x0189D7 06:89C7: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x0189DA 06:89CA: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0189DD 06:89CD: 69 00     ADC #$00
C - - - - - 0x0189DF 06:89CF: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0189E2 06:89D2: 60        RTS



sub_89D3_move_obj_X_axis_left:
loc_89D3_move_obj_X_axis_left:
C D 0 - - - 0x0189E3 06:89D3: 18        CLC
C - - - - - 0x0189E4 06:89D4: 7D 42 06  ADC ram_obj_pos_X_lo,X
C - - - - - 0x0189E7 06:89D7: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x0189EA 06:89DA: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0189ED 06:89DD: 69 FF     ADC #$FF
C - - - - - 0x0189EF 06:89DF: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0189F2 06:89E2: 60        RTS



sub_89E3:
C - - - - - 0x0189F3 06:89E3: 18        CLC
C - - - - - 0x0189F4 06:89E4: 7D 42 06  ADC ram_obj_pos_X_lo,X
C - - - - - 0x0189F7 06:89E7: 85 04     STA ram_0004_temp
C - - - - - 0x0189F9 06:89E9: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0189FC 06:89EC: 69 00     ADC #$00
C - - - - - 0x0189FE 06:89EE: 85 05     STA ram_0005_temp
C - - - - - 0x018A00 06:89F0: 60        RTS



sub_89F1:
C - - - - - 0x018A01 06:89F1: 18        CLC
C - - - - - 0x018A02 06:89F2: 7D 42 06  ADC ram_obj_pos_X_lo,X
C - - - - - 0x018A05 06:89F5: 85 04     STA ram_0004_temp
C - - - - - 0x018A07 06:89F7: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x018A0A 06:89FA: 69 FF     ADC #$FF
C - - - - - 0x018A0C 06:89FC: 85 05     STA ram_0005_temp
C - - - - - 0x018A0E 06:89FE: 60        RTS



sub_89FF:
C - - - - - 0x018A0F 06:89FF: 18        CLC
C - - - - - 0x018A10 06:8A00: 7D 84 06  ADC ram_obj_pos_Y_lo,X
C - - - - - 0x018A13 06:8A03: 85 06     STA ram_0006_temp
C - - - - - 0x018A15 06:8A05: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x018A18 06:8A08: 69 00     ADC #$00
C - - - - - 0x018A1A 06:8A0A: 85 07     STA ram_0007_temp
C - - - - - 0x018A1C 06:8A0C: 60        RTS



sub_8A0D:
C - - - - - 0x018A1D 06:8A0D: 18        CLC
C - - - - - 0x018A1E 06:8A0E: 7D 84 06  ADC ram_obj_pos_Y_lo,X
C - - - - - 0x018A21 06:8A11: 85 06     STA ram_0006_temp
C - - - - - 0x018A23 06:8A13: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x018A26 06:8A16: 69 FF     ADC #$FF
C - - - - - 0x018A28 06:8A18: 85 07     STA ram_0007_temp
C - - - - - 0x018A2A 06:8A1A: 60        RTS



ofs_005_01_8A1B_0C:
C - - J - - 0x018A2B 06:8A1B: A9 3C     LDA #$3C
C - - - - - 0x018A2D 06:8A1D: 8D 2A 04  STA ram_042A
C - - - - - 0x018A30 06:8A20: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x018A33 06:8A23: F0 53     BEQ bra_8A78
C - - - - - 0x018A35 06:8A25: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x018A38 06:8A28: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x018A3B 06:8A2B: BC B8 07  LDY ram_07B8_obj,X
C - - - - - 0x018A3E 06:8A2E: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x018A40 06:8A30: 29 0F     AND #$0F
C - - - - - 0x018A42 06:8A32: D0 0A     BNE bra_8A3E
C - - - - - 0x018A44 06:8A34: C0 06     CPY #$06
C - - - - - 0x018A46 06:8A36: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x018A49 06:8A39: 69 00     ADC #$00
C - - - - - 0x018A4B 06:8A3B: 9D DC 06  STA ram_obj_spd_Y_fr,X
bra_8A3E:
C - - - - - 0x018A4E 06:8A3E: B9 A5 8A  LDA tbl_8AA5,Y
C - - - - - 0x018A51 06:8A41: C8        INY
C - - - - - 0x018A52 06:8A42: 18        CLC
C - - - - - 0x018A53 06:8A43: 7D B0 06  ADC ram_obj_spd_X_fr,X
C - - - - - 0x018A56 06:8A46: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x018A59 06:8A49: B9 A5 8A  LDA tbl_8AA5,Y
C - - - - - 0x018A5C 06:8A4C: 7D C6 06  ADC ram_obj_spd_X_lo,X
C - - - - - 0x018A5F 06:8A4F: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018A62 06:8A52: DE CE 07  DEC ram_07CE_obj_hp,X
C - - - - - 0x018A65 06:8A55: D0 20     BNE bra_8A77_RTS
C - - - - - 0x018A67 06:8A57: C8        INY
C - - - - - 0x018A68 06:8A58: B9 A5 8A  LDA tbl_8AA5,Y
C - - - - - 0x018A6B 06:8A5B: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x018A6E 06:8A5E: C8        INY
C - - - - - 0x018A6F 06:8A5F: 98        TYA
C - - - - - 0x018A70 06:8A60: 9D B8 07  STA ram_07B8_obj,X
C - - - - - 0x018A73 06:8A63: C0 06     CPY #$06
C - - - - - 0x018A75 06:8A65: D0 10     BNE bra_8A77_RTS
C - - - - - 0x018A77 06:8A67: A9 FF     LDA #> $FFB0
C - - - - - 0x018A79 06:8A69: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018A7C 06:8A6C: A9 B0     LDA #< $FFB0
C - - - - - 0x018A7E 06:8A6E: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x018A81 06:8A71: FE 34 07  INC ram_0734_obj,X
; bzk optimize, JMP
C - - - - - 0x018A84 06:8A74: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_8A77_RTS:
C - - - - - 0x018A87 06:8A77: 60        RTS
bra_8A78:
C - - - - - 0x018A88 06:8A78: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018A8B 06:8A7B: 29 08     AND #con_0776_08
C - - - - - 0x018A8D 06:8A7D: F0 F8     BEQ bra_8A77_RTS
C - - - - - 0x018A8F 06:8A7F: A9 70     LDA #$70
C - - - - - 0x018A91 06:8A81: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018A94 06:8A84: A9 60     LDA #$60
C - - - - - 0x018A96 06:8A86: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x018A99 06:8A89: FE 16 06  INC ram_0616_obj,X
C - - - - - 0x018A9C 06:8A8C: FE 34 07  INC ram_0734_obj,X
C - - - - - 0x018A9F 06:8A8F: 4C C8 E1  JMP loc_0x01E1D8_initialize_animation



ofs_005_01_8A92_0D:
C - - J - - 0x018AA2 06:8A92: AD 2B 04  LDA ram_042B
C - - - - - 0x018AA5 06:8A95: F0 0D     BEQ bra_8AA4_RTS
C - - - - - 0x018AA7 06:8A97: CE 2A 04  DEC ram_042A
C - - - - - 0x018AAA 06:8A9A: D0 08     BNE bra_8AA4_RTS
C - - - - - 0x018AAC 06:8A9C: A9 3C     LDA #$3C
C - - - - - 0x018AAE 06:8A9E: 8D 2A 04  STA ram_042A
C - - - - - 0x018AB1 06:8AA1: CE 2B 04  DEC ram_042B
bra_8AA4_RTS:
C - - - - - 0x018AB4 06:8AA4: 60        RTS



tbl_8AA5:
; ??? скорость
- D 0 - - - 0x018AB5 06:8AA5: 0A        .byte $0A   ; 
- D 0 - - - 0x018AB6 06:8AA6: 00        .byte $00   ; 
- D 0 - - - 0x018AB7 06:8AA7: 28        .byte $28   ; 
- D 0 - - - 0x018AB8 06:8AA8: 00        .byte $00   ; 
- D 0 - - - 0x018AB9 06:8AA9: 00        .byte $00   ; 
- D 0 - - - 0x018ABA 06:8AAA: 34        .byte $34   ; 
- D 0 - - - 0x018ABB 06:8AAB: F4        .byte $F4   ; 
- D 0 - - - 0x018ABC 06:8AAC: FF        .byte $FF   ; 
- D 0 - - - 0x018ABD 06:8AAD: 78        .byte $78   ; 
- D 0 - - - 0x018ABE 06:8AAE: 0C        .byte $0C   ; 
- D 0 - - - 0x018ABF 06:8AAF: 00        .byte $00   ; 
- D 0 - - - 0x018AC0 06:8AB0: 64        .byte $64   ; 
- D 0 - - - 0x018AC1 06:8AB1: F0        .byte $F0   ; 
- D 0 - - - 0x018AC2 06:8AB2: FF        .byte $FF   ; 
- D 0 - - - 0x018AC3 06:8AB3: 5A        .byte $5A   ; 
- D 0 - - - 0x018AC4 06:8AB4: 0E        .byte $0E   ; 
- D 0 - - - 0x018AC5 06:8AB5: 00        .byte $00   ; 
- D 0 - - - 0x018AC6 06:8AB6: 5E        .byte $5E   ; 
- D 0 - - - 0x018AC7 06:8AB7: F6        .byte $F6   ; 
- D 0 - - - 0x018AC8 06:8AB8: FF        .byte $FF   ; 
- D 0 - - - 0x018AC9 06:8AB9: 00        .byte $00   ; 



bra_8ABA_RTS:
C - - - - - 0x018ACA 06:8ABA: 60        RTS



sub_0x018ACB_object_handler:
C - - - - - 0x018ACB 06:8ABB: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x018ACE 06:8ABE: F0 FA     BEQ bra_8ABA_RTS
C - - - - - 0x018AD0 06:8AC0: B9 00 06  LDA ram_0600_obj_id,Y
C - - - - - 0x018AD3 06:8AC3: F0 0B     BEQ bra_8AD0
C - - - - - 0x018AD5 06:8AC5: C9 0C     CMP #con_obj_id_0C
C - - - - - 0x018AD7 06:8AC7: D0 F1     BNE bra_8ABA_RTS
C - - - - - 0x018AD9 06:8AC9: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x018ADC 06:8ACC: C9 08     CMP #$08
C - - - - - 0x018ADE 06:8ACE: B0 EA     BCS bra_8ABA_RTS
bra_8AD0:
C - - - - - 0x018AE0 06:8AD0: C0 00     CPY #$00
C - - - - - 0x018AE2 06:8AD2: F0 07     BEQ bra_8ADB
C - - - - - 0x018AE4 06:8AD4: B9 1E 07  LDA ram_071E_obj_queue_id,Y
C - - - - - 0x018AE7 06:8AD7: C9 10     CMP #$10
C - - - - - 0x018AE9 06:8AD9: 90 DF     BCC bra_8ABA_RTS
bra_8ADB:
C - - - - - 0x018AEB 06:8ADB: A2 06     LDX #$06
loc_8ADD_loop:
C D 0 - - - 0x018AED 06:8ADD: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x018AF0 06:8AE0: D0 03     BNE bra_8AE5
C - - - - - 0x018AF2 06:8AE2: 4C 06 8C  JMP loc_8C06_next
bra_8AE5:
C - - - - - 0x018AF5 06:8AE5: C0 00     CPY #$00
C - - - - - 0x018AF7 06:8AE7: F0 0A     BEQ bra_8AF3
C - - - - - 0x018AF9 06:8AE9: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x018AFC 06:8AEC: 29 08     AND #con_0708_08
C - - - - - 0x018AFE 06:8AEE: F0 03     BEQ bra_8AF3
C - - - - - 0x018B00 06:8AF0: 4C 06 8C  JMP loc_8C06_next
bra_8AF3:
C - - - - - 0x018B03 06:8AF3: A9 00     LDA #$00
C - - - - - 0x018B05 06:8AF5: 85 3D     STA ram_003D
C - - - - - 0x018B07 06:8AF7: 85 3E     STA ram_003E
C - - - - - 0x018B09 06:8AF9: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018B0C 06:8AFC: 38        SEC
C - - - - - 0x018B0D 06:8AFD: F9 42 06  SBC ram_obj_pos_X_lo,Y
C - - - - - 0x018B10 06:8B00: 85 00     STA ram_0000_t67_pos_X_lo_distance
C - - - - - 0x018B12 06:8B02: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x018B15 06:8B05: F9 58 06  SBC ram_obj_pos_X_hi,Y
C - - - - - 0x018B18 06:8B08: F0 18     BEQ bra_8B22
C - - - - - 0x018B1A 06:8B0A: 49 7F     EOR #$7F
C - - - - - 0x018B1C 06:8B0C: 30 03     BMI bra_8B11
C - - - - - 0x018B1E 06:8B0E: 4C 06 8C  JMP loc_8C06_next
bra_8B11:
C - - - - - 0x018B21 06:8B11: 85 3D     STA ram_003D
C - - - - - 0x018B23 06:8B13: 0A        ASL
C - - - - - 0x018B24 06:8B14: F0 03     BEQ bra_8B19
C - - - - - 0x018B26 06:8B16: 4C 06 8C  JMP loc_8C06_next
bra_8B19:
C - - - - - 0x018B29 06:8B19: E5 00     SBC ram_0000_t67_pos_X_lo_distance
C - - - - - 0x018B2B 06:8B1B: D0 03     BNE bra_8B20
C - - - - - 0x018B2D 06:8B1D: 4C 06 8C  JMP loc_8C06_next
bra_8B20:
C - - - - - 0x018B30 06:8B20: 85 00     STA ram_0000_t67_pos_X_lo_distance
bra_8B22:
C - - - - - 0x018B32 06:8B22: BD 00 06  LDA ram_0600_obj_id,X
; * 04
C - - - - - 0x018B35 06:8B25: 0A        ASL
C - - - - - 0x018B36 06:8B26: 0A        ASL
C - - - - - 0x018B37 06:8B27: 84 01     STY ram_0001_t13
C - - - - - 0x018B39 06:8B29: A8        TAY
C - - - - - 0x018B3A 06:8B2A: C8        INY
C - - - - - 0x018B3B 06:8B2B: B9 2C A8  LDA tbl_A82C_object_handler,Y
C - - - - - 0x018B3E 06:8B2E: A4 01     LDY ram_0001_t13
C - - - - - 0x018B40 06:8B30: 18        CLC
C - - - - - 0x018B41 06:8B31: 79 15 04  ADC ram_0415,Y
C - - - - - 0x018B44 06:8B34: 38        SEC
C - - - - - 0x018B45 06:8B35: E5 00     SBC ram_0000_t67_pos_X_lo_distance
C - - - - - 0x018B47 06:8B37: B0 03     BCS bra_8B3C
C - - - - - 0x018B49 06:8B39: 4C 06 8C  JMP loc_8C06_next
bra_8B3C:
C - - - - - 0x018B4C 06:8B3C: D0 03     BNE bra_8B41
C - - - - - 0x018B4E 06:8B3E: 4C 06 8C  JMP loc_8C06_next
bra_8B41:
C - - - - - 0x018B51 06:8B41: 05 3D     ORA ram_003D
C - - - - - 0x018B53 06:8B43: 85 3E     STA ram_003E
C - - - - - 0x018B55 06:8B45: A9 00     LDA #$00
C - - - - - 0x018B57 06:8B47: 85 3D     STA ram_003D
C - - - - - 0x018B59 06:8B49: 85 3F     STA ram_003F
C - - - - - 0x018B5B 06:8B4B: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x018B5E 06:8B4E: 38        SEC
C - - - - - 0x018B5F 06:8B4F: F9 84 06  SBC ram_obj_pos_Y_lo,Y
C - - - - - 0x018B62 06:8B52: 85 00     STA ram_0000_t68_pos_Y_lo_distance
C - - - - - 0x018B64 06:8B54: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x018B67 06:8B57: F9 9A 06  SBC ram_obj_pos_Y_hi,Y
C - - - - - 0x018B6A 06:8B5A: F0 18     BEQ bra_8B74
C - - - - - 0x018B6C 06:8B5C: 49 7F     EOR #$7F
C - - - - - 0x018B6E 06:8B5E: 30 03     BMI bra_8B63
C - - - - - 0x018B70 06:8B60: 4C 06 8C  JMP loc_8C06_next
bra_8B63:
C - - - - - 0x018B73 06:8B63: 85 3D     STA ram_003D
C - - - - - 0x018B75 06:8B65: 0A        ASL
C - - - - - 0x018B76 06:8B66: F0 03     BEQ bra_8B6B
C - - - - - 0x018B78 06:8B68: 4C 06 8C  JMP loc_8C06_next
bra_8B6B:
C - - - - - 0x018B7B 06:8B6B: E5 00     SBC ram_0000_t68_pos_Y_lo_distance
C - - - - - 0x018B7D 06:8B6D: D0 03     BNE bra_8B72
C - - - - - 0x018B7F 06:8B6F: 4C 06 8C  JMP loc_8C06_next
bra_8B72:
C - - - - - 0x018B82 06:8B72: 85 00     STA ram_0000_t68_pos_Y_lo_distance
bra_8B74:
C - - - - - 0x018B84 06:8B74: BD 00 06  LDA ram_0600_obj_id,X
; * 04
C - - - - - 0x018B87 06:8B77: 0A        ASL
C - - - - - 0x018B88 06:8B78: 0A        ASL
C - - - - - 0x018B89 06:8B79: 84 01     STY ram_0001_t15
C - - - - - 0x018B8B 06:8B7B: A8        TAY
C - - - - - 0x018B8C 06:8B7C: B9 2C A8  LDA tbl_A82C_object_handler,Y
C - - - - - 0x018B8F 06:8B7F: A4 01     LDY ram_0001_t15
C - - - - - 0x018B91 06:8B81: 18        CLC
C - - - - - 0x018B92 06:8B82: 79 19 04  ADC ram_0419,Y
C - - - - - 0x018B95 06:8B85: 38        SEC
C - - - - - 0x018B96 06:8B86: E5 00     SBC ram_0000_t68_pos_Y_lo_distance
C - - - - - 0x018B98 06:8B88: 90 7C     BCC bra_8C06_next
C - - - - - 0x018B9A 06:8B8A: F0 7A     BEQ bra_8C06_next
C - - - - - 0x018B9C 06:8B8C: 05 3D     ORA ram_003D
C - - - - - 0x018B9E 06:8B8E: 85 3F     STA ram_003F
C - - - - - 0x018BA0 06:8B90: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x018BA3 06:8B93: 30 3F     BMI bra_8BD4    ; if con_0708_80
C - - - - - 0x018BA5 06:8B95: 29 40     AND #con_0708_40
C - - - - - 0x018BA7 06:8B97: D0 2A     BNE bra_8BC3
C - - - - - 0x018BA9 06:8B99: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x018BAC 06:8B9C: C9 14     CMP #$14
C - - - - - 0x018BAE 06:8B9E: 90 23     BCC bra_8BC3
C - - - - - 0x018BB0 06:8BA0: C9 19     CMP #$19
C - - - - - 0x018BB2 06:8BA2: B0 1F     BCS bra_8BC3
C - - - - - 0x018BB4 06:8BA4: C0 00     CPY #$00
C - - - - - 0x018BB6 06:8BA6: D0 1B     BNE bra_8BC3
C - - - - - 0x018BB8 06:8BA8: AD C5 03  LDA ram_round_type
C - - - - - 0x018BBB 06:8BAB: 4A        LSR
C - - - - - 0x018BBC 06:8BAC: B0 15     BCS bra_8BC3    ; if aerial/underwater
; if normal/on water/space
C - - - - - 0x018BBE 06:8BAE: AD F2 06  LDA ram_obj_spd_Y_lo
C - - - - - 0x018BC1 06:8BB1: C9 80     CMP #$80
C - - - - - 0x018BC3 06:8BB3: A5 3F     LDA ram_003F
C - - - - - 0x018BC5 06:8BB5: 30 0C     BMI bra_8BC3
C - - - - - 0x018BC7 06:8BB7: B0 06     BCS bra_8BBF
C - - - - - 0x018BC9 06:8BB9: 38        SEC
C - - - - - 0x018BCA 06:8BBA: ED F2 06  SBC ram_obj_spd_Y_lo
C - - - - - 0x018BCD 06:8BBD: 30 2C     BMI bra_8BEB
bra_8BBF:
C - - - - - 0x018BCF 06:8BBF: C9 0A     CMP #$0A
C - - - - - 0x018BD1 06:8BC1: 90 28     BCC bra_8BEB
bra_8BC3:
C - - - - - 0x018BD3 06:8BC3: A5 3E     LDA ram_003E
C - - - - - 0x018BD5 06:8BC5: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x018BD8 06:8BC8: A5 3F     LDA ram_003F
C - - - - - 0x018BDA 06:8BCA: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x018BDD 06:8BCD: 98        TYA
C - - - - - 0x018BDE 06:8BCE: 9D B8 07  STA ram_07B8_obj,X
C - - - - - 0x018BE1 06:8BD1: 4C 06 8C  JMP loc_8C06_next
bra_8BD4:
C - - - - - 0x018BE4 06:8BD4: C0 00     CPY #$00
C - - - - - 0x018BE6 06:8BD6: D0 13     BNE bra_8BEB
C - - - - - 0x018BE8 06:8BD8: AD F2 06  LDA ram_obj_spd_Y_lo
C - - - - - 0x018BEB 06:8BDB: 30 29     BMI bra_8C06_next
C - - - - - 0x018BED 06:8BDD: A5 3F     LDA ram_003F
C - - - - - 0x018BEF 06:8BDF: 30 25     BMI bra_8C06_next
C - - - - - 0x018BF1 06:8BE1: 38        SEC
C - - - - - 0x018BF2 06:8BE2: ED F2 06  SBC ram_obj_spd_Y_lo
C - - - - - 0x018BF5 06:8BE5: 30 04     BMI bra_8BEB
C - - - - - 0x018BF7 06:8BE7: C9 0A     CMP #$0A
C - - - - - 0x018BF9 06:8BE9: B0 1B     BCS bra_8C06_next
bra_8BEB:
C - - - - - 0x018BFB 06:8BEB: A5 3E     LDA ram_003E
C - - - - - 0x018BFD 06:8BED: D9 8C 07  CMP ram_078C_obj,Y
C - - - - - 0x018C00 06:8BF0: 90 14     BCC bra_8C06_next
C - - - - - 0x018C02 06:8BF2: 99 8C 07  STA ram_078C_obj,Y
C - - - - - 0x018C05 06:8BF5: A5 3F     LDA ram_003F
C - - - - - 0x018C07 06:8BF7: 99 A2 07  STA ram_07A2_obj,Y
C - - - - - 0x018C0A 06:8BFA: 8A        TXA
C - - - - - 0x018C0B 06:8BFB: 99 B8 07  STA ram_07B8_obj,Y
C - - - - - 0x018C0E 06:8BFE: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x018C11 06:8C01: 09 10     ORA #con_0708_10
C - - - - - 0x018C13 06:8C03: 9D 08 07  STA ram_0708_obj_flags,X
bra_8C06_next:
loc_8C06_next:
C D 0 - - - 0x018C16 06:8C06: E8        INX
C - - - - - 0x018C17 06:8C07: E0 16     CPX #$16
C - - - - - 0x018C19 06:8C09: B0 03     BCS bra_8C0E_RTS
C - - - - - 0x018C1B 06:8C0B: 4C DD 8A  JMP loc_8ADD_loop
bra_8C0E_RTS:
C - - - - - 0x018C1E 06:8C0E: 60        RTS



_off009_8C0F_0C_felix_weapon:
- D 0 - I - 0x018C1F 06:8C0F: 3B 8C     .word ofs_005_0C_8C3B_01
- D 0 - I - 0x018C21 06:8C11: 21 8D     .word ofs_005_0C_8D21_02
- D 0 - I - 0x018C23 06:8C13: 2C 8D     .word ofs_005_0C_8D2C_03
- D 0 - I - 0x018C25 06:8C15: 32 8D     .word ofs_005_0C_8D32_04
- D 0 - I - 0x018C27 06:8C17: 4D 8D     .word ofs_005_0C_8D4D_05
- D 0 - I - 0x018C29 06:8C19: D3 8E     .word ofs_005_0C_8ED3_06
- D 0 - I - 0x018C2B 06:8C1B: 59 8F     .word ofs_005_0C_8F59_07
- D 0 - I - 0x018C2D 06:8C1D: 3A 8C     .word ofs_005_0C_8C3A_08_RTS
- D 0 - I - 0x018C2F 06:8C1F: 23 8C     .word ofs_005_0C_8C23_09
- D 0 - I - 0x018C31 06:8C21: 2E 8C     .word ofs_005_0C_8C2E_0A



ofs_005_0C_8C23_09:
C - - J - - 0x018C33 06:8C23: A9 12     LDA #$12
C - - - - - 0x018C35 06:8C25: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018C38 06:8C28: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x018C3B 06:8C2B: FE 16 06  INC ram_0616_obj,X
ofs_005_0C_8C2E_0A:
C - - - - - 0x018C3E 06:8C2E: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018C41 06:8C31: 29 08     AND #con_0776_08
C - - - - - 0x018C43 06:8C33: F0 05     BEQ bra_8C3A_RTS
C - - - - - 0x018C45 06:8C35: A9 00     LDA #$00
C - - - - - 0x018C47 06:8C37: 9D 16 06  STA ram_0616_obj,X
bra_8C3A_RTS:
ofs_005_0C_8C3A_08_RTS:
C - - J - - 0x018C4A 06:8C3A: 60        RTS



loc_8C3B:
sub_8C3B:
ofs_005_0C_8C3B_01:
C D 0 - - - 0x018C4B 06:8C3B: FE 1E 07  INC ram_071E_obj_queue_id,X
C - - - - - 0x018C4E 06:8C3E: F0 38     BEQ bra_8C78
C - - - - - 0x018C50 06:8C40: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x018C53 06:8C43: 10 21     BPL bra_8C66
C - - - - - 0x018C55 06:8C45: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x018C58 06:8C48: C9 01     CMP #$01
C - - - - - 0x018C5A 06:8C4A: F0 31     BEQ bra_8C7D_RTS
C - - - - - 0x018C5C 06:8C4C: A9 01     LDA #$01    ; when boxing glove hits enemy to make explosion
C - - - - - 0x018C5E 06:8C4E: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x018C61 06:8C51: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018C64 06:8C54: 29 44     AND #con_0776_04 + con_0776_flip_H
C - - - - - 0x018C66 06:8C56: 48        PHA
C - - - - - 0x018C67 06:8C57: A9 0F     LDA #$0F
C - - - - - 0x018C69 06:8C59: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018C6C 06:8C5C: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x018C6F 06:8C5F: 68        PLA
C - - - - - 0x018C70 06:8C60: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018C73 06:8C63: 4C 7D 8C  JMP loc_8C7D_RTS
bra_8C66:
C - - - - - 0x018C76 06:8C66: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x018C79 06:8C69: C9 10     CMP #$10
C - - - - - 0x018C7B 06:8C6B: F0 17     BEQ bra_8C84
C - - - - - 0x018C7D 06:8C6D: C9 32     CMP #$32
C - - - - - 0x018C7F 06:8C6F: B0 07     BCS bra_8C78
C - - - - - 0x018C81 06:8C71: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018C84 06:8C74: 29 08     AND #con_0776_08
C - - - - - 0x018C86 06:8C76: F0 05     BEQ bra_8C7D_RTS
bra_8C78:
C - - - - - 0x018C88 06:8C78: A9 00     LDA #$00
C - - - - - 0x018C8A 06:8C7A: 9D 16 06  STA ram_0616_obj,X
bra_8C7D_RTS:
loc_8C7D_RTS:   ; bzk optimize
C D 0 - - - 0x018C8D 06:8C7D: 60        RTS



loc_8C7E:
C D 0 - - - 0x018C8E 06:8C7E: A9 FC     LDA #$FC
C - - - - - 0x018C90 06:8C80: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x018C93 06:8C83: 60        RTS



bra_8C84:
C - - - - - 0x018C94 06:8C84: A9 03     LDA #$03
C - - - - - 0x018C96 06:8C86: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018C99 06:8C89: AD 76 07  LDA ram_0776_obj_flags
C - - - - - 0x018C9C 06:8C8C: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x018C9E 06:8C8E: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018CA1 06:8C91: 29 40     AND #con_0776_flip_H
C - - - - - 0x018CA3 06:8C93: F0 05     BEQ bra_8C9A
C - - - - - 0x018CA5 06:8C95: A9 FD     LDA #$FD
C - - - - - 0x018CA7 06:8C97: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_8C9A:
C - - - - - 0x018CAA 06:8C9A: AD B0 06  LDA ram_obj_spd_X_fr
C - - - - - 0x018CAD 06:8C9D: 85 00     STA ram_0000_t42_spd_X_fr
C - - - - - 0x018CAF 06:8C9F: AD C6 06  LDA ram_obj_spd_X_lo
C - - - - - 0x018CB2 06:8CA2: C9 80     CMP #$80
C - - - - - 0x018CB4 06:8CA4: 6A        ROR
C - - - - - 0x018CB5 06:8CA5: 66 00     ROR ram_0000_t42_spd_X_fr
C - - - - - 0x018CB7 06:8CA7: C9 80     CMP #$80
C - - - - - 0x018CB9 06:8CA9: 6A        ROR
C - - - - - 0x018CBA 06:8CAA: 66 00     ROR ram_0000_t42_spd_X_fr
C - - - - - 0x018CBC 06:8CAC: 18        CLC
C - - - - - 0x018CBD 06:8CAD: 7D C6 06  ADC ram_obj_spd_X_lo,X
C - - - - - 0x018CC0 06:8CB0: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018CC3 06:8CB3: A5 00     LDA ram_0000_t42_spd_X_fr
C - - - - - 0x018CC5 06:8CB5: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x018CC8 06:8CB8: A9 00     LDA #$00
C - - - - - 0x018CCA 06:8CBA: 85 00     STA ram_0000_t43_pos_Y_hi
C - - - - - 0x018CCC 06:8CBC: BC 34 07  LDY ram_0734_obj,X
C - - - - - 0x018CCF 06:8CBF: 88        DEY
C - - - - - 0x018CD0 06:8CC0: B9 12 8D  LDA tbl_8D12,Y
C - - - - - 0x018CD3 06:8CC3: 10 02     BPL bra_8CC7
C - - - - - 0x018CD5 06:8CC5: C6 00     DEC ram_0000_t43_pos_Y_hi   ; -> FF
bra_8CC7:
C - - - - - 0x018CD7 06:8CC7: 18        CLC
C - - - - - 0x018CD8 06:8CC8: 6D 84 06  ADC ram_obj_pos_Y_lo
C - - - - - 0x018CDB 06:8CCB: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x018CDE 06:8CCE: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x018CE1 06:8CD1: 65 00     ADC ram_0000_t43_pos_Y_hi
C - - - - - 0x018CE3 06:8CD3: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x018CE6 06:8CD6: AD 76 07  LDA ram_0776_obj_flags
C - - - - - 0x018CE9 06:8CD9: 29 40     AND #con_0776_flip_H
C - - - - - 0x018CEB 06:8CDB: D0 13     BNE bra_8CF0
C - - - - - 0x018CED 06:8CDD: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x018CF0 06:8CE0: 18        CLC
C - - - - - 0x018CF1 06:8CE1: 79 03 8D  ADC tbl_8D03_lo,Y
C - - - - - 0x018CF4 06:8CE4: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018CF7 06:8CE7: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x018CFA 06:8CEA: 69 00     ADC #$00
C - - - - - 0x018CFC 06:8CEC: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018CFF 06:8CEF: 60        RTS
bra_8CF0:
C - - - - - 0x018D00 06:8CF0: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x018D03 06:8CF3: 38        SEC
C - - - - - 0x018D04 06:8CF4: F9 03 8D  SBC tbl_8D03_lo,Y
C - - - - - 0x018D07 06:8CF7: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018D0A 06:8CFA: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x018D0D 06:8CFD: E9 00     SBC #$00
C - - - - - 0x018D0F 06:8CFF: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018D12 06:8D02: 60        RTS



tbl_8D03_lo:
- - - - - - 0x018D13 06:8D03: 00        .byte < $0000   ; 01 
- D 0 - - - 0x018D14 06:8D04: 00        .byte < $0000   ; 02 
- D 0 - - - 0x018D15 06:8D05: 00        .byte < $0000   ; 03 
- D 0 - - - 0x018D16 06:8D06: 10        .byte < $0010   ; 04 
- D 0 - - - 0x018D17 06:8D07: 18        .byte < $0018   ; 05 
- D 0 - - - 0x018D18 06:8D08: 02        .byte < $0002   ; 06 
- D 0 - - - 0x018D19 06:8D09: 00        .byte < $0000   ; 07 
- D 0 - - - 0x018D1A 06:8D0A: 0C        .byte < $000C   ; 08 
- D 0 - - - 0x018D1B 06:8D0B: 10        .byte < $0010   ; 09 
- D 0 - - - 0x018D1C 06:8D0C: 00        .byte < $0000   ; 0A 
- D 0 - - - 0x018D1D 06:8D0D: 0E        .byte < $000E   ; 0B 
- D 0 - - - 0x018D1E 06:8D0E: 0C        .byte < $000C   ; 0C 
- D 0 - - - 0x018D1F 06:8D0F: 00        .byte < $0000   ; 0D 
- D 0 - - - 0x018D20 06:8D10: 0C        .byte < $000C   ; 0E 
- - - - - - 0x018D21 06:8D11: 00        .byte < $0000   ; 0F 



tbl_8D12:
- - - - - - 0x018D22 06:8D12: 00        .byte $00   ; 01 
- D 0 - - - 0x018D23 06:8D13: 00        .byte $00   ; 02 
- D 0 - - - 0x018D24 06:8D14: 00        .byte $00   ; 03 
- D 0 - - - 0x018D25 06:8D15: FE        .byte $FE   ; 04 
- D 0 - - - 0x018D26 06:8D16: F8        .byte $F8   ; 05 
- D 0 - - - 0x018D27 06:8D17: 05        .byte $05   ; 06 
- D 0 - - - 0x018D28 06:8D18: 00        .byte $00   ; 07 
- D 0 - - - 0x018D29 06:8D19: 03        .byte $03   ; 08 
- D 0 - - - 0x018D2A 06:8D1A: 08        .byte $08   ; 09 
- D 0 - - - 0x018D2B 06:8D1B: 00        .byte $00   ; 0A 
- D 0 - - - 0x018D2C 06:8D1C: FC        .byte $FC   ; 0B 
- D 0 - - - 0x018D2D 06:8D1D: 04        .byte $04   ; 0C 
- D 0 - - - 0x018D2E 06:8D1E: 00        .byte $00   ; 0D 
- D 0 - - - 0x018D2F 06:8D1F: 08        .byte $08   ; 0E 
- - - - - - 0x018D30 06:8D20: 00        .byte $00   ; 0F 



ofs_005_0C_8D21_02:
C - - J - - 0x018D31 06:8D21: 20 8A 8D  JSR sub_8D8A
C - - - - - 0x018D34 06:8D24: F0 03     BEQ bra_8D29
C - - - - - 0x018D36 06:8D26: 4C 3B 8C  JMP loc_8C3B
bra_8D29:
C - - - - - 0x018D39 06:8D29: 4C D2 8D  JMP loc_8DD2



ofs_005_0C_8D2C_03:
C - - J - - 0x018D3C 06:8D2C: 20 8A 8D  JSR sub_8D8A
C - - - - - 0x018D3F 06:8D2F: 4C 3B 8C  JMP loc_8C3B



ofs_005_0C_8D32_04:
C - - J - - 0x018D42 06:8D32: A9 00     LDA #$00
C - - - - - 0x018D44 06:8D34: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x018D47 06:8D37: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018D4A 06:8D3A: A9 81     LDA #$81
C - - - - - 0x018D4C 06:8D3C: 8D C9 03  STA ram_03C9
C - - - - - 0x018D4F 06:8D3F: A9 02     LDA #$02
C - - - - - 0x018D51 06:8D41: 8D CB 03  STA ram_03CB
C - - - - - 0x018D54 06:8D44: A9 02     LDA #$02
C - - - - - 0x018D56 06:8D46: 8D CC 03  STA ram_03CC
C - - - - - 0x018D59 06:8D49: FE 16 06  INC ram_0616_obj,X
C - - - - - 0x018D5C 06:8D4C: 60        RTS



ofs_005_0C_8D4D_05:
C - - J - - 0x018D5D 06:8D4D: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018D60 06:8D50: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x018D62 06:8D52: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018D65 06:8D55: 20 8A 8D  JSR sub_8D8A
C - - - - - 0x018D68 06:8D58: 20 90 8D  JSR sub_8D90
C - - - - - 0x018D6B 06:8D5B: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x018D6E 06:8D5E: C9 2B     CMP #$2B
C - - - - - 0x018D70 06:8D60: F0 1D     BEQ bra_8D7F
C - - - - - 0x018D72 06:8D62: C9 11     CMP #$11
C - - - - - 0x018D74 06:8D64: F0 03     BEQ bra_8D69
C - - - - - 0x018D76 06:8D66: 4C 3B 8C  JMP loc_8C3B
bra_8D69:
C - - - - - 0x018D79 06:8D69: AD C5 03  LDA ram_round_type
C - - - - - 0x018D7C 06:8D6C: C9 02     CMP #$02
C - - - - - 0x018D7E 06:8D6E: D0 03     BNE bra_8D73_not_on_water
; if on water
C - - - - - 0x018D80 06:8D70: 4C 3B 8C  JMP loc_8C3B
bra_8D73_not_on_water:
C - - - - - 0x018D83 06:8D73: A9 24     LDA #$24
C - - - - - 0x018D85 06:8D75: 90 02     BCC bra_8D79
C - - - - - 0x018D87 06:8D77: A9 1A     LDA #$1A
bra_8D79:
C - - - - - 0x018D89 06:8D79: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x018D8C 06:8D7C: 4C 3B 8C  JMP loc_8C3B
bra_8D7F:
C - - - - - 0x018D8F 06:8D7F: A9 13     LDA #$13
C - - - - - 0x018D91 06:8D81: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018D94 06:8D84: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x018D97 06:8D87: 4C 3B 8C  JMP loc_8C3B



sub_8D8A:
C - - - - - 0x018D9A 06:8D8A: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x018D9D 06:8D8D: 4C 9A 8E  JMP loc_8E9A



sub_8D90:
C - - - - - 0x018DA0 06:8D90: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x018DA3 06:8D93: A9 00     LDA #$00
C - - - - - 0x018DA5 06:8D95: 85 00     STA ram_0000_t45_spd_Y_lo
C - - - - - 0x018DA7 06:8D97: AD C9 03  LDA ram_03C9
C - - - - - 0x018DAA 06:8D9A: 10 02     BPL bra_8D9E
C - - - - - 0x018DAC 06:8D9C: C6 00     DEC ram_0000_t45_spd_Y_lo   ; -> FF
bra_8D9E:
C - - - - - 0x018DAE 06:8D9E: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x018DB1 06:8DA1: 18        CLC
C - - - - - 0x018DB2 06:8DA2: 6D C9 03  ADC ram_03C9
C - - - - - 0x018DB5 06:8DA5: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x018DB8 06:8DA8: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018DBB 06:8DAB: 65 00     ADC ram_0000_t45_spd_Y_lo
C - - - - - 0x018DBD 06:8DAD: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018DC0 06:8DB0: EE CC 03  INC ram_03CC
C - - - - - 0x018DC3 06:8DB3: AD CB 03  LDA ram_03CB
C - - - - - 0x018DC6 06:8DB6: CD CC 03  CMP ram_03CC
C - - - - - 0x018DC9 06:8DB9: B0 16     BCS bra_8DD1_RTS
C - - - - - 0x018DCB 06:8DBB: A9 02     LDA #$02
C - - - - - 0x018DCD 06:8DBD: 8D CC 03  STA ram_03CC
C - - - - - 0x018DD0 06:8DC0: EE CB 03  INC ram_03CB
C - - - - - 0x018DD3 06:8DC3: EE CB 03  INC ram_03CB
C - - - - - 0x018DD6 06:8DC6: AD C9 03  LDA ram_03C9
C - - - - - 0x018DD9 06:8DC9: 49 FF     EOR #$FF
C - - - - - 0x018DDB 06:8DCB: 18        CLC
C - - - - - 0x018DDC 06:8DCC: 69 01     ADC #$01
C - - - - - 0x018DDE 06:8DCE: 8D C9 03  STA ram_03C9
bra_8DD1_RTS:
C - - - - - 0x018DE1 06:8DD1: 60        RTS



loc_8DD2:
C D 0 - - - 0x018DE2 06:8DD2: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x018DE5 06:8DD5: D0 14     BNE bra_8DEB
C - - - - - 0x018DE7 06:8DD7: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018DEA 06:8DDA: 10 0F     BPL bra_8DEB
C - - - - - 0x018DEC 06:8DDC: A5 2D     LDA ram_002D_btn
C - - - - - 0x018DEE 06:8DDE: 29 02     AND #con_btn_B
C - - - - - 0x018DF0 06:8DE0: D0 09     BNE bra_8DEB
C - - - - - 0x018DF2 06:8DE2: A9 05     LDA #$05
C - - - - - 0x018DF4 06:8DE4: 85 3C     STA ram_003C
C - - - - - 0x018DF6 06:8DE6: A9 C0     LDA #$C0
C - - - - - 0x018DF8 06:8DE8: 20 17 89  JSR sub_8917_add_spd_Y
bra_8DEB:
C - - - - - 0x018DFB 06:8DEB: A9 05     LDA #$05
C - - - - - 0x018DFD 06:8DED: 85 3C     STA ram_003C
C - - - - - 0x018DFF 06:8DEF: A9 30     LDA #$30
C - - - - - 0x018E01 06:8DF1: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x018E04 06:8DF4: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x018E07 06:8DF7: A9 08     LDA #$08
C - - - - - 0x018E09 06:8DF9: 20 FF 89  JSR sub_89FF
C - - - - - 0x018E0C 06:8DFC: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x018E0F 06:8DFF: D0 03     BNE bra_8E04
C - - - - - 0x018E11 06:8E01: 4C 3B 8C  JMP loc_8C3B
bra_8E04:
C - - - - - 0x018E14 06:8E04: C9 02     CMP #$02
C - - - - - 0x018E16 06:8E06: D0 15     BNE bra_8E1D
C - - - - - 0x018E18 06:8E08: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018E1B 06:8E0B: 10 03     BPL bra_8E10
C - - - - - 0x018E1D 06:8E0D: 4C 3B 8C  JMP loc_8C3B
bra_8E10:
C - - - - - 0x018E20 06:8E10: A5 06     LDA ram_0006_temp
C - - - - - 0x018E22 06:8E12: 29 0F     AND #$0F
C - - - - - 0x018E24 06:8E14: C9 06     CMP #$06
C - - - - - 0x018E26 06:8E16: 90 03     BCC bra_8E1B
- - - - - - 0x018E28 06:8E18: 4C 3B 8C  JMP loc_8C3B
bra_8E1B:
C - - - - - 0x018E2B 06:8E1B: A9 02     LDA #$02
bra_8E1D:
C - - - - - 0x018E2D 06:8E1D: 4A        LSR
C - - - - - 0x018E2E 06:8E1E: C9 02     CMP #$02
C - - - - - 0x018E30 06:8E20: F0 5F     BEQ bra_8E81
C - - - - - 0x018E32 06:8E22: A9 00     LDA #$00
C - - - - - 0x018E34 06:8E24: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x018E37 06:8E27: A5 06     LDA ram_0006_temp
C - - - - - 0x018E39 06:8E29: 29 F0     AND #$F0
C - - - - - 0x018E3B 06:8E2B: 38        SEC
C - - - - - 0x018E3C 06:8E2C: E9 08     SBC #< $0008
C - - - - - 0x018E3E 06:8E2E: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x018E41 06:8E31: A5 07     LDA ram_0007_temp
C - - - - - 0x018E43 06:8E33: E9 00     SBC #> $0008
C - - - - - 0x018E45 06:8E35: 9D 9A 06  STA ram_obj_pos_Y_hi,X
loc_8E38:
C - - - - - 0x018E48 06:8E38: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018E4B 06:8E3B: 49 FF     EOR #$FF
C - - - - - 0x018E4D 06:8E3D: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018E50 06:8E40: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x018E53 06:8E43: 49 FF     EOR #$FF
C - - - - - 0x018E55 06:8E45: 18        CLC
C - - - - - 0x018E56 06:8E46: 69 01     ADC #< $0001
C - - - - - 0x018E58 06:8E48: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x018E5B 06:8E4B: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x018E5E 06:8E4E: 69 00     ADC #> $0001
C - - - - - 0x018E60 06:8E50: C9 80     CMP #$80
C - - - - - 0x018E62 06:8E52: 6A        ROR
C - - - - - 0x018E63 06:8E53: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018E66 06:8E56: 7E DC 06  ROR ram_obj_spd_Y_fr,X
C - - - - - 0x018E69 06:8E59: 85 05     STA ram_0005_temp
C - - - - - 0x018E6B 06:8E5B: 7E DC 06  ROR ram_obj_spd_Y_fr,X
C - - - - - 0x018E6E 06:8E5E: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x018E71 06:8E61: 85 04     STA ram_0004_temp
C - - - - - 0x018E73 06:8E63: A5 05     LDA ram_0005_temp
C - - - - - 0x018E75 06:8E65: C9 80     CMP #$80
C - - - - - 0x018E77 06:8E67: 66 05     ROR ram_0005_temp
C - - - - - 0x018E79 06:8E69: A5 04     LDA ram_0004_temp
C - - - - - 0x018E7B 06:8E6B: 6A        ROR
C - - - - - 0x018E7C 06:8E6C: 18        CLC
C - - - - - 0x018E7D 06:8E6D: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x018E80 06:8E70: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x018E83 06:8E73: A5 05     LDA ram_0005_temp
C - - - - - 0x018E85 06:8E75: 7D F2 06  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x018E88 06:8E78: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x018E8B 06:8E7B: FE 08 07  INC ram_0708_obj_flags,X
C - - - - - 0x018E8E 06:8E7E: 4C 3B 8C  JMP loc_8C3B
bra_8E81:
C - - - - - 0x018E91 06:8E81: A5 06     LDA ram_0006_temp
C - - - - - 0x018E93 06:8E83: 29 08     AND #$08
C - - - - - 0x018E95 06:8E85: D0 03     BNE bra_8E8A
C - - - - - 0x018E97 06:8E87: 4C 3B 8C  JMP loc_8C3B
bra_8E8A:
- - - - - - 0x018E9A 06:8E8A: A9 00     LDA #$00
- - - - - - 0x018E9C 06:8E8C: 9D 6E 06  STA ram_obj_pos_Y_fr,X
- - - - - - 0x018E9F 06:8E8F: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x018EA2 06:8E92: 29 F0     AND #$F0
- - - - - - 0x018EA4 06:8E94: 9D 84 06  STA ram_obj_pos_Y_lo,X
- - - - - - 0x018EA7 06:8E97: 4C 38 8E  JMP loc_8E38



loc_8E9A:
C D 0 - - - 0x018EAA 06:8E9A: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x018EAD 06:8E9D: C9 10     CMP #$10
C - - - - - 0x018EAF 06:8E9F: 90 20     BCC bra_8EC1_RTS
C - - - - - 0x018EB1 06:8EA1: 20 3D F2  JSR sub_0x01F24D
C - - - - - 0x018EB4 06:8EA4: B9 81 CF  LDA tbl_0x01CF91,Y
C - - - - - 0x018EB7 06:8EA7: F0 03     BEQ bra_8EAC
C - - - - - 0x018EB9 06:8EA9: 4C 7E 8C  JMP loc_8C7E
bra_8EAC:
C - - - - - 0x018EBC 06:8EAC: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x018EBF 06:8EAF: 30 11     BMI bra_8EC2
C - - - - - 0x018EC1 06:8EB1: A9 08     LDA #$08
C - - - - - 0x018EC3 06:8EB3: 20 E3 89  JSR sub_89E3
C - - - - - 0x018EC6 06:8EB6: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x018EC9 06:8EB9: B9 81 CF  LDA tbl_0x01CF91,Y
C - - - - - 0x018ECC 06:8EBC: F0 03     BEQ bra_8EC1_RTS
C - - - - - 0x018ECE 06:8EBE: 4C 7E 8C  JMP loc_8C7E
bra_8EC1_RTS:
C - - - - - 0x018ED1 06:8EC1: 60        RTS
bra_8EC2:
C - - - - - 0x018ED2 06:8EC2: A9 F8     LDA #$F8
C - - - - - 0x018ED4 06:8EC4: 20 F1 89  JSR sub_89F1
C - - - - - 0x018ED7 06:8EC7: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x018EDA 06:8ECA: B9 81 CF  LDA tbl_0x01CF91,Y
C - - - - - 0x018EDD 06:8ECD: F0 03     BEQ bra_8ED2_RTS
C - - - - - 0x018EDF 06:8ECF: 4C 7E 8C  JMP loc_8C7E
bra_8ED2_RTS:
C - - - - - 0x018EE2 06:8ED2: 60        RTS



ofs_005_0C_8ED3_06:
C - - J - - 0x018EE3 06:8ED3: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x018EE6 06:8ED6: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x018EE9 06:8ED9: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x018EEC 06:8EDC: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x018EEF 06:8EDF: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x018EF2 06:8EE2: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018EF5 06:8EE5: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x018EF8 06:8EE8: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018EFB 06:8EEB: BC 60 07  LDY ram_obj_anim_cnt,X
C - - - - - 0x018EFE 06:8EEE: B9 8D 8F  LDA tbl_8F8D_lo,Y
C - - - - - 0x018F01 06:8EF1: 9D 15 04  STA ram_0415,X
C - - - - - 0x018F04 06:8EF4: 20 3B 8C  JSR sub_8C3B
C - - - - - 0x018F07 06:8EF7: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x018F0A 06:8EFA: 30 2D     BMI bra_8F29
C - - - - - 0x018F0C 06:8EFC: AD 76 07  LDA ram_0776_obj_flags
C - - - - - 0x018F0F 06:8EFF: 29 40     AND #con_0776_flip_H
C - - - - - 0x018F11 06:8F01: 85 00     STA ram_0000_t46_flip_H
C - - - - - 0x018F13 06:8F03: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018F16 06:8F06: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x018F18 06:8F08: 05 00     ORA ram_0000_t46_flip_H
C - - - - - 0x018F1A 06:8F0A: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018F1D 06:8F0D: A9 03     LDA #$03    ; 0300
C - - - - - 0x018F1F 06:8F0F: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x018F22 06:8F12: AD 76 07  LDA ram_0776_obj_flags
C - - - - - 0x018F25 06:8F15: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x018F27 06:8F17: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018F2A 06:8F1A: 29 40     AND #con_0776_flip_H
C - - - - - 0x018F2C 06:8F1C: F0 05     BEQ bra_8F23
C - - - - - 0x018F2E 06:8F1E: A9 FD     LDA #$FD    ; FD00
C - - - - - 0x018F30 06:8F20: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_8F23:
C - - - - - 0x018F33 06:8F23: A9 00     LDA #$00
C - - - - - 0x018F35 06:8F25: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x018F38 06:8F28: 60        RTS
bra_8F29:
C - - - - - 0x018F39 06:8F29: BC 60 07  LDY ram_obj_anim_cnt,X
C - - - - - 0x018F3C 06:8F2C: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018F3F 06:8F2F: 29 40     AND #con_0776_flip_H
C - - - - - 0x018F41 06:8F31: D0 13     BNE bra_8F46
C - - - - - 0x018F43 06:8F33: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018F46 06:8F36: 18        CLC
C - - - - - 0x018F47 06:8F37: 79 8D 8F  ADC tbl_8F8D_lo,Y
C - - - - - 0x018F4A 06:8F3A: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018F4D 06:8F3D: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x018F50 06:8F40: 69 00     ADC #$00
C - - - - - 0x018F52 06:8F42: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018F55 06:8F45: 60        RTS
bra_8F46:
C - - - - - 0x018F56 06:8F46: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x018F59 06:8F49: 38        SEC
C - - - - - 0x018F5A 06:8F4A: F9 8D 8F  SBC tbl_8F8D_lo,Y
C - - - - - 0x018F5D 06:8F4D: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018F60 06:8F50: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x018F63 06:8F53: E9 00     SBC #$00
C - - - - - 0x018F65 06:8F55: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018F68 06:8F58: 60        RTS



ofs_005_0C_8F59_07:
C - - J - - 0x018F69 06:8F59: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x018F6C 06:8F5C: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x018F6F 06:8F5F: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x018F72 06:8F62: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x018F75 06:8F65: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x018F78 06:8F68: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018F7B 06:8F6B: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x018F7E 06:8F6E: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018F81 06:8F71: BC 60 07  LDY ram_obj_anim_cnt,X
C - - - - - 0x018F84 06:8F74: B9 95 8F  LDA tbl_8F95,Y
C - - - - - 0x018F87 06:8F77: 9D 15 04  STA ram_0415,X
C - - - - - 0x018F8A 06:8F7A: 20 3B 8C  JSR sub_8C3B
C - - - - - 0x018F8D 06:8F7D: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x018F90 06:8F80: C9 01     CMP #$01
C - - - - - 0x018F92 06:8F82: D0 08     BNE bra_8F8C_RTS
C - - - - - 0x018F94 06:8F84: A9 11     LDA #$11
C - - - - - 0x018F96 06:8F86: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018F99 06:8F89: 4C C8 E1  JMP loc_0x01E1D8_initialize_animation
bra_8F8C_RTS:
C - - - - - 0x018F9C 06:8F8C: 60        RTS



tbl_8F8D_lo:
- D 0 - - - 0x018F9D 06:8F8D: 14        .byte < $0014   ; 00 
- D 0 - - - 0x018F9E 06:8F8E: 14        .byte < $0014   ; 01 
- D 0 - - - 0x018F9F 06:8F8F: 1C        .byte < $001C   ; 02 
- D 0 - - - 0x018FA0 06:8F90: 14        .byte < $0014   ; 03 
- D 0 - - - 0x018FA1 06:8F91: 1C        .byte < $001C   ; 04 
- D 0 - - - 0x018FA2 06:8F92: 14        .byte < $0014   ; 05 
- D 0 - - - 0x018FA3 06:8F93: 08        .byte < $0008   ; 06 
- D 0 - - - 0x018FA4 06:8F94: 06        .byte < $0006   ; 07 



tbl_8F95:
- D 0 - - - 0x018FA5 06:8F95: 01        .byte $01   ; 00 
- D 0 - - - 0x018FA6 06:8F96: 0C        .byte $0C   ; 01 
- D 0 - - - 0x018FA7 06:8F97: 14        .byte $14   ; 02 
- D 0 - - - 0x018FA8 06:8F98: 1D        .byte $1D   ; 03 
- D 0 - - - 0x018FA9 06:8F99: 1D        .byte $1D   ; 04 



_off009_8F9A_0B_snow_water_splash:
- D 0 - I - 0x018FAA 06:8F9A: 9E 8F     .word ofs_005_0B_8F9E_01
- D 0 - I - 0x018FAC 06:8F9C: FB 8F     .word ofs_005_0B_8FFB_02



ofs_005_0B_8F9E_01:
C - - J - - 0x018FAE 06:8F9E: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018FB1 06:8FA1: 29 08     AND #con_0776_08
C - - - - - 0x018FB3 06:8FA3: F0 08     BEQ bra_8FAD
C - - - - - 0x018FB5 06:8FA5: A9 01     LDA #$01
C - - - - - 0x018FB7 06:8FA7: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018FBA 06:8FAA: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_8FAD:
C - - - - - 0x018FBD 06:8FAD: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x018FC0 06:8FB0: CD B1 03  CMP ram_03B1
C - - - - - 0x018FC3 06:8FB3: B0 3F     BCS bra_8FF4
C - - - - - 0x018FC5 06:8FB5: AD F2 06  LDA ram_obj_spd_Y_lo
C - - - - - 0x018FC8 06:8FB8: 30 3A     BMI bra_8FF4
C - - - - - 0x018FCA 06:8FBA: C9 03     CMP #$03
C - - - - - 0x018FCC 06:8FBC: 90 36     BCC bra_8FF4
C - - - - - 0x018FCE 06:8FBE: AD 76 07  LDA ram_0776_obj_flags
C - - - - - 0x018FD1 06:8FC1: 29 40     AND #con_0776_flip_H
C - - - - - 0x018FD3 06:8FC3: 85 00     STA ram_0000_t47_flip_H
C - - - - - 0x018FD5 06:8FC5: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x018FD8 06:8FC8: 29 08     AND #con_0776_08
C - - - - - 0x018FDA 06:8FCA: 05 00     ORA ram_0000_t47_flip_H
C - - - - - 0x018FDC 06:8FCC: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x018FDF 06:8FCF: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x018FE2 06:8FD2: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x018FE5 06:8FD5: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x018FE8 06:8FD8: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x018FEB 06:8FDB: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x018FEE 06:8FDE: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x018FF1 06:8FE1: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x018FF4 06:8FE4: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x018FF7 06:8FE7: A9 02     LDA #$02
C - - - - - 0x018FF9 06:8FE9: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x018FFC 06:8FEC: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x018FFF 06:8FEF: A9 1E     LDA #con_sfx_1E
C - - - - - 0x019001 06:8FF1: 20 1A FF  JSR sub_0x01FF2A_play_sound
bra_8FF4:
C - - - - - 0x019004 06:8FF4: AD B1 03  LDA ram_03B1
C - - - - - 0x019007 06:8FF7: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01900A 06:8FFA: 60        RTS



ofs_005_0B_8FFB_02:
C - - J - - 0x01900B 06:8FFB: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01900E 06:8FFE: CD AF 03  CMP ram_03AF
C - - - - - 0x019011 06:9001: D0 32     BNE bra_9035
C - - - - - 0x019013 06:9003: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019016 06:9006: 29 08     AND #con_0776_08
C - - - - - 0x019018 06:9008: F0 08     BEQ bra_9012
C - - - - - 0x01901A 06:900A: A9 01     LDA #$01
C - - - - - 0x01901C 06:900C: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01901F 06:900F: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9012:
C - - - - - 0x019022 06:9012: AD 16 06  LDA ram_0616_obj
C - - - - - 0x019025 06:9015: C9 08     CMP #$08
C - - - - - 0x019027 06:9017: B0 5B     BCS bra_9074
C - - - - - 0x019029 06:9019: AD AF 03  LDA ram_03AF
C - - - - - 0x01902C 06:901C: F0 56     BEQ bra_9074
C - - - - - 0x01902E 06:901E: A5 2D     LDA ram_002D_btn
C - - - - - 0x019030 06:9020: 29 C0     AND #con_btns_LR
C - - - - - 0x019032 06:9022: F0 50     BEQ bra_9074
C - - - - - 0x019034 06:9024: AD C2 03  LDA ram_03C2_felix_state
C - - - - - 0x019037 06:9027: C9 07     CMP #$07
C - - - - - 0x019039 06:9029: F0 49     BEQ bra_9074    ; if ducking
; if not ducking
C - - - - - 0x01903B 06:902B: AD C6 06  LDA ram_obj_spd_X_lo
C - - - - - 0x01903E 06:902E: 18        CLC
C - - - - - 0x01903F 06:902F: 69 02     ADC #$02
C - - - - - 0x019041 06:9031: C9 04     CMP #$04
C - - - - - 0x019043 06:9033: B0 3F     BCS bra_9074
bra_9035:
C - - - - - 0x019045 06:9035: AD 76 07  LDA ram_0776_obj_flags
C - - - - - 0x019048 06:9038: 29 40     AND #con_0776_flip_H
C - - - - - 0x01904A 06:903A: 85 00     STA ram_0000_t48_flip_H
C - - - - - 0x01904C 06:903C: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01904F 06:903F: 29 08     AND #con_0776_08
C - - - - - 0x019051 06:9041: 05 00     ORA ram_0000_t48_flip_H
C - - - - - 0x019053 06:9043: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019056 06:9046: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x019059 06:9049: 18        CLC
C - - - - - 0x01905A 06:904A: 69 04     ADC #< $0004
C - - - - - 0x01905C 06:904C: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01905F 06:904F: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x019062 06:9052: 69 00     ADC #> $0004
C - - - - - 0x019064 06:9054: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019067 06:9057: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01906A 06:905A: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01906D 06:905D: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x019070 06:9060: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x019073 06:9063: BD 60 07  LDA ram_obj_anim_cnt,X
C - - - - - 0x019076 06:9066: 38        SEC
C - - - - - 0x019077 06:9067: FD 34 07  SBC ram_0734_obj,X
C - - - - - 0x01907A 06:906A: 30 08     BMI bra_9074
C - - - - - 0x01907C 06:906C: A9 02     LDA #$02
C - - - - - 0x01907E 06:906E: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019081 06:9071: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9074:
C - - - - - 0x019084 06:9074: AD AF 03  LDA ram_03AF
C - - - - - 0x019087 06:9077: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01908A 06:907A: 60        RTS



_off009_907B_10_spring:
- D 0 - I - 0x01908B 06:907B: FD 90     .word ofs_005_10_90FD_01
- - - - - - 0x01908D 06:907D: FD 90     .word ofs_005_10_90FD_02
- - - - - - 0x01908F 06:907F: 4C 9F     .word ofs_005_10_9F4C_03



_off009_9081_28_moving_platform_vertically:
- D 0 - I - 0x019091 06:9081: 0D 91     .word ofs_005_28_910D_01
- D 0 - I - 0x019093 06:9083: 23 91     .word ofs_005_28_9123_02
- - - - - - 0x019095 06:9085: 4C 9F     .word ofs_005_28_9F4C_03



_off009_9087_29_moving_platform_horisontally:
- D 0 - I - 0x019097 06:9087: 4A 91     .word ofs_005_29_914A_01
- D 0 - I - 0x019099 06:9089: 65 91     .word ofs_005_29_9165_02
- - - - - - 0x01909B 06:908B: 4C 9F     .word ofs_005_29_9F4C_03



_off009_908D_08_enemy_projectile:
- D 0 - I - 0x01909D 06:908D: B3 91     .word ofs_005_08_91B3_01
- D 0 - I - 0x01909F 06:908F: 00 92     .word ofs_005_08_9200_02
- D 0 - I - 0x0190A1 06:9091: 1C 92     .word ofs_005_08_921C_03
- D 0 - I - 0x0190A3 06:9093: 38 92     .word ofs_005_08_9238_04
- D 0 - I - 0x0190A5 06:9095: 5D 92     .word ofs_005_08_925D_05
- D 0 - I - 0x0190A7 06:9097: 82 92     .word ofs_005_08_9282_06
- D 0 - I - 0x0190A9 06:9099: A2 92     .word ofs_005_08_92A2_07
- D 0 - I - 0x0190AB 06:909B: E8 92     .word ofs_005_08_92E8_08
- - - - - - 0x0190AD 06:909D: E8 92     .word ofs_005_08_92E8_09
- - - - - - 0x0190AF 06:909F: 64 93     .word ofs_005_08_9364_0A
- D 0 - I - 0x0190B1 06:90A1: 64 93     .word ofs_005_08_9364_0B



_off009_90A3_05:
_off009_90A3_06:
_off009_90A3_07:
_off009_90A3_09:
_off009_90A3_0A:
_off009_90A3_11_basic_mob_enemy:
_off009_90A3_23:
- D 0 - I - 0x0190B3 06:90A3: EE 94     .word ofs_005_11_94EE_01
- D 0 - I - 0x0190B5 06:90A5: 4C 9F     .word ofs_005_11_9F4C_02
- D 0 - I - 0x0190B7 06:90A7: BD 96     .word ofs_005_11_96BD_03



_off009_90A9_21_crab:
- D 0 - I - 0x0190B9 06:90A9: B6 9C     .word ofs_005_21_9CB6_01
- D 0 - I - 0x0190BB 06:90AB: 4C 9F     .word ofs_005_21_9F4C_02



_off009_90AD_22_tree_dinosaur:
- D 0 - I - 0x0190BD 06:90AD: DC 9C     .word ofs_005_22_9CDC_01
- D 0 - I - 0x0190BF 06:90AF: 4C 9F     .word ofs_005_22_9F4C_02
- D 0 - I - 0x0190C1 06:90B1: F9 9C     .word ofs_005_22_9CF9_03
- D 0 - I - 0x0190C3 06:90B3: 9E 9D     .word ofs_005_22_9D9E_04



_off009_90B5_12_walking_off_platform_enemy:
- D 0 - I - 0x0190C5 06:90B5: EE 94     .word ofs_005_12_94EE_01
- D 0 - I - 0x0190C7 06:90B7: 4C 9F     .word ofs_005_12_9F4C_02



_off009_90B9_13_jumping_fish:
- D 0 - I - 0x0190C9 06:90B9: 11 97     .word ofs_005_13_9711_01
- D 0 - I - 0x0190CB 06:90BB: 4C 9F     .word ofs_005_13_9F4C_02



_off009_90BD_14_dog_head_180:
- D 0 - I - 0x0190CD 06:90BD: A3 99     .word ofs_005_14_99A3_01
- D 0 - I - 0x0190CF 06:90BF: 82 99     .word ofs_005_14_9982_02
- D 0 - I - 0x0190D1 06:90C1: AD 99     .word ofs_005_14_99AD_03



_off009_90C3_15_dog_head_90:
; bzk optimize, same links as 0x0190CD, move label there
- D 0 - I - 0x0190D3 06:90C3: A3 99     .word ofs_005_15_99A3_01
- D 0 - I - 0x0190D5 06:90C5: 82 99     .word ofs_005_15_9982_02
- D 0 - I - 0x0190D7 06:90C7: AD 99     .word ofs_005_15_99AD_03



_off009_90C9_2A_big_jumping_rock:
_off009_90C9_2B:
- D 0 - I - 0x0190D9 06:90C9: 52 94     .word ofs_005_2A_9452_01
- D 0 - I - 0x0190DB 06:90CB: 82 99     .word ofs_005_2A_9982_02



_off009_90CD_16_big_jumping_snowball:
_off009_90CD_17:
- D 0 - I - 0x0190DD 06:90CD: 5C 94     .word ofs_005_16_945C_01
- D 0 - I - 0x0190DF 06:90CF: 82 99     .word ofs_005_16_9982_02
- D 0 - I - 0x0190E1 06:90D1: 95 93     .word ofs_005_16_9395_03
- D 0 - I - 0x0190E3 06:90D3: 32 94     .word ofs_005_16_9432_04



_off009_90D5_18_flying_bird:
- D 0 - I - 0x0190E5 06:90D5: 53 98     .word ofs_005_18_9853_01
- D 0 - I - 0x0190E7 06:90D7: 4C 9F     .word ofs_005_18_9F4C_02



_off009_90D9_1C_big_green_fish:
- D 0 - I - 0x0190E9 06:90D9: 49 98     .word ofs_005_1C_9849_01
- D 0 - I - 0x0190EB 06:90DB: 4C 9F     .word ofs_005_1C_9F4C_02
- D 0 - I - 0x0190ED 06:90DD: 53 98     .word ofs_005_1C_9853_03



_off009_90DF_19_small_meteorite:
- D 0 - I - 0x0190EF 06:90DF: 08 99     .word ofs_005_19_9908_01
- D 0 - I - 0x0190F1 06:90E1: 82 99     .word ofs_005_19_9982_02



_off009_90E3_1A_big_meteorite:
- D 0 - I - 0x0190F3 06:90E3: 10 99     .word ofs_005_1A_9910_01
- D 0 - I - 0x0190F5 06:90E5: 82 99     .word ofs_005_1A_9982_02



_off009_90E7_1D_jellyfish:
- D 0 - I - 0x0190F7 06:90E7: 8D 9E     .word ofs_005_1D_9E8D_01
- D 0 - I - 0x0190F9 06:90E9: 4C 9F     .word ofs_005_1D_9F4C_02



_off009_90EB_20_alien_spaceship:
- D 0 - I - 0x0190FB 06:90EB: 2D 99     .word ofs_005_20_992D_01
- D 0 - I - 0x0190FD 06:90ED: 82 99     .word ofs_005_20_9982_02
- D 0 - I - 0x0190FF 06:90EF: 37 99     .word ofs_005_20_9937_03



_off009_90F1_1E_shooting_swimming_fish:
- D 0 - I - 0x019101 06:90F1: 36 9B     .word ofs_005_1E_9B36_01
- D 0 - I - 0x019103 06:90F3: 82 99     .word ofs_005_1E_9982_02



_off009_90F5_1F_bat:
- D 0 - I - 0x019105 06:90F5: EB 9B     .word ofs_005_1F_9BEB_01
- D 0 - I - 0x019107 06:90F7: 4C 9F     .word ofs_005_1F_9F4C_02
- D 0 - I - 0x019109 06:90F9: 63 9C     .word ofs_005_1F_9C63_03
- D 0 - I - 0x01910B 06:90FB: 73 9C     .word ofs_005_1F_9C73_04



loc_90FD:
ofs_005_10_90FD_01:
ofs_005_10_90FD_02:
C D 0 J - - 0x01910D 06:90FD: A9 01     LDA #$01    ; con_0776_spr_A + $01
C - - - - - 0x01910F 06:90FF: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019112 06:9102: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019115 06:9105: A9 80     LDA #con_0708_80
C - - - - - 0x019117 06:9107: 9D 08 07  STA ram_0708_obj_flags,X
C - - - - - 0x01911A 06:910A: 4C 1C E0  JMP loc_0x01E02C



ofs_005_28_910D_01:
C - - J - - 0x01911D 06:910D: A9 02     LDA #$02
C - - - - - 0x01911F 06:910F: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019122 06:9112: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019125 06:9115: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019128 06:9118: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01912B 06:911B: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01912E 06:911E: A9 80     LDA #con_0708_80
C - - - - - 0x019130 06:9120: 9D 08 07  STA ram_0708_obj_flags,X
ofs_005_28_9123_02:
C - - - - - 0x019133 06:9123: A9 00     LDA #$00
C - - - - - 0x019135 06:9125: 85 00     STA ram_0000_t49
C - - - - - 0x019137 06:9127: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019139 06:9129: 29 40     AND #$40
C - - - - - 0x01913B 06:912B: F0 04     BEQ bra_9131
C - - - - - 0x01913D 06:912D: A9 1F     LDA #$1F
C - - - - - 0x01913F 06:912F: 85 00     STA ram_0000_t49
bra_9131:
C - - - - - 0x019141 06:9131: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019143 06:9133: 4A        LSR
C - - - - - 0x019144 06:9134: 29 1F     AND #$1F
C - - - - - 0x019146 06:9136: 45 00     EOR ram_0000_t49
C - - - - - 0x019148 06:9138: 18        CLC
C - - - - - 0x019149 06:9139: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x01914C 06:913C: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01914F 06:913F: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x019152 06:9142: 69 00     ADC #$00
C - - - - - 0x019154 06:9144: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019157 06:9147: 4C FD 90  JMP loc_90FD



ofs_005_29_914A_01:
C - - J - - 0x01915A 06:914A: A9 02     LDA #$02
C - - - - - 0x01915C 06:914C: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01915F 06:914F: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019162 06:9152: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019165 06:9155: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019168 06:9158: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01916B 06:915B: A9 00     LDA #$00
C - - - - - 0x01916D 06:915D: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x019170 06:9160: A9 80     LDA #con_0708_80
C - - - - - 0x019172 06:9162: 9D 08 07  STA ram_0708_obj_flags,X
ofs_005_29_9165_02:
C - - - - - 0x019175 06:9165: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019178 06:9168: 85 01     STA ram_0001_t16
C - - - - - 0x01917A 06:916A: A9 00     LDA #$00
C - - - - - 0x01917C 06:916C: 85 00     STA ram_0000_t50
C - - - - - 0x01917E 06:916E: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019180 06:9170: 29 40     AND #$40
C - - - - - 0x019182 06:9172: F0 04     BEQ bra_9178
C - - - - - 0x019184 06:9174: A9 FF     LDA #$FF
C - - - - - 0x019186 06:9176: 85 00     STA ram_0000_t50
bra_9178:
C - - - - - 0x019188 06:9178: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x01918A 06:917A: 4A        LSR
C - - - - - 0x01918B 06:917B: 45 00     EOR ram_0000_t50
C - - - - - 0x01918D 06:917D: 29 1F     AND #$1F
C - - - - - 0x01918F 06:917F: 18        CLC
C - - - - - 0x019190 06:9180: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x019193 06:9183: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019196 06:9186: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x019199 06:9189: 69 00     ADC #$00
C - - - - - 0x01919B 06:918B: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01919E 06:918E: A9 F1     LDA #$F1
C - - - - - 0x0191A0 06:9190: 20 D3 89  JSR sub_89D3_move_obj_X_axis_left
C - - - - - 0x0191A3 06:9193: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x0191A6 06:9196: 29 10     AND #con_0708_10
C - - - - - 0x0191A8 06:9198: D0 03     BNE bra_919D
C - - - - - 0x0191AA 06:919A: 4C FD 90  JMP loc_90FD
bra_919D:
C - - - - - 0x0191AD 06:919D: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0191B0 06:91A0: C5 01     CMP ram_0001_t16
C - - - - - 0x0191B2 06:91A2: D0 03     BNE bra_91A7
C - - - - - 0x0191B4 06:91A4: 4C FD 90  JMP loc_90FD
bra_91A7:
C - - - - - 0x0191B7 06:91A7: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0191BA 06:91AA: 38        SEC
C - - - - - 0x0191BB 06:91AB: E5 01     SBC ram_0001_t16
C - - - - - 0x0191BD 06:91AD: 8D 1D 04  STA ram_041D
C - - - - - 0x0191C0 06:91B0: 4C FD 90  JMP loc_90FD



ofs_005_08_91B3_01:
C - - J - - 0x0191C3 06:91B3: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0191C6 06:91B6: D0 05     BNE bra_91BD
C - - - - - 0x0191C8 06:91B8: A9 64     LDA #$64
C - - - - - 0x0191CA 06:91BA: 9D DC 06  STA ram_obj_spd_Y_fr,X
bra_91BD:
C - - - - - 0x0191CD 06:91BD: DE DC 06  DEC ram_obj_spd_Y_fr,X
C - - - - - 0x0191D0 06:91C0: F0 38     BEQ bra_91FA
C - - - - - 0x0191D2 06:91C2: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0191D5 06:91C5: 38        SEC
C - - - - - 0x0191D6 06:91C6: E9 01     SBC #< $0001
C - - - - - 0x0191D8 06:91C8: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0191DB 06:91CB: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0191DE 06:91CE: E9 00     SBC #> $0001
C - - - - - 0x0191E0 06:91D0: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0191E3 06:91D3: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0191E6 06:91D6: 29 F0     AND #$F0
C - - - - - 0x0191E8 06:91D8: 85 01     STA ram_0001_t17
C - - - - - 0x0191EA 06:91DA: A9 00     LDA #$00
C - - - - - 0x0191EC 06:91DC: 85 00     STA ram_0000_t51
C - - - - - 0x0191EE 06:91DE: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0191F1 06:91E1: 29 40     AND #$40
C - - - - - 0x0191F3 06:91E3: F0 04     BEQ bra_91E9
C - - - - - 0x0191F5 06:91E5: A9 FF     LDA #$FF
C - - - - - 0x0191F7 06:91E7: 85 00     STA ram_0000_t51
bra_91E9:
C - - - - - 0x0191F9 06:91E9: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0191FC 06:91EC: 45 00     EOR ram_0000_t51
; / 04
C - - - - - 0x0191FE 06:91EE: 4A        LSR
C - - - - - 0x0191FF 06:91EF: 4A        LSR
C - - - - - 0x019200 06:91F0: 29 0F     AND #$0F
C - - - - - 0x019202 06:91F2: 05 01     ORA ram_0001_t17
C - - - - - 0x019204 06:91F4: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019207 06:91F7: 4C C2 92  JMP loc_92C2
bra_91FA:
C - - - - - 0x01920A 06:91FA: A9 00     LDA #$00
C - - - - - 0x01920C 06:91FC: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01920F 06:91FF: 60        RTS



ofs_005_08_9200_02:
C - - J - - 0x019210 06:9200: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x019213 06:9203: 18        CLC
C - - - - - 0x019214 06:9204: 69 E0     ADC #$E0
C - - - - - 0x019216 06:9206: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x019219 06:9209: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01921C 06:920C: 69 02     ADC #< $0002
C - - - - - 0x01921E 06:920E: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019221 06:9211: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019224 06:9214: 69 00     ADC #> $0002
C - - - - - 0x019226 06:9216: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x019229 06:9219: 4C C2 92  JMP loc_92C2



ofs_005_08_921C_03:
C - - J - - 0x01922C 06:921C: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x01922F 06:921F: 38        SEC
C - - - - - 0x019230 06:9220: E9 E0     SBC #< $02E0
C - - - - - 0x019232 06:9222: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x019235 06:9225: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019238 06:9228: E9 02     SBC #> $02E0
C - - - - - 0x01923A 06:922A: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01923D 06:922D: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019240 06:9230: E9 00     SBC #$00
C - - - - - 0x019242 06:9232: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x019245 06:9235: 4C C2 92  JMP loc_92C2



ofs_005_08_9238_04:
C - - J - - 0x019248 06:9238: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01924B 06:923B: 18        CLC
C - - - - - 0x01924C 06:923C: 69 02     ADC #< $0002
C - - - - - 0x01924E 06:923E: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019251 06:9241: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019254 06:9244: 69 00     ADC #> $0002
C - - - - - 0x019256 06:9246: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x019259 06:9249: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01925C 06:924C: 38        SEC
C - - - - - 0x01925D 06:924D: E9 02     SBC #< $0002
C - - - - - 0x01925F 06:924F: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019262 06:9252: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019265 06:9255: E9 00     SBC #> $0002
C - - - - - 0x019267 06:9257: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01926A 06:925A: 4C C2 92  JMP loc_92C2



ofs_005_08_925D_05:
C - - J - - 0x01926D 06:925D: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019270 06:9260: 38        SEC
C - - - - - 0x019271 06:9261: E9 02     SBC #< $0002
C - - - - - 0x019273 06:9263: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019276 06:9266: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019279 06:9269: E9 00     SBC #> $0002
C - - - - - 0x01927B 06:926B: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01927E 06:926E: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019281 06:9271: 38        SEC
C - - - - - 0x019282 06:9272: E9 02     SBC #< $0002
C - - - - - 0x019284 06:9274: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019287 06:9277: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01928A 06:927A: E9 00     SBC #> $0002
C - - - - - 0x01928C 06:927C: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01928F 06:927F: 4C C2 92  JMP loc_92C2



ofs_005_08_9282_06:
C - - J - - 0x019292 06:9282: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019295 06:9285: 18        CLC
C - - - - - 0x019296 06:9286: 69 02     ADC #< $0002
C - - - - - 0x019298 06:9288: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01929B 06:928B: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01929E 06:928E: 69 00     ADC #> $0002
C - - - - - 0x0192A0 06:9290: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0192A3 06:9293: A9 05     LDA #$05
C - - - - - 0x0192A5 06:9295: 85 3C     STA ram_003C
C - - - - - 0x0192A7 06:9297: A9 18     LDA #$18
C - - - - - 0x0192A9 06:9299: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x0192AC 06:929C: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x0192AF 06:929F: 4C C2 92  JMP loc_92C2



ofs_005_08_92A2_07:
C - - J - - 0x0192B2 06:92A2: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0192B5 06:92A5: 38        SEC
C - - - - - 0x0192B6 06:92A6: E9 02     SBC #< $0002
C - - - - - 0x0192B8 06:92A8: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x0192BB 06:92AB: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0192BE 06:92AE: E9 00     SBC #> $0002
C - - - - - 0x0192C0 06:92B0: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x0192C3 06:92B3: A9 05     LDA #$05
C - - - - - 0x0192C5 06:92B5: 85 3C     STA ram_003C
C - - - - - 0x0192C7 06:92B7: A9 18     LDA #$18
C - - - - - 0x0192C9 06:92B9: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x0192CC 06:92BC: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x0192CF 06:92BF: 4C C2 92  JMP loc_92C2



loc_92C2:
C D 0 - - - 0x0192D2 06:92C2: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x0192D5 06:92C5: D0 10     BNE bra_92D7
C - - - - - 0x0192D7 06:92C7: AD 0D 04  LDA ram_040D
C - - - - - 0x0192DA 06:92CA: C9 08     CMP #$08
C - - - - - 0x0192DC 06:92CC: F0 1A     BEQ bra_92E8
C - - - - - 0x0192DE 06:92CE: 20 3D F2  JSR sub_0x01F24D
C - - - - - 0x0192E1 06:92D1: F0 04     BEQ bra_92D7
C - - - - - 0x0192E3 06:92D3: C9 02     CMP #$02
C - - - - - 0x0192E5 06:92D5: D0 0B     BNE bra_92E2
bra_92D7:
C - - - - - 0x0192E7 06:92D7: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x0192EA 06:92DA: F0 03     BEQ bra_92DF
C - - - - - 0x0192EC 06:92DC: DE B0 06  DEC ram_obj_spd_X_fr,X
bra_92DF:
C - - - - - 0x0192EF 06:92DF: 4C E5 DF  JMP loc_0x01DFF5
bra_92E2:
C - - - - - 0x0192F2 06:92E2: A9 00     LDA #$00
C - - - - - 0x0192F4 06:92E4: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0192F7 06:92E7: 60        RTS
bra_92E8:
ofs_005_08_92E8_08:
ofs_005_08_92E8_09:
C - - - - - 0x0192F8 06:92E8: AD 20 06  LDA ram_0616_obj + $0A
C - - - - - 0x0192FB 06:92EB: C9 03     CMP #$03
C - - - - - 0x0192FD 06:92ED: 90 19     BCC bra_9308
C - - - - - 0x0192FF 06:92EF: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x019302 06:92F2: D0 E3     BNE bra_92D7
C - - - - - 0x019304 06:92F4: 20 3D F2  JSR sub_0x01F24D
C - - - - - 0x019307 06:92F7: F0 04     BEQ bra_92FD
C - - - - - 0x019309 06:92F9: C9 02     CMP #$02
C - - - - - 0x01930B 06:92FB: D0 E5     BNE bra_92E2
bra_92FD:
C - - - - - 0x01930D 06:92FD: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x019310 06:9300: F0 03     BEQ bra_9305
- - - - - - 0x019312 06:9302: DE B0 06  DEC ram_obj_spd_X_fr,X
bra_9305:
C - - - - - 0x019315 06:9305: 4C E5 DF  JMP loc_0x01DFF5
bra_9308:
C - - - - - 0x019318 06:9308: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x01931B 06:930B: C9 0F     CMP #$0F
C - - - - - 0x01931D 06:930D: 90 47     BCC bra_9356
C - - - - - 0x01931F 06:930F: AD 20 06  LDA ram_0616_obj + $0A
C - - - - - 0x019322 06:9312: C9 01     CMP #$01
C - - - - - 0x019324 06:9314: F0 39     BEQ bra_934F
C - - - - - 0x019326 06:9316: 8A        TXA
C - - - - - 0x019327 06:9317: 29 03     AND #$03
C - - - - - 0x019329 06:9319: A8        TAY
C - - - - - 0x01932A 06:931A: AD 4C 06  LDA ram_obj_pos_X_lo + $0A
C - - - - - 0x01932D 06:931D: 18        CLC
C - - - - - 0x01932E 06:931E: 79 5C 93  ADC tbl_935C,Y
C - - - - - 0x019331 06:9321: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019334 06:9324: AD 62 06  LDA ram_obj_pos_X_hi + $0A
C - - - - - 0x019337 06:9327: 69 00     ADC #$00
C - - - - - 0x019339 06:9329: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01933C 06:932C: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01933F 06:932F: 38        SEC
C - - - - - 0x019340 06:9330: E9 0A     SBC #< $000A
C - - - - - 0x019342 06:9332: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019345 06:9335: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019348 06:9338: E9 00     SBC #> $000A
C - - - - - 0x01934A 06:933A: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01934D 06:933D: AD 8E 06  LDA ram_obj_pos_Y_lo + $0A
C - - - - - 0x019350 06:9340: 38        SEC
C - - - - - 0x019351 06:9341: F9 60 93  SBC tbl_9360_lo,Y
C - - - - - 0x019354 06:9344: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019357 06:9347: AD A4 06  LDA ram_obj_pos_Y_hi + $0A
C - - - - - 0x01935A 06:934A: E9 00     SBC #$00
C - - - - - 0x01935C 06:934C: 9D 9A 06  STA ram_obj_pos_Y_hi,X
bra_934F:
C - - - - - 0x01935F 06:934F: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019362 06:9352: 29 08     AND #con_0776_08
C - - - - - 0x019364 06:9354: F0 05     BEQ bra_935B_RTS
bra_9356:
C - - - - - 0x019366 06:9356: A9 00     LDA #$00
C - - - - - 0x019368 06:9358: 9D 16 06  STA ram_0616_obj,X
bra_935B_RTS:
C - - - - - 0x01936B 06:935B: 60        RTS



tbl_935C:
- D 0 - - - 0x01936C 06:935C: 00        .byte $00   ; 00 
- D 0 - - - 0x01936D 06:935D: 14        .byte $14   ; 01 
- D 0 - - - 0x01936E 06:935E: 0A        .byte $0A   ; 02 
- D 0 - - - 0x01936F 06:935F: 0A        .byte $0A   ; 03 



tbl_9360_lo:
- D 0 - - - 0x019370 06:9360: 07        .byte < $0007   ; 00 
- D 0 - - - 0x019371 06:9361: 07        .byte < $0007   ; 01 
- D 0 - - - 0x019372 06:9362: 0C        .byte < $000C   ; 02 
- D 0 - - - 0x019373 06:9363: 00        .byte < $0000   ; 03 



ofs_005_08_9364_0A:
ofs_005_08_9364_0B:
C - - J - - 0x019374 06:9364: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019376 06:9366: 29 03     AND #$03
C - - - - - 0x019378 06:9368: D0 09     BNE bra_9373
C - - - - - 0x01937A 06:936A: BD 76 07  LDA ram_0776_obj_flags,X
; bzk optimize, ORA 40
C - - - - - 0x01937D 06:936D: 18        CLC
C - - - - - 0x01937E 06:936E: 69 40     ADC #con_0776_flip_H
C - - - - - 0x019380 06:9370: 9D 76 07  STA ram_0776_obj_flags,X
bra_9373:
C - - - - - 0x019383 06:9373: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x019386 06:9376: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x019389 06:9379: AD 20 06  LDA ram_0616_obj + $0A
C - - - - - 0x01938C 06:937C: C9 03     CMP #$03
C - - - - - 0x01938E 06:937E: 90 88     BCC bra_9308
C - - - - - 0x019390 06:9380: 20 3D F2  JSR sub_0x01F24D
C - - - - - 0x019393 06:9383: D0 03     BNE bra_9388
C - - - - - 0x019395 06:9385: 4C E5 DF  JMP loc_0x01DFF5
bra_9388:
C - - - - - 0x019398 06:9388: C9 02     CMP #$02
C - - - - - 0x01939A 06:938A: D0 03     BNE bra_938F
- - - - - - 0x01939C 06:938C: 4C E5 DF  JMP loc_0x01DFF5
bra_938F:
C - - - - - 0x01939F 06:938F: A9 00     LDA #$00
C - - - - - 0x0193A1 06:9391: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0193A4 06:9394: 60        RTS



ofs_005_16_9395_03:
C - - J - - 0x0193A5 06:9395: AD 20 06  LDA ram_0616_obj + $0A
C - - - - - 0x0193A8 06:9398: C9 03     CMP #$03
C - - - - - 0x0193AA 06:939A: B0 03     BCS bra_939F
- - - - - - 0x0193AC 06:939C: 4C 4A 94  JMP loc_944A
bra_939F:
C - - - - - 0x0193AF 06:939F: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x0193B2 06:93A2: F0 03     BEQ bra_93A7
C - - - - - 0x0193B4 06:93A4: 4C EC 94  JMP loc_94EC_RTS
bra_93A7:
C - - - - - 0x0193B7 06:93A7: BD 6E 06  LDA ram_obj_pos_Y_fr,X
C - - - - - 0x0193BA 06:93AA: C9 1E     CMP #$1E
C - - - - - 0x0193BC 06:93AC: 90 29     BCC bra_93D7
C - - - - - 0x0193BE 06:93AE: AD 28 06  LDA ram_0616_obj + $12
C - - - - - 0x0193C1 06:93B1: 18        CLC
C - - - - - 0x0193C2 06:93B2: 6D 29 06  ADC ram_0616_obj + $13
C - - - - - 0x0193C5 06:93B5: 6D 2A 06  ADC ram_0616_obj + $14
C - - - - - 0x0193C8 06:93B8: C9 0B     CMP #$0B
C - - - - - 0x0193CA 06:93BA: B0 1E     BCS bra_93DA
C - - - - - 0x0193CC 06:93BC: A9 FA     LDA #$FA
C - - - - - 0x0193CE 06:93BE: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0193D1 06:93C1: A9 04     LDA #$04
C - - - - - 0x0193D3 06:93C3: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x0193D6 06:93C6: AD 80 07  LDA ram_0776_obj_flags + $0A
C - - - - - 0x0193D9 06:93C9: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x0193DB 06:93CB: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x0193DE 06:93CE: 49 FF     EOR #$FF
C - - - - - 0x0193E0 06:93D0: 2A        ROL
C - - - - - 0x0193E1 06:93D1: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x0193E4 06:93D4: 4C 64 94  JMP loc_9464
bra_93D7:
C - - - - - 0x0193E7 06:93D7: FE 6E 06  INC ram_obj_pos_Y_fr,X
bra_93DA:
C - - - - - 0x0193EA 06:93DA: AD 8E 06  LDA ram_obj_pos_Y_lo + $0A
C - - - - - 0x0193ED 06:93DD: 38        SEC
C - - - - - 0x0193EE 06:93DE: E9 18     SBC #< $0018
C - - - - - 0x0193F0 06:93E0: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0193F3 06:93E3: AD A4 06  LDA ram_obj_pos_Y_hi + $0A
C - - - - - 0x0193F6 06:93E6: E9 00     SBC #> $0018
C - - - - - 0x0193F8 06:93E8: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0193FB 06:93EB: AD 4C 06  LDA ram_obj_pos_X_lo + $0A
C - - - - - 0x0193FE 06:93EE: 18        CLC
C - - - - - 0x0193FF 06:93EF: 69 10     ADC #< $0010
C - - - - - 0x019401 06:93F1: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019404 06:93F4: AD 62 06  LDA ram_obj_pos_X_hi + $0A
C - - - - - 0x019407 06:93F7: 69 00     ADC #> $0010
C - - - - - 0x019409 06:93F9: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01940C 06:93FC: AD 80 07  LDA ram_0776_obj_flags + $0A
C - - - - - 0x01940F 06:93FF: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019412 06:9402: 29 40     AND #con_0776_flip_H
C - - - - - 0x019414 06:9404: D0 11     BNE bra_9417
C - - - - - 0x019416 06:9406: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019419 06:9409: 38        SEC
C - - - - - 0x01941A 06:940A: E9 20     SBC #< $0020
C - - - - - 0x01941C 06:940C: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01941F 06:940F: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019422 06:9412: E9 00     SBC #> $0020
C - - - - - 0x019424 06:9414: 9D 58 06  STA ram_obj_pos_X_hi,X
bra_9417:
C - - - - - 0x019427 06:9417: AD FC 06  LDA ram_obj_spd_Y_lo + $0A
C - - - - - 0x01942A 06:941A: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01942D 06:941D: AD D0 06  LDA ram_obj_spd_X_lo + $0A
C - - - - - 0x019430 06:9420: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019433 06:9423: AD BA 06  LDA ram_obj_spd_X_fr + $0A
C - - - - - 0x019436 06:9426: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x019439 06:9429: A9 00     LDA #$00
C - - - - - 0x01943B 06:942B: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x01943E 06:942E: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x019441 06:9431: 60        RTS



ofs_005_16_9432_04:
C - - J - - 0x019442 06:9432: AD 20 06  LDA ram_0616_obj + $0A
C - - - - - 0x019445 06:9435: C9 03     CMP #$03
C - - - - - 0x019447 06:9437: 90 11     BCC bra_944A
C - - - - - 0x019449 06:9439: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01944C 06:943C: D0 1E     BNE bra_945C
C - - - - - 0x01944E 06:943E: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019451 06:9441: F0 19     BEQ bra_945C
C - - - - - 0x019453 06:9443: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019456 06:9446: C9 2F     CMP #$2F
C - - - - - 0x019458 06:9448: 90 12     BCC bra_945C
bra_944A:
loc_944A:
C - - - - - 0x01945A 06:944A: A9 02     LDA #$02
C - - - - - 0x01945C 06:944C: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01945F 06:944F: 4C C8 E1  JMP loc_0x01E1D8_initialize_animation



ofs_005_2A_9452_01:
C - - J - - 0x019462 06:9452: A9 03     LDA #$03
C - - - - - 0x019464 06:9454: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019467 06:9457: A9 1E     LDA #$1E
C - - - - - 0x019469 06:9459: 9D CE 07  STA ram_07CE_obj_hp,X
bra_945C:
ofs_005_16_945C_01:
C - - J - - 0x01946C 06:945C: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x01946F 06:945F: F0 03     BEQ bra_9464
C - - - - - 0x019471 06:9461: 4C EC 94  JMP loc_94EC_RTS
bra_9464:
loc_9464:
C D 0 - - - 0x019474 06:9464: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019477 06:9467: 30 08     BMI bra_9471
C - - - - - 0x019479 06:9469: A9 01     LDA #$01    ; 0100
C - - - - - 0x01947B 06:946B: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01947E 06:946E: 4C 76 94  JMP loc_9476
bra_9471:
C - - - - - 0x019481 06:9471: A9 FF     LDA #$FF    ; FF00
C - - - - - 0x019483 06:9473: 9D C6 06  STA ram_obj_spd_X_lo,X
loc_9476:
C D 0 - - - 0x019486 06:9476: A9 00     LDA #$00
C - - - - - 0x019488 06:9478: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01948B 06:947B: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x01948E 06:947E: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019491 06:9481: 18        CLC
C - - - - - 0x019492 06:9482: 69 04     ADC #< $0004
C - - - - - 0x019494 06:9484: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019497 06:9487: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01949A 06:948A: 69 00     ADC #> $0004
C - - - - - 0x01949C 06:948C: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01949F 06:948F: A9 09     LDA #$09
C - - - - - 0x0194A1 06:9491: 85 3C     STA ram_003C
C - - - - - 0x0194A3 06:9493: A9 0C     LDA #$0C
C - - - - - 0x0194A5 06:9495: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x0194A8 06:9498: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0194AB 06:949B: 48        PHA
C - - - - - 0x0194AC 06:949C: 20 F6 94  JSR sub_94F6
C - - - - - 0x0194AF 06:949F: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0194B2 06:94A2: 38        SEC
C - - - - - 0x0194B3 06:94A3: E9 04     SBC #< $0004
C - - - - - 0x0194B5 06:94A5: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0194B8 06:94A8: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0194BB 06:94AB: E9 00     SBC #> $0004
C - - - - - 0x0194BD 06:94AD: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0194C0 06:94B0: A9 00     LDA #$00
C - - - - - 0x0194C2 06:94B2: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x0194C5 06:94B5: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x0194C8 06:94B8: 30 08     BMI bra_94C2
C - - - - - 0x0194CA 06:94BA: A9 02     LDA #$02    ; 0200
C - - - - - 0x0194CC 06:94BC: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x0194CF 06:94BF: 4C C7 94  JMP loc_94C7
bra_94C2:
C - - - - - 0x0194D2 06:94C2: A9 FE     LDA #$FE    ; FE00
C - - - - - 0x0194D4 06:94C4: 9D C6 06  STA ram_obj_spd_X_lo,X
loc_94C7:
C D 0 - - - 0x0194D7 06:94C7: 68        PLA
C - - - - - 0x0194D8 06:94C8: 85 00     STA ram_0000_t52_spd_Y_lo
C - - - - - 0x0194DA 06:94CA: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0194DD 06:94CD: 1D DC 06  ORA ram_obj_spd_Y_fr,X
C - - - - - 0x0194E0 06:94D0: D0 1A     BNE bra_94EC_RTS
C - - - - - 0x0194E2 06:94D2: A9 A0     LDA #$A0
C - - - - - 0x0194E4 06:94D4: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0194E7 06:94D7: A5 00     LDA ram_0000_t52_spd_Y_lo
C - - - - - 0x0194E9 06:94D9: 49 FF     EOR #$FF
C - - - - - 0x0194EB 06:94DB: 18        CLC
C - - - - - 0x0194EC 06:94DC: 69 01     ADC #$01
C - - - - - 0x0194EE 06:94DE: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0194F1 06:94E1: 10 09     BPL bra_94EC_RTS
C - - - - - 0x0194F3 06:94E3: C9 FF     CMP #$FF
C - - - - - 0x0194F5 06:94E5: B0 05     BCS bra_94EC_RTS
C - - - - - 0x0194F7 06:94E7: A9 09     LDA #con_sfx_09
; bzk optimize, JMP
C - - - - - 0x0194F9 06:94E9: 20 1A FF  JSR sub_0x01FF2A_play_sound
bra_94EC_RTS:
loc_94EC_RTS:   ; bzk optimize
C D 0 - - - 0x0194FC 06:94EC: 60        RTS
bra_94ED_RTS:
loc_94ED_RTS:   ; bzk optimize
C D 0 - - - 0x0194FD 06:94ED: 60        RTS



loc_94EE:
sub_94EE:
ofs_005_2C_0x0194FE_03:
ofs_005_11_94EE_01:
ofs_005_12_94EE_01:
C D 0 J - - 0x0194FE 06:94EE: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019501 06:94F1: D0 FA     BNE bra_94ED_RTS    ; if no collision?
C - - - - - 0x019503 06:94F3: 20 74 89  JSR sub_8974_move_obj_X_axis
sub_94F6:
C - - - - - 0x019506 06:94F6: 20 99 9F  JSR sub_9F99
C - - - - - 0x019509 06:94F9: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01950C 06:94FC: 10 03     BPL bra_9501
C - - - - - 0x01950E 06:94FE: 20 99 96  JSR sub_9699
bra_9501:
C - - - - - 0x019511 06:9501: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019514 06:9504: 38        SEC
C - - - - - 0x019515 06:9505: E9 06     SBC #< $0006
C - - - - - 0x019517 06:9507: 85 06     STA ram_0006_temp
C - - - - - 0x019519 06:9509: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01951C 06:950C: E9 00     SBC #> $0006
C - - - - - 0x01951E 06:950E: 85 07     STA ram_0007_temp
C - - - - - 0x019520 06:9510: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019523 06:9513: 10 1F     BPL bra_9534
C - - - - - 0x019525 06:9515: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019528 06:9518: 38        SEC
C - - - - - 0x019529 06:9519: E9 05     SBC #< $0005
C - - - - - 0x01952B 06:951B: 85 04     STA ram_0004_temp
C - - - - - 0x01952D 06:951D: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019530 06:9520: E9 00     SBC #> $0005
C - - - - - 0x019532 06:9522: 85 05     STA ram_0005_temp
C - - - - - 0x019534 06:9524: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x019537 06:9527: F0 2A     BEQ bra_9553
C - - - - - 0x019539 06:9529: 4A        LSR
C - - - - - 0x01953A 06:952A: C9 02     CMP #$02
C - - - - - 0x01953C 06:952C: F0 25     BEQ bra_9553
C - - - - - 0x01953E 06:952E: 20 20 96  JSR sub_9620_moving_right
C - - - - - 0x019541 06:9531: 4C 53 95  JMP loc_9553
bra_9534:
C - - - - - 0x019544 06:9534: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019547 06:9537: 18        CLC
C - - - - - 0x019548 06:9538: 69 05     ADC #< $0005
C - - - - - 0x01954A 06:953A: 85 04     STA ram_0004_temp
C - - - - - 0x01954C 06:953C: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01954F 06:953F: 69 00     ADC #> $0005
C - - - - - 0x019551 06:9541: 85 05     STA ram_0005_temp
C - - - - - 0x019553 06:9543: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x019556 06:9546: F0 0B     BEQ bra_9553
C - - - - - 0x019558 06:9548: 4A        LSR
C - - - - - 0x019559 06:9549: C9 02     CMP #$02
C - - - - - 0x01955B 06:954B: F0 06     BEQ bra_9553
C - - - - - 0x01955D 06:954D: 20 33 96  JSR sub_9633_moving_left
C - - - - - 0x019560 06:9550: 4C 53 95  JMP loc_9553
bra_9553:
loc_9553:
C D 0 - - - 0x019563 06:9553: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019566 06:9556: 85 04     STA ram_0004_temp
C - - - - - 0x019568 06:9558: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01956B 06:955B: 85 05     STA ram_0005_temp
C - - - - - 0x01956D 06:955D: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019570 06:9560: 18        CLC
C - - - - - 0x019571 06:9561: 69 08     ADC #< $0008
C - - - - - 0x019573 06:9563: 85 06     STA ram_0006_temp
C - - - - - 0x019575 06:9565: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019578 06:9568: 69 00     ADC #> $0008
C - - - - - 0x01957A 06:956A: 85 07     STA ram_0007_temp
C - - - - - 0x01957C 06:956C: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x01957F 06:956F: C9 01     CMP #$01
C - - - - - 0x019581 06:9571: F0 0B     BEQ bra_957E
C - - - - - 0x019583 06:9573: C9 02     CMP #$02
C - - - - - 0x019585 06:9575: F0 07     BEQ bra_957E
C - - - - - 0x019587 06:9577: C9 0E     CMP #$0E
C - - - - - 0x019589 06:9579: F0 03     BEQ bra_957E
C - - - - - 0x01958B 06:957B: 4C 09 96  JMP loc_9609
bra_957E:
C - - - - - 0x01958E 06:957E: A9 00     LDA #$00
C - - - - - 0x019590 06:9580: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x019593 06:9583: A5 06     LDA ram_0006_temp
C - - - - - 0x019595 06:9585: 29 F0     AND #$F0
C - - - - - 0x019597 06:9587: 38        SEC
C - - - - - 0x019598 06:9588: E9 08     SBC #< $0008
C - - - - - 0x01959A 06:958A: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01959D 06:958D: A5 07     LDA ram_0007_temp
C - - - - - 0x01959F 06:958F: E9 00     SBC #> $0008
C - - - - - 0x0195A1 06:9591: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0195A4 06:9594: 20 BA 89  JSR sub_89BA_clear_Y_speed
C - - - - - 0x0195A7 06:9597: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x0195AA 06:959A: C9 22     CMP #con_obj_id_22
C - - - - - 0x0195AC 06:959C: D0 02     BNE bra_95A0
C - - - - - 0x0195AE 06:959E: A9 11     LDA #$11
bra_95A0:
C - - - - - 0x0195B0 06:95A0: 29 0F     AND #$0F
C - - - - - 0x0195B2 06:95A2: C9 01     CMP #$01
C - - - - - 0x0195B4 06:95A4: F0 03     BEQ bra_95A9
C - - - - - 0x0195B6 06:95A6: 4C 46 96  JMP loc_9646
bra_95A9:
C - - - - - 0x0195B9 06:95A9: A5 33     LDA ram_round
C - - - - - 0x0195BB 06:95AB: C9 0D     CMP #$0D
C - - - - - 0x0195BD 06:95AD: D0 33     BNE bra_95E2
C - - - - - 0x0195BF 06:95AF: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x0195C2 06:95B2: 09 02     ORA #con_0776_spr_A + $02
C - - - - - 0x0195C4 06:95B4: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x0195C7 06:95B7: BD 1E 07  LDA ram_071E_obj_queue_id,X
; * 08
C - - - - - 0x0195CA 06:95BA: 0A        ASL
C - - - - - 0x0195CB 06:95BB: 0A        ASL
C - - - - - 0x0195CC 06:95BC: 0A        ASL
C - - - - - 0x0195CD 06:95BD: 18        CLC
C - - - - - 0x0195CE 06:95BE: 65 37     ADC ram_frm_cnt_3
C - - - - - 0x0195D0 06:95C0: 29 3F     AND #$3F
C - - - - - 0x0195D2 06:95C2: D0 44     BNE bra_9608_RTS
C - - - - - 0x0195D4 06:95C4: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x0195D7 06:95C7: 38        SEC
C - - - - - 0x0195D8 06:95C8: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x0195DB 06:95CB: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x0195DE 06:95CE: FD 58 06  SBC ram_obj_pos_X_hi,X
C - - - - - 0x0195E1 06:95D1: 5D C6 06  EOR ram_obj_spd_X_lo,X
C - - - - - 0x0195E4 06:95D4: 29 80     AND #$80
C - - - - - 0x0195E6 06:95D6: D0 30     BNE bra_9608_RTS
C - - - - - 0x0195E8 06:95D8: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x0195EB 06:95DB: 29 01     AND #$01
C - - - - - 0x0195ED 06:95DD: 09 24     ORA #$24
C - - - - - 0x0195EF 06:95DF: 20 7C A0  JSR sub_A07C
bra_95E2:
C - - - - - 0x0195F2 06:95E2: A4 33     LDY ram_round
C - - - - - 0x0195F4 06:95E4: B9 09 E5  LDA tbl_0x01E519_round_data,Y
C - - - - - 0x0195F7 06:95E7: 29 7F     AND #$7F
C - - - - - 0x0195F9 06:95E9: C9 03     CMP #$03
C - - - - - 0x0195FB 06:95EB: D0 1B     BNE bra_9608_RTS
C - - - - - 0x0195FD 06:95ED: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019600 06:95F0: 29 0F     AND #$0F
C - - - - - 0x019602 06:95F2: 1D 2C 06  ORA ram_obj_pos_X_fr,X
C - - - - - 0x019605 06:95F5: C9 08     CMP #$08
C - - - - - 0x019607 06:95F7: D0 0F     BNE bra_9608_RTS
C - - - - - 0x019609 06:95F9: A9 FD     LDA #> $FD00
C - - - - - 0x01960B 06:95FB: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01960E 06:95FE: A9 00     LDA #< $FD00
C - - - - - 0x019610 06:9600: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019613 06:9603: A9 03     LDA #$03
C - - - - - 0x019615 06:9605: 9D 16 06  STA ram_0616_obj,X
bra_9608_RTS:
C - - - - - 0x019618 06:9608: 60        RTS



loc_9609:
C D 0 - - - 0x019619 06:9609: 20 EC DE  JSR sub_0x01DEFC
C - - - - - 0x01961C 06:960C: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x01961F 06:960F: C9 22     CMP #con_obj_id_22
C - - - - - 0x019621 06:9611: D0 02     BNE bra_9615
C - - - - - 0x019623 06:9613: A9 11     LDA #$11
bra_9615:
C - - - - - 0x019625 06:9615: 29 0F     AND #$0F
C - - - - - 0x019627 06:9617: C9 01     CMP #$01
C - - - - - 0x019629 06:9619: D0 2B     BNE bra_9646
loc_961B:
C D 0 - - - 0x01962B 06:961B: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01962E 06:961E: 10 13     BPL bra_9633_moving_left
sub_9620_moving_right:
C - - - - - 0x019630 06:9620: A9 00     LDA #> $0080
C - - - - - 0x019632 06:9622: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019635 06:9625: A9 80     LDA #< $0080
C - - - - - 0x019637 06:9627: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01963A 06:962A: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01963D 06:962D: 09 40     ORA #con_0776_flip_H
C - - - - - 0x01963F 06:962F: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019642 06:9632: 60        RTS
bra_9633_moving_left:
sub_9633_moving_left:
C - - - - - 0x019643 06:9633: A9 FF     LDA #> $FF80
C - - - - - 0x019645 06:9635: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019648 06:9638: A9 80     LDA #< $FF80
C - - - - - 0x01964A 06:963A: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01964D 06:963D: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019650 06:9640: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x019652 06:9642: 9D 76 07  STA ram_0776_obj_flags,X
bra_9645_RTS:
loc_9645_RTS:   ; bzk optimize
C D 0 - - - 0x019655 06:9645: 60        RTS
bra_9646:
loc_9646:
C D 0 - - - 0x019656 06:9646: A9 07     LDA #$07
C - - - - - 0x019658 06:9648: 20 FF 89  JSR sub_89FF
C - - - - - 0x01965B 06:964B: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x01965E 06:964E: 4A        LSR
C - - - - - 0x01965F 06:964F: C9 02     CMP #$02
C - - - - - 0x019661 06:9651: D0 F2     BNE bra_9645_RTS
C - - - - - 0x019663 06:9653: A5 0F     LDA ram_000F
C - - - - - 0x019665 06:9655: 29 01     AND #$01
C - - - - - 0x019667 06:9657: F0 0D     BEQ bra_9666
C - - - - - 0x019669 06:9659: A9 0F     LDA #$0F
C - - - - - 0x01966B 06:965B: 38        SEC
C - - - - - 0x01966C 06:965C: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x01966F 06:965F: 29 0F     AND #$0F
C - - - - - 0x019671 06:9661: 85 0F     STA ram_000F
C - - - - - 0x019673 06:9663: 4C 6D 96  JMP loc_966D
bra_9666:
C - - - - - 0x019676 06:9666: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019679 06:9669: 29 0F     AND #$0F
C - - - - - 0x01967B 06:966B: 85 0F     STA ram_000F
loc_966D:
C D 0 - - - 0x01967D 06:966D: A5 06     LDA ram_0006_temp
C - - - - - 0x01967F 06:966F: 29 F0     AND #$F0
C - - - - - 0x019681 06:9671: 09 07     ORA #$07
C - - - - - 0x019683 06:9673: 38        SEC
C - - - - - 0x019684 06:9674: E5 0F     SBC ram_000F
C - - - - - 0x019686 06:9676: 85 06     STA ram_0006_temp
C - - - - - 0x019688 06:9678: A5 07     LDA ram_0007_temp
C - - - - - 0x01968A 06:967A: E9 00     SBC #$00
C - - - - - 0x01968C 06:967C: 85 07     STA ram_0007_temp
C - - - - - 0x01968E 06:967E: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019691 06:9681: 38        SEC
C - - - - - 0x019692 06:9682: E5 06     SBC ram_0006_temp
C - - - - - 0x019694 06:9684: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019697 06:9687: E5 07     SBC ram_0007_temp
C - - - - - 0x019699 06:9689: 30 0D     BMI bra_9698_RTS
C - - - - - 0x01969B 06:968B: A5 06     LDA ram_0006_temp
C - - - - - 0x01969D 06:968D: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0196A0 06:9690: A5 07     LDA ram_0007_temp
C - - - - - 0x0196A2 06:9692: 9D 9A 06  STA ram_obj_pos_Y_hi,X
; bzk optimize, JMP
C - - - - - 0x0196A5 06:9695: 20 BA 89  JSR sub_89BA_clear_Y_speed
bra_9698_RTS:
C - - - - - 0x0196A8 06:9698: 60        RTS



sub_9699:
C - - - - - 0x0196A9 06:9699: A9 F7     LDA #$F7
C - - - - - 0x0196AB 06:969B: 20 0D 8A  JSR sub_8A0D
C - - - - - 0x0196AE 06:969E: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x0196B1 06:96A1: F0 19     BEQ bra_96BC_RTS
C - - - - - 0x0196B3 06:96A3: A5 06     LDA ram_0006_temp
C - - - - - 0x0196B5 06:96A5: 29 F0     AND #$F0
C - - - - - 0x0196B7 06:96A7: 18        CLC
C - - - - - 0x0196B8 06:96A8: 69 15     ADC #< $0015
C - - - - - 0x0196BA 06:96AA: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0196BD 06:96AD: A5 07     LDA ram_0007_temp
C - - - - - 0x0196BF 06:96AF: 69 00     ADC #> $0015
C - - - - - 0x0196C1 06:96B1: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0196C4 06:96B4: A9 00     LDA #$00
C - - - - - 0x0196C6 06:96B6: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0196C9 06:96B9: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_96BC_RTS:
C - - - - - 0x0196CC 06:96BC: 60        RTS



ofs_005_11_96BD_03:
C - - J - - 0x0196CD 06:96BD: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x0196D0 06:96C0: D0 35     BNE bra_96F7_RTS
C - - - - - 0x0196D2 06:96C2: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x0196D5 06:96C5: 20 EC DE  JSR sub_0x01DEFC
C - - - - - 0x0196D8 06:96C8: A9 FC     LDA #$FC
C - - - - - 0x0196DA 06:96CA: 20 0D 8A  JSR sub_8A0D
C - - - - - 0x0196DD 06:96CD: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x0196E0 06:96D0: D0 26     BNE bra_96F8
C - - - - - 0x0196E2 06:96D2: A9 08     LDA #$08
C - - - - - 0x0196E4 06:96D4: 20 FF 89  JSR sub_89FF
C - - - - - 0x0196E7 06:96D7: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x0196EA 06:96DA: F0 1B     BEQ bra_96F7_RTS
C - - - - - 0x0196EC 06:96DC: A9 00     LDA #$00
C - - - - - 0x0196EE 06:96DE: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x0196F1 06:96E1: A5 06     LDA ram_0006_temp
C - - - - - 0x0196F3 06:96E3: 29 F0     AND #$F0
C - - - - - 0x0196F5 06:96E5: 38        SEC
C - - - - - 0x0196F6 06:96E6: E9 08     SBC #< $0008
C - - - - - 0x0196F8 06:96E8: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0196FB 06:96EB: A5 07     LDA ram_0007_temp
C - - - - - 0x0196FD 06:96ED: E9 00     SBC #> $0008
C - - - - - 0x0196FF 06:96EF: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019702 06:96F2: A9 01     LDA #$01
C - - - - - 0x019704 06:96F4: 9D 16 06  STA ram_0616_obj,X
bra_96F7_RTS:
C - - - - - 0x019707 06:96F7: 60        RTS
bra_96F8:
C - - - - - 0x019708 06:96F8: A9 00     LDA #$00
C - - - - - 0x01970A 06:96FA: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01970D 06:96FD: A5 06     LDA ram_0006_temp
C - - - - - 0x01970F 06:96FF: 29 F0     AND #$F0
C - - - - - 0x019711 06:9701: 18        CLC
C - - - - - 0x019712 06:9702: 69 14     ADC #< $0014
C - - - - - 0x019714 06:9704: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019717 06:9707: A5 07     LDA ram_0007_temp
C - - - - - 0x019719 06:9709: 69 00     ADC #> $0014
C - - - - - 0x01971B 06:970B: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01971E 06:970E: 4C BA 89  JMP loc_89BA_clear_Y_speed



ofs_005_13_9711_01:
C - - J - - 0x019721 06:9711: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019724 06:9714: F0 03     BEQ bra_9719
C - - - - - 0x019726 06:9716: 4C 45 96  JMP loc_9645_RTS
bra_9719:
C - - - - - 0x019729 06:9719: A4 33     LDY ram_round
C - - - - - 0x01972B 06:971B: B9 09 E5  LDA tbl_0x01E519_round_data,Y
C - - - - - 0x01972E 06:971E: 29 0F     AND #$0F
C - - - - - 0x019730 06:9720: C9 08     CMP #$08
C - - - - - 0x019732 06:9722: F0 04     BEQ bra_9728
C - - - - - 0x019734 06:9724: C9 04     CMP #$04
C - - - - - 0x019736 06:9726: D0 1E     BNE bra_9746
bra_9728:
C - - - - - 0x019738 06:9728: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x01973B 06:972B: 09 40     ORA #con_0708_40
C - - - - - 0x01973D 06:972D: 9D 08 07  STA ram_0708_obj_flags,X
C - - - - - 0x019740 06:9730: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019743 06:9733: 29 FD     AND #con_0776_spr_A + $02 ^ $FF
C - - - - - 0x019745 06:9735: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019748 06:9738: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x01974A 06:973A: 29 0A     AND #$0A
C - - - - - 0x01974C 06:973C: D0 08     BNE bra_9746
C - - - - - 0x01974E 06:973E: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019751 06:9741: 09 03     ORA #con_0776_spr_A + $03
C - - - - - 0x019753 06:9743: 9D 76 07  STA ram_0776_obj_flags,X
bra_9746:
C - - - - - 0x019756 06:9746: A9 00     LDA #$00
C - - - - - 0x019758 06:9748: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01975B 06:974B: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01975E 06:974E: 20 EC DE  JSR sub_0x01DEFC
C - - - - - 0x019761 06:9751: 20 99 9F  JSR sub_9F99
C - - - - - 0x019764 06:9754: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019767 06:9757: 38        SEC
C - - - - - 0x019768 06:9758: ED 42 06  SBC ram_obj_pos_X_lo
C - - - - - 0x01976B 06:975B: 08        PHP
C - - - - - 0x01976C 06:975C: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01976F 06:975F: ED 58 06  SBC ram_obj_pos_X_hi
C - - - - - 0x019772 06:9762: 30 0C     BMI bra_9770
C - - - - - 0x019774 06:9764: 28        PLP
C - - - - - 0x019775 06:9765: F0 08     BEQ bra_976F_RTS
C - - - - - 0x019777 06:9767: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01977A 06:976A: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x01977C 06:976C: 9D 76 07  STA ram_0776_obj_flags,X
bra_976F_RTS:
C - - - - - 0x01977F 06:976F: 60        RTS
bra_9770:
C - - - - - 0x019780 06:9770: 28        PLP
C - - - - - 0x019781 06:9771: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019784 06:9774: 09 40     ORA #con_0776_flip_H
C - - - - - 0x019786 06:9776: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019789 06:9779: 60        RTS


; bzk garbage up to 0x019858
- - - - - - 0x01978A 06:977A: 20 AC DF  JSR sub_0x01DFBC
- - - - - - 0x01978D 06:977D: F0 03     BEQ bra_9782
- - - - - - 0x01978F 06:977F: 4C ED 94  JMP loc_94ED_RTS
bra_9782:
- - - - - - 0x019792 06:9782: 20 74 89  JSR sub_8974_move_obj_X_axis
- - - - - - 0x019795 06:9785: 20 3D F2  JSR sub_0x01F24D
- - - - - - 0x019798 06:9788: F0 13     BEQ bra_979D
- - - - - - 0x01979A 06:978A: BD C6 06  LDA ram_obj_spd_X_lo,X
- - - - - - 0x01979D 06:978D: 49 FF     EOR #$FF
- - - - - - 0x01979F 06:978F: 9D C6 06  STA ram_obj_spd_X_lo,X
- - - - - - 0x0197A2 06:9792: BD 76 07  LDA ram_0776_obj_flags,X
- - - - - - 0x0197A5 06:9795: 49 40     EOR #con_0776_flip_H
- - - - - - 0x0197A7 06:9797: 9D 76 07  STA ram_0776_obj_flags,X
- - - - - - 0x0197AA 06:979A: 4C 48 98  JMP loc_9848_RTS
bra_979D:
- - - - - - 0x0197AD 06:979D: BD 08 07  LDA ram_0708_obj_flags,X
- - - - - - 0x0197B0 06:97A0: 29 02     AND #con_0708_02
- - - - - - 0x0197B2 06:97A2: D0 1A     BNE bra_97BE
- - - - - - 0x0197B4 06:97A4: BD DC 06  LDA ram_obj_spd_Y_fr,X
- - - - - - 0x0197B7 06:97A7: 38        SEC
- - - - - - 0x0197B8 06:97A8: E9 20     SBC #$20
- - - - - - 0x0197BA 06:97AA: 9D DC 06  STA ram_obj_spd_Y_fr,X
- - - - - - 0x0197BD 06:97AD: B0 26     BCS bra_97D5
- - - - - - 0x0197BF 06:97AF: DE F2 06  DEC ram_obj_spd_Y_lo,X
- - - - - - 0x0197C2 06:97B2: BD F2 06  LDA ram_obj_spd_Y_lo,X
- - - - - - 0x0197C5 06:97B5: 10 1E     BPL bra_97D5
- - - - - - 0x0197C7 06:97B7: C9 FE     CMP #$FE
- - - - - - 0x0197C9 06:97B9: 90 71     BCC bra_982C
- - - - - - 0x0197CB 06:97BB: 4C D5 97  JMP loc_97D5
bra_97BE:
- - - - - - 0x0197CE 06:97BE: BD DC 06  LDA ram_obj_spd_Y_fr,X
- - - - - - 0x0197D1 06:97C1: 18        CLC
- - - - - - 0x0197D2 06:97C2: 69 20     ADC #$20
- - - - - - 0x0197D4 06:97C4: 9D DC 06  STA ram_obj_spd_Y_fr,X
- - - - - - 0x0197D7 06:97C7: 90 0C     BCC bra_97D5
- - - - - - 0x0197D9 06:97C9: FE F2 06  INC ram_obj_spd_Y_lo,X
- - - - - - 0x0197DC 06:97CC: BD F2 06  LDA ram_obj_spd_Y_lo,X
- - - - - - 0x0197DF 06:97CF: 30 04     BMI bra_97D5
- - - - - - 0x0197E1 06:97D1: C9 02     CMP #$02
- - - - - - 0x0197E3 06:97D3: B0 57     BCS bra_982C
bra_97D5:
loc_97D5:
- - - - - - 0x0197E5 06:97D5: 20 37 89  JSR sub_8937_move_obj_Y_axis
- - - - - - 0x0197E8 06:97D8: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x0197EB 06:97DB: 85 06     STA ram_0006_temp
- - - - - - 0x0197ED 06:97DD: BD 9A 06  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x0197F0 06:97E0: 85 07     STA ram_0007_temp
- - - - - - 0x0197F2 06:97E2: 20 51 F2  JSR sub_0x01F261
- - - - - - 0x0197F5 06:97E5: F0 61     BEQ bra_9848_RTS
- - - - - - 0x0197F7 06:97E7: A9 00     LDA #$00
- - - - - - 0x0197F9 06:97E9: 9D 6E 06  STA ram_obj_pos_Y_fr,X
- - - - - - 0x0197FC 06:97EC: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x0197FF 06:97EF: 29 0F     AND #$0F
- - - - - - 0x019801 06:97F1: C9 08     CMP #$08
- - - - - - 0x019803 06:97F3: B0 26     BCS bra_981B
- - - - - - 0x019805 06:97F5: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x019808 06:97F8: 38        SEC
- - - - - - 0x019809 06:97F9: E9 02     SBC #< $0002
- - - - - - 0x01980B 06:97FB: 9D 84 06  STA ram_obj_pos_Y_lo,X
- - - - - - 0x01980E 06:97FE: BD 9A 06  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x019811 06:9801: E9 00     SBC #> $0002
- - - - - - 0x019813 06:9803: 9D 9A 06  STA ram_obj_pos_Y_hi,X
- - - - - - 0x019816 06:9806: BD 08 07  LDA ram_0708_obj_flags,X
- - - - - - 0x019819 06:9809: 49 02     EOR #con_0708_02
- - - - - - 0x01981B 06:980B: 9D 08 07  STA ram_0708_obj_flags,X
- - - - - - 0x01981E 06:980E: A9 E0     LDA #< $FFE0
- - - - - - 0x019820 06:9810: 9D DC 06  STA ram_obj_spd_Y_fr,X
- - - - - - 0x019823 06:9813: A9 FF     LDA #> $FFE0
- - - - - - 0x019825 06:9815: 9D F2 06  STA ram_obj_spd_Y_lo,X
- - - - - - 0x019828 06:9818: 4C 48 98  JMP loc_9848_RTS
bra_981B:
- - - - - - 0x01982B 06:981B: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x01982E 06:981E: 18        CLC
- - - - - - 0x01982F 06:981F: 69 02     ADC #< $0002
- - - - - - 0x019831 06:9821: 9D 84 06  STA ram_obj_pos_Y_lo,X
- - - - - - 0x019834 06:9824: BD 9A 06  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x019837 06:9827: 69 00     ADC #> $0002
- - - - - - 0x019839 06:9829: 9D 9A 06  STA ram_obj_pos_Y_hi,X
bra_982C:
- - - - - - 0x01983C 06:982C: BD 08 07  LDA ram_0708_obj_flags,X
- - - - - - 0x01983F 06:982F: 49 02     EOR #con_0708_02
- - - - - - 0x019841 06:9831: 9D 08 07  STA ram_0708_obj_flags,X
- - - - - - 0x019844 06:9834: A9 00     LDA #$00
- - - - - - 0x019846 06:9836: 9D F2 06  STA ram_obj_spd_Y_lo,X
- - - - - - 0x019849 06:9839: 9D DC 06  STA ram_obj_spd_Y_fr,X
- - - - - - 0x01984C 06:983C: BD 08 07  LDA ram_0708_obj_flags,X
- - - - - - 0x01984F 06:983F: 29 02     AND #con_0708_02
- - - - - - 0x019851 06:9841: D0 05     BNE bra_9848_RTS
- - - - - - 0x019853 06:9843: A9 60     LDA #$60
- - - - - - 0x019855 06:9845: 9D DC 06  STA ram_obj_spd_Y_fr,X
bra_9848_RTS:
loc_9848_RTS:   ; bzk optimize
- - - - - - 0x019858 06:9848: 60        RTS



ofs_005_1C_9849_01:
C - - J - - 0x019859 06:9849: A9 06     LDA #$06
C - - - - - 0x01985B 06:984B: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01985E 06:984E: A9 03     LDA #$03
C - - - - - 0x019860 06:9850: 9D 16 06  STA ram_0616_obj,X
ofs_005_18_9853_01:
ofs_005_1C_9853_03:
C - - J - - 0x019863 06:9853: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019866 06:9856: F0 03     BEQ bra_985B
C - - - - - 0x019868 06:9858: 4C ED 94  JMP loc_94ED_RTS
bra_985B:
C - - - - - 0x01986B 06:985B: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01986E 06:985E: C9 FD     CMP #$FD
C - - - - - 0x019870 06:9860: D0 05     BNE bra_9867
C - - - - - 0x019872 06:9862: A9 00     LDA #$00
C - - - - - 0x019874 06:9864: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_9867:
C - - - - - 0x019877 06:9867: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x01987A 06:986A: 20 3D F2  JSR sub_0x01F24D
C - - - - - 0x01987D 06:986D: F0 13     BEQ bra_9882
C - - - - - 0x01987F 06:986F: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019882 06:9872: 49 FF     EOR #$FF
C - - - - - 0x019884 06:9874: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019887 06:9877: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01988A 06:987A: 49 40     EOR #con_0776_flip_H
C - - - - - 0x01988C 06:987C: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01988F 06:987F: 4C FA 98  JMP loc_98FA
bra_9882:
C - - - - - 0x019892 06:9882: A9 01     LDA #$01
C - - - - - 0x019894 06:9884: 85 3C     STA ram_003C
C - - - - - 0x019896 06:9886: A9 08     LDA #$08
C - - - - - 0x019898 06:9888: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x01989B 06:988B: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x01989E 06:988E: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0198A1 06:9891: 30 0E     BMI bra_98A1
C - - - - - 0x0198A3 06:9893: C9 01     CMP #$01
C - - - - - 0x0198A5 06:9895: 90 0A     BCC bra_98A1
C - - - - - 0x0198A7 06:9897: A9 FE     LDA #> $FEF8
C - - - - - 0x0198A9 06:9899: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0198AC 06:989C: A9 F8     LDA #< $FEF8
C - - - - - 0x0198AE 06:989E: 9D DC 06  STA ram_obj_spd_Y_fr,X
bra_98A1:
C - - - - - 0x0198B1 06:98A1: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0198B4 06:98A4: 85 06     STA ram_0006_temp
C - - - - - 0x0198B6 06:98A6: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0198B9 06:98A9: 85 07     STA ram_0007_temp
C - - - - - 0x0198BB 06:98AB: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x0198BE 06:98AE: F0 4A     BEQ bra_98FA
C - - - - - 0x0198C0 06:98B0: A9 00     LDA #$00
C - - - - - 0x0198C2 06:98B2: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x0198C5 06:98B5: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0198C8 06:98B8: 29 0F     AND #$0F
C - - - - - 0x0198CA 06:98BA: C9 08     CMP #$08
C - - - - - 0x0198CC 06:98BC: B0 20     BCS bra_98DE
C - - - - - 0x0198CE 06:98BE: A9 FE     LDA #> $FEF8
C - - - - - 0x0198D0 06:98C0: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0198D3 06:98C3: A9 F8     LDA #< $FEF8
C - - - - - 0x0198D5 06:98C5: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0198D8 06:98C8: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0198DB 06:98CB: 29 F0     AND #$F0
C - - - - - 0x0198DD 06:98CD: 38        SEC
C - - - - - 0x0198DE 06:98CE: E9 08     SBC #< $0008
C - - - - - 0x0198E0 06:98D0: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0198E3 06:98D3: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0198E6 06:98D6: E9 00     SBC #> $0008
C - - - - - 0x0198E8 06:98D8: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0198EB 06:98DB: 4C FA 98  JMP loc_98FA
bra_98DE:
- - - - - - 0x0198EE 06:98DE: A9 00     LDA #$00
- - - - - - 0x0198F0 06:98E0: 9D F2 06  STA ram_obj_spd_Y_lo,X
- - - - - - 0x0198F3 06:98E3: 9D DC 06  STA ram_obj_spd_Y_fr,X
- - - - - - 0x0198F6 06:98E6: BD 84 06  LDA ram_obj_pos_Y_lo,X
- - - - - - 0x0198F9 06:98E9: 29 F0     AND #$F0
- - - - - - 0x0198FB 06:98EB: 18        CLC
- - - - - - 0x0198FC 06:98EC: 69 18     ADC #< $0018
- - - - - - 0x0198FE 06:98EE: 9D 84 06  STA ram_obj_pos_Y_lo,X
- - - - - - 0x019901 06:98F1: BD 9A 06  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x019904 06:98F4: 69 00     ADC #> $0018
- - - - - - 0x019906 06:98F6: 9D 9A 06  STA ram_obj_pos_Y_hi,X
- - - - - - 0x019909 06:98F9: 60        RTS
bra_98FA:
loc_98FA:
C D 0 - - - 0x01990A 06:98FA: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01990D 06:98FD: 1D DC 06  ORA ram_obj_spd_Y_fr,X
C - - - - - 0x019910 06:9900: D0 05     BNE bra_9907_RTS
C - - - - - 0x019912 06:9902: A9 FD     LDA #$FD
C - - - - - 0x019914 06:9904: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_9907_RTS:
C - - - - - 0x019917 06:9907: 60        RTS



ofs_005_19_9908_01:
C - - J - - 0x019918 06:9908: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x01991B 06:990B: A9 FF     LDA #$FF
C - - - - - 0x01991D 06:990D: 4C D3 89  JMP loc_89D3_move_obj_X_axis_left



ofs_005_1A_9910_01:
C - - J - - 0x019920 06:9910: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019923 06:9913: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x019926 06:9916: 38        SEC
C - - - - - 0x019927 06:9917: E9 28     SBC #< $0028
C - - - - - 0x019929 06:9919: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x01992C 06:991C: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01992F 06:991F: E9 00     SBC #> $0028
C - - - - - 0x019931 06:9921: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019934 06:9924: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019937 06:9927: E9 00     SBC #$00
C - - - - - 0x019939 06:9929: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01993C 06:992C: 60        RTS



ofs_005_20_992D_01:
C - - J - - 0x01993D 06:992D: A9 03     LDA #$03
C - - - - - 0x01993F 06:992F: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019942 06:9932: A9 00     LDA #$00
C - - - - - 0x019944 06:9934: 9D B0 06  STA ram_obj_spd_X_fr,X
ofs_005_20_9937_03:
C - - - - - 0x019947 06:9937: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x01994A 06:993A: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x01994D 06:993D: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x019950 06:9940: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x019953 06:9943: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x019956 06:9946: A9 01     LDA #$01
C - - - - - 0x019958 06:9948: 85 3C     STA ram_003C
C - - - - - 0x01995A 06:994A: A9 02     LDA #$02
C - - - - - 0x01995C 06:994C: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x01995F 06:994F: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x019962 06:9952: 18        CLC
C - - - - - 0x019963 06:9953: 69 02     ADC #< $0002
C - - - - - 0x019965 06:9955: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x019968 06:9958: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01996B 06:995B: 69 00     ADC #> $0002
C - - - - - 0x01996D 06:995D: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019970 06:9960: 1D B0 06  ORA ram_obj_spd_X_fr,X
C - - - - - 0x019973 06:9963: D0 1C     BNE bra_9981_RTS
C - - - - - 0x019975 06:9965: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019978 06:9968: 38        SEC
C - - - - - 0x019979 06:9969: ED 42 06  SBC ram_obj_pos_X_lo
C - - - - - 0x01997C 06:996C: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01997F 06:996F: ED 58 06  SBC ram_obj_pos_X_hi
C - - - - - 0x019982 06:9972: A9 32     LDA #$32
C - - - - - 0x019984 06:9974: 69 00     ADC #$00
C - - - - - 0x019986 06:9976: 20 7C A0  JSR sub_A07C
C - - - - - 0x019989 06:9979: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01998C 06:997C: 09 40     ORA #con_0776_flip_H
C - - - - - 0x01998E 06:997E: 9D 76 07  STA ram_0776_obj_flags,X
bra_9981_RTS:
C - - - - - 0x019991 06:9981: 60        RTS



ofs_005_2C_0x019992_02:
ofs_005_2C_0x019992_04:
ofs_005_14_9982_02:
ofs_005_15_9982_02:
ofs_005_2A_9982_02:
ofs_005_16_9982_02:
ofs_005_19_9982_02:
ofs_005_1A_9982_02:
ofs_005_20_9982_02:
ofs_005_1E_9982_02:
C - - J - - 0x019992 06:9982: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x019995 06:9985: C9 02     CMP #$02
C - - - - - 0x019997 06:9987: F0 08     BEQ bra_9991
C - - - - - 0x019999 06:9989: A9 02     LDA #$02
C - - - - - 0x01999B 06:998B: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01999E 06:998E: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9991:
C - - - - - 0x0199A1 06:9991: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x0199A4 06:9994: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x0199A6 06:9996: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x0199A9 06:9999: 29 08     AND #con_0776_08
C - - - - - 0x0199AB 06:999B: F0 05     BEQ bra_99A2_RTS
C - - - - - 0x0199AD 06:999D: A9 00     LDA #$00
C - - - - - 0x0199AF 06:999F: 9D 16 06  STA ram_0616_obj,X
bra_99A2_RTS:
C - - - - - 0x0199B2 06:99A2: 60        RTS



ofs_005_14_99A3_01:
ofs_005_15_99A3_01:
C - - J - - 0x0199B3 06:99A3: A9 07     LDA #$07
C - - - - - 0x0199B5 06:99A5: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x0199B8 06:99A8: A9 03     LDA #$03
C - - - - - 0x0199BA 06:99AA: 9D 16 06  STA ram_0616_obj,X
ofs_005_14_99AD_03:
ofs_005_15_99AD_03:
C - - - - - 0x0199BD 06:99AD: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x0199C0 06:99B0: F0 03     BEQ bra_99B5
C - - - - - 0x0199C2 06:99B2: 4C 40 9A  JMP loc_9A40
bra_99B5:
C - - - - - 0x0199C5 06:99B5: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x0199C8 06:99B8: 29 FC     AND #(con_0776_spr_A + $03) ^ $FF
C - - - - - 0x0199CA 06:99BA: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x0199CD 06:99BD: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x0199CF 06:99BF: 29 01     AND #$01
C - - - - - 0x0199D1 06:99C1: D0 03     BNE bra_99C6
C - - - - - 0x0199D3 06:99C3: 4C 40 9A  JMP loc_9A40
bra_99C6:
C - - - - - 0x0199D6 06:99C6: BC 1E 07  LDY ram_071E_obj_queue_id,X
C - - - - - 0x0199D9 06:99C9: A9 00     LDA #$00
C - - - - - 0x0199DB 06:99CB: 85 00     STA ram_0000_t53_pos_Y_hi
C - - - - - 0x0199DD 06:99CD: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x0199E0 06:99D0: 29 1F     AND #$1F
; * 10
C - - - - - 0x0199E2 06:99D2: 0A        ASL
C - - - - - 0x0199E3 06:99D3: 26 00     ROL ram_0000_t53_pos_Y_hi
C - - - - - 0x0199E5 06:99D5: 0A        ASL
C - - - - - 0x0199E6 06:99D6: 26 00     ROL ram_0000_t53_pos_Y_hi
C - - - - - 0x0199E8 06:99D8: 0A        ASL
C - - - - - 0x0199E9 06:99D9: 26 00     ROL ram_0000_t53_pos_Y_hi
C - - - - - 0x0199EB 06:99DB: 0A        ASL
C - - - - - 0x0199EC 06:99DC: 26 00     ROL ram_0000_t53_pos_Y_hi
C - - - - - 0x0199EE 06:99DE: 18        CLC
C - - - - - 0x0199EF 06:99DF: 69 08     ADC #$08
C - - - - - 0x0199F1 06:99E1: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0199F4 06:99E4: A5 00     LDA ram_0000_t53_pos_Y_hi
C - - - - - 0x0199F6 06:99E6: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0199F9 06:99E9: A9 00     LDA #$00
C - - - - - 0x0199FB 06:99EB: 85 00     STA ram_0000_t54
C - - - - - 0x0199FD 06:99ED: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x0199FF 06:99EF: 29 80     AND #$80
C - - - - - 0x019A01 06:99F1: F0 04     BEQ bra_99F7
C - - - - - 0x019A03 06:99F3: A9 3F     LDA #$3F
C - - - - - 0x019A05 06:99F5: 85 00     STA ram_0000_t54
bra_99F7:
C - - - - - 0x019A07 06:99F7: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019A09 06:99F9: 4A        LSR
C - - - - - 0x019A0A 06:99FA: 29 3F     AND #$3F
C - - - - - 0x019A0C 06:99FC: 45 00     EOR ram_0000_t54
C - - - - - 0x019A0E 06:99FE: 18        CLC
C - - - - - 0x019A0F 06:99FF: 7D 84 06  ADC ram_obj_pos_Y_lo,X
C - - - - - 0x019A12 06:9A02: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019A15 06:9A05: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019A18 06:9A08: 69 00     ADC #$00
C - - - - - 0x019A1A 06:9A0A: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019A1D 06:9A0D: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019A1F 06:9A0F: 29 0A     AND #$0A
C - - - - - 0x019A21 06:9A11: D0 08     BNE bra_9A1B
C - - - - - 0x019A23 06:9A13: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019A26 06:9A16: 09 03     ORA #con_0776_spr_A + $03
C - - - - - 0x019A28 06:9A18: 9D 76 07  STA ram_0776_obj_flags,X
bra_9A1B:
C - - - - - 0x019A2B 06:9A1B: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019A2D 06:9A1D: C9 BF     CMP #$BF
C - - - - - 0x019A2F 06:9A1F: D0 1F     BNE bra_9A40
C - - - - - 0x019A31 06:9A21: A9 12     LDA #$12
C - - - - - 0x019A33 06:9A23: 85 00     STA ram_0000_t55
C - - - - - 0x019A35 06:9A25: A5 33     LDA ram_round
C - - - - - 0x019A37 06:9A27: C9 16     CMP #$16
C - - - - - 0x019A39 06:9A29: D0 04     BNE bra_9A2F
C - - - - - 0x019A3B 06:9A2B: A9 16     LDA #$16
C - - - - - 0x019A3D 06:9A2D: 85 00     STA ram_0000_t55
bra_9A2F:
C - - - - - 0x019A3F 06:9A2F: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x019A42 06:9A32: 29 01     AND #$01
C - - - - - 0x019A44 06:9A34: 49 01     EOR #$01
C - - - - - 0x019A46 06:9A36: 05 00     ORA ram_0000_t55
C - - - - - 0x019A48 06:9A38: 20 7C A0  JSR sub_A07C
C - - - - - 0x019A4B 06:9A3B: D0 03     BNE bra_9A40
C - - - - - 0x019A4D 06:9A3D: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9A40:
loc_9A40:
C D 0 - - - 0x019A50 06:9A40: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019A53 06:9A43: 29 3F     AND #(con_0776_HV_flip) ^ $FF
C - - - - - 0x019A55 06:9A45: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019A58 06:9A48: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x019A5B 06:9A4B: 6A        ROR
C - - - - - 0x019A5C 06:9A4C: 6A        ROR
C - - - - - 0x019A5D 06:9A4D: 6A        ROR
C - - - - - 0x019A5E 06:9A4E: 29 40     AND #$40
C - - - - - 0x019A60 06:9A50: 1D 76 07  ORA ram_0776_obj_flags,X
C - - - - - 0x019A63 06:9A53: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019A66 06:9A56: A0 00     LDY #$00
C - - - - - 0x019A68 06:9A58: 29 40     AND #$40
C - - - - - 0x019A6A 06:9A5A: D0 02     BNE bra_9A5E
C - - - - - 0x019A6C 06:9A5C: A0 FF     LDY #$FF
bra_9A5E:
C - - - - - 0x019A6E 06:9A5E: 98        TYA
C - - - - - 0x019A6F 06:9A5F: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019A72 06:9A62: 60        RTS



ofs_005_2C_0x019A73_01:
C - - J - - 0x019A73 06:9A63: A9 79     LDA #$79
C - - - - - 0x019A75 06:9A65: 48        PHA
C - - - - - 0x019A76 06:9A66: BC B8 07  LDY ram_07B8_obj,X
C - - - - - 0x019A79 06:9A69: C0 00     CPY #$00
C - - - - - 0x019A7B 06:9A6B: F0 03     BEQ bra_9A70
C - - - - - 0x019A7D 06:9A6D: 4C E1 9A  JMP loc_9AE1
bra_9A70:
C - - - - - 0x019A80 06:9A70: 20 1C E0  JSR sub_0x01E02C
C - - - - - 0x019A83 06:9A73: D0 2C     BNE bra_9AA1
bra_9A75:
C - - - - - 0x019A85 06:9A75: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x019A88 06:9A78: 09 40     ORA #con_0708_40
C - - - - - 0x019A8A 06:9A7A: 9D 08 07  STA ram_0708_obj_flags,X
C - - - - - 0x019A8D 06:9A7D: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019A8F 06:9A7F: 18        CLC
C - - - - - 0x019A90 06:9A80: 7D 42 06  ADC ram_obj_pos_X_lo,X
C - - - - - 0x019A93 06:9A83: 29 7F     AND #$7F
C - - - - - 0x019A95 06:9A85: D0 1A     BNE bra_9AA1
C - - - - - 0x019A97 06:9A87: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x019A9A 06:9A8A: C9 2E     CMP #con_obj_id_2E
; bzk optimize, BEQ, 2F+ don't exist
C - - - - - 0x019A9C 06:9A8C: B0 6E     BCS bra_9AFC
; if con_obj_id_2C or con_obj_id_2D
C - - - - - 0x019A9E 06:9A8E: 29 01     AND #$01
C - - - - - 0x019AA0 06:9A90: 49 01     EOR #$01
C - - - - - 0x019AA2 06:9A92: 09 24     ORA #$24
C - - - - - 0x019AA4 06:9A94: 20 7C A0  JSR sub_A07C
C - - - - - 0x019AA7 06:9A97: D0 08     BNE bra_9AA1
C - - - - - 0x019AA9 06:9A99: A9 03     LDA #$03
C - - - - - 0x019AAB 06:9A9B: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019AAE 06:9A9E: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9AA1:
loc_9AA1:
C D 0 - - - 0x019AB1 06:9AA1: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x019AB4 06:9AA4: C9 2E     CMP #con_obj_id_2E
; bzk optimize, BEQ, 2F+ don't exist
C - - - - - 0x019AB6 06:9AA6: B0 16     BCS bra_9ABE
; if con_obj_id_2C or con_obj_id_2D
C - - - - - 0x019AB8 06:9AA8: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019ABB 06:9AAB: 29 3F     AND #(con_0776_HV_flip) ^ $FF
C - - - - - 0x019ABD 06:9AAD: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019AC0 06:9AB0: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x019AC3 06:9AB3: 6A        ROR
C - - - - - 0x019AC4 06:9AB4: 6A        ROR
C - - - - - 0x019AC5 06:9AB5: 6A        ROR
C - - - - - 0x019AC6 06:9AB6: 29 40     AND #$40    ; con_0776_flip_H ?
C - - - - - 0x019AC8 06:9AB8: 1D 76 07  ORA ram_0776_obj_flags,X
C - - - - - 0x019ACB 06:9ABB: 9D 76 07  STA ram_0776_obj_flags,X
bra_9ABE:
loc_9ABE:
C D 0 - - - 0x019ACE 06:9ABE: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019AD1 06:9AC1: 4A        LSR
C - - - - - 0x019AD2 06:9AC2: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019AD5 06:9AC5: 6A        ROR
; / 08
C - - - - - 0x019AD6 06:9AC6: 4A        LSR
C - - - - - 0x019AD7 06:9AC7: 4A        LSR
C - - - - - 0x019AD8 06:9AC8: 4A        LSR
C - - - - - 0x019AD9 06:9AC9: A8        TAY
C - - - - - 0x019ADA 06:9ACA: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019ADD 06:9ACD: 29 01     AND #$01
C - - - - - 0x019ADF 06:9ACF: 09 30     ORA #$30
C - - - - - 0x019AE1 06:9AD1: 85 01     STA ram_0000_t28_data + $01
C - - - - - 0x019AE3 06:9AD3: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019AE6 06:9AD6: 29 F0     AND #$F0
C - - - - - 0x019AE8 06:9AD8: 0A        ASL
C - - - - - 0x019AE9 06:9AD9: 26 01     ROL ram_0000_t28_data + $01
C - - - - - 0x019AEB 06:9ADB: 85 00     STA ram_0000_t28_data
C - - - - - 0x019AED 06:9ADD: 68        PLA
C - - - - - 0x019AEE 06:9ADE: 91 00     STA (ram_0000_t28_data),Y   ; 600B+
C - - - - - 0x019AF0 06:9AE0: 60        RTS



loc_9AE1:
C D 0 - - - 0x019AF1 06:9AE1: BD A2 07  LDA ram_07A2_obj,X
C - - - - - 0x019AF4 06:9AE4: 1D 8C 07  ORA ram_078C_obj,X
C - - - - - 0x019AF7 06:9AE7: F0 8C     BEQ bra_9A75
C - - - - - 0x019AF9 06:9AE9: 20 71 E0  JSR sub_0x01E081_kill_enemy
C - - - - - 0x019AFC 06:9AEC: F0 87     BEQ bra_9A75
C - - - - - 0x019AFE 06:9AEE: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x019B01 06:9AF1: C9 02     CMP #$02
C - - - - - 0x019B03 06:9AF3: D0 80     BNE bra_9A75
C - - - - - 0x019B05 06:9AF5: 68        PLA
C - - - - - 0x019B06 06:9AF6: A9 00     LDA #$00
C - - - - - 0x019B08 06:9AF8: 48        PHA
C - - - - - 0x019B09 06:9AF9: 4C A1 9A  JMP loc_9AA1



bra_9AFC:
C - - - - - 0x019B0C 06:9AFC: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019B0F 06:9AFF: 38        SEC
C - - - - - 0x019B10 06:9B00: ED 42 06  SBC ram_obj_pos_X_lo
C - - - - - 0x019B13 06:9B03: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019B16 06:9B06: ED 58 06  SBC ram_obj_pos_X_hi
C - - - - - 0x019B19 06:9B09: A9 22     LDA #$22
C - - - - - 0x019B1B 06:9B0B: 69 00     ADC #$00
C - - - - - 0x019B1D 06:9B0D: 85 00     STA ram_0000_t71
C - - - - - 0x019B1F 06:9B0F: 20 7C A0  JSR sub_A07C
C - - - - - 0x019B22 06:9B12: D0 AA     BNE bra_9ABE
C - - - - - 0x019B24 06:9B14: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019B27 06:9B17: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x019B29 06:9B19: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019B2C 06:9B1C: A5 00     LDA ram_0000_t71
C - - - - - 0x019B2E 06:9B1E: 6A        ROR
C - - - - - 0x019B2F 06:9B1F: 6A        ROR
C - - - - - 0x019B30 06:9B20: 6A        ROR
C - - - - - 0x019B31 06:9B21: 49 40     EOR #$40
C - - - - - 0x019B33 06:9B23: 29 40     AND #con_0776_flip_H
C - - - - - 0x019B35 06:9B25: 1D 76 07  ORA ram_0776_obj_flags,X
C - - - - - 0x019B38 06:9B28: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019B3B 06:9B2B: A9 03     LDA #$03
C - - - - - 0x019B3D 06:9B2D: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019B40 06:9B30: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x019B43 06:9B33: 4C BE 9A  JMP loc_9ABE



ofs_005_1E_9B36_01:
C - - J - - 0x019B46 06:9B36: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019B49 06:9B39: F0 03     BEQ bra_9B3E
C - - - - - 0x019B4B 06:9B3B: 4C C1 9B  JMP loc_9BC1
bra_9B3E:
C - - - - - 0x019B4E 06:9B3E: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x019B51 06:9B41: 20 F6 94  JSR sub_94F6
C - - - - - 0x019B54 06:9B44: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x019B57 06:9B47: 09 40     ORA #con_0708_40
C - - - - - 0x019B59 06:9B49: 9D 08 07  STA ram_0708_obj_flags,X
C - - - - - 0x019B5C 06:9B4C: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019B5F 06:9B4F: 38        SEC
C - - - - - 0x019B60 06:9B50: E9 6C     SBC #$6C
C - - - - - 0x019B62 06:9B52: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019B65 06:9B55: E9 01     SBC #$01
C - - - - - 0x019B67 06:9B57: 30 68     BMI bra_9BC1
C - - - - - 0x019B69 06:9B59: A9 6C     LDA #$6C
C - - - - - 0x019B6B 06:9B5B: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019B6E 06:9B5E: A9 40     LDA #< $FE40
C - - - - - 0x019B70 06:9B60: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019B73 06:9B63: A9 FE     LDA #> $FE40
C - - - - - 0x019B75 06:9B65: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x019B78 06:9B68: A9 01     LDA #$01
C - - - - - 0x019B7A 06:9B6A: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019B7D 06:9B6D: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x019B80 06:9B70: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019B83 06:9B73: 38        SEC
C - - - - - 0x019B84 06:9B74: ED 84 06  SBC ram_obj_pos_Y_lo
C - - - - - 0x019B87 06:9B77: 85 00     STA ram_0000_t56_pos_Y_lo_distance
C - - - - - 0x019B89 06:9B79: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019B8C 06:9B7C: ED 9A 06  SBC ram_obj_pos_Y_hi
C - - - - - 0x019B8F 06:9B7F: D0 40     BNE bra_9BC1
C - - - - - 0x019B91 06:9B81: A5 00     LDA ram_0000_t56_pos_Y_lo_distance
C - - - - - 0x019B93 06:9B83: C9 40     CMP #$40
C - - - - - 0x019B95 06:9B85: 90 3A     BCC bra_9BC1
C - - - - - 0x019B97 06:9B87: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x019B9A 06:9B8A: 38        SEC
C - - - - - 0x019B9B 06:9B8B: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x019B9E 06:9B8E: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x019BA1 06:9B91: FD 58 06  SBC ram_obj_pos_X_hi,X
C - - - - - 0x019BA4 06:9B94: 5D C6 06  EOR ram_obj_spd_X_lo,X
C - - - - - 0x019BA7 06:9B97: 29 80     AND #$80
C - - - - - 0x019BA9 06:9B99: D0 26     BNE bra_9BC1
C - - - - - 0x019BAB 06:9B9B: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x019BAE 06:9B9E: 49 20     EOR #con_0708_20
C - - - - - 0x019BB0 06:9BA0: 9D 08 07  STA ram_0708_obj_flags,X
C - - - - - 0x019BB3 06:9BA3: 29 20     AND #con_0708_20
C - - - - - 0x019BB5 06:9BA5: F0 1A     BEQ bra_9BC1
C - - - - - 0x019BB7 06:9BA7: A5 33     LDA ram_round
C - - - - - 0x019BB9 06:9BA9: C9 0F     CMP #$0F
C - - - - - 0x019BBB 06:9BAB: A9 FD     LDA #$FD
C - - - - - 0x019BBD 06:9BAD: B0 07     BCS bra_9BB6
C - - - - - 0x019BBF 06:9BAF: A9 40     LDA #$40
C - - - - - 0x019BC1 06:9BB1: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019BC4 06:9BB4: A9 FD     LDA #$FD
bra_9BB6:
C - - - - - 0x019BC6 06:9BB6: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x019BC9 06:9BB9: A9 03     LDA #$03
C - - - - - 0x019BCB 06:9BBB: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019BCE 06:9BBE: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9BC1:
loc_9BC1:
C D 0 - - - 0x019BD1 06:9BC1: A5 33     LDA ram_round
C - - - - - 0x019BD3 06:9BC3: C9 0F     CMP #$0F
C - - - - - 0x019BD5 06:9BC5: D0 23     BNE bra_9BEA_RTS
C - - - - - 0x019BD7 06:9BC7: BD 60 07  LDA ram_obj_anim_cnt,X
C - - - - - 0x019BDA 06:9BCA: C9 04     CMP #$04
C - - - - - 0x019BDC 06:9BCC: D0 1C     BNE bra_9BEA_RTS
C - - - - - 0x019BDE 06:9BCE: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019BE1 06:9BD1: 18        CLC
C - - - - - 0x019BE2 06:9BD2: 69 0A     ADC #$0A
C - - - - - 0x019BE4 06:9BD4: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019BE7 06:9BD7: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019BEA 06:9BDA: 29 01     AND #$01
C - - - - - 0x019BEC 06:9BDC: 09 14     ORA #$14
C - - - - - 0x019BEE 06:9BDE: 20 7C A0  JSR sub_A07C
C - - - - - 0x019BF1 06:9BE1: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019BF4 06:9BE4: 38        SEC
C - - - - - 0x019BF5 06:9BE5: E9 0A     SBC #$0A
C - - - - - 0x019BF7 06:9BE7: 9D 84 06  STA ram_obj_pos_Y_lo,X
bra_9BEA_RTS:
C - - - - - 0x019BFA 06:9BEA: 60        RTS



ofs_005_1F_9BEB_01:
C - - J - - 0x019BFB 06:9BEB: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019BFE 06:9BEE: D0 72     BNE bra_9C62_RTS
C - - - - - 0x019C00 06:9BF0: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x019C02 06:9BF2: 29 01     AND #$01
C - - - - - 0x019C04 06:9BF4: D0 6C     BNE bra_9C62_RTS
C - - - - - 0x019C06 06:9BF6: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019C09 06:9BF9: 09 80     ORA #con_0776_flip_V
C - - - - - 0x019C0B 06:9BFB: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019C0E 06:9BFE: A9 00     LDA #$00
C - - - - - 0x019C10 06:9C00: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019C13 06:9C03: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x019C16 06:9C06: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019C19 06:9C09: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019C1C 06:9C0C: 29 F0     AND #$F0
C - - - - - 0x019C1E 06:9C0E: 09 08     ORA #$08
C - - - - - 0x019C20 06:9C10: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x019C23 06:9C13: 38        SEC
C - - - - - 0x019C24 06:9C14: E9 40     SBC #< $0040
C - - - - - 0x019C26 06:9C16: 85 00     STA ram_0000_t57_pos_X_lo
C - - - - - 0x019C28 06:9C18: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019C2B 06:9C1B: E9 00     SBC #> $0040
C - - - - - 0x019C2D 06:9C1D: 85 01     STA ram_0001_t03_pos_X_hi
C - - - - - 0x019C2F 06:9C1F: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x019C32 06:9C22: 38        SEC
C - - - - - 0x019C33 06:9C23: E5 00     SBC ram_0000_t57_pos_X_lo
C - - - - - 0x019C35 06:9C25: 85 00     STA ram_0000_t58_pos_X_lo_distance
C - - - - - 0x019C37 06:9C27: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x019C3A 06:9C2A: E5 01     SBC ram_0001_t03_pos_X_hi
C - - - - - 0x019C3C 06:9C2C: D0 34     BNE bra_9C62_RTS
C - - - - - 0x019C3E 06:9C2E: A5 00     LDA ram_0000_t58_pos_X_lo_distance
C - - - - - 0x019C40 06:9C30: C9 80     CMP #$80
C - - - - - 0x019C42 06:9C32: B0 2E     BCS bra_9C62_RTS
C - - - - - 0x019C44 06:9C34: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x019C47 06:9C37: 38        SEC
C - - - - - 0x019C48 06:9C38: FD 84 06  SBC ram_obj_pos_Y_lo,X
C - - - - - 0x019C4B 06:9C3B: 85 00     STA ram_0000_t59_pos_Y_lo_distance
C - - - - - 0x019C4D 06:9C3D: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x019C50 06:9C40: FD 9A 06  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x019C53 06:9C43: D0 1D     BNE bra_9C62_RTS
C - - - - - 0x019C55 06:9C45: A5 00     LDA ram_0000_t59_pos_Y_lo_distance
C - - - - - 0x019C57 06:9C47: C9 62     CMP #$62
C - - - - - 0x019C59 06:9C49: B0 17     BCS bra_9C62_RTS
C - - - - - 0x019C5B 06:9C4B: A9 02     LDA #$02
C - - - - - 0x019C5D 06:9C4D: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x019C60 06:9C50: A9 03     LDA #$03
C - - - - - 0x019C62 06:9C52: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019C65 06:9C55: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019C68 06:9C58: 29 7F     AND #con_0776_flip_V ^ $FF
C - - - - - 0x019C6A 06:9C5A: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019C6D 06:9C5D: A9 01     LDA #$01
C - - - - - 0x019C6F 06:9C5F: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_9C62_RTS:
C - - - - - 0x019C72 06:9C62: 60        RTS



ofs_005_1F_9C63_03:
C - - J - - 0x019C73 06:9C63: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019C76 06:9C66: D0 FA     BNE bra_9C62_RTS
C - - - - - 0x019C78 06:9C68: 20 85 9C  JSR sub_9C85
C - - - - - 0x019C7B 06:9C6B: 10 05     BPL bra_9C72_RTS
C - - - - - 0x019C7D 06:9C6D: A9 04     LDA #$04
C - - - - - 0x019C7F 06:9C6F: 9D 16 06  STA ram_0616_obj,X
bra_9C72_RTS:
C - - - - - 0x019C82 06:9C72: 60        RTS



ofs_005_1F_9C73_04:
C - - J - - 0x019C83 06:9C73: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019C86 06:9C76: D0 EA     BNE bra_9C62_RTS
C - - - - - 0x019C88 06:9C78: 20 85 9C  JSR sub_9C85
C - - - - - 0x019C8B 06:9C7B: C9 FE     CMP #$FE
C - - - - - 0x019C8D 06:9C7D: B0 05     BCS bra_9C84_RTS
C - - - - - 0x019C8F 06:9C7F: A9 01     LDA #$01
C - - - - - 0x019C91 06:9C81: 9D 16 06  STA ram_0616_obj,X
bra_9C84_RTS:
C - - - - - 0x019C94 06:9C84: 60        RTS



sub_9C85:
C - - - - - 0x019C95 06:9C85: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x019C98 06:9C88: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x019C9B 06:9C8B: D0 14     BNE bra_9CA1
C - - - - - 0x019C9D 06:9C8D: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x019CA0 06:9C90: 29 01     AND #$01
C - - - - - 0x019CA2 06:9C92: C9 01     CMP #$01
C - - - - - 0x019CA4 06:9C94: D0 0B     BNE bra_9CA1
C - - - - - 0x019CA6 06:9C96: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019CA9 06:9C99: 49 FF     EOR #$FF
C - - - - - 0x019CAB 06:9C9B: 18        CLC
C - - - - - 0x019CAC 06:9C9C: 69 01     ADC #$01
C - - - - - 0x019CAE 06:9C9E: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_9CA1:
C - - - - - 0x019CB1 06:9CA1: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x019CB4 06:9CA4: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x019CB7 06:9CA7: 38        SEC
C - - - - - 0x019CB8 06:9CA8: E9 08     SBC #< $0008
C - - - - - 0x019CBA 06:9CAA: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019CBD 06:9CAD: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x019CC0 06:9CB0: E9 00     SBC #> $0008
C - - - - - 0x019CC2 06:9CB2: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x019CC5 06:9CB5: 60        RTS



ofs_005_21_9CB6_01:
C - - J - - 0x019CC6 06:9CB6: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x019CC9 06:9CB9: 0A        ASL
C - - - - - 0x019CCA 06:9CBA: BD 1E 07  LDA ram_071E_obj_queue_id,X
C - - - - - 0x019CCD 06:9CBD: 2A        ROL
C - - - - - 0x019CCE 06:9CBE: 2A        ROL
C - - - - - 0x019CCF 06:9CBF: 2A        ROL
C - - - - - 0x019CD0 06:9CC0: 18        CLC
C - - - - - 0x019CD1 06:9CC1: 65 37     ADC ram_frm_cnt_3
C - - - - - 0x019CD3 06:9CC3: 29 EF     AND #$EF
C - - - - - 0x019CD5 06:9CC5: F0 03     BEQ bra_9CCA
C - - - - - 0x019CD7 06:9CC7: 4C EE 94  JMP loc_94EE
bra_9CCA:
C - - - - - 0x019CDA 06:9CCA: A9 41     LDA #$41
C - - - - - 0x019CDC 06:9CCC: 20 7C A0  JSR sub_A07C
C - - - - - 0x019CDF 06:9CCF: F0 03     BEQ bra_9CD4
C - - - - - 0x019CE1 06:9CD1: 4C EE 94  JMP loc_94EE
bra_9CD4:
C - - - - - 0x019CE4 06:9CD4: A9 18     LDA #con_sfx_18
C - - - - - 0x019CE6 06:9CD6: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x019CE9 06:9CD9: 4C EE 94  JMP loc_94EE



ofs_005_22_9CDC_01:
C - - J - - 0x019CEC 06:9CDC: A9 03     LDA #$03
C - - - - - 0x019CEE 06:9CDE: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019CF1 06:9CE1: A9 07     LDA #$07
C - - - - - 0x019CF3 06:9CE3: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x019CF6 06:9CE6: A4 33     LDY ram_round
C - - - - - 0x019CF8 06:9CE8: B9 09 E5  LDA tbl_0x01E519_round_data,Y
C - - - - - 0x019CFB 06:9CEB: 29 0F     AND #$0F
C - - - - - 0x019CFD 06:9CED: C9 04     CMP #$04
C - - - - - 0x019CFF 06:9CEF: D0 08     BNE bra_9CF9
C - - - - - 0x019D01 06:9CF1: A9 03     LDA #$03
C - - - - - 0x019D03 06:9CF3: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019D06 06:9CF6: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9CF9:
ofs_005_22_9CF9_03:
C - - - - - 0x019D09 06:9CF9: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019D0C 06:9CFC: 18        CLC
C - - - - - 0x019D0D 06:9CFD: 69 08     ADC #< $0008
C - - - - - 0x019D0F 06:9CFF: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019D12 06:9D02: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019D15 06:9D05: 69 00     ADC #> $0008
C - - - - - 0x019D17 06:9D07: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019D1A 06:9D0A: 20 EE 94  JSR sub_94EE
C - - - - - 0x019D1D 06:9D0D: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019D20 06:9D10: 38        SEC
C - - - - - 0x019D21 06:9D11: E9 08     SBC #< $0008
C - - - - - 0x019D23 06:9D13: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019D26 06:9D16: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019D29 06:9D19: E9 00     SBC #> $0008
C - - - - - 0x019D2B 06:9D1B: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019D2E 06:9D1E: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x019D31 06:9D21: C9 02     CMP #$02
C - - - - - 0x019D33 06:9D23: D0 03     BNE bra_9D28
C - - - - - 0x019D35 06:9D25: 4C BA 9D  JMP loc_9DBA_RTS
bra_9D28:
C - - - - - 0x019D38 06:9D28: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x019D3B 06:9D2B: 38        SEC
C - - - - - 0x019D3C 06:9D2C: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x019D3F 06:9D2F: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x019D42 06:9D32: FD 58 06  SBC ram_obj_pos_X_hi,X
C - - - - - 0x019D45 06:9D35: 5D C6 06  EOR ram_obj_spd_X_lo,X
C - - - - - 0x019D48 06:9D38: 29 80     AND #$80
C - - - - - 0x019D4A 06:9D3A: D0 2C     BNE bra_9D68
C - - - - - 0x019D4C 06:9D3C: BD 1E 07  LDA ram_071E_obj_queue_id,X
; * 08
C - - - - - 0x019D4F 06:9D3F: 0A        ASL
C - - - - - 0x019D50 06:9D40: 0A        ASL
C - - - - - 0x019D51 06:9D41: 0A        ASL
C - - - - - 0x019D52 06:9D42: 18        CLC
C - - - - - 0x019D53 06:9D43: 65 37     ADC ram_frm_cnt_3
C - - - - - 0x019D55 06:9D45: A8        TAY
C - - - - - 0x019D56 06:9D46: 29 7F     AND #$7F
C - - - - - 0x019D58 06:9D48: D0 70     BNE bra_9DBA_RTS
C - - - - - 0x019D5A 06:9D4A: A9 04     LDA #$04
C - - - - - 0x019D5C 06:9D4C: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019D5F 06:9D4F: FE 34 07  INC ram_0734_obj,X
C - - - - - 0x019D62 06:9D52: A9 38     LDA #$38
C - - - - - 0x019D64 06:9D54: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x019D67 06:9D57: A5 33     LDA ram_round
C - - - - - 0x019D69 06:9D59: C9 02     CMP #$02
C - - - - - 0x019D6B 06:9D5B: 90 03     BCC bra_9D60
C - - - - - 0x019D6D 06:9D5D: 4C C8 E1  JMP loc_0x01E1D8_initialize_animation
bra_9D60:
C - - - - - 0x019D70 06:9D60: A9 28     LDA #$28
C - - - - - 0x019D72 06:9D62: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x019D75 06:9D65: 4C C8 E1  JMP loc_0x01E1D8_initialize_animation
bra_9D68:
C - - - - - 0x019D78 06:9D68: AD AF 03  LDA ram_03AF
C - - - - - 0x019D7B 06:9D6B: F0 4D     BEQ bra_9DBA_RTS
C - - - - - 0x019D7D 06:9D6D: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019D80 06:9D70: 38        SEC
C - - - - - 0x019D81 06:9D71: E9 64     SBC #< $0064
C - - - - - 0x019D83 06:9D73: 85 00     STA ram_0000_t60_pos_X_lo
C - - - - - 0x019D85 06:9D75: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019D88 06:9D78: E9 00     SBC #> $0064
C - - - - - 0x019D8A 06:9D7A: 85 01     STA ram_0001_t04_pos_X_hi
C - - - - - 0x019D8C 06:9D7C: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x019D8F 06:9D7F: 38        SEC
C - - - - - 0x019D90 06:9D80: E5 00     SBC ram_0000_t60_pos_X_lo
C - - - - - 0x019D92 06:9D82: 85 00     STA ram_0000_t61_pos_X_lo_distance
C - - - - - 0x019D94 06:9D84: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x019D97 06:9D87: E5 01     SBC ram_0001_t04_pos_X_hi
C - - - - - 0x019D99 06:9D89: D0 2F     BNE bra_9DBA_RTS
C - - - - - 0x019D9B 06:9D8B: A5 00     LDA ram_0000_t61_pos_X_lo_distance
C - - - - - 0x019D9D 06:9D8D: C9 C8     CMP #$C8
C - - - - - 0x019D9F 06:9D8F: B0 29     BCS bra_9DBA_RTS
C - - - - - 0x019DA1 06:9D91: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019DA4 06:9D94: 29 0F     AND #$0F
C - - - - - 0x019DA6 06:9D96: C9 08     CMP #$08
C - - - - - 0x019DA8 06:9D98: D0 03     BNE bra_9D9D_RTS
C - - - - - 0x019DAA 06:9D9A: 4C 1B 96  JMP loc_961B
bra_9D9D_RTS:
C - - - - - 0x019DAD 06:9D9D: 60        RTS



ofs_005_22_9D9E_04:
C - - J - - 0x019DAE 06:9D9E: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019DB1 06:9DA1: D0 17     BNE bra_9DBA_RTS    ; if no collision?
C - - - - - 0x019DB3 06:9DA3: DE 2C 06  DEC ram_obj_pos_X_fr,X
C - - - - - 0x019DB6 06:9DA6: F0 13     BEQ bra_9DBB
C - - - - - 0x019DB8 06:9DA8: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x019DBB 06:9DAB: 29 08     AND #con_0776_08
C - - - - - 0x019DBD 06:9DAD: F0 0B     BEQ bra_9DBA_RTS
bra_9DAF:
C - - - - - 0x019DBF 06:9DAF: A9 03     LDA #$03
C - - - - - 0x019DC1 06:9DB1: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019DC4 06:9DB4: DE 34 07  DEC ram_0734_obj,X
C - - - - - 0x019DC7 06:9DB7: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_9DBA_RTS:
loc_9DBA_RTS:   ; bzk optimize
C D 0 - - - 0x019DCA 06:9DBA: 60        RTS
bra_9DBB:
C - - - - - 0x019DCB 06:9DBB: A5 33     LDA ram_round
C - - - - - 0x019DCD 06:9DBD: C9 02     CMP #$02
C - - - - - 0x019DCF 06:9DBF: 90 EE     BCC bra_9DAF
C - - - - - 0x019DD1 06:9DC1: C9 03     CMP #$03
C - - - - - 0x019DD3 06:9DC3: B0 0B     BCS bra_9DD0
C - - - - - 0x019DD5 06:9DC5: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019DD8 06:9DC8: 29 01     AND #$01
C - - - - - 0x019DDA 06:9DCA: 09 16     ORA #$16
; bzk optimize, JMP
C - - - - - 0x019DDC 06:9DCC: 20 7C A0  JSR sub_A07C
C - - - - - 0x019DDF 06:9DCF: 60        RTS
bra_9DD0:
C - - - - - 0x019DE0 06:9DD0: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019DE3 06:9DD3: 29 01     AND #$01
C - - - - - 0x019DE5 06:9DD5: D0 0D     BNE bra_9DE4
- - - - - - 0x019DE7 06:9DD7: A9 0A     LDA #$0A
- - - - - - 0x019DE9 06:9DD9: 20 C3 89  JSR sub_89C3_move_obj_X_axis_right
- - - - - - 0x019DEC 06:9DDC: 20 F1 9D  JSR sub_9DF1
- - - - - - 0x019DEF 06:9DDF: A9 F6     LDA #$F6
- - - - - - 0x019DF1 06:9DE1: 4C D3 89  JMP loc_89D3_move_obj_X_axis_left
bra_9DE4:
C - - - - - 0x019DF4 06:9DE4: A9 F6     LDA #$F6
C - - - - - 0x019DF6 06:9DE6: 20 D3 89  JSR sub_89D3_move_obj_X_axis_left
C - - - - - 0x019DF9 06:9DE9: 20 F1 9D  JSR sub_9DF1
C - - - - - 0x019DFC 06:9DEC: A9 0A     LDA #$0A
C - - - - - 0x019DFE 06:9DEE: 4C C3 89  JMP loc_89C3_move_obj_X_axis_right



sub_9DF1:
C - - - - - 0x019E01 06:9DF1: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019E04 06:9DF4: 38        SEC
C - - - - - 0x019E05 06:9DF5: E9 08     SBC #< $0008
C - - - - - 0x019E07 06:9DF7: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019E0A 06:9DFA: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019E0D 06:9DFD: E9 00     SBC #> $0008
C - - - - - 0x019E0F 06:9DFF: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019E12 06:9E02: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019E15 06:9E05: 29 01     AND #$01
C - - - - - 0x019E17 06:9E07: 09 16     ORA #$16
C - - - - - 0x019E19 06:9E09: 20 7C A0  JSR sub_A07C
C - - - - - 0x019E1C 06:9E0C: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019E1F 06:9E0F: 18        CLC
C - - - - - 0x019E20 06:9E10: 69 08     ADC #< $0008
C - - - - - 0x019E22 06:9E12: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019E25 06:9E15: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019E28 06:9E18: 69 00     ADC #> $0008
C - - - - - 0x019E2A 06:9E1A: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x019E2D 06:9E1D: 60        RTS



ofs_005_24_0x019E2E_01:
C - - J - - 0x019E2E 06:9E1E: A9 03     LDA #$03
C - - - - - 0x019E30 06:9E20: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019E33 06:9E23: A9 20     LDA #$20    ; hp for professor's face
C - - - - - 0x019E35 06:9E25: 9D CE 07  STA ram_07CE_obj_hp,X
ofs_005_24_0x019E38_02:
ofs_005_24_0x019E38_03:
C - - - - - 0x019E38 06:9E28: BD A2 07  LDA ram_07A2_obj,X
C - - - - - 0x019E3B 06:9E2B: 1D 8C 07  ORA ram_078C_obj,X
C - - - - - 0x019E3E 06:9E2E: D0 03     BNE bra_9E33
C - - - - - 0x019E40 06:9E30: 4C 14 E0  JMP loc_0x01E024
bra_9E33:
C - - - - - 0x019E43 06:9E33: BC B8 07  LDY ram_07B8_obj,X
C - - - - - 0x019E46 06:9E36: D0 03     BNE bra_9E3B
C - - - - - 0x019E48 06:9E38: 4C 14 E0  JMP loc_0x01E024
bra_9E3B:
C - - - - - 0x019E4B 06:9E3B: 20 71 E0  JSR sub_0x01E081_kill_enemy
C - - - - - 0x019E4E 06:9E3E: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x019E51 06:9E41: C9 02     CMP #$02
C - - - - - 0x019E53 06:9E43: D0 27     BNE bra_9E6C_RTS
C - - - - - 0x019E55 06:9E45: A9 0E     LDA #con_obj_id_0E
C - - - - - 0x019E57 06:9E47: 9D 00 06  STA ram_0600_obj_id,X
C - - - - - 0x019E5A 06:9E4A: A9 48     LDA #con_0708_08 + con_0708_40
C - - - - - 0x019E5C 06:9E4C: 9D 08 07  STA ram_0708_obj_flags,X
C - - - - - 0x019E5F 06:9E4F: A9 02     LDA #$02
C - - - - - 0x019E61 06:9E51: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x019E64 06:9E54: A9 00     LDA #con_0776_spr_A + $00
C - - - - - 0x019E66 06:9E56: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019E69 06:9E59: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x019E6C 06:9E5C: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x019E6F 06:9E5F: 49 FF     EOR #$FF
C - - - - - 0x019E71 06:9E61: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x019E74 06:9E64: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x019E77 06:9E67: 49 FF     EOR #$FF
C - - - - - 0x019E79 06:9E69: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_9E6C_RTS:
C - - - - - 0x019E7C 06:9E6C: 60        RTS



ofs_005_25_0x019E7D_01:
C - - J - - 0x019E7D 06:9E6D: A9 02     LDA #con_0776_spr_A + $02
C - - - - - 0x019E7F 06:9E6F: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x019E82 06:9E72: BD A2 07  LDA ram_07A2_obj,X
C - - - - - 0x019E85 06:9E75: 1D 8C 07  ORA ram_078C_obj,X
C - - - - - 0x019E88 06:9E78: D0 03     BNE bra_9E7D
C - - - - - 0x019E8A 06:9E7A: 4C 14 E0  JMP loc_0x01E024
bra_9E7D:
C - - - - - 0x019E8D 06:9E7D: BD B8 07  LDA ram_07B8_obj,X
C - - - - - 0x019E90 06:9E80: F0 03     BEQ bra_9E85
C - - - - - 0x019E92 06:9E82: 4C 14 E0  JMP loc_0x01E024
bra_9E85:
C - - - - - 0x019E95 06:9E85: A9 0D     LDA #con_obj_id_0D
C - - - - - 0x019E97 06:9E87: 9D 00 06  STA ram_0600_obj_id,X
C - - - - - 0x019E9A 06:9E8A: 4C 1F 88  JMP loc_881F



ofs_005_1D_9E8D_01:
C - - J - - 0x019E9D 06:9E8D: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x019EA0 06:9E90: F0 03     BEQ bra_9E95
C - - - - - 0x019EA2 06:9E92: 4C 1E 9F  JMP loc_9F1E_RTS
bra_9E95:
C - - - - - 0x019EA5 06:9E95: A9 06     LDA #$06
C - - - - - 0x019EA7 06:9E97: 85 3C     STA ram_003C
C - - - - - 0x019EA9 06:9E99: A9 04     LDA #$04
C - - - - - 0x019EAB 06:9E9B: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x019EAE 06:9E9E: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x019EB1 06:9EA1: 20 3D F2  JSR sub_0x01F24D
C - - - - - 0x019EB4 06:9EA4: F0 12     BEQ bra_9EB8
- - - - - - 0x019EB6 06:9EA6: BD F2 06  LDA ram_obj_spd_Y_lo,X
- - - - - - 0x019EB9 06:9EA9: 08        PHP
- - - - - - 0x019EBA 06:9EAA: A9 00     LDA #$00
- - - - - - 0x019EBC 06:9EAC: 9D DC 06  STA ram_obj_spd_Y_fr,X
- - - - - - 0x019EBF 06:9EAF: 9D F2 06  STA ram_obj_spd_Y_lo,X
- - - - - - 0x019EC2 06:9EB2: 28        PLP
- - - - - - 0x019EC3 06:9EB3: 30 03     BMI bra_9EB8
- - - - - - 0x019EC5 06:9EB5: DE F2 06  DEC ram_obj_spd_Y_lo,X
bra_9EB8:
C - - - - - 0x019EC8 06:9EB8: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x019ECB 06:9EBB: C9 01     CMP #$01
C - - - - - 0x019ECD 06:9EBD: D0 0A     BNE bra_9EC9
C - - - - - 0x019ECF 06:9EBF: A9 FB     LDA #< $FEFB
C - - - - - 0x019ED1 06:9EC1: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019ED4 06:9EC4: A9 FE     LDA #> $FEFB
C - - - - - 0x019ED6 06:9EC6: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_9EC9:
C - - - - - 0x019ED9 06:9EC9: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x019EDC 06:9ECC: 10 48     BPL bra_9F16
C - - - - - 0x019EDE 06:9ECE: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019EE1 06:9ED1: 38        SEC
C - - - - - 0x019EE2 06:9ED2: E9 2D     SBC #< $002D
C - - - - - 0x019EE4 06:9ED4: 85 00     STA ram_0000_t62_pos_Y_lo
C - - - - - 0x019EE6 06:9ED6: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019EE9 06:9ED9: E9 00     SBC #> $002D
C - - - - - 0x019EEB 06:9EDB: 85 01     STA ram_0001_t05_pos_Y_hi
C - - - - - 0x019EED 06:9EDD: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x019EF0 06:9EE0: 38        SEC
C - - - - - 0x019EF1 06:9EE1: E5 00     SBC ram_0000_t62_pos_Y_lo
C - - - - - 0x019EF3 06:9EE3: 85 00     STA ram_0000_t63_pos_Y_lo_distance
C - - - - - 0x019EF5 06:9EE5: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x019EF8 06:9EE8: E5 01     SBC ram_0001_t05_pos_Y_hi
C - - - - - 0x019EFA 06:9EEA: D0 2A     BNE bra_9F16
C - - - - - 0x019EFC 06:9EEC: A5 00     LDA ram_0000_t63_pos_Y_lo_distance
C - - - - - 0x019EFE 06:9EEE: C9 5A     CMP #$5A
C - - - - - 0x019F00 06:9EF0: B0 24     BCS bra_9F16
C - - - - - 0x019F02 06:9EF2: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x019F05 06:9EF5: 38        SEC
C - - - - - 0x019F06 06:9EF6: E9 2D     SBC #< $002D
C - - - - - 0x019F08 06:9EF8: 85 00     STA ram_0000_t64_pos_X_lo
C - - - - - 0x019F0A 06:9EFA: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x019F0D 06:9EFD: E9 00     SBC #> $002D
C - - - - - 0x019F0F 06:9EFF: 85 01     STA ram_0001_t06_pos_X_hi
C - - - - - 0x019F11 06:9F01: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x019F14 06:9F04: 38        SEC
C - - - - - 0x019F15 06:9F05: E5 00     SBC ram_0000_t64_pos_X_lo
C - - - - - 0x019F17 06:9F07: 85 00     STA ram_0000_t65_pos_X_lo_distance
C - - - - - 0x019F19 06:9F09: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x019F1C 06:9F0C: E5 01     SBC ram_0001_t06_pos_X_hi
C - - - - - 0x019F1E 06:9F0E: D0 06     BNE bra_9F16
C - - - - - 0x019F20 06:9F10: A5 00     LDA ram_0000_t65_pos_X_lo_distance
C - - - - - 0x019F22 06:9F12: C9 5A     CMP #$5A
C - - - - - 0x019F24 06:9F14: 90 09     BCC bra_9F1F
bra_9F16:
C - - - - - 0x019F26 06:9F16: A9 00     LDA #$00
C - - - - - 0x019F28 06:9F18: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x019F2B 06:9F1B: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_9F1E_RTS:
loc_9F1E_RTS:   ; bzk optimize
C D 0 - - - 0x019F2E 06:9F1E: 60        RTS
bra_9F1F:
C - - - - - 0x019F2F 06:9F1F: C9 2D     CMP #$2D
C - - - - - 0x019F31 06:9F21: A9 00     LDA #$00
C - - - - - 0x019F33 06:9F23: B0 02     BCS bra_9F27
C - - - - - 0x019F35 06:9F25: A9 FF     LDA #$FF
bra_9F27:
C - - - - - 0x019F37 06:9F27: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x019F3A 06:9F2A: A9 80     LDA #$80
C - - - - - 0x019F3C 06:9F2C: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x019F3F 06:9F2F: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x019F42 06:9F32: 20 3D F2  JSR sub_0x01F24D
C - - - - - 0x019F45 06:9F35: F0 E7     BEQ bra_9F1E_RTS
- - - - - - 0x019F47 06:9F37: A9 00     LDA #$00
- - - - - - 0x019F49 06:9F39: 38        SEC
- - - - - - 0x019F4A 06:9F3A: FD B0 06  SBC ram_obj_spd_X_fr,X
- - - - - - 0x019F4D 06:9F3D: 9D B0 06  STA ram_obj_spd_X_fr,X
- - - - - - 0x019F50 06:9F40: A9 00     LDA #$00
- - - - - - 0x019F52 06:9F42: FD C6 06  SBC ram_obj_spd_X_lo,X
- - - - - - 0x019F55 06:9F45: 9D C6 06  STA ram_obj_spd_X_lo,X
; bzk optimize, JMP
- - - - - - 0x019F58 06:9F48: 20 74 89  JSR sub_8974_move_obj_X_axis
- - - - - - 0x019F5B 06:9F4B: 60        RTS



ofs_005_10_9F4C_03:
ofs_005_28_9F4C_03:
ofs_005_29_9F4C_03:
ofs_005_11_9F4C_02:
ofs_005_21_9F4C_02:
ofs_005_22_9F4C_02:
ofs_005_12_9F4C_02:
ofs_005_13_9F4C_02:
ofs_005_18_9F4C_02:
ofs_005_1C_9F4C_02:
ofs_005_1D_9F4C_02:
ofs_005_1F_9F4C_02:
C - - J - - 0x019F5C 06:9F4C: BD A2 07  LDA ram_07A2_obj,X
C - - - - - 0x019F5F 06:9F4F: 1D 8C 07  ORA ram_078C_obj,X
C - - - - - 0x019F62 06:9F52: F0 12     BEQ bra_9F66
C - - - - - 0x019F64 06:9F54: BC B8 07  LDY ram_07B8_obj,X
C - - - - - 0x019F67 06:9F57: B9 1E 07  LDA ram_071E_obj_queue_id,Y
C - - - - - 0x019F6A 06:9F5A: 38        SEC
C - - - - - 0x019F6B 06:9F5B: E9 01     SBC #$01
C - - - - - 0x019F6D 06:9F5D: 30 07     BMI bra_9F66
C - - - - - 0x019F6F 06:9F5F: C0 00     CPY #$00
C - - - - - 0x019F71 06:9F61: F0 03     BEQ bra_9F66
C - - - - - 0x019F73 06:9F63: 4C 71 E0  JMP loc_0x01E081_kill_enemy
bra_9F66:
C - - - - - 0x019F76 06:9F66: A9 00     LDA #$00
C - - - - - 0x019F78 06:9F68: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x019F7B 06:9F6B: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x019F7E 06:9F6E: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x019F81 06:9F71: A9 78     LDA #$78
C - - - - - 0x019F83 06:9F73: 85 3C     STA ram_003C
C - - - - - 0x019F85 06:9F75: A9 40     LDA #$40
C - - - - - 0x019F87 06:9F77: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x019F8A 06:9F7A: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x019F8D 06:9F7D: C9 01     CMP #$01
C - - - - - 0x019F8F 06:9F7F: D0 17     BNE bra_9F98_RTS
C - - - - - 0x019F91 06:9F81: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019F94 06:9F84: C9 A0     CMP #$A0
C - - - - - 0x019F96 06:9F86: 90 10     BCC bra_9F98_RTS
C - - - - - 0x019F98 06:9F88: A9 00     LDA #$00
C - - - - - 0x019F9A 06:9F8A: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x019F9D 06:9F8D: BC 1E 07  LDY ram_071E_obj_queue_id,X
C - - - - - 0x019FA0 06:9F90: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x019FA3 06:9F93: 29 BF     AND #$BF
C - - - - - 0x019FA5 06:9F95: 99 00 78  STA ram_7800_round_obj_flags,Y
bra_9F98_RTS:
C - - - - - 0x019FA8 06:9F98: 60        RTS



sub_9F99:
C - - - - - 0x019FA9 06:9F99: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x019FAC 06:9F9C: C9 01     CMP #$01
C - - - - - 0x019FAE 06:9F9E: D0 07     BNE bra_9FA7
C - - - - - 0x019FB0 06:9FA0: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019FB3 06:9FA3: C9 80     CMP #$80
C - - - - - 0x019FB5 06:9FA5: B0 04     BCS bra_9FAB
bra_9FA7:
; bzk optimize, JMP
C - - - - - 0x019FB7 06:9FA7: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x019FBA 06:9FAA: 60        RTS
bra_9FAB:
C - - - - - 0x019FBB 06:9FAB: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x019FBE 06:9FAE: C9 13     CMP #$13    ; con_obj_id_13
C - - - - - 0x019FC0 06:9FB0: F0 1A     BEQ bra_9FCC
C - - - - - 0x019FC2 06:9FB2: B0 10     BCS bra_9FC4
C - - - - - 0x019FC4 06:9FB4: A9 F9     LDA #> $F900
C - - - - - 0x019FC6 06:9FB6: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x019FC9 06:9FB9: A9 00     LDA #< $F900
C - - - - - 0x019FCB 06:9FBB: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019FCE 06:9FBE: A9 7E     LDA #$7E
C - - - - - 0x019FD0 06:9FC0: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019FD3 06:9FC3: 60        RTS
bra_9FC4:
C - - - - - 0x019FD4 06:9FC4: A9 1B     LDA #con_sfx_1B
C - - - - - 0x019FD6 06:9FC6: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x019FD9 06:9FC9: 4C 5E E0  JMP loc_0x01E06E
bra_9FCC:
C - - - - - 0x019FDC 06:9FCC: A9 7E     LDA #$7E
C - - - - - 0x019FDE 06:9FCE: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x019FE1 06:9FD1: BC 1E 07  LDY ram_071E_obj_queue_id,X
C - - - - - 0x019FE4 06:9FD4: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x019FE7 06:9FD7: 29 1F     AND #$1F
C - - - - - 0x019FE9 06:9FD9: 0A        ASL
C - - - - - 0x019FEA 06:9FDA: A8        TAY
C - - - - - 0x019FEB 06:9FDB: B9 EC 9F  LDA tbl_9FEC_speed_Y,Y
C - - - - - 0x019FEE 06:9FDE: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x019FF1 06:9FE1: C8        INY
C - - - - - 0x019FF2 06:9FE2: B9 EC 9F  LDA tbl_9FEC_speed_Y,Y
C - - - - - 0x019FF5 06:9FE5: 9D F2 06  STA ram_obj_spd_Y_lo,X
; bzk optimize, JMP
C - - - - - 0x019FF8 06:9FE8: 20 37 89  JSR sub_8937_move_obj_Y_axis
C - - - - - 0x019FFB 06:9FEB: 60        RTS



tbl_9FEC_speed_Y:
- - - - - - 0x019FFC 06:9FEC: 9B F7     .word $F79B ; 00 
- - - - - - 0x019FFE 06:9FEE: CA F7     .word $F7CA ; 01 
- - - - - - 0x01A000 06:9FF0: FB F7     .word $F7FB ; 02 
- - - - - - 0x01A002 06:9FF2: 2C F8     .word $F82C ; 03 
- - - - - - 0x01A004 06:9FF4: 5F F8     .word $F85F ; 04 
- - - - - - 0x01A006 06:9FF6: 93 F8     .word $F893 ; 05 
- - - - - - 0x01A008 06:9FF8: C9 F8     .word $F8C9 ; 06 
- - - - - - 0x01A00A 06:9FFA: 00 F9     .word $F900 ; 07 
- D 0 - - - 0x01A00C 06:9FFC: 39 F9     .word $F939 ; 08 
- D 0 - - - 0x01A00E 06:9FFE: 74 F9     .word $F974 ; 09 
- D 1 - - - 0x01A010 06:A000: B0 F9     .word $F9B0 ; 0A 
- D 1 - - - 0x01A012 06:A002: F0 F9     .word $F9F0 ; 0B 
- D 1 - - - 0x01A014 06:A004: 31 FA     .word $FA31 ; 0C 
- D 1 - - - 0x01A016 06:A006: 76 FA     .word $FA76 ; 0D 
- D 1 - - - 0x01A018 06:A008: BE FA     .word $FABE ; 0E 
- D 1 - - - 0x01A01A 06:A00A: 0A FB     .word $FB0A ; 0F 
- D 1 - - - 0x01A01C 06:A00C: 5B FB     .word $FB5B ; 10 
- D 1 - - - 0x01A01E 06:A00E: B2 FB     .word $FBB2 ; 11 
- D 1 - - - 0x01A020 06:A010: 0F FC     .word $FC0F ; 12 
- - - - - - 0x01A022 06:A012: 76 FC     .word $FC76 ; 13 
- - - - - - 0x01A024 06:A014: EA FC     .word $FCEA ; 14 
- - - - - - 0x01A026 06:A016: 71 FD     .word $FD71 ; 15 
- - - - - - 0x01A028 06:A018: 18 FE     .word $FE18 ; 16 
- - - - - - 0x01A02A 06:A01A: 1B FF     .word $FF1B ; 17 



sub_A01C_clear_and_copy_object_data:
C - - - - - 0x01A02C 06:A01C: A9 00     LDA #$00
C - - - - - 0x01A02E 06:A01E: 99 2C 06  STA ram_obj_pos_X_fr,Y
C - - - - - 0x01A031 06:A021: 99 6E 06  STA ram_obj_pos_Y_fr,Y
C - - - - - 0x01A034 06:A024: 99 B0 06  STA ram_obj_spd_X_fr,Y
C - - - - - 0x01A037 06:A027: 99 DC 06  STA ram_obj_spd_Y_fr,Y
C - - - - - 0x01A03A 06:A02A: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01A03D 06:A02D: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01A040 06:A030: 99 4A 07  STA ram_obj_anim_timer,Y
C - - - - - 0x01A043 06:A033: 99 60 07  STA ram_obj_anim_cnt,Y
C - - - - - 0x01A046 06:A036: 99 8C 07  STA ram_078C_obj,Y
C - - - - - 0x01A049 06:A039: 99 A2 07  STA ram_07A2_obj,Y
C - - - - - 0x01A04C 06:A03C: 99 B8 07  STA ram_07B8_obj,Y
C - - - - - 0x01A04F 06:A03F: 99 08 07  STA ram_0708_obj_flags,Y
C - - - - - 0x01A052 06:A042: 99 1E 07  STA ram_071E_obj_queue_id,Y
C - - - - - 0x01A055 06:A045: A9 01     LDA #$01
C - - - - - 0x01A057 06:A047: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01A05A 06:A04A: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x01A05D 06:A04D: 29 03     AND #con_0708_01 + con_0708_02
C - - - - - 0x01A05F 06:A04F: 09 40     ORA #con_0708_40
C - - - - - 0x01A061 06:A051: 99 08 07  STA ram_0708_obj_flags,Y
C - - - - - 0x01A064 06:A054: 29 01     AND #con_0708_01
C - - - - - 0x01A066 06:A056: 49 FF     EOR #$FF
C - - - - - 0x01A068 06:A058: 18        CLC
C - - - - - 0x01A069 06:A059: 69 01     ADC #$01
C - - - - - 0x01A06B 06:A05B: 90 03     BCC bra_A060
C - - - - - 0x01A06D 06:A05D: 18        CLC
C - - - - - 0x01A06E 06:A05E: 69 01     ADC #$01
bra_A060:
C - - - - - 0x01A070 06:A060: 99 C6 06  STA ram_obj_spd_X_lo,Y
C - - - - - 0x01A073 06:A063: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01A076 06:A066: 99 42 06  STA ram_obj_pos_X_lo,Y
C - - - - - 0x01A079 06:A069: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01A07C 06:A06C: 99 58 06  STA ram_obj_pos_X_hi,Y
C - - - - - 0x01A07F 06:A06F: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A082 06:A072: 99 84 06  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x01A085 06:A075: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01A088 06:A078: 99 9A 06  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x01A08B 06:A07B: 60        RTS



loc_A07C:
sub_A07C:
; in
    ; A
        ; .... xxxx = 
        ; xxxx .... = 
; out
    ; Z
        ; 0 = 
        ; 1 = 
C D 1 - - - 0x01A08C 06:A07C: A0 12     LDY #$12
C - - - - - 0x01A08E 06:A07E: 48        PHA
bra_A07F_loop:
C - - - - - 0x01A08F 06:A07F: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01A092 06:A082: F0 09     BEQ bra_A08D
C - - - - - 0x01A094 06:A084: C8        INY
C - - - - - 0x01A095 06:A085: C0 16     CPY #$16
C - - - - - 0x01A097 06:A087: 90 F6     BCC bra_A07F_loop
C - - - - - 0x01A099 06:A089: 68        PLA
C - - - - - 0x01A09A 06:A08A: A9 01     LDA #$01
C - - - - - 0x01A09C 06:A08C: 60        RTS
bra_A08D:
C - - - - - 0x01A09D 06:A08D: 68        PLA
C - - - - - 0x01A09E 06:A08E: 48        PHA
C - - - - - 0x01A09F 06:A08F: 29 0F     AND #$0F
C - - - - - 0x01A0A1 06:A091: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01A0A4 06:A094: A9 08     LDA #con_obj_id_08
C - - - - - 0x01A0A6 06:A096: 99 00 06  STA ram_0600_obj_id,Y
C - - - - - 0x01A0A9 06:A099: A9 00     LDA #con_0776_spr_A + $00
C - - - - - 0x01A0AB 06:A09B: 99 76 07  STA ram_0776_obj_flags,Y
C - - - - - 0x01A0AE 06:A09E: B9 16 06  LDA ram_0616_obj,Y
; * 40
C - - - - - 0x01A0B1 06:A0A1: 0A        ASL
C - - - - - 0x01A0B2 06:A0A2: 0A        ASL
C - - - - - 0x01A0B3 06:A0A3: 0A        ASL
C - - - - - 0x01A0B4 06:A0A4: 0A        ASL
C - - - - - 0x01A0B5 06:A0A5: 0A        ASL
C - - - - - 0x01A0B6 06:A0A6: 0A        ASL
; A = 00 40 80 C0 
C - - - - - 0x01A0B7 06:A0A7: 29 40     AND #$40
C - - - - - 0x01A0B9 06:A0A9: 49 40     EOR #con_0776_flip_H
C - - - - - 0x01A0BB 06:A0AB: 19 76 07  ORA ram_0776_obj_flags,Y
C - - - - - 0x01A0BE 06:A0AE: 99 76 07  STA ram_0776_obj_flags,Y
C - - - - - 0x01A0C1 06:A0B1: 20 1C A0  JSR sub_A01C_clear_and_copy_object_data
C - - - - - 0x01A0C4 06:A0B4: 68        PLA
; / 10
C - - - - - 0x01A0C5 06:A0B5: 4A        LSR
C - - - - - 0x01A0C6 06:A0B6: 4A        LSR
C - - - - - 0x01A0C7 06:A0B7: 4A        LSR
C - - - - - 0x01A0C8 06:A0B8: 4A        LSR
C - - - - - 0x01A0C9 06:A0B9: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01A0CC 06:A0BC: 38        SEC
C - - - - - 0x01A0CD 06:A0BD: E9 06     SBC #$06
C - - - - - 0x01A0CF 06:A0BF: 90 03     BCC bra_A0C4
C - - - - - 0x01A0D1 06:A0C1: 20 2E DF  JSR sub_0x01DF3E
bra_A0C4:
C - - - - - 0x01A0D4 06:A0C4: A9 FD     LDA #> $FD05
C - - - - - 0x01A0D6 06:A0C6: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01A0D9 06:A0C9: A9 05     LDA #< $FD05
C - - - - - 0x01A0DB 06:A0CB: 99 B0 06  STA ram_obj_spd_X_fr,Y
C - - - - - 0x01A0DE 06:A0CE: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01A0E1 06:A0D1: C9 01     CMP #$01
C - - - - - 0x01A0E3 06:A0D3: F0 0E     BEQ bra_A0E3_RTS
C - - - - - 0x01A0E5 06:A0D5: C9 0A     CMP #$0A
C - - - - - 0x01A0E7 06:A0D7: 90 03     BCC bra_A0DC
; bzk optimize, for readability replace JMP with JSR,
; add LDA 00 after JSR, add RTS, remove LDA 00 at 0x01DF33
C - - - - - 0x01A0E9 06:A0D9: 4C F6 DE  JMP loc_0x01DF06
bra_A0DC:
C - - - - - 0x01A0EC 06:A0DC: A9 0D     LDA #con_sfx_0D
C - - - - - 0x01A0EE 06:A0DE: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x01A0F1 06:A0E1: A9 00     LDA #$00
bra_A0E3_RTS:
C - - - - - 0x01A0F3 06:A0E3: 60        RTS



tbl_0x01A0F4_pos_X_lo:
; bzk optimize, move to bank FF
- D 1 - - - 0x01A0F4 06:A0E4: 0C        .byte $0C   ; 00 
- D 1 - - - 0x01A0F5 06:A0E5: 20        .byte $20   ; 01 
- D 1 - - - 0x01A0F6 06:A0E6: 08        .byte $08   ; 02 
- D 1 - - - 0x01A0F7 06:A0E7: 08        .byte $08   ; 03 
- D 1 - - - 0x01A0F8 06:A0E8: 08        .byte $08   ; 04 
- D 1 - - - 0x01A0F9 06:A0E9: 08        .byte $08   ; 05 
- - - - - - 0x01A0FA 06:A0EA: 18        .byte $18   ; 06 
- - - - - - 0x01A0FB 06:A0EB: 08        .byte $08   ; 07 
- D 1 - - - 0x01A0FC 06:A0EC: 08        .byte $08   ; 08 



tbl_0x01A0FD_pos_Y_lo:
; bzk bug? the 1st byte is 09 index for 0x01A0F4 table
- D 1 - - - 0x01A0FD 06:A0ED: 14        .byte $14   ; 00 09 
- D 1 - - - 0x01A0FE 06:A0EE: 1E        .byte $1E   ; 01 
- D 1 - - - 0x01A0FF 06:A0EF: 10        .byte $10   ; 02 
- D 1 - - - 0x01A100 06:A0F0: 10        .byte $10   ; 03 
- D 1 - - - 0x01A101 06:A0F1: 10        .byte $10   ; 04 
- D 1 - - - 0x01A102 06:A0F2: 10        .byte $10   ; 05 
- - - - - - 0x01A103 06:A0F3: 22        .byte $22   ; 06 
- - - - - - 0x01A104 06:A0F4: 10        .byte $10   ; 07 
- D 1 - - - 0x01A105 06:A0F5: 10        .byte $10   ; 08 
- D 1 - - - 0x01A106 06:A0F6: 00        .byte $00   ; 09 



tbl_0x01A107_score:
- D 1 - - - 0x01A107 06:A0F7: 04        .byte con_add_score_100p   ; 0A 
- D 1 - - - 0x01A108 06:A0F8: 05        .byte con_add_score_150p   ; 0B 
- D 1 - - - 0x01A109 06:A0F9: 06        .byte con_add_score_200p   ; 0C 
- D 1 - - - 0x01A10A 06:A0FA: 0A        .byte con_add_score_500p   ; 0D 
- D 1 - - - 0x01A10B 06:A0FB: 0A        .byte con_add_score_500p   ; 0E 
- D 1 - - - 0x01A10C 06:A0FC: 0A        .byte con_add_score_500p   ; 0F 
- - - - - - 0x01A10D 06:A0FD: 0A        .byte con_add_score_500p   ; 10 
- D 1 - - - 0x01A10E 06:A0FE: 08        .byte con_add_score_300p   ; 11 
- D 1 - - - 0x01A10F 06:A0FF: 06        .byte con_add_score_200p   ; 12 
- D 1 - - - 0x01A110 06:A100: 08        .byte con_add_score_300p   ; 13 
- - - - - - 0x01A111 06:A101: 08        .byte con_add_score_300p   ; 14 
- D 1 - - - 0x01A112 06:A102: 06        .byte con_add_score_200p   ; 15 
- D 1 - - - 0x01A113 06:A103: 05        .byte con_add_score_150p   ; 16 
- D 1 - - - 0x01A114 06:A104: 0A        .byte con_add_score_500p   ; 17 
- D 1 - - - 0x01A115 06:A105: 06        .byte con_add_score_200p   ; 18 
- D 1 - - - 0x01A116 06:A106: 0A        .byte con_add_score_500p   ; 19 
- D 1 - - - 0x01A117 06:A107: 08        .byte con_add_score_300p   ; 1A 
- D 1 - - - 0x01A118 06:A108: 0A        .byte con_add_score_500p   ; 1B 
- - - - - - 0x01A119 06:A109: 00        .byte $00   ; 1C 
- D 1 - - - 0x01A11A 06:A10A: 00        .byte $00   ; 1D 
- - - - - - 0x01A11B 06:A10B: 00        .byte $00   ; 1E 
- - - - - - 0x01A11C 06:A10C: 00        .byte $00   ; 1F 
- D 1 - - - 0x01A11D 06:A10D: 00        .byte $00   ; 20 
- - - - - - 0x01A11E 06:A10E: 00        .byte $00   ; 21 
- - - - - - 0x01A11F 06:A10F: 00        .byte $00   ; 22 
- D 1 - - - 0x01A120 06:A110: 0A        .byte con_add_score_500p   ; 23 
- - - - - - 0x01A121 06:A111: 0A        .byte con_add_score_500p   ; 24 
- D 1 - - - 0x01A122 06:A112: 06        .byte con_add_score_200p   ; 25 
- D 1 - - - 0x01A123 06:A113: 06        .byte con_add_score_200p   ; 26 
- D 1 - - - 0x01A124 06:A114: 08        .byte con_add_score_300p   ; 27 
- - - - - - 0x01A125 06:A115: 08        .byte con_add_score_300p   ; 28 



_off009_A116_27_boss_enemy:
- D 1 - I - 0x01A126 06:A116: 2E A1     .word ofs_005_27_A12E_01
- D 1 - I - 0x01A128 06:A118: BD A1     .word ofs_005_27_A1BD_02
- D 1 - I - 0x01A12A 06:A11A: 77 A3     .word ofs_005_27_A377_03
- D 1 - I - 0x01A12C 06:A11C: C9 A3     .word ofs_005_27_A3C9_04
- D 1 - I - 0x01A12E 06:A11E: F9 A3     .word ofs_005_27_A3F9_05
- D 1 - I - 0x01A130 06:A120: F9 A3     .word ofs_005_27_A3F9_06
- D 1 - I - 0x01A132 06:A122: 77 A3     .word ofs_005_27_A377_07
- D 1 - I - 0x01A134 06:A124: F9 A3     .word ofs_005_27_A3F9_08
- D 1 - I - 0x01A136 06:A126: 77 A3     .word ofs_005_27_A377_09
- - - - - - 0x01A138 06:A128: 77 A3     .word ofs_005_27_A377_0A
- D 1 - I - 0x01A13A 06:A12A: 4A A4     .word ofs_005_27_A44A_0B



_off009_A12C_26_boss_bag:
- D 1 - I - 0x01A13C 06:A12C: 90 A7     .word ofs_005_26_A790_01



ofs_005_27_A12E_01:
C - - J - - 0x01A13E 06:A12E: AD 00 6F  LDA ram_6F00
C - - - - - 0x01A141 06:A131: F0 7F     BEQ bra_A1B2
C - - - - - 0x01A143 06:A133: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01A146 06:A136: F0 24     BEQ bra_A15C
C - - - - - 0x01A148 06:A138: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A14B 06:A13B: 38        SEC
C - - - - - 0x01A14C 06:A13C: E9 10     SBC #< $0010
C - - - - - 0x01A14E 06:A13E: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01A151 06:A141: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01A154 06:A144: E9 00     SBC #> $0010
C - - - - - 0x01A156 06:A146: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01A159 06:A149: C9 01     CMP #$01
C - - - - - 0x01A15B 06:A14B: D0 04     BNE bra_A151
C - - - - - 0x01A15D 06:A14D: A9 0A     LDA #con_chr_bank + $0A
C - - - - - 0x01A15F 06:A14F: 85 1E     STA ram_chr_bank_spr_2
bra_A151:
C - - - - - 0x01A161 06:A151: DE CE 07  DEC ram_07CE_obj_hp,X
C - - - - - 0x01A164 06:A154: D0 05     BNE bra_A15B_RTS
C - - - - - 0x01A166 06:A156: A9 01     LDA #con_sfx_01
; bzk optimize, JMP
C - - - - - 0x01A168 06:A158: 20 1A FF  JSR sub_0x01FF2A_play_sound
bra_A15B_RTS:
C - - - - - 0x01A16B 06:A15B: 60        RTS
bra_A15C:
C - - - - - 0x01A16C 06:A15C: A9 04     LDA #con_add_score_100p
C - - - - - 0x01A16E 06:A15E: 20 C3 DD  JSR sub_0x01DDD3_add_score
C - - - - - 0x01A171 06:A161: A0 00     LDY #$00
bra_A163_loop:
C - - - - - 0x01A173 06:A163: C0 04     CPY #$04
C - - - - - 0x01A175 06:A165: D0 07     BNE bra_A16E
C - - - - - 0x01A177 06:A167: A9 01     LDA #$01    ; bzk optimize, useless
C - - - - - 0x01A179 06:A169: A9 16     LDA #con_sfx_16
C - - - - - 0x01A17B 06:A16B: 20 1A FF  JSR sub_0x01FF2A_play_sound
bra_A16E:
C - - - - - 0x01A17E 06:A16E: B9 13 6F  LDA ram_6F13,Y
C - - - - - 0x01A181 06:A171: 38        SEC
C - - - - - 0x01A182 06:A172: E9 02     SBC #$02
C - - - - - 0x01A184 06:A174: 99 13 6F  STA ram_6F13,Y
C - - - - - 0x01A187 06:A177: C9 C1     CMP #$C1
C - - - - - 0x01A189 06:A179: B0 0E     BCS bra_A189
C - - - - - 0x01A18B 06:A17B: 18        CLC
C - - - - - 0x01A18C 06:A17C: 69 14     ADC #$14
C - - - - - 0x01A18E 06:A17E: 99 13 6F  STA ram_6F13,Y
C - - - - - 0x01A191 06:A181: C8        INY
C - - - - - 0x01A192 06:A182: C8        INY
C - - - - - 0x01A193 06:A183: C8        INY
C - - - - - 0x01A194 06:A184: C8        INY
C - - - - - 0x01A195 06:A185: C0 0C     CPY #$0C
C - - - - - 0x01A197 06:A187: 90 DA     BCC bra_A163_loop
bra_A189:
C - - - - - 0x01A199 06:A189: A9 03     LDA #$03
C - - - - - 0x01A19B 06:A18B: 8D 00 6F  STA ram_6F00
C - - - - - 0x01A19E 06:A18E: A0 08     LDY #$08
bra_A190_loop:
C - - - - - 0x01A1A0 06:A190: B9 13 6F  LDA ram_6F13,Y
C - - - - - 0x01A1A3 06:A193: C9 C1     CMP #$C1
C - - - - - 0x01A1A5 06:A195: D0 09     BNE bra_A1A0
C - - - - - 0x01A1A7 06:A197: 88        DEY
C - - - - - 0x01A1A8 06:A198: 88        DEY
C - - - - - 0x01A1A9 06:A199: 88        DEY
C - - - - - 0x01A1AA 06:A19A: 88        DEY
C - - - - - 0x01A1AB 06:A19B: CE 00 6F  DEC ram_6F00
C - - - - - 0x01A1AE 06:A19E: D0 F0     BNE bra_A190_loop
bra_A1A0:
C - - - - - 0x01A1B0 06:A1A0: F0 0A     BEQ bra_A1AC
C - - - - - 0x01A1B2 06:A1A2: AD 00 6F  LDA ram_6F00
C - - - - - 0x01A1B5 06:A1A5: 18        CLC
C - - - - - 0x01A1B6 06:A1A6: 69 04     ADC #$04
C - - - - - 0x01A1B8 06:A1A8: 8D 00 6F  STA ram_6F00
C - - - - - 0x01A1BB 06:A1AB: 60        RTS
bra_A1AC:
C - - - - - 0x01A1BC 06:A1AC: A9 00     LDA #$00
C - - - - - 0x01A1BE 06:A1AE: 8D 00 6F  STA ram_6F00
C - - - - - 0x01A1C1 06:A1B1: 60        RTS
bra_A1B2:
C - - - - - 0x01A1C2 06:A1B2: A9 00     LDA #$00
C - - - - - 0x01A1C4 06:A1B4: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01A1C7 06:A1B7: A9 03     LDA #$03
C - - - - - 0x01A1C9 06:A1B9: 8D 0C 04  STA ram_040C
C - - - - - 0x01A1CC 06:A1BC: 60        RTS



ofs_005_27_A1BD_02:
C - - J - - 0x01A1CD 06:A1BD: A9 08     LDA #$08
C - - - - - 0x01A1CF 06:A1BF: 8D 16 06  STA ram_0616_obj
C - - - - - 0x01A1D2 06:A1C2: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x01A1D5 06:A1C5: C9 02     CMP #$02
C - - - - - 0x01A1D7 06:A1C7: F0 11     BEQ bra_A1DA
C - - - - - 0x01A1D9 06:A1C9: A9 10     LDA #con_chr_bank + $10
C - - - - - 0x01A1DB 06:A1CB: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01A1DD 06:A1CD: A9 00     LDA #$00
C - - - - - 0x01A1DF 06:A1CF: 9D CE 07  STA ram_07CE_obj_hp,X
bra_A1D2_loop:
C - - - - - 0x01A1E2 06:A1D2: A9 02     LDA #$02
C - - - - - 0x01A1E4 06:A1D4: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01A1E7 06:A1D7: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
bra_A1DA:
C - - - - - 0x01A1EA 06:A1DA: FE CE 07  INC ram_07CE_obj_hp,X
C - - - - - 0x01A1ED 06:A1DD: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01A1F0 06:A1E0: C9 2E     CMP #$2E
C - - - - - 0x01A1F2 06:A1E2: F0 EE     BEQ bra_A1D2_loop
C - - - - - 0x01A1F4 06:A1E4: 29 01     AND #$01
C - - - - - 0x01A1F6 06:A1E6: D0 19     BNE bra_A201
C - - - - - 0x01A1F8 06:A1E8: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01A1FB 06:A1EB: 29 0F     AND #$0F
C - - - - - 0x01A1FD 06:A1ED: D0 05     BNE bra_A1F4
C - - - - - 0x01A1FF 06:A1EF: A9 F8     LDA #$F8
C - - - - - 0x01A201 06:A1F1: 20 7C A0  JSR sub_A07C
bra_A1F4:
C - - - - - 0x01A204 06:A1F4: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01A207 06:A1F7: 4A        LSR
C - - - - - 0x01A208 06:A1F8: 29 03     AND #$03
C - - - - - 0x01A20A 06:A1FA: A8        TAY
C - - - - - 0x01A20B 06:A1FB: B9 42 A2  LDA tbl_A242_sound,Y
C - - - - - 0x01A20E 06:A1FE: 20 1A FF  JSR sub_0x01FF2A_play_sound
bra_A201:
C - - - - - 0x01A211 06:A201: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A214 06:A204: 29 08     AND #con_0776_08
C - - - - - 0x01A216 06:A206: F0 39     BEQ bra_A241_RTS
C - - - - - 0x01A218 06:A208: A9 10     LDA #con_sfx_10
C - - - - - 0x01A21A 06:A20A: 20 1A FF  JSR sub_0x01FF2A_play_sound
C - - - - - 0x01A21D 06:A20D: EE 11 04  INC ram_0411
C - - - - - 0x01A220 06:A210: A9 01     LDA #$01    ; con_0776_spr_A + $01
C - - - - - 0x01A222 06:A212: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01A225 06:A215: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01A228 06:A218: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A22B 06:A21B: A9 88     LDA #$88
C - - - - - 0x01A22D 06:A21D: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01A230 06:A220: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x01A233 06:A223: A5 BA     LDA ram_cam_pos_Y_lo
C - - - - - 0x01A235 06:A225: 18        CLC
C - - - - - 0x01A236 06:A226: 69 C6     ADC #< $08C6
C - - - - - 0x01A238 06:A228: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01A23B 06:A22B: A5 B8     LDA ram_cam_pos_Y_hi
C - - - - - 0x01A23D 06:A22D: 69 08     ADC #> $08C6
C - - - - - 0x01A23F 06:A22F: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01A242 06:A232: A5 B9     LDA ram_cam_pos_X_lo
C - - - - - 0x01A244 06:A234: 18        CLC
C - - - - - 0x01A245 06:A235: 69 80     ADC #< $0080
C - - - - - 0x01A247 06:A237: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01A24A 06:A23A: A5 B7     LDA ram_cam_pos_X_hi
C - - - - - 0x01A24C 06:A23C: 69 00     ADC #> $0080
C - - - - - 0x01A24E 06:A23E: 9D 58 06  STA ram_obj_pos_X_hi,X
bra_A241_RTS:
loc_A241_RTS:   ; bzk optimize
C D 1 - - - 0x01A251 06:A241: 60        RTS



tbl_A242_sound:
- D 1 - - - 0x01A252 06:A242: 09        .byte con_sfx_09   ; 00 
- D 1 - - - 0x01A253 06:A243: 18        .byte con_sfx_18   ; 01 
- D 1 - - - 0x01A254 06:A244: 10        .byte con_sfx_10   ; 02 
- D 1 - - - 0x01A255 06:A245: 05        .byte con_sfx_05   ; 03 



sub_A246:
C - - - - - 0x01A256 06:A246: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x01A259 06:A249: 1D A2 07  ORA ram_07A2_obj,X
C - - - - - 0x01A25C 06:A24C: F0 70     BEQ bra_A2BE_RTS
C - - - - - 0x01A25E 06:A24E: BD B8 07  LDA ram_07B8_obj,X
C - - - - - 0x01A261 06:A251: F0 6B     BEQ bra_A2BE_RTS
C - - - - - 0x01A263 06:A253: A8        TAY
C - - - - - 0x01A264 06:A254: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01A267 06:A257: C9 06     CMP #$06
C - - - - - 0x01A269 06:A259: D0 0E     BNE bra_A269
- - - - - - 0x01A26B 06:A25B: B9 76 07  LDA ram_0776_obj_flags,Y
; check for con_0776_flip_V ?
- - - - - - 0x01A26E 06:A25E: 0A        ASL
- - - - - - 0x01A26F 06:A25F: 5D 8C 07  EOR ram_078C_obj,X
- - - - - - 0x01A272 06:A262: 29 80     AND #$80    ; con_0776_flip_V ?
- - - - - - 0x01A274 06:A264: F0 03     BEQ bra_A269
- - - - - - 0x01A276 06:A266: 4C BE A2  JMP loc_A2BE_RTS
bra_A269:
C - - - - - 0x01A279 06:A269: B9 B0 06  LDA ram_obj_spd_X_fr,Y
C - - - - - 0x01A27C 06:A26C: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A27F 06:A26F: B9 C6 06  LDA ram_obj_spd_X_lo,Y
C - - - - - 0x01A282 06:A272: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01A285 06:A275: AD BF 03  LDA ram_03BF_weapon_upgrade
C - - - - - 0x01A288 06:A278: C9 02     CMP #con_weapon_magic_stars
C - - - - - 0x01A28A 06:A27A: D0 18     BNE bra_A294
C - - - - - 0x01A28C 06:A27C: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x01A28F 06:A27F: 5D C6 06  EOR ram_obj_spd_X_lo,X
C - - - - - 0x01A292 06:A282: 10 10     BPL bra_A294
C - - - - - 0x01A294 06:A284: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01A297 06:A287: 49 FF     EOR #$FF
C - - - - - 0x01A299 06:A289: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A29C 06:A28C: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01A29F 06:A28F: 49 FF     EOR #$FF
C - - - - - 0x01A2A1 06:A291: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_A294:
C - - - - - 0x01A2A4 06:A294: A9 00     LDA #< $FC00
C - - - - - 0x01A2A6 06:A296: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01A2A9 06:A299: A9 FC     LDA #> $FC00
C - - - - - 0x01A2AB 06:A29B: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01A2AE 06:A29E: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01A2B1 06:A2A1: C9 04     CMP #$04
C - - - - - 0x01A2B3 06:A2A3: D0 03     BNE bra_A2A8
C - - - - - 0x01A2B5 06:A2A5: FE F2 06  INC ram_obj_spd_Y_lo,X
bra_A2A8:
loc_A2A8:
C - - - - - 0x01A2B8 06:A2A8: A9 5A     LDA #$5A
C - - - - - 0x01A2BA 06:A2AA: 8D 29 04  STA ram_0429
C - - - - - 0x01A2BD 06:A2AD: A0 0F     LDY #$0F
bra_A2AF_loop:
C - - - - - 0x01A2BF 06:A2AF: B9 46 00  LDA ram_0046_pal_buffer,Y
C - - - - - 0x01A2C2 06:A2B2: C9 0F     CMP #$0F
C - - - - - 0x01A2C4 06:A2B4: F0 02     BEQ bra_A2B8
C - - - - - 0x01A2C6 06:A2B6: A9 30     LDA #$30
bra_A2B8:
C - - - - - 0x01A2C8 06:A2B8: 99 46 00  STA ram_0046_pal_buffer,Y
C - - - - - 0x01A2CB 06:A2BB: 88        DEY
C - - - - - 0x01A2CC 06:A2BC: D0 F1     BNE bra_A2AF_loop
bra_A2BE_RTS:
loc_A2BE_RTS:   ; bzk optimize
C - - - - - 0x01A2CE 06:A2BE: 60        RTS



sub_A2BF:
C - - - - - 0x01A2CF 06:A2BF: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x01A2D2 06:A2C2: 1D A2 07  ORA ram_07A2_obj,X
C - - - - - 0x01A2D5 06:A2C5: F0 F7     BEQ bra_A2BE_RTS
C - - - - - 0x01A2D7 06:A2C7: BD B8 07  LDA ram_07B8_obj,X
C - - - - - 0x01A2DA 06:A2CA: F0 F2     BEQ bra_A2BE_RTS
C - - - - - 0x01A2DC 06:A2CC: A8        TAY
C - - - - - 0x01A2DD 06:A2CD: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01A2E0 06:A2D0: C9 06     CMP #$06
C - - - - - 0x01A2E2 06:A2D2: D0 D4     BNE bra_A2A8
- - - - - - 0x01A2E4 06:A2D4: B9 76 07  LDA ram_0776_obj_flags,Y
; check for con_0776_flip_V ?
- - - - - - 0x01A2E7 06:A2D7: 0A        ASL
- - - - - - 0x01A2E8 06:A2D8: 5D 8C 07  EOR ram_078C_obj,X
- - - - - - 0x01A2EB 06:A2DB: 29 80     AND #$80    ; con_0776_flip_V ?
- - - - - - 0x01A2ED 06:A2DD: D0 03     BNE bra_A2E2_RTS
- - - - - - 0x01A2EF 06:A2DF: 4C A8 A2  JMP loc_A2A8
bra_A2E2_RTS:
- - - - - - 0x01A2F2 06:A2E2: 60        RTS



sub_A2E3:
C - - - - - 0x01A2F3 06:A2E3: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01A2F6 06:A2E6: 38        SEC
C - - - - - 0x01A2F7 06:A2E7: ED 42 06  SBC ram_obj_pos_X_lo
C - - - - - 0x01A2FA 06:A2EA: 08        PHP
C - - - - - 0x01A2FB 06:A2EB: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01A2FE 06:A2EE: ED 58 06  SBC ram_obj_pos_X_hi
C - - - - - 0x01A301 06:A2F1: 30 0C     BMI bra_A2FF
C - - - - - 0x01A303 06:A2F3: 28        PLP
C - - - - - 0x01A304 06:A2F4: F0 08     BEQ bra_A2FE_RTS
C - - - - - 0x01A306 06:A2F6: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A309 06:A2F9: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x01A30B 06:A2FB: 9D 76 07  STA ram_0776_obj_flags,X
bra_A2FE_RTS:
C - - - - - 0x01A30E 06:A2FE: 60        RTS
bra_A2FF:
C - - - - - 0x01A30F 06:A2FF: 28        PLP
C - - - - - 0x01A310 06:A300: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A313 06:A303: 09 40     ORA #con_0776_flip_H
C - - - - - 0x01A315 06:A305: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A318 06:A308: 60        RTS



sub_A309:
C - - - - - 0x01A319 06:A309: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A31C 06:A30C: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x01A31E 06:A30E: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A321 06:A311: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x01A323 06:A313: 29 02     AND #$02
C - - - - - 0x01A325 06:A315: F0 08     BEQ bra_A31F
C - - - - - 0x01A327 06:A317: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A32A 06:A31A: 09 04     ORA #con_0776_04
C - - - - - 0x01A32C 06:A31C: 9D 76 07  STA ram_0776_obj_flags,X
bra_A31F:
C - - - - - 0x01A32F 06:A31F: AD 29 04  LDA ram_0429
C - - - - - 0x01A332 06:A322: D0 11     BNE bra_A335
C - - - - - 0x01A334 06:A324: 20 46 A2  JSR sub_A246
C - - - - - 0x01A337 06:A327: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A33A 06:A32A: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x01A33C 06:A32C: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A33F 06:A32F: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x01A342 06:A332: D0 0B     BNE bra_A33F_RTS
C - - - - - 0x01A344 06:A334: 60        RTS
bra_A335:
C - - - - - 0x01A345 06:A335: CE 29 04  DEC ram_0429
C - - - - - 0x01A348 06:A338: 20 E5 DF  JSR sub_0x01DFF5
C - - - - - 0x01A34B 06:A33B: D0 39     BNE bra_A376_RTS
C - - - - - 0x01A34D 06:A33D: A9 00     LDA #$00
bra_A33F_RTS:
C - - - - - 0x01A34F 06:A33F: 60        RTS



sub_A340:
C - - - - - 0x01A350 06:A340: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A353 06:A343: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x01A355 06:A345: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A358 06:A348: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x01A35A 06:A34A: 29 02     AND #$02
C - - - - - 0x01A35C 06:A34C: F0 08     BEQ bra_A356
C - - - - - 0x01A35E 06:A34E: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A361 06:A351: 09 04     ORA #con_0776_04
C - - - - - 0x01A363 06:A353: 9D 76 07  STA ram_0776_obj_flags,X
bra_A356:
C - - - - - 0x01A366 06:A356: AD 29 04  LDA ram_0429
C - - - - - 0x01A369 06:A359: D0 11     BNE bra_A36C
C - - - - - 0x01A36B 06:A35B: 20 BF A2  JSR sub_A2BF
C - - - - - 0x01A36E 06:A35E: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A371 06:A361: 29 FB     AND #con_0776_04 ^ $FF
C - - - - - 0x01A373 06:A363: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A376 06:A366: 20 AC DF  JSR sub_0x01DFBC
C - - - - - 0x01A379 06:A369: D0 0B     BNE bra_A376_RTS
C - - - - - 0x01A37B 06:A36B: 60        RTS
bra_A36C:
C - - - - - 0x01A37C 06:A36C: CE 29 04  DEC ram_0429
C - - - - - 0x01A37F 06:A36F: 20 E5 DF  JSR sub_0x01DFF5
C - - - - - 0x01A382 06:A372: D0 02     BNE bra_A376_RTS
C - - - - - 0x01A384 06:A374: A9 00     LDA #$00
bra_A376_RTS:
C - - - - - 0x01A386 06:A376: 60        RTS



ofs_005_27_A377_03:
ofs_005_27_A377_07:
ofs_005_27_A377_09:
ofs_005_27_A377_0A:
C - - J - - 0x01A387 06:A377: 20 09 A3  JSR sub_A309
C - - - - - 0x01A38A 06:A37A: F0 03     BEQ bra_A37F
C - - - - - 0x01A38C 06:A37C: 4C 41 A2  JMP loc_A241_RTS
bra_A37F:
C - - - - - 0x01A38F 06:A37F: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01A392 06:A382: 18        CLC
C - - - - - 0x01A393 06:A383: 69 01     ADC #$01
C - - - - - 0x01A395 06:A385: C9 02     CMP #$02
C - - - - - 0x01A397 06:A387: B0 30     BCS bra_A3B9
C - - - - - 0x01A399 06:A389: AD 28 04  LDA ram_0428
C - - - - - 0x01A39C 06:A38C: F0 2B     BEQ bra_A3B9
C - - - - - 0x01A39E 06:A38E: A9 66     LDA #$66
C - - - - - 0x01A3A0 06:A390: BC 16 06  LDY ram_0616_obj,X
C - - - - - 0x01A3A3 06:A393: C0 07     CPY #$07
C - - - - - 0x01A3A5 06:A395: D0 02     BNE bra_A399
C - - - - - 0x01A3A7 06:A397: A9 62     LDA #$62
bra_A399:
C - - - - - 0x01A3A9 06:A399: 8D 2A 04  STA ram_042A
C - - - - - 0x01A3AC 06:A39C: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A3AF 06:A39F: C9 FF     CMP #$FF
C - - - - - 0x01A3B1 06:A3A1: F0 22     BEQ bra_A3C5
C - - - - - 0x01A3B3 06:A3A3: AD 2A 04  LDA ram_042A
C - - - - - 0x01A3B6 06:A3A6: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A3B9 06:A3A9: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x01A3BB 06:A3AB: 29 7F     AND #$7F
C - - - - - 0x01A3BD 06:A3AD: D0 0A     BNE bra_A3B9
C - - - - - 0x01A3BF 06:A3AF: A9 F9     LDA #> $F900
C - - - - - 0x01A3C1 06:A3B1: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01A3C4 06:A3B4: A9 00     LDA #< $F900
C - - - - - 0x01A3C6 06:A3B6: 9D DC 06  STA ram_obj_spd_Y_fr,X
bra_A3B9:
C - - - - - 0x01A3C9 06:A3B9: 20 E4 A5  JSR sub_A5E4
C - - - - - 0x01A3CC 06:A3BC: A9 09     LDA #$09
C - - - - - 0x01A3CE 06:A3BE: 85 3C     STA ram_003C
C - - - - - 0x01A3D0 06:A3C0: A9 60     LDA #$60
C - - - - - 0x01A3D2 06:A3C2: 20 17 89  JSR sub_8917_add_spd_Y
bra_A3C5:
; bzk optimize, JMP
C - - - - - 0x01A3D5 06:A3C5: 20 E3 A2  JSR sub_A2E3
C - - - - - 0x01A3D8 06:A3C8: 60        RTS



ofs_005_27_A3C9_04:
C - - J - - 0x01A3D9 06:A3C9: 20 09 A3  JSR sub_A309
C - - - - - 0x01A3DC 06:A3CC: F0 03     BEQ bra_A3D1
C - - - - - 0x01A3DE 06:A3CE: 4C 41 A2  JMP loc_A241_RTS
bra_A3D1:
C - - - - - 0x01A3E1 06:A3D1: 20 E3 A2  JSR sub_A2E3
C - - - - - 0x01A3E4 06:A3D4: 20 E4 A5  JSR sub_A5E4
C - - - - - 0x01A3E7 06:A3D7: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01A3EA 06:A3DA: 30 09     BMI bra_A3E5
C - - - - - 0x01A3EC 06:A3DC: A9 09     LDA #$09
C - - - - - 0x01A3EE 06:A3DE: 85 3C     STA ram_003C
C - - - - - 0x01A3F0 06:A3E0: A9 40     LDA #$40
C - - - - - 0x01A3F2 06:A3E2: 20 17 89  JSR sub_8917_add_spd_Y
bra_A3E5:
C - - - - - 0x01A3F5 06:A3E5: A5 0F     LDA ram_000F
C - - - - - 0x01A3F7 06:A3E7: F0 0A     BEQ bra_A3F3
C - - - - - 0x01A3F9 06:A3E9: BD 60 07  LDA ram_obj_anim_cnt,X
C - - - - - 0x01A3FC 06:A3EC: D0 05     BNE bra_A3F3
C - - - - - 0x01A3FE 06:A3EE: A9 FD     LDA #$FD
C - - - - - 0x01A400 06:A3F0: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_A3F3:
C - - - - - 0x01A403 06:A3F3: A9 72     LDA #$72
; bzk optimize, JMP
C - - - - - 0x01A405 06:A3F5: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A408 06:A3F8: 60        RTS



ofs_005_27_A3F9_05:
ofs_005_27_A3F9_06:
ofs_005_27_A3F9_08:
C - - J - - 0x01A409 06:A3F9: 20 40 A3  JSR sub_A340
C - - - - - 0x01A40C 06:A3FC: F0 03     BEQ bra_A401
C - - - - - 0x01A40E 06:A3FE: 4C 41 A2  JMP loc_A241_RTS
bra_A401:
C - - - - - 0x01A411 06:A401: 20 E3 A2  JSR sub_A2E3
C - - - - - 0x01A414 06:A404: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01A417 06:A407: C9 08     CMP #$08
C - - - - - 0x01A419 06:A409: F0 2C     BEQ bra_A437
C - - - - - 0x01A41B 06:A40B: C9 06     CMP #$06
C - - - - - 0x01A41D 06:A40D: F0 09     BEQ bra_A418
C - - - - - 0x01A41F 06:A40F: A9 82     LDA #$82
C - - - - - 0x01A421 06:A411: 20 CB A6  JSR sub_A6CB
; bzk optimize, JMP
C - - - - - 0x01A424 06:A414: 20 31 A5  JSR sub_A531
C - - - - - 0x01A427 06:A417: 60        RTS
bra_A418:
C - - - - - 0x01A428 06:A418: EE 2A 04  INC ram_042A
C - - - - - 0x01A42B 06:A41B: AD 2A 04  LDA ram_042A
C - - - - - 0x01A42E 06:A41E: C9 03     CMP #$03
C - - - - - 0x01A430 06:A420: A9 8A     LDA #$8A
C - - - - - 0x01A432 06:A422: 90 07     BCC bra_A42B
C - - - - - 0x01A434 06:A424: A9 00     LDA #$00
C - - - - - 0x01A436 06:A426: 8D 2A 04  STA ram_042A
C - - - - - 0x01A439 06:A429: A9 82     LDA #$82
bra_A42B:
C - - - - - 0x01A43B 06:A42B: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A43E 06:A42E: A9 8A     LDA #$8A
C - - - - - 0x01A440 06:A430: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A443 06:A433: 20 31 A5  JSR sub_A531
C - - - - - 0x01A446 06:A436: 60        RTS
bra_A437:
C - - - - - 0x01A447 06:A437: A9 8A     LDA #$8A
C - - - - - 0x01A449 06:A439: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A44C 06:A43C: A9 8A     LDA #$8A
C - - - - - 0x01A44E 06:A43E: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A451 06:A441: A9 8A     LDA #$8A
C - - - - - 0x01A453 06:A443: 20 CB A6  JSR sub_A6CB
; bzk optimize, JMP
C - - - - - 0x01A456 06:A446: 20 31 A5  JSR sub_A531
C - - - - - 0x01A459 06:A449: 60        RTS



ofs_005_27_A44A_0B:
C - - J - - 0x01A45A 06:A44A: 20 40 A3  JSR sub_A340
C - - - - - 0x01A45D 06:A44D: 20 E3 A2  JSR sub_A2E3
C - - - - - 0x01A460 06:A450: A9 E6     LDA #$E6
C - - - - - 0x01A462 06:A452: 20 CB A6  JSR sub_A6CB
C - - - - - 0x01A465 06:A455: 20 6E A4  JSR sub_A46E
C - - - - - 0x01A468 06:A458: 20 87 A5  JSR sub_A587
C - - - - - 0x01A46B 06:A45B: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01A46E 06:A45E: 8D 2A 04  STA ram_042A
C - - - - - 0x01A471 06:A461: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01A474 06:A464: 8D 2B 04  STA ram_042B
C - - - - - 0x01A477 06:A467: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01A47A 06:A46A: 8D 2C 04  STA ram_042C
C - - - - - 0x01A47D 06:A46D: 60        RTS



sub_A46E:
C - - - - - 0x01A47E 06:A46E: AD 16 06  LDA ram_0616_obj
C - - - - - 0x01A481 06:A471: C9 0D     CMP #$0D
C - - - - - 0x01A483 06:A473: 90 03     BCC bra_A478
C - - - - - 0x01A485 06:A475: 4C FE A4  JMP loc_A4FE
bra_A478:
loc_A478:
C - - - - - 0x01A488 06:A478: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01A48B 06:A47B: C9 01     CMP #> $0150
C - - - - - 0x01A48D 06:A47D: D0 14     BNE bra_A493
C - - - - - 0x01A48F 06:A47F: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A492 06:A482: C9 50     CMP #< $0150
C - - - - - 0x01A494 06:A484: 90 0D     BCC bra_A493
C - - - - - 0x01A496 06:A486: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01A499 06:A489: 30 08     BMI bra_A493
C - - - - - 0x01A49B 06:A48B: A9 00     LDA #$00
C - - - - - 0x01A49D 06:A48D: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01A4A0 06:A490: 9D DC 06  STA ram_obj_spd_Y_fr,X
bra_A493:
C - - - - - 0x01A4A3 06:A493: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x01A4A6 06:A496: 38        SEC
C - - - - - 0x01A4A7 06:A497: FD 84 06  SBC ram_obj_pos_Y_lo,X
C - - - - - 0x01A4AA 06:A49A: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x01A4AD 06:A49D: FD 9A 06  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x01A4B0 06:A4A0: 30 33     BMI bra_A4D5
C - - - - - 0x01A4B2 06:A4A2: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01A4B5 06:A4A5: C9 01     CMP #$01
C - - - - - 0x01A4B7 06:A4A7: D0 07     BNE bra_A4B0
C - - - - - 0x01A4B9 06:A4A9: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A4BC 06:A4AC: C9 3E     CMP #$3E
C - - - - - 0x01A4BE 06:A4AE: B0 25     BCS bra_A4D5
bra_A4B0:
loc_A4B0:
C D 1 - - - 0x01A4C0 06:A4B0: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01A4C3 06:A4B3: 18        CLC
C - - - - - 0x01A4C4 06:A4B4: 69 0A     ADC #< $000A
C - - - - - 0x01A4C6 06:A4B6: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01A4C9 06:A4B9: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01A4CC 06:A4BC: 69 00     ADC #> $000A
C - - - - - 0x01A4CE 06:A4BE: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01A4D1 06:A4C1: 10 03     BPL bra_A4C6
C - - - - - 0x01A4D3 06:A4C3: 4C 37 89  JMP loc_8937_move_obj_Y_axis
bra_A4C6:
C - - - - - 0x01A4D6 06:A4C6: C9 02     CMP #$02
C - - - - - 0x01A4D8 06:A4C8: B0 03     BCS bra_A4CD
C - - - - - 0x01A4DA 06:A4CA: 4C 37 89  JMP loc_8937_move_obj_Y_axis
bra_A4CD:
C - - - - - 0x01A4DD 06:A4CD: A9 00     LDA #$00
C - - - - - 0x01A4DF 06:A4CF: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01A4E2 06:A4D2: 4C 37 89  JMP loc_8937_move_obj_Y_axis
bra_A4D5:
loc_A4D5:
C D 1 - - - 0x01A4E5 06:A4D5: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01A4E8 06:A4D8: 38        SEC
C - - - - - 0x01A4E9 06:A4D9: E9 0A     SBC #< $000A
C - - - - - 0x01A4EB 06:A4DB: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01A4EE 06:A4DE: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01A4F1 06:A4E1: E9 00     SBC #> $000A
C - - - - - 0x01A4F3 06:A4E3: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01A4F6 06:A4E6: 30 03     BMI bra_A4EB
C - - - - - 0x01A4F8 06:A4E8: 4C 37 89  JMP loc_8937_move_obj_Y_axis
bra_A4EB:
C - - - - - 0x01A4FB 06:A4EB: C9 FE     CMP #$FE
C - - - - - 0x01A4FD 06:A4ED: 90 03     BCC bra_A4F2
C - - - - - 0x01A4FF 06:A4EF: 4C 37 89  JMP loc_8937_move_obj_Y_axis
bra_A4F2:
C - - - - - 0x01A502 06:A4F2: FE F2 06  INC ram_obj_spd_Y_lo,X
C - - - - - 0x01A505 06:A4F5: A9 00     LDA #$00
C - - - - - 0x01A507 06:A4F7: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01A50A 06:A4FA: 4C 37 89  JMP loc_8937_move_obj_Y_axis
- - - - - - 0x01A50D 06:A4FD: 60        RTS



loc_A4FE:
C D 1 - - - 0x01A50E 06:A4FE: AD 6E 06  LDA ram_obj_pos_Y_fr
C - - - - - 0x01A511 06:A501: C9 02     CMP #$02
C - - - - - 0x01A513 06:A503: D0 03     BNE bra_A508
- - - - - - 0x01A515 06:A505: 4C 78 A4  JMP loc_A478
bra_A508:
C - - - - - 0x01A518 06:A508: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01A51B 06:A50B: 38        SEC
C - - - - - 0x01A51C 06:A50C: E9 28     SBC #< $0028
C - - - - - 0x01A51E 06:A50E: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01A521 06:A511: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01A524 06:A514: E9 00     SBC #> $0028
C - - - - - 0x01A526 06:A516: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01A529 06:A519: 30 03     BMI bra_A51E
- - - - - - 0x01A52B 06:A51B: 4C 37 89  JMP loc_8937_move_obj_Y_axis
bra_A51E:
C - - - - - 0x01A52E 06:A51E: C9 FE     CMP #$FE
C - - - - - 0x01A530 06:A520: 90 03     BCC bra_A525
C - - - - - 0x01A532 06:A522: 4C 37 89  JMP loc_8937_move_obj_Y_axis
bra_A525:
C - - - - - 0x01A535 06:A525: FE F2 06  INC ram_obj_spd_Y_lo,X
C - - - - - 0x01A538 06:A528: A9 00     LDA #$00
C - - - - - 0x01A53A 06:A52A: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01A53D 06:A52D: 4C 37 89  JMP loc_8937_move_obj_Y_axis


; bzk garbage
- - - - - - 0x01A540 06:A530: 60        RTS



sub_A531:
C - - - - - 0x01A541 06:A531: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01A544 06:A534: 4A        LSR
C - - - - - 0x01A545 06:A535: B0 1B     BCS bra_A552
C - - - - - 0x01A547 06:A537: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01A54A 06:A53A: 30 09     BMI bra_A545
C - - - - - 0x01A54C 06:A53C: D0 14     BNE bra_A552
C - - - - - 0x01A54E 06:A53E: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A551 06:A541: C9 48     CMP #$48
C - - - - - 0x01A553 06:A543: B0 0D     BCS bra_A552
bra_A545:
C - - - - - 0x01A555 06:A545: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01A558 06:A548: C9 80     CMP #$80
C - - - - - 0x01A55A 06:A54A: 90 06     BCC bra_A552
C - - - - - 0x01A55C 06:A54C: 7E F2 06  ROR ram_obj_spd_Y_lo,X
C - - - - - 0x01A55F 06:A54F: 7E DC 06  ROR ram_obj_spd_Y_fr,X
bra_A552:
C - - - - - 0x01A562 06:A552: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x01A565 06:A555: 38        SEC
C - - - - - 0x01A566 06:A556: FD 84 06  SBC ram_obj_pos_Y_lo,X
C - - - - - 0x01A569 06:A559: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x01A56C 06:A55C: FD 9A 06  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x01A56F 06:A55F: 30 03     BMI bra_A564
C - - - - - 0x01A571 06:A561: 4C B0 A4  JMP loc_A4B0
bra_A564:
C - - - - - 0x01A574 06:A564: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01A577 06:A567: 4A        LSR
C - - - - - 0x01A578 06:A568: B0 03     BCS bra_A56D
C - - - - - 0x01A57A 06:A56A: 4C D5 A4  JMP loc_A4D5
bra_A56D:
C - - - - - 0x01A57D 06:A56D: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01A580 06:A570: 10 03     BPL bra_A575
- - - - - - 0x01A582 06:A572: 4C B0 A4  JMP loc_A4B0
bra_A575:
C - - - - - 0x01A585 06:A575: F0 03     BEQ bra_A57A
C - - - - - 0x01A587 06:A577: 4C D5 A4  JMP loc_A4D5
bra_A57A:
C - - - - - 0x01A58A 06:A57A: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A58D 06:A57D: C9 40     CMP #$40
C - - - - - 0x01A58F 06:A57F: B0 03     BCS bra_A584
- - - - - - 0x01A591 06:A581: 4C B0 A4  JMP loc_A4B0
bra_A584:
C - - - - - 0x01A594 06:A584: 4C D5 A4  JMP loc_A4D5



sub_A587:
C - - - - - 0x01A597 06:A587: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01A59A 06:A58A: 38        SEC
C - - - - - 0x01A59B 06:A58B: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x01A59E 06:A58E: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01A5A1 06:A591: FD 58 06  SBC ram_obj_pos_X_hi,X
C - - - - - 0x01A5A4 06:A594: 30 25     BMI bra_A5BB
C - - - - - 0x01A5A6 06:A596: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01A5A9 06:A599: 18        CLC
C - - - - - 0x01A5AA 06:A59A: 69 0A     ADC #< $000A
C - - - - - 0x01A5AC 06:A59C: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A5AF 06:A59F: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01A5B2 06:A5A2: 69 00     ADC #> $000A
C - - - - - 0x01A5B4 06:A5A4: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01A5B7 06:A5A7: 10 03     BPL bra_A5AC
C - - - - - 0x01A5B9 06:A5A9: 4C 74 89  JMP loc_8974_move_obj_X_axis
bra_A5AC:
C - - - - - 0x01A5BC 06:A5AC: C9 02     CMP #$02
C - - - - - 0x01A5BE 06:A5AE: B0 03     BCS bra_A5B3
C - - - - - 0x01A5C0 06:A5B0: 4C 74 89  JMP loc_8974_move_obj_X_axis
bra_A5B3:
C - - - - - 0x01A5C3 06:A5B3: A9 00     LDA #$00
C - - - - - 0x01A5C5 06:A5B5: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A5C8 06:A5B8: 4C 74 89  JMP loc_8974_move_obj_X_axis
bra_A5BB:
C - - - - - 0x01A5CB 06:A5BB: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01A5CE 06:A5BE: 38        SEC
C - - - - - 0x01A5CF 06:A5BF: E9 0A     SBC #< $000A
C - - - - - 0x01A5D1 06:A5C1: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A5D4 06:A5C4: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01A5D7 06:A5C7: E9 00     SBC #> $000A
C - - - - - 0x01A5D9 06:A5C9: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01A5DC 06:A5CC: 30 03     BMI bra_A5D1
C - - - - - 0x01A5DE 06:A5CE: 4C 74 89  JMP loc_8974_move_obj_X_axis
bra_A5D1:
C - - - - - 0x01A5E1 06:A5D1: C9 FE     CMP #$FE
C - - - - - 0x01A5E3 06:A5D3: 90 03     BCC bra_A5D8
C - - - - - 0x01A5E5 06:A5D5: 4C 74 89  JMP loc_8974_move_obj_X_axis
bra_A5D8:
C - - - - - 0x01A5E8 06:A5D8: FE C6 06  INC ram_obj_spd_X_lo,X
C - - - - - 0x01A5EB 06:A5DB: A9 00     LDA #$00
C - - - - - 0x01A5ED 06:A5DD: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A5F0 06:A5E0: 4C 74 89  JMP loc_8974_move_obj_X_axis


; bzk garbage
- - - - - - 0x01A5F3 06:A5E3: 60        RTS



sub_A5E4:
C - - - - - 0x01A5F4 06:A5E4: 20 74 89  JSR sub_8974_move_obj_X_axis
C - - - - - 0x01A5F7 06:A5E7: 20 99 9F  JSR sub_9F99
C - - - - - 0x01A5FA 06:A5EA: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01A5FD 06:A5ED: 10 00     BPL bra_A5EF
bra_A5EF:
C - - - - - 0x01A5FF 06:A5EF: 20 F6 A5  JSR sub_A5F6
; bzk optimize, JMP
C - - - - - 0x01A602 06:A5F2: 20 1C A6  JSR sub_A61C
C - - - - - 0x01A605 06:A5F5: 60        RTS



sub_A5F6:
C - - - - - 0x01A606 06:A5F6: A9 FA     LDA #$FA
C - - - - - 0x01A608 06:A5F8: 20 0D 8A  JSR sub_8A0D
C - - - - - 0x01A60B 06:A5FB: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01A60E 06:A5FE: 10 0E     BPL bra_A60E
C - - - - - 0x01A610 06:A600: A9 F4     LDA #$F4
C - - - - - 0x01A612 06:A602: 20 F1 89  JSR sub_89F1
C - - - - - 0x01A615 06:A605: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x01A618 06:A608: F0 03     BEQ bra_A60D_RTS
C - - - - - 0x01A61A 06:A60A: 4C 99 A6  JMP loc_A699
bra_A60D_RTS:
C - - - - - 0x01A61D 06:A60D: 60        RTS
bra_A60E:
C - - - - - 0x01A61E 06:A60E: A9 0C     LDA #$0C
C - - - - - 0x01A620 06:A610: 20 E3 89  JSR sub_89E3
C - - - - - 0x01A623 06:A613: 20 51 F2  JSR sub_0x01F261
C - - - - - 0x01A626 06:A616: F0 03     BEQ bra_A61B_RTS
C - - - - - 0x01A628 06:A618: 4C AD A6  JMP loc_A6AD
bra_A61B_RTS:
C - - - - - 0x01A62B 06:A61B: 60        RTS



sub_A61C:
C - - - - - 0x01A62C 06:A61C: A9 00     LDA #$00
C - - - - - 0x01A62E 06:A61E: 8D 28 04  STA ram_0428
C - - - - - 0x01A631 06:A621: A9 F0     LDA #$F0
C - - - - - 0x01A633 06:A623: 20 0D 8A  JSR sub_8A0D
C - - - - - 0x01A636 06:A626: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x01A639 06:A629: F0 19     BEQ bra_A644
C - - - - - 0x01A63B 06:A62B: A9 00     LDA #$00
C - - - - - 0x01A63D 06:A62D: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01A640 06:A630: A5 06     LDA ram_0006_temp
C - - - - - 0x01A642 06:A632: 29 F0     AND #$F0
C - - - - - 0x01A644 06:A634: 18        CLC
C - - - - - 0x01A645 06:A635: 69 20     ADC #< $0020
C - - - - - 0x01A647 06:A637: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01A64A 06:A63A: A5 07     LDA ram_0007_temp
C - - - - - 0x01A64C 06:A63C: 69 00     ADC #> $0020
C - - - - - 0x01A64E 06:A63E: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01A651 06:A641: 20 BA 89  JSR sub_89BA_clear_Y_speed
bra_A644:
C - - - - - 0x01A654 06:A644: A9 10     LDA #$10
C - - - - - 0x01A656 06:A646: 20 FF 89  JSR sub_89FF
C - - - - - 0x01A659 06:A649: 20 47 F2  JSR sub_0x01F257
C - - - - - 0x01A65C 06:A64C: F0 73     BEQ bra_A6C1
C - - - - - 0x01A65E 06:A64E: A9 00     LDA #$00
C - - - - - 0x01A660 06:A650: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01A663 06:A653: A5 06     LDA ram_0006_temp
C - - - - - 0x01A665 06:A655: 29 F0     AND #$F0
C - - - - - 0x01A667 06:A657: 38        SEC
C - - - - - 0x01A668 06:A658: E9 10     SBC #< $0010
C - - - - - 0x01A66A 06:A65A: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01A66D 06:A65D: A5 07     LDA ram_0007_temp
C - - - - - 0x01A66F 06:A65F: E9 00     SBC #> $0010
C - - - - - 0x01A671 06:A661: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01A674 06:A664: 20 BA 89  JSR sub_89BA_clear_Y_speed
C - - - - - 0x01A677 06:A667: EE 28 04  INC ram_0428
C - - - - - 0x01A67A 06:A66A: 60        RTS


; bzk garbage
- - - - - - 0x01A67B 06:A66B: 20 C1 A6  JSR sub_A6C1
- - - - - - 0x01A67E 06:A66E: BD C6 06  LDA ram_obj_spd_X_lo,X
- - - - - - 0x01A681 06:A671: 10 13     BPL bra_A686



loc_A673:
C D 1 - - - 0x01A683 06:A673: A9 00     LDA #> $0080
C - - - - - 0x01A685 06:A675: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01A688 06:A678: A9 80     LDA #< $0080
C - - - - - 0x01A68A 06:A67A: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A68D 06:A67D: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A690 06:A680: 09 40     ORA #con_0776_flip_H
C - - - - - 0x01A692 06:A682: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A695 06:A685: 60        RTS



bra_A686:
loc_A686:
C D 1 - - - 0x01A696 06:A686: A9 FF     LDA #> $FF80
C - - - - - 0x01A698 06:A688: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01A69B 06:A68B: A9 80     LDA #< $FF80
C - - - - - 0x01A69D 06:A68D: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01A6A0 06:A690: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A6A3 06:A693: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x01A6A5 06:A695: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01A6A8 06:A698: 60        RTS



loc_A699:
C D 1 - - - 0x01A6A9 06:A699: A5 04     LDA ram_0004_temp
C - - - - - 0x01A6AB 06:A69B: 29 F0     AND #$F0
C - - - - - 0x01A6AD 06:A69D: 18        CLC
C - - - - - 0x01A6AE 06:A69E: 69 1C     ADC #< $001C
C - - - - - 0x01A6B0 06:A6A0: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01A6B3 06:A6A3: A5 05     LDA ram_0005_temp
C - - - - - 0x01A6B5 06:A6A5: 69 00     ADC #> $001C
C - - - - - 0x01A6B7 06:A6A7: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01A6BA 06:A6AA: 4C 73 A6  JMP loc_A673



loc_A6AD:
C D 1 - - - 0x01A6BD 06:A6AD: A5 04     LDA ram_0004_temp
C - - - - - 0x01A6BF 06:A6AF: 29 F0     AND #$F0
C - - - - - 0x01A6C1 06:A6B1: 38        SEC
C - - - - - 0x01A6C2 06:A6B2: E9 0C     SBC #< $000C
C - - - - - 0x01A6C4 06:A6B4: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01A6C7 06:A6B7: A5 05     LDA ram_0005_temp
C - - - - - 0x01A6C9 06:A6B9: E9 00     SBC #> $000C
C - - - - - 0x01A6CB 06:A6BB: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01A6CE 06:A6BE: 4C 86 A6  JMP loc_A686



bra_A6C1:
sub_A6C1:
C - - - - - 0x01A6D1 06:A6C1: A9 09     LDA #$09
C - - - - - 0x01A6D3 06:A6C3: 85 3C     STA ram_003C
C - - - - - 0x01A6D5 06:A6C5: A9 19     LDA #$19
; bzk optimize, JMP
C - - - - - 0x01A6D7 06:A6C7: 20 17 89  JSR sub_8917_add_spd_Y
C - - - - - 0x01A6DA 06:A6CA: 60        RTS



sub_A6CB:
; bzk optimize, prepare proper values beforehand, without AND
C - - - - - 0x01A6DB 06:A6CB: 29 0F     AND #$0F
C - - - - - 0x01A6DD 06:A6CD: 85 00     STA ram_0000_t66
C - - - - - 0x01A6DF 06:A6CF: A4 33     LDY ram_round
C - - - - - 0x01A6E1 06:A6D1: B9 09 E5  LDA tbl_0x01E519_round_data,Y
C - - - - - 0x01A6E4 06:A6D4: 29 0F     AND #$0F
C - - - - - 0x01A6E6 06:A6D6: 18        CLC
C - - - - - 0x01A6E7 06:A6D7: 69 06     ADC #$06
; * 10
C - - - - - 0x01A6E9 06:A6D9: 0A        ASL
C - - - - - 0x01A6EA 06:A6DA: 0A        ASL
C - - - - - 0x01A6EB 06:A6DB: 0A        ASL
C - - - - - 0x01A6EC 06:A6DC: 0A        ASL
C - - - - - 0x01A6ED 06:A6DD: 05 00     ORA ram_0000_t66
C - - - - - 0x01A6EF 06:A6DF: 85 00     STA ram_0000_t66
C - - - - - 0x01A6F1 06:A6E1: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x01A6F4 06:A6E4: C9 0C     CMP #$0C
C - - - - - 0x01A6F6 06:A6E6: 90 03     BCC bra_A6EB
C - - - - - 0x01A6F8 06:A6E8: 4C 56 A7  JMP loc_A756
bra_A6EB:
C - - - - - 0x01A6FB 06:A6EB: EE 24 04  INC ram_0424
C - - - - - 0x01A6FE 06:A6EE: AD 24 04  LDA ram_0424
C - - - - - 0x01A701 06:A6F1: C9 3C     CMP #$3C
C - - - - - 0x01A703 06:A6F3: 90 60     BCC bra_A755_RTS
C - - - - - 0x01A705 06:A6F5: A9 00     LDA #$00
C - - - - - 0x01A707 06:A6F7: 8D 24 04  STA ram_0424
C - - - - - 0x01A70A 06:A6FA: EE 25 04  INC ram_0425
C - - - - - 0x01A70D 06:A6FD: AD 25 04  LDA ram_0425
C - - - - - 0x01A710 06:A700: C9 0A     CMP #$0A
C - - - - - 0x01A712 06:A702: 90 0F     BCC bra_A713
C - - - - - 0x01A714 06:A704: A9 00     LDA #$00
C - - - - - 0x01A716 06:A706: 8D 25 04  STA ram_0425
C - - - - - 0x01A719 06:A709: AD 27 04  LDA ram_0427
C - - - - - 0x01A71C 06:A70C: C9 02     CMP #$02
C - - - - - 0x01A71E 06:A70E: 90 03     BCC bra_A713
C - - - - - 0x01A720 06:A710: CE 27 04  DEC ram_0427
bra_A713:
C - - - - - 0x01A723 06:A713: EE 26 04  INC ram_0426
C - - - - - 0x01A726 06:A716: AD 26 04  LDA ram_0426
C - - - - - 0x01A729 06:A719: CD 27 04  CMP ram_0427
C - - - - - 0x01A72C 06:A71C: 90 37     BCC bra_A755_RTS
C - - - - - 0x01A72E 06:A71E: A9 00     LDA #$00
C - - - - - 0x01A730 06:A720: 8D 26 04  STA ram_0426
C - - - - - 0x01A733 06:A723: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01A736 06:A726: 38        SEC
C - - - - - 0x01A737 06:A727: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x01A73A 06:A72A: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01A73D 06:A72D: FD 58 06  SBC ram_obj_pos_X_hi,X
C - - - - - 0x01A740 06:A730: 4A        LSR
C - - - - - 0x01A741 06:A731: 5D 76 07  EOR ram_0776_obj_flags,X
C - - - - - 0x01A744 06:A734: 29 40     AND #con_0776_flip_H
C - - - - - 0x01A746 06:A736: F0 1D     BEQ bra_A755_RTS
C - - - - - 0x01A748 06:A738: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A74B 06:A73B: 2A        ROL
C - - - - - 0x01A74C 06:A73C: 2A        ROL
C - - - - - 0x01A74D 06:A73D: 2A        ROL
C - - - - - 0x01A74E 06:A73E: 49 01     EOR #$01
C - - - - - 0x01A750 06:A740: 29 01     AND #$01
C - - - - - 0x01A752 06:A742: 05 00     ORA ram_0000_t66
C - - - - - 0x01A754 06:A744: 20 7C A0  JSR sub_A07C
C - - - - - 0x01A757 06:A747: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x01A75A 06:A74A: 18        CLC
C - - - - - 0x01A75B 06:A74B: 69 09     ADC #$09
C - - - - - 0x01A75D 06:A74D: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01A760 06:A750: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x01A763 06:A753: A9 00     LDA #$00
bra_A755_RTS:
C - - - - - 0x01A765 06:A755: 60        RTS



loc_A756:
C D 1 - - - 0x01A766 06:A756: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01A769 06:A759: 29 08     AND #con_0776_08
C - - - - - 0x01A76B 06:A75B: F0 30     BEQ bra_A78D
C - - - - - 0x01A76D 06:A75D: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x01A770 06:A760: 38        SEC
C - - - - - 0x01A771 06:A761: E9 09     SBC #$09
C - - - - - 0x01A773 06:A763: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01A776 06:A766: 20 C8 E1  JSR sub_0x01E1D8_initialize_animation
C - - - - - 0x01A779 06:A769: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01A77C 06:A76C: C9 07     CMP #$07
C - - - - - 0x01A77E 06:A76E: D0 1D     BNE bra_A78D
C - - - - - 0x01A780 06:A770: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01A783 06:A773: 38        SEC
C - - - - - 0x01A784 06:A774: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x01A787 06:A777: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01A78A 06:A77A: FD 58 06  SBC ram_obj_pos_X_hi,X
C - - - - - 0x01A78D 06:A77D: C9 80     CMP #$80
C - - - - - 0x01A78F 06:A77F: A9 02     LDA #$02    ; 0200
C - - - - - 0x01A791 06:A781: 90 02     BCC bra_A785
C - - - - - 0x01A793 06:A783: A9 FE     LDA #$FE    ; FE00
bra_A785:
C - - - - - 0x01A795 06:A785: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01A798 06:A788: A9 00     LDA #$00
C - - - - - 0x01A79A 06:A78A: 9D B0 06  STA ram_obj_spd_X_fr,X
bra_A78D:
C - - - - - 0x01A79D 06:A78D: A9 FF     LDA #$FF
C - - - - - 0x01A79F 06:A78F: 60        RTS



ofs_005_26_A790_01:
C - - J - - 0x01A7A0 06:A790: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A7A3 06:A793: C9 FF     CMP #$FF
C - - - - - 0x01A7A5 06:A795: F0 6B     BEQ bra_A802
C - - - - - 0x01A7A7 06:A797: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01A7AA 06:A79A: F0 0B     BEQ bra_A7A7
C - - - - - 0x01A7AC 06:A79C: A5 2E     LDA ram_002E_btn
C - - - - - 0x01A7AE 06:A79E: 29 F3     AND #con_btns_Dpad + con_btns_AB
C - - - - - 0x01A7B0 06:A7A0: F0 65     BEQ bra_A807_RTS
C - - - - - 0x01A7B2 06:A7A2: A9 00     LDA #$00
C - - - - - 0x01A7B4 06:A7A4: 9D CE 07  STA ram_07CE_obj_hp,X
bra_A7A7:
C - - - - - 0x01A7B7 06:A7A7: A5 D5     LDA ram_00D5
C - - - - - 0x01A7B9 06:A7A9: D0 5C     BNE bra_A807_RTS
C - - - - - 0x01A7BB 06:A7AB: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A7BE 06:A7AE: 85 06     STA ram_0006_temp
C - - - - - 0x01A7C0 06:A7B0: A9 01     LDA #$01
C - - - - - 0x01A7C2 06:A7B2: 85 07     STA ram_0007_temp
C - - - - - 0x01A7C4 06:A7B4: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01A7C7 06:A7B7: 85 04     STA ram_0004_temp
C - - - - - 0x01A7C9 06:A7B9: A9 00     LDA #$00
C - - - - - 0x01A7CB 06:A7BB: 85 05     STA ram_0005_temp
C - - - - - 0x01A7CD 06:A7BD: 20 96 F2  JSR sub_0x01F2A6
C - - - - - 0x01A7D0 06:A7C0: A4 33     LDY ram_round
C - - - - - 0x01A7D2 06:A7C2: B9 09 E5  LDA tbl_0x01E519_round_data,Y
C - - - - - 0x01A7D5 06:A7C5: 29 0F     AND #$0F
C - - - - - 0x01A7D7 06:A7C7: 85 00     STA ram_0000_t44
C - - - - - 0x01A7D9 06:A7C9: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A7DC 06:A7CC: 4A        LSR
C - - - - - 0x01A7DD 06:A7CD: 26 00     ROL ram_0000_t44
C - - - - - 0x01A7DF 06:A7CF: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01A7E2 06:A7D2: 4A        LSR
C - - - - - 0x01A7E3 06:A7D3: 26 00     ROL ram_0000_t44
C - - - - - 0x01A7E5 06:A7D5: A4 00     LDY ram_0000_t44
C - - - - - 0x01A7E7 06:A7D7: B9 08 A8  LDA tbl_A808,Y
C - - - - - 0x01A7EA 06:A7DA: A0 00     LDY #$00
C - - - - - 0x01A7EC 06:A7DC: 91 D0     STA (ram_00D0_t01_data),Y
C - - - - - 0x01A7EE 06:A7DE: 20 BE DA  JSR sub_0x01DACE
C - - - - - 0x01A7F1 06:A7E1: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01A7F4 06:A7E4: 18        CLC
C - - - - - 0x01A7F5 06:A7E5: 69 11     ADC #$11
C - - - - - 0x01A7F7 06:A7E7: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01A7FA 06:A7EA: C9 40     CMP #$40
C - - - - - 0x01A7FC 06:A7EC: 90 19     BCC bra_A807_RTS
C - - - - - 0x01A7FE 06:A7EE: A9 20     LDA #$20
C - - - - - 0x01A800 06:A7F0: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01A803 06:A7F3: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01A806 06:A7F6: 18        CLC
C - - - - - 0x01A807 06:A7F7: 69 11     ADC #$11
C - - - - - 0x01A809 06:A7F9: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01A80C 06:A7FC: 29 0F     AND #$0F
C - - - - - 0x01A80E 06:A7FE: C9 02     CMP #$02
C - - - - - 0x01A810 06:A800: 90 05     BCC bra_A807_RTS
bra_A802:
C - - - - - 0x01A812 06:A802: A9 00     LDA #$00
C - - - - - 0x01A814 06:A804: 9D 16 06  STA ram_0616_obj,X
bra_A807_RTS:
C - - - - - 0x01A817 06:A807: 60        RTS



tbl_A808:
; bzk optimize, only a few entries are not = 00
- D 1 - - - 0x01A818 06:A808: 00        .byte $00   ; 00 
- D 1 - - - 0x01A819 06:A809: 00        .byte $00   ; 01 
- D 1 - - - 0x01A81A 06:A80A: 00        .byte $00   ; 02 
- D 1 - - - 0x01A81B 06:A80B: 00        .byte $00   ; 03 
- - - - - - 0x01A81C 06:A80C: 00        .byte $00   ; 04 
- - - - - - 0x01A81D 06:A80D: 00        .byte $00   ; 05 
- - - - - - 0x01A81E 06:A80E: 00        .byte $00   ; 06 
- - - - - - 0x01A81F 06:A80F: 00        .byte $00   ; 07 
- D 1 - - - 0x01A820 06:A810: 00        .byte $00   ; 08 
- D 1 - - - 0x01A821 06:A811: 00        .byte $00   ; 09 
- D 1 - - - 0x01A822 06:A812: 00        .byte $00   ; 0A 
- D 1 - - - 0x01A823 06:A813: 00        .byte $00   ; 0B 
- D 1 - - - 0x01A824 06:A814: 00        .byte $00   ; 0C 
- D 1 - - - 0x01A825 06:A815: 00        .byte $00   ; 0D 
- D 1 - - - 0x01A826 06:A816: 00        .byte $00   ; 0E 
- D 1 - - - 0x01A827 06:A817: 00        .byte $00   ; 0F 
- D 1 - - - 0x01A828 06:A818: 00        .byte $00   ; 10 
- D 1 - - - 0x01A829 06:A819: 00        .byte $00   ; 11 
- D 1 - - - 0x01A82A 06:A81A: 00        .byte $00   ; 12 
- D 1 - - - 0x01A82B 06:A81B: 00        .byte $00   ; 13 
- D 1 - - - 0x01A82C 06:A81C: 00        .byte $00   ; 14 
- D 1 - - - 0x01A82D 06:A81D: 00        .byte $00   ; 15 
- D 1 - - - 0x01A82E 06:A81E: 00        .byte $00   ; 16 
- D 1 - - - 0x01A82F 06:A81F: 00        .byte $00   ; 17 
- D 1 - - - 0x01A830 06:A820: 70        .byte $70   ; 18 
- D 1 - - - 0x01A831 06:A821: 71        .byte $71   ; 19 
- D 1 - - - 0x01A832 06:A822: 78        .byte $78   ; 1A 
- D 1 - - - 0x01A833 06:A823: 79        .byte $79   ; 1B 
- - - - - - 0x01A834 06:A824: 00        .byte $00   ; 1C 
- - - - - - 0x01A835 06:A825: 00        .byte $00   ; 1D 
- - - - - - 0x01A836 06:A826: 00        .byte $00   ; 1E 
- - - - - - 0x01A837 06:A827: 00        .byte $00   ; 1F 
- - - - - - 0x01A838 06:A828: 00        .byte $00   ; 20 
- - - - - - 0x01A839 06:A829: 00        .byte $00   ; 21 
- - - - - - 0x01A83A 06:A82A: 00        .byte $00   ; 22 
- - - - - - 0x01A83B 06:A82B: 00        .byte $00   ; 23 



tbl_A82C_object_handler:
tbl_0x01A83C_object_handler:
; 00 
- - - - - - 0x01A83C 06:A82C: 08        .byte $08   ; 
- - - - - - 0x01A83D 06:A82D: 08        .byte $08   ; 
- D 1 - - - 0x01A83E 06:A82E: F5 C9     .word _off009_0x01CA05_00_felix
; 01 
- - - - - - 0x01A840 06:A830: 08        .byte $08   ; 
- - - - - - 0x01A841 06:A831: 08        .byte $08   ; 
- D 1 - - - 0x01A842 06:A832: 00 80     .word _off009_8000_01_various_objects
; 02 
- - - - - - 0x01A844 06:A834: 08        .byte $08   ; 
- - - - - - 0x01A845 06:A835: 08        .byte $08   ; 
- D 1 - - - 0x01A846 06:A836: 1A 80     .word _off009_801A_02_title_screen_bag
; 03 
- - - - - - 0x01A848 06:A838: 08        .byte $08   ; 
- - - - - - 0x01A849 06:A839: 08        .byte $08   ; 
- D 1 - - - 0x01A84A 06:A83A: 28 80     .word _off009_8028_03_felix_at_felix_world
; 04 
- - - - - - 0x01A84C 06:A83C: 08        .byte $08   ; 
- - - - - - 0x01A84D 06:A83D: 08        .byte $08   ; 
- D 1 - - - 0x01A84E 06:A83E: 00 80     .word _off009_8000_04_continue_screen_bag
; 05 
- - - - - - 0x01A850 06:A840: 08        .byte $08   ; 
- - - - - - 0x01A851 06:A841: 08        .byte $08   ; 
- - - - - - 0x01A852 06:A842: A3 90     .word _off009_90A3_05
; 06 
- - - - - - 0x01A854 06:A844: 08        .byte $08   ; 
- - - - - - 0x01A855 06:A845: 08        .byte $08   ; 
- - - - - - 0x01A856 06:A846: A3 90     .word _off009_90A3_06
; 07 
- - - - - - 0x01A858 06:A848: 08        .byte $08   ; 
- - - - - - 0x01A859 06:A849: 08        .byte $08   ; 
- - - - - - 0x01A85A 06:A84A: A3 90     .word _off009_90A3_07
; 08 
- D 1 - - - 0x01A85C 06:A84C: 08        .byte $08   ; 
- D 1 - - - 0x01A85D 06:A84D: 08        .byte $08   ; 
- D 1 - - - 0x01A85E 06:A84E: 8D 90     .word _off009_908D_08_enemy_projectile
; 09 
- - - - - - 0x01A860 06:A850: 08        .byte $08   ; 
- - - - - - 0x01A861 06:A851: 08        .byte $08   ; 
- - - - - - 0x01A862 06:A852: A3 90     .word _off009_90A3_09
; 0A 
- - - - - - 0x01A864 06:A854: 08        .byte $08   ; 
- - - - - - 0x01A865 06:A855: 08        .byte $08   ; 
- - - - - - 0x01A866 06:A856: A3 90     .word _off009_90A3_0A
; 0B 
- - - - - - 0x01A868 06:A858: 08        .byte $08   ; 
- - - - - - 0x01A869 06:A859: 08        .byte $08   ; 
- D 1 - - - 0x01A86A 06:A85A: 9A 8F     .word _off009_8F9A_0B_snow_water_splash
; 0C 
- - - - - - 0x01A86C 06:A85C: 08        .byte $08   ; 
- - - - - - 0x01A86D 06:A85D: 08        .byte $08   ; 
- D 1 - - - 0x01A86E 06:A85E: 0F 8C     .word _off009_8C0F_0C_felix_weapon
; 0D 
- D 1 - - - 0x01A870 06:A860: 07        .byte $07   ; 
- D 1 - - - 0x01A871 06:A861: 06        .byte $06   ; 
- D 1 - - - 0x01A872 06:A862: 2E 80     .word _off009_802E_0D_milk
; 0E 
- D 1 - - - 0x01A874 06:A864: 07        .byte $07   ; 
- D 1 - - - 0x01A875 06:A865: 07        .byte $07   ; 
- D 1 - - - 0x01A876 06:A866: 36 80     .word _off009_8036_0E_heart_1up
; 0F 
- - - - - - 0x01A878 06:A868: 08        .byte $08   ; 
- - - - - - 0x01A879 06:A869: 08        .byte $08   ; 
- D 1 - - - 0x01A87A 06:A86A: 3E 80     .word _off009_803E_0F_small_cloud
; 10 
- D 1 - - - 0x01A87C 06:A86C: 08        .byte $08   ; 
- D 1 - - - 0x01A87D 06:A86D: 08        .byte $08   ; 
- D 1 - - - 0x01A87E 06:A86E: 7B 90     .word _off009_907B_10_spring
; 11 
- D 1 - - - 0x01A880 06:A870: 08        .byte $08   ; 
- D 1 - - - 0x01A881 06:A871: 05        .byte $05   ; 
- D 1 - - - 0x01A882 06:A872: A3 90     .word _off009_90A3_11_basic_mob_enemy
; 12 
- D 1 - - - 0x01A884 06:A874: 08        .byte $08   ; 
- D 1 - - - 0x01A885 06:A875: 05        .byte $05   ; 
- D 1 - - - 0x01A886 06:A876: B5 90     .word _off009_90B5_12_walking_off_platform_enemy
; 13 
- D 1 - - - 0x01A888 06:A878: 08        .byte $08   ; 
- D 1 - - - 0x01A889 06:A879: 05        .byte $05   ; 
- D 1 - - - 0x01A88A 06:A87A: B9 90     .word _off009_90B9_13_jumping_fish
; 14 
- D 1 - - - 0x01A88C 06:A87C: 10        .byte $10   ; 
- D 1 - - - 0x01A88D 06:A87D: 02        .byte $02   ; 
- D 1 - - - 0x01A88E 06:A87E: BD 90     .word _off009_90BD_14_dog_head_180
; 15 
- D 1 - - - 0x01A890 06:A880: 10        .byte $10   ; 
- D 1 - - - 0x01A891 06:A881: 02        .byte $02   ; 
- D 1 - - - 0x01A892 06:A882: C3 90     .word _off009_90C3_15_dog_head_90
; 16 
- D 1 - - - 0x01A894 06:A884: 0E        .byte $0E   ; 
- D 1 - - - 0x01A895 06:A885: 0C        .byte $0C   ; 
- D 1 - - - 0x01A896 06:A886: CD 90     .word _off009_90CD_16_big_jumping_snowball
; 17 
- - - - - - 0x01A898 06:A888: 0E        .byte $0E   ; 
- - - - - - 0x01A899 06:A889: 0C        .byte $0C   ; 
- - - - - - 0x01A89A 06:A88A: CD 90     .word _off009_90CD_17
; 18 
- D 1 - - - 0x01A89C 06:A88C: 08        .byte $08   ; 
- D 1 - - - 0x01A89D 06:A88D: 05        .byte $05   ; 
- D 1 - - - 0x01A89E 06:A88E: D5 90     .word _off009_90D5_18_flying_bird
; 19 
- D 1 - - - 0x01A8A0 06:A890: 06        .byte $06   ; 
- D 1 - - - 0x01A8A1 06:A891: 05        .byte $05   ; 
- D 1 - - - 0x01A8A2 06:A892: DF 90     .word _off009_90DF_19_small_meteorite
; 1A 
- D 1 - - - 0x01A8A4 06:A894: 08        .byte $08   ; 
- D 1 - - - 0x01A8A5 06:A895: 09        .byte $09   ; 
- D 1 - - - 0x01A8A6 06:A896: E3 90     .word _off009_90E3_1A_big_meteorite
; 1B 
- - - - - - 0x01A8A8 06:A898: 08        .byte $08   ; 
- D 1 - - - 0x01A8A9 06:A899: 05        .byte $05   ; 
- D 1 - - - 0x01A8AA 06:A89A: 44 80     .word _off009_8044_1B_rescued_kitty
; 1C 
- D 1 - - - 0x01A8AC 06:A89C: 08        .byte $08   ; 
- D 1 - - - 0x01A8AD 06:A89D: 05        .byte $05   ; 
- D 1 - - - 0x01A8AE 06:A89E: D9 90     .word _off009_90D9_1C_big_green_fish
; 1D 
- D 1 - - - 0x01A8B0 06:A8A0: 08        .byte $08   ; 
- D 1 - - - 0x01A8B1 06:A8A1: 05        .byte $05   ; 
- D 1 - - - 0x01A8B2 06:A8A2: E7 90     .word _off009_90E7_1D_jellyfish
; 1E 
- D 1 - - - 0x01A8B4 06:A8A4: 0B        .byte $0B   ; 
- D 1 - - - 0x01A8B5 06:A8A5: 0E        .byte $0E   ; 
- D 1 - - - 0x01A8B6 06:A8A6: F1 90     .word _off009_90F1_1E_shooting_swimming_fish
; 1F 
- D 1 - - - 0x01A8B8 06:A8A8: 05        .byte $05   ; 
- D 1 - - - 0x01A8B9 06:A8A9: 04        .byte $04   ; 
- D 1 - - - 0x01A8BA 06:A8AA: F5 90     .word _off009_90F5_1F_bat
; 20 
- D 1 - - - 0x01A8BC 06:A8AC: 08        .byte $08   ; 
- D 1 - - - 0x01A8BD 06:A8AD: 09        .byte $09   ; 
- D 1 - - - 0x01A8BE 06:A8AE: EB 90     .word _off009_90EB_20_alien_spaceship
; 21 
- D 1 - - - 0x01A8C0 06:A8B0: 08        .byte $08   ; 
- D 1 - - - 0x01A8C1 06:A8B1: 05        .byte $05   ; 
- D 1 - - - 0x01A8C2 06:A8B2: A9 90     .word _off009_90A9_21_crab
; 22 
- D 1 - - - 0x01A8C4 06:A8B4: 0E        .byte $0E   ; 
- D 1 - - - 0x01A8C5 06:A8B5: 05        .byte $05   ; 
- D 1 - - - 0x01A8C6 06:A8B6: AD 90     .word _off009_90AD_22_tree_dinosaur
; 23 
- - - - - - 0x01A8C8 06:A8B8: 08        .byte $08   ; 
- - - - - - 0x01A8C9 06:A8B9: 05        .byte $05   ; 
- - - - - - 0x01A8CA 06:A8BA: A3 90     .word _off009_90A3_23
; 24 
- D 1 - - - 0x01A8CC 06:A8BC: 08        .byte $08   ; 
- D 1 - - - 0x01A8CD 06:A8BD: 05        .byte $05   ; 
- D 1 - - - 0x01A8CE 06:A8BE: E4        .word _off009_0x01DEF4_24_cloud_professor
; 25 
- D 1 - - - 0x01A8D0 06:A8C0: 04        .byte $04   ; 
- D 1 - - - 0x01A8D1 06:A8C1: 04        .byte $04   ; 
- D 1 - - - 0x01A8D2 06:A8C2: EA        .word _off009_0x01DEFA_25_cloud_kitty
; 26 
- D 1 - - - 0x01A8D4 06:A8C4: 08        .byte $08   ; 
- D 1 - - - 0x01A8D5 06:A8C5: 05        .byte $05   ; 
- D 1 - - - 0x01A8D6 06:A8C6: 2C A1     .word _off009_A12C_26_boss_bag
; 27 
- D 1 - - - 0x01A8D8 06:A8C8: 0C        .byte $0C   ; 
- D 1 - - - 0x01A8D9 06:A8C9: 0C        .byte $0C   ; 
- D 1 - - - 0x01A8DA 06:A8CA: 16 A1     .word _off009_A116_27_boss_enemy
; 28 
- D 1 - - - 0x01A8DC 06:A8CC: 08        .byte $08   ; 
- D 1 - - - 0x01A8DD 06:A8CD: 0D        .byte $0D   ; 
- D 1 - - - 0x01A8DE 06:A8CE: 81 90     .word _off009_9081_28_moving_platform_vertically
; 29 
- D 1 - - - 0x01A8E0 06:A8D0: 08        .byte $08   ; 
- D 1 - - - 0x01A8E1 06:A8D1: 0D        .byte $0D   ; 
- D 1 - - - 0x01A8E2 06:A8D2: 87 90     .word _off009_9087_29_moving_platform_horisontally
; 2A 
- D 1 - - - 0x01A8E4 06:A8D4: 0E        .byte $0E   ; 
- D 1 - - - 0x01A8E5 06:A8D5: 0C        .byte $0C   ; 
- D 1 - - - 0x01A8E6 06:A8D6: C9 90     .word _off009_90C9_2A_big_jumping_rock
; 2B 
- - - - - - 0x01A8E8 06:A8D8: 0E        .byte $0E   ; 
- - - - - - 0x01A8E9 06:A8D9: 0C        .byte $0C   ; 
- - - - - - 0x01A8EA 06:A8DA: C9 90     .word _off009_90C9_2B
; 2C 
- D 1 - - - 0x01A8EC 06:A8DC: 0C        .byte $0C   ; 
- D 1 - - - 0x01A8ED 06:A8DD: 09        .byte $09   ; 
- D 1 - - - 0x01A8EE 06:A8DE: DC        .word _off009_0x01DEEC_2C_cannon_315
; 2D 
- D 1 - - - 0x01A8F0 06:A8E0: 0C        .byte $0C   ; 
- D 1 - - - 0x01A8F1 06:A8E1: 09        .byte $09   ; 
- D 1 - - - 0x01A8F2 06:A8E2: DC        .word _off009_0x01DEEC_2D_cannon_45
; 2E 
- D 1 - - - 0x01A8F4 06:A8E4: 0C        .byte $0C   ; 
- D 1 - - - 0x01A8F5 06:A8E5: 09        .byte $09   ; 
- D 1 - - - 0x01A8F6 06:A8E6: DC        .word _off009_0x01DEEC_2E_cannon_90_180
; 2F 
- - - - - - 0x01A8F8 06:A8E8: 0C        .byte $0C   ; 
- - - - - - 0x01A8F9 06:A8E9: 09        .byte $09   ; 
- - - - - - 0x01A8FA 06:A8EA: DC        .word _off009_0x01DEEC_2F


; bzk garbage?
- - - - - - 0x01A8FC 06:A8EC: 80        .byte $80   ; 


; !!!
_off016_round_1_1_A8ED_000:
_off016_round_1_1_A8ED_018:
_off016_round_1_1_A8ED_034:
- D 1 - I - 0x01A8FD 06:A8ED: 81        .byte $81   ; 
- D 1 - I - 0x01A8FE 06:A8EE: 30        .byte $30   ; 
- D 1 - I - 0x01A8FF 06:A8EF: 82        .byte $82   ; 
- D 1 - I - 0x01A900 06:A8F0: 07        .byte $07   ; 
- D 1 - I - 0x01A901 06:A8F1: 4C        .byte $4C   ; 
- D 1 - I - 0x01A902 06:A8F2: 83        .byte $83   ; 



_off016_round_1_1_A8F3_002:
- D 1 - I - 0x01A903 06:A8F3: 84        .byte $84   ; 
- D 1 - I - 0x01A904 06:A8F4: 30        .byte $30   ; 
- D 1 - I - 0x01A905 06:A8F5: 85        .byte $85   ; 
- D 1 - I - 0x01A906 06:A8F6: 07        .byte $07   ; 
- D 1 - I - 0x01A907 06:A8F7: 4D        .byte $4D   ; 
- D 1 - I - 0x01A908 06:A8F8: 86        .byte $86   ; 



_off016_round_1_1_A8F9_004:
- D 1 - I - 0x01A909 06:A8F9: 84        .byte $84   ; 
- D 1 - I - 0x01A90A 06:A8FA: 31        .byte $31   ; 
- D 1 - I - 0x01A90B 06:A8FB: 38        .byte $38   ; 
- D 1 - I - 0x01A90C 06:A8FC: 82        .byte $82   ; 
- D 1 - I - 0x01A90D 06:A8FD: 07        .byte $07   ; 
- D 1 - I - 0x01A90E 06:A8FE: 4C        .byte $4C   ; 
- D 1 - I - 0x01A90F 06:A8FF: 83        .byte $83   ; 



_off016_round_1_1_A900_006:
- D 1 - I - 0x01A910 06:A900: 87        .byte $87   ; 
- D 1 - I - 0x01A911 06:A901: 60        .byte $60   ; 
- D 1 - I - 0x01A912 06:A902: 68        .byte $68   ; 
- D 1 - I - 0x01A913 06:A903: 88        .byte $88   ; 
- D 1 - I - 0x01A914 06:A904: 31        .byte $31   ; 
- D 1 - I - 0x01A915 06:A905: 03        .byte $03   ; 
- D 1 - I - 0x01A916 06:A906: 17        .byte $17   ; 
- D 1 - I - 0x01A917 06:A907: 07        .byte $07   ; 
- D 1 - I - 0x01A918 06:A908: 4D        .byte $4D   ; 
- D 1 - I - 0x01A919 06:A909: 86        .byte $86   ; 



_off016_round_1_1_A90A_008:
- D 1 - I - 0x01A91A 06:A90A: 87        .byte $87   ; 
- D 1 - I - 0x01A91B 06:A90B: 61        .byte $61   ; 
- D 1 - I - 0x01A91C 06:A90C: 89        .byte $89   ; 
- D 1 - I - 0x01A91D 06:A90D: 30        .byte $30   ; 
- D 1 - I - 0x01A91E 06:A90E: 82        .byte $82   ; 
- D 1 - I - 0x01A91F 06:A90F: 07        .byte $07   ; 
- D 1 - I - 0x01A920 06:A910: 4C        .byte $4C   ; 
- D 1 - I - 0x01A921 06:A911: 83        .byte $83   ; 



_off016_round_1_1_A912_00A:
- D 1 - I - 0x01A922 06:A912: 81        .byte $81   ; 
- D 1 - I - 0x01A923 06:A913: 31        .byte $31   ; 
- D 1 - I - 0x01A924 06:A914: 38        .byte $38   ; 
- D 1 - I - 0x01A925 06:A915: 3F        .byte $3F   ; 
- D 1 - I - 0x01A926 06:A916: 07        .byte $07   ; 
- D 1 - I - 0x01A927 06:A917: 4D        .byte $4D   ; 
- D 1 - I - 0x01A928 06:A918: 86        .byte $86   ; 



_off016_round_1_1_A919_00C:
_off016_round_1_1_A919_01C:
- D 1 - I - 0x01A929 06:A919: 8A        .byte $8A   ; 
- D 1 - I - 0x01A92A 06:A91A: 31        .byte $31   ; 
- D 1 - I - 0x01A92B 06:A91B: 03        .byte $03   ; 
- D 1 - I - 0x01A92C 06:A91C: 07        .byte $07   ; 
- D 1 - I - 0x01A92D 06:A91D: 4C        .byte $4C   ; 
- D 1 - I - 0x01A92E 06:A91E: 83        .byte $83   ; 



_off016_round_1_1_A91F_00E:
_off016_round_1_1_A91F_0C6:
_off016_round_1_3_A91F_0BA:
- D 1 - I - 0x01A92F 06:A91F: 8A        .byte $8A   ; 
- D 1 - I - 0x01A930 06:A920: 30        .byte $30   ; 
- D 1 - I - 0x01A931 06:A921: 03        .byte $03   ; 
- D 1 - I - 0x01A932 06:A922: 07        .byte $07   ; 
- D 1 - I - 0x01A933 06:A923: 4D        .byte $4D   ; 
- D 1 - I - 0x01A934 06:A924: 86        .byte $86   ; 



_off016_round_1_1_A925_010:
- D 1 - I - 0x01A935 06:A925: 8B        .byte $8B   ; 
- D 1 - I - 0x01A936 06:A926: 08        .byte $08   ; 
- D 1 - I - 0x01A937 06:A927: 89        .byte $89   ; 
- D 1 - I - 0x01A938 06:A928: 22        .byte $22   ; 
- D 1 - I - 0x01A939 06:A929: 0D        .byte $0D   ; 
- D 1 - I - 0x01A93A 06:A92A: 30        .byte $30   ; 
- D 1 - I - 0x01A93B 06:A92B: 82        .byte $82   ; 
- D 1 - I - 0x01A93C 06:A92C: 07        .byte $07   ; 
- D 1 - I - 0x01A93D 06:A92D: 4C        .byte $4C   ; 
- D 1 - I - 0x01A93E 06:A92E: 83        .byte $83   ; 



_off016_round_1_1_A92F_012:
- D 1 - I - 0x01A93F 06:A92F: 8B        .byte $8B   ; 
- D 1 - I - 0x01A940 06:A930: 09        .byte $09   ; 
- D 1 - I - 0x01A941 06:A931: 89        .byte $89   ; 
- D 1 - I - 0x01A942 06:A932: 23        .byte $23   ; 
- D 1 - I - 0x01A943 06:A933: 28        .byte $28   ; 
- D 1 - I - 0x01A944 06:A934: 31        .byte $31   ; 
- D 1 - I - 0x01A945 06:A935: 38        .byte $38   ; 
- D 1 - I - 0x01A946 06:A936: 17        .byte $17   ; 
- D 1 - I - 0x01A947 06:A937: 07        .byte $07   ; 
- D 1 - I - 0x01A948 06:A938: 4D        .byte $4D   ; 
- D 1 - I - 0x01A949 06:A939: 86        .byte $86   ; 



_off016_round_1_1_A93A_014:
- D 1 - I - 0x01A94A 06:A93A: 8B        .byte $8B   ; 
- D 1 - I - 0x01A94B 06:A93B: 0A        .byte $0A   ; 
- D 1 - I - 0x01A94C 06:A93C: 8C        .byte $8C   ; 
- D 1 - I - 0x01A94D 06:A93D: 28        .byte $28   ; 
- D 1 - I - 0x01A94E 06:A93E: 00        .byte $00   ; 
- D 1 - I - 0x01A94F 06:A93F: 31        .byte $31   ; 
- D 1 - I - 0x01A950 06:A940: 03        .byte $03   ; 
- D 1 - I - 0x01A951 06:A941: 07        .byte $07   ; 
- D 1 - I - 0x01A952 06:A942: 4C        .byte $4C   ; 
- D 1 - I - 0x01A953 06:A943: 83        .byte $83   ; 



_off016_round_1_1_A944_016:
- D 1 - I - 0x01A954 06:A944: 84        .byte $84   ; 
- D 1 - I - 0x01A955 06:A945: 0E        .byte $0E   ; 
- D 1 - I - 0x01A956 06:A946: 00        .byte $00   ; 
- D 1 - I - 0x01A957 06:A947: 30        .byte $30   ; 
- D 1 - I - 0x01A958 06:A948: 03        .byte $03   ; 
- D 1 - I - 0x01A959 06:A949: 07        .byte $07   ; 
- D 1 - I - 0x01A95A 06:A94A: 4D        .byte $4D   ; 
- D 1 - I - 0x01A95B 06:A94B: 86        .byte $86   ; 



_off016_round_1_1_A94C_01A:
- D 1 - I - 0x01A95C 06:A94C: 81        .byte $81   ; 
- D 1 - I - 0x01A95D 06:A94D: 31        .byte $31   ; 
- D 1 - I - 0x01A95E 06:A94E: 38        .byte $38   ; 
- D 1 - I - 0x01A95F 06:A94F: 03        .byte $03   ; 
- D 1 - I - 0x01A960 06:A950: 07        .byte $07   ; 
- D 1 - I - 0x01A961 06:A951: 4D        .byte $4D   ; 
- D 1 - I - 0x01A962 06:A952: 86        .byte $86   ; 



_off016_round_1_1_A953_01E:
- D 1 - I - 0x01A963 06:A953: 8A        .byte $8A   ; 
- D 1 - I - 0x01A964 06:A954: 30        .byte $30   ; 
- D 1 - I - 0x01A965 06:A955: 03        .byte $03   ; 
- D 1 - I - 0x01A966 06:A956: 20        .byte $20   ; 
- D 1 - I - 0x01A967 06:A957: 7D        .byte $7D   ; 
- D 1 - I - 0x01A968 06:A958: 86        .byte $86   ; 



_off016_round_1_1_A959_020:
- D 1 - I - 0x01A969 06:A959: 87        .byte $87   ; 
- D 1 - I - 0x01A96A 06:A95A: 54        .byte $54   ; 
- D 1 - I - 0x01A96B 06:A95B: 89        .byte $89   ; 
- D 1 - I - 0x01A96C 06:A95C: 30        .byte $30   ; 
- D 1 - I - 0x01A96D 06:A95D: 85        .byte $85   ; 
- D 1 - I - 0x01A96E 06:A95E: 07        .byte $07   ; 
- D 1 - I - 0x01A96F 06:A95F: 4C        .byte $4C   ; 
- D 1 - I - 0x01A970 06:A960: 78        .byte $78   ; 



_off016_round_1_1_A961_022:
- D 1 - I - 0x01A971 06:A961: 87        .byte $87   ; 
- D 1 - I - 0x01A972 06:A962: 55        .byte $55   ; 
- D 1 - I - 0x01A973 06:A963: 89        .byte $89   ; 
- D 1 - I - 0x01A974 06:A964: 31        .byte $31   ; 
- D 1 - I - 0x01A975 06:A965: 82        .byte $82   ; 
- D 1 - I - 0x01A976 06:A966: 17        .byte $17   ; 
- D 1 - I - 0x01A977 06:A967: 07        .byte $07   ; 
- D 1 - I - 0x01A978 06:A968: 4D        .byte $4D   ; 
- D 1 - I - 0x01A979 06:A969: 79        .byte $79   ; 



_off016_round_1_1_A96A_024:
- D 1 - I - 0x01A97A 06:A96A: 87        .byte $87   ; 
- D 1 - I - 0x01A97B 06:A96B: 4E        .byte $4E   ; 
- D 1 - I - 0x01A97C 06:A96C: 8C        .byte $8C   ; 
- D 1 - I - 0x01A97D 06:A96D: 31        .byte $31   ; 
- D 1 - I - 0x01A97E 06:A96E: 03        .byte $03   ; 
- D 1 - I - 0x01A97F 06:A96F: 3F        .byte $3F   ; 
- D 1 - I - 0x01A980 06:A970: 07        .byte $07   ; 
- D 1 - I - 0x01A981 06:A971: 4C        .byte $4C   ; 
- D 1 - I - 0x01A982 06:A972: 78        .byte $78   ; 



_off016_round_1_1_A973_026:
- D 1 - I - 0x01A983 06:A973: 87        .byte $87   ; 
- D 1 - I - 0x01A984 06:A974: 4F        .byte $4F   ; 
- D 1 - I - 0x01A985 06:A975: 8C        .byte $8C   ; 
- D 1 - I - 0x01A986 06:A976: 30        .byte $30   ; 
- D 1 - I - 0x01A987 06:A977: 82        .byte $82   ; 
- D 1 - I - 0x01A988 06:A978: 07        .byte $07   ; 
- D 1 - I - 0x01A989 06:A979: 4D        .byte $4D   ; 
- D 1 - I - 0x01A98A 06:A97A: 79        .byte $79   ; 



_off016_round_1_1_A97B_028:
- D 1 - I - 0x01A98B 06:A97B: 8A        .byte $8A   ; 
- D 1 - I - 0x01A98C 06:A97C: 31        .byte $31   ; 
- D 1 - I - 0x01A98D 06:A97D: 82        .byte $82   ; 
- D 1 - I - 0x01A98E 06:A97E: 07        .byte $07   ; 
- D 1 - I - 0x01A98F 06:A97F: 4C        .byte $4C   ; 
- D 1 - I - 0x01A990 06:A980: 78        .byte $78   ; 



_off016_round_1_1_A981_02A:
- D 1 - I - 0x01A991 06:A981: 8A        .byte $8A   ; 
- D 1 - I - 0x01A992 06:A982: 30        .byte $30   ; 
- D 1 - I - 0x01A993 06:A983: 82        .byte $82   ; 
- D 1 - I - 0x01A994 06:A984: 07        .byte $07   ; 
- D 1 - I - 0x01A995 06:A985: 4D        .byte $4D   ; 
- D 1 - I - 0x01A996 06:A986: 79        .byte $79   ; 



_off016_round_1_1_A987_02C:
- D 1 - I - 0x01A997 06:A987: 81        .byte $81   ; 
- D 1 - I - 0x01A998 06:A988: 30        .byte $30   ; 
- D 1 - I - 0x01A999 06:A989: 82        .byte $82   ; 
- D 1 - I - 0x01A99A 06:A98A: 21        .byte $21   ; 
- D 1 - I - 0x01A99B 06:A98B: 7C        .byte $7C   ; 
- D 1 - I - 0x01A99C 06:A98C: 83        .byte $83   ; 



_off016_round_1_1_A98D_02E:
- D 1 - I - 0x01A99D 06:A98D: 84        .byte $84   ; 
- D 1 - I - 0x01A99E 06:A98E: 30        .byte $30   ; 
- D 1 - I - 0x01A99F 06:A98F: 82        .byte $82   ; 
- D 1 - I - 0x01A9A0 06:A990: 3F        .byte $3F   ; 
- D 1 - I - 0x01A9A1 06:A991: 07        .byte $07   ; 
- D 1 - I - 0x01A9A2 06:A992: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9A3 06:A993: 86        .byte $86   ; 



_off016_round_1_1_A994_030:
- D 1 - I - 0x01A9A4 06:A994: 84        .byte $84   ; 
- D 1 - I - 0x01A9A5 06:A995: 31        .byte $31   ; 
- D 1 - I - 0x01A9A6 06:A996: 38        .byte $38   ; 
- D 1 - I - 0x01A9A7 06:A997: 03        .byte $03   ; 
- D 1 - I - 0x01A9A8 06:A998: 17        .byte $17   ; 
- D 1 - I - 0x01A9A9 06:A999: 07        .byte $07   ; 
- D 1 - I - 0x01A9AA 06:A99A: 4C        .byte $4C   ; 
- D 1 - I - 0x01A9AB 06:A99B: 83        .byte $83   ; 



_off016_round_1_1_A99C_032:
- D 1 - I - 0x01A9AC 06:A99C: 81        .byte $81   ; 
- D 1 - I - 0x01A9AD 06:A99D: 31        .byte $31   ; 
- D 1 - I - 0x01A9AE 06:A99E: 82        .byte $82   ; 
- D 1 - I - 0x01A9AF 06:A99F: 07        .byte $07   ; 
- D 1 - I - 0x01A9B0 06:A9A0: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9B1 06:A9A1: 86        .byte $86   ; 



_off016_round_1_1_A9A2_036:
- D 1 - I - 0x01A9B2 06:A9A2: 81        .byte $81   ; 
- D 1 - I - 0x01A9B3 06:A9A3: 31        .byte $31   ; 
- D 1 - I - 0x01A9B4 06:A9A4: 82        .byte $82   ; 
- D 1 - I - 0x01A9B5 06:A9A5: 12        .byte $12   ; 
- D 1 - I - 0x01A9B6 06:A9A6: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9B7 06:A9A7: 86        .byte $86   ; 



_off016_round_1_1_A9A8_038:
- D 1 - I - 0x01A9B8 06:A9A8: 81        .byte $81   ; 
- D 1 - I - 0x01A9B9 06:A9A9: 30        .byte $30   ; 
- D 1 - I - 0x01A9BA 06:A9AA: 21        .byte $21   ; 
- D 1 - I - 0x01A9BB 06:A9AB: 8D        .byte $8D   ; 
- D 1 - I - 0x01A9BC 06:A9AC: 8E        .byte $8E   ; 



_off016_round_1_1_A9AD_03A:
- D 1 - I - 0x01A9BD 06:A9AD: 8F        .byte $8F   ; 
- D 1 - I - 0x01A9BE 06:A9AE: 08        .byte $08   ; 
- D 1 - I - 0x01A9BF 06:A9AF: 90        .byte $90   ; 
- D 1 - I - 0x01A9C0 06:A9B0: 30        .byte $30   ; 
- D 1 - I - 0x01A9C1 06:A9B1: 03        .byte $03   ; 
- D 1 - I - 0x01A9C2 06:A9B2: 07        .byte $07   ; 
- D 1 - I - 0x01A9C3 06:A9B3: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9C4 06:A9B4: 91        .byte $91   ; 



_off016_round_1_1_A9B5_03C:
- D 1 - I - 0x01A9C5 06:A9B5: 8F        .byte $8F   ; 
- D 1 - I - 0x01A9C6 06:A9B6: 09        .byte $09   ; 
- D 1 - I - 0x01A9C7 06:A9B7: 90        .byte $90   ; 
- D 1 - I - 0x01A9C8 06:A9B8: 31        .byte $31   ; 
- D 1 - I - 0x01A9C9 06:A9B9: 38        .byte $38   ; 
- D 1 - I - 0x01A9CA 06:A9BA: 07        .byte $07   ; 
- D 1 - I - 0x01A9CB 06:A9BB: 4C        .byte $4C   ; 
- D 1 - I - 0x01A9CC 06:A9BC: 92        .byte $92   ; 



_off016_round_1_1_A9BD_03E:
- D 1 - I - 0x01A9CD 06:A9BD: 8F        .byte $8F   ; 
- D 1 - I - 0x01A9CE 06:A9BE: 0A        .byte $0A   ; 
- D 1 - I - 0x01A9CF 06:A9BF: 93        .byte $93   ; 
- D 1 - I - 0x01A9D0 06:A9C0: 31        .byte $31   ; 
- D 1 - I - 0x01A9D1 06:A9C1: 07        .byte $07   ; 
- D 1 - I - 0x01A9D2 06:A9C2: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9D3 06:A9C3: 91        .byte $91   ; 



_off016_round_1_1_A9C4_040:
- D 1 - I - 0x01A9D4 06:A9C4: 81        .byte $81   ; 
- D 1 - I - 0x01A9D5 06:A9C5: 30        .byte $30   ; 
- D 1 - I - 0x01A9D6 06:A9C6: 07        .byte $07   ; 
- D 1 - I - 0x01A9D7 06:A9C7: 4C        .byte $4C   ; 
- D 1 - I - 0x01A9D8 06:A9C8: 92        .byte $92   ; 



_off016_round_1_1_A9C9_042:
- D 1 - I - 0x01A9D9 06:A9C9: 81        .byte $81   ; 
- D 1 - I - 0x01A9DA 06:A9CA: 31        .byte $31   ; 
- D 1 - I - 0x01A9DB 06:A9CB: 07        .byte $07   ; 
- D 1 - I - 0x01A9DC 06:A9CC: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9DD 06:A9CD: 91        .byte $91   ; 



_off016_round_1_1_A9CE_044:
_off016_round_1_2_A9CE_1E8:
- D 1 - I - 0x01A9DE 06:A9CE: 8A        .byte $8A   ; 
- D 1 - I - 0x01A9DF 06:A9CF: 07        .byte $07   ; 
- D 1 - I - 0x01A9E0 06:A9D0: 4C        .byte $4C   ; 
- D 1 - I - 0x01A9E1 06:A9D1: 92        .byte $92   ; 



_off016_round_1_1_A9D2_046:
- D 1 - I - 0x01A9E2 06:A9D2: 87        .byte $87   ; 
- D 1 - I - 0x01A9E3 06:A9D3: 0D        .byte $0D   ; 
- D 1 - I - 0x01A9E4 06:A9D4: 8C        .byte $8C   ; 
- D 1 - I - 0x01A9E5 06:A9D5: 12        .byte $12   ; 
- D 1 - I - 0x01A9E6 06:A9D6: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9E7 06:A9D7: 91        .byte $91   ; 



_off016_round_1_1_A9D8_048:
- D 1 - I - 0x01A9E8 06:A9D8: 87        .byte $87   ; 
- D 1 - I - 0x01A9E9 06:A9D9: 0E        .byte $0E   ; 
- D 1 - I - 0x01A9EA 06:A9DA: 89        .byte $89   ; 
- D 1 - I - 0x01A9EB 06:A9DB: 2F        .byte $2F   ; 
- D 1 - I - 0x01A9EC 06:A9DC: 7C        .byte $7C   ; 
- D 1 - I - 0x01A9ED 06:A9DD: 94        .byte $94   ; 



_off016_round_1_1_A9DE_04A:
_off016_round_1_1_A9DE_1D2:
_off016_round_1_1_A9DE_1D6:
_off016_round_1_2_A9DE_10E:
- D 1 - I - 0x01A9EE 06:A9DE: 81        .byte $81   ; 
- D 1 - I - 0x01A9EF 06:A9DF: 07        .byte $07   ; 
- D 1 - I - 0x01A9F0 06:A9E0: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9F1 06:A9E1: 95        .byte $95   ; 



_off016_round_1_1_A9E2_04C:
- D 1 - I - 0x01A9F2 06:A9E2: 96        .byte $96   ; 
- D 1 - I - 0x01A9F3 06:A9E3: 08        .byte $08   ; 
- D 1 - I - 0x01A9F4 06:A9E4: 89        .byte $89   ; 
- D 1 - I - 0x01A9F5 06:A9E5: 30        .byte $30   ; 
- D 1 - I - 0x01A9F6 06:A9E6: 07        .byte $07   ; 
- D 1 - I - 0x01A9F7 06:A9E7: 4C        .byte $4C   ; 
- D 1 - I - 0x01A9F8 06:A9E8: 94        .byte $94   ; 



_off016_round_1_1_A9E9_04E:
- D 1 - I - 0x01A9F9 06:A9E9: 96        .byte $96   ; 
- D 1 - I - 0x01A9FA 06:A9EA: 09        .byte $09   ; 
- D 1 - I - 0x01A9FB 06:A9EB: 89        .byte $89   ; 
- D 1 - I - 0x01A9FC 06:A9EC: 31        .byte $31   ; 
- D 1 - I - 0x01A9FD 06:A9ED: 07        .byte $07   ; 
- D 1 - I - 0x01A9FE 06:A9EE: 4D        .byte $4D   ; 
- D 1 - I - 0x01A9FF 06:A9EF: 95        .byte $95   ; 



_off016_round_1_1_A9F0_050:
- D 1 - I - 0x01AA00 06:A9F0: 96        .byte $96   ; 
- D 1 - I - 0x01AA01 06:A9F1: 0A        .byte $0A   ; 
- D 1 - I - 0x01AA02 06:A9F2: 8C        .byte $8C   ; 
- D 1 - I - 0x01AA03 06:A9F3: 07        .byte $07   ; 
- D 1 - I - 0x01AA04 06:A9F4: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA05 06:A9F5: 94        .byte $94   ; 



_off016_round_1_1_A9F6_052:
_off016_round_1_1_A9F6_10E:
- D 1 - I - 0x01AA06 06:A9F6: 84        .byte $84   ; 
- D 1 - I - 0x01AA07 06:A9F7: 30        .byte $30   ; 
- D 1 - I - 0x01AA08 06:A9F8: 20        .byte $20   ; 
- D 1 - I - 0x01AA09 06:A9F9: 97        .byte $97   ; 
- D 1 - I - 0x01AA0A 06:A9FA: 91        .byte $91   ; 



_off016_round_1_1_A9FB_054:
- D 1 - I - 0x01AA0B 06:A9FB: 98        .byte $98   ; 
- D 1 - I - 0x01AA0C 06:A9FC: 54        .byte $54   ; 
- D 1 - I - 0x01AA0D 06:A9FD: 90        .byte $90   ; 
- D 1 - I - 0x01AA0E 06:A9FE: 30        .byte $30   ; 
- D 1 - I - 0x01AA0F 06:A9FF: 85        .byte $85   ; 
- D 1 - I - 0x01AA10 06:AA00: 13        .byte $13   ; 
- D 1 - I - 0x01AA11 06:AA01: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA12 06:AA02: 8E        .byte $8E   ; 



_off016_round_1_1_AA03_056:
- D 1 - I - 0x01AA13 06:AA03: 98        .byte $98   ; 
- D 1 - I - 0x01AA14 06:AA04: 55        .byte $55   ; 
- D 1 - I - 0x01AA15 06:AA05: 90        .byte $90   ; 
- D 1 - I - 0x01AA16 06:AA06: 31        .byte $31   ; 
- D 1 - I - 0x01AA17 06:AA07: 38        .byte $38   ; 
- D 1 - I - 0x01AA18 06:AA08: 03        .byte $03   ; 
- D 1 - I - 0x01AA19 06:AA09: 17        .byte $17   ; 
- D 1 - I - 0x01AA1A 06:AA0A: 07        .byte $07   ; 
- D 1 - I - 0x01AA1B 06:AA0B: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA1C 06:AA0C: 99        .byte $99   ; 



_off016_round_1_1_AA0D_058:
- D 1 - I - 0x01AA1D 06:AA0D: 98        .byte $98   ; 
- D 1 - I - 0x01AA1E 06:AA0E: 4E        .byte $4E   ; 
- D 1 - I - 0x01AA1F 06:AA0F: 93        .byte $93   ; 
- D 1 - I - 0x01AA20 06:AA10: 31        .byte $31   ; 
- D 1 - I - 0x01AA21 06:AA11: 03        .byte $03   ; 
- D 1 - I - 0x01AA22 06:AA12: 3F        .byte $3F   ; 
- D 1 - I - 0x01AA23 06:AA13: 07        .byte $07   ; 
- D 1 - I - 0x01AA24 06:AA14: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA25 06:AA15: 8E        .byte $8E   ; 



_off016_round_1_1_AA16_05A:
- D 1 - I - 0x01AA26 06:AA16: 98        .byte $98   ; 
- D 1 - I - 0x01AA27 06:AA17: 4F        .byte $4F   ; 
- D 1 - I - 0x01AA28 06:AA18: 93        .byte $93   ; 
- D 1 - I - 0x01AA29 06:AA19: 30        .byte $30   ; 
- D 1 - I - 0x01AA2A 06:AA1A: 03        .byte $03   ; 
- D 1 - I - 0x01AA2B 06:AA1B: 17        .byte $17   ; 
- D 1 - I - 0x01AA2C 06:AA1C: 07        .byte $07   ; 
- D 1 - I - 0x01AA2D 06:AA1D: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA2E 06:AA1E: 99        .byte $99   ; 



_off016_round_1_1_AA1F_05C:
- D 1 - I - 0x01AA2F 06:AA1F: 84        .byte $84   ; 
- D 1 - I - 0x01AA30 06:AA20: 31        .byte $31   ; 
- D 1 - I - 0x01AA31 06:AA21: 38        .byte $38   ; 
- D 1 - I - 0x01AA32 06:AA22: 03        .byte $03   ; 
- D 1 - I - 0x01AA33 06:AA23: 07        .byte $07   ; 
- D 1 - I - 0x01AA34 06:AA24: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA35 06:AA25: 8E        .byte $8E   ; 



_off016_round_1_1_AA26_05E:
- D 1 - I - 0x01AA36 06:AA26: 81        .byte $81   ; 
- D 1 - I - 0x01AA37 06:AA27: 31        .byte $31   ; 
- D 1 - I - 0x01AA38 06:AA28: 03        .byte $03   ; 
- D 1 - I - 0x01AA39 06:AA29: 12        .byte $12   ; 
- D 1 - I - 0x01AA3A 06:AA2A: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA3B 06:AA2B: 99        .byte $99   ; 



_off016_round_1_1_AA2C_060:
- D 1 - I - 0x01AA3C 06:AA2C: 84        .byte $84   ; 
- D 1 - I - 0x01AA3D 06:AA2D: 2F        .byte $2F   ; 
- D 1 - I - 0x01AA3E 06:AA2E: 9A        .byte $9A   ; 
- D 1 - I - 0x01AA3F 06:AA2F: 92        .byte $92   ; 



_off016_round_1_1_AA30_062:
_off016_round_1_1_AA30_072:
- D 1 - I - 0x01AA40 06:AA30: 84        .byte $84   ; 
- D 1 - I - 0x01AA41 06:AA31: 07        .byte $07   ; 
- D 1 - I - 0x01AA42 06:AA32: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA43 06:AA33: 9B        .byte $9B   ; 



_off016_round_1_1_AA34_064:
- D 1 - I - 0x01AA44 06:AA34: 8B        .byte $8B   ; 
- D 1 - I - 0x01AA45 06:AA35: 08        .byte $08   ; 
- D 1 - I - 0x01AA46 06:AA36: 8C        .byte $8C   ; 
- D 1 - I - 0x01AA47 06:AA37: 07        .byte $07   ; 
- D 1 - I - 0x01AA48 06:AA38: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA49 06:AA39: 9C        .byte $9C   ; 



_off016_round_1_1_AA3A_066:
- D 1 - I - 0x01AA4A 06:AA3A: 8B        .byte $8B   ; 
- D 1 - I - 0x01AA4B 06:AA3B: 09        .byte $09   ; 
- D 1 - I - 0x01AA4C 06:AA3C: 89        .byte $89   ; 
- D 1 - I - 0x01AA4D 06:AA3D: 30        .byte $30   ; 
- D 1 - I - 0x01AA4E 06:AA3E: 07        .byte $07   ; 
- D 1 - I - 0x01AA4F 06:AA3F: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA50 06:AA40: 9B        .byte $9B   ; 



_off016_round_1_1_AA41_068:
- D 1 - I - 0x01AA51 06:AA41: 8B        .byte $8B   ; 
- D 1 - I - 0x01AA52 06:AA42: 0A        .byte $0A   ; 
- D 1 - I - 0x01AA53 06:AA43: 00        .byte $00   ; 
- D 1 - I - 0x01AA54 06:AA44: 71        .byte $71   ; 
- D 1 - I - 0x01AA55 06:AA45: 30        .byte $30   ; 
- D 1 - I - 0x01AA56 06:AA46: 3A        .byte $3A   ; 
- D 1 - I - 0x01AA57 06:AA47: 07        .byte $07   ; 
- D 1 - I - 0x01AA58 06:AA48: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA59 06:AA49: 9C        .byte $9C   ; 



_off016_round_1_1_AA4A_06A:
- D 1 - I - 0x01AA5A 06:AA4A: 87        .byte $87   ; 
- D 1 - I - 0x01AA5B 06:AA4B: 40        .byte $40   ; 
- D 1 - I - 0x01AA5C 06:AA4C: 48        .byte $48   ; 
- D 1 - I - 0x01AA5D 06:AA4D: 3B        .byte $3B   ; 
- D 1 - I - 0x01AA5E 06:AA4E: 07        .byte $07   ; 
- D 1 - I - 0x01AA5F 06:AA4F: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA60 06:AA50: 9B        .byte $9B   ; 



_off016_round_1_1_AA51_06C:
- D 1 - I - 0x01AA61 06:AA51: 87        .byte $87   ; 
- D 1 - I - 0x01AA62 06:AA52: 11        .byte $11   ; 
- D 1 - I - 0x01AA63 06:AA53: 43        .byte $43   ; 
- D 1 - I - 0x01AA64 06:AA54: 3C        .byte $3C   ; 
- D 1 - I - 0x01AA65 06:AA55: 07        .byte $07   ; 
- D 1 - I - 0x01AA66 06:AA56: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA67 06:AA57: 9C        .byte $9C   ; 



_off016_round_1_1_AA58_06E:
- D 1 - I - 0x01AA68 06:AA58: 87        .byte $87   ; 
- D 1 - I - 0x01AA69 06:AA59: 0B        .byte $0B   ; 
- D 1 - I - 0x01AA6A 06:AA5A: 31        .byte $31   ; 
- D 1 - I - 0x01AA6B 06:AA5B: 39        .byte $39   ; 
- D 1 - I - 0x01AA6C 06:AA5C: 07        .byte $07   ; 
- D 1 - I - 0x01AA6D 06:AA5D: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA6E 06:AA5E: 9B        .byte $9B   ; 



_off016_round_1_1_AA5F_070:
- D 1 - I - 0x01AA6F 06:AA5F: 9D        .byte $9D   ; 
- D 1 - I - 0x01AA70 06:AA60: 31        .byte $31   ; 
- D 1 - I - 0x01AA71 06:AA61: 07        .byte $07   ; 
- D 1 - I - 0x01AA72 06:AA62: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA73 06:AA63: 9C        .byte $9C   ; 



_off016_round_1_1_AA64_074:
- D 1 - I - 0x01AA74 06:AA64: 84        .byte $84   ; 
- D 1 - I - 0x01AA75 06:AA65: 07        .byte $07   ; 
- D 1 - I - 0x01AA76 06:AA66: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA77 06:AA67: 9C        .byte $9C   ; 



_off016_round_1_1_AA68_076:
- D 1 - I - 0x01AA78 06:AA68: 84        .byte $84   ; 
- D 1 - I - 0x01AA79 06:AA69: 07        .byte $07   ; 
- D 1 - I - 0x01AA7A 06:AA6A: 2D        .byte $2D   ; 
- D 1 - I - 0x01AA7B 06:AA6B: 9B        .byte $9B   ; 



_off016_round_1_1_AA6C_078:
- D 1 - I - 0x01AA7C 06:AA6C: 8F        .byte $8F   ; 
- D 1 - I - 0x01AA7D 06:AA6D: 60        .byte $60   ; 
- D 1 - I - 0x01AA7E 06:AA6E: 68        .byte $68   ; 
- D 1 - I - 0x01AA7F 06:AA6F: 8C        .byte $8C   ; 
- D 1 - I - 0x01AA80 06:AA70: 27        .byte $27   ; 
- D 1 - I - 0x01AA81 06:AA71: 26        .byte $26   ; 
- D 1 - I - 0x01AA82 06:AA72: 2D        .byte $2D   ; 
- D 1 - I - 0x01AA83 06:AA73: 94        .byte $94   ; 



_off016_round_1_1_AA74_07A:
- D 1 - I - 0x01AA84 06:AA74: 8F        .byte $8F   ; 
- D 1 - I - 0x01AA85 06:AA75: 61        .byte $61   ; 
- D 1 - I - 0x01AA86 06:AA76: 93        .byte $93   ; 
- D 1 - I - 0x01AA87 06:AA77: 27        .byte $27   ; 
- D 1 - I - 0x01AA88 06:AA78: 26        .byte $26   ; 
- D 1 - I - 0x01AA89 06:AA79: 2D        .byte $2D   ; 
- D 1 - I - 0x01AA8A 06:AA7A: 91        .byte $91   ; 



_off016_round_1_1_AA7B_07C:
- D 1 - I - 0x01AA8B 06:AA7B: 8A        .byte $8A   ; 
- D 1 - I - 0x01AA8C 06:AA7C: 27        .byte $27   ; 
- D 1 - I - 0x01AA8D 06:AA7D: 26        .byte $26   ; 
- D 1 - I - 0x01AA8E 06:AA7E: 92        .byte $92   ; 



_off016_round_1_1_AA7F_07E:
_off016_round_1_1_AA7F_0B2:
- D 1 - I - 0x01AA8F 06:AA7F: 8A        .byte $8A   ; 
- D 1 - I - 0x01AA90 06:AA80: 30        .byte $30   ; 
- D 1 - I - 0x01AA91 06:AA81: 07        .byte $07   ; 
- D 1 - I - 0x01AA92 06:AA82: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA93 06:AA83: 99        .byte $99   ; 



_off016_round_1_1_AA84_080:
_off016_round_1_1_AA84_0B4:
- D 1 - I - 0x01AA94 06:AA84: 81        .byte $81   ; 
- D 1 - I - 0x01AA95 06:AA85: 30        .byte $30   ; 
- D 1 - I - 0x01AA96 06:AA86: 03        .byte $03   ; 
- D 1 - I - 0x01AA97 06:AA87: 07        .byte $07   ; 
- D 1 - I - 0x01AA98 06:AA88: 4C        .byte $4C   ; 
- D 1 - I - 0x01AA99 06:AA89: 8E        .byte $8E   ; 



_off016_round_1_1_AA8A_082:
- D 1 - I - 0x01AA9A 06:AA8A: 81        .byte $81   ; 
- D 1 - I - 0x01AA9B 06:AA8B: 31        .byte $31   ; 
- D 1 - I - 0x01AA9C 06:AA8C: 38        .byte $38   ; 
- D 1 - I - 0x01AA9D 06:AA8D: 07        .byte $07   ; 
- D 1 - I - 0x01AA9E 06:AA8E: 4D        .byte $4D   ; 
- D 1 - I - 0x01AA9F 06:AA8F: 99        .byte $99   ; 



_off016_round_1_1_AA90_084:
- D 1 - I - 0x01AAA0 06:AA90: 81        .byte $81   ; 
- D 1 - I - 0x01AAA1 06:AA91: 30        .byte $30   ; 
- D 1 - I - 0x01AAA2 06:AA92: 17        .byte $17   ; 
- D 1 - I - 0x01AAA3 06:AA93: 07        .byte $07   ; 
- D 1 - I - 0x01AAA4 06:AA94: 4C        .byte $4C   ; 
- D 1 - I - 0x01AAA5 06:AA95: 8E        .byte $8E   ; 



_off016_round_1_1_AA96_086:
_off016_round_1_1_AA96_11A:
- D 1 - I - 0x01AAA6 06:AA96: 84        .byte $84   ; 
- D 1 - I - 0x01AAA7 06:AA97: 30        .byte $30   ; 
- D 1 - I - 0x01AAA8 06:AA98: 82        .byte $82   ; 
- D 1 - I - 0x01AAA9 06:AA99: 07        .byte $07   ; 
- D 1 - I - 0x01AAAA 06:AA9A: 4D        .byte $4D   ; 
- D 1 - I - 0x01AAAB 06:AA9B: 99        .byte $99   ; 



_off016_round_1_1_AA9C_088:
- D 1 - I - 0x01AAAC 06:AA9C: 9D        .byte $9D   ; 
- D 1 - I - 0x01AAAD 06:AA9D: 0D        .byte $0D   ; 
- D 1 - I - 0x01AAAE 06:AA9E: 31        .byte $31   ; 
- D 1 - I - 0x01AAAF 06:AA9F: 38        .byte $38   ; 
- D 1 - I - 0x01AAB0 06:AAA0: 17        .byte $17   ; 
- D 1 - I - 0x01AAB1 06:AAA1: 07        .byte $07   ; 
- D 1 - I - 0x01AAB2 06:AAA2: 4C        .byte $4C   ; 
- D 1 - I - 0x01AAB3 06:AAA3: 8E        .byte $8E   ; 



_off016_round_1_1_AAA4_08A:
- D 1 - I - 0x01AAB4 06:AAA4: 9D        .byte $9D   ; 
- D 1 - I - 0x01AAB5 06:AAA5: 0E        .byte $0E   ; 
- D 1 - I - 0x01AAB6 06:AAA6: 00        .byte $00   ; 
- D 1 - I - 0x01AAB7 06:AAA7: 31        .byte $31   ; 
- D 1 - I - 0x01AAB8 06:AAA8: 38        .byte $38   ; 
- D 1 - I - 0x01AAB9 06:AAA9: 07        .byte $07   ; 
- D 1 - I - 0x01AABA 06:AAAA: 4D        .byte $4D   ; 
- D 1 - I - 0x01AABB 06:AAAB: 99        .byte $99   ; 



_off016_round_1_1_AAAC_08C:
- D 1 - I - 0x01AABC 06:AAAC: 8A        .byte $8A   ; 
- D 1 - I - 0x01AABD 06:AAAD: 31        .byte $31   ; 
- D 1 - I - 0x01AABE 06:AAAE: 07        .byte $07   ; 
- D 1 - I - 0x01AABF 06:AAAF: 4C        .byte $4C   ; 
- D 1 - I - 0x01AAC0 06:AAB0: 8E        .byte $8E   ; 



_off016_round_1_1_AAB1_08E:
_off016_round_1_3_AAB1_1AE:
- D 1 - I - 0x01AAC1 06:AAB1: 9E        .byte $9E   ; 
- D 1 - I - 0x01AAC2 06:AAB2: 2E        .byte $2E   ; 
- D 1 - I - 0x01AAC3 06:AAB3: 9F        .byte $9F   ; 



_off016_round_1_1_AAB4_090:
- D 1 - I - 0x01AAC4 06:AAB4: 8B        .byte $8B   ; 
- D 1 - I - 0x01AAC5 06:AAB5: 08        .byte $08   ; 
- D 1 - I - 0x01AAC6 06:AAB6: A0        .byte $A0   ; 
- D 1 - I - 0x01AAC7 06:AAB7: 34        .byte $34   ; 
- D 1 - I - 0x01AAC8 06:AAB8: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAC9 06:AAB9: 1E        .byte $1E   ; 
- D 1 - I - 0x01AACA 06:AABA: 45        .byte $45   ; 
- D 1 - I - 0x01AACB 06:AABB: 00        .byte $00   ; 



_off016_round_1_1_AABC_092:
- D 1 - I - 0x01AACC 06:AABC: 8B        .byte $8B   ; 
- D 1 - I - 0x01AACD 06:AABD: 09        .byte $09   ; 
- D 1 - I - 0x01AACE 06:AABE: A0        .byte $A0   ; 
- D 1 - I - 0x01AACF 06:AABF: 34        .byte $34   ; 
- D 1 - I - 0x01AAD0 06:AAC0: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAD1 06:AAC1: 1F        .byte $1F   ; 
- D 1 - I - 0x01AAD2 06:AAC2: 45        .byte $45   ; 
- D 1 - I - 0x01AAD3 06:AAC3: 00        .byte $00   ; 



_off016_round_1_1_AAC4_094:
- D 1 - I - 0x01AAD4 06:AAC4: 8B        .byte $8B   ; 
- D 1 - I - 0x01AAD5 06:AAC5: 0A        .byte $0A   ; 
- D 1 - I - 0x01AAD6 06:AAC6: A0        .byte $A0   ; 
- D 1 - I - 0x01AAD7 06:AAC7: 34        .byte $34   ; 
- D 1 - I - 0x01AAD8 06:AAC8: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAD9 06:AAC9: 1A        .byte $1A   ; 
- D 1 - I - 0x01AADA 06:AACA: 45        .byte $45   ; 
- D 1 - I - 0x01AADB 06:AACB: 00        .byte $00   ; 



_off016_round_1_1_AACC_096:
_off016_round_1_1_AACC_0A2:
_off016_round_1_1_AACC_19E:
_off016_round_1_3_AACC_000:
_off016_round_1_3_AACC_00C:
_off016_round_1_3_AACC_0A6:
- D 1 - I - 0x01AADC 06:AACC: 9E        .byte $9E   ; 
- D 1 - I - 0x01AADD 06:AACD: 34        .byte $34   ; 
- D 1 - I - 0x01AADE 06:AACE: 2A        .byte $2A   ; 
- D 1 - I - 0x01AADF 06:AACF: 1B        .byte $1B   ; 
- D 1 - I - 0x01AAE0 06:AAD0: 45        .byte $45   ; 
- D 1 - I - 0x01AAE1 06:AAD1: 00        .byte $00   ; 



_off016_round_1_1_AAD2_098:
_off016_round_1_1_AAD2_0A4:
_off016_round_1_1_AAD2_1A0:
_off016_round_1_3_AAD2_002:
_off016_round_1_3_AAD2_00E:
_off016_round_1_3_AAD2_0A8:
- D 1 - I - 0x01AAE2 06:AAD2: 9E        .byte $9E   ; 
- D 1 - I - 0x01AAE3 06:AAD3: 34        .byte $34   ; 
- D 1 - I - 0x01AAE4 06:AAD4: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAE5 06:AAD5: 1C        .byte $1C   ; 
- D 1 - I - 0x01AAE6 06:AAD6: 45        .byte $45   ; 
- D 1 - I - 0x01AAE7 06:AAD7: 00        .byte $00   ; 



_off016_round_1_1_AAD8_09A:
_off016_round_1_1_AAD8_0A6:
_off016_round_1_1_AAD8_1A2:
_off016_round_1_3_AAD8_004:
_off016_round_1_3_AAD8_09E:
_off016_round_1_3_AAD8_0AA:
- D 1 - I - 0x01AAE8 06:AAD8: 9E        .byte $9E   ; 
- D 1 - I - 0x01AAE9 06:AAD9: 34        .byte $34   ; 
- D 1 - I - 0x01AAEA 06:AADA: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAEB 06:AADB: 1D        .byte $1D   ; 
- D 1 - I - 0x01AAEC 06:AADC: 45        .byte $45   ; 
- D 1 - I - 0x01AAED 06:AADD: 00        .byte $00   ; 



_off016_round_1_1_AADE_09C:
_off016_round_1_3_AADE_094:
_off016_round_1_3_AADE_0A0:
- D 1 - I - 0x01AAEE 06:AADE: 9E        .byte $9E   ; 
- D 1 - I - 0x01AAEF 06:AADF: 34        .byte $34   ; 
- D 1 - I - 0x01AAF0 06:AAE0: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAF1 06:AAE1: 1E        .byte $1E   ; 
- D 1 - I - 0x01AAF2 06:AAE2: 45        .byte $45   ; 
- D 1 - I - 0x01AAF3 06:AAE3: 00        .byte $00   ; 



_off016_round_1_1_AAE4_09E:
_off016_round_1_3_AAE4_096:
_off016_round_1_3_AAE4_0A2:
- D 1 - I - 0x01AAF4 06:AAE4: 9E        .byte $9E   ; 
- D 1 - I - 0x01AAF5 06:AAE5: 34        .byte $34   ; 
- D 1 - I - 0x01AAF6 06:AAE6: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAF7 06:AAE7: 1F        .byte $1F   ; 
- D 1 - I - 0x01AAF8 06:AAE8: 45        .byte $45   ; 
- D 1 - I - 0x01AAF9 06:AAE9: 00        .byte $00   ; 



_off016_round_1_1_AAEA_0A0:
_off016_round_1_1_AAEA_19C:
_off016_round_1_3_AAEA_00A:
_off016_round_1_3_AAEA_016:
_off016_round_1_3_AAEA_0A4:
- D 1 - I - 0x01AAFA 06:AAEA: 9E        .byte $9E   ; 
- D 1 - I - 0x01AAFB 06:AAEB: 34        .byte $34   ; 
- D 1 - I - 0x01AAFC 06:AAEC: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAFD 06:AAED: 1A        .byte $1A   ; 
- D 1 - I - 0x01AAFE 06:AAEE: 45        .byte $45   ; 
- D 1 - I - 0x01AAFF 06:AAEF: 00        .byte $00   ; 



_off016_round_1_1_AAF0_0A8:
_off016_round_1_3_AAF0_0AC:
- D 1 - I - 0x01AB00 06:AAF0: 8F        .byte $8F   ; 
- D 1 - I - 0x01AB01 06:AAF1: 54        .byte $54   ; 
- D 1 - I - 0x01AB02 06:AAF2: A1        .byte $A1   ; 
- D 1 - I - 0x01AB03 06:AAF3: 34        .byte $34   ; 
- D 1 - I - 0x01AB04 06:AAF4: 2A        .byte $2A   ; 
- D 1 - I - 0x01AB05 06:AAF5: 1E        .byte $1E   ; 
- D 1 - I - 0x01AB06 06:AAF6: 45        .byte $45   ; 
- D 1 - I - 0x01AB07 06:AAF7: 00        .byte $00   ; 



_off016_round_1_1_AAF8_0AA:
_off016_round_1_3_AAF8_0AE:
- D 1 - I - 0x01AB08 06:AAF8: 8F        .byte $8F   ; 
- D 1 - I - 0x01AB09 06:AAF9: 55        .byte $55   ; 
- D 1 - I - 0x01AB0A 06:AAFA: A1        .byte $A1   ; 
- D 1 - I - 0x01AB0B 06:AAFB: 34        .byte $34   ; 
- D 1 - I - 0x01AB0C 06:AAFC: 2A        .byte $2A   ; 
- D 1 - I - 0x01AB0D 06:AAFD: 1F        .byte $1F   ; 
- D 1 - I - 0x01AB0E 06:AAFE: 45        .byte $45   ; 
- D 1 - I - 0x01AB0F 06:AAFF: 00        .byte $00   ; 



_off016_round_1_1_AB00_0AC:
_off016_round_1_3_AB00_0B0:
- D 1 - I - 0x01AB10 06:AB00: 8F        .byte $8F   ; 
- D 1 - I - 0x01AB11 06:AB01: 4E        .byte $4E   ; 
- D 1 - I - 0x01AB12 06:AB02: A1        .byte $A1   ; 
- D 1 - I - 0x01AB13 06:AB03: 2F        .byte $2F   ; 
- D 1 - I - 0x01AB14 06:AB04: A2        .byte $A2   ; 



_off016_round_1_1_AB05_0AE:
- D 1 - I - 0x01AB15 06:AB05: 8F        .byte $8F   ; 
- D 1 - I - 0x01AB16 06:AB06: 4F        .byte $4F   ; 
- D 1 - I - 0x01AB17 06:AB07: A1        .byte $A1   ; 
- D 1 - I - 0x01AB18 06:AB08: 07        .byte $07   ; 
- D 1 - I - 0x01AB19 06:AB09: 4D        .byte $4D   ; 
- D 1 - I - 0x01AB1A 06:AB0A: 99        .byte $99   ; 



_off016_round_1_1_AB0B_0B0:
_off016_round_1_1_AB0B_1A8:
_off016_round_1_1_AB0B_1C8:
_off016_round_1_1_AB0B_1CC:
_off016_round_1_1_AB0B_1E0:
_off016_round_1_3_AB0B_1AC:
- D 1 - I - 0x01AB1B 06:AB0B: 9E        .byte $9E   ; 
- D 1 - I - 0x01AB1C 06:AB0C: 07        .byte $07   ; 
- D 1 - I - 0x01AB1D 06:AB0D: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB1E 06:AB0E: 8E        .byte $8E   ; 



_off016_round_1_1_AB0F_0B6:
- D 1 - I - 0x01AB1F 06:AB0F: 81        .byte $81   ; 
- D 1 - I - 0x01AB20 06:AB10: 31        .byte $31   ; 
- D 1 - I - 0x01AB21 06:AB11: 38        .byte $38   ; 
- D 1 - I - 0x01AB22 06:AB12: 20        .byte $20   ; 
- D 1 - I - 0x01AB23 06:AB13: 7D        .byte $7D   ; 
- D 1 - I - 0x01AB24 06:AB14: 99        .byte $99   ; 



_off016_round_1_1_AB15_0B8:
- D 1 - I - 0x01AB25 06:AB15: 8A        .byte $8A   ; 
- D 1 - I - 0x01AB26 06:AB16: 31        .byte $31   ; 
- D 1 - I - 0x01AB27 06:AB17: 03        .byte $03   ; 
- D 1 - I - 0x01AB28 06:AB18: 13        .byte $13   ; 
- D 1 - I - 0x01AB29 06:AB19: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB2A 06:AB1A: 83        .byte $83   ; 



_off016_round_1_1_AB1B_0BA:
- D 1 - I - 0x01AB2B 06:AB1B: A3        .byte $A3   ; 
- D 1 - I - 0x01AB2C 06:AB1C: 08        .byte $08   ; 
- D 1 - I - 0x01AB2D 06:AB1D: 89        .byte $89   ; 
- D 1 - I - 0x01AB2E 06:AB1E: 30        .byte $30   ; 
- D 1 - I - 0x01AB2F 06:AB1F: 17        .byte $17   ; 
- D 1 - I - 0x01AB30 06:AB20: 07        .byte $07   ; 
- D 1 - I - 0x01AB31 06:AB21: 4D        .byte $4D   ; 
- D 1 - I - 0x01AB32 06:AB22: 86        .byte $86   ; 



_off016_round_1_1_AB23_0BC:
- D 1 - I - 0x01AB33 06:AB23: A3        .byte $A3   ; 
- D 1 - I - 0x01AB34 06:AB24: 09        .byte $09   ; 
- D 1 - I - 0x01AB35 06:AB25: 89        .byte $89   ; 
- D 1 - I - 0x01AB36 06:AB26: 31        .byte $31   ; 
- D 1 - I - 0x01AB37 06:AB27: 38        .byte $38   ; 
- D 1 - I - 0x01AB38 06:AB28: 07        .byte $07   ; 
- D 1 - I - 0x01AB39 06:AB29: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB3A 06:AB2A: 83        .byte $83   ; 



_off016_round_1_1_AB2B_0BE:
- D 1 - I - 0x01AB3B 06:AB2B: A3        .byte $A3   ; 
- D 1 - I - 0x01AB3C 06:AB2C: 0A        .byte $0A   ; 
- D 1 - I - 0x01AB3D 06:AB2D: 8C        .byte $8C   ; 
- D 1 - I - 0x01AB3E 06:AB2E: 31        .byte $31   ; 
- D 1 - I - 0x01AB3F 06:AB2F: 07        .byte $07   ; 
- D 1 - I - 0x01AB40 06:AB30: 4D        .byte $4D   ; 
- D 1 - I - 0x01AB41 06:AB31: 86        .byte $86   ; 



_off016_round_1_1_AB32_0C0:
_off016_round_1_1_AB32_0CC:
- D 1 - I - 0x01AB42 06:AB32: A4        .byte $A4   ; 
- D 1 - I - 0x01AB43 06:AB33: 07        .byte $07   ; 
- D 1 - I - 0x01AB44 06:AB34: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB45 06:AB35: 83        .byte $83   ; 



_off016_round_1_1_AB36_0C2:
_off016_round_1_1_AB36_0CE:
- D 1 - I - 0x01AB46 06:AB36: A4        .byte $A4   ; 
- D 1 - I - 0x01AB47 06:AB37: 07        .byte $07   ; 
- D 1 - I - 0x01AB48 06:AB38: 4D        .byte $4D   ; 
- D 1 - I - 0x01AB49 06:AB39: 86        .byte $86   ; 



_off016_round_1_1_AB3A_0C4:
- D 1 - I - 0x01AB4A 06:AB3A: 9E        .byte $9E   ; 
- D 1 - I - 0x01AB4B 06:AB3B: 30        .byte $30   ; 
- D 1 - I - 0x01AB4C 06:AB3C: 07        .byte $07   ; 
- D 1 - I - 0x01AB4D 06:AB3D: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB4E 06:AB3E: 83        .byte $83   ; 



_off016_round_1_1_AB3F_0C8:
_off016_round_1_3_AB3F_0BC:
- D 1 - I - 0x01AB4F 06:AB3F: 8A        .byte $8A   ; 
- D 1 - I - 0x01AB50 06:AB40: 31        .byte $31   ; 
- D 1 - I - 0x01AB51 06:AB41: 38        .byte $38   ; 
- D 1 - I - 0x01AB52 06:AB42: 07        .byte $07   ; 
- D 1 - I - 0x01AB53 06:AB43: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB54 06:AB44: 83        .byte $83   ; 



_off016_round_1_1_AB45_0CA:
- D 1 - I - 0x01AB55 06:AB45: 9E        .byte $9E   ; 
- D 1 - I - 0x01AB56 06:AB46: 31        .byte $31   ; 
- D 1 - I - 0x01AB57 06:AB47: 07        .byte $07   ; 
- D 1 - I - 0x01AB58 06:AB48: 4D        .byte $4D   ; 
- D 1 - I - 0x01AB59 06:AB49: 86        .byte $86   ; 



_off016_round_1_1_AB4A_0D0:
- D 1 - I - 0x01AB5A 06:AB4A: 96        .byte $96   ; 
- D 1 - I - 0x01AB5B 06:AB4B: 08        .byte $08   ; 
- D 1 - I - 0x01AB5C 06:AB4C: A0        .byte $A0   ; 
- D 1 - I - 0x01AB5D 06:AB4D: 07        .byte $07   ; 
- D 1 - I - 0x01AB5E 06:AB4E: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB5F 06:AB4F: 83        .byte $83   ; 



_off016_round_1_1_AB50_0D2:
- D 1 - I - 0x01AB60 06:AB50: 96        .byte $96   ; 
- D 1 - I - 0x01AB61 06:AB51: 09        .byte $09   ; 
- D 1 - I - 0x01AB62 06:AB52: 93        .byte $93   ; 
- D 1 - I - 0x01AB63 06:AB53: 30        .byte $30   ; 
- D 1 - I - 0x01AB64 06:AB54: 07        .byte $07   ; 
- D 1 - I - 0x01AB65 06:AB55: 4D        .byte $4D   ; 
- D 1 - I - 0x01AB66 06:AB56: 86        .byte $86   ; 



_off016_round_1_1_AB57_0D4:
- D 1 - I - 0x01AB67 06:AB57: 96        .byte $96   ; 
- D 1 - I - 0x01AB68 06:AB58: 0A        .byte $0A   ; 
- D 1 - I - 0x01AB69 06:AB59: 93        .byte $93   ; 
- D 1 - I - 0x01AB6A 06:AB5A: 31        .byte $31   ; 
- D 1 - I - 0x01AB6B 06:AB5B: 07        .byte $07   ; 
- D 1 - I - 0x01AB6C 06:AB5C: 4C        .byte $4C   ; 
- D 1 - I - 0x01AB6D 06:AB5D: 83        .byte $83   ; 



_off016_round_1_1_AB5E_0D6:
- D 1 - I - 0x01AB6E 06:AB5E: 9E        .byte $9E   ; 
- D 1 - I - 0x01AB6F 06:AB5F: 30        .byte $30   ; 
- D 1 - I - 0x01AB70 06:AB60: 20        .byte $20   ; 
- D 1 - I - 0x01AB71 06:AB61: 97        .byte $97   ; 
- D 1 - I - 0x01AB72 06:AB62: 79        .byte $79   ; 



_off016_round_1_1_AB63_0D8:
- D 1 - I - 0x01AB73 06:AB63: 8A        .byte $8A   ; 
- D 1 - I - 0x01AB74 06:AB64: 30        .byte $30   ; 
- D 1 - I - 0x01AB75 06:AB65: 82        .byte $82   ; 
- D 1 - I - 0x01AB76 06:AB66: 17        .byte $17   ; 
- D 1 - I - 0x01AB77 06:AB67: 13        .byte $13   ; 
- D 1 - I - 0x01AB78 06:AB68: 4C        .byte $4C   ; 



_off016_round_1_1_AB69_0DA:
- D 1 - I - 0x01AB79 06:AB69: 8A        .byte $8A   ; 
- D 1 - I - 0x01AB7A 06:AB6A: 31        .byte $31   ; 
- D 1 - I - 0x01AB7B 06:AB6B: 38        .byte $38   ; 
- D 1 - I - 0x01AB7C 06:AB6C: 03        .byte $03   ; 
- D 1 - I - 0x01AB7D 06:AB6D: 3F        .byte $3F   ; 
- D 1 - I - 0x01AB7E 06:AB6E: 07        .byte $07   ; 
- D 1 - I - 0x01AB7F 06:AB6F: 4D        .byte $4D   ; 



_off016_round_1_1_AB70_0DC:
- D 1 - I - 0x01AB80 06:AB70: 9D        .byte $9D   ; 
- D 1 - I - 0x01AB81 06:AB71: 54        .byte $54   ; 
- D 1 - I - 0x01AB82 06:AB72: 89        .byte $89   ; 
- D 1 - I - 0x01AB83 06:AB73: 31        .byte $31   ; 
- D 1 - I - 0x01AB84 06:AB74: 38        .byte $38   ; 
- D 1 - I - 0x01AB85 06:AB75: 17        .byte $17   ; 
- D 1 - I - 0x01AB86 06:AB76: 07        .byte $07   ; 
- D 1 - I - 0x01AB87 06:AB77: 4C        .byte $4C   ; 



_off016_round_1_1_AB78_0DE:
- D 1 - I - 0x01AB88 06:AB78: 9D        .byte $9D   ; 
- D 1 - I - 0x01AB89 06:AB79: 55        .byte $55   ; 
- D 1 - I - 0x01AB8A 06:AB7A: 8C        .byte $8C   ; 
- D 1 - I - 0x01AB8B 06:AB7B: 31        .byte $31   ; 
- D 1 - I - 0x01AB8C 06:AB7C: 38        .byte $38   ; 
- D 1 - I - 0x01AB8D 06:AB7D: 07        .byte $07   ; 
- D 1 - I - 0x01AB8E 06:AB7E: 4D        .byte $4D   ; 



_off016_round_1_1_AB7F_0E0:
- D 1 - I - 0x01AB8F 06:AB7F: 9D        .byte $9D   ; 
- D 1 - I - 0x01AB90 06:AB80: 4E        .byte $4E   ; 
- D 1 - I - 0x01AB91 06:AB81: 90        .byte $90   ; 
- D 1 - I - 0x01AB92 06:AB82: 31        .byte $31   ; 
- D 1 - I - 0x01AB93 06:AB83: 07        .byte $07   ; 
- D 1 - I - 0x01AB94 06:AB84: 4C        .byte $4C   ; 



_off016_round_1_1_AB85_0E2:
- D 1 - I - 0x01AB95 06:AB85: 9D        .byte $9D   ; 
- D 1 - I - 0x01AB96 06:AB86: 4F        .byte $4F   ; 
- D 1 - I - 0x01AB97 06:AB87: 90        .byte $90   ; 
- D 1 - I - 0x01AB98 06:AB88: 30        .byte $30   ; 
- D 1 - I - 0x01AB99 06:AB89: 07        .byte $07   ; 
- D 1 - I - 0x01AB9A 06:AB8A: 4D        .byte $4D   ; 



_off016_round_1_1_AB8B_0E4:
_off016_round_1_3_AB8B_0D8:
_off016_round_1_3_AB8B_0E0:
_off016_round_1_3_AB8B_1D4:
- D 1 - I - 0x01AB9B 06:AB8B: A4        .byte $A4   ; 
- D 1 - I - 0x01AB9C 06:AB8C: 30        .byte $30   ; 
- D 1 - I - 0x01AB9D 06:AB8D: 03        .byte $03   ; 
- D 1 - I - 0x01AB9E 06:AB8E: 07        .byte $07   ; 
- D 1 - I - 0x01AB9F 06:AB8F: 4C        .byte $4C   ; 



_off016_round_1_1_AB90_0E6:
- D 1 - I - 0x01ABA0 06:AB90: 9D        .byte $9D   ; 
- D 1 - I - 0x01ABA1 06:AB91: 0D        .byte $0D   ; 
- D 1 - I - 0x01ABA2 06:AB92: 8C        .byte $8C   ; 
- D 1 - I - 0x01ABA3 06:AB93: 31        .byte $31   ; 
- D 1 - I - 0x01ABA4 06:AB94: 17        .byte $17   ; 
- D 1 - I - 0x01ABA5 06:AB95: 07        .byte $07   ; 
- D 1 - I - 0x01ABA6 06:AB96: 4D        .byte $4D   ; 



_off016_round_1_1_AB97_0E8:
- D 1 - I - 0x01ABA7 06:AB97: 9D        .byte $9D   ; 
- D 1 - I - 0x01ABA8 06:AB98: 0E        .byte $0E   ; 
- D 1 - I - 0x01ABA9 06:AB99: 8C        .byte $8C   ; 
- D 1 - I - 0x01ABAA 06:AB9A: 30        .byte $30   ; 
- D 1 - I - 0x01ABAB 06:AB9B: 3F        .byte $3F   ; 
- D 1 - I - 0x01ABAC 06:AB9C: 07        .byte $07   ; 
- D 1 - I - 0x01ABAD 06:AB9D: 4C        .byte $4C   ; 



_off016_round_1_1_AB9E_0EA:
- D 1 - I - 0x01ABAE 06:AB9E: 9E        .byte $9E   ; 
- D 1 - I - 0x01ABAF 06:AB9F: 0D        .byte $0D   ; 
- D 1 - I - 0x01ABB0 06:ABA0: 31        .byte $31   ; 
- D 1 - I - 0x01ABB1 06:ABA1: 38        .byte $38   ; 
- D 1 - I - 0x01ABB2 06:ABA2: 07        .byte $07   ; 
- D 1 - I - 0x01ABB3 06:ABA3: 4D        .byte $4D   ; 



_off016_round_1_1_ABA4_0EC:
- D 1 - I - 0x01ABB4 06:ABA4: 8A        .byte $8A   ; 
- D 1 - I - 0x01ABB5 06:ABA5: 64        .byte $64   ; 
- D 1 - I - 0x01ABB6 06:ABA6: 28        .byte $28   ; 
- D 1 - I - 0x01ABB7 06:ABA7: 00        .byte $00   ; 
- D 1 - I - 0x01ABB8 06:ABA8: 31        .byte $31   ; 
- D 1 - I - 0x01ABB9 06:ABA9: 07        .byte $07   ; 
- D 1 - I - 0x01ABBA 06:ABAA: 4C        .byte $4C   ; 



_off016_round_1_1_ABAB_0EE:
- D 1 - I - 0x01ABBB 06:ABAB: 9E        .byte $9E   ; 
- D 1 - I - 0x01ABBC 06:ABAC: 0E        .byte $0E   ; 
- D 1 - I - 0x01ABBD 06:ABAD: 00        .byte $00   ; 
- D 1 - I - 0x01ABBE 06:ABAE: 30        .byte $30   ; 
- D 1 - I - 0x01ABBF 06:ABAF: 07        .byte $07   ; 
- D 1 - I - 0x01ABC0 06:ABB0: 4D        .byte $4D   ; 



_off016_round_1_1_ABB1_0F0:
_off016_round_1_3_ABB1_1B0:
- D 1 - I - 0x01ABC1 06:ABB1: A4        .byte $A4   ; 
- D 1 - I - 0x01ABC2 06:ABB2: 30        .byte $30   ; 
- D 1 - I - 0x01ABC3 06:ABB3: 17        .byte $17   ; 
- D 1 - I - 0x01ABC4 06:ABB4: 07        .byte $07   ; 
- D 1 - I - 0x01ABC5 06:ABB5: 4C        .byte $4C   ; 



_off016_round_1_1_ABB6_0F2:
- D 1 - I - 0x01ABC6 06:ABB6: 96        .byte $96   ; 
- D 1 - I - 0x01ABC7 06:ABB7: 2A        .byte $2A   ; 
- D 1 - I - 0x01ABC8 06:ABB8: A0        .byte $A0   ; 
- D 1 - I - 0x01ABC9 06:ABB9: 31        .byte $31   ; 
- D 1 - I - 0x01ABCA 06:ABBA: 38        .byte $38   ; 
- D 1 - I - 0x01ABCB 06:ABBB: 07        .byte $07   ; 
- D 1 - I - 0x01ABCC 06:ABBC: 4D        .byte $4D   ; 



_off016_round_1_1_ABBD_0F4:
- D 1 - I - 0x01ABCD 06:ABBD: 96        .byte $96   ; 
- D 1 - I - 0x01ABCE 06:ABBE: 2A        .byte $2A   ; 
- D 1 - I - 0x01ABCF 06:ABBF: A1        .byte $A1   ; 
- D 1 - I - 0x01ABD0 06:ABC0: 31        .byte $31   ; 
- D 1 - I - 0x01ABD1 06:ABC1: 07        .byte $07   ; 
- D 1 - I - 0x01ABD2 06:ABC2: 4C        .byte $4C   ; 



_off016_round_1_1_ABC3_0F6:
- D 1 - I - 0x01ABD3 06:ABC3: 96        .byte $96   ; 
- D 1 - I - 0x01ABD4 06:ABC4: 2A        .byte $2A   ; 
- D 1 - I - 0x01ABD5 06:ABC5: 98        .byte $98   ; 
- D 1 - I - 0x01ABD6 06:ABC6: 07        .byte $07   ; 
- D 1 - I - 0x01ABD7 06:ABC7: 4D        .byte $4D   ; 



_off016_round_1_1_ABC8_0F8:
- D 1 - I - 0x01ABD8 06:ABC8: 96        .byte $96   ; 
- D 1 - I - 0x01ABD9 06:ABC9: 2A        .byte $2A   ; 
- D 1 - I - 0x01ABDA 06:ABCA: A1        .byte $A1   ; 
- D 1 - I - 0x01ABDB 06:ABCB: 24        .byte $24   ; 
- D 1 - I - 0x01ABDC 06:ABCC: 25        .byte $25   ; 
- D 1 - I - 0x01ABDD 06:ABCD: 78        .byte $78   ; 



_off016_round_1_1_ABCE_0FA:
- D 1 - I - 0x01ABDE 06:ABCE: 90        .byte $90   ; 
- D 1 - I - 0x01ABDF 06:ABCF: 08        .byte $08   ; 
- D 1 - I - 0x01ABE0 06:ABD0: 90        .byte $90   ; 
- D 1 - I - 0x01ABE1 06:ABD1: 34        .byte $34   ; 
- D 1 - I - 0x01ABE2 06:ABD2: 2A        .byte $2A   ; 
- D 1 - I - 0x01ABE3 06:ABD3: A0        .byte $A0   ; 
- D 1 - I - 0x01ABE4 06:ABD4: 24        .byte $24   ; 
- D 1 - I - 0x01ABE5 06:ABD5: 25        .byte $25   ; 
- D 1 - I - 0x01ABE6 06:ABD6: 2C        .byte $2C   ; 
- D 1 - I - 0x01ABE7 06:ABD7: 79        .byte $79   ; 



_off016_round_1_1_ABD8_0FC:
- D 1 - I - 0x01ABE8 06:ABD8: 90        .byte $90   ; 
- D 1 - I - 0x01ABE9 06:ABD9: 09        .byte $09   ; 
- D 1 - I - 0x01ABEA 06:ABDA: 90        .byte $90   ; 
- D 1 - I - 0x01ABEB 06:ABDB: 34        .byte $34   ; 
- D 1 - I - 0x01ABEC 06:ABDC: 2A        .byte $2A   ; 
- D 1 - I - 0x01ABED 06:ABDD: 88        .byte $88   ; 
- D 1 - I - 0x01ABEE 06:ABDE: 08        .byte $08   ; 
- D 1 - I - 0x01ABEF 06:ABDF: 89        .byte $89   ; 
- D 1 - I - 0x01ABF0 06:ABE0: 24        .byte $24   ; 
- D 1 - I - 0x01ABF1 06:ABE1: 25        .byte $25   ; 
- D 1 - I - 0x01ABF2 06:ABE2: 2C        .byte $2C   ; 
- D 1 - I - 0x01ABF3 06:ABE3: 83        .byte $83   ; 



_off016_round_1_1_ABE4_0FE:
- D 1 - I - 0x01ABF4 06:ABE4: 90        .byte $90   ; 
- D 1 - I - 0x01ABF5 06:ABE5: 0A        .byte $0A   ; 
- D 1 - I - 0x01ABF6 06:ABE6: 90        .byte $90   ; 
- D 1 - I - 0x01ABF7 06:ABE7: 34        .byte $34   ; 
- D 1 - I - 0x01ABF8 06:ABE8: 2A        .byte $2A   ; 
- D 1 - I - 0x01ABF9 06:ABE9: 88        .byte $88   ; 
- D 1 - I - 0x01ABFA 06:ABEA: 09        .byte $09   ; 
- D 1 - I - 0x01ABFB 06:ABEB: 88        .byte $88   ; 
- D 1 - I - 0x01ABFC 06:ABEC: 24        .byte $24   ; 
- D 1 - I - 0x01ABFD 06:ABED: 25        .byte $25   ; 
- D 1 - I - 0x01ABFE 06:ABEE: 2C        .byte $2C   ; 
- D 1 - I - 0x01ABFF 06:ABEF: 99        .byte $99   ; 



_off016_round_1_1_ABF0_100:
- D 1 - I - 0x01AC00 06:ABF0: 98        .byte $98   ; 
- D 1 - I - 0x01AC01 06:ABF1: 2F        .byte $2F   ; 
- D 1 - I - 0x01AC02 06:ABF2: A5        .byte $A5   ; 
- D 1 - I - 0x01AC03 06:ABF3: 94        .byte $94   ; 



_off016_round_1_1_ABF4_102:
- D 1 - I - 0x01AC04 06:ABF4: 98        .byte $98   ; 
- D 1 - I - 0x01AC05 06:ABF5: 07        .byte $07   ; 
- D 1 - I - 0x01AC06 06:ABF6: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC07 06:ABF7: A6        .byte $A6   ; 



_off016_round_1_1_ABF8_104:
- D 1 - I - 0x01AC08 06:ABF8: A1        .byte $A1   ; 
- D 1 - I - 0x01AC09 06:ABF9: 22        .byte $22   ; 
- D 1 - I - 0x01AC0A 06:ABFA: 07        .byte $07   ; 
- D 1 - I - 0x01AC0B 06:ABFB: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC0C 06:ABFC: A7        .byte $A7   ; 



_off016_round_1_1_ABFD_106:
- D 1 - I - 0x01AC0D 06:ABFD: A1        .byte $A1   ; 
- D 1 - I - 0x01AC0E 06:ABFE: 23        .byte $23   ; 
- D 1 - I - 0x01AC0F 06:ABFF: 2E        .byte $2E   ; 
- D 1 - I - 0x01AC10 06:AC00: A8        .byte $A8   ; 
- D 1 - I - 0x01AC11 06:AC01: 9B        .byte $9B   ; 



_off016_round_1_1_AC02_108:
- D 1 - I - 0x01AC12 06:AC02: 9D        .byte $9D   ; 
- D 1 - I - 0x01AC13 06:AC03: 31        .byte $31   ; 
- D 1 - I - 0x01AC14 06:AC04: 17        .byte $17   ; 
- D 1 - I - 0x01AC15 06:AC05: 13        .byte $13   ; 
- D 1 - I - 0x01AC16 06:AC06: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC17 06:AC07: 94        .byte $94   ; 



_off016_round_1_1_AC08_10A:
_off016_round_1_2_AC08_16A:
_off016_round_1_2_AC08_17A:
- D 1 - I - 0x01AC18 06:AC08: 84        .byte $84   ; 
- D 1 - I - 0x01AC19 06:AC09: 31        .byte $31   ; 
- D 1 - I - 0x01AC1A 06:AC0A: 07        .byte $07   ; 
- D 1 - I - 0x01AC1B 06:AC0B: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC1C 06:AC0C: 95        .byte $95   ; 



_off016_round_1_1_AC0D_10C:
_off016_round_1_2_AC0D_10C:
- D 1 - I - 0x01AC1D 06:AC0D: 84        .byte $84   ; 
- D 1 - I - 0x01AC1E 06:AC0E: 64        .byte $64   ; 
- D 1 - I - 0x01AC1F 06:AC0F: 07        .byte $07   ; 
- D 1 - I - 0x01AC20 06:AC10: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC21 06:AC11: 94        .byte $94   ; 



_off016_round_1_1_AC12_110:
- D 1 - I - 0x01AC22 06:AC12: 9D        .byte $9D   ; 
- D 1 - I - 0x01AC23 06:AC13: 30        .byte $30   ; 
- D 1 - I - 0x01AC24 06:AC14: 82        .byte $82   ; 
- D 1 - I - 0x01AC25 06:AC15: 17        .byte $17   ; 
- D 1 - I - 0x01AC26 06:AC16: 07        .byte $07   ; 
- D 1 - I - 0x01AC27 06:AC17: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC28 06:AC18: 8E        .byte $8E   ; 



_off016_round_1_1_AC19_112:
- D 1 - I - 0x01AC29 06:AC19: 9D        .byte $9D   ; 
- D 1 - I - 0x01AC2A 06:AC1A: 31        .byte $31   ; 
- D 1 - I - 0x01AC2B 06:AC1B: 38        .byte $38   ; 
- D 1 - I - 0x01AC2C 06:AC1C: 82        .byte $82   ; 
- D 1 - I - 0x01AC2D 06:AC1D: 07        .byte $07   ; 
- D 1 - I - 0x01AC2E 06:AC1E: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC2F 06:AC1F: 99        .byte $99   ; 



_off016_round_1_1_AC20_114:
- D 1 - I - 0x01AC30 06:AC20: 90        .byte $90   ; 
- D 1 - I - 0x01AC31 06:AC21: 08        .byte $08   ; 
- D 1 - I - 0x01AC32 06:AC22: 8C        .byte $8C   ; 
- D 1 - I - 0x01AC33 06:AC23: 60        .byte $60   ; 
- D 1 - I - 0x01AC34 06:AC24: 68        .byte $68   ; 
- D 1 - I - 0x01AC35 06:AC25: 89        .byte $89   ; 
- D 1 - I - 0x01AC36 06:AC26: 30        .byte $30   ; 
- D 1 - I - 0x01AC37 06:AC27: 82        .byte $82   ; 
- D 1 - I - 0x01AC38 06:AC28: 17        .byte $17   ; 
- D 1 - I - 0x01AC39 06:AC29: 07        .byte $07   ; 
- D 1 - I - 0x01AC3A 06:AC2A: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC3B 06:AC2B: 8E        .byte $8E   ; 



_off016_round_1_1_AC2C_116:
- D 1 - I - 0x01AC3C 06:AC2C: 90        .byte $90   ; 
- D 1 - I - 0x01AC3D 06:AC2D: 09        .byte $09   ; 
- D 1 - I - 0x01AC3E 06:AC2E: 8C        .byte $8C   ; 
- D 1 - I - 0x01AC3F 06:AC2F: 61        .byte $61   ; 
- D 1 - I - 0x01AC40 06:AC30: 8C        .byte $8C   ; 
- D 1 - I - 0x01AC41 06:AC31: 31        .byte $31   ; 
- D 1 - I - 0x01AC42 06:AC32: 38        .byte $38   ; 
- D 1 - I - 0x01AC43 06:AC33: 03        .byte $03   ; 
- D 1 - I - 0x01AC44 06:AC34: 3F        .byte $3F   ; 
- D 1 - I - 0x01AC45 06:AC35: 07        .byte $07   ; 
- D 1 - I - 0x01AC46 06:AC36: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC47 06:AC37: 99        .byte $99   ; 



_off016_round_1_1_AC38_118:
- D 1 - I - 0x01AC48 06:AC38: 90        .byte $90   ; 
- D 1 - I - 0x01AC49 06:AC39: 0A        .byte $0A   ; 
- D 1 - I - 0x01AC4A 06:AC3A: 8F        .byte $8F   ; 
- D 1 - I - 0x01AC4B 06:AC3B: 31        .byte $31   ; 
- D 1 - I - 0x01AC4C 06:AC3C: 82        .byte $82   ; 
- D 1 - I - 0x01AC4D 06:AC3D: 07        .byte $07   ; 
- D 1 - I - 0x01AC4E 06:AC3E: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC4F 06:AC3F: 8E        .byte $8E   ; 



_off016_round_1_1_AC40_11C:
- D 1 - I - 0x01AC50 06:AC40: 9D        .byte $9D   ; 
- D 1 - I - 0x01AC51 06:AC41: 30        .byte $30   ; 
- D 1 - I - 0x01AC52 06:AC42: 03        .byte $03   ; 
- D 1 - I - 0x01AC53 06:AC43: 21        .byte $21   ; 
- D 1 - I - 0x01AC54 06:AC44: 8D        .byte $8D   ; 
- D 1 - I - 0x01AC55 06:AC45: 92        .byte $92   ; 



_off016_round_1_1_AC46_11E:
- D 1 - I - 0x01AC56 06:AC46: A3        .byte $A3   ; 
- D 1 - I - 0x01AC57 06:AC47: 71        .byte $71   ; 
- D 1 - I - 0x01AC58 06:AC48: 31        .byte $31   ; 
- D 1 - I - 0x01AC59 06:AC49: 3A        .byte $3A   ; 
- D 1 - I - 0x01AC5A 06:AC4A: 07        .byte $07   ; 
- D 1 - I - 0x01AC5B 06:AC4B: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC5C 06:AC4C: 95        .byte $95   ; 



_off016_round_1_1_AC4D_120:
- D 1 - I - 0x01AC5D 06:AC4D: A3        .byte $A3   ; 
- D 1 - I - 0x01AC5E 06:AC4E: 40        .byte $40   ; 
- D 1 - I - 0x01AC5F 06:AC4F: 48        .byte $48   ; 
- D 1 - I - 0x01AC60 06:AC50: 3B        .byte $3B   ; 
- D 1 - I - 0x01AC61 06:AC51: 07        .byte $07   ; 
- D 1 - I - 0x01AC62 06:AC52: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC63 06:AC53: 94        .byte $94   ; 



_off016_round_1_1_AC54_122:
- D 1 - I - 0x01AC64 06:AC54: A3        .byte $A3   ; 
- D 1 - I - 0x01AC65 06:AC55: 41        .byte $41   ; 
- D 1 - I - 0x01AC66 06:AC56: 10        .byte $10   ; 
- D 1 - I - 0x01AC67 06:AC57: 3C        .byte $3C   ; 
- D 1 - I - 0x01AC68 06:AC58: 07        .byte $07   ; 
- D 1 - I - 0x01AC69 06:AC59: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC6A 06:AC5A: 95        .byte $95   ; 



_off016_round_1_1_AC5B_124:
- D 1 - I - 0x01AC6B 06:AC5B: A1        .byte $A1   ; 
- D 1 - I - 0x01AC6C 06:AC5C: 08        .byte $08   ; 
- D 1 - I - 0x01AC6D 06:AC5D: 93        .byte $93   ; 
- D 1 - I - 0x01AC6E 06:AC5E: 14        .byte $14   ; 
- D 1 - I - 0x01AC6F 06:AC5F: 3E        .byte $3E   ; 
- D 1 - I - 0x01AC70 06:AC60: 07        .byte $07   ; 
- D 1 - I - 0x01AC71 06:AC61: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC72 06:AC62: 94        .byte $94   ; 



_off016_round_1_1_AC63_126:
- D 1 - I - 0x01AC73 06:AC63: A1        .byte $A1   ; 
- D 1 - I - 0x01AC74 06:AC64: 09        .byte $09   ; 
- D 1 - I - 0x01AC75 06:AC65: A0        .byte $A0   ; 
- D 1 - I - 0x01AC76 06:AC66: 30        .byte $30   ; 
- D 1 - I - 0x01AC77 06:AC67: 07        .byte $07   ; 
- D 1 - I - 0x01AC78 06:AC68: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC79 06:AC69: 95        .byte $95   ; 



_off016_round_1_1_AC6A_128:
- D 1 - I - 0x01AC7A 06:AC6A: A1        .byte $A1   ; 
- D 1 - I - 0x01AC7B 06:AC6B: 0A        .byte $0A   ; 
- D 1 - I - 0x01AC7C 06:AC6C: 90        .byte $90   ; 
- D 1 - I - 0x01AC7D 06:AC6D: 71        .byte $71   ; 
- D 1 - I - 0x01AC7E 06:AC6E: 30        .byte $30   ; 
- D 1 - I - 0x01AC7F 06:AC6F: 3A        .byte $3A   ; 
- D 1 - I - 0x01AC80 06:AC70: 07        .byte $07   ; 
- D 1 - I - 0x01AC81 06:AC71: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC82 06:AC72: 94        .byte $94   ; 



_off016_round_1_1_AC73_12A:
_off016_round_1_3_AC73_162:
- D 1 - I - 0x01AC83 06:AC73: 87        .byte $87   ; 
- D 1 - I - 0x01AC84 06:AC74: 40        .byte $40   ; 
- D 1 - I - 0x01AC85 06:AC75: 48        .byte $48   ; 
- D 1 - I - 0x01AC86 06:AC76: 50        .byte $50   ; 
- D 1 - I - 0x01AC87 06:AC77: 3B        .byte $3B   ; 
- D 1 - I - 0x01AC88 06:AC78: 07        .byte $07   ; 
- D 1 - I - 0x01AC89 06:AC79: 4D        .byte $4D   ; 
- D 1 - I - 0x01AC8A 06:AC7A: 95        .byte $95   ; 



_off016_round_1_1_AC7B_12C:
- D 1 - I - 0x01AC8B 06:AC7B: 98        .byte $98   ; 
- D 1 - I - 0x01AC8C 06:AC7C: 54        .byte $54   ; 
- D 1 - I - 0x01AC8D 06:AC7D: 89        .byte $89   ; 
- D 1 - I - 0x01AC8E 06:AC7E: 41        .byte $41   ; 
- D 1 - I - 0x01AC8F 06:AC7F: 10        .byte $10   ; 
- D 1 - I - 0x01AC90 06:AC80: 43        .byte $43   ; 
- D 1 - I - 0x01AC91 06:AC81: 3C        .byte $3C   ; 
- D 1 - I - 0x01AC92 06:AC82: 07        .byte $07   ; 
- D 1 - I - 0x01AC93 06:AC83: 4C        .byte $4C   ; 
- D 1 - I - 0x01AC94 06:AC84: 94        .byte $94   ; 



_off016_round_1_1_AC85_12E:
- D 1 - I - 0x01AC95 06:AC85: 98        .byte $98   ; 
- D 1 - I - 0x01AC96 06:AC86: 55        .byte $55   ; 
- D 1 - I - 0x01AC97 06:AC87: 8C        .byte $8C   ; 
- D 1 - I - 0x01AC98 06:AC88: 14        .byte $14   ; 
- D 1 - I - 0x01AC99 06:AC89: 31        .byte $31   ; 
- D 1 - I - 0x01AC9A 06:AC8A: 39        .byte $39   ; 
- D 1 - I - 0x01AC9B 06:AC8B: 20        .byte $20   ; 
- D 1 - I - 0x01AC9C 06:AC8C: 97        .byte $97   ; 
- D 1 - I - 0x01AC9D 06:AC8D: 91        .byte $91   ; 



_off016_round_1_1_AC8E_130:
- D 1 - I - 0x01AC9E 06:AC8E: 98        .byte $98   ; 
- D 1 - I - 0x01AC9F 06:AC8F: 4E        .byte $4E   ; 
- D 1 - I - 0x01ACA0 06:AC90: 90        .byte $90   ; 
- D 1 - I - 0x01ACA1 06:AC91: 30        .byte $30   ; 
- D 1 - I - 0x01ACA2 06:AC92: 85        .byte $85   ; 
- D 1 - I - 0x01ACA3 06:AC93: 07        .byte $07   ; 
- D 1 - I - 0x01ACA4 06:AC94: 4C        .byte $4C   ; 
- D 1 - I - 0x01ACA5 06:AC95: 8E        .byte $8E   ; 



_off016_round_1_1_AC96_132:
- D 1 - I - 0x01ACA6 06:AC96: 98        .byte $98   ; 
- D 1 - I - 0x01ACA7 06:AC97: 4F        .byte $4F   ; 
- D 1 - I - 0x01ACA8 06:AC98: 88        .byte $88   ; 
- D 1 - I - 0x01ACA9 06:AC99: 0D        .byte $0D   ; 
- D 1 - I - 0x01ACAA 06:AC9A: 00        .byte $00   ; 
- D 1 - I - 0x01ACAB 06:AC9B: 30        .byte $30   ; 
- D 1 - I - 0x01ACAC 06:AC9C: 85        .byte $85   ; 
- D 1 - I - 0x01ACAD 06:AC9D: 3F        .byte $3F   ; 
- D 1 - I - 0x01ACAE 06:AC9E: 07        .byte $07   ; 
- D 1 - I - 0x01ACAF 06:AC9F: 4D        .byte $4D   ; 
- D 1 - I - 0x01ACB0 06:ACA0: 99        .byte $99   ; 



_off016_round_1_1_ACA1_134:
- D 1 - I - 0x01ACB1 06:ACA1: 96        .byte $96   ; 
- D 1 - I - 0x01ACB2 06:ACA2: 0E        .byte $0E   ; 
- D 1 - I - 0x01ACB3 06:ACA3: 00        .byte $00   ; 
- D 1 - I - 0x01ACB4 06:ACA4: 31        .byte $31   ; 
- D 1 - I - 0x01ACB5 06:ACA5: 38        .byte $38   ; 
- D 1 - I - 0x01ACB6 06:ACA6: 85        .byte $85   ; 
- D 1 - I - 0x01ACB7 06:ACA7: 07        .byte $07   ; 
- D 1 - I - 0x01ACB8 06:ACA8: 4C        .byte $4C   ; 
- D 1 - I - 0x01ACB9 06:ACA9: 8E        .byte $8E   ; 



_off016_round_1_1_ACAA_136:
- D 1 - I - 0x01ACBA 06:ACAA: 9D        .byte $9D   ; 
- D 1 - I - 0x01ACBB 06:ACAB: 31        .byte $31   ; 
- D 1 - I - 0x01ACBC 06:ACAC: 82        .byte $82   ; 
- D 1 - I - 0x01ACBD 06:ACAD: 17        .byte $17   ; 
- D 1 - I - 0x01ACBE 06:ACAE: 07        .byte $07   ; 
- D 1 - I - 0x01ACBF 06:ACAF: 4D        .byte $4D   ; 
- D 1 - I - 0x01ACC0 06:ACB0: 99        .byte $99   ; 



_off016_round_1_1_ACB1_138:
- D 1 - I - 0x01ACC1 06:ACB1: A3        .byte $A3   ; 
- D 1 - I - 0x01ACC2 06:ACB2: 71        .byte $71   ; 
- D 1 - I - 0x01ACC3 06:ACB3: 30        .byte $30   ; 
- D 1 - I - 0x01ACC4 06:ACB4: 3A        .byte $3A   ; 
- D 1 - I - 0x01ACC5 06:ACB5: 21        .byte $21   ; 
- D 1 - I - 0x01ACC6 06:ACB6: 8D        .byte $8D   ; 
- D 1 - I - 0x01ACC7 06:ACB7: 92        .byte $92   ; 



_off016_round_1_1_ACB8_13A:
_off016_round_1_1_ACB8_152:
_off016_round_1_1_ACB8_16E:
- D 1 - I - 0x01ACC8 06:ACB8: A3        .byte $A3   ; 
- D 1 - I - 0x01ACC9 06:ACB9: 40        .byte $40   ; 
- D 1 - I - 0x01ACCA 06:ACBA: 48        .byte $48   ; 
- D 1 - I - 0x01ACCB 06:ACBB: 3B        .byte $3B   ; 
- D 1 - I - 0x01ACCC 06:ACBC: 07        .byte $07   ; 
- D 1 - I - 0x01ACCD 06:ACBD: 4D        .byte $4D   ; 
- D 1 - I - 0x01ACCE 06:ACBE: 95        .byte $95   ; 



_off016_round_1_1_ACBF_13C:
_off016_round_1_1_ACBF_154:
_off016_round_1_1_ACBF_170:
- D 1 - I - 0x01ACCF 06:ACBF: A3        .byte $A3   ; 
- D 1 - I - 0x01ACD0 06:ACC0: 41        .byte $41   ; 
- D 1 - I - 0x01ACD1 06:ACC1: 10        .byte $10   ; 
- D 1 - I - 0x01ACD2 06:ACC2: 3C        .byte $3C   ; 
- D 1 - I - 0x01ACD3 06:ACC3: 07        .byte $07   ; 
- D 1 - I - 0x01ACD4 06:ACC4: 4C        .byte $4C   ; 
- D 1 - I - 0x01ACD5 06:ACC5: 94        .byte $94   ; 



_off016_round_1_1_ACC6_13E:
- D 1 - I - 0x01ACD6 06:ACC6: 9D        .byte $9D   ; 
- D 1 - I - 0x01ACD7 06:ACC7: 14        .byte $14   ; 
- D 1 - I - 0x01ACD8 06:ACC8: 3E        .byte $3E   ; 
- D 1 - I - 0x01ACD9 06:ACC9: 20        .byte $20   ; 
- D 1 - I - 0x01ACDA 06:ACCA: 7D        .byte $7D   ; 
- D 1 - I - 0x01ACDB 06:ACCB: 95        .byte $95   ; 



_off016_round_1_1_ACCC_140:
- D 1 - I - 0x01ACDC 06:ACCC: 84        .byte $84   ; 
- D 1 - I - 0x01ACDD 06:ACCD: 30        .byte $30   ; 
- D 1 - I - 0x01ACDE 06:ACCE: 03        .byte $03   ; 
- D 1 - I - 0x01ACDF 06:ACCF: 07        .byte $07   ; 
- D 1 - I - 0x01ACE0 06:ACD0: 4C        .byte $4C   ; 
- D 1 - I - 0x01ACE1 06:ACD1: 92        .byte $92   ; 



_off016_round_1_1_ACD2_142:
- D 1 - I - 0x01ACE2 06:ACD2: 8F        .byte $8F   ; 
- D 1 - I - 0x01ACE3 06:ACD3: 08        .byte $08   ; 
- D 1 - I - 0x01ACE4 06:ACD4: 8C        .byte $8C   ; 
- D 1 - I - 0x01ACE5 06:ACD5: 30        .byte $30   ; 
- D 1 - I - 0x01ACE6 06:ACD6: 82        .byte $82   ; 
- D 1 - I - 0x01ACE7 06:ACD7: 20        .byte $20   ; 
- D 1 - I - 0x01ACE8 06:ACD8: 7D        .byte $7D   ; 
- D 1 - I - 0x01ACE9 06:ACD9: 91        .byte $91   ; 



_off016_round_1_1_ACDA_144:
- D 1 - I - 0x01ACEA 06:ACDA: 8F        .byte $8F   ; 
- D 1 - I - 0x01ACEB 06:ACDB: 09        .byte $09   ; 
- D 1 - I - 0x01ACEC 06:ACDC: 89        .byte $89   ; 
- D 1 - I - 0x01ACED 06:ACDD: 30        .byte $30   ; 
- D 1 - I - 0x01ACEE 06:ACDE: 85        .byte $85   ; 
- D 1 - I - 0x01ACEF 06:ACDF: 17        .byte $17   ; 
- D 1 - I - 0x01ACF0 06:ACE0: 07        .byte $07   ; 
- D 1 - I - 0x01ACF1 06:ACE1: 4C        .byte $4C   ; 
- D 1 - I - 0x01ACF2 06:ACE2: 8E        .byte $8E   ; 



_off016_round_1_1_ACE3_146:
- D 1 - I - 0x01ACF3 06:ACE3: 8F        .byte $8F   ; 
- D 1 - I - 0x01ACF4 06:ACE4: 0A        .byte $0A   ; 
- D 1 - I - 0x01ACF5 06:ACE5: 00        .byte $00   ; 
- D 1 - I - 0x01ACF6 06:ACE6: 0D        .byte $0D   ; 
- D 1 - I - 0x01ACF7 06:ACE7: 00        .byte $00   ; 
- D 1 - I - 0x01ACF8 06:ACE8: 31        .byte $31   ; 
- D 1 - I - 0x01ACF9 06:ACE9: 38        .byte $38   ; 
- D 1 - I - 0x01ACFA 06:ACEA: 85        .byte $85   ; 
- D 1 - I - 0x01ACFB 06:ACEB: 20        .byte $20   ; 
- D 1 - I - 0x01ACFC 06:ACEC: 7D        .byte $7D   ; 
- D 1 - I - 0x01ACFD 06:ACED: 99        .byte $99   ; 



_off016_round_1_1_ACEE_148:
- D 1 - I - 0x01ACFE 06:ACEE: 96        .byte $96   ; 
- D 1 - I - 0x01ACFF 06:ACEF: 28        .byte $28   ; 
- D 1 - I - 0x01AD00 06:ACF0: 88        .byte $88   ; 
- D 1 - I - 0x01AD01 06:ACF1: 31        .byte $31   ; 
- D 1 - I - 0x01AD02 06:ACF2: A9        .byte $A9   ; 
- D 1 - I - 0x01AD03 06:ACF3: 07        .byte $07   ; 
- D 1 - I - 0x01AD04 06:ACF4: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD05 06:ACF5: 83        .byte $83   ; 



_off016_round_1_1_ACF6_14A:
- D 1 - I - 0x01AD06 06:ACF6: 96        .byte $96   ; 
- D 1 - I - 0x01AD07 06:ACF7: 0E        .byte $0E   ; 
- D 1 - I - 0x01AD08 06:ACF8: 88        .byte $88   ; 
- D 1 - I - 0x01AD09 06:ACF9: 30        .byte $30   ; 
- D 1 - I - 0x01AD0A 06:ACFA: 85        .byte $85   ; 
- D 1 - I - 0x01AD0B 06:ACFB: 3F        .byte $3F   ; 
- D 1 - I - 0x01AD0C 06:ACFC: 07        .byte $07   ; 
- D 1 - I - 0x01AD0D 06:ACFD: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD0E 06:ACFE: 86        .byte $86   ; 



_off016_round_1_1_ACFF_14C:
- D 1 - I - 0x01AD0F 06:ACFF: 9D        .byte $9D   ; 
- D 1 - I - 0x01AD10 06:AD00: 31        .byte $31   ; 
- D 1 - I - 0x01AD11 06:AD01: 38        .byte $38   ; 
- D 1 - I - 0x01AD12 06:AD02: 82        .byte $82   ; 
- D 1 - I - 0x01AD13 06:AD03: 17        .byte $17   ; 
- D 1 - I - 0x01AD14 06:AD04: 07        .byte $07   ; 
- D 1 - I - 0x01AD15 06:AD05: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD16 06:AD06: 83        .byte $83   ; 



_off016_round_1_1_AD07_14E:
- D 1 - I - 0x01AD17 06:AD07: 9D        .byte $9D   ; 
- D 1 - I - 0x01AD18 06:AD08: 30        .byte $30   ; 
- D 1 - I - 0x01AD19 06:AD09: A9        .byte $A9   ; 
- D 1 - I - 0x01AD1A 06:AD0A: 07        .byte $07   ; 
- D 1 - I - 0x01AD1B 06:AD0B: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD1C 06:AD0C: 86        .byte $86   ; 



_off016_round_1_1_AD0D_150:
- D 1 - I - 0x01AD1D 06:AD0D: A3        .byte $A3   ; 
- D 1 - I - 0x01AD1E 06:AD0E: 71        .byte $71   ; 
- D 1 - I - 0x01AD1F 06:AD0F: 31        .byte $31   ; 
- D 1 - I - 0x01AD20 06:AD10: 3A        .byte $3A   ; 
- D 1 - I - 0x01AD21 06:AD11: 21        .byte $21   ; 
- D 1 - I - 0x01AD22 06:AD12: 9A        .byte $9A   ; 
- D 1 - I - 0x01AD23 06:AD13: 8E        .byte $8E   ; 



_off016_round_1_1_AD14_156:
- D 1 - I - 0x01AD24 06:AD14: 9D        .byte $9D   ; 
- D 1 - I - 0x01AD25 06:AD15: 14        .byte $14   ; 
- D 1 - I - 0x01AD26 06:AD16: 3E        .byte $3E   ; 
- D 1 - I - 0x01AD27 06:AD17: 20        .byte $20   ; 
- D 1 - I - 0x01AD28 06:AD18: 97        .byte $97   ; 
- D 1 - I - 0x01AD29 06:AD19: 91        .byte $91   ; 



_off016_round_1_1_AD1A_158:
_off016_round_1_2_AD1A_134:
- D 1 - I - 0x01AD2A 06:AD1A: 84        .byte $84   ; 
- D 1 - I - 0x01AD2B 06:AD1B: 30        .byte $30   ; 
- D 1 - I - 0x01AD2C 06:AD1C: 82        .byte $82   ; 
- D 1 - I - 0x01AD2D 06:AD1D: 07        .byte $07   ; 
- D 1 - I - 0x01AD2E 06:AD1E: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD2F 06:AD1F: 8E        .byte $8E   ; 



_off016_round_1_1_AD20_15A:
- D 1 - I - 0x01AD30 06:AD20: 9D        .byte $9D   ; 
- D 1 - I - 0x01AD31 06:AD21: 30        .byte $30   ; 
- D 1 - I - 0x01AD32 06:AD22: 82        .byte $82   ; 
- D 1 - I - 0x01AD33 06:AD23: 17        .byte $17   ; 
- D 1 - I - 0x01AD34 06:AD24: 07        .byte $07   ; 
- D 1 - I - 0x01AD35 06:AD25: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD36 06:AD26: 99        .byte $99   ; 



_off016_round_1_1_AD27_15C:
- D 1 - I - 0x01AD37 06:AD27: 9D        .byte $9D   ; 
- D 1 - I - 0x01AD38 06:AD28: 31        .byte $31   ; 
- D 1 - I - 0x01AD39 06:AD29: 85        .byte $85   ; 
- D 1 - I - 0x01AD3A 06:AD2A: 07        .byte $07   ; 
- D 1 - I - 0x01AD3B 06:AD2B: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD3C 06:AD2C: 8E        .byte $8E   ; 



_off016_round_1_1_AD2D_15E:
- D 1 - I - 0x01AD3D 06:AD2D: 9D        .byte $9D   ; 
- D 1 - I - 0x01AD3E 06:AD2E: 30        .byte $30   ; 
- D 1 - I - 0x01AD3F 06:AD2F: 82        .byte $82   ; 
- D 1 - I - 0x01AD40 06:AD30: 3F        .byte $3F   ; 
- D 1 - I - 0x01AD41 06:AD31: 07        .byte $07   ; 
- D 1 - I - 0x01AD42 06:AD32: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD43 06:AD33: 99        .byte $99   ; 



_off016_round_1_1_AD34_160:
- D 1 - I - 0x01AD44 06:AD34: A3        .byte $A3   ; 
- D 1 - I - 0x01AD45 06:AD35: 30        .byte $30   ; 
- D 1 - I - 0x01AD46 06:AD36: 82        .byte $82   ; 
- D 1 - I - 0x01AD47 06:AD37: 21        .byte $21   ; 
- D 1 - I - 0x01AD48 06:AD38: 8D        .byte $8D   ; 
- D 1 - I - 0x01AD49 06:AD39: 92        .byte $92   ; 



_off016_round_1_1_AD3A_162:
- D 1 - I - 0x01AD4A 06:AD3A: 8B        .byte $8B   ; 
- D 1 - I - 0x01AD4B 06:AD3B: 71        .byte $71   ; 
- D 1 - I - 0x01AD4C 06:AD3C: 00        .byte $00   ; 
- D 1 - I - 0x01AD4D 06:AD3D: 71        .byte $71   ; 
- D 1 - I - 0x01AD4E 06:AD3E: 31        .byte $31   ; 
- D 1 - I - 0x01AD4F 06:AD3F: 03        .byte $03   ; 
- D 1 - I - 0x01AD50 06:AD40: 3A        .byte $3A   ; 
- D 1 - I - 0x01AD51 06:AD41: 07        .byte $07   ; 
- D 1 - I - 0x01AD52 06:AD42: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD53 06:AD43: 95        .byte $95   ; 



_off016_round_1_1_AD44_164:
- D 1 - I - 0x01AD54 06:AD44: A1        .byte $A1   ; 
- D 1 - I - 0x01AD55 06:AD45: 54        .byte $54   ; 
- D 1 - I - 0x01AD56 06:AD46: 00        .byte $00   ; 
- D 1 - I - 0x01AD57 06:AD47: 40        .byte $40   ; 
- D 1 - I - 0x01AD58 06:AD48: 48        .byte $48   ; 
- D 1 - I - 0x01AD59 06:AD49: AA        .byte $AA   ; 
- D 1 - I - 0x01AD5A 06:AD4A: 3B        .byte $3B   ; 
- D 1 - I - 0x01AD5B 06:AD4B: 07        .byte $07   ; 
- D 1 - I - 0x01AD5C 06:AD4C: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD5D 06:AD4D: 94        .byte $94   ; 



_off016_round_1_1_AD4E_166:
- D 1 - I - 0x01AD5E 06:AD4E: A1        .byte $A1   ; 
- D 1 - I - 0x01AD5F 06:AD4F: 55        .byte $55   ; 
- D 1 - I - 0x01AD60 06:AD50: 00        .byte $00   ; 
- D 1 - I - 0x01AD61 06:AD51: 41        .byte $41   ; 
- D 1 - I - 0x01AD62 06:AD52: 10        .byte $10   ; 
- D 1 - I - 0x01AD63 06:AD53: AB        .byte $AB   ; 
- D 1 - I - 0x01AD64 06:AD54: 10        .byte $10   ; 
- D 1 - I - 0x01AD65 06:AD55: 43        .byte $43   ; 
- D 1 - I - 0x01AD66 06:AD56: 3C        .byte $3C   ; 
- D 1 - I - 0x01AD67 06:AD57: 07        .byte $07   ; 
- D 1 - I - 0x01AD68 06:AD58: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD69 06:AD59: 95        .byte $95   ; 



_off016_round_1_1_AD5A_168:
- D 1 - I - 0x01AD6A 06:AD5A: A1        .byte $A1   ; 
- D 1 - I - 0x01AD6B 06:AD5B: 4E        .byte $4E   ; 
- D 1 - I - 0x01AD6C 06:AD5C: 88        .byte $88   ; 
- D 1 - I - 0x01AD6D 06:AD5D: 14        .byte $14   ; 
- D 1 - I - 0x01AD6E 06:AD5E: 88        .byte $88   ; 
- D 1 - I - 0x01AD6F 06:AD5F: 14        .byte $14   ; 
- D 1 - I - 0x01AD70 06:AD60: 31        .byte $31   ; 
- D 1 - I - 0x01AD71 06:AD61: 39        .byte $39   ; 
- D 1 - I - 0x01AD72 06:AD62: 07        .byte $07   ; 
- D 1 - I - 0x01AD73 06:AD63: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD74 06:AD64: 94        .byte $94   ; 



_off016_round_1_1_AD65_16A:
_off016_round_1_3_AD65_16A:
- D 1 - I - 0x01AD75 06:AD65: A1        .byte $A1   ; 
- D 1 - I - 0x01AD76 06:AD66: 4F        .byte $4F   ; 
- D 1 - I - 0x01AD77 06:AD67: 93        .byte $93   ; 
- D 1 - I - 0x01AD78 06:AD68: 30        .byte $30   ; 
- D 1 - I - 0x01AD79 06:AD69: 03        .byte $03   ; 
- D 1 - I - 0x01AD7A 06:AD6A: 07        .byte $07   ; 
- D 1 - I - 0x01AD7B 06:AD6B: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD7C 06:AD6C: 95        .byte $95   ; 



_off016_round_1_1_AD6D_16C:
_off016_round_1_3_AD6D_16C:
- D 1 - I - 0x01AD7D 06:AD6D: A3        .byte $A3   ; 
- D 1 - I - 0x01AD7E 06:AD6E: 71        .byte $71   ; 
- D 1 - I - 0x01AD7F 06:AD6F: 31        .byte $31   ; 
- D 1 - I - 0x01AD80 06:AD70: 3A        .byte $3A   ; 
- D 1 - I - 0x01AD81 06:AD71: 07        .byte $07   ; 
- D 1 - I - 0x01AD82 06:AD72: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD83 06:AD73: 94        .byte $94   ; 



_off016_round_1_1_AD74_172:
- D 1 - I - 0x01AD84 06:AD74: 9D        .byte $9D   ; 
- D 1 - I - 0x01AD85 06:AD75: 14        .byte $14   ; 
- D 1 - I - 0x01AD86 06:AD76: 3E        .byte $3E   ; 
- D 1 - I - 0x01AD87 06:AD77: 2E        .byte $2E   ; 
- D 1 - I - 0x01AD88 06:AD78: 7D        .byte $7D   ; 
- D 1 - I - 0x01AD89 06:AD79: 95        .byte $95   ; 



_off016_round_1_1_AD7A_174:
- D 1 - I - 0x01AD8A 06:AD7A: 90        .byte $90   ; 
- D 1 - I - 0x01AD8B 06:AD7B: 08        .byte $08   ; 
- D 1 - I - 0x01AD8C 06:AD7C: 96        .byte $96   ; 
- D 1 - I - 0x01AD8D 06:AD7D: 07        .byte $07   ; 
- D 1 - I - 0x01AD8E 06:AD7E: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD8F 06:AD7F: 92        .byte $92   ; 



_off016_round_1_1_AD80_176:
- D 1 - I - 0x01AD90 06:AD80: 90        .byte $90   ; 
- D 1 - I - 0x01AD91 06:AD81: 09        .byte $09   ; 
- D 1 - I - 0x01AD92 06:AD82: 8B        .byte $8B   ; 
- D 1 - I - 0x01AD93 06:AD83: 30        .byte $30   ; 
- D 1 - I - 0x01AD94 06:AD84: 07        .byte $07   ; 
- D 1 - I - 0x01AD95 06:AD85: 4D        .byte $4D   ; 
- D 1 - I - 0x01AD96 06:AD86: 91        .byte $91   ; 



_off016_round_1_1_AD87_178:
- D 1 - I - 0x01AD97 06:AD87: 90        .byte $90   ; 
- D 1 - I - 0x01AD98 06:AD88: 0A        .byte $0A   ; 
- D 1 - I - 0x01AD99 06:AD89: 8F        .byte $8F   ; 
- D 1 - I - 0x01AD9A 06:AD8A: 30        .byte $30   ; 
- D 1 - I - 0x01AD9B 06:AD8B: 03        .byte $03   ; 
- D 1 - I - 0x01AD9C 06:AD8C: 07        .byte $07   ; 
- D 1 - I - 0x01AD9D 06:AD8D: 4C        .byte $4C   ; 
- D 1 - I - 0x01AD9E 06:AD8E: 92        .byte $92   ; 



_off016_round_1_1_AD8F_17A:
- D 1 - I - 0x01AD9F 06:AD8F: 9D        .byte $9D   ; 
- D 1 - I - 0x01ADA0 06:AD90: 71        .byte $71   ; 
- D 1 - I - 0x01ADA1 06:AD91: 31        .byte $31   ; 
- D 1 - I - 0x01ADA2 06:AD92: 3A        .byte $3A   ; 
- D 1 - I - 0x01ADA3 06:AD93: 07        .byte $07   ; 
- D 1 - I - 0x01ADA4 06:AD94: 4D        .byte $4D   ; 
- D 1 - I - 0x01ADA5 06:AD95: 91        .byte $91   ; 



_off016_round_1_1_AD96_17C:
- D 1 - I - 0x01ADA6 06:AD96: 9D        .byte $9D   ; 
- D 1 - I - 0x01ADA7 06:AD97: 40        .byte $40   ; 
- D 1 - I - 0x01ADA8 06:AD98: 48        .byte $48   ; 
- D 1 - I - 0x01ADA9 06:AD99: 3B        .byte $3B   ; 
- D 1 - I - 0x01ADAA 06:AD9A: 07        .byte $07   ; 
- D 1 - I - 0x01ADAB 06:AD9B: 4C        .byte $4C   ; 
- D 1 - I - 0x01ADAC 06:AD9C: 92        .byte $92   ; 



_off016_round_1_1_AD9D_17E:
- D 1 - I - 0x01ADAD 06:AD9D: 9D        .byte $9D   ; 
- D 1 - I - 0x01ADAE 06:AD9E: 41        .byte $41   ; 
- D 1 - I - 0x01ADAF 06:AD9F: 10        .byte $10   ; 
- D 1 - I - 0x01ADB0 06:ADA0: 3C        .byte $3C   ; 
- D 1 - I - 0x01ADB1 06:ADA1: 07        .byte $07   ; 
- D 1 - I - 0x01ADB2 06:ADA2: 4D        .byte $4D   ; 
- D 1 - I - 0x01ADB3 06:ADA3: 91        .byte $91   ; 



_off016_round_1_1_ADA4_180:
- D 1 - I - 0x01ADB4 06:ADA4: 84        .byte $84   ; 
- D 1 - I - 0x01ADB5 06:ADA5: 14        .byte $14   ; 
- D 1 - I - 0x01ADB6 06:ADA6: 3E        .byte $3E   ; 
- D 1 - I - 0x01ADB7 06:ADA7: 07        .byte $07   ; 
- D 1 - I - 0x01ADB8 06:ADA8: 4C        .byte $4C   ; 
- D 1 - I - 0x01ADB9 06:ADA9: 92        .byte $92   ; 



_off016_round_1_1_ADAA_182:
- D 1 - I - 0x01ADBA 06:ADAA: 8A        .byte $8A   ; 
- D 1 - I - 0x01ADBB 06:ADAB: 73        .byte $73   ; 
- D 1 - I - 0x01ADBC 06:ADAC: 9F        .byte $9F   ; 
- D 1 - I - 0x01ADBD 06:ADAD: 79        .byte $79   ; 



_off016_round_1_1_ADAE_184:
- D 1 - I - 0x01ADBE 06:ADAE: 9E        .byte $9E   ; 
- D 1 - I - 0x01ADBF 06:ADAF: 31        .byte $31   ; 
- D 1 - I - 0x01ADC0 06:ADB0: 03        .byte $03   ; 
- D 1 - I - 0x01ADC1 06:ADB1: 17        .byte $17   ; 
- D 1 - I - 0x01ADC2 06:ADB2: 07        .byte $07   ; 
- D 1 - I - 0x01ADC3 06:ADB3: 78        .byte $78   ; 



_off016_round_1_1_ADB4_186:
- D 1 - I - 0x01ADC4 06:ADB4: A4        .byte $A4   ; 
- D 1 - I - 0x01ADC5 06:ADB5: 31        .byte $31   ; 
- D 1 - I - 0x01ADC6 06:ADB6: 38        .byte $38   ; 
- D 1 - I - 0x01ADC7 06:ADB7: 07        .byte $07   ; 
- D 1 - I - 0x01ADC8 06:ADB8: 79        .byte $79   ; 



_off016_round_1_1_ADB9_188:
- D 1 - I - 0x01ADC9 06:ADB9: 96        .byte $96   ; 
- D 1 - I - 0x01ADCA 06:ADBA: 08        .byte $08   ; 
- D 1 - I - 0x01ADCB 06:ADBB: A0        .byte $A0   ; 
- D 1 - I - 0x01ADCC 06:ADBC: 30        .byte $30   ; 
- D 1 - I - 0x01ADCD 06:ADBD: 03        .byte $03   ; 
- D 1 - I - 0x01ADCE 06:ADBE: 07        .byte $07   ; 
- D 1 - I - 0x01ADCF 06:ADBF: 4C        .byte $4C   ; 



_off016_round_1_1_ADC0_18A:
- D 1 - I - 0x01ADD0 06:ADC0: 8C        .byte $8C   ; 
- D 1 - I - 0x01ADD1 06:ADC1: 62        .byte $62   ; 
- D 1 - I - 0x01ADD2 06:ADC2: 6A        .byte $6A   ; 
- D 1 - I - 0x01ADD3 06:ADC3: 93        .byte $93   ; 
- D 1 - I - 0x01ADD4 06:ADC4: 09        .byte $09   ; 
- D 1 - I - 0x01ADD5 06:ADC5: A0        .byte $A0   ; 
- D 1 - I - 0x01ADD6 06:ADC6: 31        .byte $31   ; 
- D 1 - I - 0x01ADD7 06:ADC7: 03        .byte $03   ; 
- D 1 - I - 0x01ADD8 06:ADC8: 07        .byte $07   ; 
- D 1 - I - 0x01ADD9 06:ADC9: 4D        .byte $4D   ; 



_off016_round_1_1_ADCA_18C:
- D 1 - I - 0x01ADDA 06:ADCA: 8C        .byte $8C   ; 
- D 1 - I - 0x01ADDB 06:ADCB: 63        .byte $63   ; 
- D 1 - I - 0x01ADDC 06:ADCC: 6B        .byte $6B   ; 
- D 1 - I - 0x01ADDD 06:ADCD: 93        .byte $93   ; 
- D 1 - I - 0x01ADDE 06:ADCE: 0A        .byte $0A   ; 
- D 1 - I - 0x01ADDF 06:ADCF: A1        .byte $A1   ; 
- D 1 - I - 0x01ADE0 06:ADD0: 31        .byte $31   ; 
- D 1 - I - 0x01ADE1 06:ADD1: 07        .byte $07   ; 
- D 1 - I - 0x01ADE2 06:ADD2: 4C        .byte $4C   ; 



_off016_round_1_1_ADD3_18E:
_off016_round_1_3_ADD3_0D6:
- D 1 - I - 0x01ADE3 06:ADD3: AC        .byte $AC   ; 
- D 1 - I - 0x01ADE4 06:ADD4: 30        .byte $30   ; 
- D 1 - I - 0x01ADE5 06:ADD5: 07        .byte $07   ; 
- D 1 - I - 0x01ADE6 06:ADD6: 4D        .byte $4D   ; 



_off016_round_1_1_ADD7_190:
_off016_round_1_3_ADD7_1B4:
- D 1 - I - 0x01ADE7 06:ADD7: AC        .byte $AC   ; 
- D 1 - I - 0x01ADE8 06:ADD8: 31        .byte $31   ; 
- D 1 - I - 0x01ADE9 06:ADD9: 07        .byte $07   ; 
- D 1 - I - 0x01ADEA 06:ADDA: 4C        .byte $4C   ; 



_off016_round_1_1_ADDB_192:
- D 1 - I - 0x01ADEB 06:ADDB: A3        .byte $A3   ; 
- D 1 - I - 0x01ADEC 06:ADDC: 64        .byte $64   ; 
- D 1 - I - 0x01ADED 06:ADDD: 06        .byte $06   ; 
- D 1 - I - 0x01ADEE 06:ADDE: 90        .byte $90   ; 
- D 1 - I - 0x01ADEF 06:ADDF: 30        .byte $30   ; 
- D 1 - I - 0x01ADF0 06:ADE0: 07        .byte $07   ; 
- D 1 - I - 0x01ADF1 06:ADE1: 4D        .byte $4D   ; 



_off016_round_1_1_ADE2_194:
_off016_round_1_1_ADE2_1C4:
- D 1 - I - 0x01ADF2 06:ADE2: 9E        .byte $9E   ; 
- D 1 - I - 0x01ADF3 06:ADE3: 2F        .byte $2F   ; 
- D 1 - I - 0x01ADF4 06:ADE4: 9A        .byte $9A   ; 
- D 1 - I - 0x01ADF5 06:ADE5: 78        .byte $78   ; 



_off016_round_1_1_ADE6_196:
- D 1 - I - 0x01ADF6 06:ADE6: 84        .byte $84   ; 
- D 1 - I - 0x01ADF7 06:ADE7: 08        .byte $08   ; 
- D 1 - I - 0x01ADF8 06:ADE8: 88        .byte $88   ; 
- D 1 - I - 0x01ADF9 06:ADE9: 07        .byte $07   ; 
- D 1 - I - 0x01ADFA 06:ADEA: 4D        .byte $4D   ; 
- D 1 - I - 0x01ADFB 06:ADEB: 99        .byte $99   ; 



_off016_round_1_1_ADEC_198:
- D 1 - I - 0x01ADFC 06:ADEC: 84        .byte $84   ; 
- D 1 - I - 0x01ADFD 06:ADED: 09        .byte $09   ; 
- D 1 - I - 0x01ADFE 06:ADEE: 88        .byte $88   ; 
- D 1 - I - 0x01ADFF 06:ADEF: 07        .byte $07   ; 
- D 1 - I - 0x01AE00 06:ADF0: 4C        .byte $4C   ; 
- D 1 - I - 0x01AE01 06:ADF1: 8E        .byte $8E   ; 



_off016_round_1_1_ADF2_19A:
- D 1 - I - 0x01AE02 06:ADF2: 84        .byte $84   ; 
- D 1 - I - 0x01AE03 06:ADF3: 0A        .byte $0A   ; 
- D 1 - I - 0x01AE04 06:ADF4: 88        .byte $88   ; 
- D 1 - I - 0x01AE05 06:ADF5: 2E        .byte $2E   ; 
- D 1 - I - 0x01AE06 06:ADF6: 9F        .byte $9F   ; 



_off016_round_1_1_ADF7_1A4:
- D 1 - I - 0x01AE07 06:ADF7: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE08 06:ADF8: 2F        .byte $2F   ; 
- D 1 - I - 0x01AE09 06:ADF9: A2        .byte $A2   ; 



_off016_round_1_1_ADFA_1A6:
_off016_round_1_1_ADFA_1C6:
_off016_round_1_1_ADFA_1CA:
_off016_round_1_1_ADFA_1CE:
_off016_round_1_1_ADFA_1DE:
_off016_round_1_3_ADFA_1AA:
- D 1 - I - 0x01AE0A 06:ADFA: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE0B 06:ADFB: 07        .byte $07   ; 
- D 1 - I - 0x01AE0C 06:ADFC: 4D        .byte $4D   ; 
- D 1 - I - 0x01AE0D 06:ADFD: 99        .byte $99   ; 



_off016_round_1_1_ADFE_1AA:
_off016_round_1_1_ADFE_1E2:
- D 1 - I - 0x01AE0E 06:ADFE: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE0F 06:ADFF: 2E        .byte $2E   ; 
- D 1 - I - 0x01AE10 06:AE00: AD        .byte $AD   ; 
- D 1 - I - 0x01AE11 06:AE01: 79        .byte $79   ; 



_off016_round_1_1_AE02_1AC:
_off016_round_1_3_AE02_1E0:
- D 1 - I - 0x01AE12 06:AE02: A4        .byte $A4   ; 
- D 1 - I - 0x01AE13 06:AE03: 31        .byte $31   ; 
- D 1 - I - 0x01AE14 06:AE04: 38        .byte $38   ; 
- D 1 - I - 0x01AE15 06:AE05: 07        .byte $07   ; 
- D 1 - I - 0x01AE16 06:AE06: 4C        .byte $4C   ; 



_off016_round_1_1_AE07_1AE:
_off016_round_1_3_AE07_0CE:
_off016_round_1_3_AE07_182:
_off016_round_1_3_AE07_1EE:
- D 1 - I - 0x01AE17 06:AE07: A4        .byte $A4   ; 
- D 1 - I - 0x01AE18 06:AE08: 30        .byte $30   ; 
- D 1 - I - 0x01AE19 06:AE09: 03        .byte $03   ; 
- D 1 - I - 0x01AE1A 06:AE0A: 07        .byte $07   ; 
- D 1 - I - 0x01AE1B 06:AE0B: 4D        .byte $4D   ; 



_off016_round_1_1_AE0C_1B0:
_off016_round_1_3_AE0C_0C8:
- D 1 - I - 0x01AE1C 06:AE0C: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE1D 06:AE0D: 30        .byte $30   ; 
- D 1 - I - 0x01AE1E 06:AE0E: 03        .byte $03   ; 
- D 1 - I - 0x01AE1F 06:AE0F: 17        .byte $17   ; 
- D 1 - I - 0x01AE20 06:AE10: 07        .byte $07   ; 
- D 1 - I - 0x01AE21 06:AE11: 4C        .byte $4C   ; 



_off016_round_1_1_AE12_1B2:
- D 1 - I - 0x01AE22 06:AE12: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE23 06:AE13: 31        .byte $31   ; 
- D 1 - I - 0x01AE24 06:AE14: 82        .byte $82   ; 
- D 1 - I - 0x01AE25 06:AE15: 07        .byte $07   ; 
- D 1 - I - 0x01AE26 06:AE16: 4D        .byte $4D   ; 



_off016_round_1_1_AE17_1B4:
_off016_round_1_3_AE17_184:
- D 1 - I - 0x01AE27 06:AE17: A4        .byte $A4   ; 
- D 1 - I - 0x01AE28 06:AE18: 31        .byte $31   ; 
- D 1 - I - 0x01AE29 06:AE19: 3F        .byte $3F   ; 
- D 1 - I - 0x01AE2A 06:AE1A: 07        .byte $07   ; 
- D 1 - I - 0x01AE2B 06:AE1B: 4C        .byte $4C   ; 



_off016_round_1_1_AE1C_1B6:
- D 1 - I - 0x01AE2C 06:AE1C: 81        .byte $81   ; 
- D 1 - I - 0x01AE2D 06:AE1D: 0D        .byte $0D   ; 
- D 1 - I - 0x01AE2E 06:AE1E: 88        .byte $88   ; 
- D 1 - I - 0x01AE2F 06:AE1F: 30        .byte $30   ; 
- D 1 - I - 0x01AE30 06:AE20: 17        .byte $17   ; 
- D 1 - I - 0x01AE31 06:AE21: 07        .byte $07   ; 
- D 1 - I - 0x01AE32 06:AE22: 4D        .byte $4D   ; 



_off016_round_1_1_AE23_1B8:
- D 1 - I - 0x01AE33 06:AE23: 81        .byte $81   ; 
- D 1 - I - 0x01AE34 06:AE24: 0E        .byte $0E   ; 
- D 1 - I - 0x01AE35 06:AE25: 88        .byte $88   ; 
- D 1 - I - 0x01AE36 06:AE26: 31        .byte $31   ; 
- D 1 - I - 0x01AE37 06:AE27: 38        .byte $38   ; 
- D 1 - I - 0x01AE38 06:AE28: 07        .byte $07   ; 
- D 1 - I - 0x01AE39 06:AE29: 4C        .byte $4C   ; 



_off016_round_1_1_AE2A_1BA:
- D 1 - I - 0x01AE3A 06:AE2A: 87        .byte $87   ; 
- D 1 - I - 0x01AE3B 06:AE2B: 08        .byte $08   ; 
- D 1 - I - 0x01AE3C 06:AE2C: 93        .byte $93   ; 
- D 1 - I - 0x01AE3D 06:AE2D: 30        .byte $30   ; 
- D 1 - I - 0x01AE3E 06:AE2E: 03        .byte $03   ; 
- D 1 - I - 0x01AE3F 06:AE2F: 07        .byte $07   ; 
- D 1 - I - 0x01AE40 06:AE30: 4D        .byte $4D   ; 



_off016_round_1_1_AE31_1BC:
- D 1 - I - 0x01AE41 06:AE31: 87        .byte $87   ; 
- D 1 - I - 0x01AE42 06:AE32: 09        .byte $09   ; 
- D 1 - I - 0x01AE43 06:AE33: 90        .byte $90   ; 
- D 1 - I - 0x01AE44 06:AE34: 30        .byte $30   ; 
- D 1 - I - 0x01AE45 06:AE35: 82        .byte $82   ; 
- D 1 - I - 0x01AE46 06:AE36: 07        .byte $07   ; 
- D 1 - I - 0x01AE47 06:AE37: 4C        .byte $4C   ; 



_off016_round_1_1_AE38_1BE:
- D 1 - I - 0x01AE48 06:AE38: 87        .byte $87   ; 
- D 1 - I - 0x01AE49 06:AE39: 0A        .byte $0A   ; 
- D 1 - I - 0x01AE4A 06:AE3A: 90        .byte $90   ; 
- D 1 - I - 0x01AE4B 06:AE3B: 31        .byte $31   ; 
- D 1 - I - 0x01AE4C 06:AE3C: 82        .byte $82   ; 
- D 1 - I - 0x01AE4D 06:AE3D: 07        .byte $07   ; 
- D 1 - I - 0x01AE4E 06:AE3E: 4D        .byte $4D   ; 



_off016_round_1_1_AE3F_1C0:
_off016_round_1_1_AE3F_1EC:
- D 1 - I - 0x01AE4F 06:AE3F: A4        .byte $A4   ; 
- D 1 - I - 0x01AE50 06:AE40: 31        .byte $31   ; 
- D 1 - I - 0x01AE51 06:AE41: 03        .byte $03   ; 
- D 1 - I - 0x01AE52 06:AE42: 07        .byte $07   ; 
- D 1 - I - 0x01AE53 06:AE43: 4C        .byte $4C   ; 



_off016_round_1_1_AE44_1C2:
_off016_round_1_3_AE44_186:
_off016_round_1_3_AE44_192:
- D 1 - I - 0x01AE54 06:AE44: A4        .byte $A4   ; 
- D 1 - I - 0x01AE55 06:AE45: 30        .byte $30   ; 
- D 1 - I - 0x01AE56 06:AE46: 17        .byte $17   ; 
- D 1 - I - 0x01AE57 06:AE47: 07        .byte $07   ; 
- D 1 - I - 0x01AE58 06:AE48: 4D        .byte $4D   ; 



_off016_round_1_1_AE49_1D0:
- D 1 - I - 0x01AE59 06:AE49: 81        .byte $81   ; 
- D 1 - I - 0x01AE5A 06:AE4A: 2F        .byte $2F   ; 
- D 1 - I - 0x01AE5B 06:AE4B: 8D        .byte $8D   ; 
- D 1 - I - 0x01AE5C 06:AE4C: 92        .byte $92   ; 



_off016_round_1_1_AE4D_1D4:
_off016_round_1_2_AE4D_17C:
- D 1 - I - 0x01AE5D 06:AE4D: 81        .byte $81   ; 
- D 1 - I - 0x01AE5E 06:AE4E: 07        .byte $07   ; 
- D 1 - I - 0x01AE5F 06:AE4F: 4C        .byte $4C   ; 
- D 1 - I - 0x01AE60 06:AE50: 94        .byte $94   ; 



_off016_round_1_1_AE51_1D8:
- D 1 - I - 0x01AE61 06:AE51: 9D        .byte $9D   ; 
- D 1 - I - 0x01AE62 06:AE52: 08        .byte $08   ; 
- D 1 - I - 0x01AE63 06:AE53: 00        .byte $00   ; 
- D 1 - I - 0x01AE64 06:AE54: 07        .byte $07   ; 
- D 1 - I - 0x01AE65 06:AE55: 4C        .byte $4C   ; 
- D 1 - I - 0x01AE66 06:AE56: 94        .byte $94   ; 



_off016_round_1_1_AE57_1DA:
- D 1 - I - 0x01AE67 06:AE57: 9D        .byte $9D   ; 
- D 1 - I - 0x01AE68 06:AE58: 09        .byte $09   ; 
- D 1 - I - 0x01AE69 06:AE59: 00        .byte $00   ; 
- D 1 - I - 0x01AE6A 06:AE5A: 2E        .byte $2E   ; 
- D 1 - I - 0x01AE6B 06:AE5B: 97        .byte $97   ; 
- D 1 - I - 0x01AE6C 06:AE5C: 91        .byte $91   ; 



_off016_round_1_1_AE5D_1DC:
- D 1 - I - 0x01AE6D 06:AE5D: 9D        .byte $9D   ; 
- D 1 - I - 0x01AE6E 06:AE5E: 0A        .byte $0A   ; 
- D 1 - I - 0x01AE6F 06:AE5F: 89        .byte $89   ; 
- D 1 - I - 0x01AE70 06:AE60: 07        .byte $07   ; 
- D 1 - I - 0x01AE71 06:AE61: 4C        .byte $4C   ; 
- D 1 - I - 0x01AE72 06:AE62: 8E        .byte $8E   ; 



_off016_round_1_1_AE63_1E4:
_off016_round_1_3_AE63_0CC:
- D 1 - I - 0x01AE73 06:AE63: A4        .byte $A4   ; 
- D 1 - I - 0x01AE74 06:AE64: 31        .byte $31   ; 
- D 1 - I - 0x01AE75 06:AE65: 17        .byte $17   ; 
- D 1 - I - 0x01AE76 06:AE66: 07        .byte $07   ; 
- D 1 - I - 0x01AE77 06:AE67: 4C        .byte $4C   ; 



_off016_round_1_1_AE68_1E6:
- D 1 - I - 0x01AE78 06:AE68: A4        .byte $A4   ; 
- D 1 - I - 0x01AE79 06:AE69: 30        .byte $30   ; 
- D 1 - I - 0x01AE7A 06:AE6A: 3F        .byte $3F   ; 
- D 1 - I - 0x01AE7B 06:AE6B: 07        .byte $07   ; 
- D 1 - I - 0x01AE7C 06:AE6C: 4D        .byte $4D   ; 



_off016_round_1_1_AE6D_1E8:
- D 1 - I - 0x01AE7D 06:AE6D: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE7E 06:AE6E: 30        .byte $30   ; 
- D 1 - I - 0x01AE7F 06:AE6F: 82        .byte $82   ; 
- D 1 - I - 0x01AE80 06:AE70: 07        .byte $07   ; 
- D 1 - I - 0x01AE81 06:AE71: 4C        .byte $4C   ; 



_off016_round_1_1_AE72_1EA:
- D 1 - I - 0x01AE82 06:AE72: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE83 06:AE73: 31        .byte $31   ; 
- D 1 - I - 0x01AE84 06:AE74: 38        .byte $38   ; 
- D 1 - I - 0x01AE85 06:AE75: 17        .byte $17   ; 
- D 1 - I - 0x01AE86 06:AE76: 07        .byte $07   ; 
- D 1 - I - 0x01AE87 06:AE77: 4D        .byte $4D   ; 



_off016_round_1_1_AE78_1EE:
- D 1 - I - 0x01AE88 06:AE78: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE89 06:AE79: 54        .byte $54   ; 
- D 1 - I - 0x01AE8A 06:AE7A: 00        .byte $00   ; 
- D 1 - I - 0x01AE8B 06:AE7B: 31        .byte $31   ; 
- D 1 - I - 0x01AE8C 06:AE7C: 07        .byte $07   ; 
- D 1 - I - 0x01AE8D 06:AE7D: 4D        .byte $4D   ; 



_off016_round_1_1_AE7E_1F0:
- D 1 - I - 0x01AE8E 06:AE7E: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE8F 06:AE7F: 55        .byte $55   ; 
- D 1 - I - 0x01AE90 06:AE80: 00        .byte $00   ; 
- D 1 - I - 0x01AE91 06:AE81: 30        .byte $30   ; 
- D 1 - I - 0x01AE92 06:AE82: 07        .byte $07   ; 
- D 1 - I - 0x01AE93 06:AE83: 4C        .byte $4C   ; 



_off016_round_1_1_AE84_1F2:
- D 1 - I - 0x01AE94 06:AE84: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE95 06:AE85: 6F        .byte $6F   ; 
- D 1 - I - 0x01AE96 06:AE86: 30        .byte $30   ; 
- D 1 - I - 0x01AE97 06:AE87: 03        .byte $03   ; 
- D 1 - I - 0x01AE98 06:AE88: 07        .byte $07   ; 
- D 1 - I - 0x01AE99 06:AE89: 4D        .byte $4D   ; 



_off016_round_1_1_AE8A_1F4:
- D 1 - I - 0x01AE9A 06:AE8A: 9E        .byte $9E   ; 
- D 1 - I - 0x01AE9B 06:AE8B: 4F        .byte $4F   ; 
- D 1 - I - 0x01AE9C 06:AE8C: 31        .byte $31   ; 
- D 1 - I - 0x01AE9D 06:AE8D: 38        .byte $38   ; 
- D 1 - I - 0x01AE9E 06:AE8E: 07        .byte $07   ; 
- D 1 - I - 0x01AE9F 06:AE8F: 4C        .byte $4C   ; 



_off016_round_1_1_AE90_1F6:
_off016_round_1_3_AE90_18E:
_off016_round_1_3_AE90_1E2:
- D 1 - I - 0x01AEA0 06:AE90: AC        .byte $AC   ; 
- D 1 - I - 0x01AEA1 06:AE91: 31        .byte $31   ; 
- D 1 - I - 0x01AEA2 06:AE92: 07        .byte $07   ; 
- D 1 - I - 0x01AEA3 06:AE93: 4D        .byte $4D   ; 



_off016_round_1_1_AE94_1F8:
_off016_round_1_3_AE94_1F8:
- D 1 - I - 0x01AEA4 06:AE94: AE        .byte $AE   ; 
- D 1 - I - 0x01AEA5 06:AE95: 57        .byte $57   ; 
- D 1 - I - 0x01AEA6 06:AE96: AF        .byte $AF   ; 
- D 1 - I - 0x01AEA7 06:AE97: 07        .byte $07   ; 
- D 1 - I - 0x01AEA8 06:AE98: 4C        .byte $4C   ; 



_off016_round_1_1_AE99_1FA:
_off016_round_1_3_AE99_1FA:
- D 1 - I - 0x01AEA9 06:AE99: B0        .byte $B0   ; 
- D 1 - I - 0x01AEAA 06:AE9A: B1        .byte $B1   ; 
- D 1 - I - 0x01AEAB 06:AE9B: 65        .byte $65   ; 
- D 1 - I - 0x01AEAC 06:AE9C: 07        .byte $07   ; 
- D 1 - I - 0x01AEAD 06:AE9D: 4D        .byte $4D   ; 



_off016_round_1_1_AE9E_1FC:
_off016_round_1_3_AE9E_1FC:
- D 1 - I - 0x01AEAE 06:AE9E: B0        .byte $B0   ; 
- D 1 - I - 0x01AEAF 06:AE9F: B1        .byte $B1   ; 
- D 1 - I - 0x01AEB0 06:AEA0: 66        .byte $66   ; 
- D 1 - I - 0x01AEB1 06:AEA1: 07        .byte $07   ; 
- D 1 - I - 0x01AEB2 06:AEA2: 4C        .byte $4C   ; 



_off016_round_1_1_AEA3_1FE:
_off016_round_1_3_AEA3_1FE:
- D 1 - I - 0x01AEB3 06:AEA3: B0        .byte $B0   ; 
- D 1 - I - 0x01AEB4 06:AEA4: B2        .byte $B2   ; 
- D 1 - I - 0x01AEB5 06:AEA5: 07        .byte $07   ; 
- D 1 - I - 0x01AEB6 06:AEA6: 4D        .byte $4D   ; 



_off016_round_1_2_AEA7_000:
- D 1 - I - 0x01AEB7 06:AEA7: A3        .byte $A3   ; 
- D 1 - I - 0x01AEB8 06:AEA8: 31        .byte $31   ; 
- D 1 - I - 0x01AEB9 06:AEA9: 38        .byte $38   ; 
- D 1 - I - 0x01AEBA 06:AEAA: 82        .byte $82   ; 
- D 1 - I - 0x01AEBB 06:AEAB: 07        .byte $07   ; 
- D 1 - I - 0x01AEBC 06:AEAC: 4C        .byte $4C   ; 
- D 1 - I - 0x01AEBD 06:AEAD: 78        .byte $78   ; 
- D 1 - I - 0x01AEBE 06:AEAE: 74        .byte $74   ; 
- D 1 - I - 0x01AEBF 06:AEAF: 5E        .byte $5E   ; 
- D 1 - I - 0x01AEC0 06:AEB0: 58        .byte $58   ; 



_off016_round_1_2_AEB1_002:
- D 1 - I - 0x01AEC1 06:AEB1: 9D        .byte $9D   ; 
- D 1 - I - 0x01AEC2 06:AEB2: 31        .byte $31   ; 
- D 1 - I - 0x01AEC3 06:AEB3: 38        .byte $38   ; 
- D 1 - I - 0x01AEC4 06:AEB4: 17        .byte $17   ; 
- D 1 - I - 0x01AEC5 06:AEB5: 07        .byte $07   ; 
- D 1 - I - 0x01AEC6 06:AEB6: 4D        .byte $4D   ; 
- D 1 - I - 0x01AEC7 06:AEB7: 79        .byte $79   ; 
- D 1 - I - 0x01AEC8 06:AEB8: 75        .byte $75   ; 
- D 1 - I - 0x01AEC9 06:AEB9: 5F        .byte $5F   ; 
- D 1 - I - 0x01AECA 06:AEBA: 59        .byte $59   ; 



_off016_round_1_2_AEBB_004:
- D 1 - I - 0x01AECB 06:AEBB: 98        .byte $98   ; 
- D 1 - I - 0x01AECC 06:AEBC: 08        .byte $08   ; 
- D 1 - I - 0x01AECD 06:AEBD: 90        .byte $90   ; 
- D 1 - I - 0x01AECE 06:AEBE: 30        .byte $30   ; 
- D 1 - I - 0x01AECF 06:AEBF: 82        .byte $82   ; 
- D 1 - I - 0x01AED0 06:AEC0: 07        .byte $07   ; 
- D 1 - I - 0x01AED1 06:AEC1: 4C        .byte $4C   ; 
- D 1 - I - 0x01AED2 06:AEC2: 78        .byte $78   ; 
- D 1 - I - 0x01AED3 06:AEC3: 74        .byte $74   ; 
- D 1 - I - 0x01AED4 06:AEC4: 5E        .byte $5E   ; 
- D 1 - I - 0x01AED5 06:AEC5: 58        .byte $58   ; 



_off016_round_1_2_AEC6_006:
- D 1 - I - 0x01AED6 06:AEC6: 98        .byte $98   ; 
- D 1 - I - 0x01AED7 06:AEC7: 09        .byte $09   ; 
- D 1 - I - 0x01AED8 06:AEC8: 90        .byte $90   ; 
- D 1 - I - 0x01AED9 06:AEC9: 31        .byte $31   ; 
- D 1 - I - 0x01AEDA 06:AECA: 03        .byte $03   ; 
- D 1 - I - 0x01AEDB 06:AECB: 17        .byte $17   ; 
- D 1 - I - 0x01AEDC 06:AECC: 07        .byte $07   ; 
- D 1 - I - 0x01AEDD 06:AECD: 4D        .byte $4D   ; 
- D 1 - I - 0x01AEDE 06:AECE: 79        .byte $79   ; 
- D 1 - I - 0x01AEDF 06:AECF: 75        .byte $75   ; 
- D 1 - I - 0x01AEE0 06:AED0: 5F        .byte $5F   ; 
- D 1 - I - 0x01AEE1 06:AED1: 59        .byte $59   ; 



_off016_round_1_2_AED2_008:
_off016_round_1_2_AED2_070:
- D 1 - I - 0x01AEE2 06:AED2: 98        .byte $98   ; 
- D 1 - I - 0x01AEE3 06:AED3: 0A        .byte $0A   ; 
- D 1 - I - 0x01AEE4 06:AED4: 8C        .byte $8C   ; 
- D 1 - I - 0x01AEE5 06:AED5: 49        .byte $49   ; 
- D 1 - I - 0x01AEE6 06:AED6: 5C        .byte $5C   ; 
- D 1 - I - 0x01AEE7 06:AED7: B3        .byte $B3   ; 
- D 1 - I - 0x01AEE8 06:AED8: 07        .byte $07   ; 
- D 1 - I - 0x01AEE9 06:AED9: 4C        .byte $4C   ; 
- D 1 - I - 0x01AEEA 06:AEDA: 78        .byte $78   ; 
- D 1 - I - 0x01AEEB 06:AEDB: 74        .byte $74   ; 
- D 1 - I - 0x01AEEC 06:AEDC: 5E        .byte $5E   ; 
- D 1 - I - 0x01AEED 06:AEDD: 58        .byte $58   ; 



_off016_round_1_2_AEDE_00A:
- D 1 - I - 0x01AEEE 06:AEDE: 87        .byte $87   ; 
- D 1 - I - 0x01AEEF 06:AEDF: 22        .byte $22   ; 
- D 1 - I - 0x01AEF0 06:AEE0: 0C        .byte $0C   ; 
- D 1 - I - 0x01AEF1 06:AEE1: 69        .byte $69   ; 
- D 1 - I - 0x01AEF2 06:AEE2: B4        .byte $B4   ; 
- D 1 - I - 0x01AEF3 06:AEE3: 07        .byte $07   ; 
- D 1 - I - 0x01AEF4 06:AEE4: 4D        .byte $4D   ; 
- D 1 - I - 0x01AEF5 06:AEE5: 79        .byte $79   ; 
- D 1 - I - 0x01AEF6 06:AEE6: 75        .byte $75   ; 
- D 1 - I - 0x01AEF7 06:AEE7: 5F        .byte $5F   ; 
- D 1 - I - 0x01AEF8 06:AEE8: 59        .byte $59   ; 



_off016_round_1_2_AEE9_00C:
- D 1 - I - 0x01AEF9 06:AEE9: 87        .byte $87   ; 
- D 1 - I - 0x01AEFA 06:AEEA: 23        .byte $23   ; 
- D 1 - I - 0x01AEFB 06:AEEB: 0C        .byte $0C   ; 
- D 1 - I - 0x01AEFC 06:AEEC: 69        .byte $69   ; 
- D 1 - I - 0x01AEFD 06:AEED: B4        .byte $B4   ; 
- D 1 - I - 0x01AEFE 06:AEEE: 07        .byte $07   ; 
- D 1 - I - 0x01AEFF 06:AEEF: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF00 06:AEF0: 78        .byte $78   ; 
- D 1 - I - 0x01AF01 06:AEF1: 74        .byte $74   ; 
- D 1 - I - 0x01AF02 06:AEF2: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF03 06:AEF3: 58        .byte $58   ; 



_off016_round_1_2_AEF4_00E:
_off016_round_1_2_AEF4_072:
- D 1 - I - 0x01AF04 06:AEF4: A3        .byte $A3   ; 
- D 1 - I - 0x01AF05 06:AEF5: 0C        .byte $0C   ; 
- D 1 - I - 0x01AF06 06:AEF6: 69        .byte $69   ; 
- D 1 - I - 0x01AF07 06:AEF7: B4        .byte $B4   ; 
- D 1 - I - 0x01AF08 06:AEF8: 07        .byte $07   ; 
- D 1 - I - 0x01AF09 06:AEF9: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF0A 06:AEFA: 79        .byte $79   ; 
- D 1 - I - 0x01AF0B 06:AEFB: 75        .byte $75   ; 
- D 1 - I - 0x01AF0C 06:AEFC: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF0D 06:AEFD: 59        .byte $59   ; 



_off016_round_1_2_AEFE_010:
_off016_round_1_2_AEFE_07C:
_off016_round_1_3_AEFE_048:
- D 1 - I - 0x01AF0E 06:AEFE: A3        .byte $A3   ; 
- D 1 - I - 0x01AF0F 06:AEFF: 0C        .byte $0C   ; 
- D 1 - I - 0x01AF10 06:AF00: 69        .byte $69   ; 
- D 1 - I - 0x01AF11 06:AF01: B4        .byte $B4   ; 
- D 1 - I - 0x01AF12 06:AF02: 07        .byte $07   ; 
- D 1 - I - 0x01AF13 06:AF03: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF14 06:AF04: 78        .byte $78   ; 
- D 1 - I - 0x01AF15 06:AF05: 74        .byte $74   ; 
- D 1 - I - 0x01AF16 06:AF06: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF17 06:AF07: 58        .byte $58   ; 



_off016_round_1_2_AF08_012:
_off016_round_1_2_AF08_07E:
_off016_round_1_3_AF08_04A:
- D 1 - I - 0x01AF18 06:AF08: A3        .byte $A3   ; 
- D 1 - I - 0x01AF19 06:AF09: 51        .byte $51   ; 
- D 1 - I - 0x01AF1A 06:AF0A: 5D        .byte $5D   ; 
- D 1 - I - 0x01AF1B 06:AF0B: B5        .byte $B5   ; 
- D 1 - I - 0x01AF1C 06:AF0C: 07        .byte $07   ; 
- D 1 - I - 0x01AF1D 06:AF0D: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF1E 06:AF0E: 79        .byte $79   ; 
- D 1 - I - 0x01AF1F 06:AF0F: 75        .byte $75   ; 
- D 1 - I - 0x01AF20 06:AF10: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF21 06:AF11: 59        .byte $59   ; 



_off016_round_1_2_AF12_014:
- D 1 - I - 0x01AF22 06:AF12: 84        .byte $84   ; 
- D 1 - I - 0x01AF23 06:AF13: 31        .byte $31   ; 
- D 1 - I - 0x01AF24 06:AF14: 3F        .byte $3F   ; 
- D 1 - I - 0x01AF25 06:AF15: 07        .byte $07   ; 
- D 1 - I - 0x01AF26 06:AF16: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF27 06:AF17: 78        .byte $78   ; 
- D 1 - I - 0x01AF28 06:AF18: 74        .byte $74   ; 
- D 1 - I - 0x01AF29 06:AF19: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF2A 06:AF1A: 58        .byte $58   ; 



_off016_round_1_2_AF1B_016:
_off016_round_1_2_AF1B_01A:
_off016_round_1_2_AF1B_01E:
- D 1 - I - 0x01AF2B 06:AF1B: 81        .byte $81   ; 
- D 1 - I - 0x01AF2C 06:AF1C: 31        .byte $31   ; 
- D 1 - I - 0x01AF2D 06:AF1D: 07        .byte $07   ; 
- D 1 - I - 0x01AF2E 06:AF1E: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF2F 06:AF1F: 79        .byte $79   ; 
- D 1 - I - 0x01AF30 06:AF20: 75        .byte $75   ; 
- D 1 - I - 0x01AF31 06:AF21: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF32 06:AF22: 59        .byte $59   ; 



_off016_round_1_2_AF23_018:
_off016_round_1_2_AF23_01C:
- D 1 - I - 0x01AF33 06:AF23: 81        .byte $81   ; 
- D 1 - I - 0x01AF34 06:AF24: 30        .byte $30   ; 
- D 1 - I - 0x01AF35 06:AF25: 07        .byte $07   ; 
- D 1 - I - 0x01AF36 06:AF26: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF37 06:AF27: 78        .byte $78   ; 
- D 1 - I - 0x01AF38 06:AF28: 74        .byte $74   ; 
- D 1 - I - 0x01AF39 06:AF29: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF3A 06:AF2A: 58        .byte $58   ; 



_off016_round_1_2_AF2B_020:
- D 1 - I - 0x01AF3B 06:AF2B: 87        .byte $87   ; 
- D 1 - I - 0x01AF3C 06:AF2C: 54        .byte $54   ; 
- D 1 - I - 0x01AF3D 06:AF2D: 89        .byte $89   ; 
- D 1 - I - 0x01AF3E 06:AF2E: 30        .byte $30   ; 
- D 1 - I - 0x01AF3F 06:AF2F: 07        .byte $07   ; 
- D 1 - I - 0x01AF40 06:AF30: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF41 06:AF31: 78        .byte $78   ; 
- D 1 - I - 0x01AF42 06:AF32: 74        .byte $74   ; 
- D 1 - I - 0x01AF43 06:AF33: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF44 06:AF34: 58        .byte $58   ; 



_off016_round_1_2_AF35_022:
- D 1 - I - 0x01AF45 06:AF35: 87        .byte $87   ; 
- D 1 - I - 0x01AF46 06:AF36: 55        .byte $55   ; 
- D 1 - I - 0x01AF47 06:AF37: 88        .byte $88   ; 
- D 1 - I - 0x01AF48 06:AF38: 30        .byte $30   ; 
- D 1 - I - 0x01AF49 06:AF39: 03        .byte $03   ; 
- D 1 - I - 0x01AF4A 06:AF3A: 07        .byte $07   ; 
- D 1 - I - 0x01AF4B 06:AF3B: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF4C 06:AF3C: 79        .byte $79   ; 
- D 1 - I - 0x01AF4D 06:AF3D: 75        .byte $75   ; 
- D 1 - I - 0x01AF4E 06:AF3E: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF4F 06:AF3F: 59        .byte $59   ; 



_off016_round_1_2_AF40_024:
- D 1 - I - 0x01AF50 06:AF40: 87        .byte $87   ; 
- D 1 - I - 0x01AF51 06:AF41: 4E        .byte $4E   ; 
- D 1 - I - 0x01AF52 06:AF42: 88        .byte $88   ; 
- D 1 - I - 0x01AF53 06:AF43: 31        .byte $31   ; 
- D 1 - I - 0x01AF54 06:AF44: 38        .byte $38   ; 
- D 1 - I - 0x01AF55 06:AF45: 07        .byte $07   ; 
- D 1 - I - 0x01AF56 06:AF46: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF57 06:AF47: 78        .byte $78   ; 
- D 1 - I - 0x01AF58 06:AF48: 74        .byte $74   ; 
- D 1 - I - 0x01AF59 06:AF49: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF5A 06:AF4A: 58        .byte $58   ; 



_off016_round_1_2_AF4B_026:
- D 1 - I - 0x01AF5B 06:AF4B: 87        .byte $87   ; 
- D 1 - I - 0x01AF5C 06:AF4C: 4F        .byte $4F   ; 
- D 1 - I - 0x01AF5D 06:AF4D: 89        .byte $89   ; 
- D 1 - I - 0x01AF5E 06:AF4E: 31        .byte $31   ; 
- D 1 - I - 0x01AF5F 06:AF4F: 07        .byte $07   ; 
- D 1 - I - 0x01AF60 06:AF50: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF61 06:AF51: 79        .byte $79   ; 
- D 1 - I - 0x01AF62 06:AF52: 75        .byte $75   ; 
- D 1 - I - 0x01AF63 06:AF53: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF64 06:AF54: 59        .byte $59   ; 



_off016_round_1_2_AF55_028:
- D 1 - I - 0x01AF65 06:AF55: A0        .byte $A0   ; 
- D 1 - I - 0x01AF66 06:AF56: 08        .byte $08   ; 
- D 1 - I - 0x01AF67 06:AF57: A1        .byte $A1   ; 
- D 1 - I - 0x01AF68 06:AF58: 2F        .byte $2F   ; 
- D 1 - I - 0x01AF69 06:AF59: B6        .byte $B6   ; 
- D 1 - I - 0x01AF6A 06:AF5A: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF6B 06:AF5B: 58        .byte $58   ; 



_off016_round_1_2_AF5C_02A:
- D 1 - I - 0x01AF6C 06:AF5C: A0        .byte $A0   ; 
- D 1 - I - 0x01AF6D 06:AF5D: 09        .byte $09   ; 
- D 1 - I - 0x01AF6E 06:AF5E: A1        .byte $A1   ; 
- D 1 - I - 0x01AF6F 06:AF5F: 07        .byte $07   ; 
- D 1 - I - 0x01AF70 06:AF60: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF71 06:AF61: 99        .byte $99   ; 
- D 1 - I - 0x01AF72 06:AF62: 75        .byte $75   ; 
- D 1 - I - 0x01AF73 06:AF63: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF74 06:AF64: 59        .byte $59   ; 



_off016_round_1_2_AF65_02C:
- D 1 - I - 0x01AF75 06:AF65: A0        .byte $A0   ; 
- D 1 - I - 0x01AF76 06:AF66: 0A        .byte $0A   ; 
- D 1 - I - 0x01AF77 06:AF67: A1        .byte $A1   ; 
- D 1 - I - 0x01AF78 06:AF68: 07        .byte $07   ; 
- D 1 - I - 0x01AF79 06:AF69: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF7A 06:AF6A: 8E        .byte $8E   ; 
- D 1 - I - 0x01AF7B 06:AF6B: 74        .byte $74   ; 
- D 1 - I - 0x01AF7C 06:AF6C: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF7D 06:AF6D: 58        .byte $58   ; 



_off016_round_1_2_AF6E_02E:
_off016_round_1_2_AF6E_1D6:
_off016_round_1_3_AF6E_072:
_off016_round_1_3_AF6E_076:
- D 1 - I - 0x01AF7E 06:AF6E: 84        .byte $84   ; 
- D 1 - I - 0x01AF7F 06:AF6F: 07        .byte $07   ; 
- D 1 - I - 0x01AF80 06:AF70: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF81 06:AF71: 99        .byte $99   ; 
- D 1 - I - 0x01AF82 06:AF72: 75        .byte $75   ; 
- D 1 - I - 0x01AF83 06:AF73: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF84 06:AF74: 59        .byte $59   ; 



_off016_round_1_2_AF75_030:
_off016_round_1_2_AF75_1D8:
_off016_round_1_3_AF75_070:
_off016_round_1_3_AF75_074:
- D 1 - I - 0x01AF85 06:AF75: 84        .byte $84   ; 
- D 1 - I - 0x01AF86 06:AF76: 07        .byte $07   ; 
- D 1 - I - 0x01AF87 06:AF77: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF88 06:AF78: 8E        .byte $8E   ; 
- D 1 - I - 0x01AF89 06:AF79: 74        .byte $74   ; 
- D 1 - I - 0x01AF8A 06:AF7A: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF8B 06:AF7B: 58        .byte $58   ; 



_off016_round_1_2_AF7C_032:
- D 1 - I - 0x01AF8C 06:AF7C: 84        .byte $84   ; 
- D 1 - I - 0x01AF8D 06:AF7D: 73        .byte $73   ; 
- D 1 - I - 0x01AF8E 06:AF7E: B7        .byte $B7   ; 
- D 1 - I - 0x01AF8F 06:AF7F: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF90 06:AF80: 59        .byte $59   ; 



_off016_round_1_2_AF81_034:
- D 1 - I - 0x01AF91 06:AF81: 8A        .byte $8A   ; 
- D 1 - I - 0x01AF92 06:AF82: 07        .byte $07   ; 
- D 1 - I - 0x01AF93 06:AF83: 4C        .byte $4C   ; 
- D 1 - I - 0x01AF94 06:AF84: 78        .byte $78   ; 
- D 1 - I - 0x01AF95 06:AF85: 74        .byte $74   ; 
- D 1 - I - 0x01AF96 06:AF86: 5E        .byte $5E   ; 
- D 1 - I - 0x01AF97 06:AF87: 58        .byte $58   ; 



_off016_round_1_2_AF88_036:
_off016_round_1_2_AF88_086:
- D 1 - I - 0x01AF98 06:AF88: 81        .byte $81   ; 
- D 1 - I - 0x01AF99 06:AF89: 30        .byte $30   ; 
- D 1 - I - 0x01AF9A 06:AF8A: 07        .byte $07   ; 
- D 1 - I - 0x01AF9B 06:AF8B: 4D        .byte $4D   ; 
- D 1 - I - 0x01AF9C 06:AF8C: 79        .byte $79   ; 
- D 1 - I - 0x01AF9D 06:AF8D: 75        .byte $75   ; 
- D 1 - I - 0x01AF9E 06:AF8E: 5F        .byte $5F   ; 
- D 1 - I - 0x01AF9F 06:AF8F: 59        .byte $59   ; 



_off016_round_1_2_AF90_038:
- D 1 - I - 0x01AFA0 06:AF90: 87        .byte $87   ; 
- D 1 - I - 0x01AFA1 06:AF91: 60        .byte $60   ; 
- D 1 - I - 0x01AFA2 06:AF92: 68        .byte $68   ; 
- D 1 - I - 0x01AFA3 06:AF93: 00        .byte $00   ; 
- D 1 - I - 0x01AFA4 06:AF94: 30        .byte $30   ; 
- D 1 - I - 0x01AFA5 06:AF95: 17        .byte $17   ; 
- D 1 - I - 0x01AFA6 06:AF96: 07        .byte $07   ; 
- D 1 - I - 0x01AFA7 06:AF97: 4C        .byte $4C   ; 
- D 1 - I - 0x01AFA8 06:AF98: 78        .byte $78   ; 
- D 1 - I - 0x01AFA9 06:AF99: 74        .byte $74   ; 
- D 1 - I - 0x01AFAA 06:AF9A: 5E        .byte $5E   ; 
- D 1 - I - 0x01AFAB 06:AF9B: 58        .byte $58   ; 



_off016_round_1_2_AF9C_03A:
- D 1 - I - 0x01AFAC 06:AF9C: 87        .byte $87   ; 
- D 1 - I - 0x01AFAD 06:AF9D: 61        .byte $61   ; 
- D 1 - I - 0x01AFAE 06:AF9E: 88        .byte $88   ; 
- D 1 - I - 0x01AFAF 06:AF9F: 31        .byte $31   ; 
- D 1 - I - 0x01AFB0 06:AFA0: 03        .byte $03   ; 
- D 1 - I - 0x01AFB1 06:AFA1: 07        .byte $07   ; 
- D 1 - I - 0x01AFB2 06:AFA2: 4D        .byte $4D   ; 
- D 1 - I - 0x01AFB3 06:AFA3: 79        .byte $79   ; 
- D 1 - I - 0x01AFB4 06:AFA4: 75        .byte $75   ; 
- D 1 - I - 0x01AFB5 06:AFA5: 5F        .byte $5F   ; 
- D 1 - I - 0x01AFB6 06:AFA6: 59        .byte $59   ; 



_off016_round_1_2_AFA7_03C:
- D 1 - I - 0x01AFB7 06:AFA7: 98        .byte $98   ; 
- D 1 - I - 0x01AFB8 06:AFA8: 08        .byte $08   ; 
- D 1 - I - 0x01AFB9 06:AFA9: 90        .byte $90   ; 
- D 1 - I - 0x01AFBA 06:AFAA: 49        .byte $49   ; 
- D 1 - I - 0x01AFBB 06:AFAB: 5C        .byte $5C   ; 
- D 1 - I - 0x01AFBC 06:AFAC: 6D        .byte $6D   ; 
- D 1 - I - 0x01AFBD 06:AFAD: 07        .byte $07   ; 
- D 1 - I - 0x01AFBE 06:AFAE: 4C        .byte $4C   ; 
- D 1 - I - 0x01AFBF 06:AFAF: 78        .byte $78   ; 
- D 1 - I - 0x01AFC0 06:AFB0: 74        .byte $74   ; 
- D 1 - I - 0x01AFC1 06:AFB1: 5E        .byte $5E   ; 
- D 1 - I - 0x01AFC2 06:AFB2: 58        .byte $58   ; 



_off016_round_1_2_AFB3_03E:
- D 1 - I - 0x01AFC3 06:AFB3: 98        .byte $98   ; 
- D 1 - I - 0x01AFC4 06:AFB4: 09        .byte $09   ; 
- D 1 - I - 0x01AFC5 06:AFB5: 90        .byte $90   ; 
- D 1 - I - 0x01AFC6 06:AFB6: 0C        .byte $0C   ; 
- D 1 - I - 0x01AFC7 06:AFB7: 69        .byte $69   ; 
- D 1 - I - 0x01AFC8 06:AFB8: 6C        .byte $6C   ; 
- D 1 - I - 0x01AFC9 06:AFB9: 07        .byte $07   ; 
- D 1 - I - 0x01AFCA 06:AFBA: 4D        .byte $4D   ; 
- D 1 - I - 0x01AFCB 06:AFBB: 79        .byte $79   ; 
- D 1 - I - 0x01AFCC 06:AFBC: 75        .byte $75   ; 
- D 1 - I - 0x01AFCD 06:AFBD: 5F        .byte $5F   ; 
- D 1 - I - 0x01AFCE 06:AFBE: 59        .byte $59   ; 



_off016_round_1_2_AFBF_040:
- D 1 - I - 0x01AFCF 06:AFBF: 98        .byte $98   ; 
- D 1 - I - 0x01AFD0 06:AFC0: 0A        .byte $0A   ; 
- D 1 - I - 0x01AFD1 06:AFC1: 90        .byte $90   ; 
- D 1 - I - 0x01AFD2 06:AFC2: 0C        .byte $0C   ; 
- D 1 - I - 0x01AFD3 06:AFC3: 69        .byte $69   ; 
- D 1 - I - 0x01AFD4 06:AFC4: 6C        .byte $6C   ; 
- D 1 - I - 0x01AFD5 06:AFC5: 07        .byte $07   ; 
- D 1 - I - 0x01AFD6 06:AFC6: 4C        .byte $4C   ; 
- D 1 - I - 0x01AFD7 06:AFC7: 78        .byte $78   ; 
- D 1 - I - 0x01AFD8 06:AFC8: 74        .byte $74   ; 
- D 1 - I - 0x01AFD9 06:AFC9: 5E        .byte $5E   ; 
- D 1 - I - 0x01AFDA 06:AFCA: 58        .byte $58   ; 



_off016_round_1_2_AFCB_042:
- D 1 - I - 0x01AFDB 06:AFCB: 9D        .byte $9D   ; 
- D 1 - I - 0x01AFDC 06:AFCC: 0C        .byte $0C   ; 
- D 1 - I - 0x01AFDD 06:AFCD: 69        .byte $69   ; 
- D 1 - I - 0x01AFDE 06:AFCE: 6C        .byte $6C   ; 
- D 1 - I - 0x01AFDF 06:AFCF: 07        .byte $07   ; 
- D 1 - I - 0x01AFE0 06:AFD0: 4D        .byte $4D   ; 
- D 1 - I - 0x01AFE1 06:AFD1: 79        .byte $79   ; 
- D 1 - I - 0x01AFE2 06:AFD2: 75        .byte $75   ; 
- D 1 - I - 0x01AFE3 06:AFD3: 5F        .byte $5F   ; 
- D 1 - I - 0x01AFE4 06:AFD4: 59        .byte $59   ; 



_off016_round_1_2_AFD5_044:
- D 1 - I - 0x01AFE5 06:AFD5: 9D        .byte $9D   ; 
- D 1 - I - 0x01AFE6 06:AFD6: 0C        .byte $0C   ; 
- D 1 - I - 0x01AFE7 06:AFD7: 69        .byte $69   ; 
- D 1 - I - 0x01AFE8 06:AFD8: 6C        .byte $6C   ; 
- D 1 - I - 0x01AFE9 06:AFD9: 07        .byte $07   ; 
- D 1 - I - 0x01AFEA 06:AFDA: 4C        .byte $4C   ; 
- D 1 - I - 0x01AFEB 06:AFDB: 78        .byte $78   ; 
- D 1 - I - 0x01AFEC 06:AFDC: 74        .byte $74   ; 
- D 1 - I - 0x01AFED 06:AFDD: 5E        .byte $5E   ; 
- D 1 - I - 0x01AFEE 06:AFDE: 58        .byte $58   ; 



_off016_round_1_2_AFDF_046:
- D 1 - I - 0x01AFEF 06:AFDF: 9D        .byte $9D   ; 
- D 1 - I - 0x01AFF0 06:AFE0: 51        .byte $51   ; 
- D 1 - I - 0x01AFF1 06:AFE1: 5D        .byte $5D   ; 
- D 1 - I - 0x01AFF2 06:AFE2: 6E        .byte $6E   ; 
- D 1 - I - 0x01AFF3 06:AFE3: 07        .byte $07   ; 
- D 1 - I - 0x01AFF4 06:AFE4: 4D        .byte $4D   ; 
- D 1 - I - 0x01AFF5 06:AFE5: 79        .byte $79   ; 
- D 1 - I - 0x01AFF6 06:AFE6: 75        .byte $75   ; 
- D 1 - I - 0x01AFF7 06:AFE7: 5F        .byte $5F   ; 
- D 1 - I - 0x01AFF8 06:AFE8: 59        .byte $59   ; 



_off016_round_1_2_AFE9_048:
- D 1 - I - 0x01AFF9 06:AFE9: 84        .byte $84   ; 
- D 1 - I - 0x01AFFA 06:AFEA: 30        .byte $30   ; 
- D 1 - I - 0x01AFFB 06:AFEB: 03        .byte $03   ; 
- D 1 - I - 0x01AFFC 06:AFEC: 07        .byte $07   ; 
- D 1 - I - 0x01AFFD 06:AFED: 4C        .byte $4C   ; 
- D 1 - I - 0x01AFFE 06:AFEE: 78        .byte $78   ; 
- D 1 - I - 0x01AFFF 06:AFEF: 74        .byte $74   ; 
- D 1 - I - 0x01B000 06:AFF0: 5E        .byte $5E   ; 
- D 1 - I - 0x01B001 06:AFF1: 58        .byte $58   ; 



_off016_round_1_2_AFF2_04A:
- D 1 - I - 0x01B002 06:AFF2: 84        .byte $84   ; 
- D 1 - I - 0x01B003 06:AFF3: 31        .byte $31   ; 
- D 1 - I - 0x01B004 06:AFF4: 38        .byte $38   ; 
- D 1 - I - 0x01B005 06:AFF5: 07        .byte $07   ; 
- D 1 - I - 0x01B006 06:AFF6: 4D        .byte $4D   ; 
- D 1 - I - 0x01B007 06:AFF7: 79        .byte $79   ; 
- D 1 - I - 0x01B008 06:AFF8: 75        .byte $75   ; 
- D 1 - I - 0x01B009 06:AFF9: 5F        .byte $5F   ; 
- D 1 - I - 0x01B00A 06:AFFA: 59        .byte $59   ; 



_off016_round_1_2_AFFB_04C:
_off016_round_1_2_AFFB_088:
- D 1 - I - 0x01B00B 06:AFFB: 81        .byte $81   ; 
- D 1 - I - 0x01B00C 06:AFFC: 31        .byte $31   ; 
- D 1 - I - 0x01B00D 06:AFFD: 07        .byte $07   ; 
- D 1 - I - 0x01B00E 06:AFFE: 4C        .byte $4C   ; 
- D 1 - I - 0x01B00F 06:AFFF: 78        .byte $78   ; 
- D 1 - I - 0x01B010 06:B000: 74        .byte $74   ; 
- D 1 - I - 0x01B011 06:B001: 5E        .byte $5E   ; 
- D 1 - I - 0x01B012 06:B002: 58        .byte $58   ; 



_off016_round_1_2_B003_04E:
_off016_round_1_2_B003_08A:
- D 1 - I - 0x01B013 06:B003: 8A        .byte $8A   ; 
- D 1 - I - 0x01B014 06:B004: 73        .byte $73   ; 
- D 1 - I - 0x01B015 06:B005: AD        .byte $AD   ; 
- D 1 - I - 0x01B016 06:B006: 5F        .byte $5F   ; 
- D 1 - I - 0x01B017 06:B007: 5B        .byte $5B   ; 



_off016_round_1_2_B008_050:
_off016_round_1_2_B008_08C:
_off016_round_1_2_B008_094:
_off016_round_1_2_B008_09C:
_off016_round_1_3_B008_052:
_off016_round_1_3_B008_1A6:
- D 1 - I - 0x01B018 06:B008: AC        .byte $AC   ; 
- D 1 - I - 0x01B019 06:B009: 1A        .byte $1A   ; 
- D 1 - I - 0x01B01A 06:B00A: 45        .byte $45   ; 
- D 1 - I - 0x01B01B 06:B00B: 00        .byte $00   ; 



_off016_round_1_2_B00C_052:
- D 1 - I - 0x01B01C 06:B00C: A4        .byte $A4   ; 
- D 1 - I - 0x01B01D 06:B00D: 0D        .byte $0D   ; 
- D 1 - I - 0x01B01E 06:B00E: 1B        .byte $1B   ; 
- D 1 - I - 0x01B01F 06:B00F: 45        .byte $45   ; 
- D 1 - I - 0x01B020 06:B010: 00        .byte $00   ; 



_off016_round_1_2_B011_054:
- D 1 - I - 0x01B021 06:B011: A4        .byte $A4   ; 
- D 1 - I - 0x01B022 06:B012: 28        .byte $28   ; 
- D 1 - I - 0x01B023 06:B013: 18        .byte $18   ; 
- D 1 - I - 0x01B024 06:B014: 45        .byte $45   ; 
- D 1 - I - 0x01B025 06:B015: 00        .byte $00   ; 



_off016_round_1_2_B016_056:
- D 1 - I - 0x01B026 06:B016: A4        .byte $A4   ; 
- D 1 - I - 0x01B027 06:B017: 0E        .byte $0E   ; 
- D 1 - I - 0x01B028 06:B018: 19        .byte $19   ; 
- D 1 - I - 0x01B029 06:B019: 45        .byte $45   ; 
- D 1 - I - 0x01B02A 06:B01A: 00        .byte $00   ; 



_off016_round_1_2_B01B_058:
- D 1 - I - 0x01B02B 06:B01B: 8F        .byte $8F   ; 
- D 1 - I - 0x01B02C 06:B01C: 54        .byte $54   ; 
- D 1 - I - 0x01B02D 06:B01D: 8F        .byte $8F   ; 
- D 1 - I - 0x01B02E 06:B01E: 1A        .byte $1A   ; 
- D 1 - I - 0x01B02F 06:B01F: 45        .byte $45   ; 
- D 1 - I - 0x01B030 06:B020: 00        .byte $00   ; 



_off016_round_1_2_B021_05A:
- D 1 - I - 0x01B031 06:B021: 8F        .byte $8F   ; 
- D 1 - I - 0x01B032 06:B022: 55        .byte $55   ; 
- D 1 - I - 0x01B033 06:B023: 8F        .byte $8F   ; 
- D 1 - I - 0x01B034 06:B024: 1B        .byte $1B   ; 
- D 1 - I - 0x01B035 06:B025: 45        .byte $45   ; 
- D 1 - I - 0x01B036 06:B026: 00        .byte $00   ; 



_off016_round_1_2_B027_05C:
- D 1 - I - 0x01B037 06:B027: 8F        .byte $8F   ; 
- D 1 - I - 0x01B038 06:B028: 4E        .byte $4E   ; 
- D 1 - I - 0x01B039 06:B029: 8F        .byte $8F   ; 
- D 1 - I - 0x01B03A 06:B02A: 1C        .byte $1C   ; 
- D 1 - I - 0x01B03B 06:B02B: 45        .byte $45   ; 
- D 1 - I - 0x01B03C 06:B02C: 00        .byte $00   ; 



_off016_round_1_2_B02D_05E:
- D 1 - I - 0x01B03D 06:B02D: 8F        .byte $8F   ; 
- D 1 - I - 0x01B03E 06:B02E: 4F        .byte $4F   ; 
- D 1 - I - 0x01B03F 06:B02F: 8F        .byte $8F   ; 
- D 1 - I - 0x01B040 06:B030: 1D        .byte $1D   ; 
- D 1 - I - 0x01B041 06:B031: 45        .byte $45   ; 
- D 1 - I - 0x01B042 06:B032: 00        .byte $00   ; 



_off016_round_1_2_B033_060:
_off016_round_1_3_B033_034:
- D 1 - I - 0x01B043 06:B033: AC        .byte $AC   ; 
- D 1 - I - 0x01B044 06:B034: 1E        .byte $1E   ; 
- D 1 - I - 0x01B045 06:B035: 45        .byte $45   ; 
- D 1 - I - 0x01B046 06:B036: 00        .byte $00   ; 



_off016_round_1_2_B037_062:
_off016_round_1_3_B037_02A:
_off016_round_1_3_B037_036:
- D 1 - I - 0x01B047 06:B037: AC        .byte $AC   ; 
- D 1 - I - 0x01B048 06:B038: 1F        .byte $1F   ; 
- D 1 - I - 0x01B049 06:B039: 45        .byte $45   ; 
- D 1 - I - 0x01B04A 06:B03A: 00        .byte $00   ; 



_off016_round_1_2_B03B_064:
- D 1 - I - 0x01B04B 06:B03B: A4        .byte $A4   ; 
- D 1 - I - 0x01B04C 06:B03C: 0D        .byte $0D   ; 
- D 1 - I - 0x01B04D 06:B03D: 1A        .byte $1A   ; 
- D 1 - I - 0x01B04E 06:B03E: 45        .byte $45   ; 
- D 1 - I - 0x01B04F 06:B03F: 00        .byte $00   ; 



_off016_round_1_2_B040_066:
- D 1 - I - 0x01B050 06:B040: A4        .byte $A4   ; 
- D 1 - I - 0x01B051 06:B041: 28        .byte $28   ; 
- D 1 - I - 0x01B052 06:B042: 1B        .byte $1B   ; 
- D 1 - I - 0x01B053 06:B043: 45        .byte $45   ; 
- D 1 - I - 0x01B054 06:B044: 00        .byte $00   ; 



_off016_round_1_2_B045_068:
- D 1 - I - 0x01B055 06:B045: 87        .byte $87   ; 
- D 1 - I - 0x01B056 06:B046: 60        .byte $60   ; 
- D 1 - I - 0x01B057 06:B047: 68        .byte $68   ; 
- D 1 - I - 0x01B058 06:B048: 90        .byte $90   ; 
- D 1 - I - 0x01B059 06:B049: 0E        .byte $0E   ; 
- D 1 - I - 0x01B05A 06:B04A: 18        .byte $18   ; 
- D 1 - I - 0x01B05B 06:B04B: 45        .byte $45   ; 
- D 1 - I - 0x01B05C 06:B04C: 00        .byte $00   ; 



_off016_round_1_2_B04D_06A:
- D 1 - I - 0x01B05D 06:B04D: 87        .byte $87   ; 
- D 1 - I - 0x01B05E 06:B04E: 61        .byte $61   ; 
- D 1 - I - 0x01B05F 06:B04F: A0        .byte $A0   ; 
- D 1 - I - 0x01B060 06:B050: 19        .byte $19   ; 
- D 1 - I - 0x01B061 06:B051: 45        .byte $45   ; 
- D 1 - I - 0x01B062 06:B052: 00        .byte $00   ; 



_off016_round_1_2_B053_06C:
- D 1 - I - 0x01B063 06:B053: 98        .byte $98   ; 
- D 1 - I - 0x01B064 06:B054: 08        .byte $08   ; 
- D 1 - I - 0x01B065 06:B055: A1        .byte $A1   ; 
- D 1 - I - 0x01B066 06:B056: 72        .byte $72   ; 
- D 1 - I - 0x01B067 06:B057: 9A        .byte $9A   ; 
- D 1 - I - 0x01B068 06:B058: 5E        .byte $5E   ; 
- D 1 - I - 0x01B069 06:B059: 5A        .byte $5A   ; 



_off016_round_1_2_B05A_06E:
- D 1 - I - 0x01B06A 06:B05A: 98        .byte $98   ; 
- D 1 - I - 0x01B06B 06:B05B: 09        .byte $09   ; 
- D 1 - I - 0x01B06C 06:B05C: A1        .byte $A1   ; 
- D 1 - I - 0x01B06D 06:B05D: 07        .byte $07   ; 
- D 1 - I - 0x01B06E 06:B05E: 4D        .byte $4D   ; 
- D 1 - I - 0x01B06F 06:B05F: 79        .byte $79   ; 
- D 1 - I - 0x01B070 06:B060: 75        .byte $75   ; 
- D 1 - I - 0x01B071 06:B061: 5F        .byte $5F   ; 
- D 1 - I - 0x01B072 06:B062: 59        .byte $59   ; 



_off016_round_1_2_B063_074:
- D 1 - I - 0x01B073 06:B063: 8F        .byte $8F   ; 
- D 1 - I - 0x01B074 06:B064: 49        .byte $49   ; 
- D 1 - I - 0x01B075 06:B065: 5C        .byte $5C   ; 
- D 1 - I - 0x01B076 06:B066: B3        .byte $B3   ; 
- D 1 - I - 0x01B077 06:B067: 0C        .byte $0C   ; 
- D 1 - I - 0x01B078 06:B068: 69        .byte $69   ; 
- D 1 - I - 0x01B079 06:B069: B4        .byte $B4   ; 
- D 1 - I - 0x01B07A 06:B06A: 07        .byte $07   ; 
- D 1 - I - 0x01B07B 06:B06B: 4C        .byte $4C   ; 
- D 1 - I - 0x01B07C 06:B06C: 78        .byte $78   ; 
- D 1 - I - 0x01B07D 06:B06D: 74        .byte $74   ; 
- D 1 - I - 0x01B07E 06:B06E: 5E        .byte $5E   ; 
- D 1 - I - 0x01B07F 06:B06F: 58        .byte $58   ; 



_off016_round_1_2_B070_076:
- D 1 - I - 0x01B080 06:B070: 8F        .byte $8F   ; 
- D 1 - I - 0x01B081 06:B071: 0C        .byte $0C   ; 
- D 1 - I - 0x01B082 06:B072: 69        .byte $69   ; 
- D 1 - I - 0x01B083 06:B073: B4        .byte $B4   ; 
- D 1 - I - 0x01B084 06:B074: 0C        .byte $0C   ; 
- D 1 - I - 0x01B085 06:B075: 69        .byte $69   ; 
- D 1 - I - 0x01B086 06:B076: B4        .byte $B4   ; 
- D 1 - I - 0x01B087 06:B077: 07        .byte $07   ; 
- D 1 - I - 0x01B088 06:B078: 4D        .byte $4D   ; 
- D 1 - I - 0x01B089 06:B079: 79        .byte $79   ; 
- D 1 - I - 0x01B08A 06:B07A: 75        .byte $75   ; 
- D 1 - I - 0x01B08B 06:B07B: 5F        .byte $5F   ; 
- D 1 - I - 0x01B08C 06:B07C: 59        .byte $59   ; 



_off016_round_1_2_B07D_078:
- D 1 - I - 0x01B08D 06:B07D: 8F        .byte $8F   ; 
- D 1 - I - 0x01B08E 06:B07E: 0C        .byte $0C   ; 
- D 1 - I - 0x01B08F 06:B07F: 69        .byte $69   ; 
- D 1 - I - 0x01B090 06:B080: B4        .byte $B4   ; 
- D 1 - I - 0x01B091 06:B081: 0C        .byte $0C   ; 
- D 1 - I - 0x01B092 06:B082: 69        .byte $69   ; 
- D 1 - I - 0x01B093 06:B083: B4        .byte $B4   ; 
- D 1 - I - 0x01B094 06:B084: 07        .byte $07   ; 
- D 1 - I - 0x01B095 06:B085: 4C        .byte $4C   ; 
- D 1 - I - 0x01B096 06:B086: 78        .byte $78   ; 
- D 1 - I - 0x01B097 06:B087: 74        .byte $74   ; 
- D 1 - I - 0x01B098 06:B088: 5E        .byte $5E   ; 
- D 1 - I - 0x01B099 06:B089: 58        .byte $58   ; 



_off016_round_1_2_B08A_07A:
- D 1 - I - 0x01B09A 06:B08A: 8F        .byte $8F   ; 
- D 1 - I - 0x01B09B 06:B08B: 51        .byte $51   ; 
- D 1 - I - 0x01B09C 06:B08C: 5D        .byte $5D   ; 
- D 1 - I - 0x01B09D 06:B08D: B5        .byte $B5   ; 
- D 1 - I - 0x01B09E 06:B08E: 0C        .byte $0C   ; 
- D 1 - I - 0x01B09F 06:B08F: 69        .byte $69   ; 
- D 1 - I - 0x01B0A0 06:B090: B4        .byte $B4   ; 
- D 1 - I - 0x01B0A1 06:B091: 07        .byte $07   ; 
- D 1 - I - 0x01B0A2 06:B092: 4D        .byte $4D   ; 
- D 1 - I - 0x01B0A3 06:B093: 79        .byte $79   ; 
- D 1 - I - 0x01B0A4 06:B094: 75        .byte $75   ; 
- D 1 - I - 0x01B0A5 06:B095: 5F        .byte $5F   ; 
- D 1 - I - 0x01B0A6 06:B096: 59        .byte $59   ; 



_off016_round_1_2_B097_080:
- D 1 - I - 0x01B0A7 06:B097: A0        .byte $A0   ; 
- D 1 - I - 0x01B0A8 06:B098: 08        .byte $08   ; 
- D 1 - I - 0x01B0A9 06:B099: A1        .byte $A1   ; 
- D 1 - I - 0x01B0AA 06:B09A: 30        .byte $30   ; 
- D 1 - I - 0x01B0AB 06:B09B: 17        .byte $17   ; 
- D 1 - I - 0x01B0AC 06:B09C: 07        .byte $07   ; 
- D 1 - I - 0x01B0AD 06:B09D: 4C        .byte $4C   ; 
- D 1 - I - 0x01B0AE 06:B09E: 78        .byte $78   ; 
- D 1 - I - 0x01B0AF 06:B09F: 74        .byte $74   ; 
- D 1 - I - 0x01B0B0 06:B0A0: 5E        .byte $5E   ; 
- D 1 - I - 0x01B0B1 06:B0A1: 58        .byte $58   ; 



_off016_round_1_2_B0A2_082:
- D 1 - I - 0x01B0B2 06:B0A2: A0        .byte $A0   ; 
- D 1 - I - 0x01B0B3 06:B0A3: 09        .byte $09   ; 
- D 1 - I - 0x01B0B4 06:B0A4: A1        .byte $A1   ; 
- D 1 - I - 0x01B0B5 06:B0A5: 31        .byte $31   ; 
- D 1 - I - 0x01B0B6 06:B0A6: 38        .byte $38   ; 
- D 1 - I - 0x01B0B7 06:B0A7: 07        .byte $07   ; 
- D 1 - I - 0x01B0B8 06:B0A8: 4D        .byte $4D   ; 
- D 1 - I - 0x01B0B9 06:B0A9: 79        .byte $79   ; 
- D 1 - I - 0x01B0BA 06:B0AA: 75        .byte $75   ; 
- D 1 - I - 0x01B0BB 06:B0AB: 5F        .byte $5F   ; 
- D 1 - I - 0x01B0BC 06:B0AC: 59        .byte $59   ; 



_off016_round_1_2_B0AD_084:
- D 1 - I - 0x01B0BD 06:B0AD: A0        .byte $A0   ; 
- D 1 - I - 0x01B0BE 06:B0AE: 0A        .byte $0A   ; 
- D 1 - I - 0x01B0BF 06:B0AF: 98        .byte $98   ; 
- D 1 - I - 0x01B0C0 06:B0B0: 31        .byte $31   ; 
- D 1 - I - 0x01B0C1 06:B0B1: 07        .byte $07   ; 
- D 1 - I - 0x01B0C2 06:B0B2: 4C        .byte $4C   ; 
- D 1 - I - 0x01B0C3 06:B0B3: 78        .byte $78   ; 
- D 1 - I - 0x01B0C4 06:B0B4: 74        .byte $74   ; 
- D 1 - I - 0x01B0C5 06:B0B5: 5E        .byte $5E   ; 
- D 1 - I - 0x01B0C6 06:B0B6: 58        .byte $58   ; 



_off016_round_1_2_B0B7_08E:
_off016_round_1_2_B0B7_096:
_off016_round_1_2_B0B7_09E:
_off016_round_1_3_B0B7_054:
_off016_round_1_3_B0B7_1A0:
- D 1 - I - 0x01B0C7 06:B0B7: AC        .byte $AC   ; 
- D 1 - I - 0x01B0C8 06:B0B8: 1B        .byte $1B   ; 
- D 1 - I - 0x01B0C9 06:B0B9: 45        .byte $45   ; 
- D 1 - I - 0x01B0CA 06:B0BA: 00        .byte $00   ; 



_off016_round_1_2_B0BB_090:
_off016_round_1_2_B0BB_098:
_off016_round_1_3_B0BB_1A2:
- D 1 - I - 0x01B0CB 06:B0BB: AC        .byte $AC   ; 
- D 1 - I - 0x01B0CC 06:B0BC: 18        .byte $18   ; 
- D 1 - I - 0x01B0CD 06:B0BD: 45        .byte $45   ; 
- D 1 - I - 0x01B0CE 06:B0BE: 00        .byte $00   ; 



_off016_round_1_2_B0BF_092:
_off016_round_1_2_B0BF_09A:
_off016_round_1_3_B0BF_1A4:
- D 1 - I - 0x01B0CF 06:B0BF: AC        .byte $AC   ; 
- D 1 - I - 0x01B0D0 06:B0C0: 19        .byte $19   ; 
- D 1 - I - 0x01B0D1 06:B0C1: 45        .byte $45   ; 
- D 1 - I - 0x01B0D2 06:B0C2: 00        .byte $00   ; 



_off016_round_1_2_B0C3_0A0:
- D 1 - I - 0x01B0D3 06:B0C3: AC        .byte $AC   ; 
- D 1 - I - 0x01B0D4 06:B0C4: 1C        .byte $1C   ; 
- D 1 - I - 0x01B0D5 06:B0C5: 45        .byte $45   ; 
- D 1 - I - 0x01B0D6 06:B0C6: 00        .byte $00   ; 



_off016_round_1_2_B0C7_0A2:
- D 1 - I - 0x01B0D7 06:B0C7: 8B        .byte $8B   ; 
- D 1 - I - 0x01B0D8 06:B0C8: 0D        .byte $0D   ; 
- D 1 - I - 0x01B0D9 06:B0C9: 98        .byte $98   ; 
- D 1 - I - 0x01B0DA 06:B0CA: 1D        .byte $1D   ; 
- D 1 - I - 0x01B0DB 06:B0CB: 45        .byte $45   ; 
- D 1 - I - 0x01B0DC 06:B0CC: 00        .byte $00   ; 



_off016_round_1_2_B0CD_0A4:
- D 1 - I - 0x01B0DD 06:B0CD: 8B        .byte $8B   ; 
- D 1 - I - 0x01B0DE 06:B0CE: 28        .byte $28   ; 
- D 1 - I - 0x01B0DF 06:B0CF: A0        .byte $A0   ; 
- D 1 - I - 0x01B0E0 06:B0D0: 2F        .byte $2F   ; 
- D 1 - I - 0x01B0E1 06:B0D1: 8D        .byte $8D   ; 
- D 1 - I - 0x01B0E2 06:B0D2: 5E        .byte $5E   ; 
- D 1 - I - 0x01B0E3 06:B0D3: 5A        .byte $5A   ; 



_off016_round_1_2_B0D4_0A6:
- D 1 - I - 0x01B0E4 06:B0D4: 8B        .byte $8B   ; 
- D 1 - I - 0x01B0E5 06:B0D5: 28        .byte $28   ; 
- D 1 - I - 0x01B0E6 06:B0D6: A0        .byte $A0   ; 
- D 1 - I - 0x01B0E7 06:B0D7: 07        .byte $07   ; 
- D 1 - I - 0x01B0E8 06:B0D8: 4D        .byte $4D   ; 
- D 1 - I - 0x01B0E9 06:B0D9: 75        .byte $75   ; 
- D 1 - I - 0x01B0EA 06:B0DA: 5F        .byte $5F   ; 
- D 1 - I - 0x01B0EB 06:B0DB: 59        .byte $59   ; 



_off016_round_1_2_B0DC_0A8:
- D 1 - I - 0x01B0EC 06:B0DC: 8B        .byte $8B   ; 
- D 1 - I - 0x01B0ED 06:B0DD: 0E        .byte $0E   ; 
- D 1 - I - 0x01B0EE 06:B0DE: 93        .byte $93   ; 
- D 1 - I - 0x01B0EF 06:B0DF: 30        .byte $30   ; 
- D 1 - I - 0x01B0F0 06:B0E0: 07        .byte $07   ; 
- D 1 - I - 0x01B0F1 06:B0E1: 4C        .byte $4C   ; 
- D 1 - I - 0x01B0F2 06:B0E2: 74        .byte $74   ; 
- D 1 - I - 0x01B0F3 06:B0E3: 5E        .byte $5E   ; 
- D 1 - I - 0x01B0F4 06:B0E4: 58        .byte $58   ; 



_off016_round_1_2_B0E5_0AA:
_off016_round_1_2_B0E5_0AE:
- D 1 - I - 0x01B0F5 06:B0E5: 81        .byte $81   ; 
- D 1 - I - 0x01B0F6 06:B0E6: 30        .byte $30   ; 
- D 1 - I - 0x01B0F7 06:B0E7: 03        .byte $03   ; 
- D 1 - I - 0x01B0F8 06:B0E8: 07        .byte $07   ; 
- D 1 - I - 0x01B0F9 06:B0E9: 4D        .byte $4D   ; 
- D 1 - I - 0x01B0FA 06:B0EA: 75        .byte $75   ; 
- D 1 - I - 0x01B0FB 06:B0EB: 5F        .byte $5F   ; 
- D 1 - I - 0x01B0FC 06:B0EC: 59        .byte $59   ; 



_off016_round_1_2_B0ED_0AC:
- D 1 - I - 0x01B0FD 06:B0ED: 81        .byte $81   ; 
- D 1 - I - 0x01B0FE 06:B0EE: 31        .byte $31   ; 
- D 1 - I - 0x01B0FF 06:B0EF: 38        .byte $38   ; 
- D 1 - I - 0x01B100 06:B0F0: 07        .byte $07   ; 
- D 1 - I - 0x01B101 06:B0F1: 4C        .byte $4C   ; 
- D 1 - I - 0x01B102 06:B0F2: 74        .byte $74   ; 
- D 1 - I - 0x01B103 06:B0F3: 5E        .byte $5E   ; 
- D 1 - I - 0x01B104 06:B0F4: 58        .byte $58   ; 



_off016_round_1_2_B0F5_0B0:
- D 1 - I - 0x01B105 06:B0F5: 84        .byte $84   ; 
- D 1 - I - 0x01B106 06:B0F6: 30        .byte $30   ; 
- D 1 - I - 0x01B107 06:B0F7: 03        .byte $03   ; 
- D 1 - I - 0x01B108 06:B0F8: 17        .byte $17   ; 
- D 1 - I - 0x01B109 06:B0F9: 07        .byte $07   ; 
- D 1 - I - 0x01B10A 06:B0FA: 4C        .byte $4C   ; 
- D 1 - I - 0x01B10B 06:B0FB: 74        .byte $74   ; 
- D 1 - I - 0x01B10C 06:B0FC: 5E        .byte $5E   ; 
- D 1 - I - 0x01B10D 06:B0FD: 58        .byte $58   ; 



_off016_round_1_2_B0FE_0B2:
- D 1 - I - 0x01B10E 06:B0FE: 87        .byte $87   ; 
- D 1 - I - 0x01B10F 06:B0FF: 49        .byte $49   ; 
- D 1 - I - 0x01B110 06:B100: 5C        .byte $5C   ; 
- D 1 - I - 0x01B111 06:B101: B8        .byte $B8   ; 
- D 1 - I - 0x01B112 06:B102: 07        .byte $07   ; 
- D 1 - I - 0x01B113 06:B103: 4D        .byte $4D   ; 
- D 1 - I - 0x01B114 06:B104: 75        .byte $75   ; 
- D 1 - I - 0x01B115 06:B105: 5F        .byte $5F   ; 
- D 1 - I - 0x01B116 06:B106: 59        .byte $59   ; 



_off016_round_1_2_B107_0B4:
_off016_round_1_2_B107_0BC:
_off016_round_1_2_B107_0C0:
- D 1 - I - 0x01B117 06:B107: 87        .byte $87   ; 
- D 1 - I - 0x01B118 06:B108: 0C        .byte $0C   ; 
- D 1 - I - 0x01B119 06:B109: 69        .byte $69   ; 
- D 1 - I - 0x01B11A 06:B10A: B9        .byte $B9   ; 
- D 1 - I - 0x01B11B 06:B10B: 07        .byte $07   ; 
- D 1 - I - 0x01B11C 06:B10C: 4C        .byte $4C   ; 
- D 1 - I - 0x01B11D 06:B10D: 74        .byte $74   ; 
- D 1 - I - 0x01B11E 06:B10E: 5E        .byte $5E   ; 
- D 1 - I - 0x01B11F 06:B10F: 58        .byte $58   ; 



_off016_round_1_2_B110_0B6:
- D 1 - I - 0x01B120 06:B110: 96        .byte $96   ; 
- D 1 - I - 0x01B121 06:B111: 30        .byte $30   ; 
- D 1 - I - 0x01B122 06:B112: 0C        .byte $0C   ; 
- D 1 - I - 0x01B123 06:B113: 69        .byte $69   ; 
- D 1 - I - 0x01B124 06:B114: B9        .byte $B9   ; 
- D 1 - I - 0x01B125 06:B115: 07        .byte $07   ; 
- D 1 - I - 0x01B126 06:B116: 4D        .byte $4D   ; 
- D 1 - I - 0x01B127 06:B117: 75        .byte $75   ; 
- D 1 - I - 0x01B128 06:B118: 5F        .byte $5F   ; 
- D 1 - I - 0x01B129 06:B119: 59        .byte $59   ; 



_off016_round_1_2_B11A_0B8:
- D 1 - I - 0x01B12A 06:B11A: 96        .byte $96   ; 
- D 1 - I - 0x01B12B 06:B11B: 31        .byte $31   ; 
- D 1 - I - 0x01B12C 06:B11C: 0C        .byte $0C   ; 
- D 1 - I - 0x01B12D 06:B11D: 69        .byte $69   ; 
- D 1 - I - 0x01B12E 06:B11E: B9        .byte $B9   ; 
- D 1 - I - 0x01B12F 06:B11F: 07        .byte $07   ; 
- D 1 - I - 0x01B130 06:B120: 4C        .byte $4C   ; 
- D 1 - I - 0x01B131 06:B121: 74        .byte $74   ; 
- D 1 - I - 0x01B132 06:B122: 5E        .byte $5E   ; 
- D 1 - I - 0x01B133 06:B123: 58        .byte $58   ; 



_off016_round_1_2_B124_0BA:
_off016_round_1_2_B124_0BE:
- D 1 - I - 0x01B134 06:B124: 87        .byte $87   ; 
- D 1 - I - 0x01B135 06:B125: 0C        .byte $0C   ; 
- D 1 - I - 0x01B136 06:B126: 69        .byte $69   ; 
- D 1 - I - 0x01B137 06:B127: B9        .byte $B9   ; 
- D 1 - I - 0x01B138 06:B128: 07        .byte $07   ; 
- D 1 - I - 0x01B139 06:B129: 4D        .byte $4D   ; 
- D 1 - I - 0x01B13A 06:B12A: 75        .byte $75   ; 
- D 1 - I - 0x01B13B 06:B12B: 5F        .byte $5F   ; 
- D 1 - I - 0x01B13C 06:B12C: 59        .byte $59   ; 



_off016_round_1_2_B12D_0C2:
- D 1 - I - 0x01B13D 06:B12D: 87        .byte $87   ; 
- D 1 - I - 0x01B13E 06:B12E: 51        .byte $51   ; 
- D 1 - I - 0x01B13F 06:B12F: 5D        .byte $5D   ; 
- D 1 - I - 0x01B140 06:B130: BA        .byte $BA   ; 
- D 1 - I - 0x01B141 06:B131: 07        .byte $07   ; 
- D 1 - I - 0x01B142 06:B132: 4D        .byte $4D   ; 
- D 1 - I - 0x01B143 06:B133: 75        .byte $75   ; 
- D 1 - I - 0x01B144 06:B134: 5F        .byte $5F   ; 
- D 1 - I - 0x01B145 06:B135: 59        .byte $59   ; 



_off016_round_1_2_B136_0C4:
- D 1 - I - 0x01B146 06:B136: 9D        .byte $9D   ; 
- D 1 - I - 0x01B147 06:B137: 15        .byte $15   ; 
- D 1 - I - 0x01B148 06:B138: BB        .byte $BB   ; 
- D 1 - I - 0x01B149 06:B139: 07        .byte $07   ; 
- D 1 - I - 0x01B14A 06:B13A: 4C        .byte $4C   ; 
- D 1 - I - 0x01B14B 06:B13B: 74        .byte $74   ; 
- D 1 - I - 0x01B14C 06:B13C: 5E        .byte $5E   ; 
- D 1 - I - 0x01B14D 06:B13D: 58        .byte $58   ; 



_off016_round_1_2_B13E_0C6:
- D 1 - I - 0x01B14E 06:B13E: 9D        .byte $9D   ; 
- D 1 - I - 0x01B14F 06:B13F: 15        .byte $15   ; 
- D 1 - I - 0x01B150 06:B140: BB        .byte $BB   ; 
- D 1 - I - 0x01B151 06:B141: 12        .byte $12   ; 
- D 1 - I - 0x01B152 06:B142: 97        .byte $97   ; 
- D 1 - I - 0x01B153 06:B143: 5F        .byte $5F   ; 
- D 1 - I - 0x01B154 06:B144: 5B        .byte $5B   ; 



_off016_round_1_2_B145_0C8:
_off016_round_1_2_B145_0CC:
_off016_round_1_2_B145_0CE:
_off016_round_1_2_B145_0D2:
_off016_round_1_2_B145_0D4:
_off016_round_1_2_B145_0D6:
_off016_round_1_2_B145_0DA:
_off016_round_1_2_B145_0DC:
_off016_round_1_2_B145_0DE:
_off016_round_1_2_B145_0E2:
_off016_round_1_2_B145_0E4:
_off016_round_1_2_B145_0E8:
_off016_round_1_2_B145_0EA:
_off016_round_1_2_B145_0EC:
_off016_round_1_2_B145_0F0:
_off016_round_1_2_B145_0F2:
_off016_round_1_2_B145_0F4:
_off016_round_1_2_B145_0F8:
_off016_round_1_2_B145_0FA:
_off016_round_1_2_B145_0FE:
- D 1 - I - 0x01B155 06:B145: 9D        .byte $9D   ; 
- D 1 - I - 0x01B156 06:B146: 15        .byte $15   ; 
- D 1 - I - 0x01B157 06:B147: BB        .byte $BB   ; 
- D 1 - I - 0x01B158 06:B148: 2A        .byte $2A   ; 
- D 1 - I - 0x01B159 06:B149: BC        .byte $BC   ; 
- D 1 - I - 0x01B15A 06:B14A: 45        .byte $45   ; 
- D 1 - I - 0x01B15B 06:B14B: 00        .byte $00   ; 



_off016_round_1_2_B14C_0CA:
_off016_round_1_2_B14C_0D0:
_off016_round_1_2_B14C_0D8:
_off016_round_1_2_B14C_0E0:
_off016_round_1_2_B14C_0E6:
_off016_round_1_2_B14C_0EE:
_off016_round_1_2_B14C_0F6:
_off016_round_1_2_B14C_0FC:
- D 1 - I - 0x01B15C 06:B14C: 9D        .byte $9D   ; 
- D 1 - I - 0x01B15D 06:B14D: 15        .byte $15   ; 
- D 1 - I - 0x01B15E 06:B14E: BB        .byte $BB   ; 
- D 1 - I - 0x01B15F 06:B14F: 2B        .byte $2B   ; 
- D 1 - I - 0x01B160 06:B150: 33        .byte $33   ; 
- D 1 - I - 0x01B161 06:B151: 36        .byte $36   ; 
- D 1 - I - 0x01B162 06:B152: 47        .byte $47   ; 
- D 1 - I - 0x01B163 06:B153: 46        .byte $46   ; 



_off016_round_1_2_B154_100:
- D 1 - I - 0x01B164 06:B154: 87        .byte $87   ; 
- D 1 - I - 0x01B165 06:B155: 2F        .byte $2F   ; 
- D 1 - I - 0x01B166 06:B156: BD        .byte $BD   ; 



_off016_round_1_2_B157_102:
- D 1 - I - 0x01B167 06:B157: 87        .byte $87   ; 
- D 1 - I - 0x01B168 06:B158: 07        .byte $07   ; 
- D 1 - I - 0x01B169 06:B159: 4D        .byte $4D   ; 
- D 1 - I - 0x01B16A 06:B15A: BE        .byte $BE   ; 



_off016_round_1_2_B15B_104:
- D 1 - I - 0x01B16B 06:B15B: 89        .byte $89   ; 
- D 1 - I - 0x01B16C 06:B15C: 08        .byte $08   ; 
- D 1 - I - 0x01B16D 06:B15D: A1        .byte $A1   ; 
- D 1 - I - 0x01B16E 06:B15E: 22        .byte $22   ; 
- D 1 - I - 0x01B16F 06:B15F: 07        .byte $07   ; 
- D 1 - I - 0x01B170 06:B160: 4C        .byte $4C   ; 
- D 1 - I - 0x01B171 06:B161: BF        .byte $BF   ; 



_off016_round_1_2_B162_106:
- D 1 - I - 0x01B172 06:B162: 89        .byte $89   ; 
- D 1 - I - 0x01B173 06:B163: 09        .byte $09   ; 
- D 1 - I - 0x01B174 06:B164: A1        .byte $A1   ; 
- D 1 - I - 0x01B175 06:B165: 23        .byte $23   ; 
- D 1 - I - 0x01B176 06:B166: 2E        .byte $2E   ; 
- D 1 - I - 0x01B177 06:B167: 9F        .byte $9F   ; 
- D 1 - I - 0x01B178 06:B168: 9B        .byte $9B   ; 



_off016_round_1_2_B169_108:
- D 1 - I - 0x01B179 06:B169: 89        .byte $89   ; 
- D 1 - I - 0x01B17A 06:B16A: 0A        .byte $0A   ; 
- D 1 - I - 0x01B17B 06:B16B: 88        .byte $88   ; 
- D 1 - I - 0x01B17C 06:B16C: 62        .byte $62   ; 
- D 1 - I - 0x01B17D 06:B16D: 6A        .byte $6A   ; 
- D 1 - I - 0x01B17E 06:B16E: A0        .byte $A0   ; 
- D 1 - I - 0x01B17F 06:B16F: 31        .byte $31   ; 
- D 1 - I - 0x01B180 06:B170: 38        .byte $38   ; 
- D 1 - I - 0x01B181 06:B171: 07        .byte $07   ; 
- D 1 - I - 0x01B182 06:B172: 4C        .byte $4C   ; 
- D 1 - I - 0x01B183 06:B173: 94        .byte $94   ; 



_off016_round_1_2_B174_10A:
- D 1 - I - 0x01B184 06:B174: 93        .byte $93   ; 
- D 1 - I - 0x01B185 06:B175: 63        .byte $63   ; 
- D 1 - I - 0x01B186 06:B176: 6B        .byte $6B   ; 
- D 1 - I - 0x01B187 06:B177: A1        .byte $A1   ; 
- D 1 - I - 0x01B188 06:B178: 31        .byte $31   ; 
- D 1 - I - 0x01B189 06:B179: 07        .byte $07   ; 
- D 1 - I - 0x01B18A 06:B17A: 4D        .byte $4D   ; 
- D 1 - I - 0x01B18B 06:B17B: 95        .byte $95   ; 



_off016_round_1_2_B17C_110:
_off016_round_1_2_B17C_11C:
_off016_round_1_3_B17C_124:
- D 1 - I - 0x01B18C 06:B17C: 84        .byte $84   ; 
- D 1 - I - 0x01B18D 06:B17D: 30        .byte $30   ; 
- D 1 - I - 0x01B18E 06:B17E: 07        .byte $07   ; 
- D 1 - I - 0x01B18F 06:B17F: 4C        .byte $4C   ; 
- D 1 - I - 0x01B190 06:B180: 94        .byte $94   ; 



_off016_round_1_2_B181_112:
_off016_round_1_3_B181_126:
- D 1 - I - 0x01B191 06:B181: 9D        .byte $9D   ; 
- D 1 - I - 0x01B192 06:B182: 30        .byte $30   ; 
- D 1 - I - 0x01B193 06:B183: 17        .byte $17   ; 
- D 1 - I - 0x01B194 06:B184: 07        .byte $07   ; 
- D 1 - I - 0x01B195 06:B185: 4D        .byte $4D   ; 
- D 1 - I - 0x01B196 06:B186: 95        .byte $95   ; 



_off016_round_1_2_B187_114:
- D 1 - I - 0x01B197 06:B187: A1        .byte $A1   ; 
- D 1 - I - 0x01B198 06:B188: 08        .byte $08   ; 
- D 1 - I - 0x01B199 06:B189: 93        .byte $93   ; 
- D 1 - I - 0x01B19A 06:B18A: 31        .byte $31   ; 
- D 1 - I - 0x01B19B 06:B18B: 3F        .byte $3F   ; 
- D 1 - I - 0x01B19C 06:B18C: 07        .byte $07   ; 
- D 1 - I - 0x01B19D 06:B18D: 4C        .byte $4C   ; 
- D 1 - I - 0x01B19E 06:B18E: 94        .byte $94   ; 



_off016_round_1_2_B18F_116:
- D 1 - I - 0x01B19F 06:B18F: A1        .byte $A1   ; 
- D 1 - I - 0x01B1A0 06:B190: 09        .byte $09   ; 
- D 1 - I - 0x01B1A1 06:B191: 93        .byte $93   ; 
- D 1 - I - 0x01B1A2 06:B192: 30        .byte $30   ; 
- D 1 - I - 0x01B1A3 06:B193: 03        .byte $03   ; 
- D 1 - I - 0x01B1A4 06:B194: 07        .byte $07   ; 
- D 1 - I - 0x01B1A5 06:B195: 4D        .byte $4D   ; 
- D 1 - I - 0x01B1A6 06:B196: 95        .byte $95   ; 



_off016_round_1_2_B197_118:
- D 1 - I - 0x01B1A7 06:B197: A1        .byte $A1   ; 
- D 1 - I - 0x01B1A8 06:B198: 0A        .byte $0A   ; 
- D 1 - I - 0x01B1A9 06:B199: 8C        .byte $8C   ; 
- D 1 - I - 0x01B1AA 06:B19A: 0D        .byte $0D   ; 
- D 1 - I - 0x01B1AB 06:B19B: 00        .byte $00   ; 
- D 1 - I - 0x01B1AC 06:B19C: 31        .byte $31   ; 
- D 1 - I - 0x01B1AD 06:B19D: 38        .byte $38   ; 
- D 1 - I - 0x01B1AE 06:B19E: 07        .byte $07   ; 
- D 1 - I - 0x01B1AF 06:B19F: 4C        .byte $4C   ; 
- D 1 - I - 0x01B1B0 06:B1A0: 94        .byte $94   ; 



_off016_round_1_2_B1A1_11A:
- D 1 - I - 0x01B1B1 06:B1A1: 87        .byte $87   ; 
- D 1 - I - 0x01B1B2 06:B1A2: 0E        .byte $0E   ; 
- D 1 - I - 0x01B1B3 06:B1A3: 88        .byte $88   ; 
- D 1 - I - 0x01B1B4 06:B1A4: 31        .byte $31   ; 
- D 1 - I - 0x01B1B5 06:B1A5: 07        .byte $07   ; 
- D 1 - I - 0x01B1B6 06:B1A6: 4D        .byte $4D   ; 
- D 1 - I - 0x01B1B7 06:B1A7: 95        .byte $95   ; 



_off016_round_1_2_B1A8_11E:
_off016_round_1_2_B1A8_142:
- D 1 - I - 0x01B1B8 06:B1A8: 9D        .byte $9D   ; 
- D 1 - I - 0x01B1B9 06:B1A9: 30        .byte $30   ; 
- D 1 - I - 0x01B1BA 06:B1AA: 03        .byte $03   ; 
- D 1 - I - 0x01B1BB 06:B1AB: 07        .byte $07   ; 
- D 1 - I - 0x01B1BC 06:B1AC: 4D        .byte $4D   ; 
- D 1 - I - 0x01B1BD 06:B1AD: 95        .byte $95   ; 



_off016_round_1_2_B1AE_120:
- D 1 - I - 0x01B1BE 06:B1AE: A3        .byte $A3   ; 
- D 1 - I - 0x01B1BF 06:B1AF: 30        .byte $30   ; 
- D 1 - I - 0x01B1C0 06:B1B0: 82        .byte $82   ; 
- D 1 - I - 0x01B1C1 06:B1B1: 07        .byte $07   ; 
- D 1 - I - 0x01B1C2 06:B1B2: 4C        .byte $4C   ; 
- D 1 - I - 0x01B1C3 06:B1B3: 94        .byte $94   ; 



_off016_round_1_2_B1B4_122:
- D 1 - I - 0x01B1C4 06:B1B4: A3        .byte $A3   ; 
- D 1 - I - 0x01B1C5 06:B1B5: 31        .byte $31   ; 
- D 1 - I - 0x01B1C6 06:B1B6: 38        .byte $38   ; 
- D 1 - I - 0x01B1C7 06:B1B7: 03        .byte $03   ; 
- D 1 - I - 0x01B1C8 06:B1B8: 20        .byte $20   ; 
- D 1 - I - 0x01B1C9 06:B1B9: C0        .byte $C0   ; 



_off016_round_1_2_B1BA_124:
- D 1 - I - 0x01B1CA 06:B1BA: 9D        .byte $9D   ; 
- D 1 - I - 0x01B1CB 06:B1BB: 31        .byte $31   ; 
- D 1 - I - 0x01B1CC 06:B1BC: C1        .byte $C1   ; 
- D 1 - I - 0x01B1CD 06:B1BD: 29        .byte $29   ; 
- D 1 - I - 0x01B1CE 06:B1BE: C2        .byte $C2   ; 



_off016_round_1_2_B1BF_126:
_off016_round_1_2_B1BF_13A:
- D 1 - I - 0x01B1CF 06:B1BF: 9D        .byte $9D   ; 
- D 1 - I - 0x01B1D0 06:B1C0: 30        .byte $30   ; 
- D 1 - I - 0x01B1D1 06:B1C1: C1        .byte $C1   ; 
- D 1 - I - 0x01B1D2 06:B1C2: 29        .byte $29   ; 
- D 1 - I - 0x01B1D3 06:B1C3: C2        .byte $C2   ; 



_off016_round_1_2_B1C4_128:
_off016_round_1_2_B1C4_138:
_off016_round_1_2_B1C4_148:
- D 1 - I - 0x01B1D4 06:B1C4: 9D        .byte $9D   ; 
- D 1 - I - 0x01B1D5 06:B1C5: 31        .byte $31   ; 
- D 1 - I - 0x01B1D6 06:B1C6: 38        .byte $38   ; 
- D 1 - I - 0x01B1D7 06:B1C7: A9        .byte $A9   ; 
- D 1 - I - 0x01B1D8 06:B1C8: 29        .byte $29   ; 
- D 1 - I - 0x01B1D9 06:B1C9: C2        .byte $C2   ; 



_off016_round_1_2_B1CA_12A:
_off016_round_1_2_B1CA_14A:
- D 1 - I - 0x01B1DA 06:B1CA: 84        .byte $84   ; 
- D 1 - I - 0x01B1DB 06:B1CB: 31        .byte $31   ; 
- D 1 - I - 0x01B1DC 06:B1CC: A9        .byte $A9   ; 
- D 1 - I - 0x01B1DD 06:B1CD: 29        .byte $29   ; 
- D 1 - I - 0x01B1DE 06:B1CE: C2        .byte $C2   ; 



_off016_round_1_2_B1CF_12C:
- D 1 - I - 0x01B1DF 06:B1CF: 8F        .byte $8F   ; 
- D 1 - I - 0x01B1E0 06:B1D0: 60        .byte $60   ; 
- D 1 - I - 0x01B1E1 06:B1D1: 68        .byte $68   ; 
- D 1 - I - 0x01B1E2 06:B1D2: 8C        .byte $8C   ; 
- D 1 - I - 0x01B1E3 06:B1D3: 30        .byte $30   ; 
- D 1 - I - 0x01B1E4 06:B1D4: 82        .byte $82   ; 
- D 1 - I - 0x01B1E5 06:B1D5: 21        .byte $21   ; 
- D 1 - I - 0x01B1E6 06:B1D6: A2        .byte $A2   ; 



_off016_round_1_2_B1D7_12E:
- D 1 - I - 0x01B1E7 06:B1D7: 8F        .byte $8F   ; 
- D 1 - I - 0x01B1E8 06:B1D8: 61        .byte $61   ; 
- D 1 - I - 0x01B1E9 06:B1D9: 8C        .byte $8C   ; 
- D 1 - I - 0x01B1EA 06:B1DA: 30        .byte $30   ; 
- D 1 - I - 0x01B1EB 06:B1DB: 82        .byte $82   ; 
- D 1 - I - 0x01B1EC 06:B1DC: 3F        .byte $3F   ; 
- D 1 - I - 0x01B1ED 06:B1DD: 07        .byte $07   ; 
- D 1 - I - 0x01B1EE 06:B1DE: 4D        .byte $4D   ; 
- D 1 - I - 0x01B1EF 06:B1DF: 99        .byte $99   ; 



_off016_round_1_2_B1E0_130:
- D 1 - I - 0x01B1F0 06:B1E0: A3        .byte $A3   ; 
- D 1 - I - 0x01B1F1 06:B1E1: 0D        .byte $0D   ; 
- D 1 - I - 0x01B1F2 06:B1E2: 31        .byte $31   ; 
- D 1 - I - 0x01B1F3 06:B1E3: 38        .byte $38   ; 
- D 1 - I - 0x01B1F4 06:B1E4: 03        .byte $03   ; 
- D 1 - I - 0x01B1F5 06:B1E5: 17        .byte $17   ; 
- D 1 - I - 0x01B1F6 06:B1E6: 07        .byte $07   ; 
- D 1 - I - 0x01B1F7 06:B1E7: 4C        .byte $4C   ; 
- D 1 - I - 0x01B1F8 06:B1E8: 8E        .byte $8E   ; 



_off016_round_1_2_B1E9_132:
- D 1 - I - 0x01B1F9 06:B1E9: A3        .byte $A3   ; 
- D 1 - I - 0x01B1FA 06:B1EA: 0E        .byte $0E   ; 
- D 1 - I - 0x01B1FB 06:B1EB: 00        .byte $00   ; 
- D 1 - I - 0x01B1FC 06:B1EC: 31        .byte $31   ; 
- D 1 - I - 0x01B1FD 06:B1ED: 82        .byte $82   ; 
- D 1 - I - 0x01B1FE 06:B1EE: 07        .byte $07   ; 
- D 1 - I - 0x01B1FF 06:B1EF: 4D        .byte $4D   ; 
- D 1 - I - 0x01B200 06:B1F0: 99        .byte $99   ; 



_off016_round_1_2_B1F1_136:
- D 1 - I - 0x01B201 06:B1F1: 9D        .byte $9D   ; 
- D 1 - I - 0x01B202 06:B1F2: 30        .byte $30   ; 
- D 1 - I - 0x01B203 06:B1F3: 85        .byte $85   ; 
- D 1 - I - 0x01B204 06:B1F4: 20        .byte $20   ; 
- D 1 - I - 0x01B205 06:B1F5: 9F        .byte $9F   ; 



_off016_round_1_2_B1F6_13C:
- D 1 - I - 0x01B206 06:B1F6: A1        .byte $A1   ; 
- D 1 - I - 0x01B207 06:B1F7: 08        .byte $08   ; 
- D 1 - I - 0x01B208 06:B1F8: 93        .byte $93   ; 
- D 1 - I - 0x01B209 06:B1F9: 31        .byte $31   ; 
- D 1 - I - 0x01B20A 06:B1FA: 38        .byte $38   ; 
- D 1 - I - 0x01B20B 06:B1FB: A9        .byte $A9   ; 
- D 1 - I - 0x01B20C 06:B1FC: 29        .byte $29   ; 
- D 1 - I - 0x01B20D 06:B1FD: C2        .byte $C2   ; 



_off016_round_1_2_B1FE_13E:
- D 1 - I - 0x01B20E 06:B1FE: A1        .byte $A1   ; 
- D 1 - I - 0x01B20F 06:B1FF: 09        .byte $09   ; 
- D 1 - I - 0x01B210 06:B200: A0        .byte $A0   ; 
- D 1 - I - 0x01B211 06:B201: 31        .byte $31   ; 
- D 1 - I - 0x01B212 06:B202: A9        .byte $A9   ; 
- D 1 - I - 0x01B213 06:B203: 29        .byte $29   ; 
- D 1 - I - 0x01B214 06:B204: C2        .byte $C2   ; 



_off016_round_1_2_B205_140:
- D 1 - I - 0x01B215 06:B205: A1        .byte $A1   ; 
- D 1 - I - 0x01B216 06:B206: 0A        .byte $0A   ; 
- D 1 - I - 0x01B217 06:B207: A0        .byte $A0   ; 
- D 1 - I - 0x01B218 06:B208: 30        .byte $30   ; 
- D 1 - I - 0x01B219 06:B209: 21        .byte $21   ; 
- D 1 - I - 0x01B21A 06:B20A: C3        .byte $C3   ; 



_off016_round_1_2_B20B_144:
- D 1 - I - 0x01B21B 06:B20B: 9D        .byte $9D   ; 
- D 1 - I - 0x01B21C 06:B20C: 31        .byte $31   ; 
- D 1 - I - 0x01B21D 06:B20D: 17        .byte $17   ; 
- D 1 - I - 0x01B21E 06:B20E: 07        .byte $07   ; 
- D 1 - I - 0x01B21F 06:B20F: 4C        .byte $4C   ; 
- D 1 - I - 0x01B220 06:B210: 94        .byte $94   ; 



_off016_round_1_2_B211_146:
- D 1 - I - 0x01B221 06:B211: 9D        .byte $9D   ; 
- D 1 - I - 0x01B222 06:B212: 30        .byte $30   ; 
- D 1 - I - 0x01B223 06:B213: 03        .byte $03   ; 
- D 1 - I - 0x01B224 06:B214: 20        .byte $20   ; 
- D 1 - I - 0x01B225 06:B215: C0        .byte $C0   ; 



_off016_round_1_2_B216_14C:
_off016_round_1_2_B216_158:
- D 1 - I - 0x01B226 06:B216: 84        .byte $84   ; 
- D 1 - I - 0x01B227 06:B217: 30        .byte $30   ; 
- D 1 - I - 0x01B228 06:B218: A9        .byte $A9   ; 
- D 1 - I - 0x01B229 06:B219: 29        .byte $29   ; 
- D 1 - I - 0x01B22A 06:B21A: C2        .byte $C2   ; 



_off016_round_1_2_B21B_14E:
_off016_round_1_2_B21B_15A:
- D 1 - I - 0x01B22B 06:B21B: 84        .byte $84   ; 
- D 1 - I - 0x01B22C 06:B21C: 31        .byte $31   ; 
- D 1 - I - 0x01B22D 06:B21D: 38        .byte $38   ; 
- D 1 - I - 0x01B22E 06:B21E: 85        .byte $85   ; 
- D 1 - I - 0x01B22F 06:B21F: 29        .byte $29   ; 
- D 1 - I - 0x01B230 06:B220: C2        .byte $C2   ; 



_off016_round_1_2_B221_150:
- D 1 - I - 0x01B231 06:B221: 84        .byte $84   ; 
- D 1 - I - 0x01B232 06:B222: 30        .byte $30   ; 
- D 1 - I - 0x01B233 06:B223: 82        .byte $82   ; 
- D 1 - I - 0x01B234 06:B224: 21        .byte $21   ; 
- D 1 - I - 0x01B235 06:B225: A2        .byte $A2   ; 



_off016_round_1_2_B226_152:
- D 1 - I - 0x01B236 06:B226: 9D        .byte $9D   ; 
- D 1 - I - 0x01B237 06:B227: 30        .byte $30   ; 
- D 1 - I - 0x01B238 06:B228: 85        .byte $85   ; 
- D 1 - I - 0x01B239 06:B229: 07        .byte $07   ; 
- D 1 - I - 0x01B23A 06:B22A: 4D        .byte $4D   ; 
- D 1 - I - 0x01B23B 06:B22B: 99        .byte $99   ; 



_off016_round_1_2_B22C_154:
- D 1 - I - 0x01B23C 06:B22C: 9D        .byte $9D   ; 
- D 1 - I - 0x01B23D 06:B22D: 31        .byte $31   ; 
- D 1 - I - 0x01B23E 06:B22E: 38        .byte $38   ; 
- D 1 - I - 0x01B23F 06:B22F: 82        .byte $82   ; 
- D 1 - I - 0x01B240 06:B230: 07        .byte $07   ; 
- D 1 - I - 0x01B241 06:B231: 4C        .byte $4C   ; 
- D 1 - I - 0x01B242 06:B232: 8E        .byte $8E   ; 



_off016_round_1_2_B233_156:
- D 1 - I - 0x01B243 06:B233: 84        .byte $84   ; 
- D 1 - I - 0x01B244 06:B234: 31        .byte $31   ; 
- D 1 - I - 0x01B245 06:B235: 82        .byte $82   ; 
- D 1 - I - 0x01B246 06:B236: 20        .byte $20   ; 
- D 1 - I - 0x01B247 06:B237: 9F        .byte $9F   ; 



_off016_round_1_2_B238_15C:
- D 1 - I - 0x01B248 06:B238: 8F        .byte $8F   ; 
- D 1 - I - 0x01B249 06:B239: 08        .byte $08   ; 
- D 1 - I - 0x01B24A 06:B23A: 90        .byte $90   ; 
- D 1 - I - 0x01B24B 06:B23B: 30        .byte $30   ; 
- D 1 - I - 0x01B24C 06:B23C: A9        .byte $A9   ; 
- D 1 - I - 0x01B24D 06:B23D: 29        .byte $29   ; 
- D 1 - I - 0x01B24E 06:B23E: C2        .byte $C2   ; 



_off016_round_1_2_B23F_15E:
- D 1 - I - 0x01B24F 06:B23F: 98        .byte $98   ; 
- D 1 - I - 0x01B250 06:B240: 54        .byte $54   ; 
- D 1 - I - 0x01B251 06:B241: 09        .byte $09   ; 
- D 1 - I - 0x01B252 06:B242: 90        .byte $90   ; 
- D 1 - I - 0x01B253 06:B243: 31        .byte $31   ; 
- D 1 - I - 0x01B254 06:B244: A9        .byte $A9   ; 
- D 1 - I - 0x01B255 06:B245: 29        .byte $29   ; 
- D 1 - I - 0x01B256 06:B246: C2        .byte $C2   ; 



_off016_round_1_2_B247_160:
- D 1 - I - 0x01B257 06:B247: 98        .byte $98   ; 
- D 1 - I - 0x01B258 06:B248: 55        .byte $55   ; 
- D 1 - I - 0x01B259 06:B249: 0A        .byte $0A   ; 
- D 1 - I - 0x01B25A 06:B24A: 90        .byte $90   ; 
- D 1 - I - 0x01B25B 06:B24B: 30        .byte $30   ; 
- D 1 - I - 0x01B25C 06:B24C: 21        .byte $21   ; 
- D 1 - I - 0x01B25D 06:B24D: C3        .byte $C3   ; 



_off016_round_1_2_B24E_162:
- D 1 - I - 0x01B25E 06:B24E: 98        .byte $98   ; 
- D 1 - I - 0x01B25F 06:B24F: 4E        .byte $4E   ; 
- D 1 - I - 0x01B260 06:B250: 8C        .byte $8C   ; 
- D 1 - I - 0x01B261 06:B251: 71        .byte $71   ; 
- D 1 - I - 0x01B262 06:B252: 30        .byte $30   ; 
- D 1 - I - 0x01B263 06:B253: 3A        .byte $3A   ; 
- D 1 - I - 0x01B264 06:B254: 07        .byte $07   ; 
- D 1 - I - 0x01B265 06:B255: 4D        .byte $4D   ; 
- D 1 - I - 0x01B266 06:B256: 95        .byte $95   ; 



_off016_round_1_2_B257_164:
- D 1 - I - 0x01B267 06:B257: 98        .byte $98   ; 
- D 1 - I - 0x01B268 06:B258: 4F        .byte $4F   ; 
- D 1 - I - 0x01B269 06:B259: 8C        .byte $8C   ; 
- D 1 - I - 0x01B26A 06:B25A: 40        .byte $40   ; 
- D 1 - I - 0x01B26B 06:B25B: 48        .byte $48   ; 
- D 1 - I - 0x01B26C 06:B25C: 3B        .byte $3B   ; 
- D 1 - I - 0x01B26D 06:B25D: 07        .byte $07   ; 
- D 1 - I - 0x01B26E 06:B25E: 4C        .byte $4C   ; 
- D 1 - I - 0x01B26F 06:B25F: 94        .byte $94   ; 



_off016_round_1_2_B260_166:
- D 1 - I - 0x01B270 06:B260: A3        .byte $A3   ; 
- D 1 - I - 0x01B271 06:B261: 11        .byte $11   ; 
- D 1 - I - 0x01B272 06:B262: 43        .byte $43   ; 
- D 1 - I - 0x01B273 06:B263: 3C        .byte $3C   ; 
- D 1 - I - 0x01B274 06:B264: 07        .byte $07   ; 
- D 1 - I - 0x01B275 06:B265: 4D        .byte $4D   ; 
- D 1 - I - 0x01B276 06:B266: 95        .byte $95   ; 



_off016_round_1_2_B267_168:
- D 1 - I - 0x01B277 06:B267: A3        .byte $A3   ; 
- D 1 - I - 0x01B278 06:B268: 0B        .byte $0B   ; 
- D 1 - I - 0x01B279 06:B269: 31        .byte $31   ; 
- D 1 - I - 0x01B27A 06:B26A: 39        .byte $39   ; 
- D 1 - I - 0x01B27B 06:B26B: 07        .byte $07   ; 
- D 1 - I - 0x01B27C 06:B26C: 4C        .byte $4C   ; 
- D 1 - I - 0x01B27D 06:B26D: 94        .byte $94   ; 



_off016_round_1_2_B26E_16C:
- D 1 - I - 0x01B27E 06:B26E: 8F        .byte $8F   ; 
- D 1 - I - 0x01B27F 06:B26F: 0D        .byte $0D   ; 
- D 1 - I - 0x01B280 06:B270: 90        .byte $90   ; 
- D 1 - I - 0x01B281 06:B271: 30        .byte $30   ; 
- D 1 - I - 0x01B282 06:B272: 07        .byte $07   ; 
- D 1 - I - 0x01B283 06:B273: 4C        .byte $4C   ; 
- D 1 - I - 0x01B284 06:B274: 94        .byte $94   ; 



_off016_round_1_2_B275_16E:
- D 1 - I - 0x01B285 06:B275: 8F        .byte $8F   ; 
- D 1 - I - 0x01B286 06:B276: 28        .byte $28   ; 
- D 1 - I - 0x01B287 06:B277: 8C        .byte $8C   ; 
- D 1 - I - 0x01B288 06:B278: 30        .byte $30   ; 
- D 1 - I - 0x01B289 06:B279: 03        .byte $03   ; 
- D 1 - I - 0x01B28A 06:B27A: 07        .byte $07   ; 
- D 1 - I - 0x01B28B 06:B27B: 4D        .byte $4D   ; 
- D 1 - I - 0x01B28C 06:B27C: 95        .byte $95   ; 



_off016_round_1_2_B27D_170:
- D 1 - I - 0x01B28D 06:B27D: 8F        .byte $8F   ; 
- D 1 - I - 0x01B28E 06:B27E: 0E        .byte $0E   ; 
- D 1 - I - 0x01B28F 06:B27F: 8C        .byte $8C   ; 
- D 1 - I - 0x01B290 06:B280: 31        .byte $31   ; 
- D 1 - I - 0x01B291 06:B281: 38        .byte $38   ; 
- D 1 - I - 0x01B292 06:B282: 07        .byte $07   ; 
- D 1 - I - 0x01B293 06:B283: 4C        .byte $4C   ; 
- D 1 - I - 0x01B294 06:B284: 94        .byte $94   ; 



_off016_round_1_2_B285_172:
- D 1 - I - 0x01B295 06:B285: A3        .byte $A3   ; 
- D 1 - I - 0x01B296 06:B286: 71        .byte $71   ; 
- D 1 - I - 0x01B297 06:B287: 30        .byte $30   ; 
- D 1 - I - 0x01B298 06:B288: 3A        .byte $3A   ; 
- D 1 - I - 0x01B299 06:B289: 07        .byte $07   ; 
- D 1 - I - 0x01B29A 06:B28A: 4D        .byte $4D   ; 
- D 1 - I - 0x01B29B 06:B28B: 95        .byte $95   ; 



_off016_round_1_2_B28C_174:
- D 1 - I - 0x01B29C 06:B28C: 87        .byte $87   ; 
- D 1 - I - 0x01B29D 06:B28D: 40        .byte $40   ; 
- D 1 - I - 0x01B29E 06:B28E: 48        .byte $48   ; 
- D 1 - I - 0x01B29F 06:B28F: 50        .byte $50   ; 
- D 1 - I - 0x01B2A0 06:B290: 3B        .byte $3B   ; 
- D 1 - I - 0x01B2A1 06:B291: 07        .byte $07   ; 
- D 1 - I - 0x01B2A2 06:B292: 4C        .byte $4C   ; 
- D 1 - I - 0x01B2A3 06:B293: 94        .byte $94   ; 



_off016_round_1_2_B294_176:
- D 1 - I - 0x01B2A4 06:B294: 87        .byte $87   ; 
- D 1 - I - 0x01B2A5 06:B295: 41        .byte $41   ; 
- D 1 - I - 0x01B2A6 06:B296: 10        .byte $10   ; 
- D 1 - I - 0x01B2A7 06:B297: 43        .byte $43   ; 
- D 1 - I - 0x01B2A8 06:B298: 3C        .byte $3C   ; 
- D 1 - I - 0x01B2A9 06:B299: 07        .byte $07   ; 
- D 1 - I - 0x01B2AA 06:B29A: 4D        .byte $4D   ; 
- D 1 - I - 0x01B2AB 06:B29B: 95        .byte $95   ; 



_off016_round_1_2_B29C_178:
- D 1 - I - 0x01B2AC 06:B29C: A3        .byte $A3   ; 
- D 1 - I - 0x01B2AD 06:B29D: 14        .byte $14   ; 
- D 1 - I - 0x01B2AE 06:B29E: 31        .byte $31   ; 
- D 1 - I - 0x01B2AF 06:B29F: 39        .byte $39   ; 
- D 1 - I - 0x01B2B0 06:B2A0: 07        .byte $07   ; 
- D 1 - I - 0x01B2B1 06:B2A1: 4C        .byte $4C   ; 
- D 1 - I - 0x01B2B2 06:B2A2: 94        .byte $94   ; 



_off016_round_1_2_B2A3_17E:
- D 1 - I - 0x01B2B3 06:B2A3: 81        .byte $81   ; 
- D 1 - I - 0x01B2B4 06:B2A4: 2E        .byte $2E   ; 
- D 1 - I - 0x01B2B5 06:B2A5: C0        .byte $C0   ; 



_off016_round_1_2_B2A6_180:
_off016_round_1_2_B2A6_182:
_off016_round_1_2_B2A6_18E:
_off016_round_1_2_B2A6_198:
_off016_round_1_2_B2A6_19A:
_off016_round_1_2_B2A6_19C:
_off016_round_1_2_B2A6_19E:
_off016_round_1_2_B2A6_1A0:
_off016_round_1_2_B2A6_1A2:
_off016_round_1_2_B2A6_1AC:
_off016_round_1_2_B2A6_1AE:
_off016_round_1_2_B2A6_1B0:
_off016_round_1_2_B2A6_1B2:
_off016_round_1_2_B2A6_1BE:
_off016_round_1_2_B2A6_1C0:
_off016_round_1_2_B2A6_1C2:
_off016_round_1_2_B2A6_1CC:
_off016_round_1_2_B2A6_1CE:
_off016_round_1_2_B2A6_1D0:
_off016_round_1_2_B2A6_1D2:
_off016_round_1_2_B2A6_1DC:
_off016_round_1_2_B2A6_1DE:
_off016_round_1_2_B2A6_1E0:
_off016_round_1_2_B2A6_1E2:
- D 1 - I - 0x01B2B6 06:B2A6: A4        .byte $A4   ; 
- D 1 - I - 0x01B2B7 06:B2A7: 15        .byte $15   ; 
- D 1 - I - 0x01B2B8 06:B2A8: 52        .byte $52   ; 
- D 1 - I - 0x01B2B9 06:B2A9: 45        .byte $45   ; 
- D 1 - I - 0x01B2BA 06:B2AA: 00        .byte $00   ; 



_off016_round_1_2_B2AB_184:
- D 1 - I - 0x01B2BB 06:B2AB: 9E        .byte $9E   ; 
- D 1 - I - 0x01B2BC 06:B2AC: 0D        .byte $0D   ; 
- D 1 - I - 0x01B2BD 06:B2AD: 15        .byte $15   ; 
- D 1 - I - 0x01B2BE 06:B2AE: 52        .byte $52   ; 
- D 1 - I - 0x01B2BF 06:B2AF: 45        .byte $45   ; 
- D 1 - I - 0x01B2C0 06:B2B0: 00        .byte $00   ; 



_off016_round_1_2_B2B1_186:
- D 1 - I - 0x01B2C1 06:B2B1: 9E        .byte $9E   ; 
- D 1 - I - 0x01B2C2 06:B2B2: 28        .byte $28   ; 
- D 1 - I - 0x01B2C3 06:B2B3: 15        .byte $15   ; 
- D 1 - I - 0x01B2C4 06:B2B4: 52        .byte $52   ; 
- D 1 - I - 0x01B2C5 06:B2B5: 45        .byte $45   ; 
- D 1 - I - 0x01B2C6 06:B2B6: 00        .byte $00   ; 



_off016_round_1_2_B2B7_188:
- D 1 - I - 0x01B2C7 06:B2B7: 87        .byte $87   ; 
- D 1 - I - 0x01B2C8 06:B2B8: 08        .byte $08   ; 
- D 1 - I - 0x01B2C9 06:B2B9: 90        .byte $90   ; 
- D 1 - I - 0x01B2CA 06:B2BA: 0E        .byte $0E   ; 
- D 1 - I - 0x01B2CB 06:B2BB: 15        .byte $15   ; 
- D 1 - I - 0x01B2CC 06:B2BC: 52        .byte $52   ; 
- D 1 - I - 0x01B2CD 06:B2BD: 45        .byte $45   ; 
- D 1 - I - 0x01B2CE 06:B2BE: 00        .byte $00   ; 



_off016_round_1_2_B2BF_18A:
- D 1 - I - 0x01B2CF 06:B2BF: 87        .byte $87   ; 
- D 1 - I - 0x01B2D0 06:B2C0: 09        .byte $09   ; 
- D 1 - I - 0x01B2D1 06:B2C1: 93        .byte $93   ; 
- D 1 - I - 0x01B2D2 06:B2C2: 15        .byte $15   ; 
- D 1 - I - 0x01B2D3 06:B2C3: 52        .byte $52   ; 
- D 1 - I - 0x01B2D4 06:B2C4: 45        .byte $45   ; 
- D 1 - I - 0x01B2D5 06:B2C5: 00        .byte $00   ; 



_off016_round_1_2_B2C6_18C:
_off016_round_1_2_B2C6_1BC:
- D 1 - I - 0x01B2D6 06:B2C6: 87        .byte $87   ; 
- D 1 - I - 0x01B2D7 06:B2C7: 0A        .byte $0A   ; 
- D 1 - I - 0x01B2D8 06:B2C8: 93        .byte $93   ; 
- D 1 - I - 0x01B2D9 06:B2C9: 15        .byte $15   ; 
- D 1 - I - 0x01B2DA 06:B2CA: 52        .byte $52   ; 
- D 1 - I - 0x01B2DB 06:B2CB: 45        .byte $45   ; 
- D 1 - I - 0x01B2DC 06:B2CC: 00        .byte $00   ; 



_off016_round_1_2_B2CD_190:
_off016_round_1_2_B2CD_1A4:
_off016_round_1_2_B2CD_1C4:
_off016_round_1_3_B2CD_018:
- D 1 - I - 0x01B2DD 06:B2CD: 9E        .byte $9E   ; 
- D 1 - I - 0x01B2DE 06:B2CE: 2F        .byte $2F   ; 
- D 1 - I - 0x01B2DF 06:B2CF: 8D        .byte $8D   ; 
- D 1 - I - 0x01B2E0 06:B2D0: 5F        .byte $5F   ; 
- D 1 - I - 0x01B2E1 06:B2D1: 5A        .byte $5A   ; 



_off016_round_1_2_B2D2_192:
_off016_round_1_2_B2D2_1A6:
_off016_round_1_2_B2D2_1C6:
_off016_round_1_3_B2D2_01A:
_off016_round_1_3_B2D2_082:
_off016_round_1_3_B2D2_08E:
- D 1 - I - 0x01B2E2 06:B2D2: 9E        .byte $9E   ; 
- D 1 - I - 0x01B2E3 06:B2D3: 07        .byte $07   ; 
- D 1 - I - 0x01B2E4 06:B2D4: 4D        .byte $4D   ; 
- D 1 - I - 0x01B2E5 06:B2D5: 75        .byte $75   ; 
- D 1 - I - 0x01B2E6 06:B2D6: 5F        .byte $5F   ; 
- D 1 - I - 0x01B2E7 06:B2D7: 59        .byte $59   ; 



_off016_round_1_2_B2D8_194:
_off016_round_1_2_B2D8_1A8:
_off016_round_1_2_B2D8_1C8:
_off016_round_1_3_B2D8_01C:
_off016_round_1_3_B2D8_090:
- D 1 - I - 0x01B2E8 06:B2D8: 9E        .byte $9E   ; 
- D 1 - I - 0x01B2E9 06:B2D9: 07        .byte $07   ; 
- D 1 - I - 0x01B2EA 06:B2DA: 4C        .byte $4C   ; 
- D 1 - I - 0x01B2EB 06:B2DB: 74        .byte $74   ; 
- D 1 - I - 0x01B2EC 06:B2DC: 5E        .byte $5E   ; 
- D 1 - I - 0x01B2ED 06:B2DD: 58        .byte $58   ; 



_off016_round_1_2_B2DE_196:
_off016_round_1_2_B2DE_1AA:
_off016_round_1_2_B2DE_1CA:
_off016_round_1_3_B2DE_01E:
_off016_round_1_3_B2DE_092:
- D 1 - I - 0x01B2EE 06:B2DE: 9E        .byte $9E   ; 
- D 1 - I - 0x01B2EF 06:B2DF: 2E        .byte $2E   ; 
- D 1 - I - 0x01B2F0 06:B2E0: 97        .byte $97   ; 
- D 1 - I - 0x01B2F1 06:B2E1: 5F        .byte $5F   ; 
- D 1 - I - 0x01B2F2 06:B2E2: 5B        .byte $5B   ; 



_off016_round_1_2_B2E3_1B4:
- D 1 - I - 0x01B2F3 06:B2E3: 8A        .byte $8A   ; 
- D 1 - I - 0x01B2F4 06:B2E4: 2F        .byte $2F   ; 
- D 1 - I - 0x01B2F5 06:B2E5: 9A        .byte $9A   ; 
- D 1 - I - 0x01B2F6 06:B2E6: 5F        .byte $5F   ; 
- D 1 - I - 0x01B2F7 06:B2E7: 5A        .byte $5A   ; 



_off016_round_1_2_B2E8_1B6:
_off016_round_1_3_B2E8_03A:
- D 1 - I - 0x01B2F8 06:B2E8: 8A        .byte $8A   ; 
- D 1 - I - 0x01B2F9 06:B2E9: 07        .byte $07   ; 
- D 1 - I - 0x01B2FA 06:B2EA: 4D        .byte $4D   ; 
- D 1 - I - 0x01B2FB 06:B2EB: 79        .byte $79   ; 
- D 1 - I - 0x01B2FC 06:B2EC: 75        .byte $75   ; 
- D 1 - I - 0x01B2FD 06:B2ED: 5F        .byte $5F   ; 
- D 1 - I - 0x01B2FE 06:B2EE: 59        .byte $59   ; 



_off016_round_1_2_B2EF_1B8:
_off016_round_1_3_B2EF_04C:
- D 1 - I - 0x01B2FF 06:B2EF: 87        .byte $87   ; 
- D 1 - I - 0x01B300 06:B2F0: 08        .byte $08   ; 
- D 1 - I - 0x01B301 06:B2F1: 8C        .byte $8C   ; 
- D 1 - I - 0x01B302 06:B2F2: 07        .byte $07   ; 
- D 1 - I - 0x01B303 06:B2F3: 4C        .byte $4C   ; 
- D 1 - I - 0x01B304 06:B2F4: 78        .byte $78   ; 
- D 1 - I - 0x01B305 06:B2F5: 74        .byte $74   ; 
- D 1 - I - 0x01B306 06:B2F6: 5E        .byte $5E   ; 
- D 1 - I - 0x01B307 06:B2F7: 58        .byte $58   ; 



_off016_round_1_2_B2F8_1BA:
- D 1 - I - 0x01B308 06:B2F8: 87        .byte $87   ; 
- D 1 - I - 0x01B309 06:B2F9: 09        .byte $09   ; 
- D 1 - I - 0x01B30A 06:B2FA: 8C        .byte $8C   ; 
- D 1 - I - 0x01B30B 06:B2FB: 2E        .byte $2E   ; 
- D 1 - I - 0x01B30C 06:B2FC: AD        .byte $AD   ; 
- D 1 - I - 0x01B30D 06:B2FD: 5F        .byte $5F   ; 
- D 1 - I - 0x01B30E 06:B2FE: 5B        .byte $5B   ; 



_off016_round_1_2_B2FF_1D4:
- D 1 - I - 0x01B30F 06:B2FF: 84        .byte $84   ; 
- D 1 - I - 0x01B310 06:B300: 2F        .byte $2F   ; 
- D 1 - I - 0x01B311 06:B301: B6        .byte $B6   ; 
- D 1 - I - 0x01B312 06:B302: 5F        .byte $5F   ; 
- D 1 - I - 0x01B313 06:B303: 5A        .byte $5A   ; 



_off016_round_1_2_B304_1DA:
- D 1 - I - 0x01B314 06:B304: 84        .byte $84   ; 
- D 1 - I - 0x01B315 06:B305: 2E        .byte $2E   ; 
- D 1 - I - 0x01B316 06:B306: B7        .byte $B7   ; 
- D 1 - I - 0x01B317 06:B307: 5F        .byte $5F   ; 
- D 1 - I - 0x01B318 06:B308: 5B        .byte $5B   ; 



_off016_round_1_2_B309_1E4:
- D 1 - I - 0x01B319 06:B309: 8A        .byte $8A   ; 
- D 1 - I - 0x01B31A 06:B30A: 2F        .byte $2F   ; 
- D 1 - I - 0x01B31B 06:B30B: B6        .byte $B6   ; 



_off016_round_1_2_B30C_1E6:
- D 1 - I - 0x01B31C 06:B30C: 8A        .byte $8A   ; 
- D 1 - I - 0x01B31D 06:B30D: 07        .byte $07   ; 
- D 1 - I - 0x01B31E 06:B30E: 4D        .byte $4D   ; 
- D 1 - I - 0x01B31F 06:B30F: 91        .byte $91   ; 



_off016_round_1_2_B310_1EA:
- D 1 - I - 0x01B320 06:B310: 8A        .byte $8A   ; 
- D 1 - I - 0x01B321 06:B311: 2E        .byte $2E   ; 
- D 1 - I - 0x01B322 06:B312: 97        .byte $97   ; 
- D 1 - I - 0x01B323 06:B313: 99        .byte $99   ; 



_off016_round_1_2_B314_1EC:
- D 1 - I - 0x01B324 06:B314: 9E        .byte $9E   ; 
- D 1 - I - 0x01B325 06:B315: 31        .byte $31   ; 
- D 1 - I - 0x01B326 06:B316: 07        .byte $07   ; 
- D 1 - I - 0x01B327 06:B317: 4C        .byte $4C   ; 
- D 1 - I - 0x01B328 06:B318: 83        .byte $83   ; 



_off016_round_1_2_B319_1EE:
- D 1 - I - 0x01B329 06:B319: 9E        .byte $9E   ; 
- D 1 - I - 0x01B32A 06:B31A: 30        .byte $30   ; 
- D 1 - I - 0x01B32B 06:B31B: 07        .byte $07   ; 
- D 1 - I - 0x01B32C 06:B31C: 4D        .byte $4D   ; 
- D 1 - I - 0x01B32D 06:B31D: 86        .byte $86   ; 



_off016_round_1_2_B31E_1F0:
- D 1 - I - 0x01B32E 06:B31E: 81        .byte $81   ; 
- D 1 - I - 0x01B32F 06:B31F: 54        .byte $54   ; 
- D 1 - I - 0x01B330 06:B320: 30        .byte $30   ; 
- D 1 - I - 0x01B331 06:B321: 03        .byte $03   ; 
- D 1 - I - 0x01B332 06:B322: 07        .byte $07   ; 
- D 1 - I - 0x01B333 06:B323: 4C        .byte $4C   ; 
- D 1 - I - 0x01B334 06:B324: 83        .byte $83   ; 



_off016_round_1_2_B325_1F2:
- D 1 - I - 0x01B335 06:B325: 81        .byte $81   ; 
- D 1 - I - 0x01B336 06:B326: 55        .byte $55   ; 
- D 1 - I - 0x01B337 06:B327: 31        .byte $31   ; 
- D 1 - I - 0x01B338 06:B328: 38        .byte $38   ; 
- D 1 - I - 0x01B339 06:B329: 07        .byte $07   ; 
- D 1 - I - 0x01B33A 06:B32A: 4D        .byte $4D   ; 
- D 1 - I - 0x01B33B 06:B32B: 86        .byte $86   ; 



_off016_round_1_2_B32C_1F4:
- D 1 - I - 0x01B33C 06:B32C: 81        .byte $81   ; 
- D 1 - I - 0x01B33D 06:B32D: 6F        .byte $6F   ; 
- D 1 - I - 0x01B33E 06:B32E: 00        .byte $00   ; 
- D 1 - I - 0x01B33F 06:B32F: 31        .byte $31   ; 
- D 1 - I - 0x01B340 06:B330: 07        .byte $07   ; 
- D 1 - I - 0x01B341 06:B331: 4C        .byte $4C   ; 
- D 1 - I - 0x01B342 06:B332: 83        .byte $83   ; 



_off016_round_1_2_B333_1F6:
- D 1 - I - 0x01B343 06:B333: 81        .byte $81   ; 
- D 1 - I - 0x01B344 06:B334: 4F        .byte $4F   ; 
- D 1 - I - 0x01B345 06:B335: 88        .byte $88   ; 
- D 1 - I - 0x01B346 06:B336: 07        .byte $07   ; 
- D 1 - I - 0x01B347 06:B337: 4D        .byte $4D   ; 
- D 1 - I - 0x01B348 06:B338: 86        .byte $86   ; 



_off016_round_1_2_B339_1F8:
- D 1 - I - 0x01B349 06:B339: C4        .byte $C4   ; 
- D 1 - I - 0x01B34A 06:B33A: 57        .byte $57   ; 
- D 1 - I - 0x01B34B 06:B33B: AF        .byte $AF   ; 
- D 1 - I - 0x01B34C 06:B33C: 07        .byte $07   ; 
- D 1 - I - 0x01B34D 06:B33D: 4C        .byte $4C   ; 
- D 1 - I - 0x01B34E 06:B33E: 83        .byte $83   ; 



_off016_round_1_2_B33F_1FA:
- D 1 - I - 0x01B34F 06:B33F: C5        .byte $C5   ; 
- D 1 - I - 0x01B350 06:B340: B1        .byte $B1   ; 
- D 1 - I - 0x01B351 06:B341: 65        .byte $65   ; 
- D 1 - I - 0x01B352 06:B342: 07        .byte $07   ; 
- D 1 - I - 0x01B353 06:B343: 4D        .byte $4D   ; 
- D 1 - I - 0x01B354 06:B344: 86        .byte $86   ; 



_off016_round_1_2_B345_1FC:
- D 1 - I - 0x01B355 06:B345: C5        .byte $C5   ; 
- D 1 - I - 0x01B356 06:B346: B1        .byte $B1   ; 
- D 1 - I - 0x01B357 06:B347: 66        .byte $66   ; 
- D 1 - I - 0x01B358 06:B348: 07        .byte $07   ; 
- D 1 - I - 0x01B359 06:B349: 4C        .byte $4C   ; 
- D 1 - I - 0x01B35A 06:B34A: 83        .byte $83   ; 



_off016_round_1_2_B34B_1FE:
- D 1 - I - 0x01B35B 06:B34B: C5        .byte $C5   ; 
- D 1 - I - 0x01B35C 06:B34C: B2        .byte $B2   ; 
- D 1 - I - 0x01B35D 06:B34D: 07        .byte $07   ; 
- D 1 - I - 0x01B35E 06:B34E: 4D        .byte $4D   ; 
- D 1 - I - 0x01B35F 06:B34F: 86        .byte $86   ; 



_off016_round_1_3_B350_006:
- D 1 - I - 0x01B360 06:B350: A3        .byte $A3   ; 
- D 1 - I - 0x01B361 06:B351: 60        .byte $60   ; 
- D 1 - I - 0x01B362 06:B352: 68        .byte $68   ; 
- D 1 - I - 0x01B363 06:B353: 89        .byte $89   ; 
- D 1 - I - 0x01B364 06:B354: 34        .byte $34   ; 
- D 1 - I - 0x01B365 06:B355: 2A        .byte $2A   ; 
- D 1 - I - 0x01B366 06:B356: 1E        .byte $1E   ; 
- D 1 - I - 0x01B367 06:B357: 45        .byte $45   ; 
- D 1 - I - 0x01B368 06:B358: 00        .byte $00   ; 



_off016_round_1_3_B359_008:
- D 1 - I - 0x01B369 06:B359: A3        .byte $A3   ; 
- D 1 - I - 0x01B36A 06:B35A: 61        .byte $61   ; 
- D 1 - I - 0x01B36B 06:B35B: 8C        .byte $8C   ; 
- D 1 - I - 0x01B36C 06:B35C: 34        .byte $34   ; 
- D 1 - I - 0x01B36D 06:B35D: 2A        .byte $2A   ; 
- D 1 - I - 0x01B36E 06:B35E: 1F        .byte $1F   ; 
- D 1 - I - 0x01B36F 06:B35F: 45        .byte $45   ; 
- D 1 - I - 0x01B370 06:B360: 00        .byte $00   ; 



_off016_round_1_3_B361_010:
- D 1 - I - 0x01B371 06:B361: A3        .byte $A3   ; 
- D 1 - I - 0x01B372 06:B362: 22        .byte $22   ; 
- D 1 - I - 0x01B373 06:B363: 0D        .byte $0D   ; 
- D 1 - I - 0x01B374 06:B364: 89        .byte $89   ; 
- D 1 - I - 0x01B375 06:B365: 34        .byte $34   ; 
- D 1 - I - 0x01B376 06:B366: 2A        .byte $2A   ; 
- D 1 - I - 0x01B377 06:B367: 1D        .byte $1D   ; 
- D 1 - I - 0x01B378 06:B368: 45        .byte $45   ; 
- D 1 - I - 0x01B379 06:B369: 00        .byte $00   ; 



_off016_round_1_3_B36A_012:
- D 1 - I - 0x01B37A 06:B36A: A3        .byte $A3   ; 
- D 1 - I - 0x01B37B 06:B36B: 23        .byte $23   ; 
- D 1 - I - 0x01B37C 06:B36C: 28        .byte $28   ; 
- D 1 - I - 0x01B37D 06:B36D: 89        .byte $89   ; 
- D 1 - I - 0x01B37E 06:B36E: 34        .byte $34   ; 
- D 1 - I - 0x01B37F 06:B36F: 2A        .byte $2A   ; 
- D 1 - I - 0x01B380 06:B370: 1E        .byte $1E   ; 
- D 1 - I - 0x01B381 06:B371: 45        .byte $45   ; 
- D 1 - I - 0x01B382 06:B372: 00        .byte $00   ; 



_off016_round_1_3_B373_014:
- D 1 - I - 0x01B383 06:B373: 9D        .byte $9D   ; 
- D 1 - I - 0x01B384 06:B374: 0E        .byte $0E   ; 
- D 1 - I - 0x01B385 06:B375: 89        .byte $89   ; 
- D 1 - I - 0x01B386 06:B376: 34        .byte $34   ; 
- D 1 - I - 0x01B387 06:B377: 2A        .byte $2A   ; 
- D 1 - I - 0x01B388 06:B378: 1F        .byte $1F   ; 
- D 1 - I - 0x01B389 06:B379: 45        .byte $45   ; 
- D 1 - I - 0x01B38A 06:B37A: 00        .byte $00   ; 



_off016_round_1_3_B37B_020:
- D 1 - I - 0x01B38B 06:B37B: 87        .byte $87   ; 
- D 1 - I - 0x01B38C 06:B37C: 54        .byte $54   ; 
- D 1 - I - 0x01B38D 06:B37D: A0        .byte $A0   ; 
- D 1 - I - 0x01B38E 06:B37E: 1A        .byte $1A   ; 
- D 1 - I - 0x01B38F 06:B37F: 45        .byte $45   ; 
- D 1 - I - 0x01B390 06:B380: 00        .byte $00   ; 



_off016_round_1_3_B381_022:
- D 1 - I - 0x01B391 06:B381: 87        .byte $87   ; 
- D 1 - I - 0x01B392 06:B382: 55        .byte $55   ; 
- D 1 - I - 0x01B393 06:B383: A0        .byte $A0   ; 
- D 1 - I - 0x01B394 06:B384: 1B        .byte $1B   ; 
- D 1 - I - 0x01B395 06:B385: 45        .byte $45   ; 
- D 1 - I - 0x01B396 06:B386: 00        .byte $00   ; 



_off016_round_1_3_B387_024:
- D 1 - I - 0x01B397 06:B387: 87        .byte $87   ; 
- D 1 - I - 0x01B398 06:B388: 4E        .byte $4E   ; 
- D 1 - I - 0x01B399 06:B389: 93        .byte $93   ; 
- D 1 - I - 0x01B39A 06:B38A: 0D        .byte $0D   ; 
- D 1 - I - 0x01B39B 06:B38B: 1C        .byte $1C   ; 
- D 1 - I - 0x01B39C 06:B38C: 45        .byte $45   ; 
- D 1 - I - 0x01B39D 06:B38D: 00        .byte $00   ; 



_off016_round_1_3_B38E_026:
- D 1 - I - 0x01B39E 06:B38E: 87        .byte $87   ; 
- D 1 - I - 0x01B39F 06:B38F: 4F        .byte $4F   ; 
- D 1 - I - 0x01B3A0 06:B390: 93        .byte $93   ; 
- D 1 - I - 0x01B3A1 06:B391: 28        .byte $28   ; 
- D 1 - I - 0x01B3A2 06:B392: 1D        .byte $1D   ; 
- D 1 - I - 0x01B3A3 06:B393: 45        .byte $45   ; 
- D 1 - I - 0x01B3A4 06:B394: 00        .byte $00   ; 



_off016_round_1_3_B395_028:
- D 1 - I - 0x01B3A5 06:B395: A4        .byte $A4   ; 
- D 1 - I - 0x01B3A6 06:B396: 0E        .byte $0E   ; 
- D 1 - I - 0x01B3A7 06:B397: 1E        .byte $1E   ; 
- D 1 - I - 0x01B3A8 06:B398: 45        .byte $45   ; 
- D 1 - I - 0x01B3A9 06:B399: 00        .byte $00   ; 



_off016_round_1_3_B39A_02C:
- D 1 - I - 0x01B3AA 06:B39A: 8F        .byte $8F   ; 
- D 1 - I - 0x01B3AB 06:B39B: 08        .byte $08   ; 
- D 1 - I - 0x01B3AC 06:B39C: 8F        .byte $8F   ; 
- D 1 - I - 0x01B3AD 06:B39D: 1A        .byte $1A   ; 
- D 1 - I - 0x01B3AE 06:B39E: 45        .byte $45   ; 
- D 1 - I - 0x01B3AF 06:B39F: 00        .byte $00   ; 



_off016_round_1_3_B3A0_02E:
- D 1 - I - 0x01B3B0 06:B3A0: 8F        .byte $8F   ; 
- D 1 - I - 0x01B3B1 06:B3A1: 09        .byte $09   ; 
- D 1 - I - 0x01B3B2 06:B3A2: 8F        .byte $8F   ; 
- D 1 - I - 0x01B3B3 06:B3A3: 1B        .byte $1B   ; 
- D 1 - I - 0x01B3B4 06:B3A4: 45        .byte $45   ; 
- D 1 - I - 0x01B3B5 06:B3A5: 00        .byte $00   ; 



_off016_round_1_3_B3A6_030:
- D 1 - I - 0x01B3B6 06:B3A6: 8F        .byte $8F   ; 
- D 1 - I - 0x01B3B7 06:B3A7: 0A        .byte $0A   ; 
- D 1 - I - 0x01B3B8 06:B3A8: 8F        .byte $8F   ; 
- D 1 - I - 0x01B3B9 06:B3A9: 1C        .byte $1C   ; 
- D 1 - I - 0x01B3BA 06:B3AA: 45        .byte $45   ; 
- D 1 - I - 0x01B3BB 06:B3AB: 00        .byte $00   ; 



_off016_round_1_3_B3AC_032:
- D 1 - I - 0x01B3BC 06:B3AC: AC        .byte $AC   ; 
- D 1 - I - 0x01B3BD 06:B3AD: 1D        .byte $1D   ; 
- D 1 - I - 0x01B3BE 06:B3AE: 45        .byte $45   ; 
- D 1 - I - 0x01B3BF 06:B3AF: 00        .byte $00   ; 



_off016_round_1_3_B3B0_038:
- D 1 - I - 0x01B3C0 06:B3B0: 8A        .byte $8A   ; 
- D 1 - I - 0x01B3C1 06:B3B1: 72        .byte $72   ; 
- D 1 - I - 0x01B3C2 06:B3B2: 9A        .byte $9A   ; 
- D 1 - I - 0x01B3C3 06:B3B3: 5E        .byte $5E   ; 
- D 1 - I - 0x01B3C4 06:B3B4: 5A        .byte $5A   ; 



_off016_round_1_3_B3B5_03C:
- D 1 - I - 0x01B3C5 06:B3B5: 98        .byte $98   ; 
- D 1 - I - 0x01B3C6 06:B3B6: 08        .byte $08   ; 
- D 1 - I - 0x01B3C7 06:B3B7: 8C        .byte $8C   ; 
- D 1 - I - 0x01B3C8 06:B3B8: 49        .byte $49   ; 
- D 1 - I - 0x01B3C9 06:B3B9: 5C        .byte $5C   ; 
- D 1 - I - 0x01B3CA 06:B3BA: B3        .byte $B3   ; 
- D 1 - I - 0x01B3CB 06:B3BB: 07        .byte $07   ; 
- D 1 - I - 0x01B3CC 06:B3BC: 4C        .byte $4C   ; 
- D 1 - I - 0x01B3CD 06:B3BD: 78        .byte $78   ; 
- D 1 - I - 0x01B3CE 06:B3BE: 74        .byte $74   ; 
- D 1 - I - 0x01B3CF 06:B3BF: 5E        .byte $5E   ; 
- D 1 - I - 0x01B3D0 06:B3C0: 58        .byte $58   ; 



_off016_round_1_3_B3C1_03E:
- D 1 - I - 0x01B3D1 06:B3C1: 98        .byte $98   ; 
- D 1 - I - 0x01B3D2 06:B3C2: 09        .byte $09   ; 
- D 1 - I - 0x01B3D3 06:B3C3: 8C        .byte $8C   ; 
- D 1 - I - 0x01B3D4 06:B3C4: 0C        .byte $0C   ; 
- D 1 - I - 0x01B3D5 06:B3C5: 69        .byte $69   ; 
- D 1 - I - 0x01B3D6 06:B3C6: B4        .byte $B4   ; 
- D 1 - I - 0x01B3D7 06:B3C7: 07        .byte $07   ; 
- D 1 - I - 0x01B3D8 06:B3C8: 4D        .byte $4D   ; 
- D 1 - I - 0x01B3D9 06:B3C9: 79        .byte $79   ; 
- D 1 - I - 0x01B3DA 06:B3CA: 75        .byte $75   ; 
- D 1 - I - 0x01B3DB 06:B3CB: 5F        .byte $5F   ; 
- D 1 - I - 0x01B3DC 06:B3CC: 59        .byte $59   ; 



_off016_round_1_3_B3CD_040:
- D 1 - I - 0x01B3DD 06:B3CD: 98        .byte $98   ; 
- D 1 - I - 0x01B3DE 06:B3CE: 0A        .byte $0A   ; 
- D 1 - I - 0x01B3DF 06:B3CF: 00        .byte $00   ; 
- D 1 - I - 0x01B3E0 06:B3D0: 49        .byte $49   ; 
- D 1 - I - 0x01B3E1 06:B3D1: 5C        .byte $5C   ; 
- D 1 - I - 0x01B3E2 06:B3D2: 6D        .byte $6D   ; 
- D 1 - I - 0x01B3E3 06:B3D3: 0C        .byte $0C   ; 
- D 1 - I - 0x01B3E4 06:B3D4: 69        .byte $69   ; 
- D 1 - I - 0x01B3E5 06:B3D5: B4        .byte $B4   ; 
- D 1 - I - 0x01B3E6 06:B3D6: 07        .byte $07   ; 
- D 1 - I - 0x01B3E7 06:B3D7: 4C        .byte $4C   ; 
- D 1 - I - 0x01B3E8 06:B3D8: 78        .byte $78   ; 
- D 1 - I - 0x01B3E9 06:B3D9: 74        .byte $74   ; 
- D 1 - I - 0x01B3EA 06:B3DA: 5E        .byte $5E   ; 
- D 1 - I - 0x01B3EB 06:B3DB: 58        .byte $58   ; 



_off016_round_1_3_B3DC_042:
- D 1 - I - 0x01B3EC 06:B3DC: 8B        .byte $8B   ; 
- D 1 - I - 0x01B3ED 06:B3DD: 0C        .byte $0C   ; 
- D 1 - I - 0x01B3EE 06:B3DE: 69        .byte $69   ; 
- D 1 - I - 0x01B3EF 06:B3DF: 6C        .byte $6C   ; 
- D 1 - I - 0x01B3F0 06:B3E0: 0C        .byte $0C   ; 
- D 1 - I - 0x01B3F1 06:B3E1: 69        .byte $69   ; 
- D 1 - I - 0x01B3F2 06:B3E2: B4        .byte $B4   ; 
- D 1 - I - 0x01B3F3 06:B3E3: 07        .byte $07   ; 
- D 1 - I - 0x01B3F4 06:B3E4: 4D        .byte $4D   ; 
- D 1 - I - 0x01B3F5 06:B3E5: 79        .byte $79   ; 
- D 1 - I - 0x01B3F6 06:B3E6: 75        .byte $75   ; 
- D 1 - I - 0x01B3F7 06:B3E7: 5F        .byte $5F   ; 
- D 1 - I - 0x01B3F8 06:B3E8: 59        .byte $59   ; 



_off016_round_1_3_B3E9_044:
- D 1 - I - 0x01B3F9 06:B3E9: 8B        .byte $8B   ; 
- D 1 - I - 0x01B3FA 06:B3EA: 0C        .byte $0C   ; 
- D 1 - I - 0x01B3FB 06:B3EB: 69        .byte $69   ; 
- D 1 - I - 0x01B3FC 06:B3EC: 6C        .byte $6C   ; 
- D 1 - I - 0x01B3FD 06:B3ED: 0C        .byte $0C   ; 
- D 1 - I - 0x01B3FE 06:B3EE: 69        .byte $69   ; 
- D 1 - I - 0x01B3FF 06:B3EF: B4        .byte $B4   ; 
- D 1 - I - 0x01B400 06:B3F0: 07        .byte $07   ; 
- D 1 - I - 0x01B401 06:B3F1: 4C        .byte $4C   ; 
- D 1 - I - 0x01B402 06:B3F2: 78        .byte $78   ; 
- D 1 - I - 0x01B403 06:B3F3: 74        .byte $74   ; 
- D 1 - I - 0x01B404 06:B3F4: 5E        .byte $5E   ; 
- D 1 - I - 0x01B405 06:B3F5: 58        .byte $58   ; 



_off016_round_1_3_B3F6_046:
- D 1 - I - 0x01B406 06:B3F6: 8B        .byte $8B   ; 
- D 1 - I - 0x01B407 06:B3F7: 51        .byte $51   ; 
- D 1 - I - 0x01B408 06:B3F8: 5D        .byte $5D   ; 
- D 1 - I - 0x01B409 06:B3F9: 6E        .byte $6E   ; 
- D 1 - I - 0x01B40A 06:B3FA: 0C        .byte $0C   ; 
- D 1 - I - 0x01B40B 06:B3FB: 69        .byte $69   ; 
- D 1 - I - 0x01B40C 06:B3FC: B4        .byte $B4   ; 
- D 1 - I - 0x01B40D 06:B3FD: 07        .byte $07   ; 
- D 1 - I - 0x01B40E 06:B3FE: 4D        .byte $4D   ; 
- D 1 - I - 0x01B40F 06:B3FF: 79        .byte $79   ; 
- D 1 - I - 0x01B410 06:B400: 75        .byte $75   ; 
- D 1 - I - 0x01B411 06:B401: 5F        .byte $5F   ; 
- D 1 - I - 0x01B412 06:B402: 59        .byte $59   ; 



_off016_round_1_3_B403_04E:
- D 1 - I - 0x01B413 06:B403: 87        .byte $87   ; 
- D 1 - I - 0x01B414 06:B404: 09        .byte $09   ; 
- D 1 - I - 0x01B415 06:B405: 8C        .byte $8C   ; 
- D 1 - I - 0x01B416 06:B406: 73        .byte $73   ; 
- D 1 - I - 0x01B417 06:B407: AD        .byte $AD   ; 
- D 1 - I - 0x01B418 06:B408: 5F        .byte $5F   ; 
- D 1 - I - 0x01B419 06:B409: 5B        .byte $5B   ; 



_off016_round_1_3_B40A_050:
- D 1 - I - 0x01B41A 06:B40A: 87        .byte $87   ; 
- D 1 - I - 0x01B41B 06:B40B: 0A        .byte $0A   ; 
- D 1 - I - 0x01B41C 06:B40C: A0        .byte $A0   ; 
- D 1 - I - 0x01B41D 06:B40D: 19        .byte $19   ; 
- D 1 - I - 0x01B41E 06:B40E: 45        .byte $45   ; 
- D 1 - I - 0x01B41F 06:B40F: 00        .byte $00   ; 



_off016_round_1_3_B410_056:
_off016_round_1_3_B410_060:
- D 1 - I - 0x01B420 06:B410: C6        .byte $C6   ; 
- D 1 - I - 0x01B421 06:B411: 45        .byte $45   ; 
- D 1 - I - 0x01B422 06:B412: 00        .byte $00   ; 



_off016_round_1_3_B413_058:
- D 1 - I - 0x01B423 06:B413: 8F        .byte $8F   ; 
- D 1 - I - 0x01B424 06:B414: 54        .byte $54   ; 
- D 1 - I - 0x01B425 06:B415: 8F        .byte $8F   ; 
- D 1 - I - 0x01B426 06:B416: 18        .byte $18   ; 
- D 1 - I - 0x01B427 06:B417: 45        .byte $45   ; 
- D 1 - I - 0x01B428 06:B418: 00        .byte $00   ; 



_off016_round_1_3_B419_05A:
- D 1 - I - 0x01B429 06:B419: 8F        .byte $8F   ; 
- D 1 - I - 0x01B42A 06:B41A: 55        .byte $55   ; 
- D 1 - I - 0x01B42B 06:B41B: 8F        .byte $8F   ; 
- D 1 - I - 0x01B42C 06:B41C: 19        .byte $19   ; 
- D 1 - I - 0x01B42D 06:B41D: 45        .byte $45   ; 
- D 1 - I - 0x01B42E 06:B41E: 00        .byte $00   ; 



_off016_round_1_3_B41F_05C:
- D 1 - I - 0x01B42F 06:B41F: 8F        .byte $8F   ; 
- D 1 - I - 0x01B430 06:B420: 4E        .byte $4E   ; 
- D 1 - I - 0x01B431 06:B421: 8F        .byte $8F   ; 
- D 1 - I - 0x01B432 06:B422: 1A        .byte $1A   ; 
- D 1 - I - 0x01B433 06:B423: 45        .byte $45   ; 
- D 1 - I - 0x01B434 06:B424: 00        .byte $00   ; 



_off016_round_1_3_B425_05E:
- D 1 - I - 0x01B435 06:B425: 8F        .byte $8F   ; 
- D 1 - I - 0x01B436 06:B426: 4F        .byte $4F   ; 
- D 1 - I - 0x01B437 06:B427: 8F        .byte $8F   ; 
- D 1 - I - 0x01B438 06:B428: 1B        .byte $1B   ; 
- D 1 - I - 0x01B439 06:B429: 45        .byte $45   ; 
- D 1 - I - 0x01B43A 06:B42A: 00        .byte $00   ; 



_off016_round_1_3_B42B_062:
- D 1 - I - 0x01B43B 06:B42B: A3        .byte $A3   ; 
- D 1 - I - 0x01B43C 06:B42C: 08        .byte $08   ; 
- D 1 - I - 0x01B43D 06:B42D: A0        .byte $A0   ; 
- D 1 - I - 0x01B43E 06:B42E: 45        .byte $45   ; 
- D 1 - I - 0x01B43F 06:B42F: 00        .byte $00   ; 



_off016_round_1_3_B430_064:
- D 1 - I - 0x01B440 06:B430: A3        .byte $A3   ; 
- D 1 - I - 0x01B441 06:B431: 09        .byte $09   ; 
- D 1 - I - 0x01B442 06:B432: 8C        .byte $8C   ; 
- D 1 - I - 0x01B443 06:B433: 2F        .byte $2F   ; 
- D 1 - I - 0x01B444 06:B434: 8D        .byte $8D   ; 
- D 1 - I - 0x01B445 06:B435: 5E        .byte $5E   ; 
- D 1 - I - 0x01B446 06:B436: 5A        .byte $5A   ; 



_off016_round_1_3_B437_066:
- D 1 - I - 0x01B447 06:B437: A3        .byte $A3   ; 
- D 1 - I - 0x01B448 06:B438: 0A        .byte $0A   ; 
- D 1 - I - 0x01B449 06:B439: 8C        .byte $8C   ; 
- D 1 - I - 0x01B44A 06:B43A: 07        .byte $07   ; 
- D 1 - I - 0x01B44B 06:B43B: 4D        .byte $4D   ; 
- D 1 - I - 0x01B44C 06:B43C: 75        .byte $75   ; 
- D 1 - I - 0x01B44D 06:B43D: 5F        .byte $5F   ; 
- D 1 - I - 0x01B44E 06:B43E: 59        .byte $59   ; 



_off016_round_1_3_B43F_068:
- D 1 - I - 0x01B44F 06:B43F: 8A        .byte $8A   ; 
- D 1 - I - 0x01B450 06:B440: 24        .byte $24   ; 
- D 1 - I - 0x01B451 06:B441: 25        .byte $25   ; 
- D 1 - I - 0x01B452 06:B442: 4C        .byte $4C   ; 
- D 1 - I - 0x01B453 06:B443: 74        .byte $74   ; 
- D 1 - I - 0x01B454 06:B444: 5E        .byte $5E   ; 
- D 1 - I - 0x01B455 06:B445: 58        .byte $58   ; 



_off016_round_1_3_B446_06A:
- D 1 - I - 0x01B456 06:B446: 81        .byte $81   ; 
- D 1 - I - 0x01B457 06:B447: 24        .byte $24   ; 
- D 1 - I - 0x01B458 06:B448: 25        .byte $25   ; 
- D 1 - I - 0x01B459 06:B449: 2C        .byte $2C   ; 
- D 1 - I - 0x01B45A 06:B44A: 79        .byte $79   ; 
- D 1 - I - 0x01B45B 06:B44B: 75        .byte $75   ; 
- D 1 - I - 0x01B45C 06:B44C: 5F        .byte $5F   ; 
- D 1 - I - 0x01B45D 06:B44D: 59        .byte $59   ; 



_off016_round_1_3_B44E_06C:
- D 1 - I - 0x01B45E 06:B44E: 84        .byte $84   ; 
- D 1 - I - 0x01B45F 06:B44F: 24        .byte $24   ; 
- D 1 - I - 0x01B460 06:B450: 25        .byte $25   ; 
- D 1 - I - 0x01B461 06:B451: 2C        .byte $2C   ; 
- D 1 - I - 0x01B462 06:B452: 83        .byte $83   ; 
- D 1 - I - 0x01B463 06:B453: 74        .byte $74   ; 
- D 1 - I - 0x01B464 06:B454: 5E        .byte $5E   ; 
- D 1 - I - 0x01B465 06:B455: 58        .byte $58   ; 



_off016_round_1_3_B456_06E:
- D 1 - I - 0x01B466 06:B456: 84        .byte $84   ; 
- D 1 - I - 0x01B467 06:B457: 07        .byte $07   ; 
- D 1 - I - 0x01B468 06:B458: 2C        .byte $2C   ; 
- D 1 - I - 0x01B469 06:B459: 99        .byte $99   ; 
- D 1 - I - 0x01B46A 06:B45A: 75        .byte $75   ; 
- D 1 - I - 0x01B46B 06:B45B: 5F        .byte $5F   ; 
- D 1 - I - 0x01B46C 06:B45C: 59        .byte $59   ; 



_off016_round_1_3_B45D_078:
- D 1 - I - 0x01B46D 06:B45D: 90        .byte $90   ; 
- D 1 - I - 0x01B46E 06:B45E: 08        .byte $08   ; 
- D 1 - I - 0x01B46F 06:B45F: 8F        .byte $8F   ; 
- D 1 - I - 0x01B470 06:B460: 07        .byte $07   ; 
- D 1 - I - 0x01B471 06:B461: 4C        .byte $4C   ; 
- D 1 - I - 0x01B472 06:B462: 8E        .byte $8E   ; 
- D 1 - I - 0x01B473 06:B463: 74        .byte $74   ; 
- D 1 - I - 0x01B474 06:B464: 5E        .byte $5E   ; 
- D 1 - I - 0x01B475 06:B465: 58        .byte $58   ; 



_off016_round_1_3_B466_07A:
- D 1 - I - 0x01B476 06:B466: 90        .byte $90   ; 
- D 1 - I - 0x01B477 06:B467: 09        .byte $09   ; 
- D 1 - I - 0x01B478 06:B468: 8F        .byte $8F   ; 
- D 1 - I - 0x01B479 06:B469: 07        .byte $07   ; 
- D 1 - I - 0x01B47A 06:B46A: 2D        .byte $2D   ; 
- D 1 - I - 0x01B47B 06:B46B: 99        .byte $99   ; 
- D 1 - I - 0x01B47C 06:B46C: 75        .byte $75   ; 
- D 1 - I - 0x01B47D 06:B46D: 5F        .byte $5F   ; 
- D 1 - I - 0x01B47E 06:B46E: 59        .byte $59   ; 



_off016_round_1_3_B46F_07C:
- D 1 - I - 0x01B47F 06:B46F: 90        .byte $90   ; 
- D 1 - I - 0x01B480 06:B470: 0A        .byte $0A   ; 
- D 1 - I - 0x01B481 06:B471: A0        .byte $A0   ; 
- D 1 - I - 0x01B482 06:B472: 0D        .byte $0D   ; 
- D 1 - I - 0x01B483 06:B473: 88        .byte $88   ; 
- D 1 - I - 0x01B484 06:B474: 27        .byte $27   ; 
- D 1 - I - 0x01B485 06:B475: 26        .byte $26   ; 
- D 1 - I - 0x01B486 06:B476: 2D        .byte $2D   ; 
- D 1 - I - 0x01B487 06:B477: 83        .byte $83   ; 
- D 1 - I - 0x01B488 06:B478: 74        .byte $74   ; 
- D 1 - I - 0x01B489 06:B479: 5E        .byte $5E   ; 
- D 1 - I - 0x01B48A 06:B47A: 58        .byte $58   ; 



_off016_round_1_3_B47B_07E:
- D 1 - I - 0x01B48B 06:B47B: 87        .byte $87   ; 
- D 1 - I - 0x01B48C 06:B47C: 0E        .byte $0E   ; 
- D 1 - I - 0x01B48D 06:B47D: 89        .byte $89   ; 
- D 1 - I - 0x01B48E 06:B47E: 27        .byte $27   ; 
- D 1 - I - 0x01B48F 06:B47F: 26        .byte $26   ; 
- D 1 - I - 0x01B490 06:B480: 2D        .byte $2D   ; 
- D 1 - I - 0x01B491 06:B481: 79        .byte $79   ; 
- D 1 - I - 0x01B492 06:B482: 75        .byte $75   ; 
- D 1 - I - 0x01B493 06:B483: 5F        .byte $5F   ; 
- D 1 - I - 0x01B494 06:B484: 59        .byte $59   ; 



_off016_round_1_3_B485_080:
- D 1 - I - 0x01B495 06:B485: 8A        .byte $8A   ; 
- D 1 - I - 0x01B496 06:B486: 27        .byte $27   ; 
- D 1 - I - 0x01B497 06:B487: 26        .byte $26   ; 
- D 1 - I - 0x01B498 06:B488: 78        .byte $78   ; 
- D 1 - I - 0x01B499 06:B489: 74        .byte $74   ; 
- D 1 - I - 0x01B49A 06:B48A: 5E        .byte $5E   ; 
- D 1 - I - 0x01B49B 06:B48B: 58        .byte $58   ; 



_off016_round_1_3_B48C_084:
- D 1 - I - 0x01B49C 06:B48C: 87        .byte $87   ; 
- D 1 - I - 0x01B49D 06:B48D: 08        .byte $08   ; 
- D 1 - I - 0x01B49E 06:B48E: 8C        .byte $8C   ; 
- D 1 - I - 0x01B49F 06:B48F: 30        .byte $30   ; 
- D 1 - I - 0x01B4A0 06:B490: 07        .byte $07   ; 
- D 1 - I - 0x01B4A1 06:B491: 4C        .byte $4C   ; 
- D 1 - I - 0x01B4A2 06:B492: 74        .byte $74   ; 
- D 1 - I - 0x01B4A3 06:B493: 5E        .byte $5E   ; 
- D 1 - I - 0x01B4A4 06:B494: 58        .byte $58   ; 



_off016_round_1_3_B495_086:
- D 1 - I - 0x01B4A5 06:B495: 87        .byte $87   ; 
- D 1 - I - 0x01B4A6 06:B496: 09        .byte $09   ; 
- D 1 - I - 0x01B4A7 06:B497: 8C        .byte $8C   ; 
- D 1 - I - 0x01B4A8 06:B498: 31        .byte $31   ; 
- D 1 - I - 0x01B4A9 06:B499: 07        .byte $07   ; 
- D 1 - I - 0x01B4AA 06:B49A: 4D        .byte $4D   ; 
- D 1 - I - 0x01B4AB 06:B49B: 75        .byte $75   ; 
- D 1 - I - 0x01B4AC 06:B49C: 5F        .byte $5F   ; 
- D 1 - I - 0x01B4AD 06:B49D: 59        .byte $59   ; 



_off016_round_1_3_B49E_088:
- D 1 - I - 0x01B4AE 06:B49E: 8C        .byte $8C   ; 
- D 1 - I - 0x01B4AF 06:B49F: 62        .byte $62   ; 
- D 1 - I - 0x01B4B0 06:B4A0: 6A        .byte $6A   ; 
- D 1 - I - 0x01B4B1 06:B4A1: 60        .byte $60   ; 
- D 1 - I - 0x01B4B2 06:B4A2: 68        .byte $68   ; 
- D 1 - I - 0x01B4B3 06:B4A3: 90        .byte $90   ; 
- D 1 - I - 0x01B4B4 06:B4A4: 0A        .byte $0A   ; 
- D 1 - I - 0x01B4B5 06:B4A5: 8C        .byte $8C   ; 
- D 1 - I - 0x01B4B6 06:B4A6: 30        .byte $30   ; 
- D 1 - I - 0x01B4B7 06:B4A7: 07        .byte $07   ; 
- D 1 - I - 0x01B4B8 06:B4A8: 4C        .byte $4C   ; 
- D 1 - I - 0x01B4B9 06:B4A9: 74        .byte $74   ; 
- D 1 - I - 0x01B4BA 06:B4AA: 5E        .byte $5E   ; 
- D 1 - I - 0x01B4BB 06:B4AB: 58        .byte $58   ; 



_off016_round_1_3_B4AC_08A:
- D 1 - I - 0x01B4BC 06:B4AC: 8C        .byte $8C   ; 
- D 1 - I - 0x01B4BD 06:B4AD: 63        .byte $63   ; 
- D 1 - I - 0x01B4BE 06:B4AE: 6B        .byte $6B   ; 
- D 1 - I - 0x01B4BF 06:B4AF: 61        .byte $61   ; 
- D 1 - I - 0x01B4C0 06:B4B0: 8B        .byte $8B   ; 
- D 1 - I - 0x01B4C1 06:B4B1: 31        .byte $31   ; 
- D 1 - I - 0x01B4C2 06:B4B2: 07        .byte $07   ; 
- D 1 - I - 0x01B4C3 06:B4B3: 4D        .byte $4D   ; 
- D 1 - I - 0x01B4C4 06:B4B4: 75        .byte $75   ; 
- D 1 - I - 0x01B4C5 06:B4B5: 5F        .byte $5F   ; 
- D 1 - I - 0x01B4C6 06:B4B6: 59        .byte $59   ; 



_off016_round_1_3_B4B7_08C:
- D 1 - I - 0x01B4C7 06:B4B7: 8A        .byte $8A   ; 
- D 1 - I - 0x01B4C8 06:B4B8: 64        .byte $64   ; 
- D 1 - I - 0x01B4C9 06:B4B9: 07        .byte $07   ; 
- D 1 - I - 0x01B4CA 06:B4BA: 4C        .byte $4C   ; 
- D 1 - I - 0x01B4CB 06:B4BB: 74        .byte $74   ; 
- D 1 - I - 0x01B4CC 06:B4BC: 5E        .byte $5E   ; 
- D 1 - I - 0x01B4CD 06:B4BD: 58        .byte $58   ; 



_off016_round_1_3_B4BE_098:
- D 1 - I - 0x01B4CE 06:B4BE: 9D        .byte $9D   ; 
- D 1 - I - 0x01B4CF 06:B4BF: 08        .byte $08   ; 
- D 1 - I - 0x01B4D0 06:B4C0: 89        .byte $89   ; 
- D 1 - I - 0x01B4D1 06:B4C1: 34        .byte $34   ; 
- D 1 - I - 0x01B4D2 06:B4C2: 2A        .byte $2A   ; 
- D 1 - I - 0x01B4D3 06:B4C3: 1A        .byte $1A   ; 
- D 1 - I - 0x01B4D4 06:B4C4: 45        .byte $45   ; 
- D 1 - I - 0x01B4D5 06:B4C5: 00        .byte $00   ; 



_off016_round_1_3_B4C6_09A:
- D 1 - I - 0x01B4D6 06:B4C6: 9D        .byte $9D   ; 
- D 1 - I - 0x01B4D7 06:B4C7: 09        .byte $09   ; 
- D 1 - I - 0x01B4D8 06:B4C8: 89        .byte $89   ; 
- D 1 - I - 0x01B4D9 06:B4C9: 34        .byte $34   ; 
- D 1 - I - 0x01B4DA 06:B4CA: 2A        .byte $2A   ; 
- D 1 - I - 0x01B4DB 06:B4CB: 1B        .byte $1B   ; 
- D 1 - I - 0x01B4DC 06:B4CC: 45        .byte $45   ; 
- D 1 - I - 0x01B4DD 06:B4CD: 00        .byte $00   ; 



_off016_round_1_3_B4CE_09C:
- D 1 - I - 0x01B4DE 06:B4CE: 9D        .byte $9D   ; 
- D 1 - I - 0x01B4DF 06:B4CF: 0A        .byte $0A   ; 
- D 1 - I - 0x01B4E0 06:B4D0: 89        .byte $89   ; 
- D 1 - I - 0x01B4E1 06:B4D1: 34        .byte $34   ; 
- D 1 - I - 0x01B4E2 06:B4D2: 2A        .byte $2A   ; 
- D 1 - I - 0x01B4E3 06:B4D3: 1C        .byte $1C   ; 
- D 1 - I - 0x01B4E4 06:B4D4: 45        .byte $45   ; 
- D 1 - I - 0x01B4E5 06:B4D5: 00        .byte $00   ; 



_off016_round_1_3_B4D6_0B2:
- D 1 - I - 0x01B4E6 06:B4D6: 8F        .byte $8F   ; 
- D 1 - I - 0x01B4E7 06:B4D7: 4F        .byte $4F   ; 
- D 1 - I - 0x01B4E8 06:B4D8: 89        .byte $89   ; 
- D 1 - I - 0x01B4E9 06:B4D9: 08        .byte $08   ; 
- D 1 - I - 0x01B4EA 06:B4DA: 8C        .byte $8C   ; 
- D 1 - I - 0x01B4EB 06:B4DB: 07        .byte $07   ; 
- D 1 - I - 0x01B4EC 06:B4DC: 4D        .byte $4D   ; 
- D 1 - I - 0x01B4ED 06:B4DD: 99        .byte $99   ; 



_off016_round_1_3_B4DE_0B4:
- D 1 - I - 0x01B4EE 06:B4DE: A3        .byte $A3   ; 
- D 1 - I - 0x01B4EF 06:B4DF: 09        .byte $09   ; 
- D 1 - I - 0x01B4F0 06:B4E0: 8C        .byte $8C   ; 
- D 1 - I - 0x01B4F1 06:B4E1: 07        .byte $07   ; 
- D 1 - I - 0x01B4F2 06:B4E2: 4C        .byte $4C   ; 
- D 1 - I - 0x01B4F3 06:B4E3: 8E        .byte $8E   ; 



_off016_round_1_3_B4E4_0B6:
- D 1 - I - 0x01B4F4 06:B4E4: A3        .byte $A3   ; 
- D 1 - I - 0x01B4F5 06:B4E5: 0A        .byte $0A   ; 
- D 1 - I - 0x01B4F6 06:B4E6: 8C        .byte $8C   ; 
- D 1 - I - 0x01B4F7 06:B4E7: 2E        .byte $2E   ; 
- D 1 - I - 0x01B4F8 06:B4E8: 7D        .byte $7D   ; 
- D 1 - I - 0x01B4F9 06:B4E9: 99        .byte $99   ; 



_off016_round_1_3_B4EA_0B8:
- D 1 - I - 0x01B4FA 06:B4EA: 9E        .byte $9E   ; 
- D 1 - I - 0x01B4FB 06:B4EB: 30        .byte $30   ; 
- D 1 - I - 0x01B4FC 06:B4EC: 07        .byte $07   ; 
- D 1 - I - 0x01B4FD 06:B4ED: 8E        .byte $8E   ; 



_off016_round_1_3_B4EE_0BE:
- D 1 - I - 0x01B4FE 06:B4EE: 9E        .byte $9E   ; 
- D 1 - I - 0x01B4FF 06:B4EF: 31        .byte $31   ; 
- D 1 - I - 0x01B500 06:B4F0: 20        .byte $20   ; 
- D 1 - I - 0x01B501 06:B4F1: 7D        .byte $7D   ; 
- D 1 - I - 0x01B502 06:B4F2: 86        .byte $86   ; 



_off016_round_1_3_B4F3_0C0:
- D 1 - I - 0x01B503 06:B4F3: 9E        .byte $9E   ; 
- D 1 - I - 0x01B504 06:B4F4: 30        .byte $30   ; 
- D 1 - I - 0x01B505 06:B4F5: 03        .byte $03   ; 
- D 1 - I - 0x01B506 06:B4F6: 07        .byte $07   ; 
- D 1 - I - 0x01B507 06:B4F7: 83        .byte $83   ; 



_off016_round_1_3_B4F8_0C2:
- D 1 - I - 0x01B508 06:B4F8: 8A        .byte $8A   ; 
- D 1 - I - 0x01B509 06:B4F9: 30        .byte $30   ; 
- D 1 - I - 0x01B50A 06:B4FA: 03        .byte $03   ; 
- D 1 - I - 0x01B50B 06:B4FB: 17        .byte $17   ; 
- D 1 - I - 0x01B50C 06:B4FC: 07        .byte $07   ; 
- D 1 - I - 0x01B50D 06:B4FD: 4D        .byte $4D   ; 
- D 1 - I - 0x01B50E 06:B4FE: 79        .byte $79   ; 



_off016_round_1_3_B4FF_0C4:
- D 1 - I - 0x01B50F 06:B4FF: 8A        .byte $8A   ; 
- D 1 - I - 0x01B510 06:B500: 31        .byte $31   ; 
- D 1 - I - 0x01B511 06:B501: 38        .byte $38   ; 
- D 1 - I - 0x01B512 06:B502: 03        .byte $03   ; 
- D 1 - I - 0x01B513 06:B503: 07        .byte $07   ; 
- D 1 - I - 0x01B514 06:B504: 4C        .byte $4C   ; 
- D 1 - I - 0x01B515 06:B505: 78        .byte $78   ; 



_off016_round_1_3_B506_0C6:
- D 1 - I - 0x01B516 06:B506: 9E        .byte $9E   ; 
- D 1 - I - 0x01B517 06:B507: 31        .byte $31   ; 
- D 1 - I - 0x01B518 06:B508: 38        .byte $38   ; 
- D 1 - I - 0x01B519 06:B509: 20        .byte $20   ; 
- D 1 - I - 0x01B51A 06:B50A: 7D        .byte $7D   ; 
- D 1 - I - 0x01B51B 06:B50B: 79        .byte $79   ; 



_off016_round_1_3_B50C_0CA:
- D 1 - I - 0x01B51C 06:B50C: 9E        .byte $9E   ; 
- D 1 - I - 0x01B51D 06:B50D: 31        .byte $31   ; 
- D 1 - I - 0x01B51E 06:B50E: 38        .byte $38   ; 
- D 1 - I - 0x01B51F 06:B50F: 03        .byte $03   ; 
- D 1 - I - 0x01B520 06:B510: 07        .byte $07   ; 
- D 1 - I - 0x01B521 06:B511: 4D        .byte $4D   ; 



_off016_round_1_3_B512_0D0:
- D 1 - I - 0x01B522 06:B512: 96        .byte $96   ; 
- D 1 - I - 0x01B523 06:B513: 08        .byte $08   ; 
- D 1 - I - 0x01B524 06:B514: A0        .byte $A0   ; 
- D 1 - I - 0x01B525 06:B515: 31        .byte $31   ; 
- D 1 - I - 0x01B526 06:B516: 38        .byte $38   ; 
- D 1 - I - 0x01B527 06:B517: 07        .byte $07   ; 
- D 1 - I - 0x01B528 06:B518: 4C        .byte $4C   ; 



_off016_round_1_3_B519_0D2:
- D 1 - I - 0x01B529 06:B519: 96        .byte $96   ; 
- D 1 - I - 0x01B52A 06:B51A: 09        .byte $09   ; 
- D 1 - I - 0x01B52B 06:B51B: A1        .byte $A1   ; 
- D 1 - I - 0x01B52C 06:B51C: 31        .byte $31   ; 
- D 1 - I - 0x01B52D 06:B51D: 07        .byte $07   ; 
- D 1 - I - 0x01B52E 06:B51E: 4D        .byte $4D   ; 



_off016_round_1_3_B51F_0D4:
- D 1 - I - 0x01B52F 06:B51F: 96        .byte $96   ; 
- D 1 - I - 0x01B530 06:B520: 0A        .byte $0A   ; 
- D 1 - I - 0x01B531 06:B521: 98        .byte $98   ; 
- D 1 - I - 0x01B532 06:B522: 07        .byte $07   ; 
- D 1 - I - 0x01B533 06:B523: 4C        .byte $4C   ; 



_off016_round_1_3_B524_0DA:
- D 1 - I - 0x01B534 06:B524: 9E        .byte $9E   ; 
- D 1 - I - 0x01B535 06:B525: 30        .byte $30   ; 
- D 1 - I - 0x01B536 06:B526: 03        .byte $03   ; 
- D 1 - I - 0x01B537 06:B527: 17        .byte $17   ; 
- D 1 - I - 0x01B538 06:B528: 07        .byte $07   ; 
- D 1 - I - 0x01B539 06:B529: 4D        .byte $4D   ; 



_off016_round_1_3_B52A_0DC:
- D 1 - I - 0x01B53A 06:B52A: 9E        .byte $9E   ; 
- D 1 - I - 0x01B53B 06:B52B: 31        .byte $31   ; 
- D 1 - I - 0x01B53C 06:B52C: 38        .byte $38   ; 
- D 1 - I - 0x01B53D 06:B52D: 3F        .byte $3F   ; 
- D 1 - I - 0x01B53E 06:B52E: 07        .byte $07   ; 
- D 1 - I - 0x01B53F 06:B52F: 4C        .byte $4C   ; 



_off016_round_1_3_B530_0DE:
_off016_round_1_3_B530_1B2:
_off016_round_1_3_B530_1C2:
_off016_round_1_3_B530_1D2:
- D 1 - I - 0x01B540 06:B530: A4        .byte $A4   ; 
- D 1 - I - 0x01B541 06:B531: 31        .byte $31   ; 
- D 1 - I - 0x01B542 06:B532: 38        .byte $38   ; 
- D 1 - I - 0x01B543 06:B533: 07        .byte $07   ; 
- D 1 - I - 0x01B544 06:B534: 4D        .byte $4D   ; 



_off016_round_1_3_B535_0E2:
- D 1 - I - 0x01B545 06:B535: A3        .byte $A3   ; 
- D 1 - I - 0x01B546 06:B536: 08        .byte $08   ; 
- D 1 - I - 0x01B547 06:B537: 90        .byte $90   ; 
- D 1 - I - 0x01B548 06:B538: 31        .byte $31   ; 
- D 1 - I - 0x01B549 06:B539: 38        .byte $38   ; 
- D 1 - I - 0x01B54A 06:B53A: 07        .byte $07   ; 
- D 1 - I - 0x01B54B 06:B53B: 4D        .byte $4D   ; 



_off016_round_1_3_B53C_0E4:
- D 1 - I - 0x01B54C 06:B53C: A3        .byte $A3   ; 
- D 1 - I - 0x01B54D 06:B53D: 09        .byte $09   ; 
- D 1 - I - 0x01B54E 06:B53E: 93        .byte $93   ; 
- D 1 - I - 0x01B54F 06:B53F: 31        .byte $31   ; 
- D 1 - I - 0x01B550 06:B540: 07        .byte $07   ; 
- D 1 - I - 0x01B551 06:B541: 4C        .byte $4C   ; 



_off016_round_1_3_B542_0E6:
- D 1 - I - 0x01B552 06:B542: A3        .byte $A3   ; 
- D 1 - I - 0x01B553 06:B543: 0A        .byte $0A   ; 
- D 1 - I - 0x01B554 06:B544: A0        .byte $A0   ; 
- D 1 - I - 0x01B555 06:B545: 07        .byte $07   ; 
- D 1 - I - 0x01B556 06:B546: 4D        .byte $4D   ; 



_off016_round_1_3_B547_0E8:
- D 1 - I - 0x01B557 06:B547: AC        .byte $AC   ; 
- D 1 - I - 0x01B558 06:B548: 24        .byte $24   ; 
- D 1 - I - 0x01B559 06:B549: 25        .byte $25   ; 
- D 1 - I - 0x01B55A 06:B54A: 78        .byte $78   ; 



_off016_round_1_3_B54B_0EA:
- D 1 - I - 0x01B55B 06:B54B: A4        .byte $A4   ; 
- D 1 - I - 0x01B55C 06:B54C: 24        .byte $24   ; 
- D 1 - I - 0x01B55D 06:B54D: 25        .byte $25   ; 
- D 1 - I - 0x01B55E 06:B54E: 2C        .byte $2C   ; 
- D 1 - I - 0x01B55F 06:B54F: 79        .byte $79   ; 



_off016_round_1_3_B550_0EC:
- D 1 - I - 0x01B560 06:B550: 96        .byte $96   ; 
- D 1 - I - 0x01B561 06:B551: 0D        .byte $0D   ; 
- D 1 - I - 0x01B562 06:B552: 93        .byte $93   ; 
- D 1 - I - 0x01B563 06:B553: 24        .byte $24   ; 
- D 1 - I - 0x01B564 06:B554: 25        .byte $25   ; 
- D 1 - I - 0x01B565 06:B555: 2C        .byte $2C   ; 
- D 1 - I - 0x01B566 06:B556: 83        .byte $83   ; 



_off016_round_1_3_B557_0EE:
- D 1 - I - 0x01B567 06:B557: 96        .byte $96   ; 
- D 1 - I - 0x01B568 06:B558: 28        .byte $28   ; 
- D 1 - I - 0x01B569 06:B559: 90        .byte $90   ; 
- D 1 - I - 0x01B56A 06:B55A: 24        .byte $24   ; 
- D 1 - I - 0x01B56B 06:B55B: 25        .byte $25   ; 
- D 1 - I - 0x01B56C 06:B55C: 2C        .byte $2C   ; 
- D 1 - I - 0x01B56D 06:B55D: 99        .byte $99   ; 



_off016_round_1_3_B55E_0F0:
- D 1 - I - 0x01B56E 06:B55E: 96        .byte $96   ; 
- D 1 - I - 0x01B56F 06:B55F: 0E        .byte $0E   ; 
- D 1 - I - 0x01B570 06:B560: 8C        .byte $8C   ; 
- D 1 - I - 0x01B571 06:B561: 24        .byte $24   ; 
- D 1 - I - 0x01B572 06:B562: 25        .byte $25   ; 
- D 1 - I - 0x01B573 06:B563: 2C        .byte $2C   ; 
- D 1 - I - 0x01B574 06:B564: 92        .byte $92   ; 



_off016_round_1_3_B565_0F2:
_off016_round_1_3_B565_142:
- D 1 - I - 0x01B575 06:B565: 84        .byte $84   ; 
- D 1 - I - 0x01B576 06:B566: 24        .byte $24   ; 
- D 1 - I - 0x01B577 06:B567: 25        .byte $25   ; 
- D 1 - I - 0x01B578 06:B568: 2C        .byte $2C   ; 
- D 1 - I - 0x01B579 06:B569: 95        .byte $95   ; 



_off016_round_1_3_B56A_0F4:
- D 1 - I - 0x01B57A 06:B56A: A1        .byte $A1   ; 
- D 1 - I - 0x01B57B 06:B56B: 08        .byte $08   ; 
- D 1 - I - 0x01B57C 06:B56C: 93        .byte $93   ; 
- D 1 - I - 0x01B57D 06:B56D: 24        .byte $24   ; 
- D 1 - I - 0x01B57E 06:B56E: 25        .byte $25   ; 
- D 1 - I - 0x01B57F 06:B56F: 2C        .byte $2C   ; 
- D 1 - I - 0x01B580 06:B570: 9C        .byte $9C   ; 



_off016_round_1_3_B571_0F6:
- D 1 - I - 0x01B581 06:B571: A1        .byte $A1   ; 
- D 1 - I - 0x01B582 06:B572: 09        .byte $09   ; 
- D 1 - I - 0x01B583 06:B573: 90        .byte $90   ; 
- D 1 - I - 0x01B584 06:B574: 24        .byte $24   ; 
- D 1 - I - 0x01B585 06:B575: 25        .byte $25   ; 
- D 1 - I - 0x01B586 06:B576: 2C        .byte $2C   ; 
- D 1 - I - 0x01B587 06:B577: C7        .byte $C7   ; 



_off016_round_1_3_B578_0F8:
- D 1 - I - 0x01B588 06:B578: A1        .byte $A1   ; 
- D 1 - I - 0x01B589 06:B579: 0A        .byte $0A   ; 
- D 1 - I - 0x01B58A 06:B57A: 8C        .byte $8C   ; 
- D 1 - I - 0x01B58B 06:B57B: 24        .byte $24   ; 
- D 1 - I - 0x01B58C 06:B57C: 25        .byte $25   ; 
- D 1 - I - 0x01B58D 06:B57D: 2C        .byte $2C   ; 
- D 1 - I - 0x01B58E 06:B57E: C8        .byte $C8   ; 



_off016_round_1_3_B57F_0FA:
- D 1 - I - 0x01B58F 06:B57F: 96        .byte $96   ; 
- D 1 - I - 0x01B590 06:B580: 24        .byte $24   ; 
- D 1 - I - 0x01B591 06:B581: 25        .byte $25   ; 
- D 1 - I - 0x01B592 06:B582: 2C        .byte $2C   ; 
- D 1 - I - 0x01B593 06:B583: BE        .byte $BE   ; 



_off016_round_1_3_B584_0FC:
- D 1 - I - 0x01B594 06:B584: 8B        .byte $8B   ; 
- D 1 - I - 0x01B595 06:B585: 24        .byte $24   ; 
- D 1 - I - 0x01B596 06:B586: 25        .byte $25   ; 
- D 1 - I - 0x01B597 06:B587: 2C        .byte $2C   ; 
- D 1 - I - 0x01B598 06:B588: C9        .byte $C9   ; 



_off016_round_1_3_B589_0FE:
- D 1 - I - 0x01B599 06:B589: 8F        .byte $8F   ; 
- D 1 - I - 0x01B59A 06:B58A: 24        .byte $24   ; 
- D 1 - I - 0x01B59B 06:B58B: 25        .byte $25   ; 
- D 1 - I - 0x01B59C 06:B58C: 2C        .byte $2C   ; 
- D 1 - I - 0x01B59D 06:B58D: CA        .byte $CA   ; 



_off016_round_1_3_B58E_100:
- D 1 - I - 0x01B59E 06:B58E: 98        .byte $98   ; 
- D 1 - I - 0x01B59F 06:B58F: 24        .byte $24   ; 
- D 1 - I - 0x01B5A0 06:B590: 25        .byte $25   ; 
- D 1 - I - 0x01B5A1 06:B591: 2C        .byte $2C   ; 
- D 1 - I - 0x01B5A2 06:B592: CB        .byte $CB   ; 



_off016_round_1_3_B593_102:
- D 1 - I - 0x01B5A3 06:B593: 98        .byte $98   ; 
- D 1 - I - 0x01B5A4 06:B594: 07        .byte $07   ; 
- D 1 - I - 0x01B5A5 06:B595: 2C        .byte $2C   ; 
- D 1 - I - 0x01B5A6 06:B596: A6        .byte $A6   ; 



_off016_round_1_3_B597_104:
- D 1 - I - 0x01B5A7 06:B597: 89        .byte $89   ; 
- D 1 - I - 0x01B5A8 06:B598: 08        .byte $08   ; 
- D 1 - I - 0x01B5A9 06:B599: 8C        .byte $8C   ; 
- D 1 - I - 0x01B5AA 06:B59A: 22        .byte $22   ; 
- D 1 - I - 0x01B5AB 06:B59B: 07        .byte $07   ; 
- D 1 - I - 0x01B5AC 06:B59C: 4C        .byte $4C   ; 
- D 1 - I - 0x01B5AD 06:B59D: A7        .byte $A7   ; 



_off016_round_1_3_B59E_106:
- D 1 - I - 0x01B5AE 06:B59E: 89        .byte $89   ; 
- D 1 - I - 0x01B5AF 06:B59F: 09        .byte $09   ; 
- D 1 - I - 0x01B5B0 06:B5A0: 8C        .byte $8C   ; 
- D 1 - I - 0x01B5B1 06:B5A1: 23        .byte $23   ; 
- D 1 - I - 0x01B5B2 06:B5A2: 07        .byte $07   ; 
- D 1 - I - 0x01B5B3 06:B5A3: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5B4 06:B5A4: A6        .byte $A6   ; 



_off016_round_1_3_B5A5_108:
- D 1 - I - 0x01B5B5 06:B5A5: 89        .byte $89   ; 
- D 1 - I - 0x01B5B6 06:B5A6: 0A        .byte $0A   ; 
- D 1 - I - 0x01B5B7 06:B5A7: 90        .byte $90   ; 
- D 1 - I - 0x01B5B8 06:B5A8: 27        .byte $27   ; 
- D 1 - I - 0x01B5B9 06:B5A9: 26        .byte $26   ; 
- D 1 - I - 0x01B5BA 06:B5AA: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5BB 06:B5AB: CB        .byte $CB   ; 



_off016_round_1_3_B5AC_10A:
- D 1 - I - 0x01B5BC 06:B5AC: 8F        .byte $8F   ; 
- D 1 - I - 0x01B5BD 06:B5AD: 27        .byte $27   ; 
- D 1 - I - 0x01B5BE 06:B5AE: 26        .byte $26   ; 
- D 1 - I - 0x01B5BF 06:B5AF: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5C0 06:B5B0: CA        .byte $CA   ; 



_off016_round_1_3_B5B1_10C:
- D 1 - I - 0x01B5C1 06:B5B1: 8B        .byte $8B   ; 
- D 1 - I - 0x01B5C2 06:B5B2: 27        .byte $27   ; 
- D 1 - I - 0x01B5C3 06:B5B3: 26        .byte $26   ; 
- D 1 - I - 0x01B5C4 06:B5B4: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5C5 06:B5B5: C9        .byte $C9   ; 



_off016_round_1_3_B5B6_10E:
- D 1 - I - 0x01B5C6 06:B5B6: 96        .byte $96   ; 
- D 1 - I - 0x01B5C7 06:B5B7: 27        .byte $27   ; 
- D 1 - I - 0x01B5C8 06:B5B8: 26        .byte $26   ; 
- D 1 - I - 0x01B5C9 06:B5B9: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5CA 06:B5BA: BE        .byte $BE   ; 



_off016_round_1_3_B5BB_110:
_off016_round_1_3_B5BB_11C:
- D 1 - I - 0x01B5CB 06:B5BB: 87        .byte $87   ; 
- D 1 - I - 0x01B5CC 06:B5BC: 27        .byte $27   ; 
- D 1 - I - 0x01B5CD 06:B5BD: 26        .byte $26   ; 
- D 1 - I - 0x01B5CE 06:B5BE: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5CF 06:B5BF: C8        .byte $C8   ; 



_off016_round_1_3_B5C0_112:
_off016_round_1_3_B5C0_11E:
- D 1 - I - 0x01B5D0 06:B5C0: A3        .byte $A3   ; 
- D 1 - I - 0x01B5D1 06:B5C1: 27        .byte $27   ; 
- D 1 - I - 0x01B5D2 06:B5C2: 26        .byte $26   ; 
- D 1 - I - 0x01B5D3 06:B5C3: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5D4 06:B5C4: C7        .byte $C7   ; 



_off016_round_1_3_B5C5_114:
- D 1 - I - 0x01B5D5 06:B5C5: 8F        .byte $8F   ; 
- D 1 - I - 0x01B5D6 06:B5C6: 60        .byte $60   ; 
- D 1 - I - 0x01B5D7 06:B5C7: 68        .byte $68   ; 
- D 1 - I - 0x01B5D8 06:B5C8: 88        .byte $88   ; 
- D 1 - I - 0x01B5D9 06:B5C9: 24        .byte $24   ; 
- D 1 - I - 0x01B5DA 06:B5CA: 25        .byte $25   ; 
- D 1 - I - 0x01B5DB 06:B5CB: 2C        .byte $2C   ; 
- D 1 - I - 0x01B5DC 06:B5CC: CC        .byte $CC   ; 



_off016_round_1_3_B5CD_116:
- D 1 - I - 0x01B5DD 06:B5CD: 93        .byte $93   ; 
- D 1 - I - 0x01B5DE 06:B5CE: 08        .byte $08   ; 
- D 1 - I - 0x01B5DF 06:B5CF: 89        .byte $89   ; 
- D 1 - I - 0x01B5E0 06:B5D0: 61        .byte $61   ; 
- D 1 - I - 0x01B5E1 06:B5D1: 88        .byte $88   ; 
- D 1 - I - 0x01B5E2 06:B5D2: 24        .byte $24   ; 
- D 1 - I - 0x01B5E3 06:B5D3: 25        .byte $25   ; 
- D 1 - I - 0x01B5E4 06:B5D4: 2C        .byte $2C   ; 
- D 1 - I - 0x01B5E5 06:B5D5: CD        .byte $CD   ; 



_off016_round_1_3_B5D6_118:
- D 1 - I - 0x01B5E6 06:B5D6: 93        .byte $93   ; 
- D 1 - I - 0x01B5E7 06:B5D7: 09        .byte $09   ; 
- D 1 - I - 0x01B5E8 06:B5D8: 90        .byte $90   ; 
- D 1 - I - 0x01B5E9 06:B5D9: 24        .byte $24   ; 
- D 1 - I - 0x01B5EA 06:B5DA: 25        .byte $25   ; 
- D 1 - I - 0x01B5EB 06:B5DB: 2C        .byte $2C   ; 
- D 1 - I - 0x01B5EC 06:B5DC: BF        .byte $BF   ; 



_off016_round_1_3_B5DD_11A:
- D 1 - I - 0x01B5ED 06:B5DD: 93        .byte $93   ; 
- D 1 - I - 0x01B5EE 06:B5DE: 0A        .byte $0A   ; 
- D 1 - I - 0x01B5EF 06:B5DF: 90        .byte $90   ; 
- D 1 - I - 0x01B5F0 06:B5E0: 27        .byte $27   ; 
- D 1 - I - 0x01B5F1 06:B5E1: 26        .byte $26   ; 
- D 1 - I - 0x01B5F2 06:B5E2: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5F3 06:B5E3: BE        .byte $BE   ; 



_off016_round_1_3_B5E4_120:
- D 1 - I - 0x01B5F4 06:B5E4: 9D        .byte $9D   ; 
- D 1 - I - 0x01B5F5 06:B5E5: 27        .byte $27   ; 
- D 1 - I - 0x01B5F6 06:B5E6: 26        .byte $26   ; 
- D 1 - I - 0x01B5F7 06:B5E7: 2D        .byte $2D   ; 
- D 1 - I - 0x01B5F8 06:B5E8: 9C        .byte $9C   ; 



_off016_round_1_3_B5E9_122:
- D 1 - I - 0x01B5F9 06:B5E9: 84        .byte $84   ; 
- D 1 - I - 0x01B5FA 06:B5EA: 27        .byte $27   ; 
- D 1 - I - 0x01B5FB 06:B5EB: 26        .byte $26   ; 
- D 1 - I - 0x01B5FC 06:B5EC: 9B        .byte $9B   ; 



_off016_round_1_3_B5ED_128:
- D 1 - I - 0x01B5FD 06:B5ED: 9D        .byte $9D   ; 
- D 1 - I - 0x01B5FE 06:B5EE: 31        .byte $31   ; 
- D 1 - I - 0x01B5FF 06:B5EF: 38        .byte $38   ; 
- D 1 - I - 0x01B600 06:B5F0: 07        .byte $07   ; 
- D 1 - I - 0x01B601 06:B5F1: 4C        .byte $4C   ; 
- D 1 - I - 0x01B602 06:B5F2: 94        .byte $94   ; 



_off016_round_1_3_B5F3_12A:
- D 1 - I - 0x01B603 06:B5F3: 8B        .byte $8B   ; 
- D 1 - I - 0x01B604 06:B5F4: 08        .byte $08   ; 
- D 1 - I - 0x01B605 06:B5F5: 8C        .byte $8C   ; 
- D 1 - I - 0x01B606 06:B5F6: 31        .byte $31   ; 
- D 1 - I - 0x01B607 06:B5F7: 07        .byte $07   ; 
- D 1 - I - 0x01B608 06:B5F8: 4D        .byte $4D   ; 
- D 1 - I - 0x01B609 06:B5F9: 95        .byte $95   ; 



_off016_round_1_3_B5FA_12C:
- D 1 - I - 0x01B60A 06:B5FA: 8B        .byte $8B   ; 
- D 1 - I - 0x01B60B 06:B5FB: 09        .byte $09   ; 
- D 1 - I - 0x01B60C 06:B5FC: 90        .byte $90   ; 
- D 1 - I - 0x01B60D 06:B5FD: 07        .byte $07   ; 
- D 1 - I - 0x01B60E 06:B5FE: 4C        .byte $4C   ; 
- D 1 - I - 0x01B60F 06:B5FF: 94        .byte $94   ; 



_off016_round_1_3_B600_12E:
- D 1 - I - 0x01B610 06:B600: 8B        .byte $8B   ; 
- D 1 - I - 0x01B611 06:B601: 0A        .byte $0A   ; 
- D 1 - I - 0x01B612 06:B602: 8C        .byte $8C   ; 
- D 1 - I - 0x01B613 06:B603: 24        .byte $24   ; 
- D 1 - I - 0x01B614 06:B604: 25        .byte $25   ; 
- D 1 - I - 0x01B615 06:B605: 9B        .byte $9B   ; 



_off016_round_1_3_B606_130:
- D 1 - I - 0x01B616 06:B606: 9D        .byte $9D   ; 
- D 1 - I - 0x01B617 06:B607: 24        .byte $24   ; 
- D 1 - I - 0x01B618 06:B608: 25        .byte $25   ; 
- D 1 - I - 0x01B619 06:B609: 2C        .byte $2C   ; 
- D 1 - I - 0x01B61A 06:B60A: 9C        .byte $9C   ; 



_off016_round_1_3_B60B_132:
- D 1 - I - 0x01B61B 06:B60B: 9D        .byte $9D   ; 
- D 1 - I - 0x01B61C 06:B60C: 27        .byte $27   ; 
- D 1 - I - 0x01B61D 06:B60D: 26        .byte $26   ; 
- D 1 - I - 0x01B61E 06:B60E: 2D        .byte $2D   ; 
- D 1 - I - 0x01B61F 06:B60F: 9B        .byte $9B   ; 



_off016_round_1_3_B610_134:
- D 1 - I - 0x01B620 06:B610: 84        .byte $84   ; 
- D 1 - I - 0x01B621 06:B611: 27        .byte $27   ; 
- D 1 - I - 0x01B622 06:B612: 26        .byte $26   ; 
- D 1 - I - 0x01B623 06:B613: 2D        .byte $2D   ; 
- D 1 - I - 0x01B624 06:B614: 94        .byte $94   ; 



_off016_round_1_3_B615_136:
_off016_round_1_3_B615_14A:
_off016_round_1_3_B615_176:
- D 1 - I - 0x01B625 06:B615: 81        .byte $81   ; 
- D 1 - I - 0x01B626 06:B616: 27        .byte $27   ; 
- D 1 - I - 0x01B627 06:B617: 26        .byte $26   ; 
- D 1 - I - 0x01B628 06:B618: 2D        .byte $2D   ; 
- D 1 - I - 0x01B629 06:B619: 91        .byte $91   ; 



_off016_round_1_3_B61A_138:
_off016_round_1_3_B61A_14C:
- D 1 - I - 0x01B62A 06:B61A: 8A        .byte $8A   ; 
- D 1 - I - 0x01B62B 06:B61B: 27        .byte $27   ; 
- D 1 - I - 0x01B62C 06:B61C: 26        .byte $26   ; 
- D 1 - I - 0x01B62D 06:B61D: 2D        .byte $2D   ; 
- D 1 - I - 0x01B62E 06:B61E: 8E        .byte $8E   ; 



_off016_round_1_3_B61F_13A:
_off016_round_1_3_B61F_14E:
- D 1 - I - 0x01B62F 06:B61F: 9E        .byte $9E   ; 
- D 1 - I - 0x01B630 06:B620: 27        .byte $27   ; 
- D 1 - I - 0x01B631 06:B621: 26        .byte $26   ; 
- D 1 - I - 0x01B632 06:B622: 2D        .byte $2D   ; 
- D 1 - I - 0x01B633 06:B623: 86        .byte $86   ; 



_off016_round_1_3_B624_13C:
_off016_round_1_3_B624_150:
- D 1 - I - 0x01B634 06:B624: 9E        .byte $9E   ; 
- D 1 - I - 0x01B635 06:B625: 24        .byte $24   ; 
- D 1 - I - 0x01B636 06:B626: 25        .byte $25   ; 
- D 1 - I - 0x01B637 06:B627: 2C        .byte $2C   ; 
- D 1 - I - 0x01B638 06:B628: 83        .byte $83   ; 



_off016_round_1_3_B629_13E:
_off016_round_1_3_B629_152:
- D 1 - I - 0x01B639 06:B629: 8A        .byte $8A   ; 
- D 1 - I - 0x01B63A 06:B62A: 24        .byte $24   ; 
- D 1 - I - 0x01B63B 06:B62B: 25        .byte $25   ; 
- D 1 - I - 0x01B63C 06:B62C: 2C        .byte $2C   ; 
- D 1 - I - 0x01B63D 06:B62D: 99        .byte $99   ; 



_off016_round_1_3_B62E_140:
_off016_round_1_3_B62E_154:
- D 1 - I - 0x01B63E 06:B62E: 81        .byte $81   ; 
- D 1 - I - 0x01B63F 06:B62F: 24        .byte $24   ; 
- D 1 - I - 0x01B640 06:B630: 25        .byte $25   ; 
- D 1 - I - 0x01B641 06:B631: 2C        .byte $2C   ; 
- D 1 - I - 0x01B642 06:B632: 92        .byte $92   ; 



_off016_round_1_3_B633_144:
- D 1 - I - 0x01B643 06:B633: 8F        .byte $8F   ; 
- D 1 - I - 0x01B644 06:B634: 08        .byte $08   ; 
- D 1 - I - 0x01B645 06:B635: 8C        .byte $8C   ; 
- D 1 - I - 0x01B646 06:B636: 24        .byte $24   ; 
- D 1 - I - 0x01B647 06:B637: 25        .byte $25   ; 
- D 1 - I - 0x01B648 06:B638: 2C        .byte $2C   ; 
- D 1 - I - 0x01B649 06:B639: 9C        .byte $9C   ; 



_off016_round_1_3_B63A_146:
- D 1 - I - 0x01B64A 06:B63A: 8F        .byte $8F   ; 
- D 1 - I - 0x01B64B 06:B63B: 09        .byte $09   ; 
- D 1 - I - 0x01B64C 06:B63C: 8C        .byte $8C   ; 
- D 1 - I - 0x01B64D 06:B63D: 27        .byte $27   ; 
- D 1 - I - 0x01B64E 06:B63E: 26        .byte $26   ; 
- D 1 - I - 0x01B64F 06:B63F: 2D        .byte $2D   ; 
- D 1 - I - 0x01B650 06:B640: 9B        .byte $9B   ; 



_off016_round_1_3_B641_148:
- D 1 - I - 0x01B651 06:B641: 8F        .byte $8F   ; 
- D 1 - I - 0x01B652 06:B642: 0A        .byte $0A   ; 
- D 1 - I - 0x01B653 06:B643: 90        .byte $90   ; 
- D 1 - I - 0x01B654 06:B644: 27        .byte $27   ; 
- D 1 - I - 0x01B655 06:B645: 26        .byte $26   ; 
- D 1 - I - 0x01B656 06:B646: 2D        .byte $2D   ; 
- D 1 - I - 0x01B657 06:B647: 94        .byte $94   ; 



_off016_round_1_3_B648_156:
- D 1 - I - 0x01B658 06:B648: 96        .byte $96   ; 
- D 1 - I - 0x01B659 06:B649: 0D        .byte $0D   ; 
- D 1 - I - 0x01B65A 06:B64A: 8C        .byte $8C   ; 
- D 1 - I - 0x01B65B 06:B64B: 07        .byte $07   ; 
- D 1 - I - 0x01B65C 06:B64C: 2C        .byte $2C   ; 
- D 1 - I - 0x01B65D 06:B64D: 95        .byte $95   ; 



_off016_round_1_3_B64E_158:
- D 1 - I - 0x01B65E 06:B64E: 96        .byte $96   ; 
- D 1 - I - 0x01B65F 06:B64F: 28        .byte $28   ; 
- D 1 - I - 0x01B660 06:B650: 8C        .byte $8C   ; 
- D 1 - I - 0x01B661 06:B651: 07        .byte $07   ; 
- D 1 - I - 0x01B662 06:B652: 4C        .byte $4C   ; 
- D 1 - I - 0x01B663 06:B653: 94        .byte $94   ; 



_off016_round_1_3_B654_15A:
- D 1 - I - 0x01B664 06:B654: 96        .byte $96   ; 
- D 1 - I - 0x01B665 06:B655: 0E        .byte $0E   ; 
- D 1 - I - 0x01B666 06:B656: 89        .byte $89   ; 
- D 1 - I - 0x01B667 06:B657: 30        .byte $30   ; 
- D 1 - I - 0x01B668 06:B658: 07        .byte $07   ; 
- D 1 - I - 0x01B669 06:B659: 4D        .byte $4D   ; 
- D 1 - I - 0x01B66A 06:B65A: 95        .byte $95   ; 



_off016_round_1_3_B65B_15C:
- D 1 - I - 0x01B66B 06:B65B: 9D        .byte $9D   ; 
- D 1 - I - 0x01B66C 06:B65C: 30        .byte $30   ; 
- D 1 - I - 0x01B66D 06:B65D: 03        .byte $03   ; 
- D 1 - I - 0x01B66E 06:B65E: 07        .byte $07   ; 
- D 1 - I - 0x01B66F 06:B65F: 4C        .byte $4C   ; 
- D 1 - I - 0x01B670 06:B660: 94        .byte $94   ; 



_off016_round_1_3_B661_15E:
- D 1 - I - 0x01B671 06:B661: 9D        .byte $9D   ; 
- D 1 - I - 0x01B672 06:B662: 31        .byte $31   ; 
- D 1 - I - 0x01B673 06:B663: 3F        .byte $3F   ; 
- D 1 - I - 0x01B674 06:B664: 07        .byte $07   ; 
- D 1 - I - 0x01B675 06:B665: 4D        .byte $4D   ; 
- D 1 - I - 0x01B676 06:B666: 95        .byte $95   ; 



_off016_round_1_3_B667_160:
- D 1 - I - 0x01B677 06:B667: 87        .byte $87   ; 
- D 1 - I - 0x01B678 06:B668: 71        .byte $71   ; 
- D 1 - I - 0x01B679 06:B669: 00        .byte $00   ; 
- D 1 - I - 0x01B67A 06:B66A: 30        .byte $30   ; 
- D 1 - I - 0x01B67B 06:B66B: 3A        .byte $3A   ; 
- D 1 - I - 0x01B67C 06:B66C: 07        .byte $07   ; 
- D 1 - I - 0x01B67D 06:B66D: 4C        .byte $4C   ; 
- D 1 - I - 0x01B67E 06:B66E: 94        .byte $94   ; 



_off016_round_1_3_B66F_164:
- D 1 - I - 0x01B67F 06:B66F: A1        .byte $A1   ; 
- D 1 - I - 0x01B680 06:B670: 54        .byte $54   ; 
- D 1 - I - 0x01B681 06:B671: 8C        .byte $8C   ; 
- D 1 - I - 0x01B682 06:B672: 11        .byte $11   ; 
- D 1 - I - 0x01B683 06:B673: AB        .byte $AB   ; 
- D 1 - I - 0x01B684 06:B674: 3C        .byte $3C   ; 
- D 1 - I - 0x01B685 06:B675: 07        .byte $07   ; 
- D 1 - I - 0x01B686 06:B676: 4C        .byte $4C   ; 
- D 1 - I - 0x01B687 06:B677: 94        .byte $94   ; 



_off016_round_1_3_B678_166:
- D 1 - I - 0x01B688 06:B678: A1        .byte $A1   ; 
- D 1 - I - 0x01B689 06:B679: 55        .byte $55   ; 
- D 1 - I - 0x01B68A 06:B67A: 8C        .byte $8C   ; 
- D 1 - I - 0x01B68B 06:B67B: 0B        .byte $0B   ; 
- D 1 - I - 0x01B68C 06:B67C: 00        .byte $00   ; 
- D 1 - I - 0x01B68D 06:B67D: 30        .byte $30   ; 
- D 1 - I - 0x01B68E 06:B67E: 3D        .byte $3D   ; 
- D 1 - I - 0x01B68F 06:B67F: 07        .byte $07   ; 
- D 1 - I - 0x01B690 06:B680: 4D        .byte $4D   ; 
- D 1 - I - 0x01B691 06:B681: 95        .byte $95   ; 



_off016_round_1_3_B682_168:
- D 1 - I - 0x01B692 06:B682: A1        .byte $A1   ; 
- D 1 - I - 0x01B693 06:B683: 4E        .byte $4E   ; 
- D 1 - I - 0x01B694 06:B684: 93        .byte $93   ; 
- D 1 - I - 0x01B695 06:B685: 31        .byte $31   ; 
- D 1 - I - 0x01B696 06:B686: 17        .byte $17   ; 
- D 1 - I - 0x01B697 06:B687: 07        .byte $07   ; 
- D 1 - I - 0x01B698 06:B688: 4C        .byte $4C   ; 
- D 1 - I - 0x01B699 06:B689: 94        .byte $94   ; 



_off016_round_1_3_B68A_16E:
- D 1 - I - 0x01B69A 06:B68A: 87        .byte $87   ; 
- D 1 - I - 0x01B69B 06:B68B: 64        .byte $64   ; 
- D 1 - I - 0x01B69C 06:B68C: 40        .byte $40   ; 
- D 1 - I - 0x01B69D 06:B68D: 48        .byte $48   ; 
- D 1 - I - 0x01B69E 06:B68E: 3B        .byte $3B   ; 
- D 1 - I - 0x01B69F 06:B68F: 07        .byte $07   ; 
- D 1 - I - 0x01B6A0 06:B690: 4D        .byte $4D   ; 
- D 1 - I - 0x01B6A1 06:B691: 95        .byte $95   ; 



_off016_round_1_3_B692_170:
- D 1 - I - 0x01B6A2 06:B692: A3        .byte $A3   ; 
- D 1 - I - 0x01B6A3 06:B693: 11        .byte $11   ; 
- D 1 - I - 0x01B6A4 06:B694: 43        .byte $43   ; 
- D 1 - I - 0x01B6A5 06:B695: 3C        .byte $3C   ; 
- D 1 - I - 0x01B6A6 06:B696: 07        .byte $07   ; 
- D 1 - I - 0x01B6A7 06:B697: 4C        .byte $4C   ; 
- D 1 - I - 0x01B6A8 06:B698: 94        .byte $94   ; 



_off016_round_1_3_B699_172:
- D 1 - I - 0x01B6A9 06:B699: A3        .byte $A3   ; 
- D 1 - I - 0x01B6AA 06:B69A: 0B        .byte $0B   ; 
- D 1 - I - 0x01B6AB 06:B69B: 00        .byte $00   ; 
- D 1 - I - 0x01B6AC 06:B69C: 3E        .byte $3E   ; 
- D 1 - I - 0x01B6AD 06:B69D: 07        .byte $07   ; 
- D 1 - I - 0x01B6AE 06:B69E: 4D        .byte $4D   ; 
- D 1 - I - 0x01B6AF 06:B69F: 95        .byte $95   ; 



_off016_round_1_3_B6A0_174:
- D 1 - I - 0x01B6B0 06:B6A0: 81        .byte $81   ; 
- D 1 - I - 0x01B6B1 06:B6A1: 07        .byte $07   ; 
- D 1 - I - 0x01B6B2 06:B6A2: 2D        .byte $2D   ; 
- D 1 - I - 0x01B6B3 06:B6A3: 94        .byte $94   ; 



_off016_round_1_3_B6A4_178:
- D 1 - I - 0x01B6B4 06:B6A4: 8F        .byte $8F   ; 
- D 1 - I - 0x01B6B5 06:B6A5: 08        .byte $08   ; 
- D 1 - I - 0x01B6B6 06:B6A6: A0        .byte $A0   ; 
- D 1 - I - 0x01B6B7 06:B6A7: 27        .byte $27   ; 
- D 1 - I - 0x01B6B8 06:B6A8: 26        .byte $26   ; 
- D 1 - I - 0x01B6B9 06:B6A9: 2D        .byte $2D   ; 
- D 1 - I - 0x01B6BA 06:B6AA: 8E        .byte $8E   ; 



_off016_round_1_3_B6AB_17A:
- D 1 - I - 0x01B6BB 06:B6AB: 8F        .byte $8F   ; 
- D 1 - I - 0x01B6BC 06:B6AC: 09        .byte $09   ; 
- D 1 - I - 0x01B6BD 06:B6AD: A1        .byte $A1   ; 
- D 1 - I - 0x01B6BE 06:B6AE: 27        .byte $27   ; 
- D 1 - I - 0x01B6BF 06:B6AF: 26        .byte $26   ; 
- D 1 - I - 0x01B6C0 06:B6B0: 2D        .byte $2D   ; 
- D 1 - I - 0x01B6C1 06:B6B1: 86        .byte $86   ; 



_off016_round_1_3_B6B2_17C:
- D 1 - I - 0x01B6C2 06:B6B2: 8F        .byte $8F   ; 
- D 1 - I - 0x01B6C3 06:B6B3: 0A        .byte $0A   ; 
- D 1 - I - 0x01B6C4 06:B6B4: 98        .byte $98   ; 
- D 1 - I - 0x01B6C5 06:B6B5: 27        .byte $27   ; 
- D 1 - I - 0x01B6C6 06:B6B6: 26        .byte $26   ; 
- D 1 - I - 0x01B6C7 06:B6B7: 2D        .byte $2D   ; 
- D 1 - I - 0x01B6C8 06:B6B8: 78        .byte $78   ; 



_off016_round_1_3_B6B9_17E:
- D 1 - I - 0x01B6C9 06:B6B9: AC        .byte $AC   ; 
- D 1 - I - 0x01B6CA 06:B6BA: 27        .byte $27   ; 
- D 1 - I - 0x01B6CB 06:B6BB: 26        .byte $26   ; 
- D 1 - I - 0x01B6CC 06:B6BC: 2D        .byte $2D   ; 



_off016_round_1_3_B6BD_180:
_off016_round_1_3_B6BD_190:
- D 1 - I - 0x01B6CD 06:B6BD: AC        .byte $AC   ; 
- D 1 - I - 0x01B6CE 06:B6BE: 30        .byte $30   ; 
- D 1 - I - 0x01B6CF 06:B6BF: 07        .byte $07   ; 
- D 1 - I - 0x01B6D0 06:B6C0: 4C        .byte $4C   ; 



_off016_round_1_3_B6C1_188:
- D 1 - I - 0x01B6D1 06:B6C1: 87        .byte $87   ; 
- D 1 - I - 0x01B6D2 06:B6C2: 08        .byte $08   ; 
- D 1 - I - 0x01B6D3 06:B6C3: 93        .byte $93   ; 
- D 1 - I - 0x01B6D4 06:B6C4: 31        .byte $31   ; 
- D 1 - I - 0x01B6D5 06:B6C5: 38        .byte $38   ; 
- D 1 - I - 0x01B6D6 06:B6C6: 07        .byte $07   ; 
- D 1 - I - 0x01B6D7 06:B6C7: 4C        .byte $4C   ; 



_off016_round_1_3_B6C8_18A:
- D 1 - I - 0x01B6D8 06:B6C8: 87        .byte $87   ; 
- D 1 - I - 0x01B6D9 06:B6C9: 09        .byte $09   ; 
- D 1 - I - 0x01B6DA 06:B6CA: A0        .byte $A0   ; 
- D 1 - I - 0x01B6DB 06:B6CB: 31        .byte $31   ; 
- D 1 - I - 0x01B6DC 06:B6CC: 07        .byte $07   ; 
- D 1 - I - 0x01B6DD 06:B6CD: 4D        .byte $4D   ; 



_off016_round_1_3_B6CE_18C:
- D 1 - I - 0x01B6DE 06:B6CE: 87        .byte $87   ; 
- D 1 - I - 0x01B6DF 06:B6CF: 0A        .byte $0A   ; 
- D 1 - I - 0x01B6E0 06:B6D0: A0        .byte $A0   ; 
- D 1 - I - 0x01B6E1 06:B6D1: 30        .byte $30   ; 
- D 1 - I - 0x01B6E2 06:B6D2: 07        .byte $07   ; 
- D 1 - I - 0x01B6E3 06:B6D3: 4C        .byte $4C   ; 



_off016_round_1_3_B6D4_194:
- D 1 - I - 0x01B6E4 06:B6D4: 9D        .byte $9D   ; 
- D 1 - I - 0x01B6E5 06:B6D5: 2F        .byte $2F   ; 
- D 1 - I - 0x01B6E6 06:B6D6: CE        .byte $CE   ; 



_off016_round_1_3_B6D7_196:
- D 1 - I - 0x01B6E7 06:B6D7: 9D        .byte $9D   ; 
- D 1 - I - 0x01B6E8 06:B6D8: 07        .byte $07   ; 
- D 1 - I - 0x01B6E9 06:B6D9: 4D        .byte $4D   ; 
- D 1 - I - 0x01B6EA 06:B6DA: C7        .byte $C7   ; 



_off016_round_1_3_B6DB_198:
- D 1 - I - 0x01B6EB 06:B6DB: 9D        .byte $9D   ; 
- D 1 - I - 0x01B6EC 06:B6DC: 07        .byte $07   ; 
- D 1 - I - 0x01B6ED 06:B6DD: 4C        .byte $4C   ; 
- D 1 - I - 0x01B6EE 06:B6DE: CC        .byte $CC   ; 



_off016_round_1_3_B6DF_19A:
- D 1 - I - 0x01B6EF 06:B6DF: 9D        .byte $9D   ; 
- D 1 - I - 0x01B6F0 06:B6E0: 2E        .byte $2E   ; 
- D 1 - I - 0x01B6F1 06:B6E1: A8        .byte $A8   ; 



_off016_round_1_3_B6E2_19C:
- D 1 - I - 0x01B6F2 06:B6E2: A1        .byte $A1   ; 
- D 1 - I - 0x01B6F3 06:B6E3: 60        .byte $60   ; 
- D 1 - I - 0x01B6F4 06:B6E4: 68        .byte $68   ; 
- D 1 - I - 0x01B6F5 06:B6E5: 8B        .byte $8B   ; 
- D 1 - I - 0x01B6F6 06:B6E6: 19        .byte $19   ; 
- D 1 - I - 0x01B6F7 06:B6E7: 45        .byte $45   ; 
- D 1 - I - 0x01B6F8 06:B6E8: 00        .byte $00   ; 



_off016_round_1_3_B6E9_19E:
- D 1 - I - 0x01B6F9 06:B6E9: A1        .byte $A1   ; 
- D 1 - I - 0x01B6FA 06:B6EA: 61        .byte $61   ; 
- D 1 - I - 0x01B6FB 06:B6EB: 96        .byte $96   ; 
- D 1 - I - 0x01B6FC 06:B6EC: 1A        .byte $1A   ; 
- D 1 - I - 0x01B6FD 06:B6ED: 45        .byte $45   ; 
- D 1 - I - 0x01B6FE 06:B6EE: 00        .byte $00   ; 



_off016_round_1_3_B6EF_1A8:
- D 1 - I - 0x01B6FF 06:B6EF: 9E        .byte $9E   ; 
- D 1 - I - 0x01B700 06:B6F0: 72        .byte $72   ; 
- D 1 - I - 0x01B701 06:B6F1: A2        .byte $A2   ; 



_off016_round_1_3_B6F2_1B6:
- D 1 - I - 0x01B702 06:B6F2: 81        .byte $81   ; 
- D 1 - I - 0x01B703 06:B6F3: 60        .byte $60   ; 
- D 1 - I - 0x01B704 06:B6F4: 68        .byte $68   ; 
- D 1 - I - 0x01B705 06:B6F5: 37        .byte $37   ; 
- D 1 - I - 0x01B706 06:B6F6: 62        .byte $62   ; 
- D 1 - I - 0x01B707 06:B6F7: 6A        .byte $6A   ; 
- D 1 - I - 0x01B708 06:B6F8: 07        .byte $07   ; 
- D 1 - I - 0x01B709 06:B6F9: 4D        .byte $4D   ; 



_off016_round_1_3_B6FA_1B8:
- D 1 - I - 0x01B70A 06:B6FA: 87        .byte $87   ; 
- D 1 - I - 0x01B70B 06:B6FB: 08        .byte $08   ; 
- D 1 - I - 0x01B70C 06:B6FC: 89        .byte $89   ; 
- D 1 - I - 0x01B70D 06:B6FD: 61        .byte $61   ; 
- D 1 - I - 0x01B70E 06:B6FE: 88        .byte $88   ; 
- D 1 - I - 0x01B70F 06:B6FF: 63        .byte $63   ; 
- D 1 - I - 0x01B710 06:B700: 6B        .byte $6B   ; 
- D 1 - I - 0x01B711 06:B701: 07        .byte $07   ; 
- D 1 - I - 0x01B712 06:B702: 4C        .byte $4C   ; 



_off016_round_1_3_B703_1BA:
- D 1 - I - 0x01B713 06:B703: 87        .byte $87   ; 
- D 1 - I - 0x01B714 06:B704: 09        .byte $09   ; 
- D 1 - I - 0x01B715 06:B705: A0        .byte $A0   ; 
- D 1 - I - 0x01B716 06:B706: 30        .byte $30   ; 
- D 1 - I - 0x01B717 06:B707: 07        .byte $07   ; 
- D 1 - I - 0x01B718 06:B708: 4D        .byte $4D   ; 



_off016_round_1_3_B709_1BC:
_off016_round_1_3_B709_1DC:
- D 1 - I - 0x01B719 06:B709: CF        .byte $CF   ; 
- D 1 - I - 0x01B71A 06:B70A: 78        .byte $78   ; 



_off016_round_1_3_B70B_1BE:
_off016_round_1_3_B70B_1DE:
- D 1 - I - 0x01B71B 06:B70B: D0        .byte $D0   ; 



_off016_round_1_3_B70C_1C0:
- D 1 - I - 0x01B71C 06:B70C: D1        .byte $D1   ; 
- D 1 - I - 0x01B71D 06:B70D: 78        .byte $78   ; 



_off016_round_1_3_B70E_1C4:
- D 1 - I - 0x01B71E 06:B70E: 8A        .byte $8A   ; 
- D 1 - I - 0x01B71F 06:B70F: 62        .byte $62   ; 
- D 1 - I - 0x01B720 06:B710: 6A        .byte $6A   ; 
- D 1 - I - 0x01B721 06:B711: 00        .byte $00   ; 
- D 1 - I - 0x01B722 06:B712: 31        .byte $31   ; 
- D 1 - I - 0x01B723 06:B713: 07        .byte $07   ; 
- D 1 - I - 0x01B724 06:B714: 4C        .byte $4C   ; 



_off016_round_1_3_B715_1C6:
- D 1 - I - 0x01B725 06:B715: 96        .byte $96   ; 
- D 1 - I - 0x01B726 06:B716: 08        .byte $08   ; 
- D 1 - I - 0x01B727 06:B717: 90        .byte $90   ; 
- D 1 - I - 0x01B728 06:B718: 63        .byte $63   ; 
- D 1 - I - 0x01B729 06:B719: 6B        .byte $6B   ; 
- D 1 - I - 0x01B72A 06:B71A: 00        .byte $00   ; 
- D 1 - I - 0x01B72B 06:B71B: 30        .byte $30   ; 
- D 1 - I - 0x01B72C 06:B71C: 07        .byte $07   ; 
- D 1 - I - 0x01B72D 06:B71D: 4D        .byte $4D   ; 



_off016_round_1_3_B71E_1C8:
- D 1 - I - 0x01B72E 06:B71E: 96        .byte $96   ; 
- D 1 - I - 0x01B72F 06:B71F: 09        .byte $09   ; 
- D 1 - I - 0x01B730 06:B720: A1        .byte $A1   ; 
- D 1 - I - 0x01B731 06:B721: 31        .byte $31   ; 
- D 1 - I - 0x01B732 06:B722: 07        .byte $07   ; 
- D 1 - I - 0x01B733 06:B723: 4C        .byte $4C   ; 



_off016_round_1_3_B724_1CA:
- D 1 - I - 0x01B734 06:B724: 96        .byte $96   ; 
- D 1 - I - 0x01B735 06:B725: 0A        .byte $0A   ; 
- D 1 - I - 0x01B736 06:B726: 98        .byte $98   ; 
- D 1 - I - 0x01B737 06:B727: 07        .byte $07   ; 
- D 1 - I - 0x01B738 06:B728: 4D        .byte $4D   ; 



_off016_round_1_3_B729_1CC:
- D 1 - I - 0x01B739 06:B729: A3        .byte $A3   ; 
- D 1 - I - 0x01B73A 06:B72A: 60        .byte $60   ; 
- D 1 - I - 0x01B73B 06:B72B: 68        .byte $68   ; 
- D 1 - I - 0x01B73C 06:B72C: 93        .byte $93   ; 
- D 1 - I - 0x01B73D 06:B72D: 0C        .byte $0C   ; 
- D 1 - I - 0x01B73E 06:B72E: 4C        .byte $4C   ; 



_off016_round_1_3_B72F_1CE:
- D 1 - I - 0x01B73F 06:B72F: A3        .byte $A3   ; 
- D 1 - I - 0x01B740 06:B730: 61        .byte $61   ; 
- D 1 - I - 0x01B741 06:B731: 88        .byte $88   ; 
- D 1 - I - 0x01B742 06:B732: 7E        .byte $7E   ; 
- D 1 - I - 0x01B743 06:B733: 89        .byte $89   ; 
- D 1 - I - 0x01B744 06:B734: 30        .byte $30   ; 
- D 1 - I - 0x01B745 06:B735: 07        .byte $07   ; 
- D 1 - I - 0x01B746 06:B736: 4D        .byte $4D   ; 



_off016_round_1_3_B737_1D0:
- D 1 - I - 0x01B747 06:B737: 81        .byte $81   ; 
- D 1 - I - 0x01B748 06:B738: 7F        .byte $7F   ; 
- D 1 - I - 0x01B749 06:B739: 88        .byte $88   ; 
- D 1 - I - 0x01B74A 06:B73A: 30        .byte $30   ; 
- D 1 - I - 0x01B74B 06:B73B: 03        .byte $03   ; 
- D 1 - I - 0x01B74C 06:B73C: 07        .byte $07   ; 
- D 1 - I - 0x01B74D 06:B73D: 4C        .byte $4C   ; 



_off016_round_1_3_B73E_1D6:
- D 1 - I - 0x01B74E 06:B73E: 9E        .byte $9E   ; 
- D 1 - I - 0x01B74F 06:B73F: 30        .byte $30   ; 
- D 1 - I - 0x01B750 06:B740: 03        .byte $03   ; 
- D 1 - I - 0x01B751 06:B741: 3F        .byte $3F   ; 
- D 1 - I - 0x01B752 06:B742: 07        .byte $07   ; 
- D 1 - I - 0x01B753 06:B743: 4D        .byte $4D   ; 



_off016_round_1_3_B744_1D8:
- D 1 - I - 0x01B754 06:B744: 9E        .byte $9E   ; 
- D 1 - I - 0x01B755 06:B745: 31        .byte $31   ; 
- D 1 - I - 0x01B756 06:B746: 38        .byte $38   ; 
- D 1 - I - 0x01B757 06:B747: 03        .byte $03   ; 
- D 1 - I - 0x01B758 06:B748: 07        .byte $07   ; 
- D 1 - I - 0x01B759 06:B749: 4C        .byte $4C   ; 



_off016_round_1_3_B74A_1DA:
- D 1 - I - 0x01B75A 06:B74A: A4        .byte $A4   ; 
- D 1 - I - 0x01B75B 06:B74B: 31        .byte $31   ; 
- D 1 - I - 0x01B75C 06:B74C: 03        .byte $03   ; 
- D 1 - I - 0x01B75D 06:B74D: 07        .byte $07   ; 
- D 1 - I - 0x01B75E 06:B74E: 4D        .byte $4D   ; 



_off016_round_1_3_B74F_1E4:
- D 1 - I - 0x01B75F 06:B74F: A4        .byte $A4   ; 
- D 1 - I - 0x01B760 06:B750: 62        .byte $62   ; 
- D 1 - I - 0x01B761 06:B751: 6A        .byte $6A   ; 
- D 1 - I - 0x01B762 06:B752: 07        .byte $07   ; 
- D 1 - I - 0x01B763 06:B753: 4C        .byte $4C   ; 



_off016_round_1_3_B754_1E6:
- D 1 - I - 0x01B764 06:B754: A4        .byte $A4   ; 
- D 1 - I - 0x01B765 06:B755: 63        .byte $63   ; 
- D 1 - I - 0x01B766 06:B756: 6B        .byte $6B   ; 
- D 1 - I - 0x01B767 06:B757: 07        .byte $07   ; 
- D 1 - I - 0x01B768 06:B758: 4D        .byte $4D   ; 



_off016_round_1_3_B759_1E8:
- D 1 - I - 0x01B769 06:B759: 87        .byte $87   ; 
- D 1 - I - 0x01B76A 06:B75A: 08        .byte $08   ; 
- D 1 - I - 0x01B76B 06:B75B: A0        .byte $A0   ; 
- D 1 - I - 0x01B76C 06:B75C: 30        .byte $30   ; 
- D 1 - I - 0x01B76D 06:B75D: 07        .byte $07   ; 
- D 1 - I - 0x01B76E 06:B75E: 4C        .byte $4C   ; 



_off016_round_1_3_B75F_1EA:
- D 1 - I - 0x01B76F 06:B75F: 87        .byte $87   ; 
- D 1 - I - 0x01B770 06:B760: 09        .byte $09   ; 
- D 1 - I - 0x01B771 06:B761: 8C        .byte $8C   ; 
- D 1 - I - 0x01B772 06:B762: 0D        .byte $0D   ; 
- D 1 - I - 0x01B773 06:B763: 88        .byte $88   ; 
- D 1 - I - 0x01B774 06:B764: 31        .byte $31   ; 
- D 1 - I - 0x01B775 06:B765: 07        .byte $07   ; 
- D 1 - I - 0x01B776 06:B766: 4D        .byte $4D   ; 



_off016_round_1_3_B767_1EC:
- D 1 - I - 0x01B777 06:B767: 87        .byte $87   ; 
- D 1 - I - 0x01B778 06:B768: 0A        .byte $0A   ; 
- D 1 - I - 0x01B779 06:B769: 8C        .byte $8C   ; 
- D 1 - I - 0x01B77A 06:B76A: 0E        .byte $0E   ; 
- D 1 - I - 0x01B77B 06:B76B: 88        .byte $88   ; 
- D 1 - I - 0x01B77C 06:B76C: 30        .byte $30   ; 
- D 1 - I - 0x01B77D 06:B76D: 07        .byte $07   ; 
- D 1 - I - 0x01B77E 06:B76E: 4C        .byte $4C   ; 



_off016_round_1_3_B76F_1F0:
- D 1 - I - 0x01B77F 06:B76F: 8A        .byte $8A   ; 
- D 1 - I - 0x01B780 06:B770: 0D        .byte $0D   ; 
- D 1 - I - 0x01B781 06:B771: 54        .byte $54   ; 
- D 1 - I - 0x01B782 06:B772: 31        .byte $31   ; 
- D 1 - I - 0x01B783 06:B773: 38        .byte $38   ; 
- D 1 - I - 0x01B784 06:B774: 07        .byte $07   ; 
- D 1 - I - 0x01B785 06:B775: 4C        .byte $4C   ; 



_off016_round_1_3_B776_1F2:
- D 1 - I - 0x01B786 06:B776: 8A        .byte $8A   ; 
- D 1 - I - 0x01B787 06:B777: 0E        .byte $0E   ; 
- D 1 - I - 0x01B788 06:B778: 55        .byte $55   ; 
- D 1 - I - 0x01B789 06:B779: 00        .byte $00   ; 
- D 1 - I - 0x01B78A 06:B77A: 31        .byte $31   ; 
- D 1 - I - 0x01B78B 06:B77B: 07        .byte $07   ; 
- D 1 - I - 0x01B78C 06:B77C: 4D        .byte $4D   ; 



_off016_round_1_3_B77D_1F4:
- D 1 - I - 0x01B78D 06:B77D: 9E        .byte $9E   ; 
- D 1 - I - 0x01B78E 06:B77E: 6F        .byte $6F   ; 
- D 1 - I - 0x01B78F 06:B77F: 00        .byte $00   ; 
- D 1 - I - 0x01B790 06:B780: 30        .byte $30   ; 
- D 1 - I - 0x01B791 06:B781: 07        .byte $07   ; 
- D 1 - I - 0x01B792 06:B782: 4C        .byte $4C   ; 



_off016_round_1_3_B783_1F6:
- D 1 - I - 0x01B793 06:B783: 9E        .byte $9E   ; 
- D 1 - I - 0x01B794 06:B784: 4F        .byte $4F   ; 
- D 1 - I - 0x01B795 06:B785: 00        .byte $00   ; 
- D 1 - I - 0x01B796 06:B786: 31        .byte $31   ; 
- D 1 - I - 0x01B797 06:B787: 07        .byte $07   ; 
- D 1 - I - 0x01B798 06:B788: 4D        .byte $4D   ; 



_off011_0x01B8E4_00:
_off011_0x01B8E4_01:
_off011_0x01B8E4_02:
- - - - - - 0x01B799 06:B789: 18        .byte $18   ; 
- - - - - - 0x01B79A 06:B78A: 00        .byte $00   ; 
- D 1 - I - 0x01B79B 06:B78B: 11        .byte $11   ; 
- D 1 - I - 0x01B79C 06:B78C: 00        .byte $00   ; 
- D 1 - I - 0x01B79D 06:B78D: 02        .byte $02   ; 
- D 1 - I - 0x01B79E 06:B78E: 03        .byte $03   ; 
- D 1 - I - 0x01B79F 06:B78F: 02        .byte $02   ; 
- D 1 - I - 0x01B7A0 06:B790: 78        .byte $78   ; 
- D 1 - I - 0x01B7A1 06:B791: 10        .byte $10   ; 
- D 1 - I - 0x01B7A2 06:B792: 00        .byte $00   ; 
- D 1 - I - 0x01B7A3 06:B793: 03        .byte $03   ; 
- D 1 - I - 0x01B7A4 06:B794: 03        .byte $03   ; 
- D 1 - I - 0x01B7A5 06:B795: 02        .byte $02   ; 
- D 1 - I - 0x01B7A6 06:B796: 79        .byte $79   ; 
- D 1 - I - 0x01B7A7 06:B797: 0D        .byte $0D   ; 
- D 1 - I - 0x01B7A8 06:B798: 00        .byte $00   ; 
- D 1 - I - 0x01B7A9 06:B799: 02        .byte $02   ; 
- D 1 - I - 0x01B7AA 06:B79A: 00        .byte $00   ; 
- D 1 - I - 0x01B7AB 06:B79B: 03        .byte $03   ; 
- D 1 - I - 0x01B7AC 06:B79C: 00        .byte $00   ; 
- D 1 - I - 0x01B7AD 06:B79D: 12        .byte $12   ; 
- D 1 - I - 0x01B7AE 06:B79E: 00        .byte $00   ; 
- D 1 - I - 0x01B7AF 06:B79F: 0B        .byte $0B   ; 
- D 1 - I - 0x01B7B0 06:B7A0: 00        .byte $00   ; 
- D 1 - I - 0x01B7B1 06:B7A1: 04        .byte $04   ; 
- D 1 - I - 0x01B7B2 06:B7A2: 00        .byte $00   ; 
- D 1 - I - 0x01B7B3 06:B7A3: 02        .byte $02   ; 
- D 1 - I - 0x01B7B4 06:B7A4: 7C        .byte $7C   ; 
- D 1 - I - 0x01B7B5 06:B7A5: 03        .byte $03   ; 
- D 1 - I - 0x01B7B6 06:B7A6: 78        .byte $78   ; 
- D 1 - I - 0x01B7B7 06:B7A7: 0A        .byte $0A   ; 
- D 1 - I - 0x01B7B8 06:B7A8: 00        .byte $00   ; 
- D 1 - I - 0x01B7B9 06:B7A9: 05        .byte $05   ; 
- D 1 - I - 0x01B7BA 06:B7AA: 00        .byte $00   ; 
- D 1 - I - 0x01B7BB 06:B7AB: 04        .byte $04   ; 
- D 1 - I - 0x01B7BC 06:B7AC: 79        .byte $79   ; 
- D 1 - I - 0x01B7BD 06:B7AD: 04        .byte $04   ; 
- D 1 - I - 0x01B7BE 06:B7AE: 78        .byte $78   ; 
- D 1 - I - 0x01B7BF 06:B7AF: 06        .byte $06   ; 
- D 1 - I - 0x01B7C0 06:B7B0: 00        .byte $00   ; 
- D 1 - I - 0x01B7C1 06:B7B1: 05        .byte $05   ; 
- D 1 - I - 0x01B7C2 06:B7B2: 78        .byte $78   ; 
- D 1 - I - 0x01B7C3 06:B7B3: 05        .byte $05   ; 
- D 1 - I - 0x01B7C4 06:B7B4: 79        .byte $79   ; 
- D 1 - I - 0x01B7C5 06:B7B5: 0C        .byte $0C   ; 
- D 1 - I - 0x01B7C6 06:B7B6: 00        .byte $00   ; 
- D 1 - I - 0x01B7C7 06:B7B7: 02        .byte $02   ; 
- D 1 - I - 0x01B7C8 06:B7B8: 7D        .byte $7D   ; 
- D 1 - I - 0x01B7C9 06:B7B9: 09        .byte $09   ; 
- D 1 - I - 0x01B7CA 06:B7BA: 00        .byte $00   ; 
- D 1 - I - 0x01B7CB 06:B7BB: 03        .byte $03   ; 
- D 1 - I - 0x01B7CC 06:B7BC: 79        .byte $79   ; 
- D 1 - I - 0x01B7CD 06:B7BD: 03        .byte $03   ; 
- D 1 - I - 0x01B7CE 06:B7BE: 7C        .byte $7C   ; 
- D 1 - I - 0x01B7CF 06:B7BF: 06        .byte $06   ; 
- D 1 - I - 0x01B7D0 06:B7C0: 79        .byte $79   ; 
- D 1 - I - 0x01B7D1 06:B7C1: 06        .byte $06   ; 
- D 1 - I - 0x01B7D2 06:B7C2: 78        .byte $78   ; 
- D 1 - I - 0x01B7D3 06:B7C3: 0F        .byte $0F   ; 
- D 1 - I - 0x01B7D4 06:B7C4: 00        .byte $00   ; 
- D 1 - I - 0x01B7D5 06:B7C5: 13        .byte $13   ; 
- D 1 - I - 0x01B7D6 06:B7C6: 00        .byte $00   ; 
- D 1 - I - 0x01B7D7 06:B7C7: 04        .byte $04   ; 
- D 1 - I - 0x01B7D8 06:B7C8: 7D        .byte $7D   ; 
- D 1 - I - 0x01B7D9 06:B7C9: 07        .byte $07   ; 
- D 1 - I - 0x01B7DA 06:B7CA: 00        .byte $00   ; 
- D 1 - I - 0x01B7DB 06:B7CB: 08        .byte $08   ; 
- D 1 - I - 0x01B7DC 06:B7CC: 00        .byte $00   ; 
- D 1 - I - 0x01B7DD 06:B7CD: 04        .byte $04   ; 
- D 1 - I - 0x01B7DE 06:B7CE: 7C        .byte $7C   ; 
- D 1 - I - 0x01B7DF 06:B7CF: 0E        .byte $0E   ; 
- D 1 - I - 0x01B7E0 06:B7D0: 00        .byte $00   ; 
- D 1 - I - 0x01B7E1 06:B7D1: 14        .byte $14   ; 
- D 1 - I - 0x01B7E2 06:B7D2: 00        .byte $00   ; 
- D 1 - I - 0x01B7E3 06:B7D3: 09        .byte $09   ; 
- D 1 - I - 0x01B7E4 06:B7D4: 7C        .byte $7C   ; 
- D 1 - I - 0x01B7E5 06:B7D5: 0D        .byte $0D   ; 
- D 1 - I - 0x01B7E6 06:B7D6: 79        .byte $79   ; 
- D 1 - I - 0x01B7E7 06:B7D7: 0D        .byte $0D   ; 
- D 1 - I - 0x01B7E8 06:B7D8: 78        .byte $78   ; 
- D 1 - I - 0x01B7E9 06:B7D9: 08        .byte $08   ; 
- D 1 - I - 0x01B7EA 06:B7DA: 7D        .byte $7D   ; 
- D 1 - I - 0x01B7EB 06:B7DB: 04        .byte $04   ; 
- D 1 - I - 0x01B7EC 06:B7DC: 03        .byte $03   ; 
- D 1 - I - 0x01B7ED 06:B7DD: 04        .byte $04   ; 
- D 1 - I - 0x01B7EE 06:B7DE: 50        .byte $50   ; 
- D 1 - I - 0x01B7EF 06:B7DF: 02        .byte $02   ; 
- D 1 - I - 0x01B7F0 06:B7E0: 43        .byte $43   ; 
- D 1 - I - 0x01B7F1 06:B7E1: 15        .byte $15   ; 
- D 1 - I - 0x01B7F2 06:B7E2: 00        .byte $00   ; 
- D 1 - I - 0x01B7F3 06:B7E3: 03        .byte $03   ; 
- D 1 - I - 0x01B7F4 06:B7E4: 7D        .byte $7D   ; 
- D 1 - I - 0x01B7F5 06:B7E5: 12        .byte $12   ; 
- D 1 - I - 0x01B7F6 06:B7E6: 05        .byte $05   ; 
- D 1 - I - 0x01B7F7 06:B7E7: 03        .byte $03   ; 
- D 1 - I - 0x01B7F8 06:B7E8: 70        .byte $70   ; 
- D 1 - I - 0x01B7F9 06:B7E9: 12        .byte $12   ; 
- D 1 - I - 0x01B7FA 06:B7EA: 0F        .byte $0F   ; 
- D 1 - I - 0x01B7FB 06:B7EB: 03        .byte $03   ; 
- D 1 - I - 0x01B7FC 06:B7EC: 01        .byte $01   ; 
- D 1 - I - 0x01B7FD 06:B7ED: 04        .byte $04   ; 
- D 1 - I - 0x01B7FE 06:B7EE: 01        .byte $01   ; 
- D 1 - I - 0x01B7FF 06:B7EF: 02        .byte $02   ; 
- D 1 - I - 0x01B800 06:B7F0: 6D        .byte $6D   ; 
- D 1 - I - 0x01B801 06:B7F1: 02        .byte $02   ; 
- D 1 - I - 0x01B802 06:B7F2: 6C        .byte $6C   ; 
- D 1 - I - 0x01B803 06:B7F3: 02        .byte $02   ; 
- D 1 - I - 0x01B804 06:B7F4: 6E        .byte $6E   ; 
- D 1 - I - 0x01B805 06:B7F5: 05        .byte $05   ; 
- D 1 - I - 0x01B806 06:B7F6: 7C        .byte $7C   ; 
- D 1 - I - 0x01B807 06:B7F7: 05        .byte $05   ; 
- D 1 - I - 0x01B808 06:B7F8: 7D        .byte $7D   ; 
- D 1 - I - 0x01B809 06:B7F9: 04        .byte $04   ; 
- D 1 - I - 0x01B80A 06:B7FA: 6D        .byte $6D   ; 
- D 1 - I - 0x01B80B 06:B7FB: 04        .byte $04   ; 
- D 1 - I - 0x01B80C 06:B7FC: 6C        .byte $6C   ; 
- D 1 - I - 0x01B80D 06:B7FD: 04        .byte $04   ; 
- D 1 - I - 0x01B80E 06:B7FE: 6E        .byte $6E   ; 
- D 1 - I - 0x01B80F 06:B7FF: 03        .byte $03   ; 
- D 1 - I - 0x01B810 06:B800: 52        .byte $52   ; 
- D 1 - I - 0x01B811 06:B801: 02        .byte $02   ; 
- D 1 - I - 0x01B812 06:B802: 52        .byte $52   ; 
- D 1 - I - 0x01B813 06:B803: 0A        .byte $0A   ; 
- D 1 - I - 0x01B814 06:B804: 7C        .byte $7C   ; 
- D 1 - I - 0x01B815 06:B805: 09        .byte $09   ; 
- D 1 - I - 0x01B816 06:B806: 79        .byte $79   ; 
- D 1 - I - 0x01B817 06:B807: 09        .byte $09   ; 
- D 1 - I - 0x01B818 06:B808: 78        .byte $78   ; 
- D 1 - I - 0x01B819 06:B809: 06        .byte $06   ; 
- D 1 - I - 0x01B81A 06:B80A: 7D        .byte $7D   ; 
- D 1 - I - 0x01B81B 06:B80B: 05        .byte $05   ; 
- D 1 - I - 0x01B81C 06:B80C: 03        .byte $03   ; 
- D 1 - I - 0x01B81D 06:B80D: 02        .byte $02   ; 
- D 1 - I - 0x01B81E 06:B80E: 01        .byte $01   ; 
- D 1 - I - 0x01B81F 06:B80F: 06        .byte $06   ; 
- D 1 - I - 0x01B820 06:B810: 7C        .byte $7C   ; 
- D 1 - I - 0x01B821 06:B811: 10        .byte $10   ; 
- D 1 - I - 0x01B822 06:B812: 05        .byte $05   ; 
- D 1 - I - 0x01B823 06:B813: 10        .byte $10   ; 
- D 1 - I - 0x01B824 06:B814: 0F        .byte $0F   ; 
- D 1 - I - 0x01B825 06:B815: 16        .byte $16   ; 
- D 1 - I - 0x01B826 06:B816: 00        .byte $00   ; 
- D 1 - I - 0x01B827 06:B817: 07        .byte $07   ; 
- D 1 - I - 0x01B828 06:B818: 79        .byte $79   ; 
- D 1 - I - 0x01B829 06:B819: 08        .byte $08   ; 
- D 1 - I - 0x01B82A 06:B81A: 78        .byte $78   ; 
- D 1 - I - 0x01B82B 06:B81B: 0A        .byte $0A   ; 
- D 1 - I - 0x01B82C 06:B81C: 78        .byte $78   ; 
- D 1 - I - 0x01B82D 06:B81D: 0B        .byte $0B   ; 
- D 1 - I - 0x01B82E 06:B81E: 79        .byte $79   ; 
- D 1 - I - 0x01B82F 06:B81F: 0C        .byte $0C   ; 
- D 1 - I - 0x01B830 06:B820: 78        .byte $78   ; 
- D 1 - I - 0x01B831 06:B821: 07        .byte $07   ; 
- D 1 - I - 0x01B832 06:B822: 78        .byte $78   ; 
- D 1 - I - 0x01B833 06:B823: 08        .byte $08   ; 
- D 1 - I - 0x01B834 06:B824: 79        .byte $79   ; 
- D 1 - I - 0x01B835 06:B825: 08        .byte $08   ; 
- D 1 - I - 0x01B836 06:B826: 7C        .byte $7C   ; 
- D 1 - I - 0x01B837 06:B827: 17        .byte $17   ; 
- D 1 - I - 0x01B838 06:B828: 7C        .byte $7C   ; 
- D 1 - I - 0x01B839 06:B829: 18        .byte $18   ; 
- D 1 - I - 0x01B83A 06:B82A: 79        .byte $79   ; 
- D 1 - I - 0x01B83B 06:B82B: 17        .byte $17   ; 
- D 1 - I - 0x01B83C 06:B82C: 7D        .byte $7D   ; 



_off013_0x01B83D_00:
_off013_0x01B83D_01:
_off013_0x01B83D_02:
- D 1 - I - 0x01B83D 06:B82D: AD        .byte $AD   ; 
- D 1 - I - 0x01B83E 06:B82E: AF        .byte $AF   ; 
- D 1 - I - 0x01B83F 06:B82F: AE        .byte $AE   ; 
- D 1 - I - 0x01B840 06:B830: AB        .byte $AB   ; 
- D 1 - I - 0x01B841 06:B831: AE        .byte $AE   ; 
- D 1 - I - 0x01B842 06:B832: AE        .byte $AE   ; 
- D 1 - I - 0x01B843 06:B833: AC        .byte $AC   ; 
- D 1 - I - 0x01B844 06:B834: B0        .byte $B0   ; 
- D 1 - I - 0x01B845 06:B835: AE        .byte $AE   ; 
- D 1 - I - 0x01B846 06:B836: AE        .byte $AE   ; 
- D 1 - I - 0x01B847 06:B837: B0        .byte $B0   ; 
- D 1 - I - 0x01B848 06:B838: B0        .byte $B0   ; 
- D 1 - I - 0x01B849 06:B839: 27        .byte $27   ; 
- D 1 - I - 0x01B84A 06:B83A: AE        .byte $AE   ; 
- D 1 - I - 0x01B84B 06:B83B: 21        .byte $21   ; 
- D 1 - I - 0x01B84C 06:B83C: 23        .byte $23   ; 
- D 1 - I - 0x01B84D 06:B83D: 25        .byte $25   ; 
- D 1 - I - 0x01B84E 06:B83E: AB        .byte $AB   ; 
- D 1 - I - 0x01B84F 06:B83F: F1        .byte $F1   ; 
- D 1 - I - 0x01B850 06:B840: F1        .byte $F1   ; 
- D 1 - I - 0x01B851 06:B841: F1        .byte $F1   ; 
- D 1 - I - 0x01B852 06:B842: F1        .byte $F1   ; 
- D 1 - I - 0x01B853 06:B843: F1        .byte $F1   ; 
- D 1 - I - 0x01B854 06:B844: F1        .byte $F1   ; 
- D 1 - I - 0x01B855 06:B845: AE        .byte $AE   ; 
- D 1 - I - 0x01B856 06:B846: F1        .byte $F1   ; 
- D 1 - I - 0x01B857 06:B847: F1        .byte $F1   ; 
- D 1 - I - 0x01B858 06:B848: 2A        .byte $2A   ; 
- D 1 - I - 0x01B859 06:B849: F1        .byte $F1   ; 
- D 1 - I - 0x01B85A 06:B84A: F1        .byte $F1   ; 
- D 1 - I - 0x01B85B 06:B84B: F1        .byte $F1   ; 
- D 1 - I - 0x01B85C 06:B84C: F1        .byte $F1   ; 
- D 1 - I - 0x01B85D 06:B84D: F1        .byte $F1   ; 
- D 1 - I - 0x01B85E 06:B84E: F1        .byte $F1   ; 
- D 1 - I - 0x01B85F 06:B84F: 2A        .byte $2A   ; 
- D 1 - I - 0x01B860 06:B850: F1        .byte $F1   ; 
- D 1 - I - 0x01B861 06:B851: F1        .byte $F1   ; 
- D 1 - I - 0x01B862 06:B852: F1        .byte $F1   ; 
- D 1 - I - 0x01B863 06:B853: F1        .byte $F1   ; 
- D 1 - I - 0x01B864 06:B854: AB        .byte $AB   ; 
- D 1 - I - 0x01B865 06:B855: F1        .byte $F1   ; 
- D 1 - I - 0x01B866 06:B856: F1        .byte $F1   ; 
- D 1 - I - 0x01B867 06:B857: F1        .byte $F1   ; 
- D 1 - I - 0x01B868 06:B858: F1        .byte $F1   ; 
- D 1 - I - 0x01B869 06:B859: AC        .byte $AC   ; 
- D 1 - I - 0x01B86A 06:B85A: AE        .byte $AE   ; 
- D 1 - I - 0x01B86B 06:B85B: B4        .byte $B4   ; 
- D 1 - I - 0x01B86C 06:B85C: 28        .byte $28   ; 
- D 1 - I - 0x01B86D 06:B85D: AA        .byte $AA   ; 
- D 1 - I - 0x01B86E 06:B85E: AE        .byte $AE   ; 
- D 1 - I - 0x01B86F 06:B85F: AF        .byte $AF   ; 
- D 1 - I - 0x01B870 06:B860: AD        .byte $AD   ; 
- D 1 - I - 0x01B871 06:B861: B2        .byte $B2   ; 
- D 1 - I - 0x01B872 06:B862: AA        .byte $AA   ; 
- D 1 - I - 0x01B873 06:B863: AE        .byte $AE   ; 
- D 1 - I - 0x01B874 06:B864: AC        .byte $AC   ; 
- D 1 - I - 0x01B875 06:B865: AB        .byte $AB   ; 
- D 1 - I - 0x01B876 06:B866: B0        .byte $B0   ; 
- D 1 - I - 0x01B877 06:B867: B0        .byte $B0   ; 
- D 1 - I - 0x01B878 06:B868: B0        .byte $B0   ; 
- D 1 - I - 0x01B879 06:B869: A6        .byte $A6   ; 
- D 1 - I - 0x01B87A 06:B86A: A6        .byte $A6   ; 
- D 1 - I - 0x01B87B 06:B86B: B0        .byte $B0   ; 
- D 1 - I - 0x01B87C 06:B86C: B0        .byte $B0   ; 
- D 1 - I - 0x01B87D 06:B86D: A8        .byte $A8   ; 
- D 1 - I - 0x01B87E 06:B86E: B0        .byte $B0   ; 
- D 1 - I - 0x01B87F 06:B86F: A9        .byte $A9   ; 
- D 1 - I - 0x01B880 06:B870: AC        .byte $AC   ; 
- D 1 - I - 0x01B881 06:B871: AA        .byte $AA   ; 
- D 1 - I - 0x01B882 06:B872: AA        .byte $AA   ; 
- D 1 - I - 0x01B883 06:B873: 73        .byte $73   ; 
- D 1 - I - 0x01B884 06:B874: F4        .byte $F4   ; 
- D 1 - I - 0x01B885 06:B875: 73        .byte $73   ; 
- D 1 - I - 0x01B886 06:B876: F4        .byte $F4   ; 
- D 1 - I - 0x01B887 06:B877: 73        .byte $73   ; 
- D 1 - I - 0x01B888 06:B878: F4        .byte $F4   ; 
- D 1 - I - 0x01B889 06:B879: 73        .byte $73   ; 
- D 1 - I - 0x01B88A 06:B87A: F4        .byte $F4   ; 
- D 1 - I - 0x01B88B 06:B87B: 73        .byte $73   ; 
- D 1 - I - 0x01B88C 06:B87C: F4        .byte $F4   ; 
- D 1 - I - 0x01B88D 06:B87D: 2E        .byte $2E   ; 
- D 1 - I - 0x01B88E 06:B87E: 73        .byte $73   ; 
- D 1 - I - 0x01B88F 06:B87F: F4        .byte $F4   ; 
- D 1 - I - 0x01B890 06:B880: 73        .byte $73   ; 
- D 1 - I - 0x01B891 06:B881: F4        .byte $F4   ; 
- D 1 - I - 0x01B892 06:B882: 73        .byte $73   ; 
- D 1 - I - 0x01B893 06:B883: F4        .byte $F4   ; 
- D 1 - I - 0x01B894 06:B884: 73        .byte $73   ; 
- D 1 - I - 0x01B895 06:B885: F4        .byte $F4   ; 
- D 1 - I - 0x01B896 06:B886: 73        .byte $73   ; 
- D 1 - I - 0x01B897 06:B887: F4        .byte $F4   ; 
- D 1 - I - 0x01B898 06:B888: 2D        .byte $2D   ; 
- D 1 - I - 0x01B899 06:B889: 73        .byte $73   ; 
- D 1 - I - 0x01B89A 06:B88A: F4        .byte $F4   ; 
- D 1 - I - 0x01B89B 06:B88B: 73        .byte $73   ; 
- D 1 - I - 0x01B89C 06:B88C: F4        .byte $F4   ; 
- D 1 - I - 0x01B89D 06:B88D: 73        .byte $73   ; 
- D 1 - I - 0x01B89E 06:B88E: F4        .byte $F4   ; 
- D 1 - I - 0x01B89F 06:B88F: 2E        .byte $2E   ; 
- D 1 - I - 0x01B8A0 06:B890: 73        .byte $73   ; 
- D 1 - I - 0x01B8A1 06:B891: F4        .byte $F4   ; 
- D 1 - I - 0x01B8A2 06:B892: 73        .byte $73   ; 
- D 1 - I - 0x01B8A3 06:B893: F4        .byte $F4   ; 
- D 1 - I - 0x01B8A4 06:B894: 73        .byte $73   ; 
- D 1 - I - 0x01B8A5 06:B895: F4        .byte $F4   ; 
- D 1 - I - 0x01B8A6 06:B896: A8        .byte $A8   ; 
- D 1 - I - 0x01B8A7 06:B897: AE        .byte $AE   ; 
- D 1 - I - 0x01B8A8 06:B898: AF        .byte $AF   ; 
- D 1 - I - 0x01B8A9 06:B899: AD        .byte $AD   ; 
- D 1 - I - 0x01B8AA 06:B89A: AB        .byte $AB   ; 
- D 1 - I - 0x01B8AB 06:B89B: AA        .byte $AA   ; 
- D 1 - I - 0x01B8AC 06:B89C: AF        .byte $AF   ; 
- D 1 - I - 0x01B8AD 06:B89D: AC        .byte $AC   ; 
- D 1 - I - 0x01B8AE 06:B89E: AF        .byte $AF   ; 
- D 1 - I - 0x01B8AF 06:B89F: AF        .byte $AF   ; 
- D 1 - I - 0x01B8B0 06:B8A0: A8        .byte $A8   ; 
- D 1 - I - 0x01B8B1 06:B8A1: B0        .byte $B0   ; 
- D 1 - I - 0x01B8B2 06:B8A2: AA        .byte $AA   ; 
- D 1 - I - 0x01B8B3 06:B8A3: 28        .byte $28   ; 
- D 1 - I - 0x01B8B4 06:B8A4: AA        .byte $AA   ; 
- D 1 - I - 0x01B8B5 06:B8A5: B0        .byte $B0   ; 
- D 1 - I - 0x01B8B6 06:B8A6: B1        .byte $B1   ; 
- D 1 - I - 0x01B8B7 06:B8A7: A4        .byte $A4   ; 
- D 1 - I - 0x01B8B8 06:B8A8: 23        .byte $23   ; 
- D 1 - I - 0x01B8B9 06:B8A9: A5        .byte $A5   ; 
- D 1 - I - 0x01B8BA 06:B8AA: A4        .byte $A4   ; 
- D 1 - I - 0x01B8BB 06:B8AB: B1        .byte $B1   ; 
- D 1 - I - 0x01B8BC 06:B8AC: B0        .byte $B0   ; 
- D 1 - I - 0x01B8BD 06:B8AD: A9        .byte $A9   ; 
- D 1 - I - 0x01B8BE 06:B8AE: E9        .byte $E9   ; 
- D 1 - I - 0x01B8BF 06:B8AF: EA        .byte $EA   ; 
- D 1 - I - 0x01B8C0 06:B8B0: EB        .byte $EB   ; 
- D 1 - I - 0x01B8C1 06:B8B1: EC        .byte $EC   ; 
- D 1 - I - 0x01B8C2 06:B8B2: ED        .byte $ED   ; 
- D 1 - I - 0x01B8C3 06:B8B3: EE        .byte $EE   ; 
- D 1 - I - 0x01B8C4 06:B8B4: EC        .byte $EC   ; 
- D 1 - I - 0x01B8C5 06:B8B5: ED        .byte $ED   ; 
- D 1 - I - 0x01B8C6 06:B8B6: EE        .byte $EE   ; 
- D 1 - I - 0x01B8C7 06:B8B7: 2D        .byte $2D   ; 
- D 1 - I - 0x01B8C8 06:B8B8: EF        .byte $EF   ; 
- D 1 - I - 0x01B8C9 06:B8B9: F0        .byte $F0   ; 
- D 1 - I - 0x01B8CA 06:B8BA: EF        .byte $EF   ; 
- D 1 - I - 0x01B8CB 06:B8BB: F0        .byte $F0   ; 
- D 1 - I - 0x01B8CC 06:B8BC: F1        .byte $F1   ; 
- D 1 - I - 0x01B8CD 06:B8BD: 30        .byte $30   ; 
- D 1 - I - 0x01B8CE 06:B8BE: F2        .byte $F2   ; 
- D 1 - I - 0x01B8CF 06:B8BF: F3        .byte $F3   ; 
- D 1 - I - 0x01B8D0 06:B8C0: EF        .byte $EF   ; 
- D 1 - I - 0x01B8D1 06:B8C1: F0        .byte $F0   ; 
- D 1 - I - 0x01B8D2 06:B8C2: F1        .byte $F1   ; 
- D 1 - I - 0x01B8D3 06:B8C3: 30        .byte $30   ; 
- D 1 - I - 0x01B8D4 06:B8C4: F2        .byte $F2   ; 
- D 1 - I - 0x01B8D5 06:B8C5: F3        .byte $F3   ; 
- D 1 - I - 0x01B8D6 06:B8C6: AA        .byte $AA   ; 
- D 1 - I - 0x01B8D7 06:B8C7: A4        .byte $A4   ; 
- D 1 - I - 0x01B8D8 06:B8C8: A3        .byte $A3   ; 
- D 1 - I - 0x01B8D9 06:B8C9: A4        .byte $A4   ; 
- D 1 - I - 0x01B8DA 06:B8CA: B0        .byte $B0   ; 
- D 1 - I - 0x01B8DB 06:B8CB: B4        .byte $B4   ; 
- D 1 - I - 0x01B8DC 06:B8CC: AB        .byte $AB   ; 
- D 1 - I - 0x01B8DD 06:B8CD: AE        .byte $AE   ; 
- D 1 - I - 0x01B8DE 06:B8CE: B0        .byte $B0   ; 
- D 1 - I - 0x01B8DF 06:B8CF: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8E0 06:B8D0: B2        .byte $B2   ; 
- D 1 - I - 0x01B8E1 06:B8D1: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8E2 06:B8D2: B2        .byte $B2   ; 
- D 1 - I - 0x01B8E3 06:B8D3: B2        .byte $B2   ; 



_off014_0x01B8E4_00:
_off014_0x01B8E4_01:
_off014_0x01B8E4_02:
- D 1 - I - 0x01B8E4 06:B8D4: 76        .byte $76   ; !!! первые 8 байтов отдельные?
- D 1 - I - 0x01B8E5 06:B8D5: 7A        .byte $7A   ; 
- D 1 - I - 0x01B8E6 06:B8D6: FF        .byte $FF   ; 
- D 1 - I - 0x01B8E7 06:B8D7: FF        .byte $FF   ; 
- D 1 - I - 0x01B8E8 06:B8D8: FF        .byte $FF   ; 
- D 1 - I - 0x01B8E9 06:B8D9: FF        .byte $FF   ; 
- D 1 - I - 0x01B8EA 06:B8DA: FF        .byte $FF   ; 
- D 1 - I - 0x01B8EB 06:B8DB: FF        .byte $FF   ; 
- D 1 - I - 0x01B8EC 06:B8DC: 03        .byte $03   ; 
- D 1 - I - 0x01B8ED 06:B8DD: 27        .byte $27   ; 
- D 1 - I - 0x01B8EE 06:B8DE: FF        .byte $FF   ; 
- D 1 - I - 0x01B8EF 06:B8DF: FF        .byte $FF   ; 
- D 1 - I - 0x01B8F0 06:B8E0: FF        .byte $FF   ; 
- D 1 - I - 0x01B8F1 06:B8E1: FF        .byte $FF   ; 
- D 1 - I - 0x01B8F2 06:B8E2: FF        .byte $FF   ; 
- D 1 - I - 0x01B8F3 06:B8E3: FF        .byte $FF   ; 
- D 1 - I - 0x01B8F4 06:B8E4: 08        .byte $08   ; 
- D 1 - I - 0x01B8F5 06:B8E5: 08        .byte $08   ; 
- D 1 - I - 0x01B8F6 06:B8E6: 08        .byte $08   ; 
- D 1 - I - 0x01B8F7 06:B8E7: 08        .byte $08   ; 
- D 1 - I - 0x01B8F8 06:B8E8: 08        .byte $08   ; 
- D 1 - I - 0x01B8F9 06:B8E9: 08        .byte $08   ; 
- D 1 - I - 0x01B8FA 06:B8EA: 08        .byte $08   ; 
- D 1 - I - 0x01B8FB 06:B8EB: 08        .byte $08   ; 
- D 1 - I - 0x01B8FC 06:B8EC: 08        .byte $08   ; 
- D 1 - I - 0x01B8FD 06:B8ED: 08        .byte $08   ; 
- D 1 - I - 0x01B8FE 06:B8EE: 08        .byte $08   ; 
- D 1 - I - 0x01B8FF 06:B8EF: 08        .byte $08   ; 
- D 1 - I - 0x01B900 06:B8F0: 08        .byte $08   ; 
- D 1 - I - 0x01B901 06:B8F1: 08        .byte $08   ; 
- D 1 - I - 0x01B902 06:B8F2: 08        .byte $08   ; 
- D 1 - I - 0x01B903 06:B8F3: 08        .byte $08   ; 
- D 1 - I - 0x01B904 06:B8F4: 08        .byte $08   ; 
- D 1 - I - 0x01B905 06:B8F5: 08        .byte $08   ; 
- D 1 - I - 0x01B906 06:B8F6: 08        .byte $08   ; 
- D 1 - I - 0x01B907 06:B8F7: 08        .byte $08   ; 
- D 1 - I - 0x01B908 06:B8F8: 08        .byte $08   ; 
- D 1 - I - 0x01B909 06:B8F9: 08        .byte $08   ; 
- D 1 - I - 0x01B90A 06:B8FA: 08        .byte $08   ; 
- D 1 - I - 0x01B90B 06:B8FB: 08        .byte $08   ; 
- D 1 - I - 0x01B90C 06:B8FC: 08        .byte $08   ; 
- D 1 - I - 0x01B90D 06:B8FD: 08        .byte $08   ; 
- D 1 - I - 0x01B90E 06:B8FE: 08        .byte $08   ; 
- D 1 - I - 0x01B90F 06:B8FF: 08        .byte $08   ; 
- D 1 - I - 0x01B910 06:B900: 08        .byte $08   ; 
- D 1 - I - 0x01B911 06:B901: 08        .byte $08   ; 
- D 1 - I - 0x01B912 06:B902: 08        .byte $08   ; 
- D 1 - I - 0x01B913 06:B903: 08        .byte $08   ; 
- D 1 - I - 0x01B914 06:B904: 08        .byte $08   ; 
- D 1 - I - 0x01B915 06:B905: 08        .byte $08   ; 
- D 1 - I - 0x01B916 06:B906: 08        .byte $08   ; 
- D 1 - I - 0x01B917 06:B907: 08        .byte $08   ; 
- D 1 - I - 0x01B918 06:B908: 08        .byte $08   ; 
- D 1 - I - 0x01B919 06:B909: 08        .byte $08   ; 
- D 1 - I - 0x01B91A 06:B90A: 08        .byte $08   ; 
- D 1 - I - 0x01B91B 06:B90B: 08        .byte $08   ; 
- D 1 - I - 0x01B91C 06:B90C: 08        .byte $08   ; 
- D 1 - I - 0x01B91D 06:B90D: 08        .byte $08   ; 
- D 1 - I - 0x01B91E 06:B90E: 08        .byte $08   ; 
- D 1 - I - 0x01B91F 06:B90F: 08        .byte $08   ; 
- D 1 - I - 0x01B920 06:B910: 08        .byte $08   ; 
- D 1 - I - 0x01B921 06:B911: 08        .byte $08   ; 
- D 1 - I - 0x01B922 06:B912: 08        .byte $08   ; 
- D 1 - I - 0x01B923 06:B913: 08        .byte $08   ; 
- D 1 - I - 0x01B924 06:B914: 08        .byte $08   ; 
- D 1 - I - 0x01B925 06:B915: 08        .byte $08   ; 
- D 1 - I - 0x01B926 06:B916: 08        .byte $08   ; 
- D 1 - I - 0x01B927 06:B917: 08        .byte $08   ; 
- D 1 - I - 0x01B928 06:B918: 08        .byte $08   ; 
- D 1 - I - 0x01B929 06:B919: 08        .byte $08   ; 
- D 1 - I - 0x01B92A 06:B91A: 09        .byte $09   ; 
- D 1 - I - 0x01B92B 06:B91B: 09        .byte $09   ; 
- D 1 - I - 0x01B92C 06:B91C: 09        .byte $09   ; 
- D 1 - I - 0x01B92D 06:B91D: 09        .byte $09   ; 
- D 1 - I - 0x01B92E 06:B91E: 09        .byte $09   ; 
- D 1 - I - 0x01B92F 06:B91F: 09        .byte $09   ; 
- D 1 - I - 0x01B930 06:B920: 09        .byte $09   ; 
- D 1 - I - 0x01B931 06:B921: 09        .byte $09   ; 
- D 1 - I - 0x01B932 06:B922: 09        .byte $09   ; 
- D 1 - I - 0x01B933 06:B923: 09        .byte $09   ; 
- D 1 - I - 0x01B934 06:B924: 09        .byte $09   ; 
- D 1 - I - 0x01B935 06:B925: 09        .byte $09   ; 
- D 1 - I - 0x01B936 06:B926: 09        .byte $09   ; 
- D 1 - I - 0x01B937 06:B927: 09        .byte $09   ; 
- D 1 - I - 0x01B938 06:B928: 09        .byte $09   ; 
- D 1 - I - 0x01B939 06:B929: 09        .byte $09   ; 
- D 1 - I - 0x01B93A 06:B92A: 09        .byte $09   ; 
- D 1 - I - 0x01B93B 06:B92B: 09        .byte $09   ; 
- D 1 - I - 0x01B93C 06:B92C: 09        .byte $09   ; 
- D 1 - I - 0x01B93D 06:B92D: 09        .byte $09   ; 
- D 1 - I - 0x01B93E 06:B92E: 09        .byte $09   ; 



_off010_0x01B93F_00:
_off010_0x01B93F_01:
_off010_0x01B93F_02:
- D 1 - I - 0x01B93F 06:B92F: ED A8     .word _off016_round_1_1_A8ED_000
- D 1 - I - 0x01B941 06:B931: F3 A8     .word _off016_round_1_1_A8F3_002
- D 1 - I - 0x01B943 06:B933: F9 A8     .word _off016_round_1_1_A8F9_004
- D 1 - I - 0x01B945 06:B935: 00 A9     .word _off016_round_1_1_A900_006
- D 1 - I - 0x01B947 06:B937: 0A A9     .word _off016_round_1_1_A90A_008
- D 1 - I - 0x01B949 06:B939: 12 A9     .word _off016_round_1_1_A912_00A
- D 1 - I - 0x01B94B 06:B93B: 19 A9     .word _off016_round_1_1_A919_00C
- D 1 - I - 0x01B94D 06:B93D: 1F A9     .word _off016_round_1_1_A91F_00E
- D 1 - I - 0x01B94F 06:B93F: 25 A9     .word _off016_round_1_1_A925_010
- D 1 - I - 0x01B951 06:B941: 2F A9     .word _off016_round_1_1_A92F_012
- D 1 - I - 0x01B953 06:B943: 3A 29     .word _off016_round_1_1_A93A_014 - $8000
- D 1 - I - 0x01B955 06:B945: 44 A9     .word _off016_round_1_1_A944_016
- D 1 - I - 0x01B957 06:B947: ED A8     .word _off016_round_1_1_A8ED_018
- D 1 - I - 0x01B959 06:B949: 4C A9     .word _off016_round_1_1_A94C_01A
- D 1 - I - 0x01B95B 06:B94B: 19 A9     .word _off016_round_1_1_A919_01C
- D 1 - I - 0x01B95D 06:B94D: 53 A9     .word _off016_round_1_1_A953_01E
- D 1 - I - 0x01B95F 06:B94F: 59 A9     .word _off016_round_1_1_A959_020
- D 1 - I - 0x01B961 06:B951: 61 A9     .word _off016_round_1_1_A961_022
- D 1 - I - 0x01B963 06:B953: 6A A9     .word _off016_round_1_1_A96A_024
- D 1 - I - 0x01B965 06:B955: 73 E9     .word _off016_round_1_1_A973_026 + $8000 - $4000
- D 1 - I - 0x01B967 06:B957: 7B A9     .word _off016_round_1_1_A97B_028
- D 1 - I - 0x01B969 06:B959: 81 A9     .word _off016_round_1_1_A981_02A
- D 1 - I - 0x01B96B 06:B95B: 87 29     .word _off016_round_1_1_A987_02C - $8000
- D 1 - I - 0x01B96D 06:B95D: 8D A9     .word _off016_round_1_1_A98D_02E
- D 1 - I - 0x01B96F 06:B95F: 94 A9     .word _off016_round_1_1_A994_030
- D 1 - I - 0x01B971 06:B961: 9C A9     .word _off016_round_1_1_A99C_032
- D 1 - I - 0x01B973 06:B963: ED A8     .word _off016_round_1_1_A8ED_034
- D 1 - I - 0x01B975 06:B965: A2 A9     .word _off016_round_1_1_A9A2_036
- D 1 - I - 0x01B977 06:B967: A8 A9     .word _off016_round_1_1_A9A8_038
- D 1 - I - 0x01B979 06:B969: AD A9     .word _off016_round_1_1_A9AD_03A
- D 1 - I - 0x01B97B 06:B96B: B5 29     .word _off016_round_1_1_A9B5_03C - $8000
- D 1 - I - 0x01B97D 06:B96D: BD A9     .word _off016_round_1_1_A9BD_03E
- D 1 - I - 0x01B97F 06:B96F: C4 A9     .word _off016_round_1_1_A9C4_040
- D 1 - I - 0x01B981 06:B971: C9 A9     .word _off016_round_1_1_A9C9_042
- D 1 - I - 0x01B983 06:B973: CE E9     .word _off016_round_1_1_A9CE_044 + $8000 - $4000
- D 1 - I - 0x01B985 06:B975: D2 A9     .word _off016_round_1_1_A9D2_046
- D 1 - I - 0x01B987 06:B977: D8 29     .word _off016_round_1_1_A9D8_048 - $8000
- D 1 - I - 0x01B989 06:B979: DE A9     .word _off016_round_1_1_A9DE_04A
- D 1 - I - 0x01B98B 06:B97B: E2 A9     .word _off016_round_1_1_A9E2_04C
- D 1 - I - 0x01B98D 06:B97D: E9 A9     .word _off016_round_1_1_A9E9_04E
- D 1 - I - 0x01B98F 06:B97F: F0 29     .word _off016_round_1_1_A9F0_050 - $8000
- D 1 - I - 0x01B991 06:B981: F6 A9     .word _off016_round_1_1_A9F6_052
- D 1 - I - 0x01B993 06:B983: FB A9     .word _off016_round_1_1_A9FB_054
- D 1 - I - 0x01B995 06:B985: 03 AA     .word _off016_round_1_1_AA03_056
- D 1 - I - 0x01B997 06:B987: 0D AA     .word _off016_round_1_1_AA0D_058
- D 1 - I - 0x01B999 06:B989: 16 2A     .word _off016_round_1_1_AA16_05A - $8000
- D 1 - I - 0x01B99B 06:B98B: 1F AA     .word _off016_round_1_1_AA1F_05C
- D 1 - I - 0x01B99D 06:B98D: 26 AA     .word _off016_round_1_1_AA26_05E
- D 1 - I - 0x01B99F 06:B98F: 2C AA     .word _off016_round_1_1_AA2C_060
- D 1 - I - 0x01B9A1 06:B991: 30 EA     .word _off016_round_1_1_AA30_062 + $8000 - $4000
- D 1 - I - 0x01B9A3 06:B993: 34 AA     .word _off016_round_1_1_AA34_064
- D 1 - I - 0x01B9A5 06:B995: 3A AA     .word _off016_round_1_1_AA3A_066
- D 1 - I - 0x01B9A7 06:B997: 41 AA     .word _off016_round_1_1_AA41_068
- D 1 - I - 0x01B9A9 06:B999: 4A AA     .word _off016_round_1_1_AA4A_06A
- D 1 - I - 0x01B9AB 06:B99B: 51 AA     .word _off016_round_1_1_AA51_06C
- D 1 - I - 0x01B9AD 06:B99D: 58 AA     .word _off016_round_1_1_AA58_06E
- D 1 - I - 0x01B9AF 06:B99F: 5F AA     .word _off016_round_1_1_AA5F_070
- D 1 - I - 0x01B9B1 06:B9A1: 30 AA     .word _off016_round_1_1_AA30_072
- D 1 - I - 0x01B9B3 06:B9A3: 64 EA     .word _off016_round_1_1_AA64_074 + $8000 - $4000
- D 1 - I - 0x01B9B5 06:B9A5: 68 AA     .word _off016_round_1_1_AA68_076
- D 1 - I - 0x01B9B7 06:B9A7: 6C EA     .word _off016_round_1_1_AA6C_078 + $8000 - $4000
- D 1 - I - 0x01B9B9 06:B9A9: 74 AA     .word _off016_round_1_1_AA74_07A
- D 1 - I - 0x01B9BB 06:B9AB: 7B AA     .word _off016_round_1_1_AA7B_07C
- D 1 - I - 0x01B9BD 06:B9AD: 7F AA     .word _off016_round_1_1_AA7F_07E
- D 1 - I - 0x01B9BF 06:B9AF: 84 AA     .word _off016_round_1_1_AA84_080
- D 1 - I - 0x01B9C1 06:B9B1: 8A AA     .word _off016_round_1_1_AA8A_082
- D 1 - I - 0x01B9C3 06:B9B3: 90 AA     .word _off016_round_1_1_AA90_084
- D 1 - I - 0x01B9C5 06:B9B5: 96 AA     .word _off016_round_1_1_AA96_086
- D 1 - I - 0x01B9C7 06:B9B7: 9C AA     .word _off016_round_1_1_AA9C_088
- D 1 - I - 0x01B9C9 06:B9B9: A4 2A     .word _off016_round_1_1_AAA4_08A - $8000
- D 1 - I - 0x01B9CB 06:B9BB: AC AA     .word _off016_round_1_1_AAAC_08C
- D 1 - I - 0x01B9CD 06:B9BD: B1 AA     .word _off016_round_1_1_AAB1_08E
- D 1 - I - 0x01B9CF 06:B9BF: B4 AA     .word _off016_round_1_1_AAB4_090
- D 1 - I - 0x01B9D1 06:B9C1: BC AA     .word _off016_round_1_1_AABC_092
- D 1 - I - 0x01B9D3 06:B9C3: C4 AA     .word _off016_round_1_1_AAC4_094
- D 1 - I - 0x01B9D5 06:B9C5: CC AA     .word _off016_round_1_1_AACC_096
- D 1 - I - 0x01B9D7 06:B9C7: D2 2A     .word _off016_round_1_1_AAD2_098 - $8000
- D 1 - I - 0x01B9D9 06:B9C9: D8 AA     .word _off016_round_1_1_AAD8_09A
- D 1 - I - 0x01B9DB 06:B9CB: DE 2A     .word _off016_round_1_1_AADE_09C - $8000
- D 1 - I - 0x01B9DD 06:B9CD: E4 AA     .word _off016_round_1_1_AAE4_09E
- D 1 - I - 0x01B9DF 06:B9CF: EA 2A     .word _off016_round_1_1_AAEA_0A0 - $8000
- D 1 - I - 0x01B9E1 06:B9D1: CC AA     .word _off016_round_1_1_AACC_0A2
- D 1 - I - 0x01B9E3 06:B9D3: D2 2A     .word _off016_round_1_1_AAD2_0A4 - $8000
- D 1 - I - 0x01B9E5 06:B9D5: D8 EA     .word _off016_round_1_1_AAD8_0A6 + $8000 - $4000
- D 1 - I - 0x01B9E7 06:B9D7: F0 AA     .word _off016_round_1_1_AAF0_0A8
- D 1 - I - 0x01B9E9 06:B9D9: F8 AA     .word _off016_round_1_1_AAF8_0AA
- D 1 - I - 0x01B9EB 06:B9DB: 00 AB     .word _off016_round_1_1_AB00_0AC
- D 1 - I - 0x01B9ED 06:B9DD: 05 AB     .word _off016_round_1_1_AB05_0AE
- D 1 - I - 0x01B9EF 06:B9DF: 0B EB     .word _off016_round_1_1_AB0B_0B0 + $8000 - $4000
- D 1 - I - 0x01B9F1 06:B9E1: 7F AA     .word _off016_round_1_1_AA7F_0B2
- D 1 - I - 0x01B9F3 06:B9E3: 84 AA     .word _off016_round_1_1_AA84_0B4
- D 1 - I - 0x01B9F5 06:B9E5: 0F AB     .word _off016_round_1_1_AB0F_0B6
- D 1 - I - 0x01B9F7 06:B9E7: 15 AB     .word _off016_round_1_1_AB15_0B8
- D 1 - I - 0x01B9F9 06:B9E9: 1B AB     .word _off016_round_1_1_AB1B_0BA
- D 1 - I - 0x01B9FB 06:B9EB: 23 AB     .word _off016_round_1_1_AB23_0BC
- D 1 - I - 0x01B9FD 06:B9ED: 2B AB     .word _off016_round_1_1_AB2B_0BE
- D 1 - I - 0x01B9FF 06:B9EF: 32 AB     .word _off016_round_1_1_AB32_0C0
- D 1 - I - 0x01BA01 06:B9F1: 36 AB     .word _off016_round_1_1_AB36_0C2
- D 1 - I - 0x01BA03 06:B9F3: 3A AB     .word _off016_round_1_1_AB3A_0C4
- D 1 - I - 0x01BA05 06:B9F5: 1F A9     .word _off016_round_1_1_A91F_0C6
- D 1 - I - 0x01BA07 06:B9F7: 3F 2B     .word _off016_round_1_1_AB3F_0C8 - $8000
- D 1 - I - 0x01BA09 06:B9F9: 45 AB     .word _off016_round_1_1_AB45_0CA
- D 1 - I - 0x01BA0B 06:B9FB: 32 AB     .word _off016_round_1_1_AB32_0CC
- D 1 - I - 0x01BA0D 06:B9FD: 36 AB     .word _off016_round_1_1_AB36_0CE
- D 1 - I - 0x01BA0F 06:B9FF: 4A AB     .word _off016_round_1_1_AB4A_0D0
- D 1 - I - 0x01BA11 06:BA01: 50 AB     .word _off016_round_1_1_AB50_0D2
- D 1 - I - 0x01BA13 06:BA03: 57 AB     .word _off016_round_1_1_AB57_0D4
- D 1 - I - 0x01BA15 06:BA05: 5E AB     .word _off016_round_1_1_AB5E_0D6
- D 1 - I - 0x01BA17 06:BA07: 63 AB     .word _off016_round_1_1_AB63_0D8
- D 1 - I - 0x01BA19 06:BA09: 69 AB     .word _off016_round_1_1_AB69_0DA
- D 1 - I - 0x01BA1B 06:BA0B: 70 AB     .word _off016_round_1_1_AB70_0DC
- D 1 - I - 0x01BA1D 06:BA0D: 78 AB     .word _off016_round_1_1_AB78_0DE
- D 1 - I - 0x01BA1F 06:BA0F: 7F EB     .word _off016_round_1_1_AB7F_0E0 + $8000 - $4000
- D 1 - I - 0x01BA21 06:BA11: 85 EB     .word _off016_round_1_1_AB85_0E2 + $8000 - $4000
- D 1 - I - 0x01BA23 06:BA13: 8B AB     .word _off016_round_1_1_AB8B_0E4
- D 1 - I - 0x01BA25 06:BA15: 90 AB     .word _off016_round_1_1_AB90_0E6
- D 1 - I - 0x01BA27 06:BA17: 97 AB     .word _off016_round_1_1_AB97_0E8
- D 1 - I - 0x01BA29 06:BA19: 9E AB     .word _off016_round_1_1_AB9E_0EA
- D 1 - I - 0x01BA2B 06:BA1B: A4 EB     .word _off016_round_1_1_ABA4_0EC + $8000 - $4000
- D 1 - I - 0x01BA2D 06:BA1D: AB AB     .word _off016_round_1_1_ABAB_0EE
- D 1 - I - 0x01BA2F 06:BA1F: B1 AB     .word _off016_round_1_1_ABB1_0F0
- D 1 - I - 0x01BA31 06:BA21: B6 AB     .word _off016_round_1_1_ABB6_0F2
- D 1 - I - 0x01BA33 06:BA23: BD AB     .word _off016_round_1_1_ABBD_0F4
- D 1 - I - 0x01BA35 06:BA25: C3 6B     .word _off016_round_1_1_ABC3_0F6 - $4000
- D 1 - I - 0x01BA37 06:BA27: C8 AB     .word _off016_round_1_1_ABC8_0F8
- D 1 - I - 0x01BA39 06:BA29: CE AB     .word _off016_round_1_1_ABCE_0FA
- D 1 - I - 0x01BA3B 06:BA2B: D8 AB     .word _off016_round_1_1_ABD8_0FC
- D 1 - I - 0x01BA3D 06:BA2D: E4 AB     .word _off016_round_1_1_ABE4_0FE
- D 1 - I - 0x01BA3F 06:BA2F: F0 AB     .word _off016_round_1_1_ABF0_100
- D 1 - I - 0x01BA41 06:BA31: F4 AB     .word _off016_round_1_1_ABF4_102
- D 1 - I - 0x01BA43 06:BA33: F8 AB     .word _off016_round_1_1_ABF8_104
- D 1 - I - 0x01BA45 06:BA35: FD AB     .word _off016_round_1_1_ABFD_106
- D 1 - I - 0x01BA47 06:BA37: 02 AC     .word _off016_round_1_1_AC02_108
- D 1 - I - 0x01BA49 06:BA39: 08 AC     .word _off016_round_1_1_AC08_10A
- D 1 - I - 0x01BA4B 06:BA3B: 0D 6C     .word _off016_round_1_1_AC0D_10C - $4000
- D 1 - I - 0x01BA4D 06:BA3D: F6 A9     .word _off016_round_1_1_A9F6_10E
- D 1 - I - 0x01BA4F 06:BA3F: 12 2C     .word _off016_round_1_1_AC12_110 - $8000
- D 1 - I - 0x01BA51 06:BA41: 19 2C     .word _off016_round_1_1_AC19_112 - $8000
- D 1 - I - 0x01BA53 06:BA43: 20 2C     .word _off016_round_1_1_AC20_114 - $8000
- D 1 - I - 0x01BA55 06:BA45: 2C 2C     .word _off016_round_1_1_AC2C_116 - $8000
- D 1 - I - 0x01BA57 06:BA47: 38 2C     .word _off016_round_1_1_AC38_118 - $8000
- D 1 - I - 0x01BA59 06:BA49: 96 6A     .word _off016_round_1_1_AA96_11A - $4000
- D 1 - I - 0x01BA5B 06:BA4B: 40 AC     .word _off016_round_1_1_AC40_11C
- D 1 - I - 0x01BA5D 06:BA4D: 46 AC     .word _off016_round_1_1_AC46_11E
- D 1 - I - 0x01BA5F 06:BA4F: 4D AC     .word _off016_round_1_1_AC4D_120
- D 1 - I - 0x01BA61 06:BA51: 54 AC     .word _off016_round_1_1_AC54_122
- D 1 - I - 0x01BA63 06:BA53: 5B AC     .word _off016_round_1_1_AC5B_124
- D 1 - I - 0x01BA65 06:BA55: 63 2C     .word _off016_round_1_1_AC63_126 - $8000
- D 1 - I - 0x01BA67 06:BA57: 6A AC     .word _off016_round_1_1_AC6A_128
- D 1 - I - 0x01BA69 06:BA59: 73 AC     .word _off016_round_1_1_AC73_12A
- D 1 - I - 0x01BA6B 06:BA5B: 7B AC     .word _off016_round_1_1_AC7B_12C
- D 1 - I - 0x01BA6D 06:BA5D: 85 AC     .word _off016_round_1_1_AC85_12E
- D 1 - I - 0x01BA6F 06:BA5F: 8E 2C     .word _off016_round_1_1_AC8E_130 - $8000
- D 1 - I - 0x01BA71 06:BA61: 96 2C     .word _off016_round_1_1_AC96_132 - $8000
- D 1 - I - 0x01BA73 06:BA63: A1 6C     .word _off016_round_1_1_ACA1_134 - $4000
- D 1 - I - 0x01BA75 06:BA65: AA 6C     .word _off016_round_1_1_ACAA_136 - $4000
- D 1 - I - 0x01BA77 06:BA67: B1 AC     .word _off016_round_1_1_ACB1_138
- D 1 - I - 0x01BA79 06:BA69: B8 AC     .word _off016_round_1_1_ACB8_13A
- D 1 - I - 0x01BA7B 06:BA6B: BF AC     .word _off016_round_1_1_ACBF_13C
- D 1 - I - 0x01BA7D 06:BA6D: C6 AC     .word _off016_round_1_1_ACC6_13E
- D 1 - I - 0x01BA7F 06:BA6F: CC 2C     .word _off016_round_1_1_ACCC_140 - $8000
- D 1 - I - 0x01BA81 06:BA71: D2 2C     .word _off016_round_1_1_ACD2_142 - $8000
- D 1 - I - 0x01BA83 06:BA73: DA 2C     .word _off016_round_1_1_ACDA_144 - $8000
- D 1 - I - 0x01BA85 06:BA75: E3 2C     .word _off016_round_1_1_ACE3_146 - $8000
- D 1 - I - 0x01BA87 06:BA77: EE 2C     .word _off016_round_1_1_ACEE_148 - $8000
- D 1 - I - 0x01BA89 06:BA79: F6 2C     .word _off016_round_1_1_ACF6_14A - $8000
- D 1 - I - 0x01BA8B 06:BA7B: FF 2C     .word _off016_round_1_1_ACFF_14C - $8000
- D 1 - I - 0x01BA8D 06:BA7D: 07 6D     .word _off016_round_1_1_AD07_14E - $4000
- D 1 - I - 0x01BA8F 06:BA7F: 0D AD     .word _off016_round_1_1_AD0D_150
- D 1 - I - 0x01BA91 06:BA81: B8 AC     .word _off016_round_1_1_ACB8_152
- D 1 - I - 0x01BA93 06:BA83: BF 2C     .word _off016_round_1_1_ACBF_154 - $8000
- D 1 - I - 0x01BA95 06:BA85: 14 AD     .word _off016_round_1_1_AD14_156
- D 1 - I - 0x01BA97 06:BA87: 1A 2D     .word _off016_round_1_1_AD1A_158 - $8000
- D 1 - I - 0x01BA99 06:BA89: 20 2D     .word _off016_round_1_1_AD20_15A - $8000
- D 1 - I - 0x01BA9B 06:BA8B: 27 6D     .word _off016_round_1_1_AD27_15C - $4000
- D 1 - I - 0x01BA9D 06:BA8D: 2D 2D     .word _off016_round_1_1_AD2D_15E - $8000
- D 1 - I - 0x01BA9F 06:BA8F: 34 AD     .word _off016_round_1_1_AD34_160
- D 1 - I - 0x01BAA1 06:BA91: 3A AD     .word _off016_round_1_1_AD3A_162
- D 1 - I - 0x01BAA3 06:BA93: 44 AD     .word _off016_round_1_1_AD44_164
- D 1 - I - 0x01BAA5 06:BA95: 4E AD     .word _off016_round_1_1_AD4E_166
- D 1 - I - 0x01BAA7 06:BA97: 5A AD     .word _off016_round_1_1_AD5A_168
- D 1 - I - 0x01BAA9 06:BA99: 65 AD     .word _off016_round_1_1_AD65_16A
- D 1 - I - 0x01BAAB 06:BA9B: 6D AD     .word _off016_round_1_1_AD6D_16C
- D 1 - I - 0x01BAAD 06:BA9D: B8 2C     .word _off016_round_1_1_ACB8_16E - $8000
- D 1 - I - 0x01BAAF 06:BA9F: BF AC     .word _off016_round_1_1_ACBF_170
- D 1 - I - 0x01BAB1 06:BAA1: 74 AD     .word _off016_round_1_1_AD74_172
- D 1 - I - 0x01BAB3 06:BAA3: 7A AD     .word _off016_round_1_1_AD7A_174
- D 1 - I - 0x01BAB5 06:BAA5: 80 ED     .word _off016_round_1_1_AD80_176 + $8000 - $4000
- D 1 - I - 0x01BAB7 06:BAA7: 87 AD     .word _off016_round_1_1_AD87_178
- D 1 - I - 0x01BAB9 06:BAA9: 8F AD     .word _off016_round_1_1_AD8F_17A
- D 1 - I - 0x01BABB 06:BAAB: 96 AD     .word _off016_round_1_1_AD96_17C
- D 1 - I - 0x01BABD 06:BAAD: 9D AD     .word _off016_round_1_1_AD9D_17E
- D 1 - I - 0x01BABF 06:BAAF: A4 AD     .word _off016_round_1_1_ADA4_180
- D 1 - I - 0x01BAC1 06:BAB1: AA AD     .word _off016_round_1_1_ADAA_182
- D 1 - I - 0x01BAC3 06:BAB3: AE AD     .word _off016_round_1_1_ADAE_184
- D 1 - I - 0x01BAC5 06:BAB5: B4 AD     .word _off016_round_1_1_ADB4_186
- D 1 - I - 0x01BAC7 06:BAB7: B9 AD     .word _off016_round_1_1_ADB9_188
- D 1 - I - 0x01BAC9 06:BAB9: C0 6D     .word _off016_round_1_1_ADC0_18A - $4000
- D 1 - I - 0x01BACB 06:BABB: CA 2D     .word _off016_round_1_1_ADCA_18C - $8000
- D 1 - I - 0x01BACD 06:BABD: D3 AD     .word _off016_round_1_1_ADD3_18E
- D 1 - I - 0x01BACF 06:BABF: D7 AD     .word _off016_round_1_1_ADD7_190
- D 1 - I - 0x01BAD1 06:BAC1: DB 6D     .word _off016_round_1_1_ADDB_192 - $4000
- D 1 - I - 0x01BAD3 06:BAC3: E2 AD     .word _off016_round_1_1_ADE2_194
- D 1 - I - 0x01BAD5 06:BAC5: E6 AD     .word _off016_round_1_1_ADE6_196
- D 1 - I - 0x01BAD7 06:BAC7: EC AD     .word _off016_round_1_1_ADEC_198
- D 1 - I - 0x01BAD9 06:BAC9: F2 ED     .word _off016_round_1_1_ADF2_19A + $8000 - $4000
- D 1 - I - 0x01BADB 06:BACB: EA AA     .word _off016_round_1_1_AAEA_19C
- D 1 - I - 0x01BADD 06:BACD: CC AA     .word _off016_round_1_1_AACC_19E
- D 1 - I - 0x01BADF 06:BACF: D2 2A     .word _off016_round_1_1_AAD2_1A0 - $8000
- D 1 - I - 0x01BAE1 06:BAD1: D8 AA     .word _off016_round_1_1_AAD8_1A2
- D 1 - I - 0x01BAE3 06:BAD3: F7 AD     .word _off016_round_1_1_ADF7_1A4
- D 1 - I - 0x01BAE5 06:BAD5: FA AD     .word _off016_round_1_1_ADFA_1A6
- D 1 - I - 0x01BAE7 06:BAD7: 0B EB     .word _off016_round_1_1_AB0B_1A8 + $8000 - $4000
- D 1 - I - 0x01BAE9 06:BAD9: FE AD     .word _off016_round_1_1_ADFE_1AA
- D 1 - I - 0x01BAEB 06:BADB: 02 AE     .word _off016_round_1_1_AE02_1AC
- D 1 - I - 0x01BAED 06:BADD: 07 AE     .word _off016_round_1_1_AE07_1AE
- D 1 - I - 0x01BAEF 06:BADF: 0C AE     .word _off016_round_1_1_AE0C_1B0
- D 1 - I - 0x01BAF1 06:BAE1: 12 AE     .word _off016_round_1_1_AE12_1B2
- D 1 - I - 0x01BAF3 06:BAE3: 17 AE     .word _off016_round_1_1_AE17_1B4
- D 1 - I - 0x01BAF5 06:BAE5: 1C AE     .word _off016_round_1_1_AE1C_1B6
- D 1 - I - 0x01BAF7 06:BAE7: 23 EE     .word _off016_round_1_1_AE23_1B8 - $4000
- D 1 - I - 0x01BAF9 06:BAE9: 2A AE     .word _off016_round_1_1_AE2A_1BA
- D 1 - I - 0x01BAFB 06:BAEB: 31 AE     .word _off016_round_1_1_AE31_1BC
- D 1 - I - 0x01BAFD 06:BAED: 38 AE     .word _off016_round_1_1_AE38_1BE
- D 1 - I - 0x01BAFF 06:BAEF: 3F AE     .word _off016_round_1_1_AE3F_1C0
- D 1 - I - 0x01BB01 06:BAF1: 44 AE     .word _off016_round_1_1_AE44_1C2
- D 1 - I - 0x01BB03 06:BAF3: E2 AD     .word _off016_round_1_1_ADE2_1C4
- D 1 - I - 0x01BB05 06:BAF5: FA AD     .word _off016_round_1_1_ADFA_1C6
- D 1 - I - 0x01BB07 06:BAF7: 0B AB     .word _off016_round_1_1_AB0B_1C8
- D 1 - I - 0x01BB09 06:BAF9: FA ED     .word _off016_round_1_1_ADFA_1CA + $8000 - $4000
- D 1 - I - 0x01BB0B 06:BAFB: 0B AB     .word _off016_round_1_1_AB0B_1CC
- D 1 - I - 0x01BB0D 06:BAFD: FA AD     .word _off016_round_1_1_ADFA_1CE
- D 1 - I - 0x01BB0F 06:BAFF: 49 AE     .word _off016_round_1_1_AE49_1D0
- D 1 - I - 0x01BB11 06:BB01: DE A9     .word _off016_round_1_1_A9DE_1D2
- D 1 - I - 0x01BB13 06:BB03: 4D 2E     .word _off016_round_1_1_AE4D_1D4 - $8000
- D 1 - I - 0x01BB15 06:BB05: DE E9     .word _off016_round_1_1_A9DE_1D6 + $8000 - $4000
- D 1 - I - 0x01BB17 06:BB07: 51 AE     .word _off016_round_1_1_AE51_1D8
- D 1 - I - 0x01BB19 06:BB09: 57 AE     .word _off016_round_1_1_AE57_1DA
- D 1 - I - 0x01BB1B 06:BB0B: 5D AE     .word _off016_round_1_1_AE5D_1DC
- D 1 - I - 0x01BB1D 06:BB0D: FA AD     .word _off016_round_1_1_ADFA_1DE
- D 1 - I - 0x01BB1F 06:BB0F: 0B AB     .word _off016_round_1_1_AB0B_1E0
- D 1 - I - 0x01BB21 06:BB11: FE AD     .word _off016_round_1_1_ADFE_1E2
- D 1 - I - 0x01BB23 06:BB13: 63 AE     .word _off016_round_1_1_AE63_1E4
- D 1 - I - 0x01BB25 06:BB15: 68 AE     .word _off016_round_1_1_AE68_1E6
- D 1 - I - 0x01BB27 06:BB17: 6D AE     .word _off016_round_1_1_AE6D_1E8
- D 1 - I - 0x01BB29 06:BB19: 72 AE     .word _off016_round_1_1_AE72_1EA
- D 1 - I - 0x01BB2B 06:BB1B: 3F 2E     .word _off016_round_1_1_AE3F_1EC - $8000
- D 1 - I - 0x01BB2D 06:BB1D: 78 AE     .word _off016_round_1_1_AE78_1EE
- D 1 - I - 0x01BB2F 06:BB1F: 7E AE     .word _off016_round_1_1_AE7E_1F0
- D 1 - I - 0x01BB31 06:BB21: 84 AE     .word _off016_round_1_1_AE84_1F2
- D 1 - I - 0x01BB33 06:BB23: 8A AE     .word _off016_round_1_1_AE8A_1F4
- D 1 - I - 0x01BB35 06:BB25: 90 AE     .word _off016_round_1_1_AE90_1F6
- D 1 - I - 0x01BB37 06:BB27: 94 AE     .word _off016_round_1_1_AE94_1F8
- D 1 - I - 0x01BB39 06:BB29: 99 AE     .word _off016_round_1_1_AE99_1FA
- D 1 - I - 0x01BB3B 06:BB2B: 9E AE     .word _off016_round_1_1_AE9E_1FC
- D 1 - I - 0x01BB3D 06:BB2D: A3 AE     .word _off016_round_1_1_AEA3_1FE
; 
- D 1 - I - 0x01BB3F 06:BB2F: A7 AE     .word _off016_round_1_2_AEA7_000
- D 1 - I - 0x01BB41 06:BB31: B1 AE     .word _off016_round_1_2_AEB1_002
- D 1 - I - 0x01BB43 06:BB33: BB AE     .word _off016_round_1_2_AEBB_004
- D 1 - I - 0x01BB45 06:BB35: C6 AE     .word _off016_round_1_2_AEC6_006
- D 1 - I - 0x01BB47 06:BB37: D2 AE     .word _off016_round_1_2_AED2_008
- D 1 - I - 0x01BB49 06:BB39: DE AE     .word _off016_round_1_2_AEDE_00A
- D 1 - I - 0x01BB4B 06:BB3B: E9 AE     .word _off016_round_1_2_AEE9_00C
- D 1 - I - 0x01BB4D 06:BB3D: F4 2E     .word _off016_round_1_2_AEF4_00E - $8000
- D 1 - I - 0x01BB4F 06:BB3F: FE EE     .word _off016_round_1_2_AEFE_010 + $8000 - $4000
- D 1 - I - 0x01BB51 06:BB41: 08 AF     .word _off016_round_1_2_AF08_012
- D 1 - I - 0x01BB53 06:BB43: 12 AF     .word _off016_round_1_2_AF12_014
- D 1 - I - 0x01BB55 06:BB45: 1B AF     .word _off016_round_1_2_AF1B_016
- D 1 - I - 0x01BB57 06:BB47: 23 AF     .word _off016_round_1_2_AF23_018
- D 1 - I - 0x01BB59 06:BB49: 1B EF     .word _off016_round_1_2_AF1B_01A + $8000 - $4000
- D 1 - I - 0x01BB5B 06:BB4B: 23 AF     .word _off016_round_1_2_AF23_01C
- D 1 - I - 0x01BB5D 06:BB4D: 1B 2F     .word _off016_round_1_2_AF1B_01E - $8000
- D 1 - I - 0x01BB5F 06:BB4F: 2B AF     .word _off016_round_1_2_AF2B_020
- D 1 - I - 0x01BB61 06:BB51: 35 AF     .word _off016_round_1_2_AF35_022
- D 1 - I - 0x01BB63 06:BB53: 40 AF     .word _off016_round_1_2_AF40_024
- D 1 - I - 0x01BB65 06:BB55: 4B AF     .word _off016_round_1_2_AF4B_026
- D 1 - I - 0x01BB67 06:BB57: 55 AF     .word _off016_round_1_2_AF55_028
- D 1 - I - 0x01BB69 06:BB59: 5C AF     .word _off016_round_1_2_AF5C_02A
- D 1 - I - 0x01BB6B 06:BB5B: 65 AF     .word _off016_round_1_2_AF65_02C
- D 1 - I - 0x01BB6D 06:BB5D: 6E 2F     .word _off016_round_1_2_AF6E_02E - $8000
- D 1 - I - 0x01BB6F 06:BB5F: 75 EF     .word _off016_round_1_2_AF75_030 + $8000 - $4000
- D 1 - I - 0x01BB71 06:BB61: 7C AF     .word _off016_round_1_2_AF7C_032
- D 1 - I - 0x01BB73 06:BB63: 81 AF     .word _off016_round_1_2_AF81_034
- D 1 - I - 0x01BB75 06:BB65: 88 EF     .word _off016_round_1_2_AF88_036 + $8000 - $4000
- D 1 - I - 0x01BB77 06:BB67: 90 AF     .word _off016_round_1_2_AF90_038
- D 1 - I - 0x01BB79 06:BB69: 9C AF     .word _off016_round_1_2_AF9C_03A
- D 1 - I - 0x01BB7B 06:BB6B: A7 AF     .word _off016_round_1_2_AFA7_03C
- D 1 - I - 0x01BB7D 06:BB6D: B3 AF     .word _off016_round_1_2_AFB3_03E
- D 1 - I - 0x01BB7F 06:BB6F: BF EF     .word _off016_round_1_2_AFBF_040 + $8000 - $4000
- D 1 - I - 0x01BB81 06:BB71: CB 2F     .word _off016_round_1_2_AFCB_042 - $8000
- D 1 - I - 0x01BB83 06:BB73: D5 AF     .word _off016_round_1_2_AFD5_044
- D 1 - I - 0x01BB85 06:BB75: DF AF     .word _off016_round_1_2_AFDF_046
- D 1 - I - 0x01BB87 06:BB77: E9 AF     .word _off016_round_1_2_AFE9_048
- D 1 - I - 0x01BB89 06:BB79: F2 AF     .word _off016_round_1_2_AFF2_04A
- D 1 - I - 0x01BB8B 06:BB7B: FB AF     .word _off016_round_1_2_AFFB_04C
- D 1 - I - 0x01BB8D 06:BB7D: 03 B0     .word _off016_round_1_2_B003_04E
- D 1 - I - 0x01BB8F 06:BB7F: 08 B0     .word _off016_round_1_2_B008_050
- D 1 - I - 0x01BB91 06:BB81: 0C B0     .word _off016_round_1_2_B00C_052
- D 1 - I - 0x01BB93 06:BB83: 11 30     .word _off016_round_1_2_B011_054 - $8000
- D 1 - I - 0x01BB95 06:BB85: 16 B0     .word _off016_round_1_2_B016_056
- D 1 - I - 0x01BB97 06:BB87: 1B B0     .word _off016_round_1_2_B01B_058
- D 1 - I - 0x01BB99 06:BB89: 21 B0     .word _off016_round_1_2_B021_05A
- D 1 - I - 0x01BB9B 06:BB8B: 27 70     .word _off016_round_1_2_B027_05C - $4000
- D 1 - I - 0x01BB9D 06:BB8D: 2D B0     .word _off016_round_1_2_B02D_05E
- D 1 - I - 0x01BB9F 06:BB8F: 33 B0     .word _off016_round_1_2_B033_060
- D 1 - I - 0x01BBA1 06:BB91: 37 B0     .word _off016_round_1_2_B037_062
- D 1 - I - 0x01BBA3 06:BB93: 3B B0     .word _off016_round_1_2_B03B_064
- D 1 - I - 0x01BBA5 06:BB95: 40 30     .word _off016_round_1_2_B040_066 - $8000
- D 1 - I - 0x01BBA7 06:BB97: 45 F0     .word _off016_round_1_2_B045_068 + $8000 - $4000
- D 1 - I - 0x01BBA9 06:BB99: 4D B0     .word _off016_round_1_2_B04D_06A
- D 1 - I - 0x01BBAB 06:BB9B: 53 B0     .word _off016_round_1_2_B053_06C
- D 1 - I - 0x01BBAD 06:BB9D: 5A F0     .word _off016_round_1_2_B05A_06E + $8000 - $4000
- D 1 - I - 0x01BBAF 06:BB9F: D2 AE     .word _off016_round_1_2_AED2_070
- D 1 - I - 0x01BBB1 06:BBA1: F4 AE     .word _off016_round_1_2_AEF4_072
- D 1 - I - 0x01BBB3 06:BBA3: 63 F0     .word _off016_round_1_2_B063_074 + $8000 - $4000
- D 1 - I - 0x01BBB5 06:BBA5: 70 30     .word _off016_round_1_2_B070_076 - $8000
- D 1 - I - 0x01BBB7 06:BBA7: 7D 30     .word _off016_round_1_2_B07D_078 - $8000
- D 1 - I - 0x01BBB9 06:BBA9: 8A B0     .word _off016_round_1_2_B08A_07A
- D 1 - I - 0x01BBBB 06:BBAB: FE AE     .word _off016_round_1_2_AEFE_07C
- D 1 - I - 0x01BBBD 06:BBAD: 08 AF     .word _off016_round_1_2_AF08_07E
- D 1 - I - 0x01BBBF 06:BBAF: 97 B0     .word _off016_round_1_2_B097_080
- D 1 - I - 0x01BBC1 06:BBB1: A2 B0     .word _off016_round_1_2_B0A2_082
- D 1 - I - 0x01BBC3 06:BBB3: AD B0     .word _off016_round_1_2_B0AD_084
- D 1 - I - 0x01BBC5 06:BBB5: 88 AF     .word _off016_round_1_2_AF88_086
- D 1 - I - 0x01BBC7 06:BBB7: FB AF     .word _off016_round_1_2_AFFB_088
- D 1 - I - 0x01BBC9 06:BBB9: 03 B0     .word _off016_round_1_2_B003_08A
- D 1 - I - 0x01BBCB 06:BBBB: 08 B0     .word _off016_round_1_2_B008_08C
- D 1 - I - 0x01BBCD 06:BBBD: B7 B0     .word _off016_round_1_2_B0B7_08E
- D 1 - I - 0x01BBCF 06:BBBF: BB B0     .word _off016_round_1_2_B0BB_090
- D 1 - I - 0x01BBD1 06:BBC1: BF 70     .word _off016_round_1_2_B0BF_092 - $4000
- D 1 - I - 0x01BBD3 06:BBC3: 08 B0     .word _off016_round_1_2_B008_094
- D 1 - I - 0x01BBD5 06:BBC5: B7 B0     .word _off016_round_1_2_B0B7_096
- D 1 - I - 0x01BBD7 06:BBC7: BB B0     .word _off016_round_1_2_B0BB_098
- D 1 - I - 0x01BBD9 06:BBC9: BF 70     .word _off016_round_1_2_B0BF_09A - $4000
- D 1 - I - 0x01BBDB 06:BBCB: 08 B0     .word _off016_round_1_2_B008_09C
- D 1 - I - 0x01BBDD 06:BBCD: B7 B0     .word _off016_round_1_2_B0B7_09E
- D 1 - I - 0x01BBDF 06:BBCF: C3 F0     .word _off016_round_1_2_B0C3_0A0 + $8000 - $4000
- D 1 - I - 0x01BBE1 06:BBD1: C7 B0     .word _off016_round_1_2_B0C7_0A2
- D 1 - I - 0x01BBE3 06:BBD3: CD 30     .word _off016_round_1_2_B0CD_0A4 - $8000
- D 1 - I - 0x01BBE5 06:BBD5: D4 B0     .word _off016_round_1_2_B0D4_0A6
- D 1 - I - 0x01BBE7 06:BBD7: DC 70     .word _off016_round_1_2_B0DC_0A8 - $4000
- D 1 - I - 0x01BBE9 06:BBD9: E5 B0     .word _off016_round_1_2_B0E5_0AA
- D 1 - I - 0x01BBEB 06:BBDB: ED F0     .word _off016_round_1_2_B0ED_0AC + $8000 - $4000
- D 1 - I - 0x01BBED 06:BBDD: E5 B0     .word _off016_round_1_2_B0E5_0AE
- D 1 - I - 0x01BBEF 06:BBDF: F5 B0     .word _off016_round_1_2_B0F5_0B0
- D 1 - I - 0x01BBF1 06:BBE1: FE B0     .word _off016_round_1_2_B0FE_0B2
- D 1 - I - 0x01BBF3 06:BBE3: 07 B1     .word _off016_round_1_2_B107_0B4
- D 1 - I - 0x01BBF5 06:BBE5: 10 B1     .word _off016_round_1_2_B110_0B6
- D 1 - I - 0x01BBF7 06:BBE7: 1A B1     .word _off016_round_1_2_B11A_0B8
- D 1 - I - 0x01BBF9 06:BBE9: 24 31     .word _off016_round_1_2_B124_0BA - $8000
- D 1 - I - 0x01BBFB 06:BBEB: 07 F1     .word _off016_round_1_2_B107_0BC + $8000 - $4000
- D 1 - I - 0x01BBFD 06:BBED: 24 B1     .word _off016_round_1_2_B124_0BE
- D 1 - I - 0x01BBFF 06:BBEF: 07 B1     .word _off016_round_1_2_B107_0C0
- D 1 - I - 0x01BC01 06:BBF1: 2D B1     .word _off016_round_1_2_B12D_0C2
- D 1 - I - 0x01BC03 06:BBF3: 36 B1     .word _off016_round_1_2_B136_0C4
- D 1 - I - 0x01BC05 06:BBF5: 3E F1     .word _off016_round_1_2_B13E_0C6 + $8000 - $4000
- D 1 - I - 0x01BC07 06:BBF7: 45 F1     .word _off016_round_1_2_B145_0C8 + $8000 - $4000
- D 1 - I - 0x01BC09 06:BBF9: 4C B1     .word _off016_round_1_2_B14C_0CA
- D 1 - I - 0x01BC0B 06:BBFB: 45 B1     .word _off016_round_1_2_B145_0CC
- D 1 - I - 0x01BC0D 06:BBFD: 45 B1     .word _off016_round_1_2_B145_0CE
- D 1 - I - 0x01BC0F 06:BBFF: 4C B1     .word _off016_round_1_2_B14C_0D0
- D 1 - I - 0x01BC11 06:BC01: 45 B1     .word _off016_round_1_2_B145_0D2
- D 1 - I - 0x01BC13 06:BC03: 45 B1     .word _off016_round_1_2_B145_0D4
- D 1 - I - 0x01BC15 06:BC05: 45 F1     .word _off016_round_1_2_B145_0D6 + $8000 - $4000
- D 1 - I - 0x01BC17 06:BC07: 4C B1     .word _off016_round_1_2_B14C_0D8
- D 1 - I - 0x01BC19 06:BC09: 45 B1     .word _off016_round_1_2_B145_0DA
- D 1 - I - 0x01BC1B 06:BC0B: 45 B1     .word _off016_round_1_2_B145_0DC
- D 1 - I - 0x01BC1D 06:BC0D: 45 B1     .word _off016_round_1_2_B145_0DE
- D 1 - I - 0x01BC1F 06:BC0F: 4C B1     .word _off016_round_1_2_B14C_0E0
- D 1 - I - 0x01BC21 06:BC11: 45 B1     .word _off016_round_1_2_B145_0E2
- D 1 - I - 0x01BC23 06:BC13: 45 F1     .word _off016_round_1_2_B145_0E4 + $8000 - $4000
- D 1 - I - 0x01BC25 06:BC15: 4C B1     .word _off016_round_1_2_B14C_0E6
- D 1 - I - 0x01BC27 06:BC17: 45 B1     .word _off016_round_1_2_B145_0E8
- D 1 - I - 0x01BC29 06:BC19: 45 B1     .word _off016_round_1_2_B145_0EA
- D 1 - I - 0x01BC2B 06:BC1B: 45 B1     .word _off016_round_1_2_B145_0EC
- D 1 - I - 0x01BC2D 06:BC1D: 4C B1     .word _off016_round_1_2_B14C_0EE
- D 1 - I - 0x01BC2F 06:BC1F: 45 B1     .word _off016_round_1_2_B145_0F0
- D 1 - I - 0x01BC31 06:BC21: 45 B1     .word _off016_round_1_2_B145_0F2
- D 1 - I - 0x01BC33 06:BC23: 45 B1     .word _off016_round_1_2_B145_0F4
- D 1 - I - 0x01BC35 06:BC25: 4C 71     .word _off016_round_1_2_B14C_0F6 - $4000
- D 1 - I - 0x01BC37 06:BC27: 45 F1     .word _off016_round_1_2_B145_0F8 + $8000 - $4000
- D 1 - I - 0x01BC39 06:BC29: 45 B1     .word _off016_round_1_2_B145_0FA
- D 1 - I - 0x01BC3B 06:BC2B: 4C B1     .word _off016_round_1_2_B14C_0FC
- D 1 - I - 0x01BC3D 06:BC2D: 45 B1     .word _off016_round_1_2_B145_0FE
- D 1 - I - 0x01BC3F 06:BC2F: 54 B1     .word _off016_round_1_2_B154_100
- D 1 - I - 0x01BC41 06:BC31: 57 B1     .word _off016_round_1_2_B157_102
- D 1 - I - 0x01BC43 06:BC33: 5B B1     .word _off016_round_1_2_B15B_104
- D 1 - I - 0x01BC45 06:BC35: 62 B1     .word _off016_round_1_2_B162_106
- D 1 - I - 0x01BC47 06:BC37: 69 B1     .word _off016_round_1_2_B169_108
- D 1 - I - 0x01BC49 06:BC39: 74 B1     .word _off016_round_1_2_B174_10A
- D 1 - I - 0x01BC4B 06:BC3B: 0D 6C     .word _off016_round_1_2_AC0D_10C - $4000
- D 1 - I - 0x01BC4D 06:BC3D: DE A9     .word _off016_round_1_2_A9DE_10E
- D 1 - I - 0x01BC4F 06:BC3F: 7C B1     .word _off016_round_1_2_B17C_110
- D 1 - I - 0x01BC51 06:BC41: 81 B1     .word _off016_round_1_2_B181_112
- D 1 - I - 0x01BC53 06:BC43: 87 B1     .word _off016_round_1_2_B187_114
- D 1 - I - 0x01BC55 06:BC45: 8F B1     .word _off016_round_1_2_B18F_116
- D 1 - I - 0x01BC57 06:BC47: 97 31     .word _off016_round_1_2_B197_118 - $8000
- D 1 - I - 0x01BC59 06:BC49: A1 B1     .word _off016_round_1_2_B1A1_11A
- D 1 - I - 0x01BC5B 06:BC4B: 7C F1     .word _off016_round_1_2_B17C_11C + $8000 - $4000
- D 1 - I - 0x01BC5D 06:BC4D: A8 B1     .word _off016_round_1_2_B1A8_11E
- D 1 - I - 0x01BC5F 06:BC4F: AE B1     .word _off016_round_1_2_B1AE_120
- D 1 - I - 0x01BC61 06:BC51: B4 B1     .word _off016_round_1_2_B1B4_122
- D 1 - I - 0x01BC63 06:BC53: BA 31     .word _off016_round_1_2_B1BA_124 - $8000
- D 1 - I - 0x01BC65 06:BC55: BF 31     .word _off016_round_1_2_B1BF_126 - $8000
- D 1 - I - 0x01BC67 06:BC57: C4 31     .word _off016_round_1_2_B1C4_128 - $8000
- D 1 - I - 0x01BC69 06:BC59: CA 31     .word _off016_round_1_2_B1CA_12A - $8000
- D 1 - I - 0x01BC6B 06:BC5B: CF F1     .word _off016_round_1_2_B1CF_12C + $8000 - $4000
- D 1 - I - 0x01BC6D 06:BC5D: D7 B1     .word _off016_round_1_2_B1D7_12E
- D 1 - I - 0x01BC6F 06:BC5F: E0 B1     .word _off016_round_1_2_B1E0_130
- D 1 - I - 0x01BC71 06:BC61: E9 B1     .word _off016_round_1_2_B1E9_132
- D 1 - I - 0x01BC73 06:BC63: 1A AD     .word _off016_round_1_2_AD1A_134
- D 1 - I - 0x01BC75 06:BC65: F1 B1     .word _off016_round_1_2_B1F1_136
- D 1 - I - 0x01BC77 06:BC67: C4 31     .word _off016_round_1_2_B1C4_138 - $8000
- D 1 - I - 0x01BC79 06:BC69: BF 31     .word _off016_round_1_2_B1BF_13A - $8000
- D 1 - I - 0x01BC7B 06:BC6B: F6 31     .word _off016_round_1_2_B1F6_13C - $8000
- D 1 - I - 0x01BC7D 06:BC6D: FE 31     .word _off016_round_1_2_B1FE_13E - $8000
- D 1 - I - 0x01BC7F 06:BC6F: 05 B2     .word _off016_round_1_2_B205_140
- D 1 - I - 0x01BC81 06:BC71: A8 B1     .word _off016_round_1_2_B1A8_142
- D 1 - I - 0x01BC83 06:BC73: 0B F2     .word _off016_round_1_2_B20B_144 + $8000 - $4000
- D 1 - I - 0x01BC85 06:BC75: 11 B2     .word _off016_round_1_2_B211_146
- D 1 - I - 0x01BC87 06:BC77: C4 31     .word _off016_round_1_2_B1C4_148 - $8000
- D 1 - I - 0x01BC89 06:BC79: CA 31     .word _off016_round_1_2_B1CA_14A - $8000
- D 1 - I - 0x01BC8B 06:BC7B: 16 32     .word _off016_round_1_2_B216_14C - $8000
- D 1 - I - 0x01BC8D 06:BC7D: 1B 32     .word _off016_round_1_2_B21B_14E - $8000
- D 1 - I - 0x01BC8F 06:BC7F: 21 B2     .word _off016_round_1_2_B221_150
- D 1 - I - 0x01BC91 06:BC81: 26 B2     .word _off016_round_1_2_B226_152
- D 1 - I - 0x01BC93 06:BC83: 2C B2     .word _off016_round_1_2_B22C_154
- D 1 - I - 0x01BC95 06:BC85: 33 B2     .word _off016_round_1_2_B233_156
- D 1 - I - 0x01BC97 06:BC87: 16 32     .word _off016_round_1_2_B216_158 - $8000
- D 1 - I - 0x01BC99 06:BC89: 1B 32     .word _off016_round_1_2_B21B_15A - $8000
- D 1 - I - 0x01BC9B 06:BC8B: 38 32     .word _off016_round_1_2_B238_15C - $8000
- D 1 - I - 0x01BC9D 06:BC8D: 3F 32     .word _off016_round_1_2_B23F_15E - $8000
- D 1 - I - 0x01BC9F 06:BC8F: 47 B2     .word _off016_round_1_2_B247_160
- D 1 - I - 0x01BCA1 06:BC91: 4E B2     .word _off016_round_1_2_B24E_162
- D 1 - I - 0x01BCA3 06:BC93: 57 F2     .word _off016_round_1_2_B257_164 + $8000 - $4000
- D 1 - I - 0x01BCA5 06:BC95: 60 B2     .word _off016_round_1_2_B260_166
- D 1 - I - 0x01BCA7 06:BC97: 67 B2     .word _off016_round_1_2_B267_168
- D 1 - I - 0x01BCA9 06:BC99: 08 AC     .word _off016_round_1_2_AC08_16A
- D 1 - I - 0x01BCAB 06:BC9B: 6E F2     .word _off016_round_1_2_B26E_16C + $8000 - $4000
- D 1 - I - 0x01BCAD 06:BC9D: 75 32     .word _off016_round_1_2_B275_16E - $8000
- D 1 - I - 0x01BCAF 06:BC9F: 7D B2     .word _off016_round_1_2_B27D_170
- D 1 - I - 0x01BCB1 06:BCA1: 85 B2     .word _off016_round_1_2_B285_172
- D 1 - I - 0x01BCB3 06:BCA3: 8C B2     .word _off016_round_1_2_B28C_174
- D 1 - I - 0x01BCB5 06:BCA5: 94 B2     .word _off016_round_1_2_B294_176
- D 1 - I - 0x01BCB7 06:BCA7: 9C B2     .word _off016_round_1_2_B29C_178
- D 1 - I - 0x01BCB9 06:BCA9: 08 AC     .word _off016_round_1_2_AC08_17A
- D 1 - I - 0x01BCBB 06:BCAB: 4D 2E     .word _off016_round_1_2_AE4D_17C - $8000
- D 1 - I - 0x01BCBD 06:BCAD: A3 B2     .word _off016_round_1_2_B2A3_17E
- D 1 - I - 0x01BCBF 06:BCAF: A6 B2     .word _off016_round_1_2_B2A6_180
- D 1 - I - 0x01BCC1 06:BCB1: A6 B2     .word _off016_round_1_2_B2A6_182
- D 1 - I - 0x01BCC3 06:BCB3: AB B2     .word _off016_round_1_2_B2AB_184
- D 1 - I - 0x01BCC5 06:BCB5: B1 B2     .word _off016_round_1_2_B2B1_186
- D 1 - I - 0x01BCC7 06:BCB7: B7 B2     .word _off016_round_1_2_B2B7_188
- D 1 - I - 0x01BCC9 06:BCB9: BF B2     .word _off016_round_1_2_B2BF_18A
- D 1 - I - 0x01BCCB 06:BCBB: C6 B2     .word _off016_round_1_2_B2C6_18C
- D 1 - I - 0x01BCCD 06:BCBD: A6 B2     .word _off016_round_1_2_B2A6_18E
- D 1 - I - 0x01BCCF 06:BCBF: CD B2     .word _off016_round_1_2_B2CD_190
- D 1 - I - 0x01BCD1 06:BCC1: D2 F2     .word _off016_round_1_2_B2D2_192 + $8000 - $4000
- D 1 - I - 0x01BCD3 06:BCC3: D8 B2     .word _off016_round_1_2_B2D8_194
- D 1 - I - 0x01BCD5 06:BCC5: DE B2     .word _off016_round_1_2_B2DE_196
- D 1 - I - 0x01BCD7 06:BCC7: A6 B2     .word _off016_round_1_2_B2A6_198
- D 1 - I - 0x01BCD9 06:BCC9: A6 B2     .word _off016_round_1_2_B2A6_19A
- D 1 - I - 0x01BCDB 06:BCCB: A6 72     .word _off016_round_1_2_B2A6_19C - $4000
- D 1 - I - 0x01BCDD 06:BCCD: A6 B2     .word _off016_round_1_2_B2A6_19E
- D 1 - I - 0x01BCDF 06:BCCF: A6 B2     .word _off016_round_1_2_B2A6_1A0
- D 1 - I - 0x01BCE1 06:BCD1: A6 B2     .word _off016_round_1_2_B2A6_1A2
- D 1 - I - 0x01BCE3 06:BCD3: CD B2     .word _off016_round_1_2_B2CD_1A4
- D 1 - I - 0x01BCE5 06:BCD5: D2 B2     .word _off016_round_1_2_B2D2_1A6
- D 1 - I - 0x01BCE7 06:BCD7: D8 B2     .word _off016_round_1_2_B2D8_1A8
- D 1 - I - 0x01BCE9 06:BCD9: DE F2     .word _off016_round_1_2_B2DE_1AA + $8000 - $4000
- D 1 - I - 0x01BCEB 06:BCDB: A6 B2     .word _off016_round_1_2_B2A6_1AC
- D 1 - I - 0x01BCED 06:BCDD: A6 B2     .word _off016_round_1_2_B2A6_1AE
- D 1 - I - 0x01BCEF 06:BCDF: A6 B2     .word _off016_round_1_2_B2A6_1B0
- D 1 - I - 0x01BCF1 06:BCE1: A6 B2     .word _off016_round_1_2_B2A6_1B2
- D 1 - I - 0x01BCF3 06:BCE3: E3 B2     .word _off016_round_1_2_B2E3_1B4
- D 1 - I - 0x01BCF5 06:BCE5: E8 B2     .word _off016_round_1_2_B2E8_1B6
- D 1 - I - 0x01BCF7 06:BCE7: EF F2     .word _off016_round_1_2_B2EF_1B8 + $8000 - $4000
- D 1 - I - 0x01BCF9 06:BCE9: F8 B2     .word _off016_round_1_2_B2F8_1BA
- D 1 - I - 0x01BCFB 06:BCEB: C6 B2     .word _off016_round_1_2_B2C6_1BC
- D 1 - I - 0x01BCFD 06:BCED: A6 B2     .word _off016_round_1_2_B2A6_1BE
- D 1 - I - 0x01BCFF 06:BCEF: A6 32     .word _off016_round_1_2_B2A6_1C0 - $8000
- D 1 - I - 0x01BD01 06:BCF1: A6 B2     .word _off016_round_1_2_B2A6_1C2
- D 1 - I - 0x01BD03 06:BCF3: CD B2     .word _off016_round_1_2_B2CD_1C4
- D 1 - I - 0x01BD05 06:BCF5: D2 B2     .word _off016_round_1_2_B2D2_1C6
- D 1 - I - 0x01BD07 06:BCF7: D8 B2     .word _off016_round_1_2_B2D8_1C8
- D 1 - I - 0x01BD09 06:BCF9: DE B2     .word _off016_round_1_2_B2DE_1CA
- D 1 - I - 0x01BD0B 06:BCFB: A6 F2     .word _off016_round_1_2_B2A6_1CC + $8000 - $4000
- D 1 - I - 0x01BD0D 06:BCFD: A6 B2     .word _off016_round_1_2_B2A6_1CE
- D 1 - I - 0x01BD0F 06:BCFF: A6 F2     .word _off016_round_1_2_B2A6_1D0 + $8000 - $4000
- D 1 - I - 0x01BD11 06:BD01: A6 B2     .word _off016_round_1_2_B2A6_1D2
- D 1 - I - 0x01BD13 06:BD03: FF B2     .word _off016_round_1_2_B2FF_1D4
- D 1 - I - 0x01BD15 06:BD05: 6E 6F     .word _off016_round_1_2_AF6E_1D6 - $4000
- D 1 - I - 0x01BD17 06:BD07: 75 AF     .word _off016_round_1_2_AF75_1D8
- D 1 - I - 0x01BD19 06:BD09: 04 B3     .word _off016_round_1_2_B304_1DA
- D 1 - I - 0x01BD1B 06:BD0B: A6 B2     .word _off016_round_1_2_B2A6_1DC
- D 1 - I - 0x01BD1D 06:BD0D: A6 F2     .word _off016_round_1_2_B2A6_1DE + $8000 - $4000
- D 1 - I - 0x01BD1F 06:BD0F: A6 72     .word _off016_round_1_2_B2A6_1E0 - $4000
- D 1 - I - 0x01BD21 06:BD11: A6 B2     .word _off016_round_1_2_B2A6_1E2
- D 1 - I - 0x01BD23 06:BD13: 09 B3     .word _off016_round_1_2_B309_1E4
- D 1 - I - 0x01BD25 06:BD15: 0C B3     .word _off016_round_1_2_B30C_1E6
- D 1 - I - 0x01BD27 06:BD17: CE A9     .word _off016_round_1_2_A9CE_1E8
- D 1 - I - 0x01BD29 06:BD19: 10 B3     .word _off016_round_1_2_B310_1EA
- D 1 - I - 0x01BD2B 06:BD1B: 14 B3     .word _off016_round_1_2_B314_1EC
- D 1 - I - 0x01BD2D 06:BD1D: 19 B3     .word _off016_round_1_2_B319_1EE
- D 1 - I - 0x01BD2F 06:BD1F: 1E 33     .word _off016_round_1_2_B31E_1F0 - $8000
- D 1 - I - 0x01BD31 06:BD21: 25 B3     .word _off016_round_1_2_B325_1F2
- D 1 - I - 0x01BD33 06:BD23: 2C B3     .word _off016_round_1_2_B32C_1F4
- D 1 - I - 0x01BD35 06:BD25: 33 B3     .word _off016_round_1_2_B333_1F6
- D 1 - I - 0x01BD37 06:BD27: 39 B3     .word _off016_round_1_2_B339_1F8
- D 1 - I - 0x01BD39 06:BD29: 3F B3     .word _off016_round_1_2_B33F_1FA
- D 1 - I - 0x01BD3B 06:BD2B: 45 B3     .word _off016_round_1_2_B345_1FC
- D 1 - I - 0x01BD3D 06:BD2D: 4B B3     .word _off016_round_1_2_B34B_1FE
; 
- D 1 - I - 0x01BD3F 06:BD2F: CC AA     .word _off016_round_1_3_AACC_000
- D 1 - I - 0x01BD41 06:BD31: D2 AA     .word _off016_round_1_3_AAD2_002
- D 1 - I - 0x01BD43 06:BD33: D8 AA     .word _off016_round_1_3_AAD8_004
- D 1 - I - 0x01BD45 06:BD35: 50 B3     .word _off016_round_1_3_B350_006
- D 1 - I - 0x01BD47 06:BD37: 59 B3     .word _off016_round_1_3_B359_008
- D 1 - I - 0x01BD49 06:BD39: EA AA     .word _off016_round_1_3_AAEA_00A
- D 1 - I - 0x01BD4B 06:BD3B: CC AA     .word _off016_round_1_3_AACC_00C
- D 1 - I - 0x01BD4D 06:BD3D: D2 AA     .word _off016_round_1_3_AAD2_00E
- D 1 - I - 0x01BD4F 06:BD3F: 61 F3     .word _off016_round_1_3_B361_010 + $8000 - $4000
- D 1 - I - 0x01BD51 06:BD41: 6A 33     .word _off016_round_1_3_B36A_012 - $8000
- D 1 - I - 0x01BD53 06:BD43: 73 B3     .word _off016_round_1_3_B373_014
- D 1 - I - 0x01BD55 06:BD45: EA AA     .word _off016_round_1_3_AAEA_016
- D 1 - I - 0x01BD57 06:BD47: CD B2     .word _off016_round_1_3_B2CD_018
- D 1 - I - 0x01BD59 06:BD49: D2 B2     .word _off016_round_1_3_B2D2_01A
- D 1 - I - 0x01BD5B 06:BD4B: D8 B2     .word _off016_round_1_3_B2D8_01C
- D 1 - I - 0x01BD5D 06:BD4D: DE B2     .word _off016_round_1_3_B2DE_01E
- D 1 - I - 0x01BD5F 06:BD4F: 7B B3     .word _off016_round_1_3_B37B_020
- D 1 - I - 0x01BD61 06:BD51: 81 F3     .word _off016_round_1_3_B381_022 + $8000 - $4000
- D 1 - I - 0x01BD63 06:BD53: 87 B3     .word _off016_round_1_3_B387_024
- D 1 - I - 0x01BD65 06:BD55: 8E 33     .word _off016_round_1_3_B38E_026 - $8000
- D 1 - I - 0x01BD67 06:BD57: 95 B3     .word _off016_round_1_3_B395_028
- D 1 - I - 0x01BD69 06:BD59: 37 B0     .word _off016_round_1_3_B037_02A
- D 1 - I - 0x01BD6B 06:BD5B: 9A B3     .word _off016_round_1_3_B39A_02C
- D 1 - I - 0x01BD6D 06:BD5D: A0 B3     .word _off016_round_1_3_B3A0_02E
- D 1 - I - 0x01BD6F 06:BD5F: A6 73     .word _off016_round_1_3_B3A6_030 - $4000
- D 1 - I - 0x01BD71 06:BD61: AC B3     .word _off016_round_1_3_B3AC_032
- D 1 - I - 0x01BD73 06:BD63: 33 B0     .word _off016_round_1_3_B033_034
- D 1 - I - 0x01BD75 06:BD65: 37 B0     .word _off016_round_1_3_B037_036
- D 1 - I - 0x01BD77 06:BD67: B0 B3     .word _off016_round_1_3_B3B0_038
- D 1 - I - 0x01BD79 06:BD69: E8 B2     .word _off016_round_1_3_B2E8_03A
- D 1 - I - 0x01BD7B 06:BD6B: B5 B3     .word _off016_round_1_3_B3B5_03C
- D 1 - I - 0x01BD7D 06:BD6D: C1 B3     .word _off016_round_1_3_B3C1_03E
- D 1 - I - 0x01BD7F 06:BD6F: CD B3     .word _off016_round_1_3_B3CD_040
- D 1 - I - 0x01BD81 06:BD71: DC B3     .word _off016_round_1_3_B3DC_042
- D 1 - I - 0x01BD83 06:BD73: E9 33     .word _off016_round_1_3_B3E9_044 - $8000
- D 1 - I - 0x01BD85 06:BD75: F6 F3     .word _off016_round_1_3_B3F6_046 + $8000 - $4000
- D 1 - I - 0x01BD87 06:BD77: FE AE     .word _off016_round_1_3_AEFE_048
- D 1 - I - 0x01BD89 06:BD79: 08 AF     .word _off016_round_1_3_AF08_04A
- D 1 - I - 0x01BD8B 06:BD7B: EF F2     .word _off016_round_1_3_B2EF_04C + $8000 - $4000
- D 1 - I - 0x01BD8D 06:BD7D: 03 B4     .word _off016_round_1_3_B403_04E
- D 1 - I - 0x01BD8F 06:BD7F: 0A B4     .word _off016_round_1_3_B40A_050
- D 1 - I - 0x01BD91 06:BD81: 08 B0     .word _off016_round_1_3_B008_052
- D 1 - I - 0x01BD93 06:BD83: B7 F0     .word _off016_round_1_3_B0B7_054 + $8000 - $4000
- D 1 - I - 0x01BD95 06:BD85: 10 B4     .word _off016_round_1_3_B410_056
- D 1 - I - 0x01BD97 06:BD87: 13 B4     .word _off016_round_1_3_B413_058
- D 1 - I - 0x01BD99 06:BD89: 19 74     .word _off016_round_1_3_B419_05A - $4000
- D 1 - I - 0x01BD9B 06:BD8B: 1F B4     .word _off016_round_1_3_B41F_05C
- D 1 - I - 0x01BD9D 06:BD8D: 25 B4     .word _off016_round_1_3_B425_05E
- D 1 - I - 0x01BD9F 06:BD8F: 10 B4     .word _off016_round_1_3_B410_060
- D 1 - I - 0x01BDA1 06:BD91: 2B B4     .word _off016_round_1_3_B42B_062
- D 1 - I - 0x01BDA3 06:BD93: 30 B4     .word _off016_round_1_3_B430_064
- D 1 - I - 0x01BDA5 06:BD95: 37 B4     .word _off016_round_1_3_B437_066
- D 1 - I - 0x01BDA7 06:BD97: 3F B4     .word _off016_round_1_3_B43F_068
- D 1 - I - 0x01BDA9 06:BD99: 46 B4     .word _off016_round_1_3_B446_06A
- D 1 - I - 0x01BDAB 06:BD9B: 4E F4     .word _off016_round_1_3_B44E_06C + $8000 - $4000
- D 1 - I - 0x01BDAD 06:BD9D: 56 B4     .word _off016_round_1_3_B456_06E
- D 1 - I - 0x01BDAF 06:BD9F: 75 AF     .word _off016_round_1_3_AF75_070
- D 1 - I - 0x01BDB1 06:BDA1: 6E AF     .word _off016_round_1_3_AF6E_072
- D 1 - I - 0x01BDB3 06:BDA3: 75 EF     .word _off016_round_1_3_AF75_074 + $8000 - $4000
- D 1 - I - 0x01BDB5 06:BDA5: 6E AF     .word _off016_round_1_3_AF6E_076
- D 1 - I - 0x01BDB7 06:BDA7: 5D B4     .word _off016_round_1_3_B45D_078
- D 1 - I - 0x01BDB9 06:BDA9: 66 B4     .word _off016_round_1_3_B466_07A
- D 1 - I - 0x01BDBB 06:BDAB: 6F 34     .word _off016_round_1_3_B46F_07C - $8000
- D 1 - I - 0x01BDBD 06:BDAD: 7B B4     .word _off016_round_1_3_B47B_07E
- D 1 - I - 0x01BDBF 06:BDAF: 85 B4     .word _off016_round_1_3_B485_080
- D 1 - I - 0x01BDC1 06:BDB1: D2 B2     .word _off016_round_1_3_B2D2_082
- D 1 - I - 0x01BDC3 06:BDB3: 8C B4     .word _off016_round_1_3_B48C_084
- D 1 - I - 0x01BDC5 06:BDB5: 95 B4     .word _off016_round_1_3_B495_086
- D 1 - I - 0x01BDC7 06:BDB7: 9E B4     .word _off016_round_1_3_B49E_088
- D 1 - I - 0x01BDC9 06:BDB9: AC B4     .word _off016_round_1_3_B4AC_08A
- D 1 - I - 0x01BDCB 06:BDBB: B7 74     .word _off016_round_1_3_B4B7_08C - $4000
- D 1 - I - 0x01BDCD 06:BDBD: D2 B2     .word _off016_round_1_3_B2D2_08E
- D 1 - I - 0x01BDCF 06:BDBF: D8 B2     .word _off016_round_1_3_B2D8_090
- D 1 - I - 0x01BDD1 06:BDC1: DE B2     .word _off016_round_1_3_B2DE_092
- D 1 - I - 0x01BDD3 06:BDC3: DE AA     .word _off016_round_1_3_AADE_094
- D 1 - I - 0x01BDD5 06:BDC5: E4 EA     .word _off016_round_1_3_AAE4_096 + $8000 - $4000
- D 1 - I - 0x01BDD7 06:BDC7: BE B4     .word _off016_round_1_3_B4BE_098
- D 1 - I - 0x01BDD9 06:BDC9: C6 B4     .word _off016_round_1_3_B4C6_09A
- D 1 - I - 0x01BDDB 06:BDCB: CE B4     .word _off016_round_1_3_B4CE_09C
- D 1 - I - 0x01BDDD 06:BDCD: D8 AA     .word _off016_round_1_3_AAD8_09E
- D 1 - I - 0x01BDDF 06:BDCF: DE 2A     .word _off016_round_1_3_AADE_0A0 - $8000
- D 1 - I - 0x01BDE1 06:BDD1: E4 AA     .word _off016_round_1_3_AAE4_0A2
- D 1 - I - 0x01BDE3 06:BDD3: EA AA     .word _off016_round_1_3_AAEA_0A4
- D 1 - I - 0x01BDE5 06:BDD5: CC EA     .word _off016_round_1_3_AACC_0A6 + $8000 - $4000
- D 1 - I - 0x01BDE7 06:BDD7: D2 AA     .word _off016_round_1_3_AAD2_0A8
- D 1 - I - 0x01BDE9 06:BDD9: D8 AA     .word _off016_round_1_3_AAD8_0AA
- D 1 - I - 0x01BDEB 06:BDDB: F0 AA     .word _off016_round_1_3_AAF0_0AC
- D 1 - I - 0x01BDED 06:BDDD: F8 AA     .word _off016_round_1_3_AAF8_0AE
- D 1 - I - 0x01BDEF 06:BDDF: 00 EB     .word _off016_round_1_3_AB00_0B0 + $8000 - $4000
- D 1 - I - 0x01BDF1 06:BDE1: D6 B4     .word _off016_round_1_3_B4D6_0B2
- D 1 - I - 0x01BDF3 06:BDE3: DE B4     .word _off016_round_1_3_B4DE_0B4
- D 1 - I - 0x01BDF5 06:BDE5: E4 B4     .word _off016_round_1_3_B4E4_0B6
- D 1 - I - 0x01BDF7 06:BDE7: EA B4     .word _off016_round_1_3_B4EA_0B8
- D 1 - I - 0x01BDF9 06:BDE9: 1F A9     .word _off016_round_1_3_A91F_0BA
- D 1 - I - 0x01BDFB 06:BDEB: 3F AB     .word _off016_round_1_3_AB3F_0BC
- D 1 - I - 0x01BDFD 06:BDED: EE F4     .word _off016_round_1_3_B4EE_0BE + $8000 - $4000
- D 1 - I - 0x01BDFF 06:BDEF: F3 B4     .word _off016_round_1_3_B4F3_0C0
- D 1 - I - 0x01BE01 06:BDF1: F8 B4     .word _off016_round_1_3_B4F8_0C2
- D 1 - I - 0x01BE03 06:BDF3: FF F4     .word _off016_round_1_3_B4FF_0C4 + $8000 - $4000
- D 1 - I - 0x01BE05 06:BDF5: 06 B5     .word _off016_round_1_3_B506_0C6
- D 1 - I - 0x01BE07 06:BDF7: 0C AE     .word _off016_round_1_3_AE0C_0C8
- D 1 - I - 0x01BE09 06:BDF9: 0C B5     .word _off016_round_1_3_B50C_0CA
- D 1 - I - 0x01BE0B 06:BDFB: 63 2E     .word _off016_round_1_3_AE63_0CC - $8000
- D 1 - I - 0x01BE0D 06:BDFD: 07 AE     .word _off016_round_1_3_AE07_0CE
- D 1 - I - 0x01BE0F 06:BDFF: 12 B5     .word _off016_round_1_3_B512_0D0
- D 1 - I - 0x01BE11 06:BE01: 19 B5     .word _off016_round_1_3_B519_0D2
- D 1 - I - 0x01BE13 06:BE03: 1F F5     .word _off016_round_1_3_B51F_0D4 + $8000 - $4000
- D 1 - I - 0x01BE15 06:BE05: D3 2D     .word _off016_round_1_3_ADD3_0D6 - $8000
- D 1 - I - 0x01BE17 06:BE07: 8B 2B     .word _off016_round_1_3_AB8B_0D8 - $8000
- D 1 - I - 0x01BE19 06:BE09: 24 35     .word _off016_round_1_3_B524_0DA - $8000
- D 1 - I - 0x01BE1B 06:BE0B: 2A 35     .word _off016_round_1_3_B52A_0DC - $8000
- D 1 - I - 0x01BE1D 06:BE0D: 30 B5     .word _off016_round_1_3_B530_0DE
- D 1 - I - 0x01BE1F 06:BE0F: 8B AB     .word _off016_round_1_3_AB8B_0E0
- D 1 - I - 0x01BE21 06:BE11: 35 B5     .word _off016_round_1_3_B535_0E2
- D 1 - I - 0x01BE23 06:BE13: 3C B5     .word _off016_round_1_3_B53C_0E4
- D 1 - I - 0x01BE25 06:BE15: 42 B5     .word _off016_round_1_3_B542_0E6
- D 1 - I - 0x01BE27 06:BE17: 47 B5     .word _off016_round_1_3_B547_0E8
- D 1 - I - 0x01BE29 06:BE19: 4B 35     .word _off016_round_1_3_B54B_0EA - $8000
- D 1 - I - 0x01BE2B 06:BE1B: 50 B5     .word _off016_round_1_3_B550_0EC
- D 1 - I - 0x01BE2D 06:BE1D: 57 35     .word _off016_round_1_3_B557_0EE - $8000
- D 1 - I - 0x01BE2F 06:BE1F: 5E F5     .word _off016_round_1_3_B55E_0F0 + $8000 - $4000
- D 1 - I - 0x01BE31 06:BE21: 65 B5     .word _off016_round_1_3_B565_0F2
- D 1 - I - 0x01BE33 06:BE23: 6A B5     .word _off016_round_1_3_B56A_0F4
- D 1 - I - 0x01BE35 06:BE25: 71 B5     .word _off016_round_1_3_B571_0F6
- D 1 - I - 0x01BE37 06:BE27: 78 B5     .word _off016_round_1_3_B578_0F8
- D 1 - I - 0x01BE39 06:BE29: 7F B5     .word _off016_round_1_3_B57F_0FA
- D 1 - I - 0x01BE3B 06:BE2B: 84 B5     .word _off016_round_1_3_B584_0FC
- D 1 - I - 0x01BE3D 06:BE2D: 89 B5     .word _off016_round_1_3_B589_0FE
- D 1 - I - 0x01BE3F 06:BE2F: 8E B5     .word _off016_round_1_3_B58E_100
- D 1 - I - 0x01BE41 06:BE31: 93 B5     .word _off016_round_1_3_B593_102
- D 1 - I - 0x01BE43 06:BE33: 97 B5     .word _off016_round_1_3_B597_104
- D 1 - I - 0x01BE45 06:BE35: 9E B5     .word _off016_round_1_3_B59E_106
- D 1 - I - 0x01BE47 06:BE37: A5 35     .word _off016_round_1_3_B5A5_108 - $8000
- D 1 - I - 0x01BE49 06:BE39: AC 35     .word _off016_round_1_3_B5AC_10A - $8000
- D 1 - I - 0x01BE4B 06:BE3B: B1 35     .word _off016_round_1_3_B5B1_10C - $8000
- D 1 - I - 0x01BE4D 06:BE3D: B6 35     .word _off016_round_1_3_B5B6_10E - $8000
- D 1 - I - 0x01BE4F 06:BE3F: BB 35     .word _off016_round_1_3_B5BB_110 - $8000
- D 1 - I - 0x01BE51 06:BE41: C0 35     .word _off016_round_1_3_B5C0_112 - $8000
- D 1 - I - 0x01BE53 06:BE43: C5 F5     .word _off016_round_1_3_B5C5_114 + $8000 - $4000
- D 1 - I - 0x01BE55 06:BE45: CD B5     .word _off016_round_1_3_B5CD_116
- D 1 - I - 0x01BE57 06:BE47: D6 B5     .word _off016_round_1_3_B5D6_118
- D 1 - I - 0x01BE59 06:BE49: DD 75     .word _off016_round_1_3_B5DD_11A - $4000
- D 1 - I - 0x01BE5B 06:BE4B: BB 35     .word _off016_round_1_3_B5BB_11C - $8000
- D 1 - I - 0x01BE5D 06:BE4D: C0 35     .word _off016_round_1_3_B5C0_11E - $8000
- D 1 - I - 0x01BE5F 06:BE4F: E4 35     .word _off016_round_1_3_B5E4_120 - $8000
- D 1 - I - 0x01BE61 06:BE51: E9 35     .word _off016_round_1_3_B5E9_122 - $8000
- D 1 - I - 0x01BE63 06:BE53: 7C B1     .word _off016_round_1_3_B17C_124
- D 1 - I - 0x01BE65 06:BE55: 81 B1     .word _off016_round_1_3_B181_126
- D 1 - I - 0x01BE67 06:BE57: ED B5     .word _off016_round_1_3_B5ED_128
- D 1 - I - 0x01BE69 06:BE59: F3 F5     .word _off016_round_1_3_B5F3_12A + $8000 - $4000
- D 1 - I - 0x01BE6B 06:BE5B: FA B5     .word _off016_round_1_3_B5FA_12C
- D 1 - I - 0x01BE6D 06:BE5D: 00 B6     .word _off016_round_1_3_B600_12E
- D 1 - I - 0x01BE6F 06:BE5F: 06 B6     .word _off016_round_1_3_B606_130
- D 1 - I - 0x01BE71 06:BE61: 0B 36     .word _off016_round_1_3_B60B_132 - $8000
- D 1 - I - 0x01BE73 06:BE63: 10 36     .word _off016_round_1_3_B610_134 - $8000
- D 1 - I - 0x01BE75 06:BE65: 15 36     .word _off016_round_1_3_B615_136 - $8000
- D 1 - I - 0x01BE77 06:BE67: 1A 36     .word _off016_round_1_3_B61A_138 - $8000
- D 1 - I - 0x01BE79 06:BE69: 1F 36     .word _off016_round_1_3_B61F_13A - $8000
- D 1 - I - 0x01BE7B 06:BE6B: 24 B6     .word _off016_round_1_3_B624_13C
- D 1 - I - 0x01BE7D 06:BE6D: 29 B6     .word _off016_round_1_3_B629_13E
- D 1 - I - 0x01BE7F 06:BE6F: 2E B6     .word _off016_round_1_3_B62E_140
- D 1 - I - 0x01BE81 06:BE71: 65 B5     .word _off016_round_1_3_B565_142
- D 1 - I - 0x01BE83 06:BE73: 33 B6     .word _off016_round_1_3_B633_144
- D 1 - I - 0x01BE85 06:BE75: 3A 36     .word _off016_round_1_3_B63A_146 - $8000
- D 1 - I - 0x01BE87 06:BE77: 41 36     .word _off016_round_1_3_B641_148 - $8000
- D 1 - I - 0x01BE89 06:BE79: 15 36     .word _off016_round_1_3_B615_14A - $8000
- D 1 - I - 0x01BE8B 06:BE7B: 1A 36     .word _off016_round_1_3_B61A_14C - $8000
- D 1 - I - 0x01BE8D 06:BE7D: 1F 36     .word _off016_round_1_3_B61F_14E - $8000
- D 1 - I - 0x01BE8F 06:BE7F: 24 B6     .word _off016_round_1_3_B624_150
- D 1 - I - 0x01BE91 06:BE81: 29 B6     .word _off016_round_1_3_B629_152
- D 1 - I - 0x01BE93 06:BE83: 2E B6     .word _off016_round_1_3_B62E_154
- D 1 - I - 0x01BE95 06:BE85: 48 B6     .word _off016_round_1_3_B648_156
- D 1 - I - 0x01BE97 06:BE87: 4E 76     .word _off016_round_1_3_B64E_158 - $4000
- D 1 - I - 0x01BE99 06:BE89: 54 B6     .word _off016_round_1_3_B654_15A
- D 1 - I - 0x01BE9B 06:BE8B: 5B B6     .word _off016_round_1_3_B65B_15C
- D 1 - I - 0x01BE9D 06:BE8D: 61 B6     .word _off016_round_1_3_B661_15E
- D 1 - I - 0x01BE9F 06:BE8F: 67 B6     .word _off016_round_1_3_B667_160
- D 1 - I - 0x01BEA1 06:BE91: 73 AC     .word _off016_round_1_3_AC73_162
- D 1 - I - 0x01BEA3 06:BE93: 6F B6     .word _off016_round_1_3_B66F_164
- D 1 - I - 0x01BEA5 06:BE95: 78 B6     .word _off016_round_1_3_B678_166
- D 1 - I - 0x01BEA7 06:BE97: 82 B6     .word _off016_round_1_3_B682_168
- D 1 - I - 0x01BEA9 06:BE99: 65 ED     .word _off016_round_1_3_AD65_16A + $8000 - $4000
- D 1 - I - 0x01BEAB 06:BE9B: 6D 2D     .word _off016_round_1_3_AD6D_16C - $8000
- D 1 - I - 0x01BEAD 06:BE9D: 8A 76     .word _off016_round_1_3_B68A_16E - $4000
- D 1 - I - 0x01BEAF 06:BE9F: 92 36     .word _off016_round_1_3_B692_170 - $8000
- D 1 - I - 0x01BEB1 06:BEA1: 99 B6     .word _off016_round_1_3_B699_172
- D 1 - I - 0x01BEB3 06:BEA3: A0 B6     .word _off016_round_1_3_B6A0_174
- D 1 - I - 0x01BEB5 06:BEA5: 15 B6     .word _off016_round_1_3_B615_176
- D 1 - I - 0x01BEB7 06:BEA7: A4 B6     .word _off016_round_1_3_B6A4_178
- D 1 - I - 0x01BEB9 06:BEA9: AB B6     .word _off016_round_1_3_B6AB_17A
- D 1 - I - 0x01BEBB 06:BEAB: B2 B6     .word _off016_round_1_3_B6B2_17C
- D 1 - I - 0x01BEBD 06:BEAD: B9 B6     .word _off016_round_1_3_B6B9_17E
- D 1 - I - 0x01BEBF 06:BEAF: BD B6     .word _off016_round_1_3_B6BD_180
- D 1 - I - 0x01BEC1 06:BEB1: 07 AE     .word _off016_round_1_3_AE07_182
- D 1 - I - 0x01BEC3 06:BEB3: 17 AE     .word _off016_round_1_3_AE17_184
- D 1 - I - 0x01BEC5 06:BEB5: 44 AE     .word _off016_round_1_3_AE44_186
- D 1 - I - 0x01BEC7 06:BEB7: C1 76     .word _off016_round_1_3_B6C1_188 - $4000
- D 1 - I - 0x01BEC9 06:BEB9: C8 B6     .word _off016_round_1_3_B6C8_18A
- D 1 - I - 0x01BECB 06:BEBB: CE 36     .word _off016_round_1_3_B6CE_18C - $8000
- D 1 - I - 0x01BECD 06:BEBD: 90 AE     .word _off016_round_1_3_AE90_18E
- D 1 - I - 0x01BECF 06:BEBF: BD B6     .word _off016_round_1_3_B6BD_190
- D 1 - I - 0x01BED1 06:BEC1: 44 AE     .word _off016_round_1_3_AE44_192
- D 1 - I - 0x01BED3 06:BEC3: D4 B6     .word _off016_round_1_3_B6D4_194
- D 1 - I - 0x01BED5 06:BEC5: D7 F6     .word _off016_round_1_3_B6D7_196 + $8000 - $4000
- D 1 - I - 0x01BED7 06:BEC7: DB 36     .word _off016_round_1_3_B6DB_198 - $8000
- D 1 - I - 0x01BED9 06:BEC9: DF B6     .word _off016_round_1_3_B6DF_19A
- D 1 - I - 0x01BEDB 06:BECB: E2 B6     .word _off016_round_1_3_B6E2_19C
- D 1 - I - 0x01BEDD 06:BECD: E9 F6     .word _off016_round_1_3_B6E9_19E + $8000 - $4000
- D 1 - I - 0x01BEDF 06:BECF: B7 B0     .word _off016_round_1_3_B0B7_1A0
- D 1 - I - 0x01BEE1 06:BED1: BB 70     .word _off016_round_1_3_B0BB_1A2 - $4000
- D 1 - I - 0x01BEE3 06:BED3: BF B0     .word _off016_round_1_3_B0BF_1A4
- D 1 - I - 0x01BEE5 06:BED5: 08 B0     .word _off016_round_1_3_B008_1A6
- D 1 - I - 0x01BEE7 06:BED7: EF B6     .word _off016_round_1_3_B6EF_1A8
- D 1 - I - 0x01BEE9 06:BED9: FA ED     .word _off016_round_1_3_ADFA_1AA + $8000 - $4000
- D 1 - I - 0x01BEEB 06:BEDB: 0B 2B     .word _off016_round_1_3_AB0B_1AC - $8000
- D 1 - I - 0x01BEED 06:BEDD: B1 AA     .word _off016_round_1_3_AAB1_1AE
- D 1 - I - 0x01BEEF 06:BEDF: B1 EB     .word _off016_round_1_3_ABB1_1B0 + $8000 - $4000
- D 1 - I - 0x01BEF1 06:BEE1: 30 B5     .word _off016_round_1_3_B530_1B2
- D 1 - I - 0x01BEF3 06:BEE3: D7 AD     .word _off016_round_1_3_ADD7_1B4
- D 1 - I - 0x01BEF5 06:BEE5: F2 B6     .word _off016_round_1_3_B6F2_1B6
- D 1 - I - 0x01BEF7 06:BEE7: FA B6     .word _off016_round_1_3_B6FA_1B8
- D 1 - I - 0x01BEF9 06:BEE9: 03 B7     .word _off016_round_1_3_B703_1BA
- D 1 - I - 0x01BEFB 06:BEEB: 09 B7     .word _off016_round_1_3_B709_1BC
- D 1 - I - 0x01BEFD 06:BEED: 0B B7     .word _off016_round_1_3_B70B_1BE
- D 1 - I - 0x01BEFF 06:BEEF: 0C B7     .word _off016_round_1_3_B70C_1C0
- D 1 - I - 0x01BF01 06:BEF1: 30 B5     .word _off016_round_1_3_B530_1C2
- D 1 - I - 0x01BF03 06:BEF3: 0E B7     .word _off016_round_1_3_B70E_1C4
- D 1 - I - 0x01BF05 06:BEF5: 15 B7     .word _off016_round_1_3_B715_1C6
- D 1 - I - 0x01BF07 06:BEF7: 1E B7     .word _off016_round_1_3_B71E_1C8
- D 1 - I - 0x01BF09 06:BEF9: 24 37     .word _off016_round_1_3_B724_1CA - $8000
- D 1 - I - 0x01BF0B 06:BEFB: 29 B7     .word _off016_round_1_3_B729_1CC
- D 1 - I - 0x01BF0D 06:BEFD: 2F B7     .word _off016_round_1_3_B72F_1CE
- D 1 - I - 0x01BF0F 06:BEFF: 37 B7     .word _off016_round_1_3_B737_1D0
- D 1 - I - 0x01BF11 06:BF01: 30 B5     .word _off016_round_1_3_B530_1D2
- D 1 - I - 0x01BF13 06:BF03: 8B 2B     .word _off016_round_1_3_AB8B_1D4 - $8000
- D 1 - I - 0x01BF15 06:BF05: 3E B7     .word _off016_round_1_3_B73E_1D6
- D 1 - I - 0x01BF17 06:BF07: 44 B7     .word _off016_round_1_3_B744_1D8
- D 1 - I - 0x01BF19 06:BF09: 4A B7     .word _off016_round_1_3_B74A_1DA
- D 1 - I - 0x01BF1B 06:BF0B: 09 B7     .word _off016_round_1_3_B709_1DC
- D 1 - I - 0x01BF1D 06:BF0D: 0B B7     .word _off016_round_1_3_B70B_1DE
- D 1 - I - 0x01BF1F 06:BF0F: 02 AE     .word _off016_round_1_3_AE02_1E0
- D 1 - I - 0x01BF21 06:BF11: 90 AE     .word _off016_round_1_3_AE90_1E2
- D 1 - I - 0x01BF23 06:BF13: 4F B7     .word _off016_round_1_3_B74F_1E4
- D 1 - I - 0x01BF25 06:BF15: 54 B7     .word _off016_round_1_3_B754_1E6
- D 1 - I - 0x01BF27 06:BF17: 59 B7     .word _off016_round_1_3_B759_1E8
- D 1 - I - 0x01BF29 06:BF19: 5F B7     .word _off016_round_1_3_B75F_1EA
- D 1 - I - 0x01BF2B 06:BF1B: 67 B7     .word _off016_round_1_3_B767_1EC
- D 1 - I - 0x01BF2D 06:BF1D: 07 2E     .word _off016_round_1_3_AE07_1EE - $8000
- D 1 - I - 0x01BF2F 06:BF1F: 6F B7     .word _off016_round_1_3_B76F_1F0
- D 1 - I - 0x01BF31 06:BF21: 76 B7     .word _off016_round_1_3_B776_1F2
- D 1 - I - 0x01BF33 06:BF23: 7D B7     .word _off016_round_1_3_B77D_1F4
- D 1 - I - 0x01BF35 06:BF25: 83 B7     .word _off016_round_1_3_B783_1F6
- D 1 - I - 0x01BF37 06:BF27: 94 AE     .word _off016_round_1_3_AE94_1F8
- D 1 - I - 0x01BF39 06:BF29: 99 AE     .word _off016_round_1_3_AE99_1FA
- D 1 - I - 0x01BF3B 06:BF2B: 9E AE     .word _off016_round_1_3_AE9E_1FC
- D 1 - I - 0x01BF3D 06:BF2D: A3 AE     .word _off016_round_1_3_AEA3_1FE
; 
- D 1 - I - 0x01BF3F 06:BF2F: 00 00     .word $0000 ; end token



_off015_0x01BD2A_00:
_off015_0x01BD2A_01:
_off015_0x01BD2A_02:
; objects
- D 1 - I - 0x01BF41 06:BF31: 11        .byte con_obj_id_11   ; 00 
- D 1 - I - 0x01BF42 06:BF32: 11        .byte con_obj_id_11   ; 01 
- D 1 - I - 0x01BF43 06:BF33: 12        .byte con_obj_id_12   ; 02 
- D 1 - I - 0x01BF44 06:BF34: 11        .byte con_obj_id_11   ; 03 
- D 1 - I - 0x01BF45 06:BF35: 24        .byte con_obj_id_24   ; 04 
- D 1 - I - 0x01BF46 06:BF36: 11        .byte con_obj_id_11   ; 05 
- D 1 - I - 0x01BF47 06:BF37: 22        .byte con_obj_id_22   ; 06 
- D 1 - I - 0x01BF48 06:BF38: 12        .byte con_obj_id_12   ; 07 
- D 1 - I - 0x01BF49 06:BF39: 25        .byte con_obj_id_25   ; 08 
- D 1 - I - 0x01BF4A 06:BF3A: 10        .byte con_obj_id_10   ; 09 
- D 1 - I - 0x01BF4B 06:BF3B: 11        .byte con_obj_id_11   ; 0A 
- D 1 - I - 0x01BF4C 06:BF3C: 28        .byte con_obj_id_28   ; 0B 
- D 1 - I - 0x01BF4D 06:BF3D: 10        .byte con_obj_id_10   ; 0C 
- D 1 - I - 0x01BF4E 06:BF3E: 11        .byte con_obj_id_11   ; 0D 
- D 1 - I - 0x01BF4F 06:BF3F: 11        .byte con_obj_id_11   ; 0E 
- D 1 - I - 0x01BF50 06:BF40: 22        .byte con_obj_id_22   ; 0F 
- D 1 - I - 0x01BF51 06:BF41: 11        .byte con_obj_id_11   ; 10 
- D 1 - I - 0x01BF52 06:BF42: 28        .byte con_obj_id_28   ; 11 
- D 1 - I - 0x01BF53 06:BF43: 11        .byte con_obj_id_11   ; 12 
- D 1 - I - 0x01BF54 06:BF44: 22        .byte con_obj_id_22   ; 13 
- D 1 - I - 0x01BF55 06:BF45: 29        .byte con_obj_id_29   ; 14 
- D 1 - I - 0x01BF56 06:BF46: 10        .byte con_obj_id_10   ; 15 
- D 1 - I - 0x01BF57 06:BF47: 12        .byte con_obj_id_12   ; 16 
- D 1 - I - 0x01BF58 06:BF48: 11        .byte con_obj_id_11   ; 17 
- D 1 - I - 0x01BF59 06:BF49: 22        .byte con_obj_id_22   ; 18 
- D 1 - I - 0x01BF5A 06:BF4A: 11        .byte con_obj_id_11   ; 19 
- D 1 - I - 0x01BF5B 06:BF4B: 11        .byte con_obj_id_11   ; 1A 
- D 1 - I - 0x01BF5C 06:BF4C: 11        .byte con_obj_id_11   ; 1B 
- D 1 - I - 0x01BF5D 06:BF4D: 13        .byte con_obj_id_13   ; 1C 
- D 1 - I - 0x01BF5E 06:BF4E: 11        .byte con_obj_id_11   ; 1D 
- D 1 - I - 0x01BF5F 06:BF4F: 13        .byte con_obj_id_13   ; 1E 
- D 1 - I - 0x01BF60 06:BF50: 11        .byte con_obj_id_11   ; 1F 
- D 1 - I - 0x01BF61 06:BF51: 29        .byte con_obj_id_29   ; 20 
- D 1 - I - 0x01BF62 06:BF52: 24        .byte con_obj_id_24   ; 21 
- D 1 - I - 0x01BF63 06:BF53: 11        .byte con_obj_id_11   ; 22 
- D 1 - I - 0x01BF64 06:BF54: 11        .byte con_obj_id_11   ; 23 
- D 1 - I - 0x01BF65 06:BF55: 29        .byte con_obj_id_29   ; 24 
- D 1 - I - 0x01BF66 06:BF56: 29        .byte con_obj_id_29   ; 25 
- D 1 - I - 0x01BF67 06:BF57: 13        .byte con_obj_id_13   ; 26 
- D 1 - I - 0x01BF68 06:BF58: 11        .byte con_obj_id_11   ; 27 
- D 1 - I - 0x01BF69 06:BF59: 28        .byte con_obj_id_28   ; 28 
- D 1 - I - 0x01BF6A 06:BF5A: 11        .byte con_obj_id_11   ; 29 
- D 1 - I - 0x01BF6B 06:BF5B: 11        .byte con_obj_id_11   ; 2A 
- D 1 - I - 0x01BF6C 06:BF5C: 28        .byte con_obj_id_28   ; 2B 
- D 1 - I - 0x01BF6D 06:BF5D: 13        .byte con_obj_id_13   ; 2C 
- D 1 - I - 0x01BF6E 06:BF5E: 13        .byte con_obj_id_13   ; 2D 
- D 1 - I - 0x01BF6F 06:BF5F: 29        .byte con_obj_id_29   ; 2E 
- D 1 - I - 0x01BF70 06:BF60: 11        .byte con_obj_id_11   ; 2F 
- D 1 - I - 0x01BF71 06:BF61: 10        .byte con_obj_id_10   ; 30 
- D 1 - I - 0x01BF72 06:BF62: 11        .byte con_obj_id_11   ; 31 
- D 1 - I - 0x01BF73 06:BF63: 24        .byte con_obj_id_24   ; 32 
- D 1 - I - 0x01BF74 06:BF64: 11        .byte con_obj_id_11   ; 33 
- D 1 - I - 0x01BF75 06:BF65: 25        .byte con_obj_id_25   ; 34 
- D 1 - I - 0x01BF76 06:BF66: 22        .byte con_obj_id_22   ; 35 
- D 1 - I - 0x01BF77 06:BF67: 11        .byte con_obj_id_11   ; 36 
- D 1 - I - 0x01BF78 06:BF68: 29        .byte con_obj_id_29   ; 37 
- D 1 - I - 0x01BF79 06:BF69: 11        .byte con_obj_id_11   ; 38 
- D 1 - I - 0x01BF7A 06:BF6A: 11        .byte con_obj_id_11   ; 39 
- D 1 - I - 0x01BF7B 06:BF6B: 18        .byte con_obj_id_18   ; 3A 
- D 1 - I - 0x01BF7C 06:BF6C: 13        .byte con_obj_id_13   ; 3B 
- D 1 - I - 0x01BF7D 06:BF6D: 11        .byte con_obj_id_11   ; 3C 
- D 1 - I - 0x01BF7E 06:BF6E: 13        .byte con_obj_id_13   ; 3D 
- D 1 - I - 0x01BF7F 06:BF6F: 29        .byte con_obj_id_29   ; 3E 
- D 1 - I - 0x01BF80 06:BF70: 13        .byte con_obj_id_13   ; 3F 
- D 1 - I - 0x01BF81 06:BF71: 18        .byte con_obj_id_18   ; 40 
- D 1 - I - 0x01BF82 06:BF72: 29        .byte con_obj_id_29   ; 41 
- D 1 - I - 0x01BF83 06:BF73: 11        .byte con_obj_id_11   ; 42 
- D 1 - I - 0x01BF84 06:BF74: 11        .byte con_obj_id_11   ; 43 
- D 1 - I - 0x01BF85 06:BF75: 13        .byte con_obj_id_13   ; 44 
- D 1 - I - 0x01BF86 06:BF76: 29        .byte con_obj_id_29   ; 45 
- D 1 - I - 0x01BF87 06:BF77: 18        .byte con_obj_id_18   ; 46 
- D 1 - I - 0x01BF88 06:BF78: 11        .byte con_obj_id_11   ; 47 
- D 1 - I - 0x01BF89 06:BF79: 10        .byte con_obj_id_10   ; 48 
- D 1 - I - 0x01BF8A 06:BF7A: 11        .byte con_obj_id_11   ; 49 
- D 1 - I - 0x01BF8B 06:BF7B: 13        .byte con_obj_id_13   ; 4A 
- D 1 - I - 0x01BF8C 06:BF7C: 11        .byte con_obj_id_11   ; 4B 
- D 1 - I - 0x01BF8D 06:BF7D: 18        .byte con_obj_id_18   ; 4C 
- D 1 - I - 0x01BF8E 06:BF7E: 11        .byte con_obj_id_11   ; 4D 
- D 1 - I - 0x01BF8F 06:BF7F: 22        .byte con_obj_id_22   ; 4E 
- D 1 - I - 0x01BF90 06:BF80: 11        .byte con_obj_id_11   ; 4F 
- D 1 - I - 0x01BF91 06:BF81: 24        .byte con_obj_id_24   ; 50 
- D 1 - I - 0x01BF92 06:BF82: 18        .byte con_obj_id_18   ; 51 
- D 1 - I - 0x01BF93 06:BF83: 22        .byte con_obj_id_22   ; 52 
- D 1 - I - 0x01BF94 06:BF84: 22        .byte con_obj_id_22   ; 53 
- D 1 - I - 0x01BF95 06:BF85: 25        .byte con_obj_id_25   ; 54 
- D 1 - I - 0x01BF96 06:BF86: 10        .byte con_obj_id_10   ; 55 
- D 1 - I - 0x01BF97 06:BF87: 29        .byte con_obj_id_29   ; 56 
- D 1 - I - 0x01BF98 06:BF88: 12        .byte con_obj_id_12   ; 57 
- D 1 - I - 0x01BF99 06:BF89: 13        .byte con_obj_id_13   ; 58 
- D 1 - I - 0x01BF9A 06:BF8A: 28        .byte con_obj_id_28   ; 59 
- D 1 - I - 0x01BF9B 06:BF8B: 11        .byte con_obj_id_11   ; 5A 
- D 1 - I - 0x01BF9C 06:BF8C: 18        .byte con_obj_id_18   ; 5B 
- D 1 - I - 0x01BF9D 06:BF8D: 00        .byte $00   ; end token
; flags
- D 1 - I - 0x01BF9E 06:BF8E: 90        .byte $90   ; 00 
- D 1 - I - 0x01BF9F 06:BF8F: 91        .byte $91   ; 01 
- D 1 - I - 0x01BFA0 06:BF90: 8F        .byte $8F   ; 02 
- D 1 - I - 0x01BFA1 06:BF91: 8F        .byte $8F   ; 03 
- D 1 - I - 0x01BFA2 06:BF92: 8A        .byte $8A   ; 04 
- D 1 - I - 0x01BFA3 06:BF93: 92        .byte $92   ; 05 
- D 1 - I - 0x01BFA4 06:BF94: 92        .byte $92   ; 06 
- D 1 - I - 0x01BFA5 06:BF95: 93        .byte $93   ; 07 
- D 1 - I - 0x01BFA6 06:BF96: 8F        .byte $8F   ; 08 
- D 1 - I - 0x01BFA7 06:BF97: 92        .byte $92   ; 09 
- D 1 - I - 0x01BFA8 06:BF98: 0B        .byte $0B   ; 0A 
- D 1 - I - 0x01BFA9 06:BF99: 90        .byte $90   ; 0B 
- D 1 - I - 0x01BFAA 06:BF9A: 90        .byte $90   ; 0C 
- D 1 - I - 0x01BFAB 06:BF9B: 92        .byte $92   ; 0D 
- D 1 - I - 0x01BFAC 06:BF9C: 92        .byte $92   ; 0E 
- D 1 - I - 0x01BFAD 06:BF9D: 8E        .byte $8E   ; 0F 
- D 1 - I - 0x01BFAE 06:BF9E: 93        .byte $93   ; 10 
- D 1 - I - 0x01BFAF 06:BF9F: 0C        .byte $0C   ; 11 
- D 1 - I - 0x01BFB0 06:BFA0: 92        .byte $92   ; 12 
- D 1 - I - 0x01BFB1 06:BFA1: 90        .byte $90   ; 13 
- D 1 - I - 0x01BFB2 06:BFA2: 92        .byte $92   ; 14 
- D 1 - I - 0x01BFB3 06:BFA3: 8E        .byte $8E   ; 15 
- D 1 - I - 0x01BFB4 06:BFA4: 92        .byte $92   ; 16 
- D 1 - I - 0x01BFB5 06:BFA5: 92        .byte $92   ; 17 
- D 1 - I - 0x01BFB6 06:BFA6: 93        .byte $93   ; 18 
- D 1 - I - 0x01BFB7 06:BFA7: 91        .byte $91   ; 19 
- D 1 - I - 0x01BFB8 06:BFA8: 90        .byte $90   ; 1A 
- D 1 - I - 0x01BFB9 06:BFA9: 8D        .byte $8D   ; 1B 
- D 1 - I - 0x01BFBA 06:BFAA: 8F        .byte $8F   ; 1C 
- D 1 - I - 0x01BFBB 06:BFAB: 8F        .byte $8F   ; 1D 
- D 1 - I - 0x01BFBC 06:BFAC: 8E        .byte $8E   ; 1E 
- D 1 - I - 0x01BFBD 06:BFAD: 8E        .byte $8E   ; 1F 
- D 1 - I - 0x01BFBE 06:BFAE: 94        .byte $94   ; 20 
- D 1 - I - 0x01BFBF 06:BFAF: 8D        .byte $8D   ; 21 
- D 1 - I - 0x01BFC0 06:BFB0: 91        .byte $91   ; 22 
- D 1 - I - 0x01BFC1 06:BFB1: 89        .byte $89   ; 23 
- D 1 - I - 0x01BFC2 06:BFB2: 93        .byte $93   ; 24 
- D 1 - I - 0x01BFC3 06:BFB3: 93        .byte $93   ; 25 
- D 1 - I - 0x01BFC4 06:BFB4: 8F        .byte $8F   ; 26 
- D 1 - I - 0x01BFC5 06:BFB5: 8A        .byte $8A   ; 27 
- D 1 - I - 0x01BFC6 06:BFB6: 8F        .byte $8F   ; 28 
- D 1 - I - 0x01BFC7 06:BFB7: 8C        .byte $8C   ; 29 
- D 1 - I - 0x01BFC8 06:BFB8: 8E        .byte $8E   ; 2A 
- D 1 - I - 0x01BFC9 06:BFB9: 8F        .byte $8F   ; 2B 
- D 1 - I - 0x01BFCA 06:BFBA: 90        .byte $90   ; 2C 
- D 1 - I - 0x01BFCB 06:BFBB: 8E        .byte $8E   ; 2D 
- D 1 - I - 0x01BFCC 06:BFBC: 90        .byte $90   ; 2E 
- D 1 - I - 0x01BFCD 06:BFBD: 8E        .byte $8E   ; 2F 
- D 1 - I - 0x01BFCE 06:BFBE: 90        .byte $90   ; 30 
- D 1 - I - 0x01BFCF 06:BFBF: 8E        .byte $8E   ; 31 
- D 1 - I - 0x01BFD0 06:BFC0: 8A        .byte $8A   ; 32 
- D 1 - I - 0x01BFD1 06:BFC1: 8E        .byte $8E   ; 33 
- D 1 - I - 0x01BFD2 06:BFC2: 89        .byte $89   ; 34 
- D 1 - I - 0x01BFD3 06:BFC3: 8F        .byte $8F   ; 35 
- D 1 - I - 0x01BFD4 06:BFC4: 92        .byte $92   ; 36 
- D 1 - I - 0x01BFD5 06:BFC5: 92        .byte $92   ; 37 
- D 1 - I - 0x01BFD6 06:BFC6: 92        .byte $92   ; 38 
- D 1 - I - 0x01BFD7 06:BFC7: 91        .byte $91   ; 39 
- D 1 - I - 0x01BFD8 06:BFC8: 8F        .byte $8F   ; 3A 
- D 1 - I - 0x01BFD9 06:BFC9: 8F        .byte $8F   ; 3B 
- D 1 - I - 0x01BFDA 06:BFCA: 8F        .byte $8F   ; 3C 
- D 1 - I - 0x01BFDB 06:BFCB: 8E        .byte $8E   ; 3D 
- D 1 - I - 0x01BFDC 06:BFCC: 8C        .byte $8C   ; 3E 
- D 1 - I - 0x01BFDD 06:BFCD: 91        .byte $91   ; 3F 
- D 1 - I - 0x01BFDE 06:BFCE: 90        .byte $90   ; 40 
- D 1 - I - 0x01BFDF 06:BFCF: 93        .byte $93   ; 41 
- D 1 - I - 0x01BFE0 06:BFD0: 8A        .byte $8A   ; 42 
- D 1 - I - 0x01BFE1 06:BFD1: 91        .byte $91   ; 43 
- D 1 - I - 0x01BFE2 06:BFD2: 8F        .byte $8F   ; 44 
- D 1 - I - 0x01BFE3 06:BFD3: 93        .byte $93   ; 45 
- D 1 - I - 0x01BFE4 06:BFD4: 8D        .byte $8D   ; 46 
- D 1 - I - 0x01BFE5 06:BFD5: 8F        .byte $8F   ; 47 
- D 1 - I - 0x01BFE6 06:BFD6: 92        .byte $92   ; 48 
- D 1 - I - 0x01BFE7 06:BFD7: 92        .byte $92   ; 49 
- D 1 - I - 0x01BFE8 06:BFD8: 91        .byte $91   ; 4A 
- D 1 - I - 0x01BFE9 06:BFD9: 92        .byte $92   ; 4B 
- D 1 - I - 0x01BFEA 06:BFDA: 8F        .byte $8F   ; 4C 
- D 1 - I - 0x01BFEB 06:BFDB: 91        .byte $91   ; 4D 
- D 1 - I - 0x01BFEC 06:BFDC: 95        .byte $95   ; 4E 
- D 1 - I - 0x01BFED 06:BFDD: 8B        .byte $8B   ; 4F 
- D 1 - I - 0x01BFEE 06:BFDE: 8A        .byte $8A   ; 50 
- D 1 - I - 0x01BFEF 06:BFDF: 89        .byte $89   ; 51 
- D 1 - I - 0x01BFF0 06:BFE0: 8E        .byte $8E   ; 52 
- D 1 - I - 0x01BFF1 06:BFE1: 90        .byte $90   ; 53 
- D 1 - I - 0x01BFF2 06:BFE2: 88        .byte $88   ; 54 
- D 1 - I - 0x01BFF3 06:BFE3: 8D        .byte $8D   ; 55 
- D 1 - I - 0x01BFF4 06:BFE4: 92        .byte $92   ; 56 
- D 1 - I - 0x01BFF5 06:BFE5: 8E        .byte $8E   ; 57 
- D 1 - I - 0x01BFF6 06:BFE6: 8C        .byte $8C   ; 58 
- D 1 - I - 0x01BFF7 06:BFE7: 91        .byte $91   ; 59 
- D 1 - I - 0x01BFF8 06:BFE8: 92        .byte $92   ; 5A 
- D 1 - I - 0x01BFF9 06:BFE9: 8D        .byte $8D   ; 5B 
; bzk warning, code will keep reading data from 0x01BFFA


; bzk garbage
- D 1 - I - 0x01BFFA 06:BFEA: 00        .byte $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01C000 06:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 0C: 0x%04X [%d]", ($C000 - *), ($C000 - *))



