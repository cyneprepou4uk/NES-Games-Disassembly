.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x008010-0x00C00F



.export tbl_0x008010_script_handlers
.export tbl_0x009E10_music_data
.export off_E0_0x00A94E
.export off_E1_0x00A94E
.export off_E1_0x00A992
.export off_E1_0x00AA5E
.export off_E2_0x00AAA2
.export tbl_0x00B390_stage_objects



tbl_0x008010_script_handlers:
; see con_script
- D 0 - - - 0x008010 02:8000: F4 80     .word ofs_000_80F4_00_logo_and_title
- D 0 - - - 0x008012 02:8002: 07 84     .word ofs_000_8407_01_final_cutscene
- D 0 - - - 0x008014 02:8004: F9 91     .word ofs_000_91F9_02_load_stage
- D 0 - - - 0x008016 02:8006: 91 94     .word ofs_000_9491_03_stage_complete
- D 0 - - - 0x008018 02:8008: 44 95     .word ofs_000_9544_04_messages
- D 0 - - - 0x00801A 02:800A: 5F 90     .word ofs_000_905F_05_game_over
- D 0 - - - 0x00801C 02:800C: EA 8D     .word ofs_000_8DEA_06_menu
- D 0 - - - 0x00801E 02:800E: 9F 8F     .word ofs_000_8F9F_07_generate_password



sub_8010_kemco_logo_handler:
C - - - - - 0x008020 02:8010: 20 43 80  JSR sub_8043
C - - - - - 0x008023 02:8013: A9 FF     LDA #$FF
C - - - - - 0x008025 02:8015: 20 B0 F1  JSR sub_0x00F1C0
C - - - - - 0x008028 02:8018: A9 00     LDA #$00
C - - - - - 0x00802A 02:801A: 20 65 F5  JSR sub_0x00F575
C - - - - - 0x00802D 02:801D: 20 C1 F5  JSR sub_0x00F5D1
C - - - - - 0x008030 02:8020: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x008033 02:8023: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x008036 02:8026: 20 3D 8D  JSR sub_8D3D_draw_logo_screen
C - - - - - 0x008039 02:8029: A9 02     LDA #$02
C - - - - - 0x00803B 02:802B: 85 33     STA ram_chr_bank_1
C - - - - - 0x00803D 02:802D: 85 34     STA ram_chr_bank_2
C - - - - - 0x00803F 02:802F: 20 00 ED  JSR sub_0x00ED10
C - - - - - 0x008042 02:8032: 20 53 80  JSR sub_8053_wait_30_frames_
C - - - - - 0x008045 02:8035: 20 77 80  JSR sub_8077_lightening_kemco_logo
C - - - - - 0x008048 02:8038: A2 F0     LDX #$F0
C - - - - - 0x00804A 02:803A: 20 5E 80  JSR sub_805E_skipping_kemco_logo
C - - - - - 0x00804D 02:803D: 20 A8 80  JSR sub_80A8_darkening_kemco_logo
C - - - - - 0x008050 02:8040: 4C 53 80  JMP loc_8053_wait_30_frames_



sub_8043:
C - - - - - 0x008053 02:8043: A2 00     LDX #$00
bra_8045_loop:
C - - - - - 0x008055 02:8045: A9 0F     LDA #$0F
C - - - - - 0x008057 02:8047: 9D 00 04  STA ram_pal_buffer_2,X
C - - - - - 0x00805A 02:804A: E8        INX
C - - - - - 0x00805B 02:804B: E0 20     CPX #$20
C - - - - - 0x00805D 02:804D: D0 F6     BNE bra_8045_loop
C - - - - - 0x00805F 02:804F: 20 F6 F5  JSR sub_0x00F606
C - - - - - 0x008062 02:8052: 60        RTS



sub_8053_wait_30_frames_:
loc_8053_wait_30_frames_:
C D 0 - - - 0x008063 02:8053: A2 00     LDX #$00
bra_8055_loop:
C - - - - - 0x008065 02:8055: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x008068 02:8058: E8        INX
C - - - - - 0x008069 02:8059: E0 1E     CPX #$1E
C - - - - - 0x00806B 02:805B: D0 F8     BNE bra_8055_loop
C - - - - - 0x00806D 02:805D: 60        RTS



sub_805E_skipping_kemco_logo:
bra_805E_loop:
C - - - - - 0x00806E 02:805E: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x008071 02:8061: CA        DEX
C - - - - - 0x008072 02:8062: F0 12     BEQ bra_8076_RTS
C - - - - - 0x008074 02:8064: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008077 02:8067: A5 F5     LDA ram_btn_press
C - - - - - 0x008079 02:8069: 29 D0     AND #con_btns_SAB
C - - - - - 0x00807B 02:806B: F0 F1     BEQ bra_805E_loop
bra_806D_loop:
C - - - - - 0x00807D 02:806D: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008080 02:8070: A5 F7     LDA ram_btn_hold
C - - - - - 0x008082 02:8072: 29 D0     AND #con_btns_SAB
C - - - - - 0x008084 02:8074: D0 F7     BNE bra_806D_loop
bra_8076_RTS:
C - - - - - 0x008086 02:8076: 60        RTS



sub_8077_lightening_kemco_logo:
C - - - - - 0x008087 02:8077: A2 00     LDX #$00
bra_8079_loop:
C - - - - - 0x008089 02:8079: BD 99 80  LDA tbl_8099_logo_pal_light,X
C - - - - - 0x00808C 02:807C: 8D 01 04  STA ram_pal_buffer_2 + $01
C - - - - - 0x00808F 02:807F: BD 9A 80  LDA tbl_8099_logo_pal_light + $01,X
C - - - - - 0x008092 02:8082: 8D 02 04  STA ram_pal_buffer_2 + $02
C - - - - - 0x008095 02:8085: BD 9B 80  LDA tbl_8099_logo_pal_light + $02,X
C - - - - - 0x008098 02:8088: 8D 03 04  STA ram_pal_buffer_2 + $03
C - - - - - 0x00809B 02:808B: 20 F6 F5  JSR sub_0x00F606
C - - - - - 0x00809E 02:808E: 20 D9 80  JSR sub_80D9_wait_6_frames_
C - - - - - 0x0080A1 02:8091: E8        INX
C - - - - - 0x0080A2 02:8092: E8        INX
C - - - - - 0x0080A3 02:8093: E8        INX
C - - - - - 0x0080A4 02:8094: E0 0F     CPX #$0F
C - - - - - 0x0080A6 02:8096: D0 E1     BNE bra_8079_loop
C - - - - - 0x0080A8 02:8098: 60        RTS



tbl_8099_logo_pal_light:
- D 0 - - - 0x0080A9 02:8099: 02        .byte $02, $02, $0F   ; 00 
- D 0 - - - 0x0080AC 02:809C: 12        .byte $12, $12, $01   ; 03 
- D 0 - - - 0x0080AF 02:809F: 12        .byte $12, $12, $11   ; 06 
- D 0 - - - 0x0080B2 02:80A2: 12        .byte $12, $12, $21   ; 09 
- D 0 - - - 0x0080B5 02:80A5: 12        .byte $12, $12, $31   ; 0C 



sub_80A8_darkening_kemco_logo:
C - - - - - 0x0080B8 02:80A8: A2 00     LDX #$00
bra_80AA_loop:
C - - - - - 0x0080BA 02:80AA: BD CA 80  LDA tbl_80CA_logo_pal_dark,X
C - - - - - 0x0080BD 02:80AD: 8D 01 04  STA ram_pal_buffer_2 + $01
C - - - - - 0x0080C0 02:80B0: BD CB 80  LDA tbl_80CA_logo_pal_dark + $01,X
C - - - - - 0x0080C3 02:80B3: 8D 02 04  STA ram_pal_buffer_2 + $02
C - - - - - 0x0080C6 02:80B6: BD CC 80  LDA tbl_80CA_logo_pal_dark + $02,X
C - - - - - 0x0080C9 02:80B9: 8D 03 04  STA ram_pal_buffer_2 + $03
C - - - - - 0x0080CC 02:80BC: 20 F6 F5  JSR sub_0x00F606
C - - - - - 0x0080CF 02:80BF: 20 D9 80  JSR sub_80D9_wait_6_frames_
C - - - - - 0x0080D2 02:80C2: E8        INX
C - - - - - 0x0080D3 02:80C3: E8        INX
C - - - - - 0x0080D4 02:80C4: E8        INX
C - - - - - 0x0080D5 02:80C5: E0 0F     CPX #$0F
C - - - - - 0x0080D7 02:80C7: D0 E1     BNE bra_80AA_loop
C - - - - - 0x0080D9 02:80C9: 60        RTS



tbl_80CA_logo_pal_dark:
- D 0 - - - 0x0080DA 02:80CA: 12        .byte $12, $12, $21   ; 00 
- D 0 - - - 0x0080DD 02:80CD: 12        .byte $12, $12, $11   ; 03 
- D 0 - - - 0x0080E0 02:80D0: 02        .byte $02, $12, $01   ; 06 
- D 0 - - - 0x0080E3 02:80D3: 0F        .byte $0F, $02, $0F   ; 09 
- D 0 - - - 0x0080E6 02:80D6: 0F        .byte $0F, $0F, $0F   ; 0C 



sub_80D9_wait_6_frames_:
C - - - - - 0x0080E9 02:80D9: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0080EC 02:80DC: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0080EF 02:80DF: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0080F2 02:80E2: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0080F5 02:80E5: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0080F8 02:80E8: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0080FB 02:80EB: 60        RTS



sub_80EC:
C - - - - - 0x0080FC 02:80EC: A9 00     LDA #$00
C - - - - - 0x0080FE 02:80EE: 85 24     STA ram_0024
C - - - - - 0x008100 02:80F0: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x008103 02:80F3: 60        RTS



ofs_000_80F4_00_logo_and_title:
C - - J - - 0x008104 02:80F4: 20 10 80  JSR sub_8010_kemco_logo_handler
loc_80F7:
C D 0 - - - 0x008107 02:80F7: A9 03     LDA #$03
C - - - - - 0x008109 02:80F9: 85 34     STA ram_chr_bank_2
C - - - - - 0x00810B 02:80FB: A9 02     LDA #$02
C - - - - - 0x00810D 02:80FD: 85 33     STA ram_chr_bank_1
C - - - - - 0x00810F 02:80FF: 20 00 ED  JSR sub_0x00ED10
C - - - - - 0x008112 02:8102: 20 87 85  JSR sub_8587_draw_title_screen
C - - - - - 0x008115 02:8105: 20 EC 80  JSR sub_80EC
C - - - - - 0x008118 02:8108: A9 E7     LDA #< tbl_83E7_palette
C - - - - - 0x00811A 02:810A: 85 1E     STA ram_001E
C - - - - - 0x00811C 02:810C: A9 83     LDA #> tbl_83E7_palette
C - - - - - 0x00811E 02:810E: 85 1F     STA ram_001F
C - - - - - 0x008120 02:8110: 20 FB F5  JSR sub_0x00F60B_write_palette
C - - - - - 0x008123 02:8113: A9 01     LDA #con_music_title
C - - - - - 0x008125 02:8115: 20 A2 F7  JSR sub_0x00F7B2_play_sound
C - - - - - 0x008128 02:8118: 20 69 81  JSR sub_8169
C - - - - - 0x00812B 02:811B: 4C 1E 81  JMP loc_811E    ; bzk optimize, useless



loc_811E:
C D 0 - - - 0x00812E 02:811E: A0 00     LDY #$00
bra_8120_loop:
C - - - - - 0x008130 02:8120: A9 00     LDA #$00
C - - - - - 0x008132 02:8122: 85 71     STA ram_0071
bra_8124_loop:
C - - - - - 0x008134 02:8124: E6 71     INC ram_0071
C - - - - - 0x008136 02:8126: A5 71     LDA ram_0071
C - - - - - 0x008138 02:8128: C9 33     CMP #$33
C - - - - - 0x00813A 02:812A: 90 0F     BCC bra_813B
C - - - - - 0x00813C 02:812C: C9 3D     CMP #$3D
C - - - - - 0x00813E 02:812E: 90 10     BCC bra_8140
C - - - - - 0x008140 02:8130: C8        INY
C - - - - - 0x008141 02:8131: C0 1E     CPY #$1E
C - - - - - 0x008143 02:8133: 90 EB     BCC bra_8120_loop
C - - - - - 0x008145 02:8135: 20 38 F6  JSR sub_0x00F648
C - - - - - 0x008148 02:8138: 4C F7 80  JMP loc_80F7
bra_813B:
C - - - - - 0x00814B 02:813B: A9 00     LDA #$00
C - - - - - 0x00814D 02:813D: 20 56 81  JSR sub_8156
bra_8140:
C - - - - - 0x008150 02:8140: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x008153 02:8143: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008156 02:8146: A5 F5     LDA ram_btn_press
C - - - - - 0x008158 02:8148: 29 D0     AND #con_btns_SAB
C - - - - - 0x00815A 02:814A: F0 D8     BEQ bra_8124_loop
bra_814C_loop:
C - - - - - 0x00815C 02:814C: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x00815F 02:814F: A5 F7     LDA ram_btn_hold
C - - - - - 0x008161 02:8151: 29 D0     AND #con_btns_SAB
C - - - - - 0x008163 02:8153: D0 F7     BNE bra_814C_loop
C - - - - - 0x008165 02:8155: 60        RTS



sub_8156:
C - - - - - 0x008166 02:8156: 85 22     STA ram_0022
C - - - - - 0x008168 02:8158: A9 88     LDA #$88
C - - - - - 0x00816A 02:815A: 85 20     STA ram_0020
C - - - - - 0x00816C 02:815C: A9 64     LDA #$64
C - - - - - 0x00816E 02:815E: 85 21     STA ram_0021
; bzk optimize, 0022 is always 00
C - - - - - 0x008170 02:8160: A5 22     LDA ram_0022
C - - - - - 0x008172 02:8162: 18        CLC
C - - - - - 0x008173 02:8163: 69 01     ADC #$01
C - - - - - 0x008175 02:8165: 20 65 84  JSR sub_8465
C - - - - - 0x008178 02:8168: 60        RTS



sub_8169:
C - - - - - 0x008179 02:8169: A9 00     LDA #$00
C - - - - - 0x00817B 02:816B: 85 67     STA ram_0067
bra_816D_loop:
C - - - - - 0x00817D 02:816D: A9 00     LDA #$00
C - - - - - 0x00817F 02:816F: 85 68     STA ram_stage_id_1
C - - - - - 0x008181 02:8171: A5 67     LDA ram_0067
C - - - - - 0x008183 02:8173: 0A        ASL
C - - - - - 0x008184 02:8174: 0A        ASL
C - - - - - 0x008185 02:8175: A8        TAY
loc_8176_loop:
C D 0 - - - 0x008186 02:8176: B9 BD 82  LDA tbl_82BD,Y
C - - - - - 0x008189 02:8179: C9 FF     CMP #$FF
C - - - - - 0x00818B 02:817B: F0 11     BEQ bra_818E_FF
C - - - - - 0x00818D 02:817D: 85 60     STA ram_0060
C - - - - - 0x00818F 02:817F: 20 A3 81  JSR sub_81A3
C - - - - - 0x008192 02:8182: 20 BA 81  JSR sub_81BA
C - - - - - 0x008195 02:8185: 20 68 82  JSR sub_8268_falling_bricks_tiles
C - - - - - 0x008198 02:8188: E6 68     INC ram_stage_id_1
C - - - - - 0x00819A 02:818A: C8        INY
C - - - - - 0x00819B 02:818B: 4C 76 81  JMP loc_8176_loop
bra_818E_FF:
C - - - - - 0x00819E 02:818E: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x0081A1 02:8191: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x0081A4 02:8194: 20 C1 F5  JSR sub_0x00F5D1
C - - - - - 0x0081A7 02:8197: 20 CA 81  JSR sub_81CA
C - - - - - 0x0081AA 02:819A: E6 67     INC ram_0067
C - - - - - 0x0081AC 02:819C: A5 67     LDA ram_0067
C - - - - - 0x0081AE 02:819E: C9 05     CMP #$05
C - - - - - 0x0081B0 02:81A0: 90 CB     BCC bra_816D_loop
C - - - - - 0x0081B2 02:81A2: 60        RTS



sub_81A3:
C - - - - - 0x0081B3 02:81A3: 98        TYA
C - - - - - 0x0081B4 02:81A4: 48        PHA
C - - - - - 0x0081B5 02:81A5: A5 60     LDA ram_0060
C - - - - - 0x0081B7 02:81A7: 0A        ASL
C - - - - - 0x0081B8 02:81A8: A8        TAY
C - - - - - 0x0081B9 02:81A9: A5 68     LDA ram_stage_id_1
C - - - - - 0x0081BB 02:81AB: 0A        ASL
C - - - - - 0x0081BC 02:81AC: AA        TAX
C - - - - - 0x0081BD 02:81AD: B9 D9 82  LDA tbl_82D9,Y
C - - - - - 0x0081C0 02:81B0: 95 61     STA ram_0061,X
C - - - - - 0x0081C2 02:81B2: B9 DA 82  LDA tbl_82D9 + $01,Y
C - - - - - 0x0081C5 02:81B5: 95 62     STA ram_0062,X
C - - - - - 0x0081C7 02:81B7: 68        PLA
C - - - - - 0x0081C8 02:81B8: A8        TAY
C - - - - - 0x0081C9 02:81B9: 60        RTS



sub_81BA:
C - - - - - 0x0081CA 02:81BA: B5 61     LDA ram_0061,X
C - - - - - 0x0081CC 02:81BC: 85 20     STA ram_0020
C - - - - - 0x0081CE 02:81BE: B5 62     LDA ram_0062,X
C - - - - - 0x0081D0 02:81C0: 85 21     STA ram_0021
C - - - - - 0x0081D2 02:81C2: A9 00     LDA #$00
C - - - - - 0x0081D4 02:81C4: 85 22     STA ram_0022
C - - - - - 0x0081D6 02:81C6: 20 65 84  JSR sub_8465
C - - - - - 0x0081D9 02:81C9: 60        RTS



sub_81CA:
C - - - - - 0x0081DA 02:81CA: A9 00     LDA #$00
C - - - - - 0x0081DC 02:81CC: 85 6C     STA ram_006C
C - - - - - 0x0081DE 02:81CE: 20 DC 81  JSR sub_81DC
C - - - - - 0x0081E1 02:81D1: A9 01     LDA #$01
C - - - - - 0x0081E3 02:81D3: 85 6C     STA ram_006C
C - - - - - 0x0081E5 02:81D5: 20 DC 81  JSR sub_81DC
C - - - - - 0x0081E8 02:81D8: 20 EC 80  JSR sub_80EC
C - - - - - 0x0081EB 02:81DB: 60        RTS



sub_81DC:
C - - - - - 0x0081EC 02:81DC: A9 00     LDA #$00
C - - - - - 0x0081EE 02:81DE: 85 6B     STA ram_006B
bra_81E0_loop:
C - - - - - 0x0081F0 02:81E0: A9 00     LDA #$00
C - - - - - 0x0081F2 02:81E2: 85 68     STA ram_stage_id_1
C - - - - - 0x0081F4 02:81E4: A5 67     LDA ram_0067
C - - - - - 0x0081F6 02:81E6: 0A        ASL
C - - - - - 0x0081F7 02:81E7: 0A        ASL
C - - - - - 0x0081F8 02:81E8: A8        TAY
loc_81E9_loop:
C D 0 - - - 0x0081F9 02:81E9: B9 BD 82  LDA tbl_82BD,Y
C - - - - - 0x0081FC 02:81EC: C9 FF     CMP #$FF
C - - - - - 0x0081FE 02:81EE: F0 19     BEQ bra_8209_FF
C - - - - - 0x008200 02:81F0: 85 60     STA ram_0060
C - - - - - 0x008202 02:81F2: A5 68     LDA ram_stage_id_1
C - - - - - 0x008204 02:81F4: 0A        ASL
C - - - - - 0x008205 02:81F5: AA        TAX
C - - - - - 0x008206 02:81F6: A5 6C     LDA ram_006C
C - - - - - 0x008208 02:81F8: D0 06     BNE bra_8200
C - - - - - 0x00820A 02:81FA: 20 56 82  JSR sub_8256
C - - - - - 0x00820D 02:81FD: 4C 03 82  JMP loc_8203
bra_8200:
C - - - - - 0x008210 02:8200: 20 36 82  JSR sub_8236
loc_8203:
C D 0 - - - 0x008213 02:8203: E6 68     INC ram_stage_id_1
C - - - - - 0x008215 02:8205: C8        INY
C - - - - - 0x008216 02:8206: 4C E9 81  JMP loc_81E9_loop
bra_8209_FF:
C - - - - - 0x008219 02:8209: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x00821C 02:820C: E6 6B     INC ram_006B
C - - - - - 0x00821E 02:820E: A5 6C     LDA ram_006C
C - - - - - 0x008220 02:8210: D0 07     BNE bra_8219
C - - - - - 0x008222 02:8212: A5 6B     LDA ram_006B
C - - - - - 0x008224 02:8214: C9 08     CMP #$08
C - - - - - 0x008226 02:8216: 90 C8     BCC bra_81E0_loop
C - - - - - 0x008228 02:8218: 60        RTS
bra_8219:
C - - - - - 0x008229 02:8219: A5 68     LDA ram_stage_id_1
C - - - - - 0x00822B 02:821B: C9 01     CMP #$01
C - - - - - 0x00822D 02:821D: F0 10     BEQ bra_822F
C - - - - - 0x00822F 02:821F: C9 02     CMP #$02
C - - - - - 0x008231 02:8221: F0 06     BEQ bra_8229
C - - - - - 0x008233 02:8223: A5 66     LDA ram_0066
C - - - - - 0x008235 02:8225: C9 F0     CMP #$F0
C - - - - - 0x008237 02:8227: 90 B7     BCC bra_81E0_loop
bra_8229:
C - - - - - 0x008239 02:8229: A5 64     LDA ram_0064
C - - - - - 0x00823B 02:822B: C9 F0     CMP #$F0
C - - - - - 0x00823D 02:822D: 90 B1     BCC bra_81E0_loop
bra_822F:
C - - - - - 0x00823F 02:822F: A5 62     LDA ram_0062
C - - - - - 0x008241 02:8231: C9 F0     CMP #$F0
C - - - - - 0x008243 02:8233: 90 AB     BCC bra_81E0_loop
C - - - - - 0x008245 02:8235: 60        RTS



sub_8236:
C - - - - - 0x008246 02:8236: 98        TYA
C - - - - - 0x008247 02:8237: 48        PHA
C - - - - - 0x008248 02:8238: B5 62     LDA ram_0062,X
C - - - - - 0x00824A 02:823A: C9 F0     CMP #$F0
C - - - - - 0x00824C 02:823C: F0 15     BEQ bra_8253
C - - - - - 0x00824E 02:823E: 18        CLC
C - - - - - 0x00824F 02:823F: 69 04     ADC #$04
C - - - - - 0x008251 02:8241: 95 62     STA ram_0062,X
C - - - - - 0x008253 02:8243: A5 6B     LDA ram_006B
C - - - - - 0x008255 02:8245: 29 07     AND #$07
C - - - - - 0x008257 02:8247: A8        TAY
C - - - - - 0x008258 02:8248: B5 61     LDA ram_0061,X
C - - - - - 0x00825A 02:824A: 18        CLC
C - - - - - 0x00825B 02:824B: 79 D1 82  ADC tbl_82D1,Y
C - - - - - 0x00825E 02:824E: 95 61     STA ram_0061,X
C - - - - - 0x008260 02:8250: 20 BA 81  JSR sub_81BA
bra_8253:
C - - - - - 0x008263 02:8253: 68        PLA
C - - - - - 0x008264 02:8254: A8        TAY
C - - - - - 0x008265 02:8255: 60        RTS



sub_8256:
C - - - - - 0x008266 02:8256: 98        TYA
C - - - - - 0x008267 02:8257: 48        PHA
C - - - - - 0x008268 02:8258: A4 6B     LDY ram_006B
C - - - - - 0x00826A 02:825A: B5 61     LDA ram_0061,X
C - - - - - 0x00826C 02:825C: 18        CLC
C - - - - - 0x00826D 02:825D: 79 D1 82  ADC tbl_82D1,Y
C - - - - - 0x008270 02:8260: 95 61     STA ram_0061,X
C - - - - - 0x008272 02:8262: 20 BA 81  JSR sub_81BA
C - - - - - 0x008275 02:8265: 68        PLA
C - - - - - 0x008276 02:8266: A8        TAY
C - - - - - 0x008277 02:8267: 60        RTS



sub_8268_falling_bricks_tiles:
C - - - - - 0x008278 02:8268: 98        TYA
C - - - - - 0x008279 02:8269: 48        PHA
C - - - - - 0x00827A 02:826A: A5 60     LDA ram_0060
C - - - - - 0x00827C 02:826C: 0A        ASL
C - - - - - 0x00827D 02:826D: A8        TAY
C - - - - - 0x00827E 02:826E: B9 F7 82  LDA tbl_82F7_ppu_addr,Y
C - - - - - 0x008281 02:8271: 85 69     STA ram_stage_id_2
C - - - - - 0x008283 02:8273: 85 1C     STA ram_001C
C - - - - - 0x008285 02:8275: B9 F8 82  LDA tbl_82F7_ppu_addr + $01,Y
C - - - - - 0x008288 02:8278: 85 6A     STA ram_006A
C - - - - - 0x00828A 02:827A: 85 1D     STA ram_001D
C - - - - - 0x00828C 02:827C: B9 33 83  LDA tbl_8333,Y
C - - - - - 0x00828F 02:827F: 85 1E     STA ram_001E
C - - - - - 0x008291 02:8281: B9 34 83  LDA tbl_8333 + $01,Y
C - - - - - 0x008294 02:8284: 85 1F     STA ram_001F
C - - - - - 0x008296 02:8286: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x008299 02:8289: A5 69     LDA ram_stage_id_2
C - - - - - 0x00829B 02:828B: 85 1C     STA ram_001C
C - - - - - 0x00829D 02:828D: A5 6A     LDA ram_006A
C - - - - - 0x00829F 02:828F: 85 1D     STA ram_001D
C - - - - - 0x0082A1 02:8291: B9 15 83  LDA tbl_8315,Y
C - - - - - 0x0082A4 02:8294: 85 22     STA ram_0022
C - - - - - 0x0082A6 02:8296: A9 02     LDA #$02
C - - - - - 0x0082A8 02:8298: 85 20     STA ram_0020
C - - - - - 0x0082AA 02:829A: 85 21     STA ram_0021
C - - - - - 0x0082AC 02:829C: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x0082AF 02:829F: A5 69     LDA ram_stage_id_2
C - - - - - 0x0082B1 02:82A1: 18        CLC
C - - - - - 0x0082B2 02:82A2: 69 02     ADC #< $0002
C - - - - - 0x0082B4 02:82A4: 85 1C     STA ram_001C
C - - - - - 0x0082B6 02:82A6: A5 6A     LDA ram_006A
C - - - - - 0x0082B8 02:82A8: 69 00     ADC #> $0002
C - - - - - 0x0082BA 02:82AA: 85 1D     STA ram_001D
C - - - - - 0x0082BC 02:82AC: B9 16 83  LDA tbl_8315 + $01,Y
C - - - - - 0x0082BF 02:82AF: 85 22     STA ram_0022
C - - - - - 0x0082C1 02:82B1: A9 02     LDA #$02
C - - - - - 0x0082C3 02:82B3: 85 20     STA ram_0020
C - - - - - 0x0082C5 02:82B5: 85 21     STA ram_0021
C - - - - - 0x0082C7 02:82B7: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x0082CA 02:82BA: 68        PLA
C - - - - - 0x0082CB 02:82BB: A8        TAY
C - - - - - 0x0082CC 02:82BC: 60        RTS



tbl_82BD:
; 00 
- D 0 - - - 0x0082CD 02:82BD: 03        .byte $03, $06, $0C   ; 
- D 0 - - - 0x0082D0 02:82C0: FF        .byte $FF   ; end token
; 01 
- D 0 - - - 0x0082D1 02:82C1: 01        .byte $01, $08, $0A   ; 
- D 0 - - - 0x0082D4 02:82C4: FF        .byte $FF   ; end token
; 02 
- D 0 - - - 0x0082D5 02:82C5: 00        .byte $00, $05, $0D   ; 
- D 0 - - - 0x0082D8 02:82C8: FF        .byte $FF   ; end token
; 03 
- D 0 - - - 0x0082D9 02:82C9: 04        .byte $04, $07, $0B   ; 
- D 0 - - - 0x0082DC 02:82CC: FF        .byte $FF   ; end token
; 04 
- D 0 - - - 0x0082DD 02:82CD: 02        .byte $02, $09, $0E   ; 
- D 0 - - - 0x0082E0 02:82D0: FF        .byte $FF   ; end token



tbl_82D1:
- D 0 - - - 0x0082E1 02:82D1: 02        .byte $02   ; 00 
- D 0 - - - 0x0082E2 02:82D2: FE        .byte $FE   ; 01 
- D 0 - - - 0x0082E3 02:82D3: 01        .byte $01   ; 02 
- D 0 - - - 0x0082E4 02:82D4: FE        .byte $FE   ; 03 
- D 0 - - - 0x0082E5 02:82D5: 03        .byte $03   ; 04 
- D 0 - - - 0x0082E6 02:82D6: FC        .byte $FC   ; 05 
- D 0 - - - 0x0082E7 02:82D7: 03        .byte $03   ; 06 
- D 0 - - - 0x0082E8 02:82D8: FF        .byte $FF   ; 07 



tbl_82D9:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0082E9 02:82D9: 50        .byte $50, $70   ; 00 
- D 0 - - - 0x0082EB 02:82DB: 70        .byte $70, $70   ; 01 
- D 0 - - - 0x0082ED 02:82DD: 60        .byte $60, $80   ; 02 
- D 0 - - - 0x0082EF 02:82DF: 80        .byte $80, $80   ; 03 
- D 0 - - - 0x0082F1 02:82E1: 50        .byte $50, $90   ; 04 
- D 0 - - - 0x0082F3 02:82E3: 70        .byte $70, $90   ; 05 
- D 0 - - - 0x0082F5 02:82E5: 40        .byte $40, $A0   ; 06 
- D 0 - - - 0x0082F7 02:82E7: 60        .byte $60, $A0   ; 07 
- D 0 - - - 0x0082F9 02:82E9: 80        .byte $80, $A0   ; 08 
- D 0 - - - 0x0082FB 02:82EB: 50        .byte $50, $B0   ; 09 
- D 0 - - - 0x0082FD 02:82ED: 70        .byte $70, $B0   ; 0A 
- D 0 - - - 0x0082FF 02:82EF: 60        .byte $60, $C0   ; 0B 
- D 0 - - - 0x008301 02:82F1: 80        .byte $80, $C0   ; 0C 
- D 0 - - - 0x008303 02:82F3: 50        .byte $50, $D0   ; 0D 
- D 0 - - - 0x008305 02:82F5: 70        .byte $70, $D0   ; 0E 



tbl_82F7_ppu_addr:
- D 0 - - - 0x008307 02:82F7: CA 21     .word $21CA ; 00 
- D 0 - - - 0x008309 02:82F9: CE 21     .word $21CE ; 01 
- D 0 - - - 0x00830B 02:82FB: 0C 22     .word $220C ; 02 
- D 0 - - - 0x00830D 02:82FD: 10 22     .word $2210 ; 03 
- D 0 - - - 0x00830F 02:82FF: 4A 22     .word $224A ; 04 
- D 0 - - - 0x008311 02:8301: 4E 22     .word $224E ; 05 
- D 0 - - - 0x008313 02:8303: 88 22     .word $2288 ; 06 
- D 0 - - - 0x008315 02:8305: 8C 22     .word $228C ; 07 
- D 0 - - - 0x008317 02:8307: 90 22     .word $2290 ; 08 
- D 0 - - - 0x008319 02:8309: CA 22     .word $22CA ; 09 
- D 0 - - - 0x00831B 02:830B: CE 22     .word $22CE ; 0A 
- D 0 - - - 0x00831D 02:830D: 0C 23     .word $230C ; 0B 
- D 0 - - - 0x00831F 02:830F: 10 23     .word $2310 ; 0C 
- D 0 - - - 0x008321 02:8311: 4A 23     .word $234A ; 0D 
- D 0 - - - 0x008323 02:8313: 4E 23     .word $234E ; 0E 



tbl_8315:
; bzk optimize, same bytes
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x008325 02:8315: 01        .byte $01, $01   ; 00 
- D 0 - - - 0x008327 02:8317: 01        .byte $01, $01   ; 01 
- D 0 - - - 0x008329 02:8319: 01        .byte $01, $01   ; 02 
- D 0 - - - 0x00832B 02:831B: 01        .byte $01, $01   ; 03 
- D 0 - - - 0x00832D 02:831D: 01        .byte $01, $01   ; 04 
- D 0 - - - 0x00832F 02:831F: 01        .byte $01, $01   ; 05 
- D 0 - - - 0x008331 02:8321: 01        .byte $01, $01   ; 06 
- D 0 - - - 0x008333 02:8323: 01        .byte $01, $01   ; 07 
- D 0 - - - 0x008335 02:8325: 01        .byte $01, $01   ; 08 
- D 0 - - - 0x008337 02:8327: 01        .byte $01, $01   ; 09 
- D 0 - - - 0x008339 02:8329: 01        .byte $01, $01   ; 0A 
- D 0 - - - 0x00833B 02:832B: 01        .byte $01, $01   ; 0B 
- D 0 - - - 0x00833D 02:832D: 01        .byte $01, $01   ; 0C 
- D 0 - - - 0x00833F 02:832F: 01        .byte $01, $01   ; 0D 
- D 0 - - - 0x008341 02:8331: 01        .byte $01, $01   ; 0E 



tbl_8333:
- D 0 - - - 0x008343 02:8333: 51 83     .word _off000_8351_00
- D 0 - - - 0x008345 02:8335: 5B 83     .word _off000_835B_01
- D 0 - - - 0x008347 02:8337: 65 83     .word _off000_8365_02
- D 0 - - - 0x008349 02:8339: 6F 83     .word _off000_836F_03
- D 0 - - - 0x00834B 02:833B: 79 83     .word _off000_8379_04
- D 0 - - - 0x00834D 02:833D: 83 83     .word _off000_8383_05
- D 0 - - - 0x00834F 02:833F: 8D 83     .word _off000_838D_06
- D 0 - - - 0x008351 02:8341: 97 83     .word _off000_8397_07
- D 0 - - - 0x008353 02:8343: A1 83     .word _off000_83A1_08
- D 0 - - - 0x008355 02:8345: AB 83     .word _off000_83AB_09
- D 0 - - - 0x008357 02:8347: B5 83     .word _off000_83B5_0A
- D 0 - - - 0x008359 02:8349: BF 83     .word _off000_83BF_0B
- D 0 - - - 0x00835B 02:834B: C9 83     .word _off000_83C9_0C
- D 0 - - - 0x00835D 02:834D: D3 83     .word _off000_83D3_0D
- D 0 - - - 0x00835F 02:834F: DD 83     .word _off000_83DD_0E



_off000_8351_00:
- D 0 - I - 0x008361 02:8351: 04        .byte $04   ; columns
- D 0 - I - 0x008362 02:8352: 02        .byte $02   ; rows
- D 0 - I - 0x008363 02:8353: FF        .byte $FF, $FF, $FF, $80   ; 
- D 0 - I - 0x008367 02:8357: FF        .byte $FF, $FF, $FF, $90   ; 

_off000_835B_01:
- D 0 - I - 0x00836B 02:835B: 04        .byte $04   ; columns
- D 0 - I - 0x00836C 02:835C: 02        .byte $02   ; rows
- D 0 - I - 0x00836D 02:835D: 81        .byte $81, $82, $83, $83   ; 
- D 0 - I - 0x008371 02:8361: 91        .byte $91, $92, $D6, $D6   ; 

_off000_8365_02:
- D 0 - I - 0x008375 02:8365: 04        .byte $04   ; columns
- D 0 - I - 0x008376 02:8366: 02        .byte $02   ; rows
- D 0 - I - 0x008377 02:8367: BE        .byte $BE, $A0, $A1, $A2   ; 
- D 0 - I - 0x00837B 02:836B: CE        .byte $CE, $B0, $B1, $B2   ; 

_off000_836F_03:
- D 0 - I - 0x00837F 02:836F: 04        .byte $04   ; columns
- D 0 - I - 0x008380 02:8370: 02        .byte $02   ; rows
- D 0 - I - 0x008381 02:8371: D6        .byte $D6, $D6, $FF, $FF   ; 
- D 0 - I - 0x008385 02:8375: B3        .byte $B3, $D6, $FF, $FF   ; 

_off000_8379_04:
- D 0 - I - 0x008389 02:8379: 04        .byte $04   ; columns
- D 0 - I - 0x00838A 02:837A: 02        .byte $02   ; rows
- D 0 - I - 0x00838B 02:837B: FF        .byte $FF, $83, $84, $C0   ; 
- D 0 - I - 0x00838F 02:837F: FF        .byte $FF, $93, $94, $D0   ; 

_off000_8383_05:
- D 0 - I - 0x008393 02:8383: 04        .byte $04   ; columns
- D 0 - I - 0x008394 02:8384: 02        .byte $02   ; rows
- D 0 - I - 0x008395 02:8385: C1        .byte $C1, $C2, $C3, $D6   ; 
- D 0 - I - 0x008399 02:8389: D1        .byte $D1, $D2, $D3, $D6   ; 

_off000_838D_06:
- D 0 - I - 0x00839D 02:838D: 04        .byte $04   ; columns
- D 0 - I - 0x00839E 02:838E: 02        .byte $02   ; rows
- D 0 - I - 0x00839F 02:838F: FF        .byte $FF, $FF, $FF, $A3   ; 
- D 0 - I - 0x0083A3 02:8393: FF        .byte $FF, $FF, $FF, $FF   ; 

_off000_8397_07:
- D 0 - I - 0x0083A7 02:8397: 04        .byte $04   ; columns
- D 0 - I - 0x0083A8 02:8398: 02        .byte $02   ; rows
- D 0 - I - 0x0083A9 02:8399: A4        .byte $A4, $E0, $E1, $E2   ; 
- D 0 - I - 0x0083AD 02:839D: FF        .byte $FF, $F0, $F1, $F2   ; 

_off000_83A1_08:
- D 0 - I - 0x0083B1 02:83A1: 04        .byte $04   ; columns
- D 0 - I - 0x0083B2 02:83A2: 02        .byte $02   ; rows
- D 0 - I - 0x0083B3 02:83A3: E3        .byte $E3, $FF, $FF, $FF   ; 
- D 0 - I - 0x0083B7 02:83A7: F3        .byte $F3, $FF, $FF, $FF   ; 

_off000_83AB_09:
- D 0 - I - 0x0083BB 02:83AB: 04        .byte $04   ; columns
- D 0 - I - 0x0083BC 02:83AC: 02        .byte $02   ; rows
- D 0 - I - 0x0083BD 02:83AD: FF        .byte $FF, $FF, $D6, $D6   ; 
- D 0 - I - 0x0083C1 02:83B1: D6        .byte $D6, $D6, $D6, $D6   ; 

_off000_83B5_0A:
- D 0 - I - 0x0083C5 02:83B5: 04        .byte $04   ; columns
- D 0 - I - 0x0083C6 02:83B6: 02        .byte $02   ; rows
- D 0 - I - 0x0083C7 02:83B7: 85        .byte $85, $86, $D5, $D6   ; 
- D 0 - I - 0x0083CB 02:83BB: 95        .byte $95, $96, $E5, $E6   ; 

_off000_83BF_0B:
- D 0 - I - 0x0083CF 02:83BF: 04        .byte $04   ; columns
- D 0 - I - 0x0083D0 02:83C0: 02        .byte $02   ; rows
- D 0 - I - 0x0083D1 02:83C1: FF        .byte $FF, $FF, $A5, $A6   ; 
- D 0 - I - 0x0083D5 02:83C5: FF        .byte $FF, $FF, $B5, $B6   ; 

_off000_83C9_0C:
- D 0 - I - 0x0083D9 02:83C9: 04        .byte $04   ; columns
- D 0 - I - 0x0083DA 02:83CA: 02        .byte $02   ; rows
- D 0 - I - 0x0083DB 02:83CB: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0083DF 02:83CF: FF        .byte $FF, $FF, $FF, $FF   ; 

_off000_83D3_0D:
- D 0 - I - 0x0083E3 02:83D3: 04        .byte $04   ; columns
- D 0 - I - 0x0083E4 02:83D4: 02        .byte $02   ; rows
- D 0 - I - 0x0083E5 02:83D5: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0083E9 02:83D9: FF        .byte $FF, $FF, $87, $88   ; 

_off000_83DD_0E:
- D 0 - I - 0x0083ED 02:83DD: 04        .byte $04   ; columns
- D 0 - I - 0x0083EE 02:83DE: 02        .byte $02   ; rows
- D 0 - I - 0x0083EF 02:83DF: C5        .byte $C5, $C6, $FF, $FF   ; 
- D 0 - I - 0x0083F3 02:83E3: 89        .byte $89, $8A, $8B, $8C   ; 



tbl_83E7_palette:
; background
- D 0 - I - 0x0083F7 02:83E7: 0F        .byte $0F, $06, $16, $27   ; 
- D 0 - I - 0x0083FB 02:83EB: 0F        .byte $0F, $36, $00, $30   ; 
- D 0 - I - 0x0083FF 02:83EF: 0F        .byte $0F, $06, $16, $30   ; 
- D 0 - I - 0x008403 02:83F3: 0F        .byte $0F, $27, $25, $30   ; 
; sprites
- D 0 - I - 0x008407 02:83F7: 0F        .byte $0F, $0F, $2B, $30   ; 
- D 0 - I - 0x00840B 02:83FB: 0F        .byte $0F, $0F, $21, $30   ; 
- D 0 - I - 0x00840F 02:83FF: 0F        .byte $0F, $0F, $25, $30   ; 
- D 0 - I - 0x008413 02:8403: 0F        .byte $0F, $06, $16, $27   ; 



ofs_000_8407_01_final_cutscene:
C - - J - - 0x008417 02:8407: A9 00     LDA #$00
C - - - - - 0x008419 02:8409: 85 26     STA ram_cam_pos_X_lo
C - - - - - 0x00841B 02:840B: 85 27     STA ram_cam_pos_X_hi
C - - - - - 0x00841D 02:840D: 85 28     STA ram_cam_pos_Y_lo
C - - - - - 0x00841F 02:840F: 85 29     STA ram_cam_pos_Y_hi
C - - - - - 0x008421 02:8411: A9 04     LDA #$04
C - - - - - 0x008423 02:8413: 85 33     STA ram_chr_bank_1
C - - - - - 0x008425 02:8415: A9 05     LDA #$05
C - - - - - 0x008427 02:8417: 85 34     STA ram_chr_bank_2
C - - - - - 0x008429 02:8419: 20 00 ED  JSR sub_0x00ED10
C - - - - - 0x00842C 02:841C: 20 56 89  JSR sub_8956_draw_final_screen
C - - - - - 0x00842F 02:841F: A9 03     LDA #con_music_final
C - - - - - 0x008431 02:8421: 20 A2 F7  JSR sub_0x00F7B2_play_sound
C - - - - - 0x008434 02:8424: 20 EC 80  JSR sub_80EC
C - - - - - 0x008437 02:8427: A9 45     LDA #< tbl_8445_palette
C - - - - - 0x008439 02:8429: 85 1E     STA ram_001E
C - - - - - 0x00843B 02:842B: A9 84     LDA #> tbl_8445_palette
C - - - - - 0x00843D 02:842D: 85 1F     STA ram_001F
C - - - - - 0x00843F 02:842F: 20 FB F5  JSR sub_0x00F60B_write_palette
bra_8432_loop:
C - - - - - 0x008442 02:8432: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008445 02:8435: A5 F5     LDA ram_btn_press
C - - - - - 0x008447 02:8437: 29 D0     AND #con_btns_SAB
C - - - - - 0x008449 02:8439: F0 F7     BEQ bra_8432_loop
bra_843B_loop:
C - - - - - 0x00844B 02:843B: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x00844E 02:843E: A5 F7     LDA ram_btn_hold
C - - - - - 0x008450 02:8440: 29 D0     AND #con_btns_SAB
C - - - - - 0x008452 02:8442: D0 F7     BNE bra_843B_loop
C - - - - - 0x008454 02:8444: 60        RTS



tbl_8445_palette:
- D 0 - I - 0x008455 02:8445: 0F        .byte $0F, $21, $16, $30   ; 
- D 0 - I - 0x008459 02:8449: 0F        .byte $0F, $00, $21, $30   ; 
- D 0 - I - 0x00845D 02:844D: 0F        .byte $0F, $00, $16, $30   ; 
- D 0 - I - 0x008461 02:8451: 0F        .byte $0F, $00, $36, $16   ; 

- D 0 - I - 0x008465 02:8455: 0F        .byte $0F, $0F, $25, $30   ; 
- D 0 - I - 0x008469 02:8459: 0F        .byte $0F, $0F, $16, $30   ; 
- D 0 - I - 0x00846D 02:845D: 0F        .byte $0F, $0F, $16, $21   ; 
- D 0 - I - 0x008471 02:8461: 0F        .byte $0F, $0F, $27, $30   ; 



sub_8465:
C - - - - - 0x008475 02:8465: 85 23     STA ram_0023
C - - - - - 0x008477 02:8467: 8A        TXA
C - - - - - 0x008478 02:8468: 48        PHA
C - - - - - 0x008479 02:8469: A5 23     LDA ram_0023
C - - - - - 0x00847B 02:846B: 0A        ASL
C - - - - - 0x00847C 02:846C: AA        TAX
C - - - - - 0x00847D 02:846D: BD 8B 84  LDA tbl_848B_spr_data,X
C - - - - - 0x008480 02:8470: 85 1E     STA ram_001E
C - - - - - 0x008482 02:8472: BD 8C 84  LDA tbl_848B_spr_data + $01,X
C - - - - - 0x008485 02:8475: 85 1F     STA ram_001F
C - - - - - 0x008487 02:8477: A5 23     LDA ram_0023
C - - - - - 0x008489 02:8479: 29 80     AND #$80
C - - - - - 0x00848B 02:847B: 4A        LSR
C - - - - - 0x00848C 02:847C: 4A        LSR
C - - - - - 0x00848D 02:847D: 05 22     ORA ram_0022
C - - - - - 0x00848F 02:847F: 85 22     STA ram_0022
C - - - - - 0x008491 02:8481: 20 12 F7  JSR sub_0x00F722
C - - - - - 0x008494 02:8484: A9 00     LDA #$00
C - - - - - 0x008496 02:8486: 85 22     STA ram_0022
C - - - - - 0x008498 02:8488: 68        PLA
C - - - - - 0x008499 02:8489: AA        TAX
C - - - - - 0x00849A 02:848A: 60        RTS



tbl_848B_spr_data:
- D 0 - - - 0x00849B 02:848B: A3 84     .word _off002_84A3_00 ; index at 0x0081D6
- D 0 - - - 0x00849D 02:848D: B4 84     .word _off002_84B4_01 ; index at 0x008175


; bzk garbage, no such indexes
- - - - - - 0x00849F 02:848F: A3 84     .word _off002_84A3_02
- - - - - - 0x0084A1 02:8491: A3 84     .word _off002_84A3_03
- - - - - - 0x0084A3 02:8493: A3 84     .word _off002_84A3_04
- - - - - - 0x0084A5 02:8495: A3 84     .word _off002_84A3_05
- - - - - - 0x0084A7 02:8497: A3 84     .word _off002_84A3_06
- - - - - - 0x0084A9 02:8499: A3 84     .word _off002_84A3_07
- - - - - - 0x0084AB 02:849B: A3 84     .word _off002_84A3_08
- - - - - - 0x0084AD 02:849D: A3 84     .word _off002_84A3_09
- - - - - - 0x0084AF 02:849F: 05 85     .word _off002_8505_0A
- - - - - - 0x0084B1 02:84A1: 46 85     .word _off002_8546_0B



_off002_84A3_00:
_off002_84A3_02:
_off002_84A3_03:
_off002_84A3_04:
_off002_84A3_05:
_off002_84A3_06:
_off002_84A3_07:
_off002_84A3_08:
_off002_84A3_09:
; read via 0x00F73A
- D 0 - I - 0x0084B3 02:84A3: 42        .byte $04 * $10 + $02   ; rows + columns

- D 0 - I - 0x0084B4 02:84A4: 4C        .byte $4C, $03   ; spr_T, spr_A
- D 0 - I - 0x0084B6 02:84A6: 4D        .byte $4D, $03   ; 
- D 0 - I - 0x0084B8 02:84A8: 4E        .byte $4E, $03   ; 
- D 0 - I - 0x0084BA 02:84AA: 4F        .byte $4F, $03   ; 

- D 0 - I - 0x0084BC 02:84AC: 5C        .byte $5C, $03   ; 
- D 0 - I - 0x0084BE 02:84AE: 5D        .byte $5D, $03   ; 
- D 0 - I - 0x0084C0 02:84B0: 5E        .byte $5E, $03   ; 
- D 0 - I - 0x0084C2 02:84B2: 5F        .byte $5F, $03   ; 



_off002_84B4_01:
- D 0 - I - 0x0084C4 02:84B4: 85        .byte $08 * $10 + $05   ; rows + columns

- D 0 - I - 0x0084C5 02:84B5: 00        .byte $00, $00   ; spr_T, spr_A
- D 0 - I - 0x0084C7 02:84B7: 01        .byte $01, $00   ; 
- D 0 - I - 0x0084C9 02:84B9: 02        .byte $02, $00   ; 
- D 0 - I - 0x0084CB 02:84BB: 03        .byte $03, $00   ; 
- D 0 - I - 0x0084CD 02:84BD: 04        .byte $04, $00   ; 
- D 0 - I - 0x0084CF 02:84BF: 05        .byte $05, $00   ; 
- D 0 - I - 0x0084D1 02:84C1: 06        .byte $06, $00   ; 
- D 0 - I - 0x0084D3 02:84C3: 07        .byte $07, $00   ; 

- D 0 - I - 0x0084D5 02:84C5: 10        .byte $10, $00   ; 
- D 0 - I - 0x0084D7 02:84C7: 11        .byte $11, $00   ; 
- D 0 - I - 0x0084D9 02:84C9: 12        .byte $12, $00   ; 
- D 0 - I - 0x0084DB 02:84CB: 13        .byte $13, $00   ; 
- D 0 - I - 0x0084DD 02:84CD: 14        .byte $14, $00   ; 
- D 0 - I - 0x0084DF 02:84CF: 15        .byte $15, $00   ; 
- D 0 - I - 0x0084E1 02:84D1: 16        .byte $16, $00   ; 
- D 0 - I - 0x0084E3 02:84D3: 17        .byte $17, $00   ; 

- D 0 - I - 0x0084E5 02:84D5: 20        .byte $20, $00   ; 
- D 0 - I - 0x0084E7 02:84D7: 21        .byte $21, $00   ; 
- D 0 - I - 0x0084E9 02:84D9: 22        .byte $22, $00   ; 
- D 0 - I - 0x0084EB 02:84DB: 23        .byte $23, $00   ; 
- D 0 - I - 0x0084ED 02:84DD: 24        .byte $24, $00   ; 
- D 0 - I - 0x0084EF 02:84DF: 25        .byte $25, $00   ; 
- D 0 - I - 0x0084F1 02:84E1: 26        .byte $26, $00   ; 
- D 0 - I - 0x0084F3 02:84E3: 27        .byte $27, $00   ; 

- D 0 - I - 0x0084F5 02:84E5: 30        .byte $30, $00   ; 
- D 0 - I - 0x0084F7 02:84E7: 31        .byte $31, $00   ; 
- D 0 - I - 0x0084F9 02:84E9: 32        .byte $32, $00   ; 
- D 0 - I - 0x0084FB 02:84EB: 33        .byte $33, $00   ; 
- D 0 - I - 0x0084FD 02:84ED: 34        .byte $34, $00   ; 
- D 0 - I - 0x0084FF 02:84EF: 35        .byte $35, $00   ; 
- D 0 - I - 0x008501 02:84F1: 36        .byte $36, $00   ; 
- D 0 - I - 0x008503 02:84F3: 37        .byte $37, $00   ; 

- D 0 - I - 0x008505 02:84F5: 40        .byte $40, $00   ; 
- D 0 - I - 0x008507 02:84F7: 41        .byte $41, $00   ; 
- D 0 - I - 0x008509 02:84F9: FF        .byte $FF, $00   ; 
- D 0 - I - 0x00850B 02:84FB: FF        .byte $FF, $00   ; 
- D 0 - I - 0x00850D 02:84FD: FF        .byte $FF, $00   ; 
- D 0 - I - 0x00850F 02:84FF: FF        .byte $FF, $00   ; 
- D 0 - I - 0x008511 02:8501: FF        .byte $FF, $00   ; 
- D 0 - I - 0x008513 02:8503: FF        .byte $FF, $00   ; 



_off002_8505_0A:
- - - - - - 0x008515 02:8505: 48        .byte $04 * $10 + $08   ; rows + columns

- - - - - - 0x008516 02:8506: 8C        .byte $8C, $01   ; spr_T, spr_A
- - - - - - 0x008518 02:8508: 8D        .byte $8D, $01   ; 
- - - - - - 0x00851A 02:850A: 8E        .byte $8E, $01   ; 
- - - - - - 0x00851C 02:850C: 8F        .byte $8F, $01   ; 

- - - - - - 0x00851E 02:850E: 9C        .byte $9C, $01   ; 
- - - - - - 0x008520 02:8510: 9D        .byte $9D, $01   ; 
- - - - - - 0x008522 02:8512: 9E        .byte $9E, $01   ; 
- - - - - - 0x008524 02:8514: 9F        .byte $9F, $03   ; 

- - - - - - 0x008526 02:8516: AC        .byte $AC, $01   ; 
- - - - - - 0x008528 02:8518: AD        .byte $AD, $01   ; 
- - - - - - 0x00852A 02:851A: AE        .byte $AE, $01   ; 
- - - - - - 0x00852C 02:851C: AF        .byte $AF, $03   ; 

- - - - - - 0x00852E 02:851E: BC        .byte $BC, $01   ; 
- - - - - - 0x008530 02:8520: BD        .byte $BD, $01   ; 
- - - - - - 0x008532 02:8522: BE        .byte $BE, $01   ; 
- - - - - - 0x008534 02:8524: BF        .byte $BF, $01   ; 

- - - - - - 0x008536 02:8526: CC        .byte $CC, $01   ; 
- - - - - - 0x008538 02:8528: CD        .byte $CD, $01   ; 
- - - - - - 0x00853A 02:852A: CE        .byte $CE, $01   ; 
- - - - - - 0x00853C 02:852C: CF        .byte $CF, $01   ; 

- - - - - - 0x00853E 02:852E: DC        .byte $DC, $01   ; 
- - - - - - 0x008540 02:8530: DD        .byte $DD, $02   ; 
- - - - - - 0x008542 02:8532: DE        .byte $DE, $01   ; 
- - - - - - 0x008544 02:8534: DF        .byte $DF, $01   ; 

- - - - - - 0x008546 02:8536: EC        .byte $EC, $01   ; 
- - - - - - 0x008548 02:8538: ED        .byte $ED, $01   ; 
- - - - - - 0x00854A 02:853A: EE        .byte $EE, $01   ; 
- - - - - - 0x00854C 02:853C: EF        .byte $EF, $01   ; 

- - - - - - 0x00854E 02:853E: FC        .byte $FC, $01   ; 
- - - - - - 0x008550 02:8540: FD        .byte $FD, $01   ; 
- - - - - - 0x008552 02:8542: FE        .byte $FE, $01   ; 
- - - - - - 0x008554 02:8544: F7        .byte $F7, $01   ; 



_off002_8546_0B:
- - - - - - 0x008556 02:8546: 48        .byte $04 * $10 + $08   ; rows + columns

- - - - - - 0x008557 02:8547: 8C        .byte $8C, $01   ; spr_T, spr_A
- - - - - - 0x008559 02:8549: 8D        .byte $8D, $01   ; 
- - - - - - 0x00855B 02:854B: 8E        .byte $8E, $01   ; 
- - - - - - 0x00855D 02:854D: 8F        .byte $8F, $01   ; 

- - - - - - 0x00855F 02:854F: 9C        .byte $9C, $01   ; 
- - - - - - 0x008561 02:8551: 9D        .byte $9D, $01   ; 
- - - - - - 0x008563 02:8553: 9E        .byte $9E, $01   ; 
- - - - - - 0x008565 02:8555: E6        .byte $E6, $03   ; 

- - - - - - 0x008567 02:8557: AC        .byte $AC, $01   ; 
- - - - - - 0x008569 02:8559: AD        .byte $AD, $01   ; 
- - - - - - 0x00856B 02:855B: E5        .byte $E5, $01   ; 
- - - - - - 0x00856D 02:855D: AF        .byte $AF, $03   ; 

- - - - - - 0x00856F 02:855F: BC        .byte $BC, $01   ; 
- - - - - - 0x008571 02:8561: BD        .byte $BD, $01   ; 
- - - - - - 0x008573 02:8563: F5        .byte $F5, $01   ; 
- - - - - - 0x008575 02:8565: E7        .byte $E7, $01   ; 

- - - - - - 0x008577 02:8567: CC        .byte $CC, $01   ; 
- - - - - - 0x008579 02:8569: CD        .byte $CD, $01   ; 
- - - - - - 0x00857B 02:856B: CE        .byte $CE, $01   ; 
- - - - - - 0x00857D 02:856D: CF        .byte $CF, $01   ; 

- - - - - - 0x00857F 02:856F: DC        .byte $DC, $01   ; 
- - - - - - 0x008581 02:8571: DD        .byte $DD, $02   ; 
- - - - - - 0x008583 02:8573: DE        .byte $DE, $01   ; 
- - - - - - 0x008585 02:8575: DF        .byte $DF, $01   ; 

- - - - - - 0x008587 02:8577: EC        .byte $EC, $01   ; 
- - - - - - 0x008589 02:8579: ED        .byte $ED, $01   ; 
- - - - - - 0x00858B 02:857B: EE        .byte $EE, $01   ; 
- - - - - - 0x00858D 02:857D: EF        .byte $EF, $01   ; 

- - - - - - 0x00858F 02:857F: FC        .byte $FC, $01   ; 
- - - - - - 0x008591 02:8581: FD        .byte $FD, $01   ; 
- - - - - - 0x008593 02:8583: FE        .byte $FE, $01   ; 
- - - - - - 0x008595 02:8585: F7        .byte $F7, $01   ; 



sub_8587_draw_title_screen:
C - - - - - 0x008597 02:8587: 20 5F ED  JSR sub_0x00ED6F_draw_screen_handler
- D 0 - I - 0x00859A 02:858A: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $78, $4F, $4E, $E4, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x0085AA 02:859A: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x0085BA 02:85AA: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $7A, $BD, $5F, $F4, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x0085CA 02:85BA: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x0085DA 02:85CA: 9E        .byte $9E, $9F, $9C, $9D, $78, $CB, $CC, $CD, $6F, $CF, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x0085EA 02:85DA: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x0085FA 02:85EA: AE        .byte $AE, $AF, $AC, $AD, $79, $DB, $DC, $DD, $DE, $DF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x00860A 02:85FA: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x00861A 02:860A: 9C        .byte $9C, $9D, $9E, $9F, $7B, $EB, $EC, $ED, $EE   ; 
- D 0 - I - 0x008623 02:8613: FF        .byte $FF, $08, $06   ; control bytes
- D 0 - I - 0x008626 02:8616: 00        .byte $00, $01, $02   ; 
- D 0 - I - 0x008629 02:8619: FF        .byte $FF, $08, $06   ; control bytes
- D 0 - I - 0x00862C 02:861C: D7        .byte $D7, $D8, $D9, $DA, $9C, $9D, $9E, $9F, $AC, $AD, $AE, $AF, $E7, $FB, $FC, $11   ; 
- D 0 - I - 0x00863C 02:862C: 12        .byte $12, $13, $14, $15, $16, $17, $0F, $10, $11, $12, $13, $18, $19, $1A, $1B, $1C   ; 
- D 0 - I - 0x00864C 02:863C: 1D        .byte $1D, $1E, $E9, $EA, $AC, $AD, $AE, $AF, $9E, $9F, $9C, $9D, $A7, $0F, $20, $21   ; 
- D 0 - I - 0x00865C 02:864C: 22        .byte $22, $23, $24, $25, $26, $27, $0F, $20, $21, $22, $23, $28, $29, $2A, $2B, $2C   ; 
- D 0 - I - 0x00866C 02:865C: 2D        .byte $2D, $2E, $0F, $FA, $9E, $9F, $9C, $9D, $AE, $AF, $AC, $AD, $A7, $0F, $30, $31   ; 
- D 0 - I - 0x00867C 02:866C: 32        .byte $32, $33, $34, $35, $36, $37, $0F, $30, $31, $32, $33, $38, $39, $3A, $3B, $3C   ; 
- D 0 - I - 0x00868C 02:867C: 3D        .byte $3D, $3E, $3F, $AB, $AE, $AF, $AC, $AD, $9C, $9D, $9E, $9F, $A7, $0F, $40, $41   ; 
- D 0 - I - 0x00869C 02:868C: 42        .byte $42, $43, $44, $45, $46, $0F, $0F, $40, $41, $42, $0A, $49, $0F, $8E, $4B, $4C   ; 
- D 0 - I - 0x0086AC 02:869C: 4D        .byte $4D, $0F, $0F, $AB, $9C, $9D, $9E, $9F, $AC, $AD, $AE, $AF, $A7, $0F, $0F, $50   ; 
- D 0 - I - 0x0086BC 02:86AC: 51        .byte $51, $52, $53, $54, $55, $56, $57, $58, $50, $51, $59, $5A, $5B, $5C, $5D, $5E   ; 
- D 0 - I - 0x0086CC 02:86BC: 0B        .byte $0B, $0C, $0F, $AB, $AC, $AD, $AE, $AF, $9E, $9F, $9C, $9D, $A7, $0F, $0F, $60   ; 
- D 0 - I - 0x0086DC 02:86CC: 61        .byte $61, $62, $63, $64, $65, $66, $67, $68, $60, $61, $69, $6A, $6B, $6C, $6D, $6E   ; 
- D 0 - I - 0x0086EC 02:86DC: 0D        .byte $0D, $0E, $0F, $AB, $9E, $9F, $9C, $9D, $AE, $AF, $AC, $AD, $B7, $B8, $09, $70   ; 
- D 0 - I - 0x0086FC 02:86EC: 71        .byte $71, $72, $73, $74, $75, $76, $77, $09, $70   ; 
- D 0 - I - 0x008705 02:86F5: FF        .byte $FF, $09, $09   ; control bytes
- D 0 - I - 0x008708 02:86F8: BA        .byte $BA, $BB, $AE, $AF, $AC, $AD, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008718 02:8708: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008728 02:8718: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x008738 02:8728: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x008748 02:8738: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x008758 02:8748: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x008768 02:8758: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x008778 02:8768: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x008788 02:8778: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008798 02:8788: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x0087A8 02:8798: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x0087B8 02:87A8: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x0087C8 02:87B8: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x0087D8 02:87C8: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x0087E8 02:87D8: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x0087F8 02:87E8: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x008808 02:87F8: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008818 02:8808: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008828 02:8818: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x008838 02:8828: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x008848 02:8838: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x008858 02:8848: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x008868 02:8858: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x008878 02:8868: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x008888 02:8878: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008898 02:8888: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x0088A8 02:8898: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x0088B8 02:88A8: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x0088C8 02:88B8: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x0088D8 02:88C8: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x0088E8 02:88D8: 9C        .byte $9C, $9D, $9E, $9F, $9C, $9D, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x0088F8 02:88E8: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x008908 02:88F8: AC        .byte $AC, $AD, $AE, $AF, $AC, $AD, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008918 02:8908: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D, $9E, $9F, $9C, $9D   ; 
- D 0 - I - 0x008928 02:8918: 9E        .byte $9E, $9F, $9C, $9D, $9E, $9F, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x008938 02:8928: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD, $AE, $AF, $AC, $AD   ; 
- D 0 - I - 0x008948 02:8938: AE        .byte $AE, $AF, $AC, $AD, $AE, $AF, $00, $A8, $22   ; 
- D 0 - I - 0x008951 02:8941: FF        .byte $FF, $00, $06   ; control bytes
- D 0 - I - 0x008954 02:8944: EE        .byte $EE   ; 
- D 0 - I - 0x008955 02:8945: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x008958 02:8948: BB        .byte $BB, $00, $00, $DE   ; 
- D 0 - I - 0x00895C 02:894C: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x00895F 02:894F: BF        .byte $BF   ; 
- D 0 - I - 0x008960 02:8950: FF        .byte $FF, $00, $29   ; control bytes
- D 0 - I - 0x008963 02:8953: FF        .byte $FF, $FF, $00   ; end token



sub_8956_draw_final_screen:
C - - - - - 0x008966 02:8956: 20 5F ED  JSR sub_0x00ED6F_draw_screen_handler
- D 0 - I - 0x008969 02:8959: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $8C, $8D   ; 
- D 0 - I - 0x008979 02:8969: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008989 02:8979: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $8D, $54   ; 
- D 0 - I - 0x008999 02:8989: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x0089A9 02:8999: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $8C, $64   ; 
- D 0 - I - 0x0089B9 02:89A9: 8C        .byte $8C, $07, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x0089C9 02:89B9: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $48, $04, $05, $10, $3D, $1D   ; 
- D 0 - I - 0x0089D9 02:89C9: 8D        .byte $8D, $2D, $4C, $4D, $5C, $5D, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x0089E9 02:89D9: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $A2, $A1   ; 
- D 0 - I - 0x0089F4 02:89E4: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x0089F7 02:89E7: 14        .byte $14, $15, $20, $3C, $16, $17   ; 
- D 0 - I - 0x0089FD 02:89ED: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008A00 02:89F0: 6D        .byte $6D, $0F, $89, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008A10 02:8A00: 88        .byte $88, $89, $88, $51, $A1   ; 
- D 0 - I - 0x008A15 02:8A05: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008A18 02:8A08: 22        .byte $22, $23, $24, $25, $26, $27   ; 
- D 0 - I - 0x008A1E 02:8A0E: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008A21 02:8A11: 0D        .byte $0D, $0E, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008A31 02:8A21: 88        .byte $88, $89, $61   ; 
- D 0 - I - 0x008A34 02:8A24: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x008A37 02:8A27: 32        .byte $32, $33, $34, $35, $36, $37, $1A   ; 
- D 0 - I - 0x008A3E 02:8A2E: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008A41 02:8A31: 1E        .byte $1E, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008A51 02:8A41: 88        .byte $88, $52   ; 
- D 0 - I - 0x008A53 02:8A43: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x008A56 02:8A46: 42        .byte $42, $43, $44, $45, $46, $47   ; 
- D 0 - I - 0x008A5C 02:8A4C: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x008A5F 02:8A4F: 2E        .byte $2E, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008A6F 02:8A5F: 89        .byte $89, $99   ; 
- D 0 - I - 0x008A71 02:8A61: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008A74 02:8A64: 09        .byte $09, $0A, $53   ; 
- D 0 - I - 0x008A77 02:8A67: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008A7A 02:8A6A: 55        .byte $55, $56, $57, $58   ; 
- D 0 - I - 0x008A7E 02:8A6E: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008A81 02:8A71: 3E        .byte $3E, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008A91 02:8A81: 88        .byte $88   ; 
- D 0 - I - 0x008A92 02:8A82: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008A95 02:8A85: 08        .byte $08, $19, $62, $63   ; 
- D 0 - I - 0x008A99 02:8A89: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008A9C 02:8A8C: 65        .byte $65, $66, $67, $68   ; 
- D 0 - I - 0x008AA0 02:8A90: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008AA3 02:8A93: 4E        .byte $4E, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008AB3 02:8AA3: 89        .byte $89, $50   ; 
- D 0 - I - 0x008AB5 02:8AA5: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008AB8 02:8AA8: 18        .byte $18, $71, $72, $73, $74, $75, $76, $77, $78   ; 
- D 0 - I - 0x008AC1 02:8AB1: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008AC4 02:8AB4: 5E        .byte $5E, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008AD4 02:8AC4: 88        .byte $88, $21   ; 
- D 0 - I - 0x008AD6 02:8AC6: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008AD9 02:8AC9: 28        .byte $28, $81, $82, $83, $84, $85, $86, $87, $98   ; 
- D 0 - I - 0x008AE2 02:8AD2: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008AE5 02:8AD5: 6E        .byte $6E, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008AF5 02:8AE5: 89        .byte $89, $60   ; 
- D 0 - I - 0x008AF7 02:8AE7: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008AFA 02:8AEA: 91        .byte $91, $92, $93, $94, $95, $96, $97   ; 
- D 0 - I - 0x008B01 02:8AF1: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x008B04 02:8AF4: 7E        .byte $7E, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008B14 02:8B04: 88        .byte $88, $70, $80   ; 
- D 0 - I - 0x008B17 02:8B07: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008B1A 02:8B0A: 29        .byte $29, $2A, $2B, $A4, $A5, $A6, $A7   ; 
- D 0 - I - 0x008B21 02:8B11: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x008B24 02:8B14: 8E        .byte $8E, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008B34 02:8B24: 89        .byte $89, $88, $90   ; 
- D 0 - I - 0x008B37 02:8B27: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008B3A 02:8B2A: 39        .byte $39, $3A, $3B, $B4, $B5, $B6, $B7   ; 
- D 0 - I - 0x008B41 02:8B31: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008B44 02:8B34: 9D        .byte $9D, $89, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008B54 02:8B44: 89        .byte $89, $88, $89, $A0   ; 
- D 0 - I - 0x008B58 02:8B48: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008B5B 02:8B4B: 49        .byte $49, $4A, $C3, $C4, $C5, $C6, $C7   ; 
- D 0 - I - 0x008B62 02:8B52: FF        .byte $FF, $FF, $03   ; control bytes
- D 0 - I - 0x008B65 02:8B55: AD        .byte $AD, $88, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008B75 02:8B65: 88        .byte $88, $89, $88, $89, $B1, $A8, $59, $5A, $5B, $69, $0B, $D6, $D7   ; 
- D 0 - I - 0x008B82 02:8B72: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008B85 02:8B75: BC        .byte $BC, $0F, $89, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008B95 02:8B85: 88        .byte $88, $89, $88, $89, $88, $C1, $C2, $6A, $6B, $79, $7A, $1B, $7B, $C9   ; 
- D 0 - I - 0x008BA3 02:8B93: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008BA6 02:8B96: CB        .byte $CB, $CC, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89   ; 
- D 0 - I - 0x008BB6 02:8BA6: 88        .byte $88, $89, $88, $89, $88, $89, $88, $D2, $D3, $D4, $D5, $8A, $8B, $7D, $D9, $DA   ; 
- D 0 - I - 0x008BC6 02:8BB6: DB        .byte $DB, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88   ; 
- D 0 - I - 0x008BD6 02:8BC6: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $E3, $E4, $E5, $E6, $7D, $E8, $E9, $EA   ; 
- D 0 - I - 0x008BE6 02:8BD6: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89   ; 
- D 0 - I - 0x008BF6 02:8BE6: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $F5, $F6, $F7, $F8, $88, $89   ; 
- D 0 - I - 0x008C06 02:8BF6: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $89, $88, $89, $88   ; 
- D 0 - I - 0x008C16 02:8C06: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008C26 02:8C16: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $88, $89, $88, $89   ; 
- D 0 - I - 0x008C36 02:8C26: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008C44 02:8C34: FF        .byte $FF, $FF, $0A   ; control bytes
- D 0 - I - 0x008C47 02:8C37: 88        .byte $88, $89, $88, $89, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008C57 02:8C47: 89        .byte $89, $88, $89, $88, $89, $FF, $FF, $02, $E0, $E1, $E2   ; 
- D 0 - I - 0x008C62 02:8C52: FF        .byte $FF, $FF, $05   ; control bytes
- D 0 - I - 0x008C65 02:8C55: 7F        .byte $7F   ; 
- D 0 - I - 0x008C66 02:8C56: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008C69 02:8C59: 88        .byte $88, $89, $88, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008C72 02:8C62: FF        .byte $FF, $FF, $08   ; control bytes
- D 0 - I - 0x008C75 02:8C65: 88        .byte $88, $89, $88, $89   ; 
- D 0 - I - 0x008C79 02:8C69: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008C7C 02:8C6C: F0        .byte $F0, $F1, $F2   ; 
- D 0 - I - 0x008C7F 02:8C6F: FF        .byte $FF, $FF, $04   ; control bytes
- D 0 - I - 0x008C82 02:8C72: FA        .byte $FA, $8F, $88, $89, $88, $89, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008C8D 02:8C7D: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008C90 02:8C80: 9E        .byte $9E, $9F, $BD, $BE, $BF   ; 
- D 0 - I - 0x008C95 02:8C85: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008C98 02:8C88: 88        .byte $88, $89, $88, $89   ; 
- D 0 - I - 0x008C9C 02:8C8C: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008C9F 02:8C8F: 1F        .byte $1F, $2F, $3F, $DC, $DD, $DE, $DF, $EB   ; 
- D 0 - I - 0x008CA7 02:8C97: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008CAA 02:8C9A: 88        .byte $88, $89, $88, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008CB3 02:8CA3: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008CB6 02:8CA6: AE        .byte $AE, $AF, $CD, $CE, $CF   ; 
- D 0 - I - 0x008CBB 02:8CAB: FF        .byte $FF, $FF, $02   ; control bytes
- D 0 - I - 0x008CBE 02:8CAE: 88        .byte $88, $89, $88, $89   ; 
- D 0 - I - 0x008CC2 02:8CB2: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008CC5 02:8CB5: 4F        .byte $4F, $5F, $6F, $EC, $ED, $EE, $EF, $FB   ; 
- D 0 - I - 0x008CCD 02:8CBD: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008CD0 02:8CC0: 88        .byte $88, $89, $88, $89, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008CD9 02:8CC9: FF        .byte $FF, $FF, $08   ; control bytes
- D 0 - I - 0x008CDC 02:8CCC: 88        .byte $88, $89, $88, $89   ; 
- D 0 - I - 0x008CE0 02:8CD0: FF        .byte $FF, $FF, $0C   ; control bytes
- D 0 - I - 0x008CE3 02:8CD3: 88        .byte $88, $89, $88, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008CF3 02:8CE3: 89        .byte $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88   ; 
- D 0 - I - 0x008D03 02:8CF3: 89        .byte $89, $88, $89, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008D13 02:8D03: 88        .byte $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89, $88, $89   ; 
- D 0 - I - 0x008D23 02:8D13: 88        .byte $88, $89, $88   ; 
- D 0 - I - 0x008D26 02:8D16: FF        .byte $FF, $00, $03   ; control bytes
- D 0 - I - 0x008D29 02:8D19: CC        .byte $CC, $30   ; 
- D 0 - I - 0x008D2B 02:8D1B: FF        .byte $FF, $00, $06   ; control bytes
- D 0 - I - 0x008D2E 02:8D1E: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008D31 02:8D21: 7F        .byte $7F   ; 
- D 0 - I - 0x008D32 02:8D22: FF        .byte $FF, $00, $05   ; control bytes
- D 0 - I - 0x008D35 02:8D25: 44        .byte $44, $55, $55   ; 
- D 0 - I - 0x008D38 02:8D28: FF        .byte $FF, $00, $06   ; control bytes
- D 0 - I - 0x008D3B 02:8D2B: 55        .byte $55, $55   ; 
- D 0 - I - 0x008D3D 02:8D2D: FF        .byte $FF, $00, $05   ; control bytes
- D 0 - I - 0x008D40 02:8D30: 08        .byte $08, $65, $15   ; 
- D 0 - I - 0x008D43 02:8D33: FF        .byte $FF, $00, $06   ; control bytes
- D 0 - I - 0x008D46 02:8D36: 08        .byte $08   ; 
- D 0 - I - 0x008D47 02:8D37: FF        .byte $FF, $00, $14   ; control bytes
- D 0 - I - 0x008D4A 02:8D3A: FF        .byte $FF, $FF, $00   ; end token



sub_8D3D_draw_logo_screen:
C - - - - - 0x008D4D 02:8D3D: 20 5F ED  JSR sub_0x00ED6F_draw_screen_handler
- D 0 - I - 0x008D50 02:8D40: FF        .byte $FF, $FF, $FF   ; control bytes
- D 0 - I - 0x008D53 02:8D43: FF        .byte $FF, $FF, $88   ; control bytes
- D 0 - I - 0x008D56 02:8D46: D0        .byte $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $D9, $DA, $DB, $DC, $DD, $DE, $DF   ; 
- D 0 - I - 0x008D66 02:8D56: C4        .byte $C4   ; 
- D 0 - I - 0x008D67 02:8D57: FF        .byte $FF, $FF, $0F   ; control bytes
- D 0 - I - 0x008D6A 02:8D5A: E0        .byte $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $E8, $E9, $EA, $EB, $EC, $ED, $EE, $EF   ; 
- D 0 - I - 0x008D7A 02:8D6A: C5        .byte $C5   ; 
- D 0 - I - 0x008D7B 02:8D6B: FF        .byte $FF, $FF, $0F   ; control bytes
- D 0 - I - 0x008D7E 02:8D6E: F0        .byte $F0, $F1, $F2, $F3, $F4, $F5, $F3, $F7, $F8, $F9, $F8, $FB, $F3, $F5, $FE, $F3   ; 
- D 0 - I - 0x008D8E 02:8D7E: C6        .byte $C6   ; 
- D 0 - I - 0x008D8F 02:8D7F: FF        .byte $FF, $FF, $34   ; control bytes
- D 0 - I - 0x008D92 02:8D82: C7        .byte $C7, $C8, $C9, $CA, $C9, $CB, $CC, $CA   ; 
- D 0 - I - 0x008D9A 02:8D8A: FF        .byte $FF, $FF, $CF   ; control bytes
- D 0 - I - 0x008D9D 02:8D8D: B3        .byte $B3, $AC   ; 
- D 0 - I - 0x008D9F 02:8D8F: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DA2 02:8D92: BB        .byte $BB   ; 
- D 0 - I - 0x008DA3 02:8D93: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DA6 02:8D96: BC        .byte $BC   ; 
- D 0 - I - 0x008DA7 02:8D97: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DAA 02:8D9A: B6        .byte $B6, $A0, $B1, $AD, $A4, $B1   ; 
- D 0 - I - 0x008DB0 02:8DA0: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DB3 02:8DA3: A1        .byte $A1, $B1, $AE, $B2, $BA, $A8, $AD, $A2, $BA, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x008DC0 02:8DB0: FF        .byte $FF, $FF, $27   ; control bytes
- D 0 - I - 0x008DC3 02:8DB3: AB        .byte $AB, $A8, $A2, $A4, $AD, $B2, $A4, $A3   ; 
- D 0 - I - 0x008DCB 02:8DBB: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DCE 02:8DBE: A1        .byte $A1, $B8   ; 
- D 0 - I - 0x008DD0 02:8DC0: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DD3 02:8DC3: AD        .byte $AD, $A8, $AD, $B3, $A4, $AD, $A3, $AE   ; 
- D 0 - I - 0x008DDB 02:8DCB: FF        .byte $FF, $FF, $15   ; control bytes
- D 0 - I - 0x008DDE 02:8DCE: AE        .byte $AE, $A5   ; 
- D 0 - I - 0x008DE0 02:8DD0: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DE3 02:8DD3: A0        .byte $A0, $AC, $A4, $B1, $A8, $A2, $A0   ; 
- D 0 - I - 0x008DEA 02:8DDA: FF        .byte $FF, $FF, $01   ; control bytes
- D 0 - I - 0x008DED 02:8DDD: A8        .byte $A8, $AD, $A2, $BA   ; 
- D 0 - I - 0x008DF1 02:8DE1: FF        .byte $FF, $FF, $63   ; control bytes
- D 0 - I - 0x008DF4 02:8DE4: FF        .byte $FF, $00, $40   ; control bytes
- D 0 - I - 0x008DF7 02:8DE7: FF        .byte $FF, $FF, $00   ; end token



ofs_000_8DEA_06_menu:
C - - J - - 0x008DFA 02:8DEA: 20 CD 91  JSR sub_91CD
C - - - - - 0x008DFD 02:8DED: A9 09     LDA #con_music_menu
C - - - - - 0x008DFF 02:8DEF: 20 A2 F7  JSR sub_0x00F7B2_play_sound
C - - - - - 0x008E02 02:8DF2: A9 61     LDA #< tbl_8F61
C - - - - - 0x008E04 02:8DF4: 85 1E     STA ram_001E
C - - - - - 0x008E06 02:8DF6: A9 8F     LDA #> tbl_8F61
C - - - - - 0x008E08 02:8DF8: 85 1F     STA ram_001F
C - - - - - 0x008E0A 02:8DFA: A9 CC     LDA #< $21CC
C - - - - - 0x008E0C 02:8DFC: 85 1C     STA ram_001C
C - - - - - 0x008E0E 02:8DFE: A9 21     LDA #> $21CC
C - - - - - 0x008E10 02:8E00: 85 1D     STA ram_001D
C - - - - - 0x008E12 02:8E02: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x008E15 02:8E05: A9 01     LDA #$01
C - - - - - 0x008E17 02:8E07: 85 22     STA ram_0022
C - - - - - 0x008E19 02:8E09: A9 0A     LDA #$0A
C - - - - - 0x008E1B 02:8E0B: 85 20     STA ram_0020
C - - - - - 0x008E1D 02:8E0D: A9 08     LDA #$08
C - - - - - 0x008E1F 02:8E0F: 85 21     STA ram_0021
C - - - - - 0x008E21 02:8E11: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x008E24 02:8E14: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x008E27 02:8E17: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x008E2A 02:8E1A: 20 C1 F5  JSR sub_0x00F5D1
C - - - - - 0x008E2D 02:8E1D: A9 00     LDA #$00
C - - - - - 0x008E2F 02:8E1F: 85 24     STA ram_0024
C - - - - - 0x008E31 02:8E21: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x008E34 02:8E24: 20 8A 92  JSR sub_928A
bra_8E27_up:
C - - - - - 0x008E37 02:8E27: A9 00     LDA #$00
C - - - - - 0x008E39 02:8E29: 85 9F     STA ram_009F
loc_8E2B:
C D 0 - - - 0x008E3B 02:8E2B: 20 5D 91  JSR sub_915D
loc_8E2E_loop:
C D 0 - - - 0x008E3E 02:8E2E: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008E41 02:8E31: A5 F5     LDA ram_btn_press
C - - - - - 0x008E43 02:8E33: 4A        LSR
C - - - - - 0x008E44 02:8E34: 4A        LSR
C - - - - - 0x008E45 02:8E35: 4A        LSR
C - - - - - 0x008E46 02:8E36: B0 12     BCS bra_8E4A_down
C - - - - - 0x008E48 02:8E38: 4A        LSR
C - - - - - 0x008E49 02:8E39: B0 EC     BCS bra_8E27_up
C - - - - - 0x008E4B 02:8E3B: 4A        LSR
C - - - - - 0x008E4C 02:8E3C: B0 1E     BCS bra_8E5C_start_A_B
C - - - - - 0x008E4E 02:8E3E: 4A        LSR
C - - - - - 0x008E4F 02:8E3F: B0 10     BCS bra_8E51_select
C - - - - - 0x008E51 02:8E41: 4A        LSR
C - - - - - 0x008E52 02:8E42: B0 18     BCS bra_8E5C_start_A_B
C - - - - - 0x008E54 02:8E44: 4A        LSR
C - - - - - 0x008E55 02:8E45: B0 15     BCS bra_8E5C_start_A_B
C - - - - - 0x008E57 02:8E47: 4C 2E 8E  JMP loc_8E2E_loop
bra_8E4A_down:
C - - - - - 0x008E5A 02:8E4A: A9 01     LDA #$01
C - - - - - 0x008E5C 02:8E4C: 85 9F     STA ram_009F
C - - - - - 0x008E5E 02:8E4E: 4C 2B 8E  JMP loc_8E2B
bra_8E51_select:
C - - - - - 0x008E61 02:8E51: E6 9F     INC ram_009F
C - - - - - 0x008E63 02:8E53: A5 9F     LDA ram_009F
C - - - - - 0x008E65 02:8E55: 29 01     AND #$01
C - - - - - 0x008E67 02:8E57: 85 9F     STA ram_009F
C - - - - - 0x008E69 02:8E59: 4C 2B 8E  JMP loc_8E2B
bra_8E5C_start_A_B:
C - - - - - 0x008E6C 02:8E5C: A5 9F     LDA ram_009F
C - - - - - 0x008E6E 02:8E5E: D0 07     BNE bra_8E67
C - - - - - 0x008E70 02:8E60: A9 00     LDA #$00
C - - - - - 0x008E72 02:8E62: 85 68     STA ram_stage_id_1
C - - - - - 0x008E74 02:8E64: 85 69     STA ram_stage_id_2
C - - - - - 0x008E76 02:8E66: 60        RTS
bra_8E67:
C - - - - - 0x008E77 02:8E67: A9 55     LDA #< tbl_8F55
C - - - - - 0x008E79 02:8E69: 85 1E     STA ram_001E
C - - - - - 0x008E7B 02:8E6B: A9 8F     LDA #> tbl_8F55
C - - - - - 0x008E7D 02:8E6D: 85 1F     STA ram_001F
C - - - - - 0x008E7F 02:8E6F: A9 6C     LDA #< $226C
C - - - - - 0x008E81 02:8E71: 85 1C     STA ram_001C
C - - - - - 0x008E83 02:8E73: A9 22     LDA #> $226C
C - - - - - 0x008E85 02:8E75: 85 1D     STA ram_001D
C - - - - - 0x008E87 02:8E77: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x008E8A 02:8E7A: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x008E8D 02:8E7D: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x008E90 02:8E80: A9 00     LDA #$00
C - - - - - 0x008E92 02:8E82: AA        TAX
C - - - - - 0x008E93 02:8E83: 85 76     STA ram_psw_letter
C - - - - - 0x008E95 02:8E85: 85 77     STA ram_psw_letter + $01
C - - - - - 0x008E97 02:8E87: 85 78     STA ram_psw_letter + $02
C - - - - - 0x008E99 02:8E89: 85 79     STA ram_psw_letter + $03
C - - - - - 0x008E9B 02:8E8B: 85 9F     STA ram_009F
bra_8E8D_loop:
C - - - - - 0x008E9D 02:8E8D: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008EA0 02:8E90: A5 F7     LDA ram_btn_hold
C - - - - - 0x008EA2 02:8E92: D0 F9     BNE bra_8E8D_loop
C - - - - - 0x008EA4 02:8E94: A9 00     LDA #$00
C - - - - - 0x008EA6 02:8E96: 85 60     STA ram_0060
loc_8E98_loop:
bra_8E98_loop:
C D 0 - - - 0x008EA8 02:8E98: 20 0E 8F  JSR sub_8F0E
C - - - - - 0x008EAB 02:8E9B: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008EAE 02:8E9E: A5 F7     LDA ram_btn_hold
C - - - - - 0x008EB0 02:8EA0: 4A        LSR
C - - - - - 0x008EB1 02:8EA1: B0 18     BCS bra_8EBB    ; if Right
C - - - - - 0x008EB3 02:8EA3: 4A        LSR
C - - - - - 0x008EB4 02:8EA4: B0 20     BCS bra_8EC6    ; if Left
C - - - - - 0x008EB6 02:8EA6: 4A        LSR
C - - - - - 0x008EB7 02:8EA7: B0 41     BCS bra_8EEA    ; if Down
C - - - - - 0x008EB9 02:8EA9: 4A        LSR
C - - - - - 0x008EBA 02:8EAA: B0 25     BCS bra_8ED1    ; if Up
C - - - - - 0x008EBC 02:8EAC: 4A        LSR
C - - - - - 0x008EBD 02:8EAD: B0 58     BCS bra_8F07    ; if Start
C - - - - - 0x008EBF 02:8EAF: 4A        LSR
C - - - - - 0x008EC0 02:8EB0: B0 1F     BCS bra_8ED1    ; if Select
C - - - - - 0x008EC2 02:8EB2: 4A        LSR
C - - - - - 0x008EC3 02:8EB3: B0 11     BCS bra_8EC6    ; if B
C - - - - - 0x008EC5 02:8EB5: 4A        LSR
C - - - - - 0x008EC6 02:8EB6: B0 03     BCS bra_8EBB    ; if A
C - - - - - 0x008EC8 02:8EB8: 4C 98 8E  JMP loc_8E98_loop
bra_8EBB:
C - - - - - 0x008ECB 02:8EBB: E0 03     CPX #$03
C - - - - - 0x008ECD 02:8EBD: F0 D9     BEQ bra_8E98_loop
C - - - - - 0x008ECF 02:8EBF: 20 41 8F  JSR sub_8F41
C - - - - - 0x008ED2 02:8EC2: E8        INX
C - - - - - 0x008ED3 02:8EC3: 4C F0 8E  JMP loc_8EF0
bra_8EC6:
C - - - - - 0x008ED6 02:8EC6: E0 00     CPX #$00
C - - - - - 0x008ED8 02:8EC8: F0 CE     BEQ bra_8E98_loop
C - - - - - 0x008EDA 02:8ECA: 20 41 8F  JSR sub_8F41
C - - - - - 0x008EDD 02:8ECD: CA        DEX
C - - - - - 0x008EDE 02:8ECE: 4C F0 8E  JMP loc_8EF0
bra_8ED1:
C - - - - - 0x008EE1 02:8ED1: B5 76     LDA ram_psw_letter,X
C - - - - - 0x008EE3 02:8ED3: C9 23     CMP #$23
C - - - - - 0x008EE5 02:8ED5: F0 05     BEQ bra_8EDC
C - - - - - 0x008EE7 02:8ED7: F6 76     INC ram_psw_letter,X
C - - - - - 0x008EE9 02:8ED9: 4C F0 8E  JMP loc_8EF0
bra_8EDC:
C - - - - - 0x008EEC 02:8EDC: A9 00     LDA #$00
C - - - - - 0x008EEE 02:8EDE: 95 76     STA ram_psw_letter,X
C - - - - - 0x008EF0 02:8EE0: 4C F0 8E  JMP loc_8EF0
bra_8EE3:
C - - - - - 0x008EF3 02:8EE3: A9 23     LDA #$23
C - - - - - 0x008EF5 02:8EE5: 95 76     STA ram_psw_letter,X
C - - - - - 0x008EF7 02:8EE7: 4C F0 8E  JMP loc_8EF0
bra_8EEA:
C - - - - - 0x008EFA 02:8EEA: B5 76     LDA ram_psw_letter,X
C - - - - - 0x008EFC 02:8EEC: F0 F5     BEQ bra_8EE3
C - - - - - 0x008EFE 02:8EEE: D6 76     DEC ram_psw_letter,X
loc_8EF0:
C D 0 - - - 0x008F00 02:8EF0: A9 00     LDA #$00
C - - - - - 0x008F02 02:8EF2: 85 60     STA ram_0060
C - - - - - 0x008F04 02:8EF4: A8        TAY
bra_8EF5_loop:
C - - - - - 0x008F05 02:8EF5: 20 0E 8F  JSR sub_8F0E
C - - - - - 0x008F08 02:8EF8: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x008F0B 02:8EFB: A5 F7     LDA ram_btn_hold
C - - - - - 0x008F0D 02:8EFD: F0 05     BEQ bra_8F04
C - - - - - 0x008F0F 02:8EFF: C8        INY
C - - - - - 0x008F10 02:8F00: C0 10     CPY #$10
C - - - - - 0x008F12 02:8F02: D0 F1     BNE bra_8EF5_loop
bra_8F04:
C - - - - - 0x008F14 02:8F04: 4C 98 8E  JMP loc_8E98_loop
bra_8F07:
C - - - - - 0x008F17 02:8F07: 20 41 8F  JSR sub_8F41
C - - - - - 0x008F1A 02:8F0A: 20 25 B0  JSR sub_B025
C - - - - - 0x008F1D 02:8F0D: 60        RTS



sub_8F0E:
C - - - - - 0x008F1E 02:8F0E: 98        TYA
C - - - - - 0x008F1F 02:8F0F: 48        PHA
C - - - - - 0x008F20 02:8F10: 8A        TXA
C - - - - - 0x008F21 02:8F11: 48        PHA
C - - - - - 0x008F22 02:8F12: 20 1A 8F  JSR sub_8F1A
C - - - - - 0x008F25 02:8F15: 68        PLA
C - - - - - 0x008F26 02:8F16: AA        TAX
C - - - - - 0x008F27 02:8F17: 68        PLA
C - - - - - 0x008F28 02:8F18: A8        TAY
C - - - - - 0x008F29 02:8F19: 60        RTS



sub_8F1A:
C - - - - - 0x008F2A 02:8F1A: A5 60     LDA ram_0060
C - - - - - 0x008F2C 02:8F1C: 29 0F     AND #$0F
C - - - - - 0x008F2E 02:8F1E: D0 0B     BNE bra_8F2B
C - - - - - 0x008F30 02:8F20: A5 60     LDA ram_0060
C - - - - - 0x008F32 02:8F22: 29 10     AND #$10
C - - - - - 0x008F34 02:8F24: 4A        LSR
C - - - - - 0x008F35 02:8F25: 4A        LSR
C - - - - - 0x008F36 02:8F26: 4A        LSR
C - - - - - 0x008F37 02:8F27: 4A        LSR
C - - - - - 0x008F38 02:8F28: 20 31 8F  JSR sub_8F31
bra_8F2B:
C - - - - - 0x008F3B 02:8F2B: E6 60     INC ram_0060
C - - - - - 0x008F3D 02:8F2D: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x008F40 02:8F30: 60        RTS



sub_8F31:
C - - - - - 0x008F41 02:8F31: 20 78 EF  JSR sub_0x00EF88_jump_to_pointers_after_jsr
- D 0 - I - 0x008F44 02:8F34: 41 8F     .word ofs_001_8F41_00
- D 0 - I - 0x008F46 02:8F36: 38 8F     .word ofs_001_8F38_01



ofs_001_8F38_01:
C - - J - - 0x008F48 02:8F38: 20 4A 8F  JSR sub_8F4A
C - - - - - 0x008F4B 02:8F3B: A9 24     LDA #$24
C - - - - - 0x008F4D 02:8F3D: 20 03 B0  JSR sub_B003
C - - - - - 0x008F50 02:8F40: 60        RTS



sub_8F41:
ofs_001_8F41_00:
C - - J - - 0x008F51 02:8F41: 20 4A 8F  JSR sub_8F4A
C - - - - - 0x008F54 02:8F44: B5 76     LDA ram_0076,X
C - - - - - 0x008F56 02:8F46: 20 03 B0  JSR sub_B003
C - - - - - 0x008F59 02:8F49: 60        RTS



sub_8F4A:
C - - - - - 0x008F5A 02:8F4A: 8A        TXA
C - - - - - 0x008F5B 02:8F4B: 18        CLC
C - - - - - 0x008F5C 02:8F4C: 69 6E     ADC #< $226E
C - - - - - 0x008F5E 02:8F4E: 85 1C     STA ram_001C
C - - - - - 0x008F60 02:8F50: A9 22     LDA #> $226E
C - - - - - 0x008F62 02:8F52: 85 1D     STA ram_001D
C - - - - - 0x008F64 02:8F54: 60        RTS



tbl_8F55:
- D 0 - I - 0x008F65 02:8F55: 0A        .byte $0A   ; columns
- D 0 - I - 0x008F66 02:8F56: 01        .byte $01   ; rows
- D 0 - I - 0x008F67 02:8F57: FF        .byte $FF, $FF, $DB, $DB, $DB, $DB, $FF, $FF, $FF, $FF   ; 



tbl_8F61:
- D 0 - I - 0x008F71 02:8F61: 0A        .byte $0A   ; columns
- D 0 - I - 0x008F72 02:8F62: 06        .byte $06   ; rows
- D 0 - I - 0x008F73 02:8F63: C6        .byte $C6, $C0, $CC, $C4, $FF, $D2, $D3, $C0, $D1, $D3   ; 
- D 0 - I - 0x008F7D 02:8F6D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x008F87 02:8F77: CF        .byte $CF, $C0, $D2, $D2, $D6, $CE, $D1, $C3, $FF, $FF   ; 
- D 0 - I - 0x008F91 02:8F81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x008F9B 02:8F8B: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x008FA5 02:8F95: CF        .byte $CF, $D4, $D2, $C7, $FF, $D2, $D3, $C0, $D1, $D3   ; 



ofs_000_8F9F_07_generate_password:
; between stages
C - - J - - 0x008FAF 02:8F9F: 20 EA 91  JSR sub_91EA
C - - - - - 0x008FB2 02:8FA2: 20 CD 91  JSR sub_91CD
C - - - - - 0x008FB5 02:8FA5: A9 09     LDA #con_music_menu
C - - - - - 0x008FB7 02:8FA7: 20 A2 F7  JSR sub_0x00F7B2_play_sound
C - - - - - 0x008FBA 02:8FAA: A9 90     LDA #< tbl_9190
C - - - - - 0x008FBC 02:8FAC: 85 1E     STA ram_001E
C - - - - - 0x008FBE 02:8FAE: A9 91     LDA #> tbl_9190
C - - - - - 0x008FC0 02:8FB0: 85 1F     STA ram_001F
C - - - - - 0x008FC2 02:8FB2: A9 87     LDA #< $2187
C - - - - - 0x008FC4 02:8FB4: 85 1C     STA ram_001C
C - - - - - 0x008FC6 02:8FB6: A9 21     LDA #> $2187
C - - - - - 0x008FC8 02:8FB8: 85 1D     STA ram_001D
C - - - - - 0x008FCA 02:8FBA: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x008FCD 02:8FBD: A9 01     LDA #$01
C - - - - - 0x008FCF 02:8FBF: 85 22     STA ram_0022
C - - - - - 0x008FD1 02:8FC1: A9 11     LDA #$11
C - - - - - 0x008FD3 02:8FC3: 85 20     STA ram_0020
C - - - - - 0x008FD5 02:8FC5: A9 02     LDA #$02
C - - - - - 0x008FD7 02:8FC7: 85 21     STA ram_0021
C - - - - - 0x008FD9 02:8FC9: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x008FDC 02:8FCC: A9 A3     LDA #< tbl_91A3
C - - - - - 0x008FDE 02:8FCE: 85 1E     STA ram_001E
C - - - - - 0x008FE0 02:8FD0: A9 91     LDA #> tbl_91A3
C - - - - - 0x008FE2 02:8FD2: 85 1F     STA ram_001F
C - - - - - 0x008FE4 02:8FD4: A9 EC     LDA #< $21EC
C - - - - - 0x008FE6 02:8FD6: 85 1C     STA ram_001C
C - - - - - 0x008FE8 02:8FD8: A9 21     LDA #> $21EC
C - - - - - 0x008FEA 02:8FDA: 85 1D     STA ram_001D
C - - - - - 0x008FEC 02:8FDC: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x008FEF 02:8FDF: A9 00     LDA #$00
C - - - - - 0x008FF1 02:8FE1: 85 22     STA ram_0022
C - - - - - 0x008FF3 02:8FE3: A9 08     LDA #$08
C - - - - - 0x008FF5 02:8FE5: 85 20     STA ram_0020
C - - - - - 0x008FF7 02:8FE7: A9 02     LDA #$02
C - - - - - 0x008FF9 02:8FE9: 85 21     STA ram_0021
C - - - - - 0x008FFB 02:8FEB: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x008FFE 02:8FEE: A9 2E     LDA #< $222E
C - - - - - 0x009000 02:8FF0: 85 1C     STA ram_001C
C - - - - - 0x009002 02:8FF2: A9 22     LDA #> $222E
C - - - - - 0x009004 02:8FF4: 85 1D     STA ram_001D
C - - - - - 0x009006 02:8FF6: 20 80 B0  JSR sub_B080
C - - - - - 0x009009 02:8FF9: A9 2E     LDA #< $222E
C - - - - - 0x00900B 02:8FFB: 85 1C     STA ram_001C
C - - - - - 0x00900D 02:8FFD: A9 22     LDA #> $222E
C - - - - - 0x00900F 02:8FFF: 85 1D     STA ram_001D
C - - - - - 0x009011 02:9001: A9 03     LDA #$03
C - - - - - 0x009013 02:9003: 85 22     STA ram_0022
C - - - - - 0x009015 02:9005: A9 04     LDA #$04
C - - - - - 0x009017 02:9007: 85 20     STA ram_0020
C - - - - - 0x009019 02:9009: A9 02     LDA #$02
C - - - - - 0x00901B 02:900B: 85 21     STA ram_0021
C - - - - - 0x00901D 02:900D: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x009020 02:9010: A9 52     LDA #< tbl_9052
C - - - - - 0x009022 02:9012: 85 1E     STA ram_001E
C - - - - - 0x009024 02:9014: A9 90     LDA #> tbl_9052
C - - - - - 0x009026 02:9016: 85 1F     STA ram_001F
C - - - - - 0x009028 02:9018: A9 8B     LDA #< $228B
C - - - - - 0x00902A 02:901A: 85 1C     STA ram_001C
C - - - - - 0x00902C 02:901C: A9 22     LDA #> $228B
C - - - - - 0x00902E 02:901E: 85 1D     STA ram_001D
C - - - - - 0x009030 02:9020: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x009033 02:9023: A9 01     LDA #$01
C - - - - - 0x009035 02:9025: 85 22     STA ram_0022
C - - - - - 0x009037 02:9027: A9 0B     LDA #$0B
C - - - - - 0x009039 02:9029: 85 20     STA ram_0020
C - - - - - 0x00903B 02:902B: A9 02     LDA #$02
C - - - - - 0x00903D 02:902D: 85 21     STA ram_0021
C - - - - - 0x00903F 02:902F: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x009042 02:9032: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x009045 02:9035: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x009048 02:9038: 20 C1 F5  JSR sub_0x00F5D1
C - - - - - 0x00904B 02:903B: A9 00     LDA #$00
C - - - - - 0x00904D 02:903D: 85 24     STA ram_0024
C - - - - - 0x00904F 02:903F: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x009052 02:9042: 20 8A 92  JSR sub_928A
bra_9045_loop:
C - - - - - 0x009055 02:9045: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x009058 02:9048: A5 F5     LDA ram_btn_press
C - - - - - 0x00905A 02:904A: 29 F0     AND #con_btns_AB + con_btns_SS
C - - - - - 0x00905C 02:904C: F0 F7     BEQ bra_9045_loop
C - - - - - 0x00905E 02:904E: 20 38 F6  JSR sub_0x00F648
C - - - - - 0x009061 02:9051: 60        RTS



tbl_9052:
- D 0 - I - 0x009062 02:9052: 0B        .byte $0B   ; columns
- D 0 - I - 0x009063 02:9053: 01        .byte $01   ; rows
- D 0 - I - 0x009064 02:9054: CF        .byte $CF, $D4, $D2, $C7, $FF, $FF, $D2, $D3, $C0, $D1, $D3   ; 



ofs_000_905F_05_game_over:
C - - J - - 0x00906F 02:905F: 20 CD 91  JSR sub_91CD
C - - - - - 0x009072 02:9062: A9 16     LDA #con_music_game_over
C - - - - - 0x009074 02:9064: 20 A2 F7  JSR sub_0x00F7B2_play_sound
C - - - - - 0x009077 02:9067: 20 21 93  JSR sub_9321
C - - - - - 0x00907A 02:906A: 20 00 94  JSR sub_9400
C - - - - - 0x00907D 02:906D: 20 DF 92  JSR sub_92DF
C - - - - - 0x009080 02:9070: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x009083 02:9073: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x009086 02:9076: 20 C1 F5  JSR sub_0x00F5D1
C - - - - - 0x009089 02:9079: A9 00     LDA #$00
C - - - - - 0x00908B 02:907B: 85 24     STA ram_0024
C - - - - - 0x00908D 02:907D: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x009090 02:9080: 20 8A 92  JSR sub_928A
bra_9083_loop:
C - - - - - 0x009093 02:9083: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x009096 02:9086: A5 F5     LDA ram_btn_press
C - - - - - 0x009098 02:9088: 29 F0     AND #con_btns_AB + con_btns_SS
C - - - - - 0x00909A 02:908A: F0 F7     BEQ bra_9083_loop
C - - - - - 0x00909C 02:908C: 20 CD 91  JSR sub_91CD
C - - - - - 0x00909F 02:908F: A9 07     LDA #con_music_07
C - - - - - 0x0090A1 02:9091: 20 A2 F7  JSR sub_0x00F7B2_play_sound
C - - - - - 0x0090A4 02:9094: 20 DF 92  JSR sub_92DF
C - - - - - 0x0090A7 02:9097: A9 A3     LDA #< tbl_91A3
C - - - - - 0x0090A9 02:9099: 85 1E     STA ram_001E
C - - - - - 0x0090AB 02:909B: A9 91     LDA #> tbl_91A3
C - - - - - 0x0090AD 02:909D: 85 1F     STA ram_001F
C - - - - - 0x0090AF 02:909F: A9 8C     LDA #< $218C
C - - - - - 0x0090B1 02:90A1: 85 1C     STA ram_001C
C - - - - - 0x0090B3 02:90A3: A9 21     LDA #> $218C
C - - - - - 0x0090B5 02:90A5: 85 1D     STA ram_001D
C - - - - - 0x0090B7 02:90A7: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x0090BA 02:90AA: A9 00     LDA #$00
C - - - - - 0x0090BC 02:90AC: 85 22     STA ram_0022
C - - - - - 0x0090BE 02:90AE: A9 08     LDA #$08
C - - - - - 0x0090C0 02:90B0: 85 20     STA ram_0020
C - - - - - 0x0090C2 02:90B2: A9 02     LDA #$02
C - - - - - 0x0090C4 02:90B4: 85 21     STA ram_0021
C - - - - - 0x0090C6 02:90B6: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x0090C9 02:90B9: A9 CE     LDA #< $21CE
C - - - - - 0x0090CB 02:90BB: 85 1C     STA ram_001C
C - - - - - 0x0090CD 02:90BD: A9 21     LDA #> $21CE
C - - - - - 0x0090CF 02:90BF: 85 1D     STA ram_001D
C - - - - - 0x0090D1 02:90C1: 20 80 B0  JSR sub_B080
C - - - - - 0x0090D4 02:90C4: A9 03     LDA #$03
C - - - - - 0x0090D6 02:90C6: 85 22     STA ram_0022
C - - - - - 0x0090D8 02:90C8: A9 04     LDA #$04
C - - - - - 0x0090DA 02:90CA: 85 20     STA ram_0020
C - - - - - 0x0090DC 02:90CC: A9 02     LDA #$02
C - - - - - 0x0090DE 02:90CE: 85 21     STA ram_0021
C - - - - - 0x0090E0 02:90D0: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x0090E3 02:90D3: A9 AD     LDA #< tbl_91AD
C - - - - - 0x0090E5 02:90D5: 85 1E     STA ram_001E
C - - - - - 0x0090E7 02:90D7: A9 91     LDA #> tbl_91AD
C - - - - - 0x0090E9 02:90D9: 85 1F     STA ram_001F
C - - - - - 0x0090EB 02:90DB: A9 2B     LDA #< $222B
C - - - - - 0x0090ED 02:90DD: 85 1C     STA ram_001C
C - - - - - 0x0090EF 02:90DF: A9 22     LDA #> $222B
C - - - - - 0x0090F1 02:90E1: 85 1D     STA ram_001D
C - - - - - 0x0090F3 02:90E3: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x0090F6 02:90E6: A9 0B     LDA #< $220B
C - - - - - 0x0090F8 02:90E8: 85 1C     STA ram_001C
C - - - - - 0x0090FA 02:90EA: A9 22     LDA #> $220B
C - - - - - 0x0090FC 02:90EC: 85 1D     STA ram_001D
C - - - - - 0x0090FE 02:90EE: A9 02     LDA #$02
C - - - - - 0x009100 02:90F0: 85 22     STA ram_0022
C - - - - - 0x009102 02:90F2: A9 0A     LDA #$0A
C - - - - - 0x009104 02:90F4: 85 20     STA ram_0020
C - - - - - 0x009106 02:90F6: A9 02     LDA #$02
C - - - - - 0x009108 02:90F8: 85 21     STA ram_0021
C - - - - - 0x00910A 02:90FA: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x00910D 02:90FD: A9 4B     LDA #< $224B
C - - - - - 0x00910F 02:90FF: 85 1C     STA ram_001C
C - - - - - 0x009111 02:9101: A9 22     LDA #> $224B
C - - - - - 0x009113 02:9103: 85 1D     STA ram_001D
C - - - - - 0x009115 02:9105: A9 01     LDA #$01
C - - - - - 0x009117 02:9107: 85 22     STA ram_0022
C - - - - - 0x009119 02:9109: A9 0A     LDA #$0A
C - - - - - 0x00911B 02:910B: 85 20     STA ram_0020
C - - - - - 0x00911D 02:910D: A9 02     LDA #$02
C - - - - - 0x00911F 02:910F: 85 21     STA ram_0021
C - - - - - 0x009121 02:9111: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x009124 02:9114: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x009127 02:9117: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x00912A 02:911A: 20 C1 F5  JSR sub_0x00F5D1
C - - - - - 0x00912D 02:911D: A9 00     LDA #$00
C - - - - - 0x00912F 02:911F: 85 24     STA ram_0024
C - - - - - 0x009131 02:9121: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x009134 02:9124: 20 8A 92  JSR sub_928A
bra_9127_left:
C - - - - - 0x009137 02:9127: A9 00     LDA #$00
C - - - - - 0x009139 02:9129: 85 62     STA ram_0062
loc_912B:
C D 0 - - - 0x00913B 02:912B: 20 6B 91  JSR sub_916B
loc_912E_loop:
C D 0 - - - 0x00913E 02:912E: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x009141 02:9131: A5 F5     LDA ram_btn_press
C - - - - - 0x009143 02:9133: 4A        LSR
C - - - - - 0x009144 02:9134: B0 15     BCS bra_914B_right
C - - - - - 0x009146 02:9136: 4A        LSR
C - - - - - 0x009147 02:9137: B0 EE     BCS bra_9127_left
C - - - - - 0x009149 02:9139: 4A        LSR
C - - - - - 0x00914A 02:913A: 4A        LSR
C - - - - - 0x00914B 02:913B: 4A        LSR
C - - - - - 0x00914C 02:913C: B0 0C     BCS bra_914A_RTS    ; if Start
C - - - - - 0x00914E 02:913E: 4A        LSR
C - - - - - 0x00914F 02:913F: B0 11     BCS bra_9152_select
C - - - - - 0x009151 02:9141: 4A        LSR
C - - - - - 0x009152 02:9142: B0 06     BCS bra_914A_RTS    ; if B
C - - - - - 0x009154 02:9144: 4A        LSR
C - - - - - 0x009155 02:9145: B0 03     BCS bra_914A_RTS    ; if A
C - - - - - 0x009157 02:9147: 4C 2E 91  JMP loc_912E_loop
bra_914A_RTS:
C - - - - - 0x00915A 02:914A: 60        RTS
bra_914B_right:
C - - - - - 0x00915B 02:914B: A9 01     LDA #$01
C - - - - - 0x00915D 02:914D: 85 62     STA ram_0062
C - - - - - 0x00915F 02:914F: 4C 2B 91  JMP loc_912B
bra_9152_select:
C - - - - - 0x009162 02:9152: E6 62     INC ram_0062
C - - - - - 0x009164 02:9154: A5 62     LDA ram_0062
C - - - - - 0x009166 02:9156: 29 01     AND #$01
C - - - - - 0x009168 02:9158: 85 62     STA ram_0062
C - - - - - 0x00916A 02:915A: 4C 2B 91  JMP loc_912B



sub_915D:
C - - - - - 0x00916D 02:915D: A9 58     LDA #$58
C - - - - - 0x00916F 02:915F: 85 20     STA ram_0020
C - - - - - 0x009171 02:9161: A4 9F     LDY ram_009F
C - - - - - 0x009173 02:9163: B9 8B 91  LDA tbl_918B,Y
C - - - - - 0x009176 02:9166: 85 21     STA ram_0021
C - - - - - 0x009178 02:9168: 4C 76 91  JMP loc_9176



sub_916B:
C - - - - - 0x00917B 02:916B: A4 62     LDY ram_0062
C - - - - - 0x00917D 02:916D: B9 89 91  LDA tbl_9189,Y
C - - - - - 0x009180 02:9170: 85 20     STA ram_0020
C - - - - - 0x009182 02:9172: A9 98     LDA #$98
C - - - - - 0x009184 02:9174: 85 21     STA ram_0021
loc_9176:
C D 0 - - - 0x009186 02:9176: A9 00     LDA #$00
C - - - - - 0x009188 02:9178: 85 22     STA ram_0022
C - - - - - 0x00918A 02:917A: A9 8D     LDA #< tbl_918D
C - - - - - 0x00918C 02:917C: 85 1E     STA ram_001E
C - - - - - 0x00918E 02:917E: A9 91     LDA #> tbl_918D
C - - - - - 0x009190 02:9180: 85 1F     STA ram_001F
C - - - - - 0x009192 02:9182: 20 12 F7  JSR sub_0x00F722
C - - - - - 0x009195 02:9185: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x009198 02:9188: 60        RTS



tbl_9189:
- D 0 - - - 0x009199 02:9189: 60        .byte $60   ; 00 
- D 0 - - - 0x00919A 02:918A: 88        .byte $88   ; 01 



tbl_918B:
- D 0 - - - 0x00919B 02:918B: 70        .byte $70   ; 00 
- D 0 - - - 0x00919C 02:918C: 80        .byte $80   ; 01 



tbl_918D:
- D 0 - I - 0x00919D 02:918D: 11        .byte $11   ; 
- D 0 - I - 0x00919E 02:918E: FE        .byte $FE   ; 
- D 0 - I - 0x00919F 02:918F: 01        .byte $01   ; 



tbl_9190:
- D 0 - I - 0x0091A0 02:9190: 11        .byte $11   ; columns
- D 0 - I - 0x0091A1 02:9191: 01        .byte $01   ; rows
- D 0 - I - 0x0091A2 02:9192: D3        .byte $D3, $C7, $C0, $D3, $9E, $D2, $FF, $C0, $CB, $CB, $FF, $C5, $CE, $CB, $CA, $D2, $9F   ; 



tbl_91A3:
- D 0 - I - 0x0091B3 02:91A3: 08        .byte $08   ; columns
- D 0 - I - 0x0091B4 02:91A4: 01        .byte $01   ; rows
- D 0 - I - 0x0091B5 02:91A5: CF        .byte $CF, $C0, $D2, $D2, $D6, $CE, $D1, $C3   ; 



tbl_91AD:
- D 0 - I - 0x0091BD 02:91AD: 0A        .byte $0A   ; columns
- D 0 - I - 0x0091BE 02:91AE: 03        .byte $03   ; rows
- D 0 - I - 0x0091BF 02:91AF: FF        .byte $FF, $C2, $CE, $CD, $D3, $C8, $CD, $D4, $C4, $FF   ; 
- D 0 - I - 0x0091C9 02:91B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0091D3 02:91C3: FF        .byte $FF, $FF, $D8, $C4, $D2, $FF, $FF, $CD, $CE, $FF   ; 



sub_91CD:
C - - - - - 0x0091DD 02:91CD: 20 38 F6  JSR sub_0x00F648
C - - - - - 0x0091E0 02:91D0: A9 00     LDA #$00
C - - - - - 0x0091E2 02:91D2: 85 26     STA ram_cam_pos_X_lo
C - - - - - 0x0091E4 02:91D4: 85 27     STA ram_cam_pos_X_hi
C - - - - - 0x0091E6 02:91D6: 85 28     STA ram_cam_pos_Y_lo
C - - - - - 0x0091E8 02:91D8: 85 29     STA ram_cam_pos_Y_hi
C - - - - - 0x0091EA 02:91DA: 85 24     STA ram_0024
C - - - - - 0x0091EC 02:91DC: 85 7E     STA ram_007E
C - - - - - 0x0091EE 02:91DE: 85 7F     STA ram_007F
C - - - - - 0x0091F0 02:91E0: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x0091F3 02:91E3: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0091F6 02:91E6: 20 D3 D7  JSR sub_0x00D7E3_draw_huge_star_screen
C - - - - - 0x0091F9 02:91E9: 60        RTS



sub_91EA:
C - - - - - 0x0091FA 02:91EA: A5 69     LDA ram_stage_id_2
C - - - - - 0x0091FC 02:91EC: C5 68     CMP ram_stage_id_1
C - - - - - 0x0091FE 02:91EE: B0 08     BCS bra_91F8_RTS
C - - - - - 0x009200 02:91F0: A5 68     LDA ram_stage_id_1
C - - - - - 0x009202 02:91F2: C9 3C     CMP #$3C
C - - - - - 0x009204 02:91F4: B0 02     BCS bra_91F8_RTS
C - - - - - 0x009206 02:91F6: 85 69     STA ram_stage_id_2
bra_91F8_RTS:
C - - - - - 0x009208 02:91F8: 60        RTS



ofs_000_91F9_02_load_stage:
C - - J - - 0x009209 02:91F9: 20 EA 91  JSR sub_91EA
C - - - - - 0x00920C 02:91FC: 20 CD 91  JSR sub_91CD
C - - - - - 0x00920F 02:91FF: A9 09     LDA #con_music_menu
C - - - - - 0x009211 02:9201: 20 A2 F7  JSR sub_0x00F7B2_play_sound
C - - - - - 0x009214 02:9204: 20 21 93  JSR sub_9321
C - - - - - 0x009217 02:9207: 20 00 94  JSR sub_9400
C - - - - - 0x00921A 02:920A: 20 8B 93  JSR sub_938B
C - - - - - 0x00921D 02:920D: 20 52 92  JSR sub_9252
C - - - - - 0x009220 02:9210: 20 C1 F5  JSR sub_0x00F5D1
C - - - - - 0x009223 02:9213: 20 8A 92  JSR sub_928A
loc_9216_loop:
bra_9216_loop:
C D 0 - - - 0x009226 02:9216: 20 52 92  JSR sub_9252
C - - - - - 0x009229 02:9219: 20 72 EE  JSR sub_0x00EE82_read_joystick_regs
C - - - - - 0x00922C 02:921C: A5 F5     LDA ram_btn_press
C - - - - - 0x00922E 02:921E: 29 D0     AND #con_btns_SAB
C - - - - - 0x009230 02:9220: D0 0D     BNE bra_922F_RTS
C - - - - - 0x009232 02:9222: A5 F5     LDA ram_btn_press
C - - - - - 0x009234 02:9224: 4A        LSR
C - - - - - 0x009235 02:9225: 4A        LSR
C - - - - - 0x009236 02:9226: 4A        LSR
C - - - - - 0x009237 02:9227: B0 17     BCS bra_9240_down
C - - - - - 0x009239 02:9229: 4A        LSR
C - - - - - 0x00923A 02:922A: B0 04     BCS bra_9230_up
C - - - - - 0x00923C 02:922C: 4C 16 92  JMP loc_9216_loop
bra_922F_RTS:
C - - - - - 0x00923F 02:922F: 60        RTS
bra_9230_up:
- - - - - - 0x009240 02:9230: A5 68     LDA ram_stage_id_1
- - - - - - 0x009242 02:9232: F0 E2     BEQ bra_9216_loop
- - - - - - 0x009244 02:9234: C9 3C     CMP #$3C
- - - - - - 0x009246 02:9236: B0 DE     BCS bra_9216_loop
- - - - - - 0x009248 02:9238: C6 68     DEC ram_stage_id_1
- - - - - - 0x00924A 02:923A: 20 4B 93  JSR sub_934B
- - - - - - 0x00924D 02:923D: 4C 16 92  JMP loc_9216_loop
bra_9240_down:
- - - - - - 0x009250 02:9240: A5 68     LDA ram_stage_id_1
- - - - - - 0x009252 02:9242: C5 69     CMP ram_stage_id_2
- - - - - - 0x009254 02:9244: F0 D0     BEQ bra_9216_loop
- - - - - - 0x009256 02:9246: C9 3C     CMP #$3C
- - - - - - 0x009258 02:9248: B0 CC     BCS bra_9216_loop
- - - - - - 0x00925A 02:924A: E6 68     INC ram_stage_id_1
- - - - - - 0x00925C 02:924C: 20 4B 93  JSR sub_934B
- - - - - - 0x00925F 02:924F: 4C 16 92  JMP loc_9216_loop



sub_9252:
C - - - - - 0x009262 02:9252: A9 60     LDA #$60
C - - - - - 0x009264 02:9254: 85 20     STA ram_0020
C - - - - - 0x009266 02:9256: A9 98     LDA #$98
C - - - - - 0x009268 02:9258: 85 21     STA ram_0021
C - - - - - 0x00926A 02:925A: A9 00     LDA #$00
C - - - - - 0x00926C 02:925C: 85 22     STA ram_0022
C - - - - - 0x00926E 02:925E: E6 7E     INC ram_007E
C - - - - - 0x009270 02:9260: A5 7E     LDA ram_007E
C - - - - - 0x009272 02:9262: C9 03     CMP #$03
C - - - - - 0x009274 02:9264: D0 10     BNE bra_9276
C - - - - - 0x009276 02:9266: A9 00     LDA #$00
C - - - - - 0x009278 02:9268: 85 7E     STA ram_007E
C - - - - - 0x00927A 02:926A: E6 7F     INC ram_007F
C - - - - - 0x00927C 02:926C: A5 7F     LDA ram_007F
C - - - - - 0x00927E 02:926E: C9 08     CMP #$08
C - - - - - 0x009280 02:9270: D0 04     BNE bra_9276
C - - - - - 0x009282 02:9272: A9 00     LDA #$00
C - - - - - 0x009284 02:9274: 85 7F     STA ram_007F
bra_9276:
C - - - - - 0x009286 02:9276: A4 7F     LDY ram_007F
C - - - - - 0x009288 02:9278: B9 82 92  LDA tbl_9282,Y
C - - - - - 0x00928B 02:927B: 20 13 DB  JSR sub_0x00DB23
C - - - - - 0x00928E 02:927E: 20 EA EE  JSR sub_0x00EEFA
C - - - - - 0x009291 02:9281: 60        RTS



tbl_9282:
- D 0 - - - 0x009292 02:9282: 07        .byte $07   ; 00 
- D 0 - - - 0x009293 02:9283: 08        .byte $08   ; 01 
- D 0 - - - 0x009294 02:9284: 09        .byte $09   ; 02 
- D 0 - - - 0x009295 02:9285: 08        .byte $08   ; 03 
- D 0 - - - 0x009296 02:9286: 07        .byte $07   ; 04 
- D 0 - - - 0x009297 02:9287: 06        .byte $06   ; 05 
- D 0 - - - 0x009298 02:9288: 05        .byte $05   ; 06 
- D 0 - - - 0x009299 02:9289: 06        .byte $06   ; 07 



sub_928A:
C - - - - - 0x00929A 02:928A: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x00929D 02:928D: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0092A0 02:9290: A9 9C     LDA #< tbl_929C_palette
C - - - - - 0x0092A2 02:9292: 85 1E     STA ram_001E
C - - - - - 0x0092A4 02:9294: A9 92     LDA #> tbl_929C_palette
C - - - - - 0x0092A6 02:9296: 85 1F     STA ram_001F
C - - - - - 0x0092A8 02:9298: 20 FB F5  JSR sub_0x00F60B_write_palette
C - - - - - 0x0092AB 02:929B: 60        RTS



tbl_929C_palette:
- D 0 - I - 0x0092AC 02:929C: 01        .byte $01, $2C, $12, $25   ; 
- D 0 - I - 0x0092B0 02:92A0: 01        .byte $01, $30, $12, $25   ; 
- D 0 - I - 0x0092B4 02:92A4: 01        .byte $01, $29, $12, $25   ; 
- D 0 - I - 0x0092B8 02:92A8: 01        .byte $01, $26, $12, $25   ; 

- D 0 - I - 0x0092BC 02:92AC: 01        .byte $01, $17, $10, $30   ; 
- D 0 - I - 0x0092C0 02:92B0: 01        .byte $01, $1A, $29, $30   ; 
- D 0 - I - 0x0092C4 02:92B4: 01        .byte $01, $0F, $10, $36   ; 
- D 0 - I - 0x0092C8 02:92B8: 01        .byte $01, $06, $25, $37   ; 



tbl_92BC:
- D 0 - I - 0x0092CC 02:92BC: 0B        .byte $0B   ; columns
- D 0 - I - 0x0092CD 02:92BD: 03        .byte $03   ; rows
- D 0 - I - 0x0092CE 02:92BE: C6        .byte $C6, $C0, $CC, $C4, $FF, $FF, $CE, $D5, $C4, $D1, $FF   ; 
- D 0 - I - 0x0092D9 02:92C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0092E4 02:92D4: CF        .byte $CF, $D4, $D2, $C7, $FF, $FF, $D2, $D3, $C0, $D1, $D3   ; 



sub_92DF:
C - - - - - 0x0092EF 02:92DF: A9 BC     LDA #< tbl_92BC
C - - - - - 0x0092F1 02:92E1: 85 1E     STA ram_001E
C - - - - - 0x0092F3 02:92E3: A9 92     LDA #> tbl_92BC
C - - - - - 0x0092F5 02:92E5: 85 1F     STA ram_001F
C - - - - - 0x0092F7 02:92E7: A9 6B     LDA #< $226B
C - - - - - 0x0092F9 02:92E9: 85 1C     STA ram_001C
C - - - - - 0x0092FB 02:92EB: A9 22     LDA #> $226B
C - - - - - 0x0092FD 02:92ED: 85 1D     STA ram_001D
C - - - - - 0x0092FF 02:92EF: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x009302 02:92F2: A9 4A     LDA #< $224A
C - - - - - 0x009304 02:92F4: 85 1C     STA ram_001C
C - - - - - 0x009306 02:92F6: A9 22     LDA #> $224A
C - - - - - 0x009308 02:92F8: 85 1D     STA ram_001D
C - - - - - 0x00930A 02:92FA: A9 02     LDA #$02
C - - - - - 0x00930C 02:92FC: 85 22     STA ram_0022
C - - - - - 0x00930E 02:92FE: A9 0C     LDA #$0C
C - - - - - 0x009310 02:9300: 85 20     STA ram_0020
C - - - - - 0x009312 02:9302: A9 02     LDA #$02
C - - - - - 0x009314 02:9304: 85 21     STA ram_0021
C - - - - - 0x009316 02:9306: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x009319 02:9309: A9 8A     LDA #< $228A
C - - - - - 0x00931B 02:930B: 85 1C     STA ram_001C
C - - - - - 0x00931D 02:930D: A9 22     LDA #> $228A
C - - - - - 0x00931F 02:930F: 85 1D     STA ram_001D
C - - - - - 0x009321 02:9311: A9 01     LDA #$01
C - - - - - 0x009323 02:9313: 85 22     STA ram_0022
C - - - - - 0x009325 02:9315: A9 0C     LDA #$0C
C - - - - - 0x009327 02:9317: 85 20     STA ram_0020
C - - - - - 0x009329 02:9319: A9 02     LDA #$02
C - - - - - 0x00932B 02:931B: 85 21     STA ram_0021
C - - - - - 0x00932D 02:931D: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x009330 02:9320: 60        RTS



sub_9321:
C - - - - - 0x009331 02:9321: A9 84     LDA #< tbl_9384
C - - - - - 0x009333 02:9323: 85 1E     STA ram_001E
C - - - - - 0x009335 02:9325: A9 93     LDA #> tbl_9384
C - - - - - 0x009337 02:9327: 85 1F     STA ram_001F
C - - - - - 0x009339 02:9329: A9 6C     LDA #< $216C
C - - - - - 0x00933B 02:932B: 85 1C     STA ram_001C
C - - - - - 0x00933D 02:932D: A9 21     LDA #> $216C
C - - - - - 0x00933F 02:932F: 85 1D     STA ram_001D
C - - - - - 0x009341 02:9331: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x009344 02:9334: A9 4C     LDA #< $214C
C - - - - - 0x009346 02:9336: 85 1C     STA ram_001C
C - - - - - 0x009348 02:9338: A9 21     LDA #> $214C
C - - - - - 0x00934A 02:933A: 85 1D     STA ram_001D
C - - - - - 0x00934C 02:933C: A9 03     LDA #$03
C - - - - - 0x00934E 02:933E: 85 22     STA ram_0022
C - - - - - 0x009350 02:9340: A9 08     LDA #$08
C - - - - - 0x009352 02:9342: 85 20     STA ram_0020
C - - - - - 0x009354 02:9344: A9 02     LDA #$02
C - - - - - 0x009356 02:9346: 85 21     STA ram_0021
C - - - - - 0x009358 02:9348: 20 88 F4  JSR sub_0x00F498
sub_934B:
C - - - - - 0x00935B 02:934B: A9 72     LDA #< $2172
C - - - - - 0x00935D 02:934D: 85 1C     STA ram_001C
C - - - - - 0x00935F 02:934F: A9 21     LDA #> $2172
C - - - - - 0x009361 02:9351: 85 1D     STA ram_001D
C - - - - - 0x009363 02:9353: A5 68     LDA ram_stage_id_1
C - - - - - 0x009365 02:9355: 18        CLC
C - - - - - 0x009366 02:9356: 69 01     ADC #$01
C - - - - - 0x009368 02:9358: 20 CF 93  JSR sub_93CF_calculate_bcd_tiles
C - - - - - 0x00936B 02:935B: A5 64     LDA ram_0064
C - - - - - 0x00936D 02:935D: C9 E6     CMP #$E6
C - - - - - 0x00936F 02:935F: D0 14     BNE bra_9375
C - - - - - 0x009371 02:9361: A5 65     LDA ram_0065
C - - - - - 0x009373 02:9363: C9 E0     CMP #$E0
C - - - - - 0x009375 02:9365: F0 0E     BEQ bra_9375
C - - - - - 0x009377 02:9367: A9 D2     LDA #$D2
C - - - - - 0x009379 02:9369: 85 64     STA ram_0064
C - - - - - 0x00937B 02:936B: A5 65     LDA ram_0065
C - - - - - 0x00937D 02:936D: 29 0F     AND #$0F
C - - - - - 0x00937F 02:936F: A8        TAY
C - - - - - 0x009380 02:9370: B9 7F 93  LDA tbl_937F,Y
C - - - - - 0x009383 02:9373: 85 65     STA ram_0065
bra_9375:
C - - - - - 0x009385 02:9375: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x009388 02:9378: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x00938B 02:937B: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x00938E 02:937E: 60        RTS



tbl_937F:
- - - - - - 0x00938F 02:937F: E0        .byte $E0   ; 00 
- D 0 - - - 0x009390 02:9380: E3        .byte $E3   ; 01 
- D 0 - - - 0x009391 02:9381: E2        .byte $E2   ; 02 
- D 0 - - - 0x009392 02:9382: E4        .byte $E4   ; 03 
- D 0 - - - 0x009393 02:9383: E1        .byte $E1   ; 04 



tbl_9384:
- D 0 - I - 0x009394 02:9384: 05        .byte $05   ; columns
- D 0 - I - 0x009395 02:9385: 01        .byte $01   ; rows
- D 0 - I - 0x009396 02:9386: D2        .byte $D2, $D3, $C0, $C6, $C4   ; 



sub_938B:
C - - - - - 0x00939B 02:938B: A9 CC     LDA #< tbl_93CC
C - - - - - 0x00939D 02:938D: 85 1E     STA ram_001E
C - - - - - 0x00939F 02:938F: A9 93     LDA #> tbl_93CC
C - - - - - 0x0093A1 02:9391: 85 1F     STA ram_001F
C - - - - - 0x0093A3 02:9393: A9 8F     LDA #< $228F
C - - - - - 0x0093A5 02:9395: 85 1C     STA ram_001C
C - - - - - 0x0093A7 02:9397: A9 22     LDA #> $228F
C - - - - - 0x0093A9 02:9399: 85 1D     STA ram_001D
C - - - - - 0x0093AB 02:939B: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x0093AE 02:939E: A9 91     LDA #< $2291
C - - - - - 0x0093B0 02:93A0: 85 1C     STA ram_001C
C - - - - - 0x0093B2 02:93A2: A9 22     LDA #> $2291
C - - - - - 0x0093B4 02:93A4: 85 1D     STA ram_001D
C - - - - - 0x0093B6 02:93A6: A5 7C     LDA ram_lives
C - - - - - 0x0093B8 02:93A8: 20 CF 93  JSR sub_93CF_calculate_bcd_tiles
C - - - - - 0x0093BB 02:93AB: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x0093BE 02:93AE: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x0093C1 02:93B1: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0093C4 02:93B4: A9 8F     LDA #< $228F
C - - - - - 0x0093C6 02:93B6: 85 1C     STA ram_001C
C - - - - - 0x0093C8 02:93B8: A9 22     LDA #> $228F
C - - - - - 0x0093CA 02:93BA: 85 1D     STA ram_001D
C - - - - - 0x0093CC 02:93BC: A9 04     LDA #$04
C - - - - - 0x0093CE 02:93BE: 85 20     STA ram_0020
C - - - - - 0x0093D0 02:93C0: A9 02     LDA #$02
C - - - - - 0x0093D2 02:93C2: 85 21     STA ram_0021
C - - - - - 0x0093D4 02:93C4: A9 00     LDA #$00
C - - - - - 0x0093D6 02:93C6: 85 22     STA ram_0022
C - - - - - 0x0093D8 02:93C8: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x0093DB 02:93CB: 60        RTS



tbl_93CC:
- D 0 - I - 0x0093DC 02:93CC: 01        .byte $01   ; columns
- D 0 - I - 0x0093DD 02:93CD: 01        .byte $01   ; rows
- D 0 - I - 0x0093DE 02:93CE: DA        .byte $DA   ; 



sub_93CF_calculate_bcd_tiles:
C - - - - - 0x0093DF 02:93CF: 85 65     STA ram_0065
C - - - - - 0x0093E1 02:93D1: A9 02     LDA #$02
C - - - - - 0x0093E3 02:93D3: 85 62     STA ram_0062
C - - - - - 0x0093E5 02:93D5: A9 01     LDA #$01
C - - - - - 0x0093E7 02:93D7: 85 63     STA ram_0063
C - - - - - 0x0093E9 02:93D9: A9 00     LDA #$00
C - - - - - 0x0093EB 02:93DB: 85 64     STA ram_0064
loc_93DD_loop:
C D 0 - - - 0x0093ED 02:93DD: A5 65     LDA ram_0065
C - - - - - 0x0093EF 02:93DF: 38        SEC
C - - - - - 0x0093F0 02:93E0: E9 0A     SBC #$0A
C - - - - - 0x0093F2 02:93E2: 90 07     BCC bra_93EB
C - - - - - 0x0093F4 02:93E4: 85 65     STA ram_0065
C - - - - - 0x0093F6 02:93E6: E6 64     INC ram_0064
C - - - - - 0x0093F8 02:93E8: 4C DD 93  JMP loc_93DD_loop
bra_93EB:
C - - - - - 0x0093FB 02:93EB: A5 64     LDA ram_0064
C - - - - - 0x0093FD 02:93ED: 09 E0     ORA #$E0
C - - - - - 0x0093FF 02:93EF: 85 64     STA ram_0064
C - - - - - 0x009401 02:93F1: A5 65     LDA ram_0065
C - - - - - 0x009403 02:93F3: 09 E0     ORA #$E0
C - - - - - 0x009405 02:93F5: 85 65     STA ram_0065
C - - - - - 0x009407 02:93F7: A9 62     LDA #$62
C - - - - - 0x009409 02:93F9: 85 1E     STA ram_001E
C - - - - - 0x00940B 02:93FB: A9 00     LDA #$00
C - - - - - 0x00940D 02:93FD: 85 1F     STA ram_001F
C - - - - - 0x00940F 02:93FF: 60        RTS



sub_9400:
C - - - - - 0x009410 02:9400: A9 98     LDA #< tbl_9598
C - - - - - 0x009412 02:9402: 85 1E     STA ram_001E
C - - - - - 0x009414 02:9404: A9 95     LDA #> tbl_9598
C - - - - - 0x009416 02:9406: 85 1F     STA ram_001F
C - - - - - 0x009418 02:9408: A9 AC     LDA #< $21AC
C - - - - - 0x00941A 02:940A: 85 1C     STA ram_001C
C - - - - - 0x00941C 02:940C: A9 21     LDA #> $21AC
C - - - - - 0x00941E 02:940E: 85 1D     STA ram_001D
C - - - - - 0x009420 02:9410: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x009423 02:9413: A9 A2     LDA #< tbl_95A2
C - - - - - 0x009425 02:9415: 85 1E     STA ram_001E
C - - - - - 0x009427 02:9417: A9 95     LDA #> tbl_95A2
C - - - - - 0x009429 02:9419: 85 1F     STA ram_001F
C - - - - - 0x00942B 02:941B: A9 0C     LDA #< $220C
C - - - - - 0x00942D 02:941D: 85 1C     STA ram_001C
C - - - - - 0x00942F 02:941F: A9 22     LDA #> $220C
C - - - - - 0x009431 02:9421: 85 1D     STA ram_001D
C - - - - - 0x009433 02:9423: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x009436 02:9426: A9 8C     LDA #< $218C
C - - - - - 0x009438 02:9428: 85 1C     STA ram_001C
C - - - - - 0x00943A 02:942A: A9 21     LDA #> $218C
C - - - - - 0x00943C 02:942C: 85 1D     STA ram_001D
C - - - - - 0x00943E 02:942E: A9 00     LDA #$00
C - - - - - 0x009440 02:9430: 85 22     STA ram_0022
C - - - - - 0x009442 02:9432: A9 08     LDA #$08
C - - - - - 0x009444 02:9434: 85 20     STA ram_0020
C - - - - - 0x009446 02:9436: A9 06     LDA #$06
C - - - - - 0x009448 02:9438: 85 21     STA ram_0021
C - - - - - 0x00944A 02:943A: 20 88 F4  JSR sub_0x00F498
C - - - - - 0x00944D 02:943D: A9 08     LDA #$08
C - - - - - 0x00944F 02:943F: 85 A0     STA ram_00A0
C - - - - - 0x009451 02:9441: 85 B0     STA ram_00B0
C - - - - - 0x009453 02:9443: A9 01     LDA #$01
C - - - - - 0x009455 02:9445: 85 A1     STA ram_00A1
C - - - - - 0x009457 02:9447: 85 B1     STA ram_00B1
C - - - - - 0x009459 02:9449: A0 00     LDY #$00
bra_944B_loop:
C - - - - - 0x00945B 02:944B: B9 B2 00  LDA ram_00B2_unk,Y
C - - - - - 0x00945E 02:944E: 29 0F     AND #$0F
C - - - - - 0x009460 02:9450: 09 E0     ORA #$E0
C - - - - - 0x009462 02:9452: 99 B2 00  STA ram_00B2_unk,Y
C - - - - - 0x009465 02:9455: B9 A2 00  LDA ram_00A2,Y
C - - - - - 0x009468 02:9458: 29 0F     AND #$0F
C - - - - - 0x00946A 02:945A: 09 E0     ORA #$E0
C - - - - - 0x00946C 02:945C: 99 A2 00  STA ram_00A2,Y
C - - - - - 0x00946F 02:945F: C8        INY
C - - - - - 0x009470 02:9460: C0 08     CPY #$08
C - - - - - 0x009472 02:9462: D0 E7     BNE bra_944B_loop
C - - - - - 0x009474 02:9464: A9 A0     LDA #< ram_00A0
C - - - - - 0x009476 02:9466: 85 1E     STA ram_001E
C - - - - - 0x009478 02:9468: A9 00     LDA #> ram_00A0
C - - - - - 0x00947A 02:946A: 85 1F     STA ram_001F
C - - - - - 0x00947C 02:946C: A9 CC     LDA #< $21CC
C - - - - - 0x00947E 02:946E: 85 1C     STA ram_001C
C - - - - - 0x009480 02:9470: A9 21     LDA #> $21CC
C - - - - - 0x009482 02:9472: 85 1D     STA ram_001D
C - - - - - 0x009484 02:9474: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x009487 02:9477: A9 B0     LDA #< ram_00B0
C - - - - - 0x009489 02:9479: 85 1E     STA ram_001E
C - - - - - 0x00948B 02:947B: A9 00     LDA #> ram_00B0
C - - - - - 0x00948D 02:947D: 85 1F     STA ram_001F
C - - - - - 0x00948F 02:947F: A9 2C     LDA #< $222C
C - - - - - 0x009491 02:9481: 85 1C     STA ram_001C
C - - - - - 0x009493 02:9483: A9 22     LDA #> $222C
C - - - - - 0x009495 02:9485: 85 1D     STA ram_001D
C - - - - - 0x009497 02:9487: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x00949A 02:948A: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x00949D 02:948D: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x0094A0 02:9490: 60        RTS



ofs_000_9491_03_stage_complete:
C - - J - - 0x0094A1 02:9491: A5 9E     LDA ram_009E
C - - - - - 0x0094A3 02:9493: 29 03     AND #$03
C - - - - - 0x0094A5 02:9495: 85 95     STA ram_0095
C - - - - - 0x0094A7 02:9497: 98        TYA
C - - - - - 0x0094A8 02:9498: 48        PHA
C - - - - - 0x0094A9 02:9499: A5 95     LDA ram_0095
C - - - - - 0x0094AB 02:949B: C9 03     CMP #$03
C - - - - - 0x0094AD 02:949D: D0 03     BNE bra_94A2
C - - - - - 0x0094AF 02:949F: 4C 13 95  JMP loc_9513
bra_94A2:
C - - - - - 0x0094B2 02:94A2: A0 00     LDY #$00
bra_94A4_loop:
C - - - - - 0x0094B4 02:94A4: B9 B2 00  LDA ram_00B2_unk,Y
C - - - - - 0x0094B7 02:94A7: 29 0F     AND #$0F
C - - - - - 0x0094B9 02:94A9: 99 B2 00  STA ram_00B2_unk,Y
C - - - - - 0x0094BC 02:94AC: B9 A2 00  LDA ram_00A2,Y
C - - - - - 0x0094BF 02:94AF: 29 0F     AND #$0F
C - - - - - 0x0094C1 02:94B1: 99 A2 00  STA ram_00A2,Y
C - - - - - 0x0094C4 02:94B4: C8        INY
C - - - - - 0x0094C5 02:94B5: C0 08     CPY #$08
C - - - - - 0x0094C7 02:94B7: D0 EB     BNE bra_94A4_loop
C - - - - - 0x0094C9 02:94B9: A5 95     LDA ram_0095
C - - - - - 0x0094CB 02:94BB: F0 09     BEQ bra_94C6
C - - - - - 0x0094CD 02:94BD: C9 01     CMP #$01
C - - - - - 0x0094CF 02:94BF: F0 0A     BEQ bra_94CB
C - - - - - 0x0094D1 02:94C1: E6 B6     INC ram_00B2_unk + $04
C - - - - - 0x0094D3 02:94C3: 4C D2 94  JMP loc_94D2
bra_94C6:
C - - - - - 0x0094D6 02:94C6: E6 B7     INC ram_00B2_unk + $05
C - - - - - 0x0094D8 02:94C8: 4C D2 94  JMP loc_94D2
bra_94CB:
C - - - - - 0x0094DB 02:94CB: A5 B7     LDA ram_00B2_unk + $05
C - - - - - 0x0094DD 02:94CD: 18        CLC
C - - - - - 0x0094DE 02:94CE: 69 05     ADC #$05
C - - - - - 0x0094E0 02:94D0: 85 B7     STA ram_00B2_unk + $05
loc_94D2:
C D 0 - - - 0x0094E2 02:94D2: A0 07     LDY #$07
bra_94D4_loop:
loc_94D4_loop:
C D 0 - - - 0x0094E4 02:94D4: B9 B2 00  LDA ram_00B2_unk,Y
C - - - - - 0x0094E7 02:94D7: C9 0A     CMP #$0A
C - - - - - 0x0094E9 02:94D9: 90 15     BCC bra_94F0
C - - - - - 0x0094EB 02:94DB: B9 B1 00  LDA ram_00B1,Y
C - - - - - 0x0094EE 02:94DE: 18        CLC
C - - - - - 0x0094EF 02:94DF: 69 01     ADC #$01
C - - - - - 0x0094F1 02:94E1: 99 B1 00  STA ram_00B1,Y
C - - - - - 0x0094F4 02:94E4: B9 B2 00  LDA ram_00B2_unk,Y
C - - - - - 0x0094F7 02:94E7: 38        SEC
C - - - - - 0x0094F8 02:94E8: E9 0A     SBC #$0A
C - - - - - 0x0094FA 02:94EA: 99 B2 00  STA ram_00B2_unk,Y
C - - - - - 0x0094FD 02:94ED: 4C D4 94  JMP loc_94D4_loop
bra_94F0:
C - - - - - 0x009500 02:94F0: 88        DEY
C - - - - - 0x009501 02:94F1: D0 E1     BNE bra_94D4_loop
C - - - - - 0x009503 02:94F3: A0 00     LDY #$00
bra_94F5_loop:
C - - - - - 0x009505 02:94F5: B9 A2 00  LDA ram_00A2,Y
C - - - - - 0x009508 02:94F8: D9 B2 00  CMP ram_00B2_unk,Y
C - - - - - 0x00950B 02:94FB: F0 04     BEQ bra_9501
C - - - - - 0x00950D 02:94FD: 10 14     BPL bra_9513
C - - - - - 0x00950F 02:94FF: 30 05     BMI bra_9506    ; jmp
bra_9501:
C - - - - - 0x009511 02:9501: C8        INY
C - - - - - 0x009512 02:9502: C0 08     CPY #$08
C - - - - - 0x009514 02:9504: D0 EF     BNE bra_94F5_loop
bra_9506:
C - - - - - 0x009516 02:9506: A0 00     LDY #$00
bra_9508_loop:
C - - - - - 0x009518 02:9508: B9 B2 00  LDA ram_00B2_unk,Y
C - - - - - 0x00951B 02:950B: 99 A2 00  STA ram_00A2,Y
C - - - - - 0x00951E 02:950E: C8        INY
C - - - - - 0x00951F 02:950F: C0 08     CPY #$08
C - - - - - 0x009521 02:9511: D0 F5     BNE bra_9508_loop
bra_9513:
loc_9513:
C D 0 - - - 0x009523 02:9513: A5 95     LDA ram_0095
C - - - - - 0x009525 02:9515: 0A        ASL
C - - - - - 0x009526 02:9516: 0A        ASL
C - - - - - 0x009527 02:9517: 0A        ASL
C - - - - - 0x009528 02:9518: A8        TAY
C - - - - - 0x009529 02:9519: A9 80     LDA #$80
C - - - - - 0x00952B 02:951B: 99 30 06  STA ram_msg_state,Y
C - - - - - 0x00952E 02:951E: A5 6A     LDA ram_006A
C - - - - - 0x009530 02:9520: 99 31 06  STA ram_pos_X_lo_msg,Y
C - - - - - 0x009533 02:9523: A5 6B     LDA ram_006B
C - - - - - 0x009535 02:9525: 99 32 06  STA ram_pos_X_hi_msg,Y
C - - - - - 0x009538 02:9528: A5 6C     LDA ram_006C
C - - - - - 0x00953A 02:952A: 38        SEC
C - - - - - 0x00953B 02:952B: E9 10     SBC #< $0010
C - - - - - 0x00953D 02:952D: 99 33 06  STA ram_pos_Y_lo_msg,Y
C - - - - - 0x009540 02:9530: A5 6D     LDA ram_006D
C - - - - - 0x009542 02:9532: E9 00     SBC #> $0010
C - - - - - 0x009544 02:9534: 99 34 06  STA ram_pos_Y_hi_msg,Y
C - - - - - 0x009547 02:9537: A9 00     LDA #$00
C - - - - - 0x009549 02:9539: 99 35 06  STA ram_msg_timer,Y
C - - - - - 0x00954C 02:953C: A5 95     LDA ram_0095
C - - - - - 0x00954E 02:953E: 99 36 06  STA ram_msg_id,Y
C - - - - - 0x009551 02:9541: 68        PLA
C - - - - - 0x009552 02:9542: A8        TAY
C - - - - - 0x009553 02:9543: 60        RTS



ofs_000_9544_04_messages:
C - - J - - 0x009554 02:9544: A2 00     LDX #$00
bra_9546_loop:
C - - - - - 0x009556 02:9546: BD 30 06  LDA ram_msg_state,X
C - - - - - 0x009559 02:9549: 10 03     BPL bra_954E_does_not_exist
C - - - - - 0x00955B 02:954B: 20 58 95  JSR sub_9558
bra_954E_does_not_exist:
C - - - - - 0x00955E 02:954E: 8A        TXA
C - - - - - 0x00955F 02:954F: 18        CLC
C - - - - - 0x009560 02:9550: 69 08     ADC #$08
C - - - - - 0x009562 02:9552: AA        TAX
C - - - - - 0x009563 02:9553: E0 20     CPX #$20
C - - - - - 0x009565 02:9555: D0 EF     BNE bra_9546_loop
C - - - - - 0x009567 02:9557: 60        RTS



sub_9558:
C - - - - - 0x009568 02:9558: FE 35 06  INC ram_msg_timer,X
C - - - - - 0x00956B 02:955B: BD 35 06  LDA ram_msg_timer,X
C - - - - - 0x00956E 02:955E: C9 20     CMP #$20
C - - - - - 0x009570 02:9560: D0 05     BNE bra_9567
C - - - - - 0x009572 02:9562: A9 00     LDA #$00
C - - - - - 0x009574 02:9564: 9D 30 06  STA ram_msg_state,X
bra_9567:
C - - - - - 0x009577 02:9567: BD 31 06  LDA ram_pos_X_lo_msg,X
C - - - - - 0x00957A 02:956A: 85 76     STA ram_0076
C - - - - - 0x00957C 02:956C: BD 32 06  LDA ram_pos_X_hi_msg,X
C - - - - - 0x00957F 02:956F: 85 77     STA ram_0077
C - - - - - 0x009581 02:9571: BD 33 06  LDA ram_pos_Y_lo_msg,X
C - - - - - 0x009584 02:9574: 85 78     STA ram_0078
C - - - - - 0x009586 02:9576: 38        SEC
C - - - - - 0x009587 02:9577: E9 01     SBC #< $0001
C - - - - - 0x009589 02:9579: 9D 33 06  STA ram_pos_Y_lo_msg,X
C - - - - - 0x00958C 02:957C: BD 34 06  LDA ram_pos_Y_hi_msg,X
C - - - - - 0x00958F 02:957F: 85 79     STA ram_0079
C - - - - - 0x009591 02:9581: E9 00     SBC #> $0001
C - - - - - 0x009593 02:9583: 9D 34 06  STA ram_pos_Y_hi_msg,X
C - - - - - 0x009596 02:9586: 20 07 CF  JSR sub_0x00CF17
C - - - - - 0x009599 02:9589: BD 36 06  LDA ram_msg_id,X
C - - - - - 0x00959C 02:958C: A8        TAY
C - - - - - 0x00959D 02:958D: B9 94 95  LDA tbl_9594,Y
C - - - - - 0x0095A0 02:9590: 20 13 DB  JSR sub_0x00DB23
C - - - - - 0x0095A3 02:9593: 60        RTS



tbl_9594:
- D 0 - - - 0x0095A4 02:9594: 61        .byte $61   ; 00 100
- D 0 - - - 0x0095A5 02:9595: 62        .byte $62   ; 01 500
- D 0 - - - 0x0095A6 02:9596: 63        .byte $63   ; 02 1000
- D 0 - - - 0x0095A7 02:9597: 64        .byte $64   ; 03 1up



tbl_9598:
- D 0 - I - 0x0095A8 02:9598: 08        .byte $08   ; columns
- D 0 - I - 0x0095A9 02:9599: 01        .byte $01   ; rows
- D 0 - I - 0x0095AA 02:959A: C7        .byte $C7, $C8, $DB, $D2, $C2, $CE, $D1, $C4   ; 



tbl_95A2:
- D 0 - I - 0x0095B2 02:95A2: 08        .byte $08   ; columns
- D 0 - I - 0x0095B3 02:95A3: 01        .byte $01   ; rows
- D 0 - I - 0x0095B4 02:95A4: D2        .byte $D2, $C2, $CE, $D1, $C4, $FF, $FF, $FF   ; 


; bzk garbage
- - - - - - 0x0095BC 02:95AC: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0095C0 02:95B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0095D0 02:95C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0095E0 02:95D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0095F0 02:95E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009600 02:95F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009610 02:9600: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009620 02:9610: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009630 02:9620: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009640 02:9630: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009650 02:9640: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009660 02:9650: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009670 02:9660: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009680 02:9670: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009690 02:9680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0096A0 02:9690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0096B0 02:96A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0096C0 02:96B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0096D0 02:96C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0096E0 02:96D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0096F0 02:96E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009700 02:96F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009710 02:9700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009720 02:9710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009730 02:9720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009740 02:9730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009750 02:9740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009760 02:9750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009770 02:9760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009780 02:9770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009790 02:9780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0097A0 02:9790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0097B0 02:97A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0097C0 02:97B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0097D0 02:97C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0097E0 02:97D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0097F0 02:97E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009800 02:97F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009810 02:9800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009820 02:9810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009830 02:9820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009840 02:9830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009850 02:9840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009860 02:9850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009870 02:9860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009880 02:9870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009890 02:9880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0098A0 02:9890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0098B0 02:98A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0098C0 02:98B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0098D0 02:98C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0098E0 02:98D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0098F0 02:98E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009900 02:98F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009910 02:9900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009920 02:9910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009930 02:9920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009940 02:9930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009950 02:9940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009960 02:9950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009970 02:9960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009980 02:9970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009990 02:9980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0099A0 02:9990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0099B0 02:99A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0099C0 02:99B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0099D0 02:99C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0099E0 02:99D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0099F0 02:99E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A00 02:99F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A10 02:9A00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A20 02:9A10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A30 02:9A20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A40 02:9A30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A50 02:9A40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A60 02:9A50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A70 02:9A60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A80 02:9A70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009A90 02:9A80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009AA0 02:9A90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009AB0 02:9AA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009AC0 02:9AB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009AD0 02:9AC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009AE0 02:9AD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009AF0 02:9AE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B00 02:9AF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B10 02:9B00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B20 02:9B10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B30 02:9B20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B40 02:9B30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B50 02:9B40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B60 02:9B50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B70 02:9B60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B80 02:9B70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009B90 02:9B80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009BA0 02:9B90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009BB0 02:9BA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009BC0 02:9BB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009BD0 02:9BC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009BE0 02:9BD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009BF0 02:9BE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C00 02:9BF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C10 02:9C00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C20 02:9C10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C30 02:9C20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C40 02:9C30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C50 02:9C40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C60 02:9C50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C70 02:9C60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C80 02:9C70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009C90 02:9C80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009CA0 02:9C90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009CB0 02:9CA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009CC0 02:9CB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009CD0 02:9CC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009CE0 02:9CD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009CF0 02:9CE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D00 02:9CF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D10 02:9D00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D20 02:9D10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D30 02:9D20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D40 02:9D30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D50 02:9D40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D60 02:9D50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D70 02:9D60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D80 02:9D70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009D90 02:9D80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009DA0 02:9D90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009DB0 02:9DA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009DC0 02:9DB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009DD0 02:9DC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009DE0 02:9DD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009DF0 02:9DE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x009E00 02:9DF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_0x009E10_music_data:
; ch = channel
- D 0 - I - 0x009E10 02:9E00: B3 AE     .word _music_AEB3_01_title_screen
- D 0 - I - 0x009E12 02:9E02: A6 A2     .word _music_A2A6_02_bricks_stage_soundtrack
- D 0 - I - 0x009E14 02:9E04: CD A6     .word _music_A6CD_03_final_cutscene
- - - - - - 0x009E16 02:9E06: F2 AB     .word _music_ABF2_04
- D 0 - I - 0x009E18 02:9E08: 2E 9E     .word _music_9E2E_05_concrete_stage_soundtrack
- - - - - - 0x009E1A 02:9E0A: F2 AB     .word _music_ABF2_06
- D 0 - I - 0x009E1C 02:9E0C: 7B AC     .word _music_AC7B_07
- D 0 - I - 0x009E1E 02:9E0E: 1B AD     .word _music_AD1B_08_pipes_stage_is_complete
- D 0 - I - 0x009E20 02:9E10: B4 AD     .word _music_ADB4_09_menu
- D 0 - I - 0x009E22 02:9E12: BA AA     .word _music_AABA_0A_pipes_stage_soundtrack
- - - - - - 0x009E24 02:9E14: F2 AB     .word _music_ABF2_0B
- - - - - - 0x009E26 02:9E16: F2 AB     .word _music_ABF2_0C
- - - - - - 0x009E28 02:9E18: F2 AB     .word _music_ABF2_0D
- - - - - - 0x009E2A 02:9E1A: F2 AB     .word _music_ABF2_0E
- D 0 - I - 0x009E2C 02:9E1C: 34 EA     .word _sound_0x00EA44_0F_player_death
- D 0 - I - 0x009E2E 02:9E1E: 97 EA     .word _sound_0x00EAA7_10_pick_up_item
- D 0 - I - 0x009E30 02:9E20: B0 EA     .word _sound_0x00EAC0_11_push_item
- D 0 - I - 0x009E32 02:9E22: C4 EA     .word _sound_0x00EAD4_12_enemy_death
- - - - - - 0x009E34 02:9E24: F5 EA     .word _sound_0x00EB05_13
- D 0 - I - 0x009E36 02:9E26: 07 EB     .word _sound_0x00EB17_14
- D 0 - I - 0x009E38 02:9E28: F2 AB     .word _music_ABF2_15_stage_is_complete
- D 0 - I - 0x009E3A 02:9E2A: 5A AE     .word _music_AE5A_16_game_over
- D 0 - I - 0x009E3C 02:9E2C: 1B EB     .word _sound_0x00EB2B_17_throw_glove



_music_9E2E_05_concrete_stage_soundtrack:
- D 0 - I - 0x009E3E 02:9E2E: 01        .byte $01   ; 
- D 0 - I - 0x009E3F 02:9E2F: 3A 9E     .word ch_05_9E3A_00
- D 0 - I - 0x009E41 02:9E31: E4 9F     .word ch_05_9FE4_01
- D 0 - I - 0x009E43 02:9E33: 90 A1     .word ch_05_A190_02
- D 0 - I - 0x009E45 02:9E35: 2A A2     .word ch_05_A22A_03
- - - - - - 0x009E47 02:9E37: 00 00     .word $0000    ; 04
- D 0 - I - 0x009E49 02:9E39: 14        .byte $14   ; 



ch_05_9E3A_00:
- D 0 - I - 0x009E4A 02:9E3A: E0        .byte $E0   ; 
- D 0 - I - 0x009E4B 02:9E3B: 3E A9     .word off_E0_A93E
- D 0 - I - 0x009E4D 02:9E3D: 8F        .byte $8F   ; 
- D 0 - I - 0x009E4E 02:9E3E: 39        .byte $39   ; 
- D 0 - I - 0x009E4F 02:9E3F: 90        .byte $90   ; 
- D 0 - I - 0x009E50 02:9E40: 38        .byte $38   ; 
- D 0 - I - 0x009E51 02:9E41: 8F        .byte $8F   ; 
- D 0 - I - 0x009E52 02:9E42: 39        .byte $39   ; 
- D 0 - I - 0x009E53 02:9E43: 90        .byte $90   ; 
- D 0 - I - 0x009E54 02:9E44: 38        .byte $38   ; 
- D 0 - I - 0x009E55 02:9E45: 8F        .byte $8F   ; 
- D 0 - I - 0x009E56 02:9E46: 39        .byte $39   ; 
- D 0 - I - 0x009E57 02:9E47: 90        .byte $90   ; 
- D 0 - I - 0x009E58 02:9E48: 34        .byte $34   ; 
- D 0 - I - 0x009E59 02:9E49: 8F        .byte $8F   ; 
- D 0 - I - 0x009E5A 02:9E4A: 31        .byte $31   ; 
- D 0 - I - 0x009E5B 02:9E4B: 90        .byte $90   ; 
- D 0 - I - 0x009E5C 02:9E4C: 2D        .byte $2D   ; 
- D 0 - I - 0x009E5D 02:9E4D: 82        .byte $82   ; 
- D 0 - I - 0x009E5E 02:9E4E: 37        .byte $37   ; 
- D 0 - I - 0x009E5F 02:9E4F: 8F        .byte $8F   ; 
- D 0 - I - 0x009E60 02:9E50: 7F        .byte $7F   ; 
- D 0 - I - 0x009E61 02:9E51: 90        .byte $90   ; 
- D 0 - I - 0x009E62 02:9E52: 37        .byte $37   ; 
- D 0 - I - 0x009E63 02:9E53: 82        .byte $82   ; 
- D 0 - I - 0x009E64 02:9E54: 7F        .byte $7F   ; 
- D 0 - I - 0x009E65 02:9E55: 8F        .byte $8F   ; 
- D 0 - I - 0x009E66 02:9E56: 35        .byte $35   ; 
- D 0 - I - 0x009E67 02:9E57: 91        .byte $91   ; 
- D 0 - I - 0x009E68 02:9E58: 37        .byte $37   ; 
- D 0 - I - 0x009E69 02:9E59: 35        .byte $35   ; 
- D 0 - I - 0x009E6A 02:9E5A: 8F        .byte $8F   ; 
- D 0 - I - 0x009E6B 02:9E5B: 34        .byte $34   ; 
- D 0 - I - 0x009E6C 02:9E5C: 90        .byte $90   ; 
- D 0 - I - 0x009E6D 02:9E5D: 33        .byte $33   ; 
- D 0 - I - 0x009E6E 02:9E5E: 8F        .byte $8F   ; 
- D 0 - I - 0x009E6F 02:9E5F: 34        .byte $34   ; 
- D 0 - I - 0x009E70 02:9E60: 90        .byte $90   ; 
- D 0 - I - 0x009E71 02:9E61: 33        .byte $33   ; 
- D 0 - I - 0x009E72 02:9E62: 8F        .byte $8F   ; 
- D 0 - I - 0x009E73 02:9E63: 34        .byte $34   ; 
- D 0 - I - 0x009E74 02:9E64: 90        .byte $90   ; 
- D 0 - I - 0x009E75 02:9E65: 31        .byte $31   ; 
- D 0 - I - 0x009E76 02:9E66: 8F        .byte $8F   ; 
- D 0 - I - 0x009E77 02:9E67: 2D        .byte $2D   ; 
- D 0 - I - 0x009E78 02:9E68: 90        .byte $90   ; 
- D 0 - I - 0x009E79 02:9E69: 2A        .byte $2A   ; 
- D 0 - I - 0x009E7A 02:9E6A: 82        .byte $82   ; 
- D 0 - I - 0x009E7B 02:9E6B: 7E        .byte $7E   ; 
- D 0 - I - 0x009E7C 02:9E6C: 8F        .byte $8F   ; 
- D 0 - I - 0x009E7D 02:9E6D: 30        .byte $30   ; 
- D 0 - I - 0x009E7E 02:9E6E: 90        .byte $90   ; 
- D 0 - I - 0x009E7F 02:9E6F: 2F        .byte $2F   ; 
- D 0 - I - 0x009E80 02:9E70: 8F        .byte $8F   ; 
- D 0 - I - 0x009E81 02:9E71: 7F        .byte $7F   ; 
- D 0 - I - 0x009E82 02:9E72: 90        .byte $90   ; 
- D 0 - I - 0x009E83 02:9E73: 28        .byte $28   ; 
- D 0 - I - 0x009E84 02:9E74: 8F        .byte $8F   ; 
- D 0 - I - 0x009E85 02:9E75: 2A        .byte $2A   ; 
- D 0 - I - 0x009E86 02:9E76: 90        .byte $90   ; 
- D 0 - I - 0x009E87 02:9E77: 7F        .byte $7F   ; 
- D 0 - I - 0x009E88 02:9E78: CA        .byte $CA   ; 
- D 0 - I - 0x009E89 02:9E79: CA        .byte $CA   ; 
- D 0 - I - 0x009E8A 02:9E7A: C2        .byte $C2   ; 
- D 0 - I - 0x009E8B 02:9E7B: 82        .byte $82   ; 
- D 0 - I - 0x009E8C 02:9E7C: 2D        .byte $2D   ; 
- D 0 - I - 0x009E8D 02:9E7D: 7F        .byte $7F   ; 
- D 0 - I - 0x009E8E 02:9E7E: 91        .byte $91   ; 
- D 0 - I - 0x009E8F 02:9E7F: 30        .byte $30   ; 
- D 0 - I - 0x009E90 02:9E80: 7E        .byte $7E   ; 
- D 0 - I - 0x009E91 02:9E81: 8F        .byte $8F   ; 
- D 0 - I - 0x009E92 02:9E82: 7E        .byte $7E   ; 
- D 0 - I - 0x009E93 02:9E83: 31        .byte $31   ; 
- D 0 - I - 0x009E94 02:9E84: 90        .byte $90   ; 
- D 0 - I - 0x009E95 02:9E85: 2D        .byte $2D   ; 
- D 0 - I - 0x009E96 02:9E86: 81        .byte $81   ; 
- D 0 - I - 0x009E97 02:9E87: 7F        .byte $7F   ; 
- D 0 - I - 0x009E98 02:9E88: 8F        .byte $8F   ; 
- D 0 - I - 0x009E99 02:9E89: 7F        .byte $7F   ; 
- D 0 - I - 0x009E9A 02:9E8A: 90        .byte $90   ; 
- D 0 - I - 0x009E9B 02:9E8B: 28        .byte $28   ; 
- D 0 - I - 0x009E9C 02:9E8C: 8F        .byte $8F   ; 
- D 0 - I - 0x009E9D 02:9E8D: 2A        .byte $2A   ; 
- D 0 - I - 0x009E9E 02:9E8E: 90        .byte $90   ; 
- D 0 - I - 0x009E9F 02:9E8F: 28        .byte $28   ; 
- D 0 - I - 0x009EA0 02:9E90: 8F        .byte $8F   ; 
- D 0 - I - 0x009EA1 02:9E91: 2D        .byte $2D   ; 
- D 0 - I - 0x009EA2 02:9E92: 90        .byte $90   ; 
- D 0 - I - 0x009EA3 02:9E93: 7F        .byte $7F   ; 
- D 0 - I - 0x009EA4 02:9E94: 2D        .byte $2D   ; 
- D 0 - I - 0x009EA5 02:9E95: 7F        .byte $7F   ; 
- D 0 - I - 0x009EA6 02:9E96: 2D        .byte $2D   ; 
- D 0 - I - 0x009EA7 02:9E97: 30        .byte $30   ; 
- D 0 - I - 0x009EA8 02:9E98: 7F        .byte $7F   ; 
- D 0 - I - 0x009EA9 02:9E99: 30        .byte $30   ; 
- D 0 - I - 0x009EAA 02:9E9A: 8F        .byte $8F   ; 
- D 0 - I - 0x009EAB 02:9E9B: 7F        .byte $7F   ; 
- D 0 - I - 0x009EAC 02:9E9C: 90        .byte $90   ; 
- D 0 - I - 0x009EAD 02:9E9D: 2D        .byte $2D   ; 
- D 0 - I - 0x009EAE 02:9E9E: 81        .byte $81   ; 
- D 0 - I - 0x009EAF 02:9E9F: 7F        .byte $7F   ; 
- D 0 - I - 0x009EB0 02:9EA0: 8F        .byte $8F   ; 
- D 0 - I - 0x009EB1 02:9EA1: 7F        .byte $7F   ; 
- D 0 - I - 0x009EB2 02:9EA2: 90        .byte $90   ; 
- D 0 - I - 0x009EB3 02:9EA3: 28        .byte $28   ; 
- D 0 - I - 0x009EB4 02:9EA4: 8F        .byte $8F   ; 
- D 0 - I - 0x009EB5 02:9EA5: 2A        .byte $2A   ; 
- D 0 - I - 0x009EB6 02:9EA6: 90        .byte $90   ; 
- D 0 - I - 0x009EB7 02:9EA7: 28        .byte $28   ; 
- D 0 - I - 0x009EB8 02:9EA8: 8F        .byte $8F   ; 
- D 0 - I - 0x009EB9 02:9EA9: 2D        .byte $2D   ; 
- D 0 - I - 0x009EBA 02:9EAA: 82        .byte $82   ; 
- D 0 - I - 0x009EBB 02:9EAB: 7F        .byte $7F   ; 
- D 0 - I - 0x009EBC 02:9EAC: 90        .byte $90   ; 
- D 0 - I - 0x009EBD 02:9EAD: 30        .byte $30   ; 
- D 0 - I - 0x009EBE 02:9EAE: 8F        .byte $8F   ; 
- D 0 - I - 0x009EBF 02:9EAF: 7F        .byte $7F   ; 
- D 0 - I - 0x009EC0 02:9EB0: 90        .byte $90   ; 
- D 0 - I - 0x009EC1 02:9EB1: 2D        .byte $2D   ; 
- D 0 - I - 0x009EC2 02:9EB2: 8F        .byte $8F   ; 
- D 0 - I - 0x009EC3 02:9EB3: 7F        .byte $7F   ; 
- D 0 - I - 0x009EC4 02:9EB4: 90        .byte $90   ; 
- D 0 - I - 0x009EC5 02:9EB5: 2D        .byte $2D   ; 
- D 0 - I - 0x009EC6 02:9EB6: 8F        .byte $8F   ; 
- D 0 - I - 0x009EC7 02:9EB7: 2F        .byte $2F   ; 
- D 0 - I - 0x009EC8 02:9EB8: 90        .byte $90   ; 
- D 0 - I - 0x009EC9 02:9EB9: 2D        .byte $2D   ; 
- D 0 - I - 0x009ECA 02:9EBA: 8F        .byte $8F   ; 
- D 0 - I - 0x009ECB 02:9EBB: 2F        .byte $2F   ; 
- D 0 - I - 0x009ECC 02:9EBC: 90        .byte $90   ; 
- D 0 - I - 0x009ECD 02:9EBD: 2D        .byte $2D   ; 
- D 0 - I - 0x009ECE 02:9EBE: 82        .byte $82   ; 
- D 0 - I - 0x009ECF 02:9EBF: 30        .byte $30   ; 
- D 0 - I - 0x009ED0 02:9EC0: 8F        .byte $8F   ; 
- D 0 - I - 0x009ED1 02:9EC1: 2F        .byte $2F   ; 
- D 0 - I - 0x009ED2 02:9EC2: 90        .byte $90   ; 
- D 0 - I - 0x009ED3 02:9EC3: 7F        .byte $7F   ; 
- D 0 - I - 0x009ED4 02:9EC4: D1        .byte $D1   ; 
- D 0 - I - 0x009ED5 02:9EC5: 8F        .byte $8F   ; 
- D 0 - I - 0x009ED6 02:9EC6: 39        .byte $39   ; 
- D 0 - I - 0x009ED7 02:9EC7: 90        .byte $90   ; 
- D 0 - I - 0x009ED8 02:9EC8: 38        .byte $38   ; 
- D 0 - I - 0x009ED9 02:9EC9: 8F        .byte $8F   ; 
- D 0 - I - 0x009EDA 02:9ECA: 39        .byte $39   ; 
- D 0 - I - 0x009EDB 02:9ECB: 90        .byte $90   ; 
- D 0 - I - 0x009EDC 02:9ECC: 38        .byte $38   ; 
- D 0 - I - 0x009EDD 02:9ECD: 8F        .byte $8F   ; 
- D 0 - I - 0x009EDE 02:9ECE: 39        .byte $39   ; 
- D 0 - I - 0x009EDF 02:9ECF: 90        .byte $90   ; 
- D 0 - I - 0x009EE0 02:9ED0: 34        .byte $34   ; 
- D 0 - I - 0x009EE1 02:9ED1: 8F        .byte $8F   ; 
- D 0 - I - 0x009EE2 02:9ED2: 31        .byte $31   ; 
- D 0 - I - 0x009EE3 02:9ED3: 90        .byte $90   ; 
- D 0 - I - 0x009EE4 02:9ED4: 2D        .byte $2D   ; 
- D 0 - I - 0x009EE5 02:9ED5: 82        .byte $82   ; 
- D 0 - I - 0x009EE6 02:9ED6: 37        .byte $37   ; 
- D 0 - I - 0x009EE7 02:9ED7: 8F        .byte $8F   ; 
- D 0 - I - 0x009EE8 02:9ED8: 35        .byte $35   ; 
- D 0 - I - 0x009EE9 02:9ED9: 90        .byte $90   ; 
- D 0 - I - 0x009EEA 02:9EDA: 34        .byte $34   ; 
- D 0 - I - 0x009EEB 02:9EDB: 8F        .byte $8F   ; 
- D 0 - I - 0x009EEC 02:9EDC: 7F        .byte $7F   ; 
- D 0 - I - 0x009EED 02:9EDD: 90        .byte $90   ; 
- D 0 - I - 0x009EEE 02:9EDE: 28        .byte $28   ; 
- D 0 - I - 0x009EEF 02:9EDF: 8F        .byte $8F   ; 
- D 0 - I - 0x009EF0 02:9EE0: 2A        .byte $2A   ; 
- D 0 - I - 0x009EF1 02:9EE1: 90        .byte $90   ; 
- D 0 - I - 0x009EF2 02:9EE2: 7F        .byte $7F   ; 
- D 0 - I - 0x009EF3 02:9EE3: CF        .byte $CF   ; 
- D 0 - I - 0x009EF4 02:9EE4: D2        .byte $D2   ; 
- D 0 - I - 0x009EF5 02:9EE5: 8F        .byte $8F   ; 
- D 0 - I - 0x009EF6 02:9EE6: 39        .byte $39   ; 
- D 0 - I - 0x009EF7 02:9EE7: 90        .byte $90   ; 
- D 0 - I - 0x009EF8 02:9EE8: 38        .byte $38   ; 
- D 0 - I - 0x009EF9 02:9EE9: 8F        .byte $8F   ; 
- D 0 - I - 0x009EFA 02:9EEA: 39        .byte $39   ; 
- D 0 - I - 0x009EFB 02:9EEB: 90        .byte $90   ; 
- D 0 - I - 0x009EFC 02:9EEC: 38        .byte $38   ; 
- D 0 - I - 0x009EFD 02:9EED: 8F        .byte $8F   ; 
- D 0 - I - 0x009EFE 02:9EEE: 39        .byte $39   ; 
- D 0 - I - 0x009EFF 02:9EEF: 90        .byte $90   ; 
- D 0 - I - 0x009F00 02:9EF0: 34        .byte $34   ; 
- D 0 - I - 0x009F01 02:9EF1: 8F        .byte $8F   ; 
- D 0 - I - 0x009F02 02:9EF2: 31        .byte $31   ; 
- D 0 - I - 0x009F03 02:9EF3: 90        .byte $90   ; 
- D 0 - I - 0x009F04 02:9EF4: 2D        .byte $2D   ; 
- D 0 - I - 0x009F05 02:9EF5: 82        .byte $82   ; 
- D 0 - I - 0x009F06 02:9EF6: 3A        .byte $3A   ; 
- D 0 - I - 0x009F07 02:9EF7: 8F        .byte $8F   ; 
- D 0 - I - 0x009F08 02:9EF8: 38        .byte $38   ; 
- D 0 - I - 0x009F09 02:9EF9: 90        .byte $90   ; 
- D 0 - I - 0x009F0A 02:9EFA: 39        .byte $39   ; 
- D 0 - I - 0x009F0B 02:9EFB: 8F        .byte $8F   ; 
- D 0 - I - 0x009F0C 02:9EFC: 7F        .byte $7F   ; 
- D 0 - I - 0x009F0D 02:9EFD: 90        .byte $90   ; 
- D 0 - I - 0x009F0E 02:9EFE: 2D        .byte $2D   ; 
- D 0 - I - 0x009F0F 02:9EFF: 8F        .byte $8F   ; 
- D 0 - I - 0x009F10 02:9F00: 2F        .byte $2F   ; 
- D 0 - I - 0x009F11 02:9F01: 90        .byte $90   ; 
- D 0 - I - 0x009F12 02:9F02: 2D        .byte $2D   ; 
- D 0 - I - 0x009F13 02:9F03: 8F        .byte $8F   ; 
- D 0 - I - 0x009F14 02:9F04: 32        .byte $32   ; 
- D 0 - I - 0x009F15 02:9F05: 90        .byte $90   ; 
- D 0 - I - 0x009F16 02:9F06: 7F        .byte $7F   ; 
- D 0 - I - 0x009F17 02:9F07: 8F        .byte $8F   ; 
- D 0 - I - 0x009F18 02:9F08: 30        .byte $30   ; 
- D 0 - I - 0x009F19 02:9F09: 90        .byte $90   ; 
- D 0 - I - 0x009F1A 02:9F0A: 7F        .byte $7F   ; 
- D 0 - I - 0x009F1B 02:9F0B: 8F        .byte $8F   ; 
- D 0 - I - 0x009F1C 02:9F0C: 2D        .byte $2D   ; 
- D 0 - I - 0x009F1D 02:9F0D: 90        .byte $90   ; 
- D 0 - I - 0x009F1E 02:9F0E: 2A        .byte $2A   ; 
- D 0 - I - 0x009F1F 02:9F0F: 8F        .byte $8F   ; 
- D 0 - I - 0x009F20 02:9F10: 7F        .byte $7F   ; 
- D 0 - I - 0x009F21 02:9F11: 90        .byte $90   ; 
- D 0 - I - 0x009F22 02:9F12: 26        .byte $26   ; 
- D 0 - I - 0x009F23 02:9F13: 81        .byte $81   ; 
- D 0 - I - 0x009F24 02:9F14: 7F        .byte $7F   ; 
- D 0 - I - 0x009F25 02:9F15: 8F        .byte $8F   ; 
- D 0 - I - 0x009F26 02:9F16: 7F        .byte $7F   ; 
- D 0 - I - 0x009F27 02:9F17: 90        .byte $90   ; 
- D 0 - I - 0x009F28 02:9F18: 2D        .byte $2D   ; 
- D 0 - I - 0x009F29 02:9F19: 8F        .byte $8F   ; 
- D 0 - I - 0x009F2A 02:9F1A: 2F        .byte $2F   ; 
- D 0 - I - 0x009F2B 02:9F1B: 90        .byte $90   ; 
- D 0 - I - 0x009F2C 02:9F1C: 2D        .byte $2D   ; 
- D 0 - I - 0x009F2D 02:9F1D: 8F        .byte $8F   ; 
- D 0 - I - 0x009F2E 02:9F1E: 32        .byte $32   ; 
- D 0 - I - 0x009F2F 02:9F1F: 90        .byte $90   ; 
- D 0 - I - 0x009F30 02:9F20: 33        .byte $33   ; 
- D 0 - I - 0x009F31 02:9F21: 8F        .byte $8F   ; 
- D 0 - I - 0x009F32 02:9F22: 30        .byte $30   ; 
- D 0 - I - 0x009F33 02:9F23: 90        .byte $90   ; 
- D 0 - I - 0x009F34 02:9F24: 7F        .byte $7F   ; 
- D 0 - I - 0x009F35 02:9F25: 8F        .byte $8F   ; 
- D 0 - I - 0x009F36 02:9F26: 2D        .byte $2D   ; 
- D 0 - I - 0x009F37 02:9F27: 90        .byte $90   ; 
- D 0 - I - 0x009F38 02:9F28: 2A        .byte $2A   ; 
- D 0 - I - 0x009F39 02:9F29: 8F        .byte $8F   ; 
- D 0 - I - 0x009F3A 02:9F2A: 7F        .byte $7F   ; 
- D 0 - I - 0x009F3B 02:9F2B: 90        .byte $90   ; 
- D 0 - I - 0x009F3C 02:9F2C: 27        .byte $27   ; 
- D 0 - I - 0x009F3D 02:9F2D: 81        .byte $81   ; 
- D 0 - I - 0x009F3E 02:9F2E: 7F        .byte $7F   ; 
- D 0 - I - 0x009F3F 02:9F2F: 8F        .byte $8F   ; 
- D 0 - I - 0x009F40 02:9F30: 7F        .byte $7F   ; 
- D 0 - I - 0x009F41 02:9F31: 90        .byte $90   ; 
- D 0 - I - 0x009F42 02:9F32: 2D        .byte $2D   ; 
- D 0 - I - 0x009F43 02:9F33: 8F        .byte $8F   ; 
- D 0 - I - 0x009F44 02:9F34: 2F        .byte $2F   ; 
- D 0 - I - 0x009F45 02:9F35: 90        .byte $90   ; 
- D 0 - I - 0x009F46 02:9F36: 2D        .byte $2D   ; 
- D 0 - I - 0x009F47 02:9F37: 8F        .byte $8F   ; 
- D 0 - I - 0x009F48 02:9F38: 34        .byte $34   ; 
- D 0 - I - 0x009F49 02:9F39: 90        .byte $90   ; 
- D 0 - I - 0x009F4A 02:9F3A: 7F        .byte $7F   ; 
- D 0 - I - 0x009F4B 02:9F3B: 8F        .byte $8F   ; 
- D 0 - I - 0x009F4C 02:9F3C: 31        .byte $31   ; 
- D 0 - I - 0x009F4D 02:9F3D: 90        .byte $90   ; 
- D 0 - I - 0x009F4E 02:9F3E: 2D        .byte $2D   ; 
- D 0 - I - 0x009F4F 02:9F3F: 8F        .byte $8F   ; 
- D 0 - I - 0x009F50 02:9F40: 7F        .byte $7F   ; 
- D 0 - I - 0x009F51 02:9F41: 90        .byte $90   ; 
- D 0 - I - 0x009F52 02:9F42: 28        .byte $28   ; 
- D 0 - I - 0x009F53 02:9F43: 8F        .byte $8F   ; 
- D 0 - I - 0x009F54 02:9F44: 2D        .byte $2D   ; 
- D 0 - I - 0x009F55 02:9F45: 90        .byte $90   ; 
- D 0 - I - 0x009F56 02:9F46: 31        .byte $31   ; 
- D 0 - I - 0x009F57 02:9F47: 8F        .byte $8F   ; 
- D 0 - I - 0x009F58 02:9F48: 34        .byte $34   ; 
- D 0 - I - 0x009F59 02:9F49: 90        .byte $90   ; 
- D 0 - I - 0x009F5A 02:9F4A: 35        .byte $35   ; 
- D 0 - I - 0x009F5B 02:9F4B: 8F        .byte $8F   ; 
- D 0 - I - 0x009F5C 02:9F4C: 31        .byte $31   ; 
- D 0 - I - 0x009F5D 02:9F4D: 90        .byte $90   ; 
- D 0 - I - 0x009F5E 02:9F4E: 2C        .byte $2C   ; 
- D 0 - I - 0x009F5F 02:9F4F: 8F        .byte $8F   ; 
- D 0 - I - 0x009F60 02:9F50: 7F        .byte $7F   ; 
- D 0 - I - 0x009F61 02:9F51: 90        .byte $90   ; 
- D 0 - I - 0x009F62 02:9F52: 31        .byte $31   ; 
- D 0 - I - 0x009F63 02:9F53: 8F        .byte $8F   ; 
- D 0 - I - 0x009F64 02:9F54: 35        .byte $35   ; 
- D 0 - I - 0x009F65 02:9F55: 90        .byte $90   ; 
- D 0 - I - 0x009F66 02:9F56: 7E        .byte $7E   ; 
- D 0 - I - 0x009F67 02:9F57: 8F        .byte $8F   ; 
- D 0 - I - 0x009F68 02:9F58: 38        .byte $38   ; 
- D 0 - I - 0x009F69 02:9F59: 90        .byte $90   ; 
- D 0 - I - 0x009F6A 02:9F5A: 39        .byte $39   ; 
- D 0 - I - 0x009F6B 02:9F5B: 8F        .byte $8F   ; 
- D 0 - I - 0x009F6C 02:9F5C: 36        .byte $36   ; 
- D 0 - I - 0x009F6D 02:9F5D: 90        .byte $90   ; 
- D 0 - I - 0x009F6E 02:9F5E: 31        .byte $31   ; 
- D 0 - I - 0x009F6F 02:9F5F: 8F        .byte $8F   ; 
- D 0 - I - 0x009F70 02:9F60: 2D        .byte $2D   ; 
- D 0 - I - 0x009F71 02:9F61: 90        .byte $90   ; 
- D 0 - I - 0x009F72 02:9F62: 7F        .byte $7F   ; 
- D 0 - I - 0x009F73 02:9F63: 8F        .byte $8F   ; 
- D 0 - I - 0x009F74 02:9F64: 39        .byte $39   ; 
- D 0 - I - 0x009F75 02:9F65: 90        .byte $90   ; 
- D 0 - I - 0x009F76 02:9F66: 38        .byte $38   ; 
- D 0 - I - 0x009F77 02:9F67: 8F        .byte $8F   ; 
- D 0 - I - 0x009F78 02:9F68: 3C        .byte $3C   ; 
- D 0 - I - 0x009F79 02:9F69: 90        .byte $90   ; 
- D 0 - I - 0x009F7A 02:9F6A: 38        .byte $38   ; 
- D 0 - I - 0x009F7B 02:9F6B: 8F        .byte $8F   ; 
- D 0 - I - 0x009F7C 02:9F6C: 34        .byte $34   ; 
- D 0 - I - 0x009F7D 02:9F6D: 90        .byte $90   ; 
- D 0 - I - 0x009F7E 02:9F6E: 30        .byte $30   ; 
- D 0 - I - 0x009F7F 02:9F6F: 8F        .byte $8F   ; 
- D 0 - I - 0x009F80 02:9F70: 2C        .byte $2C   ; 
- D 0 - I - 0x009F81 02:9F71: 90        .byte $90   ; 
- D 0 - I - 0x009F82 02:9F72: 28        .byte $28   ; 
- D 0 - I - 0x009F83 02:9F73: 8F        .byte $8F   ; 
- D 0 - I - 0x009F84 02:9F74: 2A        .byte $2A   ; 
- D 0 - I - 0x009F85 02:9F75: 90        .byte $90   ; 
- D 0 - I - 0x009F86 02:9F76: 7F        .byte $7F   ; 
- D 0 - I - 0x009F87 02:9F77: 82        .byte $82   ; 
- D 0 - I - 0x009F88 02:9F78: 2D        .byte $2D   ; 
- D 0 - I - 0x009F89 02:9F79: 7F        .byte $7F   ; 
- D 0 - I - 0x009F8A 02:9F7A: 91        .byte $91   ; 
- D 0 - I - 0x009F8B 02:9F7B: 30        .byte $30   ; 
- D 0 - I - 0x009F8C 02:9F7C: 7E        .byte $7E   ; 
- D 0 - I - 0x009F8D 02:9F7D: 8F        .byte $8F   ; 
- D 0 - I - 0x009F8E 02:9F7E: 7E        .byte $7E   ; 
- D 0 - I - 0x009F8F 02:9F7F: 31        .byte $31   ; 
- D 0 - I - 0x009F90 02:9F80: 90        .byte $90   ; 
- D 0 - I - 0x009F91 02:9F81: 2D        .byte $2D   ; 
- D 0 - I - 0x009F92 02:9F82: 82        .byte $82   ; 
- D 0 - I - 0x009F93 02:9F83: 7F        .byte $7F   ; 
- D 0 - I - 0x009F94 02:9F84: 8F        .byte $8F   ; 
- D 0 - I - 0x009F95 02:9F85: 7F        .byte $7F   ; 
- D 0 - I - 0x009F96 02:9F86: 90        .byte $90   ; 
- D 0 - I - 0x009F97 02:9F87: 7E        .byte $7E   ; 
- D 0 - I - 0x009F98 02:9F88: 82        .byte $82   ; 
- D 0 - I - 0x009F99 02:9F89: 39        .byte $39   ; 
- D 0 - I - 0x009F9A 02:9F8A: 7F        .byte $7F   ; 
- D 0 - I - 0x009F9B 02:9F8B: 8F        .byte $8F   ; 
- D 0 - I - 0x009F9C 02:9F8C: 2D        .byte $2D   ; 
- D 0 - I - 0x009F9D 02:9F8D: 90        .byte $90   ; 
- D 0 - I - 0x009F9E 02:9F8E: 7F        .byte $7F   ; 
- D 0 - I - 0x009F9F 02:9F8F: 2D        .byte $2D   ; 
- D 0 - I - 0x009FA0 02:9F90: 7F        .byte $7F   ; 
- D 0 - I - 0x009FA1 02:9F91: 2D        .byte $2D   ; 
- D 0 - I - 0x009FA2 02:9F92: 30        .byte $30   ; 
- D 0 - I - 0x009FA3 02:9F93: 7F        .byte $7F   ; 
- D 0 - I - 0x009FA4 02:9F94: 30        .byte $30   ; 
- D 0 - I - 0x009FA5 02:9F95: 8F        .byte $8F   ; 
- D 0 - I - 0x009FA6 02:9F96: 7F        .byte $7F   ; 
- D 0 - I - 0x009FA7 02:9F97: 90        .byte $90   ; 
- D 0 - I - 0x009FA8 02:9F98: 2D        .byte $2D   ; 
- D 0 - I - 0x009FA9 02:9F99: 8F        .byte $8F   ; 
- D 0 - I - 0x009FAA 02:9F9A: 7F        .byte $7F   ; 
- D 0 - I - 0x009FAB 02:9F9B: 90        .byte $90   ; 
- D 0 - I - 0x009FAC 02:9F9C: 39        .byte $39   ; 
- D 0 - I - 0x009FAD 02:9F9D: 8F        .byte $8F   ; 
- D 0 - I - 0x009FAE 02:9F9E: 7F        .byte $7F   ; 
- D 0 - I - 0x009FAF 02:9F9F: 90        .byte $90   ; 
- D 0 - I - 0x009FB0 02:9FA0: 7E        .byte $7E   ; 
- D 0 - I - 0x009FB1 02:9FA1: 82        .byte $82   ; 
- D 0 - I - 0x009FB2 02:9FA2: 39        .byte $39   ; 
- D 0 - I - 0x009FB3 02:9FA3: 7F        .byte $7F   ; 
- D 0 - I - 0x009FB4 02:9FA4: 8F        .byte $8F   ; 
- D 0 - I - 0x009FB5 02:9FA5: 2D        .byte $2D   ; 
- D 0 - I - 0x009FB6 02:9FA6: 90        .byte $90   ; 
- D 0 - I - 0x009FB7 02:9FA7: 7F        .byte $7F   ; 
- D 0 - I - 0x009FB8 02:9FA8: 8F        .byte $8F   ; 
- D 0 - I - 0x009FB9 02:9FA9: 7F        .byte $7F   ; 
- D 0 - I - 0x009FBA 02:9FAA: 90        .byte $90   ; 
- D 0 - I - 0x009FBB 02:9FAB: 30        .byte $30   ; 
- D 0 - I - 0x009FBC 02:9FAC: 8F        .byte $8F   ; 
- D 0 - I - 0x009FBD 02:9FAD: 7F        .byte $7F   ; 
- D 0 - I - 0x009FBE 02:9FAE: 90        .byte $90   ; 
- D 0 - I - 0x009FBF 02:9FAF: 2D        .byte $2D   ; 
- D 0 - I - 0x009FC0 02:9FB0: 8F        .byte $8F   ; 
- D 0 - I - 0x009FC1 02:9FB1: 7F        .byte $7F   ; 
- D 0 - I - 0x009FC2 02:9FB2: 90        .byte $90   ; 
- D 0 - I - 0x009FC3 02:9FB3: 2D        .byte $2D   ; 
- D 0 - I - 0x009FC4 02:9FB4: 8F        .byte $8F   ; 
- D 0 - I - 0x009FC5 02:9FB5: 2F        .byte $2F   ; 
- D 0 - I - 0x009FC6 02:9FB6: 90        .byte $90   ; 
- D 0 - I - 0x009FC7 02:9FB7: 2D        .byte $2D   ; 
- D 0 - I - 0x009FC8 02:9FB8: 8F        .byte $8F   ; 
- D 0 - I - 0x009FC9 02:9FB9: 2F        .byte $2F   ; 
- D 0 - I - 0x009FCA 02:9FBA: 90        .byte $90   ; 
- D 0 - I - 0x009FCB 02:9FBB: 2D        .byte $2D   ; 
- D 0 - I - 0x009FCC 02:9FBC: 82        .byte $82   ; 
- D 0 - I - 0x009FCD 02:9FBD: 30        .byte $30   ; 
- D 0 - I - 0x009FCE 02:9FBE: 8F        .byte $8F   ; 
- D 0 - I - 0x009FCF 02:9FBF: 2F        .byte $2F   ; 
- D 0 - I - 0x009FD0 02:9FC0: 90        .byte $90   ; 
- D 0 - I - 0x009FD1 02:9FC1: 7F        .byte $7F   ; 
- - - - - - 0x009FD2 02:9FC2: 8F        .byte $8F   ; 
- - - - - - 0x009FD3 02:9FC3: 39        .byte $39   ; 
- - - - - - 0x009FD4 02:9FC4: 90        .byte $90   ; 
- - - - - - 0x009FD5 02:9FC5: 38        .byte $38   ; 
- - - - - - 0x009FD6 02:9FC6: 8F        .byte $8F   ; 
- - - - - - 0x009FD7 02:9FC7: 39        .byte $39   ; 
- - - - - - 0x009FD8 02:9FC8: 90        .byte $90   ; 
- - - - - - 0x009FD9 02:9FC9: 38        .byte $38   ; 
- - - - - - 0x009FDA 02:9FCA: 8F        .byte $8F   ; 
- - - - - - 0x009FDB 02:9FCB: 39        .byte $39   ; 
- - - - - - 0x009FDC 02:9FCC: 90        .byte $90   ; 
- - - - - - 0x009FDD 02:9FCD: 34        .byte $34   ; 
- - - - - - 0x009FDE 02:9FCE: 8F        .byte $8F   ; 
- - - - - - 0x009FDF 02:9FCF: 31        .byte $31   ; 
- - - - - - 0x009FE0 02:9FD0: 90        .byte $90   ; 
- - - - - - 0x009FE1 02:9FD1: 2D        .byte $2D   ; 
- - - - - - 0x009FE2 02:9FD2: 82        .byte $82   ; 
- - - - - - 0x009FE3 02:9FD3: 3A        .byte $3A   ; 
- - - - - - 0x009FE4 02:9FD4: 8F        .byte $8F   ; 
- - - - - - 0x009FE5 02:9FD5: 38        .byte $38   ; 
- - - - - - 0x009FE6 02:9FD6: 90        .byte $90   ; 
- - - - - - 0x009FE7 02:9FD7: 39        .byte $39   ; 
- - - - - - 0x009FE8 02:9FD8: 8F        .byte $8F   ; 
- - - - - - 0x009FE9 02:9FD9: 7F        .byte $7F   ; 
- - - - - - 0x009FEA 02:9FDA: 90        .byte $90   ; 
- - - - - - 0x009FEB 02:9FDB: 28        .byte $28   ; 
- - - - - - 0x009FEC 02:9FDC: 8F        .byte $8F   ; 
- - - - - - 0x009FED 02:9FDD: 2A        .byte $2A   ; 
- - - - - - 0x009FEE 02:9FDE: 90        .byte $90   ; 
- - - - - - 0x009FEF 02:9FDF: 7F        .byte $7F   ; 
- - - - - - 0x009FF0 02:9FE0: CF        .byte $CF   ; 
- - - - - - 0x009FF1 02:9FE1: CF        .byte $CF   ; 
- - - - - - 0x009FF2 02:9FE2: CF        .byte $CF   ; 
- - - - - - 0x009FF3 02:9FE3: FF        .byte $FF   ; 



ch_05_9FE4_01:
- D 0 - I - 0x009FF4 02:9FE4: E1        .byte $E1   ; 
- D 0 - I - 0x009FF5 02:9FE5: 82 A9     .word off_E1_A982
- D 0 - I - 0x009FF7 02:9FE7: 83        .byte $83   ; 
- D 0 - I - 0x009FF8 02:9FE8: 7F        .byte $7F   ; 
- D 0 - I - 0x009FF9 02:9FE9: 8F        .byte $8F   ; 
- D 0 - I - 0x009FFA 02:9FEA: 39        .byte $39   ; 
- D 0 - I - 0x009FFB 02:9FEB: 90        .byte $90   ; 
- D 0 - I - 0x009FFC 02:9FEC: 38        .byte $38   ; 
- D 0 - I - 0x009FFD 02:9FED: 8F        .byte $8F   ; 
- D 0 - I - 0x009FFE 02:9FEE: 39        .byte $39   ; 
- D 0 - I - 0x009FFF 02:9FEF: 90        .byte $90   ; 
- D 0 - I - 0x00A000 02:9FF0: 38        .byte $38   ; 
- D 0 - I - 0x00A001 02:9FF1: 8F        .byte $8F   ; 
- D 0 - I - 0x00A002 02:9FF2: 39        .byte $39   ; 
- D 0 - I - 0x00A003 02:9FF3: 90        .byte $90   ; 
- D 0 - I - 0x00A004 02:9FF4: 34        .byte $34   ; 
- D 0 - I - 0x00A005 02:9FF5: 8F        .byte $8F   ; 
- D 0 - I - 0x00A006 02:9FF6: 31        .byte $31   ; 
- D 0 - I - 0x00A007 02:9FF7: 90        .byte $90   ; 
- D 0 - I - 0x00A008 02:9FF8: 2D        .byte $2D   ; 
- D 0 - I - 0x00A009 02:9FF9: 82        .byte $82   ; 
- D 0 - I - 0x00A00A 02:9FFA: 37        .byte $37   ; 
- D 0 - I - 0x00A00B 02:9FFB: 8F        .byte $8F   ; 
- D 0 - I - 0x00A00C 02:9FFC: 7F        .byte $7F   ; 
- D 0 - I - 0x00A00D 02:9FFD: 90        .byte $90   ; 
- D 0 - I - 0x00A00E 02:9FFE: 37        .byte $37   ; 
- - - - - - 0x00A00F 02:9FFF: 82        .byte $82   ; 
- D 1 - I - 0x00A010 02:A000: 7F        .byte $7F   ; 
- D 1 - I - 0x00A011 02:A001: 8F        .byte $8F   ; 
- D 1 - I - 0x00A012 02:A002: 35        .byte $35   ; 
- D 1 - I - 0x00A013 02:A003: 91        .byte $91   ; 
- D 1 - I - 0x00A014 02:A004: 37        .byte $37   ; 
- D 1 - I - 0x00A015 02:A005: 35        .byte $35   ; 
- D 1 - I - 0x00A016 02:A006: 8F        .byte $8F   ; 
- D 1 - I - 0x00A017 02:A007: 34        .byte $34   ; 
- D 1 - I - 0x00A018 02:A008: 90        .byte $90   ; 
- D 1 - I - 0x00A019 02:A009: 33        .byte $33   ; 
- D 1 - I - 0x00A01A 02:A00A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A01B 02:A00B: 34        .byte $34   ; 
- D 1 - I - 0x00A01C 02:A00C: 90        .byte $90   ; 
- D 1 - I - 0x00A01D 02:A00D: 33        .byte $33   ; 
- D 1 - I - 0x00A01E 02:A00E: 8F        .byte $8F   ; 
- D 1 - I - 0x00A01F 02:A00F: 34        .byte $34   ; 
- D 1 - I - 0x00A020 02:A010: 90        .byte $90   ; 
- D 1 - I - 0x00A021 02:A011: 31        .byte $31   ; 
- D 1 - I - 0x00A022 02:A012: 8F        .byte $8F   ; 
- D 1 - I - 0x00A023 02:A013: 2D        .byte $2D   ; 
- D 1 - I - 0x00A024 02:A014: 90        .byte $90   ; 
- D 1 - I - 0x00A025 02:A015: 2A        .byte $2A   ; 
- D 1 - I - 0x00A026 02:A016: 82        .byte $82   ; 
- D 1 - I - 0x00A027 02:A017: 7E        .byte $7E   ; 
- D 1 - I - 0x00A028 02:A018: 8F        .byte $8F   ; 
- D 1 - I - 0x00A029 02:A019: 30        .byte $30   ; 
- D 1 - I - 0x00A02A 02:A01A: 90        .byte $90   ; 
- D 1 - I - 0x00A02B 02:A01B: 2F        .byte $2F   ; 
- D 1 - I - 0x00A02C 02:A01C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A02D 02:A01D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A02E 02:A01E: 90        .byte $90   ; 
- D 1 - I - 0x00A02F 02:A01F: 28        .byte $28   ; 
- D 1 - I - 0x00A030 02:A020: 8F        .byte $8F   ; 
- D 1 - I - 0x00A031 02:A021: 2A        .byte $2A   ; 
- D 1 - I - 0x00A032 02:A022: 90        .byte $90   ; 
- D 1 - I - 0x00A033 02:A023: 7F        .byte $7F   ; 
- D 1 - I - 0x00A034 02:A024: CA        .byte $CA   ; 
- D 1 - I - 0x00A035 02:A025: CA        .byte $CA   ; 
- D 1 - I - 0x00A036 02:A026: C2        .byte $C2   ; 
- D 1 - I - 0x00A037 02:A027: 82        .byte $82   ; 
- D 1 - I - 0x00A038 02:A028: 2D        .byte $2D   ; 
- D 1 - I - 0x00A039 02:A029: 7F        .byte $7F   ; 
- D 1 - I - 0x00A03A 02:A02A: 91        .byte $91   ; 
- D 1 - I - 0x00A03B 02:A02B: 30        .byte $30   ; 
- D 1 - I - 0x00A03C 02:A02C: 7E        .byte $7E   ; 
- D 1 - I - 0x00A03D 02:A02D: 8F        .byte $8F   ; 
- D 1 - I - 0x00A03E 02:A02E: 7E        .byte $7E   ; 
- D 1 - I - 0x00A03F 02:A02F: 31        .byte $31   ; 
- D 1 - I - 0x00A040 02:A030: 90        .byte $90   ; 
- D 1 - I - 0x00A041 02:A031: 2D        .byte $2D   ; 
- D 1 - I - 0x00A042 02:A032: 81        .byte $81   ; 
- D 1 - I - 0x00A043 02:A033: 7F        .byte $7F   ; 
- D 1 - I - 0x00A044 02:A034: 8F        .byte $8F   ; 
- D 1 - I - 0x00A045 02:A035: 7F        .byte $7F   ; 
- D 1 - I - 0x00A046 02:A036: 90        .byte $90   ; 
- D 1 - I - 0x00A047 02:A037: 28        .byte $28   ; 
- D 1 - I - 0x00A048 02:A038: 8F        .byte $8F   ; 
- D 1 - I - 0x00A049 02:A039: 2A        .byte $2A   ; 
- D 1 - I - 0x00A04A 02:A03A: 90        .byte $90   ; 
- D 1 - I - 0x00A04B 02:A03B: 28        .byte $28   ; 
- D 1 - I - 0x00A04C 02:A03C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A04D 02:A03D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A04E 02:A03E: 90        .byte $90   ; 
- D 1 - I - 0x00A04F 02:A03F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A050 02:A040: 2D        .byte $2D   ; 
- D 1 - I - 0x00A051 02:A041: 7F        .byte $7F   ; 
- D 1 - I - 0x00A052 02:A042: 2D        .byte $2D   ; 
- D 1 - I - 0x00A053 02:A043: 30        .byte $30   ; 
- D 1 - I - 0x00A054 02:A044: 7F        .byte $7F   ; 
- D 1 - I - 0x00A055 02:A045: 30        .byte $30   ; 
- D 1 - I - 0x00A056 02:A046: 8F        .byte $8F   ; 
- D 1 - I - 0x00A057 02:A047: 7F        .byte $7F   ; 
- D 1 - I - 0x00A058 02:A048: 90        .byte $90   ; 
- D 1 - I - 0x00A059 02:A049: 2D        .byte $2D   ; 
- D 1 - I - 0x00A05A 02:A04A: 81        .byte $81   ; 
- D 1 - I - 0x00A05B 02:A04B: 7F        .byte $7F   ; 
- D 1 - I - 0x00A05C 02:A04C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A05D 02:A04D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A05E 02:A04E: 90        .byte $90   ; 
- D 1 - I - 0x00A05F 02:A04F: 28        .byte $28   ; 
- D 1 - I - 0x00A060 02:A050: 8F        .byte $8F   ; 
- D 1 - I - 0x00A061 02:A051: 2A        .byte $2A   ; 
- D 1 - I - 0x00A062 02:A052: 90        .byte $90   ; 
- D 1 - I - 0x00A063 02:A053: 28        .byte $28   ; 
- D 1 - I - 0x00A064 02:A054: 8F        .byte $8F   ; 
- D 1 - I - 0x00A065 02:A055: 2D        .byte $2D   ; 
- D 1 - I - 0x00A066 02:A056: 82        .byte $82   ; 
- D 1 - I - 0x00A067 02:A057: 7F        .byte $7F   ; 
- D 1 - I - 0x00A068 02:A058: 90        .byte $90   ; 
- D 1 - I - 0x00A069 02:A059: 30        .byte $30   ; 
- D 1 - I - 0x00A06A 02:A05A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A06B 02:A05B: 7F        .byte $7F   ; 
- D 1 - I - 0x00A06C 02:A05C: 90        .byte $90   ; 
- D 1 - I - 0x00A06D 02:A05D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A06E 02:A05E: 8F        .byte $8F   ; 
- D 1 - I - 0x00A06F 02:A05F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A070 02:A060: 90        .byte $90   ; 
- D 1 - I - 0x00A071 02:A061: 2D        .byte $2D   ; 
- D 1 - I - 0x00A072 02:A062: 8F        .byte $8F   ; 
- D 1 - I - 0x00A073 02:A063: 2F        .byte $2F   ; 
- D 1 - I - 0x00A074 02:A064: 90        .byte $90   ; 
- D 1 - I - 0x00A075 02:A065: 2D        .byte $2D   ; 
- D 1 - I - 0x00A076 02:A066: 8F        .byte $8F   ; 
- D 1 - I - 0x00A077 02:A067: 2F        .byte $2F   ; 
- D 1 - I - 0x00A078 02:A068: 90        .byte $90   ; 
- D 1 - I - 0x00A079 02:A069: 2D        .byte $2D   ; 
- D 1 - I - 0x00A07A 02:A06A: 82        .byte $82   ; 
- D 1 - I - 0x00A07B 02:A06B: 30        .byte $30   ; 
- D 1 - I - 0x00A07C 02:A06C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A07D 02:A06D: 2F        .byte $2F   ; 
- D 1 - I - 0x00A07E 02:A06E: 90        .byte $90   ; 
- D 1 - I - 0x00A07F 02:A06F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A080 02:A070: D1        .byte $D1   ; 
- D 1 - I - 0x00A081 02:A071: 8F        .byte $8F   ; 
- D 1 - I - 0x00A082 02:A072: 39        .byte $39   ; 
- D 1 - I - 0x00A083 02:A073: 90        .byte $90   ; 
- D 1 - I - 0x00A084 02:A074: 38        .byte $38   ; 
- D 1 - I - 0x00A085 02:A075: 8F        .byte $8F   ; 
- D 1 - I - 0x00A086 02:A076: 39        .byte $39   ; 
- D 1 - I - 0x00A087 02:A077: 90        .byte $90   ; 
- D 1 - I - 0x00A088 02:A078: 38        .byte $38   ; 
- D 1 - I - 0x00A089 02:A079: 8F        .byte $8F   ; 
- D 1 - I - 0x00A08A 02:A07A: 39        .byte $39   ; 
- D 1 - I - 0x00A08B 02:A07B: 90        .byte $90   ; 
- D 1 - I - 0x00A08C 02:A07C: 34        .byte $34   ; 
- D 1 - I - 0x00A08D 02:A07D: 8F        .byte $8F   ; 
- D 1 - I - 0x00A08E 02:A07E: 31        .byte $31   ; 
- D 1 - I - 0x00A08F 02:A07F: 90        .byte $90   ; 
- D 1 - I - 0x00A090 02:A080: 2D        .byte $2D   ; 
- D 1 - I - 0x00A091 02:A081: 82        .byte $82   ; 
- D 1 - I - 0x00A092 02:A082: 37        .byte $37   ; 
- D 1 - I - 0x00A093 02:A083: 8F        .byte $8F   ; 
- D 1 - I - 0x00A094 02:A084: 35        .byte $35   ; 
- D 1 - I - 0x00A095 02:A085: 90        .byte $90   ; 
- D 1 - I - 0x00A096 02:A086: 34        .byte $34   ; 
- D 1 - I - 0x00A097 02:A087: 8F        .byte $8F   ; 
- D 1 - I - 0x00A098 02:A088: 7F        .byte $7F   ; 
- D 1 - I - 0x00A099 02:A089: 90        .byte $90   ; 
- D 1 - I - 0x00A09A 02:A08A: 28        .byte $28   ; 
- D 1 - I - 0x00A09B 02:A08B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A09C 02:A08C: 2A        .byte $2A   ; 
- D 1 - I - 0x00A09D 02:A08D: 90        .byte $90   ; 
- D 1 - I - 0x00A09E 02:A08E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A09F 02:A08F: CF        .byte $CF   ; 
- D 1 - I - 0x00A0A0 02:A090: D2        .byte $D2   ; 
- D 1 - I - 0x00A0A1 02:A091: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0A2 02:A092: 39        .byte $39   ; 
- D 1 - I - 0x00A0A3 02:A093: 90        .byte $90   ; 
- D 1 - I - 0x00A0A4 02:A094: 38        .byte $38   ; 
- D 1 - I - 0x00A0A5 02:A095: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0A6 02:A096: 39        .byte $39   ; 
- D 1 - I - 0x00A0A7 02:A097: 90        .byte $90   ; 
- D 1 - I - 0x00A0A8 02:A098: 38        .byte $38   ; 
- D 1 - I - 0x00A0A9 02:A099: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0AA 02:A09A: 39        .byte $39   ; 
- D 1 - I - 0x00A0AB 02:A09B: 90        .byte $90   ; 
- D 1 - I - 0x00A0AC 02:A09C: 34        .byte $34   ; 
- D 1 - I - 0x00A0AD 02:A09D: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0AE 02:A09E: 31        .byte $31   ; 
- D 1 - I - 0x00A0AF 02:A09F: 90        .byte $90   ; 
- D 1 - I - 0x00A0B0 02:A0A0: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0B1 02:A0A1: 82        .byte $82   ; 
- D 1 - I - 0x00A0B2 02:A0A2: 3A        .byte $3A   ; 
- D 1 - I - 0x00A0B3 02:A0A3: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0B4 02:A0A4: 38        .byte $38   ; 
- D 1 - I - 0x00A0B5 02:A0A5: 90        .byte $90   ; 
- D 1 - I - 0x00A0B6 02:A0A6: 39        .byte $39   ; 
- D 1 - I - 0x00A0B7 02:A0A7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0B8 02:A0A8: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0B9 02:A0A9: 90        .byte $90   ; 
- D 1 - I - 0x00A0BA 02:A0AA: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0BB 02:A0AB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0BC 02:A0AC: 2F        .byte $2F   ; 
- D 1 - I - 0x00A0BD 02:A0AD: 90        .byte $90   ; 
- D 1 - I - 0x00A0BE 02:A0AE: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0BF 02:A0AF: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0C0 02:A0B0: 32        .byte $32   ; 
- D 1 - I - 0x00A0C1 02:A0B1: 90        .byte $90   ; 
- D 1 - I - 0x00A0C2 02:A0B2: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0C3 02:A0B3: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0C4 02:A0B4: 30        .byte $30   ; 
- D 1 - I - 0x00A0C5 02:A0B5: 90        .byte $90   ; 
- D 1 - I - 0x00A0C6 02:A0B6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0C7 02:A0B7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0C8 02:A0B8: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0C9 02:A0B9: 90        .byte $90   ; 
- D 1 - I - 0x00A0CA 02:A0BA: 2A        .byte $2A   ; 
- D 1 - I - 0x00A0CB 02:A0BB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0CC 02:A0BC: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0CD 02:A0BD: 90        .byte $90   ; 
- D 1 - I - 0x00A0CE 02:A0BE: 26        .byte $26   ; 
- D 1 - I - 0x00A0CF 02:A0BF: 81        .byte $81   ; 
- D 1 - I - 0x00A0D0 02:A0C0: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0D1 02:A0C1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0D2 02:A0C2: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0D3 02:A0C3: 90        .byte $90   ; 
- D 1 - I - 0x00A0D4 02:A0C4: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0D5 02:A0C5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0D6 02:A0C6: 2F        .byte $2F   ; 
- D 1 - I - 0x00A0D7 02:A0C7: 90        .byte $90   ; 
- D 1 - I - 0x00A0D8 02:A0C8: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0D9 02:A0C9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0DA 02:A0CA: 32        .byte $32   ; 
- D 1 - I - 0x00A0DB 02:A0CB: 90        .byte $90   ; 
- D 1 - I - 0x00A0DC 02:A0CC: 33        .byte $33   ; 
- D 1 - I - 0x00A0DD 02:A0CD: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0DE 02:A0CE: 30        .byte $30   ; 
- D 1 - I - 0x00A0DF 02:A0CF: 90        .byte $90   ; 
- D 1 - I - 0x00A0E0 02:A0D0: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0E1 02:A0D1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0E2 02:A0D2: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0E3 02:A0D3: 90        .byte $90   ; 
- D 1 - I - 0x00A0E4 02:A0D4: 2A        .byte $2A   ; 
- D 1 - I - 0x00A0E5 02:A0D5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0E6 02:A0D6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0E7 02:A0D7: 90        .byte $90   ; 
- D 1 - I - 0x00A0E8 02:A0D8: 27        .byte $27   ; 
- D 1 - I - 0x00A0E9 02:A0D9: 81        .byte $81   ; 
- D 1 - I - 0x00A0EA 02:A0DA: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0EB 02:A0DB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0EC 02:A0DC: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0ED 02:A0DD: 90        .byte $90   ; 
- D 1 - I - 0x00A0EE 02:A0DE: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0EF 02:A0DF: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0F0 02:A0E0: 2F        .byte $2F   ; 
- D 1 - I - 0x00A0F1 02:A0E1: 90        .byte $90   ; 
- D 1 - I - 0x00A0F2 02:A0E2: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0F3 02:A0E3: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0F4 02:A0E4: 34        .byte $34   ; 
- D 1 - I - 0x00A0F5 02:A0E5: 90        .byte $90   ; 
- D 1 - I - 0x00A0F6 02:A0E6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0F7 02:A0E7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0F8 02:A0E8: 31        .byte $31   ; 
- D 1 - I - 0x00A0F9 02:A0E9: 90        .byte $90   ; 
- D 1 - I - 0x00A0FA 02:A0EA: 2D        .byte $2D   ; 
- D 1 - I - 0x00A0FB 02:A0EB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0FC 02:A0EC: 7F        .byte $7F   ; 
- D 1 - I - 0x00A0FD 02:A0ED: 90        .byte $90   ; 
- D 1 - I - 0x00A0FE 02:A0EE: 28        .byte $28   ; 
- D 1 - I - 0x00A0FF 02:A0EF: 8F        .byte $8F   ; 
- D 1 - I - 0x00A100 02:A0F0: 2D        .byte $2D   ; 
- D 1 - I - 0x00A101 02:A0F1: 90        .byte $90   ; 
- D 1 - I - 0x00A102 02:A0F2: 31        .byte $31   ; 
- D 1 - I - 0x00A103 02:A0F3: 8F        .byte $8F   ; 
- D 1 - I - 0x00A104 02:A0F4: 34        .byte $34   ; 
- D 1 - I - 0x00A105 02:A0F5: 90        .byte $90   ; 
- D 1 - I - 0x00A106 02:A0F6: 35        .byte $35   ; 
- D 1 - I - 0x00A107 02:A0F7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A108 02:A0F8: 31        .byte $31   ; 
- D 1 - I - 0x00A109 02:A0F9: 90        .byte $90   ; 
- D 1 - I - 0x00A10A 02:A0FA: 2C        .byte $2C   ; 
- D 1 - I - 0x00A10B 02:A0FB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A10C 02:A0FC: 7F        .byte $7F   ; 
- D 1 - I - 0x00A10D 02:A0FD: 90        .byte $90   ; 
- D 1 - I - 0x00A10E 02:A0FE: 31        .byte $31   ; 
- D 1 - I - 0x00A10F 02:A0FF: 8F        .byte $8F   ; 
- D 1 - I - 0x00A110 02:A100: 35        .byte $35   ; 
- D 1 - I - 0x00A111 02:A101: 90        .byte $90   ; 
- D 1 - I - 0x00A112 02:A102: 7E        .byte $7E   ; 
- D 1 - I - 0x00A113 02:A103: 8F        .byte $8F   ; 
- D 1 - I - 0x00A114 02:A104: 38        .byte $38   ; 
- D 1 - I - 0x00A115 02:A105: 90        .byte $90   ; 
- D 1 - I - 0x00A116 02:A106: 39        .byte $39   ; 
- D 1 - I - 0x00A117 02:A107: 8F        .byte $8F   ; 
- D 1 - I - 0x00A118 02:A108: 36        .byte $36   ; 
- D 1 - I - 0x00A119 02:A109: 90        .byte $90   ; 
- D 1 - I - 0x00A11A 02:A10A: 31        .byte $31   ; 
- D 1 - I - 0x00A11B 02:A10B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A11C 02:A10C: 2D        .byte $2D   ; 
- D 1 - I - 0x00A11D 02:A10D: 90        .byte $90   ; 
- D 1 - I - 0x00A11E 02:A10E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A11F 02:A10F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A120 02:A110: 39        .byte $39   ; 
- D 1 - I - 0x00A121 02:A111: 90        .byte $90   ; 
- D 1 - I - 0x00A122 02:A112: 38        .byte $38   ; 
- D 1 - I - 0x00A123 02:A113: 8F        .byte $8F   ; 
- D 1 - I - 0x00A124 02:A114: 3C        .byte $3C   ; 
- D 1 - I - 0x00A125 02:A115: 90        .byte $90   ; 
- D 1 - I - 0x00A126 02:A116: 38        .byte $38   ; 
- D 1 - I - 0x00A127 02:A117: 8F        .byte $8F   ; 
- D 1 - I - 0x00A128 02:A118: 34        .byte $34   ; 
- D 1 - I - 0x00A129 02:A119: 90        .byte $90   ; 
- D 1 - I - 0x00A12A 02:A11A: 30        .byte $30   ; 
- D 1 - I - 0x00A12B 02:A11B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A12C 02:A11C: 2C        .byte $2C   ; 
- D 1 - I - 0x00A12D 02:A11D: 90        .byte $90   ; 
- D 1 - I - 0x00A12E 02:A11E: 28        .byte $28   ; 
- D 1 - I - 0x00A12F 02:A11F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A130 02:A120: 2A        .byte $2A   ; 
- D 1 - I - 0x00A131 02:A121: 90        .byte $90   ; 
- D 1 - I - 0x00A132 02:A122: 7F        .byte $7F   ; 
- D 1 - I - 0x00A133 02:A123: 82        .byte $82   ; 
- D 1 - I - 0x00A134 02:A124: 2D        .byte $2D   ; 
- D 1 - I - 0x00A135 02:A125: 7F        .byte $7F   ; 
- D 1 - I - 0x00A136 02:A126: 91        .byte $91   ; 
- D 1 - I - 0x00A137 02:A127: 30        .byte $30   ; 
- D 1 - I - 0x00A138 02:A128: 7E        .byte $7E   ; 
- D 1 - I - 0x00A139 02:A129: 8F        .byte $8F   ; 
- D 1 - I - 0x00A13A 02:A12A: 7E        .byte $7E   ; 
- D 1 - I - 0x00A13B 02:A12B: 31        .byte $31   ; 
- D 1 - I - 0x00A13C 02:A12C: 90        .byte $90   ; 
- D 1 - I - 0x00A13D 02:A12D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A13E 02:A12E: 82        .byte $82   ; 
- D 1 - I - 0x00A13F 02:A12F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A140 02:A130: 8F        .byte $8F   ; 
- D 1 - I - 0x00A141 02:A131: 7F        .byte $7F   ; 
- D 1 - I - 0x00A142 02:A132: 90        .byte $90   ; 
- D 1 - I - 0x00A143 02:A133: 7E        .byte $7E   ; 
- D 1 - I - 0x00A144 02:A134: 82        .byte $82   ; 
- D 1 - I - 0x00A145 02:A135: 39        .byte $39   ; 
- D 1 - I - 0x00A146 02:A136: 7F        .byte $7F   ; 
- D 1 - I - 0x00A147 02:A137: 8F        .byte $8F   ; 
- D 1 - I - 0x00A148 02:A138: 2D        .byte $2D   ; 
- D 1 - I - 0x00A149 02:A139: 90        .byte $90   ; 
- D 1 - I - 0x00A14A 02:A13A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A14B 02:A13B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A14C 02:A13C: 7F        .byte $7F   ; 
- D 1 - I - 0x00A14D 02:A13D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A14E 02:A13E: 30        .byte $30   ; 
- D 1 - I - 0x00A14F 02:A13F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A150 02:A140: 30        .byte $30   ; 
- D 1 - I - 0x00A151 02:A141: 8F        .byte $8F   ; 
- D 1 - I - 0x00A152 02:A142: 7F        .byte $7F   ; 
- D 1 - I - 0x00A153 02:A143: 90        .byte $90   ; 
- D 1 - I - 0x00A154 02:A144: 2D        .byte $2D   ; 
- D 1 - I - 0x00A155 02:A145: 8F        .byte $8F   ; 
- D 1 - I - 0x00A156 02:A146: 7F        .byte $7F   ; 
- D 1 - I - 0x00A157 02:A147: 90        .byte $90   ; 
- D 1 - I - 0x00A158 02:A148: 39        .byte $39   ; 
- D 1 - I - 0x00A159 02:A149: 8F        .byte $8F   ; 
- D 1 - I - 0x00A15A 02:A14A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A15B 02:A14B: 90        .byte $90   ; 
- D 1 - I - 0x00A15C 02:A14C: 7E        .byte $7E   ; 
- D 1 - I - 0x00A15D 02:A14D: 82        .byte $82   ; 
- D 1 - I - 0x00A15E 02:A14E: 39        .byte $39   ; 
- D 1 - I - 0x00A15F 02:A14F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A160 02:A150: 8F        .byte $8F   ; 
- D 1 - I - 0x00A161 02:A151: 2D        .byte $2D   ; 
- D 1 - I - 0x00A162 02:A152: 90        .byte $90   ; 
- D 1 - I - 0x00A163 02:A153: 7F        .byte $7F   ; 
- D 1 - I - 0x00A164 02:A154: 8F        .byte $8F   ; 
- D 1 - I - 0x00A165 02:A155: 7F        .byte $7F   ; 
- D 1 - I - 0x00A166 02:A156: 90        .byte $90   ; 
- D 1 - I - 0x00A167 02:A157: 30        .byte $30   ; 
- D 1 - I - 0x00A168 02:A158: 8F        .byte $8F   ; 
- D 1 - I - 0x00A169 02:A159: 7F        .byte $7F   ; 
- D 1 - I - 0x00A16A 02:A15A: 90        .byte $90   ; 
- D 1 - I - 0x00A16B 02:A15B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A16C 02:A15C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A16D 02:A15D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A16E 02:A15E: 90        .byte $90   ; 
- D 1 - I - 0x00A16F 02:A15F: 2D        .byte $2D   ; 
- D 1 - I - 0x00A170 02:A160: 8F        .byte $8F   ; 
- D 1 - I - 0x00A171 02:A161: 2F        .byte $2F   ; 
- D 1 - I - 0x00A172 02:A162: 90        .byte $90   ; 
- D 1 - I - 0x00A173 02:A163: 2D        .byte $2D   ; 
- D 1 - I - 0x00A174 02:A164: 8F        .byte $8F   ; 
- D 1 - I - 0x00A175 02:A165: 2F        .byte $2F   ; 
- D 1 - I - 0x00A176 02:A166: 90        .byte $90   ; 
- D 1 - I - 0x00A177 02:A167: 2D        .byte $2D   ; 
- D 1 - I - 0x00A178 02:A168: 82        .byte $82   ; 
- D 1 - I - 0x00A179 02:A169: 30        .byte $30   ; 
- D 1 - I - 0x00A17A 02:A16A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A17B 02:A16B: 2F        .byte $2F   ; 
- - - - - - 0x00A17C 02:A16C: 90        .byte $90   ; 
- - - - - - 0x00A17D 02:A16D: 7F        .byte $7F   ; 
- - - - - - 0x00A17E 02:A16E: 8F        .byte $8F   ; 
- - - - - - 0x00A17F 02:A16F: 39        .byte $39   ; 
- - - - - - 0x00A180 02:A170: 90        .byte $90   ; 
- - - - - - 0x00A181 02:A171: 38        .byte $38   ; 
- - - - - - 0x00A182 02:A172: 8F        .byte $8F   ; 
- - - - - - 0x00A183 02:A173: 39        .byte $39   ; 
- - - - - - 0x00A184 02:A174: 90        .byte $90   ; 
- - - - - - 0x00A185 02:A175: 38        .byte $38   ; 
- - - - - - 0x00A186 02:A176: 8F        .byte $8F   ; 
- - - - - - 0x00A187 02:A177: 39        .byte $39   ; 
- - - - - - 0x00A188 02:A178: 90        .byte $90   ; 
- - - - - - 0x00A189 02:A179: 34        .byte $34   ; 
- - - - - - 0x00A18A 02:A17A: 8F        .byte $8F   ; 
- - - - - - 0x00A18B 02:A17B: 31        .byte $31   ; 
- - - - - - 0x00A18C 02:A17C: 90        .byte $90   ; 
- - - - - - 0x00A18D 02:A17D: 2D        .byte $2D   ; 
- - - - - - 0x00A18E 02:A17E: 82        .byte $82   ; 
- - - - - - 0x00A18F 02:A17F: 3A        .byte $3A   ; 
- - - - - - 0x00A190 02:A180: 8F        .byte $8F   ; 
- - - - - - 0x00A191 02:A181: 38        .byte $38   ; 
- - - - - - 0x00A192 02:A182: 90        .byte $90   ; 
- - - - - - 0x00A193 02:A183: 39        .byte $39   ; 
- - - - - - 0x00A194 02:A184: 8F        .byte $8F   ; 
- - - - - - 0x00A195 02:A185: 7F        .byte $7F   ; 
- - - - - - 0x00A196 02:A186: 90        .byte $90   ; 
- - - - - - 0x00A197 02:A187: 28        .byte $28   ; 
- - - - - - 0x00A198 02:A188: 8F        .byte $8F   ; 
- - - - - - 0x00A199 02:A189: 2A        .byte $2A   ; 
- - - - - - 0x00A19A 02:A18A: 90        .byte $90   ; 
- - - - - - 0x00A19B 02:A18B: 7F        .byte $7F   ; 
- - - - - - 0x00A19C 02:A18C: CF        .byte $CF   ; 
- - - - - - 0x00A19D 02:A18D: CF        .byte $CF   ; 
- - - - - - 0x00A19E 02:A18E: CF        .byte $CF   ; 
- - - - - - 0x00A19F 02:A18F: FF        .byte $FF   ; 



ch_05_A190_02:
- D 1 - I - 0x00A1A0 02:A190: E2        .byte $E2   ; 
- D 1 - I - 0x00A1A1 02:A191: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00A1A3 02:A193: 82        .byte $82   ; 
- D 1 - I - 0x00A1A4 02:A194: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1A5 02:A195: 88        .byte $88   ; 
- D 1 - I - 0x00A1A6 02:A196: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1A7 02:A197: 82        .byte $82   ; 
- D 1 - I - 0x00A1A8 02:A198: 2E        .byte $2E   ; 
- D 1 - I - 0x00A1A9 02:A199: 8F        .byte $8F   ; 
- D 1 - I - 0x00A1AA 02:A19A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1AB 02:A19B: 90        .byte $90   ; 
- D 1 - I - 0x00A1AC 02:A19C: 2E        .byte $2E   ; 
- D 1 - I - 0x00A1AD 02:A19D: 81        .byte $81   ; 
- D 1 - I - 0x00A1AE 02:A19E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1AF 02:A19F: 82        .byte $82   ; 
- D 1 - I - 0x00A1B0 02:A1A0: 2F        .byte $2F   ; 
- D 1 - I - 0x00A1B1 02:A1A1: 88        .byte $88   ; 
- D 1 - I - 0x00A1B2 02:A1A2: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1B3 02:A1A3: 82        .byte $82   ; 
- D 1 - I - 0x00A1B4 02:A1A4: 7E        .byte $7E   ; 
- D 1 - I - 0x00A1B5 02:A1A5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A1B6 02:A1A6: 29        .byte $29   ; 
- D 1 - I - 0x00A1B7 02:A1A7: 90        .byte $90   ; 
- D 1 - I - 0x00A1B8 02:A1A8: 28        .byte $28   ; 
- D 1 - I - 0x00A1B9 02:A1A9: 81        .byte $81   ; 
- D 1 - I - 0x00A1BA 02:A1AA: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1BB 02:A1AB: CA        .byte $CA   ; 
- D 1 - I - 0x00A1BC 02:A1AC: CA        .byte $CA   ; 
- D 1 - I - 0x00A1BD 02:A1AD: C2        .byte $C2   ; 
- D 1 - I - 0x00A1BE 02:A1AE: 82        .byte $82   ; 
- D 1 - I - 0x00A1BF 02:A1AF: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1C0 02:A1B0: 2A        .byte $2A   ; 
- D 1 - I - 0x00A1C1 02:A1B1: 2B        .byte $2B   ; 
- D 1 - I - 0x00A1C2 02:A1B2: 2C        .byte $2C   ; 
- D 1 - I - 0x00A1C3 02:A1B3: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1C4 02:A1B4: 25        .byte $25   ; 
- D 1 - I - 0x00A1C5 02:A1B5: 28        .byte $28   ; 
- D 1 - I - 0x00A1C6 02:A1B6: 27        .byte $27   ; 
- D 1 - I - 0x00A1C7 02:A1B7: 26        .byte $26   ; 
- D 1 - I - 0x00A1C8 02:A1B8: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1C9 02:A1B9: 30        .byte $30   ; 
- D 1 - I - 0x00A1CA 02:A1BA: 31        .byte $31   ; 
- D 1 - I - 0x00A1CB 02:A1BB: 32        .byte $32   ; 
- D 1 - I - 0x00A1CC 02:A1BC: 31        .byte $31   ; 
- D 1 - I - 0x00A1CD 02:A1BD: 32        .byte $32   ; 
- D 1 - I - 0x00A1CE 02:A1BE: 33        .byte $33   ; 
- D 1 - I - 0x00A1CF 02:A1BF: 2F        .byte $2F   ; 
- D 1 - I - 0x00A1D0 02:A1C0: 2A        .byte $2A   ; 
- D 1 - I - 0x00A1D1 02:A1C1: 26        .byte $26   ; 
- D 1 - I - 0x00A1D2 02:A1C2: 27        .byte $27   ; 
- D 1 - I - 0x00A1D3 02:A1C3: 28        .byte $28   ; 
- D 1 - I - 0x00A1D4 02:A1C4: 2A        .byte $2A   ; 
- D 1 - I - 0x00A1D5 02:A1C5: 2B        .byte $2B   ; 
- D 1 - I - 0x00A1D6 02:A1C6: 2C        .byte $2C   ; 
- D 1 - I - 0x00A1D7 02:A1C7: D1        .byte $D1   ; 
- D 1 - I - 0x00A1D8 02:A1C8: 82        .byte $82   ; 
- D 1 - I - 0x00A1D9 02:A1C9: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1DA 02:A1CA: 88        .byte $88   ; 
- D 1 - I - 0x00A1DB 02:A1CB: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1DC 02:A1CC: 82        .byte $82   ; 
- D 1 - I - 0x00A1DD 02:A1CD: 29        .byte $29   ; 
- D 1 - I - 0x00A1DE 02:A1CE: 8F        .byte $8F   ; 
- D 1 - I - 0x00A1DF 02:A1CF: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1E0 02:A1D0: 90        .byte $90   ; 
- D 1 - I - 0x00A1E1 02:A1D1: 28        .byte $28   ; 
- D 1 - I - 0x00A1E2 02:A1D2: 81        .byte $81   ; 
- D 1 - I - 0x00A1E3 02:A1D3: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1E4 02:A1D4: CF        .byte $CF   ; 
- D 1 - I - 0x00A1E5 02:A1D5: D2        .byte $D2   ; 
- D 1 - I - 0x00A1E6 02:A1D6: 82        .byte $82   ; 
- D 1 - I - 0x00A1E7 02:A1D7: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1E8 02:A1D8: 88        .byte $88   ; 
- D 1 - I - 0x00A1E9 02:A1D9: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1EA 02:A1DA: 82        .byte $82   ; 
- D 1 - I - 0x00A1EB 02:A1DB: 7E        .byte $7E   ; 
- D 1 - I - 0x00A1EC 02:A1DC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A1ED 02:A1DD: 2E        .byte $2E   ; 
- D 1 - I - 0x00A1EE 02:A1DE: 90        .byte $90   ; 
- D 1 - I - 0x00A1EF 02:A1DF: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1F0 02:A1E0: 81        .byte $81   ; 
- D 1 - I - 0x00A1F1 02:A1E1: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1F2 02:A1E2: 82        .byte $82   ; 
- D 1 - I - 0x00A1F3 02:A1E3: 32        .byte $32   ; 
- D 1 - I - 0x00A1F4 02:A1E4: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1F5 02:A1E5: 30        .byte $30   ; 
- D 1 - I - 0x00A1F6 02:A1E6: 31        .byte $31   ; 
- D 1 - I - 0x00A1F7 02:A1E7: 32        .byte $32   ; 
- D 1 - I - 0x00A1F8 02:A1E8: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1F9 02:A1E9: 2A        .byte $2A   ; 
- D 1 - I - 0x00A1FA 02:A1EA: 26        .byte $26   ; 
- D 1 - I - 0x00A1FB 02:A1EB: 27        .byte $27   ; 
- D 1 - I - 0x00A1FC 02:A1EC: 2A        .byte $2A   ; 
- D 1 - I - 0x00A1FD 02:A1ED: 2D        .byte $2D   ; 
- D 1 - I - 0x00A1FE 02:A1EE: 2F        .byte $2F   ; 
- D 1 - I - 0x00A1FF 02:A1EF: 30        .byte $30   ; 
- D 1 - I - 0x00A200 02:A1F0: 2D        .byte $2D   ; 
- D 1 - I - 0x00A201 02:A1F1: 2A        .byte $2A   ; 
- D 1 - I - 0x00A202 02:A1F2: 26        .byte $26   ; 
- D 1 - I - 0x00A203 02:A1F3: 28        .byte $28   ; 
- D 1 - I - 0x00A204 02:A1F4: 31        .byte $31   ; 
- D 1 - I - 0x00A205 02:A1F5: 34        .byte $34   ; 
- D 1 - I - 0x00A206 02:A1F6: 28        .byte $28   ; 
- D 1 - I - 0x00A207 02:A1F7: 29        .byte $29   ; 
- D 1 - I - 0x00A208 02:A1F8: 2F        .byte $2F   ; 
- D 1 - I - 0x00A209 02:A1F9: 31        .byte $31   ; 
- D 1 - I - 0x00A20A 02:A1FA: 2B        .byte $2B   ; 
- D 1 - I - 0x00A20B 02:A1FB: 2A        .byte $2A   ; 
- D 1 - I - 0x00A20C 02:A1FC: 31        .byte $31   ; 
- D 1 - I - 0x00A20D 02:A1FD: 2F        .byte $2F   ; 
- D 1 - I - 0x00A20E 02:A1FE: 36        .byte $36   ; 
- D 1 - I - 0x00A20F 02:A1FF: 34        .byte $34   ; 
- D 1 - I - 0x00A210 02:A200: 31        .byte $31   ; 
- D 1 - I - 0x00A211 02:A201: 32        .byte $32   ; 
- D 1 - I - 0x00A212 02:A202: 28        .byte $28   ; 
- D 1 - I - 0x00A213 02:A203: 2D        .byte $2D   ; 
- D 1 - I - 0x00A214 02:A204: 2D        .byte $2D   ; 
- D 1 - I - 0x00A215 02:A205: 2B        .byte $2B   ; 
- D 1 - I - 0x00A216 02:A206: 2B        .byte $2B   ; 
- D 1 - I - 0x00A217 02:A207: 2A        .byte $2A   ; 
- D 1 - I - 0x00A218 02:A208: 2A        .byte $2A   ; 
- D 1 - I - 0x00A219 02:A209: 28        .byte $28   ; 
- D 1 - I - 0x00A21A 02:A20A: 27        .byte $27   ; 
- D 1 - I - 0x00A21B 02:A20B: 26        .byte $26   ; 
- D 1 - I - 0x00A21C 02:A20C: 27        .byte $27   ; 
- D 1 - I - 0x00A21D 02:A20D: 28        .byte $28   ; 
- D 1 - I - 0x00A21E 02:A20E: 27        .byte $27   ; 
- D 1 - I - 0x00A21F 02:A20F: 26        .byte $26   ; 
- D 1 - I - 0x00A220 02:A210: 2A        .byte $2A   ; 
- D 1 - I - 0x00A221 02:A211: 2D        .byte $2D   ; 
- D 1 - I - 0x00A222 02:A212: 2E        .byte $2E   ; 
- D 1 - I - 0x00A223 02:A213: 2F        .byte $2F   ; 
- D 1 - I - 0x00A224 02:A214: 25        .byte $25   ; 
- D 1 - I - 0x00A225 02:A215: 26        .byte $26   ; 
- D 1 - I - 0x00A226 02:A216: 27        .byte $27   ; 
- D 1 - I - 0x00A227 02:A217: 28        .byte $28   ; 
- D 1 - I - 0x00A228 02:A218: 29        .byte $29   ; 
- D 1 - I - 0x00A229 02:A219: 2A        .byte $2A   ; 
- D 1 - I - 0x00A22A 02:A21A: 2C        .byte $2C   ; 
- - - - - - 0x00A22B 02:A21B: 2D        .byte $2D   ; 
- - - - - - 0x00A22C 02:A21C: 88        .byte $88   ; 
- - - - - - 0x00A22D 02:A21D: 7F        .byte $7F   ; 
- - - - - - 0x00A22E 02:A21E: 82        .byte $82   ; 
- - - - - - 0x00A22F 02:A21F: 7E        .byte $7E   ; 
- - - - - - 0x00A230 02:A220: 8F        .byte $8F   ; 
- - - - - - 0x00A231 02:A221: 28        .byte $28   ; 
- - - - - - 0x00A232 02:A222: 90        .byte $90   ; 
- - - - - - 0x00A233 02:A223: 2D        .byte $2D   ; 
- - - - - - 0x00A234 02:A224: 81        .byte $81   ; 
- - - - - - 0x00A235 02:A225: 7F        .byte $7F   ; 
- - - - - - 0x00A236 02:A226: CF        .byte $CF   ; 
- - - - - - 0x00A237 02:A227: CF        .byte $CF   ; 
- - - - - - 0x00A238 02:A228: CF        .byte $CF   ; 
- - - - - - 0x00A239 02:A229: FF        .byte $FF   ; 



ch_05_A22A_03:
- D 1 - I - 0x00A23A 02:A22A: E3        .byte $E3   ; 
- D 1 - I - 0x00A23B 02:A22B: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00A23D 02:A22D: 82        .byte $82   ; 
- D 1 - I - 0x00A23E 02:A22E: 28        .byte $28   ; 
- D 1 - I - 0x00A23F 02:A22F: 88        .byte $88   ; 
- D 1 - I - 0x00A240 02:A230: 7F        .byte $7F   ; 
- D 1 - I - 0x00A241 02:A231: 82        .byte $82   ; 
- D 1 - I - 0x00A242 02:A232: 28        .byte $28   ; 
- D 1 - I - 0x00A243 02:A233: 8F        .byte $8F   ; 
- D 1 - I - 0x00A244 02:A234: 7F        .byte $7F   ; 
- D 1 - I - 0x00A245 02:A235: 90        .byte $90   ; 
- D 1 - I - 0x00A246 02:A236: 28        .byte $28   ; 
- D 1 - I - 0x00A247 02:A237: 81        .byte $81   ; 
- D 1 - I - 0x00A248 02:A238: 7F        .byte $7F   ; 
- D 1 - I - 0x00A249 02:A239: 82        .byte $82   ; 
- D 1 - I - 0x00A24A 02:A23A: 28        .byte $28   ; 
- D 1 - I - 0x00A24B 02:A23B: 88        .byte $88   ; 
- D 1 - I - 0x00A24C 02:A23C: 7F        .byte $7F   ; 
- D 1 - I - 0x00A24D 02:A23D: 82        .byte $82   ; 
- D 1 - I - 0x00A24E 02:A23E: 28        .byte $28   ; 
- D 1 - I - 0x00A24F 02:A23F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A250 02:A240: 7F        .byte $7F   ; 
- D 1 - I - 0x00A251 02:A241: 90        .byte $90   ; 
- D 1 - I - 0x00A252 02:A242: 28        .byte $28   ; 
- D 1 - I - 0x00A253 02:A243: 81        .byte $81   ; 
- D 1 - I - 0x00A254 02:A244: 7F        .byte $7F   ; 
- D 1 - I - 0x00A255 02:A245: CA        .byte $CA   ; 
- D 1 - I - 0x00A256 02:A246: CA        .byte $CA   ; 
- D 1 - I - 0x00A257 02:A247: C6        .byte $C6   ; 
- D 1 - I - 0x00A258 02:A248: 82        .byte $82   ; 
- D 1 - I - 0x00A259 02:A249: 28        .byte $28   ; 
- D 1 - I - 0x00A25A 02:A24A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A25B 02:A24B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A25C 02:A24C: 90        .byte $90   ; 
- D 1 - I - 0x00A25D 02:A24D: 2A        .byte $2A   ; 
- D 1 - I - 0x00A25E 02:A24E: 82        .byte $82   ; 
- D 1 - I - 0x00A25F 02:A24F: 28        .byte $28   ; 
- D 1 - I - 0x00A260 02:A250: 8F        .byte $8F   ; 
- D 1 - I - 0x00A261 02:A251: 2D        .byte $2D   ; 
- D 1 - I - 0x00A262 02:A252: 90        .byte $90   ; 
- D 1 - I - 0x00A263 02:A253: 2A        .byte $2A   ; 
- D 1 - I - 0x00A264 02:A254: CF        .byte $CF   ; 
- D 1 - I - 0x00A265 02:A255: 82        .byte $82   ; 
- D 1 - I - 0x00A266 02:A256: 28        .byte $28   ; 
- D 1 - I - 0x00A267 02:A257: 88        .byte $88   ; 
- D 1 - I - 0x00A268 02:A258: 7F        .byte $7F   ; 
- D 1 - I - 0x00A269 02:A259: 82        .byte $82   ; 
- D 1 - I - 0x00A26A 02:A25A: 28        .byte $28   ; 
- D 1 - I - 0x00A26B 02:A25B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A26C 02:A25C: 7F        .byte $7F   ; 
- D 1 - I - 0x00A26D 02:A25D: 90        .byte $90   ; 
- D 1 - I - 0x00A26E 02:A25E: 28        .byte $28   ; 
- D 1 - I - 0x00A26F 02:A25F: 81        .byte $81   ; 
- D 1 - I - 0x00A270 02:A260: 7F        .byte $7F   ; 
- D 1 - I - 0x00A271 02:A261: C6        .byte $C6   ; 
- D 1 - I - 0x00A272 02:A262: 82        .byte $82   ; 
- D 1 - I - 0x00A273 02:A263: 28        .byte $28   ; 
- D 1 - I - 0x00A274 02:A264: 8F        .byte $8F   ; 
- D 1 - I - 0x00A275 02:A265: 2D        .byte $2D   ; 
- D 1 - I - 0x00A276 02:A266: 90        .byte $90   ; 
- D 1 - I - 0x00A277 02:A267: 2A        .byte $2A   ; 
- D 1 - I - 0x00A278 02:A268: 82        .byte $82   ; 
- D 1 - I - 0x00A279 02:A269: 28        .byte $28   ; 
- D 1 - I - 0x00A27A 02:A26A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A27B 02:A26B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A27C 02:A26C: 90        .byte $90   ; 
- D 1 - I - 0x00A27D 02:A26D: 2A        .byte $2A   ; 
- D 1 - I - 0x00A27E 02:A26E: CF        .byte $CF   ; 
- D 1 - I - 0x00A27F 02:A26F: 82        .byte $82   ; 
- D 1 - I - 0x00A280 02:A270: 28        .byte $28   ; 
- D 1 - I - 0x00A281 02:A271: 88        .byte $88   ; 
- D 1 - I - 0x00A282 02:A272: 7F        .byte $7F   ; 
- D 1 - I - 0x00A283 02:A273: 82        .byte $82   ; 
- D 1 - I - 0x00A284 02:A274: 28        .byte $28   ; 
- D 1 - I - 0x00A285 02:A275: 8F        .byte $8F   ; 
- D 1 - I - 0x00A286 02:A276: 7F        .byte $7F   ; 
- D 1 - I - 0x00A287 02:A277: 90        .byte $90   ; 
- D 1 - I - 0x00A288 02:A278: 28        .byte $28   ; 
- D 1 - I - 0x00A289 02:A279: 81        .byte $81   ; 
- D 1 - I - 0x00A28A 02:A27A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A28B 02:A27B: C6        .byte $C6   ; 
- D 1 - I - 0x00A28C 02:A27C: 82        .byte $82   ; 
- D 1 - I - 0x00A28D 02:A27D: 28        .byte $28   ; 
- D 1 - I - 0x00A28E 02:A27E: 8F        .byte $8F   ; 
- D 1 - I - 0x00A28F 02:A27F: 2D        .byte $2D   ; 
- D 1 - I - 0x00A290 02:A280: 90        .byte $90   ; 
- D 1 - I - 0x00A291 02:A281: 2A        .byte $2A   ; 
- D 1 - I - 0x00A292 02:A282: 82        .byte $82   ; 
- D 1 - I - 0x00A293 02:A283: 28        .byte $28   ; 
- D 1 - I - 0x00A294 02:A284: 8F        .byte $8F   ; 
- D 1 - I - 0x00A295 02:A285: 2D        .byte $2D   ; 
- D 1 - I - 0x00A296 02:A286: 90        .byte $90   ; 
- D 1 - I - 0x00A297 02:A287: 2A        .byte $2A   ; 
- D 1 - I - 0x00A298 02:A288: CF        .byte $CF   ; 
- D 1 - I - 0x00A299 02:A289: C8        .byte $C8   ; 
- D 1 - I - 0x00A29A 02:A28A: 82        .byte $82   ; 
- D 1 - I - 0x00A29B 02:A28B: 28        .byte $28   ; 
- D 1 - I - 0x00A29C 02:A28C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A29D 02:A28D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A29E 02:A28E: 90        .byte $90   ; 
- D 1 - I - 0x00A29F 02:A28F: 2A        .byte $2A   ; 
- D 1 - I - 0x00A2A0 02:A290: 82        .byte $82   ; 
- D 1 - I - 0x00A2A1 02:A291: 28        .byte $28   ; 
- D 1 - I - 0x00A2A2 02:A292: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2A3 02:A293: 2D        .byte $2D   ; 
- D 1 - I - 0x00A2A4 02:A294: 90        .byte $90   ; 
- D 1 - I - 0x00A2A5 02:A295: 2A        .byte $2A   ; 
- D 1 - I - 0x00A2A6 02:A296: CF        .byte $CF   ; 
- - - - - - 0x00A2A7 02:A297: 82        .byte $82   ; 
- - - - - - 0x00A2A8 02:A298: 28        .byte $28   ; 
- - - - - - 0x00A2A9 02:A299: 88        .byte $88   ; 
- - - - - - 0x00A2AA 02:A29A: 7F        .byte $7F   ; 
- - - - - - 0x00A2AB 02:A29B: 82        .byte $82   ; 
- - - - - - 0x00A2AC 02:A29C: 28        .byte $28   ; 
- - - - - - 0x00A2AD 02:A29D: 8F        .byte $8F   ; 
- - - - - - 0x00A2AE 02:A29E: 7F        .byte $7F   ; 
- - - - - - 0x00A2AF 02:A29F: 90        .byte $90   ; 
- - - - - - 0x00A2B0 02:A2A0: 28        .byte $28   ; 
- - - - - - 0x00A2B1 02:A2A1: 81        .byte $81   ; 
- - - - - - 0x00A2B2 02:A2A2: 7F        .byte $7F   ; 
- - - - - - 0x00A2B3 02:A2A3: CF        .byte $CF   ; 
- - - - - - 0x00A2B4 02:A2A4: CF        .byte $CF   ; 
- - - - - - 0x00A2B5 02:A2A5: FF        .byte $FF   ; 



_music_A2A6_02_bricks_stage_soundtrack:
- D 1 - I - 0x00A2B6 02:A2A6: 01        .byte $01   ; 
- D 1 - I - 0x00A2B7 02:A2A7: B2 A2     .word ch_02_A2B2_00
- D 1 - I - 0x00A2B9 02:A2A9: 61 A4     .word ch_02_A461_01
- D 1 - I - 0x00A2BB 02:A2AB: 12 A6     .word ch_02_A612_02
- D 1 - I - 0x00A2BD 02:A2AD: 73 A6     .word ch_02_A673_03
- - - - - - 0x00A2BF 02:A2AF: 00 00     .word $0000    ; 04
- D 1 - I - 0x00A2C1 02:A2B1: 15        .byte $15   ; 



ch_02_A2B2_00:
- D 1 - I - 0x00A2C2 02:A2B2: E0        .byte $E0   ; 
- D 1 - I - 0x00A2C3 02:A2B3: 3E A9     .word off_E0_A93E
- D 1 - I - 0x00A2C5 02:A2B5: CA        .byte $CA   ; 
- D 1 - I - 0x00A2C6 02:A2B6: 91        .byte $91   ; 
- D 1 - I - 0x00A2C7 02:A2B7: 30        .byte $30   ; 
- D 1 - I - 0x00A2C8 02:A2B8: 7E        .byte $7E   ; 
- D 1 - I - 0x00A2C9 02:A2B9: 90        .byte $90   ; 
- D 1 - I - 0x00A2CA 02:A2BA: 31        .byte $31   ; 
- D 1 - I - 0x00A2CB 02:A2BB: 34        .byte $34   ; 
- D 1 - I - 0x00A2CC 02:A2BC: 88        .byte $88   ; 
- D 1 - I - 0x00A2CD 02:A2BD: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2CE 02:A2BE: 82        .byte $82   ; 
- D 1 - I - 0x00A2CF 02:A2BF: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2D0 02:A2C0: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2D1 02:A2C1: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2D2 02:A2C2: 91        .byte $91   ; 
- D 1 - I - 0x00A2D3 02:A2C3: 35        .byte $35   ; 
- D 1 - I - 0x00A2D4 02:A2C4: 7E        .byte $7E   ; 
- D 1 - I - 0x00A2D5 02:A2C5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2D6 02:A2C6: 36        .byte $36   ; 
- D 1 - I - 0x00A2D7 02:A2C7: 90        .byte $90   ; 
- D 1 - I - 0x00A2D8 02:A2C8: 34        .byte $34   ; 
- D 1 - I - 0x00A2D9 02:A2C9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2DA 02:A2CA: 31        .byte $31   ; 
- D 1 - I - 0x00A2DB 02:A2CB: 90        .byte $90   ; 
- D 1 - I - 0x00A2DC 02:A2CC: 2D        .byte $2D   ; 
- D 1 - I - 0x00A2DD 02:A2CD: 82        .byte $82   ; 
- D 1 - I - 0x00A2DE 02:A2CE: 7E        .byte $7E   ; 
- D 1 - I - 0x00A2DF 02:A2CF: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2E0 02:A2D0: 2A        .byte $2A   ; 
- D 1 - I - 0x00A2E1 02:A2D1: 90        .byte $90   ; 
- D 1 - I - 0x00A2E2 02:A2D2: 2A        .byte $2A   ; 
- D 1 - I - 0x00A2E3 02:A2D3: 81        .byte $81   ; 
- D 1 - I - 0x00A2E4 02:A2D4: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2E5 02:A2D5: 80        .byte $80   ; 
- D 1 - I - 0x00A2E6 02:A2D6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2E7 02:A2D7: 91        .byte $91   ; 
- D 1 - I - 0x00A2E8 02:A2D8: 30        .byte $30   ; 
- D 1 - I - 0x00A2E9 02:A2D9: 7E        .byte $7E   ; 
- D 1 - I - 0x00A2EA 02:A2DA: 90        .byte $90   ; 
- D 1 - I - 0x00A2EB 02:A2DB: 31        .byte $31   ; 
- D 1 - I - 0x00A2EC 02:A2DC: 34        .byte $34   ; 
- D 1 - I - 0x00A2ED 02:A2DD: 88        .byte $88   ; 
- D 1 - I - 0x00A2EE 02:A2DE: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2EF 02:A2DF: 82        .byte $82   ; 
- D 1 - I - 0x00A2F0 02:A2E0: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2F1 02:A2E1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2F2 02:A2E2: 7F        .byte $7F   ; 
- D 1 - I - 0x00A2F3 02:A2E3: 91        .byte $91   ; 
- D 1 - I - 0x00A2F4 02:A2E4: 37        .byte $37   ; 
- D 1 - I - 0x00A2F5 02:A2E5: 7E        .byte $7E   ; 
- D 1 - I - 0x00A2F6 02:A2E6: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2F7 02:A2E7: 38        .byte $38   ; 
- D 1 - I - 0x00A2F8 02:A2E8: 90        .byte $90   ; 
- D 1 - I - 0x00A2F9 02:A2E9: 36        .byte $36   ; 
- D 1 - I - 0x00A2FA 02:A2EA: 8F        .byte $8F   ; 
- D 1 - I - 0x00A2FB 02:A2EB: 34        .byte $34   ; 
- D 1 - I - 0x00A2FC 02:A2EC: 90        .byte $90   ; 
- D 1 - I - 0x00A2FD 02:A2ED: 31        .byte $31   ; 
- D 1 - I - 0x00A2FE 02:A2EE: 82        .byte $82   ; 
- D 1 - I - 0x00A2FF 02:A2EF: 7E        .byte $7E   ; 
- D 1 - I - 0x00A300 02:A2F0: 8F        .byte $8F   ; 
- D 1 - I - 0x00A301 02:A2F1: 2C        .byte $2C   ; 
- D 1 - I - 0x00A302 02:A2F2: 90        .byte $90   ; 
- D 1 - I - 0x00A303 02:A2F3: 2C        .byte $2C   ; 
- D 1 - I - 0x00A304 02:A2F4: 81        .byte $81   ; 
- D 1 - I - 0x00A305 02:A2F5: 7F        .byte $7F   ; 
- D 1 - I - 0x00A306 02:A2F6: 88        .byte $88   ; 
- D 1 - I - 0x00A307 02:A2F7: 7F        .byte $7F   ; 
- D 1 - I - 0x00A308 02:A2F8: 8F        .byte $8F   ; 
- D 1 - I - 0x00A309 02:A2F9: 7F        .byte $7F   ; 
- D 1 - I - 0x00A30A 02:A2FA: 90        .byte $90   ; 
- D 1 - I - 0x00A30B 02:A2FB: 31        .byte $31   ; 
- D 1 - I - 0x00A30C 02:A2FC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A30D 02:A2FD: 32        .byte $32   ; 
- D 1 - I - 0x00A30E 02:A2FE: 90        .byte $90   ; 
- D 1 - I - 0x00A30F 02:A2FF: 34        .byte $34   ; 
- D 1 - I - 0x00A310 02:A300: 8F        .byte $8F   ; 
- D 1 - I - 0x00A311 02:A301: 7F        .byte $7F   ; 
- D 1 - I - 0x00A312 02:A302: 90        .byte $90   ; 
- D 1 - I - 0x00A313 02:A303: 31        .byte $31   ; 
- D 1 - I - 0x00A314 02:A304: 8F        .byte $8F   ; 
- D 1 - I - 0x00A315 02:A305: 32        .byte $32   ; 
- D 1 - I - 0x00A316 02:A306: 90        .byte $90   ; 
- D 1 - I - 0x00A317 02:A307: 34        .byte $34   ; 
- D 1 - I - 0x00A318 02:A308: 8F        .byte $8F   ; 
- D 1 - I - 0x00A319 02:A309: 31        .byte $31   ; 
- D 1 - I - 0x00A31A 02:A30A: 90        .byte $90   ; 
- D 1 - I - 0x00A31B 02:A30B: 32        .byte $32   ; 
- D 1 - I - 0x00A31C 02:A30C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A31D 02:A30D: 2F        .byte $2F   ; 
- D 1 - I - 0x00A31E 02:A30E: 90        .byte $90   ; 
- D 1 - I - 0x00A31F 02:A30F: 31        .byte $31   ; 
- D 1 - I - 0x00A320 02:A310: 8F        .byte $8F   ; 
- D 1 - I - 0x00A321 02:A311: 2E        .byte $2E   ; 
- D 1 - I - 0x00A322 02:A312: 90        .byte $90   ; 
- D 1 - I - 0x00A323 02:A313: 31        .byte $31   ; 
- D 1 - I - 0x00A324 02:A314: 8F        .byte $8F   ; 
- D 1 - I - 0x00A325 02:A315: 2F        .byte $2F   ; 
- D 1 - I - 0x00A326 02:A316: 90        .byte $90   ; 
- D 1 - I - 0x00A327 02:A317: 31        .byte $31   ; 
- D 1 - I - 0x00A328 02:A318: 8F        .byte $8F   ; 
- D 1 - I - 0x00A329 02:A319: 32        .byte $32   ; 
- D 1 - I - 0x00A32A 02:A31A: 90        .byte $90   ; 
- D 1 - I - 0x00A32B 02:A31B: 33        .byte $33   ; 
- D 1 - I - 0x00A32C 02:A31C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A32D 02:A31D: 34        .byte $34   ; 
- D 1 - I - 0x00A32E 02:A31E: 90        .byte $90   ; 
- D 1 - I - 0x00A32F 02:A31F: 38        .byte $38   ; 
- D 1 - I - 0x00A330 02:A320: 8F        .byte $8F   ; 
- D 1 - I - 0x00A331 02:A321: 7F        .byte $7F   ; 
- D 1 - I - 0x00A332 02:A322: 90        .byte $90   ; 
- D 1 - I - 0x00A333 02:A323: 33        .byte $33   ; 
- D 1 - I - 0x00A334 02:A324: 8F        .byte $8F   ; 
- D 1 - I - 0x00A335 02:A325: 34        .byte $34   ; 
- D 1 - I - 0x00A336 02:A326: 90        .byte $90   ; 
- D 1 - I - 0x00A337 02:A327: 36        .byte $36   ; 
- D 1 - I - 0x00A338 02:A328: 8F        .byte $8F   ; 
- D 1 - I - 0x00A339 02:A329: 33        .byte $33   ; 
- D 1 - I - 0x00A33A 02:A32A: 90        .byte $90   ; 
- D 1 - I - 0x00A33B 02:A32B: 34        .byte $34   ; 
- D 1 - I - 0x00A33C 02:A32C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A33D 02:A32D: 31        .byte $31   ; 
- D 1 - I - 0x00A33E 02:A32E: 90        .byte $90   ; 
- D 1 - I - 0x00A33F 02:A32F: 33        .byte $33   ; 
- D 1 - I - 0x00A340 02:A330: 8F        .byte $8F   ; 
- D 1 - I - 0x00A341 02:A331: 30        .byte $30   ; 
- D 1 - I - 0x00A342 02:A332: 90        .byte $90   ; 
- D 1 - I - 0x00A343 02:A333: 33        .byte $33   ; 
- D 1 - I - 0x00A344 02:A334: 8F        .byte $8F   ; 
- D 1 - I - 0x00A345 02:A335: 31        .byte $31   ; 
- D 1 - I - 0x00A346 02:A336: 90        .byte $90   ; 
- D 1 - I - 0x00A347 02:A337: 33        .byte $33   ; 
- D 1 - I - 0x00A348 02:A338: 8F        .byte $8F   ; 
- D 1 - I - 0x00A349 02:A339: 34        .byte $34   ; 
- D 1 - I - 0x00A34A 02:A33A: 90        .byte $90   ; 
- D 1 - I - 0x00A34B 02:A33B: 35        .byte $35   ; 
- D 1 - I - 0x00A34C 02:A33C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A34D 02:A33D: 36        .byte $36   ; 
- D 1 - I - 0x00A34E 02:A33E: 90        .byte $90   ; 
- D 1 - I - 0x00A34F 02:A33F: 39        .byte $39   ; 
- D 1 - I - 0x00A350 02:A340: 82        .byte $82   ; 
- D 1 - I - 0x00A351 02:A341: 7F        .byte $7F   ; 
- D 1 - I - 0x00A352 02:A342: 8F        .byte $8F   ; 
- D 1 - I - 0x00A353 02:A343: 7F        .byte $7F   ; 
- D 1 - I - 0x00A354 02:A344: 90        .byte $90   ; 
- D 1 - I - 0x00A355 02:A345: 35        .byte $35   ; 
- D 1 - I - 0x00A356 02:A346: 8F        .byte $8F   ; 
- D 1 - I - 0x00A357 02:A347: 36        .byte $36   ; 
- D 1 - I - 0x00A358 02:A348: 90        .byte $90   ; 
- D 1 - I - 0x00A359 02:A349: 39        .byte $39   ; 
- D 1 - I - 0x00A35A 02:A34A: 82        .byte $82   ; 
- D 1 - I - 0x00A35B 02:A34B: 7F        .byte $7F   ; 
- D 1 - I - 0x00A35C 02:A34C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A35D 02:A34D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A35E 02:A34E: 90        .byte $90   ; 
- D 1 - I - 0x00A35F 02:A34F: 35        .byte $35   ; 
- D 1 - I - 0x00A360 02:A350: 8F        .byte $8F   ; 
- D 1 - I - 0x00A361 02:A351: 36        .byte $36   ; 
- D 1 - I - 0x00A362 02:A352: 90        .byte $90   ; 
- D 1 - I - 0x00A363 02:A353: 39        .byte $39   ; 
- D 1 - I - 0x00A364 02:A354: 8F        .byte $8F   ; 
- D 1 - I - 0x00A365 02:A355: 36        .byte $36   ; 
- D 1 - I - 0x00A366 02:A356: 90        .byte $90   ; 
- D 1 - I - 0x00A367 02:A357: 37        .byte $37   ; 
- D 1 - I - 0x00A368 02:A358: 8F        .byte $8F   ; 
- D 1 - I - 0x00A369 02:A359: 38        .byte $38   ; 
- D 1 - I - 0x00A36A 02:A35A: 90        .byte $90   ; 
- D 1 - I - 0x00A36B 02:A35B: 40        .byte $40   ; 
- D 1 - I - 0x00A36C 02:A35C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A36D 02:A35D: 38        .byte $38   ; 
- D 1 - I - 0x00A36E 02:A35E: 90        .byte $90   ; 
- D 1 - I - 0x00A36F 02:A35F: 37        .byte $37   ; 
- D 1 - I - 0x00A370 02:A360: 8F        .byte $8F   ; 
- D 1 - I - 0x00A371 02:A361: 36        .byte $36   ; 
- D 1 - I - 0x00A372 02:A362: 90        .byte $90   ; 
- D 1 - I - 0x00A373 02:A363: 3E        .byte $3E   ; 
- D 1 - I - 0x00A374 02:A364: 8F        .byte $8F   ; 
- D 1 - I - 0x00A375 02:A365: 36        .byte $36   ; 
- D 1 - I - 0x00A376 02:A366: 90        .byte $90   ; 
- D 1 - I - 0x00A377 02:A367: 35        .byte $35   ; 
- D 1 - I - 0x00A378 02:A368: 8F        .byte $8F   ; 
- D 1 - I - 0x00A379 02:A369: 34        .byte $34   ; 
- D 1 - I - 0x00A37A 02:A36A: 90        .byte $90   ; 
- D 1 - I - 0x00A37B 02:A36B: 3D        .byte $3D   ; 
- D 1 - I - 0x00A37C 02:A36C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A37D 02:A36D: 34        .byte $34   ; 
- D 1 - I - 0x00A37E 02:A36E: 90        .byte $90   ; 
- D 1 - I - 0x00A37F 02:A36F: 33        .byte $33   ; 
- D 1 - I - 0x00A380 02:A370: 8F        .byte $8F   ; 
- D 1 - I - 0x00A381 02:A371: 32        .byte $32   ; 
- D 1 - I - 0x00A382 02:A372: 90        .byte $90   ; 
- D 1 - I - 0x00A383 02:A373: 3B        .byte $3B   ; 
- D 1 - I - 0x00A384 02:A374: 8F        .byte $8F   ; 
- D 1 - I - 0x00A385 02:A375: 2F        .byte $2F   ; 
- D 1 - I - 0x00A386 02:A376: 90        .byte $90   ; 
- D 1 - I - 0x00A387 02:A377: 30        .byte $30   ; 
- D 1 - I - 0x00A388 02:A378: 91        .byte $91   ; 
- D 1 - I - 0x00A389 02:A379: 30        .byte $30   ; 
- D 1 - I - 0x00A38A 02:A37A: 7E        .byte $7E   ; 
- D 1 - I - 0x00A38B 02:A37B: 90        .byte $90   ; 
- D 1 - I - 0x00A38C 02:A37C: 31        .byte $31   ; 
- D 1 - I - 0x00A38D 02:A37D: 34        .byte $34   ; 
- D 1 - I - 0x00A38E 02:A37E: 88        .byte $88   ; 
- D 1 - I - 0x00A38F 02:A37F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A390 02:A380: 82        .byte $82   ; 
- D 1 - I - 0x00A391 02:A381: 7F        .byte $7F   ; 
- D 1 - I - 0x00A392 02:A382: 8F        .byte $8F   ; 
- D 1 - I - 0x00A393 02:A383: 7F        .byte $7F   ; 
- D 1 - I - 0x00A394 02:A384: 91        .byte $91   ; 
- D 1 - I - 0x00A395 02:A385: 35        .byte $35   ; 
- D 1 - I - 0x00A396 02:A386: 7E        .byte $7E   ; 
- D 1 - I - 0x00A397 02:A387: 8F        .byte $8F   ; 
- D 1 - I - 0x00A398 02:A388: 36        .byte $36   ; 
- D 1 - I - 0x00A399 02:A389: 90        .byte $90   ; 
- D 1 - I - 0x00A39A 02:A38A: 34        .byte $34   ; 
- D 1 - I - 0x00A39B 02:A38B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A39C 02:A38C: 31        .byte $31   ; 
- D 1 - I - 0x00A39D 02:A38D: 90        .byte $90   ; 
- D 1 - I - 0x00A39E 02:A38E: 2D        .byte $2D   ; 
- D 1 - I - 0x00A39F 02:A38F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3A0 02:A390: 2A        .byte $2A   ; 
- D 1 - I - 0x00A3A1 02:A391: 90        .byte $90   ; 
- D 1 - I - 0x00A3A2 02:A392: 7F        .byte $7F   ; 
- D 1 - I - 0x00A3A3 02:A393: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3A4 02:A394: 28        .byte $28   ; 
- D 1 - I - 0x00A3A5 02:A395: 90        .byte $90   ; 
- D 1 - I - 0x00A3A6 02:A396: 2A        .byte $2A   ; 
- D 1 - I - 0x00A3A7 02:A397: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3A8 02:A398: 2D        .byte $2D   ; 
- D 1 - I - 0x00A3A9 02:A399: 90        .byte $90   ; 
- D 1 - I - 0x00A3AA 02:A39A: 31        .byte $31   ; 
- D 1 - I - 0x00A3AB 02:A39B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3AC 02:A39C: 7F        .byte $7F   ; 
- D 1 - I - 0x00A3AD 02:A39D: 90        .byte $90   ; 
- D 1 - I - 0x00A3AE 02:A39E: 28        .byte $28   ; 
- D 1 - I - 0x00A3AF 02:A39F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3B0 02:A3A0: 2A        .byte $2A   ; 
- D 1 - I - 0x00A3B1 02:A3A1: 90        .byte $90   ; 
- D 1 - I - 0x00A3B2 02:A3A2: 2D        .byte $2D   ; 
- D 1 - I - 0x00A3B3 02:A3A3: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3B4 02:A3A4: 30        .byte $30   ; 
- D 1 - I - 0x00A3B5 02:A3A5: 90        .byte $90   ; 
- D 1 - I - 0x00A3B6 02:A3A6: 31        .byte $31   ; 
- D 1 - I - 0x00A3B7 02:A3A7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3B8 02:A3A8: 34        .byte $34   ; 
- D 1 - I - 0x00A3B9 02:A3A9: 90        .byte $90   ; 
- D 1 - I - 0x00A3BA 02:A3AA: 36        .byte $36   ; 
- D 1 - I - 0x00A3BB 02:A3AB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3BC 02:A3AC: 39        .byte $39   ; 
- D 1 - I - 0x00A3BD 02:A3AD: 90        .byte $90   ; 
- D 1 - I - 0x00A3BE 02:A3AE: 3C        .byte $3C   ; 
- D 1 - I - 0x00A3BF 02:A3AF: 91        .byte $91   ; 
- D 1 - I - 0x00A3C0 02:A3B0: 30        .byte $30   ; 
- D 1 - I - 0x00A3C1 02:A3B1: 7E        .byte $7E   ; 
- D 1 - I - 0x00A3C2 02:A3B2: 90        .byte $90   ; 
- D 1 - I - 0x00A3C3 02:A3B3: 31        .byte $31   ; 
- D 1 - I - 0x00A3C4 02:A3B4: 34        .byte $34   ; 
- D 1 - I - 0x00A3C5 02:A3B5: 88        .byte $88   ; 
- D 1 - I - 0x00A3C6 02:A3B6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A3C7 02:A3B7: 82        .byte $82   ; 
- D 1 - I - 0x00A3C8 02:A3B8: 7F        .byte $7F   ; 
- D 1 - I - 0x00A3C9 02:A3B9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3CA 02:A3BA: 7F        .byte $7F   ; 
- D 1 - I - 0x00A3CB 02:A3BB: 91        .byte $91   ; 
- D 1 - I - 0x00A3CC 02:A3BC: 37        .byte $37   ; 
- D 1 - I - 0x00A3CD 02:A3BD: 7E        .byte $7E   ; 
- D 1 - I - 0x00A3CE 02:A3BE: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3CF 02:A3BF: 38        .byte $38   ; 
- D 1 - I - 0x00A3D0 02:A3C0: 90        .byte $90   ; 
- D 1 - I - 0x00A3D1 02:A3C1: 36        .byte $36   ; 
- D 1 - I - 0x00A3D2 02:A3C2: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3D3 02:A3C3: 34        .byte $34   ; 
- D 1 - I - 0x00A3D4 02:A3C4: 90        .byte $90   ; 
- D 1 - I - 0x00A3D5 02:A3C5: 31        .byte $31   ; 
- D 1 - I - 0x00A3D6 02:A3C6: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3D7 02:A3C7: 2C        .byte $2C   ; 
- D 1 - I - 0x00A3D8 02:A3C8: 90        .byte $90   ; 
- D 1 - I - 0x00A3D9 02:A3C9: 7F        .byte $7F   ; 
- D 1 - I - 0x00A3DA 02:A3CA: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3DB 02:A3CB: 34        .byte $34   ; 
- D 1 - I - 0x00A3DC 02:A3CC: 90        .byte $90   ; 
- D 1 - I - 0x00A3DD 02:A3CD: 31        .byte $31   ; 
- D 1 - I - 0x00A3DE 02:A3CE: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3DF 02:A3CF: 2C        .byte $2C   ; 
- D 1 - I - 0x00A3E0 02:A3D0: 90        .byte $90   ; 
- D 1 - I - 0x00A3E1 02:A3D1: 38        .byte $38   ; 
- D 1 - I - 0x00A3E2 02:A3D2: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3E3 02:A3D3: 34        .byte $34   ; 
- D 1 - I - 0x00A3E4 02:A3D4: 90        .byte $90   ; 
- D 1 - I - 0x00A3E5 02:A3D5: 3D        .byte $3D   ; 
- D 1 - I - 0x00A3E6 02:A3D6: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3E7 02:A3D7: 38        .byte $38   ; 
- D 1 - I - 0x00A3E8 02:A3D8: 90        .byte $90   ; 
- D 1 - I - 0x00A3E9 02:A3D9: 40        .byte $40   ; 
- D 1 - I - 0x00A3EA 02:A3DA: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3EB 02:A3DB: 3D        .byte $3D   ; 
- D 1 - I - 0x00A3EC 02:A3DC: 90        .byte $90   ; 
- D 1 - I - 0x00A3ED 02:A3DD: 38        .byte $38   ; 
- D 1 - I - 0x00A3EE 02:A3DE: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3EF 02:A3DF: 34        .byte $34   ; 
- D 1 - I - 0x00A3F0 02:A3E0: 90        .byte $90   ; 
- D 1 - I - 0x00A3F1 02:A3E1: 31        .byte $31   ; 
- D 1 - I - 0x00A3F2 02:A3E2: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3F3 02:A3E3: 2C        .byte $2C   ; 
- D 1 - I - 0x00A3F4 02:A3E4: 90        .byte $90   ; 
- D 1 - I - 0x00A3F5 02:A3E5: 28        .byte $28   ; 
- D 1 - I - 0x00A3F6 02:A3E6: 91        .byte $91   ; 
- D 1 - I - 0x00A3F7 02:A3E7: 35        .byte $35   ; 
- D 1 - I - 0x00A3F8 02:A3E8: 7E        .byte $7E   ; 
- D 1 - I - 0x00A3F9 02:A3E9: 90        .byte $90   ; 
- D 1 - I - 0x00A3FA 02:A3EA: 36        .byte $36   ; 
- D 1 - I - 0x00A3FB 02:A3EB: 39        .byte $39   ; 
- D 1 - I - 0x00A3FC 02:A3EC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A3FD 02:A3ED: 7F        .byte $7F   ; 
- D 1 - I - 0x00A3FE 02:A3EE: 90        .byte $90   ; 
- D 1 - I - 0x00A3FF 02:A3EF: 36        .byte $36   ; 
- D 1 - I - 0x00A400 02:A3F0: 8F        .byte $8F   ; 
- D 1 - I - 0x00A401 02:A3F1: 39        .byte $39   ; 
- D 1 - I - 0x00A402 02:A3F2: 90        .byte $90   ; 
- D 1 - I - 0x00A403 02:A3F3: 36        .byte $36   ; 
- D 1 - I - 0x00A404 02:A3F4: 8F        .byte $8F   ; 
- D 1 - I - 0x00A405 02:A3F5: 32        .byte $32   ; 
- D 1 - I - 0x00A406 02:A3F6: 90        .byte $90   ; 
- D 1 - I - 0x00A407 02:A3F7: 31        .byte $31   ; 
- D 1 - I - 0x00A408 02:A3F8: 82        .byte $82   ; 
- D 1 - I - 0x00A409 02:A3F9: 7E        .byte $7E   ; 
- D 1 - I - 0x00A40A 02:A3FA: 8F        .byte $8F   ; 
- D 1 - I - 0x00A40B 02:A3FB: 30        .byte $30   ; 
- D 1 - I - 0x00A40C 02:A3FC: 90        .byte $90   ; 
- D 1 - I - 0x00A40D 02:A3FD: 30        .byte $30   ; 
- D 1 - I - 0x00A40E 02:A3FE: 8F        .byte $8F   ; 
- D 1 - I - 0x00A40F 02:A3FF: 7F        .byte $7F   ; 
- D 1 - I - 0x00A410 02:A400: 90        .byte $90   ; 
- D 1 - I - 0x00A411 02:A401: 33        .byte $33   ; 
- D 1 - I - 0x00A412 02:A402: 8F        .byte $8F   ; 
- D 1 - I - 0x00A413 02:A403: 36        .byte $36   ; 
- D 1 - I - 0x00A414 02:A404: 90        .byte $90   ; 
- D 1 - I - 0x00A415 02:A405: 37        .byte $37   ; 
- D 1 - I - 0x00A416 02:A406: 8F        .byte $8F   ; 
- D 1 - I - 0x00A417 02:A407: 38        .byte $38   ; 
- D 1 - I - 0x00A418 02:A408: 90        .byte $90   ; 
- D 1 - I - 0x00A419 02:A409: 3D        .byte $3D   ; 
- D 1 - I - 0x00A41A 02:A40A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A41B 02:A40B: 7F        .byte $7F   ; 
- D 1 - I - 0x00A41C 02:A40C: 90        .byte $90   ; 
- D 1 - I - 0x00A41D 02:A40D: 40        .byte $40   ; 
- D 1 - I - 0x00A41E 02:A40E: 3D        .byte $3D   ; 
- D 1 - I - 0x00A41F 02:A40F: 40        .byte $40   ; 
- D 1 - I - 0x00A420 02:A410: 3D        .byte $3D   ; 
- D 1 - I - 0x00A421 02:A411: 8F        .byte $8F   ; 
- D 1 - I - 0x00A422 02:A412: 38        .byte $38   ; 
- D 1 - I - 0x00A423 02:A413: 90        .byte $90   ; 
- D 1 - I - 0x00A424 02:A414: 34        .byte $34   ; 
- D 1 - I - 0x00A425 02:A415: 91        .byte $91   ; 
- D 1 - I - 0x00A426 02:A416: 37        .byte $37   ; 
- D 1 - I - 0x00A427 02:A417: 7E        .byte $7E   ; 
- D 1 - I - 0x00A428 02:A418: 90        .byte $90   ; 
- D 1 - I - 0x00A429 02:A419: 38        .byte $38   ; 
- D 1 - I - 0x00A42A 02:A41A: 38        .byte $38   ; 
- D 1 - I - 0x00A42B 02:A41B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A42C 02:A41C: 7F        .byte $7F   ; 
- D 1 - I - 0x00A42D 02:A41D: 90        .byte $90   ; 
- D 1 - I - 0x00A42E 02:A41E: 38        .byte $38   ; 
- D 1 - I - 0x00A42F 02:A41F: 82        .byte $82   ; 
- D 1 - I - 0x00A430 02:A420: 7F        .byte $7F   ; 
- D 1 - I - 0x00A431 02:A421: 8F        .byte $8F   ; 
- D 1 - I - 0x00A432 02:A422: 34        .byte $34   ; 
- D 1 - I - 0x00A433 02:A423: 90        .byte $90   ; 
- D 1 - I - 0x00A434 02:A424: 35        .byte $35   ; 
- D 1 - I - 0x00A435 02:A425: 8F        .byte $8F   ; 
- D 1 - I - 0x00A436 02:A426: 36        .byte $36   ; 
- D 1 - I - 0x00A437 02:A427: 90        .byte $90   ; 
- D 1 - I - 0x00A438 02:A428: 39        .byte $39   ; 
- D 1 - I - 0x00A439 02:A429: 81        .byte $81   ; 
- D 1 - I - 0x00A43A 02:A42A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A43B 02:A42B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A43C 02:A42C: 34        .byte $34   ; 
- D 1 - I - 0x00A43D 02:A42D: 90        .byte $90   ; 
- D 1 - I - 0x00A43E 02:A42E: 35        .byte $35   ; 
- D 1 - I - 0x00A43F 02:A42F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A440 02:A430: 36        .byte $36   ; 
- D 1 - I - 0x00A441 02:A431: 90        .byte $90   ; 
- D 1 - I - 0x00A442 02:A432: 39        .byte $39   ; 
- D 1 - I - 0x00A443 02:A433: 8F        .byte $8F   ; 
- D 1 - I - 0x00A444 02:A434: 36        .byte $36   ; 
- D 1 - I - 0x00A445 02:A435: 90        .byte $90   ; 
- D 1 - I - 0x00A446 02:A436: 37        .byte $37   ; 
- D 1 - I - 0x00A447 02:A437: 8F        .byte $8F   ; 
- D 1 - I - 0x00A448 02:A438: 38        .byte $38   ; 
- D 1 - I - 0x00A449 02:A439: 90        .byte $90   ; 
- D 1 - I - 0x00A44A 02:A43A: 3D        .byte $3D   ; 
- D 1 - I - 0x00A44B 02:A43B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A44C 02:A43C: 34        .byte $34   ; 
- D 1 - I - 0x00A44D 02:A43D: 90        .byte $90   ; 
- D 1 - I - 0x00A44E 02:A43E: 36        .byte $36   ; 
- D 1 - I - 0x00A44F 02:A43F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A450 02:A440: 39        .byte $39   ; 
- D 1 - I - 0x00A451 02:A441: 90        .byte $90   ; 
- D 1 - I - 0x00A452 02:A442: 39        .byte $39   ; 
- D 1 - I - 0x00A453 02:A443: 8F        .byte $8F   ; 
- D 1 - I - 0x00A454 02:A444: 7F        .byte $7F   ; 
- D 1 - I - 0x00A455 02:A445: 90        .byte $90   ; 
- D 1 - I - 0x00A456 02:A446: 34        .byte $34   ; 
- D 1 - I - 0x00A457 02:A447: 8F        .byte $8F   ; 
- D 1 - I - 0x00A458 02:A448: 36        .byte $36   ; 
- D 1 - I - 0x00A459 02:A449: 90        .byte $90   ; 
- D 1 - I - 0x00A45A 02:A44A: 34        .byte $34   ; 
- D 1 - I - 0x00A45B 02:A44B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A45C 02:A44C: 30        .byte $30   ; 
- D 1 - I - 0x00A45D 02:A44D: 90        .byte $90   ; 
- D 1 - I - 0x00A45E 02:A44E: 31        .byte $31   ; 
- D 1 - I - 0x00A45F 02:A44F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A460 02:A450: 2D        .byte $2D   ; 
- D 1 - I - 0x00A461 02:A451: 90        .byte $90   ; 
- D 1 - I - 0x00A462 02:A452: 7F        .byte $7F   ; 
- D 1 - I - 0x00A463 02:A453: 8F        .byte $8F   ; 
- D 1 - I - 0x00A464 02:A454: 40        .byte $40   ; 
- D 1 - I - 0x00A465 02:A455: 90        .byte $90   ; 
- D 1 - I - 0x00A466 02:A456: 3C        .byte $3C   ; 
- D 1 - I - 0x00A467 02:A457: 8F        .byte $8F   ; 
- D 1 - I - 0x00A468 02:A458: 38        .byte $38   ; 
- D 1 - I - 0x00A469 02:A459: 90        .byte $90   ; 
- D 1 - I - 0x00A46A 02:A45A: 34        .byte $34   ; 
- D 1 - I - 0x00A46B 02:A45B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A46C 02:A45C: 30        .byte $30   ; 
- D 1 - I - 0x00A46D 02:A45D: 90        .byte $90   ; 
- D 1 - I - 0x00A46E 02:A45E: 2C        .byte $2C   ; 
- D 1 - I - 0x00A46F 02:A45F: CF        .byte $CF   ; 
- - - - - - 0x00A470 02:A460: FF        .byte $FF   ; 



ch_02_A461_01:
- D 1 - I - 0x00A471 02:A461: E1        .byte $E1   ; 
- D 1 - I - 0x00A472 02:A462: 82 A9     .word off_E1_A982
- D 1 - I - 0x00A474 02:A464: 8A        .byte $8A   ; 
- D 1 - I - 0x00A475 02:A465: 7F        .byte $7F   ; 
- D 1 - I - 0x00A476 02:A466: CA        .byte $CA   ; 
- D 1 - I - 0x00A477 02:A467: 91        .byte $91   ; 
- D 1 - I - 0x00A478 02:A468: 30        .byte $30   ; 
- D 1 - I - 0x00A479 02:A469: 7E        .byte $7E   ; 
- D 1 - I - 0x00A47A 02:A46A: 90        .byte $90   ; 
- D 1 - I - 0x00A47B 02:A46B: 31        .byte $31   ; 
- D 1 - I - 0x00A47C 02:A46C: 34        .byte $34   ; 
- D 1 - I - 0x00A47D 02:A46D: 88        .byte $88   ; 
- D 1 - I - 0x00A47E 02:A46E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A47F 02:A46F: 82        .byte $82   ; 
- D 1 - I - 0x00A480 02:A470: 7F        .byte $7F   ; 
- D 1 - I - 0x00A481 02:A471: 8F        .byte $8F   ; 
- D 1 - I - 0x00A482 02:A472: 7F        .byte $7F   ; 
- D 1 - I - 0x00A483 02:A473: 91        .byte $91   ; 
- D 1 - I - 0x00A484 02:A474: 35        .byte $35   ; 
- D 1 - I - 0x00A485 02:A475: 7E        .byte $7E   ; 
- D 1 - I - 0x00A486 02:A476: 8F        .byte $8F   ; 
- D 1 - I - 0x00A487 02:A477: 36        .byte $36   ; 
- D 1 - I - 0x00A488 02:A478: 90        .byte $90   ; 
- D 1 - I - 0x00A489 02:A479: 34        .byte $34   ; 
- D 1 - I - 0x00A48A 02:A47A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A48B 02:A47B: 31        .byte $31   ; 
- D 1 - I - 0x00A48C 02:A47C: 90        .byte $90   ; 
- D 1 - I - 0x00A48D 02:A47D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A48E 02:A47E: 82        .byte $82   ; 
- D 1 - I - 0x00A48F 02:A47F: 7E        .byte $7E   ; 
- D 1 - I - 0x00A490 02:A480: 8F        .byte $8F   ; 
- D 1 - I - 0x00A491 02:A481: 2A        .byte $2A   ; 
- D 1 - I - 0x00A492 02:A482: 90        .byte $90   ; 
- D 1 - I - 0x00A493 02:A483: 2A        .byte $2A   ; 
- D 1 - I - 0x00A494 02:A484: 81        .byte $81   ; 
- D 1 - I - 0x00A495 02:A485: 7F        .byte $7F   ; 
- D 1 - I - 0x00A496 02:A486: 80        .byte $80   ; 
- D 1 - I - 0x00A497 02:A487: 7F        .byte $7F   ; 
- D 1 - I - 0x00A498 02:A488: 91        .byte $91   ; 
- D 1 - I - 0x00A499 02:A489: 30        .byte $30   ; 
- D 1 - I - 0x00A49A 02:A48A: 7E        .byte $7E   ; 
- D 1 - I - 0x00A49B 02:A48B: 90        .byte $90   ; 
- D 1 - I - 0x00A49C 02:A48C: 31        .byte $31   ; 
- D 1 - I - 0x00A49D 02:A48D: 34        .byte $34   ; 
- D 1 - I - 0x00A49E 02:A48E: 88        .byte $88   ; 
- D 1 - I - 0x00A49F 02:A48F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4A0 02:A490: 82        .byte $82   ; 
- D 1 - I - 0x00A4A1 02:A491: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4A2 02:A492: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4A3 02:A493: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4A4 02:A494: 91        .byte $91   ; 
- D 1 - I - 0x00A4A5 02:A495: 37        .byte $37   ; 
- D 1 - I - 0x00A4A6 02:A496: 7E        .byte $7E   ; 
- D 1 - I - 0x00A4A7 02:A497: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4A8 02:A498: 38        .byte $38   ; 
- D 1 - I - 0x00A4A9 02:A499: 90        .byte $90   ; 
- D 1 - I - 0x00A4AA 02:A49A: 36        .byte $36   ; 
- D 1 - I - 0x00A4AB 02:A49B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4AC 02:A49C: 34        .byte $34   ; 
- D 1 - I - 0x00A4AD 02:A49D: 90        .byte $90   ; 
- D 1 - I - 0x00A4AE 02:A49E: 31        .byte $31   ; 
- D 1 - I - 0x00A4AF 02:A49F: 82        .byte $82   ; 
- D 1 - I - 0x00A4B0 02:A4A0: 7E        .byte $7E   ; 
- D 1 - I - 0x00A4B1 02:A4A1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4B2 02:A4A2: 2C        .byte $2C   ; 
- D 1 - I - 0x00A4B3 02:A4A3: 90        .byte $90   ; 
- D 1 - I - 0x00A4B4 02:A4A4: 2C        .byte $2C   ; 
- D 1 - I - 0x00A4B5 02:A4A5: 81        .byte $81   ; 
- D 1 - I - 0x00A4B6 02:A4A6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4B7 02:A4A7: 88        .byte $88   ; 
- D 1 - I - 0x00A4B8 02:A4A8: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4B9 02:A4A9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4BA 02:A4AA: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4BB 02:A4AB: 90        .byte $90   ; 
- D 1 - I - 0x00A4BC 02:A4AC: 31        .byte $31   ; 
- D 1 - I - 0x00A4BD 02:A4AD: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4BE 02:A4AE: 32        .byte $32   ; 
- D 1 - I - 0x00A4BF 02:A4AF: 90        .byte $90   ; 
- D 1 - I - 0x00A4C0 02:A4B0: 34        .byte $34   ; 
- D 1 - I - 0x00A4C1 02:A4B1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4C2 02:A4B2: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4C3 02:A4B3: 90        .byte $90   ; 
- D 1 - I - 0x00A4C4 02:A4B4: 31        .byte $31   ; 
- D 1 - I - 0x00A4C5 02:A4B5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4C6 02:A4B6: 32        .byte $32   ; 
- D 1 - I - 0x00A4C7 02:A4B7: 90        .byte $90   ; 
- D 1 - I - 0x00A4C8 02:A4B8: 34        .byte $34   ; 
- D 1 - I - 0x00A4C9 02:A4B9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4CA 02:A4BA: 31        .byte $31   ; 
- D 1 - I - 0x00A4CB 02:A4BB: 90        .byte $90   ; 
- D 1 - I - 0x00A4CC 02:A4BC: 32        .byte $32   ; 
- D 1 - I - 0x00A4CD 02:A4BD: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4CE 02:A4BE: 2F        .byte $2F   ; 
- D 1 - I - 0x00A4CF 02:A4BF: 90        .byte $90   ; 
- D 1 - I - 0x00A4D0 02:A4C0: 31        .byte $31   ; 
- D 1 - I - 0x00A4D1 02:A4C1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4D2 02:A4C2: 2E        .byte $2E   ; 
- D 1 - I - 0x00A4D3 02:A4C3: 90        .byte $90   ; 
- D 1 - I - 0x00A4D4 02:A4C4: 31        .byte $31   ; 
- D 1 - I - 0x00A4D5 02:A4C5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4D6 02:A4C6: 2F        .byte $2F   ; 
- D 1 - I - 0x00A4D7 02:A4C7: 90        .byte $90   ; 
- D 1 - I - 0x00A4D8 02:A4C8: 31        .byte $31   ; 
- D 1 - I - 0x00A4D9 02:A4C9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4DA 02:A4CA: 32        .byte $32   ; 
- D 1 - I - 0x00A4DB 02:A4CB: 90        .byte $90   ; 
- D 1 - I - 0x00A4DC 02:A4CC: 33        .byte $33   ; 
- D 1 - I - 0x00A4DD 02:A4CD: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4DE 02:A4CE: 34        .byte $34   ; 
- D 1 - I - 0x00A4DF 02:A4CF: 90        .byte $90   ; 
- D 1 - I - 0x00A4E0 02:A4D0: 38        .byte $38   ; 
- D 1 - I - 0x00A4E1 02:A4D1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4E2 02:A4D2: 7F        .byte $7F   ; 
- D 1 - I - 0x00A4E3 02:A4D3: 90        .byte $90   ; 
- D 1 - I - 0x00A4E4 02:A4D4: 33        .byte $33   ; 
- D 1 - I - 0x00A4E5 02:A4D5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4E6 02:A4D6: 34        .byte $34   ; 
- D 1 - I - 0x00A4E7 02:A4D7: 90        .byte $90   ; 
- D 1 - I - 0x00A4E8 02:A4D8: 36        .byte $36   ; 
- D 1 - I - 0x00A4E9 02:A4D9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4EA 02:A4DA: 33        .byte $33   ; 
- D 1 - I - 0x00A4EB 02:A4DB: 90        .byte $90   ; 
- D 1 - I - 0x00A4EC 02:A4DC: 34        .byte $34   ; 
- D 1 - I - 0x00A4ED 02:A4DD: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4EE 02:A4DE: 31        .byte $31   ; 
- D 1 - I - 0x00A4EF 02:A4DF: 90        .byte $90   ; 
- D 1 - I - 0x00A4F0 02:A4E0: 33        .byte $33   ; 
- D 1 - I - 0x00A4F1 02:A4E1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4F2 02:A4E2: 30        .byte $30   ; 
- D 1 - I - 0x00A4F3 02:A4E3: 90        .byte $90   ; 
- D 1 - I - 0x00A4F4 02:A4E4: 33        .byte $33   ; 
- D 1 - I - 0x00A4F5 02:A4E5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4F6 02:A4E6: 31        .byte $31   ; 
- D 1 - I - 0x00A4F7 02:A4E7: 90        .byte $90   ; 
- D 1 - I - 0x00A4F8 02:A4E8: 33        .byte $33   ; 
- D 1 - I - 0x00A4F9 02:A4E9: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4FA 02:A4EA: 34        .byte $34   ; 
- D 1 - I - 0x00A4FB 02:A4EB: 90        .byte $90   ; 
- D 1 - I - 0x00A4FC 02:A4EC: 35        .byte $35   ; 
- D 1 - I - 0x00A4FD 02:A4ED: 8F        .byte $8F   ; 
- D 1 - I - 0x00A4FE 02:A4EE: 36        .byte $36   ; 
- D 1 - I - 0x00A4FF 02:A4EF: 90        .byte $90   ; 
- D 1 - I - 0x00A500 02:A4F0: 39        .byte $39   ; 
- D 1 - I - 0x00A501 02:A4F1: 82        .byte $82   ; 
- D 1 - I - 0x00A502 02:A4F2: 7F        .byte $7F   ; 
- D 1 - I - 0x00A503 02:A4F3: 8F        .byte $8F   ; 
- D 1 - I - 0x00A504 02:A4F4: 7F        .byte $7F   ; 
- D 1 - I - 0x00A505 02:A4F5: 90        .byte $90   ; 
- D 1 - I - 0x00A506 02:A4F6: 35        .byte $35   ; 
- D 1 - I - 0x00A507 02:A4F7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A508 02:A4F8: 36        .byte $36   ; 
- D 1 - I - 0x00A509 02:A4F9: 90        .byte $90   ; 
- D 1 - I - 0x00A50A 02:A4FA: 39        .byte $39   ; 
- D 1 - I - 0x00A50B 02:A4FB: 82        .byte $82   ; 
- D 1 - I - 0x00A50C 02:A4FC: 7F        .byte $7F   ; 
- D 1 - I - 0x00A50D 02:A4FD: 8F        .byte $8F   ; 
- D 1 - I - 0x00A50E 02:A4FE: 7F        .byte $7F   ; 
- D 1 - I - 0x00A50F 02:A4FF: 90        .byte $90   ; 
- D 1 - I - 0x00A510 02:A500: 35        .byte $35   ; 
- D 1 - I - 0x00A511 02:A501: 8F        .byte $8F   ; 
- D 1 - I - 0x00A512 02:A502: 36        .byte $36   ; 
- D 1 - I - 0x00A513 02:A503: 90        .byte $90   ; 
- D 1 - I - 0x00A514 02:A504: 39        .byte $39   ; 
- D 1 - I - 0x00A515 02:A505: 8F        .byte $8F   ; 
- D 1 - I - 0x00A516 02:A506: 36        .byte $36   ; 
- D 1 - I - 0x00A517 02:A507: 90        .byte $90   ; 
- D 1 - I - 0x00A518 02:A508: 37        .byte $37   ; 
- D 1 - I - 0x00A519 02:A509: 8F        .byte $8F   ; 
- D 1 - I - 0x00A51A 02:A50A: 38        .byte $38   ; 
- D 1 - I - 0x00A51B 02:A50B: 90        .byte $90   ; 
- D 1 - I - 0x00A51C 02:A50C: 40        .byte $40   ; 
- D 1 - I - 0x00A51D 02:A50D: 8F        .byte $8F   ; 
- D 1 - I - 0x00A51E 02:A50E: 38        .byte $38   ; 
- D 1 - I - 0x00A51F 02:A50F: 90        .byte $90   ; 
- D 1 - I - 0x00A520 02:A510: 37        .byte $37   ; 
- D 1 - I - 0x00A521 02:A511: 8F        .byte $8F   ; 
- D 1 - I - 0x00A522 02:A512: 36        .byte $36   ; 
- D 1 - I - 0x00A523 02:A513: 90        .byte $90   ; 
- D 1 - I - 0x00A524 02:A514: 3E        .byte $3E   ; 
- D 1 - I - 0x00A525 02:A515: 8F        .byte $8F   ; 
- D 1 - I - 0x00A526 02:A516: 36        .byte $36   ; 
- D 1 - I - 0x00A527 02:A517: 90        .byte $90   ; 
- D 1 - I - 0x00A528 02:A518: 35        .byte $35   ; 
- D 1 - I - 0x00A529 02:A519: 8F        .byte $8F   ; 
- D 1 - I - 0x00A52A 02:A51A: 34        .byte $34   ; 
- D 1 - I - 0x00A52B 02:A51B: 90        .byte $90   ; 
- D 1 - I - 0x00A52C 02:A51C: 3D        .byte $3D   ; 
- D 1 - I - 0x00A52D 02:A51D: 8F        .byte $8F   ; 
- D 1 - I - 0x00A52E 02:A51E: 34        .byte $34   ; 
- D 1 - I - 0x00A52F 02:A51F: 90        .byte $90   ; 
- D 1 - I - 0x00A530 02:A520: 33        .byte $33   ; 
- D 1 - I - 0x00A531 02:A521: 8F        .byte $8F   ; 
- D 1 - I - 0x00A532 02:A522: 32        .byte $32   ; 
- D 1 - I - 0x00A533 02:A523: 90        .byte $90   ; 
- D 1 - I - 0x00A534 02:A524: 3B        .byte $3B   ; 
- D 1 - I - 0x00A535 02:A525: 8F        .byte $8F   ; 
- D 1 - I - 0x00A536 02:A526: 2F        .byte $2F   ; 
- D 1 - I - 0x00A537 02:A527: 90        .byte $90   ; 
- D 1 - I - 0x00A538 02:A528: 30        .byte $30   ; 
- D 1 - I - 0x00A539 02:A529: 91        .byte $91   ; 
- D 1 - I - 0x00A53A 02:A52A: 30        .byte $30   ; 
- D 1 - I - 0x00A53B 02:A52B: 7E        .byte $7E   ; 
- D 1 - I - 0x00A53C 02:A52C: 90        .byte $90   ; 
- D 1 - I - 0x00A53D 02:A52D: 31        .byte $31   ; 
- D 1 - I - 0x00A53E 02:A52E: 34        .byte $34   ; 
- D 1 - I - 0x00A53F 02:A52F: 88        .byte $88   ; 
- D 1 - I - 0x00A540 02:A530: 7F        .byte $7F   ; 
- D 1 - I - 0x00A541 02:A531: 82        .byte $82   ; 
- D 1 - I - 0x00A542 02:A532: 7F        .byte $7F   ; 
- D 1 - I - 0x00A543 02:A533: 8F        .byte $8F   ; 
- D 1 - I - 0x00A544 02:A534: 7F        .byte $7F   ; 
- D 1 - I - 0x00A545 02:A535: 91        .byte $91   ; 
- D 1 - I - 0x00A546 02:A536: 35        .byte $35   ; 
- D 1 - I - 0x00A547 02:A537: 7E        .byte $7E   ; 
- D 1 - I - 0x00A548 02:A538: 8F        .byte $8F   ; 
- D 1 - I - 0x00A549 02:A539: 36        .byte $36   ; 
- D 1 - I - 0x00A54A 02:A53A: 90        .byte $90   ; 
- D 1 - I - 0x00A54B 02:A53B: 34        .byte $34   ; 
- D 1 - I - 0x00A54C 02:A53C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A54D 02:A53D: 31        .byte $31   ; 
- D 1 - I - 0x00A54E 02:A53E: 90        .byte $90   ; 
- D 1 - I - 0x00A54F 02:A53F: 2D        .byte $2D   ; 
- D 1 - I - 0x00A550 02:A540: 8F        .byte $8F   ; 
- D 1 - I - 0x00A551 02:A541: 2A        .byte $2A   ; 
- D 1 - I - 0x00A552 02:A542: 90        .byte $90   ; 
- D 1 - I - 0x00A553 02:A543: 7F        .byte $7F   ; 
- D 1 - I - 0x00A554 02:A544: 8F        .byte $8F   ; 
- D 1 - I - 0x00A555 02:A545: 28        .byte $28   ; 
- D 1 - I - 0x00A556 02:A546: 90        .byte $90   ; 
- D 1 - I - 0x00A557 02:A547: 2A        .byte $2A   ; 
- D 1 - I - 0x00A558 02:A548: 8F        .byte $8F   ; 
- D 1 - I - 0x00A559 02:A549: 2D        .byte $2D   ; 
- D 1 - I - 0x00A55A 02:A54A: 90        .byte $90   ; 
- D 1 - I - 0x00A55B 02:A54B: 31        .byte $31   ; 
- D 1 - I - 0x00A55C 02:A54C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A55D 02:A54D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A55E 02:A54E: 90        .byte $90   ; 
- D 1 - I - 0x00A55F 02:A54F: 28        .byte $28   ; 
- D 1 - I - 0x00A560 02:A550: 8F        .byte $8F   ; 
- D 1 - I - 0x00A561 02:A551: 2A        .byte $2A   ; 
- D 1 - I - 0x00A562 02:A552: 90        .byte $90   ; 
- D 1 - I - 0x00A563 02:A553: 2D        .byte $2D   ; 
- D 1 - I - 0x00A564 02:A554: 8F        .byte $8F   ; 
- D 1 - I - 0x00A565 02:A555: 30        .byte $30   ; 
- D 1 - I - 0x00A566 02:A556: 90        .byte $90   ; 
- D 1 - I - 0x00A567 02:A557: 31        .byte $31   ; 
- D 1 - I - 0x00A568 02:A558: 8F        .byte $8F   ; 
- D 1 - I - 0x00A569 02:A559: 34        .byte $34   ; 
- D 1 - I - 0x00A56A 02:A55A: 90        .byte $90   ; 
- D 1 - I - 0x00A56B 02:A55B: 36        .byte $36   ; 
- D 1 - I - 0x00A56C 02:A55C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A56D 02:A55D: 39        .byte $39   ; 
- D 1 - I - 0x00A56E 02:A55E: 90        .byte $90   ; 
- D 1 - I - 0x00A56F 02:A55F: 3C        .byte $3C   ; 
- D 1 - I - 0x00A570 02:A560: 91        .byte $91   ; 
- D 1 - I - 0x00A571 02:A561: 30        .byte $30   ; 
- D 1 - I - 0x00A572 02:A562: 7E        .byte $7E   ; 
- D 1 - I - 0x00A573 02:A563: 90        .byte $90   ; 
- D 1 - I - 0x00A574 02:A564: 31        .byte $31   ; 
- D 1 - I - 0x00A575 02:A565: 34        .byte $34   ; 
- D 1 - I - 0x00A576 02:A566: 88        .byte $88   ; 
- D 1 - I - 0x00A577 02:A567: 7F        .byte $7F   ; 
- D 1 - I - 0x00A578 02:A568: 82        .byte $82   ; 
- D 1 - I - 0x00A579 02:A569: 7F        .byte $7F   ; 
- D 1 - I - 0x00A57A 02:A56A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A57B 02:A56B: 7F        .byte $7F   ; 
- D 1 - I - 0x00A57C 02:A56C: 91        .byte $91   ; 
- D 1 - I - 0x00A57D 02:A56D: 37        .byte $37   ; 
- D 1 - I - 0x00A57E 02:A56E: 7E        .byte $7E   ; 
- D 1 - I - 0x00A57F 02:A56F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A580 02:A570: 38        .byte $38   ; 
- D 1 - I - 0x00A581 02:A571: 90        .byte $90   ; 
- D 1 - I - 0x00A582 02:A572: 36        .byte $36   ; 
- D 1 - I - 0x00A583 02:A573: 8F        .byte $8F   ; 
- D 1 - I - 0x00A584 02:A574: 34        .byte $34   ; 
- D 1 - I - 0x00A585 02:A575: 90        .byte $90   ; 
- D 1 - I - 0x00A586 02:A576: 31        .byte $31   ; 
- D 1 - I - 0x00A587 02:A577: 8F        .byte $8F   ; 
- D 1 - I - 0x00A588 02:A578: 2C        .byte $2C   ; 
- D 1 - I - 0x00A589 02:A579: 90        .byte $90   ; 
- D 1 - I - 0x00A58A 02:A57A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A58B 02:A57B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A58C 02:A57C: 34        .byte $34   ; 
- D 1 - I - 0x00A58D 02:A57D: 90        .byte $90   ; 
- D 1 - I - 0x00A58E 02:A57E: 31        .byte $31   ; 
- D 1 - I - 0x00A58F 02:A57F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A590 02:A580: 2C        .byte $2C   ; 
- D 1 - I - 0x00A591 02:A581: 90        .byte $90   ; 
- D 1 - I - 0x00A592 02:A582: 38        .byte $38   ; 
- D 1 - I - 0x00A593 02:A583: 8F        .byte $8F   ; 
- D 1 - I - 0x00A594 02:A584: 34        .byte $34   ; 
- D 1 - I - 0x00A595 02:A585: 90        .byte $90   ; 
- D 1 - I - 0x00A596 02:A586: 3D        .byte $3D   ; 
- D 1 - I - 0x00A597 02:A587: 8F        .byte $8F   ; 
- D 1 - I - 0x00A598 02:A588: 38        .byte $38   ; 
- D 1 - I - 0x00A599 02:A589: 90        .byte $90   ; 
- D 1 - I - 0x00A59A 02:A58A: 40        .byte $40   ; 
- D 1 - I - 0x00A59B 02:A58B: 8F        .byte $8F   ; 
- D 1 - I - 0x00A59C 02:A58C: 3D        .byte $3D   ; 
- D 1 - I - 0x00A59D 02:A58D: 90        .byte $90   ; 
- D 1 - I - 0x00A59E 02:A58E: 38        .byte $38   ; 
- D 1 - I - 0x00A59F 02:A58F: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5A0 02:A590: 34        .byte $34   ; 
- D 1 - I - 0x00A5A1 02:A591: 90        .byte $90   ; 
- D 1 - I - 0x00A5A2 02:A592: 31        .byte $31   ; 
- D 1 - I - 0x00A5A3 02:A593: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5A4 02:A594: 2C        .byte $2C   ; 
- D 1 - I - 0x00A5A5 02:A595: 90        .byte $90   ; 
- D 1 - I - 0x00A5A6 02:A596: 28        .byte $28   ; 
- D 1 - I - 0x00A5A7 02:A597: 91        .byte $91   ; 
- D 1 - I - 0x00A5A8 02:A598: 35        .byte $35   ; 
- D 1 - I - 0x00A5A9 02:A599: 7E        .byte $7E   ; 
- D 1 - I - 0x00A5AA 02:A59A: 90        .byte $90   ; 
- D 1 - I - 0x00A5AB 02:A59B: 36        .byte $36   ; 
- D 1 - I - 0x00A5AC 02:A59C: 39        .byte $39   ; 
- D 1 - I - 0x00A5AD 02:A59D: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5AE 02:A59E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A5AF 02:A59F: 90        .byte $90   ; 
- D 1 - I - 0x00A5B0 02:A5A0: 36        .byte $36   ; 
- D 1 - I - 0x00A5B1 02:A5A1: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5B2 02:A5A2: 39        .byte $39   ; 
- D 1 - I - 0x00A5B3 02:A5A3: 90        .byte $90   ; 
- D 1 - I - 0x00A5B4 02:A5A4: 36        .byte $36   ; 
- D 1 - I - 0x00A5B5 02:A5A5: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5B6 02:A5A6: 32        .byte $32   ; 
- D 1 - I - 0x00A5B7 02:A5A7: 90        .byte $90   ; 
- D 1 - I - 0x00A5B8 02:A5A8: 31        .byte $31   ; 
- D 1 - I - 0x00A5B9 02:A5A9: 82        .byte $82   ; 
- D 1 - I - 0x00A5BA 02:A5AA: 7E        .byte $7E   ; 
- D 1 - I - 0x00A5BB 02:A5AB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5BC 02:A5AC: 30        .byte $30   ; 
- D 1 - I - 0x00A5BD 02:A5AD: 90        .byte $90   ; 
- D 1 - I - 0x00A5BE 02:A5AE: 30        .byte $30   ; 
- D 1 - I - 0x00A5BF 02:A5AF: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5C0 02:A5B0: 7F        .byte $7F   ; 
- D 1 - I - 0x00A5C1 02:A5B1: 90        .byte $90   ; 
- D 1 - I - 0x00A5C2 02:A5B2: 33        .byte $33   ; 
- D 1 - I - 0x00A5C3 02:A5B3: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5C4 02:A5B4: 36        .byte $36   ; 
- D 1 - I - 0x00A5C5 02:A5B5: 90        .byte $90   ; 
- D 1 - I - 0x00A5C6 02:A5B6: 37        .byte $37   ; 
- D 1 - I - 0x00A5C7 02:A5B7: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5C8 02:A5B8: 38        .byte $38   ; 
- D 1 - I - 0x00A5C9 02:A5B9: 90        .byte $90   ; 
- D 1 - I - 0x00A5CA 02:A5BA: 3D        .byte $3D   ; 
- D 1 - I - 0x00A5CB 02:A5BB: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5CC 02:A5BC: 7F        .byte $7F   ; 
- D 1 - I - 0x00A5CD 02:A5BD: 90        .byte $90   ; 
- D 1 - I - 0x00A5CE 02:A5BE: 40        .byte $40   ; 
- D 1 - I - 0x00A5CF 02:A5BF: 3D        .byte $3D   ; 
- D 1 - I - 0x00A5D0 02:A5C0: 40        .byte $40   ; 
- D 1 - I - 0x00A5D1 02:A5C1: 3D        .byte $3D   ; 
- D 1 - I - 0x00A5D2 02:A5C2: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5D3 02:A5C3: 38        .byte $38   ; 
- D 1 - I - 0x00A5D4 02:A5C4: 90        .byte $90   ; 
- D 1 - I - 0x00A5D5 02:A5C5: 34        .byte $34   ; 
- D 1 - I - 0x00A5D6 02:A5C6: 91        .byte $91   ; 
- D 1 - I - 0x00A5D7 02:A5C7: 37        .byte $37   ; 
- D 1 - I - 0x00A5D8 02:A5C8: 7E        .byte $7E   ; 
- D 1 - I - 0x00A5D9 02:A5C9: 90        .byte $90   ; 
- D 1 - I - 0x00A5DA 02:A5CA: 38        .byte $38   ; 
- D 1 - I - 0x00A5DB 02:A5CB: 38        .byte $38   ; 
- D 1 - I - 0x00A5DC 02:A5CC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5DD 02:A5CD: 7F        .byte $7F   ; 
- D 1 - I - 0x00A5DE 02:A5CE: 90        .byte $90   ; 
- D 1 - I - 0x00A5DF 02:A5CF: 38        .byte $38   ; 
- D 1 - I - 0x00A5E0 02:A5D0: 82        .byte $82   ; 
- D 1 - I - 0x00A5E1 02:A5D1: 7F        .byte $7F   ; 
- D 1 - I - 0x00A5E2 02:A5D2: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5E3 02:A5D3: 34        .byte $34   ; 
- D 1 - I - 0x00A5E4 02:A5D4: 90        .byte $90   ; 
- D 1 - I - 0x00A5E5 02:A5D5: 35        .byte $35   ; 
- D 1 - I - 0x00A5E6 02:A5D6: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5E7 02:A5D7: 36        .byte $36   ; 
- D 1 - I - 0x00A5E8 02:A5D8: 90        .byte $90   ; 
- D 1 - I - 0x00A5E9 02:A5D9: 39        .byte $39   ; 
- D 1 - I - 0x00A5EA 02:A5DA: 81        .byte $81   ; 
- D 1 - I - 0x00A5EB 02:A5DB: 7F        .byte $7F   ; 
- D 1 - I - 0x00A5EC 02:A5DC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5ED 02:A5DD: 34        .byte $34   ; 
- D 1 - I - 0x00A5EE 02:A5DE: 90        .byte $90   ; 
- D 1 - I - 0x00A5EF 02:A5DF: 35        .byte $35   ; 
- D 1 - I - 0x00A5F0 02:A5E0: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5F1 02:A5E1: 36        .byte $36   ; 
- D 1 - I - 0x00A5F2 02:A5E2: 90        .byte $90   ; 
- D 1 - I - 0x00A5F3 02:A5E3: 39        .byte $39   ; 
- D 1 - I - 0x00A5F4 02:A5E4: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5F5 02:A5E5: 36        .byte $36   ; 
- D 1 - I - 0x00A5F6 02:A5E6: 90        .byte $90   ; 
- D 1 - I - 0x00A5F7 02:A5E7: 37        .byte $37   ; 
- D 1 - I - 0x00A5F8 02:A5E8: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5F9 02:A5E9: 38        .byte $38   ; 
- D 1 - I - 0x00A5FA 02:A5EA: 90        .byte $90   ; 
- D 1 - I - 0x00A5FB 02:A5EB: 3D        .byte $3D   ; 
- D 1 - I - 0x00A5FC 02:A5EC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A5FD 02:A5ED: 34        .byte $34   ; 
- D 1 - I - 0x00A5FE 02:A5EE: 90        .byte $90   ; 
- D 1 - I - 0x00A5FF 02:A5EF: 36        .byte $36   ; 
- D 1 - I - 0x00A600 02:A5F0: 8F        .byte $8F   ; 
- D 1 - I - 0x00A601 02:A5F1: 39        .byte $39   ; 
- D 1 - I - 0x00A602 02:A5F2: 90        .byte $90   ; 
- D 1 - I - 0x00A603 02:A5F3: 39        .byte $39   ; 
- D 1 - I - 0x00A604 02:A5F4: 8F        .byte $8F   ; 
- D 1 - I - 0x00A605 02:A5F5: 7F        .byte $7F   ; 
- D 1 - I - 0x00A606 02:A5F6: 90        .byte $90   ; 
- D 1 - I - 0x00A607 02:A5F7: 34        .byte $34   ; 
- D 1 - I - 0x00A608 02:A5F8: 8F        .byte $8F   ; 
- D 1 - I - 0x00A609 02:A5F9: 36        .byte $36   ; 
- D 1 - I - 0x00A60A 02:A5FA: 90        .byte $90   ; 
- D 1 - I - 0x00A60B 02:A5FB: 34        .byte $34   ; 
- D 1 - I - 0x00A60C 02:A5FC: 8F        .byte $8F   ; 
- D 1 - I - 0x00A60D 02:A5FD: 30        .byte $30   ; 
- D 1 - I - 0x00A60E 02:A5FE: 90        .byte $90   ; 
- D 1 - I - 0x00A60F 02:A5FF: 31        .byte $31   ; 
- D 1 - I - 0x00A610 02:A600: 8F        .byte $8F   ; 
- D 1 - I - 0x00A611 02:A601: 2D        .byte $2D   ; 
- D 1 - I - 0x00A612 02:A602: 90        .byte $90   ; 
- D 1 - I - 0x00A613 02:A603: 7F        .byte $7F   ; 
- D 1 - I - 0x00A614 02:A604: 8F        .byte $8F   ; 
- D 1 - I - 0x00A615 02:A605: 40        .byte $40   ; 
- D 1 - I - 0x00A616 02:A606: 90        .byte $90   ; 
- D 1 - I - 0x00A617 02:A607: 3C        .byte $3C   ; 
- D 1 - I - 0x00A618 02:A608: 8F        .byte $8F   ; 
- D 1 - I - 0x00A619 02:A609: 38        .byte $38   ; 
- D 1 - I - 0x00A61A 02:A60A: 90        .byte $90   ; 
- D 1 - I - 0x00A61B 02:A60B: 34        .byte $34   ; 
- D 1 - I - 0x00A61C 02:A60C: 8F        .byte $8F   ; 
- D 1 - I - 0x00A61D 02:A60D: 30        .byte $30   ; 
- D 1 - I - 0x00A61E 02:A60E: 90        .byte $90   ; 
- D 1 - I - 0x00A61F 02:A60F: 2C        .byte $2C   ; 
- D 1 - I - 0x00A620 02:A610: CF        .byte $CF   ; 
- - - - - - 0x00A621 02:A611: FF        .byte $FF   ; 



ch_02_A612_02:
- D 1 - I - 0x00A622 02:A612: E2        .byte $E2   ; 
- D 1 - I - 0x00A623 02:A613: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00A625 02:A615: CA        .byte $CA   ; 
- D 1 - I - 0x00A626 02:A616: C6        .byte $C6   ; 
- D 1 - I - 0x00A627 02:A617: 82        .byte $82   ; 
- D 1 - I - 0x00A628 02:A618: 2D        .byte $2D   ; 
- D 1 - I - 0x00A629 02:A619: 31        .byte $31   ; 
- D 1 - I - 0x00A62A 02:A61A: 28        .byte $28   ; 
- D 1 - I - 0x00A62B 02:A61B: 31        .byte $31   ; 
- D 1 - I - 0x00A62C 02:A61C: CF        .byte $CF   ; 
- D 1 - I - 0x00A62D 02:A61D: 82        .byte $82   ; 
- D 1 - I - 0x00A62E 02:A61E: 2E        .byte $2E   ; 
- D 1 - I - 0x00A62F 02:A61F: 31        .byte $31   ; 
- D 1 - I - 0x00A630 02:A620: 2A        .byte $2A   ; 
- D 1 - I - 0x00A631 02:A621: 31        .byte $31   ; 
- D 1 - I - 0x00A632 02:A622: 2E        .byte $2E   ; 
- D 1 - I - 0x00A633 02:A623: 31        .byte $31   ; 
- D 1 - I - 0x00A634 02:A624: 2A        .byte $2A   ; 
- D 1 - I - 0x00A635 02:A625: 31        .byte $31   ; 
- D 1 - I - 0x00A636 02:A626: 2F        .byte $2F   ; 
- D 1 - I - 0x00A637 02:A627: 32        .byte $32   ; 
- D 1 - I - 0x00A638 02:A628: 2A        .byte $2A   ; 
- D 1 - I - 0x00A639 02:A629: 32        .byte $32   ; 
- D 1 - I - 0x00A63A 02:A62A: 2C        .byte $2C   ; 
- D 1 - I - 0x00A63B 02:A62B: 32        .byte $32   ; 
- D 1 - I - 0x00A63C 02:A62C: 28        .byte $28   ; 
- D 1 - I - 0x00A63D 02:A62D: 32        .byte $32   ; 
- D 1 - I - 0x00A63E 02:A62E: 31        .byte $31   ; 
- D 1 - I - 0x00A63F 02:A62F: 34        .byte $34   ; 
- D 1 - I - 0x00A640 02:A630: 2C        .byte $2C   ; 
- D 1 - I - 0x00A641 02:A631: 34        .byte $34   ; 
- D 1 - I - 0x00A642 02:A632: 2E        .byte $2E   ; 
- D 1 - I - 0x00A643 02:A633: 34        .byte $34   ; 
- D 1 - I - 0x00A644 02:A634: 2A        .byte $2A   ; 
- D 1 - I - 0x00A645 02:A635: 34        .byte $34   ; 
- D 1 - I - 0x00A646 02:A636: 2F        .byte $2F   ; 
- D 1 - I - 0x00A647 02:A637: 32        .byte $32   ; 
- D 1 - I - 0x00A648 02:A638: 2A        .byte $2A   ; 
- D 1 - I - 0x00A649 02:A639: 32        .byte $32   ; 
- D 1 - I - 0x00A64A 02:A63A: 2F        .byte $2F   ; 
- D 1 - I - 0x00A64B 02:A63B: 32        .byte $32   ; 
- D 1 - I - 0x00A64C 02:A63C: 2A        .byte $2A   ; 
- D 1 - I - 0x00A64D 02:A63D: 32        .byte $32   ; 
- D 1 - I - 0x00A64E 02:A63E: 28        .byte $28   ; 
- D 1 - I - 0x00A64F 02:A63F: 88        .byte $88   ; 
- D 1 - I - 0x00A650 02:A640: 7F        .byte $7F   ; 
- D 1 - I - 0x00A651 02:A641: 80        .byte $80   ; 
- D 1 - I - 0x00A652 02:A642: 7F        .byte $7F   ; 
- D 1 - I - 0x00A653 02:A643: C6        .byte $C6   ; 
- D 1 - I - 0x00A654 02:A644: 82        .byte $82   ; 
- D 1 - I - 0x00A655 02:A645: 2D        .byte $2D   ; 
- D 1 - I - 0x00A656 02:A646: 31        .byte $31   ; 
- D 1 - I - 0x00A657 02:A647: 28        .byte $28   ; 
- D 1 - I - 0x00A658 02:A648: 31        .byte $31   ; 
- D 1 - I - 0x00A659 02:A649: CF        .byte $CF   ; 
- D 1 - I - 0x00A65A 02:A64A: 82        .byte $82   ; 
- D 1 - I - 0x00A65B 02:A64B: 2E        .byte $2E   ; 
- D 1 - I - 0x00A65C 02:A64C: 31        .byte $31   ; 
- D 1 - I - 0x00A65D 02:A64D: 2A        .byte $2A   ; 
- D 1 - I - 0x00A65E 02:A64E: 31        .byte $31   ; 
- D 1 - I - 0x00A65F 02:A64F: 2E        .byte $2E   ; 
- D 1 - I - 0x00A660 02:A650: 31        .byte $31   ; 
- D 1 - I - 0x00A661 02:A651: 2A        .byte $2A   ; 
- D 1 - I - 0x00A662 02:A652: 31        .byte $31   ; 
- D 1 - I - 0x00A663 02:A653: 32        .byte $32   ; 
- D 1 - I - 0x00A664 02:A654: 36        .byte $36   ; 
- D 1 - I - 0x00A665 02:A655: 2D        .byte $2D   ; 
- D 1 - I - 0x00A666 02:A656: 36        .byte $36   ; 
- D 1 - I - 0x00A667 02:A657: 33        .byte $33   ; 
- D 1 - I - 0x00A668 02:A658: 36        .byte $36   ; 
- D 1 - I - 0x00A669 02:A659: 30        .byte $30   ; 
- D 1 - I - 0x00A66A 02:A65A: 36        .byte $36   ; 
- D 1 - I - 0x00A66B 02:A65B: 31        .byte $31   ; 
- D 1 - I - 0x00A66C 02:A65C: 34        .byte $34   ; 
- D 1 - I - 0x00A66D 02:A65D: 2C        .byte $2C   ; 
- D 1 - I - 0x00A66E 02:A65E: 34        .byte $34   ; 
- D 1 - I - 0x00A66F 02:A65F: 2E        .byte $2E   ; 
- D 1 - I - 0x00A670 02:A660: 34        .byte $34   ; 
- D 1 - I - 0x00A671 02:A661: 2A        .byte $2A   ; 
- D 1 - I - 0x00A672 02:A662: 34        .byte $34   ; 
- D 1 - I - 0x00A673 02:A663: 2F        .byte $2F   ; 
- D 1 - I - 0x00A674 02:A664: 32        .byte $32   ; 
- D 1 - I - 0x00A675 02:A665: 2A        .byte $2A   ; 
- D 1 - I - 0x00A676 02:A666: 32        .byte $32   ; 
- D 1 - I - 0x00A677 02:A667: 2C        .byte $2C   ; 
- D 1 - I - 0x00A678 02:A668: 32        .byte $32   ; 
- D 1 - I - 0x00A679 02:A669: 28        .byte $28   ; 
- D 1 - I - 0x00A67A 02:A66A: 32        .byte $32   ; 
- D 1 - I - 0x00A67B 02:A66B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A67C 02:A66C: 88        .byte $88   ; 
- D 1 - I - 0x00A67D 02:A66D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A67E 02:A66E: 81        .byte $81   ; 
- D 1 - I - 0x00A67F 02:A66F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A680 02:A670: 28        .byte $28   ; 
- D 1 - I - 0x00A681 02:A671: CF        .byte $CF   ; 
- - - - - - 0x00A682 02:A672: FF        .byte $FF   ; 



ch_02_A673_03:
- D 1 - I - 0x00A683 02:A673: E3        .byte $E3   ; 
- D 1 - I - 0x00A684 02:A674: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00A686 02:A676: CA        .byte $CA   ; 
- D 1 - I - 0x00A687 02:A677: C8        .byte $C8   ; 
- D 1 - I - 0x00A688 02:A678: 82        .byte $82   ; 
- D 1 - I - 0x00A689 02:A679: 28        .byte $28   ; 
- D 1 - I - 0x00A68A 02:A67A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A68B 02:A67B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A68C 02:A67C: 90        .byte $90   ; 
- D 1 - I - 0x00A68D 02:A67D: 2A        .byte $2A   ; 
- D 1 - I - 0x00A68E 02:A67E: 82        .byte $82   ; 
- D 1 - I - 0x00A68F 02:A67F: 28        .byte $28   ; 
- D 1 - I - 0x00A690 02:A680: 8F        .byte $8F   ; 
- D 1 - I - 0x00A691 02:A681: 2D        .byte $2D   ; 
- D 1 - I - 0x00A692 02:A682: 90        .byte $90   ; 
- D 1 - I - 0x00A693 02:A683: 2A        .byte $2A   ; 
- D 1 - I - 0x00A694 02:A684: CF        .byte $CF   ; 
- D 1 - I - 0x00A695 02:A685: C6        .byte $C6   ; 
- D 1 - I - 0x00A696 02:A686: 82        .byte $82   ; 
- D 1 - I - 0x00A697 02:A687: 28        .byte $28   ; 
- D 1 - I - 0x00A698 02:A688: 8F        .byte $8F   ; 
- D 1 - I - 0x00A699 02:A689: 2D        .byte $2D   ; 
- D 1 - I - 0x00A69A 02:A68A: 90        .byte $90   ; 
- D 1 - I - 0x00A69B 02:A68B: 2A        .byte $2A   ; 
- D 1 - I - 0x00A69C 02:A68C: 82        .byte $82   ; 
- D 1 - I - 0x00A69D 02:A68D: 28        .byte $28   ; 
- D 1 - I - 0x00A69E 02:A68E: 8F        .byte $8F   ; 
- D 1 - I - 0x00A69F 02:A68F: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6A0 02:A690: 90        .byte $90   ; 
- D 1 - I - 0x00A6A1 02:A691: 2A        .byte $2A   ; 
- D 1 - I - 0x00A6A2 02:A692: CF        .byte $CF   ; 
- D 1 - I - 0x00A6A3 02:A693: 82        .byte $82   ; 
- D 1 - I - 0x00A6A4 02:A694: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6A5 02:A695: 28        .byte $28   ; 
- D 1 - I - 0x00A6A6 02:A696: 28        .byte $28   ; 
- D 1 - I - 0x00A6A7 02:A697: 28        .byte $28   ; 
- D 1 - I - 0x00A6A8 02:A698: 28        .byte $28   ; 
- D 1 - I - 0x00A6A9 02:A699: 28        .byte $28   ; 
- D 1 - I - 0x00A6AA 02:A69A: 8F        .byte $8F   ; 
- D 1 - I - 0x00A6AB 02:A69B: 28        .byte $28   ; 
- D 1 - I - 0x00A6AC 02:A69C: 90        .byte $90   ; 
- D 1 - I - 0x00A6AD 02:A69D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6AE 02:A69E: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6AF 02:A69F: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6B0 02:A6A0: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6B1 02:A6A1: C8        .byte $C8   ; 
- D 1 - I - 0x00A6B2 02:A6A2: 82        .byte $82   ; 
- D 1 - I - 0x00A6B3 02:A6A3: 28        .byte $28   ; 
- D 1 - I - 0x00A6B4 02:A6A4: 8F        .byte $8F   ; 
- D 1 - I - 0x00A6B5 02:A6A5: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6B6 02:A6A6: 90        .byte $90   ; 
- D 1 - I - 0x00A6B7 02:A6A7: 2A        .byte $2A   ; 
- D 1 - I - 0x00A6B8 02:A6A8: 82        .byte $82   ; 
- D 1 - I - 0x00A6B9 02:A6A9: 28        .byte $28   ; 
- D 1 - I - 0x00A6BA 02:A6AA: 8F        .byte $8F   ; 
- D 1 - I - 0x00A6BB 02:A6AB: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6BC 02:A6AC: 90        .byte $90   ; 
- D 1 - I - 0x00A6BD 02:A6AD: 2A        .byte $2A   ; 
- D 1 - I - 0x00A6BE 02:A6AE: CF        .byte $CF   ; 
- D 1 - I - 0x00A6BF 02:A6AF: C6        .byte $C6   ; 
- D 1 - I - 0x00A6C0 02:A6B0: 82        .byte $82   ; 
- D 1 - I - 0x00A6C1 02:A6B1: 28        .byte $28   ; 
- D 1 - I - 0x00A6C2 02:A6B2: 8F        .byte $8F   ; 
- D 1 - I - 0x00A6C3 02:A6B3: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6C4 02:A6B4: 90        .byte $90   ; 
- D 1 - I - 0x00A6C5 02:A6B5: 2A        .byte $2A   ; 
- D 1 - I - 0x00A6C6 02:A6B6: 82        .byte $82   ; 
- D 1 - I - 0x00A6C7 02:A6B7: 28        .byte $28   ; 
- D 1 - I - 0x00A6C8 02:A6B8: 8F        .byte $8F   ; 
- D 1 - I - 0x00A6C9 02:A6B9: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6CA 02:A6BA: 90        .byte $90   ; 
- D 1 - I - 0x00A6CB 02:A6BB: 2A        .byte $2A   ; 
- D 1 - I - 0x00A6CC 02:A6BC: CF        .byte $CF   ; 
- D 1 - I - 0x00A6CD 02:A6BD: 82        .byte $82   ; 
- D 1 - I - 0x00A6CE 02:A6BE: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6CF 02:A6BF: 28        .byte $28   ; 
- D 1 - I - 0x00A6D0 02:A6C0: 28        .byte $28   ; 
- D 1 - I - 0x00A6D1 02:A6C1: 28        .byte $28   ; 
- D 1 - I - 0x00A6D2 02:A6C2: 28        .byte $28   ; 
- D 1 - I - 0x00A6D3 02:A6C3: 28        .byte $28   ; 
- D 1 - I - 0x00A6D4 02:A6C4: 8F        .byte $8F   ; 
- D 1 - I - 0x00A6D5 02:A6C5: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6D6 02:A6C6: 90        .byte $90   ; 
- D 1 - I - 0x00A6D7 02:A6C7: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6D8 02:A6C8: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6D9 02:A6C9: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6DA 02:A6CA: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6DB 02:A6CB: CF        .byte $CF   ; 
- - - - - - 0x00A6DC 02:A6CC: FF        .byte $FF   ; 



_music_A6CD_03_final_cutscene:
- D 1 - I - 0x00A6DD 02:A6CD: 01        .byte $01   ; 
- D 1 - I - 0x00A6DE 02:A6CE: D9 A6     .word ch_03_A6D9_00
- D 1 - I - 0x00A6E0 02:A6D0: 73 A7     .word ch_03_A773_01
- D 1 - I - 0x00A6E2 02:A6D2: 0F A8     .word ch_03_A80F_02
- D 1 - I - 0x00A6E4 02:A6D4: C4 A8     .word ch_03_A8C4_03
- - - - - - 0x00A6E6 02:A6D6: 00 00     .word $0000    ; 04
- D 1 - I - 0x00A6E8 02:A6D8: 14        .byte $14   ; 



ch_03_A6D9_00:
- D 1 - I - 0x00A6E9 02:A6D9: E0        .byte $E0   ; 
- D 1 - I - 0x00A6EA 02:A6DA: 3E A9     .word off_E0_A93E
- D 1 - I - 0x00A6EC 02:A6DC: CA        .byte $CA   ; 
- D 1 - I - 0x00A6ED 02:A6DD: C2        .byte $C2   ; 
- D 1 - I - 0x00A6EE 02:A6DE: 88        .byte $88   ; 
- D 1 - I - 0x00A6EF 02:A6DF: 31        .byte $31   ; 
- D 1 - I - 0x00A6F0 02:A6E0: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6F1 02:A6E1: 82        .byte $82   ; 
- D 1 - I - 0x00A6F2 02:A6E2: 28        .byte $28   ; 
- D 1 - I - 0x00A6F3 02:A6E3: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6F4 02:A6E4: 31        .byte $31   ; 
- D 1 - I - 0x00A6F5 02:A6E5: 34        .byte $34   ; 
- D 1 - I - 0x00A6F6 02:A6E6: 36        .byte $36   ; 
- D 1 - I - 0x00A6F7 02:A6E7: 83        .byte $83   ; 
- D 1 - I - 0x00A6F8 02:A6E8: 7F        .byte $7F   ; 
- D 1 - I - 0x00A6F9 02:A6E9: 31        .byte $31   ; 
- D 1 - I - 0x00A6FA 02:A6EA: 88        .byte $88   ; 
- D 1 - I - 0x00A6FB 02:A6EB: 34        .byte $34   ; 
- D 1 - I - 0x00A6FC 02:A6EC: 31        .byte $31   ; 
- D 1 - I - 0x00A6FD 02:A6ED: 82        .byte $82   ; 
- D 1 - I - 0x00A6FE 02:A6EE: 2D        .byte $2D   ; 
- D 1 - I - 0x00A6FF 02:A6EF: 31        .byte $31   ; 
- D 1 - I - 0x00A700 02:A6F0: 34        .byte $34   ; 
- D 1 - I - 0x00A701 02:A6F1: 38        .byte $38   ; 
- D 1 - I - 0x00A702 02:A6F2: 39        .byte $39   ; 
- D 1 - I - 0x00A703 02:A6F3: 83        .byte $83   ; 
- D 1 - I - 0x00A704 02:A6F4: 7F        .byte $7F   ; 
- D 1 - I - 0x00A705 02:A6F5: 36        .byte $36   ; 
- D 1 - I - 0x00A706 02:A6F6: D1        .byte $D1   ; 
- D 1 - I - 0x00A707 02:A6F7: 88        .byte $88   ; 
- D 1 - I - 0x00A708 02:A6F8: 34        .byte $34   ; 
- D 1 - I - 0x00A709 02:A6F9: 2F        .byte $2F   ; 
- D 1 - I - 0x00A70A 02:A6FA: 82        .byte $82   ; 
- D 1 - I - 0x00A70B 02:A6FB: 7F        .byte $7F   ; 
- D 1 - I - 0x00A70C 02:A6FC: 2F        .byte $2F   ; 
- D 1 - I - 0x00A70D 02:A6FD: 31        .byte $31   ; 
- D 1 - I - 0x00A70E 02:A6FE: 32        .byte $32   ; 
- D 1 - I - 0x00A70F 02:A6FF: 34        .byte $34   ; 
- D 1 - I - 0x00A710 02:A700: 83        .byte $83   ; 
- D 1 - I - 0x00A711 02:A701: 7F        .byte $7F   ; 
- D 1 - I - 0x00A712 02:A702: 30        .byte $30   ; 
- D 1 - I - 0x00A713 02:A703: 88        .byte $88   ; 
- D 1 - I - 0x00A714 02:A704: 7E        .byte $7E   ; 
- D 1 - I - 0x00A715 02:A705: 7E        .byte $7E   ; 
- D 1 - I - 0x00A716 02:A706: 31        .byte $31   ; 
- D 1 - I - 0x00A717 02:A707: 7F        .byte $7F   ; 
- D 1 - I - 0x00A718 02:A708: CF        .byte $CF   ; 
- D 1 - I - 0x00A719 02:A709: D2        .byte $D2   ; 
- D 1 - I - 0x00A71A 02:A70A: 88        .byte $88   ; 
- D 1 - I - 0x00A71B 02:A70B: 35        .byte $35   ; 
- D 1 - I - 0x00A71C 02:A70C: 2C        .byte $2C   ; 
- D 1 - I - 0x00A71D 02:A70D: 82        .byte $82   ; 
- D 1 - I - 0x00A71E 02:A70E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A71F 02:A70F: 33        .byte $33   ; 
- D 1 - I - 0x00A720 02:A710: 35        .byte $35   ; 
- D 1 - I - 0x00A721 02:A711: 36        .byte $36   ; 
- D 1 - I - 0x00A722 02:A712: 38        .byte $38   ; 
- D 1 - I - 0x00A723 02:A713: 83        .byte $83   ; 
- D 1 - I - 0x00A724 02:A714: 7F        .byte $7F   ; 
- D 1 - I - 0x00A725 02:A715: 34        .byte $34   ; 
- D 1 - I - 0x00A726 02:A716: 88        .byte $88   ; 
- D 1 - I - 0x00A727 02:A717: 7E        .byte $7E   ; 
- D 1 - I - 0x00A728 02:A718: 7E        .byte $7E   ; 
- D 1 - I - 0x00A729 02:A719: 35        .byte $35   ; 
- D 1 - I - 0x00A72A 02:A71A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A72B 02:A71B: 34        .byte $34   ; 
- D 1 - I - 0x00A72C 02:A71C: 2F        .byte $2F   ; 
- D 1 - I - 0x00A72D 02:A71D: 82        .byte $82   ; 
- D 1 - I - 0x00A72E 02:A71E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A72F 02:A71F: 2F        .byte $2F   ; 
- D 1 - I - 0x00A730 02:A720: 31        .byte $31   ; 
- D 1 - I - 0x00A731 02:A721: 32        .byte $32   ; 
- D 1 - I - 0x00A732 02:A722: 34        .byte $34   ; 
- D 1 - I - 0x00A733 02:A723: 36        .byte $36   ; 
- D 1 - I - 0x00A734 02:A724: 38        .byte $38   ; 
- D 1 - I - 0x00A735 02:A725: 36        .byte $36   ; 
- D 1 - I - 0x00A736 02:A726: 83        .byte $83   ; 
- D 1 - I - 0x00A737 02:A727: 7F        .byte $7F   ; 
- D 1 - I - 0x00A738 02:A728: 34        .byte $34   ; 
- D 1 - I - 0x00A739 02:A729: 88        .byte $88   ; 
- D 1 - I - 0x00A73A 02:A72A: 7E        .byte $7E   ; 
- D 1 - I - 0x00A73B 02:A72B: 31        .byte $31   ; 
- D 1 - I - 0x00A73C 02:A72C: 7F        .byte $7F   ; 
- D 1 - I - 0x00A73D 02:A72D: 82        .byte $82   ; 
- D 1 - I - 0x00A73E 02:A72E: 38        .byte $38   ; 
- D 1 - I - 0x00A73F 02:A72F: 36        .byte $36   ; 
- D 1 - I - 0x00A740 02:A730: 83        .byte $83   ; 
- D 1 - I - 0x00A741 02:A731: 7F        .byte $7F   ; 
- D 1 - I - 0x00A742 02:A732: 34        .byte $34   ; 
- D 1 - I - 0x00A743 02:A733: 88        .byte $88   ; 
- D 1 - I - 0x00A744 02:A734: 7E        .byte $7E   ; 
- D 1 - I - 0x00A745 02:A735: 31        .byte $31   ; 
- D 1 - I - 0x00A746 02:A736: 82        .byte $82   ; 
- D 1 - I - 0x00A747 02:A737: 36        .byte $36   ; 
- D 1 - I - 0x00A748 02:A738: 34        .byte $34   ; 
- D 1 - I - 0x00A749 02:A739: 83        .byte $83   ; 
- D 1 - I - 0x00A74A 02:A73A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A74B 02:A73B: 32        .byte $32   ; 
- D 1 - I - 0x00A74C 02:A73C: 88        .byte $88   ; 
- D 1 - I - 0x00A74D 02:A73D: 7E        .byte $7E   ; 
- D 1 - I - 0x00A74E 02:A73E: 82        .byte $82   ; 
- D 1 - I - 0x00A74F 02:A73F: 34        .byte $34   ; 
- D 1 - I - 0x00A750 02:A740: 32        .byte $32   ; 
- D 1 - I - 0x00A751 02:A741: 31        .byte $31   ; 
- D 1 - I - 0x00A752 02:A742: 88        .byte $88   ; 
- D 1 - I - 0x00A753 02:A743: 2F        .byte $2F   ; 
- D 1 - I - 0x00A754 02:A744: 82        .byte $82   ; 
- D 1 - I - 0x00A755 02:A745: 7F        .byte $7F   ; 
- D 1 - I - 0x00A756 02:A746: 2D        .byte $2D   ; 
- D 1 - I - 0x00A757 02:A747: 2F        .byte $2F   ; 
- D 1 - I - 0x00A758 02:A748: 88        .byte $88   ; 
- D 1 - I - 0x00A759 02:A749: 31        .byte $31   ; 
- D 1 - I - 0x00A75A 02:A74A: 2D        .byte $2D   ; 
- D 1 - I - 0x00A75B 02:A74B: 82        .byte $82   ; 
- D 1 - I - 0x00A75C 02:A74C: 28        .byte $28   ; 
- D 1 - I - 0x00A75D 02:A74D: 2D        .byte $2D   ; 
- D 1 - I - 0x00A75E 02:A74E: 31        .byte $31   ; 
- D 1 - I - 0x00A75F 02:A74F: 34        .byte $34   ; 
- D 1 - I - 0x00A760 02:A750: 36        .byte $36   ; 
- D 1 - I - 0x00A761 02:A751: 83        .byte $83   ; 
- D 1 - I - 0x00A762 02:A752: 7F        .byte $7F   ; 
- D 1 - I - 0x00A763 02:A753: 31        .byte $31   ; 
- D 1 - I - 0x00A764 02:A754: 88        .byte $88   ; 
- D 1 - I - 0x00A765 02:A755: 7E        .byte $7E   ; 
- D 1 - I - 0x00A766 02:A756: 7E        .byte $7E   ; 
- D 1 - I - 0x00A767 02:A757: 39        .byte $39   ; 
- D 1 - I - 0x00A768 02:A758: 82        .byte $82   ; 
- D 1 - I - 0x00A769 02:A759: 38        .byte $38   ; 
- D 1 - I - 0x00A76A 02:A75A: 39        .byte $39   ; 
- D 1 - I - 0x00A76B 02:A75B: 36        .byte $36   ; 
- D 1 - I - 0x00A76C 02:A75C: 88        .byte $88   ; 
- D 1 - I - 0x00A76D 02:A75D: 34        .byte $34   ; 
- D 1 - I - 0x00A76E 02:A75E: 31        .byte $31   ; 
- D 1 - I - 0x00A76F 02:A75F: 82        .byte $82   ; 
- D 1 - I - 0x00A770 02:A760: 7F        .byte $7F   ; 
- D 1 - I - 0x00A771 02:A761: 32        .byte $32   ; 
- D 1 - I - 0x00A772 02:A762: 34        .byte $34   ; 
- D 1 - I - 0x00A773 02:A763: 32        .byte $32   ; 
- D 1 - I - 0x00A774 02:A764: 31        .byte $31   ; 
- D 1 - I - 0x00A775 02:A765: 83        .byte $83   ; 
- D 1 - I - 0x00A776 02:A766: 7F        .byte $7F   ; 
- D 1 - I - 0x00A777 02:A767: 2F        .byte $2F   ; 
- D 1 - I - 0x00A778 02:A768: 88        .byte $88   ; 
- D 1 - I - 0x00A779 02:A769: 7E        .byte $7E   ; 
- D 1 - I - 0x00A77A 02:A76A: 7E        .byte $7E   ; 
- D 1 - I - 0x00A77B 02:A76B: 82        .byte $82   ; 
- D 1 - I - 0x00A77C 02:A76C: 2D        .byte $2D   ; 
- D 1 - I - 0x00A77D 02:A76D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A77E 02:A76E: 7F        .byte $7F   ; 
- D 1 - I - 0x00A77F 02:A76F: 88        .byte $88   ; 
- D 1 - I - 0x00A780 02:A770: 7F        .byte $7F   ; 
- D 1 - I - 0x00A781 02:A771: CF        .byte $CF   ; 
- D 1 - I - 0x00A782 02:A772: FF        .byte $FF   ; 



ch_03_A773_01:
- D 1 - I - 0x00A783 02:A773: E1        .byte $E1   ; 
- D 1 - I - 0x00A784 02:A774: 82 A9     .word off_E1_A982
- D 1 - I - 0x00A786 02:A776: 8A        .byte $8A   ; 
- D 1 - I - 0x00A787 02:A777: 7F        .byte $7F   ; 
- D 1 - I - 0x00A788 02:A778: CA        .byte $CA   ; 
- D 1 - I - 0x00A789 02:A779: C2        .byte $C2   ; 
- D 1 - I - 0x00A78A 02:A77A: 88        .byte $88   ; 
- D 1 - I - 0x00A78B 02:A77B: 31        .byte $31   ; 
- D 1 - I - 0x00A78C 02:A77C: 2D        .byte $2D   ; 
- D 1 - I - 0x00A78D 02:A77D: 82        .byte $82   ; 
- D 1 - I - 0x00A78E 02:A77E: 28        .byte $28   ; 
- D 1 - I - 0x00A78F 02:A77F: 2D        .byte $2D   ; 
- D 1 - I - 0x00A790 02:A780: 31        .byte $31   ; 
- D 1 - I - 0x00A791 02:A781: 34        .byte $34   ; 
- D 1 - I - 0x00A792 02:A782: 36        .byte $36   ; 
- D 1 - I - 0x00A793 02:A783: 83        .byte $83   ; 
- D 1 - I - 0x00A794 02:A784: 7F        .byte $7F   ; 
- D 1 - I - 0x00A795 02:A785: 31        .byte $31   ; 
- D 1 - I - 0x00A796 02:A786: 88        .byte $88   ; 
- D 1 - I - 0x00A797 02:A787: 34        .byte $34   ; 
- D 1 - I - 0x00A798 02:A788: 31        .byte $31   ; 
- D 1 - I - 0x00A799 02:A789: 82        .byte $82   ; 
- D 1 - I - 0x00A79A 02:A78A: 2D        .byte $2D   ; 
- D 1 - I - 0x00A79B 02:A78B: 31        .byte $31   ; 
- D 1 - I - 0x00A79C 02:A78C: 34        .byte $34   ; 
- D 1 - I - 0x00A79D 02:A78D: 38        .byte $38   ; 
- D 1 - I - 0x00A79E 02:A78E: 39        .byte $39   ; 
- D 1 - I - 0x00A79F 02:A78F: 83        .byte $83   ; 
- D 1 - I - 0x00A7A0 02:A790: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7A1 02:A791: 36        .byte $36   ; 
- D 1 - I - 0x00A7A2 02:A792: D1        .byte $D1   ; 
- D 1 - I - 0x00A7A3 02:A793: 88        .byte $88   ; 
- D 1 - I - 0x00A7A4 02:A794: 34        .byte $34   ; 
- D 1 - I - 0x00A7A5 02:A795: 2F        .byte $2F   ; 
- D 1 - I - 0x00A7A6 02:A796: 82        .byte $82   ; 
- D 1 - I - 0x00A7A7 02:A797: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7A8 02:A798: 2F        .byte $2F   ; 
- D 1 - I - 0x00A7A9 02:A799: 31        .byte $31   ; 
- D 1 - I - 0x00A7AA 02:A79A: 32        .byte $32   ; 
- D 1 - I - 0x00A7AB 02:A79B: 34        .byte $34   ; 
- D 1 - I - 0x00A7AC 02:A79C: 83        .byte $83   ; 
- D 1 - I - 0x00A7AD 02:A79D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7AE 02:A79E: 30        .byte $30   ; 
- D 1 - I - 0x00A7AF 02:A79F: 88        .byte $88   ; 
- D 1 - I - 0x00A7B0 02:A7A0: 7E        .byte $7E   ; 
- D 1 - I - 0x00A7B1 02:A7A1: 7E        .byte $7E   ; 
- D 1 - I - 0x00A7B2 02:A7A2: 31        .byte $31   ; 
- D 1 - I - 0x00A7B3 02:A7A3: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7B4 02:A7A4: CF        .byte $CF   ; 
- D 1 - I - 0x00A7B5 02:A7A5: D2        .byte $D2   ; 
- D 1 - I - 0x00A7B6 02:A7A6: 88        .byte $88   ; 
- D 1 - I - 0x00A7B7 02:A7A7: 35        .byte $35   ; 
- D 1 - I - 0x00A7B8 02:A7A8: 2C        .byte $2C   ; 
- D 1 - I - 0x00A7B9 02:A7A9: 82        .byte $82   ; 
- D 1 - I - 0x00A7BA 02:A7AA: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7BB 02:A7AB: 33        .byte $33   ; 
- D 1 - I - 0x00A7BC 02:A7AC: 35        .byte $35   ; 
- D 1 - I - 0x00A7BD 02:A7AD: 36        .byte $36   ; 
- D 1 - I - 0x00A7BE 02:A7AE: 38        .byte $38   ; 
- D 1 - I - 0x00A7BF 02:A7AF: 83        .byte $83   ; 
- D 1 - I - 0x00A7C0 02:A7B0: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7C1 02:A7B1: 34        .byte $34   ; 
- D 1 - I - 0x00A7C2 02:A7B2: 88        .byte $88   ; 
- D 1 - I - 0x00A7C3 02:A7B3: 7E        .byte $7E   ; 
- D 1 - I - 0x00A7C4 02:A7B4: 7E        .byte $7E   ; 
- D 1 - I - 0x00A7C5 02:A7B5: 35        .byte $35   ; 
- D 1 - I - 0x00A7C6 02:A7B6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7C7 02:A7B7: 34        .byte $34   ; 
- D 1 - I - 0x00A7C8 02:A7B8: 2F        .byte $2F   ; 
- D 1 - I - 0x00A7C9 02:A7B9: 82        .byte $82   ; 
- D 1 - I - 0x00A7CA 02:A7BA: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7CB 02:A7BB: 2F        .byte $2F   ; 
- D 1 - I - 0x00A7CC 02:A7BC: 31        .byte $31   ; 
- D 1 - I - 0x00A7CD 02:A7BD: 32        .byte $32   ; 
- D 1 - I - 0x00A7CE 02:A7BE: 34        .byte $34   ; 
- D 1 - I - 0x00A7CF 02:A7BF: 36        .byte $36   ; 
- D 1 - I - 0x00A7D0 02:A7C0: 38        .byte $38   ; 
- D 1 - I - 0x00A7D1 02:A7C1: 36        .byte $36   ; 
- D 1 - I - 0x00A7D2 02:A7C2: 83        .byte $83   ; 
- D 1 - I - 0x00A7D3 02:A7C3: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7D4 02:A7C4: 34        .byte $34   ; 
- D 1 - I - 0x00A7D5 02:A7C5: 88        .byte $88   ; 
- D 1 - I - 0x00A7D6 02:A7C6: 7E        .byte $7E   ; 
- D 1 - I - 0x00A7D7 02:A7C7: 31        .byte $31   ; 
- D 1 - I - 0x00A7D8 02:A7C8: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7D9 02:A7C9: 82        .byte $82   ; 
- D 1 - I - 0x00A7DA 02:A7CA: 38        .byte $38   ; 
- D 1 - I - 0x00A7DB 02:A7CB: 36        .byte $36   ; 
- D 1 - I - 0x00A7DC 02:A7CC: 83        .byte $83   ; 
- D 1 - I - 0x00A7DD 02:A7CD: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7DE 02:A7CE: 34        .byte $34   ; 
- D 1 - I - 0x00A7DF 02:A7CF: 88        .byte $88   ; 
- D 1 - I - 0x00A7E0 02:A7D0: 7E        .byte $7E   ; 
- D 1 - I - 0x00A7E1 02:A7D1: 31        .byte $31   ; 
- D 1 - I - 0x00A7E2 02:A7D2: 82        .byte $82   ; 
- D 1 - I - 0x00A7E3 02:A7D3: 36        .byte $36   ; 
- D 1 - I - 0x00A7E4 02:A7D4: 34        .byte $34   ; 
- D 1 - I - 0x00A7E5 02:A7D5: 83        .byte $83   ; 
- D 1 - I - 0x00A7E6 02:A7D6: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7E7 02:A7D7: 32        .byte $32   ; 
- D 1 - I - 0x00A7E8 02:A7D8: 88        .byte $88   ; 
- D 1 - I - 0x00A7E9 02:A7D9: 7E        .byte $7E   ; 
- D 1 - I - 0x00A7EA 02:A7DA: 82        .byte $82   ; 
- D 1 - I - 0x00A7EB 02:A7DB: 34        .byte $34   ; 
- D 1 - I - 0x00A7EC 02:A7DC: 32        .byte $32   ; 
- D 1 - I - 0x00A7ED 02:A7DD: 31        .byte $31   ; 
- D 1 - I - 0x00A7EE 02:A7DE: 88        .byte $88   ; 
- D 1 - I - 0x00A7EF 02:A7DF: 2F        .byte $2F   ; 
- D 1 - I - 0x00A7F0 02:A7E0: 82        .byte $82   ; 
- D 1 - I - 0x00A7F1 02:A7E1: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7F2 02:A7E2: 2D        .byte $2D   ; 
- D 1 - I - 0x00A7F3 02:A7E3: 2F        .byte $2F   ; 
- D 1 - I - 0x00A7F4 02:A7E4: 88        .byte $88   ; 
- D 1 - I - 0x00A7F5 02:A7E5: 31        .byte $31   ; 
- D 1 - I - 0x00A7F6 02:A7E6: 2D        .byte $2D   ; 
- D 1 - I - 0x00A7F7 02:A7E7: 82        .byte $82   ; 
- D 1 - I - 0x00A7F8 02:A7E8: 28        .byte $28   ; 
- D 1 - I - 0x00A7F9 02:A7E9: 2D        .byte $2D   ; 
- D 1 - I - 0x00A7FA 02:A7EA: 31        .byte $31   ; 
- D 1 - I - 0x00A7FB 02:A7EB: 34        .byte $34   ; 
- D 1 - I - 0x00A7FC 02:A7EC: 36        .byte $36   ; 
- D 1 - I - 0x00A7FD 02:A7ED: 83        .byte $83   ; 
- D 1 - I - 0x00A7FE 02:A7EE: 7F        .byte $7F   ; 
- D 1 - I - 0x00A7FF 02:A7EF: 31        .byte $31   ; 
- D 1 - I - 0x00A800 02:A7F0: 88        .byte $88   ; 
- D 1 - I - 0x00A801 02:A7F1: 7E        .byte $7E   ; 
- D 1 - I - 0x00A802 02:A7F2: 7E        .byte $7E   ; 
- D 1 - I - 0x00A803 02:A7F3: 39        .byte $39   ; 
- D 1 - I - 0x00A804 02:A7F4: 82        .byte $82   ; 
- D 1 - I - 0x00A805 02:A7F5: 38        .byte $38   ; 
- D 1 - I - 0x00A806 02:A7F6: 39        .byte $39   ; 
- D 1 - I - 0x00A807 02:A7F7: 36        .byte $36   ; 
- D 1 - I - 0x00A808 02:A7F8: 88        .byte $88   ; 
- D 1 - I - 0x00A809 02:A7F9: 34        .byte $34   ; 
- D 1 - I - 0x00A80A 02:A7FA: 31        .byte $31   ; 
- D 1 - I - 0x00A80B 02:A7FB: 82        .byte $82   ; 
- D 1 - I - 0x00A80C 02:A7FC: 7F        .byte $7F   ; 
- D 1 - I - 0x00A80D 02:A7FD: 32        .byte $32   ; 
- D 1 - I - 0x00A80E 02:A7FE: 34        .byte $34   ; 
- D 1 - I - 0x00A80F 02:A7FF: 32        .byte $32   ; 
- D 1 - I - 0x00A810 02:A800: 31        .byte $31   ; 
- D 1 - I - 0x00A811 02:A801: 83        .byte $83   ; 
- D 1 - I - 0x00A812 02:A802: 7F        .byte $7F   ; 
- D 1 - I - 0x00A813 02:A803: 2F        .byte $2F   ; 
- D 1 - I - 0x00A814 02:A804: 88        .byte $88   ; 
- D 1 - I - 0x00A815 02:A805: 7E        .byte $7E   ; 
- D 1 - I - 0x00A816 02:A806: 7E        .byte $7E   ; 
- D 1 - I - 0x00A817 02:A807: 82        .byte $82   ; 
- D 1 - I - 0x00A818 02:A808: 2D        .byte $2D   ; 
- D 1 - I - 0x00A819 02:A809: 7F        .byte $7F   ; 
- D 1 - I - 0x00A81A 02:A80A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A81B 02:A80B: 88        .byte $88   ; 
- D 1 - I - 0x00A81C 02:A80C: 7F        .byte $7F   ; 
- D 1 - I - 0x00A81D 02:A80D: CF        .byte $CF   ; 
- D 1 - I - 0x00A81E 02:A80E: FF        .byte $FF   ; 



ch_03_A80F_02:
- D 1 - I - 0x00A81F 02:A80F: E2        .byte $E2   ; 
- D 1 - I - 0x00A820 02:A810: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00A822 02:A812: CA        .byte $CA   ; 
- D 1 - I - 0x00A823 02:A813: C2        .byte $C2   ; 
- D 1 - I - 0x00A824 02:A814: 82        .byte $82   ; 
- D 1 - I - 0x00A825 02:A815: 2D        .byte $2D   ; 
- D 1 - I - 0x00A826 02:A816: 31        .byte $31   ; 
- D 1 - I - 0x00A827 02:A817: 31        .byte $31   ; 
- D 1 - I - 0x00A828 02:A818: 28        .byte $28   ; 
- D 1 - I - 0x00A829 02:A819: 31        .byte $31   ; 
- D 1 - I - 0x00A82A 02:A81A: 31        .byte $31   ; 
- D 1 - I - 0x00A82B 02:A81B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A82C 02:A81C: 31        .byte $31   ; 
- D 1 - I - 0x00A82D 02:A81D: 31        .byte $31   ; 
- D 1 - I - 0x00A82E 02:A81E: 28        .byte $28   ; 
- D 1 - I - 0x00A82F 02:A81F: 31        .byte $31   ; 
- D 1 - I - 0x00A830 02:A820: 31        .byte $31   ; 
- D 1 - I - 0x00A831 02:A821: 2D        .byte $2D   ; 
- D 1 - I - 0x00A832 02:A822: 31        .byte $31   ; 
- D 1 - I - 0x00A833 02:A823: 31        .byte $31   ; 
- D 1 - I - 0x00A834 02:A824: 28        .byte $28   ; 
- D 1 - I - 0x00A835 02:A825: 31        .byte $31   ; 
- D 1 - I - 0x00A836 02:A826: 31        .byte $31   ; 
- D 1 - I - 0x00A837 02:A827: 2D        .byte $2D   ; 
- D 1 - I - 0x00A838 02:A828: 31        .byte $31   ; 
- D 1 - I - 0x00A839 02:A829: 31        .byte $31   ; 
- D 1 - I - 0x00A83A 02:A82A: 28        .byte $28   ; 
- D 1 - I - 0x00A83B 02:A82B: 31        .byte $31   ; 
- D 1 - I - 0x00A83C 02:A82C: 31        .byte $31   ; 
- D 1 - I - 0x00A83D 02:A82D: D1        .byte $D1   ; 
- D 1 - I - 0x00A83E 02:A82E: 82        .byte $82   ; 
- D 1 - I - 0x00A83F 02:A82F: 2F        .byte $2F   ; 
- D 1 - I - 0x00A840 02:A830: 32        .byte $32   ; 
- D 1 - I - 0x00A841 02:A831: 32        .byte $32   ; 
- D 1 - I - 0x00A842 02:A832: 2C        .byte $2C   ; 
- D 1 - I - 0x00A843 02:A833: 32        .byte $32   ; 
- D 1 - I - 0x00A844 02:A834: 32        .byte $32   ; 
- D 1 - I - 0x00A845 02:A835: 2F        .byte $2F   ; 
- D 1 - I - 0x00A846 02:A836: 32        .byte $32   ; 
- D 1 - I - 0x00A847 02:A837: 32        .byte $32   ; 
- D 1 - I - 0x00A848 02:A838: 2C        .byte $2C   ; 
- D 1 - I - 0x00A849 02:A839: 32        .byte $32   ; 
- D 1 - I - 0x00A84A 02:A83A: 32        .byte $32   ; 
- D 1 - I - 0x00A84B 02:A83B: 2D        .byte $2D   ; 
- D 1 - I - 0x00A84C 02:A83C: 31        .byte $31   ; 
- D 1 - I - 0x00A84D 02:A83D: 31        .byte $31   ; 
- D 1 - I - 0x00A84E 02:A83E: 28        .byte $28   ; 
- D 1 - I - 0x00A84F 02:A83F: 31        .byte $31   ; 
- D 1 - I - 0x00A850 02:A840: 31        .byte $31   ; 
- D 1 - I - 0x00A851 02:A841: 2D        .byte $2D   ; 
- D 1 - I - 0x00A852 02:A842: 31        .byte $31   ; 
- D 1 - I - 0x00A853 02:A843: 31        .byte $31   ; 
- D 1 - I - 0x00A854 02:A844: 28        .byte $28   ; 
- D 1 - I - 0x00A855 02:A845: 2A        .byte $2A   ; 
- D 1 - I - 0x00A856 02:A846: 2C        .byte $2C   ; 
- D 1 - I - 0x00A857 02:A847: CF        .byte $CF   ; 
- D 1 - I - 0x00A858 02:A848: D2        .byte $D2   ; 
- D 1 - I - 0x00A859 02:A849: 82        .byte $82   ; 
- D 1 - I - 0x00A85A 02:A84A: 31        .byte $31   ; 
- D 1 - I - 0x00A85B 02:A84B: 35        .byte $35   ; 
- D 1 - I - 0x00A85C 02:A84C: 35        .byte $35   ; 
- D 1 - I - 0x00A85D 02:A84D: 2C        .byte $2C   ; 
- D 1 - I - 0x00A85E 02:A84E: 35        .byte $35   ; 
- D 1 - I - 0x00A85F 02:A84F: 35        .byte $35   ; 
- D 1 - I - 0x00A860 02:A850: 33        .byte $33   ; 
- D 1 - I - 0x00A861 02:A851: 36        .byte $36   ; 
- D 1 - I - 0x00A862 02:A852: 36        .byte $36   ; 
- D 1 - I - 0x00A863 02:A853: 2C        .byte $2C   ; 
- D 1 - I - 0x00A864 02:A854: 36        .byte $36   ; 
- D 1 - I - 0x00A865 02:A855: 36        .byte $36   ; 
- D 1 - I - 0x00A866 02:A856: 31        .byte $31   ; 
- D 1 - I - 0x00A867 02:A857: 35        .byte $35   ; 
- D 1 - I - 0x00A868 02:A858: 35        .byte $35   ; 
- D 1 - I - 0x00A869 02:A859: 2C        .byte $2C   ; 
- D 1 - I - 0x00A86A 02:A85A: 35        .byte $35   ; 
- D 1 - I - 0x00A86B 02:A85B: 35        .byte $35   ; 
- D 1 - I - 0x00A86C 02:A85C: 31        .byte $31   ; 
- D 1 - I - 0x00A86D 02:A85D: 35        .byte $35   ; 
- D 1 - I - 0x00A86E 02:A85E: 35        .byte $35   ; 
- D 1 - I - 0x00A86F 02:A85F: 2C        .byte $2C   ; 
- D 1 - I - 0x00A870 02:A860: 2D        .byte $2D   ; 
- D 1 - I - 0x00A871 02:A861: 2E        .byte $2E   ; 
- D 1 - I - 0x00A872 02:A862: 2F        .byte $2F   ; 
- D 1 - I - 0x00A873 02:A863: 32        .byte $32   ; 
- D 1 - I - 0x00A874 02:A864: 32        .byte $32   ; 
- D 1 - I - 0x00A875 02:A865: 2C        .byte $2C   ; 
- D 1 - I - 0x00A876 02:A866: 32        .byte $32   ; 
- D 1 - I - 0x00A877 02:A867: 32        .byte $32   ; 
- D 1 - I - 0x00A878 02:A868: 2F        .byte $2F   ; 
- D 1 - I - 0x00A879 02:A869: 32        .byte $32   ; 
- D 1 - I - 0x00A87A 02:A86A: 32        .byte $32   ; 
- D 1 - I - 0x00A87B 02:A86B: 2C        .byte $2C   ; 
- D 1 - I - 0x00A87C 02:A86C: 32        .byte $32   ; 
- D 1 - I - 0x00A87D 02:A86D: 32        .byte $32   ; 
- D 1 - I - 0x00A87E 02:A86E: 2D        .byte $2D   ; 
- D 1 - I - 0x00A87F 02:A86F: 31        .byte $31   ; 
- D 1 - I - 0x00A880 02:A870: 31        .byte $31   ; 
- D 1 - I - 0x00A881 02:A871: 28        .byte $28   ; 
- D 1 - I - 0x00A882 02:A872: 31        .byte $31   ; 
- D 1 - I - 0x00A883 02:A873: 31        .byte $31   ; 
- D 1 - I - 0x00A884 02:A874: 2D        .byte $2D   ; 
- D 1 - I - 0x00A885 02:A875: 31        .byte $31   ; 
- D 1 - I - 0x00A886 02:A876: 31        .byte $31   ; 
- D 1 - I - 0x00A887 02:A877: 28        .byte $28   ; 
- D 1 - I - 0x00A888 02:A878: 31        .byte $31   ; 
- D 1 - I - 0x00A889 02:A879: 31        .byte $31   ; 
- D 1 - I - 0x00A88A 02:A87A: 2E        .byte $2E   ; 
- D 1 - I - 0x00A88B 02:A87B: 34        .byte $34   ; 
- D 1 - I - 0x00A88C 02:A87C: 34        .byte $34   ; 
- D 1 - I - 0x00A88D 02:A87D: 2A        .byte $2A   ; 
- D 1 - I - 0x00A88E 02:A87E: 34        .byte $34   ; 
- D 1 - I - 0x00A88F 02:A87F: 34        .byte $34   ; 
- D 1 - I - 0x00A890 02:A880: 2E        .byte $2E   ; 
- D 1 - I - 0x00A891 02:A881: 34        .byte $34   ; 
- D 1 - I - 0x00A892 02:A882: 34        .byte $34   ; 
- D 1 - I - 0x00A893 02:A883: 2A        .byte $2A   ; 
- D 1 - I - 0x00A894 02:A884: 34        .byte $34   ; 
- D 1 - I - 0x00A895 02:A885: 34        .byte $34   ; 
- D 1 - I - 0x00A896 02:A886: 2F        .byte $2F   ; 
- D 1 - I - 0x00A897 02:A887: 32        .byte $32   ; 
- D 1 - I - 0x00A898 02:A888: 32        .byte $32   ; 
- D 1 - I - 0x00A899 02:A889: 2A        .byte $2A   ; 
- D 1 - I - 0x00A89A 02:A88A: 32        .byte $32   ; 
- D 1 - I - 0x00A89B 02:A88B: 32        .byte $32   ; 
- D 1 - I - 0x00A89C 02:A88C: 2C        .byte $2C   ; 
- D 1 - I - 0x00A89D 02:A88D: 32        .byte $32   ; 
- D 1 - I - 0x00A89E 02:A88E: 32        .byte $32   ; 
- D 1 - I - 0x00A89F 02:A88F: 28        .byte $28   ; 
- D 1 - I - 0x00A8A0 02:A890: 32        .byte $32   ; 
- D 1 - I - 0x00A8A1 02:A891: 32        .byte $32   ; 
- D 1 - I - 0x00A8A2 02:A892: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8A3 02:A893: 31        .byte $31   ; 
- D 1 - I - 0x00A8A4 02:A894: 31        .byte $31   ; 
- D 1 - I - 0x00A8A5 02:A895: 2C        .byte $2C   ; 
- D 1 - I - 0x00A8A6 02:A896: 31        .byte $31   ; 
- D 1 - I - 0x00A8A7 02:A897: 31        .byte $31   ; 
- D 1 - I - 0x00A8A8 02:A898: 2A        .byte $2A   ; 
- D 1 - I - 0x00A8A9 02:A899: 31        .byte $31   ; 
- D 1 - I - 0x00A8AA 02:A89A: 31        .byte $31   ; 
- D 1 - I - 0x00A8AB 02:A89B: 28        .byte $28   ; 
- D 1 - I - 0x00A8AC 02:A89C: 31        .byte $31   ; 
- D 1 - I - 0x00A8AD 02:A89D: 31        .byte $31   ; 
- D 1 - I - 0x00A8AE 02:A89E: 27        .byte $27   ; 
- D 1 - I - 0x00A8AF 02:A89F: 31        .byte $31   ; 
- D 1 - I - 0x00A8B0 02:A8A0: 31        .byte $31   ; 
- D 1 - I - 0x00A8B1 02:A8A1: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8B2 02:A8A2: 31        .byte $31   ; 
- D 1 - I - 0x00A8B3 02:A8A3: 31        .byte $31   ; 
- D 1 - I - 0x00A8B4 02:A8A4: 30        .byte $30   ; 
- D 1 - I - 0x00A8B5 02:A8A5: 33        .byte $33   ; 
- D 1 - I - 0x00A8B6 02:A8A6: 33        .byte $33   ; 
- D 1 - I - 0x00A8B7 02:A8A7: 2C        .byte $2C   ; 
- D 1 - I - 0x00A8B8 02:A8A8: 33        .byte $33   ; 
- D 1 - I - 0x00A8B9 02:A8A9: 33        .byte $33   ; 
- D 1 - I - 0x00A8BA 02:A8AA: 31        .byte $31   ; 
- D 1 - I - 0x00A8BB 02:A8AB: 34        .byte $34   ; 
- D 1 - I - 0x00A8BC 02:A8AC: 34        .byte $34   ; 
- D 1 - I - 0x00A8BD 02:A8AD: 2E        .byte $2E   ; 
- D 1 - I - 0x00A8BE 02:A8AE: 34        .byte $34   ; 
- D 1 - I - 0x00A8BF 02:A8AF: 34        .byte $34   ; 
- D 1 - I - 0x00A8C0 02:A8B0: 2F        .byte $2F   ; 
- D 1 - I - 0x00A8C1 02:A8B1: 32        .byte $32   ; 
- D 1 - I - 0x00A8C2 02:A8B2: 32        .byte $32   ; 
- D 1 - I - 0x00A8C3 02:A8B3: 2C        .byte $2C   ; 
- D 1 - I - 0x00A8C4 02:A8B4: 32        .byte $32   ; 
- D 1 - I - 0x00A8C5 02:A8B5: 32        .byte $32   ; 
- D 1 - I - 0x00A8C6 02:A8B6: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8C7 02:A8B7: 31        .byte $31   ; 
- D 1 - I - 0x00A8C8 02:A8B8: 31        .byte $31   ; 
- D 1 - I - 0x00A8C9 02:A8B9: 28        .byte $28   ; 
- D 1 - I - 0x00A8CA 02:A8BA: 31        .byte $31   ; 
- D 1 - I - 0x00A8CB 02:A8BB: 31        .byte $31   ; 
- D 1 - I - 0x00A8CC 02:A8BC: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8CD 02:A8BD: 7F        .byte $7F   ; 
- D 1 - I - 0x00A8CE 02:A8BE: 7F        .byte $7F   ; 
- D 1 - I - 0x00A8CF 02:A8BF: 28        .byte $28   ; 
- D 1 - I - 0x00A8D0 02:A8C0: 2A        .byte $2A   ; 
- D 1 - I - 0x00A8D1 02:A8C1: 2C        .byte $2C   ; 
- D 1 - I - 0x00A8D2 02:A8C2: CF        .byte $CF   ; 
- D 1 - I - 0x00A8D3 02:A8C3: FF        .byte $FF   ; 



ch_03_A8C4_03:
- D 1 - I - 0x00A8D4 02:A8C4: E3        .byte $E3   ; 
- D 1 - I - 0x00A8D5 02:A8C5: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00A8D7 02:A8C7: CA        .byte $CA   ; 
- D 1 - I - 0x00A8D8 02:A8C8: C8        .byte $C8   ; 
- D 1 - I - 0x00A8D9 02:A8C9: 82        .byte $82   ; 
- D 1 - I - 0x00A8DA 02:A8CA: 28        .byte $28   ; 
- D 1 - I - 0x00A8DB 02:A8CB: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8DC 02:A8CC: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8DD 02:A8CD: CF        .byte $CF   ; 
- D 1 - I - 0x00A8DE 02:A8CE: C8        .byte $C8   ; 
- D 1 - I - 0x00A8DF 02:A8CF: 82        .byte $82   ; 
- D 1 - I - 0x00A8E0 02:A8D0: 28        .byte $28   ; 
- D 1 - I - 0x00A8E1 02:A8D1: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8E2 02:A8D2: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8E3 02:A8D3: CF        .byte $CF   ; 
- D 1 - I - 0x00A8E4 02:A8D4: C8        .byte $C8   ; 
- D 1 - I - 0x00A8E5 02:A8D5: 82        .byte $82   ; 
- D 1 - I - 0x00A8E6 02:A8D6: 28        .byte $28   ; 
- D 1 - I - 0x00A8E7 02:A8D7: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8E8 02:A8D8: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8E9 02:A8D9: CF        .byte $CF   ; 
- D 1 - I - 0x00A8EA 02:A8DA: C8        .byte $C8   ; 
- D 1 - I - 0x00A8EB 02:A8DB: 82        .byte $82   ; 
- D 1 - I - 0x00A8EC 02:A8DC: 28        .byte $28   ; 
- D 1 - I - 0x00A8ED 02:A8DD: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8EE 02:A8DE: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8EF 02:A8DF: CF        .byte $CF   ; 
- D 1 - I - 0x00A8F0 02:A8E0: C8        .byte $C8   ; 
- D 1 - I - 0x00A8F1 02:A8E1: 82        .byte $82   ; 
- D 1 - I - 0x00A8F2 02:A8E2: 28        .byte $28   ; 
- D 1 - I - 0x00A8F3 02:A8E3: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8F4 02:A8E4: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8F5 02:A8E5: CF        .byte $CF   ; 
- D 1 - I - 0x00A8F6 02:A8E6: C8        .byte $C8   ; 
- D 1 - I - 0x00A8F7 02:A8E7: 82        .byte $82   ; 
- D 1 - I - 0x00A8F8 02:A8E8: 28        .byte $28   ; 
- D 1 - I - 0x00A8F9 02:A8E9: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8FA 02:A8EA: 2D        .byte $2D   ; 
- D 1 - I - 0x00A8FB 02:A8EB: CF        .byte $CF   ; 
- D 1 - I - 0x00A8FC 02:A8EC: C8        .byte $C8   ; 
- D 1 - I - 0x00A8FD 02:A8ED: 82        .byte $82   ; 
- D 1 - I - 0x00A8FE 02:A8EE: 28        .byte $28   ; 
- D 1 - I - 0x00A8FF 02:A8EF: 2D        .byte $2D   ; 
- D 1 - I - 0x00A900 02:A8F0: 2D        .byte $2D   ; 
- D 1 - I - 0x00A901 02:A8F1: CF        .byte $CF   ; 
- D 1 - I - 0x00A902 02:A8F2: C8        .byte $C8   ; 
- D 1 - I - 0x00A903 02:A8F3: 82        .byte $82   ; 
- D 1 - I - 0x00A904 02:A8F4: 28        .byte $28   ; 
- D 1 - I - 0x00A905 02:A8F5: 2D        .byte $2D   ; 
- D 1 - I - 0x00A906 02:A8F6: 2D        .byte $2D   ; 
- D 1 - I - 0x00A907 02:A8F7: CF        .byte $CF   ; 
- D 1 - I - 0x00A908 02:A8F8: CF        .byte $CF   ; 
- D 1 - I - 0x00A909 02:A8F9: FF        .byte $FF   ; 
- - - - - - 0x00A90A 02:A8FA: 00        .byte $00   ; 
- - - - - - 0x00A90B 02:A8FB: 00        .byte $00   ; 
- - - - - - 0x00A90C 02:A8FC: 00        .byte $00   ; 
- - - - - - 0x00A90D 02:A8FD: 03        .byte $03   ; 
- - - - - - 0x00A90E 02:A8FE: 0F        .byte $0F   ; 
- - - - - - 0x00A90F 02:A8FF: 0F        .byte $0F   ; 
- - - - - - 0x00A910 02:A900: 0F        .byte $0F   ; 
- - - - - - 0x00A911 02:A901: 0E        .byte $0E   ; 
- - - - - - 0x00A912 02:A902: 0E        .byte $0E   ; 
- - - - - - 0x00A913 02:A903: 0D        .byte $0D   ; 
- - - - - - 0x00A914 02:A904: 0C        .byte $0C   ; 
- - - - - - 0x00A915 02:A905: 0C        .byte $0C   ; 
- - - - - - 0x00A916 02:A906: 0B        .byte $0B   ; 
- - - - - - 0x00A917 02:A907: 0B        .byte $0B   ; 
- - - - - - 0x00A918 02:A908: 0B        .byte $0B   ; 
- - - - - - 0x00A919 02:A909: 0A        .byte $0A   ; 
- - - - - - 0x00A91A 02:A90A: 0A        .byte $0A   ; 
- - - - - - 0x00A91B 02:A90B: 0A        .byte $0A   ; 
- - - - - - 0x00A91C 02:A90C: 0A        .byte $0A   ; 
- - - - - - 0x00A91D 02:A90D: 09        .byte $09   ; 
- - - - - - 0x00A91E 02:A90E: 09        .byte $09   ; 
- - - - - - 0x00A91F 02:A90F: 09        .byte $09   ; 
- - - - - - 0x00A920 02:A910: 08        .byte $08   ; 
- - - - - - 0x00A921 02:A911: 08        .byte $08   ; 
- - - - - - 0x00A922 02:A912: 08        .byte $08   ; 
- - - - - - 0x00A923 02:A913: 08        .byte $08   ; 
- - - - - - 0x00A924 02:A914: 08        .byte $08   ; 
- - - - - - 0x00A925 02:A915: 07        .byte $07   ; 
- - - - - - 0x00A926 02:A916: 07        .byte $07   ; 
- - - - - - 0x00A927 02:A917: 06        .byte $06   ; 
- - - - - - 0x00A928 02:A918: 06        .byte $06   ; 
- - - - - - 0x00A929 02:A919: 06        .byte $06   ; 
- - - - - - 0x00A92A 02:A91A: 06        .byte $06   ; 
- - - - - - 0x00A92B 02:A91B: 06        .byte $06   ; 
- - - - - - 0x00A92C 02:A91C: 06        .byte $06   ; 
- - - - - - 0x00A92D 02:A91D: 06        .byte $06   ; 
- - - - - - 0x00A92E 02:A91E: 06        .byte $06   ; 
- - - - - - 0x00A92F 02:A91F: 05        .byte $05   ; 
- - - - - - 0x00A930 02:A920: 05        .byte $05   ; 
- - - - - - 0x00A931 02:A921: 05        .byte $05   ; 
- - - - - - 0x00A932 02:A922: 05        .byte $05   ; 
- - - - - - 0x00A933 02:A923: 05        .byte $05   ; 
- - - - - - 0x00A934 02:A924: 05        .byte $05   ; 
- - - - - - 0x00A935 02:A925: 05        .byte $05   ; 
- - - - - - 0x00A936 02:A926: 05        .byte $05   ; 
- - - - - - 0x00A937 02:A927: 05        .byte $05   ; 
- - - - - - 0x00A938 02:A928: 05        .byte $05   ; 
- - - - - - 0x00A939 02:A929: 05        .byte $05   ; 
- - - - - - 0x00A93A 02:A92A: 05        .byte $05   ; 
- - - - - - 0x00A93B 02:A92B: 05        .byte $05   ; 
- - - - - - 0x00A93C 02:A92C: 05        .byte $05   ; 
- - - - - - 0x00A93D 02:A92D: 05        .byte $05   ; 
- - - - - - 0x00A93E 02:A92E: 05        .byte $05   ; 
- - - - - - 0x00A93F 02:A92F: 05        .byte $05   ; 
- - - - - - 0x00A940 02:A930: 05        .byte $05   ; 
- - - - - - 0x00A941 02:A931: 05        .byte $05   ; 
- - - - - - 0x00A942 02:A932: 05        .byte $05   ; 
- - - - - - 0x00A943 02:A933: 05        .byte $05   ; 
- - - - - - 0x00A944 02:A934: 05        .byte $05   ; 
- - - - - - 0x00A945 02:A935: 05        .byte $05   ; 
- - - - - - 0x00A946 02:A936: 05        .byte $05   ; 
- - - - - - 0x00A947 02:A937: 05        .byte $05   ; 
- - - - - - 0x00A948 02:A938: 05        .byte $05   ; 
- - - - - - 0x00A949 02:A939: 05        .byte $05   ; 
- - - - - - 0x00A94A 02:A93A: 05        .byte $05   ; 
- - - - - - 0x00A94B 02:A93B: 05        .byte $05   ; 
- - - - - - 0x00A94C 02:A93C: 05        .byte $05   ; 
- - - - - - 0x00A94D 02:A93D: 05        .byte $05   ; 



off_E0_A93E:
off_E0_0x00A94E:
off_E1_0x00A94E:
- D 1 - I - 0x00A94E 02:A93E: 80        .byte $80   ; 
- D 1 - I - 0x00A94F 02:A93F: 00        .byte $00   ; 
- D 1 - I - 0x00A950 02:A940: 00        .byte $00   ; 
- D 1 - I - 0x00A951 02:A941: 02        .byte $02   ; 
- D 1 - I - 0x00A952 02:A942: 0F        .byte $0F   ; 
- D 1 - I - 0x00A953 02:A943: 0F        .byte $0F   ; 
- D 1 - I - 0x00A954 02:A944: 0E        .byte $0E   ; 
- D 1 - I - 0x00A955 02:A945: 0D        .byte $0D   ; 
- D 1 - I - 0x00A956 02:A946: 0C        .byte $0C   ; 
- D 1 - I - 0x00A957 02:A947: 0A        .byte $0A   ; 
- D 1 - I - 0x00A958 02:A948: 09        .byte $09   ; 
- D 1 - I - 0x00A959 02:A949: 08        .byte $08   ; 
- D 1 - I - 0x00A95A 02:A94A: 07        .byte $07   ; 
- D 1 - I - 0x00A95B 02:A94B: 07        .byte $07   ; 
- D 1 - I - 0x00A95C 02:A94C: 06        .byte $06   ; 
- D 1 - I - 0x00A95D 02:A94D: 05        .byte $05   ; 
- D 1 - I - 0x00A95E 02:A94E: 05        .byte $05   ; 
- D 1 - I - 0x00A95F 02:A94F: 04        .byte $04   ; 
- D 1 - I - 0x00A960 02:A950: 04        .byte $04   ; 
- D 1 - I - 0x00A961 02:A951: 03        .byte $03   ; 
- D 1 - I - 0x00A962 02:A952: 03        .byte $03   ; 
- D 1 - I - 0x00A963 02:A953: 03        .byte $03   ; 
- D 1 - I - 0x00A964 02:A954: 02        .byte $02   ; 
- D 1 - I - 0x00A965 02:A955: 02        .byte $02   ; 
- D 1 - I - 0x00A966 02:A956: 02        .byte $02   ; 
- D 1 - I - 0x00A967 02:A957: 02        .byte $02   ; 
- D 1 - I - 0x00A968 02:A958: 02        .byte $02   ; 
- D 1 - I - 0x00A969 02:A959: 02        .byte $02   ; 
- D 1 - I - 0x00A96A 02:A95A: 02        .byte $02   ; 
- D 1 - I - 0x00A96B 02:A95B: 02        .byte $02   ; 
- D 1 - I - 0x00A96C 02:A95C: 02        .byte $02   ; 
- D 1 - I - 0x00A96D 02:A95D: 01        .byte $01   ; 
- D 1 - I - 0x00A96E 02:A95E: 01        .byte $01   ; 
- D 1 - I - 0x00A96F 02:A95F: 01        .byte $01   ; 
- D 1 - I - 0x00A970 02:A960: 01        .byte $01   ; 
- D 1 - I - 0x00A971 02:A961: 01        .byte $01   ; 
- D 1 - I - 0x00A972 02:A962: 01        .byte $01   ; 
- D 1 - I - 0x00A973 02:A963: 01        .byte $01   ; 
- D 1 - I - 0x00A974 02:A964: 01        .byte $01   ; 
- D 1 - I - 0x00A975 02:A965: 01        .byte $01   ; 
- D 1 - I - 0x00A976 02:A966: 01        .byte $01   ; 
- D 1 - I - 0x00A977 02:A967: 01        .byte $01   ; 
- D 1 - I - 0x00A978 02:A968: 01        .byte $01   ; 
- D 1 - I - 0x00A979 02:A969: 01        .byte $01   ; 
- D 1 - I - 0x00A97A 02:A96A: 01        .byte $01   ; 
- D 1 - I - 0x00A97B 02:A96B: 01        .byte $01   ; 
- D 1 - I - 0x00A97C 02:A96C: 01        .byte $01   ; 
- D 1 - I - 0x00A97D 02:A96D: 01        .byte $01   ; 
- D 1 - I - 0x00A97E 02:A96E: 01        .byte $01   ; 
- D 1 - I - 0x00A97F 02:A96F: 01        .byte $01   ; 
- D 1 - I - 0x00A980 02:A970: 01        .byte $01   ; 
- D 1 - I - 0x00A981 02:A971: 01        .byte $01   ; 
- D 1 - I - 0x00A982 02:A972: 01        .byte $01   ; 
- D 1 - I - 0x00A983 02:A973: 01        .byte $01   ; 
- D 1 - I - 0x00A984 02:A974: 01        .byte $01   ; 
- D 1 - I - 0x00A985 02:A975: 01        .byte $01   ; 
- D 1 - I - 0x00A986 02:A976: 01        .byte $01   ; 
- D 1 - I - 0x00A987 02:A977: 01        .byte $01   ; 
- D 1 - I - 0x00A988 02:A978: 01        .byte $01   ; 
- D 1 - I - 0x00A989 02:A979: 01        .byte $01   ; 
- D 1 - I - 0x00A98A 02:A97A: 01        .byte $01   ; 
- D 1 - I - 0x00A98B 02:A97B: 01        .byte $01   ; 
- D 1 - I - 0x00A98C 02:A97C: 01        .byte $01   ; 
- D 1 - I - 0x00A98D 02:A97D: 01        .byte $01   ; 
- D 1 - I - 0x00A98E 02:A97E: 01        .byte $01   ; 
- D 1 - I - 0x00A98F 02:A97F: 01        .byte $01   ; 
- D 1 - I - 0x00A990 02:A980: 01        .byte $01   ; 
- D 1 - I - 0x00A991 02:A981: 01        .byte $01   ; 



off_E1_A982:
off_E1_0x00A992:
- D 1 - I - 0x00A992 02:A982: 80        .byte $80   ; 
- D 1 - I - 0x00A993 02:A983: 00        .byte $00   ; 
- D 1 - I - 0x00A994 02:A984: 00        .byte $00   ; 
- D 1 - I - 0x00A995 02:A985: 00        .byte $00   ; 
- D 1 - I - 0x00A996 02:A986: 06        .byte $06   ; 
- D 1 - I - 0x00A997 02:A987: 06        .byte $06   ; 
- D 1 - I - 0x00A998 02:A988: 06        .byte $06   ; 
- D 1 - I - 0x00A999 02:A989: 06        .byte $06   ; 
- D 1 - I - 0x00A99A 02:A98A: 06        .byte $06   ; 
- D 1 - I - 0x00A99B 02:A98B: 06        .byte $06   ; 
- D 1 - I - 0x00A99C 02:A98C: 07        .byte $07   ; 
- D 1 - I - 0x00A99D 02:A98D: 07        .byte $07   ; 
- D 1 - I - 0x00A99E 02:A98E: 07        .byte $07   ; 
- D 1 - I - 0x00A99F 02:A98F: 07        .byte $07   ; 
- D 1 - I - 0x00A9A0 02:A990: 07        .byte $07   ; 
- D 1 - I - 0x00A9A1 02:A991: 07        .byte $07   ; 
- D 1 - I - 0x00A9A2 02:A992: 07        .byte $07   ; 
- D 1 - I - 0x00A9A3 02:A993: 07        .byte $07   ; 
- D 1 - I - 0x00A9A4 02:A994: 07        .byte $07   ; 
- D 1 - I - 0x00A9A5 02:A995: 07        .byte $07   ; 
- D 1 - I - 0x00A9A6 02:A996: 07        .byte $07   ; 
- D 1 - I - 0x00A9A7 02:A997: 07        .byte $07   ; 
- D 1 - I - 0x00A9A8 02:A998: 07        .byte $07   ; 
- D 1 - I - 0x00A9A9 02:A999: 07        .byte $07   ; 
- D 1 - I - 0x00A9AA 02:A99A: 06        .byte $06   ; 
- D 1 - I - 0x00A9AB 02:A99B: 06        .byte $06   ; 
- D 1 - I - 0x00A9AC 02:A99C: 06        .byte $06   ; 
- D 1 - I - 0x00A9AD 02:A99D: 06        .byte $06   ; 
- D 1 - I - 0x00A9AE 02:A99E: 06        .byte $06   ; 
- D 1 - I - 0x00A9AF 02:A99F: 06        .byte $06   ; 
- D 1 - I - 0x00A9B0 02:A9A0: 06        .byte $06   ; 
- D 1 - I - 0x00A9B1 02:A9A1: 06        .byte $06   ; 
- D 1 - I - 0x00A9B2 02:A9A2: 06        .byte $06   ; 
- D 1 - I - 0x00A9B3 02:A9A3: 06        .byte $06   ; 
- D 1 - I - 0x00A9B4 02:A9A4: 06        .byte $06   ; 
- D 1 - I - 0x00A9B5 02:A9A5: 06        .byte $06   ; 
- D 1 - I - 0x00A9B6 02:A9A6: 06        .byte $06   ; 
- D 1 - I - 0x00A9B7 02:A9A7: 06        .byte $06   ; 
- D 1 - I - 0x00A9B8 02:A9A8: 06        .byte $06   ; 
- D 1 - I - 0x00A9B9 02:A9A9: 06        .byte $06   ; 
- D 1 - I - 0x00A9BA 02:A9AA: 05        .byte $05   ; 
- D 1 - I - 0x00A9BB 02:A9AB: 05        .byte $05   ; 
- D 1 - I - 0x00A9BC 02:A9AC: 05        .byte $05   ; 
- D 1 - I - 0x00A9BD 02:A9AD: 05        .byte $05   ; 
- D 1 - I - 0x00A9BE 02:A9AE: 05        .byte $05   ; 
- D 1 - I - 0x00A9BF 02:A9AF: 05        .byte $05   ; 
- D 1 - I - 0x00A9C0 02:A9B0: 05        .byte $05   ; 
- D 1 - I - 0x00A9C1 02:A9B1: 05        .byte $05   ; 
- D 1 - I - 0x00A9C2 02:A9B2: 05        .byte $05   ; 
- D 1 - I - 0x00A9C3 02:A9B3: 05        .byte $05   ; 
- D 1 - I - 0x00A9C4 02:A9B4: 05        .byte $05   ; 
- D 1 - I - 0x00A9C5 02:A9B5: 05        .byte $05   ; 
- D 1 - I - 0x00A9C6 02:A9B6: 05        .byte $05   ; 
- D 1 - I - 0x00A9C7 02:A9B7: 05        .byte $05   ; 
- D 1 - I - 0x00A9C8 02:A9B8: 05        .byte $05   ; 
- D 1 - I - 0x00A9C9 02:A9B9: 05        .byte $05   ; 
- D 1 - I - 0x00A9CA 02:A9BA: 05        .byte $05   ; 
- D 1 - I - 0x00A9CB 02:A9BB: 05        .byte $05   ; 
- D 1 - I - 0x00A9CC 02:A9BC: 05        .byte $05   ; 
- D 1 - I - 0x00A9CD 02:A9BD: 03        .byte $03   ; 
- D 1 - I - 0x00A9CE 02:A9BE: 03        .byte $03   ; 
- D 1 - I - 0x00A9CF 02:A9BF: 03        .byte $03   ; 
- D 1 - I - 0x00A9D0 02:A9C0: 03        .byte $03   ; 
- D 1 - I - 0x00A9D1 02:A9C1: 03        .byte $03   ; 
- D 1 - I - 0x00A9D2 02:A9C2: 03        .byte $03   ; 
- D 1 - I - 0x00A9D3 02:A9C3: 03        .byte $03   ; 
- D 1 - I - 0x00A9D4 02:A9C4: 03        .byte $03   ; 
- D 1 - I - 0x00A9D5 02:A9C5: 03        .byte $03   ; 
- - - - - - 0x00A9D6 02:A9C6: C0        .byte $C0   ; 
- - - - - - 0x00A9D7 02:A9C7: 00        .byte $00   ; 
- - - - - - 0x00A9D8 02:A9C8: 00        .byte $00   ; 
- - - - - - 0x00A9D9 02:A9C9: 00        .byte $00   ; 
- - - - - - 0x00A9DA 02:A9CA: 0F        .byte $0F   ; 
- - - - - - 0x00A9DB 02:A9CB: 0F        .byte $0F   ; 
- - - - - - 0x00A9DC 02:A9CC: 0F        .byte $0F   ; 
- - - - - - 0x00A9DD 02:A9CD: 0F        .byte $0F   ; 
- - - - - - 0x00A9DE 02:A9CE: 0E        .byte $0E   ; 
- - - - - - 0x00A9DF 02:A9CF: 0E        .byte $0E   ; 
- - - - - - 0x00A9E0 02:A9D0: 0C        .byte $0C   ; 
- - - - - - 0x00A9E1 02:A9D1: 0B        .byte $0B   ; 
- - - - - - 0x00A9E2 02:A9D2: 0A        .byte $0A   ; 
- - - - - - 0x00A9E3 02:A9D3: 0A        .byte $0A   ; 
- - - - - - 0x00A9E4 02:A9D4: 09        .byte $09   ; 
- - - - - - 0x00A9E5 02:A9D5: 08        .byte $08   ; 
- - - - - - 0x00A9E6 02:A9D6: 07        .byte $07   ; 
- - - - - - 0x00A9E7 02:A9D7: 07        .byte $07   ; 
- - - - - - 0x00A9E8 02:A9D8: 06        .byte $06   ; 
- - - - - - 0x00A9E9 02:A9D9: 06        .byte $06   ; 
- - - - - - 0x00A9EA 02:A9DA: 06        .byte $06   ; 
- - - - - - 0x00A9EB 02:A9DB: 05        .byte $05   ; 
- - - - - - 0x00A9EC 02:A9DC: 05        .byte $05   ; 
- - - - - - 0x00A9ED 02:A9DD: 05        .byte $05   ; 
- - - - - - 0x00A9EE 02:A9DE: 04        .byte $04   ; 
- - - - - - 0x00A9EF 02:A9DF: 04        .byte $04   ; 
- - - - - - 0x00A9F0 02:A9E0: 04        .byte $04   ; 
- - - - - - 0x00A9F1 02:A9E1: 04        .byte $04   ; 
- - - - - - 0x00A9F2 02:A9E2: 04        .byte $04   ; 
- - - - - - 0x00A9F3 02:A9E3: 03        .byte $03   ; 
- - - - - - 0x00A9F4 02:A9E4: 03        .byte $03   ; 
- - - - - - 0x00A9F5 02:A9E5: 03        .byte $03   ; 
- - - - - - 0x00A9F6 02:A9E6: 03        .byte $03   ; 
- - - - - - 0x00A9F7 02:A9E7: 03        .byte $03   ; 
- - - - - - 0x00A9F8 02:A9E8: 03        .byte $03   ; 
- - - - - - 0x00A9F9 02:A9E9: 03        .byte $03   ; 
- - - - - - 0x00A9FA 02:A9EA: 02        .byte $02   ; 
- - - - - - 0x00A9FB 02:A9EB: 02        .byte $02   ; 
- - - - - - 0x00A9FC 02:A9EC: 02        .byte $02   ; 
- - - - - - 0x00A9FD 02:A9ED: 02        .byte $02   ; 
- - - - - - 0x00A9FE 02:A9EE: 02        .byte $02   ; 
- - - - - - 0x00A9FF 02:A9EF: 02        .byte $02   ; 
- - - - - - 0x00AA00 02:A9F0: 02        .byte $02   ; 
- - - - - - 0x00AA01 02:A9F1: 02        .byte $02   ; 
- - - - - - 0x00AA02 02:A9F2: 02        .byte $02   ; 
- - - - - - 0x00AA03 02:A9F3: 02        .byte $02   ; 
- - - - - - 0x00AA04 02:A9F4: 02        .byte $02   ; 
- - - - - - 0x00AA05 02:A9F5: 02        .byte $02   ; 
- - - - - - 0x00AA06 02:A9F6: 02        .byte $02   ; 
- - - - - - 0x00AA07 02:A9F7: 02        .byte $02   ; 
- - - - - - 0x00AA08 02:A9F8: 01        .byte $01   ; 
- - - - - - 0x00AA09 02:A9F9: 01        .byte $01   ; 
- - - - - - 0x00AA0A 02:A9FA: 01        .byte $01   ; 
- - - - - - 0x00AA0B 02:A9FB: 01        .byte $01   ; 
- - - - - - 0x00AA0C 02:A9FC: 01        .byte $01   ; 
- - - - - - 0x00AA0D 02:A9FD: 01        .byte $01   ; 
- - - - - - 0x00AA0E 02:A9FE: 01        .byte $01   ; 
- - - - - - 0x00AA0F 02:A9FF: 01        .byte $01   ; 
- - - - - - 0x00AA10 02:AA00: 01        .byte $01   ; 
- - - - - - 0x00AA11 02:AA01: 01        .byte $01   ; 
- - - - - - 0x00AA12 02:AA02: 01        .byte $01   ; 
- - - - - - 0x00AA13 02:AA03: 01        .byte $01   ; 
- - - - - - 0x00AA14 02:AA04: 01        .byte $01   ; 
- - - - - - 0x00AA15 02:AA05: 01        .byte $01   ; 
- - - - - - 0x00AA16 02:AA06: 01        .byte $01   ; 
- - - - - - 0x00AA17 02:AA07: 01        .byte $01   ; 
- - - - - - 0x00AA18 02:AA08: 01        .byte $01   ; 
- - - - - - 0x00AA19 02:AA09: 01        .byte $01   ; 



off_E0_AA0A:
off_E1_AA0A:
- D 1 - I - 0x00AA1A 02:AA0A: 40        .byte $40   ; 
- D 1 - I - 0x00AA1B 02:AA0B: 08        .byte $08   ; 
- D 1 - I - 0x00AA1C 02:AA0C: 00        .byte $00   ; 
- D 1 - I - 0x00AA1D 02:AA0D: 01        .byte $01   ; 
- D 1 - I - 0x00AA1E 02:AA0E: 0F        .byte $0F   ; 
- D 1 - I - 0x00AA1F 02:AA0F: 0F        .byte $0F   ; 
- D 1 - I - 0x00AA20 02:AA10: 0F        .byte $0F   ; 
- D 1 - I - 0x00AA21 02:AA11: 0D        .byte $0D   ; 
- D 1 - I - 0x00AA22 02:AA12: 0C        .byte $0C   ; 
- D 1 - I - 0x00AA23 02:AA13: 0B        .byte $0B   ; 
- D 1 - I - 0x00AA24 02:AA14: 0B        .byte $0B   ; 
- D 1 - I - 0x00AA25 02:AA15: 0A        .byte $0A   ; 
- D 1 - I - 0x00AA26 02:AA16: 0A        .byte $0A   ; 
- D 1 - I - 0x00AA27 02:AA17: 09        .byte $09   ; 
- D 1 - I - 0x00AA28 02:AA18: 09        .byte $09   ; 
- D 1 - I - 0x00AA29 02:AA19: 08        .byte $08   ; 
- D 1 - I - 0x00AA2A 02:AA1A: 08        .byte $08   ; 
- D 1 - I - 0x00AA2B 02:AA1B: 08        .byte $08   ; 
- D 1 - I - 0x00AA2C 02:AA1C: 07        .byte $07   ; 
- D 1 - I - 0x00AA2D 02:AA1D: 07        .byte $07   ; 
- D 1 - I - 0x00AA2E 02:AA1E: 06        .byte $06   ; 
- D 1 - I - 0x00AA2F 02:AA1F: 06        .byte $06   ; 
- D 1 - I - 0x00AA30 02:AA20: 06        .byte $06   ; 
- D 1 - I - 0x00AA31 02:AA21: 06        .byte $06   ; 
- D 1 - I - 0x00AA32 02:AA22: 06        .byte $06   ; 
- D 1 - I - 0x00AA33 02:AA23: 05        .byte $05   ; 
- D 1 - I - 0x00AA34 02:AA24: 05        .byte $05   ; 
- D 1 - I - 0x00AA35 02:AA25: 05        .byte $05   ; 
- D 1 - I - 0x00AA36 02:AA26: 04        .byte $04   ; 
- D 1 - I - 0x00AA37 02:AA27: 04        .byte $04   ; 
- D 1 - I - 0x00AA38 02:AA28: 04        .byte $04   ; 
- D 1 - I - 0x00AA39 02:AA29: 04        .byte $04   ; 
- D 1 - I - 0x00AA3A 02:AA2A: 04        .byte $04   ; 
- D 1 - I - 0x00AA3B 02:AA2B: 04        .byte $04   ; 
- D 1 - I - 0x00AA3C 02:AA2C: 03        .byte $03   ; 
- D 1 - I - 0x00AA3D 02:AA2D: 03        .byte $03   ; 
- D 1 - I - 0x00AA3E 02:AA2E: 03        .byte $03   ; 
- D 1 - I - 0x00AA3F 02:AA2F: 03        .byte $03   ; 
- D 1 - I - 0x00AA40 02:AA30: 03        .byte $03   ; 
- D 1 - I - 0x00AA41 02:AA31: 03        .byte $03   ; 
- D 1 - I - 0x00AA42 02:AA32: 03        .byte $03   ; 
- D 1 - I - 0x00AA43 02:AA33: 03        .byte $03   ; 
- D 1 - I - 0x00AA44 02:AA34: 03        .byte $03   ; 
- D 1 - I - 0x00AA45 02:AA35: 02        .byte $02   ; 
- D 1 - I - 0x00AA46 02:AA36: 02        .byte $02   ; 
- D 1 - I - 0x00AA47 02:AA37: 02        .byte $02   ; 
- D 1 - I - 0x00AA48 02:AA38: 02        .byte $02   ; 
- D 1 - I - 0x00AA49 02:AA39: 02        .byte $02   ; 
- D 1 - I - 0x00AA4A 02:AA3A: 02        .byte $02   ; 
- D 1 - I - 0x00AA4B 02:AA3B: 02        .byte $02   ; 
- D 1 - I - 0x00AA4C 02:AA3C: 02        .byte $02   ; 
- D 1 - I - 0x00AA4D 02:AA3D: 02        .byte $02   ; 
- D 1 - I - 0x00AA4E 02:AA3E: 02        .byte $02   ; 
- D 1 - I - 0x00AA4F 02:AA3F: 02        .byte $02   ; 
- D 1 - I - 0x00AA50 02:AA40: 02        .byte $02   ; 
- D 1 - I - 0x00AA51 02:AA41: 02        .byte $02   ; 
- D 1 - I - 0x00AA52 02:AA42: 02        .byte $02   ; 
- D 1 - I - 0x00AA53 02:AA43: 02        .byte $02   ; 
- D 1 - I - 0x00AA54 02:AA44: 02        .byte $02   ; 
- - - - - - 0x00AA55 02:AA45: 02        .byte $02   ; 
- - - - - - 0x00AA56 02:AA46: 02        .byte $02   ; 
- - - - - - 0x00AA57 02:AA47: 01        .byte $01   ; 
- - - - - - 0x00AA58 02:AA48: 01        .byte $01   ; 
- - - - - - 0x00AA59 02:AA49: 01        .byte $01   ; 
- - - - - - 0x00AA5A 02:AA4A: 01        .byte $01   ; 
- - - - - - 0x00AA5B 02:AA4B: 01        .byte $01   ; 
- - - - - - 0x00AA5C 02:AA4C: 01        .byte $01   ; 
- - - - - - 0x00AA5D 02:AA4D: 01        .byte $01   ; 



off_E1_AA4E:
off_E1_0x00AA5E:
- D 1 - I - 0x00AA5E 02:AA4E: 80        .byte $80   ; 
- D 1 - I - 0x00AA5F 02:AA4F: 84        .byte $84   ; 
- D 1 - I - 0x00AA60 02:AA50: 00        .byte $00   ; 
- D 1 - I - 0x00AA61 02:AA51: 00        .byte $00   ; 
- D 1 - I - 0x00AA62 02:AA52: 0F        .byte $0F   ; 
- D 1 - I - 0x00AA63 02:AA53: 0C        .byte $0C   ; 
- D 1 - I - 0x00AA64 02:AA54: 09        .byte $09   ; 
- D 1 - I - 0x00AA65 02:AA55: 07        .byte $07   ; 
- D 1 - I - 0x00AA66 02:AA56: 05        .byte $05   ; 
- D 1 - I - 0x00AA67 02:AA57: 04        .byte $04   ; 
- D 1 - I - 0x00AA68 02:AA58: 00        .byte $00   ; 
- D 1 - I - 0x00AA69 02:AA59: 00        .byte $00   ; 
- D 1 - I - 0x00AA6A 02:AA5A: 00        .byte $00   ; 
- D 1 - I - 0x00AA6B 02:AA5B: 00        .byte $00   ; 
- D 1 - I - 0x00AA6C 02:AA5C: 00        .byte $00   ; 
- D 1 - I - 0x00AA6D 02:AA5D: 00        .byte $00   ; 
- D 1 - I - 0x00AA6E 02:AA5E: 00        .byte $00   ; 
- D 1 - I - 0x00AA6F 02:AA5F: 00        .byte $00   ; 
- D 1 - I - 0x00AA70 02:AA60: 00        .byte $00   ; 
- D 1 - I - 0x00AA71 02:AA61: 00        .byte $00   ; 
- D 1 - I - 0x00AA72 02:AA62: 00        .byte $00   ; 
- D 1 - I - 0x00AA73 02:AA63: 00        .byte $00   ; 
- D 1 - I - 0x00AA74 02:AA64: 00        .byte $00   ; 
- D 1 - I - 0x00AA75 02:AA65: 00        .byte $00   ; 
- D 1 - I - 0x00AA76 02:AA66: 00        .byte $00   ; 
- D 1 - I - 0x00AA77 02:AA67: 00        .byte $00   ; 
- D 1 - I - 0x00AA78 02:AA68: 00        .byte $00   ; 
- D 1 - I - 0x00AA79 02:AA69: 00        .byte $00   ; 
- - - - - - 0x00AA7A 02:AA6A: 00        .byte $00   ; 
- - - - - - 0x00AA7B 02:AA6B: 00        .byte $00   ; 
- - - - - - 0x00AA7C 02:AA6C: 00        .byte $00   ; 
- - - - - - 0x00AA7D 02:AA6D: 00        .byte $00   ; 
- - - - - - 0x00AA7E 02:AA6E: 00        .byte $00   ; 
- - - - - - 0x00AA7F 02:AA6F: 00        .byte $00   ; 
- - - - - - 0x00AA80 02:AA70: 00        .byte $00   ; 
- - - - - - 0x00AA81 02:AA71: 00        .byte $00   ; 
- - - - - - 0x00AA82 02:AA72: 00        .byte $00   ; 
- - - - - - 0x00AA83 02:AA73: 00        .byte $00   ; 
- - - - - - 0x00AA84 02:AA74: 00        .byte $00   ; 
- - - - - - 0x00AA85 02:AA75: 00        .byte $00   ; 
- - - - - - 0x00AA86 02:AA76: 00        .byte $00   ; 
- - - - - - 0x00AA87 02:AA77: 00        .byte $00   ; 
- - - - - - 0x00AA88 02:AA78: 00        .byte $00   ; 
- - - - - - 0x00AA89 02:AA79: 00        .byte $00   ; 
- - - - - - 0x00AA8A 02:AA7A: 00        .byte $00   ; 
- - - - - - 0x00AA8B 02:AA7B: 00        .byte $00   ; 
- - - - - - 0x00AA8C 02:AA7C: 00        .byte $00   ; 
- - - - - - 0x00AA8D 02:AA7D: 00        .byte $00   ; 
- - - - - - 0x00AA8E 02:AA7E: 00        .byte $00   ; 
- - - - - - 0x00AA8F 02:AA7F: 00        .byte $00   ; 
- - - - - - 0x00AA90 02:AA80: 00        .byte $00   ; 
- - - - - - 0x00AA91 02:AA81: 00        .byte $00   ; 
- - - - - - 0x00AA92 02:AA82: 00        .byte $00   ; 
- - - - - - 0x00AA93 02:AA83: 00        .byte $00   ; 
- - - - - - 0x00AA94 02:AA84: 00        .byte $00   ; 
- - - - - - 0x00AA95 02:AA85: 00        .byte $00   ; 
- - - - - - 0x00AA96 02:AA86: 00        .byte $00   ; 
- - - - - - 0x00AA97 02:AA87: 00        .byte $00   ; 
- - - - - - 0x00AA98 02:AA88: 00        .byte $00   ; 
- - - - - - 0x00AA99 02:AA89: 00        .byte $00   ; 
- - - - - - 0x00AA9A 02:AA8A: 00        .byte $00   ; 
- - - - - - 0x00AA9B 02:AA8B: 00        .byte $00   ; 
- - - - - - 0x00AA9C 02:AA8C: 00        .byte $00   ; 
- - - - - - 0x00AA9D 02:AA8D: 00        .byte $00   ; 
- - - - - - 0x00AA9E 02:AA8E: 00        .byte $00   ; 
- - - - - - 0x00AA9F 02:AA8F: 00        .byte $00   ; 
- - - - - - 0x00AAA0 02:AA90: 00        .byte $00   ; 
- - - - - - 0x00AAA1 02:AA91: 00        .byte $00   ; 



off_E2_AA92:
off_E2_0x00AAA2:
- D 1 - I - 0x00AAA2 02:AA92: 00        .byte $00   ; 
- D 1 - I - 0x00AAA3 02:AA93: 00        .byte $00   ; 
- D 1 - I - 0x00AAA4 02:AA94: 02        .byte $02   ; 
- D 1 - I - 0x00AAA5 02:AA95: 01        .byte $01   ; 



off_E3_AA96:
- D 1 - I - 0x00AAA6 02:AA96: 02        .byte $02   ; 
- D 1 - I - 0x00AAA7 02:AA97: 00        .byte $00   ; 
- D 1 - I - 0x00AAA8 02:AA98: 08        .byte $08   ; 
- D 1 - I - 0x00AAA9 02:AA99: 02        .byte $02   ; 
- D 1 - I - 0x00AAAA 02:AA9A: 00        .byte $00   ; 
- D 1 - I - 0x00AAAB 02:AA9B: 38        .byte $38   ; 
- D 1 - I - 0x00AAAC 02:AA9C: 00        .byte $00   ; 
- D 1 - I - 0x00AAAD 02:AA9D: 04        .byte $04   ; 
- D 1 - I - 0x00AAAE 02:AA9E: 00        .byte $00   ; 
- - - - - - 0x00AAAF 02:AA9F: 02        .byte $02   ; 
- - - - - - 0x00AAB0 02:AAA0: 00        .byte $00   ; 
- - - - - - 0x00AAB1 02:AAA1: 28        .byte $28   ; 
- - - - - - 0x00AAB2 02:AAA2: 02        .byte $02   ; 
- - - - - - 0x00AAB3 02:AAA3: 06        .byte $06   ; 
- - - - - - 0x00AAB4 02:AAA4: 00        .byte $00   ; 
- D 1 - I - 0x00AAB5 02:AAA5: 00        .byte $00   ; 
- D 1 - I - 0x00AAB6 02:AAA6: 07        .byte $07   ; 
- D 1 - I - 0x00AAB7 02:AAA7: 00        .byte $00   ; 
- - - - - - 0x00AAB8 02:AAA8: 00        .byte $00   ; 
- - - - - - 0x00AAB9 02:AAA9: 08        .byte $08   ; 
- - - - - - 0x00AABA 02:AAAA: 00        .byte $00   ; 
- - - - - - 0x00AABB 02:AAAB: 01        .byte $01   ; 
- - - - - - 0x00AABC 02:AAAC: 02        .byte $02   ; 
- - - - - - 0x00AABD 02:AAAD: 18        .byte $18   ; 
- D 1 - I - 0x00AABE 02:AAAE: 00        .byte $00   ; 
- D 1 - I - 0x00AABF 02:AAAF: 0A        .byte $0A   ; 
- D 1 - I - 0x00AAC0 02:AAB0: 00        .byte $00   ; 
- - - - - - 0x00AAC1 02:AAB1: 00        .byte $00   ; 
- - - - - - 0x00AAC2 02:AAB2: 0B        .byte $0B   ; 
- - - - - - 0x00AAC3 02:AAB3: 00        .byte $00   ; 
- D 1 - I - 0x00AAC4 02:AAB4: 00        .byte $00   ; 
- D 1 - I - 0x00AAC5 02:AAB5: 01        .byte $01   ; 
- D 1 - I - 0x00AAC6 02:AAB6: 08        .byte $08   ; 
- D 1 - I - 0x00AAC7 02:AAB7: 24        .byte $24   ; 
- D 1 - I - 0x00AAC8 02:AAB8: 03        .byte $03   ; 
- D 1 - I - 0x00AAC9 02:AAB9: 00        .byte $00   ; 



_music_AABA_0A_pipes_stage_soundtrack:
- D 1 - I - 0x00AACA 02:AABA: 01        .byte $01   ; 
- D 1 - I - 0x00AACB 02:AABB: C6 AA     .word ch_0A_AAC6_00
- D 1 - I - 0x00AACD 02:AABD: 1A AB     .word ch_0A_AB1A_01
- D 1 - I - 0x00AACF 02:AABF: 63 AB     .word ch_0A_AB63_02
- D 1 - I - 0x00AAD1 02:AAC1: B7 AB     .word ch_0A_ABB7_03
- - - - - - 0x00AAD3 02:AAC3: 00 00     .word $0000    ; 04
- D 1 - I - 0x00AAD5 02:AAC5: 10        .byte $10   ; 



ch_0A_AAC6_00:
- D 1 - I - 0x00AAD6 02:AAC6: E0        .byte $E0   ; 
- D 1 - I - 0x00AAD7 02:AAC7: 0A AA     .word off_E0_AA0A
- D 1 - I - 0x00AAD9 02:AAC9: 80        .byte $80   ; 
- D 1 - I - 0x00AADA 02:AACA: 7F        .byte $7F   ; 
- D 1 - I - 0x00AADB 02:AACB: CA        .byte $CA   ; 
- D 1 - I - 0x00AADC 02:AACC: 8A        .byte $8A   ; 
- D 1 - I - 0x00AADD 02:AACD: 20        .byte $20   ; 
- D 1 - I - 0x00AADE 02:AACE: 84        .byte $84   ; 
- D 1 - I - 0x00AADF 02:AACF: 20        .byte $20   ; 
- D 1 - I - 0x00AAE0 02:AAD0: 81        .byte $81   ; 
- D 1 - I - 0x00AAE1 02:AAD1: 7F        .byte $7F   ; 
- D 1 - I - 0x00AAE2 02:AAD2: 83        .byte $83   ; 
- D 1 - I - 0x00AAE3 02:AAD3: 7F        .byte $7F   ; 
- D 1 - I - 0x00AAE4 02:AAD4: 84        .byte $84   ; 
- D 1 - I - 0x00AAE5 02:AAD5: 27        .byte $27   ; 
- D 1 - I - 0x00AAE6 02:AAD6: 28        .byte $28   ; 
- D 1 - I - 0x00AAE7 02:AAD7: 8A        .byte $8A   ; 
- D 1 - I - 0x00AAE8 02:AAD8: 20        .byte $20   ; 
- D 1 - I - 0x00AAE9 02:AAD9: 84        .byte $84   ; 
- D 1 - I - 0x00AAEA 02:AADA: 20        .byte $20   ; 
- D 1 - I - 0x00AAEB 02:AADB: 88        .byte $88   ; 
- D 1 - I - 0x00AAEC 02:AADC: 7F        .byte $7F   ; 
- D 1 - I - 0x00AAED 02:AADD: 8A        .byte $8A   ; 
- D 1 - I - 0x00AAEE 02:AADE: 20        .byte $20   ; 
- D 1 - I - 0x00AAEF 02:AADF: 84        .byte $84   ; 
- D 1 - I - 0x00AAF0 02:AAE0: 20        .byte $20   ; 
- D 1 - I - 0x00AAF1 02:AAE1: 81        .byte $81   ; 
- D 1 - I - 0x00AAF2 02:AAE2: 7F        .byte $7F   ; 
- D 1 - I - 0x00AAF3 02:AAE3: 83        .byte $83   ; 
- D 1 - I - 0x00AAF4 02:AAE4: 7F        .byte $7F   ; 
- D 1 - I - 0x00AAF5 02:AAE5: 84        .byte $84   ; 
- D 1 - I - 0x00AAF6 02:AAE6: 27        .byte $27   ; 
- D 1 - I - 0x00AAF7 02:AAE7: 28        .byte $28   ; 
- D 1 - I - 0x00AAF8 02:AAE8: 8A        .byte $8A   ; 
- D 1 - I - 0x00AAF9 02:AAE9: 20        .byte $20   ; 
- D 1 - I - 0x00AAFA 02:AAEA: 84        .byte $84   ; 
- D 1 - I - 0x00AAFB 02:AAEB: 20        .byte $20   ; 
- D 1 - I - 0x00AAFC 02:AAEC: 81        .byte $81   ; 
- D 1 - I - 0x00AAFD 02:AAED: 7F        .byte $7F   ; 
- D 1 - I - 0x00AAFE 02:AAEE: 84        .byte $84   ; 
- D 1 - I - 0x00AAFF 02:AAEF: 20        .byte $20   ; 
- D 1 - I - 0x00AB00 02:AAF0: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB01 02:AAF1: 1F        .byte $1F   ; 
- D 1 - I - 0x00AB02 02:AAF2: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB03 02:AAF3: 84        .byte $84   ; 
- D 1 - I - 0x00AB04 02:AAF4: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB05 02:AAF5: 81        .byte $81   ; 
- D 1 - I - 0x00AB06 02:AAF6: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB07 02:AAF7: 83        .byte $83   ; 
- D 1 - I - 0x00AB08 02:AAF8: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB09 02:AAF9: 84        .byte $84   ; 
- D 1 - I - 0x00AB0A 02:AAFA: 25        .byte $25   ; 
- D 1 - I - 0x00AB0B 02:AAFB: 26        .byte $26   ; 
- D 1 - I - 0x00AB0C 02:AAFC: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB0D 02:AAFD: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB0E 02:AAFE: 84        .byte $84   ; 
- D 1 - I - 0x00AB0F 02:AAFF: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB10 02:AB00: 88        .byte $88   ; 
- D 1 - I - 0x00AB11 02:AB01: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB12 02:AB02: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB13 02:AB03: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB14 02:AB04: 84        .byte $84   ; 
- D 1 - I - 0x00AB15 02:AB05: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB16 02:AB06: 81        .byte $81   ; 
- D 1 - I - 0x00AB17 02:AB07: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB18 02:AB08: 83        .byte $83   ; 
- D 1 - I - 0x00AB19 02:AB09: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB1A 02:AB0A: 84        .byte $84   ; 
- D 1 - I - 0x00AB1B 02:AB0B: 25        .byte $25   ; 
- D 1 - I - 0x00AB1C 02:AB0C: 26        .byte $26   ; 
- D 1 - I - 0x00AB1D 02:AB0D: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB1E 02:AB0E: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB1F 02:AB0F: 84        .byte $84   ; 
- D 1 - I - 0x00AB20 02:AB10: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB21 02:AB11: 81        .byte $81   ; 
- D 1 - I - 0x00AB22 02:AB12: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB23 02:AB13: 84        .byte $84   ; 
- D 1 - I - 0x00AB24 02:AB14: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB25 02:AB15: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB26 02:AB16: 1F        .byte $1F   ; 
- D 1 - I - 0x00AB27 02:AB17: CF        .byte $CF   ; 
- - - - - - 0x00AB28 02:AB18: CF        .byte $CF   ; 
- - - - - - 0x00AB29 02:AB19: FF        .byte $FF   ; 



ch_0A_AB1A_01:
- D 1 - I - 0x00AB2A 02:AB1A: E1        .byte $E1   ; 
- D 1 - I - 0x00AB2B 02:AB1B: 4E AA     .word off_E1_AA4E
- D 1 - I - 0x00AB2D 02:AB1D: 84        .byte $84   ; 
- D 1 - I - 0x00AB2E 02:AB1E: 36        .byte $36   ; 
- D 1 - I - 0x00AB2F 02:AB1F: 36        .byte $36   ; 
- D 1 - I - 0x00AB30 02:AB20: 36        .byte $36   ; 
- D 1 - I - 0x00AB31 02:AB21: 36        .byte $36   ; 
- D 1 - I - 0x00AB32 02:AB22: 2F        .byte $2F   ; 
- D 1 - I - 0x00AB33 02:AB23: 2F        .byte $2F   ; 
- D 1 - I - 0x00AB34 02:AB24: 2F        .byte $2F   ; 
- D 1 - I - 0x00AB35 02:AB25: 2F        .byte $2F   ; 
- D 1 - I - 0x00AB36 02:AB26: 83        .byte $83   ; 
- D 1 - I - 0x00AB37 02:AB27: 2C        .byte $2C   ; 
- D 1 - I - 0x00AB38 02:AB28: 2C        .byte $2C   ; 
- D 1 - I - 0x00AB39 02:AB29: 82        .byte $82   ; 
- D 1 - I - 0x00AB3A 02:AB2A: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB3B 02:AB2B: CA        .byte $CA   ; 
- D 1 - I - 0x00AB3C 02:AB2C: C2        .byte $C2   ; 
- D 1 - I - 0x00AB3D 02:AB2D: 82        .byte $82   ; 
- D 1 - I - 0x00AB3E 02:AB2E: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB3F 02:AB2F: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB40 02:AB30: 28        .byte $28   ; 
- D 1 - I - 0x00AB41 02:AB31: 84        .byte $84   ; 
- D 1 - I - 0x00AB42 02:AB32: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB43 02:AB33: 83        .byte $83   ; 
- D 1 - I - 0x00AB44 02:AB34: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB45 02:AB35: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB46 02:AB36: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB47 02:AB37: 28        .byte $28   ; 
- D 1 - I - 0x00AB48 02:AB38: 84        .byte $84   ; 
- D 1 - I - 0x00AB49 02:AB39: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB4A 02:AB3A: 82        .byte $82   ; 
- D 1 - I - 0x00AB4B 02:AB3B: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB4C 02:AB3C: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB4D 02:AB3D: 28        .byte $28   ; 
- D 1 - I - 0x00AB4E 02:AB3E: 84        .byte $84   ; 
- D 1 - I - 0x00AB4F 02:AB3F: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB50 02:AB40: 83        .byte $83   ; 
- D 1 - I - 0x00AB51 02:AB41: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB52 02:AB42: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB53 02:AB43: 28        .byte $28   ; 
- D 1 - I - 0x00AB54 02:AB44: 28        .byte $28   ; 
- D 1 - I - 0x00AB55 02:AB45: 82        .byte $82   ; 
- D 1 - I - 0x00AB56 02:AB46: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB57 02:AB47: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB58 02:AB48: 28        .byte $28   ; 
- D 1 - I - 0x00AB59 02:AB49: 84        .byte $84   ; 
- D 1 - I - 0x00AB5A 02:AB4A: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB5B 02:AB4B: 83        .byte $83   ; 
- D 1 - I - 0x00AB5C 02:AB4C: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB5D 02:AB4D: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB5E 02:AB4E: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB5F 02:AB4F: 28        .byte $28   ; 
- D 1 - I - 0x00AB60 02:AB50: 84        .byte $84   ; 
- D 1 - I - 0x00AB61 02:AB51: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB62 02:AB52: 82        .byte $82   ; 
- D 1 - I - 0x00AB63 02:AB53: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB64 02:AB54: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB65 02:AB55: 28        .byte $28   ; 
- D 1 - I - 0x00AB66 02:AB56: 84        .byte $84   ; 
- D 1 - I - 0x00AB67 02:AB57: 1E        .byte $1E   ; 
- D 1 - I - 0x00AB68 02:AB58: 83        .byte $83   ; 
- D 1 - I - 0x00AB69 02:AB59: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB6A 02:AB5A: 1C        .byte $1C   ; 
- D 1 - I - 0x00AB6B 02:AB5B: 84        .byte $84   ; 
- D 1 - I - 0x00AB6C 02:AB5C: 28        .byte $28   ; 
- D 1 - I - 0x00AB6D 02:AB5D: 28        .byte $28   ; 
- D 1 - I - 0x00AB6E 02:AB5E: 28        .byte $28   ; 
- D 1 - I - 0x00AB6F 02:AB5F: 28        .byte $28   ; 
- D 1 - I - 0x00AB70 02:AB60: CF        .byte $CF   ; 
- D 1 - I - 0x00AB71 02:AB61: CF        .byte $CF   ; 
- - - - - - 0x00AB72 02:AB62: FF        .byte $FF   ; 



ch_0A_AB63_02:
- D 1 - I - 0x00AB73 02:AB63: E2        .byte $E2   ; 
- D 1 - I - 0x00AB74 02:AB64: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00AB76 02:AB66: 80        .byte $80   ; 
- D 1 - I - 0x00AB77 02:AB67: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB78 02:AB68: CA        .byte $CA   ; 
- D 1 - I - 0x00AB79 02:AB69: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB7A 02:AB6A: 20        .byte $20   ; 
- D 1 - I - 0x00AB7B 02:AB6B: 84        .byte $84   ; 
- D 1 - I - 0x00AB7C 02:AB6C: 20        .byte $20   ; 
- D 1 - I - 0x00AB7D 02:AB6D: 81        .byte $81   ; 
- D 1 - I - 0x00AB7E 02:AB6E: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB7F 02:AB6F: 83        .byte $83   ; 
- D 1 - I - 0x00AB80 02:AB70: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB81 02:AB71: 84        .byte $84   ; 
- D 1 - I - 0x00AB82 02:AB72: 27        .byte $27   ; 
- D 1 - I - 0x00AB83 02:AB73: 28        .byte $28   ; 
- D 1 - I - 0x00AB84 02:AB74: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB85 02:AB75: 20        .byte $20   ; 
- D 1 - I - 0x00AB86 02:AB76: 84        .byte $84   ; 
- D 1 - I - 0x00AB87 02:AB77: 20        .byte $20   ; 
- D 1 - I - 0x00AB88 02:AB78: 88        .byte $88   ; 
- D 1 - I - 0x00AB89 02:AB79: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB8A 02:AB7A: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB8B 02:AB7B: 20        .byte $20   ; 
- D 1 - I - 0x00AB8C 02:AB7C: 84        .byte $84   ; 
- D 1 - I - 0x00AB8D 02:AB7D: 20        .byte $20   ; 
- D 1 - I - 0x00AB8E 02:AB7E: 81        .byte $81   ; 
- D 1 - I - 0x00AB8F 02:AB7F: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB90 02:AB80: 83        .byte $83   ; 
- D 1 - I - 0x00AB91 02:AB81: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB92 02:AB82: 84        .byte $84   ; 
- D 1 - I - 0x00AB93 02:AB83: 27        .byte $27   ; 
- D 1 - I - 0x00AB94 02:AB84: 28        .byte $28   ; 
- D 1 - I - 0x00AB95 02:AB85: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB96 02:AB86: 20        .byte $20   ; 
- D 1 - I - 0x00AB97 02:AB87: 84        .byte $84   ; 
- D 1 - I - 0x00AB98 02:AB88: 20        .byte $20   ; 
- D 1 - I - 0x00AB99 02:AB89: 81        .byte $81   ; 
- D 1 - I - 0x00AB9A 02:AB8A: 7F        .byte $7F   ; 
- D 1 - I - 0x00AB9B 02:AB8B: 84        .byte $84   ; 
- D 1 - I - 0x00AB9C 02:AB8C: 20        .byte $20   ; 
- D 1 - I - 0x00AB9D 02:AB8D: 8A        .byte $8A   ; 
- D 1 - I - 0x00AB9E 02:AB8E: 1F        .byte $1F   ; 
- D 1 - I - 0x00AB9F 02:AB8F: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABA0 02:AB90: 84        .byte $84   ; 
- D 1 - I - 0x00ABA1 02:AB91: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABA2 02:AB92: 81        .byte $81   ; 
- D 1 - I - 0x00ABA3 02:AB93: 7F        .byte $7F   ; 
- D 1 - I - 0x00ABA4 02:AB94: 83        .byte $83   ; 
- D 1 - I - 0x00ABA5 02:AB95: 7F        .byte $7F   ; 
- D 1 - I - 0x00ABA6 02:AB96: 84        .byte $84   ; 
- D 1 - I - 0x00ABA7 02:AB97: 25        .byte $25   ; 
- D 1 - I - 0x00ABA8 02:AB98: 26        .byte $26   ; 
- D 1 - I - 0x00ABA9 02:AB99: 8A        .byte $8A   ; 
- D 1 - I - 0x00ABAA 02:AB9A: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABAB 02:AB9B: 84        .byte $84   ; 
- D 1 - I - 0x00ABAC 02:AB9C: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABAD 02:AB9D: 88        .byte $88   ; 
- D 1 - I - 0x00ABAE 02:AB9E: 7F        .byte $7F   ; 
- D 1 - I - 0x00ABAF 02:AB9F: 8A        .byte $8A   ; 
- D 1 - I - 0x00ABB0 02:ABA0: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABB1 02:ABA1: 84        .byte $84   ; 
- D 1 - I - 0x00ABB2 02:ABA2: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABB3 02:ABA3: 81        .byte $81   ; 
- D 1 - I - 0x00ABB4 02:ABA4: 7F        .byte $7F   ; 
- D 1 - I - 0x00ABB5 02:ABA5: 83        .byte $83   ; 
- D 1 - I - 0x00ABB6 02:ABA6: 7F        .byte $7F   ; 
- D 1 - I - 0x00ABB7 02:ABA7: 84        .byte $84   ; 
- D 1 - I - 0x00ABB8 02:ABA8: 25        .byte $25   ; 
- D 1 - I - 0x00ABB9 02:ABA9: 26        .byte $26   ; 
- D 1 - I - 0x00ABBA 02:ABAA: 8A        .byte $8A   ; 
- D 1 - I - 0x00ABBB 02:ABAB: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABBC 02:ABAC: 84        .byte $84   ; 
- D 1 - I - 0x00ABBD 02:ABAD: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABBE 02:ABAE: 81        .byte $81   ; 
- D 1 - I - 0x00ABBF 02:ABAF: 7F        .byte $7F   ; 
- D 1 - I - 0x00ABC0 02:ABB0: 84        .byte $84   ; 
- D 1 - I - 0x00ABC1 02:ABB1: 1E        .byte $1E   ; 
- D 1 - I - 0x00ABC2 02:ABB2: 8A        .byte $8A   ; 
- D 1 - I - 0x00ABC3 02:ABB3: 1F        .byte $1F   ; 
- D 1 - I - 0x00ABC4 02:ABB4: CF        .byte $CF   ; 
- - - - - - 0x00ABC5 02:ABB5: CF        .byte $CF   ; 
- - - - - - 0x00ABC6 02:ABB6: FF        .byte $FF   ; 



ch_0A_ABB7_03:
- D 1 - I - 0x00ABC7 02:ABB7: E3        .byte $E3   ; 
- D 1 - I - 0x00ABC8 02:ABB8: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00ABCA 02:ABBA: 84        .byte $84   ; 
- D 1 - I - 0x00ABCB 02:ABBB: 32        .byte $32   ; 
- D 1 - I - 0x00ABCC 02:ABBC: 32        .byte $32   ; 
- D 1 - I - 0x00ABCD 02:ABBD: 32        .byte $32   ; 
- D 1 - I - 0x00ABCE 02:ABBE: 32        .byte $32   ; 
- D 1 - I - 0x00ABCF 02:ABBF: 32        .byte $32   ; 
- D 1 - I - 0x00ABD0 02:ABC0: 32        .byte $32   ; 
- D 1 - I - 0x00ABD1 02:ABC1: 32        .byte $32   ; 
- D 1 - I - 0x00ABD2 02:ABC2: 32        .byte $32   ; 
- D 1 - I - 0x00ABD3 02:ABC3: 32        .byte $32   ; 
- D 1 - I - 0x00ABD4 02:ABC4: 32        .byte $32   ; 
- D 1 - I - 0x00ABD5 02:ABC5: 32        .byte $32   ; 
- D 1 - I - 0x00ABD6 02:ABC6: 32        .byte $32   ; 
- D 1 - I - 0x00ABD7 02:ABC7: 82        .byte $82   ; 
- D 1 - I - 0x00ABD8 02:ABC8: 33        .byte $33   ; 
- D 1 - I - 0x00ABD9 02:ABC9: CA        .byte $CA   ; 
- D 1 - I - 0x00ABDA 02:ABCA: C2        .byte $C2   ; 
- D 1 - I - 0x00ABDB 02:ABCB: C3        .byte $C3   ; 
- D 1 - I - 0x00ABDC 02:ABCC: 84        .byte $84   ; 
- D 1 - I - 0x00ABDD 02:ABCD: 32        .byte $32   ; 
- D 1 - I - 0x00ABDE 02:ABCE: 32        .byte $32   ; 
- D 1 - I - 0x00ABDF 02:ABCF: 32        .byte $32   ; 
- D 1 - I - 0x00ABE0 02:ABD0: 32        .byte $32   ; 
- D 1 - I - 0x00ABE1 02:ABD1: 32        .byte $32   ; 
- D 1 - I - 0x00ABE2 02:ABD2: 32        .byte $32   ; 
- D 1 - I - 0x00ABE3 02:ABD3: 32        .byte $32   ; 
- D 1 - I - 0x00ABE4 02:ABD4: 32        .byte $32   ; 
- D 1 - I - 0x00ABE5 02:ABD5: 32        .byte $32   ; 
- D 1 - I - 0x00ABE6 02:ABD6: 32        .byte $32   ; 
- D 1 - I - 0x00ABE7 02:ABD7: 32        .byte $32   ; 
- D 1 - I - 0x00ABE8 02:ABD8: 32        .byte $32   ; 
- D 1 - I - 0x00ABE9 02:ABD9: 32        .byte $32   ; 
- D 1 - I - 0x00ABEA 02:ABDA: 32        .byte $32   ; 
- D 1 - I - 0x00ABEB 02:ABDB: 32        .byte $32   ; 
- D 1 - I - 0x00ABEC 02:ABDC: 32        .byte $32   ; 
- D 1 - I - 0x00ABED 02:ABDD: CF        .byte $CF   ; 
- D 1 - I - 0x00ABEE 02:ABDE: 84        .byte $84   ; 
- D 1 - I - 0x00ABEF 02:ABDF: 32        .byte $32   ; 
- D 1 - I - 0x00ABF0 02:ABE0: 32        .byte $32   ; 
- D 1 - I - 0x00ABF1 02:ABE1: 32        .byte $32   ; 
- D 1 - I - 0x00ABF2 02:ABE2: 32        .byte $32   ; 
- D 1 - I - 0x00ABF3 02:ABE3: 32        .byte $32   ; 
- D 1 - I - 0x00ABF4 02:ABE4: 32        .byte $32   ; 
- D 1 - I - 0x00ABF5 02:ABE5: 32        .byte $32   ; 
- D 1 - I - 0x00ABF6 02:ABE6: 32        .byte $32   ; 
- D 1 - I - 0x00ABF7 02:ABE7: 32        .byte $32   ; 
- D 1 - I - 0x00ABF8 02:ABE8: 32        .byte $32   ; 
- D 1 - I - 0x00ABF9 02:ABE9: 32        .byte $32   ; 
- D 1 - I - 0x00ABFA 02:ABEA: 32        .byte $32   ; 
- D 1 - I - 0x00ABFB 02:ABEB: 32        .byte $32   ; 
- D 1 - I - 0x00ABFC 02:ABEC: 32        .byte $32   ; 
- D 1 - I - 0x00ABFD 02:ABED: 83        .byte $83   ; 
- D 1 - I - 0x00ABFE 02:ABEE: 28        .byte $28   ; 
- D 1 - I - 0x00ABFF 02:ABEF: CF        .byte $CF   ; 
- D 1 - I - 0x00AC00 02:ABF0: CF        .byte $CF   ; 
- - - - - - 0x00AC01 02:ABF1: FF        .byte $FF   ; 



_music_ABF2_04:
_music_ABF2_06:
_music_ABF2_0B:
_music_ABF2_0C:
_music_ABF2_0D:
_music_ABF2_0E:
_music_ABF2_15_stage_is_complete:
- D 1 - I - 0x00AC02 02:ABF2: 00        .byte $00   ; 
- D 1 - I - 0x00AC03 02:ABF3: FE AB     .word ch_15_ABFE_00
- D 1 - I - 0x00AC05 02:ABF5: 1C AC     .word ch_15_AC1C_01
- D 1 - I - 0x00AC07 02:ABF7: 3C AC     .word ch_15_AC3C_02
- D 1 - I - 0x00AC09 02:ABF9: 5F AC     .word ch_15_AC5F_03
- - - - - - 0x00AC0B 02:ABFB: 00 00     .word $0000    ; 04
- D 1 - I - 0x00AC0D 02:ABFD: 19        .byte $19   ; 



ch_15_ABFE_00:
- D 1 - I - 0x00AC0E 02:ABFE: E0        .byte $E0   ; 
- D 1 - I - 0x00AC0F 02:ABFF: 3E A9     .word off_E0_A93E
- D 1 - I - 0x00AC11 02:AC01: 83        .byte $83   ; 
- D 1 - I - 0x00AC12 02:AC02: 32        .byte $32   ; 
- D 1 - I - 0x00AC13 02:AC03: 34        .byte $34   ; 
- D 1 - I - 0x00AC14 02:AC04: 36        .byte $36   ; 
- D 1 - I - 0x00AC15 02:AC05: 34        .byte $34   ; 
- D 1 - I - 0x00AC16 02:AC06: 32        .byte $32   ; 
- D 1 - I - 0x00AC17 02:AC07: 31        .byte $31   ; 
- D 1 - I - 0x00AC18 02:AC08: 3E        .byte $3E   ; 
- D 1 - I - 0x00AC19 02:AC09: 40        .byte $40   ; 
- D 1 - I - 0x00AC1A 02:AC0A: 42        .byte $42   ; 
- D 1 - I - 0x00AC1B 02:AC0B: 40        .byte $40   ; 
- D 1 - I - 0x00AC1C 02:AC0C: 3E        .byte $3E   ; 
- D 1 - I - 0x00AC1D 02:AC0D: 3D        .byte $3D   ; 
- D 1 - I - 0x00AC1E 02:AC0E: 32        .byte $32   ; 
- D 1 - I - 0x00AC1F 02:AC0F: 34        .byte $34   ; 
- D 1 - I - 0x00AC20 02:AC10: 36        .byte $36   ; 
- D 1 - I - 0x00AC21 02:AC11: 38        .byte $38   ; 
- D 1 - I - 0x00AC22 02:AC12: 39        .byte $39   ; 
- D 1 - I - 0x00AC23 02:AC13: 3B        .byte $3B   ; 
- D 1 - I - 0x00AC24 02:AC14: 39        .byte $39   ; 
- D 1 - I - 0x00AC25 02:AC15: 82        .byte $82   ; 
- D 1 - I - 0x00AC26 02:AC16: 7F        .byte $7F   ; 
- D 1 - I - 0x00AC27 02:AC17: 83        .byte $83   ; 
- D 1 - I - 0x00AC28 02:AC18: 45        .byte $45   ; 
- D 1 - I - 0x00AC29 02:AC19: 82        .byte $82   ; 
- D 1 - I - 0x00AC2A 02:AC1A: 7F        .byte $7F   ; 
- D 1 - I - 0x00AC2B 02:AC1B: FF        .byte $FF   ; 



ch_15_AC1C_01:
- D 1 - I - 0x00AC2C 02:AC1C: E1        .byte $E1   ; 
- D 1 - I - 0x00AC2D 02:AC1D: 82 A9     .word off_E1_A982
- D 1 - I - 0x00AC2F 02:AC1F: 8A        .byte $8A   ; 
- D 1 - I - 0x00AC30 02:AC20: 7F        .byte $7F   ; 
- D 1 - I - 0x00AC31 02:AC21: 83        .byte $83   ; 
- D 1 - I - 0x00AC32 02:AC22: 32        .byte $32   ; 
- D 1 - I - 0x00AC33 02:AC23: 34        .byte $34   ; 
- D 1 - I - 0x00AC34 02:AC24: 36        .byte $36   ; 
- D 1 - I - 0x00AC35 02:AC25: 34        .byte $34   ; 
- D 1 - I - 0x00AC36 02:AC26: 32        .byte $32   ; 
- D 1 - I - 0x00AC37 02:AC27: 31        .byte $31   ; 
- D 1 - I - 0x00AC38 02:AC28: 3E        .byte $3E   ; 
- D 1 - I - 0x00AC39 02:AC29: 40        .byte $40   ; 
- D 1 - I - 0x00AC3A 02:AC2A: 42        .byte $42   ; 
- D 1 - I - 0x00AC3B 02:AC2B: 40        .byte $40   ; 
- D 1 - I - 0x00AC3C 02:AC2C: 3E        .byte $3E   ; 
- D 1 - I - 0x00AC3D 02:AC2D: 3D        .byte $3D   ; 
- D 1 - I - 0x00AC3E 02:AC2E: 32        .byte $32   ; 
- D 1 - I - 0x00AC3F 02:AC2F: 34        .byte $34   ; 
- D 1 - I - 0x00AC40 02:AC30: 36        .byte $36   ; 
- D 1 - I - 0x00AC41 02:AC31: 38        .byte $38   ; 
- D 1 - I - 0x00AC42 02:AC32: 39        .byte $39   ; 
- D 1 - I - 0x00AC43 02:AC33: 3B        .byte $3B   ; 
- D 1 - I - 0x00AC44 02:AC34: 39        .byte $39   ; 
- D 1 - I - 0x00AC45 02:AC35: 82        .byte $82   ; 
- D 1 - I - 0x00AC46 02:AC36: 7F        .byte $7F   ; 
- D 1 - I - 0x00AC47 02:AC37: 83        .byte $83   ; 
- D 1 - I - 0x00AC48 02:AC38: 45        .byte $45   ; 
- D 1 - I - 0x00AC49 02:AC39: 82        .byte $82   ; 
- D 1 - I - 0x00AC4A 02:AC3A: 7F        .byte $7F   ; 
- D 1 - I - 0x00AC4B 02:AC3B: FF        .byte $FF   ; 



ch_15_AC3C_02:
- D 1 - I - 0x00AC4C 02:AC3C: E2        .byte $E2   ; 
- D 1 - I - 0x00AC4D 02:AC3D: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00AC4F 02:AC3F: 82        .byte $82   ; 
- D 1 - I - 0x00AC50 02:AC40: 28        .byte $28   ; 
- D 1 - I - 0x00AC51 02:AC41: 83        .byte $83   ; 
- D 1 - I - 0x00AC52 02:AC42: 28        .byte $28   ; 
- D 1 - I - 0x00AC53 02:AC43: 82        .byte $82   ; 
- D 1 - I - 0x00AC54 02:AC44: 28        .byte $28   ; 
- D 1 - I - 0x00AC55 02:AC45: 83        .byte $83   ; 
- D 1 - I - 0x00AC56 02:AC46: 28        .byte $28   ; 
- D 1 - I - 0x00AC57 02:AC47: 82        .byte $82   ; 
- D 1 - I - 0x00AC58 02:AC48: 28        .byte $28   ; 
- D 1 - I - 0x00AC59 02:AC49: 83        .byte $83   ; 
- D 1 - I - 0x00AC5A 02:AC4A: 28        .byte $28   ; 
- D 1 - I - 0x00AC5B 02:AC4B: 82        .byte $82   ; 
- D 1 - I - 0x00AC5C 02:AC4C: 28        .byte $28   ; 
- D 1 - I - 0x00AC5D 02:AC4D: 83        .byte $83   ; 
- D 1 - I - 0x00AC5E 02:AC4E: 28        .byte $28   ; 
- D 1 - I - 0x00AC5F 02:AC4F: 82        .byte $82   ; 
- D 1 - I - 0x00AC60 02:AC50: 28        .byte $28   ; 
- D 1 - I - 0x00AC61 02:AC51: 83        .byte $83   ; 
- D 1 - I - 0x00AC62 02:AC52: 28        .byte $28   ; 
- D 1 - I - 0x00AC63 02:AC53: 82        .byte $82   ; 
- D 1 - I - 0x00AC64 02:AC54: 28        .byte $28   ; 
- D 1 - I - 0x00AC65 02:AC55: 83        .byte $83   ; 
- D 1 - I - 0x00AC66 02:AC56: 28        .byte $28   ; 
- D 1 - I - 0x00AC67 02:AC57: 21        .byte $21   ; 
- D 1 - I - 0x00AC68 02:AC58: 82        .byte $82   ; 
- D 1 - I - 0x00AC69 02:AC59: 7F        .byte $7F   ; 
- D 1 - I - 0x00AC6A 02:AC5A: 83        .byte $83   ; 
- D 1 - I - 0x00AC6B 02:AC5B: 2D        .byte $2D   ; 
- D 1 - I - 0x00AC6C 02:AC5C: 82        .byte $82   ; 
- D 1 - I - 0x00AC6D 02:AC5D: 7F        .byte $7F   ; 
- D 1 - I - 0x00AC6E 02:AC5E: FF        .byte $FF   ; 



ch_15_AC5F_03:
- D 1 - I - 0x00AC6F 02:AC5F: E3        .byte $E3   ; 
- D 1 - I - 0x00AC70 02:AC60: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00AC72 02:AC62: 82        .byte $82   ; 
- D 1 - I - 0x00AC73 02:AC63: 28        .byte $28   ; 
- D 1 - I - 0x00AC74 02:AC64: 83        .byte $83   ; 
- D 1 - I - 0x00AC75 02:AC65: 28        .byte $28   ; 
- D 1 - I - 0x00AC76 02:AC66: 2A        .byte $2A   ; 
- D 1 - I - 0x00AC77 02:AC67: 2A        .byte $2A   ; 
- D 1 - I - 0x00AC78 02:AC68: 2A        .byte $2A   ; 
- D 1 - I - 0x00AC79 02:AC69: 82        .byte $82   ; 
- D 1 - I - 0x00AC7A 02:AC6A: 28        .byte $28   ; 
- D 1 - I - 0x00AC7B 02:AC6B: 83        .byte $83   ; 
- D 1 - I - 0x00AC7C 02:AC6C: 28        .byte $28   ; 
- D 1 - I - 0x00AC7D 02:AC6D: 2D        .byte $2D   ; 
- D 1 - I - 0x00AC7E 02:AC6E: 2D        .byte $2D   ; 
- D 1 - I - 0x00AC7F 02:AC6F: 2D        .byte $2D   ; 
- D 1 - I - 0x00AC80 02:AC70: 82        .byte $82   ; 
- D 1 - I - 0x00AC81 02:AC71: 28        .byte $28   ; 
- D 1 - I - 0x00AC82 02:AC72: 83        .byte $83   ; 
- D 1 - I - 0x00AC83 02:AC73: 28        .byte $28   ; 
- D 1 - I - 0x00AC84 02:AC74: 30        .byte $30   ; 
- D 1 - I - 0x00AC85 02:AC75: 30        .byte $30   ; 
- D 1 - I - 0x00AC86 02:AC76: 30        .byte $30   ; 
- D 1 - I - 0x00AC87 02:AC77: 89        .byte $89   ; 
- D 1 - I - 0x00AC88 02:AC78: 28        .byte $28   ; 
- D 1 - I - 0x00AC89 02:AC79: 30        .byte $30   ; 
- D 1 - I - 0x00AC8A 02:AC7A: FF        .byte $FF   ; 



_music_AC7B_07:
- D 1 - I - 0x00AC8B 02:AC7B: 01        .byte $01   ; 
- D 1 - I - 0x00AC8C 02:AC7C: 87 AC     .word ch_07_AC87_00
- D 1 - I - 0x00AC8E 02:AC7E: D0 AC     .word ch_07_ACD0_01
- D 1 - I - 0x00AC90 02:AC80: 00 00     .word $0000    ; 02
- D 1 - I - 0x00AC92 02:AC82: 00 00     .word $0000    ; 03
- - - - - - 0x00AC94 02:AC84: 00 00     .word $0000    ; 04
- D 1 - I - 0x00AC96 02:AC86: 20        .byte $20   ; 



ch_07_AC87_00:
- D 1 - I - 0x00AC97 02:AC87: E0        .byte $E0   ; 
- D 1 - I - 0x00AC98 02:AC88: 3E A9     .word off_E0_A93E
- D 1 - I - 0x00AC9A 02:AC8A: CA        .byte $CA   ; 
- D 1 - I - 0x00AC9B 02:AC8B: CA        .byte $CA   ; 
- D 1 - I - 0x00AC9C 02:AC8C: 83        .byte $83   ; 
- D 1 - I - 0x00AC9D 02:AC8D: 2C        .byte $2C   ; 
- D 1 - I - 0x00AC9E 02:AC8E: 2F        .byte $2F   ; 
- D 1 - I - 0x00AC9F 02:AC8F: 33        .byte $33   ; 
- D 1 - I - 0x00ACA0 02:AC90: 36        .byte $36   ; 
- D 1 - I - 0x00ACA1 02:AC91: 38        .byte $38   ; 
- D 1 - I - 0x00ACA2 02:AC92: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACA3 02:AC93: 3F        .byte $3F   ; 
- D 1 - I - 0x00ACA4 02:AC94: 42        .byte $42   ; 
- D 1 - I - 0x00ACA5 02:AC95: 44        .byte $44   ; 
- D 1 - I - 0x00ACA6 02:AC96: 42        .byte $42   ; 
- D 1 - I - 0x00ACA7 02:AC97: 3F        .byte $3F   ; 
- D 1 - I - 0x00ACA8 02:AC98: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACA9 02:AC99: 38        .byte $38   ; 
- D 1 - I - 0x00ACAA 02:AC9A: 36        .byte $36   ; 
- D 1 - I - 0x00ACAB 02:AC9B: 33        .byte $33   ; 
- D 1 - I - 0x00ACAC 02:AC9C: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACAD 02:AC9D: 2B        .byte $2B   ; 
- D 1 - I - 0x00ACAE 02:AC9E: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACAF 02:AC9F: 32        .byte $32   ; 
- D 1 - I - 0x00ACB0 02:ACA0: 36        .byte $36   ; 
- D 1 - I - 0x00ACB1 02:ACA1: 37        .byte $37   ; 
- D 1 - I - 0x00ACB2 02:ACA2: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACB3 02:ACA3: 3E        .byte $3E   ; 
- D 1 - I - 0x00ACB4 02:ACA4: 42        .byte $42   ; 
- D 1 - I - 0x00ACB5 02:ACA5: 43        .byte $43   ; 
- D 1 - I - 0x00ACB6 02:ACA6: 42        .byte $42   ; 
- D 1 - I - 0x00ACB7 02:ACA7: 3E        .byte $3E   ; 
- D 1 - I - 0x00ACB8 02:ACA8: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACB9 02:ACA9: 37        .byte $37   ; 
- D 1 - I - 0x00ACBA 02:ACAA: 36        .byte $36   ; 
- D 1 - I - 0x00ACBB 02:ACAB: 32        .byte $32   ; 
- D 1 - I - 0x00ACBC 02:ACAC: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACBD 02:ACAD: 2D        .byte $2D   ; 
- D 1 - I - 0x00ACBE 02:ACAE: 31        .byte $31   ; 
- D 1 - I - 0x00ACBF 02:ACAF: 34        .byte $34   ; 
- D 1 - I - 0x00ACC0 02:ACB0: 38        .byte $38   ; 
- D 1 - I - 0x00ACC1 02:ACB1: 39        .byte $39   ; 
- D 1 - I - 0x00ACC2 02:ACB2: 3D        .byte $3D   ; 
- D 1 - I - 0x00ACC3 02:ACB3: 40        .byte $40   ; 
- D 1 - I - 0x00ACC4 02:ACB4: 44        .byte $44   ; 
- D 1 - I - 0x00ACC5 02:ACB5: 2D        .byte $2D   ; 
- D 1 - I - 0x00ACC6 02:ACB6: 30        .byte $30   ; 
- D 1 - I - 0x00ACC7 02:ACB7: 34        .byte $34   ; 
- D 1 - I - 0x00ACC8 02:ACB8: 37        .byte $37   ; 
- D 1 - I - 0x00ACC9 02:ACB9: 39        .byte $39   ; 
- D 1 - I - 0x00ACCA 02:ACBA: 3C        .byte $3C   ; 
- D 1 - I - 0x00ACCB 02:ACBB: 40        .byte $40   ; 
- D 1 - I - 0x00ACCC 02:ACBC: 43        .byte $43   ; 
- D 1 - I - 0x00ACCD 02:ACBD: 2C        .byte $2C   ; 
- D 1 - I - 0x00ACCE 02:ACBE: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACCF 02:ACBF: 33        .byte $33   ; 
- D 1 - I - 0x00ACD0 02:ACC0: 36        .byte $36   ; 
- D 1 - I - 0x00ACD1 02:ACC1: 38        .byte $38   ; 
- D 1 - I - 0x00ACD2 02:ACC2: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACD3 02:ACC3: 3F        .byte $3F   ; 
- D 1 - I - 0x00ACD4 02:ACC4: 42        .byte $42   ; 
- D 1 - I - 0x00ACD5 02:ACC5: 44        .byte $44   ; 
- D 1 - I - 0x00ACD6 02:ACC6: 42        .byte $42   ; 
- D 1 - I - 0x00ACD7 02:ACC7: 3F        .byte $3F   ; 
- D 1 - I - 0x00ACD8 02:ACC8: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACD9 02:ACC9: 38        .byte $38   ; 
- D 1 - I - 0x00ACDA 02:ACCA: 36        .byte $36   ; 
- D 1 - I - 0x00ACDB 02:ACCB: 33        .byte $33   ; 
- D 1 - I - 0x00ACDC 02:ACCC: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACDD 02:ACCD: CF        .byte $CF   ; 
- - - - - - 0x00ACDE 02:ACCE: CF        .byte $CF   ; 
- - - - - - 0x00ACDF 02:ACCF: FF        .byte $FF   ; 



ch_07_ACD0_01:
- D 1 - I - 0x00ACE0 02:ACD0: E1        .byte $E1   ; 
- D 1 - I - 0x00ACE1 02:ACD1: 82 A9     .word off_E1_A982
- D 1 - I - 0x00ACE3 02:ACD3: 8A        .byte $8A   ; 
- D 1 - I - 0x00ACE4 02:ACD4: 7F        .byte $7F   ; 
- D 1 - I - 0x00ACE5 02:ACD5: CA        .byte $CA   ; 
- D 1 - I - 0x00ACE6 02:ACD6: CA        .byte $CA   ; 
- D 1 - I - 0x00ACE7 02:ACD7: 83        .byte $83   ; 
- D 1 - I - 0x00ACE8 02:ACD8: 2C        .byte $2C   ; 
- D 1 - I - 0x00ACE9 02:ACD9: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACEA 02:ACDA: 33        .byte $33   ; 
- D 1 - I - 0x00ACEB 02:ACDB: 36        .byte $36   ; 
- D 1 - I - 0x00ACEC 02:ACDC: 38        .byte $38   ; 
- D 1 - I - 0x00ACED 02:ACDD: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACEE 02:ACDE: 3F        .byte $3F   ; 
- D 1 - I - 0x00ACEF 02:ACDF: 42        .byte $42   ; 
- D 1 - I - 0x00ACF0 02:ACE0: 44        .byte $44   ; 
- D 1 - I - 0x00ACF1 02:ACE1: 42        .byte $42   ; 
- D 1 - I - 0x00ACF2 02:ACE2: 3F        .byte $3F   ; 
- D 1 - I - 0x00ACF3 02:ACE3: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACF4 02:ACE4: 38        .byte $38   ; 
- D 1 - I - 0x00ACF5 02:ACE5: 36        .byte $36   ; 
- D 1 - I - 0x00ACF6 02:ACE6: 33        .byte $33   ; 
- D 1 - I - 0x00ACF7 02:ACE7: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACF8 02:ACE8: 2B        .byte $2B   ; 
- D 1 - I - 0x00ACF9 02:ACE9: 2F        .byte $2F   ; 
- D 1 - I - 0x00ACFA 02:ACEA: 32        .byte $32   ; 
- D 1 - I - 0x00ACFB 02:ACEB: 36        .byte $36   ; 
- D 1 - I - 0x00ACFC 02:ACEC: 37        .byte $37   ; 
- D 1 - I - 0x00ACFD 02:ACED: 3B        .byte $3B   ; 
- D 1 - I - 0x00ACFE 02:ACEE: 3E        .byte $3E   ; 
- D 1 - I - 0x00ACFF 02:ACEF: 42        .byte $42   ; 
- D 1 - I - 0x00AD00 02:ACF0: 43        .byte $43   ; 
- D 1 - I - 0x00AD01 02:ACF1: 42        .byte $42   ; 
- D 1 - I - 0x00AD02 02:ACF2: 3E        .byte $3E   ; 
- D 1 - I - 0x00AD03 02:ACF3: 3B        .byte $3B   ; 
- D 1 - I - 0x00AD04 02:ACF4: 37        .byte $37   ; 
- D 1 - I - 0x00AD05 02:ACF5: 36        .byte $36   ; 
- D 1 - I - 0x00AD06 02:ACF6: 32        .byte $32   ; 
- D 1 - I - 0x00AD07 02:ACF7: 2F        .byte $2F   ; 
- D 1 - I - 0x00AD08 02:ACF8: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD09 02:ACF9: 31        .byte $31   ; 
- D 1 - I - 0x00AD0A 02:ACFA: 34        .byte $34   ; 
- D 1 - I - 0x00AD0B 02:ACFB: 38        .byte $38   ; 
- D 1 - I - 0x00AD0C 02:ACFC: 39        .byte $39   ; 
- D 1 - I - 0x00AD0D 02:ACFD: 3D        .byte $3D   ; 
- D 1 - I - 0x00AD0E 02:ACFE: 40        .byte $40   ; 
- D 1 - I - 0x00AD0F 02:ACFF: 44        .byte $44   ; 
- D 1 - I - 0x00AD10 02:AD00: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD11 02:AD01: 30        .byte $30   ; 
- D 1 - I - 0x00AD12 02:AD02: 34        .byte $34   ; 
- D 1 - I - 0x00AD13 02:AD03: 37        .byte $37   ; 
- D 1 - I - 0x00AD14 02:AD04: 39        .byte $39   ; 
- D 1 - I - 0x00AD15 02:AD05: 3C        .byte $3C   ; 
- D 1 - I - 0x00AD16 02:AD06: 40        .byte $40   ; 
- D 1 - I - 0x00AD17 02:AD07: 43        .byte $43   ; 
- D 1 - I - 0x00AD18 02:AD08: 2C        .byte $2C   ; 
- D 1 - I - 0x00AD19 02:AD09: 2F        .byte $2F   ; 
- D 1 - I - 0x00AD1A 02:AD0A: 33        .byte $33   ; 
- D 1 - I - 0x00AD1B 02:AD0B: 36        .byte $36   ; 
- D 1 - I - 0x00AD1C 02:AD0C: 38        .byte $38   ; 
- D 1 - I - 0x00AD1D 02:AD0D: 3B        .byte $3B   ; 
- D 1 - I - 0x00AD1E 02:AD0E: 3F        .byte $3F   ; 
- D 1 - I - 0x00AD1F 02:AD0F: 42        .byte $42   ; 
- D 1 - I - 0x00AD20 02:AD10: 44        .byte $44   ; 
- D 1 - I - 0x00AD21 02:AD11: 42        .byte $42   ; 
- D 1 - I - 0x00AD22 02:AD12: 3F        .byte $3F   ; 
- D 1 - I - 0x00AD23 02:AD13: 3B        .byte $3B   ; 
- D 1 - I - 0x00AD24 02:AD14: 38        .byte $38   ; 
- D 1 - I - 0x00AD25 02:AD15: 36        .byte $36   ; 
- D 1 - I - 0x00AD26 02:AD16: 33        .byte $33   ; 
- D 1 - I - 0x00AD27 02:AD17: 2F        .byte $2F   ; 
- D 1 - I - 0x00AD28 02:AD18: CF        .byte $CF   ; 
- - - - - - 0x00AD29 02:AD19: CF        .byte $CF   ; 
- - - - - - 0x00AD2A 02:AD1A: FF        .byte $FF   ; 



_music_AD1B_08_pipes_stage_is_complete:
- D 1 - I - 0x00AD2B 02:AD1B: 00        .byte $00   ; 
- D 1 - I - 0x00AD2C 02:AD1C: 27 AD     .word ch_08_AD27_00
- D 1 - I - 0x00AD2E 02:AD1E: 41 AD     .word ch_08_AD41_01
- D 1 - I - 0x00AD30 02:AD20: 80 AD     .word ch_08_AD80_02
- D 1 - I - 0x00AD32 02:AD22: 9A AD     .word ch_08_AD9A_03
- - - - - - 0x00AD34 02:AD24: 00 00     .word $0000    ; 04
- D 1 - I - 0x00AD36 02:AD26: 10        .byte $10   ; 



ch_08_AD27_00:
- D 1 - I - 0x00AD37 02:AD27: E0        .byte $E0   ; 
- D 1 - I - 0x00AD38 02:AD28: 0A AA     .word off_E0_AA0A
- D 1 - I - 0x00AD3A 02:AD2A: 81        .byte $81   ; 
- D 1 - I - 0x00AD3B 02:AD2B: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD3C 02:AD2C: 82        .byte $82   ; 
- D 1 - I - 0x00AD3D 02:AD2D: 2F        .byte $2F   ; 
- D 1 - I - 0x00AD3E 02:AD2E: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD3F 02:AD2F: 8A        .byte $8A   ; 
- D 1 - I - 0x00AD40 02:AD30: 31        .byte $31   ; 
- D 1 - I - 0x00AD41 02:AD31: 2F        .byte $2F   ; 
- D 1 - I - 0x00AD42 02:AD32: 83        .byte $83   ; 
- D 1 - I - 0x00AD43 02:AD33: 31        .byte $31   ; 
- D 1 - I - 0x00AD44 02:AD34: 82        .byte $82   ; 
- D 1 - I - 0x00AD45 02:AD35: 32        .byte $32   ; 
- D 1 - I - 0x00AD46 02:AD36: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD47 02:AD37: 8A        .byte $8A   ; 
- D 1 - I - 0x00AD48 02:AD38: 34        .byte $34   ; 
- D 1 - I - 0x00AD49 02:AD39: 84        .byte $84   ; 
- D 1 - I - 0x00AD4A 02:AD3A: 32        .byte $32   ; 
- D 1 - I - 0x00AD4B 02:AD3B: 83        .byte $83   ; 
- D 1 - I - 0x00AD4C 02:AD3C: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD4D 02:AD3D: 7E        .byte $7E   ; 
- D 1 - I - 0x00AD4E 02:AD3E: 80        .byte $80   ; 
- D 1 - I - 0x00AD4F 02:AD3F: 36        .byte $36   ; 
- D 1 - I - 0x00AD50 02:AD40: FF        .byte $FF   ; 



ch_08_AD41_01:
- D 1 - I - 0x00AD51 02:AD41: E1        .byte $E1   ; 
- D 1 - I - 0x00AD52 02:AD42: 4E AA     .word off_E1_AA4E
- D 1 - I - 0x00AD54 02:AD44: E1        .byte $E1   ; 
- D 1 - I - 0x00AD55 02:AD45: 4E AA     .word off_E1_AA4E
- D 1 - I - 0x00AD57 02:AD47: 84        .byte $84   ; 
- D 1 - I - 0x00AD58 02:AD48: 1C        .byte $1C   ; 
- D 1 - I - 0x00AD59 02:AD49: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD5A 02:AD4A: 85        .byte $85   ; 
- D 1 - I - 0x00AD5B 02:AD4B: 36        .byte $36   ; 
- D 1 - I - 0x00AD5C 02:AD4C: 36        .byte $36   ; 
- D 1 - I - 0x00AD5D 02:AD4D: 36        .byte $36   ; 
- D 1 - I - 0x00AD5E 02:AD4E: 36        .byte $36   ; 
- D 1 - I - 0x00AD5F 02:AD4F: 84        .byte $84   ; 
- D 1 - I - 0x00AD60 02:AD50: 33        .byte $33   ; 
- D 1 - I - 0x00AD61 02:AD51: 2F        .byte $2F   ; 
- D 1 - I - 0x00AD62 02:AD52: 2C        .byte $2C   ; 
- D 1 - I - 0x00AD63 02:AD53: 28        .byte $28   ; 
- D 1 - I - 0x00AD64 02:AD54: E1        .byte $E1   ; 
- D 1 - I - 0x00AD65 02:AD55: 0A AA     .word off_E1_AA0A
- D 1 - I - 0x00AD67 02:AD57: 82        .byte $82   ; 
- D 1 - I - 0x00AD68 02:AD58: 2A        .byte $2A   ; 
- D 1 - I - 0x00AD69 02:AD59: E1        .byte $E1   ; 
- D 1 - I - 0x00AD6A 02:AD5A: 4E AA     .word off_E1_AA4E
- D 1 - I - 0x00AD6C 02:AD5C: 84        .byte $84   ; 
- D 1 - I - 0x00AD6D 02:AD5D: 36        .byte $36   ; 
- D 1 - I - 0x00AD6E 02:AD5E: 31        .byte $31   ; 
- D 1 - I - 0x00AD6F 02:AD5F: 2C        .byte $2C   ; 
- D 1 - I - 0x00AD70 02:AD60: 25        .byte $25   ; 
- D 1 - I - 0x00AD71 02:AD61: E1        .byte $E1   ; 
- D 1 - I - 0x00AD72 02:AD62: 0A AA     .word off_E1_AA0A
- D 1 - I - 0x00AD74 02:AD64: 8A        .byte $8A   ; 
- D 1 - I - 0x00AD75 02:AD65: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD76 02:AD66: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD77 02:AD67: 83        .byte $83   ; 
- D 1 - I - 0x00AD78 02:AD68: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD79 02:AD69: 82        .byte $82   ; 
- D 1 - I - 0x00AD7A 02:AD6A: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD7B 02:AD6B: E1        .byte $E1   ; 
- D 1 - I - 0x00AD7C 02:AD6C: 4E AA     .word off_E1_AA4E
- D 1 - I - 0x00AD7E 02:AD6E: 84        .byte $84   ; 
- D 1 - I - 0x00AD7F 02:AD6F: 36        .byte $36   ; 
- D 1 - I - 0x00AD80 02:AD70: 31        .byte $31   ; 
- D 1 - I - 0x00AD81 02:AD71: 2C        .byte $2C   ; 
- D 1 - I - 0x00AD82 02:AD72: 25        .byte $25   ; 
- D 1 - I - 0x00AD83 02:AD73: E1        .byte $E1   ; 
- D 1 - I - 0x00AD84 02:AD74: 0A AA     .word off_E1_AA0A
- D 1 - I - 0x00AD86 02:AD76: 8A        .byte $8A   ; 
- D 1 - I - 0x00AD87 02:AD77: 31        .byte $31   ; 
- D 1 - I - 0x00AD88 02:AD78: 84        .byte $84   ; 
- D 1 - I - 0x00AD89 02:AD79: 31        .byte $31   ; 
- D 1 - I - 0x00AD8A 02:AD7A: 83        .byte $83   ; 
- D 1 - I - 0x00AD8B 02:AD7B: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD8C 02:AD7C: 7E        .byte $7E   ; 
- D 1 - I - 0x00AD8D 02:AD7D: 80        .byte $80   ; 
- D 1 - I - 0x00AD8E 02:AD7E: 33        .byte $33   ; 
- D 1 - I - 0x00AD8F 02:AD7F: FF        .byte $FF   ; 



ch_08_AD80_02:
- D 1 - I - 0x00AD90 02:AD80: E2        .byte $E2   ; 
- D 1 - I - 0x00AD91 02:AD81: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00AD93 02:AD83: 81        .byte $81   ; 
- D 1 - I - 0x00AD94 02:AD84: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD95 02:AD85: 82        .byte $82   ; 
- D 1 - I - 0x00AD96 02:AD86: 2F        .byte $2F   ; 
- D 1 - I - 0x00AD97 02:AD87: 7F        .byte $7F   ; 
- D 1 - I - 0x00AD98 02:AD88: 8A        .byte $8A   ; 
- D 1 - I - 0x00AD99 02:AD89: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD9A 02:AD8A: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD9B 02:AD8B: 83        .byte $83   ; 
- D 1 - I - 0x00AD9C 02:AD8C: 2D        .byte $2D   ; 
- D 1 - I - 0x00AD9D 02:AD8D: 82        .byte $82   ; 
- D 1 - I - 0x00AD9E 02:AD8E: 32        .byte $32   ; 
- D 1 - I - 0x00AD9F 02:AD8F: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADA0 02:AD90: 8A        .byte $8A   ; 
- D 1 - I - 0x00ADA1 02:AD91: 2D        .byte $2D   ; 
- D 1 - I - 0x00ADA2 02:AD92: 84        .byte $84   ; 
- D 1 - I - 0x00ADA3 02:AD93: 2D        .byte $2D   ; 
- D 1 - I - 0x00ADA4 02:AD94: 83        .byte $83   ; 
- D 1 - I - 0x00ADA5 02:AD95: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADA6 02:AD96: 7E        .byte $7E   ; 
- D 1 - I - 0x00ADA7 02:AD97: 80        .byte $80   ; 
- D 1 - I - 0x00ADA8 02:AD98: 2F        .byte $2F   ; 
- D 1 - I - 0x00ADA9 02:AD99: FF        .byte $FF   ; 



ch_08_AD9A_03:
- D 1 - I - 0x00ADAA 02:AD9A: E3        .byte $E3   ; 
- D 1 - I - 0x00ADAB 02:AD9B: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00ADAD 02:AD9D: 81        .byte $81   ; 
- D 1 - I - 0x00ADAE 02:AD9E: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADAF 02:AD9F: 82        .byte $82   ; 
- D 1 - I - 0x00ADB0 02:ADA0: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADB1 02:ADA1: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADB2 02:ADA2: 8A        .byte $8A   ; 
- D 1 - I - 0x00ADB3 02:ADA3: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADB4 02:ADA4: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADB5 02:ADA5: 83        .byte $83   ; 
- D 1 - I - 0x00ADB6 02:ADA6: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADB7 02:ADA7: 82        .byte $82   ; 
- D 1 - I - 0x00ADB8 02:ADA8: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADB9 02:ADA9: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADBA 02:ADAA: 8A        .byte $8A   ; 
- D 1 - I - 0x00ADBB 02:ADAB: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADBC 02:ADAC: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADBD 02:ADAD: 83        .byte $83   ; 
- D 1 - I - 0x00ADBE 02:ADAE: 7E        .byte $7E   ; 
- D 1 - I - 0x00ADBF 02:ADAF: 3F        .byte $3F   ; 
- D 1 - I - 0x00ADC0 02:ADB0: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADC1 02:ADB1: 88        .byte $88   ; 
- D 1 - I - 0x00ADC2 02:ADB2: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADC3 02:ADB3: FF        .byte $FF   ; 



_music_ADB4_09_menu:
- D 1 - I - 0x00ADC4 02:ADB4: 01        .byte $01   ; 
- D 1 - I - 0x00ADC5 02:ADB5: C0 AD     .word ch_09_ADC0_00
- D 1 - I - 0x00ADC7 02:ADB7: E6 AD     .word ch_09_ADE6_01
- D 1 - I - 0x00ADC9 02:ADB9: 1E AE     .word ch_09_AE1E_02
- D 1 - I - 0x00ADCB 02:ADBB: 44 AE     .word ch_09_AE44_03
- - - - - - 0x00ADCD 02:ADBD: 00 00     .word $0000    ; 04
- D 1 - I - 0x00ADCF 02:ADBF: 13        .byte $13   ; 



ch_09_ADC0_00:
- D 1 - I - 0x00ADD0 02:ADC0: E0        .byte $E0   ; 
- D 1 - I - 0x00ADD1 02:ADC1: 3E A9     .word off_E0_A93E
- D 1 - I - 0x00ADD3 02:ADC3: CA        .byte $CA   ; 
- D 1 - I - 0x00ADD4 02:ADC4: C2        .byte $C2   ; 
- D 1 - I - 0x00ADD5 02:ADC5: C2        .byte $C2   ; 
- D 1 - I - 0x00ADD6 02:ADC6: 8F        .byte $8F   ; 
- D 1 - I - 0x00ADD7 02:ADC7: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADD8 02:ADC8: 90        .byte $90   ; 
- D 1 - I - 0x00ADD9 02:ADC9: 28        .byte $28   ; 
- D 1 - I - 0x00ADDA 02:ADCA: 82        .byte $82   ; 
- D 1 - I - 0x00ADDB 02:ADCB: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADDC 02:ADCC: 7E        .byte $7E   ; 
- D 1 - I - 0x00ADDD 02:ADCD: 8F        .byte $8F   ; 
- D 1 - I - 0x00ADDE 02:ADCE: 2D        .byte $2D   ; 
- D 1 - I - 0x00ADDF 02:ADCF: 90        .byte $90   ; 
- D 1 - I - 0x00ADE0 02:ADD0: 2F        .byte $2F   ; 
- D 1 - I - 0x00ADE1 02:ADD1: 80        .byte $80   ; 
- D 1 - I - 0x00ADE2 02:ADD2: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADE3 02:ADD3: CF        .byte $CF   ; 
- D 1 - I - 0x00ADE4 02:ADD4: C2        .byte $C2   ; 
- D 1 - I - 0x00ADE5 02:ADD5: 8F        .byte $8F   ; 
- D 1 - I - 0x00ADE6 02:ADD6: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADE7 02:ADD7: 90        .byte $90   ; 
- D 1 - I - 0x00ADE8 02:ADD8: 2D        .byte $2D   ; 
- D 1 - I - 0x00ADE9 02:ADD9: 82        .byte $82   ; 
- D 1 - I - 0x00ADEA 02:ADDA: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADEB 02:ADDB: 7E        .byte $7E   ; 
- D 1 - I - 0x00ADEC 02:ADDC: 8F        .byte $8F   ; 
- D 1 - I - 0x00ADED 02:ADDD: 32        .byte $32   ; 
- D 1 - I - 0x00ADEE 02:ADDE: 90        .byte $90   ; 
- D 1 - I - 0x00ADEF 02:ADDF: 34        .byte $34   ; 
- D 1 - I - 0x00ADF0 02:ADE0: 80        .byte $80   ; 
- D 1 - I - 0x00ADF1 02:ADE1: 7F        .byte $7F   ; 
- D 1 - I - 0x00ADF2 02:ADE2: CF        .byte $CF   ; 
- D 1 - I - 0x00ADF3 02:ADE3: CF        .byte $CF   ; 
- D 1 - I - 0x00ADF4 02:ADE4: CF        .byte $CF   ; 
- - - - - - 0x00ADF5 02:ADE5: FF        .byte $FF   ; 



ch_09_ADE6_01:
- D 1 - I - 0x00ADF6 02:ADE6: E1        .byte $E1   ; 
- D 1 - I - 0x00ADF7 02:ADE7: 4E AA     .word off_E1_AA4E
- D 1 - I - 0x00ADF9 02:ADE9: CA        .byte $CA   ; 
- D 1 - I - 0x00ADFA 02:ADEA: C4        .byte $C4   ; 
- D 1 - I - 0x00ADFB 02:ADEB: 82        .byte $82   ; 
- D 1 - I - 0x00ADFC 02:ADEC: 1C        .byte $1C   ; 
- D 1 - I - 0x00ADFD 02:ADED: 8F        .byte $8F   ; 
- D 1 - I - 0x00ADFE 02:ADEE: 28        .byte $28   ; 
- D 1 - I - 0x00ADFF 02:ADEF: 90        .byte $90   ; 
- D 1 - I - 0x00AE00 02:ADF0: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE01 02:ADF1: 82        .byte $82   ; 
- D 1 - I - 0x00AE02 02:ADF2: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE03 02:ADF3: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE04 02:ADF4: 28        .byte $28   ; 
- D 1 - I - 0x00AE05 02:ADF5: 90        .byte $90   ; 
- D 1 - I - 0x00AE06 02:ADF6: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE07 02:ADF7: 82        .byte $82   ; 
- D 1 - I - 0x00AE08 02:ADF8: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE09 02:ADF9: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE0A 02:ADFA: 28        .byte $28   ; 
- D 1 - I - 0x00AE0B 02:ADFB: 90        .byte $90   ; 
- D 1 - I - 0x00AE0C 02:ADFC: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE0D 02:ADFD: 82        .byte $82   ; 
- D 1 - I - 0x00AE0E 02:ADFE: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE0F 02:ADFF: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE10 02:AE00: 28        .byte $28   ; 
- D 1 - I - 0x00AE11 02:AE01: 90        .byte $90   ; 
- D 1 - I - 0x00AE12 02:AE02: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE13 02:AE03: 82        .byte $82   ; 
- D 1 - I - 0x00AE14 02:AE04: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE15 02:AE05: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE16 02:AE06: 28        .byte $28   ; 
- D 1 - I - 0x00AE17 02:AE07: 90        .byte $90   ; 
- D 1 - I - 0x00AE18 02:AE08: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE19 02:AE09: 82        .byte $82   ; 
- D 1 - I - 0x00AE1A 02:AE0A: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE1B 02:AE0B: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE1C 02:AE0C: 28        .byte $28   ; 
- D 1 - I - 0x00AE1D 02:AE0D: 90        .byte $90   ; 
- D 1 - I - 0x00AE1E 02:AE0E: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE1F 02:AE0F: 82        .byte $82   ; 
- D 1 - I - 0x00AE20 02:AE10: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE21 02:AE11: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE22 02:AE12: 28        .byte $28   ; 
- D 1 - I - 0x00AE23 02:AE13: 90        .byte $90   ; 
- D 1 - I - 0x00AE24 02:AE14: 1C        .byte $1C   ; 
- D 1 - I - 0x00AE25 02:AE15: 36        .byte $36   ; 
- D 1 - I - 0x00AE26 02:AE16: 33        .byte $33   ; 
- D 1 - I - 0x00AE27 02:AE17: 2F        .byte $2F   ; 
- D 1 - I - 0x00AE28 02:AE18: 2C        .byte $2C   ; 
- D 1 - I - 0x00AE29 02:AE19: 28        .byte $28   ; 
- D 1 - I - 0x00AE2A 02:AE1A: 25        .byte $25   ; 
- D 1 - I - 0x00AE2B 02:AE1B: CF        .byte $CF   ; 
- D 1 - I - 0x00AE2C 02:AE1C: CF        .byte $CF   ; 
- - - - - - 0x00AE2D 02:AE1D: FF        .byte $FF   ; 



ch_09_AE1E_02:
- D 1 - I - 0x00AE2E 02:AE1E: E2        .byte $E2   ; 
- D 1 - I - 0x00AE2F 02:AE1F: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00AE31 02:AE21: CA        .byte $CA   ; 
- D 1 - I - 0x00AE32 02:AE22: C2        .byte $C2   ; 
- D 1 - I - 0x00AE33 02:AE23: C2        .byte $C2   ; 
- D 1 - I - 0x00AE34 02:AE24: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE35 02:AE25: 7F        .byte $7F   ; 
- D 1 - I - 0x00AE36 02:AE26: 90        .byte $90   ; 
- D 1 - I - 0x00AE37 02:AE27: 28        .byte $28   ; 
- D 1 - I - 0x00AE38 02:AE28: 82        .byte $82   ; 
- D 1 - I - 0x00AE39 02:AE29: 7F        .byte $7F   ; 
- D 1 - I - 0x00AE3A 02:AE2A: 7E        .byte $7E   ; 
- D 1 - I - 0x00AE3B 02:AE2B: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE3C 02:AE2C: 2D        .byte $2D   ; 
- D 1 - I - 0x00AE3D 02:AE2D: 90        .byte $90   ; 
- D 1 - I - 0x00AE3E 02:AE2E: 2F        .byte $2F   ; 
- D 1 - I - 0x00AE3F 02:AE2F: 80        .byte $80   ; 
- D 1 - I - 0x00AE40 02:AE30: 7F        .byte $7F   ; 
- D 1 - I - 0x00AE41 02:AE31: CF        .byte $CF   ; 
- D 1 - I - 0x00AE42 02:AE32: C2        .byte $C2   ; 
- D 1 - I - 0x00AE43 02:AE33: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE44 02:AE34: 7F        .byte $7F   ; 
- D 1 - I - 0x00AE45 02:AE35: 90        .byte $90   ; 
- D 1 - I - 0x00AE46 02:AE36: 2D        .byte $2D   ; 
- D 1 - I - 0x00AE47 02:AE37: 82        .byte $82   ; 
- D 1 - I - 0x00AE48 02:AE38: 7F        .byte $7F   ; 
- D 1 - I - 0x00AE49 02:AE39: 7E        .byte $7E   ; 
- D 1 - I - 0x00AE4A 02:AE3A: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE4B 02:AE3B: 32        .byte $32   ; 
- D 1 - I - 0x00AE4C 02:AE3C: 90        .byte $90   ; 
- D 1 - I - 0x00AE4D 02:AE3D: 34        .byte $34   ; 
- D 1 - I - 0x00AE4E 02:AE3E: 80        .byte $80   ; 
- D 1 - I - 0x00AE4F 02:AE3F: 7F        .byte $7F   ; 
- D 1 - I - 0x00AE50 02:AE40: CF        .byte $CF   ; 
- D 1 - I - 0x00AE51 02:AE41: CF        .byte $CF   ; 
- D 1 - I - 0x00AE52 02:AE42: CF        .byte $CF   ; 
- - - - - - 0x00AE53 02:AE43: FF        .byte $FF   ; 



ch_09_AE44_03:
- D 1 - I - 0x00AE54 02:AE44: E3        .byte $E3   ; 
- D 1 - I - 0x00AE55 02:AE45: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00AE57 02:AE47: CA        .byte $CA   ; 
- D 1 - I - 0x00AE58 02:AE48: C2        .byte $C2   ; 
- D 1 - I - 0x00AE59 02:AE49: C8        .byte $C8   ; 
- D 1 - I - 0x00AE5A 02:AE4A: 82        .byte $82   ; 
- D 1 - I - 0x00AE5B 02:AE4B: 34        .byte $34   ; 
- D 1 - I - 0x00AE5C 02:AE4C: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE5D 02:AE4D: 36        .byte $36   ; 
- D 1 - I - 0x00AE5E 02:AE4E: 90        .byte $90   ; 
- D 1 - I - 0x00AE5F 02:AE4F: 3E        .byte $3E   ; 
- D 1 - I - 0x00AE60 02:AE50: 82        .byte $82   ; 
- D 1 - I - 0x00AE61 02:AE51: 34        .byte $34   ; 
- D 1 - I - 0x00AE62 02:AE52: 8F        .byte $8F   ; 
- D 1 - I - 0x00AE63 02:AE53: 36        .byte $36   ; 
- D 1 - I - 0x00AE64 02:AE54: 90        .byte $90   ; 
- D 1 - I - 0x00AE65 02:AE55: 3E        .byte $3E   ; 
- D 1 - I - 0x00AE66 02:AE56: CF        .byte $CF   ; 
- D 1 - I - 0x00AE67 02:AE57: CF        .byte $CF   ; 
- D 1 - I - 0x00AE68 02:AE58: CF        .byte $CF   ; 
- - - - - - 0x00AE69 02:AE59: FF        .byte $FF   ; 



_music_AE5A_16_game_over:
- D 1 - I - 0x00AE6A 02:AE5A: 00        .byte $00   ; 
- D 1 - I - 0x00AE6B 02:AE5B: 66 AE     .word ch_16_AE66_00
- D 1 - I - 0x00AE6D 02:AE5D: 87 AE     .word ch_16_AE87_01
- D 1 - I - 0x00AE6F 02:AE5F: AA AE     .word ch_16_AEAA_02
- D 1 - I - 0x00AE71 02:AE61: 00 00     .word $0000    ; 03
- - - - - - 0x00AE73 02:AE63: 00 00     .word $0000    ; 04
- D 1 - I - 0x00AE75 02:AE65: 12        .byte $12   ; 



ch_16_AE66_00:
- D 1 - I - 0x00AE76 02:AE66: E0        .byte $E0   ; 
- D 1 - I - 0x00AE77 02:AE67: 3E A9     .word off_E0_A93E
- D 1 - I - 0x00AE79 02:AE69: 83        .byte $83   ; 
- D 1 - I - 0x00AE7A 02:AE6A: 34        .byte $34   ; 
- D 1 - I - 0x00AE7B 02:AE6B: 33        .byte $33   ; 
- D 1 - I - 0x00AE7C 02:AE6C: 34        .byte $34   ; 
- D 1 - I - 0x00AE7D 02:AE6D: 82        .byte $82   ; 
- D 1 - I - 0x00AE7E 02:AE6E: 2D        .byte $2D   ; 
- D 1 - I - 0x00AE7F 02:AE6F: 83        .byte $83   ; 
- D 1 - I - 0x00AE80 02:AE70: 31        .byte $31   ; 
- D 1 - I - 0x00AE81 02:AE71: 34        .byte $34   ; 
- D 1 - I - 0x00AE82 02:AE72: 38        .byte $38   ; 
- D 1 - I - 0x00AE83 02:AE73: 33        .byte $33   ; 
- D 1 - I - 0x00AE84 02:AE74: 31        .byte $31   ; 
- D 1 - I - 0x00AE85 02:AE75: 33        .byte $33   ; 
- D 1 - I - 0x00AE86 02:AE76: 82        .byte $82   ; 
- D 1 - I - 0x00AE87 02:AE77: 2C        .byte $2C   ; 
- D 1 - I - 0x00AE88 02:AE78: 83        .byte $83   ; 
- D 1 - I - 0x00AE89 02:AE79: 2F        .byte $2F   ; 
- D 1 - I - 0x00AE8A 02:AE7A: 33        .byte $33   ; 
- D 1 - I - 0x00AE8B 02:AE7B: 36        .byte $36   ; 
- D 1 - I - 0x00AE8C 02:AE7C: 2A        .byte $2A   ; 
- D 1 - I - 0x00AE8D 02:AE7D: 2D        .byte $2D   ; 
- D 1 - I - 0x00AE8E 02:AE7E: 31        .byte $31   ; 
- D 1 - I - 0x00AE8F 02:AE7F: 34        .byte $34   ; 
- D 1 - I - 0x00AE90 02:AE80: 36        .byte $36   ; 
- D 1 - I - 0x00AE91 02:AE81: 39        .byte $39   ; 
- D 1 - I - 0x00AE92 02:AE82: 3D        .byte $3D   ; 
- D 1 - I - 0x00AE93 02:AE83: 40        .byte $40   ; 
- D 1 - I - 0x00AE94 02:AE84: 80        .byte $80   ; 
- D 1 - I - 0x00AE95 02:AE85: 3F        .byte $3F   ; 
- D 1 - I - 0x00AE96 02:AE86: FF        .byte $FF   ; 



ch_16_AE87_01:
- D 1 - I - 0x00AE97 02:AE87: E1        .byte $E1   ; 
- D 1 - I - 0x00AE98 02:AE88: 82 A9     .word off_E1_A982
- D 1 - I - 0x00AE9A 02:AE8A: 8A        .byte $8A   ; 
- D 1 - I - 0x00AE9B 02:AE8B: 7F        .byte $7F   ; 
- D 1 - I - 0x00AE9C 02:AE8C: 83        .byte $83   ; 
- D 1 - I - 0x00AE9D 02:AE8D: 34        .byte $34   ; 
- D 1 - I - 0x00AE9E 02:AE8E: 33        .byte $33   ; 
- D 1 - I - 0x00AE9F 02:AE8F: 34        .byte $34   ; 
- D 1 - I - 0x00AEA0 02:AE90: 82        .byte $82   ; 
- D 1 - I - 0x00AEA1 02:AE91: 2D        .byte $2D   ; 
- D 1 - I - 0x00AEA2 02:AE92: 83        .byte $83   ; 
- D 1 - I - 0x00AEA3 02:AE93: 31        .byte $31   ; 
- D 1 - I - 0x00AEA4 02:AE94: 34        .byte $34   ; 
- D 1 - I - 0x00AEA5 02:AE95: 38        .byte $38   ; 
- D 1 - I - 0x00AEA6 02:AE96: 33        .byte $33   ; 
- D 1 - I - 0x00AEA7 02:AE97: 31        .byte $31   ; 
- D 1 - I - 0x00AEA8 02:AE98: 33        .byte $33   ; 
- D 1 - I - 0x00AEA9 02:AE99: 82        .byte $82   ; 
- D 1 - I - 0x00AEAA 02:AE9A: 2C        .byte $2C   ; 
- D 1 - I - 0x00AEAB 02:AE9B: 83        .byte $83   ; 
- D 1 - I - 0x00AEAC 02:AE9C: 2F        .byte $2F   ; 
- D 1 - I - 0x00AEAD 02:AE9D: 33        .byte $33   ; 
- D 1 - I - 0x00AEAE 02:AE9E: 36        .byte $36   ; 
- D 1 - I - 0x00AEAF 02:AE9F: 2A        .byte $2A   ; 
- D 1 - I - 0x00AEB0 02:AEA0: 2D        .byte $2D   ; 
- D 1 - I - 0x00AEB1 02:AEA1: 31        .byte $31   ; 
- D 1 - I - 0x00AEB2 02:AEA2: 34        .byte $34   ; 
- D 1 - I - 0x00AEB3 02:AEA3: 36        .byte $36   ; 
- D 1 - I - 0x00AEB4 02:AEA4: 39        .byte $39   ; 
- D 1 - I - 0x00AEB5 02:AEA5: 3D        .byte $3D   ; 
- D 1 - I - 0x00AEB6 02:AEA6: 40        .byte $40   ; 
- D 1 - I - 0x00AEB7 02:AEA7: 80        .byte $80   ; 
- D 1 - I - 0x00AEB8 02:AEA8: 3F        .byte $3F   ; 
- D 1 - I - 0x00AEB9 02:AEA9: FF        .byte $FF   ; 



ch_16_AEAA_02:
- D 1 - I - 0x00AEBA 02:AEAA: E2        .byte $E2   ; 
- D 1 - I - 0x00AEBB 02:AEAB: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00AEBD 02:AEAD: 80        .byte $80   ; 
- D 1 - I - 0x00AEBE 02:AEAE: 2D        .byte $2D   ; 
- D 1 - I - 0x00AEBF 02:AEAF: 2C        .byte $2C   ; 
- D 1 - I - 0x00AEC0 02:AEB0: 2A        .byte $2A   ; 
- D 1 - I - 0x00AEC1 02:AEB1: 28        .byte $28   ; 
- D 1 - I - 0x00AEC2 02:AEB2: FF        .byte $FF   ; 



_music_AEB3_01_title_screen:
- D 1 - I - 0x00AEC3 02:AEB3: 01        .byte $01   ; 
- D 1 - I - 0x00AEC4 02:AEB4: BF AE     .word ch_01_AEBF_00
- D 1 - I - 0x00AEC6 02:AEB6: 13 AF     .word ch_01_AF13_01
- D 1 - I - 0x00AEC8 02:AEB8: 69 AF     .word ch_01_AF69_02
- D 1 - I - 0x00AECA 02:AEBA: B8 AF     .word ch_01_AFB8_03
- - - - - - 0x00AECC 02:AEBC: 00 00     .word $0000    ; 04
- D 1 - I - 0x00AECE 02:AEBE: 14        .byte $14   ; 



ch_01_AEBF_00:
- D 1 - I - 0x00AECF 02:AEBF: E0        .byte $E0   ; 
- D 1 - I - 0x00AED0 02:AEC0: 3E A9     .word off_E0_A93E
- D 1 - I - 0x00AED2 02:AEC2: 83        .byte $83   ; 
- D 1 - I - 0x00AED3 02:AEC3: 36        .byte $36   ; 
- D 1 - I - 0x00AED4 02:AEC4: 37        .byte $37   ; 
- D 1 - I - 0x00AED5 02:AEC5: CA        .byte $CA   ; 
- D 1 - I - 0x00AED6 02:AEC6: CA        .byte $CA   ; 
- D 1 - I - 0x00AED7 02:AEC7: 83        .byte $83   ; 
- D 1 - I - 0x00AED8 02:AEC8: 38        .byte $38   ; 
- D 1 - I - 0x00AED9 02:AEC9: 40        .byte $40   ; 
- D 1 - I - 0x00AEDA 02:AECA: 38        .byte $38   ; 
- D 1 - I - 0x00AEDB 02:AECB: 82        .byte $82   ; 
- D 1 - I - 0x00AEDC 02:AECC: 39        .byte $39   ; 
- D 1 - I - 0x00AEDD 02:AECD: 83        .byte $83   ; 
- D 1 - I - 0x00AEDE 02:AECE: 40        .byte $40   ; 
- D 1 - I - 0x00AEDF 02:AECF: 39        .byte $39   ; 
- D 1 - I - 0x00AEE0 02:AED0: 3A        .byte $3A   ; 
- D 1 - I - 0x00AEE1 02:AED1: 3B        .byte $3B   ; 
- D 1 - I - 0x00AEE2 02:AED2: 40        .byte $40   ; 
- D 1 - I - 0x00AEE3 02:AED3: 3B        .byte $3B   ; 
- D 1 - I - 0x00AEE4 02:AED4: 82        .byte $82   ; 
- D 1 - I - 0x00AEE5 02:AED5: 39        .byte $39   ; 
- D 1 - I - 0x00AEE6 02:AED6: 83        .byte $83   ; 
- D 1 - I - 0x00AEE7 02:AED7: 40        .byte $40   ; 
- D 1 - I - 0x00AEE8 02:AED8: 36        .byte $36   ; 
- D 1 - I - 0x00AEE9 02:AED9: 37        .byte $37   ; 
- D 1 - I - 0x00AEEA 02:AEDA: 38        .byte $38   ; 
- D 1 - I - 0x00AEEB 02:AEDB: 40        .byte $40   ; 
- D 1 - I - 0x00AEEC 02:AEDC: 38        .byte $38   ; 
- D 1 - I - 0x00AEED 02:AEDD: 82        .byte $82   ; 
- D 1 - I - 0x00AEEE 02:AEDE: 39        .byte $39   ; 
- D 1 - I - 0x00AEEF 02:AEDF: 83        .byte $83   ; 
- D 1 - I - 0x00AEF0 02:AEE0: 40        .byte $40   ; 
- D 1 - I - 0x00AEF1 02:AEE1: 39        .byte $39   ; 
- D 1 - I - 0x00AEF2 02:AEE2: 3A        .byte $3A   ; 
- D 1 - I - 0x00AEF3 02:AEE3: 3B        .byte $3B   ; 
- D 1 - I - 0x00AEF4 02:AEE4: 40        .byte $40   ; 
- D 1 - I - 0x00AEF5 02:AEE5: 3B        .byte $3B   ; 
- D 1 - I - 0x00AEF6 02:AEE6: 82        .byte $82   ; 
- D 1 - I - 0x00AEF7 02:AEE7: 39        .byte $39   ; 
- D 1 - I - 0x00AEF8 02:AEE8: 83        .byte $83   ; 
- D 1 - I - 0x00AEF9 02:AEE9: 40        .byte $40   ; 
- D 1 - I - 0x00AEFA 02:AEEA: 3B        .byte $3B   ; 
- D 1 - I - 0x00AEFB 02:AEEB: 3C        .byte $3C   ; 
- D 1 - I - 0x00AEFC 02:AEEC: 3D        .byte $3D   ; 
- D 1 - I - 0x00AEFD 02:AEED: 45        .byte $45   ; 
- D 1 - I - 0x00AEFE 02:AEEE: 3D        .byte $3D   ; 
- D 1 - I - 0x00AEFF 02:AEEF: 82        .byte $82   ; 
- D 1 - I - 0x00AF00 02:AEF0: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF01 02:AEF1: 83        .byte $83   ; 
- D 1 - I - 0x00AF02 02:AEF2: 45        .byte $45   ; 
- D 1 - I - 0x00AF03 02:AEF3: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF04 02:AEF4: 3F        .byte $3F   ; 
- D 1 - I - 0x00AF05 02:AEF5: 40        .byte $40   ; 
- D 1 - I - 0x00AF06 02:AEF6: 45        .byte $45   ; 
- D 1 - I - 0x00AF07 02:AEF7: 40        .byte $40   ; 
- D 1 - I - 0x00AF08 02:AEF8: 82        .byte $82   ; 
- D 1 - I - 0x00AF09 02:AEF9: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF0A 02:AEFA: 83        .byte $83   ; 
- D 1 - I - 0x00AF0B 02:AEFB: 45        .byte $45   ; 
- D 1 - I - 0x00AF0C 02:AEFC: 3B        .byte $3B   ; 
- D 1 - I - 0x00AF0D 02:AEFD: 3C        .byte $3C   ; 
- D 1 - I - 0x00AF0E 02:AEFE: 3D        .byte $3D   ; 
- D 1 - I - 0x00AF0F 02:AEFF: 45        .byte $45   ; 
- D 1 - I - 0x00AF10 02:AF00: 3D        .byte $3D   ; 
- D 1 - I - 0x00AF11 02:AF01: 82        .byte $82   ; 
- D 1 - I - 0x00AF12 02:AF02: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF13 02:AF03: 83        .byte $83   ; 
- D 1 - I - 0x00AF14 02:AF04: 45        .byte $45   ; 
- D 1 - I - 0x00AF15 02:AF05: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF16 02:AF06: 3F        .byte $3F   ; 
- D 1 - I - 0x00AF17 02:AF07: 40        .byte $40   ; 
- D 1 - I - 0x00AF18 02:AF08: 45        .byte $45   ; 
- D 1 - I - 0x00AF19 02:AF09: 40        .byte $40   ; 
- D 1 - I - 0x00AF1A 02:AF0A: 82        .byte $82   ; 
- D 1 - I - 0x00AF1B 02:AF0B: 3F        .byte $3F   ; 
- D 1 - I - 0x00AF1C 02:AF0C: 83        .byte $83   ; 
- D 1 - I - 0x00AF1D 02:AF0D: 45        .byte $45   ; 
- D 1 - I - 0x00AF1E 02:AF0E: 36        .byte $36   ; 
- D 1 - I - 0x00AF1F 02:AF0F: 37        .byte $37   ; 
- D 1 - I - 0x00AF20 02:AF10: CF        .byte $CF   ; 
- - - - - - 0x00AF21 02:AF11: CF        .byte $CF   ; 
- - - - - - 0x00AF22 02:AF12: FF        .byte $FF   ; 



ch_01_AF13_01:
- D 1 - I - 0x00AF23 02:AF13: E1        .byte $E1   ; 
- D 1 - I - 0x00AF24 02:AF14: 82 A9     .word off_E1_A982
- D 1 - I - 0x00AF26 02:AF16: 8A        .byte $8A   ; 
- D 1 - I - 0x00AF27 02:AF17: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF28 02:AF18: 83        .byte $83   ; 
- D 1 - I - 0x00AF29 02:AF19: 36        .byte $36   ; 
- D 1 - I - 0x00AF2A 02:AF1A: 37        .byte $37   ; 
- D 1 - I - 0x00AF2B 02:AF1B: CA        .byte $CA   ; 
- D 1 - I - 0x00AF2C 02:AF1C: CA        .byte $CA   ; 
- D 1 - I - 0x00AF2D 02:AF1D: 83        .byte $83   ; 
- D 1 - I - 0x00AF2E 02:AF1E: 38        .byte $38   ; 
- D 1 - I - 0x00AF2F 02:AF1F: 40        .byte $40   ; 
- D 1 - I - 0x00AF30 02:AF20: 38        .byte $38   ; 
- D 1 - I - 0x00AF31 02:AF21: 82        .byte $82   ; 
- D 1 - I - 0x00AF32 02:AF22: 39        .byte $39   ; 
- D 1 - I - 0x00AF33 02:AF23: 83        .byte $83   ; 
- D 1 - I - 0x00AF34 02:AF24: 40        .byte $40   ; 
- D 1 - I - 0x00AF35 02:AF25: 39        .byte $39   ; 
- D 1 - I - 0x00AF36 02:AF26: 3A        .byte $3A   ; 
- D 1 - I - 0x00AF37 02:AF27: 3B        .byte $3B   ; 
- D 1 - I - 0x00AF38 02:AF28: 40        .byte $40   ; 
- D 1 - I - 0x00AF39 02:AF29: 3B        .byte $3B   ; 
- D 1 - I - 0x00AF3A 02:AF2A: 82        .byte $82   ; 
- D 1 - I - 0x00AF3B 02:AF2B: 39        .byte $39   ; 
- D 1 - I - 0x00AF3C 02:AF2C: 83        .byte $83   ; 
- D 1 - I - 0x00AF3D 02:AF2D: 40        .byte $40   ; 
- D 1 - I - 0x00AF3E 02:AF2E: 36        .byte $36   ; 
- D 1 - I - 0x00AF3F 02:AF2F: 37        .byte $37   ; 
- D 1 - I - 0x00AF40 02:AF30: 38        .byte $38   ; 
- D 1 - I - 0x00AF41 02:AF31: 40        .byte $40   ; 
- D 1 - I - 0x00AF42 02:AF32: 38        .byte $38   ; 
- D 1 - I - 0x00AF43 02:AF33: 82        .byte $82   ; 
- D 1 - I - 0x00AF44 02:AF34: 39        .byte $39   ; 
- D 1 - I - 0x00AF45 02:AF35: 83        .byte $83   ; 
- D 1 - I - 0x00AF46 02:AF36: 40        .byte $40   ; 
- D 1 - I - 0x00AF47 02:AF37: 39        .byte $39   ; 
- D 1 - I - 0x00AF48 02:AF38: 3A        .byte $3A   ; 
- D 1 - I - 0x00AF49 02:AF39: 3B        .byte $3B   ; 
- D 1 - I - 0x00AF4A 02:AF3A: 40        .byte $40   ; 
- D 1 - I - 0x00AF4B 02:AF3B: 3B        .byte $3B   ; 
- D 1 - I - 0x00AF4C 02:AF3C: 82        .byte $82   ; 
- D 1 - I - 0x00AF4D 02:AF3D: 39        .byte $39   ; 
- D 1 - I - 0x00AF4E 02:AF3E: 83        .byte $83   ; 
- D 1 - I - 0x00AF4F 02:AF3F: 40        .byte $40   ; 
- D 1 - I - 0x00AF50 02:AF40: 3B        .byte $3B   ; 
- D 1 - I - 0x00AF51 02:AF41: 3C        .byte $3C   ; 
- D 1 - I - 0x00AF52 02:AF42: 3D        .byte $3D   ; 
- D 1 - I - 0x00AF53 02:AF43: 45        .byte $45   ; 
- D 1 - I - 0x00AF54 02:AF44: 3D        .byte $3D   ; 
- D 1 - I - 0x00AF55 02:AF45: 82        .byte $82   ; 
- D 1 - I - 0x00AF56 02:AF46: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF57 02:AF47: 83        .byte $83   ; 
- D 1 - I - 0x00AF58 02:AF48: 45        .byte $45   ; 
- D 1 - I - 0x00AF59 02:AF49: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF5A 02:AF4A: 3F        .byte $3F   ; 
- D 1 - I - 0x00AF5B 02:AF4B: 40        .byte $40   ; 
- D 1 - I - 0x00AF5C 02:AF4C: 45        .byte $45   ; 
- D 1 - I - 0x00AF5D 02:AF4D: 40        .byte $40   ; 
- D 1 - I - 0x00AF5E 02:AF4E: 82        .byte $82   ; 
- D 1 - I - 0x00AF5F 02:AF4F: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF60 02:AF50: 83        .byte $83   ; 
- D 1 - I - 0x00AF61 02:AF51: 45        .byte $45   ; 
- D 1 - I - 0x00AF62 02:AF52: 3B        .byte $3B   ; 
- D 1 - I - 0x00AF63 02:AF53: 3C        .byte $3C   ; 
- D 1 - I - 0x00AF64 02:AF54: 3D        .byte $3D   ; 
- D 1 - I - 0x00AF65 02:AF55: 45        .byte $45   ; 
- D 1 - I - 0x00AF66 02:AF56: 3D        .byte $3D   ; 
- D 1 - I - 0x00AF67 02:AF57: 82        .byte $82   ; 
- D 1 - I - 0x00AF68 02:AF58: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF69 02:AF59: 83        .byte $83   ; 
- D 1 - I - 0x00AF6A 02:AF5A: 45        .byte $45   ; 
- D 1 - I - 0x00AF6B 02:AF5B: 3E        .byte $3E   ; 
- D 1 - I - 0x00AF6C 02:AF5C: 3F        .byte $3F   ; 
- D 1 - I - 0x00AF6D 02:AF5D: 40        .byte $40   ; 
- D 1 - I - 0x00AF6E 02:AF5E: 45        .byte $45   ; 
- D 1 - I - 0x00AF6F 02:AF5F: 40        .byte $40   ; 
- D 1 - I - 0x00AF70 02:AF60: 82        .byte $82   ; 
- D 1 - I - 0x00AF71 02:AF61: 3F        .byte $3F   ; 
- D 1 - I - 0x00AF72 02:AF62: 83        .byte $83   ; 
- D 1 - I - 0x00AF73 02:AF63: 45        .byte $45   ; 
- D 1 - I - 0x00AF74 02:AF64: 36        .byte $36   ; 
- D 1 - I - 0x00AF75 02:AF65: 37        .byte $37   ; 
- D 1 - I - 0x00AF76 02:AF66: CF        .byte $CF   ; 
- - - - - - 0x00AF77 02:AF67: CF        .byte $CF   ; 
- - - - - - 0x00AF78 02:AF68: FF        .byte $FF   ; 



ch_01_AF69_02:
- D 1 - I - 0x00AF79 02:AF69: E2        .byte $E2   ; 
- D 1 - I - 0x00AF7A 02:AF6A: 92 AA     .word off_E2_AA92
- D 1 - I - 0x00AF7C 02:AF6C: 82        .byte $82   ; 
- D 1 - I - 0x00AF7D 02:AF6D: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF7E 02:AF6E: CA        .byte $CA   ; 
- D 1 - I - 0x00AF7F 02:AF6F: CA        .byte $CA   ; 
- D 1 - I - 0x00AF80 02:AF70: 83        .byte $83   ; 
- D 1 - I - 0x00AF81 02:AF71: 28        .byte $28   ; 
- D 1 - I - 0x00AF82 02:AF72: 82        .byte $82   ; 
- D 1 - I - 0x00AF83 02:AF73: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF84 02:AF74: 83        .byte $83   ; 
- D 1 - I - 0x00AF85 02:AF75: 2A        .byte $2A   ; 
- D 1 - I - 0x00AF86 02:AF76: 81        .byte $81   ; 
- D 1 - I - 0x00AF87 02:AF77: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF88 02:AF78: 83        .byte $83   ; 
- D 1 - I - 0x00AF89 02:AF79: 2C        .byte $2C   ; 
- D 1 - I - 0x00AF8A 02:AF7A: 82        .byte $82   ; 
- D 1 - I - 0x00AF8B 02:AF7B: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF8C 02:AF7C: 83        .byte $83   ; 
- D 1 - I - 0x00AF8D 02:AF7D: 2A        .byte $2A   ; 
- D 1 - I - 0x00AF8E 02:AF7E: 81        .byte $81   ; 
- D 1 - I - 0x00AF8F 02:AF7F: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF90 02:AF80: 83        .byte $83   ; 
- D 1 - I - 0x00AF91 02:AF81: 28        .byte $28   ; 
- D 1 - I - 0x00AF92 02:AF82: 82        .byte $82   ; 
- D 1 - I - 0x00AF93 02:AF83: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF94 02:AF84: 83        .byte $83   ; 
- D 1 - I - 0x00AF95 02:AF85: 2A        .byte $2A   ; 
- D 1 - I - 0x00AF96 02:AF86: 81        .byte $81   ; 
- D 1 - I - 0x00AF97 02:AF87: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF98 02:AF88: 83        .byte $83   ; 
- D 1 - I - 0x00AF99 02:AF89: 2C        .byte $2C   ; 
- D 1 - I - 0x00AF9A 02:AF8A: 82        .byte $82   ; 
- D 1 - I - 0x00AF9B 02:AF8B: 7F        .byte $7F   ; 
- D 1 - I - 0x00AF9C 02:AF8C: 83        .byte $83   ; 
- D 1 - I - 0x00AF9D 02:AF8D: 2A        .byte $2A   ; 
- D 1 - I - 0x00AF9E 02:AF8E: 82        .byte $82   ; 
- D 1 - I - 0x00AF9F 02:AF8F: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFA0 02:AF90: 83        .byte $83   ; 
- D 1 - I - 0x00AFA1 02:AF91: 2C        .byte $2C   ; 
- D 1 - I - 0x00AFA2 02:AF92: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFA3 02:AF93: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFA4 02:AF94: 82        .byte $82   ; 
- D 1 - I - 0x00AFA5 02:AF95: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFA6 02:AF96: 83        .byte $83   ; 
- D 1 - I - 0x00AFA7 02:AF97: 2F        .byte $2F   ; 
- D 1 - I - 0x00AFA8 02:AF98: 81        .byte $81   ; 
- D 1 - I - 0x00AFA9 02:AF99: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFAA 02:AF9A: 83        .byte $83   ; 
- D 1 - I - 0x00AFAB 02:AF9B: 31        .byte $31   ; 
- D 1 - I - 0x00AFAC 02:AF9C: 82        .byte $82   ; 
- D 1 - I - 0x00AFAD 02:AF9D: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFAE 02:AF9E: 83        .byte $83   ; 
- D 1 - I - 0x00AFAF 02:AF9F: 2F        .byte $2F   ; 
- D 1 - I - 0x00AFB0 02:AFA0: 81        .byte $81   ; 
- D 1 - I - 0x00AFB1 02:AFA1: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFB2 02:AFA2: 83        .byte $83   ; 
- D 1 - I - 0x00AFB3 02:AFA3: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFB4 02:AFA4: 82        .byte $82   ; 
- D 1 - I - 0x00AFB5 02:AFA5: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFB6 02:AFA6: 83        .byte $83   ; 
- D 1 - I - 0x00AFB7 02:AFA7: 2F        .byte $2F   ; 
- D 1 - I - 0x00AFB8 02:AFA8: 81        .byte $81   ; 
- D 1 - I - 0x00AFB9 02:AFA9: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFBA 02:AFAA: 83        .byte $83   ; 
- D 1 - I - 0x00AFBB 02:AFAB: 31        .byte $31   ; 
- D 1 - I - 0x00AFBC 02:AFAC: 82        .byte $82   ; 
- D 1 - I - 0x00AFBD 02:AFAD: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFBE 02:AFAE: 83        .byte $83   ; 
- D 1 - I - 0x00AFBF 02:AFAF: 2F        .byte $2F   ; 
- D 1 - I - 0x00AFC0 02:AFB0: 82        .byte $82   ; 
- D 1 - I - 0x00AFC1 02:AFB1: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFC2 02:AFB2: 83        .byte $83   ; 
- D 1 - I - 0x00AFC3 02:AFB3: 27        .byte $27   ; 
- D 1 - I - 0x00AFC4 02:AFB4: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFC5 02:AFB5: CF        .byte $CF   ; 
- - - - - - 0x00AFC6 02:AFB6: CF        .byte $CF   ; 
- - - - - - 0x00AFC7 02:AFB7: FF        .byte $FF   ; 



ch_01_AFB8_03:
- D 1 - I - 0x00AFC8 02:AFB8: E3        .byte $E3   ; 
- D 1 - I - 0x00AFC9 02:AFB9: 96 AA     .word off_E3_AA96
- D 1 - I - 0x00AFCB 02:AFBB: 82        .byte $82   ; 
- D 1 - I - 0x00AFCC 02:AFBC: 7F        .byte $7F   ; 
- D 1 - I - 0x00AFCD 02:AFBD: CA        .byte $CA   ; 
- D 1 - I - 0x00AFCE 02:AFBE: CA        .byte $CA   ; 
- D 1 - I - 0x00AFCF 02:AFBF: 83        .byte $83   ; 
- D 1 - I - 0x00AFD0 02:AFC0: 28        .byte $28   ; 
- D 1 - I - 0x00AFD1 02:AFC1: 29        .byte $29   ; 
- D 1 - I - 0x00AFD2 02:AFC2: 29        .byte $29   ; 
- D 1 - I - 0x00AFD3 02:AFC3: 28        .byte $28   ; 
- D 1 - I - 0x00AFD4 02:AFC4: 29        .byte $29   ; 
- D 1 - I - 0x00AFD5 02:AFC5: 29        .byte $29   ; 
- D 1 - I - 0x00AFD6 02:AFC6: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFD7 02:AFC7: 29        .byte $29   ; 
- D 1 - I - 0x00AFD8 02:AFC8: 28        .byte $28   ; 
- D 1 - I - 0x00AFD9 02:AFC9: 29        .byte $29   ; 
- D 1 - I - 0x00AFDA 02:AFCA: 29        .byte $29   ; 
- D 1 - I - 0x00AFDB 02:AFCB: 28        .byte $28   ; 
- D 1 - I - 0x00AFDC 02:AFCC: 29        .byte $29   ; 
- D 1 - I - 0x00AFDD 02:AFCD: 29        .byte $29   ; 
- D 1 - I - 0x00AFDE 02:AFCE: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFDF 02:AFCF: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFE0 02:AFD0: 28        .byte $28   ; 
- D 1 - I - 0x00AFE1 02:AFD1: 29        .byte $29   ; 
- D 1 - I - 0x00AFE2 02:AFD2: 29        .byte $29   ; 
- D 1 - I - 0x00AFE3 02:AFD3: 28        .byte $28   ; 
- D 1 - I - 0x00AFE4 02:AFD4: 29        .byte $29   ; 
- D 1 - I - 0x00AFE5 02:AFD5: 29        .byte $29   ; 
- D 1 - I - 0x00AFE6 02:AFD6: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFE7 02:AFD7: 29        .byte $29   ; 
- D 1 - I - 0x00AFE8 02:AFD8: 28        .byte $28   ; 
- D 1 - I - 0x00AFE9 02:AFD9: 29        .byte $29   ; 
- D 1 - I - 0x00AFEA 02:AFDA: 29        .byte $29   ; 
- D 1 - I - 0x00AFEB 02:AFDB: 28        .byte $28   ; 
- D 1 - I - 0x00AFEC 02:AFDC: 29        .byte $29   ; 
- D 1 - I - 0x00AFED 02:AFDD: 29        .byte $29   ; 
- D 1 - I - 0x00AFEE 02:AFDE: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFEF 02:AFDF: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFF0 02:AFE0: 28        .byte $28   ; 
- D 1 - I - 0x00AFF1 02:AFE1: 29        .byte $29   ; 
- D 1 - I - 0x00AFF2 02:AFE2: 29        .byte $29   ; 
- D 1 - I - 0x00AFF3 02:AFE3: 28        .byte $28   ; 
- D 1 - I - 0x00AFF4 02:AFE4: 29        .byte $29   ; 
- D 1 - I - 0x00AFF5 02:AFE5: 29        .byte $29   ; 
- D 1 - I - 0x00AFF6 02:AFE6: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFF7 02:AFE7: 29        .byte $29   ; 
- D 1 - I - 0x00AFF8 02:AFE8: 28        .byte $28   ; 
- D 1 - I - 0x00AFF9 02:AFE9: 29        .byte $29   ; 
- D 1 - I - 0x00AFFA 02:AFEA: 29        .byte $29   ; 
- D 1 - I - 0x00AFFB 02:AFEB: 28        .byte $28   ; 
- D 1 - I - 0x00AFFC 02:AFEC: 29        .byte $29   ; 
- D 1 - I - 0x00AFFD 02:AFED: 29        .byte $29   ; 
- D 1 - I - 0x00AFFE 02:AFEE: 2D        .byte $2D   ; 
- D 1 - I - 0x00AFFF 02:AFEF: 2D        .byte $2D   ; 
- D 1 - I - 0x00B000 02:AFF0: 28        .byte $28   ; 
- D 1 - I - 0x00B001 02:AFF1: 29        .byte $29   ; 
- D 1 - I - 0x00B002 02:AFF2: 29        .byte $29   ; 
- D 1 - I - 0x00B003 02:AFF3: 28        .byte $28   ; 
- D 1 - I - 0x00B004 02:AFF4: 29        .byte $29   ; 
- D 1 - I - 0x00B005 02:AFF5: 29        .byte $29   ; 
- D 1 - I - 0x00B006 02:AFF6: 2D        .byte $2D   ; 
- D 1 - I - 0x00B007 02:AFF7: 29        .byte $29   ; 
- D 1 - I - 0x00B008 02:AFF8: 28        .byte $28   ; 
- D 1 - I - 0x00B009 02:AFF9: 29        .byte $29   ; 
- D 1 - I - 0x00B00A 02:AFFA: 29        .byte $29   ; 
- D 1 - I - 0x00B00B 02:AFFB: 28        .byte $28   ; 
- D 1 - I - 0x00B00C 02:AFFC: 29        .byte $29   ; 
- D 1 - I - 0x00B00D 02:AFFD: 29        .byte $29   ; 
- D 1 - I - 0x00B00E 02:AFFE: 2D        .byte $2D   ; 
- D 1 - I - 0x00B00F 02:AFFF: 2D        .byte $2D   ; 
- D 1 - I - 0x00B010 02:B000: CF        .byte $CF   ; 
- - - - - - 0x00B011 02:B001: CF        .byte $CF   ; 
- - - - - - 0x00B012 02:B002: FF        .byte $FF   ; 



sub_B003:
C - - - - - 0x00B013 02:B003: A8        TAY
C - - - - - 0x00B014 02:B004: B9 FD B0  LDA tbl_B0FD,Y
C - - - - - 0x00B017 02:B007: A8        TAY
C - - - - - 0x00B018 02:B008: B9 D8 B0  LDA tbl_B0D8,Y
C - - - - - 0x00B01B 02:B00B: 85 64     STA ram_0064
C - - - - - 0x00B01D 02:B00D: A9 01     LDA #$01
C - - - - - 0x00B01F 02:B00F: 85 62     STA ram_0062
C - - - - - 0x00B021 02:B011: 85 63     STA ram_0063
C - - - - - 0x00B023 02:B013: A9 62     LDA #< ram_0062
C - - - - - 0x00B025 02:B015: 85 1E     STA ram_001E
C - - - - - 0x00B027 02:B017: A9 00     LDA #> ram_0062
C - - - - - 0x00B029 02:B019: 85 1F     STA ram_001F
C - - - - - 0x00B02B 02:B01B: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x00B02E 02:B01E: 20 2B F2  JSR sub_0x00F23B
C - - - - - 0x00B031 02:B021: 20 CD EE  JSR sub_0x00EEDD_wait_1_frm
C - - - - - 0x00B034 02:B024: 60        RTS



sub_B025:
C - - - - - 0x00B035 02:B025: A4 76     LDY ram_psw_letter
C - - - - - 0x00B037 02:B027: B9 FD B0  LDA tbl_B0FD,Y
C - - - - - 0x00B03A 02:B02A: 85 64     STA ram_0064
C - - - - - 0x00B03C 02:B02C: C9 20     CMP #$20
C - - - - - 0x00B03E 02:B02E: B0 49     BCS bra_B079
C - - - - - 0x00B040 02:B030: A4 77     LDY ram_psw_letter + $01
C - - - - - 0x00B042 02:B032: B9 FD B0  LDA tbl_B0FD,Y
C - - - - - 0x00B045 02:B035: 85 65     STA ram_0065
C - - - - - 0x00B047 02:B037: C9 20     CMP #$20
C - - - - - 0x00B049 02:B039: B0 3E     BCS bra_B079
C - - - - - 0x00B04B 02:B03B: A4 78     LDY ram_psw_letter + $02
C - - - - - 0x00B04D 02:B03D: B9 FD B0  LDA tbl_B0FD,Y
C - - - - - 0x00B050 02:B040: 85 66     STA ram_0066
C - - - - - 0x00B052 02:B042: C9 20     CMP #$20
C - - - - - 0x00B054 02:B044: B0 33     BCS bra_B079
C - - - - - 0x00B056 02:B046: A4 79     LDY ram_psw_letter + $03
C - - - - - 0x00B058 02:B048: B9 FD B0  LDA tbl_B0FD,Y
C - - - - - 0x00B05B 02:B04B: 85 67     STA ram_0067
C - - - - - 0x00B05D 02:B04D: C9 20     CMP #$20
C - - - - - 0x00B05F 02:B04F: B0 28     BCS bra_B079
C - - - - - 0x00B061 02:B051: A9 00     LDA #$00
C - - - - - 0x00B063 02:B053: A8        TAY
bra_B054_loop:
C - - - - - 0x00B064 02:B054: 46 65     LSR ram_0065
C - - - - - 0x00B066 02:B056: 6A        ROR
C - - - - - 0x00B067 02:B057: 46 64     LSR ram_0064
C - - - - - 0x00B069 02:B059: 6A        ROR
C - - - - - 0x00B06A 02:B05A: C8        INY
C - - - - - 0x00B06B 02:B05B: C0 04     CPY #$04
C - - - - - 0x00B06D 02:B05D: D0 F5     BNE bra_B054_loop
C - - - - - 0x00B06F 02:B05F: 85 64     STA ram_0064
C - - - - - 0x00B071 02:B061: A5 67     LDA ram_0067
C - - - - - 0x00B073 02:B063: 0A        ASL
C - - - - - 0x00B074 02:B064: 0A        ASL
C - - - - - 0x00B075 02:B065: 0A        ASL
C - - - - - 0x00B076 02:B066: 0A        ASL
C - - - - - 0x00B077 02:B067: 85 65     STA ram_0065
C - - - - - 0x00B079 02:B069: A5 66     LDA ram_0066
C - - - - - 0x00B07B 02:B06B: 4A        LSR
C - - - - - 0x00B07C 02:B06C: 05 65     ORA ram_0065
C - - - - - 0x00B07E 02:B06E: C5 64     CMP ram_0064
C - - - - - 0x00B080 02:B070: D0 07     BNE bra_B079
C - - - - - 0x00B082 02:B072: A5 64     LDA ram_0064
C - - - - - 0x00B084 02:B074: 85 68     STA ram_stage_id_1
C - - - - - 0x00B086 02:B076: 85 69     STA ram_stage_id_2
C - - - - - 0x00B088 02:B078: 60        RTS
bra_B079:
C - - - - - 0x00B089 02:B079: A9 00     LDA #$00
C - - - - - 0x00B08B 02:B07B: 85 68     STA ram_stage_id_1
C - - - - - 0x00B08D 02:B07D: 85 69     STA ram_stage_id_2
C - - - - - 0x00B08F 02:B07F: 60        RTS



sub_B080:
C - - - - - 0x00B090 02:B080: A9 04     LDA #$04
C - - - - - 0x00B092 02:B082: 85 62     STA ram_0062
C - - - - - 0x00B094 02:B084: A9 01     LDA #$01
C - - - - - 0x00B096 02:B086: 85 63     STA ram_0063
C - - - - - 0x00B098 02:B088: A9 00     LDA #$00
C - - - - - 0x00B09A 02:B08A: 85 64     STA ram_0064
C - - - - - 0x00B09C 02:B08C: 85 65     STA ram_0065
C - - - - - 0x00B09E 02:B08E: A0 00     LDY #$00
C - - - - - 0x00B0A0 02:B090: A5 69     LDA ram_stage_id_2
bra_B092_loop:
C - - - - - 0x00B0A2 02:B092: 0A        ASL
C - - - - - 0x00B0A3 02:B093: 26 64     ROL ram_0064
C - - - - - 0x00B0A5 02:B095: 0A        ASL
C - - - - - 0x00B0A6 02:B096: 26 65     ROL ram_0065
C - - - - - 0x00B0A8 02:B098: C8        INY
C - - - - - 0x00B0A9 02:B099: C0 04     CPY #$04
C - - - - - 0x00B0AB 02:B09B: D0 F5     BNE bra_B092_loop
C - - - - - 0x00B0AD 02:B09D: A5 69     LDA ram_stage_id_2
C - - - - - 0x00B0AF 02:B09F: 29 0F     AND #$0F
C - - - - - 0x00B0B1 02:B0A1: 0A        ASL
C - - - - - 0x00B0B2 02:B0A2: 85 66     STA ram_0066
C - - - - - 0x00B0B4 02:B0A4: A5 69     LDA ram_stage_id_2
C - - - - - 0x00B0B6 02:B0A6: 4A        LSR
C - - - - - 0x00B0B7 02:B0A7: 4A        LSR
C - - - - - 0x00B0B8 02:B0A8: 4A        LSR
C - - - - - 0x00B0B9 02:B0A9: 4A        LSR
C - - - - - 0x00B0BA 02:B0AA: 85 67     STA ram_0067
C - - - - - 0x00B0BC 02:B0AC: A5 64     LDA ram_0064
C - - - - - 0x00B0BE 02:B0AE: A8        TAY
C - - - - - 0x00B0BF 02:B0AF: B9 D8 B0  LDA tbl_B0D8,Y
C - - - - - 0x00B0C2 02:B0B2: 85 64     STA ram_0064
C - - - - - 0x00B0C4 02:B0B4: A5 65     LDA ram_0065
C - - - - - 0x00B0C6 02:B0B6: A8        TAY
C - - - - - 0x00B0C7 02:B0B7: B9 D8 B0  LDA tbl_B0D8,Y
C - - - - - 0x00B0CA 02:B0BA: 85 65     STA ram_0065
C - - - - - 0x00B0CC 02:B0BC: A5 66     LDA ram_0066
C - - - - - 0x00B0CE 02:B0BE: A8        TAY
C - - - - - 0x00B0CF 02:B0BF: B9 D8 B0  LDA tbl_B0D8,Y
C - - - - - 0x00B0D2 02:B0C2: 85 66     STA ram_0066
C - - - - - 0x00B0D4 02:B0C4: A5 67     LDA ram_0067
C - - - - - 0x00B0D6 02:B0C6: A8        TAY
C - - - - - 0x00B0D7 02:B0C7: B9 D8 B0  LDA tbl_B0D8,Y
C - - - - - 0x00B0DA 02:B0CA: 85 67     STA ram_0067
C - - - - - 0x00B0DC 02:B0CC: A9 62     LDA #< ram_0062
C - - - - - 0x00B0DE 02:B0CE: 85 1E     STA ram_001E
C - - - - - 0x00B0E0 02:B0D0: A9 00     LDA #> ram_0062
C - - - - - 0x00B0E2 02:B0D2: 85 1F     STA ram_001F
C - - - - - 0x00B0E4 02:B0D4: 20 30 F2  JSR sub_0x00F240_replace_tiles_with_new
C - - - - - 0x00B0E7 02:B0D7: 60        RTS



tbl_B0D8:
- D 1 - - - 0x00B0E8 02:B0D8: D2        .byte $D2   ; 00 
- D 1 - - - 0x00B0E9 02:B0D9: D9        .byte $D9   ; 01 
- D 1 - - - 0x00B0EA 02:B0DA: D6        .byte $D6   ; 02 
- D 1 - - - 0x00B0EB 02:B0DB: D7        .byte $D7   ; 03 
- D 1 - - - 0x00B0EC 02:B0DC: E2        .byte $E2   ; 04 
- D 1 - - - 0x00B0ED 02:B0DD: D3        .byte $D3   ; 05 
- D 1 - - - 0x00B0EE 02:B0DE: CF        .byte $CF   ; 06 
- D 1 - - - 0x00B0EF 02:B0DF: D8        .byte $D8   ; 07 
- D 1 - - - 0x00B0F0 02:B0E0: E3        .byte $E3   ; 08 
- D 1 - - - 0x00B0F1 02:B0E1: E1        .byte $E1   ; 09 
- D 1 - - - 0x00B0F2 02:B0E2: C4        .byte $C4   ; 0A 
- D 1 - - - 0x00B0F3 02:B0E3: C7        .byte $C7   ; 0B 
- D 1 - - - 0x00B0F4 02:B0E4: E4        .byte $E4   ; 0C 
- D 1 - - - 0x00B0F5 02:B0E5: D4        .byte $D4   ; 0D 
- D 1 - - - 0x00B0F6 02:B0E6: E9        .byte $E9   ; 0E 
- D 1 - - - 0x00B0F7 02:B0E7: C8        .byte $C8   ; 0F 
- D 1 - - - 0x00B0F8 02:B0E8: D1        .byte $D1   ; 10 
- D 1 - - - 0x00B0F9 02:B0E9: E5        .byte $E5   ; 11 
- D 1 - - - 0x00B0FA 02:B0EA: C5        .byte $C5   ; 12 
- D 1 - - - 0x00B0FB 02:B0EB: E6        .byte $E6   ; 13 
- D 1 - - - 0x00B0FC 02:B0EC: C9        .byte $C9   ; 14 
- D 1 - - - 0x00B0FD 02:B0ED: C1        .byte $C1   ; 15 
- D 1 - - - 0x00B0FE 02:B0EE: CA        .byte $CA   ; 16 
- D 1 - - - 0x00B0FF 02:B0EF: C6        .byte $C6   ; 17 
- D 1 - - - 0x00B100 02:B0F0: CC        .byte $CC   ; 18 
- D 1 - - - 0x00B101 02:B0F1: CB        .byte $CB   ; 19 
- D 1 - - - 0x00B102 02:B0F2: C2        .byte $C2   ; 1A 
- D 1 - - - 0x00B103 02:B0F3: E7        .byte $E7   ; 1B 
- D 1 - - - 0x00B104 02:B0F4: C0        .byte $C0   ; 1C 
- D 1 - - - 0x00B105 02:B0F5: CD        .byte $CD   ; 1D 
- D 1 - - - 0x00B106 02:B0F6: CE        .byte $CE   ; 1E 
- D 1 - - - 0x00B107 02:B0F7: C3        .byte $C3   ; 1F 
- D 1 - - - 0x00B108 02:B0F8: D0        .byte $D0   ; 20 
- D 1 - - - 0x00B109 02:B0F9: D5        .byte $D5   ; 21 
- D 1 - - - 0x00B10A 02:B0FA: E0        .byte $E0   ; 22 
- D 1 - - - 0x00B10B 02:B0FB: E8        .byte $E8   ; 23 
- D 1 - - - 0x00B10C 02:B0FC: DB        .byte $DB   ; 24 



tbl_B0FD:
- D 1 - - - 0x00B10D 02:B0FD: 1C        .byte $1C   ; 00 
- D 1 - - - 0x00B10E 02:B0FE: 15        .byte $15   ; 01 
- D 1 - - - 0x00B10F 02:B0FF: 1A        .byte $1A   ; 02 
- D 1 - - - 0x00B110 02:B100: 1F        .byte $1F   ; 03 
- D 1 - - - 0x00B111 02:B101: 0A        .byte $0A   ; 04 
- D 1 - - - 0x00B112 02:B102: 12        .byte $12   ; 05 
- D 1 - - - 0x00B113 02:B103: 17        .byte $17   ; 06 
- D 1 - - - 0x00B114 02:B104: 0B        .byte $0B   ; 07 
- D 1 - - - 0x00B115 02:B105: 0F        .byte $0F   ; 08 
- D 1 - - - 0x00B116 02:B106: 14        .byte $14   ; 09 
- D 1 - - - 0x00B117 02:B107: 16        .byte $16   ; 0A 
- D 1 - - - 0x00B118 02:B108: 19        .byte $19   ; 0B 
- D 1 - - - 0x00B119 02:B109: 18        .byte $18   ; 0C 
- D 1 - - - 0x00B11A 02:B10A: 1D        .byte $1D   ; 0D 
- D 1 - - - 0x00B11B 02:B10B: 1E        .byte $1E   ; 0E 
- D 1 - - - 0x00B11C 02:B10C: 06        .byte $06   ; 0F 
- D 1 - - - 0x00B11D 02:B10D: 20        .byte $20   ; 10 
- D 1 - - - 0x00B11E 02:B10E: 10        .byte $10   ; 11 
- D 1 - - - 0x00B11F 02:B10F: 00        .byte $00   ; 12 
- D 1 - - - 0x00B120 02:B110: 05        .byte $05   ; 13 
- D 1 - - - 0x00B121 02:B111: 0D        .byte $0D   ; 14 
- D 1 - - - 0x00B122 02:B112: 21        .byte $21   ; 15 
- D 1 - - - 0x00B123 02:B113: 02        .byte $02   ; 16 
- D 1 - - - 0x00B124 02:B114: 03        .byte $03   ; 17 
- D 1 - - - 0x00B125 02:B115: 07        .byte $07   ; 18 
- D 1 - - - 0x00B126 02:B116: 01        .byte $01   ; 19 
- D 1 - - - 0x00B127 02:B117: 22        .byte $22   ; 1A 
- D 1 - - - 0x00B128 02:B118: 09        .byte $09   ; 1B 
- D 1 - - - 0x00B129 02:B119: 04        .byte $04   ; 1C 
- D 1 - - - 0x00B12A 02:B11A: 08        .byte $08   ; 1D 
- D 1 - - - 0x00B12B 02:B11B: 0C        .byte $0C   ; 1E 
- D 1 - - - 0x00B12C 02:B11C: 11        .byte $11   ; 1F 
- D 1 - - - 0x00B12D 02:B11D: 13        .byte $13   ; 20 
- D 1 - - - 0x00B12E 02:B11E: 1B        .byte $1B   ; 21 
- D 1 - - - 0x00B12F 02:B11F: 23        .byte $23   ; 22 
- D 1 - - - 0x00B130 02:B120: 0E        .byte $0E   ; 23 
- D 1 - - - 0x00B131 02:B121: 24        .byte $24   ; 24 


; bzk garbage
- - - - - - 0x00B132 02:B122: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B140 02:B130: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B150 02:B140: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B160 02:B150: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B170 02:B160: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B180 02:B170: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B190 02:B180: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B1A0 02:B190: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B1B0 02:B1A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B1C0 02:B1B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B1D0 02:B1C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B1E0 02:B1D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B1F0 02:B1E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B200 02:B1F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B210 02:B200: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B220 02:B210: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B230 02:B220: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B240 02:B230: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B250 02:B240: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B260 02:B250: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B270 02:B260: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B280 02:B270: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B290 02:B280: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B2A0 02:B290: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B2B0 02:B2A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B2C0 02:B2B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B2D0 02:B2C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B2E0 02:B2D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B2F0 02:B2E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B300 02:B2F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B310 02:B300: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B320 02:B310: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B330 02:B320: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B340 02:B330: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B350 02:B340: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B360 02:B350: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B370 02:B360: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B380 02:B370: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_0x00B390_stage_objects:
; 00
- D 1 - I - 0x00B390 02:B380: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B391 02:B381: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B392 02:B382: 04        .byte $04, $0C   ; 00
- D 1 - I - 0x00B394 02:B384: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B396 02:B386: 0B        .byte $0B, $03   ; 02
- D 1 - I - 0x00B398 02:B388: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B39A 02:B38A: 18        .byte $18, $06   ; 04
- D 1 - I - 0x00B39C 02:B38C: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B39E 02:B38E: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B3A0 02:B390: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B3A2 02:B392: 01        .byte $01, $09   ; 00
- D 1 - I - 0x00B3A4 02:B394: 03        .byte $03, $02   ; 01
- D 1 - I - 0x00B3A6 02:B396: 08        .byte $08, $06   ; 02
- D 1 - I - 0x00B3A8 02:B398: 12        .byte $12, $03   ; 03
- D 1 - I - 0x00B3AA 02:B39A: 17        .byte $17, $03   ; 04
- D 1 - I - 0x00B3AC 02:B39C: 17        .byte $17, $09   ; 05
- D 1 - I - 0x00B3AE 02:B39E: 1C        .byte $1C, $03   ; 06
- D 1 - I - 0x00B3B0 02:B3A0: 1C        .byte $1C, $06   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B3B2 02:B3A2: 11        .byte $11, $06, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B3B6 02:B3A6: 15        .byte $15, $03, con_item_id_box, $00   ; 
- D 1 - I - 0x00B3BA 02:B3AA: 15        .byte $15, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B3BE 02:B3AE: 00        .byte $00, $00, $00, $00   ; 



; 01
- D 1 - I - 0x00B3C2 02:B3B2: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B3C3 02:B3B3: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B3C4 02:B3B4: 02        .byte $02, $08   ; 00
- D 1 - I - 0x00B3C6 02:B3B6: 1D        .byte $1D, $05   ; 01
- D 1 - I - 0x00B3C8 02:B3B8: 0E        .byte $0E, $02   ; 02
- D 1 - I - 0x00B3CA 02:B3BA: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B3CC 02:B3BC: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B3CE 02:B3BE: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B3D0 02:B3C0: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B3D2 02:B3C2: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B3D4 02:B3C4: 01        .byte $01, $0C   ; 00
- D 1 - I - 0x00B3D6 02:B3C6: 02        .byte $02, $02   ; 01
- D 1 - I - 0x00B3D8 02:B3C8: 0C        .byte $0C, $02   ; 02
- D 1 - I - 0x00B3DA 02:B3CA: 08        .byte $08, $08   ; 03
- D 1 - I - 0x00B3DC 02:B3CC: 11        .byte $11, $02   ; 04
- D 1 - I - 0x00B3DE 02:B3CE: 1E        .byte $1E, $02   ; 05
- D 1 - I - 0x00B3E0 02:B3D0: 1E        .byte $1E, $07   ; 06
- D 1 - I - 0x00B3E2 02:B3D2: 19        .byte $19, $0B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B3E4 02:B3D4: 0A        .byte $0A, $02, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B3E8 02:B3D8: 0D        .byte $0D, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B3EC 02:B3DC: 1C        .byte $1C, $05, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B3F0 02:B3E0: 00        .byte $00, $00, $00, $00   ; 



; 02
- D 1 - I - 0x00B3F4 02:B3E4: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B3F5 02:B3E5: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B3F6 02:B3E6: 02        .byte $02, $0C   ; 00
- D 1 - I - 0x00B3F8 02:B3E8: 0A        .byte $0A, $06   ; 01
- D 1 - I - 0x00B3FA 02:B3EA: 0C        .byte $0C, $03   ; 02
- D 1 - I - 0x00B3FC 02:B3EC: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B3FE 02:B3EE: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B400 02:B3F0: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B402 02:B3F2: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B404 02:B3F4: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B406 02:B3F6: 05        .byte $05, $09   ; 00
- D 1 - I - 0x00B408 02:B3F8: 06        .byte $06, $06   ; 01
- D 1 - I - 0x00B40A 02:B3FA: 0B        .byte $0B, $06   ; 02
- D 1 - I - 0x00B40C 02:B3FC: 11        .byte $11, $03   ; 03
- D 1 - I - 0x00B40E 02:B3FE: 13        .byte $13, $06   ; 04
- D 1 - I - 0x00B410 02:B400: 1D        .byte $1D, $0B   ; 05
- D 1 - I - 0x00B412 02:B402: 1D        .byte $1D, $02   ; 06
- D 1 - I - 0x00B414 02:B404: 10        .byte $10, $09   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B416 02:B406: 16        .byte $16, $03, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B41A 02:B40A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B41E 02:B40E: 19        .byte $19, $02, con_item_id_box, $00   ; 
- D 1 - I - 0x00B422 02:B412: 19        .byte $19, $08, con_item_id_potion, $00   ; 



; 03
- D 1 - I - 0x00B426 02:B416: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B427 02:B417: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B428 02:B418: 0C        .byte $0C, $0C   ; 00
- D 1 - I - 0x00B42A 02:B41A: 0D        .byte $0D, $02   ; 01
- D 1 - I - 0x00B42C 02:B41C: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B42E 02:B41E: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B430 02:B420: 18        .byte $18, $06   ; 04
- D 1 - I - 0x00B432 02:B422: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B434 02:B424: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B436 02:B426: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B438 02:B428: 07        .byte $07, $06   ; 00
- D 1 - I - 0x00B43A 02:B42A: 08        .byte $08, $09   ; 01
- D 1 - I - 0x00B43C 02:B42C: 01        .byte $01, $0C   ; 02
- D 1 - I - 0x00B43E 02:B42E: 11        .byte $11, $05   ; 03
- D 1 - I - 0x00B440 02:B430: 11        .byte $11, $08   ; 04
- D 1 - I - 0x00B442 02:B432: 12        .byte $12, $02   ; 05
- D 1 - I - 0x00B444 02:B434: 16        .byte $16, $09   ; 06
- D 1 - I - 0x00B446 02:B436: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B448 02:B438: 11        .byte $11, $02, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B44C 02:B43C: 19        .byte $19, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B450 02:B440: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B454 02:B444: 00        .byte $00, $00, $00, $00   ; 



; 04
- D 1 - I - 0x00B458 02:B448: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B459 02:B449: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B45A 02:B44A: 0E        .byte $0E, $0C   ; 00
- D 1 - I - 0x00B45C 02:B44C: 18        .byte $18, $03   ; 01
- D 1 - I - 0x00B45E 02:B44E: 0C        .byte $0C, $03   ; 02
- D 1 - I - 0x00B460 02:B450: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B462 02:B452: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B464 02:B454: 05        .byte $05, $03   ; 05
- D 1 - I - 0x00B466 02:B456: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B468 02:B458: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B46A 02:B45A: 08        .byte $08, $02   ; 00
- D 1 - I - 0x00B46C 02:B45C: 0F        .byte $0F, $02   ; 01
- D 1 - I - 0x00B46E 02:B45E: 0B        .byte $0B, $06   ; 02
- D 1 - I - 0x00B470 02:B460: 0D        .byte $0D, $09   ; 03
- D 1 - I - 0x00B472 02:B462: 13        .byte $13, $03   ; 04
- D 1 - I - 0x00B474 02:B464: 11        .byte $11, $08   ; 05
- D 1 - I - 0x00B476 02:B466: 1E        .byte $1E, $02   ; 06
- D 1 - I - 0x00B478 02:B468: 1A        .byte $1A, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B47A 02:B46A: 09        .byte $09, $06, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B47E 02:B46E: 10        .byte $10, $02, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B482 02:B472: 14        .byte $14, $06, con_item_id_box, $00   ; 
- D 1 - I - 0x00B486 02:B476: 00        .byte $00, $00, $00, $00   ; 



; 05
- D 1 - I - 0x00B48A 02:B47A: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B48B 02:B47B: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B48C 02:B47C: 04        .byte $04, $08   ; 00
- D 1 - I - 0x00B48E 02:B47E: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B490 02:B480: 08        .byte $08, $02   ; 02
- D 1 - I - 0x00B492 02:B482: 12        .byte $12, $05   ; 03
- D 1 - I - 0x00B494 02:B484: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B496 02:B486: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B498 02:B488: 15        .byte $15, $0B   ; 06
- D 1 - I - 0x00B49A 02:B48A: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B49C 02:B48C: 0D        .byte $0D, $02   ; 00
- D 1 - I - 0x00B49E 02:B48E: 05        .byte $05, $05   ; 01
- D 1 - I - 0x00B4A0 02:B490: 05        .byte $05, $0B   ; 02
- D 1 - I - 0x00B4A2 02:B492: 0E        .byte $0E, $0B   ; 03
- D 1 - I - 0x00B4A4 02:B494: 17        .byte $17, $02   ; 04
- D 1 - I - 0x00B4A6 02:B496: 1A        .byte $1A, $05   ; 05
- D 1 - I - 0x00B4A8 02:B498: 1A        .byte $1A, $0B   ; 06
- D 1 - I - 0x00B4AA 02:B49A: 1E        .byte $1E, $08   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B4AC 02:B49C: 0F        .byte $0F, $02, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B4B0 02:B4A0: 13        .byte $13, $05, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B4B4 02:B4A4: 19        .byte $19, $05, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B4B8 02:B4A8: 1B        .byte $1B, $08, con_item_id_potion, $00   ; 



; 06
- D 1 - I - 0x00B4BC 02:B4AC: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B4BD 02:B4AD: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B4BE 02:B4AE: 10        .byte $10, $0C   ; 00
- D 1 - I - 0x00B4C0 02:B4B0: 16        .byte $16, $0C   ; 01
- D 1 - I - 0x00B4C2 02:B4B2: 01        .byte $01, $06   ; 02
- D 1 - I - 0x00B4C4 02:B4B4: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B4C6 02:B4B6: 10        .byte $10, $03   ; 04
- D 1 - I - 0x00B4C8 02:B4B8: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B4CA 02:B4BA: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B4CC 02:B4BC: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B4CE 02:B4BE: 06        .byte $06, $03   ; 00
- D 1 - I - 0x00B4D0 02:B4C0: 11        .byte $11, $03   ; 01
- D 1 - I - 0x00B4D2 02:B4C2: 0E        .byte $0E, $06   ; 02
- D 1 - I - 0x00B4D4 02:B4C4: 16        .byte $16, $06   ; 03
- D 1 - I - 0x00B4D6 02:B4C6: 06        .byte $06, $0C   ; 04
- D 1 - I - 0x00B4D8 02:B4C8: 11        .byte $11, $0C   ; 05
- D 1 - I - 0x00B4DA 02:B4CA: 1A        .byte $1A, $0C   ; 06
- D 1 - I - 0x00B4DC 02:B4CC: 1E        .byte $1E, $09   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B4DE 02:B4CE: 14        .byte $14, $03, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B4E2 02:B4D2: 09        .byte $09, $0C, con_item_id_box, $00   ; 
- D 1 - I - 0x00B4E6 02:B4D6: 1C        .byte $1C, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B4EA 02:B4DA: 00        .byte $00, $00, $00, $00   ; 



; 07
- D 1 - I - 0x00B4EE 02:B4DE: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B4EF 02:B4DF: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B4F0 02:B4E0: 08        .byte $08, $0C   ; 00
- D 1 - I - 0x00B4F2 02:B4E2: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B4F4 02:B4E4: 01        .byte $01, $06   ; 02
- D 1 - I - 0x00B4F6 02:B4E6: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B4F8 02:B4E8: 12        .byte $12, $02   ; 04
- D 1 - I - 0x00B4FA 02:B4EA: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B4FC 02:B4EC: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B4FE 02:B4EE: 1D        .byte $1D, $0C   ; 07
; carrots X, Y
- D 1 - I - 0x00B500 02:B4F0: 05        .byte $05, $04   ; 00
- D 1 - I - 0x00B502 02:B4F2: 04        .byte $04, $04   ; 01
- D 1 - I - 0x00B504 02:B4F4: 01        .byte $01, $09   ; 02
- D 1 - I - 0x00B506 02:B4F6: 01        .byte $01, $0C   ; 03
- D 1 - I - 0x00B508 02:B4F8: 09        .byte $09, $06   ; 04
- D 1 - I - 0x00B50A 02:B4FA: 15        .byte $15, $06   ; 05
- D 1 - I - 0x00B50C 02:B4FC: 1D        .byte $1D, $05   ; 06
- D 1 - I - 0x00B50E 02:B4FE: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B510 02:B500: 0C        .byte $0C, $02, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B514 02:B504: 14        .byte $14, $02, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B518 02:B508: 1C        .byte $1C, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B51C 02:B50C: 19        .byte $19, $09, $05, $00   ; 



; 08
- D 1 - I - 0x00B520 02:B510: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B521 02:B511: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B522 02:B512: 05        .byte $05, $0C   ; 00
- D 1 - I - 0x00B524 02:B514: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B526 02:B516: 02        .byte $02, $02   ; 02
- D 1 - I - 0x00B528 02:B518: 1D        .byte $1D, $05   ; 03
- D 1 - I - 0x00B52A 02:B51A: 0E        .byte $0E, $02   ; 04
- D 1 - I - 0x00B52C 02:B51C: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B52E 02:B51E: 0D        .byte $0D, $08   ; 06
- D 1 - I - 0x00B530 02:B520: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B532 02:B522: 01        .byte $01, $02   ; 00
- D 1 - I - 0x00B534 02:B524: 18        .byte $18, $02   ; 01
- D 1 - I - 0x00B536 02:B526: 17        .byte $17, $05   ; 02
- D 1 - I - 0x00B538 02:B528: 07        .byte $07, $08   ; 03
- D 1 - I - 0x00B53A 02:B52A: 12        .byte $12, $08   ; 04
- D 1 - I - 0x00B53C 02:B52C: 06        .byte $06, $0C   ; 05
- D 1 - I - 0x00B53E 02:B52E: 0B        .byte $0B, $0C   ; 06
- D 1 - I - 0x00B540 02:B530: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B542 02:B532: 12        .byte $12, $02, con_item_id_box, $00   ; 
- D 1 - I - 0x00B546 02:B536: 1E        .byte $1E, $05, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B54A 02:B53A: 19        .byte $19, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B54E 02:B53E: 00        .byte $00, $00, $00, $00   ; 



; 09
- D 1 - I - 0x00B552 02:B542: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B553 02:B543: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B554 02:B544: 09        .byte $09, $0C   ; 00
- D 1 - I - 0x00B556 02:B546: 17        .byte $17, $0C   ; 01
- D 1 - I - 0x00B558 02:B548: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B55A 02:B54A: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B55C 02:B54C: 01        .byte $01, $02   ; 04
- D 1 - I - 0x00B55E 02:B54E: 1A        .byte $1A, $02   ; 05
- D 1 - I - 0x00B560 02:B550: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B562 02:B552: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B564 02:B554: 06        .byte $06, $05   ; 00
- D 1 - I - 0x00B566 02:B556: 02        .byte $02, $0C   ; 01
- D 1 - I - 0x00B568 02:B558: 0C        .byte $0C, $09   ; 02
- D 1 - I - 0x00B56A 02:B55A: 14        .byte $14, $06   ; 03
- D 1 - I - 0x00B56C 02:B55C: 1E        .byte $1E, $05   ; 04
- D 1 - I - 0x00B56E 02:B55E: 15        .byte $15, $09   ; 05
- D 1 - I - 0x00B570 02:B560: 1B        .byte $1B, $0C   ; 06
- D 1 - I - 0x00B572 02:B562: 0E        .byte $0E, $05   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B574 02:B564: 1C        .byte $1C, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B578 02:B568: 03        .byte $03, $05, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B57C 02:B56C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B580 02:B570: 00        .byte $00, $00, $00, $00   ; 



; 0A
- D 1 - I - 0x00B584 02:B574: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B585 02:B575: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B586 02:B576: 03        .byte $03, $0C   ; 00
- D 1 - I - 0x00B588 02:B578: 04        .byte $04, $03   ; 01
- D 1 - I - 0x00B58A 02:B57A: 10        .byte $10, $03   ; 02
- D 1 - I - 0x00B58C 02:B57C: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B58E 02:B57E: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B590 02:B580: 1D        .byte $1D, $0C   ; 05
- D 1 - I - 0x00B592 02:B582: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B594 02:B584: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B596 02:B586: 06        .byte $06, $03   ; 00
- D 1 - I - 0x00B598 02:B588: 06        .byte $06, $09   ; 01
- D 1 - I - 0x00B59A 02:B58A: 0D        .byte $0D, $09   ; 02
- D 1 - I - 0x00B59C 02:B58C: 12        .byte $12, $03   ; 03
- D 1 - I - 0x00B59E 02:B58E: 14        .byte $14, $06   ; 04
- D 1 - I - 0x00B5A0 02:B590: 1B        .byte $1B, $03   ; 05
- D 1 - I - 0x00B5A2 02:B592: 1C        .byte $1C, $0C   ; 06
- D 1 - I - 0x00B5A4 02:B594: 1E        .byte $1E, $07   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B5A6 02:B596: 0B        .byte $0B, $06, con_item_id_box, $00   ; 
- D 1 - I - 0x00B5AA 02:B59A: 1C        .byte $1C, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B5AE 02:B59E: 1D        .byte $1D, $09, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B5B2 02:B5A2: 00        .byte $00, $00, $00, $00   ; 



; 0B
- D 1 - I - 0x00B5B6 02:B5A6: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B5B7 02:B5A7: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B5B8 02:B5A8: 12        .byte $12, $04   ; 00
- D 1 - I - 0x00B5BA 02:B5AA: 01        .byte $01, $0C   ; 01
- D 1 - I - 0x00B5BC 02:B5AC: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B5BE 02:B5AE: 1E        .byte $1E, $0C   ; 03
- D 1 - I - 0x00B5C0 02:B5B0: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B5C2 02:B5B2: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B5C4 02:B5B4: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B5C6 02:B5B6: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B5C8 02:B5B8: 03        .byte $03, $02   ; 00
- D 1 - I - 0x00B5CA 02:B5BA: 08        .byte $08, $06   ; 01
- D 1 - I - 0x00B5CC 02:B5BC: 1C        .byte $1C, $05   ; 02
- D 1 - I - 0x00B5CE 02:B5BE: 1B        .byte $1B, $08   ; 03
- D 1 - I - 0x00B5D0 02:B5C0: 0F        .byte $0F, $09   ; 04
- D 1 - I - 0x00B5D2 02:B5C2: 14        .byte $14, $0A   ; 05
- D 1 - I - 0x00B5D4 02:B5C4: 06        .byte $06, $0C   ; 06
- D 1 - I - 0x00B5D6 02:B5C6: 1B        .byte $1B, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B5D8 02:B5C8: 0D        .byte $0D, $06, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B5DC 02:B5CC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B5E0 02:B5D0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B5E4 02:B5D4: 00        .byte $00, $00, $00, $00   ; 



; 0C
- D 1 - I - 0x00B5E8 02:B5D8: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B5E9 02:B5D9: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B5EA 02:B5DA: 18        .byte $18, $02   ; 00
- D 1 - I - 0x00B5EC 02:B5DC: 03        .byte $03, $09   ; 01
- D 1 - I - 0x00B5EE 02:B5DE: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B5F0 02:B5E0: 03        .byte $03, $02   ; 03
- D 1 - I - 0x00B5F2 02:B5E2: 0B        .byte $0B, $0C   ; 04
- D 1 - I - 0x00B5F4 02:B5E4: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B5F6 02:B5E6: 17        .byte $17, $0C   ; 06
- D 1 - I - 0x00B5F8 02:B5E8: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B5FA 02:B5EA: 0E        .byte $0E, $04   ; 00
- D 1 - I - 0x00B5FC 02:B5EC: 01        .byte $01, $05   ; 01
- D 1 - I - 0x00B5FE 02:B5EE: 1E        .byte $1E, $06   ; 02
- D 1 - I - 0x00B600 02:B5F0: 07        .byte $07, $08   ; 03
- D 1 - I - 0x00B602 02:B5F2: 0B        .byte $0B, $09   ; 04
- D 1 - I - 0x00B604 02:B5F4: 05        .byte $05, $0C   ; 05
- D 1 - I - 0x00B606 02:B5F6: 14        .byte $14, $0C   ; 06
- D 1 - I - 0x00B608 02:B5F8: 1C        .byte $1C, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B60A 02:B5FA: 06        .byte $06, $02, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B60E 02:B5FE: 04        .byte $04, $02, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B612 02:B602: 17        .byte $17, $09, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B616 02:B606: 00        .byte $00, $00, $00, $00   ; 



; 0D
- D 1 - I - 0x00B61A 02:B60A: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B61B 02:B60B: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B61C 02:B60C: 14        .byte $14, $0C   ; 00
- D 1 - I - 0x00B61E 02:B60E: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B620 02:B610: 03        .byte $03, $09   ; 02
- D 1 - I - 0x00B622 02:B612: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B624 02:B614: 14        .byte $14, $06   ; 04
- D 1 - I - 0x00B626 02:B616: 1C        .byte $1C, $04   ; 05
- D 1 - I - 0x00B628 02:B618: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B62A 02:B61A: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B62C 02:B61C: 02        .byte $02, $03   ; 00
- D 1 - I - 0x00B62E 02:B61E: 04        .byte $04, $06   ; 01
- D 1 - I - 0x00B630 02:B620: 0C        .byte $0C, $03   ; 02
- D 1 - I - 0x00B632 02:B622: 14        .byte $14, $09   ; 03
- D 1 - I - 0x00B634 02:B624: 1A        .byte $1A, $07   ; 04
- D 1 - I - 0x00B636 02:B626: 1B        .byte $1B, $09   ; 05
- D 1 - I - 0x00B638 02:B628: 1E        .byte $1E, $07   ; 06
- D 1 - I - 0x00B63A 02:B62A: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B63C 02:B62C: 11        .byte $11, $03, con_item_id_box, $00   ; 
- D 1 - I - 0x00B640 02:B630: 1C        .byte $1C, $09, con_item_id_box, $00   ; 
- D 1 - I - 0x00B644 02:B634: 08        .byte $08, $05, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B648 02:B638: 00        .byte $00, $00, $00, $00   ; 



; 0E
- D 1 - I - 0x00B64C 02:B63C: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B64D 02:B63D: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B64E 02:B63E: 0E        .byte $0E, $0A   ; 00
- D 1 - I - 0x00B650 02:B640: 18        .byte $18, $08   ; 01
- D 1 - I - 0x00B652 02:B642: 09        .byte $09, $05   ; 02
- D 1 - I - 0x00B654 02:B644: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B656 02:B646: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B658 02:B648: 01        .byte $01, $0C   ; 05
- D 1 - I - 0x00B65A 02:B64A: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B65C 02:B64C: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B65E 02:B64E: 03        .byte $03, $03   ; 00
- D 1 - I - 0x00B660 02:B650: 02        .byte $02, $07   ; 01
- D 1 - I - 0x00B662 02:B652: 07        .byte $07, $08   ; 02
- D 1 - I - 0x00B664 02:B654: 0A        .byte $0A, $02   ; 03
- D 1 - I - 0x00B666 02:B656: 14        .byte $14, $05   ; 04
- D 1 - I - 0x00B668 02:B658: 1D        .byte $1D, $05   ; 05
- D 1 - I - 0x00B66A 02:B65A: 17        .byte $17, $08   ; 06
- D 1 - I - 0x00B66C 02:B65C: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B66E 02:B65E: 04        .byte $04, $0C, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B672 02:B662: 05        .byte $05, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B676 02:B666: 10        .byte $10, $0A, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B67A 02:B66A: 00        .byte $00, $00, $00, $00   ; 



; 0F
- D 1 - I - 0x00B67E 02:B66E: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B67F 02:B66F: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B680 02:B670: 05        .byte $05, $0C   ; 00
- D 1 - I - 0x00B682 02:B672: 0F        .byte $0F, $05   ; 01
- D 1 - I - 0x00B684 02:B674: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B686 02:B676: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B688 02:B678: 1E        .byte $1E, $04   ; 04
- D 1 - I - 0x00B68A 02:B67A: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B68C 02:B67C: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B68E 02:B67E: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B690 02:B680: 02        .byte $02, $03   ; 00
- D 1 - I - 0x00B692 02:B682: 05        .byte $05, $0A   ; 01
- D 1 - I - 0x00B694 02:B684: 07        .byte $07, $06   ; 02
- D 1 - I - 0x00B696 02:B686: 0E        .byte $0E, $02   ; 03
- D 1 - I - 0x00B698 02:B688: 14        .byte $14, $08   ; 04
- D 1 - I - 0x00B69A 02:B68A: 18        .byte $18, $03   ; 05
- D 1 - I - 0x00B69C 02:B68C: 1A        .byte $1A, $09   ; 06
- D 1 - I - 0x00B69E 02:B68E: 1D        .byte $1D, $04   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B6A0 02:B690: 07        .byte $07, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B6A4 02:B694: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B6A8 02:B698: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B6AC 02:B69C: 00        .byte $00, $00, $00, $00   ; 



; 10
- D 1 - I - 0x00B6B0 02:B6A0: 01        .byte $01   ; scroll type
- D 1 - I - 0x00B6B1 02:B6A1: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B6B2 02:B6A2: 09        .byte $09, $1B   ; 00
- D 1 - I - 0x00B6B4 02:B6A4: 01        .byte $01, $05   ; 01
- D 1 - I - 0x00B6B6 02:B6A6: 01        .byte $01, $0E   ; 02
- D 1 - I - 0x00B6B8 02:B6A8: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B6BA 02:B6AA: 01        .byte $01, $1B   ; 04
- D 1 - I - 0x00B6BC 02:B6AC: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B6BE 02:B6AE: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B6C0 02:B6B0: 08        .byte $08, $12   ; 07
; carrots X, Y
- D 1 - I - 0x00B6C2 02:B6B2: 07        .byte $07, $02   ; 00
- D 1 - I - 0x00B6C4 02:B6B4: 03        .byte $03, $08   ; 01
- D 1 - I - 0x00B6C6 02:B6B6: 0E        .byte $0E, $08   ; 02
- D 1 - I - 0x00B6C8 02:B6B8: 07        .byte $07, $0C   ; 03
- D 1 - I - 0x00B6CA 02:B6BA: 03        .byte $03, $11   ; 04
- D 1 - I - 0x00B6CC 02:B6BC: 0D        .byte $0D, $11   ; 05
- D 1 - I - 0x00B6CE 02:B6BE: 07        .byte $07, $18   ; 06
- D 1 - I - 0x00B6D0 02:B6C0: 0E        .byte $0E, $18   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B6D2 02:B6C2: 06        .byte $06, $18, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B6D6 02:B6C6: 04        .byte $04, $08, con_item_id_box, $00   ; 
- D 1 - I - 0x00B6DA 02:B6CA: 01        .byte $01, $11, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B6DE 02:B6CE: 00        .byte $00, $00, $00, $00   ; 



; 11
- D 1 - I - 0x00B6E2 02:B6D2: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B6E3 02:B6D3: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B6E4 02:B6D4: 02        .byte $02, $08   ; 00
- D 1 - I - 0x00B6E6 02:B6D6: 0E        .byte $0E, $03   ; 01
- D 1 - I - 0x00B6E8 02:B6D8: 12        .byte $12, $06   ; 02
- D 1 - I - 0x00B6EA 02:B6DA: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B6EC 02:B6DC: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B6EE 02:B6DE: 1D        .byte $1D, $0B   ; 05
- D 1 - I - 0x00B6F0 02:B6E0: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B6F2 02:B6E2: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B6F4 02:B6E4: 01        .byte $01, $03   ; 00
- D 1 - I - 0x00B6F6 02:B6E6: 02        .byte $02, $05   ; 01
- D 1 - I - 0x00B6F8 02:B6E8: 09        .byte $09, $08   ; 02
- D 1 - I - 0x00B6FA 02:B6EA: 0F        .byte $0F, $03   ; 03
- D 1 - I - 0x00B6FC 02:B6EC: 11        .byte $11, $09   ; 04
- D 1 - I - 0x00B6FE 02:B6EE: 16        .byte $16, $06   ; 05
- D 1 - I - 0x00B700 02:B6F0: 1C        .byte $1C, $03   ; 06
- D 1 - I - 0x00B702 02:B6F2: 1E        .byte $1E, $0B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B704 02:B6F4: 09        .byte $09, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B708 02:B6F8: 11        .byte $11, $0C, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B70C 02:B6FC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B710 02:B700: 00        .byte $00, $00, $00, $00   ; 



; 12
- D 1 - I - 0x00B714 02:B704: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B715 02:B705: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B716 02:B706: 03        .byte $03, $0A   ; 00
- D 1 - I - 0x00B718 02:B708: 07        .byte $07, $03   ; 01
- D 1 - I - 0x00B71A 02:B70A: 14        .byte $14, $08   ; 02
- D 1 - I - 0x00B71C 02:B70C: 07        .byte $07, $0C   ; 03
- D 1 - I - 0x00B71E 02:B70E: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B720 02:B710: 12        .byte $12, $0C   ; 05
- D 1 - I - 0x00B722 02:B712: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B724 02:B714: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B726 02:B716: 02        .byte $02, $06   ; 00
- D 1 - I - 0x00B728 02:B718: 02        .byte $02, $0A   ; 01
- D 1 - I - 0x00B72A 02:B71A: 09        .byte $09, $03   ; 02
- D 1 - I - 0x00B72C 02:B71C: 0E        .byte $0E, $0C   ; 03
- D 1 - I - 0x00B72E 02:B71E: 10        .byte $10, $0C   ; 04
- D 1 - I - 0x00B730 02:B720: 14        .byte $14, $03   ; 05
- D 1 - I - 0x00B732 02:B722: 1D        .byte $1D, $05   ; 06
- D 1 - I - 0x00B734 02:B724: 1D        .byte $1D, $0A   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B736 02:B726: 0B        .byte $0B, $08, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B73A 02:B72A: 17        .byte $17, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B73E 02:B72E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B742 02:B732: 00        .byte $00, $00, $00, $00   ; 



; 13
- D 1 - I - 0x00B746 02:B736: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B747 02:B737: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B748 02:B738: 0A        .byte $0A, $09   ; 00
- D 1 - I - 0x00B74A 02:B73A: 01        .byte $01, $09   ; 01
- D 1 - I - 0x00B74C 02:B73C: 16        .byte $16, $0C   ; 02
- D 1 - I - 0x00B74E 02:B73E: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B750 02:B740: 16        .byte $16, $04   ; 04
- D 1 - I - 0x00B752 02:B742: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B754 02:B744: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B756 02:B746: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B758 02:B748: 03        .byte $03, $09   ; 00
- D 1 - I - 0x00B75A 02:B74A: 08        .byte $08, $06   ; 01
- D 1 - I - 0x00B75C 02:B74C: 0A        .byte $0A, $06   ; 02
- D 1 - I - 0x00B75E 02:B74E: 0E        .byte $0E, $0C   ; 03
- D 1 - I - 0x00B760 02:B750: 11        .byte $11, $09   ; 04
- D 1 - I - 0x00B762 02:B752: 13        .byte $13, $0C   ; 05
- D 1 - I - 0x00B764 02:B754: 1D        .byte $1D, $03   ; 06
- D 1 - I - 0x00B766 02:B756: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B768 02:B758: 0D        .byte $0D, $03, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B76C 02:B75C: 13        .byte $13, $08, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B770 02:B760: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B774 02:B764: 00        .byte $00, $00, $00, $00   ; 



; 14
- D 1 - I - 0x00B778 02:B768: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B779 02:B769: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B77A 02:B76A: 0B        .byte $0B, $09   ; 00
- D 1 - I - 0x00B77C 02:B76C: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B77E 02:B76E: 01        .byte $01, $06   ; 02
- D 1 - I - 0x00B780 02:B770: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B782 02:B772: 1C        .byte $1C, $06   ; 04
- D 1 - I - 0x00B784 02:B774: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B786 02:B776: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B788 02:B778: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B78A 02:B77A: 05        .byte $05, $03   ; 00
- D 1 - I - 0x00B78C 02:B77C: 0B        .byte $0B, $03   ; 01
- D 1 - I - 0x00B78E 02:B77E: 11        .byte $11, $03   ; 02
- D 1 - I - 0x00B790 02:B780: 17        .byte $17, $03   ; 03
- D 1 - I - 0x00B792 02:B782: 1E        .byte $1E, $06   ; 04
- D 1 - I - 0x00B794 02:B784: 0A        .byte $0A, $0C   ; 05
- D 1 - I - 0x00B796 02:B786: 10        .byte $10, $0C   ; 06
- D 1 - I - 0x00B798 02:B788: 16        .byte $16, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B79A 02:B78A: 13        .byte $13, $06, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B79E 02:B78E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B7A2 02:B792: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B7A6 02:B796: 00        .byte $00, $00, $00, $00   ; 



; 15
- D 1 - I - 0x00B7AA 02:B79A: 01        .byte $01   ; scroll type
- D 1 - I - 0x00B7AB 02:B79B: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B7AC 02:B79C: 0D        .byte $0D, $0E   ; 00
- D 1 - I - 0x00B7AE 02:B79E: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B7B0 02:B7A0: 0D        .byte $0D, $02   ; 02
- D 1 - I - 0x00B7B2 02:B7A2: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B7B4 02:B7A4: 01        .byte $01, $0B   ; 04
- D 1 - I - 0x00B7B6 02:B7A6: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B7B8 02:B7A8: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B7BA 02:B7AA: 09        .byte $09, $1B   ; 07
; carrots X, Y
- D 1 - I - 0x00B7BC 02:B7AC: 08        .byte $08, $05   ; 00
- D 1 - I - 0x00B7BE 02:B7AE: 08        .byte $08, $08   ; 01
- D 1 - I - 0x00B7C0 02:B7B0: 06        .byte $06, $0E   ; 02
- D 1 - I - 0x00B7C2 02:B7B2: 0D        .byte $0D, $11   ; 03
- D 1 - I - 0x00B7C4 02:B7B4: 02        .byte $02, $12   ; 04
- D 1 - I - 0x00B7C6 02:B7B6: 01        .byte $01, $18   ; 05
- D 1 - I - 0x00B7C8 02:B7B8: 0B        .byte $0B, $18   ; 06
- D 1 - I - 0x00B7CA 02:B7BA: 0C        .byte $0C, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B7CC 02:B7BC: 0C        .byte $0C, $14, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B7D0 02:B7C0: 0C        .byte $0C, $08, con_item_id_box, $00   ; 
- D 1 - I - 0x00B7D4 02:B7C4: 02        .byte $02, $0B, con_item_id_box, $00   ; 
- D 1 - I - 0x00B7D8 02:B7C8: 01        .byte $01, $05, con_item_id_glove, $00   ; 



; 16
- D 1 - I - 0x00B7DC 02:B7CC: 01        .byte $01   ; scroll type
- D 1 - I - 0x00B7DD 02:B7CD: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B7DE 02:B7CE: 07        .byte $07, $11   ; 00
- D 1 - I - 0x00B7E0 02:B7D0: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B7E2 02:B7D2: 05        .byte $05, $05   ; 02
- D 1 - I - 0x00B7E4 02:B7D4: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B7E6 02:B7D6: 04        .byte $04, $0E   ; 04
- D 1 - I - 0x00B7E8 02:B7D8: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B7EA 02:B7DA: 09        .byte $09, $17   ; 06
- D 1 - I - 0x00B7EC 02:B7DC: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B7EE 02:B7DE: 02        .byte $02, $09   ; 00
- D 1 - I - 0x00B7F0 02:B7E0: 0B        .byte $0B, $03   ; 01
- D 1 - I - 0x00B7F2 02:B7E2: 0A        .byte $0A, $0B   ; 02
- D 1 - I - 0x00B7F4 02:B7E4: 02        .byte $02, $11   ; 03
- D 1 - I - 0x00B7F6 02:B7E6: 0B        .byte $0B, $14   ; 04
- D 1 - I - 0x00B7F8 02:B7E8: 01        .byte $01, $16   ; 05
- D 1 - I - 0x00B7FA 02:B7EA: 01        .byte $01, $1A   ; 06
- D 1 - I - 0x00B7FC 02:B7EC: 0A        .byte $0A, $1A   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B7FE 02:B7EE: 0C        .byte $0C, $14, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B802 02:B7F2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B806 02:B7F6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B80A 02:B7FA: 00        .byte $00, $00, $00, $00   ; 



; 17
- D 1 - I - 0x00B80E 02:B7FE: 01        .byte $01   ; scroll type
- D 1 - I - 0x00B80F 02:B7FF: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B810 02:B800: 06        .byte $06, $0B   ; 00
- D 1 - I - 0x00B812 02:B802: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B814 02:B804: 0B        .byte $0B, $03   ; 02
- D 1 - I - 0x00B816 02:B806: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B818 02:B808: 06        .byte $06, $11   ; 04
- D 1 - I - 0x00B81A 02:B80A: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B81C 02:B80C: 05        .byte $05, $1A   ; 06
- D 1 - I - 0x00B81E 02:B80E: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B820 02:B810: 05        .byte $05, $02   ; 00
- D 1 - I - 0x00B822 02:B812: 04        .byte $04, $06   ; 01
- D 1 - I - 0x00B824 02:B814: 0C        .byte $0C, $07   ; 02
- D 1 - I - 0x00B826 02:B816: 06        .byte $06, $0E   ; 03
- D 1 - I - 0x00B828 02:B818: 01        .byte $01, $14   ; 04
- D 1 - I - 0x00B82A 02:B81A: 0E        .byte $0E, $0F   ; 05
- D 1 - I - 0x00B82C 02:B81C: 08        .byte $08, $14   ; 06
- D 1 - I - 0x00B82E 02:B81E: 07        .byte $07, $17   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B830 02:B820: 09        .byte $09, $0B, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B834 02:B824: 03        .byte $03, $1A, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B838 02:B828: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B83C 02:B82C: 00        .byte $00, $00, $00, $00   ; 



; 18
- D 1 - I - 0x00B840 02:B830: 01        .byte $01   ; scroll type
- D 1 - I - 0x00B841 02:B831: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B842 02:B832: 0C        .byte $0C, $1B   ; 00
- D 1 - I - 0x00B844 02:B834: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B846 02:B836: 07        .byte $07, $0D   ; 02
- D 1 - I - 0x00B848 02:B838: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B84A 02:B83A: 03        .byte $03, $10   ; 04
- D 1 - I - 0x00B84C 02:B83C: 0D        .byte $0D, $14   ; 05
- D 1 - I - 0x00B84E 02:B83E: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B850 02:B840: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B852 02:B842: 08        .byte $08, $06   ; 00
- D 1 - I - 0x00B854 02:B844: 07        .byte $07, $0B   ; 01
- D 1 - I - 0x00B856 02:B846: 08        .byte $08, $0B   ; 02
- D 1 - I - 0x00B858 02:B848: 07        .byte $07, $10   ; 03
- D 1 - I - 0x00B85A 02:B84A: 0D        .byte $0D, $10   ; 04
- D 1 - I - 0x00B85C 02:B84C: 07        .byte $07, $13   ; 05
- D 1 - I - 0x00B85E 02:B84E: 04        .byte $04, $14   ; 06
- D 1 - I - 0x00B860 02:B850: 04        .byte $04, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B862 02:B852: 0A        .byte $0A, $09, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B866 02:B856: 02        .byte $02, $14, con_item_id_potion, $00   ; 
- D 1 - I - 0x00B86A 02:B85A: 02        .byte $02, $1B, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B86E 02:B85E: 00        .byte $00, $00, $00, $00   ; 



; 19
- D 1 - I - 0x00B872 02:B862: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B873 02:B863: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B874 02:B864: 02        .byte $02, $0C   ; 00
- D 1 - I - 0x00B876 02:B866: 16        .byte $16, $02   ; 01
- D 1 - I - 0x00B878 02:B868: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B87A 02:B86A: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B87C 02:B86C: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B87E 02:B86E: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B880 02:B870: 1B        .byte $1B, $0B   ; 06
- D 1 - I - 0x00B882 02:B872: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B884 02:B874: 03        .byte $03, $03   ; 00
- D 1 - I - 0x00B886 02:B876: 03        .byte $03, $06   ; 01
- D 1 - I - 0x00B888 02:B878: 05        .byte $05, $09   ; 02
- D 1 - I - 0x00B88A 02:B87A: 07        .byte $07, $03   ; 03
- D 1 - I - 0x00B88C 02:B87C: 0E        .byte $0E, $02   ; 04
- D 1 - I - 0x00B88E 02:B87E: 11        .byte $11, $08   ; 05
- D 1 - I - 0x00B890 02:B880: 1C        .byte $1C, $05   ; 06
- D 1 - I - 0x00B892 02:B882: 1E        .byte $1E, $08   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B894 02:B884: 15        .byte $15, $05, con_item_id_box, $00   ; 
- D 1 - I - 0x00B898 02:B888: 04        .byte $04, $09, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B89C 02:B88C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B8A0 02:B890: 00        .byte $00, $00, $00, $00   ; 



; 1A
- D 1 - I - 0x00B8A4 02:B894: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B8A5 02:B895: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B8A6 02:B896: 05        .byte $05, $09   ; 00
- D 1 - I - 0x00B8A8 02:B898: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B8AA 02:B89A: 07        .byte $07, $03   ; 02
- D 1 - I - 0x00B8AC 02:B89C: 11        .byte $11, $02   ; 03
- D 1 - I - 0x00B8AE 02:B89E: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B8B0 02:B8A0: 1B        .byte $1B, $0C   ; 05
- D 1 - I - 0x00B8B2 02:B8A2: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B8B4 02:B8A4: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B8B6 02:B8A6: 03        .byte $03, $03   ; 00
- D 1 - I - 0x00B8B8 02:B8A8: 0A        .byte $0A, $02   ; 01
- D 1 - I - 0x00B8BA 02:B8AA: 0D        .byte $0D, $05   ; 02
- D 1 - I - 0x00B8BC 02:B8AC: 0E        .byte $0E, $09   ; 03
- D 1 - I - 0x00B8BE 02:B8AE: 13        .byte $13, $05   ; 04
- D 1 - I - 0x00B8C0 02:B8B0: 13        .byte $13, $09   ; 05
- D 1 - I - 0x00B8C2 02:B8B2: 18        .byte $18, $03   ; 06
- D 1 - I - 0x00B8C4 02:B8B4: 19        .byte $19, $06   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B8C6 02:B8B6: 04        .byte $04, $06, con_item_id_10t, $00   ; 
- D 1 - I - 0x00B8CA 02:B8BA: 1B        .byte $1B, $09, con_item_id_10t, $00   ; 
- D 1 - I - 0x00B8CE 02:B8BE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B8D2 02:B8C2: 00        .byte $00, $00, $00, $00   ; 



; 1B
- D 1 - I - 0x00B8D6 02:B8C6: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B8D7 02:B8C7: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B8D8 02:B8C8: 1D        .byte $1D, $0C   ; 00
- D 1 - I - 0x00B8DA 02:B8CA: 0C        .byte $0C, $02   ; 01
- D 1 - I - 0x00B8DC 02:B8CC: 0F        .byte $0F, $08   ; 02
- D 1 - I - 0x00B8DE 02:B8CE: 0A        .byte $0A, $0C   ; 03
- D 1 - I - 0x00B8E0 02:B8D0: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B8E2 02:B8D2: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B8E4 02:B8D4: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B8E6 02:B8D6: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B8E8 02:B8D8: 02        .byte $02, $02   ; 00
- D 1 - I - 0x00B8EA 02:B8DA: 0E        .byte $0E, $02   ; 01
- D 1 - I - 0x00B8EC 02:B8DC: 13        .byte $13, $02   ; 02
- D 1 - I - 0x00B8EE 02:B8DE: 1E        .byte $1E, $02   ; 03
- D 1 - I - 0x00B8F0 02:B8E0: 11        .byte $11, $08   ; 04
- D 1 - I - 0x00B8F2 02:B8E2: 06        .byte $06, $0C   ; 05
- D 1 - I - 0x00B8F4 02:B8E4: 0B        .byte $0B, $0C   ; 06
- D 1 - I - 0x00B8F6 02:B8E6: 15        .byte $15, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B8F8 02:B8E8: 10        .byte $10, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B8FC 02:B8EC: 16        .byte $16, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B900 02:B8F0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B904 02:B8F4: 00        .byte $00, $00, $00, $00   ; 



; 1C
- D 1 - I - 0x00B908 02:B8F8: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B909 02:B8F9: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B90A 02:B8FA: 13        .byte $13, $02   ; 00
- D 1 - I - 0x00B90C 02:B8FC: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B90E 02:B8FE: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B910 02:B900: 0B        .byte $0B, $02   ; 03
- D 1 - I - 0x00B912 02:B902: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B914 02:B904: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B916 02:B906: 0C        .byte $0C, $06   ; 06
- D 1 - I - 0x00B918 02:B908: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B91A 02:B90A: 0A        .byte $0A, $02   ; 00
- D 1 - I - 0x00B91C 02:B90C: 15        .byte $15, $02   ; 01
- D 1 - I - 0x00B91E 02:B90E: 13        .byte $13, $06   ; 02
- D 1 - I - 0x00B920 02:B910: 02        .byte $02, $07   ; 03
- D 1 - I - 0x00B922 02:B912: 1D        .byte $1D, $07   ; 04
- D 1 - I - 0x00B924 02:B914: 0C        .byte $0C, $09   ; 05
- D 1 - I - 0x00B926 02:B916: 18        .byte $18, $09   ; 06
- D 1 - I - 0x00B928 02:B918: 0C        .byte $0C, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B92A 02:B91A: 1C        .byte $1C, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B92E 02:B91E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B932 02:B922: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B936 02:B926: 00        .byte $00, $00, $00, $00   ; 



; 1D
- D 1 - I - 0x00B93A 02:B92A: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B93B 02:B92B: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B93C 02:B92C: 02        .byte $02, $0C   ; 00
- D 1 - I - 0x00B93E 02:B92E: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B940 02:B930: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B942 02:B932: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00B944 02:B934: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00B946 02:B936: 10        .byte $10, $07   ; 05
- D 1 - I - 0x00B948 02:B938: 19        .byte $19, $0C   ; 06
- D 1 - I - 0x00B94A 02:B93A: 09        .byte $09, $02   ; 07
; carrots X, Y
- D 1 - I - 0x00B94C 02:B93C: 05        .byte $05, $02   ; 00
- D 1 - I - 0x00B94E 02:B93E: 13        .byte $13, $02   ; 01
- D 1 - I - 0x00B950 02:B940: 19        .byte $19, $02   ; 02
- D 1 - I - 0x00B952 02:B942: 0E        .byte $0E, $07   ; 03
- D 1 - I - 0x00B954 02:B944: 16        .byte $16, $07   ; 04
- D 1 - I - 0x00B956 02:B946: 09        .byte $09, $0C   ; 05
- D 1 - I - 0x00B958 02:B948: 15        .byte $15, $0C   ; 06
- D 1 - I - 0x00B95A 02:B94A: 1D        .byte $1D, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B95C 02:B94C: 10        .byte $10, $0C, con_item_id_sign_03, $00   ; 
- D 1 - I - 0x00B960 02:B950: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B964 02:B954: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B968 02:B958: 00        .byte $00, $00, $00, $00   ; 



; 1E
- D 1 - I - 0x00B96C 02:B95C: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B96D 02:B95D: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B96E 02:B95E: 11        .byte $11, $0C   ; 00
- D 1 - I - 0x00B970 02:B960: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B972 02:B962: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B974 02:B964: 08        .byte $08, $02   ; 03
- D 1 - I - 0x00B976 02:B966: 09        .byte $09, $0C   ; 04
- D 1 - I - 0x00B978 02:B968: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B97A 02:B96A: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B97C 02:B96C: 17        .byte $17, $05   ; 07
; carrots X, Y
- D 1 - I - 0x00B97E 02:B96E: 05        .byte $05, $02   ; 00
- D 1 - I - 0x00B980 02:B970: 01        .byte $01, $0C   ; 01
- D 1 - I - 0x00B982 02:B972: 07        .byte $07, $0C   ; 02
- D 1 - I - 0x00B984 02:B974: 0C        .byte $0C, $08   ; 03
- D 1 - I - 0x00B986 02:B976: 16        .byte $16, $02   ; 04
- D 1 - I - 0x00B988 02:B978: 13        .byte $13, $08   ; 05
- D 1 - I - 0x00B98A 02:B97A: 1C        .byte $1C, $02   ; 06
- D 1 - I - 0x00B98C 02:B97C: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B98E 02:B97E: 13        .byte $13, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B992 02:B982: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B996 02:B986: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B99A 02:B98A: 00        .byte $00, $00, $00, $00   ; 



; 1F
- D 1 - I - 0x00B99E 02:B98E: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B99F 02:B98F: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B9A0 02:B990: 09        .byte $09, $09   ; 00
- D 1 - I - 0x00B9A2 02:B992: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B9A4 02:B994: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00B9A6 02:B996: 14        .byte $14, $02   ; 03
- D 1 - I - 0x00B9A8 02:B998: 10        .byte $10, $06   ; 04
- D 1 - I - 0x00B9AA 02:B99A: 1C        .byte $1C, $08   ; 05
- D 1 - I - 0x00B9AC 02:B99C: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00B9AE 02:B99E: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B9B0 02:B9A0: 08        .byte $08, $02   ; 00
- D 1 - I - 0x00B9B2 02:B9A2: 12        .byte $12, $02   ; 01
- D 1 - I - 0x00B9B4 02:B9A4: 02        .byte $02, $03   ; 02
- D 1 - I - 0x00B9B6 02:B9A6: 15        .byte $15, $05   ; 03
- D 1 - I - 0x00B9B8 02:B9A8: 12        .byte $12, $09   ; 04
- D 1 - I - 0x00B9BA 02:B9AA: 07        .byte $07, $0C   ; 05
- D 1 - I - 0x00B9BC 02:B9AC: 12        .byte $12, $0C   ; 06
- D 1 - I - 0x00B9BE 02:B9AE: 19        .byte $19, $0B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B9C0 02:B9B0: 11        .byte $11, $02, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B9C4 02:B9B4: 0E        .byte $0E, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B9C8 02:B9B8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B9CC 02:B9BC: 00        .byte $00, $00, $00, $00   ; 



; 20
- D 1 - I - 0x00B9D0 02:B9C0: 00        .byte $00   ; scroll type
- D 1 - I - 0x00B9D1 02:B9C1: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00B9D2 02:B9C2: 15        .byte $15, $03   ; 00
- D 1 - I - 0x00B9D4 02:B9C4: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00B9D6 02:B9C6: 02        .byte $02, $09   ; 02
- D 1 - I - 0x00B9D8 02:B9C8: 0D        .byte $0D, $09   ; 03
- D 1 - I - 0x00B9DA 02:B9CA: 16        .byte $16, $0C   ; 04
- D 1 - I - 0x00B9DC 02:B9CC: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00B9DE 02:B9CE: 04        .byte $04, $02   ; 06
- D 1 - I - 0x00B9E0 02:B9D0: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00B9E2 02:B9D2: 0B        .byte $0B, $03   ; 00
- D 1 - I - 0x00B9E4 02:B9D4: 03        .byte $03, $02   ; 01
- D 1 - I - 0x00B9E6 02:B9D6: 04        .byte $04, $06   ; 02
- D 1 - I - 0x00B9E8 02:B9D8: 1B        .byte $1B, $06   ; 03
- D 1 - I - 0x00B9EA 02:B9DA: 17        .byte $17, $09   ; 04
- D 1 - I - 0x00B9EC 02:B9DC: 1E        .byte $1E, $0A   ; 05
- D 1 - I - 0x00B9EE 02:B9DE: 03        .byte $03, $0C   ; 06
- D 1 - I - 0x00B9F0 02:B9E0: 0B        .byte $0B, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00B9F2 02:B9E2: 13        .byte $13, $09, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00B9F6 02:B9E6: 09        .byte $09, $03, con_item_id_safe, $00   ; 
- D 1 - I - 0x00B9FA 02:B9EA: 01        .byte $01, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00B9FE 02:B9EE: 0D        .byte $0D, $0C, con_item_id_glove, $00   ; 



; 21
- D 1 - I - 0x00BA02 02:B9F2: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BA03 02:B9F3: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BA04 02:B9F4: 01        .byte $01, $15   ; 00
- D 1 - I - 0x00BA06 02:B9F6: 0C        .byte $0C, $02   ; 01
- D 1 - I - 0x00BA08 02:B9F8: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00BA0A 02:B9FA: 0E        .byte $0E, $14   ; 03
- D 1 - I - 0x00BA0C 02:B9FC: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BA0E 02:B9FE: 04        .byte $04, $0B   ; 05
- D 1 - I - 0x00BA10 02:BA00: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BA12 02:BA02: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BA14 02:BA04: 0B        .byte $0B, $02   ; 00
- D 1 - I - 0x00BA16 02:BA06: 0B        .byte $0B, $08   ; 01
- D 1 - I - 0x00BA18 02:BA08: 01        .byte $01, $0B   ; 02
- D 1 - I - 0x00BA1A 02:BA0A: 0E        .byte $0E, $0D   ; 03
- D 1 - I - 0x00BA1C 02:BA0C: 02        .byte $02, $0E   ; 04
- D 1 - I - 0x00BA1E 02:BA0E: 0B        .byte $0B, $14   ; 05
- D 1 - I - 0x00BA20 02:BA10: 07        .byte $07, $1B   ; 06
- D 1 - I - 0x00BA22 02:BA12: 0E        .byte $0E, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BA24 02:BA14: 04        .byte $04, $0E, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BA28 02:BA18: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BA2C 02:BA1C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BA30 02:BA20: 00        .byte $00, $00, $00, $00   ; 



; 22
- D 1 - I - 0x00BA34 02:BA24: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BA35 02:BA25: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BA36 02:BA26: 02        .byte $02, $1B   ; 00
- D 1 - I - 0x00BA38 02:BA28: 09        .byte $09, $04   ; 01
- D 1 - I - 0x00BA3A 02:BA2A: 02        .byte $02, $0A   ; 02
- D 1 - I - 0x00BA3C 02:BA2C: 0D        .byte $0D, $14   ; 03
- D 1 - I - 0x00BA3E 02:BA2E: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BA40 02:BA30: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BA42 02:BA32: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BA44 02:BA34: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BA46 02:BA36: 0D        .byte $0D, $02   ; 00
- D 1 - I - 0x00BA48 02:BA38: 03        .byte $03, $04   ; 01
- D 1 - I - 0x00BA4A 02:BA3A: 04        .byte $04, $07   ; 02
- D 1 - I - 0x00BA4C 02:BA3C: 0D        .byte $0D, $0A   ; 03
- D 1 - I - 0x00BA4E 02:BA3E: 08        .byte $08, $14   ; 04
- D 1 - I - 0x00BA50 02:BA40: 03        .byte $03, $17   ; 05
- D 1 - I - 0x00BA52 02:BA42: 0C        .byte $0C, $17   ; 06
- D 1 - I - 0x00BA54 02:BA44: 08        .byte $08, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BA56 02:BA46: 06        .byte $06, $0A, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BA5A 02:BA4A: 06        .byte $06, $14, con_item_id_10t, $00   ; 
- D 1 - I - 0x00BA5E 02:BA4E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BA62 02:BA52: 00        .byte $00, $00, $00, $00   ; 



; 23
- D 1 - I - 0x00BA66 02:BA56: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BA67 02:BA57: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BA68 02:BA58: 0A        .byte $0A, $1A   ; 00
- D 1 - I - 0x00BA6A 02:BA5A: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BA6C 02:BA5C: 01        .byte $01, $02   ; 02
- D 1 - I - 0x00BA6E 02:BA5E: 0E        .byte $0E, $02   ; 03
- D 1 - I - 0x00BA70 02:BA60: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BA72 02:BA62: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BA74 02:BA64: 07        .byte $07, $14   ; 06
- D 1 - I - 0x00BA76 02:BA66: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BA78 02:BA68: 03        .byte $03, $02   ; 00
- D 1 - I - 0x00BA7A 02:BA6A: 0D        .byte $0D, $02   ; 01
- D 1 - I - 0x00BA7C 02:BA6C: 03        .byte $03, $08   ; 02
- D 1 - I - 0x00BA7E 02:BA6E: 0B        .byte $0B, $08   ; 03
- D 1 - I - 0x00BA80 02:BA70: 03        .byte $03, $0E   ; 04
- D 1 - I - 0x00BA82 02:BA72: 0B        .byte $0B, $0E   ; 05
- D 1 - I - 0x00BA84 02:BA74: 03        .byte $03, $14   ; 06
- D 1 - I - 0x00BA86 02:BA76: 0B        .byte $0B, $14   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BA88 02:BA78: 04        .byte $04, $0B, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BA8C 02:BA7C: 07        .byte $07, $1A, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BA90 02:BA80: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BA94 02:BA84: 00        .byte $00, $00, $00, $00   ; 



; 24
- D 1 - I - 0x00BA98 02:BA88: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BA99 02:BA89: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BA9A 02:BA8A: 04        .byte $04, $09   ; 00
- D 1 - I - 0x00BA9C 02:BA8C: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BA9E 02:BA8E: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00BAA0 02:BA90: 0E        .byte $0E, $02   ; 03
- D 1 - I - 0x00BAA2 02:BA92: 1D        .byte $1D, $0C   ; 04
- D 1 - I - 0x00BAA4 02:BA94: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BAA6 02:BA96: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BAA8 02:BA98: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BAAA 02:BA9A: 01        .byte $01, $05   ; 00
- D 1 - I - 0x00BAAC 02:BA9C: 05        .byte $05, $0C   ; 01
- D 1 - I - 0x00BAAE 02:BA9E: 04        .byte $04, $04   ; 02
- D 1 - I - 0x00BAB0 02:BAA0: 0E        .byte $0E, $09   ; 03
- D 1 - I - 0x00BAB2 02:BAA2: 10        .byte $10, $04   ; 04
- D 1 - I - 0x00BAB4 02:BAA4: 1A        .byte $1A, $0C   ; 05
- D 1 - I - 0x00BAB6 02:BAA6: 13        .byte $13, $02   ; 06
- D 1 - I - 0x00BAB8 02:BAA8: 1D        .byte $1D, $06   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BABA 02:BAAA: 0E        .byte $0E, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BABE 02:BAAE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BAC2 02:BAB2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BAC6 02:BAB6: 00        .byte $00, $00, $00, $00   ; 



; 25
- D 1 - I - 0x00BACA 02:BABA: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BACB 02:BABB: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BACC 02:BABC: 15        .byte $15, $0C   ; 00
- D 1 - I - 0x00BACE 02:BABE: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BAD0 02:BAC0: 09        .byte $09, $02   ; 02
- D 1 - I - 0x00BAD2 02:BAC2: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BAD4 02:BAC4: 17        .byte $17, $02   ; 04
- D 1 - I - 0x00BAD6 02:BAC6: 15        .byte $15, $09   ; 05
- D 1 - I - 0x00BAD8 02:BAC8: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BADA 02:BACA: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BADC 02:BACC: 03        .byte $03, $05   ; 00
- D 1 - I - 0x00BADE 02:BACE: 13        .byte $13, $03   ; 01
- D 1 - I - 0x00BAE0 02:BAD0: 19        .byte $19, $05   ; 02
- D 1 - I - 0x00BAE2 02:BAD2: 1D        .byte $1D, $05   ; 03
- D 1 - I - 0x00BAE4 02:BAD4: 04        .byte $04, $09   ; 04
- D 1 - I - 0x00BAE6 02:BAD6: 0D        .byte $0D, $09   ; 05
- D 1 - I - 0x00BAE8 02:BAD8: 16        .byte $16, $09   ; 06
- D 1 - I - 0x00BAEA 02:BADA: 08        .byte $08, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BAEC 02:BADC: 0D        .byte $0D, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BAF0 02:BAE0: 18        .byte $18, $09, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BAF4 02:BAE4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BAF8 02:BAE8: 00        .byte $00, $00, $00, $00   ; 



; 26
- D 1 - I - 0x00BAFC 02:BAEC: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BAFD 02:BAED: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BAFE 02:BAEE: 0E        .byte $0E, $0C   ; 00
- D 1 - I - 0x00BB00 02:BAF0: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BB02 02:BAF2: 07        .byte $07, $02   ; 02
- D 1 - I - 0x00BB04 02:BAF4: 15        .byte $15, $04   ; 03
- D 1 - I - 0x00BB06 02:BAF6: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BB08 02:BAF8: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BB0A 02:BAFA: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BB0C 02:BAFC: 1B        .byte $1B, $09   ; 07
; carrots X, Y
- D 1 - I - 0x00BB0E 02:BAFE: 01        .byte $01, $0C   ; 00
- D 1 - I - 0x00BB10 02:BB00: 02        .byte $02, $07   ; 01
- D 1 - I - 0x00BB12 02:BB02: 0A        .byte $0A, $02   ; 02
- D 1 - I - 0x00BB14 02:BB04: 0E        .byte $0E, $02   ; 03
- D 1 - I - 0x00BB16 02:BB06: 0D        .byte $0D, $09   ; 04
- D 1 - I - 0x00BB18 02:BB08: 10        .byte $10, $05   ; 05
- D 1 - I - 0x00BB1A 02:BB0A: 15        .byte $15, $09   ; 06
- D 1 - I - 0x00BB1C 02:BB0C: 1E        .byte $1E, $09   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BB1E 02:BB0E: 08        .byte $08, $02, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BB22 02:BB12: 14        .byte $14, $04, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BB26 02:BB16: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BB2A 02:BB1A: 00        .byte $00, $00, $00, $00   ; 



; 27
- D 1 - I - 0x00BB2E 02:BB1E: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BB2F 02:BB1F: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BB30 02:BB20: 0E        .byte $0E, $02   ; 00
- D 1 - I - 0x00BB32 02:BB22: 08        .byte $08, $0C   ; 01
- D 1 - I - 0x00BB34 02:BB24: 1E        .byte $1E, $0C   ; 02
- D 1 - I - 0x00BB36 02:BB26: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BB38 02:BB28: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BB3A 02:BB2A: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BB3C 02:BB2C: 1D        .byte $1D, $02   ; 06
- D 1 - I - 0x00BB3E 02:BB2E: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BB40 02:BB30: 01        .byte $01, $0C   ; 00
- D 1 - I - 0x00BB42 02:BB32: 03        .byte $03, $05   ; 01
- D 1 - I - 0x00BB44 02:BB34: 0C        .byte $0C, $05   ; 02
- D 1 - I - 0x00BB46 02:BB36: 13        .byte $13, $02   ; 03
- D 1 - I - 0x00BB48 02:BB38: 12        .byte $12, $0C   ; 04
- D 1 - I - 0x00BB4A 02:BB3A: 1C        .byte $1C, $05   ; 05
- D 1 - I - 0x00BB4C 02:BB3C: 1E        .byte $1E, $02   ; 06
- D 1 - I - 0x00BB4E 02:BB3E: 1E        .byte $1E, $09   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BB50 02:BB40: 0C        .byte $0C, $02, con_item_id_10t, $00   ; 
- D 1 - I - 0x00BB54 02:BB44: 0C        .byte $0C, $0C, con_item_id_safe, $00   ; 
- D 1 - I - 0x00BB58 02:BB48: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BB5C 02:BB4C: 00        .byte $00, $00, $00, $00   ; 



; 28
- D 1 - I - 0x00BB60 02:BB50: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BB61 02:BB51: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BB62 02:BB52: 0C        .byte $0C, $0C   ; 00
- D 1 - I - 0x00BB64 02:BB54: 06        .byte $06, $03   ; 01
- D 1 - I - 0x00BB66 02:BB56: 0D        .byte $0D, $05   ; 02
- D 1 - I - 0x00BB68 02:BB58: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BB6A 02:BB5A: 1B        .byte $1B, $03   ; 04
- D 1 - I - 0x00BB6C 02:BB5C: 1A        .byte $1A, $0C   ; 05
- D 1 - I - 0x00BB6E 02:BB5E: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BB70 02:BB60: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BB72 02:BB62: 04        .byte $04, $03   ; 00
- D 1 - I - 0x00BB74 02:BB64: 06        .byte $06, $06   ; 01
- D 1 - I - 0x00BB76 02:BB66: 01        .byte $01, $0C   ; 02
- D 1 - I - 0x00BB78 02:BB68: 12        .byte $12, $03   ; 03
- D 1 - I - 0x00BB7A 02:BB6A: 1E        .byte $1E, $03   ; 04
- D 1 - I - 0x00BB7C 02:BB6C: 19        .byte $19, $06   ; 05
- D 1 - I - 0x00BB7E 02:BB6E: 0C        .byte $0C, $06   ; 06
- D 1 - I - 0x00BB80 02:BB70: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BB82 02:BB72: 09        .byte $09, $03, con_item_id_safe, $00   ; 
- D 1 - I - 0x00BB86 02:BB76: 10        .byte $10, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BB8A 02:BB7A: 18        .byte $18, $0C, con_item_id_sign_01, $00   ; 
- D 1 - I - 0x00BB8E 02:BB7E: 00        .byte $00, $00, $00, $00   ; 



; 29
- D 1 - I - 0x00BB92 02:BB82: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BB93 02:BB83: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BB94 02:BB84: 11        .byte $11, $0C   ; 00
- D 1 - I - 0x00BB96 02:BB86: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BB98 02:BB88: 02        .byte $02, $0C   ; 02
- D 1 - I - 0x00BB9A 02:BB8A: 09        .byte $09, $05   ; 03
- D 1 - I - 0x00BB9C 02:BB8C: 1B        .byte $1B, $02   ; 04
- D 1 - I - 0x00BB9E 02:BB8E: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BBA0 02:BB90: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BBA2 02:BB92: 1C        .byte $1C, $07   ; 07
; carrots X, Y
- D 1 - I - 0x00BBA4 02:BB94: 01        .byte $01, $06   ; 00
- D 1 - I - 0x00BBA6 02:BB96: 01        .byte $01, $0C   ; 01
- D 1 - I - 0x00BBA8 02:BB98: 08        .byte $08, $03   ; 02
- D 1 - I - 0x00BBAA 02:BB9A: 0C        .byte $0C, $0C   ; 03
- D 1 - I - 0x00BBAC 02:BB9C: 11        .byte $11, $02   ; 04
- D 1 - I - 0x00BBAE 02:BB9E: 17        .byte $17, $0C   ; 05
- D 1 - I - 0x00BBB0 02:BBA0: 1E        .byte $1E, $07   ; 06
- D 1 - I - 0x00BBB2 02:BBA2: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BBB4 02:BBA4: 0E        .byte $0E, $0C, con_item_id_safe, $00   ; 
- D 1 - I - 0x00BBB8 02:BBA8: 14        .byte $14, $05, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BBBC 02:BBAC: 19        .byte $19, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BBC0 02:BBB0: 00        .byte $00, $00, $00, $00   ; 



; 2A
- D 1 - I - 0x00BBC4 02:BBB4: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BBC5 02:BBB5: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BBC6 02:BBB6: 10        .byte $10, $07   ; 00
- D 1 - I - 0x00BBC8 02:BBB8: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BBCA 02:BBBA: 05        .byte $05, $09   ; 02
- D 1 - I - 0x00BBCC 02:BBBC: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BBCE 02:BBBE: 19        .byte $19, $09   ; 04
- D 1 - I - 0x00BBD0 02:BBC0: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BBD2 02:BBC2: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BBD4 02:BBC4: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BBD6 02:BBC6: 02        .byte $02, $06   ; 00
- D 1 - I - 0x00BBD8 02:BBC8: 05        .byte $05, $0C   ; 01
- D 1 - I - 0x00BBDA 02:BBCA: 06        .byte $06, $09   ; 02
- D 1 - I - 0x00BBDC 02:BBCC: 0E        .byte $0E, $04   ; 03
- D 1 - I - 0x00BBDE 02:BBCE: 12        .byte $12, $07   ; 04
- D 1 - I - 0x00BBE0 02:BBD0: 19        .byte $19, $0C   ; 05
- D 1 - I - 0x00BBE2 02:BBD2: 1A        .byte $1A, $03   ; 06
- D 1 - I - 0x00BBE4 02:BBD4: 1E        .byte $1E, $09   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BBE6 02:BBD6: 04        .byte $04, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BBEA 02:BBDA: 1B        .byte $1B, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BBEE 02:BBDE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BBF2 02:BBE2: 00        .byte $00, $00, $00, $00   ; 



; 2B
- D 1 - I - 0x00BBF6 02:BBE6: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BBF7 02:BBE7: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BBF8 02:BBE8: 0C        .byte $0C, $09   ; 00
- D 1 - I - 0x00BBFA 02:BBEA: 02        .byte $02, $0C   ; 01
- D 1 - I - 0x00BBFC 02:BBEC: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00BBFE 02:BBEE: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BC00 02:BBF0: 10        .byte $10, $0C   ; 04
- D 1 - I - 0x00BC02 02:BBF2: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BC04 02:BBF4: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BC06 02:BBF6: 1A        .byte $1A, $02   ; 07
; carrots X, Y
- D 1 - I - 0x00BC08 02:BBF8: 01        .byte $01, $02   ; 00
- D 1 - I - 0x00BC0A 02:BBFA: 01        .byte $01, $0C   ; 01
- D 1 - I - 0x00BC0C 02:BBFC: 03        .byte $03, $05   ; 02
- D 1 - I - 0x00BC0E 02:BBFE: 0A        .byte $0A, $03   ; 03
- D 1 - I - 0x00BC10 02:BC00: 0F        .byte $0F, $0C   ; 04
- D 1 - I - 0x00BC12 02:BC02: 1B        .byte $1B, $02   ; 05
- D 1 - I - 0x00BC14 02:BC04: 1A        .byte $1A, $05   ; 06
- D 1 - I - 0x00BC16 02:BC06: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BC18 02:BC08: 10        .byte $10, $09, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00BC1C 02:BC0C: 14        .byte $14, $0C, con_item_id_box, $00   ; 
- D 1 - I - 0x00BC20 02:BC10: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BC24 02:BC14: 00        .byte $00, $00, $00, $00   ; 



; 2C
- D 1 - I - 0x00BC28 02:BC18: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BC29 02:BC19: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BC2A 02:BC1A: 0D        .byte $0D, $06   ; 00
- D 1 - I - 0x00BC2C 02:BC1C: 02        .byte $02, $0C   ; 01
- D 1 - I - 0x00BC2E 02:BC1E: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00BC30 02:BC20: 17        .byte $17, $09   ; 03
- D 1 - I - 0x00BC32 02:BC22: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BC34 02:BC24: 07        .byte $07, $02   ; 05
- D 1 - I - 0x00BC36 02:BC26: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BC38 02:BC28: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BC3A 02:BC2A: 01        .byte $01, $06   ; 00
- D 1 - I - 0x00BC3C 02:BC2C: 09        .byte $09, $02   ; 01
- D 1 - I - 0x00BC3E 02:BC2E: 08        .byte $08, $0C   ; 02
- D 1 - I - 0x00BC40 02:BC30: 0F        .byte $0F, $06   ; 03
- D 1 - I - 0x00BC42 02:BC32: 16        .byte $16, $02   ; 04
- D 1 - I - 0x00BC44 02:BC34: 16        .byte $16, $0C   ; 05
- D 1 - I - 0x00BC46 02:BC36: 1E        .byte $1E, $06   ; 06
- D 1 - I - 0x00BC48 02:BC38: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BC4A 02:BC3A: 09        .byte $09, $09, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BC4E 02:BC3E: 10        .byte $10, $06, con_item_id_sign_00, $00   ; 
- D 1 - I - 0x00BC52 02:BC42: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BC56 02:BC46: 00        .byte $00, $00, $00, $00   ; 



; 2D
- D 1 - I - 0x00BC5A 02:BC4A: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BC5B 02:BC4B: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BC5C 02:BC4C: 11        .byte $11, $09   ; 00
- D 1 - I - 0x00BC5E 02:BC4E: 05        .byte $05, $02   ; 01
- D 1 - I - 0x00BC60 02:BC50: 01        .byte $01, $06   ; 02
- D 1 - I - 0x00BC62 02:BC52: 06        .byte $06, $09   ; 03
- D 1 - I - 0x00BC64 02:BC54: 1A        .byte $1A, $06   ; 04
- D 1 - I - 0x00BC66 02:BC56: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BC68 02:BC58: 1A        .byte $1A, $09   ; 06
- D 1 - I - 0x00BC6A 02:BC5A: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BC6C 02:BC5C: 02        .byte $02, $04   ; 00
- D 1 - I - 0x00BC6E 02:BC5E: 02        .byte $02, $0A   ; 01
- D 1 - I - 0x00BC70 02:BC60: 0F        .byte $0F, $06   ; 02
- D 1 - I - 0x00BC72 02:BC62: 0E        .byte $0E, $09   ; 03
- D 1 - I - 0x00BC74 02:BC64: 12        .byte $12, $02   ; 04
- D 1 - I - 0x00BC76 02:BC66: 17        .byte $17, $09   ; 05
- D 1 - I - 0x00BC78 02:BC68: 1C        .byte $1C, $04   ; 06
- D 1 - I - 0x00BC7A 02:BC6A: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BC7C 02:BC6C: 10        .byte $10, $0C, con_item_id_box, $00   ; 
- D 1 - I - 0x00BC80 02:BC70: 0B        .byte $0B, $02, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BC84 02:BC74: 18        .byte $18, $02, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BC88 02:BC78: 03        .byte $03, $09, con_item_id_glove, $00   ; 



; 2E
- D 1 - I - 0x00BC8C 02:BC7C: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BC8D 02:BC7D: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BC8E 02:BC7E: 02        .byte $02, $0C   ; 00
- D 1 - I - 0x00BC90 02:BC80: 01        .byte $01, $06   ; 01
- D 1 - I - 0x00BC92 02:BC82: 11        .byte $11, $02   ; 02
- D 1 - I - 0x00BC94 02:BC84: 19        .byte $19, $0C   ; 03
- D 1 - I - 0x00BC96 02:BC86: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BC98 02:BC88: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BC9A 02:BC8A: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BC9C 02:BC8C: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BC9E 02:BC8E: 0B        .byte $0B, $02   ; 00
- D 1 - I - 0x00BCA0 02:BC90: 12        .byte $12, $02   ; 01
- D 1 - I - 0x00BCA2 02:BC92: 07        .byte $07, $06   ; 02
- D 1 - I - 0x00BCA4 02:BC94: 0C        .byte $0C, $06   ; 03
- D 1 - I - 0x00BCA6 02:BC96: 14        .byte $14, $06   ; 04
- D 1 - I - 0x00BCA8 02:BC98: 0B        .byte $0B, $0C   ; 05
- D 1 - I - 0x00BCAA 02:BC9A: 10        .byte $10, $0A   ; 06
- D 1 - I - 0x00BCAC 02:BC9C: 1C        .byte $1C, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BCAE 02:BC9E: 09        .byte $09, $06, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BCB2 02:BCA2: 16        .byte $16, $06, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BCB6 02:BCA6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BCBA 02:BCAA: 00        .byte $00, $00, $00, $00   ; 



; 2F
- D 1 - I - 0x00BCBE 02:BCAE: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BCBF 02:BCAF: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BCC0 02:BCB0: 07        .byte $07, $0C   ; 00
- D 1 - I - 0x00BCC2 02:BCB2: 08        .byte $08, $02   ; 01
- D 1 - I - 0x00BCC4 02:BCB4: 13        .byte $13, $02   ; 02
- D 1 - I - 0x00BCC6 02:BCB6: 16        .byte $16, $06   ; 03
- D 1 - I - 0x00BCC8 02:BCB8: 13        .byte $13, $09   ; 04
- D 1 - I - 0x00BCCA 02:BCBA: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BCCC 02:BCBC: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BCCE 02:BCBE: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BCD0 02:BCC0: 01        .byte $01, $02   ; 00
- D 1 - I - 0x00BCD2 02:BCC2: 01        .byte $01, $06   ; 01
- D 1 - I - 0x00BCD4 02:BCC4: 0E        .byte $0E, $06   ; 02
- D 1 - I - 0x00BCD6 02:BCC6: 0F        .byte $0F, $0C   ; 03
- D 1 - I - 0x00BCD8 02:BCC8: 10        .byte $10, $02   ; 04
- D 1 - I - 0x00BCDA 02:BCCA: 10        .byte $10, $06   ; 05
- D 1 - I - 0x00BCDC 02:BCCC: 1E        .byte $1E, $06   ; 06
- D 1 - I - 0x00BCDE 02:BCCE: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BCE0 02:BCD0: 0A        .byte $0A, $02, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00BCE4 02:BCD4: 17        .byte $17, $0C, con_item_id_box, $00   ; 
- D 1 - I - 0x00BCE8 02:BCD8: 0D        .byte $0D, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BCEC 02:BCDC: 00        .byte $00, $00, $00, $00   ; 



; 30
- D 1 - I - 0x00BCF0 02:BCE0: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BCF1 02:BCE1: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BCF2 02:BCE2: 10        .byte $10, $0B   ; 00
- D 1 - I - 0x00BCF4 02:BCE4: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BCF6 02:BCE6: 02        .byte $02, $0C   ; 02
- D 1 - I - 0x00BCF8 02:BCE8: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BCFA 02:BCEA: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BCFC 02:BCEC: 19        .byte $19, $0C   ; 05
- D 1 - I - 0x00BCFE 02:BCEE: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BD00 02:BCF0: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BD02 02:BCF2: 01        .byte $01, $0C   ; 00
- D 1 - I - 0x00BD04 02:BCF4: 09        .byte $09, $0C   ; 01
- D 1 - I - 0x00BD06 02:BCF6: 0D        .byte $0D, $0C   ; 02
- D 1 - I - 0x00BD08 02:BCF8: 0F        .byte $0F, $05   ; 03
- D 1 - I - 0x00BD0A 02:BCFA: 10        .byte $10, $03   ; 04
- D 1 - I - 0x00BD0C 02:BCFC: 12        .byte $12, $0A   ; 05
- D 1 - I - 0x00BD0E 02:BCFE: 14        .byte $14, $0B   ; 06
- D 1 - I - 0x00BD10 02:BD00: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BD12 02:BD02: 0E        .byte $0E, $08, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BD16 02:BD06: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BD1A 02:BD0A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BD1E 02:BD0E: 00        .byte $00, $00, $00, $00   ; 



; 31
- D 1 - I - 0x00BD22 02:BD12: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BD23 02:BD13: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BD24 02:BD14: 03        .byte $03, $0C   ; 00
- D 1 - I - 0x00BD26 02:BD16: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BD28 02:BD18: 09        .byte $09, $02   ; 02
- D 1 - I - 0x00BD2A 02:BD1A: 13        .byte $13, $08   ; 03
- D 1 - I - 0x00BD2C 02:BD1C: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BD2E 02:BD1E: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BD30 02:BD20: 19        .byte $19, $05   ; 06
- D 1 - I - 0x00BD32 02:BD22: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BD34 02:BD24: 01        .byte $01, $08   ; 00
- D 1 - I - 0x00BD36 02:BD26: 03        .byte $03, $02   ; 01
- D 1 - I - 0x00BD38 02:BD28: 04        .byte $04, $08   ; 02
- D 1 - I - 0x00BD3A 02:BD2A: 0D        .byte $0D, $03   ; 03
- D 1 - I - 0x00BD3C 02:BD2C: 11        .byte $11, $02   ; 04
- D 1 - I - 0x00BD3E 02:BD2E: 1D        .byte $1D, $02   ; 05
- D 1 - I - 0x00BD40 02:BD30: 1C        .byte $1C, $08   ; 06
- D 1 - I - 0x00BD42 02:BD32: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BD44 02:BD34: 14        .byte $14, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BD48 02:BD38: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BD4C 02:BD3C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BD50 02:BD40: 00        .byte $00, $00, $00, $00   ; 



; 32
- D 1 - I - 0x00BD54 02:BD44: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BD55 02:BD45: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BD56 02:BD46: 04        .byte $04, $09   ; 00
- D 1 - I - 0x00BD58 02:BD48: 05        .byte $05, $03   ; 01
- D 1 - I - 0x00BD5A 02:BD4A: 19        .byte $19, $03   ; 02
- D 1 - I - 0x00BD5C 02:BD4C: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BD5E 02:BD4E: 14        .byte $14, $09   ; 04
- D 1 - I - 0x00BD60 02:BD50: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BD62 02:BD52: 1C        .byte $1C, $0C   ; 06
- D 1 - I - 0x00BD64 02:BD54: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BD66 02:BD56: 02        .byte $02, $06   ; 00
- D 1 - I - 0x00BD68 02:BD58: 10        .byte $10, $06   ; 01
- D 1 - I - 0x00BD6A 02:BD5A: 0E        .byte $0E, $09   ; 02
- D 1 - I - 0x00BD6C 02:BD5C: 17        .byte $17, $09   ; 03
- D 1 - I - 0x00BD6E 02:BD5E: 1B        .byte $1B, $09   ; 04
- D 1 - I - 0x00BD70 02:BD60: 05        .byte $05, $0C   ; 05
- D 1 - I - 0x00BD72 02:BD62: 10        .byte $10, $0C   ; 06
- D 1 - I - 0x00BD74 02:BD64: 1B        .byte $1B, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BD76 02:BD66: 0C        .byte $0C, $06, con_item_id_safe, $00   ; 
- D 1 - I - 0x00BD7A 02:BD6A: 19        .byte $19, $0C, con_item_id_box, $00   ; 
- D 1 - I - 0x00BD7E 02:BD6E: 02        .byte $02, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BD82 02:BD72: 00        .byte $00, $00, $00, $00   ; 



; 33
- D 1 - I - 0x00BD86 02:BD76: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BD87 02:BD77: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BD88 02:BD78: 06        .byte $06, $06   ; 00
- D 1 - I - 0x00BD8A 02:BD7A: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BD8C 02:BD7C: 16        .byte $16, $06   ; 02
- D 1 - I - 0x00BD8E 02:BD7E: 0C        .byte $0C, $0C   ; 03
- D 1 - I - 0x00BD90 02:BD80: 19        .byte $19, $09   ; 04
- D 1 - I - 0x00BD92 02:BD82: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BD94 02:BD84: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BD96 02:BD86: 1D        .byte $1D, $03   ; 07
; carrots X, Y
- D 1 - I - 0x00BD98 02:BD88: 02        .byte $02, $03   ; 00
- D 1 - I - 0x00BD9A 02:BD8A: 04        .byte $04, $0C   ; 01
- D 1 - I - 0x00BD9C 02:BD8C: 0A        .byte $0A, $0C   ; 02
- D 1 - I - 0x00BD9E 02:BD8E: 0D        .byte $0D, $03   ; 03
- D 1 - I - 0x00BDA0 02:BD90: 11        .byte $11, $03   ; 04
- D 1 - I - 0x00BDA2 02:BD92: 15        .byte $15, $0C   ; 05
- D 1 - I - 0x00BDA4 02:BD94: 1B        .byte $1B, $03   ; 06
- D 1 - I - 0x00BDA6 02:BD96: 1E        .byte $1E, $0C   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BDA8 02:BD98: 06        .byte $06, $03, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BDAC 02:BD9C: 1D        .byte $1D, $06, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BDB0 02:BDA0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BDB4 02:BDA4: 00        .byte $00, $00, $00, $00   ; 



; 34
- D 1 - I - 0x00BDB8 02:BDA8: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BDB9 02:BDA9: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BDBA 02:BDAA: 0A        .byte $0A, $1B   ; 00
- D 1 - I - 0x00BDBC 02:BDAC: 0B        .byte $0B, $02   ; 01
- D 1 - I - 0x00BDBE 02:BDAE: 03        .byte $03, $0B   ; 02
- D 1 - I - 0x00BDC0 02:BDB0: 0B        .byte $0B, $05   ; 03
- D 1 - I - 0x00BDC2 02:BDB2: 08        .byte $08, $0E   ; 04
- D 1 - I - 0x00BDC4 02:BDB4: 07        .byte $07, $08   ; 05
- D 1 - I - 0x00BDC6 02:BDB6: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BDC8 02:BDB8: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BDCA 02:BDBA: 09        .byte $09, $02   ; 00
- D 1 - I - 0x00BDCC 02:BDBC: 03        .byte $03, $05   ; 01
- D 1 - I - 0x00BDCE 02:BDBE: 0D        .byte $0D, $0B   ; 02
- D 1 - I - 0x00BDD0 02:BDC0: 03        .byte $03, $0E   ; 03
- D 1 - I - 0x00BDD2 02:BDC2: 0D        .byte $0D, $14   ; 04
- D 1 - I - 0x00BDD4 02:BDC4: 0C        .byte $0C, $16   ; 05
- D 1 - I - 0x00BDD6 02:BDC6: 0D        .byte $0D, $1A   ; 06
- D 1 - I - 0x00BDD8 02:BDC8: 04        .byte $04, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BDDA 02:BDCA: 04        .byte $04, $05, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00BDDE 02:BDCE: 0C        .byte $0C, $17, con_item_id_bucket, $00   ; 
- D 1 - I - 0x00BDE2 02:BDD2: 07        .byte $07, $0B, con_item_id_10t, $00   ; 
- D 1 - I - 0x00BDE6 02:BDD6: 00        .byte $00, $00, $00, $00   ; 



; 35
- D 1 - I - 0x00BDEA 02:BDDA: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BDEB 02:BDDB: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BDEC 02:BDDC: 09        .byte $09, $03   ; 00
- D 1 - I - 0x00BDEE 02:BDDE: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BDF0 02:BDE0: 0E        .byte $0E, $0F   ; 02
- D 1 - I - 0x00BDF2 02:BDE2: 02        .byte $02, $0B   ; 03
- D 1 - I - 0x00BDF4 02:BDE4: 01        .byte $01, $17   ; 04
- D 1 - I - 0x00BDF6 02:BDE6: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BDF8 02:BDE8: 08        .byte $08, $1B   ; 06
- D 1 - I - 0x00BDFA 02:BDEA: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BDFC 02:BDEC: 01        .byte $01, $03   ; 00
- D 1 - I - 0x00BDFE 02:BDEE: 07        .byte $07, $07   ; 01
- D 1 - I - 0x00BE00 02:BDF0: 0E        .byte $0E, $07   ; 02
- D 1 - I - 0x00BE02 02:BDF2: 05        .byte $05, $13   ; 03
- D 1 - I - 0x00BE04 02:BDF4: 07        .byte $07, $0B   ; 04
- D 1 - I - 0x00BE06 02:BDF6: 05        .byte $05, $0F   ; 05
- D 1 - I - 0x00BE08 02:BDF8: 01        .byte $01, $1B   ; 06
- D 1 - I - 0x00BE0A 02:BDFA: 0C        .byte $0C, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BE0C 02:BDFC: 02        .byte $02, $0F, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BE10 02:BE00: 05        .byte $05, $0B, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BE14 02:BE04: 0E        .byte $0E, $17, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BE18 02:BE08: 0E        .byte $0E, $03, con_item_id_glove, $00   ; 



; 36
- D 1 - I - 0x00BE1C 02:BE0C: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BE1D 02:BE0D: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BE1E 02:BE0E: 09        .byte $09, $1B   ; 00
- D 1 - I - 0x00BE20 02:BE10: 06        .byte $06, $02   ; 01
- D 1 - I - 0x00BE22 02:BE12: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00BE24 02:BE14: 01        .byte $01, $11   ; 03
- D 1 - I - 0x00BE26 02:BE16: 0A        .byte $0A, $0B   ; 04
- D 1 - I - 0x00BE28 02:BE18: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BE2A 02:BE1A: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BE2C 02:BE1C: 01        .byte $01, $14   ; 07
; carrots X, Y
- D 1 - I - 0x00BE2E 02:BE1E: 04        .byte $04, $05   ; 00
- D 1 - I - 0x00BE30 02:BE20: 0A        .byte $0A, $05   ; 01
- D 1 - I - 0x00BE32 02:BE22: 07        .byte $07, $08   ; 02
- D 1 - I - 0x00BE34 02:BE24: 03        .byte $03, $0B   ; 03
- D 1 - I - 0x00BE36 02:BE26: 01        .byte $01, $0E   ; 04
- D 1 - I - 0x00BE38 02:BE28: 05        .byte $05, $14   ; 05
- D 1 - I - 0x00BE3A 02:BE2A: 0E        .byte $0E, $14   ; 06
- D 1 - I - 0x00BE3C 02:BE2C: 0C        .byte $0C, $17   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BE3E 02:BE2E: 0A        .byte $0A, $02, con_item_id_safe, $00   ; 
- D 1 - I - 0x00BE42 02:BE32: 07        .byte $07, $0E, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BE46 02:BE36: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BE4A 02:BE3A: 00        .byte $00, $00, $00, $00   ; 



; 37
- D 1 - I - 0x00BE4E 02:BE3E: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BE4F 02:BE3F: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BE50 02:BE40: 02        .byte $02, $0C   ; 00
- D 1 - I - 0x00BE52 02:BE42: 0D        .byte $0D, $02   ; 01
- D 1 - I - 0x00BE54 02:BE44: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00BE56 02:BE46: 07        .byte $07, $15   ; 03
- D 1 - I - 0x00BE58 02:BE48: 03        .byte $03, $1A   ; 04
- D 1 - I - 0x00BE5A 02:BE4A: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BE5C 02:BE4C: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BE5E 02:BE4E: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BE60 02:BE50: 0B        .byte $0B, $02   ; 00
- D 1 - I - 0x00BE62 02:BE52: 03        .byte $03, $09   ; 01
- D 1 - I - 0x00BE64 02:BE54: 0B        .byte $0B, $0A   ; 02
- D 1 - I - 0x00BE66 02:BE56: 05        .byte $05, $0F   ; 03
- D 1 - I - 0x00BE68 02:BE58: 07        .byte $07, $11   ; 04
- D 1 - I - 0x00BE6A 02:BE5A: 0E        .byte $0E, $12   ; 05
- D 1 - I - 0x00BE6C 02:BE5C: 01        .byte $01, $18   ; 06
- D 1 - I - 0x00BE6E 02:BE5E: 0E        .byte $0E, $18   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BE70 02:BE60: 06        .byte $06, $09, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BE74 02:BE64: 0D        .byte $0D, $1A, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BE78 02:BE68: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BE7C 02:BE6C: 00        .byte $00, $00, $00, $00   ; 



; 38
- D 1 - I - 0x00BE80 02:BE70: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BE81 02:BE71: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BE82 02:BE72: 0C        .byte $0C, $1A   ; 00
- D 1 - I - 0x00BE84 02:BE74: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BE86 02:BE76: 01        .byte $01, $02   ; 02
- D 1 - I - 0x00BE88 02:BE78: 04        .byte $04, $0A   ; 03
- D 1 - I - 0x00BE8A 02:BE7A: 0B        .byte $0B, $10   ; 04
- D 1 - I - 0x00BE8C 02:BE7C: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BE8E 02:BE7E: 01        .byte $01, $1A   ; 06
- D 1 - I - 0x00BE90 02:BE80: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BE92 02:BE82: 03        .byte $03, $02   ; 00
- D 1 - I - 0x00BE94 02:BE84: 0C        .byte $0C, $04   ; 01
- D 1 - I - 0x00BE96 02:BE86: 01        .byte $01, $07   ; 02
- D 1 - I - 0x00BE98 02:BE88: 0A        .byte $0A, $0D   ; 03
- D 1 - I - 0x00BE9A 02:BE8A: 0A        .byte $0A, $10   ; 04
- D 1 - I - 0x00BE9C 02:BE8C: 02        .byte $02, $11   ; 05
- D 1 - I - 0x00BE9E 02:BE8E: 01        .byte $01, $17   ; 06
- D 1 - I - 0x00BEA0 02:BE90: 0E        .byte $0E, $17   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BEA2 02:BE92: 09        .byte $09, $10, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BEA6 02:BE96: 07        .byte $07, $19, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BEAA 02:BE9A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BEAE 02:BE9E: 00        .byte $00, $00, $00, $00   ; 



; 39
- D 1 - I - 0x00BEB2 02:BEA2: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BEB3 02:BEA3: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BEB4 02:BEA4: 07        .byte $07, $02   ; 00
- D 1 - I - 0x00BEB6 02:BEA6: 01        .byte $01, $0F   ; 01
- D 1 - I - 0x00BEB8 02:BEA8: 00        .byte $00, $00   ; 02
- D 1 - I - 0x00BEBA 02:BEAA: 0E        .byte $0E, $1B   ; 03
- D 1 - I - 0x00BEBC 02:BEAC: 0E        .byte $0E, $09   ; 04
- D 1 - I - 0x00BEBE 02:BEAE: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BEC0 02:BEB0: 0E        .byte $0E, $12   ; 06
- D 1 - I - 0x00BEC2 02:BEB2: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BEC4 02:BEB4: 0B        .byte $0B, $02   ; 00
- D 1 - I - 0x00BEC6 02:BEB6: 03        .byte $03, $08   ; 01
- D 1 - I - 0x00BEC8 02:BEB8: 02        .byte $02, $0B   ; 02
- D 1 - I - 0x00BECA 02:BEBA: 0D        .byte $0D, $0C   ; 03
- D 1 - I - 0x00BECC 02:BEBC: 08        .byte $08, $0F   ; 04
- D 1 - I - 0x00BECE 02:BEBE: 02        .byte $02, $18   ; 05
- D 1 - I - 0x00BED0 02:BEC0: 0E        .byte $0E, $18   ; 06
- D 1 - I - 0x00BED2 02:BEC2: 02        .byte $02, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BED4 02:BEC4: 09        .byte $09, $02, con_item_id_safe, $00   ; 
- D 1 - I - 0x00BED8 02:BEC8: 0D        .byte $0D, $1B, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BEDC 02:BECC: 01        .byte $01, $18, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BEE0 02:BED0: 00        .byte $00, $00, $00, $00   ; 



; 3A
- D 1 - I - 0x00BEE4 02:BED4: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BEE5 02:BED5: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BEE6 02:BED6: 0E        .byte $0E, $07   ; 00
- D 1 - I - 0x00BEE8 02:BED8: 1A        .byte $1A, $03   ; 01
- D 1 - I - 0x00BEEA 02:BEDA: 02        .byte $02, $0C   ; 02
- D 1 - I - 0x00BEEC 02:BEDC: 12        .byte $12, $03   ; 03
- D 1 - I - 0x00BEEE 02:BEDE: 00        .byte $00, $00   ; 04
- D 1 - I - 0x00BEF0 02:BEE0: 08        .byte $08, $0C   ; 05
- D 1 - I - 0x00BEF2 02:BEE2: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BEF4 02:BEE4: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BEF6 02:BEE6: 01        .byte $01, $06   ; 00
- D 1 - I - 0x00BEF8 02:BEE8: 03        .byte $03, $0C   ; 01
- D 1 - I - 0x00BEFA 02:BEEA: 0A        .byte $0A, $05   ; 02
- D 1 - I - 0x00BEFC 02:BEEC: 0B        .byte $0B, $06   ; 03
- D 1 - I - 0x00BEFE 02:BEEE: 0C        .byte $0C, $0C   ; 04
- D 1 - I - 0x00BF00 02:BEF0: 10        .byte $10, $05   ; 05
- D 1 - I - 0x00BF02 02:BEF2: 18        .byte $18, $07   ; 06
- D 1 - I - 0x00BF04 02:BEF4: 1A        .byte $1A, $0A   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BF06 02:BEF6: 09        .byte $09, $09, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BF0A 02:BEFA: 17        .byte $17, $0A, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BF0E 02:BEFE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF12 02:BF02: 00        .byte $00, $00, $00, $00   ; 



; 3B
- D 1 - I - 0x00BF16 02:BF06: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BF17 02:BF07: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BF18 02:BF08: 06        .byte $06, $02   ; 00
- D 1 - I - 0x00BF1A 02:BF0A: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BF1C 02:BF0C: 05        .byte $05, $0C   ; 02
- D 1 - I - 0x00BF1E 02:BF0E: 0C        .byte $0C, $05   ; 03
- D 1 - I - 0x00BF20 02:BF10: 0D        .byte $0D, $11   ; 04
- D 1 - I - 0x00BF22 02:BF12: 01        .byte $01, $11   ; 05
- D 1 - I - 0x00BF24 02:BF14: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BF26 02:BF16: 08        .byte $08, $18   ; 07
; carrots X, Y
- D 1 - I - 0x00BF28 02:BF18: 02        .byte $02, $05   ; 00
- D 1 - I - 0x00BF2A 02:BF1A: 02        .byte $02, $0C   ; 01
- D 1 - I - 0x00BF2C 02:BF1C: 09        .byte $09, $0C   ; 02
- D 1 - I - 0x00BF2E 02:BF1E: 06        .byte $06, $10   ; 03
- D 1 - I - 0x00BF30 02:BF20: 08        .byte $08, $13   ; 04
- D 1 - I - 0x00BF32 02:BF22: 01        .byte $01, $1A   ; 05
- D 1 - I - 0x00BF34 02:BF24: 0E        .byte $0E, $1A   ; 06
- D 1 - I - 0x00BF36 02:BF26: 0E        .byte $0E, $11   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BF38 02:BF28: 0E        .byte $0E, $0C, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BF3C 02:BF2C: 07        .byte $07, $0F, con_item_id_glove, $00   ; 
- D 1 - I - 0x00BF40 02:BF30: 06        .byte $06, $05, con_item_id_sign_02, $00   ; 
- D 1 - I - 0x00BF44 02:BF34: 00        .byte $00, $00, $00, $00   ; 



; 3C
- D 1 - I - 0x00BF48 02:BF38: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BF49 02:BF39: 02        .byte $02   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BF4A 02:BF3A: 14        .byte $14, $0C   ; 00
- D 1 - I - 0x00BF4C 02:BF3C: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BF4E 02:BF3E: 08        .byte $08, $0C   ; 02
- D 1 - I - 0x00BF50 02:BF40: 12        .byte $12, $02   ; 03
- D 1 - I - 0x00BF52 02:BF42: 1D        .byte $1D, $06   ; 04
- D 1 - I - 0x00BF54 02:BF44: 1E        .byte $1E, $0C   ; 05
- D 1 - I - 0x00BF56 02:BF46: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BF58 02:BF48: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BF5A 02:BF4A: 01        .byte $01, $08   ; 00
- D 1 - I - 0x00BF5C 02:BF4C: 09        .byte $09, $0C   ; 01
- D 1 - I - 0x00BF5E 02:BF4E: 14        .byte $14, $08   ; 02
- D 1 - I - 0x00BF60 02:BF50: 16        .byte $16, $04   ; 03
- D 1 - I - 0x00BF62 02:BF52: 1A        .byte $1A, $06   ; 04
- D 1 - I - 0x00BF64 02:BF54: 1C        .byte $1C, $0C   ; 05
- D 1 - I - 0x00BF66 02:BF56: 1D        .byte $1D, $09   ; 06
- D 1 - I - 0x00BF68 02:BF58: 1E        .byte $1E, $04   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BF6A 02:BF5A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF6E 02:BF5E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF72 02:BF62: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF76 02:BF66: 00        .byte $00, $00, $00, $00   ; 



; 3D
- D 1 - I - 0x00BF7A 02:BF6A: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BF7B 02:BF6B: 00        .byte $00   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BF7C 02:BF6C: 0D        .byte $0D, $08   ; 00
- D 1 - I - 0x00BF7E 02:BF6E: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BF80 02:BF70: 0A        .byte $0A, $02   ; 02
- D 1 - I - 0x00BF82 02:BF72: 01        .byte $01, $0E   ; 03
- D 1 - I - 0x00BF84 02:BF74: 0D        .byte $0D, $16   ; 04
- D 1 - I - 0x00BF86 02:BF76: 0D        .byte $0D, $1A   ; 05
- D 1 - I - 0x00BF88 02:BF78: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BF8A 02:BF7A: 0B        .byte $0B, $1B   ; 07
; carrots X, Y
- D 1 - I - 0x00BF8C 02:BF7C: 0B        .byte $0B, $05   ; 00
- D 1 - I - 0x00BF8E 02:BF7E: 0D        .byte $0D, $0E   ; 01
- D 1 - I - 0x00BF90 02:BF80: 07        .byte $07, $0E   ; 02
- D 1 - I - 0x00BF92 02:BF82: 0E        .byte $0E, $13   ; 03
- D 1 - I - 0x00BF94 02:BF84: 01        .byte $01, $16   ; 04
- D 1 - I - 0x00BF96 02:BF86: 02        .byte $02, $1A   ; 05
- D 1 - I - 0x00BF98 02:BF88: 0E        .byte $0E, $1A   ; 06
- D 1 - I - 0x00BF9A 02:BF8A: 04        .byte $04, $1B   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BF9C 02:BF8C: 0B        .byte $0B, $02, con_item_id_potion, $00   ; 
- D 1 - I - 0x00BFA0 02:BF90: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BFA4 02:BF94: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BFA8 02:BF98: 00        .byte $00, $00, $00, $00   ; 



; 3E
- D 1 - I - 0x00BFAC 02:BF9C: 00        .byte $00   ; scroll type
- D 1 - I - 0x00BFAD 02:BF9D: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BFAE 02:BF9E: 13        .byte $13, $04   ; 00
- D 1 - I - 0x00BFB0 02:BFA0: 00        .byte $00, $00   ; 01
- D 1 - I - 0x00BFB2 02:BFA2: 05        .byte $05, $06   ; 02
- D 1 - I - 0x00BFB4 02:BFA4: 08        .byte $08, $0C   ; 03
- D 1 - I - 0x00BFB6 02:BFA6: 0B        .byte $0B, $06   ; 04
- D 1 - I - 0x00BFB8 02:BFA8: 16        .byte $16, $09   ; 05
- D 1 - I - 0x00BFBA 02:BFAA: 00        .byte $00, $00   ; 06
- D 1 - I - 0x00BFBC 02:BFAC: 19        .byte $19, $09   ; 07
; carrots X, Y
- D 1 - I - 0x00BFBE 02:BFAE: 06        .byte $06, $06   ; 00
- D 1 - I - 0x00BFC0 02:BFB0: 08        .byte $08, $09   ; 01
- D 1 - I - 0x00BFC2 02:BFB2: 0C        .byte $0C, $06   ; 02
- D 1 - I - 0x00BFC4 02:BFB4: 10        .byte $10, $0A   ; 03
- D 1 - I - 0x00BFC6 02:BFB6: 15        .byte $15, $09   ; 04
- D 1 - I - 0x00BFC8 02:BFB8: 18        .byte $18, $02   ; 05
- D 1 - I - 0x00BFCA 02:BFBA: 19        .byte $19, $07   ; 06
- D 1 - I - 0x00BFCC 02:BFBC: 1D        .byte $1D, $06   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00BFCE 02:BFBE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BFD2 02:BFC2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BFD6 02:BFC6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00BFDA 02:BFCA: 00        .byte $00, $00, $00, $00   ; 



; 3F
- D 1 - I - 0x00BFDE 02:BFCE: 01        .byte $01   ; scroll type
- D 1 - I - 0x00BFDF 02:BFCF: 01        .byte $01   ; stage type
; characters X, Y (00 = player, 01-07 = enemies)
- D 1 - I - 0x00BFE0 02:BFD0: 08        .byte $08, $1B   ; 00
- D 1 - I - 0x00BFE2 02:BFD2: 08        .byte $08, $05   ; 01
- D 1 - I - 0x00BFE4 02:BFD4: 04        .byte $04, $06   ; 02
- D 1 - I - 0x00BFE6 02:BFD6: 00        .byte $00, $00   ; 03
- D 1 - I - 0x00BFE8 02:BFD8: 0D        .byte $0D, $0A   ; 04
- D 1 - I - 0x00BFEA 02:BFDA: 00        .byte $00, $00   ; 05
- D 1 - I - 0x00BFEC 02:BFDC: 0E        .byte $0E, $13   ; 06
- D 1 - I - 0x00BFEE 02:BFDE: 00        .byte $00, $00   ; 07
; carrots X, Y
- D 1 - I - 0x00BFF0 02:BFE0: 0A        .byte $0A, $02   ; 00
- D 1 - I - 0x00BFF2 02:BFE2: 0C        .byte $0C, $02   ; 01
- D 1 - I - 0x00BFF4 02:BFE4: 07        .byte $07, $08   ; 02
- D 1 - I - 0x00BFF6 02:BFE6: 03        .byte $03, $09   ; 03
- D 1 - I - 0x00BFF8 02:BFE8: 01        .byte $01, $0B   ; 04
- D 1 - I - 0x00BFFA 02:BFEA: 0E        .byte $0E, $0D   ; 05
- D 1 - I - 0x00BFFC 02:BFEC: 09        .byte $09, $15   ; 06
- D 1 - I - 0x00BFFE 02:BFEE: 03        .byte $03, $16   ; 07
; items X, Y, id, unused byte
- D 1 - I - 0x00C000 02:BFF0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00C004 02:BFF4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00C008 02:BFF8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00C00C 02:BFFC: 00        .byte $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



