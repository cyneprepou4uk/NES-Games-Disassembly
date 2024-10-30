.segment "BANK_9C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x038010-0x03C00F

; !! bzk before shifting code/data, open bank_val.inc and set con_bzk_hack variable to 01



.export sub_0x038539
.export sub_0x038580
.export sub_0x038598
.export sub_0x0385C8
.export sub_0x038652
.export sub_0x03897E_decrease_lives
.export sub_0x0389B3_display_time
.export sub_0x038A31
.export sub_0x038C68
.export ofs_036_0x039638_00
.export ofs_036_0x03975F_02
.export ofs_036_0x0398D8_01
.export sub_0x039AC0
.export sub_0x039B9E
.export sub_0x039BAA
.export sub_0x039BBF
.export ofs_036_0x03AE4F_04
.export ofs_036_0x03BA25_03
.export ofs_036_0x03BA7B_06
.export ofs_036_0x03BB04_05
.export loc_0x03BC39
.export ofs_036_0x03BC91_07
.export _off038_0x03BF0D_03_Konami
.export _off038_0x03BF26_00_Sypha
.export _off038_0x03BF5D_01_Grant
.export _off038_0x03BF85_02_Alucard
.export _off038_0x03BF9E_04_Trevor



; bzk bank id, must be located at 8000 in each bank
- - - - - - 0x038010 0E:8000: 9C        .byte con_prg_bank + $9C   ; 



sub_8001:
C - - - - - 0x038011 0E:8001: A5 95     LDA ram_0095_speed_config
; * 04
C - - - - - 0x038013 0E:8003: 0A        ASL
C - - - - - 0x038014 0E:8004: 0A        ASL
C - - - - - 0x038015 0E:8005: A8        TAY
C - - - - - 0x038016 0E:8006: B9 46 88  LDA tbl_8846_speed,Y
C - - - - - 0x038019 0E:8009: 85 08     STA ram_0008_t00E_spd_X_data
C - - - - - 0x03801B 0E:800B: B9 47 88  LDA tbl_8846_speed + $01,Y
C - - - - - 0x03801E 0E:800E: 85 09     STA ram_0008_t00E_spd_X_data + $01
C - - - - - 0x038020 0E:8010: B9 48 88  LDA tbl_8846_speed + $02,Y
C - - - - - 0x038023 0E:8013: 85 0A     STA ram_000A_t007_spd_Y_data
C - - - - - 0x038025 0E:8015: B9 49 88  LDA tbl_8846_speed + $03,Y
C - - - - - 0x038028 0E:8018: 85 0B     STA ram_000A_t007_spd_Y_data + $01
C - - - - - 0x03802A 0E:801A: A5 90     LDA ram_0090
C - - - - - 0x03802C 0E:801C: 10 17     BPL bra_8035
C - - - - - 0x03802E 0E:801E: 29 7F     AND #$7F
C - - - - - 0x038030 0E:8020: A8        TAY
C - - - - - 0x038031 0E:8021: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x038034 0E:8024: 38        SEC
C - - - - - 0x038035 0E:8025: F1 08     SBC (ram_0008_t00E_spd_X_data),Y
C - - - - - 0x038037 0E:8027: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03803A 0E:802A: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03803D 0E:802D: E9 00     SBC #$00
C - - - - - 0x03803F 0E:802F: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x038042 0E:8032: 4C 47 80  JMP loc_8047
bra_8035:
C - - - - - 0x038045 0E:8035: A8        TAY
C - - - - - 0x038046 0E:8036: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x038049 0E:8039: 18        CLC
C - - - - - 0x03804A 0E:803A: 71 08     ADC (ram_0008_t00E_spd_X_data),Y
C - - - - - 0x03804C 0E:803C: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03804F 0E:803F: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x038052 0E:8042: 69 00     ADC #$00
C - - - - - 0x038054 0E:8044: 8D F2 04  STA ram_plr_spd_X_hi
loc_8047:
C D 0 - - - 0x038057 0E:8047: C0 34     CPY #$34
C - - - - - 0x038059 0E:8049: B0 12     BCS bra_805D
C - - - - - 0x03805B 0E:804B: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x03805E 0E:804E: 18        CLC
C - - - - - 0x03805F 0E:804F: 71 0A     ADC (ram_000A_t007_spd_Y_data),Y
C - - - - - 0x038061 0E:8051: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x038064 0E:8054: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x038067 0E:8057: 69 00     ADC #$00
C - - - - - 0x038069 0E:8059: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03806C 0E:805C: 60        RTS
bra_805D:
C - - - - - 0x03806D 0E:805D: 98        TYA
C - - - - - 0x03806E 0E:805E: 38        SEC
C - - - - - 0x03806F 0E:805F: E9 34     SBC #$34
C - - - - - 0x038071 0E:8061: 0A        ASL
C - - - - - 0x038072 0E:8062: A8        TAY
C - - - - - 0x038073 0E:8063: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x038076 0E:8066: 18        CLC
C - - - - - 0x038077 0E:8067: 79 12 89  ADC tbl_8912_spd_Y,Y
C - - - - - 0x03807A 0E:806A: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03807D 0E:806D: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x038080 0E:8070: 79 13 89  ADC tbl_8912_spd_Y + $01,Y
C - - - - - 0x038083 0E:8073: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x038086 0E:8076: 60        RTS



sub_8077:
C - - - - - 0x038087 0E:8077: A5 90     LDA ram_0090
C - - - - - 0x038089 0E:8079: 30 16     BMI bra_8091
C - - - - - 0x03808B 0E:807B: A8        TAY
C - - - - - 0x03808C 0E:807C: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03808F 0E:807F: 38        SEC
C - - - - - 0x038090 0E:8080: F9 2C 89  SBC tbl_892C_spd_X_lo,Y
C - - - - - 0x038093 0E:8083: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x038096 0E:8086: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x038099 0E:8089: E9 00     SBC #$00
C - - - - - 0x03809B 0E:808B: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03809E 0E:808E: 4C A6 80  JMP loc_80A6
bra_8091:
C - - - - - 0x0380A1 0E:8091: 29 7F     AND #$7F
C - - - - - 0x0380A3 0E:8093: A8        TAY
C - - - - - 0x0380A4 0E:8094: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x0380A7 0E:8097: 18        CLC
C - - - - - 0x0380A8 0E:8098: 79 2C 89  ADC tbl_892C_spd_X_lo,Y
C - - - - - 0x0380AB 0E:809B: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0380AE 0E:809E: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x0380B1 0E:80A1: 69 00     ADC #$00
C - - - - - 0x0380B3 0E:80A3: 8D F2 04  STA ram_plr_spd_X_hi
loc_80A6:
C D 0 - - - 0x0380B6 0E:80A6: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x0380B9 0E:80A9: 18        CLC
C - - - - - 0x0380BA 0E:80AA: 79 4D 89  ADC tbl_894D_spd_Y_lo,Y
C - - - - - 0x0380BD 0E:80AD: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x0380C0 0E:80B0: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x0380C3 0E:80B3: 69 00     ADC #$00
C - - - - - 0x0380C5 0E:80B5: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x0380C8 0E:80B8: 60        RTS



sub_80B9:
C - - - - - 0x0380C9 0E:80B9: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0380CB 0E:80BB: 05 57     ORA ram_cam_pos_hi
C - - - - - 0x0380CD 0E:80BD: D0 19     BNE bra_80D8_RTS
C - - - - - 0x0380CF 0E:80BF: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0380D2 0E:80C2: C9 40     CMP #$40
C - - - - - 0x0380D4 0E:80C4: B0 12     BCS bra_80D8_RTS
C - - - - - 0x0380D6 0E:80C6: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0380D9 0E:80C9: 38        SEC
C - - - - - 0x0380DA 0E:80CA: E9 70     SBC #$70
C - - - - - 0x0380DC 0E:80CC: B0 02     BCS bra_80D0
C - - - - - 0x0380DE 0E:80CE: 49 FF     EOR #$FF
bra_80D0:
C - - - - - 0x0380E0 0E:80D0: C9 08     CMP #$08
C - - - - - 0x0380E2 0E:80D2: B0 04     BCS bra_80D8_RTS
C - - - - - 0x0380E4 0E:80D4: A9 0E     LDA #$0E
C - - - - - 0x0380E6 0E:80D6: 85 81     STA ram_0081
bra_80D8_RTS:
C - - - - - 0x0380E8 0E:80D8: 60        RTS



sub_80D9:
C - - - - - 0x0380E9 0E:80D9: A5 32     LDA ram_blk_hi
C - - - - - 0x0380EB 0E:80DB: C9 0E     CMP #$0E
C - - - - - 0x0380ED 0E:80DD: D0 0F     BNE bra_80EE
C - - - - - 0x0380EF 0E:80DF: A5 33     LDA ram_blk_lo
C - - - - - 0x0380F1 0E:80E1: C9 01     CMP #$01
C - - - - - 0x0380F3 0E:80E3: D0 09     BNE bra_80EE
C - - - - - 0x0380F5 0E:80E5: A5 34     LDA ram_blk_fr
C - - - - - 0x0380F7 0E:80E7: C9 01     CMP #$01
C - - - - - 0x0380F9 0E:80E9: D0 03     BNE bra_80EE
C - - - - - 0x0380FB 0E:80EB: 20 B9 80  JSR sub_80B9
bra_80EE:
C - - - - - 0x0380FE 0E:80EE: AD 65 05  LDA ram_plr_state
C - - - - - 0x038101 0E:80F1: C9 0A     CMP #con_plr_state_duck
C - - - - - 0x038103 0E:80F3: F0 04     BEQ bra_80F9
C - - - - - 0x038105 0E:80F5: C9 1C     CMP #con_plr_state_normal_atk_duck
C - - - - - 0x038107 0E:80F7: D0 08     BNE bra_8101
bra_80F9:
C - - - - - 0x038109 0E:80F9: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03810C 0E:80FC: 18        CLC
C - - - - - 0x03810D 0E:80FD: 69 04     ADC #$04
C - - - - - 0x03810F 0E:80FF: D0 03     BNE bra_8104    ; jmp
bra_8101:
C - - - - - 0x038111 0E:8101: AD 4E 05  LDA ram_plr_id
bra_8104:
C - - - - - 0x038114 0E:8104: 85 82     STA ram_copy_plr_id
C - - - - - 0x038116 0E:8106: A5 AF     LDA ram_00AF
C - - - - - 0x038118 0E:8108: F0 02     BEQ bra_810C
C - - - - - 0x03811A 0E:810A: C6 AF     DEC ram_00AF
bra_810C:
C - - - - - 0x03811C 0E:810C: A5 BF     LDA ram_00BF
C - - - - - 0x03811E 0E:810E: D0 1B     BNE bra_812B_RTS
C - - - - - 0x038120 0E:8110: A5 80     LDA ram_invinc_timer
C - - - - - 0x038122 0E:8112: F0 0A     BEQ bra_811E
C - - - - - 0x038124 0E:8114: C6 80     DEC ram_invinc_timer
C - - - - - 0x038126 0E:8116: A0 80     LDY #con_obj_flag_not_visible
C - - - - - 0x038128 0E:8118: A5 1A     LDA ram_frm_cnt
C - - - - - 0x03812A 0E:811A: 29 01     AND #$01
C - - - - - 0x03812C 0E:811C: F0 02     BEQ bra_8120
bra_811E:
C - - - - - 0x03812E 0E:811E: A0 00     LDY #con_obj_flag_00
bra_8120:
C - - - - - 0x038130 0E:8120: 8C 70 04  STY ram_plr_flags
C - - - - - 0x038133 0E:8123: A5 B7     LDA ram_00B7
C - - - - - 0x038135 0E:8125: D0 12     BNE bra_8139
C - - - - - 0x038137 0E:8127: A5 81     LDA ram_0081
C - - - - - 0x038139 0E:8129: D0 01     BNE bra_812C
bra_812B_RTS:
C - - - - - 0x03813B 0E:812B: 60        RTS
bra_812C:
C - - - - - 0x03813C 0E:812C: C9 0D     CMP #$0D
C - - - - - 0x03813E 0E:812E: F0 5F     BEQ bra_818F
C - - - - - 0x038140 0E:8130: C9 0E     CMP #$0E
C - - - - - 0x038142 0E:8132: F0 20     BEQ bra_8154
C - - - - - 0x038144 0E:8134: 29 F0     AND #$F0
C - - - - - 0x038146 0E:8136: D0 6A     BNE bra_81A2
C - - - - - 0x038148 0E:8138: 60        RTS
bra_8139:
C - - - - - 0x038149 0E:8139: A9 00     LDA #$00
C - - - - - 0x03814B 0E:813B: 85 B7     STA ram_00B7
C - - - - - 0x03814D 0E:813D: A5 2A     LDA ram_002A_script
C - - - - - 0x03814F 0E:813F: 85 9F     STA ram_009F
C - - - - - 0x038151 0E:8141: A9 19     LDA #con_002A_19
C - - - - - 0x038153 0E:8143: 85 2A     STA ram_002A_script
C - - - - - 0x038155 0E:8145: AD 65 05  LDA ram_plr_state
C - - - - - 0x038158 0E:8148: 09 80     ORA #con_plr_state_80
C - - - - - 0x03815A 0E:814A: 8D 65 05  STA ram_plr_state
C - - - - - 0x03815D 0E:814D: A9 2C     LDA #$2C
C - - - - - 0x03815F 0E:814F: 85 30     STA ram_screen_timer_lo
C - - - - - 0x038161 0E:8151: 68        PLA
C - - - - - 0x038162 0E:8152: 68        PLA
bra_8153_RTS:
C - - - - - 0x038163 0E:8153: 60        RTS
bra_8154:
C - - - - - 0x038164 0E:8154: A9 00     LDA #$00
C - - - - - 0x038166 0E:8156: A2 10     LDX #$10
C - - - - - 0x038168 0E:8158: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03816B 0E:815B: F0 15     BEQ bra_8172_RTS
C - - - - - 0x03816D 0E:815D: A5 32     LDA ram_blk_hi
C - - - - - 0x03816F 0E:815F: C9 01     CMP #$01
C - - - - - 0x038171 0E:8161: F0 04     BEQ bra_8167
C - - - - - 0x038173 0E:8163: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x038175 0E:8165: D0 0B     BNE bra_8172_RTS
bra_8167:
C - - - - - 0x038177 0E:8167: AD 65 05  LDA ram_plr_state
C - - - - - 0x03817A 0E:816A: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x03817C 0E:816C: F0 05     BEQ bra_8173
C - - - - - 0x03817E 0E:816E: C9 04     CMP #con_plr_state_move_on_ground
C - - - - - 0x038180 0E:8170: F0 01     BEQ bra_8173
bra_8172_RTS:
C - - - - - 0x038182 0E:8172: 60        RTS
bra_8173:
C - - - - - 0x038183 0E:8173: 20 02 8A  JSR sub_8A02
C - - - - - 0x038186 0E:8176: AD 4E 05  LDA ram_plr_id
C - - - - - 0x038189 0E:8179: C9 02     CMP #$02
C - - - - - 0x03818B 0E:817B: D0 09     BNE bra_8186
C - - - - - 0x03818D 0E:817D: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038190 0E:8180: 18        CLC
C - - - - - 0x038191 0E:8181: 69 04     ADC #$04
C - - - - - 0x038193 0E:8183: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_8186:
C - - - - - 0x038196 0E:8186: A9 18     LDA #con_002A_18
C - - - - - 0x038198 0E:8188: 85 2A     STA ram_002A_script
C - - - - - 0x03819A 0E:818A: A9 00     LDA #$00
C - - - - - 0x03819C 0E:818C: 85 6B     STA ram_006B_subscript
C - - - - - 0x03819E 0E:818E: 60        RTS
bra_818F:
C - - - - - 0x03819F 0E:818F: 20 C4 BD  JSR sub_BDC4
C - - - - - 0x0381A2 0E:8192: A9 3C     LDA #$3C
C - - - - - 0x0381A4 0E:8194: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x0381A7 0E:8197: A9 28     LDA #con_plr_state_28
C - - - - - 0x0381A9 0E:8199: 8D 65 05  STA ram_plr_state
C - - - - - 0x0381AC 0E:819C: A9 00     LDA #$00
C - - - - - 0x0381AE 0E:819E: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x0381B1 0E:81A1: 60        RTS
bra_81A2:
; bzk optimize, delete NOP
C - - - - - 0x0381B2 0E:81A2: EA        NOP
C - - - - - 0x0381B3 0E:81A3: A5 80     LDA ram_invinc_timer
C - - - - - 0x0381B5 0E:81A5: 05 AD     ORA ram_00AD_timer
C - - - - - 0x0381B7 0E:81A7: D0 82     BNE bra_812B_RTS
C - - - - - 0x0381B9 0E:81A9: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0381BC 0E:81AC: 0A        ASL
C - - - - - 0x0381BD 0E:81AD: A8        TAY
C - - - - - 0x0381BE 0E:81AE: B9 98 82  LDA tbl_8298_deal_or_skip_damage,Y
C - - - - - 0x0381C1 0E:81B1: 85 08     STA ram_0008_t00D_data
C - - - - - 0x0381C3 0E:81B3: B9 99 82  LDA tbl_8298_deal_or_skip_damage + $01,Y
C - - - - - 0x0381C6 0E:81B6: 85 09     STA ram_0008_t00D_data + $01
C - - - - - 0x0381C8 0E:81B8: A0 00     LDY #$00
bra_81BA_loop:
C - - - - - 0x0381CA 0E:81BA: B1 08     LDA (ram_0008_t00D_data),Y
C - - - - - 0x0381CC 0E:81BC: 30 4A     BMI bra_8208_FF
C - - - - - 0x0381CE 0E:81BE: CD 65 05  CMP ram_plr_state
C - - - - - 0x0381D1 0E:81C1: F0 04     BEQ bra_81C7_match
C - - - - - 0x0381D3 0E:81C3: C8        INY
C - - - - - 0x0381D4 0E:81C4: C8        INY
C - - - - - 0x0381D5 0E:81C5: D0 F3     BNE bra_81BA_loop    ; jmp
bra_81C7_match:
C - - - - - 0x0381D7 0E:81C7: C8        INY
C - - - - - 0x0381D8 0E:81C8: B1 08     LDA (ram_0008_t00D_data),Y
C - - - - - 0x0381DA 0E:81CA: F0 87     BEQ bra_8153_RTS
C - - - - - 0x0381DC 0E:81CC: 20 63 82  JSR sub_8263_deal_damage_to_player
C - - - - - 0x0381DF 0E:81CF: F0 3A     BEQ bra_820B_player_dies_from_damage
; if player is not dead yet
C - - - - - 0x0381E1 0E:81D1: AC 4E 05  LDY ram_plr_id
C - - - - - 0x0381E4 0E:81D4: B9 94 82  LDA tbl_8294_dmc_player_is_hit,Y
C - - - - - 0x0381E7 0E:81D7: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0381EA 0E:81DA: 20 C4 BD  JSR sub_BDC4
C - - - - - 0x0381ED 0E:81DD: A9 00     LDA #$00
C - - - - - 0x0381EF 0E:81DF: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0381F2 0E:81E2: AD 65 05  LDA ram_plr_state
; A = 12 14 1E 24 
C - - - - - 0x0381F5 0E:81E5: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x0381F8 0E:81E8: A9 20     LDA #$20
C - - - - - 0x0381FA 0E:81EA: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x0381FD 0E:81ED: A9 01     LDA #$01
C - - - - - 0x0381FF 0E:81EF: 8D 02 06  STA ram_05EF_obj + $13
C - - - - - 0x038202 0E:81F2: A9 78     LDA #$78
C - - - - - 0x038204 0E:81F4: 85 80     STA ram_invinc_timer
C - - - - - 0x038206 0E:81F6: A9 26     LDA #con_plr_state_knockback
C - - - - - 0x038208 0E:81F8: 8D 65 05  STA ram_plr_state
C - - - - - 0x03820B 0E:81FB: 60        RTS


; bzk garbage
- - - - - - 0x03820C 0E:81FC: AC 4E 05  LDY ram_plr_id
- - - - - - 0x03820F 0E:81FF: B9 94 82  LDA tbl_8294_dmc_player_is_hit,Y
- - - - - - 0x038212 0E:8202: 20 5F E2  JSR sub_0x03E26F_play_sound
- - - - - - 0x038215 0E:8205: 4C F9 8C  JMP loc_8CF9



bra_8208_FF:
C - - - - - 0x038218 0E:8208: 20 63 82  JSR sub_8263_deal_damage_to_player
loc_820B:
bra_820B_player_dies_from_damage:
C D 0 - - - 0x03821B 0E:820B: AC 4E 05  LDY ram_plr_id
C - - - - - 0x03821E 0E:820E: B9 94 82  LDA tbl_8294_dmc_player_is_hit,Y
C - - - - - 0x038221 0E:8211: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x038224 0E:8214: 20 C4 BD  JSR sub_BDC4
C - - - - - 0x038227 0E:8217: A9 00     LDA #$00
C - - - - - 0x038229 0E:8219: 8D 54 04  STA ram_0454_plr
C - - - - - 0x03822C 0E:821C: AD 65 05  LDA ram_plr_state
; A = 02 04 06 08 0A 0C 0E 12 18 1A 1C 20 30 32 
C - - - - - 0x03822F 0E:821F: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x038232 0E:8222: A9 20     LDA #$20
C - - - - - 0x038234 0E:8224: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x038237 0E:8227: A9 00     LDA #$00
C - - - - - 0x038239 0E:8229: 8D 02 06  STA ram_05EF_obj + $13
C - - - - - 0x03823C 0E:822C: A9 78     LDA #$78
C - - - - - 0x03823E 0E:822E: 85 80     STA ram_invinc_timer
C - - - - - 0x038240 0E:8230: A9 26     LDA #con_plr_state_knockback
C - - - - - 0x038242 0E:8232: 8D 65 05  STA ram_plr_state
C - - - - - 0x038245 0E:8235: A9 10     LDA #$10
C - - - - - 0x038247 0E:8237: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03824A 0E:823A: A9 FE     LDA #$FE
C - - - - - 0x03824C 0E:823C: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03824F 0E:823F: A9 00     LDA #$00
C - - - - - 0x038251 0E:8241: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x038254 0E:8244: A5 90     LDA ram_0090
C - - - - - 0x038256 0E:8246: F0 0B     BEQ bra_8253
C - - - - - 0x038258 0E:8248: A9 01     LDA #$01    ; facing left
C - - - - - 0x03825A 0E:824A: 8D A8 04  STA ram_plr_facing
C - - - - - 0x03825D 0E:824D: A9 01     LDA #> $0100
C - - - - - 0x03825F 0E:824F: A0 00     LDY #< $0100
C - - - - - 0x038261 0E:8251: F0 09     BEQ bra_825C    ; jmp
bra_8253:
C - - - - - 0x038263 0E:8253: A9 00     LDA #$00    ; facing right
C - - - - - 0x038265 0E:8255: 8D A8 04  STA ram_plr_facing
C - - - - - 0x038268 0E:8258: A9 FF     LDA #> $FF00
C - - - - - 0x03826A 0E:825A: A0 00     LDY #< $FF00
bra_825C:
C - - - - - 0x03826C 0E:825C: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03826F 0E:825F: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x038272 0E:8262: 60        RTS



sub_8263_deal_damage_to_player:
; out
    ; Z
        ; 0 = result is death
        ; 1 = player is still alive
C - - - - - 0x038273 0E:8263: AD 4E 05  LDA ram_plr_id
C - - - - - 0x038276 0E:8266: 0A        ASL
C - - - - - 0x038277 0E:8267: A8        TAY
C - - - - - 0x038278 0E:8268: B9 E4 82  LDA tbl_82E4_damage,Y
C - - - - - 0x03827B 0E:826B: 85 08     STA ram_0008_t00C_data
C - - - - - 0x03827D 0E:826D: B9 E5 82  LDA tbl_82E4_damage + $01,Y
C - - - - - 0x038280 0E:8270: 85 09     STA ram_0008_t00C_data + $01
C - - - - - 0x038282 0E:8272: A5 81     LDA ram_0081
; / 10
C - - - - - 0x038284 0E:8274: 4A        LSR
C - - - - - 0x038285 0E:8275: 4A        LSR
C - - - - - 0x038286 0E:8276: 4A        LSR
C - - - - - 0x038287 0E:8277: 4A        LSR
C - - - - - 0x038288 0E:8278: C9 0F     CMP #$0F
C - - - - - 0x03828A 0E:827A: F0 12     BEQ bra_828E_0F_instant_death
C - - - - - 0x03828C 0E:827C: A8        TAY
C - - - - - 0x03828D 0E:827D: B1 08     LDA (ram_0008_t00C_data),Y
C - - - - - 0x03828F 0E:827F: A8        TAY
C - - - - - 0x038290 0E:8280: A5 3C     LDA ram_hp_player
C - - - - - 0x038292 0E:8282: 38        SEC
C - - - - - 0x038293 0E:8283: F9 0C 83  SBC tbl_830C_damage,Y
C - - - - - 0x038296 0E:8286: B0 02     BCS bra_828A_not_underflow
; if enough to kill player
C - - - - - 0x038298 0E:8288: A9 00     LDA #$00
bra_828A_not_underflow:
C - - - - - 0x03829A 0E:828A: 85 3C     STA ram_hp_player
; bzk optimize, useless CLC
C - - - - - 0x03829C 0E:828C: 18        CLC
C - - - - - 0x03829D 0E:828D: 60        RTS
bra_828E_0F_instant_death:
C - - - - - 0x03829E 0E:828E: A9 00     LDA #$00
C - - - - - 0x0382A0 0E:8290: 85 3C     STA ram_hp_player
; bzk optimize, useless SEC
C - - - - - 0x0382A2 0E:8292: 38        SEC
C - - - - - 0x0382A3 0E:8293: 60        RTS



tbl_8294_dmc_player_is_hit:
- D 0 - - - 0x0382A4 0E:8294: 73        .byte con_dmc_hit_Trevor    ; 00 
- D 0 - - - 0x0382A5 0E:8295: 75        .byte con_dmc_hit_Sypha     ; 01 
- D 0 - - - 0x0382A6 0E:8296: 74        .byte con_dmc_hit_Grant     ; 02 
- D 0 - - - 0x0382A7 0E:8297: 76        .byte con_dmc_hit_Alucard   ; 03 



tbl_8298_deal_or_skip_damage:
; check if player can receive or skip damage in his current state
- D 0 - - - 0x0382A8 0E:8298: A0 82     .word off_82A0_00_Trevor
- D 0 - - - 0x0382AA 0E:829A: AF 82     .word off_82AF_01_Sypha
- D 0 - - - 0x0382AC 0E:829C: BE 82     .word off_82BE_02_Grant
- D 0 - - - 0x0382AE 0E:829E: CD 82     .word off_82CD_03_Alucard



off_82A0_00_Trevor:
; 
- D 0 - I - 0x0382B0 0E:82A0: 10        .byte con_plr_state_attach_to_stairs   ; 
- - - - - - 0x0382B1 0E:82A1: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382B2 0E:82A2: 12        .byte con_plr_state_idle_on_stairs   ; 
- D 0 - I - 0x0382B3 0E:82A3: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382B4 0E:82A4: 14        .byte con_plr_state_move_on_stairs   ; 
- D 0 - I - 0x0382B5 0E:82A5: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382B6 0E:82A6: 1E        .byte con_plr_state_normal_atk_on_stairs   ; 
- D 0 - I - 0x0382B7 0E:82A7: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382B8 0E:82A8: 24        .byte con_plr_state_subw_atk_on_stairs   ; 
- D 0 - I - 0x0382B9 0E:82A9: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382BA 0E:82AA: 16        .byte con_plr_state_16   ; 
- - - - - - 0x0382BB 0E:82AB: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382BC 0E:82AC: 26        .byte con_plr_state_knockback   ; 
- - - - - - 0x0382BD 0E:82AD: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382BE 0E:82AE: FF        .byte $FF   ; end token



off_82AF_01_Sypha:
; 
- D 0 - I - 0x0382BF 0E:82AF: 10        .byte con_plr_state_attach_to_stairs   ; 
- - - - - - 0x0382C0 0E:82B0: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382C1 0E:82B1: 12        .byte con_plr_state_idle_on_stairs   ; 
- - - - - - 0x0382C2 0E:82B2: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382C3 0E:82B3: 14        .byte con_plr_state_move_on_stairs   ; 
- D 0 - I - 0x0382C4 0E:82B4: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382C5 0E:82B5: 1E        .byte con_plr_state_normal_atk_on_stairs   ; 
- - - - - - 0x0382C6 0E:82B6: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382C7 0E:82B7: 24        .byte con_plr_state_subw_atk_on_stairs   ; 
- - - - - - 0x0382C8 0E:82B8: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382C9 0E:82B9: 16        .byte con_plr_state_16   ; 
- - - - - - 0x0382CA 0E:82BA: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382CB 0E:82BB: 26        .byte con_plr_state_knockback   ; 
- - - - - - 0x0382CC 0E:82BC: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382CD 0E:82BD: FF        .byte $FF   ; end token



off_82BE_02_Grant:
; 
- D 0 - I - 0x0382CE 0E:82BE: 10        .byte con_plr_state_attach_to_stairs   ; 
- - - - - - 0x0382CF 0E:82BF: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382D0 0E:82C0: 12        .byte con_plr_state_idle_on_stairs   ; 
- - - - - - 0x0382D1 0E:82C1: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382D2 0E:82C2: 14        .byte con_plr_state_move_on_stairs   ; 
- - - - - - 0x0382D3 0E:82C3: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382D4 0E:82C4: 1E        .byte con_plr_state_normal_atk_on_stairs   ; 
- D 0 - I - 0x0382D5 0E:82C5: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382D6 0E:82C6: 24        .byte con_plr_state_subw_atk_on_stairs   ; 
- - - - - - 0x0382D7 0E:82C7: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382D8 0E:82C8: 16        .byte con_plr_state_16   ; 
- - - - - - 0x0382D9 0E:82C9: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382DA 0E:82CA: 26        .byte con_plr_state_knockback   ; 
- - - - - - 0x0382DB 0E:82CB: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382DC 0E:82CC: FF        .byte $FF   ; end token



off_82CD_03_Alucard:
; 
- D 0 - I - 0x0382DD 0E:82CD: 10        .byte con_plr_state_attach_to_stairs   ; 
- - - - - - 0x0382DE 0E:82CE: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382DF 0E:82CF: 12        .byte con_plr_state_idle_on_stairs   ; 
- - - - - - 0x0382E0 0E:82D0: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382E1 0E:82D1: 14        .byte con_plr_state_move_on_stairs   ; 
- D 0 - I - 0x0382E2 0E:82D2: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382E3 0E:82D3: 1E        .byte con_plr_state_normal_atk_on_stairs   ; 
- - - - - - 0x0382E4 0E:82D4: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382E5 0E:82D5: 24        .byte con_plr_state_subw_atk_on_stairs   ; 
- - - - - - 0x0382E6 0E:82D6: 01        .byte $01   ; deal damage
; 
- D 0 - I - 0x0382E7 0E:82D7: 16        .byte con_plr_state_16   ; 
- - - - - - 0x0382E8 0E:82D8: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382E9 0E:82D9: 26        .byte con_plr_state_knockback   ; 
- D 0 - I - 0x0382EA 0E:82DA: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382EB 0E:82DB: 30        .byte con_plr_state_30   ; 
- - - - - - 0x0382EC 0E:82DC: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382ED 0E:82DD: 32        .byte con_plr_state_32   ; 
- - - - - - 0x0382EE 0E:82DE: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382EF 0E:82DF: 3C        .byte con_plr_state_3C   ; 
- - - - - - 0x0382F0 0E:82E0: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382F1 0E:82E1: 3E        .byte con_plr_state_3E   ; 
- - - - - - 0x0382F2 0E:82E2: 00        .byte $00   ; skip damage
; 
- D 0 - I - 0x0382F3 0E:82E3: FF        .byte $FF   ; end token



tbl_82E4_damage:
- D 0 - - - 0x0382F4 0E:82E4: EC 82     .word off_82EC_00_Trevor
- D 0 - - - 0x0382F6 0E:82E6: FC 82     .word off_82FC_01_Sypha
- D 0 - - - 0x0382F8 0E:82E8: FC 82     .word off_82FC_02_Grant
- D 0 - - - 0x0382FA 0E:82EA: EC 82     .word off_82EC_03_Alucard



off_82EC_00_Trevor:
off_82EC_03_Alucard:
- - - - - - 0x0382FC 0E:82EC: 00        .byte $00   ; 00 
- D 0 - I - 0x0382FD 0E:82ED: 01        .byte $01   ; 10 
- D 0 - I - 0x0382FE 0E:82EE: 02        .byte $02   ; 20 
- D 0 - I - 0x0382FF 0E:82EF: 03        .byte $03   ; 30 
- - - - - - 0x038300 0E:82F0: 04        .byte $04   ; 40 
- - - - - - 0x038301 0E:82F1: 05        .byte $05   ; 50 
- - - - - - 0x038302 0E:82F2: 06        .byte $06   ; 60 
- - - - - - 0x038303 0E:82F3: 07        .byte $07   ; 70 
- - - - - - 0x038304 0E:82F4: 08        .byte $08   ; 80 
- - - - - - 0x038305 0E:82F5: 09        .byte $09   ; 90 
- - - - - - 0x038306 0E:82F6: 0A        .byte $0A   ; A0 
- - - - - - 0x038307 0E:82F7: 0B        .byte $0B   ; B0 
- - - - - - 0x038308 0E:82F8: 0C        .byte $0C   ; C0 
- - - - - - 0x038309 0E:82F9: 0D        .byte $0D   ; D0 
- - - - - - 0x03830A 0E:82FA: 0E        .byte $0E   ; E0 
- - - - - - 0x03830B 0E:82FB: 0F        .byte $0F   ; F0 



off_82FC_01_Sypha:
off_82FC_02_Grant:
- - - - - - 0x03830C 0E:82FC: 00        .byte $00   ; 00 
- D 0 - I - 0x03830D 0E:82FD: 02        .byte $02   ; 10 
- D 0 - I - 0x03830E 0E:82FE: 03        .byte $03   ; 20 
- D 0 - I - 0x03830F 0E:82FF: 04        .byte $04   ; 30 
- - - - - - 0x038310 0E:8300: 05        .byte $05   ; 40 
- - - - - - 0x038311 0E:8301: 06        .byte $06   ; 50 
- - - - - - 0x038312 0E:8302: 07        .byte $07   ; 60 
- - - - - - 0x038313 0E:8303: 08        .byte $08   ; 70 
- - - - - - 0x038314 0E:8304: 09        .byte $09   ; 80 
- - - - - - 0x038315 0E:8305: 0A        .byte $0A   ; 90 
- - - - - - 0x038316 0E:8306: 0C        .byte $0C   ; A0 
- - - - - - 0x038317 0E:8307: 0C        .byte $0C   ; B0 
- - - - - - 0x038318 0E:8308: 0D        .byte $0D   ; C0 
- - - - - - 0x038319 0E:8309: 0E        .byte $0E   ; D0 
- - - - - - 0x03831A 0E:830A: 0F        .byte $0F   ; E0 
- - - - - - 0x03831B 0E:830B: 0F        .byte $0F   ; F0 



tbl_830C_damage:
- - - - - - 0x03831C 0E:830C: 00        .byte $00   ; 00 
- D 0 - - - 0x03831D 0E:830D: 08        .byte $08   ; 01 
- D 0 - - - 0x03831E 0E:830E: 0C        .byte $0C   ; 02 
- D 0 - - - 0x03831F 0E:830F: 10        .byte $10   ; 03 
- D 0 - - - 0x038320 0E:8310: 14        .byte $14   ; 04 
- - - - - - 0x038321 0E:8311: 18        .byte $18   ; 05 
- - - - - - 0x038322 0E:8312: 1C        .byte $1C   ; 06 
- - - - - - 0x038323 0E:8313: 20        .byte $20   ; 07 
- - - - - - 0x038324 0E:8314: 24        .byte $24   ; 08 
- - - - - - 0x038325 0E:8315: 28        .byte $28   ; 09 
- - - - - - 0x038326 0E:8316: 2C        .byte $2C   ; 0A 
- - - - - - 0x038327 0E:8317: 30        .byte $30   ; 0B 
- - - - - - 0x038328 0E:8318: 34        .byte $34   ; 0C 
- - - - - - 0x038329 0E:8319: 38        .byte $38   ; 0D 
- - - - - - 0x03832A 0E:831A: 3C        .byte $3C   ; 0E 
- - - - - - 0x03832B 0E:831B: 40        .byte $40   ; 0F 



ofs_Alucard_state_831C_26_knockback:
ofs_Trevor_state_831C_26_knockback:
ofs_Sypha_state_831C_26_knockback:
ofs_Grant_state_831C_26_knockback:
C - - J - - 0x03832C 0E:831C: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03832F 0E:831F: C9 03     CMP #$03
C - - - - - 0x038331 0E:8321: D0 19     BNE bra_833C
C - - - - - 0x038333 0E:8323: A5 3C     LDA ram_hp_player
C - - - - - 0x038335 0E:8325: F0 26     BEQ bra_834D
C - - - - - 0x038337 0E:8327: A0 00     LDY #$00
bra_8329_loop:
C - - - - - 0x038339 0E:8329: B9 A2 A6  LDA tbl_A6A2_plr_state,Y
C - - - - - 0x03833C 0E:832C: 30 0E     BMI bra_833C
C - - - - - 0x03833E 0E:832E: CD D4 05  CMP ram_05C1_obj + $13
C - - - - - 0x038341 0E:8331: F0 03     BEQ bra_8336
C - - - - - 0x038343 0E:8333: C8        INY
C - - - - - 0x038344 0E:8334: D0 F3     BNE bra_8329_loop    ; jmp
bra_8336:
C - - - - - 0x038346 0E:8336: A9 3C     LDA #con_plr_state_3C
C - - - - - 0x038348 0E:8338: 8D 65 05  STA ram_plr_state
C - - - - - 0x03834B 0E:833B: 60        RTS
bra_833C:
C - - - - - 0x03834C 0E:833C: AD 02 06  LDA ram_05EF_obj + $13
C - - - - - 0x03834F 0E:833F: F0 0C     BEQ bra_834D
C - - - - - 0x038351 0E:8341: CE EB 05  DEC ram_05D8_obj + $13
C - - - - - 0x038354 0E:8344: D0 06     BNE bra_834C_RTS
C - - - - - 0x038356 0E:8346: AD D4 05  LDA ram_05C1_obj + $13
; A = 12 14 1E 24 
C - - - - - 0x038359 0E:8349: 8D 65 05  STA ram_plr_state
bra_834C_RTS:
C - - - - - 0x03835C 0E:834C: 60        RTS
bra_834D:
C - - - - - 0x03835D 0E:834D: A9 08     LDA #$08
C - - - - - 0x03835F 0E:834F: AC F2 04  LDY ram_plr_spd_X_hi
C - - - - - 0x038362 0E:8352: 10 02     BPL bra_8356
C - - - - - 0x038364 0E:8354: A9 F8     LDA #$F8
bra_8356:
C - - - - - 0x038366 0E:8356: 85 08     STA ram_0008_t03C
C - - - - - 0x038368 0E:8358: A2 F0     LDX #$F0
C - - - - - 0x03836A 0E:835A: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03836D 0E:835D: D0 09     BNE bra_8368
C - - - - - 0x03836F 0E:835F: A5 08     LDA ram_0008_t03C
C - - - - - 0x038371 0E:8361: A2 00     LDX #$00
C - - - - - 0x038373 0E:8363: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x038376 0E:8366: F0 06     BEQ bra_836E
bra_8368:
C - - - - - 0x038378 0E:8368: 20 CF 97  JSR sub_97CF
C - - - - - 0x03837B 0E:836B: 4C 71 83  JMP loc_8371
bra_836E:
C - - - - - 0x03837E 0E:836E: 20 A1 97  JSR sub_97A1
loc_8371:
C D 0 - - - 0x038381 0E:8371: AD 65 05  LDA ram_plr_state
C - - - - - 0x038384 0E:8374: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x038386 0E:8376: F0 01     BEQ bra_8379
C - - - - - 0x038388 0E:8378: 60        RTS
bra_8379:
C - - - - - 0x038389 0E:8379: A9 00     LDA #$00
C - - - - - 0x03838B 0E:837B: 85 B9     STA ram_00B9
C - - - - - 0x03838D 0E:837D: AD 4E 05  LDA ram_plr_id
C - - - - - 0x038390 0E:8380: C9 02     CMP #$02
C - - - - - 0x038392 0E:8382: D0 0F     BNE bra_8393
C - - - - - 0x038394 0E:8384: A5 8B     LDA ram_008B
C - - - - - 0x038396 0E:8386: C9 01     CMP #$01
C - - - - - 0x038398 0E:8388: F0 09     BEQ bra_8393
C - - - - - 0x03839A 0E:838A: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03839D 0E:838D: 18        CLC
C - - - - - 0x03839E 0E:838E: 69 04     ADC #$04
C - - - - - 0x0383A0 0E:8390: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_8393:
C - - - - - 0x0383A3 0E:8393: A5 3C     LDA ram_hp_player
; bzk optimize, BNE to RTS at 0x0383B9
C - - - - - 0x0383A5 0E:8395: F0 01     BEQ bra_8398_kill_player
C - - - - - 0x0383A7 0E:8397: 60        RTS
bra_8398_kill_player:
sub_8398_kill_player:
loc_8398_kill_player:
C D 0 - - - 0x0383A8 0E:8398: A5 BF     LDA ram_00BF
C - - - - - 0x0383AA 0E:839A: D0 0D     BNE bra_83A9_RTS
C - - - - - 0x0383AC 0E:839C: A9 00     LDA #$00
C - - - - - 0x0383AE 0E:839E: 85 3C     STA ram_hp_player
C - - - - - 0x0383B0 0E:83A0: A9 2E     LDA #con_plr_state_death
C - - - - - 0x0383B2 0E:83A2: 8D 65 05  STA ram_plr_state
C - - - - - 0x0383B5 0E:83A5: A9 80     LDA #$80
C - - - - - 0x0383B7 0E:83A7: 85 BF     STA ram_00BF
bra_83A9_RTS:
C - - - - - 0x0383B9 0E:83A9: 60        RTS



sub_83AA:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0383BA 0E:83AA: A5 80     LDA ram_invinc_timer
C - - - - - 0x0383BC 0E:83AC: D0 0F     BNE bra_83BD
C - - - - - 0x0383BE 0E:83AE: A2 F8     LDX #$F8
C - - - - - 0x0383C0 0E:83B0: A9 00     LDA #$00
C - - - - - 0x0383C2 0E:83B2: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0383C5 0E:83B5: C9 05     CMP #$05
C - - - - - 0x0383C7 0E:83B7: F0 06     BEQ bra_83BF
C - - - - - 0x0383C9 0E:83B9: C9 07     CMP #$07
C - - - - - 0x0383CB 0E:83BB: F0 02     BEQ bra_83BF
bra_83BD:
C - - - - - 0x0383CD 0E:83BD: 18        CLC
C - - - - - 0x0383CE 0E:83BE: 60        RTS
bra_83BF:
C - - - - - 0x0383CF 0E:83BF: 20 F4 83  JSR sub_83F4
C - - - - - 0x0383D2 0E:83C2: 38        SEC
C - - - - - 0x0383D3 0E:83C3: 60        RTS



sub_83C4:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0383D4 0E:83C4: A5 8B     LDA ram_008B
C - - - - - 0x0383D6 0E:83C6: C9 01     CMP #$01
C - - - - - 0x0383D8 0E:83C8: F0 13     BEQ bra_83DD
C - - - - - 0x0383DA 0E:83CA: C9 05     CMP #$05
C - - - - - 0x0383DC 0E:83CC: F0 0F     BEQ bra_83DD
C - - - - - 0x0383DE 0E:83CE: C9 06     CMP #$06
C - - - - - 0x0383E0 0E:83D0: F0 0B     BEQ bra_83DD
C - - - - - 0x0383E2 0E:83D2: A2 0C     LDX #$0C
C - - - - - 0x0383E4 0E:83D4: A9 00     LDA #$00
C - - - - - 0x0383E6 0E:83D6: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0383E9 0E:83D9: D0 02     BNE bra_83DD
C - - - - - 0x0383EB 0E:83DB: 38        SEC
C - - - - - 0x0383EC 0E:83DC: 60        RTS
bra_83DD:
C - - - - - 0x0383ED 0E:83DD: 18        CLC
C - - - - - 0x0383EE 0E:83DE: 60        RTS
bra_83DF:
C - - - - - 0x0383EF 0E:83DF: 20 E8 FB  JSR sub_0x03FBF8
C - - - - - 0x0383F2 0E:83E2: A6 08     LDX ram_0008_temp
C - - - - - 0x0383F4 0E:83E4: A9 FB     LDA #$FB
C - - - - - 0x0383F6 0E:83E6: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0383F9 0E:83E9: C9 04     CMP #$04
C - - - - - 0x0383FB 0E:83EB: F0 02     BEQ bra_83EF
C - - - - - 0x0383FD 0E:83ED: 38        SEC
C - - - - - 0x0383FE 0E:83EE: 60        RTS
loc_83EF:
bra_83EF:
C D 0 - - - 0x0383FF 0E:83EF: 20 E8 FB  JSR sub_0x03FBF8
C - - - - - 0x038402 0E:83F2: 38        SEC
C - - - - - 0x038403 0E:83F3: 60        RTS



sub_83F4:
C - - - - - 0x038404 0E:83F4: A5 BF     LDA ram_00BF
C - - - - - 0x038406 0E:83F6: D0 24     BNE bra_841C_RTS
C - - - - - 0x038408 0E:83F8: A9 00     LDA #$00
C - - - - - 0x03840A 0E:83FA: 85 3C     STA ram_hp_player
C - - - - - 0x03840C 0E:83FC: 4C 0B 82  JMP loc_820B



sub_83FF:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x03840F 0E:83FF: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x038412 0E:8402: F0 06     BEQ bra_840A_RTS
C - - - - - 0x038414 0E:8404: C9 01     CMP #$01
C - - - - - 0x038416 0E:8406: F0 02     BEQ bra_840A_RTS
C - - - - - 0x038418 0E:8408: C9 08     CMP #$08
bra_840A_RTS:
C - - - - - 0x03841A 0E:840A: 60        RTS



sub_840B:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x03841B 0E:840B: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03841E 0E:840E: F0 02     BEQ bra_8412_RTS
C - - - - - 0x038420 0E:8410: C9 01     CMP #$01
bra_8412_RTS:
C - - - - - 0x038422 0E:8412: 60        RTS



bra_8413:
C - - - - - 0x038423 0E:8413: A5 80     LDA ram_invinc_timer
C - - - - - 0x038425 0E:8415: D0 05     BNE bra_841C_RTS
C - - - - - 0x038427 0E:8417: 20 F4 83  JSR sub_83F4
C - - - - - 0x03842A 0E:841A: 68        PLA
C - - - - - 0x03842B 0E:841B: 68        PLA
bra_841C_RTS:
C - - - - - 0x03842C 0E:841C: 60        RTS



sub_841D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03842D 0E:841D: A2 0C     LDX #$0C
C - - - - - 0x03842F 0E:841F: D0 02     BNE bra_8423    ; jmp



sub_8421:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x038431 0E:8421: A2 10     LDX #$10
bra_8423:
C - - - - - 0x038433 0E:8423: 86 08     STX ram_0008_t03D
C - - - - - 0x038435 0E:8425: A5 8B     LDA ram_008B
C - - - - - 0x038437 0E:8427: C9 01     CMP #$01
C - - - - - 0x038439 0E:8429: D0 03     BNE bra_842E
C - - - - - 0x03843B 0E:842B: 4C E0 84  JMP loc_84E0
bra_842E:
C - - - - - 0x03843E 0E:842E: C9 05     CMP #$05
C - - - - - 0x038440 0E:8430: D0 03     BNE bra_8435
C - - - - - 0x038442 0E:8432: 4C 13 85  JMP loc_8513
bra_8435:
C - - - - - 0x038445 0E:8435: C9 06     CMP #$06
C - - - - - 0x038447 0E:8437: D0 03     BNE bra_843C
C - - - - - 0x038449 0E:8439: 4C 1E 85  JMP loc_851E
bra_843C:
C - - - - - 0x03844C 0E:843C: A9 05     LDA #$05
C - - - - - 0x03844E 0E:843E: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x038451 0E:8441: F0 1E     BEQ bra_8461
C - - - - - 0x038453 0E:8443: C9 01     CMP #$01
C - - - - - 0x038455 0E:8445: F0 79     BEQ bra_84C0
C - - - - - 0x038457 0E:8447: C9 02     CMP #$02
C - - - - - 0x038459 0E:8449: F0 45     BEQ bra_8490
C - - - - - 0x03845B 0E:844B: C9 03     CMP #$03
C - - - - - 0x03845D 0E:844D: F0 5B     BEQ bra_84AA
C - - - - - 0x03845F 0E:844F: C9 04     CMP #$04
C - - - - - 0x038461 0E:8451: F0 8C     BEQ bra_83DF
C - - - - - 0x038463 0E:8453: C9 05     CMP #$05
C - - - - - 0x038465 0E:8455: F0 BC     BEQ bra_8413
C - - - - - 0x038467 0E:8457: C9 07     CMP #$07
C - - - - - 0x038469 0E:8459: F0 B8     BEQ bra_8413
C - - - - - 0x03846B 0E:845B: C9 0C     CMP #$0C
C - - - - - 0x03846D 0E:845D: B0 80     BCS bra_83DF
C - - - - - 0x03846F 0E:845F: 90 2B     BCC bra_848C    ; jmp
bra_8461:
C - - - - - 0x038471 0E:8461: A6 08     LDX ram_0008_t03D
C - - - - - 0x038473 0E:8463: A9 FB     LDA #$FB
C - - - - - 0x038475 0E:8465: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x038478 0E:8468: F0 24     BEQ bra_848E
C - - - - - 0x03847A 0E:846A: C9 01     CMP #$01
C - - - - - 0x03847C 0E:846C: F0 5B     BEQ bra_84C9
C - - - - - 0x03847E 0E:846E: C9 02     CMP #$02
C - - - - - 0x038480 0E:8470: F0 1E     BEQ bra_8490
C - - - - - 0x038482 0E:8472: C9 03     CMP #$03
C - - - - - 0x038484 0E:8474: F0 34     BEQ bra_84AA
C - - - - - 0x038486 0E:8476: C9 04     CMP #$04
C - - - - - 0x038488 0E:8478: D0 03     BNE bra_847D
C - - - - - 0x03848A 0E:847A: 4C EF 83  JMP loc_83EF
bra_847D:
C - - - - - 0x03848D 0E:847D: C9 05     CMP #$05
C - - - - - 0x03848F 0E:847F: F0 92     BEQ bra_8413
C - - - - - 0x038491 0E:8481: C9 07     CMP #$07
C - - - - - 0x038493 0E:8483: F0 8E     BEQ bra_8413
C - - - - - 0x038495 0E:8485: C9 0C     CMP #$0C
C - - - - - 0x038497 0E:8487: 90 03     BCC bra_848C
C - - - - - 0x038499 0E:8489: 4C EF 83  JMP loc_83EF
bra_848C:
C - - - - - 0x03849C 0E:848C: 38        SEC
C - - - - - 0x03849D 0E:848D: 60        RTS
bra_848E:
C - - - - - 0x03849E 0E:848E: 18        CLC
C - - - - - 0x03849F 0E:848F: 60        RTS
bra_8490:
C - - - - - 0x0384A0 0E:8490: A5 2A     LDA ram_002A_script
C - - - - - 0x0384A2 0E:8492: C9 1B     CMP #con_002A_1B
C - - - - - 0x0384A4 0E:8494: D0 04     BNE bra_849A
C - - - - - 0x0384A6 0E:8496: A9 00     LDA #$00
C - - - - - 0x0384A8 0E:8498: F0 0C     BEQ bra_84A6    ; jmp
bra_849A:
C - - - - - 0x0384AA 0E:849A: A5 8B     LDA ram_008B
C - - - - - 0x0384AC 0E:849C: C9 08     CMP #$08
C - - - - - 0x0384AE 0E:849E: D0 04     BNE bra_84A4
C - - - - - 0x0384B0 0E:84A0: A9 09     LDA #$09
C - - - - - 0x0384B2 0E:84A2: D0 02     BNE bra_84A6    ; jmp
bra_84A4:
C - - - - - 0x0384B4 0E:84A4: A9 0B     LDA #$0B
bra_84A6:
C - - - - - 0x0384B6 0E:84A6: 85 8B     STA ram_008B
C - - - - - 0x0384B8 0E:84A8: 38        SEC
C - - - - - 0x0384B9 0E:84A9: 60        RTS
bra_84AA:
C - - - - - 0x0384BA 0E:84AA: A5 2A     LDA ram_002A_script
C - - - - - 0x0384BC 0E:84AC: C9 1B     CMP #con_002A_1B
C - - - - - 0x0384BE 0E:84AE: D0 04     BNE bra_84B4
C - - - - - 0x0384C0 0E:84B0: A9 00     LDA #$00
C - - - - - 0x0384C2 0E:84B2: F0 F2     BEQ bra_84A6    ; jmp
bra_84B4:
C - - - - - 0x0384C4 0E:84B4: A5 8B     LDA ram_008B
C - - - - - 0x0384C6 0E:84B6: C9 08     CMP #$08
C - - - - - 0x0384C8 0E:84B8: F0 04     BEQ bra_84BE
C - - - - - 0x0384CA 0E:84BA: A9 0A     LDA #$0A
C - - - - - 0x0384CC 0E:84BC: 85 8B     STA ram_008B
bra_84BE:
C - - - - - 0x0384CE 0E:84BE: 38        SEC
C - - - - - 0x0384CF 0E:84BF: 60        RTS
bra_84C0:
C - - - - - 0x0384D0 0E:84C0: A6 08     LDX ram_0008_t03D
C - - - - - 0x0384D2 0E:84C2: A9 FB     LDA #$FB
C - - - - - 0x0384D4 0E:84C4: 20 0B 84  JSR sub_840B
C - - - - - 0x0384D7 0E:84C7: D0 C3     BNE bra_848C
bra_84C9:
C - - - - - 0x0384D9 0E:84C9: A9 07     LDA #$07
C - - - - - 0x0384DB 0E:84CB: 85 8B     STA ram_008B
C - - - - - 0x0384DD 0E:84CD: AD DB 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x0384E0 0E:84D0: 18        CLC
C - - - - - 0x0384E1 0E:84D1: 69 40     ADC #< $0040
C - - - - - 0x0384E3 0E:84D3: 8D DB 04  STA ram_plr_pos_Y_lo
C - - - - - 0x0384E6 0E:84D6: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0384E9 0E:84D9: 69 00     ADC #> $0040
C - - - - - 0x0384EB 0E:84DB: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x0384EE 0E:84DE: 38        SEC
C - - - - - 0x0384EF 0E:84DF: 60        RTS



loc_84E0:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 - - - 0x0384F0 0E:84E0: A6 08     LDX ram_0008_t03D
C - - - - - 0x0384F2 0E:84E2: A9 05     LDA #$05
C - - - - - 0x0384F4 0E:84E4: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0384F7 0E:84E7: D0 10     BNE bra_84F9
C - - - - - 0x0384F9 0E:84E9: A6 08     LDX ram_0008_t03D
C - - - - - 0x0384FB 0E:84EB: A9 FB     LDA #$FB
C - - - - - 0x0384FD 0E:84ED: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x038500 0E:84F0: D0 07     BNE bra_84F9
C - - - - - 0x038502 0E:84F2: A6 91     LDX ram_0091
C - - - - - 0x038504 0E:84F4: 20 9C FE  JSR sub_0x03FEAC
loc_84F7:
bra_84F7:
C D 0 - - - 0x038507 0E:84F7: 38        SEC
C - - - - - 0x038508 0E:84F8: 60        RTS
bra_84F9:
C - - - - - 0x038509 0E:84F9: A9 00     LDA #$00
C - - - - - 0x03850B 0E:84FB: 85 8B     STA ram_008B
C - - - - - 0x03850D 0E:84FD: 20 02 8A  JSR sub_8A02
C - - - - - 0x038510 0E:8500: AC 4E 05  LDY ram_plr_id
C - - - - - 0x038513 0E:8503: C0 02     CPY #$02
C - - - - - 0x038515 0E:8505: D0 F0     BNE bra_84F7
C - - - - - 0x038517 0E:8507: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03851A 0E:850A: 18        CLC
C - - - - - 0x03851B 0E:850B: 69 04     ADC #$04
C - - - - - 0x03851D 0E:850D: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x038520 0E:8510: 4C F7 84  JMP loc_84F7



loc_8513:
C D 0 - - - 0x038523 0E:8513: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038526 0E:8516: 18        CLC
C - - - - - 0x038527 0E:8517: 65 91     ADC ram_0091
C - - - - - 0x038529 0E:8519: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03852C 0E:851C: 38        SEC
C - - - - - 0x03852D 0E:851D: 60        RTS



loc_851E:
; bzk optimize, same code as 0x038523
C D 0 - - - 0x03852E 0E:851E: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038531 0E:8521: 18        CLC
C - - - - - 0x038532 0E:8522: 65 91     ADC ram_0091
C - - - - - 0x038534 0E:8524: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x038537 0E:8527: 38        SEC
C - - - - - 0x038538 0E:8528: 60        RTS



sub_0x038539:
; bzk optimize
C - - - - - 0x038539 0E:8529: 20 2D 85  JSR sub_852D
C - - - - - 0x03853C 0E:852C: 60        RTS



sub_852D:
C - - - - - 0x03853D 0E:852D: A0 00     LDY #$00
bra_852F_loop:
C - - - - - 0x03853F 0E:852F: B9 61 85  LDA tbl_8561_plr_state,Y
C - - - - - 0x038542 0E:8532: C9 FF     CMP #$FF
C - - - - - 0x038544 0E:8534: F0 0F     BEQ bra_8545_FF
C - - - - - 0x038546 0E:8536: C8        INY
C - - - - - 0x038547 0E:8537: CD 65 05  CMP ram_plr_state
C - - - - - 0x03854A 0E:853A: D0 F3     BNE bra_852F_loop
bra_853C:
C - - - - - 0x03854C 0E:853C: AD 54 04  LDA ram_0454_plr
C - - - - - 0x03854F 0E:853F: 29 DF     AND #$DF
C - - - - - 0x038551 0E:8541: 8D 54 04  STA ram_0454_plr
C - - - - - 0x038554 0E:8544: 60        RTS
bra_8545_FF:
C - - - - - 0x038555 0E:8545: A5 7D     LDA ram_007D
C - - - - - 0x038557 0E:8547: 29 0F     AND #$0F
C - - - - - 0x038559 0E:8549: 0A        ASL
C - - - - - 0x03855A 0E:854A: A8        TAY
C - - - - - 0x03855B 0E:854B: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03855E 0E:854E: D9 68 85  CMP tbl_8568,Y
C - - - - - 0x038561 0E:8551: 90 E9     BCC bra_853C
C - - - - - 0x038563 0E:8553: D9 69 85  CMP tbl_8568 + $01,Y
C - - - - - 0x038566 0E:8556: B0 E4     BCS bra_853C
C - - - - - 0x038568 0E:8558: AD 54 04  LDA ram_0454_plr
C - - - - - 0x03856B 0E:855B: 09 20     ORA #$20
C - - - - - 0x03856D 0E:855D: 8D 54 04  STA ram_0454_plr
C - - - - - 0x038570 0E:8560: 60        RTS



tbl_8561_plr_state:
- D 0 - - - 0x038571 0E:8561: 0E        .byte con_plr_state_move_towards_stairs   ; 00 
- D 0 - - - 0x038572 0E:8562: 10        .byte con_plr_state_attach_to_stairs   ; 01 
- D 0 - - - 0x038573 0E:8563: 12        .byte con_plr_state_idle_on_stairs   ; 02 
- D 0 - - - 0x038574 0E:8564: 14        .byte con_plr_state_move_on_stairs   ; 03 
- D 0 - - - 0x038575 0E:8565: 1E        .byte con_plr_state_normal_atk_on_stairs   ; 04 
- D 0 - - - 0x038576 0E:8566: 24        .byte con_plr_state_subw_atk_on_stairs   ; 05 
- D 0 - - - 0x038577 0E:8567: FF        .byte $FF   ; 06 end token



tbl_8568:
;                                              +---------- pos_Y_hi min
;                                              |    +----- pos_Y_hi max
;                                              |    |
- D 0 - - - 0x038578 0E:8568: 40        .byte $40, $A5   ; 00 
- D 0 - - - 0x03857A 0E:856A: 80        .byte $80, $C5   ; 01 
- D 0 - - - 0x03857C 0E:856C: 20        .byte $20, $60   ; 02 
- D 0 - - - 0x03857E 0E:856E: B0        .byte $B0, $E0   ; 03 



sub_0x038580:
C - - - - - 0x038580 0E:8570: A5 68     LDA ram_0068
C - - - - - 0x038582 0E:8572: C9 82     CMP #$82
C - - - - - 0x038584 0E:8574: B0 01     BCS bra_8577
C - - - - - 0x038586 0E:8576: 60        RTS
bra_8577:
C - - - - - 0x038587 0E:8577: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03858A 0E:857A: 18        CLC
C - - - - - 0x03858B 0E:857B: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x03858D 0E:857D: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x038590 0E:8580: A5 D3     LDA ram_00D3
C - - - - - 0x038592 0E:8582: 18        CLC
C - - - - - 0x038593 0E:8583: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x038595 0E:8585: 85 D3     STA ram_00D3
C - - - - - 0x038597 0E:8587: 60        RTS



sub_0x038598:
C - - - - - 0x038598 0E:8588: A5 68     LDA ram_0068
C - - - - - 0x03859A 0E:858A: 30 2B     BMI bra_85B7_RTS
C - - - - - 0x03859C 0E:858C: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03859E 0E:858E: 30 16     BMI bra_85A6
C - - - - - 0x0385A0 0E:8590: C5 71     CMP ram_0071_blk_config
C - - - - - 0x0385A2 0E:8592: F0 01     BEQ bra_8595
C - - - - - 0x0385A4 0E:8594: 60        RTS
bra_8595:
C - - - - - 0x0385A5 0E:8595: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0385A7 0E:8597: 18        CLC
C - - - - - 0x0385A8 0E:8598: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0385AB 0E:859B: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x0385AE 0E:859E: A5 71     LDA ram_0071_blk_config
C - - - - - 0x0385B0 0E:85A0: 85 57     STA ram_cam_pos_hi
C - - - - - 0x0385B2 0E:85A2: A9 00     LDA #$00
C - - - - - 0x0385B4 0E:85A4: F0 0D     BEQ bra_85B3    ; jmp
bra_85A6:
C - - - - - 0x0385B6 0E:85A6: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0385B8 0E:85A8: 18        CLC
C - - - - - 0x0385B9 0E:85A9: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0385BC 0E:85AC: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x0385BF 0E:85AF: A9 00     LDA #$00
C - - - - - 0x0385C1 0E:85B1: 85 57     STA ram_cam_pos_hi
bra_85B3:
C - - - - - 0x0385C3 0E:85B3: 85 56     STA ram_cam_pos_lo
C - - - - - 0x0385C5 0E:85B5: 85 58     STA ram_0058
bra_85B7_RTS:
C - - - - - 0x0385C7 0E:85B7: 60        RTS



sub_0x0385C8:
C - - - - - 0x0385C8 0E:85B8: A9 00     LDA #$00
C - - - - - 0x0385CA 0E:85BA: 85 58     STA ram_0058
C - - - - - 0x0385CC 0E:85BC: AD 65 05  LDA ram_plr_state
C - - - - - 0x0385CF 0E:85BF: C9 16     CMP #con_plr_state_16
C - - - - - 0x0385D1 0E:85C1: D0 4E     BNE bra_8611_RTS
C - - - - - 0x0385D3 0E:85C3: A5 68     LDA ram_0068
C - - - - - 0x0385D5 0E:85C5: 30 4B     BMI bra_8612
C - - - - - 0x0385D7 0E:85C7: A5 73     LDA ram_0073_copy_0068
C - - - - - 0x0385D9 0E:85C9: 30 4B     BMI bra_8616
C - - - - - 0x0385DB 0E:85CB: A2 00     LDX #$00
bra_85CD:
C - - - - - 0x0385DD 0E:85CD: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x0385E0 0E:85D0: 30 04     BMI bra_85D6
C - - - - - 0x0385E2 0E:85D2: E8        INX
C - - - - - 0x0385E3 0E:85D3: E8        INX
C - - - - - 0x0385E4 0E:85D4: E8        INX
C - - - - - 0x0385E5 0E:85D5: E8        INX
bra_85D6:
C - - - - - 0x0385E6 0E:85D6: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x0385E9 0E:85D9: F0 02     BEQ bra_85DD
C - - - - - 0x0385EB 0E:85DB: E8        INX
C - - - - - 0x0385EC 0E:85DC: E8        INX
bra_85DD:
C - - - - - 0x0385ED 0E:85DD: BD 1A 86  LDA tbl_861A_position,X
C - - - - - 0x0385F0 0E:85E0: 18        CLC
C - - - - - 0x0385F1 0E:85E1: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0385F4 0E:85E4: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x0385F7 0E:85E7: BD 1B 86  LDA tbl_861A_position + $01,X
C - - - - - 0x0385FA 0E:85EA: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x0385FD 0E:85ED: AC 4E 05  LDY ram_plr_id
C - - - - - 0x038600 0E:85F0: B9 32 86  LDA tbl_8632_position,Y
C - - - - - 0x038603 0E:85F3: 18        CLC
C - - - - - 0x038604 0E:85F4: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x038607 0E:85F7: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03860A 0E:85FA: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03860D 0E:85FD: AE EF 05  LDX ram_05EF_plr
C - - - - - 0x038610 0E:8600: F0 08     BEQ bra_860A
C - - - - - 0x038612 0E:8602: 18        CLC
C - - - - - 0x038613 0E:8603: 79 32 86  ADC tbl_8632_position,Y
C - - - - - 0x038616 0E:8606: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x038619 0E:8609: 60        RTS
bra_860A:
C - - - - - 0x03861A 0E:860A: 38        SEC
C - - - - - 0x03861B 0E:860B: F9 32 86  SBC tbl_8632_position,Y
C - - - - - 0x03861E 0E:860E: 8D 38 04  STA ram_plr_pos_X_hi
bra_8611_RTS:
C - - - - - 0x038621 0E:8611: 60        RTS
bra_8612:
C - - - - - 0x038622 0E:8612: A2 08     LDX #$08
C - - - - - 0x038624 0E:8614: D0 B7     BNE bra_85CD    ; jmp
bra_8616:
C - - - - - 0x038626 0E:8616: A2 10     LDX #$10
C - - - - - 0x038628 0E:8618: D0 B3     BNE bra_85CD    ; jmp



tbl_861A_position:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 0 - - - 0x03862A 0E:861A: 18        .byte $18, $D0   ; 00 
- D 0 - - - 0x03862C 0E:861C: E8        .byte $E8, $D0   ; 01 
- D 0 - - - 0x03862E 0E:861E: EC        .byte $EC, $28   ; 02 
- D 0 - - - 0x038630 0E:8620: 15        .byte $15, $28   ; 03 
- D 0 - - - 0x038632 0E:8622: 19        .byte $19, $D3   ; 04 
- D 0 - - - 0x038634 0E:8624: E8        .byte $E8, $D3   ; 05 
- D 0 - - - 0x038636 0E:8626: F3        .byte $F3, $33   ; 06 
- D 0 - - - 0x038638 0E:8628: 0D        .byte $0D, $33   ; 07 
- D 0 - - - 0x03863A 0E:862A: 11        .byte $11, $D0   ; 08 
- D 0 - - - 0x03863C 0E:862C: F0        .byte $F0, $D0   ; 09 
- D 0 - - - 0x03863E 0E:862E: EB        .byte $EB, $28   ; 0A 
- D 0 - - - 0x038640 0E:8630: 15        .byte $15, $28   ; 0B 



tbl_8632_position:
- D 0 - - - 0x038642 0E:8632: 00        .byte $00   ; 00 con_player_Trevor
- D 0 - - - 0x038643 0E:8633: 00        .byte $00   ; 01 con_player_Sypha
- D 0 - - - 0x038644 0E:8634: 04        .byte $04   ; 02 con_player_Grant
- D 0 - - - 0x038645 0E:8635: 00        .byte $00   ; 03 con_player_Alucard



bra_8636:
C - - - - - 0x038646 0E:8636: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x038648 0E:8638: F0 35     BEQ bra_866F_RTS
C - - - - - 0x03864A 0E:863A: 18        CLC
C - - - - - 0x03864B 0E:863B: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x03864E 0E:863E: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x038651 0E:8641: 60        RTS



sub_0x038652:
C - - - - - 0x038652 0E:8642: A5 68     LDA ram_0068
C - - - - - 0x038654 0E:8644: 30 F0     BMI bra_8636
C - - - - - 0x038656 0E:8646: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x038659 0E:8649: 30 2F     BMI bra_867A
C - - - - - 0x03865B 0E:864B: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03865D 0E:864D: 05 57     ORA ram_cam_pos_hi
C - - - - - 0x03865F 0E:864F: F0 28     BEQ bra_8679_RTS
C - - - - - 0x038661 0E:8651: A9 80     LDA #$80
C - - - - - 0x038663 0E:8653: 38        SEC
C - - - - - 0x038664 0E:8654: ED 38 04  SBC ram_plr_pos_X_hi
C - - - - - 0x038667 0E:8657: 85 08     STA ram_0008_t03E
C - - - - - 0x038669 0E:8659: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03866B 0E:865B: 38        SEC
C - - - - - 0x03866C 0E:865C: E5 08     SBC ram_0008_t03E
C - - - - - 0x03866E 0E:865E: B0 12     BCS bra_8672
C - - - - - 0x038670 0E:8660: A4 57     LDY ram_cam_pos_hi
C - - - - - 0x038672 0E:8662: 88        DEY
C - - - - - 0x038673 0E:8663: 10 0B     BPL bra_8670
- - - - - - 0x038675 0E:8665: 18        CLC
- - - - - - 0x038676 0E:8666: 69 80     ADC #$80
- - - - - - 0x038678 0E:8668: 8D 38 04  STA ram_plr_pos_X_hi
- - - - - - 0x03867B 0E:866B: A9 00     LDA #$00
- - - - - - 0x03867D 0E:866D: 85 56     STA ram_cam_pos_lo
bra_866F_RTS:
C - - - - - 0x03867F 0E:866F: 60        RTS
bra_8670:
C - - - - - 0x038680 0E:8670: 84 57     STY ram_cam_pos_hi
bra_8672:
C - - - - - 0x038682 0E:8672: 85 56     STA ram_cam_pos_lo
C - - - - - 0x038684 0E:8674: A9 80     LDA #$80
C - - - - - 0x038686 0E:8676: 8D 38 04  STA ram_plr_pos_X_hi
bra_8679_RTS:
C - - - - - 0x038689 0E:8679: 60        RTS
bra_867A:
C - - - - - 0x03868A 0E:867A: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03868C 0E:867C: C5 71     CMP ram_0071_blk_config
C - - - - - 0x03868E 0E:867E: F0 F9     BEQ bra_8679_RTS
C - - - - - 0x038690 0E:8680: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x038693 0E:8683: 38        SEC
C - - - - - 0x038694 0E:8684: E9 80     SBC #$80
C - - - - - 0x038696 0E:8686: F0 F1     BEQ bra_8679_RTS
C - - - - - 0x038698 0E:8688: 85 08     STA ram_0008_t03F
C - - - - - 0x03869A 0E:868A: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03869C 0E:868C: 18        CLC
C - - - - - 0x03869D 0E:868D: 65 08     ADC ram_0008_t03F
C - - - - - 0x03869F 0E:868F: 90 E1     BCC bra_8672
C - - - - - 0x0386A1 0E:8691: A4 57     LDY ram_cam_pos_hi
C - - - - - 0x0386A3 0E:8693: C8        INY
C - - - - - 0x0386A4 0E:8694: C4 71     CPY ram_0071_blk_config
C - - - - - 0x0386A6 0E:8696: D0 D8     BNE bra_8670
- - - - - - 0x0386A8 0E:8698: 18        CLC
- - - - - - 0x0386A9 0E:8699: 69 80     ADC #$80
- - - - - - 0x0386AB 0E:869B: 8D 38 04  STA ram_plr_pos_X_hi
- - - - - - 0x0386AE 0E:869E: 84 57     STY ram_cam_pos_hi
- - - - - - 0x0386B0 0E:86A0: A9 00     LDA #$00
- - - - - - 0x0386B2 0E:86A2: 85 56     STA ram_cam_pos_lo
- - - - - - 0x0386B4 0E:86A4: 60        RTS


; bzk garbage
- - - - - - 0x0386B5 0E:86A5: 18        CLC
- - - - - - 0x0386B6 0E:86A6: 6D 37 05  ADC ram_plr_spd_Y_lo
- - - - - - 0x0386B9 0E:86A9: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x0386BC 0E:86AC: A9 00     LDA #$00
- - - - - - 0x0386BE 0E:86AE: 6D 20 05  ADC ram_plr_spd_Y_hi
- - - - - - 0x0386C1 0E:86B1: 8D 20 05  STA ram_plr_spd_Y_hi
- - - - - - 0x0386C4 0E:86B4: 60        RTS



bra_86B5:
C - - - - - 0x0386C5 0E:86B5: A5 68     LDA ram_0068
C - - - - - 0x0386C7 0E:86B7: 29 01     AND #$01
C - - - - - 0x0386C9 0E:86B9: F0 08     BEQ bra_86C3
C - - - - - 0x0386CB 0E:86BB: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x0386CD 0E:86BD: 05 56     ORA ram_cam_pos_lo
C - - - - - 0x0386CF 0E:86BF: F0 15     BEQ bra_86D6
C - - - - - 0x0386D1 0E:86C1: D0 0C     BNE bra_86CF    ; jmp
bra_86C3:
C - - - - - 0x0386D3 0E:86C3: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x0386D5 0E:86C5: C5 71     CMP ram_0071_blk_config
C - - - - - 0x0386D7 0E:86C7: D0 06     BNE bra_86CF
C - - - - - 0x0386D9 0E:86C9: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0386DB 0E:86CB: C9 30     CMP #$30
C - - - - - 0x0386DD 0E:86CD: F0 07     BEQ bra_86D6
bra_86CF:
C - - - - - 0x0386DF 0E:86CF: 4C 16 87  JMP loc_8716



bra_86D2:
C - - - - - 0x0386E2 0E:86D2: C9 82     CMP #$82
C - - - - - 0x0386E4 0E:86D4: B0 DF     BCS bra_86B5
bra_86D6:
C - - - - - 0x0386E6 0E:86D6: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x0386E9 0E:86D9: 30 21     BMI bra_86FC
C - - - - - 0x0386EB 0E:86DB: 0D 37 05  ORA ram_plr_spd_Y_lo
C - - - - - 0x0386EE 0E:86DE: F0 31     BEQ bra_8711_RTS
C - - - - - 0x0386F0 0E:86E0: A5 68     LDA ram_0068
C - - - - - 0x0386F2 0E:86E2: 29 01     AND #$01
C - - - - - 0x0386F4 0E:86E4: F0 30     BEQ bra_8716
C - - - - - 0x0386F6 0E:86E6: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0386F9 0E:86E9: 10 2B     BPL bra_8716
C - - - - - 0x0386FB 0E:86EB: A5 71     LDA ram_0071_blk_config
C - - - - - 0x0386FD 0E:86ED: C5 57     CMP ram_cam_pos_hi
C - - - - - 0x0386FF 0E:86EF: D0 06     BNE bra_86F7
C - - - - - 0x038701 0E:86F1: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x038703 0E:86F3: C9 30     CMP #$30
C - - - - - 0x038705 0E:86F5: F0 1F     BEQ bra_8716
bra_86F7:
C - - - - - 0x038707 0E:86F7: A9 01     LDA #$01
C - - - - - 0x038709 0E:86F9: 85 65     STA ram_0065
C - - - - - 0x03870B 0E:86FB: 60        RTS
bra_86FC:
C - - - - - 0x03870C 0E:86FC: A5 68     LDA ram_0068
C - - - - - 0x03870E 0E:86FE: 29 01     AND #$01
C - - - - - 0x038710 0E:8700: D0 14     BNE bra_8716
C - - - - - 0x038712 0E:8702: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038715 0E:8705: 30 0F     BMI bra_8716
C - - - - - 0x038717 0E:8707: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x038719 0E:8709: 05 57     ORA ram_cam_pos_hi
C - - - - - 0x03871B 0E:870B: F0 09     BEQ bra_8716
C - - - - - 0x03871D 0E:870D: A9 00     LDA #$00
C - - - - - 0x03871F 0E:870F: 85 65     STA ram_0065
bra_8711_RTS:
C - - - - - 0x038721 0E:8711: 60        RTS



loc_8712:
sub_8712:
C D 0 - - - 0x038722 0E:8712: A5 68     LDA ram_0068
C - - - - - 0x038724 0E:8714: 30 BC     BMI bra_86D2
loc_8716:
bra_8716:
C D 0 - - - 0x038726 0E:8716: AD DB 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x038729 0E:8719: 18        CLC
C - - - - - 0x03872A 0E:871A: 6D 37 05  ADC ram_plr_spd_Y_lo
C - - - - - 0x03872D 0E:871D: 8D DB 04  STA ram_plr_pos_Y_lo
C - - - - - 0x038730 0E:8720: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038733 0E:8723: 6D 20 05  ADC ram_plr_spd_Y_hi
C - - - - - 0x038736 0E:8726: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x038739 0E:8729: 60        RTS



bra_872A:
C - - - - - 0x03873A 0E:872A: AC F2 04  LDY ram_plr_spd_X_hi
C - - - - - 0x03873D 0E:872D: 10 05     BPL bra_8734
C - - - - - 0x03873F 0E:872F: A5 90     LDA ram_0090
C - - - - - 0x038741 0E:8731: F0 0D     BEQ bra_8740
bra_8733_RTS:
C - - - - - 0x038743 0E:8733: 60        RTS
bra_8734:
C - - - - - 0x038744 0E:8734: A5 90     LDA ram_0090
C - - - - - 0x038746 0E:8736: F0 FB     BEQ bra_8733_RTS
C - - - - - 0x038748 0E:8738: D0 06     BNE bra_8740    ; jmp



loc_873A:
sub_873A:
C D 0 - - - 0x03874A 0E:873A: A5 8B     LDA ram_008B
C - - - - - 0x03874C 0E:873C: C9 02     CMP #$02
C - - - - - 0x03874E 0E:873E: F0 EA     BEQ bra_872A
sub_8740:
bra_8740:
C - - - - - 0x038750 0E:8740: A5 78     LDA ram_0078_flag
C - - - - - 0x038752 0E:8742: D0 1E     BNE bra_8762
C - - - - - 0x038754 0E:8744: A5 68     LDA ram_0068
C - - - - - 0x038756 0E:8746: 30 1A     BMI bra_8762
C - - - - - 0x038758 0E:8748: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03875B 0E:874B: 30 35     BMI bra_8782
C - - - - - 0x03875D 0E:874D: 0D 09 05  ORA ram_plr_spd_X_lo
C - - - - - 0x038760 0E:8750: F0 2F     BEQ bra_8781_RTS
C - - - - - 0x038762 0E:8752: A5 71     LDA ram_0071_blk_config
C - - - - - 0x038764 0E:8754: C5 57     CMP ram_cam_pos_hi
C - - - - - 0x038766 0E:8756: F0 0A     BEQ bra_8762
C - - - - - 0x038768 0E:8758: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03876B 0E:875B: 10 05     BPL bra_8762
C - - - - - 0x03876D 0E:875D: A9 01     LDA #$01
C - - - - - 0x03876F 0E:875F: 85 65     STA ram_0065
C - - - - - 0x038771 0E:8761: 60        RTS
bra_8762:
C - - - - - 0x038772 0E:8762: AD C4 04  LDA ram_plr_pos_X_lo
C - - - - - 0x038775 0E:8765: 18        CLC
C - - - - - 0x038776 0E:8766: 6D 09 05  ADC ram_plr_spd_X_lo
C - - - - - 0x038779 0E:8769: 8D C4 04  STA ram_plr_pos_X_lo
C - - - - - 0x03877C 0E:876C: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03877F 0E:876F: 6D F2 04  ADC ram_plr_spd_X_hi
C - - - - - 0x038782 0E:8772: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x038785 0E:8775: A4 68     LDY ram_0068
C - - - - - 0x038787 0E:8777: 30 29     BMI bra_87A2
C - - - - - 0x038789 0E:8779: C9 18     CMP #$18
C - - - - - 0x03878B 0E:877B: 90 1A     BCC bra_8797
C - - - - - 0x03878D 0E:877D: C9 E9     CMP #$E9
C - - - - - 0x03878F 0E:877F: B0 1A     BCS bra_879B
bra_8781_RTS:
C - - - - - 0x038791 0E:8781: 60        RTS
bra_8782:
C - - - - - 0x038792 0E:8782: A5 C8     LDA ram_00C8
C - - - - - 0x038794 0E:8784: D0 DC     BNE bra_8762
C - - - - - 0x038796 0E:8786: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x038798 0E:8788: 05 57     ORA ram_cam_pos_hi
C - - - - - 0x03879A 0E:878A: F0 D6     BEQ bra_8762
C - - - - - 0x03879C 0E:878C: AC 38 04  LDY ram_plr_pos_X_hi
C - - - - - 0x03879F 0E:878F: 88        DEY
C - - - - - 0x0387A0 0E:8790: 30 D0     BMI bra_8762
C - - - - - 0x0387A2 0E:8792: A9 00     LDA #$00
C - - - - - 0x0387A4 0E:8794: 85 65     STA ram_0065
C - - - - - 0x0387A6 0E:8796: 60        RTS
bra_8797:
C - - - - - 0x0387A7 0E:8797: A2 00     LDX #$00
C - - - - - 0x0387A9 0E:8799: F0 02     BEQ bra_879D    ; jmp
bra_879B:
C - - - - - 0x0387AB 0E:879B: A2 01     LDX #$01
bra_879D:
C - - - - - 0x0387AD 0E:879D: 20 9A E6  JSR sub_0x03E6AA
C - - - - - 0x0387B0 0E:87A0: B0 30     BCS bra_87D2
bra_87A2:
C - - - - - 0x0387B2 0E:87A2: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0387B5 0E:87A5: C9 10     CMP #$10
C - - - - - 0x0387B7 0E:87A7: 90 0A     BCC bra_87B3
C - - - - - 0x0387B9 0E:87A9: C9 F0     CMP #$F0
C - - - - - 0x0387BB 0E:87AB: 90 24     BCC bra_87D1_RTS
C - - - - - 0x0387BD 0E:87AD: A2 01     LDX #$01
C - - - - - 0x0387BF 0E:87AF: A9 F0     LDA #$F0
C - - - - - 0x0387C1 0E:87B1: D0 04     BNE bra_87B7    ; jmp
bra_87B3:
C - - - - - 0x0387C3 0E:87B3: A2 00     LDX #$00
C - - - - - 0x0387C5 0E:87B5: A9 10     LDA #$10
bra_87B7:
C - - - - - 0x0387C7 0E:87B7: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x0387CA 0E:87BA: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0387CD 0E:87BD: C9 03     CMP #$03
C - - - - - 0x0387CF 0E:87BF: D0 10     BNE bra_87D1_RTS
C - - - - - 0x0387D1 0E:87C1: AD 65 05  LDA ram_plr_state
C - - - - - 0x0387D4 0E:87C4: C9 34     CMP #con_plr_state_34
C - - - - - 0x0387D6 0E:87C6: D0 09     BNE bra_87D1_RTS
- - - - - - 0x0387D8 0E:87C8: A9 36     LDA #con_plr_state_36
- - - - - - 0x0387DA 0E:87CA: 8D 65 05  STA ram_plr_state
- - - - - - 0x0387DD 0E:87CD: 8E D8 05  STX ram_05D8_plr
- - - - - - 0x0387E0 0E:87D0: 60        RTS
bra_87D1_RTS:
C - - - - - 0x0387E1 0E:87D1: 60        RTS
bra_87D2:
C - - - - - 0x0387E2 0E:87D2: E0 00     CPX #$00
C - - - - - 0x0387E4 0E:87D4: F0 04     BEQ bra_87DA
C - - - - - 0x0387E6 0E:87D6: A9 E9     LDA #$E9
C - - - - - 0x0387E8 0E:87D8: D0 02     BNE bra_87DC    ; jmp
bra_87DA:
C - - - - - 0x0387EA 0E:87DA: A9 17     LDA #$17
bra_87DC:
C - - - - - 0x0387EC 0E:87DC: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x0387EF 0E:87DF: 60        RTS



tbl_87E0_speed:
- D 0 - - - 0x0387F0 0E:87E0: 25 88     .word off_8825_00
- D 0 - - - 0x0387F2 0E:87E2: E4 87     .word off_87E4_01



off_87E4_01:
- D 0 - I - 0x0387F4 0E:87E4: FF        .byte $FF   ; 00 
- D 0 - I - 0x0387F5 0E:87E5: FF        .byte $FF   ; 01 
- D 0 - I - 0x0387F6 0E:87E6: FF        .byte $FF   ; 02 
- D 0 - I - 0x0387F7 0E:87E7: FF        .byte $FF   ; 03 
- D 0 - I - 0x0387F8 0E:87E8: FF        .byte $FF   ; 04 
- D 0 - I - 0x0387F9 0E:87E9: FF        .byte $FF   ; 05 
- D 0 - I - 0x0387FA 0E:87EA: FF        .byte $FF   ; 06 
- D 0 - I - 0x0387FB 0E:87EB: FF        .byte $FF   ; 07 
- D 0 - I - 0x0387FC 0E:87EC: FC        .byte $FC   ; 08 
- D 0 - I - 0x0387FD 0E:87ED: FC        .byte $FC   ; 09 
- D 0 - I - 0x0387FE 0E:87EE: FC        .byte $FC   ; 0A 
- D 0 - I - 0x0387FF 0E:87EF: FC        .byte $FC   ; 0B 
- D 0 - I - 0x038800 0E:87F0: FC        .byte $FC   ; 0C 
- D 0 - I - 0x038801 0E:87F1: FC        .byte $FC   ; 0D 
- D 0 - I - 0x038802 0E:87F2: F8        .byte $F8   ; 0E 
- D 0 - I - 0x038803 0E:87F3: F8        .byte $F8   ; 0F 
- D 0 - I - 0x038804 0E:87F4: F8        .byte $F8   ; 10 
- D 0 - I - 0x038805 0E:87F5: F8        .byte $F8   ; 11 
- D 0 - I - 0x038806 0E:87F6: F4        .byte $F4   ; 12 
- D 0 - I - 0x038807 0E:87F7: F4        .byte $F4   ; 13 
- D 0 - I - 0x038808 0E:87F8: F4        .byte $F4   ; 14 
- D 0 - I - 0x038809 0E:87F9: F0        .byte $F0   ; 15 
- D 0 - I - 0x03880A 0E:87FA: F0        .byte $F0   ; 16 
- D 0 - I - 0x03880B 0E:87FB: F0        .byte $F0   ; 17 
- D 0 - I - 0x03880C 0E:87FC: EC        .byte $EC   ; 18 
- D 0 - I - 0x03880D 0E:87FD: EC        .byte $EC   ; 19 
- - - - - - 0x03880E 0E:87FE: E8        .byte $E8   ; 1A 
- D 0 - I - 0x03880F 0E:87FF: E8        .byte $E8   ; 1B 
- D 0 - I - 0x038810 0E:8800: E8        .byte $E8   ; 1C 
- D 0 - I - 0x038811 0E:8801: E4        .byte $E4   ; 1D 
- D 0 - I - 0x038812 0E:8802: E4        .byte $E4   ; 1E 
- D 0 - I - 0x038813 0E:8803: E0        .byte $E0   ; 1F 
- D 0 - I - 0x038814 0E:8804: DC        .byte $DC   ; 20 
- D 0 - I - 0x038815 0E:8805: DC        .byte $DC   ; 21 
- D 0 - I - 0x038816 0E:8806: D8        .byte $D8   ; 22 
- D 0 - I - 0x038817 0E:8807: D8        .byte $D8   ; 23 
- D 0 - I - 0x038818 0E:8808: D4        .byte $D4   ; 24 
- D 0 - I - 0x038819 0E:8809: D0        .byte $D0   ; 25 
- - - - - - 0x03881A 0E:880A: CC        .byte $CC   ; 26 
- D 0 - I - 0x03881B 0E:880B: CC        .byte $CC   ; 27 
- D 0 - I - 0x03881C 0E:880C: C8        .byte $C8   ; 28 
- D 0 - I - 0x03881D 0E:880D: C4        .byte $C4   ; 29 
- D 0 - I - 0x03881E 0E:880E: C0        .byte $C0   ; 2A 
- D 0 - I - 0x03881F 0E:880F: BC        .byte $BC   ; 2B 
- D 0 - I - 0x038820 0E:8810: B8        .byte $B8   ; 2C 
- D 0 - I - 0x038821 0E:8811: B8        .byte $B8   ; 2D 
- D 0 - I - 0x038822 0E:8812: B0        .byte $B0   ; 2E 
- D 0 - I - 0x038823 0E:8813: AC        .byte $AC   ; 2F 
- D 0 - I - 0x038824 0E:8814: A8        .byte $A8   ; 30 
- D 0 - I - 0x038825 0E:8815: A4        .byte $A4   ; 31 
- D 0 - I - 0x038826 0E:8816: A0        .byte $A0   ; 32 
- D 0 - I - 0x038827 0E:8817: 9C        .byte $9C   ; 33 
- D 0 - I - 0x038828 0E:8818: 94        .byte $94   ; 34 
- D 0 - I - 0x038829 0E:8819: 90        .byte $90   ; 35 
- D 0 - I - 0x03882A 0E:881A: 88        .byte $88   ; 36 
- D 0 - I - 0x03882B 0E:881B: 84        .byte $84   ; 37 
- D 0 - I - 0x03882C 0E:881C: 7C        .byte $7C   ; 38 
- D 0 - I - 0x03882D 0E:881D: 74        .byte $74   ; 39 
- D 0 - I - 0x03882E 0E:881E: 6C        .byte $6C   ; 3A 
- D 0 - I - 0x03882F 0E:881F: 64        .byte $64   ; 3B 
- D 0 - I - 0x038830 0E:8820: 58        .byte $58   ; 3C 
- D 0 - I - 0x038831 0E:8821: 4C        .byte $4C   ; 3D 
- D 0 - I - 0x038832 0E:8822: 40        .byte $40   ; 3E 
- D 0 - I - 0x038833 0E:8823: 2C        .byte $2C   ; 3F 
- D 0 - I - 0x038834 0E:8824: 00        .byte $00   ; 40 



off_8825_00:
- D 0 - I - 0x038835 0E:8825: FF        .byte $FF   ; 00 
- D 0 - I - 0x038836 0E:8826: FF        .byte $FF   ; 01 
- D 0 - I - 0x038837 0E:8827: FF        .byte $FF   ; 02 
- D 0 - I - 0x038838 0E:8828: FE        .byte $FE   ; 03 
- D 0 - I - 0x038839 0E:8829: FD        .byte $FD   ; 04 
- D 0 - I - 0x03883A 0E:882A: FC        .byte $FC   ; 05 
- D 0 - I - 0x03883B 0E:882B: FA        .byte $FA   ; 06 
- D 0 - I - 0x03883C 0E:882C: F9        .byte $F9   ; 07 
- D 0 - I - 0x03883D 0E:882D: F7        .byte $F7   ; 08 
- D 0 - I - 0x03883E 0E:882E: F5        .byte $F5   ; 09 
- D 0 - I - 0x03883F 0E:882F: F2        .byte $F2   ; 0A 
- D 0 - I - 0x038840 0E:8830: F0        .byte $F0   ; 0B 
- D 0 - I - 0x038841 0E:8831: EC        .byte $EC   ; 0C 
- D 0 - I - 0x038842 0E:8832: E9        .byte $E9   ; 0D 
- D 0 - I - 0x038843 0E:8833: E5        .byte $E5   ; 0E 
- D 0 - I - 0x038844 0E:8834: E1        .byte $E1   ; 0F 
- D 0 - I - 0x038845 0E:8835: DD        .byte $DD   ; 10 
- D 0 - I - 0x038846 0E:8836: D8        .byte $D8   ; 11 
- D 0 - I - 0x038847 0E:8837: D3        .byte $D3   ; 12 
- D 0 - I - 0x038848 0E:8838: CD        .byte $CD   ; 13 
- D 0 - I - 0x038849 0E:8839: C7        .byte $C7   ; 14 
- D 0 - I - 0x03884A 0E:883A: C1        .byte $C1   ; 15 
- D 0 - I - 0x03884B 0E:883B: B9        .byte $B9   ; 16 
- D 0 - I - 0x03884C 0E:883C: B1        .byte $B1   ; 17 
- D 0 - I - 0x03884D 0E:883D: A9        .byte $A9   ; 18 
- D 0 - I - 0x03884E 0E:883E: 9F        .byte $9F   ; 19 
- D 0 - I - 0x03884F 0E:883F: 95        .byte $95   ; 1A 
- D 0 - I - 0x038850 0E:8840: 89        .byte $89   ; 1B 
- D 0 - I - 0x038851 0E:8841: 7B        .byte $7B   ; 1C 
- D 0 - I - 0x038852 0E:8842: 6C        .byte $6C   ; 1D 
- D 0 - I - 0x038853 0E:8843: 59        .byte $59   ; 1E 
- D 0 - I - 0x038854 0E:8844: 40        .byte $40   ; 1F 
- - - - - - 0x038855 0E:8845: 00        .byte $00   ; 20 



tbl_8846_speed:
; 00 
- D 0 - - - 0x038856 0E:8846: 4E 88     .word off_884E_00_spd_X
- D 0 - - - 0x038858 0E:8848: 6F 88     .word off_886F_00_spd_Y
; 01 
- D 0 - - - 0x03885A 0E:884A: 90 88     .word off_8890_01_spd_X
- D 0 - - - 0x03885C 0E:884C: D1 88     .word off_88D1_01_spd_Y



off_884E_00_spd_X:
- D 0 - I - 0x03885E 0E:884E: 00        .byte $00   ; 00 
- D 0 - I - 0x03885F 0E:884F: 08        .byte $08   ; 01 
- D 0 - I - 0x038860 0E:8850: 10        .byte $10   ; 02 
- D 0 - I - 0x038861 0E:8851: 18        .byte $18   ; 03 
- D 0 - I - 0x038862 0E:8852: 20        .byte $20   ; 04 
- D 0 - I - 0x038863 0E:8853: 28        .byte $28   ; 05 
- D 0 - I - 0x038864 0E:8854: 2F        .byte $2F   ; 06 
- D 0 - I - 0x038865 0E:8855: 37        .byte $37   ; 07 
- D 0 - I - 0x038866 0E:8856: 3E        .byte $3E   ; 08 
- D 0 - I - 0x038867 0E:8857: 45        .byte $45   ; 09 
- D 0 - I - 0x038868 0E:8858: 4C        .byte $4C   ; 0A 
- D 0 - I - 0x038869 0E:8859: 53        .byte $53   ; 0B 
- D 0 - I - 0x03886A 0E:885A: 59        .byte $59   ; 0C 
- D 0 - I - 0x03886B 0E:885B: 5F        .byte $5F   ; 0D 
- D 0 - I - 0x03886C 0E:885C: 65        .byte $65   ; 0E 
- D 0 - I - 0x03886D 0E:885D: 6A        .byte $6A   ; 0F 
- D 0 - I - 0x03886E 0E:885E: 6F        .byte $6F   ; 10 
- D 0 - I - 0x03886F 0E:885F: 73        .byte $73   ; 11 
- D 0 - I - 0x038870 0E:8860: 77        .byte $77   ; 12 
- D 0 - I - 0x038871 0E:8861: 7A        .byte $7A   ; 13 
- D 0 - I - 0x038872 0E:8862: 7D        .byte $7D   ; 14 
- D 0 - I - 0x038873 0E:8863: 7F        .byte $7F   ; 15 
- D 0 - I - 0x038874 0E:8864: 80        .byte $80   ; 16 
- D 0 - I - 0x038875 0E:8865: 80        .byte $80   ; 17 
- D 0 - I - 0x038876 0E:8866: 7F        .byte $7F   ; 18 
- D 0 - I - 0x038877 0E:8867: 7D        .byte $7D   ; 19 
- D 0 - I - 0x038878 0E:8868: 79        .byte $79   ; 1A 
- D 0 - I - 0x038879 0E:8869: 74        .byte $74   ; 1B 
- D 0 - I - 0x03887A 0E:886A: 6C        .byte $6C   ; 1C 
- D 0 - I - 0x03887B 0E:886B: 62        .byte $62   ; 1D 
- D 0 - I - 0x03887C 0E:886C: 54        .byte $54   ; 1E 
- D 0 - I - 0x03887D 0E:886D: 3E        .byte $3E   ; 1F 
- - - - - - 0x03887E 0E:886E: 00        .byte $00   ; 20 



off_886F_00_spd_Y:
- D 0 - I - 0x03887F 0E:886F: 00        .byte $00   ; 00 
- D 0 - I - 0x038880 0E:8870: 00        .byte $00   ; 01 
- D 0 - I - 0x038881 0E:8871: 01        .byte $01   ; 02 
- D 0 - I - 0x038882 0E:8872: 02        .byte $02   ; 03 
- D 0 - I - 0x038883 0E:8873: 04        .byte $04   ; 04 
- D 0 - I - 0x038884 0E:8874: 06        .byte $06   ; 05 
- D 0 - I - 0x038885 0E:8875: 09        .byte $09   ; 06 
- D 0 - I - 0x038886 0E:8876: 0C        .byte $0C   ; 07 
- D 0 - I - 0x038887 0E:8877: 10        .byte $10   ; 08 
- D 0 - I - 0x038888 0E:8878: 14        .byte $14   ; 09 
- D 0 - I - 0x038889 0E:8879: 19        .byte $19   ; 0A 
- D 0 - I - 0x03888A 0E:887A: 1E        .byte $1E   ; 0B 
- D 0 - I - 0x03888B 0E:887B: 24        .byte $24   ; 0C 
- D 0 - I - 0x03888C 0E:887C: 2A        .byte $2A   ; 0D 
- D 0 - I - 0x03888D 0E:887D: 31        .byte $31   ; 0E 
- D 0 - I - 0x03888E 0E:887E: 38        .byte $38   ; 0F 
- D 0 - I - 0x03888F 0E:887F: 40        .byte $40   ; 10 
- D 0 - I - 0x038890 0E:8880: 48        .byte $48   ; 11 
- D 0 - I - 0x038891 0E:8881: 51        .byte $51   ; 12 
- D 0 - I - 0x038892 0E:8882: 5A        .byte $5A   ; 13 
- D 0 - I - 0x038893 0E:8883: 64        .byte $64   ; 14 
- D 0 - I - 0x038894 0E:8884: 6E        .byte $6E   ; 15 
- D 0 - I - 0x038895 0E:8885: 79        .byte $79   ; 16 
- D 0 - I - 0x038896 0E:8886: 84        .byte $84   ; 17 
- D 0 - I - 0x038897 0E:8887: 90        .byte $90   ; 18 
- D 0 - I - 0x038898 0E:8888: 9C        .byte $9C   ; 19 
- D 0 - I - 0x038899 0E:8889: A9        .byte $A9   ; 1A 
- D 0 - I - 0x03889A 0E:888A: B6        .byte $B6   ; 1B 
- D 0 - I - 0x03889B 0E:888B: C4        .byte $C4   ; 1C 
- D 0 - I - 0x03889C 0E:888C: D2        .byte $D2   ; 1D 
- D 0 - I - 0x03889D 0E:888D: E1        .byte $E1   ; 1E 
- D 0 - I - 0x03889E 0E:888E: F0        .byte $F0   ; 1F 
- - - - - - 0x03889F 0E:888F: FF        .byte $FF   ; 20 



off_8890_01_spd_X:
- D 0 - I - 0x0388A0 0E:8890: 00        .byte $00   ; 00 
- D 0 - I - 0x0388A1 0E:8891: 06        .byte $06   ; 01 
- D 0 - I - 0x0388A2 0E:8892: 0C        .byte $0C   ; 02 
- D 0 - I - 0x0388A3 0E:8893: 12        .byte $12   ; 03 
- D 0 - I - 0x0388A4 0E:8894: 18        .byte $18   ; 04 
- D 0 - I - 0x0388A5 0E:8895: 1E        .byte $1E   ; 05 
- D 0 - I - 0x0388A6 0E:8896: 24        .byte $24   ; 06 
- D 0 - I - 0x0388A7 0E:8897: 2A        .byte $2A   ; 07 
- D 0 - I - 0x0388A8 0E:8898: 30        .byte $30   ; 08 
- D 0 - I - 0x0388A9 0E:8899: 35        .byte $35   ; 09 
- D 0 - I - 0x0388AA 0E:889A: 3B        .byte $3B   ; 0A 
- D 0 - I - 0x0388AB 0E:889B: 41        .byte $41   ; 0B 
- D 0 - I - 0x0388AC 0E:889C: 47        .byte $47   ; 0C 
- D 0 - I - 0x0388AD 0E:889D: 4C        .byte $4C   ; 0D 
- D 0 - I - 0x0388AE 0E:889E: 52        .byte $52   ; 0E 
- D 0 - I - 0x0388AF 0E:889F: 57        .byte $57   ; 0F 
- D 0 - I - 0x0388B0 0E:88A0: 5D        .byte $5D   ; 10 
- D 0 - I - 0x0388B1 0E:88A1: 62        .byte $62   ; 11 
- D 0 - I - 0x0388B2 0E:88A2: 68        .byte $68   ; 12 
- D 0 - I - 0x0388B3 0E:88A3: 6D        .byte $6D   ; 13 
- D 0 - I - 0x0388B4 0E:88A4: 72        .byte $72   ; 14 
- D 0 - I - 0x0388B5 0E:88A5: 77        .byte $77   ; 15 
- D 0 - I - 0x0388B6 0E:88A6: 7C        .byte $7C   ; 16 
- D 0 - I - 0x0388B7 0E:88A7: 81        .byte $81   ; 17 
- D 0 - I - 0x0388B8 0E:88A8: 85        .byte $85   ; 18 
- D 0 - I - 0x0388B9 0E:88A9: 8A        .byte $8A   ; 19 
- D 0 - I - 0x0388BA 0E:88AA: 8F        .byte $8F   ; 1A 
- D 0 - I - 0x0388BB 0E:88AB: 93        .byte $93   ; 1B 
- D 0 - I - 0x0388BC 0E:88AC: 97        .byte $97   ; 1C 
- D 0 - I - 0x0388BD 0E:88AD: 9B        .byte $9B   ; 1D 
- D 0 - I - 0x0388BE 0E:88AE: 9F        .byte $9F   ; 1E 
- D 0 - I - 0x0388BF 0E:88AF: A3        .byte $A3   ; 1F 
- D 0 - I - 0x0388C0 0E:88B0: A6        .byte $A6   ; 20 
- D 0 - I - 0x0388C1 0E:88B1: AA        .byte $AA   ; 21 
- D 0 - I - 0x0388C2 0E:88B2: AD        .byte $AD   ; 22 
- D 0 - I - 0x0388C3 0E:88B3: B0        .byte $B0   ; 23 
- D 0 - I - 0x0388C4 0E:88B4: B3        .byte $B3   ; 24 
- D 0 - I - 0x0388C5 0E:88B5: B5        .byte $B5   ; 25 
- D 0 - I - 0x0388C6 0E:88B6: B7        .byte $B7   ; 26 
- D 0 - I - 0x0388C7 0E:88B7: BA        .byte $BA   ; 27 
- D 0 - I - 0x0388C8 0E:88B8: BB        .byte $BB   ; 28 
- D 0 - I - 0x0388C9 0E:88B9: BD        .byte $BD   ; 29 
- D 0 - I - 0x0388CA 0E:88BA: BE        .byte $BE   ; 2A 
- D 0 - I - 0x0388CB 0E:88BB: BF        .byte $BF   ; 2B 
- D 0 - I - 0x0388CC 0E:88BC: C0        .byte $C0   ; 2C 
- D 0 - I - 0x0388CD 0E:88BD: C0        .byte $C0   ; 2D 
- D 0 - I - 0x0388CE 0E:88BE: C0        .byte $C0   ; 2E 
- D 0 - I - 0x0388CF 0E:88BF: BF        .byte $BF   ; 2F 
- D 0 - I - 0x0388D0 0E:88C0: BE        .byte $BE   ; 30 
- D 0 - I - 0x0388D1 0E:88C1: BD        .byte $BD   ; 31 
- D 0 - I - 0x0388D2 0E:88C2: BB        .byte $BB   ; 32 
- D 0 - I - 0x0388D3 0E:88C3: B9        .byte $B9   ; 33 
- - - - - - 0x0388D4 0E:88C4: B6        .byte $B6   ; 34 
- - - - - - 0x0388D5 0E:88C5: B2        .byte $B2   ; 35 
- D 0 - I - 0x0388D6 0E:88C6: AE        .byte $AE   ; 36 
- D 0 - I - 0x0388D7 0E:88C7: A9        .byte $A9   ; 37 
- D 0 - I - 0x0388D8 0E:88C8: A3        .byte $A3   ; 38 
- D 0 - I - 0x0388D9 0E:88C9: 9C        .byte $9C   ; 39 
- D 0 - I - 0x0388DA 0E:88CA: 93        .byte $93   ; 3A 
- D 0 - I - 0x0388DB 0E:88CB: 89        .byte $89   ; 3B 
- D 0 - I - 0x0388DC 0E:88CC: 7D        .byte $7D   ; 3C 
- D 0 - I - 0x0388DD 0E:88CD: 6F        .byte $6F   ; 3D 
- D 0 - I - 0x0388DE 0E:88CE: 5C        .byte $5C   ; 3E 
- D 0 - I - 0x0388DF 0E:88CF: 43        .byte $43   ; 3F 
- - - - - - 0x0388E0 0E:88D0: 00        .byte $00   ; 40 


off_88D1_01_spd_Y:
- D 0 - I - 0x0388E1 0E:88D1: 00        .byte $00   ; 00 
- D 0 - I - 0x0388E2 0E:88D2: 00        .byte $00   ; 01 
- D 0 - I - 0x0388E3 0E:88D3: 00        .byte $00   ; 02 
- D 0 - I - 0x0388E4 0E:88D4: 01        .byte $01   ; 03 
- D 0 - I - 0x0388E5 0E:88D5: 02        .byte $02   ; 04 
- D 0 - I - 0x0388E6 0E:88D6: 02        .byte $02   ; 05 
- D 0 - I - 0x0388E7 0E:88D7: 03        .byte $03   ; 06 
- D 0 - I - 0x0388E8 0E:88D8: 05        .byte $05   ; 07 
- D 0 - I - 0x0388E9 0E:88D9: 06        .byte $06   ; 08 
- D 0 - I - 0x0388EA 0E:88DA: 08        .byte $08   ; 09 
- D 0 - I - 0x0388EB 0E:88DB: 09        .byte $09   ; 0A 
- D 0 - I - 0x0388EC 0E:88DC: 0B        .byte $0B   ; 0B 
- D 0 - I - 0x0388ED 0E:88DD: 0E        .byte $0E   ; 0C 
- D 0 - I - 0x0388EE 0E:88DE: 10        .byte $10   ; 0D 
- D 0 - I - 0x0388EF 0E:88DF: 12        .byte $12   ; 0E 
- D 0 - I - 0x0388F0 0E:88E0: 15        .byte $15   ; 0F 
- D 0 - I - 0x0388F1 0E:88E1: 18        .byte $18   ; 10 
- D 0 - I - 0x0388F2 0E:88E2: 1B        .byte $1B   ; 11 
- D 0 - I - 0x0388F3 0E:88E3: 1E        .byte $1E   ; 12 
- D 0 - I - 0x0388F4 0E:88E4: 22        .byte $22   ; 13 
- D 0 - I - 0x0388F5 0E:88E5: 26        .byte $26   ; 14 
- D 0 - I - 0x0388F6 0E:88E6: 29        .byte $29   ; 15 
- D 0 - I - 0x0388F7 0E:88E7: 2D        .byte $2D   ; 16 
- D 0 - I - 0x0388F8 0E:88E8: 32        .byte $32   ; 17 
- D 0 - I - 0x0388F9 0E:88E9: 36        .byte $36   ; 18 
- D 0 - I - 0x0388FA 0E:88EA: 3B        .byte $3B   ; 19 
- D 0 - I - 0x0388FB 0E:88EB: 3F        .byte $3F   ; 1A 
- D 0 - I - 0x0388FC 0E:88EC: 44        .byte $44   ; 1B 
- D 0 - I - 0x0388FD 0E:88ED: 4A        .byte $4A   ; 1C 
- D 0 - I - 0x0388FE 0E:88EE: 4F        .byte $4F   ; 1D 
- D 0 - I - 0x0388FF 0E:88EF: 54        .byte $54   ; 1E 
- D 0 - I - 0x038900 0E:88F0: 5A        .byte $5A   ; 1F 
- D 0 - I - 0x038901 0E:88F1: 60        .byte $60   ; 20 
- D 0 - I - 0x038902 0E:88F2: 66        .byte $66   ; 21 
- D 0 - I - 0x038903 0E:88F3: 6C        .byte $6C   ; 22 
- D 0 - I - 0x038904 0E:88F4: 73        .byte $73   ; 23 
- D 0 - I - 0x038905 0E:88F5: 7A        .byte $7A   ; 24 
- D 0 - I - 0x038906 0E:88F6: 80        .byte $80   ; 25 
- D 0 - I - 0x038907 0E:88F7: 87        .byte $87   ; 26 
- D 0 - I - 0x038908 0E:88F8: 8F        .byte $8F   ; 27 
- D 0 - I - 0x038909 0E:88F9: 96        .byte $96   ; 28 
- D 0 - I - 0x03890A 0E:88FA: 9E        .byte $9E   ; 29 
- D 0 - I - 0x03890B 0E:88FB: A5        .byte $A5   ; 2A 
- D 0 - I - 0x03890C 0E:88FC: AD        .byte $AD   ; 2B 
- D 0 - I - 0x03890D 0E:88FD: B6        .byte $B6   ; 2C 
- D 0 - I - 0x03890E 0E:88FE: BE        .byte $BE   ; 2D 
- D 0 - I - 0x03890F 0E:88FF: C6        .byte $C6   ; 2E 
- D 0 - I - 0x038910 0E:8900: CF        .byte $CF   ; 2F 
- D 0 - I - 0x038911 0E:8901: D8        .byte $D8   ; 30 
- D 0 - I - 0x038912 0E:8902: E1        .byte $E1   ; 31 
- D 0 - I - 0x038913 0E:8903: EA        .byte $EA   ; 32 
- D 0 - I - 0x038914 0E:8904: F4        .byte $F4   ; 33 
- - - - - - 0x038915 0E:8905: FE        .byte $FE   ; 34 
- - - - - - 0x038916 0E:8906: FF        .byte $FF   ; 35 
- - - - - - 0x038917 0E:8907: FF        .byte $FF   ; 36 
- - - - - - 0x038918 0E:8908: FF        .byte $FF   ; 37 
- - - - - - 0x038919 0E:8909: FF        .byte $FF   ; 38 
- - - - - - 0x03891A 0E:890A: FF        .byte $FF   ; 39 
- - - - - - 0x03891B 0E:890B: FF        .byte $FF   ; 3A 
- - - - - - 0x03891C 0E:890C: FF        .byte $FF   ; 3B 
- - - - - - 0x03891D 0E:890D: FF        .byte $FF   ; 3C 
- - - - - - 0x03891E 0E:890E: FF        .byte $FF   ; 3D 
- - - - - - 0x03891F 0E:890F: FF        .byte $FF   ; 3E 
- - - - - - 0x038920 0E:8910: FF        .byte $FF   ; 3F 
- - - - - - 0x038921 0E:8911: FF        .byte $FF   ; 40 



tbl_8912_spd_Y:
- - - - - - 0x038922 0E:8912: 00 01     .word $0100 ; 34 
- - - - - - 0x038924 0E:8914: 00 01     .word $0100 ; 35 
- D 0 - - - 0x038926 0E:8916: 10 01     .word $0110 ; 36 
- D 0 - - - 0x038928 0E:8918: 20 01     .word $0120 ; 37 
- D 0 - - - 0x03892A 0E:891A: 20 01     .word $0120 ; 38 
- D 0 - - - 0x03892C 0E:891C: 30 01     .word $0130 ; 39 
- D 0 - - - 0x03892E 0E:891E: 40 01     .word $0140 ; 3A 
- D 0 - - - 0x038930 0E:8920: 40 01     .word $0140 ; 3B 
- D 0 - - - 0x038932 0E:8922: 50 01     .word $0150 ; 3C 
- D 0 - - - 0x038934 0E:8924: 60 01     .word $0160 ; 3D 
- D 0 - - - 0x038936 0E:8926: 70 01     .word $0170 ; 3E 
- D 0 - - - 0x038938 0E:8928: 70 01     .word $0170 ; 3F 
- - - - - - 0x03893A 0E:892A: 80 01     .word $0180 ; 40 



tbl_892C_spd_X_lo:
- D 0 - - - 0x03893C 0E:892C: 00        .byte $00   ; 00 
- D 0 - - - 0x03893D 0E:892D: 04        .byte $04   ; 01 
- D 0 - - - 0x03893E 0E:892E: 08        .byte $08   ; 02 
- D 0 - - - 0x03893F 0E:892F: 0C        .byte $0C   ; 03 
- D 0 - - - 0x038940 0E:8930: 10        .byte $10   ; 04 
- D 0 - - - 0x038941 0E:8931: 14        .byte $14   ; 05 
- D 0 - - - 0x038942 0E:8932: 18        .byte $18   ; 06 
- D 0 - - - 0x038943 0E:8933: 1C        .byte $1C   ; 07 
- D 0 - - - 0x038944 0E:8934: 20        .byte $20   ; 08 
- D 0 - - - 0x038945 0E:8935: 24        .byte $24   ; 09 
- D 0 - - - 0x038946 0E:8936: 28        .byte $28   ; 0A 
- D 0 - - - 0x038947 0E:8937: 2C        .byte $2C   ; 0B 
- D 0 - - - 0x038948 0E:8938: 30        .byte $30   ; 0C 
- D 0 - - - 0x038949 0E:8939: 34        .byte $34   ; 0D 
- D 0 - - - 0x03894A 0E:893A: 38        .byte $38   ; 0E 
- D 0 - - - 0x03894B 0E:893B: 3C        .byte $3C   ; 0F 
- D 0 - - - 0x03894C 0E:893C: 40        .byte $40   ; 10 
- D 0 - - - 0x03894D 0E:893D: 44        .byte $44   ; 11 
- D 0 - - - 0x03894E 0E:893E: 48        .byte $48   ; 12 
- D 0 - - - 0x03894F 0E:893F: 4C        .byte $4C   ; 13 
- D 0 - - - 0x038950 0E:8940: 50        .byte $50   ; 14 
- D 0 - - - 0x038951 0E:8941: 54        .byte $54   ; 15 
- D 0 - - - 0x038952 0E:8942: 58        .byte $58   ; 16 
- D 0 - - - 0x038953 0E:8943: 5C        .byte $5C   ; 17 
- D 0 - - - 0x038954 0E:8944: 60        .byte $60   ; 18 
- D 0 - - - 0x038955 0E:8945: 64        .byte $64   ; 19 
- D 0 - - - 0x038956 0E:8946: 68        .byte $68   ; 1A 
- D 0 - - - 0x038957 0E:8947: 6C        .byte $6C   ; 1B 
- D 0 - - - 0x038958 0E:8948: 70        .byte $70   ; 1C 
- D 0 - - - 0x038959 0E:8949: 74        .byte $74   ; 1D 
- D 0 - - - 0x03895A 0E:894A: 78        .byte $78   ; 1E 
- D 0 - - - 0x03895B 0E:894B: 7C        .byte $7C   ; 1F 
- D 0 - - - 0x03895C 0E:894C: 80        .byte $80   ; 20 



tbl_894D_spd_Y_lo:
- D 0 - - - 0x03895D 0E:894D: 00        .byte $00   ; 00 
- D 0 - - - 0x03895E 0E:894E: 00        .byte $00   ; 01 
- D 0 - - - 0x03895F 0E:894F: 00        .byte $00   ; 02 
- D 0 - - - 0x038960 0E:8950: 01        .byte $01   ; 03 
- D 0 - - - 0x038961 0E:8951: 02        .byte $02   ; 04 
- D 0 - - - 0x038962 0E:8952: 02        .byte $02   ; 05 
- D 0 - - - 0x038963 0E:8953: 04        .byte $04   ; 06 
- D 0 - - - 0x038964 0E:8954: 05        .byte $05   ; 07 
- D 0 - - - 0x038965 0E:8955: 06        .byte $06   ; 08 
- D 0 - - - 0x038966 0E:8956: 08        .byte $08   ; 09 
- D 0 - - - 0x038967 0E:8957: 0A        .byte $0A   ; 0A 
- D 0 - - - 0x038968 0E:8958: 0C        .byte $0C   ; 0B 
- D 0 - - - 0x038969 0E:8959: 0F        .byte $0F   ; 0C 
- D 0 - - - 0x03896A 0E:895A: 11        .byte $11   ; 0D 
- D 0 - - - 0x03896B 0E:895B: 14        .byte $14   ; 0E 
- D 0 - - - 0x03896C 0E:895C: 17        .byte $17   ; 0F 
- D 0 - - - 0x03896D 0E:895D: 1B        .byte $1B   ; 10 
- D 0 - - - 0x03896E 0E:895E: 1E        .byte $1E   ; 11 
- D 0 - - - 0x03896F 0E:895F: 22        .byte $22   ; 12 
- D 0 - - - 0x038970 0E:8960: 26        .byte $26   ; 13 
- D 0 - - - 0x038971 0E:8961: 2B        .byte $2B   ; 14 
- D 0 - - - 0x038972 0E:8962: 30        .byte $30   ; 15 
- D 0 - - - 0x038973 0E:8963: 35        .byte $35   ; 16 
- D 0 - - - 0x038974 0E:8964: 3A        .byte $3A   ; 17 
- D 0 - - - 0x038975 0E:8965: 40        .byte $40   ; 18 
- D 0 - - - 0x038976 0E:8966: 47        .byte $47   ; 19 
- D 0 - - - 0x038977 0E:8967: 4D        .byte $4D   ; 1A 
- D 0 - - - 0x038978 0E:8968: 54        .byte $54   ; 1B 
- D 0 - - - 0x038979 0E:8969: 5C        .byte $5C   ; 1C 
- D 0 - - - 0x03897A 0E:896A: 64        .byte $64   ; 1D 
- D 0 - - - 0x03897B 0E:896B: 6D        .byte $6D   ; 1E 
- D 0 - - - 0x03897C 0E:896C: 76        .byte $76   ; 1F 
- D 0 - - - 0x03897D 0E:896D: 80        .byte $80   ; 20 



sub_0x03897E_decrease_lives:
C - - - - - 0x03897E 0E:896E: A5 35     LDA ram_lives
C - - - - - 0x038980 0E:8970: 29 0F     AND #$0F
C - - - - - 0x038982 0E:8972: 85 01     STA ram_0001_t004_lives_ones
C - - - - - 0x038984 0E:8974: A5 35     LDA ram_lives
C - - - - - 0x038986 0E:8976: 29 F0     AND #$F0
C - - - - - 0x038988 0E:8978: 85 02     STA ram_0002_t01E_lives_tens
C - - - - - 0x03898A 0E:897A: A5 01     LDA ram_0001_t004_lives_ones
C - - - - - 0x03898C 0E:897C: 38        SEC
C - - - - - 0x03898D 0E:897D: E9 01     SBC #$01
C - - - - - 0x03898F 0E:897F: 10 10     BPL bra_8991
C - - - - - 0x038991 0E:8981: 38        SEC
C - - - - - 0x038992 0E:8982: E9 06     SBC #$06
C - - - - - 0x038994 0E:8984: 85 01     STA ram_0001_t004_lives_ones
C - - - - - 0x038996 0E:8986: A5 02     LDA ram_0002_t01E_lives_tens
C - - - - - 0x038998 0E:8988: 38        SEC
C - - - - - 0x038999 0E:8989: E9 10     SBC #$10
C - - - - - 0x03899B 0E:898B: 85 02     STA ram_0002_t01E_lives_tens
C - - - - - 0x03899D 0E:898D: A5 01     LDA ram_0001_t004_lives_ones
C - - - - - 0x03899F 0E:898F: 29 0F     AND #$0F
bra_8991:
C - - - - - 0x0389A1 0E:8991: 05 02     ORA ram_0002_t01E_lives_tens
C - - - - - 0x0389A3 0E:8993: 85 35     STA ram_lives
C - - - - - 0x0389A5 0E:8995: 60        RTS



sub_8996:
C - - - - - 0x0389A6 0E:8996: A5 7E     LDA ram_timer_0xx
C - - - - - 0x0389A8 0E:8998: 05 7F     ORA ram_timer_x00
C - - - - - 0x0389AA 0E:899A: D0 07     BNE bra_89A3_still_have_time
; if time is up
C - - - - - 0x0389AC 0E:899C: 20 98 83  JSR sub_8398_kill_player
; bzk optimize, JMP
C - - - - - 0x0389AF 0E:899F: 20 C4 BD  JSR sub_BDC4
C - - - - - 0x0389B2 0E:89A2: 60        RTS
bra_89A3_still_have_time:
sub_0x0389B3_display_time:
; bzk optimize, timer is always 3 digits, remove calculations for ram_0004_t006_timer_x00_tens
C - - - - - 0x0389B3 0E:89A3: A5 7E     LDA ram_timer_0xx
C - - - - - 0x0389B5 0E:89A5: 29 0F     AND #$0F
C - - - - - 0x0389B7 0E:89A7: 85 01     STA ram_0001_t001_timer_0xx_ones
C - - - - - 0x0389B9 0E:89A9: A5 7E     LDA ram_timer_0xx
C - - - - - 0x0389BB 0E:89AB: 29 F0     AND #$F0
C - - - - - 0x0389BD 0E:89AD: 85 02     STA ram_0002_t016_timer_0xx_tens
C - - - - - 0x0389BF 0E:89AF: A5 7F     LDA ram_timer_x00
C - - - - - 0x0389C1 0E:89B1: 29 0F     AND #$0F
C - - - - - 0x0389C3 0E:89B3: 85 03     STA ram_0003_t002_timer_x00_ones
C - - - - - 0x0389C5 0E:89B5: A5 7F     LDA ram_timer_x00
C - - - - - 0x0389C7 0E:89B7: 29 F0     AND #$F0
C - - - - - 0x0389C9 0E:89B9: 85 04     STA ram_0004_t006_timer_x00_tens
C - - - - - 0x0389CB 0E:89BB: 20 CF 89  JSR sub_89CF
C - - - - - 0x0389CE 0E:89BE: A5 01     LDA ram_0001_t001_timer_0xx_ones
C - - - - - 0x0389D0 0E:89C0: 29 0F     AND #$0F
C - - - - - 0x0389D2 0E:89C2: 05 02     ORA ram_0002_t016_timer_0xx_tens
C - - - - - 0x0389D4 0E:89C4: 85 7E     STA ram_timer_0xx
C - - - - - 0x0389D6 0E:89C6: A5 03     LDA ram_0003_t002_timer_x00_ones
C - - - - - 0x0389D8 0E:89C8: 29 0F     AND #$0F
C - - - - - 0x0389DA 0E:89CA: 05 04     ORA ram_0004_t006_timer_x00_tens
C - - - - - 0x0389DC 0E:89CC: 85 7F     STA ram_timer_x00
C - - - - - 0x0389DE 0E:89CE: 60        RTS



sub_89CF:
C - - - - - 0x0389DF 0E:89CF: A5 01     LDA ram_0001_t001_timer_0xx_ones
C - - - - - 0x0389E1 0E:89D1: 38        SEC
C - - - - - 0x0389E2 0E:89D2: E9 01     SBC #$01
C - - - - - 0x0389E4 0E:89D4: 85 01     STA ram_0001_t001_timer_0xx_ones
C - - - - - 0x0389E6 0E:89D6: B0 0E     BCS bra_89E6_RTS
C - - - - - 0x0389E8 0E:89D8: 38        SEC
C - - - - - 0x0389E9 0E:89D9: E9 06     SBC #$06
C - - - - - 0x0389EB 0E:89DB: 85 01     STA ram_0001_t001_timer_0xx_ones
C - - - - - 0x0389ED 0E:89DD: A5 02     LDA ram_0002_t016_timer_0xx_tens
C - - - - - 0x0389EF 0E:89DF: 38        SEC
C - - - - - 0x0389F0 0E:89E0: E9 10     SBC #$10
C - - - - - 0x0389F2 0E:89E2: 85 02     STA ram_0002_t016_timer_0xx_tens
C - - - - - 0x0389F4 0E:89E4: 90 01     BCC bra_89E7
bra_89E6_RTS:
C - - - - - 0x0389F6 0E:89E6: 60        RTS
bra_89E7:
C - - - - - 0x0389F7 0E:89E7: 38        SEC
C - - - - - 0x0389F8 0E:89E8: E9 60     SBC #$60
C - - - - - 0x0389FA 0E:89EA: 85 02     STA ram_0002_t016_timer_0xx_tens
C - - - - - 0x0389FC 0E:89EC: A5 03     LDA ram_0003_t002_timer_x00_ones
C - - - - - 0x0389FE 0E:89EE: 38        SEC
C - - - - - 0x0389FF 0E:89EF: E9 01     SBC #$01
C - - - - - 0x038A01 0E:89F1: 85 03     STA ram_0003_t002_timer_x00_ones
C - - - - - 0x038A03 0E:89F3: B0 F1     BCS bra_89E6_RTS
- - - - - - 0x038A05 0E:89F5: 38        SEC
- - - - - - 0x038A06 0E:89F6: E9 06     SBC #$06
- - - - - - 0x038A08 0E:89F8: 85 03     STA ram_0003_t002_timer_x00_ones
- - - - - - 0x038A0A 0E:89FA: A5 04     LDA ram_0004_t006_timer_x00_tens
- - - - - - 0x038A0C 0E:89FC: 38        SEC
- - - - - - 0x038A0D 0E:89FD: E9 10     SBC #$10
- - - - - - 0x038A0F 0E:89FF: 85 04     STA ram_0004_t006_timer_x00_tens
- - - - - - 0x038A11 0E:8A01: 60        RTS



sub_8A02:
C - - - - - 0x038A12 0E:8A02: A5 68     LDA ram_0068
C - - - - - 0x038A14 0E:8A04: 30 09     BMI bra_8A0F
C - - - - - 0x038A16 0E:8A06: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038A19 0E:8A09: 29 F0     AND #$F0
C - - - - - 0x038A1B 0E:8A0B: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x038A1E 0E:8A0E: 60        RTS
bra_8A0F:
C - - - - - 0x038A1F 0E:8A0F: 18        CLC
C - - - - - 0x038A20 0E:8A10: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038A23 0E:8A13: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x038A25 0E:8A15: 29 F0     AND #$F0
C - - - - - 0x038A27 0E:8A17: 38        SEC
C - - - - - 0x038A28 0E:8A18: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x038A2A 0E:8A1A: 18        CLC
C - - - - - 0x038A2B 0E:8A1B: 69 03     ADC #$03
C - - - - - 0x038A2D 0E:8A1D: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_8A20_RTS:
C - - - - - 0x038A30 0E:8A20: 60        RTS



sub_0x038A31:
C - - - - - 0x038A31 0E:8A21: A5 7F     LDA ram_timer_x00
C - - - - - 0x038A33 0E:8A23: D0 11     BNE bra_8A36
C - - - - - 0x038A35 0E:8A25: A5 7E     LDA ram_timer_0xx
C - - - - - 0x038A37 0E:8A27: C9 20     CMP #$20
C - - - - - 0x038A39 0E:8A29: B0 0B     BCS bra_8A36
C - - - - - 0x038A3B 0E:8A2B: A5 1A     LDA ram_frm_cnt
C - - - - - 0x038A3D 0E:8A2D: 29 3F     AND #$3F
C - - - - - 0x038A3F 0E:8A2F: D0 05     BNE bra_8A36
C - - - - - 0x038A41 0E:8A31: A9 49     LDA #con_sound_low_time
C - - - - - 0x038A43 0E:8A33: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_8A36:
C - - - - - 0x038A46 0E:8A36: A5 1A     LDA ram_frm_cnt
C - - - - - 0x038A48 0E:8A38: 29 3F     AND #$3F
C - - - - - 0x038A4A 0E:8A3A: D0 03     BNE bra_8A3F
C - - - - - 0x038A4C 0E:8A3C: 20 96 89  JSR sub_8996
bra_8A3F:
C - - - - - 0x038A4F 0E:8A3F: A5 AB     LDA ram_stopwatch_flag
C - - - - - 0x038A51 0E:8A41: F0 16     BEQ bra_8A59
C - - - - - 0x038A53 0E:8A43: C6 AC     DEC ram_stopwatch_timer
C - - - - - 0x038A55 0E:8A45: D0 07     BNE bra_8A4E
C - - - - - 0x038A57 0E:8A47: A9 00     LDA #$00
C - - - - - 0x038A59 0E:8A49: 85 AB     STA ram_stopwatch_flag
C - - - - - 0x038A5B 0E:8A4B: 8D C9 06  STA ram_06C9_se_flag
bra_8A4E:
C - - - - - 0x038A5E 0E:8A4E: A5 AC     LDA ram_stopwatch_timer
C - - - - - 0x038A60 0E:8A50: 29 3F     AND #$3F
C - - - - - 0x038A62 0E:8A52: D0 05     BNE bra_8A59
C - - - - - 0x038A64 0E:8A54: A9 3C     LDA #con_sound_stopwatch_tick
C - - - - - 0x038A66 0E:8A56: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_8A59:
C - - - - - 0x038A69 0E:8A59: 20 52 AE  JSR sub_AE52
C - - - - - 0x038A6C 0E:8A5C: AD 65 05  LDA ram_plr_state
C - - - - - 0x038A6F 0E:8A5F: 30 BF     BMI bra_8A20_RTS    ; if con_plr_state_80
C - - - - - 0x038A71 0E:8A61: 20 D9 80  JSR sub_80D9
C - - - - - 0x038A74 0E:8A64: A5 8B     LDA ram_008B
C - - - - - 0x038A76 0E:8A66: 85 CF     STA ram_00CF
C - - - - - 0x038A78 0E:8A68: A5 81     LDA ram_0081
C - - - - - 0x038A7A 0E:8A6A: 29 0F     AND #$0F
C - - - - - 0x038A7C 0E:8A6C: 85 8B     STA ram_008B
C - - - - - 0x038A7E 0E:8A6E: A9 00     LDA #$00
C - - - - - 0x038A80 0E:8A70: 85 81     STA ram_0081
C - - - - - 0x038A82 0E:8A72: A5 68     LDA ram_0068
C - - - - - 0x038A84 0E:8A74: 10 17     BPL bra_8A8D
C - - - - - 0x038A86 0E:8A76: 29 01     AND #$01
C - - - - - 0x038A88 0E:8A78: D0 04     BNE bra_8A7E
C - - - - - 0x038A8A 0E:8A7A: A9 00     LDA #$00
C - - - - - 0x038A8C 0E:8A7C: F0 0D     BEQ bra_8A8B    ; jmp
bra_8A7E:
C - - - - - 0x038A8E 0E:8A7E: 18        CLC
C - - - - - 0x038A8F 0E:8A7F: A9 30     LDA #$30
C - - - - - 0x038A91 0E:8A81: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x038A93 0E:8A83: 29 F0     AND #$F0
C - - - - - 0x038A95 0E:8A85: 38        SEC
C - - - - - 0x038A96 0E:8A86: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x038A98 0E:8A88: 18        CLC
C - - - - - 0x038A99 0E:8A89: 69 03     ADC #$03
bra_8A8B:
C - - - - - 0x038A9B 0E:8A8B: 85 D0     STA ram_00D0
bra_8A8D:
C - - - - - 0x038A9D 0E:8A8D: A9 02     LDA #$02
C - - - - - 0x038A9F 0E:8A8F: 85 65     STA ram_0065
C - - - - - 0x038AA1 0E:8A91: AC 4E 05  LDY ram_plr_id
C - - - - - 0x038AA4 0E:8A94: F0 0C     BEQ bra_8AA2_Trevor
C - - - - - 0x038AA6 0E:8A96: 88        DEY
C - - - - - 0x038AA7 0E:8A97: F0 17     BEQ bra_8AB0_Sypha
C - - - - - 0x038AA9 0E:8A99: 88        DEY
C - - - - - 0x038AAA 0E:8A9A: F0 1A     BEQ bra_8AB6_Grant
C - - - - - 0x038AAC 0E:8A9C: 20 A8 A5  JSR sub_A5A8_Alucard_state_handler
C - - - - - 0x038AAF 0E:8A9F: 4C A5 8A  JMP loc_8AA5
bra_8AA2_Trevor:
C - - - - - 0x038AB2 0E:8AA2: 20 7B 93  JSR sub_937B_Trevor_state_handler
loc_8AA5:
C D 0 - - - 0x038AB5 0E:8AA5: AD 65 05  LDA ram_plr_state
C - - - - - 0x038AB8 0E:8AA8: 30 1A     BMI bra_8AC4_RTS    ; if con_plr_state_80
C - - - - - 0x038ABA 0E:8AAA: 20 C0 8B  JSR sub_8BC0
C - - - - - 0x038ABD 0E:8AAD: 4C 13 8D  JMP loc_8D13
bra_8AB0_Sypha:
C - - - - - 0x038AC0 0E:8AB0: 20 FC 9B  JSR sub_9BFC_Sypha_state_handler
C - - - - - 0x038AC3 0E:8AB3: 4C A5 8A  JMP loc_8AA5
bra_8AB6_Grant:
C - - - - - 0x038AC6 0E:8AB6: 20 3B 9C  JSR sub_9C3B_Grant_state_handler
C - - - - - 0x038AC9 0E:8AB9: 4C A5 8A  JMP loc_8AA5



sub_8ABC_clear_speed_Y:
C - - - - - 0x038ACC 0E:8ABC: A9 00     LDA #$00
C - - - - - 0x038ACE 0E:8ABE: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x038AD1 0E:8AC1: 8D 37 05  STA ram_plr_spd_Y_lo
bra_8AC4_RTS:
C - - - - - 0x038AD4 0E:8AC4: 60        RTS



ofs_Alucard_state_8AC5_00:
ofs_Trevor_state_8AC5_00:
ofs_Sypha_state_8AC5_00:
ofs_Grant_state_8AC5_00:
C - - J - - 0x038AD5 0E:8AC5: AC 4E 05  LDY ram_plr_id
C - - - - - 0x038AD8 0E:8AC8: B9 DA 8A  LDA tbl_8ADA,Y
C - - - - - 0x038ADB 0E:8ACB: 8D 8C 04  STA ram_plr_type
C - - - - - 0x038ADE 0E:8ACE: A9 02     LDA #$02
C - - - - - 0x038AE0 0E:8AD0: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x038AE3 0E:8AD3: EE 65 05  INC ram_plr_state
C - - - - - 0x038AE6 0E:8AD6: EE 65 05  INC ram_plr_state   ; -> con_plr_state_idle_on_ground
C - - - - - 0x038AE9 0E:8AD9: 60        RTS



tbl_8ADA:
- D 0 - - - 0x038AEA 0E:8ADA: 00        .byte con_obj_type_00   ; 00 
- D 0 - - - 0x038AEB 0E:8ADB: 02        .byte con_obj_type_02   ; 01 
- D 0 - - - 0x038AEC 0E:8ADC: 04        .byte con_obj_type_04   ; 02 
- D 0 - - - 0x038AED 0E:8ADD: 06        .byte con_obj_type_06   ; 03 



ofs_Alucard_state_8ADE_2E_death:
ofs_Trevor_state_8ADE_2E_death:
ofs_Sypha_state_8ADE_2E_death:
ofs_Grant_state_8ADE_2E_death:
C - - J - - 0x038AEE 0E:8ADE: A5 BF     LDA ram_00BF
C - - - - - 0x038AF0 0E:8AE0: 29 7F     AND #$7F
C - - - - - 0x038AF2 0E:8AE2: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x038AF5 0E:8AE5: EB 8A     .word ofs_004_8AEB_00
- D 0 - I - 0x038AF7 0E:8AE7: FF 8A     .word ofs_004_8AFF_01
- D 0 - I - 0x038AF9 0E:8AE9: 48 8B     .word ofs_004_8B48_02



ofs_004_8AEB_00:
C - - J - - 0x038AFB 0E:8AEB: A0 00     LDY #$00
C - - - - - 0x038AFD 0E:8AED: 8C 93 05  STY ram_plr_anim_cnt
C - - - - - 0x038B00 0E:8AF0: 8C 13 04  STY ram_obj_anim_id + $13
C - - - - - 0x038B03 0E:8AF3: 84 80     STY ram_invinc_timer
C - - - - - 0x038B05 0E:8AF5: 8C 70 04  STY ram_plr_flags   ; con_obj_flag_00
C - - - - - 0x038B08 0E:8AF8: C8        INY ; 01
C - - - - - 0x038B09 0E:8AF9: 8C 7C 05  STY ram_plr_anim_timer
C - - - - - 0x038B0C 0E:8AFC: E6 BF     INC ram_00BF
C - - - - - 0x038B0E 0E:8AFE: 60        RTS



ofs_004_8AFF_01:
C - - J - - 0x038B0F 0E:8AFF: 20 1A 8B  JSR sub_8B1A
C - - - - - 0x038B12 0E:8B02: AD 7C 05  LDA ram_plr_anim_timer
C - - - - - 0x038B15 0E:8B05: C9 FF     CMP #$FF
C - - - - - 0x038B17 0E:8B07: F0 01     BEQ bra_8B0A_FF
C - - - - - 0x038B19 0E:8B09: 60        RTS
bra_8B0A_FF:
C - - - - - 0x038B1A 0E:8B0A: A9 4E     LDA #con_music_death
C - - - - - 0x038B1C 0E:8B0C: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x038B1F 0E:8B0F: 20 CE E5  JSR sub_0x03E5DE
C - - - - - 0x038B22 0E:8B12: A9 64     LDA #$64
C - - - - - 0x038B24 0E:8B14: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x038B27 0E:8B17: E6 BF     INC ram_00BF
C - - - - - 0x038B29 0E:8B19: 60        RTS



sub_8B1A:
C - - - - - 0x038B2A 0E:8B1A: CE 7C 05  DEC ram_plr_anim_timer
C - - - - - 0x038B2D 0E:8B1D: F0 01     BEQ bra_8B20
C - - - - - 0x038B2F 0E:8B1F: 60        RTS
bra_8B20:
C - - - - - 0x038B30 0E:8B20: AD 93 05  LDA ram_plr_anim_cnt
C - - - - - 0x038B33 0E:8B23: 0A        ASL
C - - - - - 0x038B34 0E:8B24: A8        TAY
C - - - - - 0x038B35 0E:8B25: B9 4B 8B  LDA tbl_8B4B,Y
C - - - - - 0x038B38 0E:8B28: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x038B3B 0E:8B2B: B9 4C 8B  LDA tbl_8B4B + $01,Y
C - - - - - 0x038B3E 0E:8B2E: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x038B41 0E:8B31: AD 4E 05  LDA ram_plr_id
C - - - - - 0x038B44 0E:8B34: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x038B45 0E:8B35: 18        CLC
C - - - - - 0x038B46 0E:8B36: 6D 93 05  ADC ram_plr_anim_cnt
C - - - - - 0x038B49 0E:8B39: A8        TAY
C - - - - - 0x038B4A 0E:8B3A: B9 4F 8B  LDA tbl_8B4F_pos_Y,Y
C - - - - - 0x038B4D 0E:8B3D: 18        CLC
C - - - - - 0x038B4E 0E:8B3E: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x038B51 0E:8B41: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x038B54 0E:8B44: EE 93 05  INC ram_plr_anim_cnt
C - - - - - 0x038B57 0E:8B47: 60        RTS



ofs_004_8B48_02:
; bzk optimize
C - - J - - 0x038B58 0E:8B48: 4C A7 8B  JMP loc_8BA7



tbl_8B4B:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 0 - - - 0x038B5B 0E:8B4B: 12        .byte $12, $08   ; 
- D 0 - - - 0x038B5D 0E:8B4D: 14        .byte $14, $FF   ; 



tbl_8B4F_pos_Y:
; 00 con_player_Trevor
- D 0 - - - 0x038B5F 0E:8B4F: 06        .byte $06   ; 
- D 0 - - - 0x038B60 0E:8B50: F9        .byte $F9   ; 
; 01 con_player_Sypha
- D 0 - - - 0x038B61 0E:8B51: 0A        .byte $0A   ; 
- D 0 - - - 0x038B62 0E:8B52: FC        .byte $FC   ; 
; 02 con_player_Grant
- D 0 - - - 0x038B63 0E:8B53: 04        .byte $04   ; 
- D 0 - - - 0x038B64 0E:8B54: FF        .byte $FF   ; 
; 03 con_player_Alucard
- D 0 - - - 0x038B65 0E:8B55: 04        .byte $04   ; 
- D 0 - - - 0x038B66 0E:8B56: FC        .byte $FC   ; 



ofs_Alucard_state_8B57_2C:
ofs_Trevor_state_8B57_2C:
ofs_Sypha_state_8B57_2C:
ofs_Grant_state_8B57_2C:
C - - J - - 0x038B67 0E:8B57: A5 BF     LDA ram_00BF
C - - - - - 0x038B69 0E:8B59: 29 7F     AND #$7F
C - - - - - 0x038B6B 0E:8B5B: A8        TAY
C - - - - - 0x038B6C 0E:8B5C: D0 31     BNE bra_8B8F
C - - - - - 0x038B6E 0E:8B5E: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038B71 0E:8B61: A4 68     LDY ram_0068
C - - - - - 0x038B73 0E:8B63: 30 06     BMI bra_8B6B
C - - - - - 0x038B75 0E:8B65: C9 E0     CMP #$E0
C - - - - - 0x038B77 0E:8B67: 90 08     BCC bra_8B71
C - - - - - 0x038B79 0E:8B69: B0 21     BCS bra_8B8C    ; jmp
bra_8B6B:
C - - - - - 0x038B7B 0E:8B6B: C9 E0     CMP #$E0
C - - - - - 0x038B7D 0E:8B6D: 90 02     BCC bra_8B71
C - - - - - 0x038B7F 0E:8B6F: B0 1B     BCS bra_8B8C    ; jmp
bra_8B71:
C - - - - - 0x038B81 0E:8B71: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x038B84 0E:8B74: C9 05     CMP #$05
C - - - - - 0x038B86 0E:8B76: B0 11     BCS bra_8B89
- - - - - - 0x038B88 0E:8B78: AD 37 05  LDA ram_plr_spd_Y_lo
- - - - - - 0x038B8B 0E:8B7B: 18        CLC
- - - - - - 0x038B8C 0E:8B7C: 69 40     ADC #< $0040
- - - - - - 0x038B8E 0E:8B7E: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x038B91 0E:8B81: AD 20 05  LDA ram_plr_spd_Y_hi
- - - - - - 0x038B94 0E:8B84: 69 00     ADC #> $0040
- - - - - - 0x038B96 0E:8B86: 8D 20 05  STA ram_plr_spd_Y_hi
bra_8B89:
C - - - - - 0x038B99 0E:8B89: 4C 12 87  JMP loc_8712
bra_8B8C:
C - - - - - 0x038B9C 0E:8B8C: E6 BF     INC ram_00BF
C - - - - - 0x038B9E 0E:8B8E: 60        RTS
bra_8B8F:
C - - - - - 0x038B9F 0E:8B8F: 88        DEY
C - - - - - 0x038BA0 0E:8B90: D0 15     BNE bra_8BA7
C - - - - - 0x038BA2 0E:8B92: A9 00     LDA #$00
C - - - - - 0x038BA4 0E:8B94: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x038BA7 0E:8B97: A9 80     LDA #$80
C - - - - - 0x038BA9 0E:8B99: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x038BAC 0E:8B9C: A9 4E     LDA #con_music_death
C - - - - - 0x038BAE 0E:8B9E: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x038BB1 0E:8BA1: 20 CE E5  JSR sub_0x03E5DE
C - - - - - 0x038BB4 0E:8BA4: E6 BF     INC ram_00BF
C - - - - - 0x038BB6 0E:8BA6: 60        RTS
loc_8BA7:
bra_8BA7:
C D 0 - - - 0x038BB7 0E:8BA7: CE D4 05  DEC ram_05C1_obj + $13
C - - - - - 0x038BBA 0E:8BAA: F0 01     BEQ bra_8BAD
C - - - - - 0x038BBC 0E:8BAC: 60        RTS
bra_8BAD:
C - - - - - 0x038BBD 0E:8BAD: A9 05     LDA #con_0018_death
C - - - - - 0x038BBF 0E:8BAF: 85 18     STA ram_main_script
C - - - - - 0x038BC1 0E:8BB1: A9 00     LDA #$00
C - - - - - 0x038BC3 0E:8BB3: 85 19     STA ram_0019_subscript
C - - - - - 0x038BC5 0E:8BB5: AD 65 05  LDA ram_plr_state
C - - - - - 0x038BC8 0E:8BB8: 09 80     ORA #con_plr_state_80
C - - - - - 0x038BCA 0E:8BBA: 8D 65 05  STA ram_plr_state
C - - - - - 0x038BCD 0E:8BBD: 4C CA E5  JMP loc_0x03E5DA



sub_8BC0:
C - - - - - 0x038BD0 0E:8BC0: A5 BF     LDA ram_00BF
C - - - - - 0x038BD2 0E:8BC2: F0 01     BEQ bra_8BC5
bra_8BC4_RTS:
C - - - - - 0x038BD4 0E:8BC4: 60        RTS
bra_8BC5:
C - - - - - 0x038BD5 0E:8BC5: A5 2A     LDA ram_002A_script
C - - - - - 0x038BD7 0E:8BC7: C9 10     CMP #con_002A_10
C - - - - - 0x038BD9 0E:8BC9: F0 F9     BEQ bra_8BC4_RTS
C - - - - - 0x038BDB 0E:8BCB: A5 7D     LDA ram_007D
C - - - - - 0x038BDD 0E:8BCD: 29 F0     AND #$F0
C - - - - - 0x038BDF 0E:8BCF: C9 50     CMP #$50
C - - - - - 0x038BE1 0E:8BD1: F0 29     BEQ bra_8BFC
C - - - - - 0x038BE3 0E:8BD3: C9 60     CMP #$60
C - - - - - 0x038BE5 0E:8BD5: F0 47     BEQ bra_8C1E
C - - - - - 0x038BE7 0E:8BD7: C9 70     CMP #$70
C - - - - - 0x038BE9 0E:8BD9: F0 21     BEQ bra_8BFC
loc_8BDB:
bra_8BDB:
C D 0 - - - 0x038BEB 0E:8BDB: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038BEE 0E:8BDE: A4 68     LDY ram_0068
C - - - - - 0x038BF0 0E:8BE0: 10 12     BPL bra_8BF4
C - - - - - 0x038BF2 0E:8BE2: C9 E0     CMP #$E0
C - - - - - 0x038BF4 0E:8BE4: B0 0B     BCS bra_8BF1
C - - - - - 0x038BF6 0E:8BE6: C0 83     CPY #$83
C - - - - - 0x038BF8 0E:8BE8: D0 11     BNE bra_8BFB_RTS
C - - - - - 0x038BFA 0E:8BEA: C9 18     CMP #$18
C - - - - - 0x038BFC 0E:8BEC: B0 0D     BCS bra_8BFB_RTS
C - - - - - 0x038BFE 0E:8BEE: 4C 98 83  JMP loc_8398_kill_player
bra_8BF1:
C - - - - - 0x038C01 0E:8BF1: 4C F9 8C  JMP loc_8CF9
bra_8BF4:
C - - - - - 0x038C04 0E:8BF4: C9 E0     CMP #$E0
C - - - - - 0x038C06 0E:8BF6: 90 03     BCC bra_8BFB_RTS
C - - - - - 0x038C08 0E:8BF8: 4C F9 8C  JMP loc_8CF9
bra_8BFB_RTS:
C - - - - - 0x038C0B 0E:8BFB: 60        RTS
bra_8BFC:
C - - - - - 0x038C0C 0E:8BFC: A5 7D     LDA ram_007D
C - - - - - 0x038C0E 0E:8BFE: 29 0F     AND #$0F
C - - - - - 0x038C10 0E:8C00: A8        TAY
C - - - - - 0x038C11 0E:8C01: B9 56 8C  LDA tbl_8C56,Y
C - - - - - 0x038C14 0E:8C04: CD 1C 04  CMP ram_plr_pos_Y_hi
C - - - - - 0x038C17 0E:8C07: B0 F2     BCS bra_8BFB_RTS
bra_8C09:
C - - - - - 0x038C19 0E:8C09: A5 82     LDA ram_copy_plr_id
C - - - - - 0x038C1B 0E:8C0B: C9 08     CMP #$08
C - - - - - 0x038C1D 0E:8C0D: D0 09     BNE bra_8C18
- - - - - - 0x038C1F 0E:8C0F: A5 1A     LDA ram_frm_cnt
- - - - - - 0x038C21 0E:8C11: 29 03     AND #$03
- - - - - - 0x038C23 0E:8C13: D0 C6     BNE bra_8BDB
- - - - - - 0x038C25 0E:8C15: 4C 58 8C  JMP loc_8C58
bra_8C18:
C - - - - - 0x038C28 0E:8C18: 20 58 8C  JSR sub_8C58
C - - - - - 0x038C2B 0E:8C1B: 4C F9 8C  JMP loc_8CF9
bra_8C1E:
C - - - - - 0x038C2E 0E:8C1E: A5 7D     LDA ram_007D
C - - - - - 0x038C30 0E:8C20: 29 0F     AND #$0F
C - - - - - 0x038C32 0E:8C22: D0 B7     BNE bra_8BDB
C - - - - - 0x038C34 0E:8C24: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038C37 0E:8C27: C9 C0     CMP #$C0
C - - - - - 0x038C39 0E:8C29: 90 D0     BCC bra_8BFB_RTS
C - - - - - 0x038C3B 0E:8C2B: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x038C3E 0E:8C2E: 18        CLC
C - - - - - 0x038C3F 0E:8C2F: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x038C41 0E:8C31: 85 0A     STA ram_000A_temp
C - - - - - 0x038C43 0E:8C33: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x038C45 0E:8C35: 69 00     ADC #$00
C - - - - - 0x038C47 0E:8C37: 85 0B     STA ram_000B_temp
C - - - - - 0x038C49 0E:8C39: C9 01     CMP #$01
C - - - - - 0x038C4B 0E:8C3B: 90 CC     BCC bra_8C09
C - - - - - 0x038C4D 0E:8C3D: D0 09     BNE bra_8C48
C - - - - - 0x038C4F 0E:8C3F: A5 0A     LDA ram_000A_temp
C - - - - - 0x038C51 0E:8C41: C9 20     CMP #$20
C - - - - - 0x038C53 0E:8C43: 90 C4     BCC bra_8C09
C - - - - - 0x038C55 0E:8C45: 4C DB 8B  JMP loc_8BDB
bra_8C48:
C - - - - - 0x038C58 0E:8C48: C9 02     CMP #$02
C - - - - - 0x038C5A 0E:8C4A: 90 8F     BCC bra_8BDB
C - - - - - 0x038C5C 0E:8C4C: D0 BB     BNE bra_8C09
C - - - - - 0x038C5E 0E:8C4E: A5 0A     LDA ram_000A_temp
C - - - - - 0x038C60 0E:8C50: C9 C0     CMP #$C0
C - - - - - 0x038C62 0E:8C52: 90 87     BCC bra_8BDB
- - - - - - 0x038C64 0E:8C54: B0 B3     BCS bra_8C09    ; jmp



tbl_8C56:
- D 0 - - - 0x038C66 0E:8C56: B0        .byte $B0   ; 00 
- D 0 - - - 0x038C67 0E:8C57: D0        .byte $D0   ; 01 



sub_8C58:
loc_8C58:
sub_0x038C68:
C - - - - - 0x038C68 0E:8C58: A9 23     LDA #con_sound_water_splash
C - - - - - 0x038C6A 0E:8C5A: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x038C6D 0E:8C5D: A5 1A     LDA ram_frm_cnt
C - - - - - 0x038C6F 0E:8C5F: 29 03     AND #$03
C - - - - - 0x038C71 0E:8C61: 85 00     STA ram_0000_temp
; * 03
C - - - - - 0x038C73 0E:8C63: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x038C74 0E:8C64: 18        CLC
C - - - - - 0x038C75 0E:8C65: 65 00     ADC ram_0000_temp
C - - - - - 0x038C77 0E:8C67: A8        TAY
C - - - - - 0x038C78 0E:8C68: 85 0F     STA ram_000F_temp
C - - - - - 0x038C7A 0E:8C6A: A2 14     LDX #$14
bra_8C6C_loop:
C - - - - - 0x038C7C 0E:8C6C: A4 0F     LDY ram_000F_temp
C - - - - - 0x038C7E 0E:8C6E: B9 BD 8C  LDA tbl_8CBD_offset,Y
; * 06
C - - - - - 0x038C81 0E:8C71: 0A        ASL
C - - - - - 0x038C82 0E:8C72: 85 00     STA ram_0000_temp
C - - - - - 0x038C84 0E:8C74: 0A        ASL
C - - - - - 0x038C85 0E:8C75: 18        CLC
C - - - - - 0x038C86 0E:8C76: 65 00     ADC ram_0000_temp
C - - - - - 0x038C88 0E:8C78: A8        TAY
C - - - - - 0x038C89 0E:8C79: B9 C9 8C  LDA tbl_8CC9,Y
C - - - - - 0x038C8C 0E:8C7C: 18        CLC
C - - - - - 0x038C8D 0E:8C7D: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x038C90 0E:8C80: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x038C93 0E:8C83: B9 CA 8C  LDA tbl_8CC9 + $01,Y
C - - - - - 0x038C96 0E:8C86: 18        CLC
C - - - - - 0x038C97 0E:8C87: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x038C9A 0E:8C8A: 38        SEC
C - - - - - 0x038C9B 0E:8C8B: E9 0C     SBC #$0C
C - - - - - 0x038C9D 0E:8C8D: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x038CA0 0E:8C90: B9 CB 8C  LDA tbl_8CC9 + $02,Y
C - - - - - 0x038CA3 0E:8C93: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x038CA6 0E:8C96: B9 CC 8C  LDA tbl_8CC9 + $03,Y
C - - - - - 0x038CA9 0E:8C99: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x038CAC 0E:8C9C: B9 CD 8C  LDA tbl_8CC9 + $04,Y
C - - - - - 0x038CAF 0E:8C9F: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x038CB2 0E:8CA2: B9 CE 8C  LDA tbl_8CC9 + $05,Y
C - - - - - 0x038CB5 0E:8CA5: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x038CB8 0E:8CA8: A9 0C     LDA #$0C    ; drowning bubbles
C - - - - - 0x038CBA 0E:8CAA: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x038CBD 0E:8CAD: A9 00     LDA #$00
C - - - - - 0x038CBF 0E:8CAF: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x038CC2 0E:8CB2: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x038CC5 0E:8CB5: E6 0F     INC ram_000F_temp
C - - - - - 0x038CC7 0E:8CB7: E8        INX
C - - - - - 0x038CC8 0E:8CB8: E0 17     CPX #$17
C - - - - - 0x038CCA 0E:8CBA: D0 B0     BNE bra_8C6C_loop
C - - - - - 0x038CCC 0E:8CBC: 60        RTS



tbl_8CBD_offset:
; 00 
- D 0 - - - 0x038CCD 0E:8CBD: 00        .byte $00   ; 
- D 0 - - - 0x038CCE 0E:8CBE: 03        .byte $03   ; 
- D 0 - - - 0x038CCF 0E:8CBF: 04        .byte $04   ; 
; 01 
- D 0 - - - 0x038CD0 0E:8CC0: 05        .byte $05   ; 
- D 0 - - - 0x038CD1 0E:8CC1: 01        .byte $01   ; 
- D 0 - - - 0x038CD2 0E:8CC2: 02        .byte $02   ; 
; 02 
- D 0 - - - 0x038CD3 0E:8CC3: 02        .byte $02   ; 
- D 0 - - - 0x038CD4 0E:8CC4: 05        .byte $05   ; 
- D 0 - - - 0x038CD5 0E:8CC5: 01        .byte $01   ; 
; 03 
- - - - - - 0x038CD6 0E:8CC6: 06        .byte $06   ; 
- - - - - - 0x038CD7 0E:8CC7: 03        .byte $03   ; 
- - - - - - 0x038CD8 0E:8CC8: 04        .byte $04   ; 



tbl_8CC9:
; 00 
- D 0 - - - 0x038CD9 0E:8CC9: 08        .byte $08   ; pos_X_hi
- D 0 - - - 0x038CDA 0E:8CCA: 02        .byte $02   ; pos_Y_hi
- D 0 - - - 0x038CDB 0E:8CCB: 01 00     .dbyt $0100 ; spd_X
- D 0 - - - 0x038CDD 0E:8CCD: FD C0     .dbyt $FDC0 ; spd_Y
; 01 
- D 0 - - - 0x038CDF 0E:8CCF: 04        .byte $04   ; pos_X_hi
- D 0 - - - 0x038CE0 0E:8CD0: 00        .byte $00   ; pos_Y_hi
- D 0 - - - 0x038CE1 0E:8CD1: 00 80     .dbyt $0080 ; spd_X
- D 0 - - - 0x038CE3 0E:8CD3: FE 80     .dbyt $FE80 ; spd_Y
; 02 
- D 0 - - - 0x038CE5 0E:8CD5: F8        .byte $F8   ; pos_X_hi
- D 0 - - - 0x038CE6 0E:8CD6: FC        .byte $FC   ; pos_Y_hi
- D 0 - - - 0x038CE7 0E:8CD7: FF 40     .dbyt $FF40 ; spd_X
- D 0 - - - 0x038CE9 0E:8CD9: FF 40     .dbyt $FF40 ; spd_Y
; 03 
- D 0 - - - 0x038CEB 0E:8CDB: 08        .byte $08   ; pos_X_hi
- D 0 - - - 0x038CEC 0E:8CDC: 02        .byte $02   ; pos_Y_hi
- D 0 - - - 0x038CED 0E:8CDD: FE 20     .dbyt $FE20 ; spd_X
- D 0 - - - 0x038CEF 0E:8CDF: FE C0     .dbyt $FEC0 ; spd_Y
; 04 
- D 0 - - - 0x038CF1 0E:8CE1: FC        .byte $FC   ; pos_X_hi
- D 0 - - - 0x038CF2 0E:8CE2: 00        .byte $00   ; pos_Y_hi
- D 0 - - - 0x038CF3 0E:8CE3: 01 80     .dbyt $0180 ; spd_X
- D 0 - - - 0x038CF5 0E:8CE5: FF 80     .dbyt $FF80 ; spd_Y
; 05 
- D 0 - - - 0x038CF7 0E:8CE7: FD        .byte $FD   ; pos_X_hi
- D 0 - - - 0x038CF8 0E:8CE8: 02        .byte $02   ; pos_Y_hi
- D 0 - - - 0x038CF9 0E:8CE9: FF 00     .dbyt $FF00 ; spd_X
- D 0 - - - 0x038CFB 0E:8CEB: FD 80     .dbyt $FD80 ; spd_Y
; 06 
- - - - - - 0x038CFD 0E:8CED: 02        .byte $02   ; pos_X_hi
- - - - - - 0x038CFE 0E:8CEE: FE        .byte $FE   ; pos_Y_hi
- - - - - - 0x038CFF 0E:8CEF: 01 40     .dbyt $0140 ; spd_X
- - - - - - 0x038D01 0E:8CF1: FE C0     .dbyt $FEC0 ; spd_Y



; 07 bzk garbage, no such index 0x038CCD
- - - - - - 0x038D03 0E:8CF3: FF        .byte $FF   ; 
- - - - - - 0x038D04 0E:8CF4: 02        .byte $02   ; 
- - - - - - 0x038D05 0E:8CF5: 02        .byte $02   ; 
- - - - - - 0x038D06 0E:8CF6: 00        .byte $00   ; 
- - - - - - 0x038D07 0E:8CF7: FF        .byte $FF   ; 
- - - - - - 0x038D08 0E:8CF8: 50        .byte $50   ; 



loc_8CF9:
C D 0 - - - 0x038D09 0E:8CF9: 20 C4 BD  JSR sub_BDC4
C - - - - - 0x038D0C 0E:8CFC: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x038D0F 0E:8CFF: 10 08     BPL bra_8D09
- - - - - - 0x038D11 0E:8D01: A9 00     LDA #$00
- - - - - - 0x038D13 0E:8D03: 8D 20 05  STA ram_plr_spd_Y_hi
- - - - - - 0x038D16 0E:8D06: 8D 37 05  STA ram_plr_spd_Y_lo
bra_8D09:
C - - - - - 0x038D19 0E:8D09: A9 80     LDA #$80
C - - - - - 0x038D1B 0E:8D0B: 85 BF     STA ram_00BF
C - - - - - 0x038D1D 0E:8D0D: A9 2C     LDA #con_plr_state_2C
C - - - - - 0x038D1F 0E:8D0F: 8D 65 05  STA ram_plr_state
C - - - - - 0x038D22 0E:8D12: 60        RTS



loc_8D13:
C D 0 - - - 0x038D23 0E:8D13: A5 2A     LDA ram_002A_script
C - - - - - 0x038D25 0E:8D15: C9 1B     CMP #con_002A_1B
C - - - - - 0x038D27 0E:8D17: F0 70     BEQ bra_8D89
C - - - - - 0x038D29 0E:8D19: A5 7D     LDA ram_007D
C - - - - - 0x038D2B 0E:8D1B: C9 30     CMP #$30
C - - - - - 0x038D2D 0E:8D1D: F0 18     BEQ bra_8D37
C - - - - - 0x038D2F 0E:8D1F: C9 31     CMP #$31
C - - - - - 0x038D31 0E:8D21: F0 14     BEQ bra_8D37
C - - - - - 0x038D33 0E:8D23: C9 41     CMP #$41
C - - - - - 0x038D35 0E:8D25: F0 02     BEQ bra_8D29
C - - - - - 0x038D37 0E:8D27: D0 65     BNE bra_8D8E_RTS    ; jmp
bra_8D29:
C - - - - - 0x038D39 0E:8D29: A5 1A     LDA ram_frm_cnt
C - - - - - 0x038D3B 0E:8D2B: 29 0F     AND #$0F
C - - - - - 0x038D3D 0E:8D2D: D0 5F     BNE bra_8D8E_RTS
C - - - - - 0x038D3F 0E:8D2F: A9 20     LDA #con_sound_20
C - - - - - 0x038D41 0E:8D31: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x038D44 0E:8D34: 4C 8E 8D  JMP loc_8D8E_RTS
bra_8D37:
C - - - - - 0x038D47 0E:8D37: A5 1A     LDA ram_frm_cnt
C - - - - - 0x038D49 0E:8D39: 29 0F     AND #$0F
C - - - - - 0x038D4B 0E:8D3B: D0 3E     BNE bra_8D7B
C - - - - - 0x038D4D 0E:8D3D: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x038D4F 0E:8D3F: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x038D52 0E:8D42: 85 00     STA ram_0000_t04F
C - - - - - 0x038D54 0E:8D44: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x038D56 0E:8D46: 69 00     ADC #$00
C - - - - - 0x038D58 0E:8D48: 85 01     STA ram_0000_t04F + $01
C - - - - - 0x038D5A 0E:8D4A: A5 7D     LDA ram_007D
C - - - - - 0x038D5C 0E:8D4C: 29 0F     AND #$0F
C - - - - - 0x038D5E 0E:8D4E: 0A        ASL
C - - - - - 0x038D5F 0E:8D4F: A8        TAY
C - - - - - 0x038D60 0E:8D50: B9 77 8E  LDA tbl_8E76 + $01,Y
C - - - - - 0x038D63 0E:8D53: 38        SEC
C - - - - - 0x038D64 0E:8D54: E5 00     SBC ram_0000_t04F
C - - - - - 0x038D66 0E:8D56: AA        TAX
C - - - - - 0x038D67 0E:8D57: B9 76 8E  LDA tbl_8E76,Y
C - - - - - 0x038D6A 0E:8D5A: E5 01     SBC ram_0000_t04F + $01
C - - - - - 0x038D6C 0E:8D5C: B0 0A     BCS bra_8D68
C - - - - - 0x038D6E 0E:8D5E: C9 FF     CMP #$FF
C - - - - - 0x038D70 0E:8D60: D0 14     BNE bra_8D76
C - - - - - 0x038D72 0E:8D62: E0 80     CPX #$80
C - - - - - 0x038D74 0E:8D64: 90 10     BCC bra_8D76
C - - - - - 0x038D76 0E:8D66: B0 06     BCS bra_8D6E    ; jmp
bra_8D68:
C - - - - - 0x038D78 0E:8D68: D0 0C     BNE bra_8D76
C - - - - - 0x038D7A 0E:8D6A: E0 80     CPX #$80
C - - - - - 0x038D7C 0E:8D6C: B0 08     BCS bra_8D76
bra_8D6E:
C - - - - - 0x038D7E 0E:8D6E: A9 25     LDA #con_sound_25
C - - - - - 0x038D80 0E:8D70: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x038D83 0E:8D73: 4C 7B 8D  JMP loc_8D7B
bra_8D76:
C - - - - - 0x038D86 0E:8D76: A9 20     LDA #con_sound_20
C - - - - - 0x038D88 0E:8D78: 20 5F E2  JSR sub_0x03E26F_play_sound
loc_8D7B:
bra_8D7B:
C D 0 - - - 0x038D8B 0E:8D7B: A5 BF     LDA ram_00BF
C - - - - - 0x038D8D 0E:8D7D: 30 0A     BMI bra_8D89
C - - - - - 0x038D8F 0E:8D7F: A5 8B     LDA ram_008B
C - - - - - 0x038D91 0E:8D81: C9 08     CMP #$08
C - - - - - 0x038D93 0E:8D83: F0 0A     BEQ bra_8D8F
C - - - - - 0x038D95 0E:8D85: C9 09     CMP #$09
C - - - - - 0x038D97 0E:8D87: F0 06     BEQ bra_8D8F
bra_8D89:
C - - - - - 0x038D99 0E:8D89: A9 00     LDA #$00
C - - - - - 0x038D9B 0E:8D8B: 8D 1A 04  STA ram_obj_anim_id + $1A
loc_8D8E_RTS:   ; bzk optimize
bra_8D8E_RTS:
C D 0 - - - 0x038D9E 0E:8D8E: 60        RTS
bra_8D8F:
C - - - - - 0x038D9F 0E:8D8F: AD 4E 05  LDA ram_plr_id
C - - - - - 0x038DA2 0E:8D92: 0A        ASL
C - - - - - 0x038DA3 0E:8D93: A8        TAY
C - - - - - 0x038DA4 0E:8D94: B9 E3 8D  LDA tbl_8DE3,Y
C - - - - - 0x038DA7 0E:8D97: 85 08     STA ram_0008_t00B_data
C - - - - - 0x038DA9 0E:8D99: B9 E4 8D  LDA tbl_8DE3 + $01,Y
C - - - - - 0x038DAC 0E:8D9C: 85 09     STA ram_0008_t00B_data + $01
C - - - - - 0x038DAE 0E:8D9E: A0 00     LDY #$00
bra_8DA0_loop:
C - - - - - 0x038DB0 0E:8DA0: B1 08     LDA (ram_0008_t00B_data),Y
C - - - - - 0x038DB2 0E:8DA2: C9 FF     CMP #$FF
C - - - - - 0x038DB4 0E:8DA4: F0 E8     BEQ bra_8D8E_RTS
C - - - - - 0x038DB6 0E:8DA6: C8        INY
C - - - - - 0x038DB7 0E:8DA7: CD 00 04  CMP ram_plr_anim_id
C - - - - - 0x038DBA 0E:8DAA: F0 04     BEQ bra_8DB0_match
C - - - - - 0x038DBC 0E:8DAC: C8        INY
C - - - - - 0x038DBD 0E:8DAD: C8        INY
C - - - - - 0x038DBE 0E:8DAE: D0 F0     BNE bra_8DA0_loop    ; jmp
bra_8DB0_match:
C - - - - - 0x038DC0 0E:8DB0: AD A8 04  LDA ram_plr_facing
C - - - - - 0x038DC3 0E:8DB3: F0 25     BEQ bra_8DDA_facing_right
; if facing left
C - - - - - 0x038DC5 0E:8DB5: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x038DC8 0E:8DB8: 18        CLC
C - - - - - 0x038DC9 0E:8DB9: 71 08     ADC (ram_0008_t00B_data),Y
loc_8DBB:
C D 0 - - - 0x038DCB 0E:8DBB: 8D 52 04  STA ram_obj_pos_X_hi + $1A
C - - - - - 0x038DCE 0E:8DBE: C8        INY
C - - - - - 0x038DCF 0E:8DBF: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x038DD2 0E:8DC2: 18        CLC
C - - - - - 0x038DD3 0E:8DC3: 71 08     ADC (ram_0008_t00B_data),Y
C - - - - - 0x038DD5 0E:8DC5: C9 38     CMP #$38
C - - - - - 0x038DD7 0E:8DC7: 90 C0     BCC bra_8D89
C - - - - - 0x038DD9 0E:8DC9: 8D 36 04  STA ram_obj_pos_Y_hi + $1A
C - - - - - 0x038DDC 0E:8DCC: A9 62     LDA #$62
C - - - - - 0x038DDE 0E:8DCE: 8D 1A 04  STA ram_obj_anim_id + $1A
C - - - - - 0x038DE1 0E:8DD1: A9 00     LDA #$00
C - - - - - 0x038DE3 0E:8DD3: 8D 6E 04  STA ram_0454_obj + $1A
C - - - - - 0x038DE6 0E:8DD6: 8D 8A 04  STA ram_obj_flags + $1A ; con_obj_flag_00
C - - - - - 0x038DE9 0E:8DD9: 60        RTS
bra_8DDA_facing_right:
C - - - - - 0x038DEA 0E:8DDA: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x038DED 0E:8DDD: 38        SEC
C - - - - - 0x038DEE 0E:8DDE: F1 08     SBC (ram_0008_t00B_data),Y
C - - - - - 0x038DF0 0E:8DE0: 4C BB 8D  JMP loc_8DBB



tbl_8DE3:
- D 0 - - - 0x038DF3 0E:8DE3: EB 8D     .word off_8DEB_00_Trevor
- D 0 - - - 0x038DF5 0E:8DE5: 0D 8E     .word off_8E0D_01_Sypha
- - - - - - 0x038DF7 0E:8DE7: 35 8E     .word off_8E35_02_Grant
- - - - - - 0x038DF9 0E:8DE9: 4B 8E     .word off_8E4B_03_Alucard



off_8DEB_00_Trevor:
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 0 - I - 0x038DFB 0E:8DEB: 02        .byte $02, $FB, $F1   ; 
- D 0 - I - 0x038DFE 0E:8DEE: 04        .byte $04, $FE, $F0   ; 
- D 0 - I - 0x038E01 0E:8DF1: 06        .byte $06, $FC, $F1   ; 
- D 0 - I - 0x038E04 0E:8DF4: 0E        .byte $0E, $FD, $F8   ; 
- D 0 - I - 0x038E07 0E:8DF7: 16        .byte $16, $FD, $F5   ; 
- D 0 - I - 0x038E0A 0E:8DFA: 18        .byte $18, $03, $F1   ; 
- D 0 - I - 0x038E0D 0E:8DFD: 1A        .byte $1A, $FE, $F0   ; 
- D 0 - I - 0x038E10 0E:8E00: 1C        .byte $1C, $FB, $F2   ; 
- D 0 - I - 0x038E13 0E:8E03: 1E        .byte $1E, $FD, $F9   ; 
- D 0 - I - 0x038E16 0E:8E06: 20        .byte $20, $FE, $F8   ; 
- D 0 - I - 0x038E19 0E:8E09: 22        .byte $22, $FB, $FA   ; 
- D 0 - I - 0x038E1C 0E:8E0C: FF        .byte $FF   ; end token



off_8E0D_01_Sypha:
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 0 - I - 0x038E1D 0E:8E0D: 02        .byte $02, $FB, $F1   ; 
- D 0 - I - 0x038E20 0E:8E10: 04        .byte $04, $FE, $F0   ; 
- D 0 - I - 0x038E23 0E:8E13: 06        .byte $06, $FC, $F1   ; 
- D 0 - I - 0x038E26 0E:8E16: 0E        .byte $0E, $FD, $F8   ; 
- D 0 - I - 0x038E29 0E:8E19: 16        .byte $16, $FD, $F5   ; 
- D 0 - I - 0x038E2C 0E:8E1C: 18        .byte $18, $FD, $F5   ; 
- D 0 - I - 0x038E2F 0E:8E1F: 1A        .byte $1A, $FD, $F5   ; 
- D 0 - I - 0x038E32 0E:8E22: 1C        .byte $1C, $FD, $F5   ; 
- D 0 - I - 0x038E35 0E:8E25: 1E        .byte $1E, $FD, $F5   ; 
- D 0 - I - 0x038E38 0E:8E28: 2C        .byte $2C, $FD, $F5   ; 
- D 0 - I - 0x038E3B 0E:8E2B: 2E        .byte $2E, $FD, $F5   ; 
- D 0 - I - 0x038E3E 0E:8E2E: 34        .byte $34, $FD, $F5   ; 
- D 0 - I - 0x038E41 0E:8E31: 36        .byte $36, $FD, $F5   ; 
- D 0 - I - 0x038E44 0E:8E34: FF        .byte $FF   ; end token



off_8E35_02_Grant:
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- - - - - - 0x038E45 0E:8E35: 02        .byte $02, $FB, $F5   ; 
- - - - - - 0x038E48 0E:8E38: 04        .byte $04, $FE, $F4   ; 
- - - - - - 0x038E4B 0E:8E3B: 06        .byte $06, $FB, $F5   ; 
- - - - - - 0x038E4E 0E:8E3E: 0E        .byte $0E, $FE, $00   ; 
- - - - - - 0x038E51 0E:8E41: 16        .byte $16, $FB, $F5   ; 
- - - - - - 0x038E54 0E:8E44: 24        .byte $24, $FE, $F0   ; 
- - - - - - 0x038E57 0E:8E47: 26        .byte $26, $F8, $F4   ; 
- - - - - - 0x038E5A 0E:8E4A: FF        .byte $FF   ; end token



off_8E4B_03_Alucard:
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- - - - - - 0x038E5B 0E:8E4B: 02        .byte $02, $00, $E9   ; 
- - - - - - 0x038E5E 0E:8E4E: 04        .byte $04, $00, $E8   ; 
- - - - - - 0x038E61 0E:8E51: 06        .byte $06, $00, $E9   ; 
- - - - - - 0x038E64 0E:8E54: 0E        .byte $0E, $FD, $F8   ; 
- - - - - - 0x038E67 0E:8E57: 16        .byte $16, $FD, $F5   ; 
- - - - - - 0x038E6A 0E:8E5A: 18        .byte $18, $00, $E9   ; 
- - - - - - 0x038E6D 0E:8E5D: 1A        .byte $1A, $00, $E9   ; 
- - - - - - 0x038E70 0E:8E60: 1C        .byte $1C, $00, $E9   ; 
- - - - - - 0x038E73 0E:8E63: 1E        .byte $1E, $FD, $F8   ; 
- - - - - - 0x038E76 0E:8E66: 20        .byte $20, $FD, $F8   ; 
- - - - - - 0x038E79 0E:8E69: 22        .byte $22, $FD, $F8   ; 
- - - - - - 0x038E7C 0E:8E6C: 24        .byte $24, $00, $FD   ; 
- - - - - - 0x038E7F 0E:8E6F: 26        .byte $26, $00, $FF   ; 
- - - - - - 0x038E82 0E:8E72: 28        .byte $28, $00, $F8   ; 
- - - - - - 0x038E85 0E:8E75: FF        .byte $FF   ; end token



tbl_8E76:
- D 0 - - - 0x038E86 0E:8E76: 02 80     .dbyt $0280 ; 00 
- D 0 - - - 0x038E88 0E:8E78: 01 80     .dbyt $0180 ; 01 



loc_8E7A_set_speed_X_and_clear_speed_Y:
C D 0 - - - 0x038E8A 0E:8E7A: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x038E8D 0E:8E7D: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x038E90 0E:8E80: 20 BC 8A  JSR sub_8ABC_clear_speed_Y
C - - - - - 0x038E93 0E:8E83: 38        SEC
C - - - - - 0x038E94 0E:8E84: 60        RTS



sub_8E85:
C - - - - - 0x038E95 0E:8E85: A5 2A     LDA ram_002A_script
C - - - - - 0x038E97 0E:8E87: C9 1B     CMP #con_002A_1B
C - - - - - 0x038E99 0E:8E89: F0 2A     BEQ bra_8EB5
C - - - - - 0x038E9B 0E:8E8B: A5 8B     LDA ram_008B
C - - - - - 0x038E9D 0E:8E8D: C9 01     CMP #$01
C - - - - - 0x038E9F 0E:8E8F: F0 29     BEQ bra_8EBA
C - - - - - 0x038EA1 0E:8E91: C9 0C     CMP #$0C
C - - - - - 0x038EA3 0E:8E93: B0 20     BCS bra_8EB5
C - - - - - 0x038EA5 0E:8E95: 38        SEC
C - - - - - 0x038EA6 0E:8E96: E9 05     SBC #$05
C - - - - - 0x038EA8 0E:8E98: 90 1B     BCC bra_8EB5
C - - - - - 0x038EAA 0E:8E9A: D0 03     BNE bra_8E9F
C - - - - - 0x038EAC 0E:8E9C: 4C 95 8F  JMP loc_8F95
bra_8E9F:
C - - - - - 0x038EAF 0E:8E9F: A8        TAY
C - - - - - 0x038EB0 0E:8EA0: 88        DEY
C - - - - - 0x038EB1 0E:8EA1: D0 03     BNE bra_8EA6
C - - - - - 0x038EB3 0E:8EA3: 4C 23 90  JMP loc_9023_01
bra_8EA6:
C - - - - - 0x038EB6 0E:8EA6: 88        DEY
C - - - - - 0x038EB7 0E:8EA7: F0 35     BEQ bra_8EDE_02
C - - - - - 0x038EB9 0E:8EA9: 88        DEY
C - - - - - 0x038EBA 0E:8EAA: F0 39     BEQ bra_8EE5_03
C - - - - - 0x038EBC 0E:8EAC: 88        DEY
C - - - - - 0x038EBD 0E:8EAD: F0 3D     BEQ bra_8EEC_04
C - - - - - 0x038EBF 0E:8EAF: 88        DEY
C - - - - - 0x038EC0 0E:8EB0: F0 41     BEQ bra_8EF3_05
C - - - - - 0x038EC2 0E:8EB2: 88        DEY
C - - - - - 0x038EC3 0E:8EB3: F0 45     BEQ bra_8EFA_06
bra_8EB5:
C - - - - - 0x038EC5 0E:8EB5: 20 BC 8A  JSR sub_8ABC_clear_speed_Y
C - - - - - 0x038EC8 0E:8EB8: 18        CLC
C - - - - - 0x038EC9 0E:8EB9: 60        RTS
bra_8EBA:
C - - - - - 0x038ECA 0E:8EBA: A6 91     LDX ram_0091
C - - - - - 0x038ECC 0E:8EBC: 86 B8     STX ram_00B8
C - - - - - 0x038ECE 0E:8EBE: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x038ED1 0E:8EC1: C9 79     CMP #$79
C - - - - - 0x038ED3 0E:8EC3: 90 12     BCC bra_8ED7
C - - - - - 0x038ED5 0E:8EC5: 20 C2 91  JSR sub_91C2
C - - - - - 0x038ED8 0E:8EC8: BD 09 05  LDA ram_obj_spd_X_lo,X
C - - - - - 0x038EDB 0E:8ECB: 18        CLC
C - - - - - 0x038EDC 0E:8ECC: 69 00     ADC #$00
C - - - - - 0x038EDE 0E:8ECE: A8        TAY
C - - - - - 0x038EDF 0E:8ECF: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x038EE2 0E:8ED2: 69 01     ADC #$01
C - - - - - 0x038EE4 0E:8ED4: 4C 57 8F  JMP loc_8F57
bra_8ED7:
C - - - - - 0x038EE7 0E:8ED7: A0 00     LDY #$00
C - - - - - 0x038EE9 0E:8ED9: A9 01     LDA #$01
C - - - - - 0x038EEB 0E:8EDB: 4C 57 8F  JMP loc_8F57
bra_8EDE_02:
C - - - - - 0x038EEE 0E:8EDE: A9 00     LDA #> $0080
C - - - - - 0x038EF0 0E:8EE0: A0 80     LDY #< $0080
C - - - - - 0x038EF2 0E:8EE2: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8EE5_03:
C - - - - - 0x038EF5 0E:8EE5: A9 00     LDA #> $0040
C - - - - - 0x038EF7 0E:8EE7: A0 40     LDY #< $0040
C - - - - - 0x038EF9 0E:8EE9: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8EEC_04:
C - - - - - 0x038EFC 0E:8EEC: A9 01     LDA #> $01C0
C - - - - - 0x038EFE 0E:8EEE: A0 C0     LDY #< $01C0
C - - - - - 0x038F00 0E:8EF0: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8EF3_05:
C - - - - - 0x038F03 0E:8EF3: A9 00     LDA #> $0080
C - - - - - 0x038F05 0E:8EF5: A0 80     LDY #< $0080
C - - - - - 0x038F07 0E:8EF7: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8EFA_06:
C - - - - - 0x038F0A 0E:8EFA: A9 01     LDA #> $0180
C - - - - - 0x038F0C 0E:8EFC: A0 80     LDY #< $0180
C - - - - - 0x038F0E 0E:8EFE: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y



sub_8F01:
C - - - - - 0x038F11 0E:8F01: A5 2A     LDA ram_002A_script
C - - - - - 0x038F13 0E:8F03: C9 1B     CMP #con_002A_1B
C - - - - - 0x038F15 0E:8F05: F0 2A     BEQ bra_8F31
C - - - - - 0x038F17 0E:8F07: A5 8B     LDA ram_008B
C - - - - - 0x038F19 0E:8F09: C9 01     CMP #$01
C - - - - - 0x038F1B 0E:8F0B: F0 29     BEQ bra_8F36
C - - - - - 0x038F1D 0E:8F0D: C9 0C     CMP #$0C
C - - - - - 0x038F1F 0E:8F0F: B0 20     BCS bra_8F31
C - - - - - 0x038F21 0E:8F11: 38        SEC
C - - - - - 0x038F22 0E:8F12: E9 05     SBC #$05
C - - - - - 0x038F24 0E:8F14: 90 1B     BCC bra_8F31
C - - - - - 0x038F26 0E:8F16: D0 03     BNE bra_8F1B
C - - - - - 0x038F28 0E:8F18: 4C CF 8F  JMP loc_8FCF
bra_8F1B:
C - - - - - 0x038F2B 0E:8F1B: A8        TAY
C - - - - - 0x038F2C 0E:8F1C: 88        DEY
C - - - - - 0x038F2D 0E:8F1D: D0 03     BNE bra_8F22
C - - - - - 0x038F2F 0E:8F1F: 4C B9 90  JMP loc_90B9_01
bra_8F22:
C - - - - - 0x038F32 0E:8F22: 88        DEY
C - - - - - 0x038F33 0E:8F23: F0 4D     BEQ bra_8F72_02
C - - - - - 0x038F35 0E:8F25: 88        DEY
C - - - - - 0x038F36 0E:8F26: F0 51     BEQ bra_8F79_03
C - - - - - 0x038F38 0E:8F28: 88        DEY
C - - - - - 0x038F39 0E:8F29: F0 55     BEQ bra_8F80_04
C - - - - - 0x038F3B 0E:8F2B: 88        DEY
C - - - - - 0x038F3C 0E:8F2C: F0 59     BEQ bra_8F87_05
C - - - - - 0x038F3E 0E:8F2E: 88        DEY
C - - - - - 0x038F3F 0E:8F2F: F0 5D     BEQ bra_8F8E_06
bra_8F31:
C - - - - - 0x038F41 0E:8F31: 20 BC 8A  JSR sub_8ABC_clear_speed_Y
C - - - - - 0x038F44 0E:8F34: 18        CLC
C - - - - - 0x038F45 0E:8F35: 60        RTS
bra_8F36:
C - - - - - 0x038F46 0E:8F36: A6 91     LDX ram_0091
C - - - - - 0x038F48 0E:8F38: 86 B8     STX ram_00B8
C - - - - - 0x038F4A 0E:8F3A: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x038F4D 0E:8F3D: C9 79     CMP #$79
C - - - - - 0x038F4F 0E:8F3F: 90 12     BCC bra_8F53
C - - - - - 0x038F51 0E:8F41: 20 C2 91  JSR sub_91C2
C - - - - - 0x038F54 0E:8F44: BD 09 05  LDA ram_obj_spd_X_lo,X
C - - - - - 0x038F57 0E:8F47: 18        CLC
C - - - - - 0x038F58 0E:8F48: 69 00     ADC #< $FF00
C - - - - - 0x038F5A 0E:8F4A: A8        TAY
C - - - - - 0x038F5B 0E:8F4B: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x038F5E 0E:8F4E: 69 FF     ADC #> $FF00
C - - - - - 0x038F60 0E:8F50: 4C 57 8F  JMP loc_8F57
bra_8F53:
C - - - - - 0x038F63 0E:8F53: A9 FF     LDA #> $FF00
C - - - - - 0x038F65 0E:8F55: A0 00     LDY #< $FF00
loc_8F57:
C D 0 - - - 0x038F67 0E:8F57: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x038F6A 0E:8F5A: 98        TYA
C - - - - - 0x038F6B 0E:8F5B: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x038F6E 0E:8F5E: 20 53 91  JSR sub_9153
C - - - - - 0x038F71 0E:8F61: B0 09     BCS bra_8F6C
C - - - - - 0x038F73 0E:8F63: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x038F76 0E:8F66: AC 09 05  LDY ram_plr_spd_X_lo
; bzk optimize, JMP to 0x038E90 (0x038ACC)
C - - - - - 0x038F79 0E:8F69: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8F6C:
C - - - - - 0x038F7C 0E:8F6C: A9 00     LDA #$00    ; > 0000
C - - - - - 0x038F7E 0E:8F6E: A8        TAY ; 00    ; < 0000
C - - - - - 0x038F7F 0E:8F6F: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8F72_02:
C - - - - - 0x038F82 0E:8F72: A9 FF     LDA #> $FF80
C - - - - - 0x038F84 0E:8F74: A0 80     LDY #< $FF80
C - - - - - 0x038F86 0E:8F76: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8F79_03:
C - - - - - 0x038F89 0E:8F79: A9 FE     LDA #> $FE40
C - - - - - 0x038F8B 0E:8F7B: A0 40     LDY #< $FE40
C - - - - - 0x038F8D 0E:8F7D: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8F80_04:
C - - - - - 0x038F90 0E:8F80: A9 FF     LDA #> $FFC0
C - - - - - 0x038F92 0E:8F82: A0 C0     LDY #< $FFC0
C - - - - - 0x038F94 0E:8F84: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8F87_05:
C - - - - - 0x038F97 0E:8F87: A9 FE     LDA #> $FE80
C - - - - - 0x038F99 0E:8F89: A0 80     LDY #< $FE80
C - - - - - 0x038F9B 0E:8F8B: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y
bra_8F8E_06:
C - - - - - 0x038F9E 0E:8F8E: A9 FF     LDA #> $FF80
C - - - - - 0x038FA0 0E:8F90: A0 80     LDY #< $FF80
C - - - - - 0x038FA2 0E:8F92: 4C 7A 8E  JMP loc_8E7A_set_speed_X_and_clear_speed_Y



loc_8F95:
C D 0 - - - 0x038FA5 0E:8F95: A5 90     LDA ram_0090
C - - - - - 0x038FA7 0E:8F97: 29 7F     AND #$7F
C - - - - - 0x038FA9 0E:8F99: 85 00     STA ram_0000_t045
C - - - - - 0x038FAB 0E:8F9B: A8        TAY
C - - - - - 0x038FAC 0E:8F9C: A5 90     LDA ram_0090
C - - - - - 0x038FAE 0E:8F9E: 10 0D     BPL bra_8FAD
C - - - - - 0x038FB0 0E:8FA0: B9 81 FD  LDA tbl_0x03FD91_speed_lo,Y
C - - - - - 0x038FB3 0E:8FA3: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x038FB6 0E:8FA6: A9 00     LDA #$00
C - - - - - 0x038FB8 0E:8FA8: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x038FBB 0E:8FAB: F0 0E     BEQ bra_8FBB    ; jmp
bra_8FAD:
C - - - - - 0x038FBD 0E:8FAD: A9 00     LDA #$00
C - - - - - 0x038FBF 0E:8FAF: 38        SEC
C - - - - - 0x038FC0 0E:8FB0: F9 81 FD  SBC tbl_0x03FD91_speed_lo,Y
C - - - - - 0x038FC3 0E:8FB3: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x038FC6 0E:8FB6: A9 FF     LDA #$FF
C - - - - - 0x038FC8 0E:8FB8: 8D 20 05  STA ram_plr_spd_Y_hi
bra_8FBB:
C - - - - - 0x038FCB 0E:8FBB: A9 40     LDA #$40
C - - - - - 0x038FCD 0E:8FBD: 38        SEC
C - - - - - 0x038FCE 0E:8FBE: E5 00     SBC ram_0000_t045
C - - - - - 0x038FD0 0E:8FC0: A8        TAY
C - - - - - 0x038FD1 0E:8FC1: B9 81 FD  LDA tbl_0x03FD91_speed_lo,Y
C - - - - - 0x038FD4 0E:8FC4: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x038FD7 0E:8FC7: A9 00     LDA #$00
C - - - - - 0x038FD9 0E:8FC9: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x038FDC 0E:8FCC: 4C 09 90  JMP loc_9009



loc_8FCF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 - - - 0x038FDF 0E:8FCF: A5 90     LDA ram_0090
C - - - - - 0x038FE1 0E:8FD1: 29 7F     AND #$7F
C - - - - - 0x038FE3 0E:8FD3: 85 00     STA ram_0000_t044
C - - - - - 0x038FE5 0E:8FD5: A8        TAY
C - - - - - 0x038FE6 0E:8FD6: A5 90     LDA ram_0090
C - - - - - 0x038FE8 0E:8FD8: 30 0D     BMI bra_8FE7
C - - - - - 0x038FEA 0E:8FDA: B9 81 FD  LDA tbl_0x03FD91_speed_lo,Y
C - - - - - 0x038FED 0E:8FDD: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x038FF0 0E:8FE0: A9 00     LDA #$00
C - - - - - 0x038FF2 0E:8FE2: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x038FF5 0E:8FE5: F0 0E     BEQ bra_8FF5    ; jmp
bra_8FE7:
C - - - - - 0x038FF7 0E:8FE7: A9 00     LDA #$00
C - - - - - 0x038FF9 0E:8FE9: 38        SEC
C - - - - - 0x038FFA 0E:8FEA: F9 81 FD  SBC tbl_0x03FD91_speed_lo,Y
C - - - - - 0x038FFD 0E:8FED: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039000 0E:8FF0: A9 FF     LDA #$FF
C - - - - - 0x039002 0E:8FF2: 8D 20 05  STA ram_plr_spd_Y_hi
bra_8FF5:
C - - - - - 0x039005 0E:8FF5: A9 40     LDA #$40
C - - - - - 0x039007 0E:8FF7: 38        SEC
C - - - - - 0x039008 0E:8FF8: E5 00     SBC ram_0000_t044
C - - - - - 0x03900A 0E:8FFA: A8        TAY
C - - - - - 0x03900B 0E:8FFB: A9 00     LDA #$00
C - - - - - 0x03900D 0E:8FFD: 38        SEC
C - - - - - 0x03900E 0E:8FFE: F9 81 FD  SBC tbl_0x03FD91_speed_lo,Y
C - - - - - 0x039011 0E:9001: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039014 0E:9004: A9 FF     LDA #$FF
C - - - - - 0x039016 0E:9006: 8D F2 04  STA ram_plr_spd_X_hi
loc_9009:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 - - - 0x039019 0E:9009: 20 77 80  JSR sub_8077
C - - - - - 0x03901C 0E:900C: 20 53 91  JSR sub_9153
C - - - - - 0x03901F 0E:900F: B0 02     BCS bra_9013
C - - - - - 0x039021 0E:9011: 38        SEC
C - - - - - 0x039022 0E:9012: 60        RTS
bra_9013:
- - - - - - 0x039023 0E:9013: A9 00     LDA #$00
- - - - - - 0x039025 0E:9015: 8D F2 04  STA ram_plr_spd_X_hi
- - - - - - 0x039028 0E:9018: 8D 09 05  STA ram_plr_spd_X_lo
- - - - - - 0x03902B 0E:901B: 8D 20 05  STA ram_plr_spd_Y_hi
- - - - - - 0x03902E 0E:901E: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x039031 0E:9021: 38        SEC
- - - - - - 0x039032 0E:9022: 60        RTS



loc_9023_01:
C D 0 - - - 0x039033 0E:9023: A6 D4     LDX ram_00D4
C - - - - - 0x039035 0E:9025: 86 D2     STX ram_00D2
C - - - - - 0x039037 0E:9027: A5 95     LDA ram_0095_speed_config
C - - - - - 0x039039 0E:9029: 0A        ASL
C - - - - - 0x03903A 0E:902A: A8        TAY
C - - - - - 0x03903B 0E:902B: B9 E0 87  LDA tbl_87E0_speed,Y
C - - - - - 0x03903E 0E:902E: 85 08     STA ram_0008_t00A_data
C - - - - - 0x039040 0E:9030: B9 E1 87  LDA tbl_87E0_speed + $01,Y
C - - - - - 0x039043 0E:9033: 85 09     STA ram_0008_t00A_data + $01
C - - - - - 0x039045 0E:9035: A4 93     LDY ram_0093_speed_config
C - - - - - 0x039047 0E:9037: 88        DEY
C - - - - - 0x039048 0E:9038: F0 37     BEQ bra_9071_01
C - - - - - 0x03904A 0E:903A: 88        DEY
C - - - - - 0x03904B 0E:903B: F0 4C     BEQ bra_9089_02
; 00
bra_903D:
C - - - - - 0x03904D 0E:903D: A5 90     LDA ram_0090
C - - - - - 0x03904F 0E:903F: 29 7F     AND #$7F
C - - - - - 0x039051 0E:9041: 85 00     STA ram_0000_t043
C - - - - - 0x039053 0E:9043: A8        TAY
C - - - - - 0x039054 0E:9044: B1 08     LDA (ram_0008_t00A_data),Y
C - - - - - 0x039056 0E:9046: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039059 0E:9049: A9 00     LDA #$00
C - - - - - 0x03905B 0E:904B: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03905E 0E:904E: A9 40     LDA #$40
C - - - - - 0x039060 0E:9050: 38        SEC
C - - - - - 0x039061 0E:9051: E5 00     SBC ram_0000_t043
C - - - - - 0x039063 0E:9053: A8        TAY
C - - - - - 0x039064 0E:9054: A5 90     LDA ram_0090
C - - - - - 0x039066 0E:9056: 30 09     BMI bra_9061
C - - - - - 0x039068 0E:9058: B1 08     LDA (ram_0008_t00A_data),Y
C - - - - - 0x03906A 0E:905A: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03906D 0E:905D: A9 00     LDA #$00
C - - - - - 0x03906F 0E:905F: F0 0A     BEQ bra_906B    ; jmp
bra_9061:
C - - - - - 0x039071 0E:9061: A9 00     LDA #$00
C - - - - - 0x039073 0E:9063: 38        SEC
C - - - - - 0x039074 0E:9064: F1 08     SBC (ram_0008_t00A_data),Y
C - - - - - 0x039076 0E:9066: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039079 0E:9069: A9 FF     LDA #$FF
bra_906B:
C - - - - - 0x03907B 0E:906B: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03907E 0E:906E: 4C 3E 91  JMP loc_913E
bra_9071_01:
C - - - - - 0x039081 0E:9071: A6 94     LDX ram_0094_object_index
C - - - - - 0x039083 0E:9073: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x039086 0E:9076: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039089 0E:9079: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x03908C 0E:907C: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03908F 0E:907F: A9 00     LDA #$00
C - - - - - 0x039091 0E:9081: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039094 0E:9084: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039097 0E:9087: 38        SEC
C - - - - - 0x039098 0E:9088: 60        RTS
bra_9089_02:
C - - - - - 0x039099 0E:9089: A5 90     LDA ram_0090
C - - - - - 0x03909B 0E:908B: 10 B0     BPL bra_903D
C - - - - - 0x03909D 0E:908D: A6 94     LDX ram_0094_object_index
C - - - - - 0x03909F 0E:908F: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x0390A2 0E:9092: 10 14     BPL bra_90A8
C - - - - - 0x0390A4 0E:9094: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x0390A7 0E:9097: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x0390AA 0E:909A: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x0390AD 0E:909D: A9 00     LDA #$00
C - - - - - 0x0390AF 0E:909F: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0390B2 0E:90A2: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x0390B5 0E:90A5: 4C 3E 91  JMP loc_913E
bra_90A8:
C - - - - - 0x0390B8 0E:90A8: A9 00     LDA #$00
C - - - - - 0x0390BA 0E:90AA: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0390BD 0E:90AD: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x0390C0 0E:90B0: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x0390C3 0E:90B3: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x0390C6 0E:90B6: 4C 3E 91  JMP loc_913E



loc_90B9_01:
C D 0 - - - 0x0390C9 0E:90B9: A6 D4     LDX ram_00D4
C - - - - - 0x0390CB 0E:90BB: 86 D2     STX ram_00D2
C - - - - - 0x0390CD 0E:90BD: A5 95     LDA ram_0095_speed_config
C - - - - - 0x0390CF 0E:90BF: 0A        ASL
C - - - - - 0x0390D0 0E:90C0: A8        TAY
C - - - - - 0x0390D1 0E:90C1: B9 E0 87  LDA tbl_87E0_speed,Y
C - - - - - 0x0390D4 0E:90C4: 85 08     STA ram_0008_t009_data
C - - - - - 0x0390D6 0E:90C6: B9 E1 87  LDA tbl_87E0_speed + $01,Y
C - - - - - 0x0390D9 0E:90C9: 85 09     STA ram_0008_t009_data + $01
C - - - - - 0x0390DB 0E:90CB: A4 93     LDY ram_0093_speed_config
C - - - - - 0x0390DD 0E:90CD: 88        DEY
C - - - - - 0x0390DE 0E:90CE: F0 3A     BEQ bra_910A_01
C - - - - - 0x0390E0 0E:90D0: 88        DEY
C - - - - - 0x0390E1 0E:90D1: F0 4F     BEQ bra_9122_02
; 00
bra_90D3:
C - - - - - 0x0390E3 0E:90D3: A5 90     LDA ram_0090
C - - - - - 0x0390E5 0E:90D5: 29 7F     AND #$7F
C - - - - - 0x0390E7 0E:90D7: 85 00     STA ram_0000_t042
C - - - - - 0x0390E9 0E:90D9: A8        TAY
C - - - - - 0x0390EA 0E:90DA: A9 00     LDA #$00
C - - - - - 0x0390EC 0E:90DC: 38        SEC
C - - - - - 0x0390ED 0E:90DD: F1 08     SBC (ram_0008_t009_data),Y
C - - - - - 0x0390EF 0E:90DF: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0390F2 0E:90E2: A9 FF     LDA #$FF
C - - - - - 0x0390F4 0E:90E4: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x0390F7 0E:90E7: A9 40     LDA #$40
C - - - - - 0x0390F9 0E:90E9: 38        SEC
C - - - - - 0x0390FA 0E:90EA: E5 00     SBC ram_0000_t042
C - - - - - 0x0390FC 0E:90EC: A8        TAY
C - - - - - 0x0390FD 0E:90ED: A5 90     LDA ram_0090
C - - - - - 0x0390FF 0E:90EF: 30 0C     BMI bra_90FD
C - - - - - 0x039101 0E:90F1: A9 00     LDA #$00
C - - - - - 0x039103 0E:90F3: 38        SEC
C - - - - - 0x039104 0E:90F4: F1 08     SBC (ram_0008_t009_data),Y
C - - - - - 0x039106 0E:90F6: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039109 0E:90F9: A9 FF     LDA #$FF
C - - - - - 0x03910B 0E:90FB: D0 07     BNE bra_9104    ; jmp
bra_90FD:
C - - - - - 0x03910D 0E:90FD: B1 08     LDA (ram_0008_t009_data),Y
C - - - - - 0x03910F 0E:90FF: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039112 0E:9102: A9 00     LDA #$00
bra_9104:
C - - - - - 0x039114 0E:9104: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x039117 0E:9107: 4C 3E 91  JMP loc_913E
bra_910A_01:
C - - - - - 0x03911A 0E:910A: A6 94     LDX ram_0094_object_index
C - - - - - 0x03911C 0E:910C: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x03911F 0E:910F: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039122 0E:9112: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x039125 0E:9115: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x039128 0E:9118: A9 00     LDA #$00
C - - - - - 0x03912A 0E:911A: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03912D 0E:911D: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039130 0E:9120: 38        SEC
C - - - - - 0x039131 0E:9121: 60        RTS
bra_9122_02:
C - - - - - 0x039132 0E:9122: A5 90     LDA ram_0090
C - - - - - 0x039134 0E:9124: 30 AD     BMI bra_90D3
C - - - - - 0x039136 0E:9126: A6 94     LDX ram_0094_object_index
C - - - - - 0x039138 0E:9128: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x03913B 0E:912B: 30 16     BMI bra_9143_clear_speed
C - - - - - 0x03913D 0E:912D: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039140 0E:9130: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x039143 0E:9133: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x039146 0E:9136: A9 00     LDA #$00
C - - - - - 0x039148 0E:9138: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03914B 0E:913B: 8D 37 05  STA ram_plr_spd_Y_lo
loc_913E:
bra_913E:
C D 0 - - - 0x03914E 0E:913E: 20 01 80  JSR sub_8001
C - - - - - 0x039151 0E:9141: 38        SEC
C - - - - - 0x039152 0E:9142: 60        RTS
bra_9143_clear_speed:
C - - - - - 0x039153 0E:9143: A9 00     LDA #$00
C - - - - - 0x039155 0E:9145: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039158 0E:9148: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03915B 0E:914B: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03915E 0E:914E: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x039161 0E:9151: F0 EB     BEQ bra_913E    ; jmp



sub_9153:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x039163 0E:9153: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x039166 0E:9156: 30 04     BMI bra_915C
C - - - - - 0x039168 0E:9158: A9 08     LDA #$08
C - - - - - 0x03916A 0E:915A: D0 02     BNE bra_915E    ; jmp
bra_915C:
C - - - - - 0x03916C 0E:915C: A9 F8     LDA #$F8
bra_915E:
C - - - - - 0x03916E 0E:915E: 85 00     STA ram_0000_t041
C - - - - - 0x039170 0E:9160: A2 00     LDX #$00
C - - - - - 0x039172 0E:9162: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039175 0E:9165: F0 02     BEQ bra_9169
bra_9167:
C - - - - - 0x039177 0E:9167: 38        SEC
C - - - - - 0x039178 0E:9168: 60        RTS
bra_9169:
C - - - - - 0x039179 0E:9169: A4 82     LDY ram_copy_plr_id
bra_916B_loop:
C - - - - - 0x03917B 0E:916B: 84 01     STY ram_0001_t003
C - - - - - 0x03917D 0E:916D: B9 86 91  LDA tbl_9186,Y
C - - - - - 0x039180 0E:9170: AA        TAX
C - - - - - 0x039181 0E:9171: A5 00     LDA ram_0000_t041
C - - - - - 0x039183 0E:9173: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039186 0E:9176: D0 EF     BNE bra_9167
C - - - - - 0x039188 0E:9178: A5 01     LDA ram_0001_t003
C - - - - - 0x03918A 0E:917A: 18        CLC
C - - - - - 0x03918B 0E:917B: 69 04     ADC #$04
C - - - - - 0x03918D 0E:917D: C9 08     CMP #$08
C - - - - - 0x03918F 0E:917F: B0 03     BCS bra_9184
C - - - - - 0x039191 0E:9181: A8        TAY
C - - - - - 0x039192 0E:9182: D0 E7     BNE bra_916B_loop    ; jmp
bra_9184:
C - - - - - 0x039194 0E:9184: 18        CLC
C - - - - - 0x039195 0E:9185: 60        RTS



tbl_9186:
; 
- D 0 - - - 0x039196 0E:9186: F0        .byte $F0   ; con_player_Trevor
- D 0 - - - 0x039197 0E:9187: F0        .byte $F0   ; con_player_Sypha
- D 0 - - - 0x039198 0E:9188: F4        .byte $F4   ; con_player_Grant
- D 0 - - - 0x039199 0E:9189: F0        .byte $F0   ; con_player_Alucard
; 
- D 0 - - - 0x03919A 0E:918A: 0F        .byte $0F   ; con_player_Trevor
- D 0 - - - 0x03919B 0E:918B: 0F        .byte $0F   ; con_player_Sypha
- D 0 - - - 0x03919C 0E:918C: 0B        .byte $0B   ; con_player_Grant
- D 0 - - - 0x03919D 0E:918D: 0F        .byte $0F   ; con_player_Alucard



sub_918E:
loc_918E:
C D 0 - - - 0x03919E 0E:918E: A5 8B     LDA ram_008B
C - - - - - 0x0391A0 0E:9190: D0 01     BNE bra_9193
; 00
bra_9192_RTS:
C - - - - - 0x0391A2 0E:9192: 60        RTS
bra_9193:
C - - - - - 0x0391A3 0E:9193: C9 01     CMP #$01
C - - - - - 0x0391A5 0E:9195: F0 62     BEQ bra_91F9_01
C - - - - - 0x0391A7 0E:9197: 38        SEC
C - - - - - 0x0391A8 0E:9198: E9 05     SBC #$05
C - - - - - 0x0391AA 0E:919A: 90 F6     BCC bra_9192_RTS    ; if was 02-04 (only 02 was logged)
C - - - - - 0x0391AC 0E:919C: D0 03     BNE bra_91A1    ; if was 06+
C - - - - - 0x0391AE 0E:919E: 4C 14 93  JMP loc_9314_05
bra_91A1:
C - - - - - 0x0391B1 0E:91A1: A8        TAY
C - - - - - 0x0391B2 0E:91A2: 88        DEY
C - - - - - 0x0391B3 0E:91A3: D0 03     BNE bra_91A8
C - - - - - 0x0391B5 0E:91A5: 4C 40 93  JMP loc_9340_06
bra_91A8:
C - - - - - 0x0391B8 0E:91A8: 88        DEY
C - - - - - 0x0391B9 0E:91A9: 88        DEY
C - - - - - 0x0391BA 0E:91AA: D0 03     BNE bra_91AF
C - - - - - 0x0391BC 0E:91AC: 4C 42 92  JMP loc_9242_07
bra_91AF:
C - - - - - 0x0391BF 0E:91AF: 88        DEY
C - - - - - 0x0391C0 0E:91B0: D0 03     BNE bra_91B5
C - - - - - 0x0391C2 0E:91B2: 4C 88 92  JMP loc_9288_08
bra_91B5:
C - - - - - 0x0391C5 0E:91B5: 88        DEY
C - - - - - 0x0391C6 0E:91B6: D0 03     BNE bra_91BB
C - - - - - 0x0391C8 0E:91B8: 4C BB 92  JMP loc_92BB_09
bra_91BB:
C - - - - - 0x0391CB 0E:91BB: 88        DEY
C - - - - - 0x0391CC 0E:91BC: D0 03     BNE bra_91C1_RTS
C - - - - - 0x0391CE 0E:91BE: 4C EE 92  JMP loc_92EE_0A
; if others (0B and 0E were logged)
bra_91C1_RTS:
C - - - - - 0x0391D1 0E:91C1: 60        RTS



sub_91C2:
C - - - - - 0x0391D2 0E:91C2: C9 6E     CMP #$6E
C - - - - - 0x0391D4 0E:91C4: F0 2C     BEQ bra_91F2
C - - - - - 0x0391D6 0E:91C6: C9 74     CMP #$74
C - - - - - 0x0391D8 0E:91C8: F0 28     BEQ bra_91F2
C - - - - - 0x0391DA 0E:91CA: C9 76     CMP #$76
C - - - - - 0x0391DC 0E:91CC: F0 07     BEQ bra_91D5
C - - - - - 0x0391DE 0E:91CE: C9 78     CMP #$78
C - - - - - 0x0391E0 0E:91D0: F0 03     BEQ bra_91D5
bra_91D2:
C - - - - - 0x0391E2 0E:91D2: A6 91     LDX ram_0091
C - - - - - 0x0391E4 0E:91D4: 60        RTS
bra_91D5:
- - - - - - 0x0391E5 0E:91D5: BD 20 05  LDA ram_obj_spd_Y_hi,X
- - - - - - 0x0391E8 0E:91D8: 10 F8     BPL bra_91D2
bra_91DA:
- - - - - - 0x0391EA 0E:91DA: A9 FB     LDA #$FB
- - - - - - 0x0391EC 0E:91DC: A2 F8     LDX #$F8
- - - - - - 0x0391EE 0E:91DE: 20 DD FC  JSR sub_0x03FCED
- - - - - - 0x0391F1 0E:91E1: D0 09     BNE bra_91EC
- - - - - - 0x0391F3 0E:91E3: A9 05     LDA #$05
- - - - - - 0x0391F5 0E:91E5: A2 F8     LDX #$F8
- - - - - - 0x0391F7 0E:91E7: 20 DD FC  JSR sub_0x03FCED
- - - - - - 0x0391FA 0E:91EA: F0 E6     BEQ bra_91D2
bra_91EC:
- - - - - - 0x0391FC 0E:91EC: A9 10     LDA #$10
- - - - - - 0x0391FE 0E:91EE: 85 AF     STA ram_00AF
- - - - - - 0x039200 0E:91F0: D0 E0     BNE bra_91D2    ; jmp
bra_91F2:
- - - - - - 0x039202 0E:91F2: BD 1D 06  LDA ram_061D_obj,X
- - - - - - 0x039205 0E:91F5: F0 DB     BEQ bra_91D2
- - - - - - 0x039207 0E:91F7: D0 E1     BNE bra_91DA    ; jmp



bra_91F9_01:
C - - - - - 0x039209 0E:91F9: A6 91     LDX ram_0091
C - - - - - 0x03920B 0E:91FB: 86 B8     STX ram_00B8
C - - - - - 0x03920D 0E:91FD: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x039210 0E:9200: C9 79     CMP #$79
C - - - - - 0x039212 0E:9202: 90 33     BCC bra_9237
C - - - - - 0x039214 0E:9204: 20 C2 91  JSR sub_91C2
C - - - - - 0x039217 0E:9207: A5 82     LDA ram_copy_plr_id
C - - - - - 0x039219 0E:9209: C9 04     CMP #$04
C - - - - - 0x03921B 0E:920B: B0 19     BCS bra_9226
C - - - - - 0x03921D 0E:920D: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x039220 0E:9210: 10 0B     BPL bra_921D
C - - - - - 0x039222 0E:9212: A9 F8     LDA #$F8
C - - - - - 0x039224 0E:9214: A2 F0     LDX #$F0
C - - - - - 0x039226 0E:9216: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039229 0E:9219: D0 1C     BNE bra_9237
C - - - - - 0x03922B 0E:921B: F0 09     BEQ bra_9226    ; jmp
bra_921D:
C - - - - - 0x03922D 0E:921D: A9 08     LDA #$08
C - - - - - 0x03922F 0E:921F: A2 F0     LDX #$F0
C - - - - - 0x039231 0E:9221: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039234 0E:9224: D0 11     BNE bra_9237
bra_9226:
C - - - - - 0x039236 0E:9226: A6 91     LDX ram_0091
C - - - - - 0x039238 0E:9228: BD 09 05  LDA ram_obj_spd_X_lo,X
C - - - - - 0x03923B 0E:922B: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03923E 0E:922E: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x039241 0E:9231: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039244 0E:9234: 4C 3A 87  JMP loc_873A
bra_9237:
C - - - - - 0x039247 0E:9237: A9 00     LDA #$00
C - - - - - 0x039249 0E:9239: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03924C 0E:923C: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03924F 0E:923F: 4C 3A 87  JMP loc_873A



loc_9242_07:
C D 0 - - - 0x039252 0E:9242: A5 2A     LDA ram_002A_script
C - - - - - 0x039254 0E:9244: C9 1B     CMP #con_002A_1B
C - - - - - 0x039256 0E:9246: F0 12     BEQ bra_925A_RTS
C - - - - - 0x039258 0E:9248: A2 01     LDX #$01
C - - - - - 0x03925A 0E:924A: A9 F8     LDA #$F8
C - - - - - 0x03925C 0E:924C: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03925F 0E:924F: D0 09     BNE bra_925A_RTS
C - - - - - 0x039261 0E:9251: A2 F0     LDX #$F0
C - - - - - 0x039263 0E:9253: A9 F8     LDA #$F8
C - - - - - 0x039265 0E:9255: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039268 0E:9258: F0 01     BEQ bra_925B
bra_925A_RTS:
C - - - - - 0x03926A 0E:925A: 60        RTS
bra_925B:
C - - - - - 0x03926B 0E:925B: A5 82     LDA ram_copy_plr_id
C - - - - - 0x03926D 0E:925D: 29 0C     AND #$0C
C - - - - - 0x03926F 0E:925F: D0 0D     BNE bra_926E
C - - - - - 0x039271 0E:9261: A9 FF     LDA #> $FF40
C - - - - - 0x039273 0E:9263: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039276 0E:9266: A9 40     LDA #< $FF40
C - - - - - 0x039278 0E:9268: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03927B 0E:926B: 4C 3A 87  JMP loc_873A
bra_926E:
C - - - - - 0x03927E 0E:926E: A9 FF     LDA #> $FFA0
C - - - - - 0x039280 0E:9270: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039283 0E:9273: A9 A0     LDA #< $FFA0
C - - - - - 0x039285 0E:9275: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039288 0E:9278: 4C 3A 87  JMP loc_873A
bra_927B:
C - - - - - 0x03928B 0E:927B: A9 00     LDA #> $0060
C - - - - - 0x03928D 0E:927D: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039290 0E:9280: A9 60     LDA #< $0060
C - - - - - 0x039292 0E:9282: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039295 0E:9285: 4C 3A 87  JMP loc_873A



loc_9288_08:
C D 0 - - - 0x039298 0E:9288: A2 01     LDX #$01
C - - - - - 0x03929A 0E:928A: A9 08     LDA #$08
C - - - - - 0x03929C 0E:928C: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03929F 0E:928F: D0 09     BNE bra_929A_RTS
C - - - - - 0x0392A1 0E:9291: A2 F0     LDX #$F0
C - - - - - 0x0392A3 0E:9293: A9 08     LDA #$08
C - - - - - 0x0392A5 0E:9295: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0392A8 0E:9298: F0 01     BEQ bra_929B
bra_929A_RTS:
- - - - - - 0x0392AA 0E:929A: 60        RTS
bra_929B:
C - - - - - 0x0392AB 0E:929B: A5 82     LDA ram_copy_plr_id
C - - - - - 0x0392AD 0E:929D: 29 0C     AND #$0C
C - - - - - 0x0392AF 0E:929F: D0 DA     BNE bra_927B
C - - - - - 0x0392B1 0E:92A1: A9 00     LDA #> $00C0
C - - - - - 0x0392B3 0E:92A3: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x0392B6 0E:92A6: A9 C0     LDA #< $00C0
C - - - - - 0x0392B8 0E:92A8: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0392BB 0E:92AB: 4C 3A 87  JMP loc_873A
bra_92AE:
C - - - - - 0x0392BE 0E:92AE: A9 FF     LDA #> $FFC0
C - - - - - 0x0392C0 0E:92B0: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x0392C3 0E:92B3: A9 C0     LDA #< $FFC0
C - - - - - 0x0392C5 0E:92B5: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0392C8 0E:92B8: 4C 3A 87  JMP loc_873A



loc_92BB_09:
C D 0 - - - 0x0392CB 0E:92BB: A2 01     LDX #$01
C - - - - - 0x0392CD 0E:92BD: A9 F8     LDA #$F8
C - - - - - 0x0392CF 0E:92BF: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0392D2 0E:92C2: D0 09     BNE bra_92CD_RTS
C - - - - - 0x0392D4 0E:92C4: A2 F0     LDX #$F0
C - - - - - 0x0392D6 0E:92C6: A9 F8     LDA #$F8
C - - - - - 0x0392D8 0E:92C8: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0392DB 0E:92CB: F0 01     BEQ bra_92CE
bra_92CD_RTS:
- - - - - - 0x0392DD 0E:92CD: 60        RTS
bra_92CE:
C - - - - - 0x0392DE 0E:92CE: A5 82     LDA ram_copy_plr_id
C - - - - - 0x0392E0 0E:92D0: 29 0C     AND #$0C
C - - - - - 0x0392E2 0E:92D2: D0 DA     BNE bra_92AE
C - - - - - 0x0392E4 0E:92D4: A9 FF     LDA #> $FF80
C - - - - - 0x0392E6 0E:92D6: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x0392E9 0E:92D9: A9 80     LDA #< $FF80
C - - - - - 0x0392EB 0E:92DB: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0392EE 0E:92DE: 4C 3A 87  JMP loc_873A
bra_92E1:
C - - - - - 0x0392F1 0E:92E1: A9 00     LDA #> $0040
C - - - - - 0x0392F3 0E:92E3: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x0392F6 0E:92E6: A9 40     LDA #< $0040
C - - - - - 0x0392F8 0E:92E8: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x0392FB 0E:92EB: 4C 3A 87  JMP loc_873A



loc_92EE_0A:
C D 0 - - - 0x0392FE 0E:92EE: A2 01     LDX #$01
C - - - - - 0x039300 0E:92F0: A9 08     LDA #$08
C - - - - - 0x039302 0E:92F2: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039305 0E:92F5: D0 09     BNE bra_9300_RTS
C - - - - - 0x039307 0E:92F7: A2 F0     LDX #$F0
C - - - - - 0x039309 0E:92F9: A9 08     LDA #$08
C - - - - - 0x03930B 0E:92FB: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03930E 0E:92FE: F0 01     BEQ bra_9301
bra_9300_RTS:
- - - - - - 0x039310 0E:9300: 60        RTS
bra_9301:
C - - - - - 0x039311 0E:9301: A5 82     LDA ram_copy_plr_id
C - - - - - 0x039313 0E:9303: 29 0C     AND #$0C
C - - - - - 0x039315 0E:9305: D0 DA     BNE bra_92E1
C - - - - - 0x039317 0E:9307: A9 00     LDA #> $0080
C - - - - - 0x039319 0E:9309: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03931C 0E:930C: A9 80     LDA #< $0080
C - - - - - 0x03931E 0E:930E: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039321 0E:9311: 4C 3A 87  JMP loc_873A



loc_9314_05:
C D 0 - - - 0x039324 0E:9314: A9 00     LDA #$00
C - - - - - 0x039326 0E:9316: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039329 0E:9319: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03932C 0E:931C: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03932F 0E:931F: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x039332 0E:9322: 20 77 80  JSR sub_8077
C - - - - - 0x039335 0E:9325: 20 53 91  JSR sub_9153
C - - - - - 0x039338 0E:9328: B0 06     BCS bra_9330
bra_932A:
C - - - - - 0x03933A 0E:932A: 20 3A 87  JSR sub_873A
C - - - - - 0x03933D 0E:932D: 4C 12 87  JMP loc_8712
bra_9330:
- - - - - - 0x039340 0E:9330: A9 00     LDA #$00
- - - - - - 0x039342 0E:9332: 8D 09 05  STA ram_plr_spd_X_lo
- - - - - - 0x039345 0E:9335: 8D F2 04  STA ram_plr_spd_X_hi
- - - - - - 0x039348 0E:9338: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x03934B 0E:933B: 8D 20 05  STA ram_plr_spd_Y_hi
- - - - - - 0x03934E 0E:933E: F0 EA     BEQ bra_932A    ; jmp



loc_9340_06:
C D 0 - - - 0x039350 0E:9340: A6 D4     LDX ram_00D4
C - - - - - 0x039352 0E:9342: 86 D2     STX ram_00D2
C - - - - - 0x039354 0E:9344: A4 93     LDY ram_0093_speed_config
C - - - - - 0x039356 0E:9346: 88        DEY
C - - - - - 0x039357 0E:9347: F0 1A     BEQ bra_9363_01
C - - - - - 0x039359 0E:9349: 88        DEY
C - - - - - 0x03935A 0E:934A: F0 17     BEQ bra_9363_02
; 00
C - - - - - 0x03935C 0E:934C: A9 00     LDA #$00
C - - - - - 0x03935E 0E:934E: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039361 0E:9351: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039364 0E:9354: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039367 0E:9357: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03936A 0E:935A: 20 01 80  JSR sub_8001
bra_935D:
C - - - - - 0x03936D 0E:935D: 20 3A 87  JSR sub_873A
C - - - - - 0x039370 0E:9360: 4C 12 87  JMP loc_8712
bra_9363_01:
bra_9363_02:
C - - - - - 0x039373 0E:9363: A6 94     LDX ram_0094_object_index
C - - - - - 0x039375 0E:9365: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x039378 0E:9368: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03937B 0E:936B: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x03937E 0E:936E: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x039381 0E:9371: A9 00     LDA #$00
C - - - - - 0x039383 0E:9373: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039386 0E:9376: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039389 0E:9379: F0 E2     BEQ bra_935D    ; jmp



sub_937B_Trevor_state_handler:
; con_player_Trevor
; see con_plr_state
C - - - - - 0x03938B 0E:937B: AC 65 05  LDY ram_plr_state
C - - - - - 0x03938E 0E:937E: 20 86 E8  JSR sub_0x03E896_jump_to_pointers_after_JSR_Y
- D 0 - I - 0x039391 0E:9381: C5 8A     .word ofs_Trevor_state_8AC5_00
- D 0 - I - 0x039393 0E:9383: 38 95     .word ofs_Trevor_state_9538_02_idle_on_ground
- D 0 - I - 0x039395 0E:9385: 60 96     .word ofs_Trevor_state_9660_04_move_on_ground
- D 0 - I - 0x039397 0E:9387: 1D 96     .word ofs_Trevor_state_961D_06
- D 0 - I - 0x039399 0E:9389: 70 97     .word ofs_Trevor_state_9770_08_jump
- D 0 - I - 0x03939B 0E:938B: 19 99     .word ofs_Trevor_state_9919_0A_duck
- D 0 - I - 0x03939D 0E:938D: 70 97     .word ofs_Trevor_state_9770_0C_fall
- D 0 - I - 0x03939F 0E:938F: 53 99     .word ofs_Trevor_state_9953_0E_move_towards_stairs
- D 0 - I - 0x0393A1 0E:9391: 67 99     .word ofs_Trevor_state_9967_10_climb_on_stairs
- D 0 - I - 0x0393A3 0E:9393: 8E 99     .word ofs_Trevor_state_998E_12_idle_on_stairs
- D 0 - I - 0x0393A5 0E:9395: 93 9A     .word ofs_Trevor_state_9A93_14_move_on_stairs
- D 0 - I - 0x0393A7 0E:9397: 42 99     .word ofs_Trevor_state_9942_16
- D 0 - I - 0x0393A9 0E:9399: 18 94     .word ofs_Trevor_state_9418_18_normal_attack_on_ground
- D 0 - I - 0x0393AB 0E:939B: 3A 94     .word ofs_Trevor_state_943A_1A_normal_attack_jump
- D 0 - I - 0x0393AD 0E:939D: 65 94     .word ofs_Trevor_state_9465_1C_normal_attack_duck
- D 0 - I - 0x0393AF 0E:939F: 9E 94     .word ofs_Trevor_state_949E_1E_normal_attack_on_stairs
- D 0 - I - 0x0393B1 0E:93A1: B8 94     .word ofs_Trevor_state_94B8_20_subweapon_attack_on_ground
- D 0 - I - 0x0393B3 0E:93A3: D4 94     .word ofs_Trevor_state_94D4_22_subweapon_attack_jump
- D 0 - I - 0x0393B5 0E:93A5: FF 94     .word ofs_Trevor_state_94FF_24_subweapon_attack_on_stairs
- D 0 - I - 0x0393B7 0E:93A7: 1C 83     .word ofs_Trevor_state_831C_26_knockback
- - - - - - 0x0393B9 0E:93A9: B1 93     .word ofs_Trevor_state_93B1_28
- - - - - - 0x0393BB 0E:93AB: B1 93     .word ofs_Trevor_state_93B1_2A
- D 0 - I - 0x0393BD 0E:93AD: 57 8B     .word ofs_Trevor_state_8B57_2C
- D 0 - I - 0x0393BF 0E:93AF: DE 8A     .word ofs_Trevor_state_8ADE_2E_death



ofs_Alucard_state_93B1_28:
ofs_Trevor_state_93B1_28:
ofs_Sypha_state_93B1_28:
ofs_Grant_state_93B1_28:
ofs_Alucard_state_93B1_2A:
ofs_Trevor_state_93B1_2A:
ofs_Sypha_state_93B1_2A:
ofs_Grant_state_93B1_2A:
C - - J - - 0x0393C1 0E:93B1: A9 02     LDA #$02
C - - - - - 0x0393C3 0E:93B3: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x0393C6 0E:93B6: CE D4 05  DEC ram_05C1_obj + $13
C - - - - - 0x0393C9 0E:93B9: F0 20     BEQ bra_93DB
C - - - - - 0x0393CB 0E:93BB: A9 02     LDA #$02
C - - - - - 0x0393CD 0E:93BD: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0393D0 0E:93C0: AD EB 05  LDA ram_05D8_obj + $13
C - - - - - 0x0393D3 0E:93C3: D0 21     BNE bra_93E6
C - - - - - 0x0393D5 0E:93C5: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x0393D8 0E:93C8: 90 01     BCC bra_93CB
C - - - - - 0x0393DA 0E:93CA: 60        RTS
bra_93CB:
C - - - - - 0x0393DB 0E:93CB: A9 01     LDA #$01
C - - - - - 0x0393DD 0E:93CD: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x0393E0 0E:93D0: A9 0C     LDA #$0C
C - - - - - 0x0393E2 0E:93D2: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x0393E5 0E:93D5: A9 01     LDA #$01
C - - - - - 0x0393E7 0E:93D7: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x0393EA 0E:93DA: 60        RTS
bra_93DB:
C - - - - - 0x0393EB 0E:93DB: A9 00     LDA #$00
C - - - - - 0x0393ED 0E:93DD: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0393F0 0E:93E0: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x0393F2 0E:93E2: 8D 65 05  STA ram_plr_state
bra_93E5_RTS:
C - - - - - 0x0393F5 0E:93E5: 60        RTS
bra_93E6:
C - - - - - 0x0393F6 0E:93E6: 20 4F 98  JSR sub_984F
C - - - - - 0x0393F9 0E:93E9: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x0393FC 0E:93EC: F0 F7     BEQ bra_93E5_RTS
C - - - - - 0x0393FE 0E:93EE: A2 10     LDX #$10
C - - - - - 0x039400 0E:93F0: A9 FB     LDA #$FB
C - - - - - 0x039402 0E:93F2: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039405 0E:93F5: D0 0A     BNE bra_9401
C - - - - - 0x039407 0E:93F7: A2 10     LDX #$10
C - - - - - 0x039409 0E:93F9: A9 05     LDA #$05
C - - - - - 0x03940B 0E:93FB: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03940E 0E:93FE: D0 01     BNE bra_9401
C - - - - - 0x039410 0E:9400: 60        RTS
bra_9401:
- - - - - - 0x039411 0E:9401: 20 02 8A  JSR sub_8A02
- - - - - - 0x039414 0E:9404: A9 00     LDA #$00
- - - - - - 0x039416 0E:9406: 8D EB 05  STA ram_05D8_obj + $13
- - - - - - 0x039419 0E:9409: 60        RTS



loc_940A_set_state_and_play_whip_sound:
sub_940A_set_state_and_play_whip_sound:
C D 0 - - - 0x03941A 0E:940A: 8D 65 05  STA ram_plr_state
C - - - - - 0x03941D 0E:940D: A9 72     LDA #con_dmc_whip
C - - - - - 0x03941F 0E:940F: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x039422 0E:9412: A9 00     LDA #$00
C - - - - - 0x039424 0E:9414: 8D 78 05  STA ram_obj_state + $13
C - - - - - 0x039427 0E:9417: 60        RTS



ofs_Trevor_state_9418_18_normal_attack_on_ground:
ofs_Sypha_state_9418_18_normal_attack_on_ground:
C - - J - - 0x039428 0E:9418: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x03942B 0E:941B: B0 08     BCS bra_9425
loc_941D:
C - - - - - 0x03942D 0E:941D: A9 00     LDA #$00
C - - - - - 0x03942F 0E:941F: 8D 13 04  STA ram_obj_anim_id + $13
C - - - - - 0x039432 0E:9422: 4C 3A 97  JMP loc_973A
bra_9425:
C - - - - - 0x039435 0E:9425: 20 8E 91  JSR sub_918E
loc_9428:
sub_9428:
C D 0 - - - 0x039438 0E:9428: 20 89 BC  JSR sub_BC89
C - - - - - 0x03943B 0E:942B: B0 01     BCS bra_942E
C - - - - - 0x03943D 0E:942D: 60        RTS
bra_942E:
C - - - - - 0x03943E 0E:942E: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x039440 0E:9430: 8D 65 05  STA ram_plr_state
C - - - - - 0x039443 0E:9433: A9 02     LDA #$02
C - - - - - 0x039445 0E:9435: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039448 0E:9438: 38        SEC
C - - - - - 0x039449 0E:9439: 60        RTS



ofs_Trevor_state_943A_1A_normal_attack_jump:
ofs_Sypha_state_943A_1A_normal_attack_jump:
C - - J - - 0x03944A 0E:943A: 20 9C 97  JSR sub_979C
C - - - - - 0x03944D 0E:943D: AD 65 05  LDA ram_plr_state
C - - - - - 0x039450 0E:9440: C9 26     CMP #con_plr_state_knockback
C - - - - - 0x039452 0E:9442: F0 15     BEQ bra_9459_RTS
C - - - - - 0x039454 0E:9444: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x039456 0E:9446: D0 0C     BNE bra_9454
C - - - - - 0x039458 0E:9448: A9 00     LDA #$00
C - - - - - 0x03945A 0E:944A: 85 B9     STA ram_00B9
C - - - - - 0x03945C 0E:944C: A9 18     LDA #con_plr_state_normal_atk_on_ground
C - - - - - 0x03945E 0E:944E: 8D 65 05  STA ram_plr_state
C - - - - - 0x039461 0E:9451: 4C 28 94  JMP loc_9428
bra_9454:
C - - - - - 0x039464 0E:9454: 20 89 BC  JSR sub_BC89
C - - - - - 0x039467 0E:9457: B0 01     BCS bra_945A
bra_9459_RTS:
C - - - - - 0x039469 0E:9459: 60        RTS
bra_945A:
C - - - - - 0x03946A 0E:945A: A9 08     LDA #con_plr_state_jump
C - - - - - 0x03946C 0E:945C: 8D 65 05  STA ram_plr_state
C - - - - - 0x03946F 0E:945F: A9 02     LDA #$02
C - - - - - 0x039471 0E:9461: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039474 0E:9464: 60        RTS



ofs_Trevor_state_9465_1C_normal_attack_duck:
ofs_Sypha_state_9465_1C_normal_attack_duck:
C - - J - - 0x039475 0E:9465: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x039478 0E:9468: B0 03     BCS bra_946D
- - - - - - 0x03947A 0E:946A: 4C 1D 94  JMP loc_941D
bra_946D:
C - - - - - 0x03947D 0E:946D: 20 8E 91  JSR sub_918E
C - - - - - 0x039480 0E:9470: 20 36 99  JSR sub_9936
C - - - - - 0x039483 0E:9473: AD 65 05  LDA ram_plr_state
C - - - - - 0x039486 0E:9476: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x039488 0E:9478: D0 13     BNE bra_948D
C - - - - - 0x03948A 0E:947A: A9 18     LDA #con_plr_state_normal_atk_on_ground
C - - - - - 0x03948C 0E:947C: 8D 65 05  STA ram_plr_state
C - - - - - 0x03948F 0E:947F: 20 28 94  JSR sub_9428
C - - - - - 0x039492 0E:9482: AD 65 05  LDA ram_plr_state
C - - - - - 0x039495 0E:9485: C9 18     CMP #con_plr_state_normal_atk_on_ground
C - - - - - 0x039497 0E:9487: D0 03     BNE bra_948C_RTS
C - - - - - 0x039499 0E:9489: 20 CB BE  JSR sub_BECB
bra_948C_RTS:
C - - - - - 0x03949C 0E:948C: 60        RTS
bra_948D:
C - - - - - 0x03949D 0E:948D: 20 89 BC  JSR sub_BC89
C - - - - - 0x0394A0 0E:9490: B0 01     BCS bra_9493
C - - - - - 0x0394A2 0E:9492: 60        RTS
bra_9493:
C - - - - - 0x0394A3 0E:9493: A9 0A     LDA #con_plr_state_duck
C - - - - - 0x0394A5 0E:9495: 8D 65 05  STA ram_plr_state
C - - - - - 0x0394A8 0E:9498: A9 0E     LDA #$0E
C - - - - - 0x0394AA 0E:949A: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x0394AD 0E:949D: 60        RTS



ofs_Trevor_state_949E_1E_normal_attack_on_stairs:
ofs_Sypha_state_949E_1E_normal_attack_on_stairs:
ofs_Grant_state_949E_1E_normal_attack_on_stairs:
C - - J - - 0x0394AE 0E:949E: 20 89 BC  JSR sub_BC89
C - - - - - 0x0394B1 0E:94A1: B0 01     BCS bra_94A4
C - - - - - 0x0394B3 0E:94A3: 60        RTS
bra_94A4:
C - - - - - 0x0394B4 0E:94A4: A9 12     LDA #con_plr_state_idle_on_stairs
C - - - - - 0x0394B6 0E:94A6: 8D 65 05  STA ram_plr_state
C - - - - - 0x0394B9 0E:94A9: 60        RTS



loc_94AA_set_player_state:
sub_94AA_set_player_state:
; in
    ; A = con_plr_state
C D 0 - - - 0x0394BA 0E:94AA: 8D 65 05  STA ram_plr_state
C - - - - - 0x0394BD 0E:94AD: A9 00     LDA #$00
C - - - - - 0x0394BF 0E:94AF: 8D 93 05  STA ram_plr_anim_cnt
C - - - - - 0x0394C2 0E:94B2: A9 01     LDA #$01
C - - - - - 0x0394C4 0E:94B4: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x0394C7 0E:94B7: 60        RTS



loc_94B8:
ofs_Alucard_state_94B8_20_subweapon_attack_on_ground:
ofs_Trevor_state_94B8_20_subweapon_attack_on_ground:
ofs_Sypha_state_94B8_20_subweapon_attack_on_ground:
ofs_Grant_state_94B8_20_subweapon_attack_on_ground:
C D 0 J - - 0x0394C8 0E:94B8: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x0394CB 0E:94BB: B0 03     BCS bra_94C0
- - - - - - 0x0394CD 0E:94BD: 4C 3A 97  JMP loc_973A
bra_94C0:
C - - - - - 0x0394D0 0E:94C0: 20 8E 91  JSR sub_918E
loc_94C3:
C D 0 - - - 0x0394D3 0E:94C3: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x0394D6 0E:94C6: B0 01     BCS bra_94C9
C - - - - - 0x0394D8 0E:94C8: 60        RTS
bra_94C9:
C - - - - - 0x0394D9 0E:94C9: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x0394DB 0E:94CB: 8D 65 05  STA ram_plr_state
C - - - - - 0x0394DE 0E:94CE: A9 02     LDA #$02
C - - - - - 0x0394E0 0E:94D0: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x0394E3 0E:94D3: 60        RTS



loc_94D4:
ofs_Alucard_state_94D4_22_subweapon_attack_jump:
ofs_Trevor_state_94D4_22_subweapon_attack_jump:
C D 0 J - - 0x0394E4 0E:94D4: 20 9C 97  JSR sub_979C
C - - - - - 0x0394E7 0E:94D7: AD 65 05  LDA ram_plr_state
C - - - - - 0x0394EA 0E:94DA: C9 26     CMP #con_plr_state_knockback
C - - - - - 0x0394EC 0E:94DC: F0 15     BEQ bra_94F3_RTS
C - - - - - 0x0394EE 0E:94DE: C9 02     CMP #$02
C - - - - - 0x0394F0 0E:94E0: D0 0C     BNE bra_94EE
C - - - - - 0x0394F2 0E:94E2: A9 00     LDA #$00
C - - - - - 0x0394F4 0E:94E4: 85 B9     STA ram_00B9
C - - - - - 0x0394F6 0E:94E6: A9 20     LDA #con_plr_state_subw_atk_on_ground
C - - - - - 0x0394F8 0E:94E8: 8D 65 05  STA ram_plr_state
C - - - - - 0x0394FB 0E:94EB: 4C C3 94  JMP loc_94C3
bra_94EE:
C - - - - - 0x0394FE 0E:94EE: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x039501 0E:94F1: B0 01     BCS bra_94F4
bra_94F3_RTS:
C - - - - - 0x039503 0E:94F3: 60        RTS
bra_94F4:
C - - - - - 0x039504 0E:94F4: A9 08     LDA #con_plr_state_jump
C - - - - - 0x039506 0E:94F6: 8D 65 05  STA ram_plr_state
C - - - - - 0x039509 0E:94F9: A9 02     LDA #$02
C - - - - - 0x03950B 0E:94FB: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03950E 0E:94FE: 60        RTS



loc_94FF:
ofs_Alucard_state_94FF_24_subweapon_attack_on_stairs:
ofs_Trevor_state_94FF_24_subweapon_attack_on_stairs:
ofs_Sypha_state_94FF_24_subweapon_attack_on_stairs:
ofs_Grant_state_94FF_24_subweapon_attack_on_stairs:
C D 0 J - - 0x03950F 0E:94FF: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x039512 0E:9502: B0 01     BCS bra_9505
C - - - - - 0x039514 0E:9504: 60        RTS
bra_9505:
C - - - - - 0x039515 0E:9505: A9 12     LDA #con_plr_state_idle_on_stairs
C - - - - - 0x039517 0E:9507: 8D 65 05  STA ram_plr_state
C - - - - - 0x03951A 0E:950A: 60        RTS



sub_950B:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03951B 0E:950B: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03951E 0E:950E: C9 02     CMP #$02
C - - - - - 0x039520 0E:9510: F0 22     BEQ bra_9534
C - - - - - 0x039522 0E:9512: A2 E8     LDX #$E8
C - - - - - 0x039524 0E:9514: A9 FB     LDA #$FB
C - - - - - 0x039526 0E:9516: 20 0B 84  JSR sub_840B
C - - - - - 0x039529 0E:9519: F0 08     BEQ bra_9523
C - - - - - 0x03952B 0E:951B: C9 05     CMP #$05
C - - - - - 0x03952D 0E:951D: F0 04     BEQ bra_9523
C - - - - - 0x03952F 0E:951F: C9 07     CMP #$07
C - - - - - 0x039531 0E:9521: D0 13     BNE bra_9536
bra_9523:
C - - - - - 0x039533 0E:9523: A2 E8     LDX #$E8
C - - - - - 0x039535 0E:9525: A9 05     LDA #$05
C - - - - - 0x039537 0E:9527: 20 0B 84  JSR sub_840B
C - - - - - 0x03953A 0E:952A: F0 08     BEQ bra_9534
C - - - - - 0x03953C 0E:952C: C9 05     CMP #$05
C - - - - - 0x03953E 0E:952E: F0 04     BEQ bra_9534
C - - - - - 0x039540 0E:9530: C9 07     CMP #$07
C - - - - - 0x039542 0E:9532: D0 02     BNE bra_9536
bra_9534:
C - - - - - 0x039544 0E:9534: 18        CLC
C - - - - - 0x039545 0E:9535: 60        RTS
bra_9536:
C - - - - - 0x039546 0E:9536: 38        SEC
bra_9537_RTS:
C - - - - - 0x039547 0E:9537: 60        RTS



ofs_Alucard_state_9538_02_idle_on_ground:
ofs_Trevor_state_9538_02_idle_on_ground:
ofs_Sypha_state_9538_02_idle_on_ground:
ofs_Grant_state_9538_02_idle_on_ground:
C - - J - - 0x039548 0E:9538: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x03954B 0E:953B: B0 03     BCS bra_9540
C - - - - - 0x03954D 0E:953D: 4C 3A 97  JMP loc_973A
bra_9540:
C - - - - - 0x039550 0E:9540: A5 B9     LDA ram_00B9
C - - - - - 0x039552 0E:9542: F0 09     BEQ bra_954D
C - - - - - 0x039554 0E:9544: C6 B9     DEC ram_00B9
C - - - - - 0x039556 0E:9546: D0 EF     BNE bra_9537_RTS
C - - - - - 0x039558 0E:9548: A9 02     LDA #$02
C - - - - - 0x03955A 0E:954A: 8D 00 04  STA ram_plr_anim_id
bra_954D:
C - - - - - 0x03955D 0E:954D: A5 26     LDA ram_btn_press
C - - - - - 0x03955F 0E:954F: 0A        ASL
C - - - - - 0x039560 0E:9550: B0 42     BCS bra_9594_pressed_A    ; if con_btn_A
C - - - - - 0x039562 0E:9552: 0A        ASL
C - - - - - 0x039563 0E:9553: B0 1C     BCS bra_9571_pressed_B    ; if con_btn_B
bra_9555:
C - - - - - 0x039565 0E:9555: A5 28     LDA ram_btn_hold
C - - - - - 0x039567 0E:9557: 4A        LSR
C - - - - - 0x039568 0E:9558: 90 03     BCC bra_955D_not_right
; if con_btn_Right
C - - - - - 0x03956A 0E:955A: 4C 02 96  JMP loc_9602_set_facing_right
bra_955D_not_right:
C - - - - - 0x03956D 0E:955D: 4A        LSR
C - - - - - 0x03956E 0E:955E: 90 03     BCC bra_9563_not_left
; if con_btn_Left
C - - - - - 0x039570 0E:9560: 4C 06 96  JMP loc_9606_set_facing_left
bra_9563_not_left:
C - - - - - 0x039573 0E:9563: 4A        LSR
C - - - - - 0x039574 0E:9564: B0 44     BCS bra_95AA_pressed_down   ; if con_btn_Down
C - - - - - 0x039576 0E:9566: 4A        LSR
C - - - - - 0x039577 0E:9567: B0 4F     BCS bra_95B8_pressed_up     ; if con_btn_Up
bra_9569:    ; else no dpad pressed
C - - - - - 0x039579 0E:9569: A9 02     LDA #$02
C - - - - - 0x03957B 0E:956B: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03957E 0E:956E: 4C 8E 91  JMP loc_918E
bra_9571_pressed_B:
C - - - - - 0x039581 0E:9571: A5 28     LDA ram_btn_hold
C - - - - - 0x039583 0E:9573: 29 08     AND #con_btn_Up
C - - - - - 0x039585 0E:9575: D0 13     BNE bra_958A
bra_9577:
C - - - - - 0x039587 0E:9577: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03958A 0E:957A: C9 03     CMP #$03
C - - - - - 0x03958C 0E:957C: F0 05     BEQ bra_9583
C - - - - - 0x03958E 0E:957E: A9 18     LDA #con_plr_state_normal_atk_on_ground
C - - - - - 0x039590 0E:9580: 4C 0A 94  JMP loc_940A_set_state_and_play_whip_sound
bra_9583:
C - - - - - 0x039593 0E:9583: 20 69 BA  JSR sub_BA69
C - - - - - 0x039596 0E:9586: B0 07     BCS bra_958F
C - - - - - 0x039598 0E:9588: 90 CB     BCC bra_9555    ; jmp
bra_958A:
C - - - - - 0x03959A 0E:958A: 20 F5 B9  JSR sub_B9F5
C - - - - - 0x03959D 0E:958D: 90 E8     BCC bra_9577
bra_958F:
C - - - - - 0x03959F 0E:958F: A9 20     LDA #con_plr_state_subw_atk_on_ground
C - - - - - 0x0395A1 0E:9591: 4C AA 94  JMP loc_94AA_set_player_state
loc_9594_pressed_A:
bra_9594_pressed_A:
C D 0 - - - 0x0395A4 0E:9594: 20 0B 95  JSR sub_950B
C - - - - - 0x0395A7 0E:9597: B0 05     BCS bra_959E_RTS
C - - - - - 0x0395A9 0E:9599: A9 06     LDA #con_plr_state_06
C - - - - - 0x0395AB 0E:959B: 8D 65 05  STA ram_plr_state
bra_959E_RTS:
C - - - - - 0x0395AE 0E:959E: 60        RTS
bra_959F:
C - - - - - 0x0395AF 0E:959F: A9 0A     LDA #con_plr_state_duck
C - - - - - 0x0395B1 0E:95A1: 8D 65 05  STA ram_plr_state
C - - - - - 0x0395B4 0E:95A4: A9 0E     LDA #$0E
C - - - - - 0x0395B6 0E:95A6: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x0395B9 0E:95A9: 60        RTS
bra_95AA_pressed_down:
C - - - - - 0x0395BA 0E:95AA: 20 D4 E6  JSR sub_0x03E6E4_check_stairs_if_pressed_down
C - - - - - 0x0395BD 0E:95AD: 90 F0     BCC bra_959F
C - - - - - 0x0395BF 0E:95AF: A9 00     LDA #$00
C - - - - - 0x0395C1 0E:95B1: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x0395C4 0E:95B4: A2 01     LDX #$01
C - - - - - 0x0395C6 0E:95B6: D0 0C     BNE bra_95C4    ; jmp
bra_95B8_pressed_up:
C - - - - - 0x0395C8 0E:95B8: 20 DF E6  JSR sub_0x03E6EF_check_stairs_if_pressed_up
C - - - - - 0x0395CB 0E:95BB: 90 AC     BCC bra_9569
C - - - - - 0x0395CD 0E:95BD: A9 01     LDA #$01
C - - - - - 0x0395CF 0E:95BF: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x0395D2 0E:95C2: A2 00     LDX #$00
bra_95C4:
C - - - - - 0x0395D4 0E:95C4: A0 00     LDY #$00
C - - - - - 0x0395D6 0E:95C6: A5 0A     LDA ram_000A_temp
C - - - - - 0x0395D8 0E:95C8: 0A        ASL
C - - - - - 0x0395D9 0E:95C9: 90 05     BCC bra_95D0
C - - - - - 0x0395DB 0E:95CB: 8A        TXA
C - - - - - 0x0395DC 0E:95CC: 49 01     EOR #$01
C - - - - - 0x0395DE 0E:95CE: AA        TAX
C - - - - - 0x0395DF 0E:95CF: C8        INY
bra_95D0:
C - - - - - 0x0395E0 0E:95D0: 8C EF 05  STY ram_05EF_plr
C - - - - - 0x0395E3 0E:95D3: 8E A8 04  STX ram_plr_facing
C - - - - - 0x0395E6 0E:95D6: A5 0B     LDA ram_000B_temp
C - - - - - 0x0395E8 0E:95D8: 8D 1D 06  STA ram_061D_plr
C - - - - - 0x0395EB 0E:95DB: A0 00     LDY #$00
C - - - - - 0x0395ED 0E:95DD: 0A        ASL
C - - - - - 0x0395EE 0E:95DE: 90 01     BCC bra_95E1
- - - - - - 0x0395F0 0E:95E0: C8        INY ; 01
bra_95E1:
C - - - - - 0x0395F1 0E:95E1: 8C 06 06  STY ram_plr_config
; move player towards the stairs
C - - - - - 0x0395F4 0E:95E4: A5 0D     LDA ram_000D_t003_where_are_stairs
C - - - - - 0x0395F6 0E:95E6: F0 06     BEQ bra_95EE_to_the_right
; if to the left
C - - - - - 0x0395F8 0E:95E8: A9 FF     LDA #> $FF00
C - - - - - 0x0395FA 0E:95EA: A0 00     LDY #< $FF00
C - - - - - 0x0395FC 0E:95EC: F0 04     BEQ bra_95F2    ; jmp
bra_95EE_to_the_right:
C - - - - - 0x0395FE 0E:95EE: A9 01     LDA #> $0100
C - - - - - 0x039600 0E:95F0: A0 00     LDY #< $0100
bra_95F2:
C - - - - - 0x039602 0E:95F2: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x039605 0E:95F5: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039608 0E:95F8: A9 0E     LDA #con_plr_state_move_towards_stairs
C - - - - - 0x03960A 0E:95FA: 8D 65 05  STA ram_plr_state
C - - - - - 0x03960D 0E:95FD: A9 00     LDA #$00
C - - - - - 0x03960F 0E:95FF: 4C 4A EF  JMP loc_0x03EF5A



loc_9602_set_facing_right:
C D 0 - - - 0x039612 0E:9602: A9 00     LDA #$00    ; facing right
C - - - - - 0x039614 0E:9604: F0 02     BEQ bra_9608_set_facing    ; jmp



loc_9606_set_facing_left:
C D 0 - - - 0x039616 0E:9606: A9 01     LDA #$01    ; facing left
bra_9608_set_facing:
C - - - - - 0x039618 0E:9608: 8D A8 04  STA ram_plr_facing
C - - - - - 0x03961B 0E:960B: A9 00     LDA #$00
C - - - - - 0x03961D 0E:960D: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039620 0E:9610: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039623 0E:9613: A9 04     LDA #con_plr_state_move_on_ground
C - - - - - 0x039625 0E:9615: 8D 65 05  STA ram_plr_state
C - - - - - 0x039628 0E:9618: A9 00     LDA #$00
C - - - - - 0x03962A 0E:961A: 4C 4A EF  JMP loc_0x03EF5A



ofs_Alucard_state_961D_06:
ofs_Trevor_state_961D_06:
ofs_Sypha_state_961D_06:
C - - J - - 0x03962D 0E:961D: A9 08     LDA #con_plr_state_jump
C - - - - - 0x03962F 0E:961F: 8D 65 05  STA ram_plr_state
C - - - - - 0x039632 0E:9622: A5 28     LDA ram_btn_hold
C - - - - - 0x039634 0E:9624: 85 10     STA ram_0010_t00E_buttons
C - - - - - 0x039636 0E:9626: A2 00     LDX #$00
ofs_036_0x039638_00:
C - - - - - 0x039638 0E:9628: A9 16     LDA #$16
C - - - - - 0x03963A 0E:962A: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03963D 0E:962D: A9 00     LDA #$00
C - - - - - 0x03963F 0E:962F: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x039642 0E:9632: A9 09     LDA #$09
C - - - - - 0x039644 0E:9634: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x039647 0E:9637: A5 10     LDA ram_0010_t00E_buttons
C - - - - - 0x039649 0E:9639: 4A        LSR
C - - - - - 0x03964A 0E:963A: B0 08     BCS bra_9644_pressed_Right
C - - - - - 0x03964C 0E:963C: 4A        LSR
C - - - - - 0x03964D 0E:963D: B0 10     BCS bra_964F_pressed_Left
C - - - - - 0x03964F 0E:963F: A9 00     LDA #$00
C - - - - - 0x039651 0E:9641: A8        TAY ; 00
C - - - - - 0x039652 0E:9642: F0 14     BEQ bra_9658    ; jmp
bra_9644_pressed_Right:
C - - - - - 0x039654 0E:9644: A9 00     LDA #$00    ; facing right
C - - - - - 0x039656 0E:9646: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x039659 0E:9649: A9 01     LDA #$01
C - - - - - 0x03965B 0E:964B: A0 00     LDY #$00
C - - - - - 0x03965D 0E:964D: F0 09     BEQ bra_9658    ; jmp
bra_964F_pressed_Left:
C - - - - - 0x03965F 0E:964F: A9 01     LDA #$01    ; facing left
C - - - - - 0x039661 0E:9651: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x039664 0E:9654: A9 FF     LDA #$FF
C - - - - - 0x039666 0E:9656: A0 00     LDY #$00
bra_9658:
C - - - - - 0x039668 0E:9658: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03966B 0E:965B: 98        TYA
C - - - - - 0x03966C 0E:965C: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03966F 0E:965F: 60        RTS



ofs_Alucard_state_9660_04_move_on_ground:
ofs_Trevor_state_9660_04_move_on_ground:
ofs_Sypha_state_9660_04_move_on_ground:
C - - J - - 0x039670 0E:9660: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x039673 0E:9663: B0 03     BCS bra_9668
C - - - - - 0x039675 0E:9665: 4C 34 97  JMP loc_9734
bra_9668:
C - - - - - 0x039678 0E:9668: A5 26     LDA ram_btn_press
C - - - - - 0x03967A 0E:966A: 0A        ASL
C - - - - - 0x03967B 0E:966B: 90 03     BCC bra_9670
; if con_btn_A
C - - - - - 0x03967D 0E:966D: 4C 94 95  JMP loc_9594_pressed_A
bra_9670:
C - - - - - 0x039680 0E:9670: 0A        ASL
C - - - - - 0x039681 0E:9671: B0 1C     BCS bra_968F
bra_9673:
C - - - - - 0x039683 0E:9673: A5 28     LDA ram_btn_hold
C - - - - - 0x039685 0E:9675: 4A        LSR
C - - - - - 0x039686 0E:9676: B0 42     BCS bra_96BA_pressed_Right
C - - - - - 0x039688 0E:9678: 4A        LSR
C - - - - - 0x039689 0E:9679: 90 03     BCC bra_967E
; if con_btn_Left
C - - - - - 0x03968B 0E:967B: 4C F6 96  JMP loc_96F6_pressed_Left
bra_967E:
C - - - - - 0x03968E 0E:967E: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x039690 0E:9680: 8D 65 05  STA ram_plr_state
loc_9683:
C D 0 - - - 0x039693 0E:9683: 20 BC 8A  JSR sub_8ABC_clear_speed_Y
loc_9686:
C D 0 - - - 0x039696 0E:9686: 20 73 EF  JSR sub_0x03EF83
bra_9689:
C - - - - - 0x039699 0E:9689: 20 3A 87  JSR sub_873A
C - - - - - 0x03969C 0E:968C: 4C 12 87  JMP loc_8712
bra_968F:
C - - - - - 0x03969F 0E:968F: A5 28     LDA ram_btn_hold
C - - - - - 0x0396A1 0E:9691: 29 08     AND #con_btn_Up
C - - - - - 0x0396A3 0E:9693: F0 0F     BEQ bra_96A4
C - - - - - 0x0396A5 0E:9695: 20 F5 B9  JSR sub_B9F5
C - - - - - 0x0396A8 0E:9698: 90 0A     BCC bra_96A4
bra_969A:
C - - - - - 0x0396AA 0E:969A: A9 20     LDA #con_plr_state_subw_atk_on_ground
C - - - - - 0x0396AC 0E:969C: 20 AA 94  JSR sub_94AA_set_player_state
C - - - - - 0x0396AF 0E:969F: 20 BC 8A  JSR sub_8ABC_clear_speed_Y
C - - - - - 0x0396B2 0E:96A2: F0 E5     BEQ bra_9689
bra_96A4:
C - - - - - 0x0396B4 0E:96A4: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0396B7 0E:96A7: C9 03     CMP #$03
C - - - - - 0x0396B9 0E:96A9: F0 08     BEQ bra_96B3
C - - - - - 0x0396BB 0E:96AB: A9 18     LDA #con_plr_state_normal_atk_on_ground
C - - - - - 0x0396BD 0E:96AD: 20 0A 94  JSR sub_940A_set_state_and_play_whip_sound
C - - - - - 0x0396C0 0E:96B0: 4C 83 96  JMP loc_9683
bra_96B3:
C - - - - - 0x0396C3 0E:96B3: 20 69 BA  JSR sub_BA69
C - - - - - 0x0396C6 0E:96B6: 90 BB     BCC bra_9673
C - - - - - 0x0396C8 0E:96B8: B0 E0     BCS bra_969A    ; jmp
bra_96BA_pressed_Right:
C - - - - - 0x0396CA 0E:96BA: A9 00     LDA #$00    ; facing right
C - - - - - 0x0396CC 0E:96BC: 8D A8 04  STA ram_plr_facing
C - - - - - 0x0396CF 0E:96BF: 20 85 8E  JSR sub_8E85
C - - - - - 0x0396D2 0E:96C2: 90 15     BCC bra_96D9
C - - - - - 0x0396D4 0E:96C4: A2 00     LDX #$00
C - - - - - 0x0396D6 0E:96C6: A9 08     LDA #$08
C - - - - - 0x0396D8 0E:96C8: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0396DB 0E:96CB: D0 24     BNE bra_96F1
C - - - - - 0x0396DD 0E:96CD: A2 F0     LDX #$F0
C - - - - - 0x0396DF 0E:96CF: A9 08     LDA #$08
C - - - - - 0x0396E1 0E:96D1: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0396E4 0E:96D4: D0 1B     BNE bra_96F1
C - - - - - 0x0396E6 0E:96D6: 4C 86 96  JMP loc_9686
bra_96D9:
C - - - - - 0x0396E9 0E:96D9: A2 00     LDX #$00
C - - - - - 0x0396EB 0E:96DB: A9 08     LDA #$08
C - - - - - 0x0396ED 0E:96DD: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0396F0 0E:96E0: D0 0F     BNE bra_96F1
C - - - - - 0x0396F2 0E:96E2: A2 F0     LDX #$F0
C - - - - - 0x0396F4 0E:96E4: A9 08     LDA #$08
C - - - - - 0x0396F6 0E:96E6: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0396F9 0E:96E9: D0 06     BNE bra_96F1
C - - - - - 0x0396FB 0E:96EB: A9 01     LDA #> $0100
C - - - - - 0x0396FD 0E:96ED: A0 00     LDY #< $0100
C - - - - - 0x0396FF 0E:96EF: F0 3A     BEQ bra_972B_set_spd_X    ; jmp
bra_96F1:
C - - - - - 0x039701 0E:96F1: A9 00     LDA #$00    ; spd hi
C - - - - - 0x039703 0E:96F3: A8        TAY
C - - - - - 0x039704 0E:96F4: F0 35     BEQ bra_972B_set_spd_X



loc_96F6_pressed_Left:
C D 0 - - - 0x039706 0E:96F6: A9 01     LDA #$01    ; facing left
C - - - - - 0x039708 0E:96F8: 8D A8 04  STA ram_plr_facing
C - - - - - 0x03970B 0E:96FB: 20 01 8F  JSR sub_8F01
C - - - - - 0x03970E 0E:96FE: 90 15     BCC bra_9715
C - - - - - 0x039710 0E:9700: A2 00     LDX #$00
C - - - - - 0x039712 0E:9702: A9 F8     LDA #$F8
C - - - - - 0x039714 0E:9704: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039717 0E:9707: D0 E8     BNE bra_96F1
C - - - - - 0x039719 0E:9709: A2 F0     LDX #$F0
C - - - - - 0x03971B 0E:970B: A9 F8     LDA #$F8
C - - - - - 0x03971D 0E:970D: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039720 0E:9710: D0 DF     BNE bra_96F1
C - - - - - 0x039722 0E:9712: 4C 86 96  JMP loc_9686
bra_9715:
C - - - - - 0x039725 0E:9715: A2 00     LDX #$00
C - - - - - 0x039727 0E:9717: A9 F8     LDA #$F8
C - - - - - 0x039729 0E:9719: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03972C 0E:971C: D0 D3     BNE bra_96F1
C - - - - - 0x03972E 0E:971E: A2 F0     LDX #$F0
C - - - - - 0x039730 0E:9720: A9 F8     LDA #$F8
C - - - - - 0x039732 0E:9722: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039735 0E:9725: D0 CA     BNE bra_96F1
C - - - - - 0x039737 0E:9727: A9 FF     LDA #> $FF00
C - - - - - 0x039739 0E:9729: A0 00     LDY #< $FF00
bra_972B_set_spd_X:
C - - - - - 0x03973B 0E:972B: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x03973E 0E:972E: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039741 0E:9731: 4C 83 96  JMP loc_9683



loc_9734:
C D 0 - - - 0x039744 0E:9734: 20 3A 97  JSR sub_973A
C - - - - - 0x039747 0E:9737: 4C 86 96  JMP loc_9686



loc_973A:
sub_973A:
C D 0 - - - 0x03974A 0E:973A: A5 CF     LDA ram_00CF
C - - - - - 0x03974C 0E:973C: C9 01     CMP #$01
C - - - - - 0x03974E 0E:973E: F0 04     BEQ bra_9744
C - - - - - 0x039750 0E:9740: C9 06     CMP #$06
C - - - - - 0x039752 0E:9742: D0 04     BNE bra_9748
bra_9744:
C - - - - - 0x039754 0E:9744: A9 08     LDA #$08
C - - - - - 0x039756 0E:9746: 85 AF     STA ram_00AF
bra_9748:
C - - - - - 0x039758 0E:9748: A9 0C     LDA #con_plr_state_fall
C - - - - - 0x03975A 0E:974A: 8D 65 05  STA ram_plr_state
C - - - - - 0x03975D 0E:974D: A2 00     LDX #$00
sub_974F:
ofs_036_0x03975F_02:
C - - - - - 0x03975F 0E:974F: A9 0C     LDA #$0C
C - - - - - 0x039761 0E:9751: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x039764 0E:9754: A9 01     LDA #$01
C - - - - - 0x039766 0E:9756: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x039769 0E:9759: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x03976C 0E:975C: D0 0C     BNE bra_976A_facing_left
; if facing right
C - - - - - 0x03976E 0E:975E: A9 00     LDA #> $0020
C - - - - - 0x039770 0E:9760: A0 20     LDY #< $0020
bra_9762_set_spd_X:
C - - - - - 0x039772 0E:9762: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x039775 0E:9765: 98        TYA
C - - - - - 0x039776 0E:9766: 9D 09 05  STA ram_obj_spd_X_lo,X
bra_9769_RTS:
C - - - - - 0x039779 0E:9769: 60        RTS
bra_976A_facing_left:
C - - - - - 0x03977A 0E:976A: A9 FF     LDA #> $FFE0
C - - - - - 0x03977C 0E:976C: A0 E0     LDY #< $FFE0
C - - - - - 0x03977E 0E:976E: D0 F2     BNE bra_9762_set_spd_X    ; jmp



ofs_Alucard_state_9770_08_jump:
ofs_Trevor_state_9770_08_jump:
ofs_Sypha_state_9770_08_jump:
ofs_Alucard_state_9770_0C_fall:
ofs_Trevor_state_9770_0C_fall:
ofs_Sypha_state_9770_0C_fall:
C - - J - - 0x039780 0E:9770: A5 26     LDA ram_btn_press
C - - - - - 0x039782 0E:9772: 29 40     AND #con_btn_B
C - - - - - 0x039784 0E:9774: F0 26     BEQ bra_979C
C - - - - - 0x039786 0E:9776: A5 28     LDA ram_btn_hold
C - - - - - 0x039788 0E:9778: 29 08     AND #con_btn_Up
C - - - - - 0x03978A 0E:977A: F0 14     BEQ bra_9790
C - - - - - 0x03978C 0E:977C: 20 F5 B9  JSR sub_B9F5
C - - - - - 0x03978F 0E:977F: 90 0F     BCC bra_9790
bra_9781:
C - - - - - 0x039791 0E:9781: A9 22     LDA #con_plr_state_subw_atk_jump
C - - - - - 0x039793 0E:9783: 20 AA 94  JSR sub_94AA_set_player_state
C - - - - - 0x039796 0E:9786: 4C 9C 97  JMP loc_979C
bra_9789:
C - - - - - 0x039799 0E:9789: 20 69 BA  JSR sub_BA69
C - - - - - 0x03979C 0E:978C: 90 0E     BCC bra_979C
C - - - - - 0x03979E 0E:978E: B0 F1     BCS bra_9781    ; jmp
bra_9790:
C - - - - - 0x0397A0 0E:9790: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0397A3 0E:9793: C9 03     CMP #$03
C - - - - - 0x0397A5 0E:9795: F0 F2     BEQ bra_9789
C - - - - - 0x0397A7 0E:9797: A9 1A     LDA #con_plr_state_normal_atk_jump
C - - - - - 0x0397A9 0E:9799: 20 0A 94  JSR sub_940A_set_state_and_play_whip_sound
sub_979C:
loc_979C:
bra_979C:
C D 0 - - - 0x0397AC 0E:979C: 20 AA 83  JSR sub_83AA
C - - - - - 0x0397AF 0E:979F: B0 C8     BCS bra_9769_RTS
sub_97A1:
C - - - - - 0x0397B1 0E:97A1: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x0397B4 0E:97A4: 10 14     BPL bra_97BA
C - - - - - 0x0397B6 0E:97A6: A2 10     LDX #$10
C - - - - - 0x0397B8 0E:97A8: A9 F8     LDA #$F8
C - - - - - 0x0397BA 0E:97AA: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0397BD 0E:97AD: D0 20     BNE bra_97CF
C - - - - - 0x0397BF 0E:97AF: A2 08     LDX #$08
C - - - - - 0x0397C1 0E:97B1: A9 F8     LDA #$F8
C - - - - - 0x0397C3 0E:97B3: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0397C6 0E:97B6: D0 17     BNE bra_97CF
C - - - - - 0x0397C8 0E:97B8: F0 12     BEQ bra_97CC    ; jmp
bra_97BA:
C - - - - - 0x0397CA 0E:97BA: A2 10     LDX #$10
C - - - - - 0x0397CC 0E:97BC: A9 08     LDA #$08
C - - - - - 0x0397CE 0E:97BE: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0397D1 0E:97C1: D0 0C     BNE bra_97CF
C - - - - - 0x0397D3 0E:97C3: A2 08     LDX #$08
C - - - - - 0x0397D5 0E:97C5: A9 08     LDA #$08
C - - - - - 0x0397D7 0E:97C7: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0397DA 0E:97CA: D0 03     BNE bra_97CF
bra_97CC:
C - - - - - 0x0397DC 0E:97CC: 20 3A 87  JSR sub_873A
sub_97CF:
bra_97CF:
C - - - - - 0x0397DF 0E:97CF: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0397E2 0E:97D2: 85 06     STA ram_0006_t013_copy_plr_pos_Y_hi
C - - - - - 0x0397E4 0E:97D4: 20 4F 98  JSR sub_984F
C - - - - - 0x0397E7 0E:97D7: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x0397EA 0E:97DA: F0 65     BEQ bra_9841
C - - - - - 0x0397EC 0E:97DC: A2 10     LDX #$10
C - - - - - 0x0397EE 0E:97DE: A9 FB     LDA #$FB
C - - - - - 0x0397F0 0E:97E0: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x0397F3 0E:97E3: F0 0C     BEQ bra_97F1
C - - - - - 0x0397F5 0E:97E5: A2 08     LDX #$08
C - - - - - 0x0397F7 0E:97E7: A9 FB     LDA #$FB
C - - - - - 0x0397F9 0E:97E9: 20 FF 83  JSR sub_83FF
C - - - - - 0x0397FC 0E:97EC: F0 30     BEQ bra_981E
C - - - - - 0x0397FE 0E:97EE: 4C 41 98  JMP loc_9841
bra_97F1:
C - - - - - 0x039801 0E:97F1: A2 10     LDX #$10
C - - - - - 0x039803 0E:97F3: A9 05     LDA #$05
C - - - - - 0x039805 0E:97F5: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039808 0E:97F8: F0 0C     BEQ bra_9806
C - - - - - 0x03980A 0E:97FA: A2 08     LDX #$08
C - - - - - 0x03980C 0E:97FC: A9 05     LDA #$05
C - - - - - 0x03980E 0E:97FE: 20 FF 83  JSR sub_83FF
C - - - - - 0x039811 0E:9801: F0 1B     BEQ bra_981E
C - - - - - 0x039813 0E:9803: 4C 41 98  JMP loc_9841
bra_9806:
C - - - - - 0x039816 0E:9806: A5 8B     LDA ram_008B
C - - - - - 0x039818 0E:9808: C9 01     CMP #$01
C - - - - - 0x03981A 0E:980A: F0 0A     BEQ bra_9816
C - - - - - 0x03981C 0E:980C: C9 05     CMP #$05
C - - - - - 0x03981E 0E:980E: F0 34     BEQ bra_9844
C - - - - - 0x039820 0E:9810: C9 06     CMP #$06
C - - - - - 0x039822 0E:9812: F0 30     BEQ bra_9844
C - - - - - 0x039824 0E:9814: D0 2B     BNE bra_9841    ; jmp
bra_9816:
C - - - - - 0x039826 0E:9816: A6 91     LDX ram_0091
C - - - - - 0x039828 0E:9818: 20 9C FE  JSR sub_0x03FEAC
C - - - - - 0x03982B 0E:981B: 4C 3B 98  JMP loc_983B
bra_981E:
C - - - - - 0x03982E 0E:981E: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x039831 0E:9821: D0 15     BNE bra_9838
C - - - - - 0x039833 0E:9823: AD 65 05  LDA ram_plr_state
C - - - - - 0x039836 0E:9826: C9 26     CMP #con_plr_state_knockback
C - - - - - 0x039838 0E:9828: F0 0E     BEQ bra_9838
C - - - - - 0x03983A 0E:982A: A9 0B     LDA #con_sound_land
C - - - - - 0x03983C 0E:982C: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03983F 0E:982F: A9 0C     LDA #$0C
C - - - - - 0x039841 0E:9831: 85 B9     STA ram_00B9
C - - - - - 0x039843 0E:9833: A9 0E     LDA #$0E
C - - - - - 0x039845 0E:9835: 8D 00 04  STA ram_plr_anim_id
bra_9838:
C - - - - - 0x039848 0E:9838: 20 02 8A  JSR sub_8A02
loc_983B:
C D 0 - - - 0x03984B 0E:983B: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x03984D 0E:983D: 8D 65 05  STA ram_plr_state
C - - - - - 0x039850 0E:9840: 60        RTS
loc_9841:   ; bzk optimize
bra_9841:
C D 0 - - - 0x039851 0E:9841: 4C 12 87  JMP loc_8712
bra_9844:
C - - - - - 0x039854 0E:9844: A5 06     LDA ram_0006_t013_copy_plr_pos_Y_hi
C - - - - - 0x039856 0E:9846: 18        CLC
C - - - - - 0x039857 0E:9847: 65 91     ADC ram_0091
C - - - - - 0x039859 0E:9849: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03985C 0E:984C: 4C 3B 98  JMP loc_983B



sub_984F:
C - - - - - 0x03985F 0E:984F: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039862 0E:9852: C9 08     CMP #$08
C - - - - - 0x039864 0E:9854: B0 11     BCS bra_9867
- - - - - - 0x039866 0E:9856: AD C1 05  LDA ram_05C1_plr
- - - - - - 0x039869 0E:9859: D0 0C     BNE bra_9867
- - - - - - 0x03986B 0E:985B: AD 65 05  LDA ram_plr_state
- - - - - - 0x03986E 0E:985E: C9 26     CMP #con_plr_state_knockback
- - - - - - 0x039870 0E:9860: F0 08     BEQ bra_986A
- - - - - - 0x039872 0E:9862: A2 00     LDX #$00
- - - - - - 0x039874 0E:9864: 20 4F 97  JSR sub_974F
bra_9867:
C - - - - - 0x039877 0E:9867: 4C BF 98  JMP loc_98BF
bra_986A:
- - - - - - 0x03987A 0E:986A: A9 00     LDA #$00
- - - - - - 0x03987C 0E:986C: 8D 20 05  STA ram_plr_spd_Y_hi
- - - - - - 0x03987F 0E:986F: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x039882 0E:9872: F0 F3     BEQ bra_9867    ; jmp



tbl_9874:
- D 0 - - - 0x039884 0E:9874: 80        .byte $80   ; 00 
- D 0 - - - 0x039885 0E:9875: FA        .byte $FA   ; 01 
- D 0 - - - 0x039886 0E:9876: FA        .byte $FA   ; 02 
- D 0 - - - 0x039887 0E:9877: FA        .byte $FA   ; 03 
- D 0 - - - 0x039888 0E:9878: FA        .byte $FA   ; 04 
- D 0 - - - 0x039889 0E:9879: FA        .byte $FA   ; 05 
- D 0 - - - 0x03988A 0E:987A: FB        .byte $FB   ; 06 
- D 0 - - - 0x03988B 0E:987B: FB        .byte $FB   ; 07 
- D 0 - - - 0x03988C 0E:987C: FB        .byte $FB   ; 08 
- D 0 - - - 0x03988D 0E:987D: FB        .byte $FB   ; 09 
- D 0 - - - 0x03988E 0E:987E: FB        .byte $FB   ; 0A 
- D 0 - - - 0x03988F 0E:987F: FD        .byte $FD   ; 0B 
- D 0 - - - 0x039890 0E:9880: FD        .byte $FD   ; 0C 
- D 0 - - - 0x039891 0E:9881: FD        .byte $FD   ; 0D 
- D 0 - - - 0x039892 0E:9882: FD        .byte $FD   ; 0E 
- D 0 - - - 0x039893 0E:9883: FD        .byte $FD   ; 0F 
- D 0 - - - 0x039894 0E:9884: FE        .byte $FE   ; 10 
- D 0 - - - 0x039895 0E:9885: FE        .byte $FE   ; 11 
- D 0 - - - 0x039896 0E:9886: FE        .byte $FE   ; 12 
- D 0 - - - 0x039897 0E:9887: FF        .byte $FF   ; 13 
- D 0 - - - 0x039898 0E:9888: FF        .byte $FF   ; 14 
- D 0 - - - 0x039899 0E:9889: FF        .byte $FF   ; 15 
- D 0 - - - 0x03989A 0E:988A: FF        .byte $FF   ; 16 
- D 0 - - - 0x03989B 0E:988B: 00        .byte $00   ; 17 
- D 0 - - - 0x03989C 0E:988C: FF        .byte $FF   ; 18 
- D 0 - - - 0x03989D 0E:988D: 00        .byte $00   ; 19 
- D 0 - - - 0x03989E 0E:988E: 00        .byte $00   ; 1A 
- D 0 - - - 0x03989F 0E:988F: 00        .byte $00   ; 1B 
- D 0 - - - 0x0398A0 0E:9890: 00        .byte $00   ; 1C 
- D 0 - - - 0x0398A1 0E:9891: 81        .byte $81   ; 1D 



bra_9892:
C - - - - - 0x0398A2 0E:9892: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x0398A5 0E:9895: 18        CLC
C - - - - - 0x0398A6 0E:9896: 69 20     ADC #< $0020
C - - - - - 0x0398A8 0E:9898: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x0398AB 0E:989B: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x0398AE 0E:989E: 69 00     ADC #> $0020
C - - - - - 0x0398B0 0E:98A0: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x0398B3 0E:98A3: 10 06     BPL bra_98AB
C - - - - - 0x0398B5 0E:98A5: A9 00     LDA #$00
C - - - - - 0x0398B7 0E:98A7: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x0398BA 0E:98AA: 60        RTS
bra_98AB:
C - - - - - 0x0398BB 0E:98AB: C9 05     CMP #$05
C - - - - - 0x0398BD 0E:98AD: 90 0A     BCC bra_98B9
C - - - - - 0x0398BF 0E:98AF: A9 05     LDA #$05
C - - - - - 0x0398C1 0E:98B1: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x0398C4 0E:98B4: A9 00     LDA #$00
C - - - - - 0x0398C6 0E:98B6: 8D 37 05  STA ram_plr_spd_Y_lo
bra_98B9:
C - - - - - 0x0398C9 0E:98B9: A9 01     LDA #$01
C - - - - - 0x0398CB 0E:98BB: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x0398CE 0E:98BE: 60        RTS



loc_98BF:
C D 0 - - - 0x0398CF 0E:98BF: AD 65 05  LDA ram_plr_state
C - - - - - 0x0398D2 0E:98C2: C9 26     CMP #con_plr_state_knockback
C - - - - - 0x0398D4 0E:98C4: F0 CC     BEQ bra_9892
C - - - - - 0x0398D6 0E:98C6: A2 00     LDX #$00
ofs_036_0x0398D8_01:
C - - - - - 0x0398D8 0E:98C8: A9 00     LDA #$00
C - - - - - 0x0398DA 0E:98CA: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0398DD 0E:98CD: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0398E0 0E:98D0: BC D8 05  LDY ram_05D8_obj,X
C - - - - - 0x0398E3 0E:98D3: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0398E6 0E:98D6: D0 1C     BNE bra_98F4
C - - - - - 0x0398E8 0E:98D8: B9 74 98  LDA tbl_9874,Y
C - - - - - 0x0398EB 0E:98DB: C9 81     CMP #$81
C - - - - - 0x0398ED 0E:98DD: F0 07     BEQ bra_98E6_81
C - - - - - 0x0398EF 0E:98DF: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0398F2 0E:98E2: FE D8 05  INC ram_05D8_obj,X
C - - - - - 0x0398F5 0E:98E5: 60        RTS
bra_98E6_81:
C - - - - - 0x0398F6 0E:98E6: A9 00     LDA #$00
C - - - - - 0x0398F8 0E:98E8: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0398FB 0E:98EB: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x0398FE 0E:98EE: A9 01     LDA #$01
C - - - - - 0x039900 0E:98F0: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x039903 0E:98F3: 60        RTS
bra_98F4:
C - - - - - 0x039904 0E:98F4: B9 74 98  LDA tbl_9874,Y
C - - - - - 0x039907 0E:98F7: C9 80     CMP #$80
C - - - - - 0x039909 0E:98F9: F0 0C     BEQ bra_9907_80
C - - - - - 0x03990B 0E:98FB: DE D8 05  DEC ram_05D8_obj,X
bra_98FE:
C - - - - - 0x03990E 0E:98FE: 49 FF     EOR #$FF
C - - - - - 0x039910 0E:9900: 18        CLC
C - - - - - 0x039911 0E:9901: 69 01     ADC #$01
C - - - - - 0x039913 0E:9903: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x039916 0E:9906: 60        RTS
bra_9907_80:
C - - - - - 0x039917 0E:9907: B9 75 98  LDA tbl_9874 + $01,Y
C - - - - - 0x03991A 0E:990A: D0 F2     BNE bra_98FE    ; jmp
bra_990C:
C - - - - - 0x03991C 0E:990C: 20 69 BA  JSR sub_BA69
C - - - - - 0x03991F 0E:990F: 90 25     BCC bra_9936
C - - - - - 0x039921 0E:9911: A9 1C     LDA #con_plr_state_normal_atk_duck
C - - - - - 0x039923 0E:9913: 20 AA 94  JSR sub_94AA_set_player_state
C - - - - - 0x039926 0E:9916: 4C 36 99  JMP loc_9936



ofs_Alucard_state_9919_0A_duck:
ofs_Trevor_state_9919_0A_duck:
ofs_Sypha_state_9919_0A_duck:
C - - J - - 0x039929 0E:9919: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x03992C 0E:991C: B0 03     BCS bra_9921
C - - - - - 0x03992E 0E:991E: 4C 3A 97  JMP loc_973A
bra_9921:
C - - - - - 0x039931 0E:9921: 20 8E 91  JSR sub_918E
C - - - - - 0x039934 0E:9924: A5 26     LDA ram_btn_press
C - - - - - 0x039936 0E:9926: 29 40     AND #con_btn_B
C - - - - - 0x039938 0E:9928: F0 0C     BEQ bra_9936
C - - - - - 0x03993A 0E:992A: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03993D 0E:992D: C9 03     CMP #$03
C - - - - - 0x03993F 0E:992F: F0 DB     BEQ bra_990C
C - - - - - 0x039941 0E:9931: A9 1C     LDA #con_plr_state_normal_atk_duck
C - - - - - 0x039943 0E:9933: 20 0A 94  JSR sub_940A_set_state_and_play_whip_sound
sub_9936:
loc_9936:
bra_9936:
C D 0 - - - 0x039946 0E:9936: A5 28     LDA ram_btn_hold
C - - - - - 0x039948 0E:9938: 29 04     AND #con_btn_Down
C - - - - - 0x03994A 0E:993A: D0 05     BNE bra_9941_RTS
C - - - - - 0x03994C 0E:993C: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x03994E 0E:993E: 8D 65 05  STA ram_plr_state
bra_9941_RTS:
C - - - - - 0x039951 0E:9941: 60        RTS



ofs_Alucard_state_9942_16:
ofs_Trevor_state_9942_16:
ofs_Sypha_state_9942_16:
ofs_Grant_state_9942_16:
C - - J - - 0x039952 0E:9942: 20 89 FB  JSR sub_0x03FB99
C - - - - - 0x039955 0E:9945: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x039958 0E:9948: 30 03     BMI bra_994D
C - - - - - 0x03995A 0E:994A: 4C 9A 9B  JMP loc_9B9A
bra_994D:
C - - - - - 0x03995D 0E:994D: 4C 8E 9B  JMP loc_9B8E
- - - - - - 0x039960 0E:9950: 4C 8E 9B  JMP loc_9B8E



ofs_Alucard_state_9953_0E_move_towards_stairs:
ofs_Trevor_state_9953_0E_move_towards_stairs:
ofs_Sypha_state_9953_0E_move_towards_stairs:
ofs_Grant_state_9953_0E_move_towards_stairs:
C - - J - - 0x039963 0E:9953: AD 1D 06  LDA ram_061D_plr
C - - - - - 0x039966 0E:9956: F0 09     BEQ bra_9961
C - - - - - 0x039968 0E:9958: CE 1D 06  DEC ram_061D_plr
C - - - - - 0x03996B 0E:995B: 20 73 EF  JSR sub_0x03EF83
C - - - - - 0x03996E 0E:995E: 4C 3A 87  JMP loc_873A
bra_9961:
C - - - - - 0x039971 0E:9961: A9 10     LDA #con_plr_state_attach_to_stairs
C - - - - - 0x039973 0E:9963: 8D 65 05  STA ram_plr_state
C - - - - - 0x039976 0E:9966: 60        RTS



ofs_Alucard_state_9967_10_climb_on_stairs:
ofs_Trevor_state_9967_10_climb_on_stairs:
ofs_Sypha_state_9967_10_climb_on_stairs:
ofs_Grant_state_9967_10_climb_on_stairs:
C - - J - - 0x039977 0E:9967: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03997A 0E:996A: D0 03     BNE bra_996F
C - - - - - 0x03997C 0E:996C: 4C 9A 9B  JMP loc_9B9A
bra_996F:
C - - - - - 0x03997F 0E:996F: 4C 8E 9B  JMP loc_9B8E
bra_9972:
C - - - - - 0x039982 0E:9972: A5 28     LDA ram_btn_hold
C - - - - - 0x039984 0E:9974: 29 08     AND #con_btn_Up
C - - - - - 0x039986 0E:9976: D0 0C     BNE bra_9984
bra_9978:
C - - - - - 0x039988 0E:9978: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03998B 0E:997B: C9 03     CMP #$03
C - - - - - 0x03998D 0E:997D: F0 15     BEQ bra_9994
C - - - - - 0x03998F 0E:997F: A9 1E     LDA #con_plr_state_normal_atk_on_stairs
C - - - - - 0x039991 0E:9981: 4C 0A 94  JMP loc_940A_set_state_and_play_whip_sound
bra_9984:
C - - - - - 0x039994 0E:9984: 20 F5 B9  JSR sub_B9F5
C - - - - - 0x039997 0E:9987: 90 EF     BCC bra_9978
C - - - - - 0x039999 0E:9989: A9 24     LDA #con_plr_state_subw_atk_on_stairs
C - - - - - 0x03999B 0E:998B: 4C AA 94  JMP loc_94AA_set_player_state



ofs_Alucard_state_998E_12_idle_on_stairs:
ofs_Trevor_state_998E_12_idle_on_stairs:
ofs_Sypha_state_998E_12_idle_on_stairs:
ofs_Grant_state_998E_12_idle_on_stairs:
C - - J - - 0x03999E 0E:998E: A5 28     LDA ram_btn_hold
C - - - - - 0x0399A0 0E:9990: 29 40     AND #con_btn_B
C - - - - - 0x0399A2 0E:9992: D0 DE     BNE bra_9972
bra_9994:
C - - - - - 0x0399A4 0E:9994: A5 28     LDA ram_btn_hold
C - - - - - 0x0399A6 0E:9996: 4A        LSR
C - - - - - 0x0399A7 0E:9997: B0 1A     BCS bra_99B3_pressed_Right
C - - - - - 0x0399A9 0E:9999: 4A        LSR
C - - - - - 0x0399AA 0E:999A: B0 39     BCS bra_99D5_pressed_Left
C - - - - - 0x0399AC 0E:999C: 4A        LSR
C - - - - - 0x0399AD 0E:999D: 90 08     BCC bra_99A7
; if con_btn_Down
C - - - - - 0x0399AF 0E:999F: 20 F7 99  JSR sub_99F7
C - - - - - 0x0399B2 0E:99A2: B0 0E     BCS bra_99B2_RTS
C - - - - - 0x0399B4 0E:99A4: 4C 9A 9B  JMP loc_9B9A
bra_99A7:
C - - - - - 0x0399B7 0E:99A7: 4A        LSR
C - - - - - 0x0399B8 0E:99A8: 90 08     BCC bra_99B2_RTS
; if con_btn_Up
C - - - - - 0x0399BA 0E:99AA: 20 16 9A  JSR sub_9A16
C - - - - - 0x0399BD 0E:99AD: B0 03     BCS bra_99B2_RTS
C - - - - - 0x0399BF 0E:99AF: 4C 8E 9B  JMP loc_9B8E
bra_99B2_RTS:
C - - - - - 0x0399C2 0E:99B2: 60        RTS
bra_99B3_pressed_Right:
C - - - - - 0x0399C3 0E:99B3: A9 00     LDA #$00    ; facing right
C - - - - - 0x0399C5 0E:99B5: 8D A8 04  STA ram_plr_facing
C - - - - - 0x0399C8 0E:99B8: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x0399CB 0E:99BB: F0 0C     BEQ bra_99C9
C - - - - - 0x0399CD 0E:99BD: 20 F7 99  JSR sub_99F7
C - - - - - 0x0399D0 0E:99C0: B0 F0     BCS bra_99B2_RTS
C - - - - - 0x0399D2 0E:99C2: A2 00     LDX #$00
C - - - - - 0x0399D4 0E:99C4: A0 00     LDY #$00
C - - - - - 0x0399D6 0E:99C6: 4C AF 9B  JMP loc_9BAF
bra_99C9:
C - - - - - 0x0399D9 0E:99C9: 20 16 9A  JSR sub_9A16
C - - - - - 0x0399DC 0E:99CC: B0 E4     BCS bra_99B2_RTS
C - - - - - 0x0399DE 0E:99CE: A2 02     LDX #$02
C - - - - - 0x0399E0 0E:99D0: A0 08     LDY #$08
C - - - - - 0x0399E2 0E:99D2: 4C AF 9B  JMP loc_9BAF
bra_99D5_pressed_Left:
C - - - - - 0x0399E5 0E:99D5: A9 01     LDA #$01    ; facing left
C - - - - - 0x0399E7 0E:99D7: 8D A8 04  STA ram_plr_facing
C - - - - - 0x0399EA 0E:99DA: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x0399ED 0E:99DD: F0 0C     BEQ bra_99EB
C - - - - - 0x0399EF 0E:99DF: 20 16 9A  JSR sub_9A16
C - - - - - 0x0399F2 0E:99E2: B0 CE     BCS bra_99B2_RTS
C - - - - - 0x0399F4 0E:99E4: A2 02     LDX #$02
C - - - - - 0x0399F6 0E:99E6: A0 0C     LDY #$0C
C - - - - - 0x0399F8 0E:99E8: 4C AF 9B  JMP loc_9BAF
bra_99EB:
C - - - - - 0x0399FB 0E:99EB: 20 F7 99  JSR sub_99F7
C - - - - - 0x0399FE 0E:99EE: B0 C2     BCS bra_99B2_RTS
C - - - - - 0x039A00 0E:99F0: A2 00     LDX #$00
C - - - - - 0x039A02 0E:99F2: A0 04     LDY #$04
C - - - - - 0x039A04 0E:99F4: 4C AF 9B  JMP loc_9BAF



sub_99F7:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x039A07 0E:99F7: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039A0A 0E:99FA: C9 D7     CMP #$D7
C - - - - - 0x039A0C 0E:99FC: 90 16     BCC bra_9A14
- - - - - - 0x039A0E 0E:99FE: A4 68     LDY ram_0068
- - - - - - 0x039A10 0E:9A00: 10 12     BPL bra_9A14
- - - - - - 0x039A12 0E:9A02: A5 57     LDA ram_cam_pos_hi
- - - - - - 0x039A14 0E:9A04: C5 71     CMP ram_0071_blk_config
- - - - - - 0x039A16 0E:9A06: D0 06     BNE bra_9A0E
- - - - - - 0x039A18 0E:9A08: A5 56     LDA ram_cam_pos_lo
- - - - - - 0x039A1A 0E:9A0A: C9 30     CMP #$30
- - - - - - 0x039A1C 0E:9A0C: F0 06     BEQ bra_9A14
bra_9A0E:
- - - - - - 0x039A1E 0E:9A0E: C0 82     CPY #$82
- - - - - - 0x039A20 0E:9A10: B0 02     BCS bra_9A14
- - - - - - 0x039A22 0E:9A12: 38        SEC
- - - - - - 0x039A23 0E:9A13: 60        RTS
bra_9A14:
C - - - - - 0x039A24 0E:9A14: 18        CLC
C - - - - - 0x039A25 0E:9A15: 60        RTS



sub_9A16:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x039A26 0E:9A16: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039A29 0E:9A19: C9 37     CMP #$37
C - - - - - 0x039A2B 0E:9A1B: B0 F7     BCS bra_9A14
C - - - - - 0x039A2D 0E:9A1D: A4 68     LDY ram_0068
C - - - - - 0x039A2F 0E:9A1F: 10 F3     BPL bra_9A14
- - - - - - 0x039A31 0E:9A21: A5 57     LDA ram_cam_pos_hi
- - - - - - 0x039A33 0E:9A23: 05 56     ORA ram_cam_pos_lo
- - - - - - 0x039A35 0E:9A25: F0 ED     BEQ bra_9A14
- - - - - - 0x039A37 0E:9A27: C0 82     CPY #$82
- - - - - - 0x039A39 0E:9A29: B0 E9     BCS bra_9A14
- - - - - - 0x039A3B 0E:9A2B: 38        SEC
- - - - - - 0x039A3C 0E:9A2C: 60        RTS



sub_9A2D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x039A3D 0E:9A2D: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039A40 0E:9A30: AE 20 05  LDX ram_plr_spd_Y_hi
C - - - - - 0x039A43 0E:9A33: 30 10     BMI bra_9A45
C - - - - - 0x039A45 0E:9A35: A6 68     LDX ram_0068
C - - - - - 0x039A47 0E:9A37: 30 06     BMI bra_9A3F
C - - - - - 0x039A49 0E:9A39: C9 D3     CMP #$D3
C - - - - - 0x039A4B 0E:9A3B: B0 22     BCS bra_9A5F
C - - - - - 0x039A4D 0E:9A3D: 18        CLC
C - - - - - 0x039A4E 0E:9A3E: 60        RTS
bra_9A3F:
C - - - - - 0x039A4F 0E:9A3F: C9 D6     CMP #$D6
C - - - - - 0x039A51 0E:9A41: B0 2A     BCS bra_9A6D
C - - - - - 0x039A53 0E:9A43: 18        CLC
C - - - - - 0x039A54 0E:9A44: 60        RTS
bra_9A45:
C - - - - - 0x039A55 0E:9A45: A6 68     LDX ram_0068
C - - - - - 0x039A57 0E:9A47: 30 06     BMI bra_9A4F
C - - - - - 0x039A59 0E:9A49: C9 29     CMP #$29
C - - - - - 0x039A5B 0E:9A4B: 90 08     BCC bra_9A55
C - - - - - 0x039A5D 0E:9A4D: 18        CLC
C - - - - - 0x039A5E 0E:9A4E: 60        RTS
bra_9A4F:
C - - - - - 0x039A5F 0E:9A4F: C9 34     CMP #$34
C - - - - - 0x039A61 0E:9A51: 90 2E     BCC bra_9A81
bra_9A53:
C - - - - - 0x039A63 0E:9A53: 18        CLC
C - - - - - 0x039A64 0E:9A54: 60        RTS
bra_9A55:
C - - - - - 0x039A65 0E:9A55: A5 2A     LDA ram_002A_script
C - - - - - 0x039A67 0E:9A57: C9 10     CMP #con_002A_10
C - - - - - 0x039A69 0E:9A59: D0 04     BNE bra_9A5F
C - - - - - 0x039A6B 0E:9A5B: E6 6B     INC ram_006B_subscript
C - - - - - 0x039A6D 0E:9A5D: D0 04     BNE bra_9A63
bra_9A5F:
C - - - - - 0x039A6F 0E:9A5F: A9 06     LDA #con_002A_06
C - - - - - 0x039A71 0E:9A61: 85 2A     STA ram_002A_script
bra_9A63:
C - - - - - 0x039A73 0E:9A63: A9 96     LDA #con_plr_state_16 + $80
C - - - - - 0x039A75 0E:9A65: 8D 65 05  STA ram_plr_state
C - - - - - 0x039A78 0E:9A68: 20 85 FB  JSR sub_0x03FB95
C - - - - - 0x039A7B 0E:9A6B: 38        SEC
C - - - - - 0x039A7C 0E:9A6C: 60        RTS
bra_9A6D:
C - - - - - 0x039A7D 0E:9A6D: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x039A7F 0E:9A6F: C5 71     CMP ram_0071_blk_config
C - - - - - 0x039A81 0E:9A71: D0 06     BNE bra_9A79
C - - - - - 0x039A83 0E:9A73: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x039A85 0E:9A75: C9 30     CMP #$30
C - - - - - 0x039A87 0E:9A77: F0 E6     BEQ bra_9A5F
bra_9A79:
- - - - - - 0x039A89 0E:9A79: A5 68     LDA ram_0068
- - - - - - 0x039A8B 0E:9A7B: C9 83     CMP #$83
- - - - - - 0x039A8D 0E:9A7D: D0 D4     BNE bra_9A53
- - - - - - 0x039A8F 0E:9A7F: 38        SEC
- - - - - - 0x039A90 0E:9A80: 60        RTS
bra_9A81:
C - - - - - 0x039A91 0E:9A81: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x039A93 0E:9A83: 05 57     ORA ram_cam_pos_hi
C - - - - - 0x039A95 0E:9A85: F0 D8     BEQ bra_9A5F
- - - - - - 0x039A97 0E:9A87: A5 68     LDA ram_0068
- - - - - - 0x039A99 0E:9A89: C9 82     CMP #$82
- - - - - - 0x039A9B 0E:9A8B: F0 04     BEQ bra_9A91
- - - - - - 0x039A9D 0E:9A8D: C9 84     CMP #$84
- - - - - - 0x039A9F 0E:9A8F: D0 C2     BNE bra_9A53
bra_9A91:
- - - - - - 0x039AA1 0E:9A91: 38        SEC
- - - - - - 0x039AA2 0E:9A92: 60        RTS



ofs_Alucard_state_9A93_14_move_on_stairs:
ofs_Trevor_state_9A93_14_move_on_stairs:
ofs_Sypha_state_9A93_14_move_on_stairs:
ofs_Grant_state_9A93_14_move_on_stairs:
C - - J - - 0x039AA3 0E:9A93: 20 2D 9A  JSR sub_9A2D
C - - - - - 0x039AA6 0E:9A96: 90 01     BCC bra_9A99
C - - - - - 0x039AA8 0E:9A98: 60        RTS
bra_9A99:
C - - - - - 0x039AA9 0E:9A99: 20 40 87  JSR sub_8740
C - - - - - 0x039AAC 0E:9A9C: 20 12 87  JSR sub_8712
C - - - - - 0x039AAF 0E:9A9F: AD 1D 06  LDA ram_061D_plr
C - - - - - 0x039AB2 0E:9AA2: F0 4C     BEQ bra_9AF0
C - - - - - 0x039AB4 0E:9AA4: CE 1D 06  DEC ram_061D_plr
C - - - - - 0x039AB7 0E:9AA7: AD 7C 05  LDA ram_plr_anim_timer
C - - - - - 0x039ABA 0E:9AAA: F0 04     BEQ bra_9AB0
C - - - - - 0x039ABC 0E:9AAC: CE 7C 05  DEC ram_plr_anim_timer
C - - - - - 0x039ABF 0E:9AAF: 60        RTS
bra_9AB0:
sub_0x039AC0:
C - - - - - 0x039AC0 0E:9AB0: AD 4E 05  LDA ram_plr_id
C - - - - - 0x039AC3 0E:9AB3: C9 02     CMP #$02
C - - - - - 0x039AC5 0E:9AB5: F0 15     BEQ bra_9ACC
C - - - - - 0x039AC7 0E:9AB7: AD 93 05  LDA ram_plr_anim_cnt
C - - - - - 0x039ACA 0E:9ABA: 0A        ASL
C - - - - - 0x039ACB 0E:9ABB: A8        TAY
C - - - - - 0x039ACC 0E:9ABC: B9 EC 9B  LDA tbl_9BEC,Y
C - - - - - 0x039ACF 0E:9ABF: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039AD2 0E:9AC2: B9 ED 9B  LDA tbl_9BEC + $01,Y
C - - - - - 0x039AD5 0E:9AC5: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x039AD8 0E:9AC8: EE 93 05  INC ram_plr_anim_cnt
C - - - - - 0x039ADB 0E:9ACB: 60        RTS
bra_9ACC:
C - - - - - 0x039ADC 0E:9ACC: AD 93 05  LDA ram_plr_anim_cnt
C - - - - - 0x039ADF 0E:9ACF: 0A        ASL
C - - - - - 0x039AE0 0E:9AD0: A8        TAY
C - - - - - 0x039AE1 0E:9AD1: B9 F4 9B  LDA tbl_9BF4,Y
C - - - - - 0x039AE4 0E:9AD4: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039AE7 0E:9AD7: B9 F5 9B  LDA tbl_9BF4 + $01,Y
C - - - - - 0x039AEA 0E:9ADA: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x039AED 0E:9ADD: EE 93 05  INC ram_plr_anim_cnt
C - - - - - 0x039AF0 0E:9AE0: 60        RTS



bra_9AE1:
C - - - - - 0x039AF1 0E:9AE1: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039AF4 0E:9AE4: 38        SEC
C - - - - - 0x039AF5 0E:9AE5: E9 04     SBC #$04
C - - - - - 0x039AF7 0E:9AE7: 4C 06 9B  JMP loc_9B06



bra_9AEA:
C - - - - - 0x039AFA 0E:9AEA: 18        CLC
C - - - - - 0x039AFB 0E:9AEB: 69 07     ADC #$07
C - - - - - 0x039AFD 0E:9AED: 4C 18 9B  JMP loc_9B18



bra_9AF0:
C - - - - - 0x039B00 0E:9AF0: A9 00     LDA #$00
C - - - - - 0x039B02 0E:9AF2: 8D C4 04  STA ram_plr_pos_X_lo
C - - - - - 0x039B05 0E:9AF5: 8D DB 04  STA ram_plr_pos_Y_lo
C - - - - - 0x039B08 0E:9AF8: A4 68     LDY ram_0068
C - - - - - 0x039B0A 0E:9AFA: 10 1F     BPL bra_9B1B
C - - - - - 0x039B0C 0E:9AFC: AC 4E 05  LDY ram_plr_id
C - - - - - 0x039B0F 0E:9AFF: C0 02     CPY #$02
C - - - - - 0x039B11 0E:9B01: F0 DE     BEQ bra_9AE1
C - - - - - 0x039B13 0E:9B03: AD 1C 04  LDA ram_plr_pos_Y_hi
loc_9B06:
C D 0 - - - 0x039B16 0E:9B06: 18        CLC
C - - - - - 0x039B17 0E:9B07: 69 03     ADC #$03
C - - - - - 0x039B19 0E:9B09: 18        CLC
C - - - - - 0x039B1A 0E:9B0A: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x039B1C 0E:9B0C: 29 F8     AND #$F8
C - - - - - 0x039B1E 0E:9B0E: 38        SEC
C - - - - - 0x039B1F 0E:9B0F: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x039B21 0E:9B11: C0 02     CPY #$02
C - - - - - 0x039B23 0E:9B13: F0 D5     BEQ bra_9AEA
C - - - - - 0x039B25 0E:9B15: 18        CLC
C - - - - - 0x039B26 0E:9B16: 69 03     ADC #$03
loc_9B18:
C D 0 - - - 0x039B28 0E:9B18: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_9B1B:
C - - - - - 0x039B2B 0E:9B1B: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x039B2E 0E:9B1E: 30 44     BMI bra_9B64
C - - - - - 0x039B30 0E:9B20: A2 12     LDX #$12
C - - - - - 0x039B32 0E:9B22: A9 02     LDA #$02
C - - - - - 0x039B34 0E:9B24: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B37 0E:9B27: D0 14     BNE bra_9B3D
C - - - - - 0x039B39 0E:9B29: A2 12     LDX #$12
C - - - - - 0x039B3B 0E:9B2B: A9 FE     LDA #$FE
C - - - - - 0x039B3D 0E:9B2D: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B40 0E:9B30: F0 56     BEQ bra_9B88
C - - - - - 0x039B42 0E:9B32: A2 1A     LDX #$1A
C - - - - - 0x039B44 0E:9B34: A9 FE     LDA #$FE
C - - - - - 0x039B46 0E:9B36: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B49 0E:9B39: F0 4D     BEQ bra_9B88
C - - - - - 0x039B4B 0E:9B3B: D0 09     BNE bra_9B46    ; jmp
bra_9B3D:
C - - - - - 0x039B4D 0E:9B3D: A2 1A     LDX #$1A
C - - - - - 0x039B4F 0E:9B3F: A9 02     LDA #$02
C - - - - - 0x039B51 0E:9B41: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B54 0E:9B44: F0 42     BEQ bra_9B88
bra_9B46:
C - - - - - 0x039B56 0E:9B46: 20 02 8A  JSR sub_8A02
C - - - - - 0x039B59 0E:9B49: AD 4E 05  LDA ram_plr_id
C - - - - - 0x039B5C 0E:9B4C: C9 02     CMP #$02
C - - - - - 0x039B5E 0E:9B4E: D0 09     BNE bra_9B59
C - - - - - 0x039B60 0E:9B50: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039B63 0E:9B53: 18        CLC
C - - - - - 0x039B64 0E:9B54: 69 04     ADC #$04
C - - - - - 0x039B66 0E:9B56: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_9B59:
C - - - - - 0x039B69 0E:9B59: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x039B6B 0E:9B5B: 8D 65 05  STA ram_plr_state
C - - - - - 0x039B6E 0E:9B5E: A9 02     LDA #$02
C - - - - - 0x039B70 0E:9B60: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039B73 0E:9B63: 60        RTS
bra_9B64:
C - - - - - 0x039B74 0E:9B64: A2 12     LDX #$12
C - - - - - 0x039B76 0E:9B66: A9 02     LDA #$02
C - - - - - 0x039B78 0E:9B68: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B7B 0E:9B6B: D0 12     BNE bra_9B7F
C - - - - - 0x039B7D 0E:9B6D: A2 12     LDX #$12
C - - - - - 0x039B7F 0E:9B6F: A9 FE     LDA #$FE
C - - - - - 0x039B81 0E:9B71: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B84 0E:9B74: F0 12     BEQ bra_9B88
C - - - - - 0x039B86 0E:9B76: A2 0A     LDX #$0A
C - - - - - 0x039B88 0E:9B78: A9 FE     LDA #$FE
C - - - - - 0x039B8A 0E:9B7A: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B8D 0E:9B7D: F0 C7     BEQ bra_9B46
bra_9B7F:
C - - - - - 0x039B8F 0E:9B7F: A2 0A     LDX #$0A
C - - - - - 0x039B91 0E:9B81: A9 02     LDA #$02
C - - - - - 0x039B93 0E:9B83: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039B96 0E:9B86: F0 BE     BEQ bra_9B46
bra_9B88:
C - - - - - 0x039B98 0E:9B88: A9 12     LDA #con_plr_state_idle_on_stairs
C - - - - - 0x039B9A 0E:9B8A: 8D 65 05  STA ram_plr_state
C - - - - - 0x039B9D 0E:9B8D: 60        RTS



loc_9B8E:
sub_0x039B9E:
C D 0 - - - 0x039B9E 0E:9B8E: A2 02     LDX #$02
C - - - - - 0x039BA0 0E:9B90: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x039BA3 0E:9B93: 8D A8 04  STA ram_plr_facing
C - - - - - 0x039BA6 0E:9B96: A0 08     LDY #$08
C - - - - - 0x039BA8 0E:9B98: D0 0C     BNE bra_9BA6    ; jmp



loc_9B9A:
sub_0x039BAA:
C D 0 - - - 0x039BAA 0E:9B9A: A2 00     LDX #$00
C - - - - - 0x039BAC 0E:9B9C: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x039BAF 0E:9B9F: 49 01     EOR #$01
C - - - - - 0x039BB1 0E:9BA1: 8D A8 04  STA ram_plr_facing
C - - - - - 0x039BB4 0E:9BA4: A0 00     LDY #$00
bra_9BA6:
C - - - - - 0x039BB6 0E:9BA6: AD A8 04  LDA ram_plr_facing
C - - - - - 0x039BB9 0E:9BA9: F0 04     BEQ bra_9BAF_facing_right
C - - - - - 0x039BBB 0E:9BAB: C8        INY
C - - - - - 0x039BBC 0E:9BAC: C8        INY
C - - - - - 0x039BBD 0E:9BAD: C8        INY
C - - - - - 0x039BBE 0E:9BAE: C8        INY
bra_9BAF_facing_right:
loc_9BAF:
sub_0x039BBF:
C D 0 - - - 0x039BBF 0E:9BAF: 8E 93 05  STX ram_plr_anim_cnt
C - - - - - 0x039BC2 0E:9BB2: B9 DC 9B  LDA tbl_9BDC,Y
C - - - - - 0x039BC5 0E:9BB5: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039BC8 0E:9BB8: B9 DD 9B  LDA tbl_9BDC + $01,Y
C - - - - - 0x039BCB 0E:9BBB: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039BCE 0E:9BBE: B9 DE 9B  LDA tbl_9BDC + $02,Y
C - - - - - 0x039BD1 0E:9BC1: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x039BD4 0E:9BC4: B9 DF 9B  LDA tbl_9BDC + $03,Y
C - - - - - 0x039BD7 0E:9BC7: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x039BDA 0E:9BCA: A9 01     LDA #$01
C - - - - - 0x039BDC 0E:9BCC: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x039BDF 0E:9BCF: AD DB 9B  LDA tbl_9BDB_0F
C - - - - - 0x039BE2 0E:9BD2: 8D 1D 06  STA ram_061D_plr
C - - - - - 0x039BE5 0E:9BD5: A9 14     LDA #con_plr_state_move_on_stairs
C - - - - - 0x039BE7 0E:9BD7: 8D 65 05  STA ram_plr_state
C - - - - - 0x039BEA 0E:9BDA: 60        RTS



tbl_9BDB_0F:
; bzk optimize
- D 0 - - - 0x039BEB 0E:9BDB: 0F        .byte $0F   ; 



tbl_9BDC:
; 00 
- D 0 - - - 0x039BEC 0E:9BDC: 00 80     .dbyt $0080 ; spd_X
- D 0 - - - 0x039BEE 0E:9BDE: 00 80     .dbyt $0080 ; spd_Y
; 01 
- D 0 - - - 0x039BF0 0E:9BE0: FF 80     .dbyt $FF80 ; spd_X
- D 0 - - - 0x039BF2 0E:9BE2: 00 80     .dbyt $0080 ; spd_Y
; 02 
- D 0 - - - 0x039BF4 0E:9BE4: 00 80     .dbyt $0080 ; spd_X
- D 0 - - - 0x039BF6 0E:9BE6: FF 80     .dbyt $FF80 ; spd_Y
; 03 
- D 0 - - - 0x039BF8 0E:9BE8: FF 80     .dbyt $FF80 ; spd_X
- D 0 - - - 0x039BFA 0E:9BEA: FF 80     .dbyt $FF80 ; spd_Y



tbl_9BEC:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 0 - - - 0x039BFC 0E:9BEC: 04        .byte $04, $07   ; 00 
- D 0 - - - 0x039BFE 0E:9BEE: 0A        .byte $0A, $FF   ; 01 
- D 0 - - - 0x039C00 0E:9BF0: 04        .byte $04, $07   ; 02 
- D 0 - - - 0x039C02 0E:9BF2: 0C        .byte $0C, $FF   ; 03 



tbl_9BF4:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 0 - - - 0x039C04 0E:9BF4: 48        .byte $48, $07   ; 00 
- D 0 - - - 0x039C06 0E:9BF6: 0A        .byte $0A, $FF   ; 01 
- D 0 - - - 0x039C08 0E:9BF8: 48        .byte $48, $07   ; 02 
- D 0 - - - 0x039C0A 0E:9BFA: 0C        .byte $0C, $FF   ; 03 



sub_9BFC_Sypha_state_handler:
; con_player_Sypha
; see con_plr_state
C - - - - - 0x039C0C 0E:9BFC: AC 65 05  LDY ram_plr_state
C - - - - - 0x039C0F 0E:9BFF: 20 86 E8  JSR sub_0x03E896_jump_to_pointers_after_JSR_Y
- D 0 - I - 0x039C12 0E:9C02: C5 8A     .word ofs_Sypha_state_8AC5_00
- D 0 - I - 0x039C14 0E:9C04: 38 95     .word ofs_Sypha_state_9538_02_idle_on_ground
- D 0 - I - 0x039C16 0E:9C06: 60 96     .word ofs_Sypha_state_9660_04_move_on_ground
- D 0 - I - 0x039C18 0E:9C08: 1D 96     .word ofs_Sypha_state_961D_06
- D 0 - I - 0x039C1A 0E:9C0A: 70 97     .word ofs_Sypha_state_9770_08_jump
- D 0 - I - 0x039C1C 0E:9C0C: 19 99     .word ofs_Sypha_state_9919_0A_duck
- D 0 - I - 0x039C1E 0E:9C0E: 70 97     .word ofs_Sypha_state_9770_0C_fall
- D 0 - I - 0x039C20 0E:9C10: 53 99     .word ofs_Sypha_state_9953_0E_move_towards_stairs
- D 0 - I - 0x039C22 0E:9C12: 67 99     .word ofs_Sypha_state_9967_10_climb_on_stairs
- D 0 - I - 0x039C24 0E:9C14: 8E 99     .word ofs_Sypha_state_998E_12_idle_on_stairs
- D 0 - I - 0x039C26 0E:9C16: 93 9A     .word ofs_Sypha_state_9A93_14_move_on_stairs
- D 0 - I - 0x039C28 0E:9C18: 42 99     .word ofs_Sypha_state_9942_16
- D 0 - I - 0x039C2A 0E:9C1A: 18 94     .word ofs_Sypha_state_9418_18_normal_attack_on_ground
- D 0 - I - 0x039C2C 0E:9C1C: 3A 94     .word ofs_Sypha_state_943A_1A_normal_attack_jump
- D 0 - I - 0x039C2E 0E:9C1E: 65 94     .word ofs_Sypha_state_9465_1C_normal_attack_duck
- D 0 - I - 0x039C30 0E:9C20: 9E 94     .word ofs_Sypha_state_949E_1E_normal_attack_on_stairs
- D 0 - I - 0x039C32 0E:9C22: 32 9C     .word ofs_Sypha_state_9C32_20_subweapon_attack_on_ground
- D 0 - I - 0x039C34 0E:9C24: 35 9C     .word ofs_Sypha_state_9C35_22_subweapon_attack_jump
- D 0 - I - 0x039C36 0E:9C26: 38 9C     .word ofs_Sypha_state_9C38_24_subweapon_attack_on_stairs
- D 0 - I - 0x039C38 0E:9C28: 1C 83     .word ofs_Sypha_state_831C_26_knockback
- D 0 - I - 0x039C3A 0E:9C2A: B1 93     .word ofs_Sypha_state_93B1_28
- - - - - - 0x039C3C 0E:9C2C: B1 93     .word ofs_Sypha_state_93B1_2A
- D 0 - I - 0x039C3E 0E:9C2E: 57 8B     .word ofs_Sypha_state_8B57_2C
- D 0 - I - 0x039C40 0E:9C30: DE 8A     .word ofs_Sypha_state_8ADE_2E_death



ofs_Sypha_state_9C32_20_subweapon_attack_on_ground:
; bzk optimize
C - - J - - 0x039C42 0E:9C32: 4C B8 94  JMP loc_94B8



ofs_Sypha_state_9C35_22_subweapon_attack_jump:
; bzk optimize
C - - J - - 0x039C45 0E:9C35: 4C D4 94  JMP loc_94D4



ofs_Sypha_state_9C38_24_subweapon_attack_on_stairs:
; bzk optimize
C - - J - - 0x039C48 0E:9C38: 4C FF 94  JMP loc_94FF



sub_9C3B_Grant_state_handler:
; con_player_Grant
; see con_plr_state
C - - - - - 0x039C4B 0E:9C3B: AC 65 05  LDY ram_plr_state
C - - - - - 0x039C4E 0E:9C3E: 20 86 E8  JSR sub_0x03E896_jump_to_pointers_after_JSR_Y
- D 0 - I - 0x039C51 0E:9C41: C5 8A     .word ofs_Grant_state_8AC5_00
- D 0 - I - 0x039C53 0E:9C43: 38 95     .word ofs_Grant_state_9538_02_idle_on_ground
- D 0 - I - 0x039C55 0E:9C45: 3B 9D     .word ofs_Grant_state_9D3B_04_move_on_ground
- D 0 - I - 0x039C57 0E:9C47: 92 9E     .word ofs_Grant_state_9E92_06
- D 0 - I - 0x039C59 0E:9C49: 3C 9F     .word ofs_Grant_state_9F3C_08_jump
- D 0 - I - 0x039C5B 0E:9C4B: D5 9C     .word ofs_Grant_state_9CD5_0A_duck
- D 0 - I - 0x039C5D 0E:9C4D: 3C 9F     .word ofs_Grant_state_9F3C_0C_fall
- D 0 - I - 0x039C5F 0E:9C4F: 53 99     .word ofs_Grant_state_9953_0E_move_towards_stairs
- D 0 - I - 0x039C61 0E:9C51: 67 99     .word ofs_Grant_state_9967_10_climb_on_stairs
- D 0 - I - 0x039C63 0E:9C53: 8E 99     .word ofs_Grant_state_998E_12_idle_on_stairs
- D 0 - I - 0x039C65 0E:9C55: 93 9A     .word ofs_Grant_state_9A93_14_move_on_stairs
- D 0 - I - 0x039C67 0E:9C57: 42 99     .word ofs_Grant_state_9942_16
- D 0 - I - 0x039C69 0E:9C59: 8B 9C     .word ofs_Grant_state_9C8B_18_normal_attack_on_ground
- D 0 - I - 0x039C6B 0E:9C5B: EB 9E     .word ofs_Grant_state_9EEB_1A_normal_attack_jump
- D 0 - I - 0x039C6D 0E:9C5D: 9F 9C     .word ofs_Grant_state_9C9F_1C_normal_attack_duck
- D 0 - I - 0x039C6F 0E:9C5F: 9E 94     .word ofs_Grant_state_949E_1E_normal_attack_on_stairs
- D 0 - I - 0x039C71 0E:9C61: B8 94     .word ofs_Grant_state_94B8_20_subweapon_attack_on_ground
- D 0 - I - 0x039C73 0E:9C63: C0 9E     .word ofs_Grant_state_9EC0_22_subweapon_attack_jump
- - - - - - 0x039C75 0E:9C65: FF 94     .word ofs_Grant_state_94FF_24_subweapon_attack_on_stairs
- D 0 - I - 0x039C77 0E:9C67: 1C 83     .word ofs_Grant_state_831C_26_knockback
- - - - - - 0x039C79 0E:9C69: B1 93     .word ofs_Grant_state_93B1_28
- - - - - - 0x039C7B 0E:9C6B: B1 93     .word ofs_Grant_state_93B1_2A
- D 0 - I - 0x039C7D 0E:9C6D: 57 8B     .word ofs_Grant_state_8B57_2C
- D 0 - I - 0x039C7F 0E:9C6F: DE 8A     .word ofs_Grant_state_8ADE_2E_death
- D 0 - I - 0x039C81 0E:9C71: 3B A2     .word ofs_Grant_state_A23B_30
- D 0 - I - 0x039C83 0E:9C73: 65 A3     .word ofs_Grant_state_A365_32
- D 0 - I - 0x039C85 0E:9C75: 2E A4     .word ofs_Grant_state_A42E_34
- D 0 - I - 0x039C87 0E:9C77: 41 A4     .word ofs_Grant_state_A441_36
- D 0 - I - 0x039C89 0E:9C79: 64 A4     .word ofs_Grant_state_A464_38
- D 0 - I - 0x039C8B 0E:9C7B: 77 A4     .word ofs_Grant_state_A477_3A
- D 0 - I - 0x039C8D 0E:9C7D: 80 A4     .word ofs_Grant_state_A480_3C
- D 0 - I - 0x039C8F 0E:9C7F: 93 A4     .word ofs_Grant_state_A493_3E
- - - - - - 0x039C91 0E:9C81: 9F A4     .word ofs_Grant_state_A49F_40
- - - - - - 0x039C93 0E:9C83: B2 A4     .word ofs_Grant_state_A4B2_42
- D 0 - I - 0x039C95 0E:9C85: 88 A1     .word ofs_Grant_state_A188_44
- D 0 - I - 0x039C97 0E:9C87: 26 A2     .word ofs_Grant_state_A226_46
- - - - - - 0x039C99 0E:9C89: 33 A3     .word ofs_Grant_state_A333_48



ofs_Grant_state_9C8B_18_normal_attack_on_ground:
C - - J - - 0x039C9B 0E:9C8B: 20 1D 84  JSR sub_841D
C - - - - - 0x039C9E 0E:9C8E: B0 08     BCS bra_9C98
bra_9C90:
C - - - - - 0x039CA0 0E:9C90: A9 00     LDA #$00
C - - - - - 0x039CA2 0E:9C92: 8D 13 04  STA ram_obj_anim_id + $13
C - - - - - 0x039CA5 0E:9C95: 4C 8D A0  JMP loc_A08D
bra_9C98:
C - - - - - 0x039CA8 0E:9C98: 20 8E 91  JSR sub_918E
C - - - - - 0x039CAB 0E:9C9B: 4C 28 94  JMP loc_9428


; bzk garbage
- - - - - - 0x039CAE 0E:9C9E: 60        RTS



ofs_Grant_state_9C9F_1C_normal_attack_duck:
C - - J - - 0x039CAF 0E:9C9F: 20 1D 84  JSR sub_841D
C - - - - - 0x039CB2 0E:9CA2: 90 EC     BCC bra_9C90
C - - - - - 0x039CB4 0E:9CA4: 20 8E 91  JSR sub_918E
C - - - - - 0x039CB7 0E:9CA7: 20 EB 9C  JSR sub_9CEB
C - - - - - 0x039CBA 0E:9CAA: AD 65 05  LDA ram_plr_state
C - - - - - 0x039CBD 0E:9CAD: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x039CBF 0E:9CAF: D0 13     BNE bra_9CC4
C - - - - - 0x039CC1 0E:9CB1: A9 18     LDA #con_plr_state_normal_atk_on_ground
C - - - - - 0x039CC3 0E:9CB3: 8D 65 05  STA ram_plr_state
C - - - - - 0x039CC6 0E:9CB6: 20 28 94  JSR sub_9428
C - - - - - 0x039CC9 0E:9CB9: AD 65 05  LDA ram_plr_state
C - - - - - 0x039CCC 0E:9CBC: C9 18     CMP #con_plr_state_normal_atk_on_ground
C - - - - - 0x039CCE 0E:9CBE: D0 03     BNE bra_9CC3_RTS
C - - - - - 0x039CD0 0E:9CC0: 20 CB BE  JSR sub_BECB
bra_9CC3_RTS:
C - - - - - 0x039CD3 0E:9CC3: 60        RTS
bra_9CC4:
C - - - - - 0x039CD4 0E:9CC4: 20 89 BC  JSR sub_BC89
; bzk optimize, BCC to RTS at 0x039CE4
C - - - - - 0x039CD7 0E:9CC7: B0 01     BCS bra_9CCA
C - - - - - 0x039CD9 0E:9CC9: 60        RTS
bra_9CCA:
C - - - - - 0x039CDA 0E:9CCA: A9 0A     LDA #con_plr_state_duck
C - - - - - 0x039CDC 0E:9CCC: 8D 65 05  STA ram_plr_state
C - - - - - 0x039CDF 0E:9CCF: A9 0E     LDA #$0E
C - - - - - 0x039CE1 0E:9CD1: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039CE4 0E:9CD4: 60        RTS



ofs_Grant_state_9CD5_0A_duck:
C - - J - - 0x039CE5 0E:9CD5: 20 1D 84  JSR sub_841D
C - - - - - 0x039CE8 0E:9CD8: B0 03     BCS bra_9CDD
- - - - - - 0x039CEA 0E:9CDA: 4C 8D A0  JMP loc_A08D
bra_9CDD:
C - - - - - 0x039CED 0E:9CDD: 20 8E 91  JSR sub_918E
C - - - - - 0x039CF0 0E:9CE0: A5 26     LDA ram_btn_press
C - - - - - 0x039CF2 0E:9CE2: 29 40     AND #con_btn_B
C - - - - - 0x039CF4 0E:9CE4: F0 05     BEQ bra_9CEB
C - - - - - 0x039CF6 0E:9CE6: A9 1C     LDA #con_plr_state_normal_atk_duck
C - - - - - 0x039CF8 0E:9CE8: 20 0A 94  JSR sub_940A_set_state_and_play_whip_sound
sub_9CEB:
bra_9CEB:
C - - - - - 0x039CFB 0E:9CEB: A5 28     LDA ram_btn_hold
C - - - - - 0x039CFD 0E:9CED: 29 04     AND #con_btn_Down
C - - - - - 0x039CFF 0E:9CEF: D0 06     BNE bra_9CF7
C - - - - - 0x039D01 0E:9CF1: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x039D03 0E:9CF3: 8D 65 05  STA ram_plr_state
bra_9CF6_RTS:
C - - - - - 0x039D06 0E:9CF6: 60        RTS
bra_9CF7:
C - - - - - 0x039D07 0E:9CF7: AD 65 05  LDA ram_plr_state
C - - - - - 0x039D0A 0E:9CFA: C9 0A     CMP #con_plr_state_duck
C - - - - - 0x039D0C 0E:9CFC: D0 F8     BNE bra_9CF6_RTS
C - - - - - 0x039D0E 0E:9CFE: 20 C4 83  JSR sub_83C4
C - - - - - 0x039D11 0E:9D01: 90 F3     BCC bra_9CF6_RTS
C - - - - - 0x039D13 0E:9D03: 20 28 9D  JSR sub_9D28
C - - - - - 0x039D16 0E:9D06: D0 EE     BNE bra_9CF6_RTS
- - - - - - 0x039D18 0E:9D08: AD A8 04  LDA ram_plr_facing
- - - - - - 0x039D1B 0E:9D0B: 8D C1 05  STA ram_05C1_plr
- - - - - - 0x039D1E 0E:9D0E: 20 27 A5  JSR sub_A527
- - - - - - 0x039D21 0E:9D11: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x039D24 0E:9D14: 18        CLC
- - - - - - 0x039D25 0E:9D15: 69 0C     ADC #$0C
- - - - - - 0x039D27 0E:9D17: 85 D3     STA ram_00D3
- - - - - - 0x039D29 0E:9D19: A9 40     LDA #con_plr_state_40
- - - - - - 0x039D2B 0E:9D1B: 8D 65 05  STA ram_plr_state
- - - - - - 0x039D2E 0E:9D1E: A0 00     LDY #$00
- - - - - - 0x039D30 0E:9D20: 8C 93 05  STY ram_plr_anim_cnt
- - - - - - 0x039D33 0E:9D23: C8        INY ; 01
- - - - - - 0x039D34 0E:9D24: 8C 7C 05  STY ram_plr_anim_timer
- - - - - - 0x039D37 0E:9D27: 60        RTS



sub_9D28:
C - - - - - 0x039D38 0E:9D28: A9 05     LDA #$05
C - - - - - 0x039D3A 0E:9D2A: A2 0C     LDX #$0C
C - - - - - 0x039D3C 0E:9D2C: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039D3F 0E:9D2F: F0 04     BEQ bra_9D35
- - - - - - 0x039D41 0E:9D31: A9 01     LDA #$01    ; facing left
- - - - - - 0x039D43 0E:9D33: D0 02     BNE bra_9D37    ; jmp
bra_9D35:
C - - - - - 0x039D45 0E:9D35: A9 00     LDA #$00    ; facing right
bra_9D37:
C - - - - - 0x039D47 0E:9D37: CD A8 04  CMP ram_plr_facing
C - - - - - 0x039D4A 0E:9D3A: 60        RTS



ofs_Grant_state_9D3B_04_move_on_ground:
C - - J - - 0x039D4B 0E:9D3B: 20 1D 84  JSR sub_841D
C - - - - - 0x039D4E 0E:9D3E: B0 03     BCS bra_9D43
C - - - - - 0x039D50 0E:9D40: 4C 8D A0  JMP loc_A08D
bra_9D43:
C - - - - - 0x039D53 0E:9D43: A5 26     LDA ram_btn_press
C - - - - - 0x039D55 0E:9D45: 0A        ASL
C - - - - - 0x039D56 0E:9D46: 90 03     BCC bra_9D4B    ; if not con_btn_A
C - - - - - 0x039D58 0E:9D48: 4C FF 9D  JMP loc_9DFF_pressed_A
bra_9D4B:
C - - - - - 0x039D5B 0E:9D4B: 0A        ASL
C - - - - - 0x039D5C 0E:9D4C: B0 19     BCS bra_9D67_pressed_B
C - - - - - 0x039D5E 0E:9D4E: A5 28     LDA ram_btn_hold
C - - - - - 0x039D60 0E:9D50: 4A        LSR
C - - - - - 0x039D61 0E:9D51: B0 32     BCS bra_9D85_pressed_Right
C - - - - - 0x039D63 0E:9D53: 4A        LSR
C - - - - - 0x039D64 0E:9D54: B0 66     BCS bra_9DBC_pressed_Left
C - - - - - 0x039D66 0E:9D56: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x039D68 0E:9D58: 8D 65 05  STA ram_plr_state
loc_9D5B:
C D 0 - - - 0x039D6B 0E:9D5B: 20 BC 8A  JSR sub_8ABC_clear_speed_Y
loc_9D5E:
C D 0 - - - 0x039D6E 0E:9D5E: 20 73 EF  JSR sub_0x03EF83
loc_9D61:
C D 0 - - - 0x039D71 0E:9D61: 20 3A 87  JSR sub_873A
C - - - - - 0x039D74 0E:9D64: 4C 12 87  JMP loc_8712
bra_9D67_pressed_B:
C - - - - - 0x039D77 0E:9D67: A5 28     LDA ram_btn_hold
C - - - - - 0x039D79 0E:9D69: 29 08     AND #con_btn_Up
C - - - - - 0x039D7B 0E:9D6B: D0 08     BNE bra_9D75
bra_9D6D:
C - - - - - 0x039D7D 0E:9D6D: A9 18     LDA #con_plr_state_normal_atk_on_ground
C - - - - - 0x039D7F 0E:9D6F: 20 0A 94  JSR sub_940A_set_state_and_play_whip_sound
C - - - - - 0x039D82 0E:9D72: 4C 5B 9D  JMP loc_9D5B
bra_9D75:
C - - - - - 0x039D85 0E:9D75: 20 F5 B9  JSR sub_B9F5
C - - - - - 0x039D88 0E:9D78: 90 F3     BCC bra_9D6D
C - - - - - 0x039D8A 0E:9D7A: A9 20     LDA #con_plr_state_subw_atk_on_ground
C - - - - - 0x039D8C 0E:9D7C: 20 AA 94  JSR sub_94AA_set_player_state
C - - - - - 0x039D8F 0E:9D7F: 20 BC 8A  JSR sub_8ABC_clear_speed_Y
C - - - - - 0x039D92 0E:9D82: 4C 61 9D  JMP loc_9D61
bra_9D85_pressed_Right:
C - - - - - 0x039D95 0E:9D85: A9 00     LDA #$00    ; facing right
C - - - - - 0x039D97 0E:9D87: 8D A8 04  STA ram_plr_facing
C - - - - - 0x039D9A 0E:9D8A: 20 85 8E  JSR sub_8E85
C - - - - - 0x039D9D 0E:9D8D: 90 15     BCC bra_9DA4
C - - - - - 0x039D9F 0E:9D8F: A2 00     LDX #$00
C - - - - - 0x039DA1 0E:9D91: A9 08     LDA #$08
C - - - - - 0x039DA3 0E:9D93: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039DA6 0E:9D96: D0 62     BNE bra_9DFA
C - - - - - 0x039DA8 0E:9D98: A2 F4     LDX #$F4
C - - - - - 0x039DAA 0E:9D9A: A9 08     LDA #$08
C - - - - - 0x039DAC 0E:9D9C: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039DAF 0E:9D9F: D0 59     BNE bra_9DFA
C - - - - - 0x039DB1 0E:9DA1: 4C 5E 9D  JMP loc_9D5E
bra_9DA4:
C - - - - - 0x039DB4 0E:9DA4: A2 00     LDX #$00
C - - - - - 0x039DB6 0E:9DA6: A9 08     LDA #$08
C - - - - - 0x039DB8 0E:9DA8: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039DBB 0E:9DAB: D0 6E     BNE bra_9E1B
C - - - - - 0x039DBD 0E:9DAD: A2 F4     LDX #$F4
C - - - - - 0x039DBF 0E:9DAF: A9 08     LDA #$08
C - - - - - 0x039DC1 0E:9DB1: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039DC4 0E:9DB4: D0 44     BNE bra_9DFA
C - - - - - 0x039DC6 0E:9DB6: A9 01     LDA #> $0140
C - - - - - 0x039DC8 0E:9DB8: A0 40     LDY #< $0140
C - - - - - 0x039DCA 0E:9DBA: D0 35     BNE bra_9DF1_set_spd_X    ; jmp
bra_9DBC_pressed_Left:
C - - - - - 0x039DCC 0E:9DBC: A9 01     LDA #$01    ; facing left
C - - - - - 0x039DCE 0E:9DBE: 8D A8 04  STA ram_plr_facing
C - - - - - 0x039DD1 0E:9DC1: 20 01 8F  JSR sub_8F01
C - - - - - 0x039DD4 0E:9DC4: 90 15     BCC bra_9DDB
C - - - - - 0x039DD6 0E:9DC6: A2 00     LDX #$00
C - - - - - 0x039DD8 0E:9DC8: A9 F8     LDA #$F8
C - - - - - 0x039DDA 0E:9DCA: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039DDD 0E:9DCD: D0 2B     BNE bra_9DFA
C - - - - - 0x039DDF 0E:9DCF: A2 F4     LDX #$F4
C - - - - - 0x039DE1 0E:9DD1: A9 F8     LDA #$F8
C - - - - - 0x039DE3 0E:9DD3: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039DE6 0E:9DD6: D0 22     BNE bra_9DFA
C - - - - - 0x039DE8 0E:9DD8: 4C 5E 9D  JMP loc_9D5E
bra_9DDB:
C - - - - - 0x039DEB 0E:9DDB: A2 00     LDX #$00
C - - - - - 0x039DED 0E:9DDD: A9 F8     LDA #$F8
C - - - - - 0x039DEF 0E:9DDF: 20 0B 84  JSR sub_840B
C - - - - - 0x039DF2 0E:9DE2: D0 27     BNE bra_9E0B
C - - - - - 0x039DF4 0E:9DE4: A2 F4     LDX #$F4
C - - - - - 0x039DF6 0E:9DE6: A9 F8     LDA #$F8
C - - - - - 0x039DF8 0E:9DE8: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039DFB 0E:9DEB: D0 0D     BNE bra_9DFA
C - - - - - 0x039DFD 0E:9DED: A9 FE     LDA #> $FEC0
C - - - - - 0x039DFF 0E:9DEF: A0 C0     LDY #< $FEC0
bra_9DF1_set_spd_X:
C - - - - - 0x039E01 0E:9DF1: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x039E04 0E:9DF4: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039E07 0E:9DF7: 4C 5B 9D  JMP loc_9D5B
bra_9DFA:
C - - - - - 0x039E0A 0E:9DFA: A9 00     LDA #$00    ; spd hi
C - - - - - 0x039E0C 0E:9DFC: A8        TAY ; 00
C - - - - - 0x039E0D 0E:9DFD: F0 F2     BEQ bra_9DF1_set_spd_X    ; jmp



loc_9DFF_pressed_A:
C D 0 - - - 0x039E0F 0E:9DFF: A9 06     LDA #con_plr_state_06
C - - - - - 0x039E11 0E:9E01: 8D 65 05  STA ram_plr_state
C - - - - - 0x039E14 0E:9E04: 4C 5B 9D  JMP loc_9D5B



sub_9E07:
- - - - - - 0x039E17 0E:9E07: A9 36     LDA #$36
- - - - - - 0x039E19 0E:9E09: D0 02     BNE bra_9E0D    ; jmp



loc_9E0B:
sub_9E0B:
bra_9E0B:
C D 0 - - - 0x039E1B 0E:9E0B: A9 18     LDA #$18
bra_9E0D:
C - - - - - 0x039E1D 0E:9E0D: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039E20 0E:9E10: 20 36 9E  JSR sub_9E36
C - - - - - 0x039E23 0E:9E13: A9 01     LDA #$01
C - - - - - 0x039E25 0E:9E15: D0 0E     BNE bra_9E25    ; jmp



sub_9E17:
- - - - - - 0x039E27 0E:9E17: A9 36     LDA #$36
- - - - - - 0x039E29 0E:9E19: D0 02     BNE bra_9E1D_set_animation    ; jmp



loc_9E1B:
sub_9E1B:
bra_9E1B:
C D 0 - - - 0x039E2B 0E:9E1B: A9 18     LDA #$18
bra_9E1D_set_animation:
C - - - - - 0x039E2D 0E:9E1D: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039E30 0E:9E20: 20 3F 9E  JSR sub_9E3F
C - - - - - 0x039E33 0E:9E23: A9 00     LDA #$00
bra_9E25:
C - - - - - 0x039E35 0E:9E25: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x039E38 0E:9E28: A9 00     LDA #$00
C - - - - - 0x039E3A 0E:9E2A: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x039E3D 0E:9E2D: 8D 93 05  STA ram_plr_anim_cnt
C - - - - - 0x039E40 0E:9E30: A9 30     LDA #con_plr_state_30
C - - - - - 0x039E42 0E:9E32: 8D 65 05  STA ram_plr_state
C - - - - - 0x039E45 0E:9E35: 60        RTS



sub_9E36:
C - - - - - 0x039E46 0E:9E36: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x039E49 0E:9E39: 18        CLC
C - - - - - 0x039E4A 0E:9E3A: 69 07     ADC #$07
C - - - - - 0x039E4C 0E:9E3C: 4C 42 9E  JMP loc_9E42



sub_9E3F:
C - - - - - 0x039E4F 0E:9E3F: AD 38 04  LDA ram_plr_pos_X_hi
loc_9E42:
C D 0 - - - 0x039E52 0E:9E42: A4 68     LDY ram_0068
C - - - - - 0x039E54 0E:9E44: 30 0C     BMI bra_9E52
C - - - - - 0x039E56 0E:9E46: 18        CLC
C - - - - - 0x039E57 0E:9E47: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x039E59 0E:9E49: 29 F8     AND #$F8
C - - - - - 0x039E5B 0E:9E4B: 38        SEC
C - - - - - 0x039E5C 0E:9E4C: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x039E5E 0E:9E4E: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x039E61 0E:9E51: 60        RTS
bra_9E52:
C - - - - - 0x039E62 0E:9E52: 29 F8     AND #$F8
C - - - - - 0x039E64 0E:9E54: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x039E67 0E:9E57: 60        RTS



tbl_9E58:
- D 0 - - - 0x039E68 0E:9E58: 80        .byte $80   ; 00 
- D 0 - - - 0x039E69 0E:9E59: F9        .byte $F9   ; 01 
- D 0 - - - 0x039E6A 0E:9E5A: F9        .byte $F9   ; 02 
- - - - - - 0x039E6B 0E:9E5B: F9        .byte $F9   ; 03 
- D 0 - - - 0x039E6C 0E:9E5C: F9        .byte $F9   ; 04 
- - - - - - 0x039E6D 0E:9E5D: F9        .byte $F9   ; 05 
- D 0 - - - 0x039E6E 0E:9E5E: F9        .byte $F9   ; 06 
- - - - - - 0x039E6F 0E:9E5F: F9        .byte $F9   ; 07 
- D 0 - - - 0x039E70 0E:9E60: F9        .byte $F9   ; 08 
- - - - - - 0x039E71 0E:9E61: F9        .byte $F9   ; 09 
- D 0 - - - 0x039E72 0E:9E62: F9        .byte $F9   ; 0A 
- - - - - - 0x039E73 0E:9E63: F9        .byte $F9   ; 0B 
- D 0 - - - 0x039E74 0E:9E64: F9        .byte $F9   ; 0C 
- - - - - - 0x039E75 0E:9E65: F9        .byte $F9   ; 0D 
- D 0 - - - 0x039E76 0E:9E66: F9        .byte $F9   ; 0E 
- - - - - - 0x039E77 0E:9E67: F9        .byte $F9   ; 0F 
- D 0 - - - 0x039E78 0E:9E68: F9        .byte $F9   ; 10 
- - - - - - 0x039E79 0E:9E69: F9        .byte $F9   ; 11 
- D 0 - - - 0x039E7A 0E:9E6A: F9        .byte $F9   ; 12 
- - - - - - 0x039E7B 0E:9E6B: F9        .byte $F9   ; 13 
- D 0 - - - 0x039E7C 0E:9E6C: FA        .byte $FA   ; 14 
- - - - - - 0x039E7D 0E:9E6D: FA        .byte $FA   ; 15 
- D 0 - - - 0x039E7E 0E:9E6E: FA        .byte $FA   ; 16 
- - - - - - 0x039E7F 0E:9E6F: FA        .byte $FA   ; 17 
- D 0 - - - 0x039E80 0E:9E70: FA        .byte $FA   ; 18 
- - - - - - 0x039E81 0E:9E71: FA        .byte $FA   ; 19 
- D 0 - - - 0x039E82 0E:9E72: FB        .byte $FB   ; 1A 
- - - - - - 0x039E83 0E:9E73: FB        .byte $FB   ; 1B 
- D 0 - - - 0x039E84 0E:9E74: FB        .byte $FB   ; 1C 
- - - - - - 0x039E85 0E:9E75: FB        .byte $FB   ; 1D 
- D 0 - - - 0x039E86 0E:9E76: FB        .byte $FB   ; 1E 
- D 0 - - - 0x039E87 0E:9E77: FC        .byte $FC   ; 1F 
- D 0 - - - 0x039E88 0E:9E78: FC        .byte $FC   ; 20 
- D 0 - - - 0x039E89 0E:9E79: FC        .byte $FC   ; 21 
- D 0 - - - 0x039E8A 0E:9E7A: FC        .byte $FC   ; 22 
- D 0 - - - 0x039E8B 0E:9E7B: FC        .byte $FC   ; 23 
- D 0 - - - 0x039E8C 0E:9E7C: FD        .byte $FD   ; 24 
- D 0 - - - 0x039E8D 0E:9E7D: FD        .byte $FD   ; 25 
- D 0 - - - 0x039E8E 0E:9E7E: FD        .byte $FD   ; 26 
- D 0 - - - 0x039E8F 0E:9E7F: FD        .byte $FD   ; 27 
- D 0 - - - 0x039E90 0E:9E80: FD        .byte $FD   ; 28 
- D 0 - - - 0x039E91 0E:9E81: FD        .byte $FD   ; 29 
- D 0 - - - 0x039E92 0E:9E82: FE        .byte $FE   ; 2A 
- D 0 - - - 0x039E93 0E:9E83: FE        .byte $FE   ; 2B 
- D 0 - - - 0x039E94 0E:9E84: FE        .byte $FE   ; 2C 
- D 0 - - - 0x039E95 0E:9E85: FE        .byte $FE   ; 2D 
- D 0 - - - 0x039E96 0E:9E86: FE        .byte $FE   ; 2E 
- D 0 - - - 0x039E97 0E:9E87: FF        .byte $FF   ; 2F 
- D 0 - - - 0x039E98 0E:9E88: FF        .byte $FF   ; 30 
- D 0 - - - 0x039E99 0E:9E89: FF        .byte $FF   ; 31 
- D 0 - - - 0x039E9A 0E:9E8A: FF        .byte $FF   ; 32 
- D 0 - - - 0x039E9B 0E:9E8B: FF        .byte $FF   ; 33 
- D 0 - - - 0x039E9C 0E:9E8C: 00        .byte $00   ; 34 
- D 0 - - - 0x039E9D 0E:9E8D: 00        .byte $00   ; 35 
- D 0 - - - 0x039E9E 0E:9E8E: 00        .byte $00   ; 36 
- D 0 - - - 0x039E9F 0E:9E8F: 00        .byte $00   ; 37 
- D 0 - - - 0x039EA0 0E:9E90: 00        .byte $00   ; 38 
- D 0 - - - 0x039EA1 0E:9E91: 81        .byte $81   ; 39 



ofs_Grant_state_9E92_06:
C - - J - - 0x039EA2 0E:9E92: A9 0E     LDA #$0E
C - - - - - 0x039EA4 0E:9E94: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039EA7 0E:9E97: A9 04     LDA #$04
C - - - - - 0x039EA9 0E:9E99: 85 B9     STA ram_00B9
C - - - - - 0x039EAB 0E:9E9B: A9 00     LDA #$00
C - - - - - 0x039EAD 0E:9E9D: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x039EB0 0E:9EA0: A9 1E     LDA #$1E
C - - - - - 0x039EB2 0E:9EA2: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x039EB5 0E:9EA5: A9 00     LDA #$00
C - - - - - 0x039EB7 0E:9EA7: 8D EF 05  STA ram_05EF_plr
C - - - - - 0x039EBA 0E:9EAA: 8D 06 06  STA ram_plr_config
C - - - - - 0x039EBD 0E:9EAD: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039EC0 0E:9EB0: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039EC3 0E:9EB3: 85 9D     STA ram_009D
C - - - - - 0x039EC5 0E:9EB5: A9 01     LDA #$01
C - - - - - 0x039EC7 0E:9EB7: 8D 1D 06  STA ram_061D_plr
C - - - - - 0x039ECA 0E:9EBA: A9 08     LDA #con_plr_state_jump
C - - - - - 0x039ECC 0E:9EBC: 8D 65 05  STA ram_plr_state
C - - - - - 0x039ECF 0E:9EBF: 60        RTS



ofs_Grant_state_9EC0_22_subweapon_attack_jump:
C - - J - - 0x039ED0 0E:9EC0: 20 5A 9F  JSR sub_9F5A
C - - - - - 0x039ED3 0E:9EC3: AD 65 05  LDA ram_plr_state
C - - - - - 0x039ED6 0E:9EC6: C9 26     CMP #con_plr_state_knockback
C - - - - - 0x039ED8 0E:9EC8: F0 40     BEQ bra_9F0A_RTS
C - - - - - 0x039EDA 0E:9ECA: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x039EDC 0E:9ECC: D0 0C     BNE bra_9EDA
- - - - - - 0x039EDE 0E:9ECE: A9 00     LDA #$00
- - - - - - 0x039EE0 0E:9ED0: 85 B9     STA ram_00B9
- - - - - - 0x039EE2 0E:9ED2: A9 20     LDA #con_plr_state_subw_atk_on_ground
- - - - - - 0x039EE4 0E:9ED4: 8D 65 05  STA ram_plr_state
- - - - - - 0x039EE7 0E:9ED7: 4C C3 94  JMP loc_94C3
bra_9EDA:
C - - - - - 0x039EEA 0E:9EDA: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x039EED 0E:9EDD: B0 01     BCS bra_9EE0
C - - - - - 0x039EEF 0E:9EDF: 60        RTS
bra_9EE0:
C - - - - - 0x039EF0 0E:9EE0: A9 08     LDA #con_plr_state_jump
C - - - - - 0x039EF2 0E:9EE2: 8D 65 05  STA ram_plr_state
C - - - - - 0x039EF5 0E:9EE5: A9 02     LDA #$02
C - - - - - 0x039EF7 0E:9EE7: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x039EFA 0E:9EEA: 60        RTS



ofs_Grant_state_9EEB_1A_normal_attack_jump:
C - - J - - 0x039EFB 0E:9EEB: 20 5A 9F  JSR sub_9F5A
C - - - - - 0x039EFE 0E:9EEE: AD 65 05  LDA ram_plr_state
C - - - - - 0x039F01 0E:9EF1: C9 26     CMP #con_plr_state_knockback
C - - - - - 0x039F03 0E:9EF3: F0 15     BEQ bra_9F0A_RTS
C - - - - - 0x039F05 0E:9EF5: C9 02     CMP #$02
C - - - - - 0x039F07 0E:9EF7: D0 0C     BNE bra_9F05
C - - - - - 0x039F09 0E:9EF9: A9 00     LDA #$00
C - - - - - 0x039F0B 0E:9EFB: 85 B9     STA ram_00B9
C - - - - - 0x039F0D 0E:9EFD: A9 18     LDA #con_plr_state_normal_atk_on_ground
C - - - - - 0x039F0F 0E:9EFF: 8D 65 05  STA ram_plr_state
C - - - - - 0x039F12 0E:9F02: 4C 28 94  JMP loc_9428
bra_9F05:
C - - - - - 0x039F15 0E:9F05: 20 89 BC  JSR sub_BC89
C - - - - - 0x039F18 0E:9F08: B0 D6     BCS bra_9EE0
bra_9F0A_RTS:
C - - - - - 0x039F1A 0E:9F0A: 60        RTS



loc_9F0B:
C D 0 - - - 0x039F1B 0E:9F0B: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039F1E 0E:9F0E: 18        CLC
C - - - - - 0x039F1F 0E:9F0F: 69 01     ADC #$01
C - - - - - 0x039F21 0E:9F11: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x039F24 0E:9F14: 20 02 8A  JSR sub_8A02
C - - - - - 0x039F27 0E:9F17: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x039F2A 0E:9F1A: 18        CLC
C - - - - - 0x039F2B 0E:9F1B: 69 05     ADC #$05
C - - - - - 0x039F2D 0E:9F1D: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x039F30 0E:9F20: A9 02     LDA #$02
C - - - - - 0x039F32 0E:9F22: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
C - - - - - 0x039F35 0E:9F25: A9 32     LDA #con_plr_state_32
C - - - - - 0x039F37 0E:9F27: 8D 65 05  STA ram_plr_state
C - - - - - 0x039F3A 0E:9F2A: 60        RTS



sub_9F2B:
C - - - - - 0x039F3B 0E:9F2B: A9 00     LDA #$00
C - - - - - 0x039F3D 0E:9F2D: F0 02     BEQ bra_9F31    ; jmp



sub_9F2F:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x039F3F 0E:9F2F: A9 FF     LDA #$FF
bra_9F31:
C - - - - - 0x039F41 0E:9F31: A2 00     LDX #$00
C - - - - - 0x039F43 0E:9F33: 20 0B 84  JSR sub_840B
C - - - - - 0x039F46 0E:9F36: F0 02     BEQ bra_9F3A
C - - - - - 0x039F48 0E:9F38: 18        CLC
C - - - - - 0x039F49 0E:9F39: 60        RTS
bra_9F3A:
C - - - - - 0x039F4A 0E:9F3A: 38        SEC
bra_9F3B_RTS:
C - - - - - 0x039F4B 0E:9F3B: 60        RTS



ofs_Grant_state_9F3C_08_jump:
ofs_Grant_state_9F3C_0C_fall:
C - - J - - 0x039F4C 0E:9F3C: A5 26     LDA ram_btn_press
C - - - - - 0x039F4E 0E:9F3E: 29 40     AND #con_btn_B
C - - - - - 0x039F50 0E:9F40: F0 18     BEQ bra_9F5A
C - - - - - 0x039F52 0E:9F42: A5 28     LDA ram_btn_hold
C - - - - - 0x039F54 0E:9F44: 29 08     AND #con_btn_Up
C - - - - - 0x039F56 0E:9F46: D0 08     BNE bra_9F50
bra_9F48:
C - - - - - 0x039F58 0E:9F48: A9 1A     LDA #con_plr_state_normal_atk_jump
C - - - - - 0x039F5A 0E:9F4A: 20 0A 94  JSR sub_940A_set_state_and_play_whip_sound
C - - - - - 0x039F5D 0E:9F4D: 4C 5A 9F  JMP loc_9F5A
bra_9F50:
C - - - - - 0x039F60 0E:9F50: 20 F5 B9  JSR sub_B9F5
C - - - - - 0x039F63 0E:9F53: 90 F3     BCC bra_9F48
C - - - - - 0x039F65 0E:9F55: A9 22     LDA #con_plr_state_subw_atk_jump
C - - - - - 0x039F67 0E:9F57: 20 AA 94  JSR sub_94AA_set_player_state
sub_9F5A:
loc_9F5A:
bra_9F5A:
C D 0 - - - 0x039F6A 0E:9F5A: 20 AA 83  JSR sub_83AA
C - - - - - 0x039F6D 0E:9F5D: B0 DC     BCS bra_9F3B_RTS
C - - - - - 0x039F6F 0E:9F5F: A5 28     LDA ram_btn_hold
C - - - - - 0x039F71 0E:9F61: 4A        LSR
C - - - - - 0x039F72 0E:9F62: B0 23     BCS bra_9F87_pressed_Right
C - - - - - 0x039F74 0E:9F64: 4A        LSR
C - - - - - 0x039F75 0E:9F65: 90 40     BCC bra_9FA7
; if con_btn_Left
C - - - - - 0x039F77 0E:9F67: A9 01     LDA #$01    ; facing left
C - - - - - 0x039F79 0E:9F69: 8D A8 04  STA ram_plr_facing
C - - - - - 0x039F7C 0E:9F6C: A9 FF     LDA #> $FF00
C - - - - - 0x039F7E 0E:9F6E: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039F81 0E:9F71: A9 00     LDA #< $FF00
C - - - - - 0x039F83 0E:9F73: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039F86 0E:9F76: A2 00     LDX #$00
C - - - - - 0x039F88 0E:9F78: A9 F8     LDA #$F8
C - - - - - 0x039F8A 0E:9F7A: 20 0B 84  JSR sub_840B
C - - - - - 0x039F8D 0E:9F7D: F0 28     BEQ bra_9FA7
C - - - - - 0x039F8F 0E:9F7F: 20 2F 9F  JSR sub_9F2F
C - - - - - 0x039F92 0E:9F82: 90 23     BCC bra_9FA7
C - - - - - 0x039F94 0E:9F84: 4C 0B 9E  JMP loc_9E0B
bra_9F87_pressed_Right:
C - - - - - 0x039F97 0E:9F87: A9 00     LDA #$00    ; facing right
C - - - - - 0x039F99 0E:9F89: 8D A8 04  STA ram_plr_facing
C - - - - - 0x039F9C 0E:9F8C: A9 01     LDA #> $0100
C - - - - - 0x039F9E 0E:9F8E: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x039FA1 0E:9F91: A9 00     LDA #< $0100
C - - - - - 0x039FA3 0E:9F93: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x039FA6 0E:9F96: A2 00     LDX #$00
C - - - - - 0x039FA8 0E:9F98: A9 08     LDA #$08
C - - - - - 0x039FAA 0E:9F9A: 20 0B 84  JSR sub_840B
C - - - - - 0x039FAD 0E:9F9D: F0 08     BEQ bra_9FA7
C - - - - - 0x039FAF 0E:9F9F: 20 2B 9F  JSR sub_9F2B
C - - - - - 0x039FB2 0E:9FA2: 90 03     BCC bra_9FA7
C - - - - - 0x039FB4 0E:9FA4: 4C 1B 9E  JMP loc_9E1B
bra_9FA7:
C - - - - - 0x039FB7 0E:9FA7: A5 28     LDA ram_btn_hold
C - - - - - 0x039FB9 0E:9FA9: 29 08     AND #con_btn_Up
C - - - - - 0x039FBB 0E:9FAB: F0 14     BEQ bra_9FC1
C - - - - - 0x039FBD 0E:9FAD: A2 F8     LDX #$F8
C - - - - - 0x039FBF 0E:9FAF: A9 00     LDA #$00
C - - - - - 0x039FC1 0E:9FB1: 20 0B 84  JSR sub_840B
C - - - - - 0x039FC4 0E:9FB4: F0 0B     BEQ bra_9FC1
C - - - - - 0x039FC6 0E:9FB6: A2 00     LDX #$00
C - - - - - 0x039FC8 0E:9FB8: 8A        TXA
C - - - - - 0x039FC9 0E:9FB9: 20 0B 84  JSR sub_840B
C - - - - - 0x039FCC 0E:9FBC: D0 03     BNE bra_9FC1
C - - - - - 0x039FCE 0E:9FBE: 4C 0B 9F  JMP loc_9F0B
bra_9FC1:
C - - - - - 0x039FD1 0E:9FC1: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x039FD4 0E:9FC4: 10 1D     BPL bra_9FE3
C - - - - - 0x039FD6 0E:9FC6: A2 0C     LDX #$0C
C - - - - - 0x039FD8 0E:9FC8: A9 F8     LDA #$F8
C - - - - - 0x039FDA 0E:9FCA: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039FDD 0E:9FCD: D0 2F     BNE bra_9FFE
C - - - - - 0x039FDF 0E:9FCF: A2 00     LDX #$00
C - - - - - 0x039FE1 0E:9FD1: A9 F8     LDA #$F8
C - - - - - 0x039FE3 0E:9FD3: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039FE6 0E:9FD6: D0 26     BNE bra_9FFE
C - - - - - 0x039FE8 0E:9FD8: A2 F4     LDX #$F4
C - - - - - 0x039FEA 0E:9FDA: A9 F8     LDA #$F8
C - - - - - 0x039FEC 0E:9FDC: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039FEF 0E:9FDF: F0 25     BEQ bra_A006
C - - - - - 0x039FF1 0E:9FE1: D0 1B     BNE bra_9FFE    ; jmp
bra_9FE3:
C - - - - - 0x039FF3 0E:9FE3: A2 0C     LDX #$0C
C - - - - - 0x039FF5 0E:9FE5: A9 08     LDA #$08
C - - - - - 0x039FF7 0E:9FE7: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x039FFA 0E:9FEA: D0 12     BNE bra_9FFE
C - - - - - 0x039FFC 0E:9FEC: A2 00     LDX #$00
C - - - - - 0x039FFE 0E:9FEE: A9 08     LDA #$08
C - - - - - 0x03A000 0E:9FF0: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A003 0E:9FF3: D0 09     BNE bra_9FFE
C - - - - - 0x03A005 0E:9FF5: A2 F4     LDX #$F4
C - - - - - 0x03A007 0E:9FF7: A9 08     LDA #$08
C - - - - - 0x03A009 0E:9FF9: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A00C 0E:9FFC: F0 08     BEQ bra_A006
bra_9FFE:
C - - - - - 0x03A00E 0E:9FFE: A9 00     LDA #$00
C - - - - - 0x03A010 0E:A000: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A013 0E:A003: 8D 09 05  STA ram_plr_spd_X_lo
bra_A006:
C - - - - - 0x03A016 0E:A006: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03A019 0E:A009: 85 06     STA ram_0006_t012_copy_plr_pos_Y_hi
C - - - - - 0x03A01B 0E:A00B: 20 D1 A0  JSR sub_A0D1
C - - - - - 0x03A01E 0E:A00E: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A021 0E:A011: F0 57     BEQ bra_A06A
C - - - - - 0x03A023 0E:A013: A2 0C     LDX #$0C
C - - - - - 0x03A025 0E:A015: A9 FB     LDA #$FB
C - - - - - 0x03A027 0E:A017: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A02A 0E:A01A: D0 22     BNE bra_A03E
C - - - - - 0x03A02C 0E:A01C: A2 0C     LDX #$0C
C - - - - - 0x03A02E 0E:A01E: A9 05     LDA #$05
C - - - - - 0x03A030 0E:A020: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A033 0E:A023: D0 19     BNE bra_A03E
C - - - - - 0x03A035 0E:A025: A5 8B     LDA ram_008B
C - - - - - 0x03A037 0E:A027: C9 01     CMP #$01
C - - - - - 0x03A039 0E:A029: F0 0B     BEQ bra_A036
C - - - - - 0x03A03B 0E:A02B: C9 05     CMP #$05
C - - - - - 0x03A03D 0E:A02D: F0 53     BEQ bra_A082
C - - - - - 0x03A03F 0E:A02F: C9 06     CMP #$06
C - - - - - 0x03A041 0E:A031: F0 4F     BEQ bra_A082
C - - - - - 0x03A043 0E:A033: 4C 64 A0  JMP loc_A064
bra_A036:
C - - - - - 0x03A046 0E:A036: A6 91     LDX ram_0091
C - - - - - 0x03A048 0E:A038: 20 9C FE  JSR sub_0x03FEAC
C - - - - - 0x03A04B 0E:A03B: 4C 5D A0  JMP loc_A05D
bra_A03E:
C - - - - - 0x03A04E 0E:A03E: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03A051 0E:A041: D0 0E     BNE bra_A051
C - - - - - 0x03A053 0E:A043: A9 0B     LDA #con_sound_land
C - - - - - 0x03A055 0E:A045: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03A058 0E:A048: A9 0C     LDA #$0C
C - - - - - 0x03A05A 0E:A04A: 85 B9     STA ram_00B9
C - - - - - 0x03A05C 0E:A04C: A9 0E     LDA #$0E
C - - - - - 0x03A05E 0E:A04E: 8D 00 04  STA ram_plr_anim_id
bra_A051:
C - - - - - 0x03A061 0E:A051: 20 02 8A  JSR sub_8A02
C - - - - - 0x03A064 0E:A054: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03A067 0E:A057: 18        CLC
C - - - - - 0x03A068 0E:A058: 69 04     ADC #$04
C - - - - - 0x03A06A 0E:A05A: 8D 1C 04  STA ram_plr_pos_Y_hi
loc_A05D:
C D 1 - - - 0x03A06D 0E:A05D: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x03A06F 0E:A05F: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A072 0E:A062: D0 03     BNE bra_A067    ; jmp



loc_A064:
bra_A064:
C D 1 - - - 0x03A074 0E:A064: 20 12 87  JSR sub_8712
bra_A067:
C - - - - - 0x03A077 0E:A067: 4C 3A 87  JMP loc_873A



bra_A06A:
C - - - - - 0x03A07A 0E:A06A: A2 00     LDX #$00
C - - - - - 0x03A07C 0E:A06C: A9 05     LDA #$05
C - - - - - 0x03A07E 0E:A06E: 20 0B 84  JSR sub_840B
C - - - - - 0x03A081 0E:A071: D0 09     BNE bra_A07C
C - - - - - 0x03A083 0E:A073: A2 00     LDX #$00
C - - - - - 0x03A085 0E:A075: A9 FB     LDA #$FB
C - - - - - 0x03A087 0E:A077: 20 0B 84  JSR sub_840B
C - - - - - 0x03A08A 0E:A07A: F0 E8     BEQ bra_A064
bra_A07C:
C - - - - - 0x03A08C 0E:A07C: 20 8D A0  JSR sub_A08D
C - - - - - 0x03A08F 0E:A07F: 4C 64 A0  JMP loc_A064



bra_A082:
C - - - - - 0x03A092 0E:A082: A5 06     LDA ram_0006_t012_copy_plr_pos_Y_hi
C - - - - - 0x03A094 0E:A084: 18        CLC
C - - - - - 0x03A095 0E:A085: 65 91     ADC ram_0091
C - - - - - 0x03A097 0E:A087: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03A09A 0E:A08A: 4C 5D A0  JMP loc_A05D



loc_A08D:
sub_A08D:
C D 1 - - - 0x03A09D 0E:A08D: A9 0C     LDA #con_plr_state_fall
C - - - - - 0x03A09F 0E:A08F: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A0A2 0E:A092: A5 CF     LDA ram_00CF
C - - - - - 0x03A0A4 0E:A094: C9 01     CMP #$01
C - - - - - 0x03A0A6 0E:A096: F0 04     BEQ bra_A09C
C - - - - - 0x03A0A8 0E:A098: C9 06     CMP #$06
C - - - - - 0x03A0AA 0E:A09A: D0 04     BNE bra_A0A0
bra_A09C:
C - - - - - 0x03A0AC 0E:A09C: A9 10     LDA #$10
C - - - - - 0x03A0AE 0E:A09E: 85 AF     STA ram_00AF
bra_A0A0:
sub_A0A0:
C - - - - - 0x03A0B0 0E:A0A0: A9 01     LDA #$01
C - - - - - 0x03A0B2 0E:A0A2: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A0B5 0E:A0A5: A9 38     LDA #$38
C - - - - - 0x03A0B7 0E:A0A7: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A0BA 0E:A0AA: A9 00     LDA #$00
C - - - - - 0x03A0BC 0E:A0AC: 8D EF 05  STA ram_05EF_plr
C - - - - - 0x03A0BF 0E:A0AF: 8D 06 06  STA ram_plr_config
C - - - - - 0x03A0C2 0E:A0B2: 85 9D     STA ram_009D
C - - - - - 0x03A0C4 0E:A0B4: 85 B9     STA ram_00B9
C - - - - - 0x03A0C6 0E:A0B6: A9 01     LDA #$01
C - - - - - 0x03A0C8 0E:A0B8: 8D 1D 06  STA ram_061D_plr
C - - - - - 0x03A0CB 0E:A0BB: AD A8 04  LDA ram_plr_facing
C - - - - - 0x03A0CE 0E:A0BE: D0 06     BNE bra_A0C6_facing_left
; if facing right
C - - - - - 0x03A0D0 0E:A0C0: A9 00     LDA #> $0020
C - - - - - 0x03A0D2 0E:A0C2: A0 20     LDY #< $0020
C - - - - - 0x03A0D4 0E:A0C4: D0 04     BNE bra_A0CA_set_spd_X    ; jmp
bra_A0C6_facing_left:
C - - - - - 0x03A0D6 0E:A0C6: A9 FF     LDA #> $FFE0
C - - - - - 0x03A0D8 0E:A0C8: A0 E0     LDY #< $FFE0
bra_A0CA_set_spd_X:
C - - - - - 0x03A0DA 0E:A0CA: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A0DD 0E:A0CD: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x03A0E0 0E:A0D0: 60        RTS



sub_A0D1:
C - - - - - 0x03A0E1 0E:A0D1: AD 65 05  LDA ram_plr_state
C - - - - - 0x03A0E4 0E:A0D4: C9 08     CMP #con_plr_state_jump
C - - - - - 0x03A0E6 0E:A0D6: D0 0D     BNE bra_A0E5
C - - - - - 0x03A0E8 0E:A0D8: A5 B9     LDA ram_00B9
C - - - - - 0x03A0EA 0E:A0DA: F0 09     BEQ bra_A0E5
C - - - - - 0x03A0EC 0E:A0DC: C6 B9     DEC ram_00B9
C - - - - - 0x03A0EE 0E:A0DE: D0 05     BNE bra_A0E5
C - - - - - 0x03A0F0 0E:A0E0: A9 16     LDA #$16
C - - - - - 0x03A0F2 0E:A0E2: 8D 00 04  STA ram_plr_anim_id
bra_A0E5:
C - - - - - 0x03A0F5 0E:A0E5: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A0F8 0E:A0E8: D0 0C     BNE bra_A0F6
C - - - - - 0x03A0FA 0E:A0EA: A5 9D     LDA ram_009D
C - - - - - 0x03A0FC 0E:A0EC: D0 12     BNE bra_A100
C - - - - - 0x03A0FE 0E:A0EE: A5 28     LDA ram_btn_hold
C - - - - - 0x03A100 0E:A0F0: 29 80     AND #con_btn_A
C - - - - - 0x03A102 0E:A0F2: D0 0C     BNE bra_A100
C - - - - - 0x03A104 0E:A0F4: E6 9D     INC ram_009D
bra_A0F6:
C - - - - - 0x03A106 0E:A0F6: A9 02     LDA #$02
C - - - - - 0x03A108 0E:A0F8: 8D 1D 06  STA ram_061D_plr
C - - - - - 0x03A10B 0E:A0FB: A9 00     LDA #$00
C - - - - - 0x03A10D 0E:A0FD: 8D 06 06  STA ram_plr_config
bra_A100:
C - - - - - 0x03A110 0E:A100: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03A113 0E:A103: C9 08     CMP #$08
C - - - - - 0x03A115 0E:A105: B0 08     BCS bra_A10F
- - - - - - 0x03A117 0E:A107: AD C1 05  LDA ram_05C1_plr
- - - - - - 0x03A11A 0E:A10A: D0 03     BNE bra_A10F
- - - - - - 0x03A11C 0E:A10C: 20 A0 A0  JSR sub_A0A0
bra_A10F:
; bzk optimize, useless JMP
C - - - - - 0x03A11F 0E:A10F: 4C 12 A1  JMP loc_A112



loc_A112:
C D 1 - - - 0x03A122 0E:A112: A9 00     LDA #$00
C - - - - - 0x03A124 0E:A114: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A127 0E:A117: 8D DB 04  STA ram_plr_pos_Y_lo
C - - - - - 0x03A12A 0E:A11A: AC D8 05  LDY ram_05D8_plr
C - - - - - 0x03A12D 0E:A11D: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A130 0E:A120: D0 37     BNE bra_A159
C - - - - - 0x03A132 0E:A122: B9 58 9E  LDA tbl_9E58,Y
C - - - - - 0x03A135 0E:A125: C9 81     CMP #$81
C - - - - - 0x03A137 0E:A127: F0 1D     BEQ bra_A146_81
C - - - - - 0x03A139 0E:A129: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A13C 0E:A12C: 18        CLC
C - - - - - 0x03A13D 0E:A12D: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x03A140 0E:A130: 6D 06 06  ADC ram_plr_config
C - - - - - 0x03A143 0E:A133: 8D EF 05  STA ram_05EF_plr
C - - - - - 0x03A146 0E:A136: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03A149 0E:A139: 6D 1D 06  ADC ram_061D_plr
C - - - - - 0x03A14C 0E:A13C: C9 39     CMP #$39
C - - - - - 0x03A14E 0E:A13E: 90 02     BCC bra_A142_not_overflow
C - - - - - 0x03A150 0E:A140: A9 39     LDA #$39
bra_A142_not_overflow:
C - - - - - 0x03A152 0E:A142: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A155 0E:A145: 60        RTS
bra_A146_81:
C - - - - - 0x03A156 0E:A146: A9 00     LDA #$00
C - - - - - 0x03A158 0E:A148: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A15B 0E:A14B: A0 01     LDY #$01
C - - - - - 0x03A15D 0E:A14D: 8C C1 05  STY ram_05C1_plr
C - - - - - 0x03A160 0E:A150: CE D8 05  DEC ram_05D8_plr
C - - - - - 0x03A163 0E:A153: A9 00     LDA #$00
C - - - - - 0x03A165 0E:A155: 8D EF 05  STA ram_05EF_plr
C - - - - - 0x03A168 0E:A158: 60        RTS
bra_A159:
C - - - - - 0x03A169 0E:A159: B9 58 9E  LDA tbl_9E58,Y
C - - - - - 0x03A16C 0E:A15C: C9 80     CMP #$80
C - - - - - 0x03A16E 0E:A15E: F0 23     BEQ bra_A183_80
C - - - - - 0x03A170 0E:A160: 38        SEC
C - - - - - 0x03A171 0E:A161: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x03A174 0E:A164: ED 06 06  SBC ram_plr_config
C - - - - - 0x03A177 0E:A167: 8D EF 05  STA ram_05EF_plr
C - - - - - 0x03A17A 0E:A16A: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03A17D 0E:A16D: ED 1D 06  SBC ram_061D_plr
C - - - - - 0x03A180 0E:A170: 10 02     BPL bra_A174
- - - - - - 0x03A182 0E:A172: A9 00     LDA #$00
bra_A174:
C - - - - - 0x03A184 0E:A174: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A187 0E:A177: B9 58 9E  LDA tbl_9E58,Y
bra_A17A:
C - - - - - 0x03A18A 0E:A17A: 49 FF     EOR #$FF
C - - - - - 0x03A18C 0E:A17C: 18        CLC
C - - - - - 0x03A18D 0E:A17D: 69 01     ADC #$01
C - - - - - 0x03A18F 0E:A17F: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A192 0E:A182: 60        RTS
bra_A183_80:
C - - - - - 0x03A193 0E:A183: B9 59 9E  LDA tbl_9E58 + $01,Y
C - - - - - 0x03A196 0E:A186: D0 F2     BNE bra_A17A    ; jmp



ofs_Grant_state_A188_44:
C - - J - - 0x03A198 0E:A188: CE D8 05  DEC ram_05D8_plr
C - - - - - 0x03A19B 0E:A18B: F0 28     BEQ bra_A1B5
C - - - - - 0x03A19D 0E:A18D: A2 F8     LDX #$F8
C - - - - - 0x03A19F 0E:A18F: A9 00     LDA #$00
C - - - - - 0x03A1A1 0E:A191: 20 0B 84  JSR sub_840B
C - - - - - 0x03A1A4 0E:A194: D0 1F     BNE bra_A1B5
C - - - - - 0x03A1A6 0E:A196: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03A1A9 0E:A199: C9 08     CMP #$08
C - - - - - 0x03A1AB 0E:A19B: 90 13     BCC bra_A1B0
C - - - - - 0x03A1AD 0E:A19D: A9 08     LDA #$08
C - - - - - 0x03A1AF 0E:A19F: AE A8 04  LDX ram_plr_facing
C - - - - - 0x03A1B2 0E:A1A2: F0 02     BEQ bra_A1A6_facing_right
C - - - - - 0x03A1B4 0E:A1A4: A9 F7     LDA #$F7
bra_A1A6_facing_right:
C - - - - - 0x03A1B6 0E:A1A6: A2 00     LDX #$00
C - - - - - 0x03A1B8 0E:A1A8: 20 0B 84  JSR sub_840B
C - - - - - 0x03A1BB 0E:A1AB: F0 18     BEQ bra_A1C5
C - - - - - 0x03A1BD 0E:A1AD: 4C 12 87  JMP loc_8712
bra_A1B0:
- - - - - - 0x03A1C0 0E:A1B0: A9 08     LDA #$08
- - - - - - 0x03A1C2 0E:A1B2: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_A1B5:
C - - - - - 0x03A1C5 0E:A1B5: A9 00     LDA #$00
C - - - - - 0x03A1C7 0E:A1B7: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A1CA 0E:A1BA: A9 18     LDA #$18
C - - - - - 0x03A1CC 0E:A1BC: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03A1CF 0E:A1BF: A9 30     LDA #con_plr_state_30
C - - - - - 0x03A1D1 0E:A1C1: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A1D4 0E:A1C4: 60        RTS
bra_A1C5:
C - - - - - 0x03A1D5 0E:A1C5: A9 06     LDA #con_plr_state_06
C - - - - - 0x03A1D7 0E:A1C7: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A1DA 0E:A1CA: 60        RTS



loc_A1CB:
C D 1 - - - 0x03A1DB 0E:A1CB: A9 00     LDA #$00
C - - - - - 0x03A1DD 0E:A1CD: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A1E0 0E:A1D0: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03A1E3 0E:A1D3: 18        CLC
C - - - - - 0x03A1E4 0E:A1D4: 69 08     ADC #$08
C - - - - - 0x03A1E6 0E:A1D6: 4C E4 A1  JMP loc_A1E4



loc_A1D9:
C D 1 - - - 0x03A1E9 0E:A1D9: A9 01     LDA #$01
C - - - - - 0x03A1EB 0E:A1DB: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A1EE 0E:A1DE: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03A1F1 0E:A1E1: 38        SEC
C - - - - - 0x03A1F2 0E:A1E2: E9 08     SBC #$08
loc_A1E4:
C D 1 - - - 0x03A1F4 0E:A1E4: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A1F7 0E:A1E7: 20 3B A5  JSR sub_A53B
C - - - - - 0x03A1FA 0E:A1EA: A9 3C     LDA #con_plr_state_3C
loc_A1EC:
C D 1 - - - 0x03A1FC 0E:A1EC: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A1FF 0E:A1EF: A0 00     LDY #$00
C - - - - - 0x03A201 0E:A1F1: 8C 93 05  STY ram_plr_anim_cnt
C - - - - - 0x03A204 0E:A1F4: C8        INY ; 01
C - - - - - 0x03A205 0E:A1F5: 8C 7C 05  STY ram_plr_anim_timer
C - - - - - 0x03A208 0E:A1F8: 60        RTS



loc_A1F9:
C D 1 - - - 0x03A209 0E:A1F9: A9 00     LDA #$00
C - - - - - 0x03A20B 0E:A1FB: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A20E 0E:A1FE: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03A211 0E:A201: 18        CLC
C - - - - - 0x03A212 0E:A202: 69 08     ADC #$08
C - - - - - 0x03A214 0E:A204: 4C 12 A2  JMP loc_A212



loc_A207:
C D 1 - - - 0x03A217 0E:A207: A9 01     LDA #$01
C - - - - - 0x03A219 0E:A209: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A21C 0E:A20C: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03A21F 0E:A20F: 38        SEC
C - - - - - 0x03A220 0E:A210: E9 08     SBC #$08
loc_A212:
C D 1 - - - 0x03A222 0E:A212: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A225 0E:A215: 18        CLC
C - - - - - 0x03A226 0E:A216: A9 01     LDA #$01
C - - - - - 0x03A228 0E:A218: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x03A22B 0E:A21B: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03A22E 0E:A21E: 20 35 A5  JSR sub_A535
C - - - - - 0x03A231 0E:A221: A9 38     LDA #con_plr_state_38
C - - - - - 0x03A233 0E:A223: 4C EC A1  JMP loc_A1EC



ofs_Grant_state_A226_46:
C - - J - - 0x03A236 0E:A226: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x03A239 0E:A229: B0 01     BCS bra_A22C
C - - - - - 0x03A23B 0E:A22B: 60        RTS
bra_A22C:
C - - - - - 0x03A23C 0E:A22C: A0 00     LDY #$00
C - - - - - 0x03A23E 0E:A22E: 8C 93 05  STY ram_plr_anim_cnt
C - - - - - 0x03A241 0E:A231: C8        INY ; 01
C - - - - - 0x03A242 0E:A232: 8C 7C 05  STY ram_plr_anim_timer
C - - - - - 0x03A245 0E:A235: A9 30     LDA #con_plr_state_30
C - - - - - 0x03A247 0E:A237: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A24A 0E:A23A: 60        RTS



ofs_Grant_state_A23B_30:
C - - J - - 0x03A24B 0E:A23B: A5 26     LDA ram_btn_press
C - - - - - 0x03A24D 0E:A23D: 29 40     AND #con_btn_B
C - - - - - 0x03A24F 0E:A23F: F0 0A     BEQ bra_A24B
C - - - - - 0x03A251 0E:A241: 20 F5 B9  JSR sub_B9F5
C - - - - - 0x03A254 0E:A244: 90 05     BCC bra_A24B
C - - - - - 0x03A256 0E:A246: A9 46     LDA #con_plr_state_46
C - - - - - 0x03A258 0E:A248: 4C AA 94  JMP loc_94AA_set_player_state
bra_A24B:
C - - - - - 0x03A25B 0E:A24B: A5 26     LDA ram_btn_press
C - - - - - 0x03A25D 0E:A24D: 29 80     AND #con_btn_A
C - - - - - 0x03A25F 0E:A24F: F0 1A     BEQ bra_A26B
C - - - - - 0x03A261 0E:A251: A9 44     LDA #con_plr_state_44
C - - - - - 0x03A263 0E:A253: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A266 0E:A256: A9 08     LDA #$08
C - - - - - 0x03A268 0E:A258: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A26B 0E:A25B: A9 1A     LDA #$1A
C - - - - - 0x03A26D 0E:A25D: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03A270 0E:A260: A9 FE     LDA #> $FE00
C - - - - - 0x03A272 0E:A262: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A275 0E:A265: A9 00     LDA #< $FE00
C - - - - - 0x03A277 0E:A267: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A27A 0E:A26A: 60        RTS
bra_A26B:
C - - - - - 0x03A27B 0E:A26B: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03A27E 0E:A26E: F0 04     BEQ bra_A274
- - - - - - 0x03A280 0E:A270: CE D8 05  DEC ram_05D8_plr
- - - - - - 0x03A283 0E:A273: 60        RTS
bra_A274:
C - - - - - 0x03A284 0E:A274: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A287 0E:A277: F0 44     BEQ bra_A2BD
C - - - - - 0x03A289 0E:A279: A5 28     LDA ram_btn_hold
C - - - - - 0x03A28B 0E:A27B: 29 02     AND #con_btn_Left
C - - - - - 0x03A28D 0E:A27D: F0 21     BEQ bra_A2A0
C - - - - - 0x03A28F 0E:A27F: A2 00     LDX #$00
C - - - - - 0x03A291 0E:A281: A9 F7     LDA #$F7
C - - - - - 0x03A293 0E:A283: 20 0B 84  JSR sub_840B
C - - - - - 0x03A296 0E:A286: F0 32     BEQ bra_A2BA
C - - - - - 0x03A298 0E:A288: A2 01     LDX #$01
C - - - - - 0x03A29A 0E:A28A: A9 F7     LDA #$F7
C - - - - - 0x03A29C 0E:A28C: 20 0B 84  JSR sub_840B
C - - - - - 0x03A29F 0E:A28F: D0 03     BNE bra_A294
C - - - - - 0x03A2A1 0E:A291: 4C 07 A2  JMP loc_A207
bra_A294:
C - - - - - 0x03A2A4 0E:A294: A2 FF     LDX #$FF
C - - - - - 0x03A2A6 0E:A296: A9 F7     LDA #$F7
C - - - - - 0x03A2A8 0E:A298: 20 0B 84  JSR sub_840B
C - - - - - 0x03A2AB 0E:A29B: D0 47     BNE bra_A2E4
C - - - - - 0x03A2AD 0E:A29D: 4C D9 A1  JMP loc_A1D9
bra_A2A0:
C - - - - - 0x03A2B0 0E:A2A0: A5 28     LDA ram_btn_hold
C - - - - - 0x03A2B2 0E:A2A2: 29 08     AND #con_btn_Up
C - - - - - 0x03A2B4 0E:A2A4: F0 14     BEQ bra_A2BA
C - - - - - 0x03A2B6 0E:A2A6: A2 F8     LDX #$F8
C - - - - - 0x03A2B8 0E:A2A8: A9 00     LDA #$00
C - - - - - 0x03A2BA 0E:A2AA: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A2BD 0E:A2AD: F0 0B     BEQ bra_A2BA
C - - - - - 0x03A2BF 0E:A2AF: AD A8 04  LDA ram_plr_facing
C - - - - - 0x03A2C2 0E:A2B2: 49 01     EOR #$01
C - - - - - 0x03A2C4 0E:A2B4: 8D A8 04  STA ram_plr_facing
C - - - - - 0x03A2C7 0E:A2B7: 4C 0B 9F  JMP loc_9F0B
bra_A2BA:
C - - - - - 0x03A2CA 0E:A2BA: 4C 8D A0  JMP loc_A08D
bra_A2BD:
C - - - - - 0x03A2CD 0E:A2BD: A5 28     LDA ram_btn_hold
C - - - - - 0x03A2CF 0E:A2BF: 29 01     AND #con_btn_Right
C - - - - - 0x03A2D1 0E:A2C1: F0 DD     BEQ bra_A2A0
C - - - - - 0x03A2D3 0E:A2C3: A2 00     LDX #$00
C - - - - - 0x03A2D5 0E:A2C5: A9 08     LDA #$08
C - - - - - 0x03A2D7 0E:A2C7: 20 0B 84  JSR sub_840B
C - - - - - 0x03A2DA 0E:A2CA: F0 EE     BEQ bra_A2BA
C - - - - - 0x03A2DC 0E:A2CC: A2 01     LDX #$01
C - - - - - 0x03A2DE 0E:A2CE: A9 08     LDA #$08
C - - - - - 0x03A2E0 0E:A2D0: 20 0B 84  JSR sub_840B
C - - - - - 0x03A2E3 0E:A2D3: D0 03     BNE bra_A2D8
C - - - - - 0x03A2E5 0E:A2D5: 4C F9 A1  JMP loc_A1F9
bra_A2D8:
C - - - - - 0x03A2E8 0E:A2D8: A2 FF     LDX #$FF
C - - - - - 0x03A2EA 0E:A2DA: A9 08     LDA #$08
C - - - - - 0x03A2EC 0E:A2DC: 20 0B 84  JSR sub_840B
C - - - - - 0x03A2EF 0E:A2DF: D0 03     BNE bra_A2E4
C - - - - - 0x03A2F1 0E:A2E1: 4C CB A1  JMP loc_A1CB
bra_A2E4:
C - - - - - 0x03A2F4 0E:A2E4: A5 28     LDA ram_btn_hold
C - - - - - 0x03A2F6 0E:A2E6: 29 04     AND #con_btn_Down
C - - - - - 0x03A2F8 0E:A2E8: D0 07     BNE bra_A2F1
C - - - - - 0x03A2FA 0E:A2EA: A5 28     LDA ram_btn_hold
C - - - - - 0x03A2FC 0E:A2EC: 29 08     AND #con_btn_Up
C - - - - - 0x03A2FE 0E:A2EE: D0 1F     BNE bra_A30F
C - - - - - 0x03A300 0E:A2F0: 60        RTS
bra_A2F1:
C - - - - - 0x03A301 0E:A2F1: A9 0D     LDA #$0D
C - - - - - 0x03A303 0E:A2F3: 8D AA 05  STA ram_05AA_plr
C - - - - - 0x03A306 0E:A2F6: A2 0C     LDX #$0C
C - - - - - 0x03A308 0E:A2F8: A9 00     LDA #$00
C - - - - - 0x03A30A 0E:A2FA: 20 0B 84  JSR sub_840B
C - - - - - 0x03A30D 0E:A2FD: D0 0D     BNE bra_A30C
C - - - - - 0x03A30F 0E:A2FF: A9 01     LDA #$01
C - - - - - 0x03A311 0E:A301: 8D 20 05  STA ram_plr_spd_Y_hi
loc_A304:
C D 1 - - - 0x03A314 0E:A304: A9 00     LDA #$00
C - - - - - 0x03A316 0E:A306: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A319 0E:A309: 20 12 87  JSR sub_8712
bra_A30C:
C - - - - - 0x03A31C 0E:A30C: 4C 73 EF  JMP loc_0x03EF83
bra_A30F:
C - - - - - 0x03A31F 0E:A30F: A9 01     LDA #$01
C - - - - - 0x03A321 0E:A311: 8D AA 05  STA ram_05AA_plr
C - - - - - 0x03A324 0E:A314: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03A327 0E:A317: C9 08     CMP #$08
C - - - - - 0x03A329 0E:A319: B0 07     BCS bra_A322
- - - - - - 0x03A32B 0E:A31B: A9 08     LDA #$08
- - - - - - 0x03A32D 0E:A31D: 8D 1C 04  STA ram_plr_pos_Y_hi
- - - - - - 0x03A330 0E:A320: D0 EA     BNE bra_A30C    ; jmp
bra_A322:
C - - - - - 0x03A332 0E:A322: A2 F8     LDX #$F8
C - - - - - 0x03A334 0E:A324: A9 00     LDA #$00
C - - - - - 0x03A336 0E:A326: 20 0B 84  JSR sub_840B
C - - - - - 0x03A339 0E:A329: D0 E1     BNE bra_A30C
C - - - - - 0x03A33B 0E:A32B: A9 FF     LDA #$FF
C - - - - - 0x03A33D 0E:A32D: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A340 0E:A330: 4C 04 A3  JMP loc_A304



ofs_Grant_state_A333_48:
- - - - - - 0x03A343 0E:A333: 20 F2 BA  JSR sub_BAF2
- - - - - - 0x03A346 0E:A336: B0 01     BCS bra_A339
- - - - - - 0x03A348 0E:A338: 60        RTS
bra_A339:
- - - - - - 0x03A349 0E:A339: A9 02     LDA #$02
- - - - - - 0x03A34B 0E:A33B: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
- - - - - - 0x03A34E 0E:A33E: A9 32     LDA #con_plr_state_32
- - - - - - 0x03A350 0E:A340: 8D 65 05  STA ram_plr_state
- - - - - - 0x03A353 0E:A343: 60        RTS
bra_A344:
C - - - - - 0x03A354 0E:A344: 20 8D A0  JSR sub_A08D
; bzk optimize, SEC seems unnecessary
C - - - - - 0x03A357 0E:A347: 38        SEC
C - - - - - 0x03A358 0E:A348: 60        RTS



sub_A349:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03A359 0E:A349: A2 F8     LDX #$F8
C - - - - - 0x03A35B 0E:A34B: A9 00     LDA #$00
C - - - - - 0x03A35D 0E:A34D: 20 0B 84  JSR sub_840B
C - - - - - 0x03A360 0E:A350: F0 F2     BEQ bra_A344
C - - - - - 0x03A362 0E:A352: C9 05     CMP #$05
C - - - - - 0x03A364 0E:A354: F0 06     BEQ bra_A35C
C - - - - - 0x03A366 0E:A356: C9 07     CMP #$07
C - - - - - 0x03A368 0E:A358: F0 02     BEQ bra_A35C
bra_A35A_still_invincible:
C - - - - - 0x03A36A 0E:A35A: 18        CLC
C - - - - - 0x03A36B 0E:A35B: 60        RTS
bra_A35C:
- - - - - - 0x03A36C 0E:A35C: A5 80     LDA ram_invinc_timer
- - - - - - 0x03A36E 0E:A35E: D0 FA     BNE bra_A35A_still_invincible
- - - - - - 0x03A370 0E:A360: 20 F4 83  JSR sub_83F4
- - - - - - 0x03A373 0E:A363: 38        SEC
- - - - - - 0x03A374 0E:A364: 60        RTS



ofs_Grant_state_A365_32:
C - - J - - 0x03A375 0E:A365: A5 26     LDA ram_btn_press
C - - - - - 0x03A377 0E:A367: 29 40     AND #con_btn_B
C - - - - - 0x03A379 0E:A369: F0 0A     BEQ bra_A375
- - - - - - 0x03A37B 0E:A36B: 20 F5 B9  JSR sub_B9F5
- - - - - - 0x03A37E 0E:A36E: 90 05     BCC bra_A375
- - - - - - 0x03A380 0E:A370: A9 48     LDA #con_plr_state_48
- - - - - - 0x03A382 0E:A372: 4C AA 94  JMP loc_94AA_set_player_state
bra_A375:
C - - - - - 0x03A385 0E:A375: A5 28     LDA ram_btn_hold
C - - - - - 0x03A387 0E:A377: 29 08     AND #con_btn_Up
C - - - - - 0x03A389 0E:A379: D0 3B     BNE bra_A3B6
C - - - - - 0x03A38B 0E:A37B: A5 28     LDA ram_btn_hold
C - - - - - 0x03A38D 0E:A37D: 4A        LSR
C - - - - - 0x03A38E 0E:A37E: B0 1E     BCS bra_A39E_pressed_Right
C - - - - - 0x03A390 0E:A380: 4A        LSR
C - - - - - 0x03A391 0E:A381: B0 03     BCS bra_A386_pressed_Left
C - - - - - 0x03A393 0E:A383: 4C 8D A0  JMP loc_A08D
bra_A386_pressed_Left:
C - - - - - 0x03A396 0E:A386: A2 00     LDX #$00
C - - - - - 0x03A398 0E:A388: A9 F4     LDA #$F4
C - - - - - 0x03A39A 0E:A38A: 20 0B 84  JSR sub_840B
C - - - - - 0x03A39D 0E:A38D: D0 03     BNE bra_A392
C - - - - - 0x03A39F 0E:A38F: 4C 8D A0  JMP loc_A08D
bra_A392:
C - - - - - 0x03A3A2 0E:A392: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03A3A5 0E:A395: 38        SEC
C - - - - - 0x03A3A6 0E:A396: E9 04     SBC #$04
C - - - - - 0x03A3A8 0E:A398: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x03A3AB 0E:A39B: 4C 0B 9E  JMP loc_9E0B
bra_A39E_pressed_Right:
C - - - - - 0x03A3AE 0E:A39E: A2 00     LDX #$00
C - - - - - 0x03A3B0 0E:A3A0: A9 0C     LDA #$0C
C - - - - - 0x03A3B2 0E:A3A2: 20 0B 84  JSR sub_840B
C - - - - - 0x03A3B5 0E:A3A5: D0 03     BNE bra_A3AA
C - - - - - 0x03A3B7 0E:A3A7: 4C 8D A0  JMP loc_A08D
bra_A3AA:
C - - - - - 0x03A3BA 0E:A3AA: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03A3BD 0E:A3AD: 18        CLC
C - - - - - 0x03A3BE 0E:A3AE: 69 04     ADC #$04
C - - - - - 0x03A3C0 0E:A3B0: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x03A3C3 0E:A3B3: 4C 1B 9E  JMP loc_9E1B
bra_A3B6:
C - - - - - 0x03A3C6 0E:A3B6: 20 49 A3  JSR sub_A349
C - - - - - 0x03A3C9 0E:A3B9: B0 3B     BCS bra_A3F6_RTS
C - - - - - 0x03A3CB 0E:A3BB: A2 F8     LDX #$F8
C - - - - - 0x03A3CD 0E:A3BD: A9 FF     LDA #$FF
C - - - - - 0x03A3CF 0E:A3BF: 20 0B 84  JSR sub_840B
C - - - - - 0x03A3D2 0E:A3C2: F0 0C     BEQ bra_A3D0
C - - - - - 0x03A3D4 0E:A3C4: A2 F8     LDX #$F8
C - - - - - 0x03A3D6 0E:A3C6: A9 01     LDA #$01
C - - - - - 0x03A3D8 0E:A3C8: 20 0B 84  JSR sub_840B
C - - - - - 0x03A3DB 0E:A3CB: F0 07     BEQ bra_A3D4
C - - - - - 0x03A3DD 0E:A3CD: 4C E9 A3  JMP loc_A3E9
bra_A3D0:
C - - - - - 0x03A3E0 0E:A3D0: A9 01     LDA #$01
C - - - - - 0x03A3E2 0E:A3D2: D0 02     BNE bra_A3D6    ; jmp
bra_A3D4:
C - - - - - 0x03A3E4 0E:A3D4: A9 00     LDA #$00
bra_A3D6:
C - - - - - 0x03A3E6 0E:A3D6: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A3E9 0E:A3D9: 20 4A A5  JSR sub_A54A
C - - - - - 0x03A3EC 0E:A3DC: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03A3EF 0E:A3DF: 38        SEC
C - - - - - 0x03A3F0 0E:A3E0: E9 08     SBC #$08
C - - - - - 0x03A3F2 0E:A3E2: 85 D3     STA ram_00D3
C - - - - - 0x03A3F4 0E:A3E4: A9 34     LDA #con_plr_state_34
C - - - - - 0x03A3F6 0E:A3E6: 4C EC A1  JMP loc_A1EC



loc_A3E9:
C D 1 - - - 0x03A3F9 0E:A3E9: A5 28     LDA ram_btn_hold
C - - - - - 0x03A3FB 0E:A3EB: 4A        LSR
C - - - - - 0x03A3FC 0E:A3EC: B0 09     BCS bra_A3F7_pressed_Right
C - - - - - 0x03A3FE 0E:A3EE: 4A        LSR
C - - - - - 0x03A3FF 0E:A3EF: B0 1A     BCS bra_A40B_pressed_Left
C - - - - - 0x03A401 0E:A3F1: A9 1E     LDA #$1E
C - - - - - 0x03A403 0E:A3F3: 8D 00 04  STA ram_plr_anim_id
bra_A3F6_RTS:
C - - - - - 0x03A406 0E:A3F6: 60        RTS
bra_A3F7_pressed_Right:
C - - - - - 0x03A407 0E:A3F7: A9 00     LDA #$00    ; facing right
C - - - - - 0x03A409 0E:A3F9: 8D A8 04  STA ram_plr_facing
C - - - - - 0x03A40C 0E:A3FC: A2 00     LDX #$00
C - - - - - 0x03A40E 0E:A3FE: A9 0C     LDA #$0C
C - - - - - 0x03A410 0E:A400: 20 0B 84  JSR sub_840B
C - - - - - 0x03A413 0E:A403: D0 14     BNE bra_A419
C - - - - - 0x03A415 0E:A405: A9 01     LDA #$01    ; facing left
C - - - - - 0x03A417 0E:A407: A0 40     LDY #$40
C - - - - - 0x03A419 0E:A409: D0 17     BNE bra_A422    ; jmp
bra_A40B_pressed_Left:
C - - - - - 0x03A41B 0E:A40B: A9 01     LDA #$01    ; facing left
C - - - - - 0x03A41D 0E:A40D: 8D A8 04  STA ram_plr_facing
C - - - - - 0x03A420 0E:A410: A2 00     LDX #$00
C - - - - - 0x03A422 0E:A412: A9 F4     LDA #$F4
C - - - - - 0x03A424 0E:A414: 20 0B 84  JSR sub_840B
C - - - - - 0x03A427 0E:A417: F0 05     BEQ bra_A41E
bra_A419:
C - - - - - 0x03A429 0E:A419: A9 00     LDA #$00    ; > 0000
C - - - - - 0x03A42B 0E:A41B: A8        TAY ; 00    ; < 0000
C - - - - - 0x03A42C 0E:A41C: F0 04     BEQ bra_A422    ; jmp
bra_A41E:
C - - - - - 0x03A42E 0E:A41E: A9 FE     LDA #> $FEC0
C - - - - - 0x03A430 0E:A420: A0 C0     LDY #< $FEC0
bra_A422:
C - - - - - 0x03A432 0E:A422: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A435 0E:A425: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x03A438 0E:A428: 20 73 EF  JSR sub_0x03EF83
C - - - - - 0x03A43B 0E:A42B: 4C 3A 87  JMP loc_873A



ofs_Grant_state_A42E_34:
C - - J - - 0x03A43E 0E:A42E: A0 00     LDY #$00
C - - - - - 0x03A440 0E:A430: 20 CC A4  JSR sub_A4CC
C - - - - - 0x03A443 0E:A433: B0 01     BCS bra_A436
C - - - - - 0x03A445 0E:A435: 60        RTS
bra_A436:
C - - - - - 0x03A446 0E:A436: A9 36     LDA #con_plr_state_36
C - - - - - 0x03A448 0E:A438: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A44B 0E:A43B: A9 08     LDA #$08
C - - - - - 0x03A44D 0E:A43D: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x03A450 0E:A440: 60        RTS



ofs_Grant_state_A441_36:
C - - J - - 0x03A451 0E:A441: CE 7C 05  DEC ram_plr_anim_timer
C - - - - - 0x03A454 0E:A444: F0 01     BEQ bra_A447
C - - - - - 0x03A456 0E:A446: 60        RTS
bra_A447:
C - - - - - 0x03A457 0E:A447: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A45A 0E:A44A: F0 06     BEQ bra_A452
C - - - - - 0x03A45C 0E:A44C: 20 1B 9E  JSR sub_9E1B
C - - - - - 0x03A45F 0E:A44F: 4C 55 A4  JMP loc_A455
bra_A452:
C - - - - - 0x03A462 0E:A452: 20 0B 9E  JSR sub_9E0B
loc_A455:
C D 1 - - - 0x03A465 0E:A455: A0 00     LDY #$00
C - - - - - 0x03A467 0E:A457: 8C 93 05  STY ram_plr_anim_cnt
C - - - - - 0x03A46A 0E:A45A: C8        INY ; 01
C - - - - - 0x03A46B 0E:A45B: 8C 7C 05  STY ram_plr_anim_timer
C - - - - - 0x03A46E 0E:A45E: A9 00     LDA #$00
C - - - - - 0x03A470 0E:A460: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A473 0E:A463: 60        RTS



ofs_Grant_state_A464_38:
C - - J - - 0x03A474 0E:A464: A0 02     LDY #$02
C - - - - - 0x03A476 0E:A466: 20 CC A4  JSR sub_A4CC
C - - - - - 0x03A479 0E:A469: B0 01     BCS bra_A46C
C - - - - - 0x03A47B 0E:A46B: 60        RTS
bra_A46C:
C - - - - - 0x03A47C 0E:A46C: A9 3A     LDA #con_plr_state_3A
C - - - - - 0x03A47E 0E:A46E: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A481 0E:A471: A9 10     LDA #$10
C - - - - - 0x03A483 0E:A473: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x03A486 0E:A476: 60        RTS



ofs_Grant_state_A477_3A:
C - - J - - 0x03A487 0E:A477: CE 7C 05  DEC ram_plr_anim_timer
C - - - - - 0x03A48A 0E:A47A: F0 01     BEQ bra_A47D
C - - - - - 0x03A48C 0E:A47C: 60        RTS
bra_A47D:
C - - - - - 0x03A48D 0E:A47D: 4C 0B 9F  JMP loc_9F0B



ofs_Grant_state_A480_3C:
C - - J - - 0x03A490 0E:A480: A0 04     LDY #$04
C - - - - - 0x03A492 0E:A482: 20 CC A4  JSR sub_A4CC
C - - - - - 0x03A495 0E:A485: B0 01     BCS bra_A488
C - - - - - 0x03A497 0E:A487: 60        RTS
bra_A488:
C - - - - - 0x03A498 0E:A488: A9 3E     LDA #con_plr_state_3E
C - - - - - 0x03A49A 0E:A48A: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A49D 0E:A48D: A9 08     LDA #$08
C - - - - - 0x03A49F 0E:A48F: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x03A4A2 0E:A492: 60        RTS



ofs_Grant_state_A493_3E:
C - - J - - 0x03A4A3 0E:A493: CE 7C 05  DEC ram_plr_anim_timer
C - - - - - 0x03A4A6 0E:A496: F0 01     BEQ bra_A499
C - - - - - 0x03A4A8 0E:A498: 60        RTS
bra_A499:
C - - - - - 0x03A4A9 0E:A499: A9 02     LDA #con_plr_state_idle_on_ground
C - - - - - 0x03A4AB 0E:A49B: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A4AE 0E:A49E: 60        RTS



ofs_Grant_state_A49F_40:
- - - - - - 0x03A4AF 0E:A49F: A0 06     LDY #$06
- - - - - - 0x03A4B1 0E:A4A1: 20 CC A4  JSR sub_A4CC
- - - - - - 0x03A4B4 0E:A4A4: B0 01     BCS bra_A4A7
- - - - - - 0x03A4B6 0E:A4A6: 60        RTS
bra_A4A7:
- - - - - - 0x03A4B7 0E:A4A7: A9 42     LDA #con_plr_state_42
- - - - - - 0x03A4B9 0E:A4A9: 8D 65 05  STA ram_plr_state
- - - - - - 0x03A4BC 0E:A4AC: A9 08     LDA #$08
- - - - - - 0x03A4BE 0E:A4AE: 8D 7C 05  STA ram_plr_anim_timer
- - - - - - 0x03A4C1 0E:A4B1: 60        RTS



ofs_Grant_state_A4B2_42:
- - - - - - 0x03A4C2 0E:A4B2: CE 7C 05  DEC ram_plr_anim_timer
- - - - - - 0x03A4C5 0E:A4B5: F0 01     BEQ bra_A4B8
- - - - - - 0x03A4C7 0E:A4B7: 60        RTS
bra_A4B8:
- - - - - - 0x03A4C8 0E:A4B8: AD C1 05  LDA ram_05C1_plr
- - - - - - 0x03A4CB 0E:A4BB: F0 06     BEQ bra_A4C3
- - - - - - 0x03A4CD 0E:A4BD: 20 17 9E  JSR sub_9E17
- - - - - - 0x03A4D0 0E:A4C0: 4C C6 A4  JMP loc_A4C6
bra_A4C3:
- - - - - - 0x03A4D3 0E:A4C3: 20 07 9E  JSR sub_9E07
loc_A4C6:
- - - - - - 0x03A4D6 0E:A4C6: A9 00     LDA #$00
- - - - - - 0x03A4D8 0E:A4C8: 8D D8 05  STA ram_05D8_plr
- - - - - - 0x03A4DB 0E:A4CB: 60        RTS



sub_A4CC:
C - - - - - 0x03A4DC 0E:A4CC: CE 7C 05  DEC ram_plr_anim_timer
C - - - - - 0x03A4DF 0E:A4CF: F0 04     BEQ bra_A4D5
C - - - - - 0x03A4E1 0E:A4D1: 18        CLC
C - - - - - 0x03A4E2 0E:A4D2: 60        RTS



bra_A4D3_FF:
C - - - - - 0x03A4E3 0E:A4D3: 38        SEC
C - - - - - 0x03A4E4 0E:A4D4: 60        RTS



bra_A4D5:
C - - - - - 0x03A4E5 0E:A4D5: B9 74 A5  LDA tbl_A574,Y
C - - - - - 0x03A4E8 0E:A4D8: 85 08     STA ram_0008_t008_data
C - - - - - 0x03A4EA 0E:A4DA: B9 75 A5  LDA tbl_A574 + $01,Y
C - - - - - 0x03A4ED 0E:A4DD: 85 09     STA ram_0008_t008_data + $01
C - - - - - 0x03A4EF 0E:A4DF: AD 93 05  LDA ram_plr_anim_cnt
; * 05
C - - - - - 0x03A4F2 0E:A4E2: 0A        ASL
C - - - - - 0x03A4F3 0E:A4E3: 0A        ASL
C - - - - - 0x03A4F4 0E:A4E4: 18        CLC
C - - - - - 0x03A4F5 0E:A4E5: 6D 93 05  ADC ram_plr_anim_cnt
C - - - - - 0x03A4F8 0E:A4E8: A8        TAY
C - - - - - 0x03A4F9 0E:A4E9: B1 08     LDA (ram_0008_t008_data),Y
C - - - - - 0x03A4FB 0E:A4EB: C9 FF     CMP #$FF
C - - - - - 0x03A4FD 0E:A4ED: F0 E4     BEQ bra_A4D3_FF
C - - - - - 0x03A4FF 0E:A4EF: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03A502 0E:A4F2: C8        INY
C - - - - - 0x03A503 0E:A4F3: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A506 0E:A4F6: F0 09     BEQ bra_A501
C - - - - - 0x03A508 0E:A4F8: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03A50B 0E:A4FB: 38        SEC
C - - - - - 0x03A50C 0E:A4FC: F1 08     SBC (ram_0008_t008_data),Y
C - - - - - 0x03A50E 0E:A4FE: 4C 07 A5  JMP loc_A507
bra_A501:
C - - - - - 0x03A511 0E:A501: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03A514 0E:A504: 18        CLC
C - - - - - 0x03A515 0E:A505: 71 08     ADC (ram_0008_t008_data),Y
loc_A507:
C D 1 - - - 0x03A517 0E:A507: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x03A51A 0E:A50A: C8        INY
C - - - - - 0x03A51B 0E:A50B: B1 08     LDA (ram_0008_t008_data),Y
C - - - - - 0x03A51D 0E:A50D: 18        CLC
C - - - - - 0x03A51E 0E:A50E: 65 D3     ADC ram_00D3
C - - - - - 0x03A520 0E:A510: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03A523 0E:A513: C8        INY
C - - - - - 0x03A524 0E:A514: B1 08     LDA (ram_0008_t008_data),Y
C - - - - - 0x03A526 0E:A516: 8D 7C 05  STA ram_plr_anim_timer
C - - - - - 0x03A529 0E:A519: C8        INY
C - - - - - 0x03A52A 0E:A51A: B1 08     LDA (ram_0008_t008_data),Y
C - - - - - 0x03A52C 0E:A51C: 4D C1 05  EOR ram_05C1_plr
C - - - - - 0x03A52F 0E:A51F: 8D A8 04  STA ram_plr_facing
C - - - - - 0x03A532 0E:A522: EE 93 05  INC ram_plr_anim_cnt
C - - - - - 0x03A535 0E:A525: 18        CLC
C - - - - - 0x03A536 0E:A526: 60        RTS



sub_A527:
- - - - - - 0x03A537 0E:A527: AD C1 05  LDA ram_05C1_plr
- - - - - - 0x03A53A 0E:A52A: F0 2C     BEQ bra_A558
- - - - - - 0x03A53C 0E:A52C: A9 07     LDA #$07
- - - - - - 0x03A53E 0E:A52E: 18        CLC
- - - - - - 0x03A53F 0E:A52F: 6D 38 04  ADC ram_plr_pos_X_hi
- - - - - - 0x03A542 0E:A532: 4C 5E A5  JMP loc_A55E



sub_A535:
C - - - - - 0x03A545 0E:A535: 20 02 8A  JSR sub_8A02
C - - - - - 0x03A548 0E:A538: 85 D3     STA ram_00D3
C - - - - - 0x03A54A 0E:A53A: 60        RTS



sub_A53B:
C - - - - - 0x03A54B 0E:A53B: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03A54E 0E:A53E: 18        CLC
C - - - - - 0x03A54F 0E:A53F: 69 01     ADC #$01
C - - - - - 0x03A551 0E:A541: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03A554 0E:A544: 20 02 8A  JSR sub_8A02
C - - - - - 0x03A557 0E:A547: 85 D3     STA ram_00D3
C - - - - - 0x03A559 0E:A549: 60        RTS



sub_A54A:
C - - - - - 0x03A55A 0E:A54A: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A55D 0E:A54D: F0 09     BEQ bra_A558
C - - - - - 0x03A55F 0E:A54F: A9 02     LDA #$02
C - - - - - 0x03A561 0E:A551: 18        CLC
C - - - - - 0x03A562 0E:A552: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x03A565 0E:A555: 4C 5E A5  JMP loc_A55E
bra_A558:
C - - - - - 0x03A568 0E:A558: 18        CLC
C - - - - - 0x03A569 0E:A559: A9 01     LDA #$01
C - - - - - 0x03A56B 0E:A55B: 6D 38 04  ADC ram_plr_pos_X_hi
loc_A55E:
C D 1 - - - 0x03A56E 0E:A55E: A4 68     LDY ram_0068
C - - - - - 0x03A570 0E:A560: 30 0C     BMI bra_A56E
C - - - - - 0x03A572 0E:A562: 18        CLC
C - - - - - 0x03A573 0E:A563: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x03A575 0E:A565: 29 F8     AND #$F8
C - - - - - 0x03A577 0E:A567: 38        SEC
C - - - - - 0x03A578 0E:A568: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x03A57A 0E:A56A: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A57D 0E:A56D: 60        RTS
bra_A56E:
C - - - - - 0x03A57E 0E:A56E: 29 F8     AND #$F8
C - - - - - 0x03A580 0E:A570: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03A583 0E:A573: 60        RTS



tbl_A574:
- D 1 - - - 0x03A584 0E:A574: 7C A5     .word off_A57C_00
- D 1 - - - 0x03A586 0E:A576: 87 A5     .word off_A587_01
- D 1 - - - 0x03A588 0E:A578: 92 A5     .word off_A592_02
- - - - - - 0x03A58A 0E:A57A: 9D A5     .word off_A59D_03



off_A57C_00:
;                                              +------------------------- animation
;                                              |    +-------------------- pos_X_hi
;                                              |    |    +--------------- pos_Y_hi
;                                              |    |    |    +---------- timer
;                                              |    |    |    |    +----- facing
;                                              |    |    |    |    |
- D 1 - I - 0x03A58C 0E:A57C: 3C        .byte $3C, $00, $00, $08, $00   ; 00 
- D 1 - I - 0x03A591 0E:A581: 18        .byte $18, $08, $F8, $01, $01   ; 01 
- D 1 - I - 0x03A596 0E:A586: FF        .byte $FF   ; 02 end token



off_A587_01:
;                                              +------------------------- animation
;                                              |    +-------------------- pos_X_hi
;                                              |    |    +--------------- pos_Y_hi
;                                              |    |    |    +---------- timer
;                                              |    |    |    |    +----- facing
;                                              |    |    |    |    |
- D 1 - I - 0x03A597 0E:A587: 42        .byte $42, $00, $00, $08, $00   ; 00 
- D 1 - I - 0x03A59C 0E:A58C: 1E        .byte $1E, $08, $04, $01, $00   ; 01 
- D 1 - I - 0x03A5A1 0E:A591: FF        .byte $FF   ; 02 end token



off_A592_02:
;                                              +------------------------- animation
;                                              |    +-------------------- pos_X_hi
;                                              |    |    +--------------- pos_Y_hi
;                                              |    |    |    +---------- timer
;                                              |    |    |    |    +----- facing
;                                              |    |    |    |    |
- D 1 - I - 0x03A5A2 0E:A592: 40        .byte $40, $00, $00, $08, $00   ; 00 
- D 1 - I - 0x03A5A7 0E:A597: 0E        .byte $0E, $00, $F4, $01, $00   ; 01 
- D 1 - I - 0x03A5AC 0E:A59C: FF        .byte $FF   ; 02 end token



off_A59D_03:
;                                              +------------------------- animation
;                                              |    +-------------------- pos_X_hi
;                                              |    |    +--------------- pos_Y_hi
;                                              |    |    |    +---------- timer
;                                              |    |    |    |    +----- facing
;                                              |    |    |    |    |
- - - - - - 0x03A5AD 0E:A59D: 3E        .byte $3E, $00, $00, $08, $00   ; 00 
- - - - - - 0x03A5B2 0E:A5A2: 36        .byte $36, $08, $08, $01, $01   ; 01 
- - - - - - 0x03A5B7 0E:A5A7: FF        .byte $FF   ; 02 end token



sub_A5A8_Alucard_state_handler:
; con_player_Alucard
; see con_plr_state
C - - - - - 0x03A5B8 0E:A5A8: 20 A7 A6  JSR sub_A6A7
C - - - - - 0x03A5BB 0E:A5AB: 20 4F A6  JSR sub_A64F
C - - - - - 0x03A5BE 0E:A5AE: AC 65 05  LDY ram_plr_state
C - - - - - 0x03A5C1 0E:A5B1: 20 86 E8  JSR sub_0x03E896_jump_to_pointers_after_JSR_Y
- D 1 - I - 0x03A5C4 0E:A5B4: C5 8A     .word ofs_Alucard_state_8AC5_00
- D 1 - I - 0x03A5C6 0E:A5B6: 38 95     .word ofs_Alucard_state_9538_02_idle_on_ground
- D 1 - I - 0x03A5C8 0E:A5B8: 60 96     .word ofs_Alucard_state_9660_04_move_on_ground
- D 1 - I - 0x03A5CA 0E:A5BA: 1D 96     .word ofs_Alucard_state_961D_06
- D 1 - I - 0x03A5CC 0E:A5BC: 70 97     .word ofs_Alucard_state_9770_08_jump
- D 1 - I - 0x03A5CE 0E:A5BE: 19 99     .word ofs_Alucard_state_9919_0A_duck
- D 1 - I - 0x03A5D0 0E:A5C0: 70 97     .word ofs_Alucard_state_9770_0C_fall
- D 1 - I - 0x03A5D2 0E:A5C2: 53 99     .word ofs_Alucard_state_9953_0E_move_towards_stairs
- D 1 - I - 0x03A5D4 0E:A5C4: 67 99     .word ofs_Alucard_state_9967_10_climb_on_stairs
- D 1 - I - 0x03A5D6 0E:A5C6: 8E 99     .word ofs_Alucard_state_998E_12_idle_on_stairs
- D 1 - I - 0x03A5D8 0E:A5C8: 93 9A     .word ofs_Alucard_state_9A93_14_move_on_stairs
- D 1 - I - 0x03A5DA 0E:A5CA: 42 99     .word ofs_Alucard_state_9942_16
- - - - - - 0x03A5DC 0E:A5CC: F8 A5     .word ofs_Alucard_state_A5F8_18_RTS
- - - - - - 0x03A5DE 0E:A5CE: F8 A5     .word ofs_Alucard_state_A5F8_1A_RTS
- D 1 - I - 0x03A5E0 0E:A5D0: F9 A5     .word ofs_Alucard_state_A5F9_1C_normal_attack_duck
- - - - - - 0x03A5E2 0E:A5D2: F8 A5     .word ofs_Alucard_state_A5F8_1E_RTS
- D 1 - I - 0x03A5E4 0E:A5D4: B8 94     .word ofs_Alucard_state_94B8_20_subweapon_attack_on_ground
- D 1 - I - 0x03A5E6 0E:A5D6: D4 94     .word ofs_Alucard_state_94D4_22_subweapon_attack_jump
- - - - - - 0x03A5E8 0E:A5D8: FF 94     .word ofs_Alucard_state_94FF_24_subweapon_attack_on_stairs
- D 1 - I - 0x03A5EA 0E:A5DA: 1C 83     .word ofs_Alucard_state_831C_26_knockback
- - - - - - 0x03A5EC 0E:A5DC: B1 93     .word ofs_Alucard_state_93B1_28
- - - - - - 0x03A5EE 0E:A5DE: B1 93     .word ofs_Alucard_state_93B1_2A
- D 1 - I - 0x03A5F0 0E:A5E0: 57 8B     .word ofs_Alucard_state_8B57_2C
- D 1 - I - 0x03A5F2 0E:A5E2: DE 8A     .word ofs_Alucard_state_8ADE_2E_death
- D 1 - I - 0x03A5F4 0E:A5E4: BB A6     .word ofs_Alucard_state_A6BB_30
- D 1 - I - 0x03A5F6 0E:A5E6: D3 A6     .word ofs_Alucard_state_A6D3_32
- D 1 - I - 0x03A5F8 0E:A5E8: 56 A8     .word ofs_Alucard_state_A856_34
- D 1 - I - 0x03A5FA 0E:A5EA: 8F AC     .word ofs_Alucard_state_AC8F_36
- D 1 - I - 0x03A5FC 0E:A5EC: C7 AC     .word ofs_Alucard_state_ACC7_38
- D 1 - I - 0x03A5FE 0E:A5EE: 07 AD     .word ofs_Alucard_state_AD07_3A
- D 1 - I - 0x03A600 0E:A5F0: 26 A7     .word ofs_Alucard_state_A726_3C
- D 1 - I - 0x03A602 0E:A5F2: 37 A7     .word ofs_Alucard_state_A737_3E
- - - - - - 0x03A604 0E:A5F4: ED A7     .word ofs_Alucard_state_A7ED_40
- - - - - - 0x03A606 0E:A5F6: 8B A7     .word ofs_Alucard_state_A78B_42



ofs_Alucard_state_A5F8_18_RTS:
ofs_Alucard_state_A5F8_1A_RTS:
ofs_Alucard_state_A5F8_1E_RTS:
; bzk optimize
- - - - - - 0x03A608 0E:A5F8: 60        RTS



ofs_Alucard_state_A5F9_1C_normal_attack_duck:
C - - J - - 0x03A609 0E:A5F9: 20 21 84  JSR sub_8421    ; possible PLA PLA
C - - - - - 0x03A60C 0E:A5FC: B0 03     BCS bra_A601
- - - - - - 0x03A60E 0E:A5FE: 4C 3A 97  JMP loc_973A
bra_A601:
C - - - - - 0x03A611 0E:A601: 20 8E 91  JSR sub_918E
C - - - - - 0x03A614 0E:A604: 20 36 99  JSR sub_9936
C - - - - - 0x03A617 0E:A607: AD 65 05  LDA ram_plr_state
C - - - - - 0x03A61A 0E:A60A: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x03A61C 0E:A60C: D0 08     BNE bra_A616
C - - - - - 0x03A61E 0E:A60E: A9 20     LDA #con_plr_state_subw_atk_on_ground
C - - - - - 0x03A620 0E:A610: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A623 0E:A613: 4C B8 94  JMP loc_94B8
bra_A616:
C - - - - - 0x03A626 0E:A616: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x03A629 0E:A619: B0 01     BCS bra_A61C
C - - - - - 0x03A62B 0E:A61B: 60        RTS
bra_A61C:
C - - - - - 0x03A62C 0E:A61C: A9 0A     LDA #con_plr_state_duck
C - - - - - 0x03A62E 0E:A61E: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A631 0E:A621: A9 0E     LDA #$0E
C - - - - - 0x03A633 0E:A623: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03A636 0E:A626: 60        RTS



sub_A627:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03A637 0E:A627: A9 05     LDA #$05
C - - - - - 0x03A639 0E:A629: A2 F0     LDX #$F0
C - - - - - 0x03A63B 0E:A62B: 20 0B 84  JSR sub_840B
C - - - - - 0x03A63E 0E:A62E: F0 1D     BEQ bra_A64D
C - - - - - 0x03A640 0E:A630: A9 05     LDA #$05
C - - - - - 0x03A642 0E:A632: A2 10     LDX #$10
C - - - - - 0x03A644 0E:A634: 20 0B 84  JSR sub_840B
C - - - - - 0x03A647 0E:A637: F0 14     BEQ bra_A64D
- - - - - - 0x03A649 0E:A639: A9 FB     LDA #$FB
- - - - - - 0x03A64B 0E:A63B: A2 F0     LDX #$F0
- - - - - - 0x03A64D 0E:A63D: 20 0B 84  JSR sub_840B
- - - - - - 0x03A650 0E:A640: F0 0B     BEQ bra_A64D
- - - - - - 0x03A652 0E:A642: A9 FB     LDA #$FB
- - - - - - 0x03A654 0E:A644: A2 10     LDX #$10
- - - - - - 0x03A656 0E:A646: 20 0B 84  JSR sub_840B
- - - - - - 0x03A659 0E:A649: F0 02     BEQ bra_A64D
- - - - - - 0x03A65B 0E:A64B: 38        SEC
- - - - - - 0x03A65C 0E:A64C: 60        RTS
bra_A64D:
C - - - - - 0x03A65D 0E:A64D: 18        CLC
C - - - - - 0x03A65E 0E:A64E: 60        RTS



sub_A64F:
C - - - - - 0x03A65F 0E:A64F: A5 3C     LDA ram_hp_player
C - - - - - 0x03A661 0E:A651: F0 21     BEQ bra_A674_RTS
C - - - - - 0x03A663 0E:A653: A5 84     LDA ram_hearts
C - - - - - 0x03A665 0E:A655: F0 1D     BEQ bra_A674_RTS
C - - - - - 0x03A667 0E:A657: A5 26     LDA ram_btn_press
C - - - - - 0x03A669 0E:A659: 29 80     AND #con_btn_A
C - - - - - 0x03A66B 0E:A65B: F0 17     BEQ bra_A674_RTS
C - - - - - 0x03A66D 0E:A65D: A5 28     LDA ram_btn_hold
C - - - - - 0x03A66F 0E:A65F: 29 04     AND #con_btn_Down
C - - - - - 0x03A671 0E:A661: F0 11     BEQ bra_A674_RTS
C - - - - - 0x03A673 0E:A663: A0 00     LDY #$00
bra_A665_loop:
C - - - - - 0x03A675 0E:A665: B9 97 A6  LDA tbl_A697_plr_state,Y
C - - - - - 0x03A678 0E:A668: C9 FF     CMP #$FF
C - - - - - 0x03A67A 0E:A66A: F0 09     BEQ bra_A675_FF
C - - - - - 0x03A67C 0E:A66C: CD 65 05  CMP ram_plr_state
C - - - - - 0x03A67F 0E:A66F: F0 03     BEQ bra_A674_RTS
C - - - - - 0x03A681 0E:A671: C8        INY
C - - - - - 0x03A682 0E:A672: D0 F1     BNE bra_A665_loop    ; jmp
bra_A674_RTS:
C - - - - - 0x03A684 0E:A674: 60        RTS
bra_A675_FF:
C - - - - - 0x03A685 0E:A675: A0 00     LDY #$00
bra_A677_loop:
C - - - - - 0x03A687 0E:A677: B9 A2 A6  LDA tbl_A6A2_plr_state,Y
C - - - - - 0x03A68A 0E:A67A: C9 FF     CMP #$FF
C - - - - - 0x03A68C 0E:A67C: F0 13     BEQ bra_A691_FF
C - - - - - 0x03A68E 0E:A67E: CD 65 05  CMP ram_plr_state
C - - - - - 0x03A691 0E:A681: F0 03     BEQ bra_A686
C - - - - - 0x03A693 0E:A683: C8        INY
C - - - - - 0x03A694 0E:A684: D0 F1     BNE bra_A677_loop
bra_A686:
C - - - - - 0x03A696 0E:A686: 20 27 A6  JSR sub_A627
C - - - - - 0x03A699 0E:A689: B0 E9     BCS bra_A674_RTS
C - - - - - 0x03A69B 0E:A68B: A9 3C     LDA #con_plr_state_3C
C - - - - - 0x03A69D 0E:A68D: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A6A0 0E:A690: 60        RTS
bra_A691_FF:
C - - - - - 0x03A6A1 0E:A691: A9 30     LDA #con_plr_state_30
C - - - - - 0x03A6A3 0E:A693: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A6A6 0E:A696: 60        RTS



tbl_A697_plr_state:
- D 1 - - - 0x03A6A7 0E:A697: 00        .byte con_plr_state_00   ; 00 
- D 1 - - - 0x03A6A8 0E:A698: 16        .byte con_plr_state_16   ; 01 
- D 1 - - - 0x03A6A9 0E:A699: 30        .byte con_plr_state_30   ; 02 
- D 1 - - - 0x03A6AA 0E:A69A: 32        .byte con_plr_state_32   ; 03 
- D 1 - - - 0x03A6AB 0E:A69B: 3C        .byte con_plr_state_3C   ; 04 
- D 1 - - - 0x03A6AC 0E:A69C: 3E        .byte con_plr_state_3E   ; 05 
- D 1 - - - 0x03A6AD 0E:A69D: 28        .byte con_plr_state_28   ; 06 
- D 1 - - - 0x03A6AE 0E:A69E: 2A        .byte con_plr_state_2A   ; 07 
- D 1 - - - 0x03A6AF 0E:A69F: 2C        .byte con_plr_state_2C   ; 08 
- D 1 - - - 0x03A6B0 0E:A6A0: 2E        .byte con_plr_state_death   ; 09 
- D 1 - - - 0x03A6B1 0E:A6A1: FF        .byte $FF   ; 0A end token



tbl_A6A2_plr_state:
- D 1 - - - 0x03A6B2 0E:A6A2: 34        .byte con_plr_state_34   ; 00 
- D 1 - - - 0x03A6B3 0E:A6A3: 36        .byte con_plr_state_36   ; 01 
- D 1 - - - 0x03A6B4 0E:A6A4: 38        .byte con_plr_state_38   ; 02 
- D 1 - - - 0x03A6B5 0E:A6A5: 3A        .byte con_plr_state_3A   ; 03 
- D 1 - - - 0x03A6B6 0E:A6A6: FF        .byte $FF   ; 04 end token



sub_A6A7:
C - - - - - 0x03A6B7 0E:A6A7: A0 00     LDY #$00
bra_A6A9_loop:
C - - - - - 0x03A6B9 0E:A6A9: B9 A2 A6  LDA tbl_A6A2_plr_state,Y
C - - - - - 0x03A6BC 0E:A6AC: 30 0C     BMI bra_A6BA_RTS
C - - - - - 0x03A6BE 0E:A6AE: CD 65 05  CMP ram_plr_state
C - - - - - 0x03A6C1 0E:A6B1: F0 03     BEQ bra_A6B6
C - - - - - 0x03A6C3 0E:A6B3: C8        INY
C - - - - - 0x03A6C4 0E:A6B4: D0 F3     BNE bra_A6A9_loop    ; jmp
bra_A6B6:
C - - - - - 0x03A6C6 0E:A6B6: A9 08     LDA #$08
C - - - - - 0x03A6C8 0E:A6B8: 85 82     STA ram_copy_plr_id
bra_A6BA_RTS:
C - - - - - 0x03A6CA 0E:A6BA: 60        RTS



ofs_Alucard_state_A6BB_30:
C - - J - - 0x03A6CB 0E:A6BB: A9 2F     LDA #con_sound_2F
C - - - - - 0x03A6CD 0E:A6BD: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03A6D0 0E:A6C0: A9 05     LDA #$05
C - - - - - 0x03A6D2 0E:A6C2: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
C - - - - - 0x03A6D5 0E:A6C5: A9 01     LDA #$01
C - - - - - 0x03A6D7 0E:A6C7: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A6DA 0E:A6CA: 85 AE     STA ram_00AE
C - - - - - 0x03A6DC 0E:A6CC: EE 65 05  INC ram_plr_state
C - - - - - 0x03A6DF 0E:A6CF: EE 65 05  INC ram_plr_state   ; -> con_plr_state_32
C - - - - - 0x03A6E2 0E:A6D2: 60        RTS



ofs_Alucard_state_A6D3_32:
C - - J - - 0x03A6E3 0E:A6D3: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A6E6 0E:A6D6: F0 06     BEQ bra_A6DE
C - - - - - 0x03A6E8 0E:A6D8: CE C1 05  DEC ram_05C1_plr
C - - - - - 0x03A6EB 0E:A6DB: 4C EA A6  JMP loc_A6EA
bra_A6DE:
C - - - - - 0x03A6EE 0E:A6DE: AD 93 05  LDA ram_plr_anim_cnt
C - - - - - 0x03A6F1 0E:A6E1: D0 07     BNE bra_A6EA
C - - - - - 0x03A6F3 0E:A6E3: AD 7C 05  LDA ram_plr_anim_timer
C - - - - - 0x03A6F6 0E:A6E6: C9 01     CMP #$01
C - - - - - 0x03A6F8 0E:A6E8: F0 03     BEQ bra_A6ED
bra_A6EA:
loc_A6EA:   ; bzk optimize
C D 1 - - - 0x03A6FA 0E:A6EA: 4C 73 EF  JMP loc_0x03EF83
bra_A6ED:
C - - - - - 0x03A6FD 0E:A6ED: A9 03     LDA #$03
C - - - - - 0x03A6FF 0E:A6EF: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
C - - - - - 0x03A702 0E:A6F2: 20 0A A7  JSR sub_A70A
C - - - - - 0x03A705 0E:A6F5: A9 00     LDA #$00
C - - - - - 0x03A707 0E:A6F7: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A70A 0E:A6FA: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A70D 0E:A6FD: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A710 0E:A700: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A713 0E:A703: EE 65 05  INC ram_plr_state
C - - - - - 0x03A716 0E:A706: EE 65 05  INC ram_plr_state   ; -> con_plr_state_34
C - - - - - 0x03A719 0E:A709: 60        RTS



sub_A70A:
C - - - - - 0x03A71A 0E:A70A: A9 00     LDA #$00
C - - - - - 0x03A71C 0E:A70C: AA        TAX ; 00
C - - - - - 0x03A71D 0E:A70D: 20 0B 84  JSR sub_840B
C - - - - - 0x03A720 0E:A710: D0 01     BNE bra_A713
bra_A712_RTS:
C - - - - - 0x03A722 0E:A712: 60        RTS
bra_A713:
- - - - - - 0x03A723 0E:A713: A9 00     LDA #$00
- - - - - - 0x03A725 0E:A715: A2 08     LDX #$08
- - - - - - 0x03A727 0E:A717: 20 0B 84  JSR sub_840B
- - - - - - 0x03A72A 0E:A71A: D0 F6     BNE bra_A712_RTS
- - - - - - 0x03A72C 0E:A71C: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x03A72F 0E:A71F: 18        CLC
- - - - - - 0x03A730 0E:A720: 69 08     ADC #$08
- - - - - - 0x03A732 0E:A722: 8D 1C 04  STA ram_plr_pos_Y_hi
- - - - - - 0x03A735 0E:A725: 60        RTS



ofs_Alucard_state_A726_3C:
C - - J - - 0x03A736 0E:A726: A9 06     LDA #$06
C - - - - - 0x03A738 0E:A728: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
C - - - - - 0x03A73B 0E:A72B: A9 01     LDA #$01
C - - - - - 0x03A73D 0E:A72D: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A740 0E:A730: EE 65 05  INC ram_plr_state
C - - - - - 0x03A743 0E:A733: EE 65 05  INC ram_plr_state   ; -> con_plr_state_3E
C - - - - - 0x03A746 0E:A736: 60        RTS



ofs_Alucard_state_A737_3E:
C - - J - - 0x03A747 0E:A737: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x03A74A 0E:A73A: F0 06     BEQ bra_A742
C - - - - - 0x03A74C 0E:A73C: CE C1 05  DEC ram_05C1_plr
C - - - - - 0x03A74F 0E:A73F: 4C 4E A7  JMP loc_A74E
bra_A742:
C - - - - - 0x03A752 0E:A742: AD 93 05  LDA ram_plr_anim_cnt
C - - - - - 0x03A755 0E:A745: D0 07     BNE bra_A74E
C - - - - - 0x03A757 0E:A747: AD 7C 05  LDA ram_plr_anim_timer
C - - - - - 0x03A75A 0E:A74A: C9 01     CMP #$01
C - - - - - 0x03A75C 0E:A74C: F0 03     BEQ bra_A751
bra_A74E:
loc_A74E:
C D 1 - - - 0x03A75E 0E:A74E: 4C 73 EF  JMP loc_0x03EF83
bra_A751:
C - - - - - 0x03A761 0E:A751: A9 05     LDA #$05
C - - - - - 0x03A763 0E:A753: A2 10     LDX #$10
C - - - - - 0x03A765 0E:A755: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A768 0E:A758: D0 12     BNE bra_A76C
C - - - - - 0x03A76A 0E:A75A: A9 FB     LDA #$FB
C - - - - - 0x03A76C 0E:A75C: A2 10     LDX #$10
C - - - - - 0x03A76E 0E:A75E: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A771 0E:A761: D0 09     BNE bra_A76C
loc_A763:
C - - - - - 0x03A773 0E:A763: 20 3A 97  JSR sub_973A
C - - - - - 0x03A776 0E:A766: A9 0E     LDA #$0E
C - - - - - 0x03A778 0E:A768: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x03A77B 0E:A76B: 60        RTS
bra_A76C:
- - - - - - 0x03A77C 0E:A76C: 20 02 8A  JSR sub_8A02
- - - - - - 0x03A77F 0E:A76F: 4C 63 A7  JMP loc_A763



sub_A772:
; bzk optimize
C - - - - - 0x03A782 0E:A772: 8D AA 05  STA ram_05AA_plr
C - - - - - 0x03A785 0E:A775: 60        RTS



loc_A776:
C D 1 - - - 0x03A786 0E:A776: A9 FC     LDA #$FC
C - - - - - 0x03A788 0E:A778: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A78B 0E:A77B: A9 00     LDA #$00
C - - - - - 0x03A78D 0E:A77D: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A790 0E:A780: A9 15     LDA #$15
C - - - - - 0x03A792 0E:A782: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03A795 0E:A785: A9 3A     LDA #con_plr_state_3A
C - - - - - 0x03A797 0E:A787: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A79A 0E:A78A: 60        RTS



ofs_Alucard_state_A78B_42:
- - - - - - 0x03A79B 0E:A78B: A5 28     LDA ram_btn_hold
- - - - - - 0x03A79D 0E:A78D: 29 08     AND #con_btn_Up
- - - - - - 0x03A79F 0E:A78F: D0 1A     BNE bra_A7AB
- - - - - - 0x03A7A1 0E:A791: A5 28     LDA ram_btn_hold
- - - - - - 0x03A7A3 0E:A793: F0 33     BEQ bra_A7C8
- - - - - - 0x03A7A5 0E:A795: A2 06     LDX #$06
- - - - - - 0x03A7A7 0E:A797: A9 00     LDA #$00
- - - - - - 0x03A7A9 0E:A799: 20 DD FC  JSR sub_0x03FCED
- - - - - - 0x03A7AC 0E:A79C: D0 2A     BNE bra_A7C8
- - - - - - 0x03A7AE 0E:A79E: A9 40     LDA #$40
- - - - - - 0x03A7B0 0E:A7A0: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x03A7B3 0E:A7A3: A9 00     LDA #$00
- - - - - - 0x03A7B5 0E:A7A5: 8D 20 05  STA ram_plr_spd_Y_hi
- - - - - - 0x03A7B8 0E:A7A8: 4C B5 A7  JMP loc_A7B5
bra_A7AB:
- - - - - - 0x03A7BB 0E:A7AB: A9 C0     LDA #$C0
- - - - - - 0x03A7BD 0E:A7AD: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x03A7C0 0E:A7B0: A9 FF     LDA #$FF
- - - - - - 0x03A7C2 0E:A7B2: 8D 20 05  STA ram_plr_spd_Y_hi
loc_A7B5:
- - - - - - 0x03A7C5 0E:A7B5: 18        CLC
- - - - - - 0x03A7C6 0E:A7B6: AD DB 04  LDA ram_plr_pos_Y_lo
- - - - - - 0x03A7C9 0E:A7B9: 6D 37 05  ADC ram_plr_spd_Y_lo
- - - - - - 0x03A7CC 0E:A7BC: 8D DB 04  STA ram_plr_pos_Y_lo
- - - - - - 0x03A7CF 0E:A7BF: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x03A7D2 0E:A7C2: 6D 20 05  ADC ram_plr_spd_Y_hi
- - - - - - 0x03A7D5 0E:A7C5: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_A7C8:
- - - - - - 0x03A7D8 0E:A7C8: A2 10     LDX #$10
- - - - - - 0x03A7DA 0E:A7CA: A9 00     LDA #$00
- - - - - - 0x03A7DC 0E:A7CC: 20 DD FC  JSR sub_0x03FCED
- - - - - - 0x03A7DF 0E:A7CF: C9 02     CMP #$02
- - - - - - 0x03A7E1 0E:A7D1: F0 0A     BEQ bra_A7DD
- - - - - - 0x03A7E3 0E:A7D3: C9 03     CMP #$03
- - - - - - 0x03A7E5 0E:A7D5: D0 53     BNE bra_A82A
- - - - - - 0x03A7E7 0E:A7D7: A9 FE     LDA #> $FE80
- - - - - - 0x03A7E9 0E:A7D9: A0 80     LDY #< $FE80
- - - - - - 0x03A7EB 0E:A7DB: D0 04     BNE bra_A7E1    ; jmp
bra_A7DD:
- - - - - - 0x03A7ED 0E:A7DD: A9 01     LDA #> $0180
- - - - - - 0x03A7EF 0E:A7DF: A0 80     LDY #< $0180
bra_A7E1:
- - - - - - 0x03A7F1 0E:A7E1: 8D F2 04  STA ram_plr_spd_X_hi
- - - - - - 0x03A7F4 0E:A7E4: 8C 09 05  STY ram_plr_spd_X_lo
- - - - - - 0x03A7F7 0E:A7E7: 20 73 EF  JSR sub_0x03EF83
- - - - - - 0x03A7FA 0E:A7EA: 4C 3A 87  JMP loc_873A



ofs_Alucard_state_A7ED_40:
- - - - - - 0x03A7FD 0E:A7ED: A2 10     LDX #$10
- - - - - - 0x03A7FF 0E:A7EF: A9 00     LDA #$00
- - - - - - 0x03A801 0E:A7F1: 20 DD FC  JSR sub_0x03FCED
- - - - - - 0x03A804 0E:A7F4: C9 02     CMP #$02
- - - - - - 0x03A806 0E:A7F6: F0 0A     BEQ bra_A802
- - - - - - 0x03A808 0E:A7F8: C9 03     CMP #$03
- - - - - - 0x03A80A 0E:A7FA: D0 2E     BNE bra_A82A
- - - - - - 0x03A80C 0E:A7FC: A9 FE     LDA #> $FE80
- - - - - - 0x03A80E 0E:A7FE: A0 80     LDY #< $FE80
- - - - - - 0x03A810 0E:A800: D0 04     BNE bra_A806    ; jmp
bra_A802:
- - - - - - 0x03A812 0E:A802: A9 01     LDA #> $0180
- - - - - - 0x03A814 0E:A804: A0 80     LDY #< $0180
bra_A806:
- - - - - - 0x03A816 0E:A806: 8D F2 04  STA ram_plr_spd_X_hi
- - - - - - 0x03A819 0E:A809: 8C 09 05  STY ram_plr_spd_X_lo
- - - - - - 0x03A81C 0E:A80C: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x03A81F 0E:A80F: 18        CLC
- - - - - - 0x03A820 0E:A810: 69 01     ADC #$01
- - - - - - 0x03A822 0E:A812: 8D 1C 04  STA ram_plr_pos_Y_hi
- - - - - - 0x03A825 0E:A815: A2 06     LDX #$06
- - - - - - 0x03A827 0E:A817: A9 00     LDA #$00
- - - - - - 0x03A829 0E:A819: 20 DD FC  JSR sub_0x03FCED
- - - - - - 0x03A82C 0E:A81C: D0 03     BNE bra_A821
- - - - - - 0x03A82E 0E:A81E: 4C 3A 87  JMP loc_873A
bra_A821:
- - - - - - 0x03A831 0E:A821: EE 65 05  INC ram_plr_state
- - - - - - 0x03A834 0E:A824: EE 65 05  INC ram_plr_state   ; -> con_plr_state_42
- - - - - - 0x03A837 0E:A827: 4C 3A 87  JMP loc_873A
bra_A82A:
- - - - - - 0x03A83A 0E:A82A: A9 34     LDA #con_plr_state_34
- - - - - - 0x03A83C 0E:A82C: 8D 65 05  STA ram_plr_state
- - - - - - 0x03A83F 0E:A82F: 60        RTS
bra_A830:
- - - - - - 0x03A840 0E:A830: A9 40     LDA #con_plr_state_40
- - - - - - 0x03A842 0E:A832: 8D 65 05  STA ram_plr_state
- - - - - - 0x03A845 0E:A835: 60        RTS



sub_A836:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03A846 0E:A836: A5 84     LDA ram_hearts
C - - - - - 0x03A848 0E:A838: F0 0F     BEQ bra_A849
C - - - - - 0x03A84A 0E:A83A: C6 AE     DEC ram_00AE
C - - - - - 0x03A84C 0E:A83C: D0 09     BNE bra_A847
C - - - - - 0x03A84E 0E:A83E: A9 3C     LDA #$3C
C - - - - - 0x03A850 0E:A840: 85 AE     STA ram_00AE
C - - - - - 0x03A852 0E:A842: A9 01     LDA #$01
C - - - - - 0x03A854 0E:A844: 20 53 E7  JSR sub_0x03E763_decrease_hearts
bra_A847:
C - - - - - 0x03A857 0E:A847: 18        CLC
C - - - - - 0x03A858 0E:A848: 60        RTS
bra_A849:
C - - - - - 0x03A859 0E:A849: 20 27 A6  JSR sub_A627
C - - - - - 0x03A85C 0E:A84C: B0 F9     BCS bra_A847
C - - - - - 0x03A85E 0E:A84E: 38        SEC
C - - - - - 0x03A85F 0E:A84F: 60        RTS



bra_A850:
loc_A850_set_state_3C:
C - - - - - 0x03A860 0E:A850: A9 3C     LDA #con_plr_state_3C
C - - - - - 0x03A862 0E:A852: 8D 65 05  STA ram_plr_state
C - - - - - 0x03A865 0E:A855: 60        RTS



ofs_Alucard_state_A856_34:
C - - J - - 0x03A866 0E:A856: 20 36 A8  JSR sub_A836
C - - - - - 0x03A869 0E:A859: B0 F5     BCS bra_A850
C - - - - - 0x03A86B 0E:A85B: A2 10     LDX #$10
C - - - - - 0x03A86D 0E:A85D: A9 00     LDA #$00
C - - - - - 0x03A86F 0E:A85F: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03A872 0E:A862: C9 02     CMP #$02
C - - - - - 0x03A874 0E:A864: F0 CA     BEQ bra_A830
C - - - - - 0x03A876 0E:A866: C9 03     CMP #$03
C - - - - - 0x03A878 0E:A868: F0 C6     BEQ bra_A830
C - - - - - 0x03A87A 0E:A86A: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03A87D 0E:A86D: 0D 09 05  ORA ram_plr_spd_X_lo
C - - - - - 0x03A880 0E:A870: F0 0E     BEQ bra_A880
C - - - - - 0x03A882 0E:A872: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03A885 0E:A875: 10 04     BPL bra_A87B
C - - - - - 0x03A887 0E:A877: A0 01     LDY #$01    ; facing left
C - - - - - 0x03A889 0E:A879: D0 02     BNE bra_A87D    ; jmp
bra_A87B:
C - - - - - 0x03A88B 0E:A87B: A0 00     LDY #$00    ; facing right
bra_A87D:
C - - - - - 0x03A88D 0E:A87D: 8C A8 04  STY ram_plr_facing
bra_A880:
C - - - - - 0x03A890 0E:A880: A5 26     LDA ram_btn_press
C - - - - - 0x03A892 0E:A882: 29 80     AND #con_btn_A
C - - - - - 0x03A894 0E:A884: F0 03     BEQ bra_A889
C - - - - - 0x03A896 0E:A886: 4C 76 A7  JMP loc_A776
bra_A889:
C - - - - - 0x03A899 0E:A889: A5 28     LDA ram_btn_hold
C - - - - - 0x03A89B 0E:A88B: 4A        LSR
C - - - - - 0x03A89C 0E:A88C: B0 47     BCS bra_A8D5_button_right
C - - - - - 0x03A89E 0E:A88E: 4A        LSR
C - - - - - 0x03A89F 0E:A88F: B0 6B     BCS bra_A8FC_button_left
C - - - - - 0x03A8A1 0E:A891: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03A8A4 0E:A894: 30 21     BMI bra_A8B7
C - - - - - 0x03A8A6 0E:A896: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03A8A9 0E:A899: 38        SEC
C - - - - - 0x03A8AA 0E:A89A: ED F9 A9  SBC tbl_A9F9_spd_X_lo_08
C - - - - - 0x03A8AD 0E:A89D: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A8B0 0E:A8A0: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03A8B3 0E:A8A3: E9 00     SBC #$00
C - - - - - 0x03A8B5 0E:A8A5: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A8B8 0E:A8A8: 90 03     BCC bra_A8AD
C - - - - - 0x03A8BA 0E:A8AA: 4C 29 A9  JMP loc_A929
bra_A8AD:
C - - - - - 0x03A8BD 0E:A8AD: A9 00     LDA #$00
C - - - - - 0x03A8BF 0E:A8AF: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A8C2 0E:A8B2: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A8C5 0E:A8B5: F0 72     BEQ bra_A929    ; jmp
bra_A8B7:
C - - - - - 0x03A8C7 0E:A8B7: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03A8CA 0E:A8BA: 18        CLC
C - - - - - 0x03A8CB 0E:A8BB: 6D F9 A9  ADC tbl_A9F9_spd_X_lo_08
C - - - - - 0x03A8CE 0E:A8BE: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A8D1 0E:A8C1: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03A8D4 0E:A8C4: 69 00     ADC #$00
C - - - - - 0x03A8D6 0E:A8C6: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A8D9 0E:A8C9: 90 5E     BCC bra_A929
C - - - - - 0x03A8DB 0E:A8CB: A9 00     LDA #$00
C - - - - - 0x03A8DD 0E:A8CD: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A8E0 0E:A8D0: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A8E3 0E:A8D3: F0 54     BEQ bra_A929    ; jmp
bra_A8D5_button_right:
C - - - - - 0x03A8E5 0E:A8D5: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03A8E8 0E:A8D8: 18        CLC
C - - - - - 0x03A8E9 0E:A8D9: 6D FB A9  ADC tbl_A9FB_spd_X_lo_10
C - - - - - 0x03A8EC 0E:A8DC: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A8EF 0E:A8DF: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03A8F2 0E:A8E2: 69 00     ADC #$00
C - - - - - 0x03A8F4 0E:A8E4: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A8F7 0E:A8E7: 30 40     BMI bra_A929
C - - - - - 0x03A8F9 0E:A8E9: CD FD A9  CMP tbl_A9FD_spd_X_hi_01
C - - - - - 0x03A8FC 0E:A8EC: D0 3B     BNE bra_A929
C - - - - - 0x03A8FE 0E:A8EE: AD FE A9  LDA tbl_A9FE_spd_X_lo_40
C - - - - - 0x03A901 0E:A8F1: CD 09 05  CMP ram_plr_spd_X_lo
C - - - - - 0x03A904 0E:A8F4: B0 33     BCS bra_A929
C - - - - - 0x03A906 0E:A8F6: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A909 0E:A8F9: 4C 29 A9  JMP loc_A929
bra_A8FC_button_left:
C - - - - - 0x03A90C 0E:A8FC: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03A90F 0E:A8FF: 38        SEC
C - - - - - 0x03A910 0E:A900: ED FB A9  SBC tbl_A9FB_spd_X_lo_10
C - - - - - 0x03A913 0E:A903: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A916 0E:A906: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03A919 0E:A909: E9 00     SBC #$00
C - - - - - 0x03A91B 0E:A90B: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03A91E 0E:A90E: 10 19     BPL bra_A929
C - - - - - 0x03A920 0E:A910: AD 01 AA  LDA tbl_AA01_spd_X_hi_FE
C - - - - - 0x03A923 0E:A913: CD F2 04  CMP ram_plr_spd_X_hi
C - - - - - 0x03A926 0E:A916: 90 11     BCC bra_A929
C - - - - - 0x03A928 0E:A918: AD 02 AA  LDA tbl_AA02_spd_X_lo_C0
C - - - - - 0x03A92B 0E:A91B: CD 09 05  CMP ram_plr_spd_X_lo
C - - - - - 0x03A92E 0E:A91E: 90 09     BCC bra_A929
C - - - - - 0x03A930 0E:A920: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03A933 0E:A923: AD 01 AA  LDA tbl_AA01_spd_X_hi_FE
C - - - - - 0x03A936 0E:A926: 8D F2 04  STA ram_plr_spd_X_hi
bra_A929:
loc_A929:
C D 1 - - - 0x03A939 0E:A929: A5 28     LDA ram_btn_hold
C - - - - - 0x03A93B 0E:A92B: 29 04     AND #con_btn_Down
C - - - - - 0x03A93D 0E:A92D: F0 03     BEQ bra_A932
C - - - - - 0x03A93F 0E:A92F: 4C B7 A9  JMP loc_A9B7
bra_A932:
C - - - - - 0x03A942 0E:A932: A5 28     LDA ram_btn_hold
C - - - - - 0x03A944 0E:A934: 29 08     AND #con_btn_Up
C - - - - - 0x03A946 0E:A936: D0 45     BNE bra_A97D
C - - - - - 0x03A948 0E:A938: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03A94B 0E:A93B: 30 22     BMI bra_A95F
C - - - - - 0x03A94D 0E:A93D: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x03A950 0E:A940: 38        SEC
C - - - - - 0x03A951 0E:A941: ED FA A9  SBC tbl_A9FA_spd_Y_lo_08
C - - - - - 0x03A954 0E:A944: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A957 0E:A947: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03A95A 0E:A94A: E9 00     SBC #$00
C - - - - - 0x03A95C 0E:A94C: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A95F 0E:A94F: 90 03     BCC bra_A954
C - - - - - 0x03A961 0E:A951: 4C DB A9  JMP loc_A9DB
bra_A954:
C - - - - - 0x03A964 0E:A954: A9 00     LDA #$00
C - - - - - 0x03A966 0E:A956: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A969 0E:A959: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A96C 0E:A95C: 4C DB A9  JMP loc_A9DB
bra_A95F:
C - - - - - 0x03A96F 0E:A95F: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x03A972 0E:A962: 18        CLC
C - - - - - 0x03A973 0E:A963: 6D FA A9  ADC tbl_A9FA_spd_Y_lo_08
C - - - - - 0x03A976 0E:A966: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A979 0E:A969: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03A97C 0E:A96C: 69 00     ADC #$00
C - - - - - 0x03A97E 0E:A96E: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A981 0E:A971: 90 68     BCC bra_A9DB
C - - - - - 0x03A983 0E:A973: A9 00     LDA #$00
C - - - - - 0x03A985 0E:A975: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A988 0E:A978: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A98B 0E:A97B: F0 5E     BEQ bra_A9DB    ; jmp
bra_A97D:
C - - - - - 0x03A98D 0E:A97D: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x03A990 0E:A980: 38        SEC
C - - - - - 0x03A991 0E:A981: ED FC A9  SBC tbl_A9FC_spd_Y_lo_10
C - - - - - 0x03A994 0E:A984: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A997 0E:A987: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03A99A 0E:A98A: E9 00     SBC #$00
C - - - - - 0x03A99C 0E:A98C: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A99F 0E:A98F: 10 4A     BPL bra_A9DB
C - - - - - 0x03A9A1 0E:A991: AD 03 AA  LDA tbl_AA03_spd_Y_hi_FF
C - - - - - 0x03A9A4 0E:A994: CD 20 05  CMP ram_plr_spd_Y_hi
C - - - - - 0x03A9A7 0E:A997: 90 42     BCC bra_A9DB
C - - - - - 0x03A9A9 0E:A999: F0 02     BEQ bra_A99D
C - - - - - 0x03A9AB 0E:A99B: B0 14     BCS bra_A9B1    ; jmp
bra_A99D:
C - - - - - 0x03A9AD 0E:A99D: AD 04 AA  LDA tbl_AA04_spd_Y_lo_00
C - - - - - 0x03A9B0 0E:A9A0: CD 37 05  CMP ram_plr_spd_Y_lo
C - - - - - 0x03A9B3 0E:A9A3: 90 36     BCC bra_A9DB
loc_A9A5:
C D 1 - - - 0x03A9B5 0E:A9A5: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A9B8 0E:A9A8: AD 03 AA  LDA tbl_AA03_spd_Y_hi_FF
C - - - - - 0x03A9BB 0E:A9AB: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A9BE 0E:A9AE: 4C DB A9  JMP loc_A9DB
bra_A9B1:
C - - - - - 0x03A9C1 0E:A9B1: AD 04 AA  LDA tbl_AA04_spd_Y_lo_00
C - - - - - 0x03A9C4 0E:A9B4: 4C A5 A9  JMP loc_A9A5
loc_A9B7:
C D 1 - - - 0x03A9C7 0E:A9B7: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x03A9CA 0E:A9BA: 18        CLC
C - - - - - 0x03A9CB 0E:A9BB: 6D FC A9  ADC tbl_A9FC_spd_Y_lo_10
C - - - - - 0x03A9CE 0E:A9BE: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03A9D1 0E:A9C1: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03A9D4 0E:A9C4: 69 00     ADC #$00
C - - - - - 0x03A9D6 0E:A9C6: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03A9D9 0E:A9C9: 30 10     BMI bra_A9DB
C - - - - - 0x03A9DB 0E:A9CB: CD FF A9  CMP tbl_A9FF_spd_Y_hi_01
C - - - - - 0x03A9DE 0E:A9CE: D0 0B     BNE bra_A9DB
C - - - - - 0x03A9E0 0E:A9D0: AD 00 AA  LDA tbl_AA00_spd_Y_lo_00
C - - - - - 0x03A9E3 0E:A9D3: CD 37 05  CMP ram_plr_spd_Y_lo
C - - - - - 0x03A9E6 0E:A9D6: B0 03     BCS bra_A9DB
C - - - - - 0x03A9E8 0E:A9D8: 8D 37 05  STA ram_plr_spd_Y_lo
bra_A9DB:
loc_A9DB:
C D 1 - - - 0x03A9EB 0E:A9DB: A5 28     LDA ram_btn_hold
C - - - - - 0x03A9ED 0E:A9DD: 29 0F     AND #con_btns_Dpad
C - - - - - 0x03A9EF 0E:A9DF: F0 04     BEQ bra_A9E5
C - - - - - 0x03A9F1 0E:A9E1: A9 04     LDA #$04
C - - - - - 0x03A9F3 0E:A9E3: D0 02     BNE bra_A9E7    ; jmp
bra_A9E5:
C - - - - - 0x03A9F5 0E:A9E5: A9 03     LDA #$03
bra_A9E7:
C - - - - - 0x03A9F7 0E:A9E7: 20 72 A7  JSR sub_A772
C - - - - - 0x03A9FA 0E:A9EA: 20 05 AA  JSR sub_AA05
C - - - - - 0x03A9FD 0E:A9ED: 20 26 AB  JSR sub_AB26
C - - - - - 0x03AA00 0E:A9F0: 20 73 EF  JSR sub_0x03EF83
C - - - - - 0x03AA03 0E:A9F3: 20 3A 87  JSR sub_873A
C - - - - - 0x03AA06 0E:A9F6: 4C 12 87  JMP loc_8712



tbl_A9F9_spd_X_lo_08:
; bzk optimize
- D 1 - - - 0x03AA09 0E:A9F9: 08        .byte $08   ; 



tbl_A9FA_spd_Y_lo_08:
; bzk optimize
- D 1 - - - 0x03AA0A 0E:A9FA: 08        .byte $08   ; 



tbl_A9FB_spd_X_lo_10:
; bzk optimize
- D 1 - - - 0x03AA0B 0E:A9FB: 10        .byte $10   ; 



tbl_A9FC_spd_Y_lo_10:
; bzk optimize
- D 1 - - - 0x03AA0C 0E:A9FC: 10        .byte $10   ; 



tbl_A9FD_spd_X_hi_01:
; bzk optimize
- D 1 - - - 0x03AA0D 0E:A9FD: 01        .byte $01   ; 



tbl_A9FE_spd_X_lo_40:
; bzk optimize
- D 1 - - - 0x03AA0E 0E:A9FE: 40        .byte $40   ; 



tbl_A9FF_spd_Y_hi_01:
; bzk optimize
- D 1 - - - 0x03AA0F 0E:A9FF: 01        .byte $01   ; 



tbl_AA00_spd_Y_lo_00:
; bzk optimize
- D 1 - - - 0x03AA10 0E:AA00: 00        .byte $00   ; 



tbl_AA01_spd_X_hi_FE:
; bzk optimize
- D 1 - - - 0x03AA11 0E:AA01: FE        .byte $FE   ; 



tbl_AA02_spd_X_lo_C0:
; bzk optimize
- D 1 - - - 0x03AA12 0E:AA02: C0        .byte $C0   ; 



tbl_AA03_spd_Y_hi_FF:
; bzk optimize
- D 1 - - - 0x03AA13 0E:AA03: FF        .byte $FF   ; 



tbl_AA04_spd_Y_lo_00:
; bzk optimize
- D 1 - - - 0x03AA14 0E:AA04: 00        .byte $00   ; 



sub_AA05:
C - - - - - 0x03AA15 0E:AA05: AD 65 05  LDA ram_plr_state
C - - - - - 0x03AA18 0E:AA08: C9 36     CMP #con_plr_state_36
C - - - - - 0x03AA1A 0E:AA0A: F0 4A     BEQ bra_AA56_RTS
C - - - - - 0x03AA1C 0E:AA0C: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03AA1F 0E:AA0F: 30 1E     BMI bra_AA2F
C - - - - - 0x03AA21 0E:AA11: 0D 09 05  ORA ram_plr_spd_X_lo
C - - - - - 0x03AA24 0E:AA14: F0 40     BEQ bra_AA56_RTS
C - - - - - 0x03AA26 0E:AA16: A5 7D     LDA ram_007D
C - - - - - 0x03AA28 0E:AA18: C9 60     CMP #$60
C - - - - - 0x03AA2A 0E:AA1A: F0 68     BEQ bra_AA84
loc_AA1C:
bra_AA1C:
C - - - - - 0x03AA2C 0E:AA1C: A2 FA     LDX #$FA
C - - - - - 0x03AA2E 0E:AA1E: A9 08     LDA #$08
C - - - - - 0x03AA30 0E:AA20: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AA33 0E:AA23: D0 23     BNE bra_AA48
C - - - - - 0x03AA35 0E:AA25: A2 06     LDX #$06
C - - - - - 0x03AA37 0E:AA27: A9 08     LDA #$08
C - - - - - 0x03AA39 0E:AA29: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AA3C 0E:AA2C: D0 1A     BNE bra_AA48
C - - - - - 0x03AA3E 0E:AA2E: 60        RTS
bra_AA2F:
C - - - - - 0x03AA3F 0E:AA2F: A5 7D     LDA ram_007D
C - - - - - 0x03AA41 0E:AA31: C9 60     CMP #$60
C - - - - - 0x03AA43 0E:AA33: F0 22     BEQ bra_AA57
bra_AA35:
loc_AA35:
C - - - - - 0x03AA45 0E:AA35: A2 FA     LDX #$FA
C - - - - - 0x03AA47 0E:AA37: A9 F8     LDA #$F8
C - - - - - 0x03AA49 0E:AA39: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AA4C 0E:AA3C: D0 0E     BNE bra_AA4C
C - - - - - 0x03AA4E 0E:AA3E: A2 06     LDX #$06
C - - - - - 0x03AA50 0E:AA40: A9 F8     LDA #$F8
C - - - - - 0x03AA52 0E:AA42: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AA55 0E:AA45: D0 05     BNE bra_AA4C
C - - - - - 0x03AA57 0E:AA47: 60        RTS
bra_AA48:
loc_AA48:
C - - - - - 0x03AA58 0E:AA48: A9 01     LDA #$01
C - - - - - 0x03AA5A 0E:AA4A: D0 02     BNE bra_AA4E    ; jmp
bra_AA4C:
C - - - - - 0x03AA5C 0E:AA4C: A9 00     LDA #$00
bra_AA4E:
C - - - - - 0x03AA5E 0E:AA4E: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03AA61 0E:AA51: A9 36     LDA #con_plr_state_36
C - - - - - 0x03AA63 0E:AA53: 8D 65 05  STA ram_plr_state
bra_AA56_RTS:
C - - - - - 0x03AA66 0E:AA56: 60        RTS
bra_AA57:
C - - - - - 0x03AA67 0E:AA57: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03AA6A 0E:AA5A: C9 B0     CMP #$B0
C - - - - - 0x03AA6C 0E:AA5C: 90 D7     BCC bra_AA35
- - - - - - 0x03AA6E 0E:AA5E: 20 DD AA  JSR sub_AADD
- - - - - - 0x03AA71 0E:AA61: A5 0A     LDA ram_000A_temp
- - - - - - 0x03AA73 0E:AA63: 38        SEC
- - - - - - 0x03AA74 0E:AA64: E9 3E     SBC #< $013E
- - - - - - 0x03AA76 0E:AA66: 85 0C     STA ram_000C_temp
- - - - - - 0x03AA78 0E:AA68: A5 0B     LDA ram_000B_temp
- - - - - - 0x03AA7A 0E:AA6A: E9 01     SBC #> $013E
- - - - - - 0x03AA7C 0E:AA6C: 30 0A     BMI bra_AA78
- - - - - - 0x03AA7E 0E:AA6E: D0 C5     BNE bra_AA35
- - - - - - 0x03AA80 0E:AA70: A5 0C     LDA ram_000C_temp
- - - - - - 0x03AA82 0E:AA72: C9 04     CMP #$04
- - - - - - 0x03AA84 0E:AA74: B0 BF     BCS bra_AA35
- - - - - - 0x03AA86 0E:AA76: 90 D4     BCC bra_AA4C    ; jmp
bra_AA78:
- - - - - - 0x03AA88 0E:AA78: C9 FF     CMP #$FF
- - - - - - 0x03AA8A 0E:AA7A: D0 B9     BNE bra_AA35
- - - - - - 0x03AA8C 0E:AA7C: A5 0C     LDA ram_000C_temp
- - - - - - 0x03AA8E 0E:AA7E: C9 FC     CMP #$FC
- - - - - - 0x03AA90 0E:AA80: B0 CA     BCS bra_AA4C
- - - - - - 0x03AA92 0E:AA82: 90 B1     BCC bra_AA35    ; jmp
bra_AA84:
- - - - - - 0x03AA94 0E:AA84: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x03AA97 0E:AA87: C9 B0     CMP #$B0
- - - - - - 0x03AA99 0E:AA89: 90 91     BCC bra_AA1C
- - - - - - 0x03AA9B 0E:AA8B: 20 DD AA  JSR sub_AADD
- - - - - - 0x03AA9E 0E:AA8E: A5 0A     LDA ram_000A_temp
- - - - - - 0x03AAA0 0E:AA90: 38        SEC
- - - - - - 0x03AAA1 0E:AA91: E9 20     SBC #< $0120
- - - - - - 0x03AAA3 0E:AA93: 85 0C     STA ram_000C_temp
- - - - - - 0x03AAA5 0E:AA95: A5 0B     LDA ram_000B_temp
- - - - - - 0x03AAA7 0E:AA97: E9 01     SBC #> $0120
- - - - - - 0x03AAA9 0E:AA99: 30 0A     BMI bra_AAA5
- - - - - - 0x03AAAB 0E:AA9B: D0 12     BNE bra_AAAF
- - - - - - 0x03AAAD 0E:AA9D: A5 0C     LDA ram_000C_temp
- - - - - - 0x03AAAF 0E:AA9F: C9 04     CMP #$04
- - - - - - 0x03AAB1 0E:AAA1: B0 0C     BCS bra_AAAF
- - - - - - 0x03AAB3 0E:AAA3: 90 A3     BCC bra_AA48    ; jmp
bra_AAA5:
- - - - - - 0x03AAB5 0E:AAA5: C9 FF     CMP #$FF
- - - - - - 0x03AAB7 0E:AAA7: D0 8C     BNE bra_AA35
- - - - - - 0x03AAB9 0E:AAA9: A5 0C     LDA ram_000C_temp
- - - - - - 0x03AABB 0E:AAAB: C9 FC     CMP #$FC
- - - - - - 0x03AABD 0E:AAAD: B0 99     BCS bra_AA48
bra_AAAF:
- - - - - - 0x03AABF 0E:AAAF: A5 0A     LDA ram_000A_temp
- - - - - - 0x03AAC1 0E:AAB1: 38        SEC
- - - - - - 0x03AAC2 0E:AAB2: E9 C0     SBC #< $02C0
- - - - - - 0x03AAC4 0E:AAB4: 85 0C     STA ram_000C_temp
- - - - - - 0x03AAC6 0E:AAB6: A5 0B     LDA ram_000B_temp
- - - - - - 0x03AAC8 0E:AAB8: E9 02     SBC #> $02C0
- - - - - - 0x03AACA 0E:AABA: 30 0E     BMI bra_AACA
- - - - - - 0x03AACC 0E:AABC: F0 03     BEQ bra_AAC1
- - - - - - 0x03AACE 0E:AABE: 4C 1C AA  JMP loc_AA1C
bra_AAC1:
- - - - - - 0x03AAD1 0E:AAC1: A5 0C     LDA ram_000C_temp
- - - - - - 0x03AAD3 0E:AAC3: C9 04     CMP #$04
- - - - - - 0x03AAD5 0E:AAC5: 90 81     BCC bra_AA48
- - - - - - 0x03AAD7 0E:AAC7: 4C 1C AA  JMP loc_AA1C
bra_AACA:
- - - - - - 0x03AADA 0E:AACA: C9 FF     CMP #$FF
- - - - - - 0x03AADC 0E:AACC: F0 03     BEQ bra_AAD1_FF
- - - - - - 0x03AADE 0E:AACE: 4C 35 AA  JMP loc_AA35
bra_AAD1_FF:
- - - - - - 0x03AAE1 0E:AAD1: A5 0C     LDA ram_000C_temp
- - - - - - 0x03AAE3 0E:AAD3: C9 FC     CMP #$FC
- - - - - - 0x03AAE5 0E:AAD5: 90 03     BCC bra_AADA
- - - - - - 0x03AAE7 0E:AAD7: 4C 48 AA  JMP loc_AA48
bra_AADA:
- - - - - - 0x03AAEA 0E:AADA: 4C 1C AA  JMP loc_AA1C



sub_AADD:
- - - - - - 0x03AAED 0E:AADD: AD 38 04  LDA ram_plr_pos_X_hi
- - - - - - 0x03AAF0 0E:AAE0: 18        CLC
- - - - - - 0x03AAF1 0E:AAE1: 65 56     ADC ram_cam_pos_lo
- - - - - - 0x03AAF3 0E:AAE3: 85 0A     STA ram_000A_temp
- - - - - - 0x03AAF5 0E:AAE5: A5 57     LDA ram_cam_pos_hi
- - - - - - 0x03AAF7 0E:AAE7: 69 00     ADC #$00
- - - - - - 0x03AAF9 0E:AAE9: 85 0B     STA ram_000B_temp
- - - - - - 0x03AAFB 0E:AAEB: 60        RTS



sub_AAEC:
C - - - - - 0x03AAFC 0E:AAEC: A5 8B     LDA ram_008B
C - - - - - 0x03AAFE 0E:AAEE: 29 0F     AND #$0F
C - - - - - 0x03AB00 0E:AAF0: C9 01     CMP #$01
C - - - - - 0x03AB02 0E:AAF2: F0 07     BEQ bra_AAFB
C - - - - - 0x03AB04 0E:AAF4: C9 0C     CMP #$0C
C - - - - - 0x03AB06 0E:AAF6: F0 03     BEQ bra_AAFB
bra_AAF8:
C - - - - - 0x03AB08 0E:AAF8: A9 80     LDA #$80
C - - - - - 0x03AB0A 0E:AAFA: 60        RTS
bra_AAFB:
C - - - - - 0x03AB0B 0E:AAFB: A6 91     LDX ram_0091
C - - - - - 0x03AB0D 0E:AAFD: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03AB10 0E:AB00: C9 7D     CMP #$7D
C - - - - - 0x03AB12 0E:AB02: F0 04     BEQ bra_AB08
C - - - - - 0x03AB14 0E:AB04: C9 82     CMP #$82
C - - - - - 0x03AB16 0E:AB06: D0 F0     BNE bra_AAF8
bra_AB08:
- - - - - - 0x03AB18 0E:AB08: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x03AB1B 0E:AB0B: 38        SEC
- - - - - - 0x03AB1C 0E:AB0C: ED 1C 04  SBC ram_plr_pos_Y_hi
- - - - - - 0x03AB1F 0E:AB0F: 60        RTS
bra_AB10:
- - - - - - 0x03AB20 0E:AB10: 20 98 83  JSR sub_8398_kill_player
- - - - - - 0x03AB23 0E:AB13: 18        CLC
- - - - - - 0x03AB24 0E:AB14: 60        RTS



sub_AB15:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03AB25 0E:AB15: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AB28 0E:AB18: F0 0A     BEQ bra_AB24
C - - - - - 0x03AB2A 0E:AB1A: C9 05     CMP #$05
C - - - - - 0x03AB2C 0E:AB1C: F0 F2     BEQ bra_AB10
C - - - - - 0x03AB2E 0E:AB1E: C9 07     CMP #$07
C - - - - - 0x03AB30 0E:AB20: F0 EE     BEQ bra_AB10
C - - - - - 0x03AB32 0E:AB22: 38        SEC
C - - - - - 0x03AB33 0E:AB23: 60        RTS
bra_AB24:
C - - - - - 0x03AB34 0E:AB24: 18        CLC
C - - - - - 0x03AB35 0E:AB25: 60        RTS



sub_AB26:
C - - - - - 0x03AB36 0E:AB26: AD 65 05  LDA ram_plr_state
C - - - - - 0x03AB39 0E:AB29: C9 36     CMP #con_plr_state_36
C - - - - - 0x03AB3B 0E:AB2B: F0 72     BEQ bra_AB9F_RTS
C - - - - - 0x03AB3D 0E:AB2D: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03AB40 0E:AB30: 30 30     BMI bra_AB62
C - - - - - 0x03AB42 0E:AB32: 0D 37 05  ORA ram_plr_spd_Y_lo
C - - - - - 0x03AB45 0E:AB35: F0 68     BEQ bra_AB9F_RTS
C - - - - - 0x03AB47 0E:AB37: A5 7D     LDA ram_007D
C - - - - - 0x03AB49 0E:AB39: 29 F0     AND #$F0
C - - - - - 0x03AB4B 0E:AB3B: C9 50     CMP #$50
C - - - - - 0x03AB4D 0E:AB3D: F0 79     BEQ bra_ABB8
C - - - - - 0x03AB4F 0E:AB3F: C9 60     CMP #$60
C - - - - - 0x03AB51 0E:AB41: D0 03     BNE bra_AB46
C - - - - - 0x03AB53 0E:AB43: 4C CB AB  JMP loc_ABCB
bra_AB46:
loc_AB46:
C D 1 - - - 0x03AB56 0E:AB46: 20 EC AA  JSR sub_AAEC
C - - - - - 0x03AB59 0E:AB49: C9 80     CMP #$80
C - - - - - 0x03AB5B 0E:AB4B: F0 02     BEQ bra_AB4F
- - - - - - 0x03AB5D 0E:AB4D: 90 51     BCC bra_ABA0
bra_AB4F:
C - - - - - 0x03AB5F 0E:AB4F: A2 06     LDX #$06
C - - - - - 0x03AB61 0E:AB51: A9 FA     LDA #$FA
C - - - - - 0x03AB63 0E:AB53: 20 15 AB  JSR sub_AB15
C - - - - - 0x03AB66 0E:AB56: B0 48     BCS bra_ABA0
C - - - - - 0x03AB68 0E:AB58: A2 06     LDX #$06
C - - - - - 0x03AB6A 0E:AB5A: A9 06     LDA #$06
C - - - - - 0x03AB6C 0E:AB5C: 20 15 AB  JSR sub_AB15
C - - - - - 0x03AB6F 0E:AB5F: B0 3F     BCS bra_ABA0
C - - - - - 0x03AB71 0E:AB61: 60        RTS
bra_AB62:
C - - - - - 0x03AB72 0E:AB62: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03AB75 0E:AB65: C9 40     CMP #$40
C - - - - - 0x03AB77 0E:AB67: 90 1B     BCC bra_AB84
C - - - - - 0x03AB79 0E:AB69: 20 EC AA  JSR sub_AAEC
C - - - - - 0x03AB7C 0E:AB6C: C9 80     CMP #$80
C - - - - - 0x03AB7E 0E:AB6E: F0 02     BEQ bra_AB72
- - - - - - 0x03AB80 0E:AB70: B0 12     BCS bra_AB84
bra_AB72:
C - - - - - 0x03AB82 0E:AB72: A2 FA     LDX #$FA
C - - - - - 0x03AB84 0E:AB74: A9 FA     LDA #$FA
C - - - - - 0x03AB86 0E:AB76: 20 15 AB  JSR sub_AB15
C - - - - - 0x03AB89 0E:AB79: B0 09     BCS bra_AB84
C - - - - - 0x03AB8B 0E:AB7B: A2 FA     LDX #$FA
C - - - - - 0x03AB8D 0E:AB7D: A9 06     LDA #$06
C - - - - - 0x03AB8F 0E:AB7F: 20 15 AB  JSR sub_AB15
C - - - - - 0x03AB92 0E:AB82: 90 1B     BCC bra_AB9F_RTS
bra_AB84:
C - - - - - 0x03AB94 0E:AB84: 20 02 8A  JSR sub_8A02
C - - - - - 0x03AB97 0E:AB87: 18        CLC
C - - - - - 0x03AB98 0E:AB88: 69 06     ADC #$06
C - - - - - 0x03AB9A 0E:AB8A: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03AB9D 0E:AB8D: A9 02     LDA #$02
loc_AB8F:
C - - - - - 0x03AB9F 0E:AB8F: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x03ABA2 0E:AB92: A9 00     LDA #$00
C - - - - - 0x03ABA4 0E:AB94: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03ABA7 0E:AB97: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03ABAA 0E:AB9A: A9 36     LDA #con_plr_state_36
C - - - - - 0x03ABAC 0E:AB9C: 8D 65 05  STA ram_plr_state
bra_AB9F_RTS:
C - - - - - 0x03ABAF 0E:AB9F: 60        RTS
bra_ABA0:
loc_ABA0:
- - - - - - 0x03ABB0 0E:ABA0: AD 65 05  LDA ram_plr_state
- - - - - - 0x03ABB3 0E:ABA3: C9 2E     CMP #con_plr_state_death
- - - - - - 0x03ABB5 0E:ABA5: F0 F8     BEQ bra_AB9F_RTS
- - - - - - 0x03ABB7 0E:ABA7: 20 02 8A  JSR sub_8A02
- - - - - - 0x03ABBA 0E:ABAA: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x03ABBD 0E:ABAD: 18        CLC
- - - - - - 0x03ABBE 0E:ABAE: 69 02     ADC #$02
- - - - - - 0x03ABC0 0E:ABB0: 8D 1C 04  STA ram_plr_pos_Y_hi
- - - - - - 0x03ABC3 0E:ABB3: A9 03     LDA #$03
- - - - - - 0x03ABC5 0E:ABB5: 4C 8F AB  JMP loc_AB8F
bra_ABB8:
C - - - - - 0x03ABC8 0E:ABB8: A5 7D     LDA ram_007D
C - - - - - 0x03ABCA 0E:ABBA: 29 0F     AND #$0F
C - - - - - 0x03ABCC 0E:ABBC: A8        TAY
C - - - - - 0x03ABCD 0E:ABBD: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03ABD0 0E:ABC0: D9 0D AC  CMP tbl_AC0D,Y
C - - - - - 0x03ABD3 0E:ABC3: 90 81     BCC bra_AB46
bra_ABC5:
- - - - - - 0x03ABD5 0E:ABC5: 20 58 8C  JSR sub_8C58
- - - - - - 0x03ABD8 0E:ABC8: 4C A0 AB  JMP loc_ABA0



loc_ABCB:
C D 1 - - - 0x03ABDB 0E:ABCB: A5 7D     LDA ram_007D
C - - - - - 0x03ABDD 0E:ABCD: 29 0F     AND #$0F
C - - - - - 0x03ABDF 0E:ABCF: F0 03     BEQ bra_ABD4
- - - - - - 0x03ABE1 0E:ABD1: 4C 46 AB  JMP loc_AB46
bra_ABD4:
C - - - - - 0x03ABE4 0E:ABD4: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03ABE7 0E:ABD7: C9 BC     CMP #$BC
C - - - - - 0x03ABE9 0E:ABD9: B0 03     BCS bra_ABDE
C - - - - - 0x03ABEB 0E:ABDB: 4C 46 AB  JMP loc_AB46
bra_ABDE:
- - - - - - 0x03ABEE 0E:ABDE: AD 38 04  LDA ram_plr_pos_X_hi
- - - - - - 0x03ABF1 0E:ABE1: 18        CLC
- - - - - - 0x03ABF2 0E:ABE2: 65 56     ADC ram_cam_pos_lo
- - - - - - 0x03ABF4 0E:ABE4: 85 0A     STA ram_000A_temp
- - - - - - 0x03ABF6 0E:ABE6: A5 57     LDA ram_cam_pos_hi
- - - - - - 0x03ABF8 0E:ABE8: 69 00     ADC #$00
- - - - - - 0x03ABFA 0E:ABEA: 85 0B     STA ram_000B_temp
- - - - - - 0x03ABFC 0E:ABEC: C9 01     CMP #$01
- - - - - - 0x03ABFE 0E:ABEE: 90 D5     BCC bra_ABC5
- - - - - - 0x03AC00 0E:ABF0: D0 09     BNE bra_ABFB
- - - - - - 0x03AC02 0E:ABF2: A5 0A     LDA ram_000A_temp
- - - - - - 0x03AC04 0E:ABF4: C9 20     CMP #$20
- - - - - - 0x03AC06 0E:ABF6: 90 CD     BCC bra_ABC5
- - - - - - 0x03AC08 0E:ABF8: 4C 46 AB  JMP loc_AB46
bra_ABFB:
- - - - - - 0x03AC0B 0E:ABFB: C9 02     CMP #$02
- - - - - - 0x03AC0D 0E:ABFD: B0 03     BCS bra_AC02
- - - - - - 0x03AC0F 0E:ABFF: 4C 46 AB  JMP loc_AB46
bra_AC02:
- - - - - - 0x03AC12 0E:AC02: D0 C1     BNE bra_ABC5
- - - - - - 0x03AC14 0E:AC04: A5 0A     LDA ram_000A_temp
- - - - - - 0x03AC16 0E:AC06: C9 C0     CMP #$C0
- - - - - - 0x03AC18 0E:AC08: B0 BB     BCS bra_ABC5
- - - - - - 0x03AC1A 0E:AC0A: 4C 46 AB  JMP loc_AB46



tbl_AC0D:
- - - - - - 0x03AC1D 0E:AC0D: 9C        .byte $9C   ; 00 
- D 1 - - - 0x03AC1E 0E:AC0E: BC        .byte $BC   ; 01 
- - - - - - 0x03AC1F 0E:AC0F: BC        .byte $BC   ; 02 
- - - - - - 0x03AC20 0E:AC10: BC        .byte $BC   ; 03 



sub_AC11:
C - - - - - 0x03AC21 0E:AC11: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03AC24 0E:AC14: 30 13     BMI bra_AC29
C - - - - - 0x03AC26 0E:AC16: A2 FA     LDX #$FA
C - - - - - 0x03AC28 0E:AC18: A9 08     LDA #$08
C - - - - - 0x03AC2A 0E:AC1A: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC2D 0E:AC1D: D0 1C     BNE bra_AC3B
C - - - - - 0x03AC2F 0E:AC1F: A2 06     LDX #$06
C - - - - - 0x03AC31 0E:AC21: A9 08     LDA #$08
C - - - - - 0x03AC33 0E:AC23: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC36 0E:AC26: D0 13     BNE bra_AC3B
C - - - - - 0x03AC38 0E:AC28: 60        RTS
bra_AC29:
C - - - - - 0x03AC39 0E:AC29: A2 FA     LDX #$FA
C - - - - - 0x03AC3B 0E:AC2B: A9 F8     LDA #$F8
C - - - - - 0x03AC3D 0E:AC2D: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC40 0E:AC30: D0 09     BNE bra_AC3B
C - - - - - 0x03AC42 0E:AC32: A2 06     LDX #$06
C - - - - - 0x03AC44 0E:AC34: A9 F8     LDA #$F8
C - - - - - 0x03AC46 0E:AC36: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC49 0E:AC39: F0 08     BEQ bra_AC43_RTS
bra_AC3B:
C - - - - - 0x03AC4B 0E:AC3B: A9 00     LDA #$00
C - - - - - 0x03AC4D 0E:AC3D: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03AC50 0E:AC40: 8D F2 04  STA ram_plr_spd_X_hi
bra_AC43_RTS:
C - - - - - 0x03AC53 0E:AC43: 60        RTS



sub_AC44:
C - - - - - 0x03AC54 0E:AC44: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03AC57 0E:AC47: 30 13     BMI bra_AC5C
C - - - - - 0x03AC59 0E:AC49: A2 06     LDX #$06
C - - - - - 0x03AC5B 0E:AC4B: A9 FA     LDA #$FA
C - - - - - 0x03AC5D 0E:AC4D: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC60 0E:AC50: D0 2E     BNE bra_AC80
C - - - - - 0x03AC62 0E:AC52: A2 06     LDX #$06
C - - - - - 0x03AC64 0E:AC54: A9 06     LDA #$06
C - - - - - 0x03AC66 0E:AC56: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC69 0E:AC59: D0 25     BNE bra_AC80
C - - - - - 0x03AC6B 0E:AC5B: 60        RTS
bra_AC5C:
C - - - - - 0x03AC6C 0E:AC5C: A2 FA     LDX #$FA
C - - - - - 0x03AC6E 0E:AC5E: A9 FA     LDA #$FA
C - - - - - 0x03AC70 0E:AC60: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC73 0E:AC63: D0 09     BNE bra_AC6E
C - - - - - 0x03AC75 0E:AC65: A2 FA     LDX #$FA
C - - - - - 0x03AC77 0E:AC67: A9 06     LDA #$06
C - - - - - 0x03AC79 0E:AC69: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03AC7C 0E:AC6C: F0 11     BEQ bra_AC7F_RTS
bra_AC6E:
C - - - - - 0x03AC7E 0E:AC6E: 20 02 8A  JSR sub_8A02
C - - - - - 0x03AC81 0E:AC71: 18        CLC
C - - - - - 0x03AC82 0E:AC72: 69 06     ADC #$06
C - - - - - 0x03AC84 0E:AC74: 8D 1C 04  STA ram_plr_pos_Y_hi
loc_AC77:
C - - - - - 0x03AC87 0E:AC77: A9 00     LDA #$00
C - - - - - 0x03AC89 0E:AC79: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03AC8C 0E:AC7C: 8D 20 05  STA ram_plr_spd_Y_hi
bra_AC7F_RTS:
C - - - - - 0x03AC8F 0E:AC7F: 60        RTS
bra_AC80:
- - - - - - 0x03AC90 0E:AC80: 20 02 8A  JSR sub_8A02
- - - - - - 0x03AC93 0E:AC83: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x03AC96 0E:AC86: 18        CLC
- - - - - - 0x03AC97 0E:AC87: 69 02     ADC #$02
- - - - - - 0x03AC99 0E:AC89: 8D 1C 04  STA ram_plr_pos_Y_hi
- - - - - - 0x03AC9C 0E:AC8C: 4C 77 AC  JMP loc_AC77



ofs_Alucard_state_AC8F_36:
C - - J - - 0x03AC9F 0E:AC8F: EE 65 05  INC ram_plr_state
C - - - - - 0x03ACA2 0E:AC92: EE 65 05  INC ram_plr_state   ; -> con_plr_state_38
C - - - - - 0x03ACA5 0E:AC95: A9 03     LDA #$03
C - - - - - 0x03ACA7 0E:AC97: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x03ACAA 0E:AC9A: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03ACAD 0E:AC9D: C9 02     CMP #$02
C - - - - - 0x03ACAF 0E:AC9F: B0 0F     BCS bra_ACB0
C - - - - - 0x03ACB1 0E:ACA1: 0A        ASL
C - - - - - 0x03ACB2 0E:ACA2: A8        TAY
C - - - - - 0x03ACB3 0E:ACA3: B9 BF AC  LDA tbl_ACBF_speed,Y
C - - - - - 0x03ACB6 0E:ACA6: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03ACB9 0E:ACA9: B9 C0 AC  LDA tbl_ACBF_speed + $01,Y
C - - - - - 0x03ACBC 0E:ACAC: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03ACBF 0E:ACAF: 60        RTS
bra_ACB0:
C - - - - - 0x03ACC0 0E:ACB0: 0A        ASL
C - - - - - 0x03ACC1 0E:ACB1: A8        TAY
C - - - - - 0x03ACC2 0E:ACB2: B9 BF AC  LDA tbl_ACBF_speed,Y
C - - - - - 0x03ACC5 0E:ACB5: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03ACC8 0E:ACB8: B9 C0 AC  LDA tbl_ACBF_speed + $01,Y
C - - - - - 0x03ACCB 0E:ACBB: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03ACCE 0E:ACBE: 60        RTS



tbl_ACBF_speed:
- D 1 - - - 0x03ACCF 0E:ACBF: 01 00     .dbyt $0100 ; 00 
- D 1 - - - 0x03ACD1 0E:ACC1: FF 00     .dbyt $FF00 ; 01 
- D 1 - - - 0x03ACD3 0E:ACC3: 01 00     .dbyt $0100 ; 02 
- - - - - - 0x03ACD5 0E:ACC5: FF 00     .dbyt $FF00 ; 03 



ofs_Alucard_state_ACC7_38:
C - - J - - 0x03ACD7 0E:ACC7: 20 36 A8  JSR sub_A836
C - - - - - 0x03ACDA 0E:ACCA: 90 03     BCC bra_ACCF
- - - - - - 0x03ACDC 0E:ACCC: 4C 50 A8  JMP loc_A850_set_state_3C
bra_ACCF:
C - - - - - 0x03ACDF 0E:ACCF: CE C1 05  DEC ram_05C1_plr
C - - - - - 0x03ACE2 0E:ACD2: F0 14     BEQ bra_ACE8
C - - - - - 0x03ACE4 0E:ACD4: A9 04     LDA #$04
C - - - - - 0x03ACE6 0E:ACD6: 20 72 A7  JSR sub_A772
C - - - - - 0x03ACE9 0E:ACD9: 20 11 AC  JSR sub_AC11
C - - - - - 0x03ACEC 0E:ACDC: 20 44 AC  JSR sub_AC44
C - - - - - 0x03ACEF 0E:ACDF: 20 73 EF  JSR sub_0x03EF83
C - - - - - 0x03ACF2 0E:ACE2: 20 3A 87  JSR sub_873A
C - - - - - 0x03ACF5 0E:ACE5: 4C 12 87  JMP loc_8712
bra_ACE8:
C - - - - - 0x03ACF8 0E:ACE8: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03ACFB 0E:ACEB: C9 02     CMP #$02
C - - - - - 0x03ACFD 0E:ACED: B0 0A     BCS bra_ACF9
C - - - - - 0x03ACFF 0E:ACEF: A9 00     LDA #$00
C - - - - - 0x03AD01 0E:ACF1: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03AD04 0E:ACF4: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03AD07 0E:ACF7: F0 08     BEQ bra_AD01    ; jmp
bra_ACF9:
C - - - - - 0x03AD09 0E:ACF9: A9 00     LDA #$00
C - - - - - 0x03AD0B 0E:ACFB: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03AD0E 0E:ACFE: 8D 37 05  STA ram_plr_spd_Y_lo
bra_AD01:
C - - - - - 0x03AD11 0E:AD01: A9 34     LDA #con_plr_state_34
C - - - - - 0x03AD13 0E:AD03: 8D 65 05  STA ram_plr_state
C - - - - - 0x03AD16 0E:AD06: 60        RTS



ofs_Alucard_state_AD07_3A:
C - - J - - 0x03AD17 0E:AD07: 20 36 A8  JSR sub_A836
C - - - - - 0x03AD1A 0E:AD0A: 90 03     BCC bra_AD0F
- - - - - - 0x03AD1C 0E:AD0C: 4C 50 A8  JMP loc_A850_set_state_3C
bra_AD0F:
C - - - - - 0x03AD1F 0E:AD0F: CE C1 05  DEC ram_05C1_plr
C - - - - - 0x03AD22 0E:AD12: D0 06     BNE bra_AD1A
C - - - - - 0x03AD24 0E:AD14: A9 34     LDA #con_plr_state_34
C - - - - - 0x03AD26 0E:AD16: 8D 65 05  STA ram_plr_state
C - - - - - 0x03AD29 0E:AD19: 60        RTS
bra_AD1A:
C - - - - - 0x03AD2A 0E:AD1A: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03AD2D 0E:AD1D: 0D 09 05  ORA ram_plr_spd_X_lo
C - - - - - 0x03AD30 0E:AD20: F0 0E     BEQ bra_AD30
C - - - - - 0x03AD32 0E:AD22: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03AD35 0E:AD25: 10 04     BPL bra_AD2B
C - - - - - 0x03AD37 0E:AD27: A0 01     LDY #$01    ; facing left
C - - - - - 0x03AD39 0E:AD29: D0 02     BNE bra_AD2D    ; jmp
bra_AD2B:
C - - - - - 0x03AD3B 0E:AD2B: A0 00     LDY #$00    ; facing right
bra_AD2D:
C - - - - - 0x03AD3D 0E:AD2D: 8C A8 04  STY ram_plr_facing
bra_AD30:
C - - - - - 0x03AD40 0E:AD30: A5 28     LDA ram_btn_hold
C - - - - - 0x03AD42 0E:AD32: 4A        LSR
C - - - - - 0x03AD43 0E:AD33: B0 47     BCS bra_AD7C_pressed_Right
C - - - - - 0x03AD45 0E:AD35: 4A        LSR
C - - - - - 0x03AD46 0E:AD36: B0 6B     BCS bra_ADA3_pressed_Left
C - - - - - 0x03AD48 0E:AD38: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03AD4B 0E:AD3B: 30 21     BMI bra_AD5E
C - - - - - 0x03AD4D 0E:AD3D: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03AD50 0E:AD40: 38        SEC
C - - - - - 0x03AD51 0E:AD41: ED F9 A9  SBC tbl_A9F9_spd_X_lo_08
C - - - - - 0x03AD54 0E:AD44: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03AD57 0E:AD47: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03AD5A 0E:AD4A: E9 00     SBC #$00
C - - - - - 0x03AD5C 0E:AD4C: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03AD5F 0E:AD4F: 90 03     BCC bra_AD54
C - - - - - 0x03AD61 0E:AD51: 4C D0 AD  JMP loc_ADD0
bra_AD54:
C - - - - - 0x03AD64 0E:AD54: A9 00     LDA #$00
C - - - - - 0x03AD66 0E:AD56: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03AD69 0E:AD59: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03AD6C 0E:AD5C: F0 72     BEQ bra_ADD0    ; jmp
bra_AD5E:
C - - - - - 0x03AD6E 0E:AD5E: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03AD71 0E:AD61: 18        CLC
C - - - - - 0x03AD72 0E:AD62: 6D F9 A9  ADC tbl_A9F9_spd_X_lo_08
C - - - - - 0x03AD75 0E:AD65: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03AD78 0E:AD68: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03AD7B 0E:AD6B: 69 00     ADC #$00
C - - - - - 0x03AD7D 0E:AD6D: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03AD80 0E:AD70: 90 5E     BCC bra_ADD0
- - - - - - 0x03AD82 0E:AD72: A9 00     LDA #$00
- - - - - - 0x03AD84 0E:AD74: 8D F2 04  STA ram_plr_spd_X_hi
- - - - - - 0x03AD87 0E:AD77: 8D 09 05  STA ram_plr_spd_X_lo
- - - - - - 0x03AD8A 0E:AD7A: F0 54     BEQ bra_ADD0    ; jmp
bra_AD7C_pressed_Right:
- - - - - - 0x03AD8C 0E:AD7C: AD 09 05  LDA ram_plr_spd_X_lo
- - - - - - 0x03AD8F 0E:AD7F: 18        CLC
- - - - - - 0x03AD90 0E:AD80: 6D FB A9  ADC tbl_A9FB_spd_X_lo_10
- - - - - - 0x03AD93 0E:AD83: 8D 09 05  STA ram_plr_spd_X_lo
- - - - - - 0x03AD96 0E:AD86: AD F2 04  LDA ram_plr_spd_X_hi
- - - - - - 0x03AD99 0E:AD89: 69 00     ADC #$00
- - - - - - 0x03AD9B 0E:AD8B: 8D F2 04  STA ram_plr_spd_X_hi
- - - - - - 0x03AD9E 0E:AD8E: 30 40     BMI bra_ADD0
- - - - - - 0x03ADA0 0E:AD90: CD FD A9  CMP tbl_A9FD_spd_X_hi_01
- - - - - - 0x03ADA3 0E:AD93: D0 3B     BNE bra_ADD0
- - - - - - 0x03ADA5 0E:AD95: AD FE A9  LDA tbl_A9FE_spd_X_lo_40
- - - - - - 0x03ADA8 0E:AD98: CD 09 05  CMP ram_plr_spd_X_lo
- - - - - - 0x03ADAB 0E:AD9B: B0 33     BCS bra_ADD0
- - - - - - 0x03ADAD 0E:AD9D: 8D 09 05  STA ram_plr_spd_X_lo
- - - - - - 0x03ADB0 0E:ADA0: 4C D0 AD  JMP loc_ADD0
bra_ADA3_pressed_Left:
C - - - - - 0x03ADB3 0E:ADA3: AD 09 05  LDA ram_plr_spd_X_lo
C - - - - - 0x03ADB6 0E:ADA6: 38        SEC
C - - - - - 0x03ADB7 0E:ADA7: ED FB A9  SBC tbl_A9FB_spd_X_lo_10
C - - - - - 0x03ADBA 0E:ADAA: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03ADBD 0E:ADAD: AD F2 04  LDA ram_plr_spd_X_hi
C - - - - - 0x03ADC0 0E:ADB0: E9 00     SBC #$00
C - - - - - 0x03ADC2 0E:ADB2: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x03ADC5 0E:ADB5: 10 19     BPL bra_ADD0
C - - - - - 0x03ADC7 0E:ADB7: AD 01 AA  LDA tbl_AA01_spd_X_hi_FE
C - - - - - 0x03ADCA 0E:ADBA: CD F2 04  CMP ram_plr_spd_X_hi
C - - - - - 0x03ADCD 0E:ADBD: 90 11     BCC bra_ADD0
C - - - - - 0x03ADCF 0E:ADBF: AD 02 AA  LDA tbl_AA02_spd_X_lo_C0
C - - - - - 0x03ADD2 0E:ADC2: CD 09 05  CMP ram_plr_spd_X_lo
C - - - - - 0x03ADD5 0E:ADC5: 90 09     BCC bra_ADD0
C - - - - - 0x03ADD7 0E:ADC7: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x03ADDA 0E:ADCA: AD 01 AA  LDA tbl_AA01_spd_X_hi_FE
C - - - - - 0x03ADDD 0E:ADCD: 8D F2 04  STA ram_plr_spd_X_hi
bra_ADD0:
loc_ADD0:
C D 1 - - - 0x03ADE0 0E:ADD0: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x03ADE3 0E:ADD3: 18        CLC
C - - - - - 0x03ADE4 0E:ADD4: 69 40     ADC #< $0040
C - - - - - 0x03ADE6 0E:ADD6: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x03ADE9 0E:ADD9: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03ADEC 0E:ADDC: 69 00     ADC #> $0040
C - - - - - 0x03ADEE 0E:ADDE: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x03ADF1 0E:ADE1: A9 04     LDA #$04
C - - - - - 0x03ADF3 0E:ADE3: 20 72 A7  JSR sub_A772
C - - - - - 0x03ADF6 0E:ADE6: 20 26 AB  JSR sub_AB26
C - - - - - 0x03ADF9 0E:ADE9: 20 05 AA  JSR sub_AA05
C - - - - - 0x03ADFC 0E:ADEC: AD 65 05  LDA ram_plr_state
C - - - - - 0x03ADFF 0E:ADEF: C9 36     CMP #con_plr_state_36
C - - - - - 0x03AE01 0E:ADF1: F0 09     BEQ bra_ADFC
bra_ADF3:
C - - - - - 0x03AE03 0E:ADF3: 20 73 EF  JSR sub_0x03EF83
C - - - - - 0x03AE06 0E:ADF6: 20 3A 87  JSR sub_873A
C - - - - - 0x03AE09 0E:ADF9: 4C 12 87  JMP loc_8712
bra_ADFC:
C - - - - - 0x03AE0C 0E:ADFC: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x03AE0F 0E:ADFF: C9 02     CMP #$02
C - - - - - 0x03AE11 0E:AE01: B0 F0     BCS bra_ADF3
- - - - - - 0x03AE13 0E:AE03: A9 00     LDA #$00
- - - - - - 0x03AE15 0E:AE05: 8D 37 05  STA ram_plr_spd_Y_lo
- - - - - - 0x03AE18 0E:AE08: 8D 20 05  STA ram_plr_spd_Y_hi
- - - - - - 0x03AE1B 0E:AE0B: F0 E6     BEQ bra_ADF3    ; jmp



sub_AE0D_math:
; in
    ; A = 
    ; Y = 
C - - - - - 0x03AE1D 0E:AE0D: 85 02     STA ram_0002_t015
C - - - - - 0x03AE1F 0E:AE0F: 84 03     STY ram_0002_t015 + $01
C - - - - - 0x03AE21 0E:AE11: A9 00     LDA #$00
C - - - - - 0x03AE23 0E:AE13: 85 04     STA ram_0004_t005
C - - - - - 0x03AE25 0E:AE15: 85 05     STA ram_0004_t005 + $01
C - - - - - 0x03AE27 0E:AE17: A0 10     LDY #$10
bra_AE19_loop:
C - - - - - 0x03AE29 0E:AE19: 06 00     ASL ram_0000_t03F_obj_spd_X
C - - - - - 0x03AE2B 0E:AE1B: 26 01     ROL ram_0000_t03F_obj_spd_X + $01
C - - - - - 0x03AE2D 0E:AE1D: 26 04     ROL ram_0004_t005
C - - - - - 0x03AE2F 0E:AE1F: 26 05     ROL ram_0004_t005 + $01
C - - - - - 0x03AE31 0E:AE21: A5 05     LDA ram_0004_t005 + $01
C - - - - - 0x03AE33 0E:AE23: C5 03     CMP ram_0002_t015 + $01
C - - - - - 0x03AE35 0E:AE25: D0 04     BNE bra_AE2B
C - - - - - 0x03AE37 0E:AE27: A5 04     LDA ram_0004_t005
C - - - - - 0x03AE39 0E:AE29: C5 02     CMP ram_0002_t015
bra_AE2B:
C - - - - - 0x03AE3B 0E:AE2B: 90 0E     BCC bra_AE3B
C - - - - - 0x03AE3D 0E:AE2D: A5 04     LDA ram_0004_t005
C - - - - - 0x03AE3F 0E:AE2F: E5 02     SBC ram_0002_t015
C - - - - - 0x03AE41 0E:AE31: 85 04     STA ram_0004_t005
C - - - - - 0x03AE43 0E:AE33: A5 05     LDA ram_0004_t005 + $01
C - - - - - 0x03AE45 0E:AE35: E5 03     SBC ram_0002_t015 + $01
C - - - - - 0x03AE47 0E:AE37: 85 05     STA ram_0004_t005 + $01
C - - - - - 0x03AE49 0E:AE39: E6 00     INC ram_0000_t03F_obj_spd_X
bra_AE3B:
C - - - - - 0x03AE4B 0E:AE3B: 88        DEY
C - - - - - 0x03AE4C 0E:AE3C: D0 DB     BNE bra_AE19_loop
C - - - - - 0x03AE4E 0E:AE3E: 60        RTS



ofs_036_0x03AE4F_04:
C - - J - - 0x03AE4F 0E:AE3F: A9 01     LDA #$01
C - - - - - 0x03AE51 0E:AE41: 85 10     STA ram_0010_temp
C - - - - - 0x03AE53 0E:AE43: AD EC 07  LDA ram_07EC
C - - - - - 0x03AE56 0E:AE46: 85 12     STA ram_0012_temp
C - - - - - 0x03AE58 0E:AE48: A9 01     LDA #$01
C - - - - - 0x03AE5A 0E:AE4A: 85 17     STA ram_0017_temp
C - - - - - 0x03AE5C 0E:AE4C: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03AE5F 0E:AE4F: 4C 6D AE  JMP loc_AE6D



sub_AE52:
C - - - - - 0x03AE62 0E:AE52: A9 00     LDA #$00
C - - - - - 0x03AE64 0E:AE54: 85 10     STA ram_0010_temp
C - - - - - 0x03AE66 0E:AE56: A2 14     LDX #$14
C - - - - - 0x03AE68 0E:AE58: A5 82     LDA ram_copy_plr_id
C - - - - - 0x03AE6A 0E:AE5A: 85 12     STA ram_0012_temp
C - - - - - 0x03AE6C 0E:AE5C: A9 03     LDA #$03
C - - - - - 0x03AE6E 0E:AE5E: 85 17     STA ram_0017_temp
bra_AE60_loop:
C - - - - - 0x03AE70 0E:AE60: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03AE73 0E:AE63: D0 08     BNE bra_AE6D
bra_AE65:
loc_AE65:
C D 1 - - - 0x03AE75 0E:AE65: C6 17     DEC ram_0017_temp
C - - - - - 0x03AE77 0E:AE67: F0 03     BEQ bra_AE6C_RTS
C - - - - - 0x03AE79 0E:AE69: E8        INX
C - - - - - 0x03AE7A 0E:AE6A: D0 F4     BNE bra_AE60_loop
bra_AE6C_RTS:
C - - - - - 0x03AE7C 0E:AE6C: 60        RTS
bra_AE6D:
loc_AE6D:
C D 1 - - - 0x03AE7D 0E:AE6D: C9 0C     CMP #$0C
C - - - - - 0x03AE7F 0E:AE6F: F0 04     BEQ bra_AE75
C - - - - - 0x03AE81 0E:AE71: A5 BF     LDA ram_00BF
C - - - - - 0x03AE83 0E:AE73: 30 F7     BMI bra_AE6C_RTS
bra_AE75:
C - - - - - 0x03AE85 0E:AE75: AD FD AE  LDA tbl_AEFC_return + $01
C - - - - - 0x03AE88 0E:AE78: 48        PHA
C - - - - - 0x03AE89 0E:AE79: AD FC AE  LDA tbl_AEFC_return
C - - - - - 0x03AE8C 0E:AE7C: 48        PHA
C - - - - - 0x03AE8D 0E:AE7D: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03AE90 0E:AE80: 0A        ASL
C - - - - - 0x03AE91 0E:AE81: A8        TAY
C - - - - - 0x03AE92 0E:AE82: B9 E0 AE  LDA tbl_AEE0_weapons,Y
C - - - - - 0x03AE95 0E:AE85: 85 00     STA ram_0000_t012_data
C - - - - - 0x03AE97 0E:AE87: B9 E1 AE  LDA tbl_AEE0_weapons + $01,Y
C - - - - - 0x03AE9A 0E:AE8A: 85 01     STA ram_0000_t012_data + $01
C - - - - - 0x03AE9C 0E:AE8C: BC 65 05  LDY ram_obj_state,X
C - - - - - 0x03AE9F 0E:AE8F: B1 00     LDA (ram_0000_t012_data),Y
C - - - - - 0x03AEA1 0E:AE91: 85 02     STA ram_0002_t00A_jmp
C - - - - - 0x03AEA3 0E:AE93: C8        INY
C - - - - - 0x03AEA4 0E:AE94: B1 00     LDA (ram_0000_t012_data),Y
C - - - - - 0x03AEA6 0E:AE96: 85 03     STA ram_0002_t00A_jmp + $01
C - - - - - 0x03AEA8 0E:AE98: 6C 02 00  JMP (ram_0002_t00A_jmp)



ofs_AE9B:
C - - - - - 0x03AEAB 0E:AE9B: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03AEAE 0E:AE9E: C9 02     CMP #$02
C - - - - - 0x03AEB0 0E:AEA0: F0 C3     BEQ bra_AE65
C - - - - - 0x03AEB2 0E:AEA2: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03AEB5 0E:AEA5: C9 09     CMP #$09
C - - - - - 0x03AEB7 0E:AEA7: 90 12     BCC bra_AEBB
C - - - - - 0x03AEB9 0E:AEA9: C9 F8     CMP #$F8
C - - - - - 0x03AEBB 0E:AEAB: B0 0E     BCS bra_AEBB
C - - - - - 0x03AEBD 0E:AEAD: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x03AEC0 0E:AEB0: C9 10     CMP #$10
C - - - - - 0x03AEC2 0E:AEB2: 90 07     BCC bra_AEBB
C - - - - - 0x03AEC4 0E:AEB4: C9 E0     CMP #$E0
C - - - - - 0x03AEC6 0E:AEB6: B0 03     BCS bra_AEBB
C - - - - - 0x03AEC8 0E:AEB8: 4C 65 AE  JMP loc_AE65
bra_AEBB:
C - - - - - 0x03AECB 0E:AEBB: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03AECE 0E:AEBE: C9 06     CMP #$06
C - - - - - 0x03AED0 0E:AEC0: F0 11     BEQ bra_AED3
C - - - - - 0x03AED2 0E:AEC2: A9 00     LDA #$00
C - - - - - 0x03AED4 0E:AEC4: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03AED7 0E:AEC7: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03AEDA 0E:AECA: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03AEDD 0E:AECD: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03AEE0 0E:AED0: 4C 65 AE  JMP loc_AE65
bra_AED3:
C - - - - - 0x03AEE3 0E:AED3: A9 00     LDA #$00
C - - - - - 0x03AEE5 0E:AED5: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03AEE8 0E:AED8: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x03AEEA 0E:AEDA: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x03AEED 0E:AEDD: 4C 65 AE  JMP loc_AE65



tbl_AEE0_weapons:
- - - - - - 0x03AEF0 0E:AEE0: FE AE     .word _off035_AEFE_00   ; no weapon, unused
- D 1 - - - 0x03AEF2 0E:AEE2: FE AE     .word _off035_AEFE_01_axe
- D 1 - - - 0x03AEF4 0E:AEE4: 04 AF     .word _off035_AF04_02_cross
- D 1 - - - 0x03AEF6 0E:AEE6: 0C AF     .word _off035_AF0C_03_knife
- D 1 - - - 0x03AEF8 0E:AEE8: 12 AF     .word _off035_AF12_04_holy_water
- D 1 - - - 0x03AEFA 0E:AEEA: 1A AF     .word _off035_AF1A_05_fireball
- D 1 - - - 0x03AEFC 0E:AEEC: 20 AF     .word _off035_AF20_06_freeze
- D 1 - - - 0x03AEFE 0E:AEEE: 26 AF     .word _off035_AF26_07_blue_balls
- D 1 - - - 0x03AF00 0E:AEF0: 34 AF     .word _off035_AF34_08_Grant_knife
- D 1 - - - 0x03AF02 0E:AEF2: 3A AF     .word _off035_AF3A_09_Grant_axe
- D 1 - - - 0x03AF04 0E:AEF4: 40 AF     .word _off035_AF40_0A_Alucard_fireball
- - - - - - 0x03AF06 0E:AEF6: 46 AF     .word _off035_AF46_0B   ; stopwatch, unused
- D 1 - - - 0x03AF08 0E:AEF8: 48 AF     .word _off035_AF48_0C_drowning_bubbles
- D 1 - - - 0x03AF0A 0E:AEFA: 4E AF     .word _off035_AF4E_0D_destroyed_hidden_block_piece



tbl_AEFC_return:
; bzk optimize
- D 1 - - - 0x03AF0C 0E:AEFC: 9B AE     .word ofs_AE9B - $01



_off035_AEFE_00:
_off035_AEFE_01_axe:
; con_weapon_axe
- D 1 - I - 0x03AF0E 0E:AEFE: 5C B4     .word ofs_035_01_B45C_00
- D 1 - I - 0x03AF10 0E:AF00: 95 B4     .word ofs_035_01_B495_01
- D 1 - I - 0x03AF12 0E:AF02: D7 B4     .word ofs_035_01_B4D7_02



_off035_AF04_02_cross:
; con_weapon_cross
- D 1 - I - 0x03AF14 0E:AF04: 5C B4     .word ofs_035_02_B45C_00
- D 1 - I - 0x03AF16 0E:AF06: F4 B4     .word ofs_035_02_B4F4_01
- D 1 - I - 0x03AF18 0E:AF08: 2D B5     .word ofs_035_02_B52D_02
- D 1 - I - 0x03AF1A 0E:AF0A: 6F B5     .word ofs_035_02_B56F_03



_off035_AF0C_03_knife:
; con_weapon_knife
- D 1 - I - 0x03AF1C 0E:AF0C: 5C B4     .word ofs_035_03_B45C_00
- D 1 - I - 0x03AF1E 0E:AF0E: B2 B6     .word ofs_035_03_B6B2_01
- D 1 - I - 0x03AF20 0E:AF10: F4 B6     .word ofs_035_03_B6F4_02



_off035_AF12_04_holy_water:
; con_weapon_holy_water
- D 1 - I - 0x03AF22 0E:AF12: 5C B4     .word ofs_035_04_B45C_00
- D 1 - I - 0x03AF24 0E:AF14: 52 B7     .word ofs_035_04_B752_01
- D 1 - I - 0x03AF26 0E:AF16: 92 B7     .word ofs_035_04_B792_02
- D 1 - I - 0x03AF28 0E:AF18: D0 B7     .word ofs_035_04_B7D0_03



_off035_AF1A_05_fireball:
; con_weapon_fireball
- D 1 - I - 0x03AF2A 0E:AF1A: 5C B4     .word ofs_035_05_B45C_00
- D 1 - I - 0x03AF2C 0E:AF1C: 90 B3     .word ofs_035_05_B390_01
- D 1 - I - 0x03AF2E 0E:AF1E: DC B3     .word ofs_035_05_B3DC_02



_off035_AF20_06_freeze:
; con_weapon_freeze
- D 1 - I - 0x03AF30 0E:AF20: EA B7     .word ofs_035_06_B7EA_00
- D 1 - I - 0x03AF32 0E:AF22: 23 B8     .word ofs_035_06_B823_01
- D 1 - I - 0x03AF34 0E:AF24: A4 B8     .word ofs_035_06_B8A4_02



_off035_AF26_07_blue_balls:
; con_weapon_blue_balls
- D 1 - I - 0x03AF36 0E:AF26: 3A B0     .word ofs_035_07_B03A_00
- D 1 - I - 0x03AF38 0E:AF28: 73 B0     .word ofs_035_07_B073_01
- D 1 - I - 0x03AF3A 0E:AF2A: FA B0     .word ofs_035_07_B0FA_02
- D 1 - I - 0x03AF3C 0E:AF2C: 36 B1     .word ofs_035_07_B136_03
- D 1 - I - 0x03AF3E 0E:AF2E: 7D B1     .word ofs_035_07_B17D_04
- D 1 - I - 0x03AF40 0E:AF30: F6 B1     .word ofs_035_07_B1F6_05
- D 1 - I - 0x03AF42 0E:AF32: 46 B2     .word ofs_035_07_B246_06



_off035_AF34_08_Grant_knife:
; con_weapon_g_knife
- D 1 - I - 0x03AF44 0E:AF34: 5C B4     .word ofs_035_08_B45C_00
- D 1 - I - 0x03AF46 0E:AF36: 2A B6     .word ofs_035_08_B62A_01
- D 1 - I - 0x03AF48 0E:AF38: F4 B6     .word ofs_035_08_B6F4_02



_off035_AF3A_09_Grant_axe:
; con_weapon_g_axe
- D 1 - I - 0x03AF4A 0E:AF3A: 5C B4     .word ofs_035_09_B45C_00
- D 1 - I - 0x03AF4C 0E:AF3C: B9 B5     .word ofs_035_09_B5B9_01
- D 1 - I - 0x03AF4E 0E:AF3E: D7 B4     .word ofs_035_09_B4D7_02



_off035_AF40_0A_Alucard_fireball:
- D 1 - I - 0x03AF50 0E:AF40: 5C B4     .word ofs_035_0A_B45C_00
- D 1 - I - 0x03AF52 0E:AF42: 77 AF     .word ofs_035_0A_AF77_01
- D 1 - I - 0x03AF54 0E:AF44: EA AF     .word ofs_035_0A_AFEA_02



_off035_AF46_0B:
; bzk garbage
- - - - - - 0x03AF56 0E:AF46: 66 AF     .word ofs_035_0B_AF66_00_RTS



_off035_AF48_0C_drowning_bubbles:
- D 1 - I - 0x03AF58 0E:AF48: 9F B9     .word ofs_035_0C_B99F_00
- D 1 - I - 0x03AF5A 0E:AF4A: BA B9     .word ofs_035_0C_B9BA_01
- D 1 - I - 0x03AF5C 0E:AF4C: C0 B9     .word ofs_035_0C_B9C0_02



_off035_AF4E_0D_destroyed_hidden_block_piece:
- D 1 - I - 0x03AF5E 0E:AF4E: 84 B9     .word ofs_035_0D_B984_00
- D 1 - I - 0x03AF60 0E:AF50: BA B9     .word ofs_035_0D_B9BA_01
- D 1 - I - 0x03AF62 0E:AF52: C0 B9     .word ofs_035_0D_B9C0_02



loc_AF54:
C D 1 - - - 0x03AF64 0E:AF54: 20 55 BC  JSR sub_BC55
C - - - - - 0x03AF67 0E:AF57: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03AF6A 0E:AF5A: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03AF6D 0E:AF5D: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x03AF70 0E:AF60: B9 67 AF  LDA tbl_AF67,Y
C - - - - - 0x03AF73 0E:AF63: 9D 06 06  STA ram_obj_config,X
bra_AF66_RTS:
ofs_035_0B_AF66_00_RTS:
C - - - - - 0x03AF76 0E:AF66: 60        RTS



tbl_AF67:
- - - - - - 0x03AF77 0E:AF67: 00        .byte $00   ; 00 
- D 1 - - - 0x03AF78 0E:AF68: 60        .byte $60   ; 01 
- D 1 - - - 0x03AF79 0E:AF69: 60        .byte $60   ; 02 
- D 1 - - - 0x03AF7A 0E:AF6A: 40        .byte $40   ; 03 
- D 1 - - - 0x03AF7B 0E:AF6B: 30        .byte $30   ; 04 
- D 1 - - - 0x03AF7C 0E:AF6C: C0        .byte $C0   ; 05 
- D 1 - - - 0x03AF7D 0E:AF6D: 02        .byte $02   ; 06 
- D 1 - - - 0x03AF7E 0E:AF6E: C0        .byte $C0   ; 07 
- D 1 - - - 0x03AF7F 0E:AF6F: 40        .byte $40   ; 08 
- D 1 - - - 0x03AF80 0E:AF70: 60        .byte $60   ; 09 
- D 1 - - - 0x03AF81 0E:AF71: 20        .byte $20   ; 0A 
- - - - - - 0x03AF82 0E:AF72: 00        .byte $00   ; 0B 
- - - - - - 0x03AF83 0E:AF73: 00        .byte $00   ; 0C 
- - - - - - 0x03AF84 0E:AF74: 00        .byte $00   ; 0D 
- - - - - - 0x03AF85 0E:AF75: 00        .byte $00   ; 0E 
- - - - - - 0x03AF86 0E:AF76: 00        .byte $00   ; 0F 



ofs_035_0A_AF77_01:
C - - J - - 0x03AF87 0E:AF77: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03AF8A 0E:AF7A: D0 EA     BNE bra_AF66_RTS
C - - - - - 0x03AF8C 0E:AF7C: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x03AF8F 0E:AF7F: D0 05     BNE bra_AF86
C - - - - - 0x03AF91 0E:AF81: A9 1F     LDA #con_sound_Alucard_fireball
C - - - - - 0x03AF93 0E:AF83: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_AF86:
C - - - - - 0x03AF96 0E:AF86: A9 06     LDA #con_obj_type_06
C - - - - - 0x03AF98 0E:AF88: A0 0B     LDY #$0B
C - - - - - 0x03AF9A 0E:AF8A: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x03AF9D 0E:AF8D: A4 10     LDY ram_0010_temp
C - - - - - 0x03AF9F 0E:AF8F: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x03AFA2 0E:AF92: 85 00     STA ram_0000_t040_copy_obj_facing
C - - - - - 0x03AFA4 0E:AF94: A0 00     LDY #$00
; bzk optimize, Y is always 00
C - - - - - 0x03AFA6 0E:AF96: B9 06 B0  LDA tbl_B006_speed,Y
C - - - - - 0x03AFA9 0E:AF99: 85 08     STA ram_0008_t007_data
C - - - - - 0x03AFAB 0E:AF9B: B9 07 B0  LDA tbl_B006_speed + $01,Y
C - - - - - 0x03AFAE 0E:AF9E: 85 09     STA ram_0008_t007_data + $01
C - - - - - 0x03AFB0 0E:AFA0: BD D8 05  LDA ram_05D8_obj,X
; * 04
C - - - - - 0x03AFB3 0E:AFA3: 0A        ASL
C - - - - - 0x03AFB4 0E:AFA4: 0A        ASL
C - - - - - 0x03AFB5 0E:AFA5: A8        TAY
C - - - - - 0x03AFB6 0E:AFA6: A5 00     LDA ram_0000_t040_copy_obj_facing
C - - - - - 0x03AFB8 0E:AFA8: F0 05     BEQ bra_AFAF
C - - - - - 0x03AFBA 0E:AFAA: 98        TYA
C - - - - - 0x03AFBB 0E:AFAB: 18        CLC
C - - - - - 0x03AFBC 0E:AFAC: 69 0C     ADC #$0C
C - - - - - 0x03AFBE 0E:AFAE: A8        TAY
bra_AFAF:
C - - - - - 0x03AFBF 0E:AFAF: B1 08     LDA (ram_0008_t007_data),Y
C - - - - - 0x03AFC1 0E:AFB1: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03AFC4 0E:AFB4: C8        INY
C - - - - - 0x03AFC5 0E:AFB5: B1 08     LDA (ram_0008_t007_data),Y
C - - - - - 0x03AFC7 0E:AFB7: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03AFCA 0E:AFBA: C8        INY
C - - - - - 0x03AFCB 0E:AFBB: B1 08     LDA (ram_0008_t007_data),Y
C - - - - - 0x03AFCD 0E:AFBD: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03AFD0 0E:AFC0: C8        INY
C - - - - - 0x03AFD1 0E:AFC1: B1 08     LDA (ram_0008_t007_data),Y
C - - - - - 0x03AFD3 0E:AFC3: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03AFD6 0E:AFC6: A9 00     LDA #$00
C - - - - - 0x03AFD8 0E:AFC8: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03AFDB 0E:AFCB: A4 10     LDY ram_0010_temp
C - - - - - 0x03AFDD 0E:AFCD: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03AFE0 0E:AFD0: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03AFE3 0E:AFD3: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03AFE6 0E:AFD6: A4 12     LDY ram_0012_temp
C - - - - - 0x03AFE8 0E:AFD8: C0 07     CPY #$07
C - - - - - 0x03AFEA 0E:AFDA: D0 03     BNE bra_AFDF
C - - - - - 0x03AFEC 0E:AFDC: 18        CLC
C - - - - - 0x03AFED 0E:AFDD: 69 06     ADC #$06
bra_AFDF:
C - - - - - 0x03AFEF 0E:AFDF: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03AFF2 0E:AFE2: A9 18     LDA #$18
C - - - - - 0x03AFF4 0E:AFE4: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03AFF7 0E:AFE7: 4C 54 AF  JMP loc_AF54



ofs_035_0A_AFEA_02:
C - - J - - 0x03AFFA 0E:AFEA: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x03AFFD 0E:AFED: D0 11     BNE bra_B000
C - - - - - 0x03AFFF 0E:AFEF: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B002 0E:AFF2: F0 0C     BEQ bra_B000
C - - - - - 0x03B004 0E:AFF4: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x03B007 0E:AFF7: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B00A 0E:AFFA: 20 2F B9  JSR sub_B92F_move_object_Y_axis
C - - - - - 0x03B00D 0E:AFFD: 4C 51 B9  JMP loc_B951
bra_B000:
C - - - - - 0x03B010 0E:B000: A9 00     LDA #$00
C - - - - - 0x03B012 0E:B002: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B015 0E:B005: 60        RTS



tbl_B006_speed:
; bzk optimize
- D 1 - - - 0x03B016 0E:B006: 0A B0     .word off_B00A_00


; bzk garbage 0x03AFA4
- - - - - - 0x03B018 0E:B008: 22 B0     .word $B022 ; 



off_B00A_00:
; 00 facing right
; 00 
- D 1 - I - 0x03B01A 0E:B00A: 80 04     .word $0480 ; spd_X
- D 1 - I - 0x03B01C 0E:B00C: 00 00     .word $0000 ; spd_Y
; 01 
- D 1 - I - 0x03B01E 0E:B00E: 26 04     .word $0426 ; spd_X
- D 1 - I - 0x03B020 0E:B010: 4C FE     .word $FE4C ; spd_Y
; 02 
- D 1 - I - 0x03B022 0E:B012: 26 04     .word $0426 ; spd_X
- D 1 - I - 0x03B024 0E:B014: B4 01     .word $01B4 ; spd_Y


; 0C facing left
; 00 
- D 1 - I - 0x03B026 0E:B016: 80 FB     .word $FB80 ; spd_X
- D 1 - I - 0x03B028 0E:B018: 00 00     .word $0000 ; spd_Y
; 01 
- D 1 - I - 0x03B02A 0E:B01A: DA FB     .word $FBDA ; spd_X
- D 1 - I - 0x03B02C 0E:B01C: 4C FE     .word $FE4C ; spd_Y
; 02 
- D 1 - I - 0x03B02E 0E:B01E: DA FB     .word $FBDA ; spd_X
- D 1 - I - 0x03B030 0E:B020: B4 01     .word $01B4 ; spd_Y


; bzk garbage 0x03B018
- - - - - - 0x03B032 0E:B022: 00        .byte $00   ; 
- - - - - - 0x03B033 0E:B023: 05        .byte $05   ; 
- - - - - - 0x03B034 0E:B024: 00        .byte $00   ; 
- - - - - - 0x03B035 0E:B025: 00        .byte $00   ; 
- - - - - - 0x03B036 0E:B026: 9C        .byte $9C   ; 
- - - - - - 0x03B037 0E:B027: 04        .byte $04   ; 
- - - - - - 0x03B038 0E:B028: 1B        .byte $1B   ; 
- - - - - - 0x03B039 0E:B029: FE        .byte $FE   ; 
- - - - - - 0x03B03A 0E:B02A: 9C        .byte $9C   ; 
- - - - - - 0x03B03B 0E:B02B: 04        .byte $04   ; 
- - - - - - 0x03B03C 0E:B02C: E5        .byte $E5   ; 
- - - - - - 0x03B03D 0E:B02D: 01        .byte $01   ; 
- - - - - - 0x03B03E 0E:B02E: 00        .byte $00   ; 
- - - - - - 0x03B03F 0E:B02F: FB        .byte $FB   ; 
- - - - - - 0x03B040 0E:B030: 00        .byte $00   ; 
- - - - - - 0x03B041 0E:B031: 00        .byte $00   ; 
- - - - - - 0x03B042 0E:B032: 64        .byte $64   ; 
- - - - - - 0x03B043 0E:B033: FB        .byte $FB   ; 
- - - - - - 0x03B044 0E:B034: 1B        .byte $1B   ; 
- - - - - - 0x03B045 0E:B035: FE        .byte $FE   ; 
- - - - - - 0x03B046 0E:B036: 64        .byte $64   ; 
- - - - - - 0x03B047 0E:B037: FB        .byte $FB   ; 
- - - - - - 0x03B048 0E:B038: E5        .byte $E5   ; 
- - - - - - 0x03B049 0E:B039: 01        .byte $01   ; 



ofs_035_07_B03A_00:
C - - J - - 0x03B04A 0E:B03A: 20 6E B4  JSR sub_B46E
C - - - - - 0x03B04D 0E:B03D: 18        CLC
C - - - - - 0x03B04E 0E:B03E: 69 01     ADC #$01
C - - - - - 0x03B050 0E:B040: 9D C2 05  STA ram_05C1_obj + $01,X
C - - - - - 0x03B053 0E:B043: 9D C3 05  STA ram_05C1_obj + $02,X
C - - - - - 0x03B056 0E:B046: A9 00     LDA #$00
C - - - - - 0x03B058 0E:B048: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B05B 0E:B04B: 9D 39 04  STA ram_obj_pos_X_hi + $01,X
C - - - - - 0x03B05E 0E:B04E: 9D 3A 04  STA ram_obj_pos_X_hi + $02,X
C - - - - - 0x03B061 0E:B051: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B064 0E:B054: 9D 1D 04  STA ram_obj_pos_Y_hi + $01,X
C - - - - - 0x03B067 0E:B057: 9D 1E 04  STA ram_obj_pos_Y_hi + $02,X
C - - - - - 0x03B06A 0E:B05A: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B06D 0E:B05D: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B070 0E:B060: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03B073 0E:B063: 9D 4F 05  STA ram_obj_id + $01,X
C - - - - - 0x03B076 0E:B066: 9D 50 05  STA ram_obj_id + $02,X
C - - - - - 0x03B079 0E:B069: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03B07C 0E:B06C: 9D 66 05  STA ram_obj_state + $01,X
C - - - - - 0x03B07F 0E:B06F: 9D 67 05  STA ram_obj_state + $02,X
bra_B072_RTS:
C - - - - - 0x03B082 0E:B072: 60        RTS



ofs_035_07_B073_01:
C - - J - - 0x03B083 0E:B073: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B086 0E:B076: D0 FA     BNE bra_B072_RTS
C - - - - - 0x03B088 0E:B078: E0 14     CPX #$14
C - - - - - 0x03B08A 0E:B07A: D0 05     BNE bra_B081
C - - - - - 0x03B08C 0E:B07C: A9 1E     LDA #con_sound_1E
C - - - - - 0x03B08E 0E:B07E: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_B081:
C - - - - - 0x03B091 0E:B081: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03B094 0E:B084: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B097 0E:B087: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03B09A 0E:B08A: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B09D 0E:B08D: A9 00     LDA #$00
C - - - - - 0x03B09F 0E:B08F: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03B0A2 0E:B092: E0 14     CPX #$14
C - - - - - 0x03B0A4 0E:B094: D0 05     BNE bra_B09B
C - - - - - 0x03B0A6 0E:B096: 20 AC B0  JSR sub_B0AC
C - - - - - 0x03B0A9 0E:B099: A2 14     LDX #$14
bra_B09B:
C - - - - - 0x03B0AB 0E:B09B: 8A        TXA
C - - - - - 0x03B0AC 0E:B09C: 38        SEC
C - - - - - 0x03B0AD 0E:B09D: E9 14     SBC #$14
C - - - - - 0x03B0AF 0E:B09F: A8        TAY
C - - - - - 0x03B0B0 0E:B0A0: B9 A9 B0  LDA tbl_B0A9,Y
C - - - - - 0x03B0B3 0E:B0A3: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B0B6 0E:B0A6: 4C 54 AF  JMP loc_AF54



tbl_B0A9:
- D 1 - - - 0x03B0B9 0E:B0A9: 03        .byte $03   ; 14 
- D 1 - - - 0x03B0BA 0E:B0AA: 02        .byte $02   ; 15 
- D 1 - - - 0x03B0BB 0E:B0AB: 01        .byte $01   ; 16 



sub_B0AC:
C - - - - - 0x03B0BC 0E:B0AC: A9 00     LDA #$00
C - - - - - 0x03B0BE 0E:B0AE: 85 08     STA ram_0008_temp
C - - - - - 0x03B0C0 0E:B0B0: A0 01     LDY #$01
bra_B0B2_loop:
C - - - - - 0x03B0C2 0E:B0B2: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x03B0C5 0E:B0B5: D0 10     BNE bra_B0C7
bra_B0B7:
C - - - - - 0x03B0C7 0E:B0B7: C8        INY
C - - - - - 0x03B0C8 0E:B0B8: C0 0D     CPY #$0D
C - - - - - 0x03B0CA 0E:B0BA: 90 F6     BCC bra_B0B2_loop
C - - - - - 0x03B0CC 0E:B0BC: A9 FF     LDA #$FF
bra_B0BE_loop:
C - - - - - 0x03B0CE 0E:B0BE: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03B0D1 0E:B0C1: E8        INX
C - - - - - 0x03B0D2 0E:B0C2: E0 17     CPX #$17
C - - - - - 0x03B0D4 0E:B0C4: 90 F8     BCC bra_B0BE_loop
C - - - - - 0x03B0D6 0E:B0C6: 60        RTS
bra_B0C7:
C - - - - - 0x03B0D7 0E:B0C7: B9 70 04  LDA ram_obj_flags,Y
C - - - - - 0x03B0DA 0E:B0CA: 30 EB     BMI bra_B0B7    ; if con_obj_flag_not_visible
C - - - - - 0x03B0DC 0E:B0CC: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03B0DF 0E:B0CF: 38        SEC
C - - - - - 0x03B0E0 0E:B0D0: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x03B0E3 0E:B0D3: B0 05     BCS bra_B0DA
C - - - - - 0x03B0E5 0E:B0D5: 49 FF     EOR #$FF
C - - - - - 0x03B0E7 0E:B0D7: 18        CLC
C - - - - - 0x03B0E8 0E:B0D8: 69 01     ADC #$01
bra_B0DA:
C - - - - - 0x03B0EA 0E:B0DA: C9 40     CMP #$40
C - - - - - 0x03B0EC 0E:B0DC: B0 D9     BCS bra_B0B7
C - - - - - 0x03B0EE 0E:B0DE: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03B0F1 0E:B0E1: 38        SEC
C - - - - - 0x03B0F2 0E:B0E2: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x03B0F5 0E:B0E5: B0 05     BCS bra_B0EC
C - - - - - 0x03B0F7 0E:B0E7: 49 FF     EOR #$FF
C - - - - - 0x03B0F9 0E:B0E9: 18        CLC
C - - - - - 0x03B0FA 0E:B0EA: 69 01     ADC #$01
bra_B0EC:
C - - - - - 0x03B0FC 0E:B0EC: C9 80     CMP #$80
C - - - - - 0x03B0FE 0E:B0EE: B0 C7     BCS bra_B0B7
C - - - - - 0x03B100 0E:B0F0: 98        TYA
C - - - - - 0x03B101 0E:B0F1: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03B104 0E:B0F4: E8        INX
C - - - - - 0x03B105 0E:B0F5: E0 17     CPX #$17
C - - - - - 0x03B107 0E:B0F7: B0 BE     BCS bra_B0B7
bra_B0F9_RTS:
C - - - - - 0x03B109 0E:B0F9: 60        RTS



ofs_035_07_B0FA_02:
C - - J - - 0x03B10A 0E:B0FA: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x03B10D 0E:B0FD: 30 07     BMI bra_B106
bra_B0FF:
loc_B0FF:
C D 1 - - - 0x03B10F 0E:B0FF: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B112 0E:B102: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B115 0E:B105: 60        RTS
bra_B106:
C - - - - - 0x03B116 0E:B106: 20 12 B1  JSR sub_B112
C - - - - - 0x03B119 0E:B109: B0 F4     BCS bra_B0FF
C - - - - - 0x03B11B 0E:B10B: 98        TYA
C - - - - - 0x03B11C 0E:B10C: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03B11F 0E:B10F: 4C FF B0  JMP loc_B0FF



sub_B112:
C - - - - - 0x03B122 0E:B112: A0 01     LDY #$01
bra_B114_loop:
C - - - - - 0x03B124 0E:B114: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x03B127 0E:B117: D0 07     BNE bra_B120
bra_B119:
C - - - - - 0x03B129 0E:B119: C8        INY
C - - - - - 0x03B12A 0E:B11A: C0 0D     CPY #$0D
C - - - - - 0x03B12C 0E:B11C: 90 F6     BCC bra_B114_loop
C - - - - - 0x03B12E 0E:B11E: 38        SEC
C - - - - - 0x03B12F 0E:B11F: 60        RTS
bra_B120:
C - - - - - 0x03B130 0E:B120: B9 70 04  LDA ram_obj_flags,Y
C - - - - - 0x03B133 0E:B123: 30 F4     BMI bra_B119    ; if con_obj_flag_not_visible
C - - - - - 0x03B135 0E:B125: CC EC 05  CPY ram_05D8_obj + $14
C - - - - - 0x03B138 0E:B128: F0 EF     BEQ bra_B119
C - - - - - 0x03B13A 0E:B12A: CC ED 05  CPY ram_05D8_obj + $15
C - - - - - 0x03B13D 0E:B12D: F0 EA     BEQ bra_B119
C - - - - - 0x03B13F 0E:B12F: CC EE 05  CPY ram_05D8_obj + $16
C - - - - - 0x03B142 0E:B132: F0 E5     BEQ bra_B119
C - - - - - 0x03B144 0E:B134: 18        CLC
C - - - - - 0x03B145 0E:B135: 60        RTS



ofs_035_07_B136_03:
C - - J - - 0x03B146 0E:B136: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B149 0E:B139: D0 BE     BNE bra_B0F9_RTS
C - - - - - 0x03B14B 0E:B13B: A9 02     LDA #con_obj_type_02
C - - - - - 0x03B14D 0E:B13D: A0 0A     LDY #$0A
C - - - - - 0x03B14F 0E:B13F: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x03B152 0E:B142: AD 7A B1  LDA tbl_B17A_10
C - - - - - 0x03B155 0E:B145: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B158 0E:B148: A9 01     LDA #$01
C - - - - - 0x03B15A 0E:B14A: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B15D 0E:B14D: 8A        TXA
C - - - - - 0x03B15E 0E:B14E: 38        SEC
C - - - - - 0x03B15F 0E:B14F: E9 14     SBC #$14
C - - - - - 0x03B161 0E:B151: A8        TAY
C - - - - - 0x03B162 0E:B152: AD A8 04  LDA ram_plr_facing
C - - - - - 0x03B165 0E:B155: F0 03     BEQ bra_B15A_facing_right
; if facing left
C - - - - - 0x03B167 0E:B157: C8        INY
C - - - - - 0x03B168 0E:B158: C8        INY
C - - - - - 0x03B169 0E:B159: C8        INY
bra_B15A_facing_right:
C - - - - - 0x03B16A 0E:B15A: B9 74 B1  LDA tbl_B174,Y
C - - - - - 0x03B16D 0E:B15D: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x03B170 0E:B160: A9 00     LDA #$00
C - - - - - 0x03B172 0E:B162: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B175 0E:B165: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03B178 0E:B168: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B17B 0E:B16B: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03B17E 0E:B16E: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B181 0E:B171: 4C 54 AF  JMP loc_AF54



tbl_B174:
; 00 facing right
- D 1 - - - 0x03B184 0E:B174: 00        .byte $00   ; 00 
- D 1 - - - 0x03B185 0E:B175: 04        .byte $04   ; 01 
- D 1 - - - 0x03B186 0E:B176: 1C        .byte $1C   ; 02 
; 01 facing left
- D 1 - - - 0x03B187 0E:B177: 10        .byte $10   ; 00 
- D 1 - - - 0x03B188 0E:B178: 0C        .byte $0C   ; 01 
- D 1 - - - 0x03B189 0E:B179: 14        .byte $14   ; 02 



tbl_B17A_10:
; bzk optimize
- D 1 - - - 0x03B18A 0E:B17A: 10        .byte $10   ; 



tbl_B17B_10:
; bzk optimize
- D 1 - - - 0x03B18B 0E:B17B: 10        .byte $10   ; 



tbl_B17C_spd_Y_hi_02:
; bzk optimize
- D 1 - - - 0x03B18C 0E:B17C: 02        .byte $02   ; 



ofs_035_07_B17D_04:
C - - J - - 0x03B18D 0E:B17D: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B190 0E:B180: F0 13     BEQ bra_B195
loc_B182:
bra_B182:
C D 1 - - - 0x03B192 0E:B182: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x03B195 0E:B185: 20 BB B2  JSR sub_B2BB
C - - - - - 0x03B198 0E:B188: 20 0A B3  JSR sub_B30A
C - - - - - 0x03B19B 0E:B18B: 4C 51 B9  JMP loc_B951
bra_B18E:
C - - - - - 0x03B19E 0E:B18E: A9 FF     LDA #$FF
C - - - - - 0x03B1A0 0E:B190: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03B1A3 0E:B193: D0 ED     BNE bra_B182    ; jmp
bra_B195:
C - - - - - 0x03B1A5 0E:B195: BC D8 05  LDY ram_05D8_obj,X
C - - - - - 0x03B1A8 0E:B198: 30 E8     BMI bra_B182
C - - - - - 0x03B1AA 0E:B19A: F0 E6     BEQ bra_B182
; bzk bug? this refers to 0570 when Y = 22.
; movie walkthrough 2, frame around 322700,
; when Sypha is fighting owls with her blue balls
C - - - - - 0x03B1AC 0E:B19C: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x03B1AF 0E:B19F: F0 ED     BEQ bra_B18E
C - - - - - 0x03B1B1 0E:B1A1: B9 70 04  LDA ram_obj_flags,Y
C - - - - - 0x03B1B4 0E:B1A4: 30 E8     BMI bra_B18E    ; if con_obj_flag_not_visible
C - - - - - 0x03B1B6 0E:B1A6: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x03B1B9 0E:B1A9: D0 E3     BNE bra_B18E
C - - - - - 0x03B1BB 0E:B1AB: A9 00     LDA #$00
C - - - - - 0x03B1BD 0E:B1AD: 85 08     STA ram_0008_t03B_obj_spd_X_hi
C - - - - - 0x03B1BF 0E:B1AF: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03B1C2 0E:B1B2: 38        SEC
C - - - - - 0x03B1C3 0E:B1B3: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x03B1C6 0E:B1B6: B0 09     BCS bra_B1C1
C - - - - - 0x03B1C8 0E:B1B8: 49 FF     EOR #$FF
C - - - - - 0x03B1CA 0E:B1BA: 18        CLC
C - - - - - 0x03B1CB 0E:B1BB: 69 01     ADC #$01
C - - - - - 0x03B1CD 0E:B1BD: E6 08     INC ram_0008_t03B_obj_spd_X_hi
C - - - - - 0x03B1CF 0E:B1BF: E6 08     INC ram_0008_t03B_obj_spd_X_hi   ; -> 02
bra_B1C1:
C - - - - - 0x03B1D1 0E:B1C1: 85 09     STA ram_0009_temp
C - - - - - 0x03B1D3 0E:B1C3: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03B1D6 0E:B1C6: 38        SEC
C - - - - - 0x03B1D7 0E:B1C7: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x03B1DA 0E:B1CA: B0 07     BCS bra_B1D3
C - - - - - 0x03B1DC 0E:B1CC: 49 FF     EOR #$FF
C - - - - - 0x03B1DE 0E:B1CE: 18        CLC
C - - - - - 0x03B1DF 0E:B1CF: 69 01     ADC #$01
C - - - - - 0x03B1E1 0E:B1D1: E6 08     INC ram_0008_t03B_obj_spd_X_hi   ; -> 01/03
bra_B1D3:
C - - - - - 0x03B1E3 0E:B1D3: 85 01     STA ram_0000_t03F_obj_spd_X + $01
C - - - - - 0x03B1E5 0E:B1D5: A5 09     LDA ram_0009_temp
C - - - - - 0x03B1E7 0E:B1D7: A0 00     LDY #$00
C - - - - - 0x03B1E9 0E:B1D9: 84 00     STY ram_0000_t03F_obj_spd_X
C - - - - - 0x03B1EB 0E:B1DB: 20 0D AE  JSR sub_AE0D_math
C - - - - - 0x03B1EE 0E:B1DE: A5 01     LDA ram_0000_t03F_obj_spd_X + $01
C - - - - - 0x03B1F0 0E:B1E0: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B1F3 0E:B1E3: A5 00     LDA ram_0000_t03F_obj_spd_X
C - - - - - 0x03B1F5 0E:B1E5: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B1F8 0E:B1E8: A5 08     LDA ram_0008_t03B_obj_spd_X_hi
C - - - - - 0x03B1FA 0E:B1EA: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B1FD 0E:B1ED: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B200 0E:B1F0: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B203 0E:B1F3: 4C 82 B1  JMP loc_B182



ofs_035_07_B1F6_05:
C - - J - - 0x03B206 0E:B1F6: 20 08 B2  JSR sub_B208
C - - - - - 0x03B209 0E:B1F9: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B20C 0E:B1FC: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B20F 0E:B1FF: AD 7C B1  LDA tbl_B17C_spd_Y_hi_02
C - - - - - 0x03B212 0E:B202: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B215 0E:B205: 4C 82 B1  JMP loc_B182



sub_B208:
C - - - - - 0x03B218 0E:B208: A0 00     LDY #$00
bra_B20A_loop:
C - - - - - 0x03B21A 0E:B20A: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x03B21D 0E:B20D: D9 7E B3  CMP tbl_B37E_spd_Y,Y
C - - - - - 0x03B220 0E:B210: 90 12     BCC bra_B224
C - - - - - 0x03B222 0E:B212: D0 0A     BNE bra_B21E
C - - - - - 0x03B224 0E:B214: BD 37 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x03B227 0E:B217: D9 7F B3  CMP tbl_B37E_spd_Y + $01,Y
C - - - - - 0x03B22A 0E:B21A: 90 08     BCC bra_B224
C - - - - - 0x03B22C 0E:B21C: F0 06     BEQ bra_B224
bra_B21E:
C - - - - - 0x03B22E 0E:B21E: C8        INY
C - - - - - 0x03B22F 0E:B21F: C8        INY
C - - - - - 0x03B230 0E:B220: C0 10     CPY #$10
C - - - - - 0x03B232 0E:B222: 90 E6     BCC bra_B20A_loop
bra_B224:
C - - - - - 0x03B234 0E:B224: 98        TYA
C - - - - - 0x03B235 0E:B225: 4A        LSR
C - - - - - 0x03B236 0E:B226: 85 00     STA ram_0000_t03E_spd_X_hi
C - - - - - 0x03B238 0E:B228: BC F2 04  LDY ram_obj_spd_X_hi,X
C - - - - - 0x03B23B 0E:B22B: F0 15     BEQ bra_B242_00
C - - - - - 0x03B23D 0E:B22D: 88        DEY
C - - - - - 0x03B23E 0E:B22E: F0 0D     BEQ bra_B23D_01
C - - - - - 0x03B240 0E:B230: 88        DEY
C - - - - - 0x03B241 0E:B231: F0 06     BEQ bra_B239_02
; 03
C - - - - - 0x03B243 0E:B233: 18        CLC
C - - - - - 0x03B244 0E:B234: 69 10     ADC #$10
C - - - - - 0x03B246 0E:B236: 4C 42 B2  JMP loc_B242
bra_B239_02:
C - - - - - 0x03B249 0E:B239: A9 10     LDA #$10
C - - - - - 0x03B24B 0E:B23B: D0 02     BNE bra_B23F    ; jmp
bra_B23D_01:
C - - - - - 0x03B24D 0E:B23D: A9 20     LDA #$20
bra_B23F:
C - - - - - 0x03B24F 0E:B23F: 38        SEC
C - - - - - 0x03B250 0E:B240: E5 00     SBC ram_0000_t03E_spd_X_hi
loc_B242:
bra_B242_00:
C D 1 - - - 0x03B252 0E:B242: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B255 0E:B245: 60        RTS



ofs_035_07_B246_06:
C - - J - - 0x03B256 0E:B246: 20 59 B2  JSR sub_B259
C - - - - - 0x03B259 0E:B249: 90 0B     BCC bra_B256
C - - - - - 0x03B25B 0E:B24B: AD 7B B1  LDA tbl_B17B_10
C - - - - - 0x03B25E 0E:B24E: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B261 0E:B251: A9 08     LDA #$08
C - - - - - 0x03B263 0E:B253: 9D 65 05  STA ram_obj_state,X
bra_B256:
C - - - - - 0x03B266 0E:B256: 4C 82 B1  JMP loc_B182



sub_B259:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03B269 0E:B259: DE 20 05  DEC ram_obj_spd_Y_hi,X
C - - - - - 0x03B26C 0E:B25C: D0 39     BNE bra_B297
C - - - - - 0x03B26E 0E:B25E: AD 7C B1  LDA tbl_B17C_spd_Y_hi_02
C - - - - - 0x03B271 0E:B261: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B274 0E:B264: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x03B277 0E:B267: 38        SEC
C - - - - - 0x03B278 0E:B268: FD EF 05  SBC ram_05EF_obj,X
C - - - - - 0x03B27B 0E:B26B: 85 00     STA ram_0000_t03D_spd_X_lo
C - - - - - 0x03B27D 0E:B26D: B0 0B     BCS bra_B27A
C - - - - - 0x03B27F 0E:B26F: C9 F0     CMP #$F0
C - - - - - 0x03B281 0E:B271: 90 26     BCC bra_B299
C - - - - - 0x03B283 0E:B273: A9 00     LDA #$00
C - - - - - 0x03B285 0E:B275: 38        SEC
C - - - - - 0x03B286 0E:B276: E5 00     SBC ram_0000_t03D_spd_X_lo
C - - - - - 0x03B288 0E:B278: 90 09     BCC bra_B283
bra_B27A:
C - - - - - 0x03B28A 0E:B27A: C9 11     CMP #$11
C - - - - - 0x03B28C 0E:B27C: 90 1E     BCC bra_B29C
C - - - - - 0x03B28E 0E:B27E: A9 20     LDA #$20
C - - - - - 0x03B290 0E:B280: 38        SEC
C - - - - - 0x03B291 0E:B281: E5 00     SBC ram_0000_t03D_spd_X_lo
bra_B283:
C - - - - - 0x03B293 0E:B283: DD 09 05  CMP ram_obj_spd_X_lo,X
C - - - - - 0x03B296 0E:B286: 90 2B     BCC bra_B2B3
C - - - - - 0x03B298 0E:B288: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B29B 0E:B28B: 38        SEC
C - - - - - 0x03B29C 0E:B28C: FD 09 05  SBC ram_obj_spd_X_lo,X
C - - - - - 0x03B29F 0E:B28F: 10 03     BPL bra_B294
C - - - - - 0x03B2A1 0E:B291: 38        SEC
C - - - - - 0x03B2A2 0E:B292: E9 E0     SBC #$E0
bra_B294:
C - - - - - 0x03B2A4 0E:B294: 9D EF 05  STA ram_05EF_obj,X
bra_B297:
C - - - - - 0x03B2A7 0E:B297: 18        CLC
C - - - - - 0x03B2A8 0E:B298: 60        RTS
bra_B299:
C - - - - - 0x03B2A9 0E:B299: 38        SEC
C - - - - - 0x03B2AA 0E:B29A: E9 E0     SBC #$E0
bra_B29C:
C - - - - - 0x03B2AC 0E:B29C: DD 09 05  CMP ram_obj_spd_X_lo,X
C - - - - - 0x03B2AF 0E:B29F: 90 12     BCC bra_B2B3
C - - - - - 0x03B2B1 0E:B2A1: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B2B4 0E:B2A4: 18        CLC
C - - - - - 0x03B2B5 0E:B2A5: 7D 09 05  ADC ram_obj_spd_X_lo,X
C - - - - - 0x03B2B8 0E:B2A8: C9 20     CMP #$20
C - - - - - 0x03B2BA 0E:B2AA: 90 02     BCC bra_B2AE_not_overflow
C - - - - - 0x03B2BC 0E:B2AC: E9 20     SBC #$20
bra_B2AE_not_overflow:
C - - - - - 0x03B2BE 0E:B2AE: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x03B2C1 0E:B2B1: 18        CLC
C - - - - - 0x03B2C2 0E:B2B2: 60        RTS
bra_B2B3:
C - - - - - 0x03B2C3 0E:B2B3: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x03B2C6 0E:B2B6: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x03B2C9 0E:B2B9: 38        SEC
C - - - - - 0x03B2CA 0E:B2BA: 60        RTS



sub_B2BB:
C - - - - - 0x03B2CB 0E:B2BB: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B2CE 0E:B2BE: C9 08     CMP #$08
C - - - - - 0x03B2D0 0E:B2C0: 90 32     BCC bra_B2F4
C - - - - - 0x03B2D2 0E:B2C2: C9 10     CMP #$10
C - - - - - 0x03B2D4 0E:B2C4: 90 15     BCC bra_B2DB
C - - - - - 0x03B2D6 0E:B2C6: C9 18     CMP #$18
C - - - - - 0x03B2D8 0E:B2C8: 90 08     BCC bra_B2D2
C - - - - - 0x03B2DA 0E:B2CA: A9 20     LDA #$20
C - - - - - 0x03B2DC 0E:B2CC: 38        SEC
C - - - - - 0x03B2DD 0E:B2CD: FD EF 05  SBC ram_05EF_obj,X
C - - - - - 0x03B2E0 0E:B2D0: D0 22     BNE bra_B2F4
bra_B2D2:
C - - - - - 0x03B2E2 0E:B2D2: A9 18     LDA #$18
C - - - - - 0x03B2E4 0E:B2D4: 38        SEC
C - - - - - 0x03B2E5 0E:B2D5: FD EF 05  SBC ram_05EF_obj,X
C - - - - - 0x03B2E8 0E:B2D8: 4C DE B2  JMP loc_B2DE
bra_B2DB:
C - - - - - 0x03B2EB 0E:B2DB: 38        SEC
C - - - - - 0x03B2EC 0E:B2DC: E9 08     SBC #$08
loc_B2DE:
C D 1 - - - 0x03B2EE 0E:B2DE: 0A        ASL
C - - - - - 0x03B2EF 0E:B2DF: A8        TAY
C - - - - - 0x03B2F0 0E:B2E0: 38        SEC
C - - - - - 0x03B2F1 0E:B2E1: BD C4 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x03B2F4 0E:B2E4: F9 6D B3  SBC tbl_B36C_position + $01,Y
C - - - - - 0x03B2F7 0E:B2E7: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x03B2FA 0E:B2EA: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03B2FD 0E:B2ED: F9 6C B3  SBC tbl_B36C_position,Y
C - - - - - 0x03B300 0E:B2F0: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B303 0E:B2F3: 60        RTS
bra_B2F4:
C - - - - - 0x03B304 0E:B2F4: 0A        ASL
C - - - - - 0x03B305 0E:B2F5: A8        TAY
C - - - - - 0x03B306 0E:B2F6: 18        CLC
C - - - - - 0x03B307 0E:B2F7: B9 5B B3  LDA tbl_B35A_position + $01,Y
C - - - - - 0x03B30A 0E:B2FA: 7D C4 04  ADC ram_obj_pos_X_lo,X
C - - - - - 0x03B30D 0E:B2FD: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x03B310 0E:B300: B9 5A B3  LDA tbl_B35A_position,Y
C - - - - - 0x03B313 0E:B303: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x03B316 0E:B306: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B319 0E:B309: 60        RTS



sub_B30A:
C - - - - - 0x03B31A 0E:B30A: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B31D 0E:B30D: C9 08     CMP #$08
C - - - - - 0x03B31F 0E:B30F: 90 33     BCC bra_B344
C - - - - - 0x03B321 0E:B311: C9 10     CMP #$10
C - - - - - 0x03B323 0E:B313: 90 29     BCC bra_B33E
C - - - - - 0x03B325 0E:B315: C9 18     CMP #$18
C - - - - - 0x03B327 0E:B317: 90 09     BCC bra_B322
C - - - - - 0x03B329 0E:B319: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B32C 0E:B31C: 38        SEC
C - - - - - 0x03B32D 0E:B31D: E9 18     SBC #$18
C - - - - - 0x03B32F 0E:B31F: 4C 28 B3  JMP loc_B328
bra_B322:
C - - - - - 0x03B332 0E:B322: A9 18     LDA #$18
C - - - - - 0x03B334 0E:B324: 38        SEC
C - - - - - 0x03B335 0E:B325: FD EF 05  SBC ram_05EF_obj,X
loc_B328:
C D 1 - - - 0x03B338 0E:B328: 0A        ASL
C - - - - - 0x03B339 0E:B329: A8        TAY
C - - - - - 0x03B33A 0E:B32A: 38        SEC
C - - - - - 0x03B33B 0E:B32B: BD DB 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x03B33E 0E:B32E: F9 5B B3  SBC tbl_B35A_position + $01,Y
C - - - - - 0x03B341 0E:B331: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x03B344 0E:B334: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x03B347 0E:B337: F9 5A B3  SBC tbl_B35A_position,Y
C - - - - - 0x03B34A 0E:B33A: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B34D 0E:B33D: 60        RTS
bra_B33E:
C - - - - - 0x03B34E 0E:B33E: A9 10     LDA #$10
C - - - - - 0x03B350 0E:B340: 38        SEC
C - - - - - 0x03B351 0E:B341: FD EF 05  SBC ram_05EF_obj,X
bra_B344:
C - - - - - 0x03B354 0E:B344: 0A        ASL
C - - - - - 0x03B355 0E:B345: A8        TAY
C - - - - - 0x03B356 0E:B346: 18        CLC
C - - - - - 0x03B357 0E:B347: B9 6D B3  LDA tbl_B36C_position + $01,Y
C - - - - - 0x03B35A 0E:B34A: 7D DB 04  ADC ram_obj_pos_Y_lo,X
C - - - - - 0x03B35D 0E:B34D: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x03B360 0E:B350: B9 6C B3  LDA tbl_B36C_position,Y
C - - - - - 0x03B363 0E:B353: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x03B366 0E:B356: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B369 0E:B359: 60        RTS



tbl_B35A_position:
- D 1 - - - 0x03B36A 0E:B35A: 02 00     .dbyt $0200 ; 00 
- D 1 - - - 0x03B36C 0E:B35C: 01 F6     .dbyt $01F6 ; 01 
- D 1 - - - 0x03B36E 0E:B35E: 01 D9     .dbyt $01D9 ; 02 
- D 1 - - - 0x03B370 0E:B360: 01 A9     .dbyt $01A9 ; 03 
- D 1 - - - 0x03B372 0E:B362: 01 6A     .dbyt $016A ; 04 
- D 1 - - - 0x03B374 0E:B364: 01 1C     .dbyt $011C ; 05 
- D 1 - - - 0x03B376 0E:B366: 00 C3     .dbyt $00C3 ; 06 
- D 1 - - - 0x03B378 0E:B368: 00 63     .dbyt $0063 ; 07 
- D 1 - - - 0x03B37A 0E:B36A: 00 00     .dbyt $0000 ; 08 



tbl_B36C_position:
- D 1 - - - 0x03B37C 0E:B36C: 00 00     .dbyt $0000 ; 00 
- D 1 - - - 0x03B37E 0E:B36E: 00 63     .dbyt $0063 ; 01 
- D 1 - - - 0x03B380 0E:B370: 00 C3     .dbyt $00C3 ; 02 
- D 1 - - - 0x03B382 0E:B372: 01 1C     .dbyt $011C ; 03 
- D 1 - - - 0x03B384 0E:B374: 01 69     .dbyt $0169 ; 04 
- D 1 - - - 0x03B386 0E:B376: 01 A9     .dbyt $01A9 ; 05 
- D 1 - - - 0x03B388 0E:B378: 01 D9     .dbyt $01D9 ; 06 
- D 1 - - - 0x03B38A 0E:B37A: 01 F6     .dbyt $01F6 ; 07 
- D 1 - - - 0x03B38C 0E:B37C: 02 00     .dbyt $0200 ; 08 



tbl_B37E_spd_Y:
- D 1 - - - 0x03B38E 0E:B37E: 00 00     .dbyt $0000 ; 00 
- D 1 - - - 0x03B390 0E:B380: 00 32     .dbyt $0032 ; 01 
- D 1 - - - 0x03B392 0E:B382: 00 6A     .dbyt $006A ; 02 
- D 1 - - - 0x03B394 0E:B384: 00 C4     .dbyt $00C4 ; 03 
- D 1 - - - 0x03B396 0E:B386: 01 00     .dbyt $0100 ; 04 
- D 1 - - - 0x03B398 0E:B388: 01 7F     .dbyt $017F ; 05 
- D 1 - - - 0x03B39A 0E:B38A: 02 6A     .dbyt $026A ; 06 
- D 1 - - - 0x03B39C 0E:B38C: 05 06     .dbyt $0506 ; 07 
- - - - - - 0x03B39E 0E:B38E: FF FF     .dbyt $FFFF ; 08 



ofs_035_05_B390_01:
C - - J - - 0x03B3A0 0E:B390: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B3A3 0E:B393: D0 60     BNE bra_B3F5_RTS
C - - - - - 0x03B3A5 0E:B395: A9 24     LDA #con_sound_24
C - - - - - 0x03B3A7 0E:B397: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03B3AA 0E:B39A: A4 10     LDY ram_0010_temp
C - - - - - 0x03B3AC 0E:B39C: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03B3AF 0E:B39F: 85 0C     STA ram_000C_temp
C - - - - - 0x03B3B1 0E:B3A1: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03B3B4 0E:B3A4: 85 0D     STA ram_000D_temp
C - - - - - 0x03B3B6 0E:B3A6: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x03B3B9 0E:B3A9: 85 0E     STA ram_000E_t009_copy_obj_facing
C - - - - - 0x03B3BB 0E:B3AB: A9 00     LDA #$00
C - - - - - 0x03B3BD 0E:B3AD: 9D 93 05  STA ram_obj_anim_cnt,X
C - - - - - 0x03B3C0 0E:B3B0: A9 02     LDA #con_obj_type_02
C - - - - - 0x03B3C2 0E:B3B2: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03B3C5 0E:B3B5: A9 01     LDA #$01
C - - - - - 0x03B3C7 0E:B3B7: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x03B3CA 0E:B3BA: A5 0D     LDA ram_000D_temp
C - - - - - 0x03B3CC 0E:B3BC: 38        SEC
C - - - - - 0x03B3CD 0E:B3BD: E9 08     SBC #$08
C - - - - - 0x03B3CF 0E:B3BF: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B3D2 0E:B3C2: A4 0C     LDY ram_000C_temp
C - - - - - 0x03B3D4 0E:B3C4: A5 0E     LDA ram_000E_t009_copy_obj_facing
C - - - - - 0x03B3D6 0E:B3C6: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B3D9 0E:B3C9: F0 07     BEQ bra_B3D2_facing_right
C - - - - - 0x03B3DB 0E:B3CB: 98        TYA
C - - - - - 0x03B3DC 0E:B3CC: 38        SEC
C - - - - - 0x03B3DD 0E:B3CD: E9 18     SBC #$18
C - - - - - 0x03B3DF 0E:B3CF: 4C D6 B3  JMP loc_B3D6
bra_B3D2_facing_right:
C - - - - - 0x03B3E2 0E:B3D2: 98        TYA
C - - - - - 0x03B3E3 0E:B3D3: 18        CLC
C - - - - - 0x03B3E4 0E:B3D4: 69 18     ADC #$18
loc_B3D6:
C D 1 - - - 0x03B3E6 0E:B3D6: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B3E9 0E:B3D9: 4C 54 AF  JMP loc_AF54



ofs_035_05_B3DC_02:
C - - J - - 0x03B3EC 0E:B3DC: 20 F6 B3  JSR sub_B3F6
C - - - - - 0x03B3EF 0E:B3DF: B0 06     BCS bra_B3E7
C - - - - - 0x03B3F1 0E:B3E1: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B3F4 0E:B3E4: 4C 51 B9  JMP loc_B951
bra_B3E7:
C - - - - - 0x03B3F7 0E:B3E7: A9 00     LDA #$00
C - - - - - 0x03B3F9 0E:B3E9: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03B3FC 0E:B3EC: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B3FF 0E:B3EF: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B402 0E:B3F2: 9D 00 04  STA ram_obj_anim_id,X
bra_B3F5_RTS:
C - - - - - 0x03B405 0E:B3F5: 60        RTS



sub_B3F6:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03B406 0E:B3F6: A9 00     LDA #$00
C - - - - - 0x03B408 0E:B3F8: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B40B 0E:B3FB: DE 7C 05  DEC ram_obj_anim_timer,X
C - - - - - 0x03B40E 0E:B3FE: F0 07     BEQ bra_B407
C - - - - - 0x03B410 0E:B400: A9 00     LDA #$00
C - - - - - 0x03B412 0E:B402: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B415 0E:B405: 18        CLC
C - - - - - 0x03B416 0E:B406: 60        RTS
bra_B407:
C - - - - - 0x03B417 0E:B407: BD 93 05  LDA ram_obj_anim_cnt,X
; * 03
C - - - - - 0x03B41A 0E:B40A: 85 08     STA ram_0008_t03A
C - - - - - 0x03B41C 0E:B40C: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x03B41D 0E:B40D: 18        CLC
C - - - - - 0x03B41E 0E:B40E: 65 08     ADC ram_0008_t03A
C - - - - - 0x03B420 0E:B410: A8        TAY
C - - - - - 0x03B421 0E:B411: B9 40 B4  LDA tbl_B440,Y
C - - - - - 0x03B424 0E:B414: C9 FF     CMP #$FF
C - - - - - 0x03B426 0E:B416: F0 26     BEQ bra_B43E_FF
C - - - - - 0x03B428 0E:B418: 85 00     STA ram_0000_t03C_obj_spd_X_hi
C - - - - - 0x03B42A 0E:B41A: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x03B42D 0E:B41D: F0 09     BEQ bra_B428_facing_right
C - - - - - 0x03B42F 0E:B41F: A5 00     LDA ram_0000_t03C_obj_spd_X_hi
C - - - - - 0x03B431 0E:B421: 49 FF     EOR #$FF
C - - - - - 0x03B433 0E:B423: 18        CLC
C - - - - - 0x03B434 0E:B424: 69 01     ADC #$01
C - - - - - 0x03B436 0E:B426: D0 02     BNE bra_B42A
bra_B428_facing_right:
C - - - - - 0x03B438 0E:B428: A5 00     LDA ram_0000_t03C_obj_spd_X_hi
bra_B42A:
C - - - - - 0x03B43A 0E:B42A: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B43D 0E:B42D: B9 41 B4  LDA tbl_B440 + $01,Y
C - - - - - 0x03B440 0E:B430: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x03B443 0E:B433: B9 42 B4  LDA tbl_B440 + $02,Y
C - - - - - 0x03B446 0E:B436: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B449 0E:B439: FE 93 05  INC ram_obj_anim_cnt,X
C - - - - - 0x03B44C 0E:B43C: 18        CLC
C - - - - - 0x03B44D 0E:B43D: 60        RTS
bra_B43E_FF:
C - - - - - 0x03B44E 0E:B43E: 38        SEC
C - - - - - 0x03B44F 0E:B43F: 60        RTS



tbl_B440:
;                                              +--------------- spd_X_hi
;                                              |    +---------- timer
;                                              |    |    +----- animation
;                                              |    |    |
- D 1 - - - 0x03B450 0E:B440: 00        .byte $00, $03, $3C   ; 
- D 1 - - - 0x03B453 0E:B443: 04        .byte $04, $03, $3E   ; 
- D 1 - - - 0x03B456 0E:B446: 04        .byte $04, $03, $3E   ; 
- D 1 - - - 0x03B459 0E:B449: 0C        .byte $0C, $03, $40   ; 
- D 1 - - - 0x03B45C 0E:B44C: 08        .byte $08, $03, $40   ; 
- D 1 - - - 0x03B45F 0E:B44F: 08        .byte $08, $03, $42   ; 
- D 1 - - - 0x03B462 0E:B452: 04        .byte $04, $03, $42   ; 
- D 1 - - - 0x03B465 0E:B455: 08        .byte $08, $03, $44   ; 
- D 1 - - - 0x03B468 0E:B458: 00        .byte $00, $03, $56   ; 
- D 1 - - - 0x03B46B 0E:B45B: FF        .byte $FF   ; end token



ofs_035_01_B45C_00:
ofs_035_02_B45C_00:
ofs_035_03_B45C_00:
ofs_035_04_B45C_00:
ofs_035_05_B45C_00:
ofs_035_08_B45C_00:
ofs_035_09_B45C_00:
ofs_035_0A_B45C_00:
C - - J - - 0x03B46C 0E:B45C: 20 6E B4  JSR sub_B46E
C - - - - - 0x03B46F 0E:B45F: A9 00     LDA #$00
C - - - - - 0x03B471 0E:B461: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B474 0E:B464: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B477 0E:B467: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B47A 0E:B46A: FE 65 05  INC ram_obj_state,X
bra_B46D_RTS:
C - - - - - 0x03B47D 0E:B46D: 60        RTS



sub_B46E:
C - - - - - 0x03B47E 0E:B46E: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x03B481 0E:B471: B9 78 B4  LDA tbl_B478,Y
C - - - - - 0x03B484 0E:B474: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B487 0E:B477: 60        RTS



tbl_B478:
- - - - - - 0x03B488 0E:B478: 00        .byte $00   ; 00 
- D 1 - - - 0x03B489 0E:B479: 0A        .byte $0A   ; 01 
- D 1 - - - 0x03B48A 0E:B47A: 0A        .byte $0A   ; 02 
- D 1 - - - 0x03B48B 0E:B47B: 0A        .byte $0A   ; 03 
- D 1 - - - 0x03B48C 0E:B47C: 0A        .byte $0A   ; 04 
- D 1 - - - 0x03B48D 0E:B47D: 0C        .byte $0C   ; 05 
- D 1 - - - 0x03B48E 0E:B47E: 08        .byte $08   ; 06 
- D 1 - - - 0x03B48F 0E:B47F: 08        .byte $08   ; 07 
- D 1 - - - 0x03B490 0E:B480: 08        .byte $08   ; 08 
- D 1 - - - 0x03B491 0E:B481: 08        .byte $08   ; 09 
- D 1 - - - 0x03B492 0E:B482: 10        .byte $10   ; 0A 



tbl_B483_spd_X:
- D 1 - - - 0x03B493 0E:B483: 02 00     .dbyt $0200 ; 00 facing right
- D 1 - - - 0x03B495 0E:B485: FE 00     .dbyt $FE00 ; 01 facing left



tbl_B487_spd_Y_FA80:
; bzk optimize
- D 1 - - - 0x03B497 0E:B487: FA 80     .dbyt $FA80 ; 



tbl_B489_spd_X:
- D 1 - - - 0x03B499 0E:B489: 02 00     .dbyt $0200 ; 00 facing right
- D 1 - - - 0x03B49B 0E:B48B: FE 00     .dbyt $FE00 ; 01 facing left



tbl_B48D_spd_X:
- D 1 - - - 0x03B49D 0E:B48D: 04 00     .dbyt $0400 ; 00 facing right
- D 1 - - - 0x03B49F 0E:B48F: FC 00     .dbyt $FC00 ; 01 facing left



tbl_B491_spd_X:
- D 1 - - - 0x03B4A1 0E:B491: 01 80     .dbyt $0180 ; 00 facing right
- D 1 - - - 0x03B4A3 0E:B493: FE 80     .dbyt $FE80 ; 01 facing left



ofs_035_01_B495_01:
C - - J - - 0x03B4A5 0E:B495: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B4A8 0E:B498: D0 D3     BNE bra_B46D_RTS
C - - - - - 0x03B4AA 0E:B49A: A9 13     LDA #con_sound_throw_axe
C - - - - - 0x03B4AC 0E:B49C: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03B4AF 0E:B49F: A9 00     LDA #con_obj_type_00
C - - - - - 0x03B4B1 0E:B4A1: A0 08     LDY #$08
C - - - - - 0x03B4B3 0E:B4A3: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x03B4B6 0E:B4A6: AD A8 04  LDA ram_plr_facing
C - - - - - 0x03B4B9 0E:B4A9: 0A        ASL
C - - - - - 0x03B4BA 0E:B4AA: A8        TAY
C - - - - - 0x03B4BB 0E:B4AB: B9 83 B4  LDA tbl_B483_spd_X,Y
C - - - - - 0x03B4BE 0E:B4AE: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B4C1 0E:B4B1: B9 84 B4  LDA tbl_B483_spd_X + $01,Y
C - - - - - 0x03B4C4 0E:B4B4: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B4C7 0E:B4B7: AD 87 B4  LDA tbl_B487_spd_Y_FA80
C - - - - - 0x03B4CA 0E:B4BA: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B4CD 0E:B4BD: AD 88 B4  LDA tbl_B487_spd_Y_FA80 + $01
C - - - - - 0x03B4D0 0E:B4C0: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B4D3 0E:B4C3: A9 00     LDA #$00
C - - - - - 0x03B4D5 0E:B4C5: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B4D8 0E:B4C8: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03B4DB 0E:B4CB: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B4DE 0E:B4CE: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03B4E1 0E:B4D1: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B4E4 0E:B4D4: 4C 54 AF  JMP loc_AF54



ofs_035_01_B4D7_02:
ofs_035_09_B4D7_02:
C - - J - - 0x03B4E7 0E:B4D7: BD 37 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x03B4EA 0E:B4DA: 18        CLC
C - - - - - 0x03B4EB 0E:B4DB: 69 40     ADC #< $0040
C - - - - - 0x03B4ED 0E:B4DD: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B4F0 0E:B4E0: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x03B4F3 0E:B4E3: 69 00     ADC #> $0040
C - - - - - 0x03B4F5 0E:B4E5: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B4F8 0E:B4E8: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x03B4FB 0E:B4EB: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B4FE 0E:B4EE: 20 2F B9  JSR sub_B92F_move_object_Y_axis
C - - - - - 0x03B501 0E:B4F1: 4C 51 B9  JMP loc_B951



ofs_035_02_B4F4_01:
C - - J - - 0x03B504 0E:B4F4: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B507 0E:B4F7: F0 01     BEQ bra_B4FA
C - - - - - 0x03B509 0E:B4F9: 60        RTS
bra_B4FA:
C - - - - - 0x03B50A 0E:B4FA: A9 00     LDA #con_obj_type_00
C - - - - - 0x03B50C 0E:B4FC: A0 07     LDY #$07
C - - - - - 0x03B50E 0E:B4FE: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x03B511 0E:B501: A4 10     LDY ram_0010_temp
C - - - - - 0x03B513 0E:B503: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x03B516 0E:B506: 0A        ASL
C - - - - - 0x03B517 0E:B507: A8        TAY
C - - - - - 0x03B518 0E:B508: B9 89 B4  LDA tbl_B489_spd_X,Y
C - - - - - 0x03B51B 0E:B50B: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B51E 0E:B50E: B9 8A B4  LDA tbl_B489_spd_X + $01,Y
C - - - - - 0x03B521 0E:B511: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B524 0E:B514: A9 00     LDA #$00
C - - - - - 0x03B526 0E:B516: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B529 0E:B519: A4 10     LDY ram_0010_temp
C - - - - - 0x03B52B 0E:B51B: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03B52E 0E:B51E: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B531 0E:B521: 38        SEC
C - - - - - 0x03B532 0E:B522: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03B535 0E:B525: E9 04     SBC #$04
C - - - - - 0x03B537 0E:B527: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B53A 0E:B52A: 4C 54 AF  JMP loc_AF54



ofs_035_02_B52D_02:
C - - J - - 0x03B53D 0E:B52D: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x03B540 0E:B530: 29 0F     AND #$0F
C - - - - - 0x03B542 0E:B532: C9 03     CMP #$03
C - - - - - 0x03B544 0E:B534: F0 0B     BEQ bra_B541
C - - - - - 0x03B546 0E:B536: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03B549 0E:B539: C9 F1     CMP #$F1
C - - - - - 0x03B54B 0E:B53B: B0 04     BCS bra_B541
C - - - - - 0x03B54D 0E:B53D: C9 10     CMP #$10
C - - - - - 0x03B54F 0E:B53F: B0 1A     BCS bra_B55B
bra_B541:
C - - - - - 0x03B551 0E:B541: 20 55 BC  JSR sub_BC55
; invert speed X
C - - - - - 0x03B554 0E:B544: A9 00     LDA #$00
C - - - - - 0x03B556 0E:B546: 38        SEC
C - - - - - 0x03B557 0E:B547: FD 09 05  SBC ram_obj_spd_X_lo,X
C - - - - - 0x03B55A 0E:B54A: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B55D 0E:B54D: A9 00     LDA #$00
C - - - - - 0x03B55F 0E:B54F: FD F2 04  SBC ram_obj_spd_X_hi,X
C - - - - - 0x03B562 0E:B552: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B565 0E:B555: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B568 0E:B558: FE 65 05  INC ram_obj_state,X
bra_B55B:
C - - - - - 0x03B56B 0E:B55B: A5 1A     LDA ram_frm_cnt
C - - - - - 0x03B56D 0E:B55D: 29 0F     AND #$0F
C - - - - - 0x03B56F 0E:B55F: D0 05     BNE bra_B566
C - - - - - 0x03B571 0E:B561: A9 15     LDA #con_sound_15
C - - - - - 0x03B573 0E:B563: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_B566:
C - - - - - 0x03B576 0E:B566: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x03B579 0E:B569: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B57C 0E:B56C: 4C 51 B9  JMP loc_B951



ofs_035_02_B56F_03:
C - - J - - 0x03B57F 0E:B56F: A4 10     LDY ram_0010_temp
C - - - - - 0x03B581 0E:B571: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03B584 0E:B574: 38        SEC
C - - - - - 0x03B585 0E:B575: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x03B588 0E:B578: B0 05     BCS bra_B57F
C - - - - - 0x03B58A 0E:B57A: 49 FF     EOR #$FF
C - - - - - 0x03B58C 0E:B57C: 18        CLC
C - - - - - 0x03B58D 0E:B57D: 69 01     ADC #$01
bra_B57F:
C - - - - - 0x03B58F 0E:B57F: C9 10     CMP #$10
C - - - - - 0x03B591 0E:B581: B0 D8     BCS bra_B55B
C - - - - - 0x03B593 0E:B583: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03B596 0E:B586: 38        SEC
C - - - - - 0x03B597 0E:B587: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x03B59A 0E:B58A: B0 05     BCS bra_B591
C - - - - - 0x03B59C 0E:B58C: 49 FF     EOR #$FF
C - - - - - 0x03B59E 0E:B58E: 18        CLC
C - - - - - 0x03B59F 0E:B58F: 69 01     ADC #$01
bra_B591:
C - - - - - 0x03B5A1 0E:B591: C9 10     CMP #$10
C - - - - - 0x03B5A3 0E:B593: B0 C6     BCS bra_B55B
C - - - - - 0x03B5A5 0E:B595: A9 00     LDA #$00
C - - - - - 0x03B5A7 0E:B597: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B5AA 0E:B59A: 60        RTS



sub_B59B:
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; Y = 
C - - - - - 0x03B5AB 0E:B59B: A5 10     LDA ram_0010_temp
C - - - - - 0x03B5AD 0E:B59D: C9 01     CMP #$01
C - - - - - 0x03B5AF 0E:B59F: F0 12     BEQ bra_B5B3
C - - - - - 0x03B5B1 0E:B5A1: A0 00     LDY #$00
bra_B5A3_loop:
C - - - - - 0x03B5B3 0E:B5A3: B9 08 B7  LDA tbl_B708,Y
C - - - - - 0x03B5B6 0E:B5A6: C9 FF     CMP #$FF
C - - - - - 0x03B5B8 0E:B5A8: F0 09     BEQ bra_B5B3
C - - - - - 0x03B5BA 0E:B5AA: CD 65 05  CMP ram_plr_state
C - - - - - 0x03B5BD 0E:B5AD: F0 08     BEQ bra_B5B7_match
C - - - - - 0x03B5BF 0E:B5AF: C8        INY
C - - - - - 0x03B5C0 0E:B5B0: C8        INY
C - - - - - 0x03B5C1 0E:B5B1: D0 F0     BNE bra_B5A3_loop    ; jmp
bra_B5B3:
C - - - - - 0x03B5C3 0E:B5B3: A0 00     LDY #$00
C - - - - - 0x03B5C5 0E:B5B5: 38        SEC
C - - - - - 0x03B5C6 0E:B5B6: 60        RTS
bra_B5B7_match:
C - - - - - 0x03B5C7 0E:B5B7: 18        CLC
bra_B5B8_RTS:
C - - - - - 0x03B5C8 0E:B5B8: 60        RTS



ofs_035_09_B5B9_01:
C - - J - - 0x03B5C9 0E:B5B9: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B5CC 0E:B5BC: D0 FA     BNE bra_B5B8_RTS
C - - - - - 0x03B5CE 0E:B5BE: A4 10     LDY ram_0010_temp
C - - - - - 0x03B5D0 0E:B5C0: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03B5D3 0E:B5C3: 85 0C     STA ram_000C_temp
C - - - - - 0x03B5D5 0E:B5C5: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03B5D8 0E:B5C8: 85 0D     STA ram_000D_temp
C - - - - - 0x03B5DA 0E:B5CA: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x03B5DD 0E:B5CD: 85 0E     STA ram_000E_temp
C - - - - - 0x03B5DF 0E:B5CF: A9 13     LDA #con_sound_throw_axe
C - - - - - 0x03B5E1 0E:B5D1: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03B5E4 0E:B5D4: 20 9B B5  JSR sub_B59B
C - - - - - 0x03B5E7 0E:B5D7: B0 0F     BCS bra_B5E8
C - - - - - 0x03B5E9 0E:B5D9: B9 09 B7  LDA tbl_B708 + $01,Y
; * 0B
C - - - - - 0x03B5EC 0E:B5DC: 0A        ASL
C - - - - - 0x03B5ED 0E:B5DD: 85 00     STA ram_0000_t03B
C - - - - - 0x03B5EF 0E:B5DF: 0A        ASL
C - - - - - 0x03B5F0 0E:B5E0: 0A        ASL
C - - - - - 0x03B5F1 0E:B5E1: 18        CLC
C - - - - - 0x03B5F2 0E:B5E2: 65 00     ADC ram_0000_t03B
C - - - - - 0x03B5F4 0E:B5E4: 79 09 B7  ADC tbl_B708 + $01,Y
C - - - - - 0x03B5F7 0E:B5E7: A8        TAY
bra_B5E8:   ; Y = 00
C - - - - - 0x03B5F8 0E:B5E8: B9 0D B7  LDA tbl_B70D,Y
C - - - - - 0x03B5FB 0E:B5EB: 18        CLC
C - - - - - 0x03B5FC 0E:B5EC: 65 0C     ADC ram_000C_temp
C - - - - - 0x03B5FE 0E:B5EE: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B601 0E:B5F1: B9 0E B7  LDA tbl_B70D + $01,Y
C - - - - - 0x03B604 0E:B5F4: 18        CLC
C - - - - - 0x03B605 0E:B5F5: 65 0D     ADC ram_000D_temp
C - - - - - 0x03B607 0E:B5F7: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B60A 0E:B5FA: A5 0E     LDA ram_000E_temp
C - - - - - 0x03B60C 0E:B5FC: 59 0F B7  EOR tbl_B70D + $02,Y
C - - - - - 0x03B60F 0E:B5FF: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B612 0E:B602: F0 04     BEQ bra_B608_facing_right
; if facing left
C - - - - - 0x03B614 0E:B604: C8        INY
C - - - - - 0x03B615 0E:B605: C8        INY
C - - - - - 0x03B616 0E:B606: C8        INY
C - - - - - 0x03B617 0E:B607: C8        INY
bra_B608_facing_right:
C - - - - - 0x03B618 0E:B608: B9 10 B7  LDA tbl_B70D + $03,Y
C - - - - - 0x03B61B 0E:B60B: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B61E 0E:B60E: B9 11 B7  LDA tbl_B70D + $04,Y
C - - - - - 0x03B621 0E:B611: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B624 0E:B614: B9 12 B7  LDA tbl_B70D + $05,Y
C - - - - - 0x03B627 0E:B617: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B62A 0E:B61A: B9 13 B7  LDA tbl_B70D + $06,Y
C - - - - - 0x03B62D 0E:B61D: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B630 0E:B620: A9 00     LDA #con_obj_type_00
C - - - - - 0x03B632 0E:B622: A0 08     LDY #$08
C - - - - - 0x03B634 0E:B624: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x03B637 0E:B627: 4C 54 AF  JMP loc_AF54



ofs_035_08_B62A_01:
C - - J - - 0x03B63A 0E:B62A: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B63D 0E:B62D: D0 89     BNE bra_B5B8_RTS
C - - - - - 0x03B63F 0E:B62F: A4 10     LDY ram_0010_temp
C - - - - - 0x03B641 0E:B631: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03B644 0E:B634: 85 0C     STA ram_000C_temp
C - - - - - 0x03B646 0E:B636: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03B649 0E:B639: 85 0D     STA ram_000D_temp
C - - - - - 0x03B64B 0E:B63B: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x03B64E 0E:B63E: 85 0E     STA ram_000E_temp
C - - - - - 0x03B650 0E:B640: A9 14     LDA #con_sound_throw_knife
C - - - - - 0x03B652 0E:B642: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03B655 0E:B645: 20 9B B5  JSR sub_B59B
C - - - - - 0x03B658 0E:B648: B0 0C     BCS bra_B656
C - - - - - 0x03B65A 0E:B64A: B9 09 B7  LDA tbl_B708 + $01,Y
; * 0C
C - - - - - 0x03B65D 0E:B64D: 0A        ASL
C - - - - - 0x03B65E 0E:B64E: 0A        ASL
C - - - - - 0x03B65F 0E:B64F: 85 00     STA ram_0000_t03A
C - - - - - 0x03B661 0E:B651: 0A        ASL
C - - - - - 0x03B662 0E:B652: 18        CLC
C - - - - - 0x03B663 0E:B653: 65 00     ADC ram_0000_t03A
C - - - - - 0x03B665 0E:B655: A8        TAY
bra_B656:   ; Y = 00
C - - - - - 0x03B666 0E:B656: B9 2E B7  LDA tbl_B72E,Y
C - - - - - 0x03B669 0E:B659: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B66C 0E:B65C: B9 2F B7  LDA tbl_B72E + $01,Y
C - - - - - 0x03B66F 0E:B65F: 18        CLC
C - - - - - 0x03B670 0E:B660: 65 0C     ADC ram_000C_temp
C - - - - - 0x03B672 0E:B662: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B675 0E:B665: B9 30 B7  LDA tbl_B72E + $02,Y
C - - - - - 0x03B678 0E:B668: 18        CLC
C - - - - - 0x03B679 0E:B669: 65 0D     ADC ram_000D_temp
C - - - - - 0x03B67B 0E:B66B: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B67E 0E:B66E: A5 10     LDA ram_0010_temp
C - - - - - 0x03B680 0E:B670: C9 01     CMP #$01
C - - - - - 0x03B682 0E:B672: F0 10     BEQ bra_B684
C - - - - - 0x03B684 0E:B674: AD 65 05  LDA ram_plr_state
C - - - - - 0x03B687 0E:B677: C9 1C     CMP #con_plr_state_normal_atk_duck
C - - - - - 0x03B689 0E:B679: D0 09     BNE bra_B684
- - - - - - 0x03B68B 0E:B67B: 18        CLC
- - - - - - 0x03B68C 0E:B67C: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x03B68F 0E:B67F: 69 06     ADC #$06
- - - - - - 0x03B691 0E:B681: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_B684:
C - - - - - 0x03B694 0E:B684: A5 0E     LDA ram_000E_temp
C - - - - - 0x03B696 0E:B686: 59 31 B7  EOR tbl_B72E + $03,Y
C - - - - - 0x03B699 0E:B689: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B69C 0E:B68C: F0 04     BEQ bra_B692_facing_right
; if facing left
C - - - - - 0x03B69E 0E:B68E: C8        INY
C - - - - - 0x03B69F 0E:B68F: C8        INY
C - - - - - 0x03B6A0 0E:B690: C8        INY
C - - - - - 0x03B6A1 0E:B691: C8        INY
bra_B692_facing_right:
C - - - - - 0x03B6A2 0E:B692: B9 32 B7  LDA tbl_B72E + $04,Y
C - - - - - 0x03B6A5 0E:B695: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B6A8 0E:B698: B9 33 B7  LDA tbl_B72E + $05,Y
C - - - - - 0x03B6AB 0E:B69B: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B6AE 0E:B69E: B9 34 B7  LDA tbl_B72E + $06,Y
C - - - - - 0x03B6B1 0E:B6A1: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B6B4 0E:B6A4: B9 35 B7  LDA tbl_B72E + $07,Y
C - - - - - 0x03B6B7 0E:B6A7: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B6BA 0E:B6AA: A9 00     LDA #con_obj_type_00
C - - - - - 0x03B6BC 0E:B6AC: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03B6BF 0E:B6AF: 4C 54 AF  JMP loc_AF54



ofs_035_03_B6B2_01:
C - - J - - 0x03B6C2 0E:B6B2: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B6C5 0E:B6B5: D0 50     BNE bra_B707_RTS
C - - - - - 0x03B6C7 0E:B6B7: A9 14     LDA #con_sound_throw_knife
C - - - - - 0x03B6C9 0E:B6B9: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03B6CC 0E:B6BC: A9 00     LDA #con_obj_type_00
C - - - - - 0x03B6CE 0E:B6BE: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03B6D1 0E:B6C1: A9 4E     LDA #$4E
C - - - - - 0x03B6D3 0E:B6C3: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B6D6 0E:B6C6: AD A8 04  LDA ram_plr_facing
C - - - - - 0x03B6D9 0E:B6C9: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B6DC 0E:B6CC: 0A        ASL
C - - - - - 0x03B6DD 0E:B6CD: A8        TAY
C - - - - - 0x03B6DE 0E:B6CE: B9 8D B4  LDA tbl_B48D_spd_X,Y
C - - - - - 0x03B6E1 0E:B6D1: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B6E4 0E:B6D4: B9 8E B4  LDA tbl_B48D_spd_X + $01,Y
C - - - - - 0x03B6E7 0E:B6D7: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B6EA 0E:B6DA: A9 00     LDA #$00
C - - - - - 0x03B6EC 0E:B6DC: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B6EF 0E:B6DF: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B6F2 0E:B6E2: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03B6F5 0E:B6E5: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B6F8 0E:B6E8: 38        SEC
C - - - - - 0x03B6F9 0E:B6E9: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03B6FC 0E:B6EC: E9 04     SBC #$04
C - - - - - 0x03B6FE 0E:B6EE: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B701 0E:B6F1: 4C 54 AF  JMP loc_AF54



ofs_035_03_B6F4_02:
ofs_035_08_B6F4_02:
C - - J - - 0x03B704 0E:B6F4: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x03B707 0E:B6F7: D0 09     BNE bra_B702
C - - - - - 0x03B709 0E:B6F9: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B70C 0E:B6FC: 20 2F B9  JSR sub_B92F_move_object_Y_axis
C - - - - - 0x03B70F 0E:B6FF: 4C 51 B9  JMP loc_B951
bra_B702:
C - - - - - 0x03B712 0E:B702: A9 00     LDA #$00
C - - - - - 0x03B714 0E:B704: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_B707_RTS:
C - - - - - 0x03B717 0E:B707: 60        RTS



tbl_B708:
; 00 
- D 1 - - - 0x03B718 0E:B708: 46        .byte con_plr_state_46   ; 
- D 1 - - - 0x03B719 0E:B709: 01        .byte $01   ; index for 0x03B71D 0x03B73E
; 01 
- D 1 - - - 0x03B71A 0E:B70A: 48        .byte con_plr_state_48   ; 
- - - - - - 0x03B71B 0E:B70B: 02        .byte $02   ; index for 0x03B71D 0x03B73E
; 02 
- D 1 - - - 0x03B71C 0E:B70C: FF        .byte $FF   ; end token



tbl_B70D:
; 00 
- D 1 - - - 0x03B71D 0E:B70D: 00        .byte $00   ; pos_X_hi
- D 1 - - - 0x03B71E 0E:B70E: 00        .byte $00   ; pos_Y_hi
- D 1 - - - 0x03B71F 0E:B70F: 00        .byte $00   ; fascing EOR
- D 1 - - - 0x03B720 0E:B710: 02 00     .dbyt $0200 ; speed_X (facing right)
- D 1 - - - 0x03B722 0E:B712: FA 80     .dbyt $FA80 ; speed_Y (facing right)
- D 1 - - - 0x03B724 0E:B714: FE 00     .dbyt $FE00 ; speed_X (facing left)
- D 1 - - - 0x03B726 0E:B716: FA 80     .dbyt $FA80 ; speed_Y (facing left)
; 01 
- D 1 - - - 0x03B728 0E:B718: 00        .byte $00   ; pos_X_hi
- D 1 - - - 0x03B729 0E:B719: 00        .byte $00   ; pos_Y_hi
- D 1 - - - 0x03B72A 0E:B71A: 01        .byte $01   ; fascing EOR
- D 1 - - - 0x03B72B 0E:B71B: 02 00     .dbyt $0200 ; speed_X (facing right)
- D 1 - - - 0x03B72D 0E:B71D: FA 80     .dbyt $FA80 ; speed_Y (facing right)
- - - - - - 0x03B72F 0E:B71F: FE 00     .dbyt $FE00 ; speed_X (facing left)
- - - - - - 0x03B731 0E:B721: FA 80     .dbyt $FA80 ; speed_Y (facing left)
; 02 
- - - - - - 0x03B733 0E:B723: 00        .byte $00   ; pos_X_hi
- - - - - - 0x03B734 0E:B724: 00        .byte $00   ; pos_Y_hi
- - - - - - 0x03B735 0E:B725: 00        .byte $00   ; fascing EOR
- - - - - - 0x03B736 0E:B726: 00 00     .dbyt $0000 ; speed_X (facing right)
- - - - - - 0x03B738 0E:B728: 00 00     .dbyt $0000 ; speed_Y (facing right)
- - - - - - 0x03B73A 0E:B72A: 00 00     .dbyt $0000 ; speed_X (facing left)
- - - - - - 0x03B73C 0E:B72C: 00 00     .dbyt $0000 ; speed_Y (facing left)



tbl_B72E:
; 00 
- D 1 - - - 0x03B73E 0E:B72E: 4E        .byte $4E   ; animation
- D 1 - - - 0x03B73F 0E:B72F: 00        .byte $00   ; pos_X_hi
- D 1 - - - 0x03B740 0E:B730: FC        .byte $FC   ; pos_Y_hi
- D 1 - - - 0x03B741 0E:B731: 00        .byte $00   ; fascing EOR
- D 1 - - - 0x03B742 0E:B732: 04 00     .dbyt $0400 ; speed_X (facing right)
- D 1 - - - 0x03B744 0E:B734: 00 00     .dbyt $0000 ; speed_Y (facing right)
- D 1 - - - 0x03B746 0E:B736: FC 00     .dbyt $FC00 ; speed_X (facing left)
- D 1 - - - 0x03B748 0E:B738: 00 00     .dbyt $0000 ; speed_Y (facing left)
; 01 
- D 1 - - - 0x03B74A 0E:B73A: 4E        .byte $4E   ; animation
- D 1 - - - 0x03B74B 0E:B73B: 00        .byte $00   ; pos_X_hi
- D 1 - - - 0x03B74C 0E:B73C: 00        .byte $00   ; pos_Y_hi
- D 1 - - - 0x03B74D 0E:B73D: 01        .byte $01   ; fascing EOR
- D 1 - - - 0x03B74E 0E:B73E: 04 00     .dbyt $0400 ; speed_X (facing right)
- D 1 - - - 0x03B750 0E:B740: 00 00     .dbyt $0000 ; speed_Y (facing right)
- D 1 - - - 0x03B752 0E:B742: FC 00     .dbyt $FC00 ; speed_X (facing left)
- D 1 - - - 0x03B754 0E:B744: 00 00     .dbyt $0000 ; speed_Y (facing left)
; 02 
- - - - - - 0x03B756 0E:B746: 64        .byte $64   ; animation
- - - - - - 0x03B757 0E:B747: 00        .byte $00   ; pos_X_hi
- - - - - - 0x03B758 0E:B748: 00        .byte $00   ; pos_Y_hi
- - - - - - 0x03B759 0E:B749: 00        .byte $00   ; fascing EOR
- - - - - - 0x03B75A 0E:B74A: 00 00     .dbyt $0000 ; speed_X (facing right)
- - - - - - 0x03B75C 0E:B74C: 04 00     .dbyt $0400 ; speed_Y (facing right)
- - - - - - 0x03B75E 0E:B74E: 00 00     .dbyt $0000 ; speed_X (facing left)
- - - - - - 0x03B760 0E:B750: 04 00     .dbyt $0400 ; speed_Y (facing left)



ofs_035_04_B752_01:
C - - J - - 0x03B762 0E:B752: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B765 0E:B755: D0 3A     BNE bra_B791_RTS
C - - - - - 0x03B767 0E:B757: A9 00     LDA #con_obj_type_00
C - - - - - 0x03B769 0E:B759: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03B76C 0E:B75C: A9 52     LDA #$52
C - - - - - 0x03B76E 0E:B75E: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B771 0E:B761: AD A8 04  LDA ram_plr_facing
C - - - - - 0x03B774 0E:B764: 0A        ASL
C - - - - - 0x03B775 0E:B765: A8        TAY
C - - - - - 0x03B776 0E:B766: B9 91 B4  LDA tbl_B491_spd_X,Y
C - - - - - 0x03B779 0E:B769: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B77C 0E:B76C: B9 92 B4  LDA tbl_B491_spd_X + $01,Y
C - - - - - 0x03B77F 0E:B76F: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B782 0E:B772: A9 FE     LDA #$FE
C - - - - - 0x03B784 0E:B774: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B787 0E:B777: A9 80     LDA #$80
C - - - - - 0x03B789 0E:B779: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B78C 0E:B77C: AD A8 04  LDA ram_plr_facing
C - - - - - 0x03B78F 0E:B77F: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B792 0E:B782: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03B795 0E:B785: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B798 0E:B788: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03B79B 0E:B78B: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B79E 0E:B78E: 4C 54 AF  JMP loc_AF54
bra_B791_RTS:
C - - - - - 0x03B7A1 0E:B791: 60        RTS



ofs_035_04_B792_02:
C - - J - - 0x03B7A2 0E:B792: A9 00     LDA #$00
C - - - - - 0x03B7A4 0E:B794: A0 08     LDY #$08
C - - - - - 0x03B7A6 0E:B796: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x03B7A9 0E:B799: D0 1A     BNE bra_B7B5
C - - - - - 0x03B7AB 0E:B79B: BD 37 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x03B7AE 0E:B79E: 18        CLC
C - - - - - 0x03B7AF 0E:B79F: 69 20     ADC #< $0020
C - - - - - 0x03B7B1 0E:B7A1: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B7B4 0E:B7A4: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x03B7B7 0E:B7A7: 69 00     ADC #> $0020
C - - - - - 0x03B7B9 0E:B7A9: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B7BC 0E:B7AC: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B7BF 0E:B7AF: 20 2F B9  JSR sub_B92F_move_object_Y_axis
C - - - - - 0x03B7C2 0E:B7B2: 4C 51 B9  JMP loc_B951
bra_B7B5:
C - - - - - 0x03B7C5 0E:B7B5: A9 16     LDA #con_sound_16
C - - - - - 0x03B7C7 0E:B7B7: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03B7CA 0E:B7BA: 20 55 BC  JSR sub_BC55
C - - - - - 0x03B7CD 0E:B7BD: A9 4C     LDA #$4C
C - - - - - 0x03B7CF 0E:B7BF: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B7D2 0E:B7C2: A9 00     LDA #con_obj_type_00
C - - - - - 0x03B7D4 0E:B7C4: A0 0C     LDY #$0C
C - - - - - 0x03B7D6 0E:B7C6: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x03B7D9 0E:B7C9: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B7DC 0E:B7CC: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B7DF 0E:B7CF: 60        RTS



ofs_035_04_B7D0_03:
C - - J - - 0x03B7E0 0E:B7D0: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B7E3 0E:B7D3: D0 06     BNE bra_B7DB
C - - - - - 0x03B7E5 0E:B7D5: A9 00     LDA #$00
C - - - - - 0x03B7E7 0E:B7D7: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B7EA 0E:B7DA: 60        RTS
bra_B7DB:
C - - - - - 0x03B7EB 0E:B7DB: A5 1A     LDA ram_frm_cnt
C - - - - - 0x03B7ED 0E:B7DD: 29 0F     AND #$0F
C - - - - - 0x03B7EF 0E:B7DF: D0 03     BNE bra_B7E4
C - - - - - 0x03B7F1 0E:B7E1: 20 55 BC  JSR sub_BC55
bra_B7E4:
C - - - - - 0x03B7F4 0E:B7E4: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x03B7F7 0E:B7E7: 4C 51 B9  JMP loc_B951



ofs_035_06_B7EA_00:
C - - J - - 0x03B7FA 0E:B7EA: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03B7FD 0E:B7ED: 9D 4F 05  STA ram_obj_id + $01,X
C - - - - - 0x03B800 0E:B7F0: 9D 50 05  STA ram_obj_id + $02,X
C - - - - - 0x03B803 0E:B7F3: 20 6E B4  JSR sub_B46E
C - - - - - 0x03B806 0E:B7F6: 18        CLC
C - - - - - 0x03B807 0E:B7F7: 69 01     ADC #$01
C - - - - - 0x03B809 0E:B7F9: 9D C2 05  STA ram_05C1_obj + $01,X
C - - - - - 0x03B80C 0E:B7FC: 9D C3 05  STA ram_05C1_obj + $02,X
C - - - - - 0x03B80F 0E:B7FF: A9 00     LDA #$00
C - - - - - 0x03B811 0E:B801: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B814 0E:B804: 9D 39 04  STA ram_obj_pos_X_hi + $01,X
C - - - - - 0x03B817 0E:B807: 9D 3A 04  STA ram_obj_pos_X_hi + $02,X
C - - - - - 0x03B81A 0E:B80A: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B81D 0E:B80D: 9D 1D 04  STA ram_obj_pos_Y_hi + $01,X
C - - - - - 0x03B820 0E:B810: 9D 1E 04  STA ram_obj_pos_Y_hi + $02,X
C - - - - - 0x03B823 0E:B813: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B826 0E:B816: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B829 0E:B819: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03B82C 0E:B81C: 9D 66 05  STA ram_obj_state + $01,X
C - - - - - 0x03B82F 0E:B81F: 9D 67 05  STA ram_obj_state + $02,X
C - - - - - 0x03B832 0E:B822: 60        RTS



ofs_035_06_B823_01:
C - - J - - 0x03B833 0E:B823: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B836 0E:B826: F0 01     BEQ bra_B829
C - - - - - 0x03B838 0E:B828: 60        RTS
bra_B829:
C - - - - - 0x03B839 0E:B829: A9 21     LDA #con_sound_21
C - - - - - 0x03B83B 0E:B82B: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x03B83E 0E:B82E: A9 02     LDA #con_obj_type_02
C - - - - - 0x03B840 0E:B830: A0 09     LDY #$09
C - - - - - 0x03B842 0E:B832: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x03B845 0E:B835: 8A        TXA
C - - - - - 0x03B846 0E:B836: 38        SEC
C - - - - - 0x03B847 0E:B837: E9 14     SBC #$14
; * 04
C - - - - - 0x03B849 0E:B839: 0A        ASL
C - - - - - 0x03B84A 0E:B83A: 0A        ASL
C - - - - - 0x03B84B 0E:B83B: A8        TAY
C - - - - - 0x03B84C 0E:B83C: B9 F1 B8  LDA tbl_B8F1_speed,Y
C - - - - - 0x03B84F 0E:B83F: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B852 0E:B842: B9 F2 B8  LDA tbl_B8F1_speed + $01,Y
C - - - - - 0x03B855 0E:B845: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B858 0E:B848: B9 F3 B8  LDA tbl_B8F1_speed + $02,Y
C - - - - - 0x03B85B 0E:B84B: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B85E 0E:B84E: B9 F4 B8  LDA tbl_B8F1_speed + $03,Y
C - - - - - 0x03B861 0E:B851: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B864 0E:B854: A9 00     LDA #$00
C - - - - - 0x03B866 0E:B856: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03B869 0E:B859: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03B86C 0E:B85C: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B86F 0E:B85F: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x03B872 0E:B862: AD C4 04  LDA ram_plr_pos_X_lo
C - - - - - 0x03B875 0E:B865: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x03B878 0E:B868: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03B87B 0E:B86B: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03B87E 0E:B86E: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B881 0E:B871: A9 20     LDA #$20
C - - - - - 0x03B883 0E:B873: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B886 0E:B876: 4C 54 AF  JMP loc_AF54
bra_B879:
C - - - - - 0x03B889 0E:B879: A9 00     LDA #$00
bra_B87B_loop:
C - - - - - 0x03B88B 0E:B87B: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03B88E 0E:B87E: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B891 0E:B881: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B894 0E:B884: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B897 0E:B887: E8        INX
C - - - - - 0x03B898 0E:B888: E0 17     CPX #$17
C - - - - - 0x03B89A 0E:B88A: 90 EF     BCC bra_B87B_loop
C - - - - - 0x03B89C 0E:B88C: 20 69 B9  JSR sub_B969
C - - - - - 0x03B89F 0E:B88F: 90 10     BCC bra_B8A1
C - - - - - 0x03B8A1 0E:B891: AD 65 05  LDA ram_plr_state
C - - - - - 0x03B8A4 0E:B894: 09 80     ORA #con_plr_state_80
C - - - - - 0x03B8A6 0E:B896: 8D 65 05  STA ram_plr_state
C - - - - - 0x03B8A9 0E:B899: A9 1A     LDA #con_002A_1A
C - - - - - 0x03B8AB 0E:B89B: 85 2A     STA ram_002A_script
C - - - - - 0x03B8AD 0E:B89D: A9 00     LDA #$00
C - - - - - 0x03B8AF 0E:B89F: 85 6B     STA ram_006B_subscript
bra_B8A1:
C - - - - - 0x03B8B1 0E:B8A1: 68        PLA
C - - - - - 0x03B8B2 0E:B8A2: 68        PLA
C - - - - - 0x03B8B3 0E:B8A3: 60        RTS



ofs_035_06_B8A4_02:
C - - J - - 0x03B8B4 0E:B8A4: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B8B7 0E:B8A7: F0 D0     BEQ bra_B879
C - - - - - 0x03B8B9 0E:B8A9: A9 00     LDA #con_obj_flag_00
C - - - - - 0x03B8BB 0E:B8AB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x03B8BE 0E:B8AE: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03B8C1 0E:B8B1: 85 09     STA ram_0009_temp
C - - - - - 0x03B8C3 0E:B8B3: BD C4 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x03B8C6 0E:B8B6: 85 08     STA ram_0008_t039_copy_obj_pos_X_lo
C - - - - - 0x03B8C8 0E:B8B8: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B8CB 0E:B8BB: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B8CE 0E:B8BE: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x03B8D1 0E:B8C1: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x03B8D4 0E:B8C4: A5 09     LDA ram_0009_temp
C - - - - - 0x03B8D6 0E:B8C6: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x03B8D9 0E:B8C9: A5 08     LDA ram_0008_t039_copy_obj_pos_X_lo
C - - - - - 0x03B8DB 0E:B8CB: 9D D8 05  STA ram_05D8_obj,X
; invert speed X
C - - - - - 0x03B8DE 0E:B8CE: A9 00     LDA #$00
C - - - - - 0x03B8E0 0E:B8D0: 38        SEC
C - - - - - 0x03B8E1 0E:B8D1: FD 09 05  SBC ram_obj_spd_X_lo,X
C - - - - - 0x03B8E4 0E:B8D4: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03B8E7 0E:B8D7: A9 00     LDA #$00
C - - - - - 0x03B8E9 0E:B8D9: FD F2 04  SBC ram_obj_spd_X_hi,X
C - - - - - 0x03B8EC 0E:B8DC: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03B8EF 0E:B8DF: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x03B8F2 0E:B8E2: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B8F5 0E:B8E5: 20 FD B8  JSR sub_B8FD
C - - - - - 0x03B8F8 0E:B8E8: 20 2F B9  JSR sub_B92F_move_object_Y_axis
C - - - - - 0x03B8FB 0E:B8EB: 20 51 B9  JSR sub_B951
C - - - - - 0x03B8FE 0E:B8EE: 4C 43 B9  JMP loc_B943



tbl_B8F1_speed:
; 14
- D 1 - - - 0x03B901 0E:B8F1: 02 00     .dbyt $0200 ; speed_X
- D 1 - - - 0x03B903 0E:B8F3: 00 00     .dbyt $0000 ; speed_Y
; 15
- D 1 - - - 0x03B905 0E:B8F5: 01 9E     .dbyt $019E ; speed_X
- D 1 - - - 0x03B907 0E:B8F7: FE D4     .dbyt $FED4 ; speed_Y
; 16
- D 1 - - - 0x03B909 0E:B8F9: 00 9E     .dbyt $009E ; speed_X
- D 1 - - - 0x03B90B 0E:B8FB: FE 1A     .dbyt $FE1A ; speed_Y



sub_B8FD:
C - - - - - 0x03B90D 0E:B8FD: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B910 0E:B900: F0 13     BEQ bra_B915_RTS
C - - - - - 0x03B912 0E:B902: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x03B915 0E:B905: 38        SEC
C - - - - - 0x03B916 0E:B906: FD 09 05  SBC ram_obj_spd_X_lo,X
C - - - - - 0x03B919 0E:B909: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03B91C 0E:B90C: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B91F 0E:B90F: FD F2 04  SBC ram_obj_spd_X_hi,X
C - - - - - 0x03B922 0E:B912: 9D EF 05  STA ram_05EF_obj,X
bra_B915_RTS:
C - - - - - 0x03B925 0E:B915: 60        RTS



sub_B916_move_object_X_axis:
C - - - - - 0x03B926 0E:B916: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03B929 0E:B919: F0 13     BEQ bra_B92E_RTS
C - - - - - 0x03B92B 0E:B91B: BD C4 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x03B92E 0E:B91E: 18        CLC
C - - - - - 0x03B92F 0E:B91F: 7D 09 05  ADC ram_obj_spd_X_lo,X
C - - - - - 0x03B932 0E:B922: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x03B935 0E:B925: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03B938 0E:B928: 7D F2 04  ADC ram_obj_spd_X_hi,X
C - - - - - 0x03B93B 0E:B92B: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_B92E_RTS:
C - - - - - 0x03B93E 0E:B92E: 60        RTS



sub_B92F_move_object_Y_axis:
C - - - - - 0x03B93F 0E:B92F: BD DB 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x03B942 0E:B932: 18        CLC
C - - - - - 0x03B943 0E:B933: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x03B946 0E:B936: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x03B949 0E:B939: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x03B94C 0E:B93C: 7D 20 05  ADC ram_obj_spd_Y_hi,X
C - - - - - 0x03B94F 0E:B93F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B952 0E:B942: 60        RTS



loc_B943:
C D 1 - - - 0x03B953 0E:B943: A5 68     LDA ram_0068
C - - - - - 0x03B955 0E:B945: 30 09     BMI bra_B950_RTS
C - - - - - 0x03B957 0E:B947: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03B95A 0E:B94A: 38        SEC
C - - - - - 0x03B95B 0E:B94B: E5 6E     SBC ram_006E_cam_speed
C - - - - - 0x03B95D 0E:B94D: 9D EF 05  STA ram_05EF_obj,X
bra_B950_RTS:
C - - - - - 0x03B960 0E:B950: 60        RTS



loc_B951:
sub_B951:
C D 1 - - - 0x03B961 0E:B951: A5 68     LDA ram_0068
C - - - - - 0x03B963 0E:B953: 30 0A     BMI bra_B95F
C - - - - - 0x03B965 0E:B955: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03B968 0E:B958: 38        SEC
C - - - - - 0x03B969 0E:B959: E5 6E     SBC ram_006E_cam_speed
C - - - - - 0x03B96B 0E:B95B: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03B96E 0E:B95E: 60        RTS
bra_B95F:
C - - - - - 0x03B96F 0E:B95F: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x03B972 0E:B962: 18        CLC
C - - - - - 0x03B973 0E:B963: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x03B975 0E:B965: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03B978 0E:B968: 60        RTS



sub_B969:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03B979 0E:B969: A5 7D     LDA ram_007D
C - - - - - 0x03B97B 0E:B96B: 29 F0     AND #$F0
C - - - - - 0x03B97D 0E:B96D: C9 30     CMP #$30
C - - - - - 0x03B97F 0E:B96F: D0 0F     BNE bra_B980
C - - - - - 0x03B981 0E:B971: A9 00     LDA #$00
C - - - - - 0x03B983 0E:B973: A2 10     LDX #$10
C - - - - - 0x03B985 0E:B975: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x03B988 0E:B978: C9 02     CMP #$02
C - - - - - 0x03B98A 0E:B97A: F0 06     BEQ bra_B982
C - - - - - 0x03B98C 0E:B97C: C9 03     CMP #$03
C - - - - - 0x03B98E 0E:B97E: F0 02     BEQ bra_B982
bra_B980:
C - - - - - 0x03B990 0E:B980: 18        CLC
C - - - - - 0x03B991 0E:B981: 60        RTS
bra_B982:
C - - - - - 0x03B992 0E:B982: 38        SEC
C - - - - - 0x03B993 0E:B983: 60        RTS



ofs_035_0D_B984_00:
C - - J - - 0x03B994 0E:B984: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x03B996 0E:B986: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03B999 0E:B989: A9 18     LDA #$18
C - - - - - 0x03B99B 0E:B98B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B99E 0E:B98E: A9 00     LDA #con_obj_flag_00
C - - - - - 0x03B9A0 0E:B990: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x03B9A3 0E:B993: A9 20     LDA #$20
C - - - - - 0x03B9A5 0E:B995: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B9A8 0E:B998: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B9AB 0E:B99B: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B9AE 0E:B99E: 60        RTS



ofs_035_0C_B99F_00:
C - - J - - 0x03B9AF 0E:B99F: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x03B9B1 0E:B9A1: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03B9B4 0E:B9A4: A9 1A     LDA #$1A
C - - - - - 0x03B9B6 0E:B9A6: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B9B9 0E:B9A9: A9 00     LDA #con_obj_flag_00
C - - - - - 0x03B9BB 0E:B9AB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x03B9BE 0E:B9AE: A9 20     LDA #$20
C - - - - - 0x03B9C0 0E:B9B0: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03B9C3 0E:B9B3: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B9C6 0E:B9B6: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B9C9 0E:B9B9: 60        RTS



ofs_035_0C_B9BA_01:
ofs_035_0D_B9BA_01:
C - - J - - 0x03B9CA 0E:B9BA: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03B9CD 0E:B9BD: FE 65 05  INC ram_obj_state,X
ofs_035_0C_B9C0_02:
ofs_035_0D_B9C0_02:
C - - - - - 0x03B9D0 0E:B9C0: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x03B9D3 0E:B9C3: D0 09     BNE bra_B9CE
C - - - - - 0x03B9D5 0E:B9C5: A9 00     LDA #$00
C - - - - - 0x03B9D7 0E:B9C7: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03B9DA 0E:B9CA: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03B9DD 0E:B9CD: 60        RTS
bra_B9CE:
C - - - - - 0x03B9DE 0E:B9CE: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x03B9E1 0E:B9D1: D0 1A     BNE bra_B9ED
C - - - - - 0x03B9E3 0E:B9D3: BD 37 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x03B9E6 0E:B9D6: 18        CLC
C - - - - - 0x03B9E7 0E:B9D7: 69 40     ADC #< $0040
C - - - - - 0x03B9E9 0E:B9D9: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03B9EC 0E:B9DC: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x03B9EF 0E:B9DF: 69 00     ADC #> $0040
C - - - - - 0x03B9F1 0E:B9E1: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03B9F4 0E:B9E4: 20 16 B9  JSR sub_B916_move_object_X_axis
C - - - - - 0x03B9F7 0E:B9E7: 20 2F B9  JSR sub_B92F_move_object_Y_axis
C - - - - - 0x03B9FA 0E:B9EA: 4C 51 B9  JMP loc_B951
bra_B9ED:
C - - - - - 0x03B9FD 0E:B9ED: A9 00     LDA #$00
C - - - - - 0x03B9FF 0E:B9EF: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03BA02 0E:B9F2: 60        RTS


; bzk garbage
- - - - - - 0x03BA03 0E:B9F3: 18        CLC
- - - - - - 0x03BA04 0E:B9F4: 60        RTS



sub_B9F5:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03BA05 0E:B9F5: A2 14     LDX #$14
C - - - - - 0x03BA07 0E:B9F7: A4 3B     LDY ram_player
C - - - - - 0x03BA09 0E:B9F9: B9 85 00  LDA ram_subweapon,Y
C - - - - - 0x03BA0C 0E:B9FC: F0 2E     BEQ bra_BA2C
C - - - - - 0x03BA0E 0E:B9FE: 85 08     STA ram_0008_t038_subweapon
C - - - - - 0x03BA10 0E:BA00: 20 A2 BA  JSR sub_BAA2_check_if_enough_hears_1
C - - - - - 0x03BA13 0E:BA03: 90 27     BCC bra_BA2C
; if enough hearts
C - - - - - 0x03BA15 0E:BA05: A4 3B     LDY ram_player
C - - - - - 0x03BA17 0E:BA07: A5 08     LDA ram_0008_t038_subweapon
C - - - - - 0x03BA19 0E:BA09: C9 06     CMP #con_weapon_freeze
C - - - - - 0x03BA1B 0E:BA0B: F0 4F     BEQ bra_BA5C
C - - - - - 0x03BA1D 0E:BA0D: C9 07     CMP #con_weapon_blue_balls
C - - - - - 0x03BA1F 0E:BA0F: F0 4B     BEQ bra_BA5C
C - - - - - 0x03BA21 0E:BA11: C9 0B     CMP #con_weapon_stopwatch
C - - - - - 0x03BA23 0E:BA13: F0 2E     BEQ bra_BA43
ofs_036_0x03BA25_03:
C - - - - - 0x03BA25 0E:BA15: B9 87 00  LDA ram_subw_multiplier,Y
C - - - - - 0x03BA28 0E:BA18: 85 09     STA ram_0009_temp
C - - - - - 0x03BA2A 0E:BA1A: A9 03     LDA #$03
C - - - - - 0x03BA2C 0E:BA1C: 85 0A     STA ram_000A_temp
bra_BA1E_loop:
C - - - - - 0x03BA2E 0E:BA1E: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03BA31 0E:BA21: F0 0B     BEQ bra_BA2E
C - - - - - 0x03BA33 0E:BA23: C6 09     DEC ram_0009_temp
C - - - - - 0x03BA35 0E:BA25: 30 05     BMI bra_BA2C
C - - - - - 0x03BA37 0E:BA27: E8        INX
C - - - - - 0x03BA38 0E:BA28: C6 0A     DEC ram_000A_temp
C - - - - - 0x03BA3A 0E:BA2A: D0 F2     BNE bra_BA1E_loop
bra_BA2C:
C - - - - - 0x03BA3C 0E:BA2C: 18        CLC
C - - - - - 0x03BA3D 0E:BA2D: 60        RTS
bra_BA2E:
C - - - - - 0x03BA3E 0E:BA2E: 20 AA BA  JSR sub_BAAA_decrease_hearts
C - - - - - 0x03BA41 0E:BA31: A5 08     LDA ram_0008_t038_subweapon
C - - - - - 0x03BA43 0E:BA33: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03BA46 0E:BA36: A9 00     LDA #$00
C - - - - - 0x03BA48 0E:BA38: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x03BA4B 0E:BA3B: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03BA4E 0E:BA3E: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x03BA51 0E:BA41: 38        SEC
C - - - - - 0x03BA52 0E:BA42: 60        RTS
bra_BA43:
C - - - - - 0x03BA53 0E:BA43: A5 AB     LDA ram_stopwatch_flag
C - - - - - 0x03BA55 0E:BA45: D0 13     BNE bra_BA5A
C - - - - - 0x03BA57 0E:BA47: 20 AA BA  JSR sub_BAAA_decrease_hearts
C - - - - - 0x03BA5A 0E:BA4A: A9 B4     LDA #$B4
C - - - - - 0x03BA5C 0E:BA4C: 85 AC     STA ram_stopwatch_timer
C - - - - - 0x03BA5E 0E:BA4E: A9 01     LDA #$01
C - - - - - 0x03BA60 0E:BA50: 85 AB     STA ram_stopwatch_flag
C - - - - - 0x03BA62 0E:BA52: 8D C9 06  STA ram_06C9_se_flag
C - - - - - 0x03BA65 0E:BA55: 20 99 E1  JSR sub_0x03E1A9
C - - - - - 0x03BA68 0E:BA58: 18        CLC
C - - - - - 0x03BA69 0E:BA59: 60        RTS
bra_BA5A:
- - - - - - 0x03BA6A 0E:BA5A: 18        CLC
- - - - - - 0x03BA6B 0E:BA5B: 60        RTS
bra_BA5C:
C - - - - - 0x03BA6C 0E:BA5C: AD 62 05  LDA ram_obj_id + $14
C - - - - - 0x03BA6F 0E:BA5F: 0D 63 05  ORA ram_obj_id + $15
C - - - - - 0x03BA72 0E:BA62: 0D 64 05  ORA ram_obj_id + $16
C - - - - - 0x03BA75 0E:BA65: F0 C7     BEQ bra_BA2E
C - - - - - 0x03BA77 0E:BA67: D0 C3     BNE bra_BA2C    ; jmp



sub_BA69:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03BA79 0E:BA69: A2 14     LDX #$14
ofs_036_0x03BA7B_06:
C - - - - - 0x03BA7B 0E:BA6B: A4 3B     LDY ram_player
C - - - - - 0x03BA7D 0E:BA6D: B9 8E 00  LDA ram_weapon_power,Y
C - - - - - 0x03BA80 0E:BA70: 85 09     STA ram_0009_temp
C - - - - - 0x03BA82 0E:BA72: A9 03     LDA #$03
C - - - - - 0x03BA84 0E:BA74: 85 0A     STA ram_000A_temp
C - - - - - 0x03BA86 0E:BA76: A0 00     LDY #$00
bra_BA78_loop:
C - - - - - 0x03BA88 0E:BA78: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03BA8B 0E:BA7B: F0 11     BEQ bra_BA8E
bra_BA7D:
C - - - - - 0x03BA8D 0E:BA7D: C6 09     DEC ram_0009_temp
C - - - - - 0x03BA8F 0E:BA7F: 30 05     BMI bra_BA86
C - - - - - 0x03BA91 0E:BA81: E8        INX
C - - - - - 0x03BA92 0E:BA82: C6 0A     DEC ram_000A_temp
C - - - - - 0x03BA94 0E:BA84: D0 F2     BNE bra_BA78_loop
bra_BA86:
C - - - - - 0x03BA96 0E:BA86: C0 00     CPY #$00
C - - - - - 0x03BA98 0E:BA88: F0 02     BEQ bra_BA8C
C - - - - - 0x03BA9A 0E:BA8A: 38        SEC
C - - - - - 0x03BA9B 0E:BA8B: 60        RTS
bra_BA8C:
C - - - - - 0x03BA9C 0E:BA8C: 18        CLC
C - - - - - 0x03BA9D 0E:BA8D: 60        RTS
bra_BA8E:
C - - - - - 0x03BA9E 0E:BA8E: 98        TYA
C - - - - - 0x03BA9F 0E:BA8F: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03BAA2 0E:BA92: C8        INY
C - - - - - 0x03BAA3 0E:BA93: A9 0A     LDA #$0A    ; Alucard fireball
C - - - - - 0x03BAA5 0E:BA95: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03BAA8 0E:BA98: A9 00     LDA #$00
C - - - - - 0x03BAAA 0E:BA9A: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x03BAAD 0E:BA9D: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03BAB0 0E:BAA0: F0 DB     BEQ bra_BA7D    ; jmp



sub_BAA2_check_if_enough_hears_1:
; out
    ; C
        ; 0 = not enough
        ; 1 = enough
C - - - - - 0x03BAB2 0E:BAA2: A4 08     LDY ram_0008_temp
C - - - - - 0x03BAB4 0E:BAA4: A5 84     LDA ram_hearts
C - - - - - 0x03BAB6 0E:BAA6: D9 B6 BA  CMP tbl_BAB6_hearts_cost,Y
bra_BAA9_RTS:
C - - - - - 0x03BAB9 0E:BAA9: 60        RTS



sub_BAAA_decrease_hearts:
C - - - - - 0x03BABA 0E:BAAA: E0 14     CPX #$14
C - - - - - 0x03BABC 0E:BAAC: 90 FB     BCC bra_BAA9_RTS
C - - - - - 0x03BABE 0E:BAAE: A4 08     LDY ram_0008_temp
C - - - - - 0x03BAC0 0E:BAB0: B9 B6 BA  LDA tbl_BAB6_hearts_cost,Y
C - - - - - 0x03BAC3 0E:BAB3: 4C 53 E7  JMP loc_0x03E763_decrease_hearts



tbl_BAB6_hearts_cost:
- - - - - - 0x03BAC6 0E:BAB6: 00        .byte $00   ; 00 con_weapon_00
- D 1 - - - 0x03BAC7 0E:BAB7: 01        .byte $01   ; 01 con_weapon_axe
- D 1 - - - 0x03BAC8 0E:BAB8: 01        .byte $01   ; 02 con_weapon_cross
- D 1 - - - 0x03BAC9 0E:BAB9: 01        .byte $01   ; 03 con_weapon_knife
- D 1 - - - 0x03BACA 0E:BABA: 01        .byte $01   ; 04 con_weapon_holy_water
- D 1 - - - 0x03BACB 0E:BABB: 01        .byte $01   ; 05 con_weapon_fireball
- D 1 - - - 0x03BACC 0E:BABC: 01        .byte $01   ; 06 con_weapon_freeze
- D 1 - - - 0x03BACD 0E:BABD: 01        .byte $01   ; 07 con_weapon_blue_balls
- D 1 - - - 0x03BACE 0E:BABE: 01        .byte $01   ; 08 con_weapon_g_knife
- D 1 - - - 0x03BACF 0E:BABF: 01        .byte $01   ; 09 con_weapon_g_axe
- - - - - - 0x03BAD0 0E:BAC0: 00        .byte $00   ; 0A unused
- D 1 - - - 0x03BAD1 0E:BAC1: 05        .byte $05   ; 0B con_weapon_stopwatch



bra_BAC2_02:
C - - - - - 0x03BAD2 0E:BAC2: AD 7A BB  LDA tbl_BB76_animation_data + $04
C - - - - - 0x03BAD5 0E:BAC5: 85 08     STA ram_0008_t006_data
C - - - - - 0x03BAD7 0E:BAC7: AD 7B BB  LDA tbl_BB76_animation_data + $05
C - - - - - 0x03BADA 0E:BACA: 85 09     STA ram_0008_t006_data + $01
C - - - - - 0x03BADC 0E:BACC: A0 00     LDY #$00
bra_BACE_loop:
C - - - - - 0x03BADE 0E:BACE: B9 6F BB  LDA tbl_BB6F,Y
C - - - - - 0x03BAE1 0E:BAD1: C9 FF     CMP #$FF
C - - - - - 0x03BAE3 0E:BAD3: F0 39     BEQ bra_BB0E_FF
C - - - - - 0x03BAE5 0E:BAD5: DD 65 05  CMP ram_obj_state,X
C - - - - - 0x03BAE8 0E:BAD8: F0 04     BEQ bra_BADE
C - - - - - 0x03BAEA 0E:BADA: C8        INY
C - - - - - 0x03BAEB 0E:BADB: C8        INY
C - - - - - 0x03BAEC 0E:BADC: D0 F0     BNE bra_BACE_loop    ; jmp
bra_BADE:
C - - - - - 0x03BAEE 0E:BADE: C9 46     CMP #$46
C - - - - - 0x03BAF0 0E:BAE0: D0 09     BNE bra_BAEB
C - - - - - 0x03BAF2 0E:BAE2: AD AA 05  LDA ram_05AA_plr
C - - - - - 0x03BAF5 0E:BAE5: C9 0D     CMP #$0D
C - - - - - 0x03BAF7 0E:BAE7: D0 02     BNE bra_BAEB
- - - - - - 0x03BAF9 0E:BAE9: C8        INY
- - - - - - 0x03BAFA 0E:BAEA: C8        INY
bra_BAEB:
C - - - - - 0x03BAFB 0E:BAEB: B9 70 BB  LDA tbl_BB6F + $01,Y
C - - - - - 0x03BAFE 0E:BAEE: A8        TAY
C - - - - - 0x03BAFF 0E:BAEF: 4C 3F BB  JMP loc_BB3F



sub_BAF2:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03BB02 0E:BAF2: A2 00     LDX #$00
ofs_036_0x03BB04_05:
C - - - - - 0x03BB04 0E:BAF4: DE 7C 05  DEC ram_obj_anim_timer,X
C - - - - - 0x03BB07 0E:BAF7: F0 02     BEQ bra_BAFB
C - - - - - 0x03BB09 0E:BAF9: 18        CLC
C - - - - - 0x03BB0A 0E:BAFA: 60        RTS
bra_BAFB:
C - - - - - 0x03BB0B 0E:BAFB: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03BB0E 0E:BAFE: C9 02     CMP #$02
C - - - - - 0x03BB10 0E:BB00: F0 C0     BEQ bra_BAC2_02
C - - - - - 0x03BB12 0E:BB02: 0A        ASL
C - - - - - 0x03BB13 0E:BB03: A8        TAY
C - - - - - 0x03BB14 0E:BB04: B9 76 BB  LDA tbl_BB76_animation_data,Y
C - - - - - 0x03BB17 0E:BB07: 85 08     STA ram_0008_t006_data
C - - - - - 0x03BB19 0E:BB09: B9 77 BB  LDA tbl_BB76_animation_data + $01,Y
C - - - - - 0x03BB1C 0E:BB0C: 85 09     STA ram_0008_t006_data + $01
bra_BB0E_FF:
C - - - - - 0x03BB1E 0E:BB0E: A0 00     LDY #$00
bra_BB10_loop:
C - - - - - 0x03BB20 0E:BB10: B9 64 BB  LDA tbl_BB64,Y
C - - - - - 0x03BB23 0E:BB13: C9 FF     CMP #$FF
C - - - - - 0x03BB25 0E:BB15: F0 22     BEQ bra_BB39_FF
C - - - - - 0x03BB27 0E:BB17: DD 65 05  CMP ram_obj_state,X
C - - - - - 0x03BB2A 0E:BB1A: F0 04     BEQ bra_BB20
C - - - - - 0x03BB2C 0E:BB1C: C8        INY
C - - - - - 0x03BB2D 0E:BB1D: C8        INY
C - - - - - 0x03BB2E 0E:BB1E: D0 F0     BNE bra_BB10_loop    ; jmp
bra_BB20:
C - - - - - 0x03BB30 0E:BB20: C9 24     CMP #$24
C - - - - - 0x03BB32 0E:BB22: D0 17     BNE bra_BB3B
C - - - - - 0x03BB34 0E:BB24: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x03BB37 0E:BB27: F0 09     BEQ bra_BB32_facing_right
C - - - - - 0x03BB39 0E:BB29: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03BB3C 0E:BB2C: F0 0D     BEQ bra_BB3B
bra_BB2E:
C - - - - - 0x03BB3E 0E:BB2E: C8        INY
C - - - - - 0x03BB3F 0E:BB2F: C8        INY
C - - - - - 0x03BB40 0E:BB30: D0 09     BNE bra_BB3B    ; jmp?
bra_BB32_facing_right:
C - - - - - 0x03BB42 0E:BB32: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x03BB45 0E:BB35: D0 04     BNE bra_BB3B
C - - - - - 0x03BB47 0E:BB37: F0 F5     BEQ bra_BB2E    ; jmp
bra_BB39_FF:
- - - - - - 0x03BB49 0E:BB39: A0 00     LDY #$00
bra_BB3B:
C - - - - - 0x03BB4B 0E:BB3B: B9 65 BB  LDA tbl_BB64 + $01,Y
C - - - - - 0x03BB4E 0E:BB3E: A8        TAY
loc_BB3F:
C D 1 - - - 0x03BB4F 0E:BB3F: B1 08     LDA (ram_0008_t006_data),Y
C - - - - - 0x03BB51 0E:BB41: 85 0A     STA ram_000A_t006_data
C - - - - - 0x03BB53 0E:BB43: C8        INY
C - - - - - 0x03BB54 0E:BB44: B1 08     LDA (ram_0008_t006_data),Y
C - - - - - 0x03BB56 0E:BB46: 85 0B     STA ram_000A_t006_data + $01
C - - - - - 0x03BB58 0E:BB48: BC 93 05  LDY ram_obj_anim_cnt,X
C - - - - - 0x03BB5B 0E:BB4B: B1 0A     LDA (ram_000A_t006_data),Y
C - - - - - 0x03BB5D 0E:BB4D: C9 FF     CMP #$FF
C - - - - - 0x03BB5F 0E:BB4F: F0 11     BEQ bra_BB62_FF
C - - - - - 0x03BB61 0E:BB51: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03BB64 0E:BB54: C8        INY
C - - - - - 0x03BB65 0E:BB55: B1 0A     LDA (ram_000A_t006_data),Y
C - - - - - 0x03BB67 0E:BB57: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x03BB6A 0E:BB5A: FE 93 05  INC ram_obj_anim_cnt,X
C - - - - - 0x03BB6D 0E:BB5D: FE 93 05  INC ram_obj_anim_cnt,X
C - - - - - 0x03BB70 0E:BB60: 18        CLC
C - - - - - 0x03BB71 0E:BB61: 60        RTS
bra_BB62_FF:
C - - - - - 0x03BB72 0E:BB62: 38        SEC
C - - - - - 0x03BB73 0E:BB63: 60        RTS



tbl_BB64:
; 00 
- D 1 - - - 0x03BB74 0E:BB64: 20        .byte $20   ; compare with state
- D 1 - - - 0x03BB75 0E:BB65: 00        .byte $00   ; offset for 0x03BB8E
; 01 
- D 1 - - - 0x03BB76 0E:BB66: 22        .byte $22   ; 
- D 1 - - - 0x03BB77 0E:BB67: 00        .byte $00   ; 
; 02 
- D 1 - - - 0x03BB78 0E:BB68: 1C        .byte $1C   ; 
- D 1 - - - 0x03BB79 0E:BB69: 02        .byte $02   ; 
; 03 
- D 1 - - - 0x03BB7A 0E:BB6A: 24        .byte $24   ; 
- D 1 - - - 0x03BB7B 0E:BB6B: 04        .byte $04   ; 
; 04 
- - - - - - 0x03BB7C 0E:BB6C: 24        .byte $24   ; 
- D 1 - - - 0x03BB7D 0E:BB6D: 06        .byte $06   ; 
; 05 
- - - - - - 0x03BB7E 0E:BB6E: FF        .byte $FF   ; end token



tbl_BB6F:
; 00 
- D 1 - - - 0x03BB7F 0E:BB6F: 46        .byte $46   ; compare with state
- D 1 - - - 0x03BB80 0E:BB70: 08        .byte $08   ; offset for 0x03BB9E
; 01 
- D 1 - - - 0x03BB81 0E:BB71: 46        .byte $46   ; 
- - - - - - 0x03BB82 0E:BB72: 0A        .byte $0A   ; 
; 02 
- D 1 - - - 0x03BB83 0E:BB73: 48        .byte $48   ; 
- - - - - - 0x03BB84 0E:BB74: 0C        .byte $0C   ; 
; 03 
- D 1 - - - 0x03BB85 0E:BB75: FF        .byte $FF   ; end token



tbl_BB76_animation_data:
- D 1 - - - 0x03BB86 0E:BB76: 7E BB     .word _off040_BB7E_00
- D 1 - - - 0x03BB88 0E:BB78: 86 BB     .word _off040_BB86_01
- D 1 - - - 0x03BB8A 0E:BB7A: 8E BB     .word _off040_BB8E_02   ; special case 02
- D 1 - - - 0x03BB8C 0E:BB7C: 9C BB     .word _off040_BB9C_03



_off040_BB7E_00:
- D 1 - I - 0x03BB8E 0E:BB7E: A4 BB     .word off_BBA4_00_00
- - - - - - 0x03BB90 0E:BB80: AB BB     .word off_BBAB_00_02
- - - - - - 0x03BB92 0E:BB82: B2 BB     .word off_BBB2_00_04
- D 1 - I - 0x03BB94 0E:BB84: BB BB     .word off_BBBB_00_06



_off040_BB86_01:
- D 1 - I - 0x03BB96 0E:BB86: C4 BB     .word off_BBC4_01_00
- - - - - - 0x03BB98 0E:BB88: C9 BB     .word off_BBC9_01_02
- D 1 - I - 0x03BB9A 0E:BB8A: CE BB     .word off_BBCE_01_04
- D 1 - I - 0x03BB9C 0E:BB8C: D5 BB     .word off_BBD5_01_06



_off040_BB8E_02:
- D 1 - I - 0x03BB9E 0E:BB8E: DC BB     .word off_BBDC_02_00
- - - - - - 0x03BBA0 0E:BB90: E1 BB     .word off_BBE1_02_02
- - - - - - 0x03BBA2 0E:BB92: E6 BB     .word off_BBE6_02_04
- - - - - - 0x03BBA4 0E:BB94: ED BB     .word off_BBED_02_06
- D 1 - I - 0x03BBA6 0E:BB96: F4 BB     .word off_BBF4_02_08
- - - - - - 0x03BBA8 0E:BB98: FB BB     .word off_BBFB_02_0A
- - - - - - 0x03BBAA 0E:BB9A: 02 BC     .word off_BC02_02_0C



_off040_BB9C_03:
- D 1 - I - 0x03BBAC 0E:BB9C: 09 BC     .word off_BC09_03_00
- D 1 - I - 0x03BBAE 0E:BB9E: 10 BC     .word off_BC10_03_02
- - - - - - 0x03BBB0 0E:BBA0: 17 BC     .word off_BC17_03_04
- - - - - - 0x03BBB2 0E:BBA2: 20 BC     .word off_BC20_03_06



off_BBA4_00_00:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BBB4 0E:BBA4: 18        .byte $18, $05   ; 00 
- D 1 - I - 0x03BBB6 0E:BBA6: 1A        .byte $1A, $07   ; 02 
- D 1 - I - 0x03BBB8 0E:BBA8: 1C        .byte $1C, $09   ; 04 
- D 1 - I - 0x03BBBA 0E:BBAA: FF        .byte $FF   ; 06 end token



off_BBAB_00_02:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BBBB 0E:BBAB: 1E        .byte $1E, $05   ; 00 
- - - - - - 0x03BBBD 0E:BBAD: 20        .byte $20, $07   ; 02 
- - - - - - 0x03BBBF 0E:BBAF: 22        .byte $22, $09   ; 04 
- - - - - - 0x03BBC1 0E:BBB1: FF        .byte $FF   ; 06 end token



off_BBB2_00_04:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BBC2 0E:BBB2: 34        .byte $34, $05   ; 00 
- - - - - - 0x03BBC4 0E:BBB4: 36        .byte $36, $07   ; 02 
- - - - - - 0x03BBC6 0E:BBB6: 38        .byte $38, $09   ; 04 
- - - - - - 0x03BBC8 0E:BBB8: 0A        .byte $0A, $01   ; 06 
- - - - - - 0x03BBCA 0E:BBBA: FF        .byte $FF   ; 08 end token



off_BBBB_00_06:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BBCB 0E:BBBB: 3A        .byte $3A, $05   ; 00 
- D 1 - I - 0x03BBCD 0E:BBBD: 3C        .byte $3C, $07   ; 02 
- D 1 - I - 0x03BBCF 0E:BBBF: 3E        .byte $3E, $09   ; 04 
- D 1 - I - 0x03BBD1 0E:BBC1: 0C        .byte $0C, $01   ; 06 
- D 1 - I - 0x03BBD3 0E:BBC3: FF        .byte $FF   ; 08 end token



off_BBC4_01_00:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BBD4 0E:BBC4: 34        .byte $34, $08   ; 00 
- D 1 - I - 0x03BBD6 0E:BBC6: 2C        .byte $2C, $10   ; 02 
- D 1 - I - 0x03BBD8 0E:BBC8: FF        .byte $FF   ; 04 end token



off_BBC9_01_02:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BBD9 0E:BBC9: 36        .byte $36, $08   ; 00 
- - - - - - 0x03BBDB 0E:BBCB: 2E        .byte $2E, $10   ; 02 
- - - - - - 0x03BBDD 0E:BBCD: FF        .byte $FF   ; 04 end token



off_BBCE_01_04:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BBDE 0E:BBCE: 38        .byte $38, $08   ; 00 
- D 1 - I - 0x03BBE0 0E:BBD0: 30        .byte $30, $10   ; 02 
- D 1 - I - 0x03BBE2 0E:BBD2: 0A        .byte $0A, $01   ; 04 
- D 1 - I - 0x03BBE4 0E:BBD4: FF        .byte $FF   ; 06 end token



off_BBD5_01_06:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BBE5 0E:BBD5: 3A        .byte $3A, $08   ; 00 
- D 1 - I - 0x03BBE7 0E:BBD7: 32        .byte $32, $10   ; 02 
- D 1 - I - 0x03BBE9 0E:BBD9: 0C        .byte $0C, $01   ; 04 
- D 1 - I - 0x03BBEB 0E:BBDB: FF        .byte $FF   ; 06 end token



off_BBDC_02_00:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BBEC 0E:BBDC: 24        .byte $24, $08   ; 00 
- D 1 - I - 0x03BBEE 0E:BBDE: 26        .byte $26, $0D   ; 02 
- D 1 - I - 0x03BBF0 0E:BBE0: FF        .byte $FF   ; 04 end token



off_BBE1_02_02:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BBF1 0E:BBE1: 32        .byte $32, $08   ; 00 
- - - - - - 0x03BBF3 0E:BBE3: 34        .byte $34, $0D   ; 02 
- - - - - - 0x03BBF5 0E:BBE5: FF        .byte $FF   ; 06 end token



off_BBE6_02_04:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BBF6 0E:BBE6: 2A        .byte $2A, $08   ; 00 
- - - - - - 0x03BBF8 0E:BBE8: 2C        .byte $2C, $0D   ; 02 
- - - - - - 0x03BBFA 0E:BBEA: 0A        .byte $0A, $01   ; 04 
- - - - - - 0x03BBFC 0E:BBEC: FF        .byte $FF   ; 06 end token



off_BBED_02_06:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BBFD 0E:BBED: 2E        .byte $2E, $08   ; 00 
- - - - - - 0x03BBFF 0E:BBEF: 30        .byte $30, $0D   ; 02 
- - - - - - 0x03BC01 0E:BBF1: 0C        .byte $0C, $01   ; 04 
- - - - - - 0x03BC03 0E:BBF3: FF        .byte $FF   ; 06 end token



off_BBF4_02_08:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BC04 0E:BBF4: 18        .byte $18, $08   ; 00 
- D 1 - I - 0x03BC06 0E:BBF6: 1C        .byte $1C, $0D   ; 02 
- D 1 - I - 0x03BC08 0E:BBF8: 18        .byte $18, $01   ; 04 
- D 1 - I - 0x03BC0A 0E:BBFA: FF        .byte $FF   ; 06 end token



off_BBFB_02_0A:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BC0B 0E:BBFB: 36        .byte $36, $08   ; 00 
- - - - - - 0x03BC0D 0E:BBFD: 3A        .byte $3A, $0D   ; 02 
- - - - - - 0x03BC0F 0E:BBFF: 36        .byte $36, $01   ; 04 
- - - - - - 0x03BC11 0E:BC01: FF        .byte $FF   ; 06 end token



off_BC02_02_0C:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BC12 0E:BC02: 1E        .byte $1E, $08   ; 00 
- - - - - - 0x03BC14 0E:BC04: 22        .byte $22, $0D   ; 02 
- - - - - - 0x03BC16 0E:BC06: 1E        .byte $1E, $01   ; 04 
- - - - - - 0x03BC18 0E:BC08: FF        .byte $FF   ; 06 end token



off_BC09_03_00:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BC19 0E:BC09: 18        .byte $18, $08   ; 00 
- D 1 - I - 0x03BC1B 0E:BC0B: 1A        .byte $1A, $08   ; 02 
- D 1 - I - 0x03BC1D 0E:BC0D: 1C        .byte $1C, $08   ; 04 
- D 1 - I - 0x03BC1F 0E:BC0F: FF        .byte $FF   ; 06 end token



off_BC10_03_02:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- D 1 - I - 0x03BC20 0E:BC10: 1E        .byte $1E, $08   ; 00 
- D 1 - I - 0x03BC22 0E:BC12: 20        .byte $20, $08   ; 02 
- D 1 - I - 0x03BC24 0E:BC14: 22        .byte $22, $08   ; 04 
- D 1 - I - 0x03BC26 0E:BC16: FF        .byte $FF   ; 06 end token



off_BC17_03_04:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BC27 0E:BC17: 18        .byte $18, $08   ; 00 
- - - - - - 0x03BC29 0E:BC19: 1A        .byte $1A, $08   ; 02 
- - - - - - 0x03BC2B 0E:BC1B: 1C        .byte $1C, $08   ; 04 
- - - - - - 0x03BC2D 0E:BC1D: 0A        .byte $0A, $01   ; 06 
- - - - - - 0x03BC2F 0E:BC1F: FF        .byte $FF   ; 08 end token



off_BC20_03_06:
;                                              +---------- animation
;                                              |    +----- timer
;                                              |    |
- - - - - - 0x03BC30 0E:BC20: 18        .byte $18, $08   ; 00 
- - - - - - 0x03BC32 0E:BC22: 1A        .byte $1A, $08   ; 02 
- - - - - - 0x03BC34 0E:BC24: 1C        .byte $1C, $08   ; 04 
- - - - - - 0x03BC36 0E:BC26: 0C        .byte $0C, $01   ; 06 
- - - - - - 0x03BC38 0E:BC28: FF        .byte $FF   ; 08 end token



loc_0x03BC39:
C D 1 - - - 0x03BC39 0E:BC29: A5 74     LDA ram_0074_flag
C - - - - - 0x03BC3B 0E:BC2B: F0 01     BEQ bra_BC2E
C - - - - - 0x03BC3D 0E:BC2D: 60        RTS
bra_BC2E:
C - - - - - 0x03BC3E 0E:BC2E: E6 74     INC ram_0074_flag
C - - - - - 0x03BC40 0E:BC30: A4 32     LDY ram_blk_hi
C - - - - - 0x03BC42 0E:BC32: C0 0E     CPY #$0E
C - - - - - 0x03BC44 0E:BC34: F0 06     BEQ bra_BC3C_0E
bra_BC36:
C - - - - - 0x03BC46 0E:BC36: B9 45 BC  LDA tbl_BC45_music,Y
C - - - - - 0x03BC49 0E:BC39: 4C 5F E2  JMP loc_0x03E26F_play_sound
bra_BC3C_0E:
C - - - - - 0x03BC4C 0E:BC3C: A5 33     LDA ram_blk_lo
C - - - - - 0x03BC4E 0E:BC3E: C9 02     CMP #$02
C - - - - - 0x03BC50 0E:BC40: D0 F4     BNE bra_BC36
C - - - - - 0x03BC52 0E:BC42: C8        INY
C - - - - - 0x03BC53 0E:BC43: D0 F1     BNE bra_BC36    ; jmp



tbl_BC45_music:
- D 1 - - - 0x03BC55 0E:BC45: 4F        .byte con_music_4F   ; 00 
- D 1 - - - 0x03BC56 0E:BC46: 53        .byte con_music_53   ; 01 
- D 1 - - - 0x03BC57 0E:BC47: 50        .byte con_music_50   ; 02 
- D 1 - - - 0x03BC58 0E:BC48: 56        .byte con_music_56   ; 03 
- D 1 - - - 0x03BC59 0E:BC49: 55        .byte con_music_55   ; 04 
- D 1 - - - 0x03BC5A 0E:BC4A: 51        .byte con_music_51   ; 05 
- D 1 - - - 0x03BC5B 0E:BC4B: 52        .byte con_music_52   ; 06 
- D 1 - - - 0x03BC5C 0E:BC4C: 57        .byte con_music_57   ; 07 
- D 1 - - - 0x03BC5D 0E:BC4D: 54        .byte con_music_54   ; 08 
- D 1 - - - 0x03BC5E 0E:BC4E: 58        .byte con_music_58   ; 09 
- D 1 - - - 0x03BC5F 0E:BC4F: 59        .byte con_music_59   ; 0A 
- D 1 - - - 0x03BC60 0E:BC50: 5A        .byte con_music_5A   ; 0B 
- D 1 - - - 0x03BC61 0E:BC51: 5B        .byte con_music_5B   ; 0C 
- D 1 - - - 0x03BC62 0E:BC52: 5C        .byte con_music_5C   ; 0D 
- D 1 - - - 0x03BC63 0E:BC53: 5D        .byte con_music_5D   ; 0E 
- D 1 - - - 0x03BC64 0E:BC54: 5E        .byte con_music_5E   ; 0F 



sub_BC55:
C - - - - - 0x03BC65 0E:BC55: 86 B1     STX ram_00B1
C - - - - - 0x03BC67 0E:BC57: 8A        TXA
C - - - - - 0x03BC68 0E:BC58: 38        SEC
C - - - - - 0x03BC69 0E:BC59: E9 13     SBC #$13
C - - - - - 0x03BC6B 0E:BC5B: C9 04     CMP #$04
C - - - - - 0x03BC6D 0E:BC5D: B0 1B     BCS bra_BC7A
C - - - - - 0x03BC6F 0E:BC5F: A8        TAY
C - - - - - 0x03BC70 0E:BC60: D0 08     BNE bra_BC6A
sub_BC62:
C - - - - - 0x03BC72 0E:BC62: 86 B1     STX ram_00B1
C - - - - - 0x03BC74 0E:BC64: E0 13     CPX #$13
C - - - - - 0x03BC76 0E:BC66: D0 12     BNE bra_BC7A
C - - - - - 0x03BC78 0E:BC68: A0 00     LDY #$00
bra_BC6A:
C - - - - - 0x03BC7A 0E:BC6A: A2 01     LDX #$01
bra_BC6C_loop:
C - - - - - 0x03BC7C 0E:BC6C: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x03BC7F 0E:BC6F: 39 7D BC  AND tbl_BC7D,Y
C - - - - - 0x03BC82 0E:BC72: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x03BC85 0E:BC75: E8        INX
C - - - - - 0x03BC86 0E:BC76: E0 13     CPX #$13
C - - - - - 0x03BC88 0E:BC78: 90 F2     BCC bra_BC6C_loop
bra_BC7A:
C - - - - - 0x03BC8A 0E:BC7A: A6 B1     LDX ram_00B1
C - - - - - 0x03BC8C 0E:BC7C: 60        RTS



tbl_BC7D:
- D 1 - - - 0x03BC8D 0E:BC7D: FE        .byte $FE   ; 00 
- D 1 - - - 0x03BC8E 0E:BC7E: FD        .byte $FD   ; 01 
- D 1 - - - 0x03BC8F 0E:BC7F: FB        .byte $FB   ; 02 
- D 1 - - - 0x03BC90 0E:BC80: F7        .byte $F7   ; 03 



ofs_036_0x03BC91_07:
C - - J - - 0x03BC91 0E:BC81: A9 01     LDA #$01
C - - - - - 0x03BC93 0E:BC83: 85 10     STA ram_0010_t00D
C - - - - - 0x03BC95 0E:BC85: A2 05     LDX #$05
C - - - - - 0x03BC97 0E:BC87: D0 06     BNE bra_BC8F    ; jmp



sub_BC89:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03BC99 0E:BC89: A9 00     LDA #$00
C - - - - - 0x03BC9B 0E:BC8B: 85 10     STA ram_0010_t00D
C - - - - - 0x03BC9D 0E:BC8D: A2 13     LDX #$13
bra_BC8F:
C - - - - - 0x03BC9F 0E:BC8F: A4 10     LDY ram_0010_t00D
C - - - - - 0x03BCA1 0E:BC91: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x03BCA4 0E:BC94: 85 11     STA ram_0011_temp
C - - - - - 0x03BCA6 0E:BC96: B9 65 05  LDA ram_obj_state,Y
C - - - - - 0x03BCA9 0E:BC99: 85 12     STA ram_0012_temp
C - - - - - 0x03BCAB 0E:BC9B: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x03BCAE 0E:BC9E: 85 13     STA ram_0013_temp
C - - - - - 0x03BCB0 0E:BCA0: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x03BCB3 0E:BCA3: 85 14     STA ram_0014_t001_copy_obj_pos_X
C - - - - - 0x03BCB5 0E:BCA5: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x03BCB8 0E:BCA8: 85 15     STA ram_0014_t001_copy_obj_pos_X + $01
C - - - - - 0x03BCBA 0E:BCAA: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x03BCBD 0E:BCAD: 85 16     STA ram_0016_temp
C - - - - - 0x03BCBF 0E:BCAF: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03BCC2 0E:BCB2: D0 44     BNE bra_BCF8
C - - - - - 0x03BCC4 0E:BCB4: 20 62 BC  JSR sub_BC62
C - - - - - 0x03BCC7 0E:BCB7: A5 11     LDA ram_0011_temp
C - - - - - 0x03BCC9 0E:BCB9: C9 01     CMP #$01
C - - - - - 0x03BCCB 0E:BCBB: F0 0A     BEQ bra_BCC7
C - - - - - 0x03BCCD 0E:BCBD: C9 02     CMP #$02
C - - - - - 0x03BCCF 0E:BCBF: D0 0A     BNE bra_BCCB
C - - - - - 0x03BCD1 0E:BCC1: A0 80     LDY #con_obj_flag_not_visible
C - - - - - 0x03BCD3 0E:BCC3: A9 04     LDA #$04
C - - - - - 0x03BCD5 0E:BCC5: D0 08     BNE bra_BCCF    ; jmp
bra_BCC7:
C - - - - - 0x03BCD7 0E:BCC7: A9 03     LDA #$03
C - - - - - 0x03BCD9 0E:BCC9: D0 02     BNE bra_BCCD    ; jmp
bra_BCCB:
C - - - - - 0x03BCDB 0E:BCCB: A5 8E     LDA ram_weapon_power
bra_BCCD:
C - - - - - 0x03BCDD 0E:BCCD: A0 00     LDY #con_obj_flag_00
bra_BCCF:
C - - - - - 0x03BCDF 0E:BCCF: 8C 83 04  STY ram_obj_flags + $13
C - - - - - 0x03BCE2 0E:BCD2: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03BCE5 0E:BCD5: A9 00     LDA #$00
C - - - - - 0x03BCE7 0E:BCD7: 9D 93 05  STA ram_obj_anim_cnt,X
C - - - - - 0x03BCEA 0E:BCDA: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x03BCED 0E:BCDD: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03BCF0 0E:BCE0: A9 01     LDA #$01
C - - - - - 0x03BCF2 0E:BCE2: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x03BCF5 0E:BCE5: A4 10     LDY ram_0010_t00D
C - - - - - 0x03BCF7 0E:BCE7: B9 8C 04  LDA ram_obj_type,Y
C - - - - - 0x03BCFA 0E:BCEA: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03BCFD 0E:BCED: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x03BD00 0E:BCF0: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03BD03 0E:BCF3: FE 65 05  INC ram_obj_state,X
C - - - - - 0x03BD06 0E:BCF6: 18        CLC
C - - - - - 0x03BD07 0E:BCF7: 60        RTS
bra_BCF8:
C - - - - - 0x03BD08 0E:BCF8: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03BD0B 0E:BCFB: C9 01     CMP #$01
C - - - - - 0x03BD0D 0E:BCFD: F0 04     BEQ bra_BD03
C - - - - - 0x03BD0F 0E:BCFF: C9 02     CMP #$02
C - - - - - 0x03BD11 0E:BD01: D0 07     BNE bra_BD0A
bra_BD03:
C - - - - - 0x03BD13 0E:BD03: A5 1A     LDA ram_frm_cnt
C - - - - - 0x03BD15 0E:BD05: 29 03     AND #$03
C - - - - - 0x03BD17 0E:BD07: 9D 54 04  STA ram_0454_obj,X
bra_BD0A:
C - - - - - 0x03BD1A 0E:BD0A: A5 11     LDA ram_0011_temp
C - - - - - 0x03BD1C 0E:BD0C: 0A        ASL
C - - - - - 0x03BD1D 0E:BD0D: A8        TAY
C - - - - - 0x03BD1E 0E:BD0E: B9 DA BD  LDA tbl_BDDA,Y
C - - - - - 0x03BD21 0E:BD11: 85 0C     STA ram_000C_t001_data
C - - - - - 0x03BD23 0E:BD13: B9 DB BD  LDA tbl_BDDA + $01,Y
C - - - - - 0x03BD26 0E:BD16: 85 0D     STA ram_000C_t001_data + $01
C - - - - - 0x03BD28 0E:BD18: A5 14     LDA ram_0014_t001_copy_obj_pos_X
C - - - - - 0x03BD2A 0E:BD1A: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03BD2D 0E:BD1D: A5 15     LDA ram_0014_t001_copy_obj_pos_X + $01
C - - - - - 0x03BD2F 0E:BD1F: A4 12     LDY ram_0012_temp
C - - - - - 0x03BD31 0E:BD21: C0 1C     CPY #$1C
C - - - - - 0x03BD33 0E:BD23: D0 03     BNE bra_BD28
C - - - - - 0x03BD35 0E:BD25: 18        CLC
C - - - - - 0x03BD36 0E:BD26: 69 08     ADC #$08
bra_BD28:
C - - - - - 0x03BD38 0E:BD28: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03BD3B 0E:BD2B: A0 00     LDY #$00
bra_BD2D_loop:
C - - - - - 0x03BD3D 0E:BD2D: B1 0C     LDA (ram_000C_t001_data),Y
C - - - - - 0x03BD3F 0E:BD2F: C9 FF     CMP #$FF
C - - - - - 0x03BD41 0E:BD31: D0 03     BNE bra_BD36
C - - - - - 0x03BD43 0E:BD33: 4C C6 BD  JMP loc_BDC6_FF
bra_BD36:
C - - - - - 0x03BD46 0E:BD36: C5 12     CMP ram_0012_temp
C - - - - - 0x03BD48 0E:BD38: F0 04     BEQ bra_BD3E
C - - - - - 0x03BD4A 0E:BD3A: C8        INY
C - - - - - 0x03BD4B 0E:BD3B: C8        INY
C - - - - - 0x03BD4C 0E:BD3C: D0 EF     BNE bra_BD2D_loop    ; jmp
bra_BD3E:
C - - - - - 0x03BD4E 0E:BD3E: C9 1E     CMP #$1E
C - - - - - 0x03BD50 0E:BD40: D0 12     BNE bra_BD54
C - - - - - 0x03BD52 0E:BD42: A5 13     LDA ram_0013_temp
C - - - - - 0x03BD54 0E:BD44: F0 08     BEQ bra_BD4E
C - - - - - 0x03BD56 0E:BD46: A5 16     LDA ram_0016_temp
C - - - - - 0x03BD58 0E:BD48: F0 0A     BEQ bra_BD54
C - - - - - 0x03BD5A 0E:BD4A: C8        INY
C - - - - - 0x03BD5B 0E:BD4B: C8        INY
C - - - - - 0x03BD5C 0E:BD4C: D0 06     BNE bra_BD54    ; jmp
bra_BD4E:
C - - - - - 0x03BD5E 0E:BD4E: A5 16     LDA ram_0016_temp
C - - - - - 0x03BD60 0E:BD50: D0 02     BNE bra_BD54
C - - - - - 0x03BD62 0E:BD52: C8        INY
C - - - - - 0x03BD63 0E:BD53: C8        INY
bra_BD54:
C - - - - - 0x03BD64 0E:BD54: C8        INY
C - - - - - 0x03BD65 0E:BD55: B1 0C     LDA (ram_000C_t001_data),Y
C - - - - - 0x03BD67 0E:BD57: A8        TAY
C - - - - - 0x03BD68 0E:BD58: B9 01 BE  LDA tbl_BE01,Y
C - - - - - 0x03BD6B 0E:BD5B: 85 08     STA ram_0008_t005_data
C - - - - - 0x03BD6D 0E:BD5D: B9 02 BE  LDA tbl_BE01 + $01,Y
C - - - - - 0x03BD70 0E:BD60: 85 09     STA ram_0008_t005_data + $01
C - - - - - 0x03BD72 0E:BD62: DE 7C 05  DEC ram_obj_anim_timer,X
C - - - - - 0x03BD75 0E:BD65: F0 02     BEQ bra_BD69
C - - - - - 0x03BD77 0E:BD67: 18        CLC
C - - - - - 0x03BD78 0E:BD68: 60        RTS
bra_BD69:
C - - - - - 0x03BD79 0E:BD69: BD 93 05  LDA ram_obj_anim_cnt,X
C - - - - - 0x03BD7C 0E:BD6C: 85 0F     STA ram_000F_temp
; * 03
C - - - - - 0x03BD7E 0E:BD6E: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x03BD7F 0E:BD6F: 18        CLC
C - - - - - 0x03BD80 0E:BD70: 65 0F     ADC ram_000F_temp
C - - - - - 0x03BD82 0E:BD72: A8        TAY
C - - - - - 0x03BD83 0E:BD73: B1 08     LDA (ram_0008_t005_data),Y
C - - - - - 0x03BD85 0E:BD75: C9 FF     CMP #$FF
C - - - - - 0x03BD87 0E:BD77: F0 4D     BEQ bra_BDC6_FF
C - - - - - 0x03BD89 0E:BD79: 84 00     STY ram_0000_t039
C - - - - - 0x03BD8B 0E:BD7B: A4 10     LDY ram_0010_t00D
C - - - - - 0x03BD8D 0E:BD7D: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x03BD90 0E:BD80: A4 00     LDY ram_0000_t039
C - - - - - 0x03BD92 0E:BD82: C8        INY
C - - - - - 0x03BD93 0E:BD83: B1 08     LDA (ram_0008_t005_data),Y
C - - - - - 0x03BD95 0E:BD85: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x03BD98 0E:BD88: C8        INY
C - - - - - 0x03BD99 0E:BD89: A5 13     LDA ram_0013_temp
C - - - - - 0x03BD9B 0E:BD8B: F0 08     BEQ bra_BD95
C - - - - - 0x03BD9D 0E:BD8D: A9 00     LDA #$00
C - - - - - 0x03BD9F 0E:BD8F: 38        SEC
C - - - - - 0x03BDA0 0E:BD90: F1 08     SBC (ram_0008_t005_data),Y
C - - - - - 0x03BDA2 0E:BD92: 4C 97 BD  JMP loc_BD97
bra_BD95:
C - - - - - 0x03BDA5 0E:BD95: B1 08     LDA (ram_0008_t005_data),Y
loc_BD97:
C D 1 - - - 0x03BDA7 0E:BD97: 18        CLC
C - - - - - 0x03BDA8 0E:BD98: 65 14     ADC ram_0014_t001_copy_obj_pos_X
C - - - - - 0x03BDAA 0E:BD9A: A4 10     LDY ram_0010_t00D
C - - - - - 0x03BDAC 0E:BD9C: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x03BDAF 0E:BD9F: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03BDB2 0E:BDA2: F0 2C     BEQ bra_BDD0
bra_BDA4:
C - - - - - 0x03BDB4 0E:BDA4: 0A        ASL
C - - - - - 0x03BDB5 0E:BDA5: A8        TAY
C - - - - - 0x03BDB6 0E:BDA6: B9 91 BE  LDA tbl_BE91,Y
C - - - - - 0x03BDB9 0E:BDA9: 85 08     STA ram_0008_t004_data
C - - - - - 0x03BDBB 0E:BDAB: B9 92 BE  LDA tbl_BE91 + $01,Y
C - - - - - 0x03BDBE 0E:BDAE: 85 09     STA ram_0008_t004_data + $01
C - - - - - 0x03BDC0 0E:BDB0: A5 0F     LDA ram_000F_temp
C - - - - - 0x03BDC2 0E:BDB2: 0A        ASL
C - - - - - 0x03BDC3 0E:BDB3: A8        TAY
C - - - - - 0x03BDC4 0E:BDB4: B1 08     LDA (ram_0008_t004_data),Y
C - - - - - 0x03BDC6 0E:BDB6: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03BDC9 0E:BDB9: C8        INY
C - - - - - 0x03BDCA 0E:BDBA: B1 08     LDA (ram_0008_t004_data),Y
C - - - - - 0x03BDCC 0E:BDBC: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03BDCF 0E:BDBF: FE 93 05  INC ram_obj_anim_cnt,X
C - - - - - 0x03BDD2 0E:BDC2: 18        CLC
C - - - - - 0x03BDD3 0E:BDC3: 60        RTS
sub_BDC4:
C - - - - - 0x03BDD4 0E:BDC4: A2 13     LDX #$13
bra_BDC6_FF:
loc_BDC6_FF:
C D 1 - - - 0x03BDD6 0E:BDC6: A9 00     LDA #$00
C - - - - - 0x03BDD8 0E:BDC8: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03BDDB 0E:BDCB: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03BDDE 0E:BDCE: 38        SEC
C - - - - - 0x03BDDF 0E:BDCF: 60        RTS
bra_BDD0:
C - - - - - 0x03BDE0 0E:BDD0: A4 12     LDY ram_0012_temp
C - - - - - 0x03BDE2 0E:BDD2: C0 1C     CPY #$1C
C - - - - - 0x03BDE4 0E:BDD4: D0 CE     BNE bra_BDA4
C - - - - - 0x03BDE6 0E:BDD6: A9 05     LDA #$05
C - - - - - 0x03BDE8 0E:BDD8: D0 CA     BNE bra_BDA4    ; jmp



tbl_BDDA:
- D 1 - - - 0x03BDEA 0E:BDDA: E0 BD     .word off_BDE0_00
- D 1 - - - 0x03BDEC 0E:BDDC: EB BD     .word off_BDEB_01
- D 1 - - - 0x03BDEE 0E:BDDE: F6 BD     .word off_BDF6_02



off_BDE0_00:
; 00 
- D 1 - I - 0x03BDF0 0E:BDE0: 18        .byte $18   ; compare with state
- D 1 - I - 0x03BDF1 0E:BDE1: 00        .byte $00   ; index for 0x03BE11
; 01 
- D 1 - I - 0x03BDF2 0E:BDE2: 1A        .byte $1A   ; 
- D 1 - I - 0x03BDF3 0E:BDE3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x03BDF4 0E:BDE4: 1C        .byte $1C   ; 
- D 1 - I - 0x03BDF5 0E:BDE5: 02        .byte $02   ; 
; 03 
- D 1 - I - 0x03BDF6 0E:BDE6: 1E        .byte $1E   ; 
- D 1 - I - 0x03BDF7 0E:BDE7: 04        .byte $04   ; 
; 04 
- - - - - - 0x03BDF8 0E:BDE8: 1E        .byte $1E   ; 
- D 1 - I - 0x03BDF9 0E:BDE9: 06        .byte $06   ; 
; 05 
- - - - - - 0x03BDFA 0E:BDEA: FF        .byte $FF   ; end token



off_BDEB_01:
; 00 
- D 1 - I - 0x03BDFB 0E:BDEB: 18        .byte $18   ; compare with state
- D 1 - I - 0x03BDFC 0E:BDEC: 08        .byte $08   ; index for 0x03BE11
; 01 
- D 1 - I - 0x03BDFD 0E:BDED: 1A        .byte $1A   ; 
- D 1 - I - 0x03BDFE 0E:BDEE: 08        .byte $08   ; 
; 02 
- D 1 - I - 0x03BDFF 0E:BDEF: 1C        .byte $1C   ; 
- D 1 - I - 0x03BE00 0E:BDF0: 0A        .byte $0A   ; 
; 03 
- D 1 - I - 0x03BE01 0E:BDF1: 1E        .byte $1E   ; 
- D 1 - I - 0x03BE02 0E:BDF2: 0C        .byte $0C   ; 
; 04 
- - - - - - 0x03BE03 0E:BDF3: 1E        .byte $1E   ; 
- D 1 - I - 0x03BE04 0E:BDF4: 0E        .byte $0E   ; 
; 05 
- - - - - - 0x03BE05 0E:BDF5: FF        .byte $FF   ; end token



off_BDF6_02:
; 00 
- D 1 - I - 0x03BE06 0E:BDF6: 18        .byte $18   ; compare with state
- D 1 - I - 0x03BE07 0E:BDF7: 10        .byte $10   ; index for 0x03BE11
; 01 
- D 1 - I - 0x03BE08 0E:BDF8: 1A        .byte $1A   ; 
- D 1 - I - 0x03BE09 0E:BDF9: 10        .byte $10   ; 
; 02 
- D 1 - I - 0x03BE0A 0E:BDFA: 1C        .byte $1C   ; 
- D 1 - I - 0x03BE0B 0E:BDFB: 12        .byte $12   ; 
; 03 
- D 1 - I - 0x03BE0C 0E:BDFC: 1E        .byte $1E   ; 
- D 1 - I - 0x03BE0D 0E:BDFD: 14        .byte $14   ; 
; 04 
- D 1 - I - 0x03BE0E 0E:BDFE: 1E        .byte $1E   ; 
- D 1 - I - 0x03BE0F 0E:BDFF: 16        .byte $16   ; 
; 05 
- D 1 - I - 0x03BE10 0E:BE00: FF        .byte $FF   ; end token



tbl_BE01:
; index at 0x03BDF0
- D 1 - - - 0x03BE11 0E:BE01: 19 BE     .word _off042_BE19_00
- D 1 - - - 0x03BE13 0E:BE03: 23 BE     .word _off042_BE23_02
- D 1 - - - 0x03BE15 0E:BE05: 2D BE     .word _off042_BE2D_04
- D 1 - - - 0x03BE17 0E:BE07: 3A BE     .word _off042_BE3A_06
- D 1 - - - 0x03BE19 0E:BE09: 47 BE     .word _off042_BE47_08
- D 1 - - - 0x03BE1B 0E:BE0B: 4E BE     .word _off042_BE4E_0A
- D 1 - - - 0x03BE1D 0E:BE0D: 55 BE     .word _off042_BE55_0C
- D 1 - - - 0x03BE1F 0E:BE0F: 5F BE     .word _off042_BE5F_0E
- D 1 - - - 0x03BE21 0E:BE11: 69 BE     .word _off042_BE69_10
- D 1 - - - 0x03BE23 0E:BE13: 73 BE     .word _off042_BE73_12
- D 1 - - - 0x03BE25 0E:BE15: 7D BE     .word _off042_BE7D_14
- D 1 - - - 0x03BE27 0E:BE17: 87 BE     .word _off042_BE87_16



_off042_BE19_00:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE29 0E:BE19: 18        .byte $18, $05, $00   ; 00 
- D 1 - I - 0x03BE2C 0E:BE1C: 1A        .byte $1A, $07, $00   ; 01 
- D 1 - I - 0x03BE2F 0E:BE1F: 1C        .byte $1C, $09, $00   ; 02 
- D 1 - I - 0x03BE32 0E:BE22: FF        .byte $FF   ; 03 end token



_off042_BE23_02:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE33 0E:BE23: 1E        .byte $1E, $05, $00   ; 00 
- D 1 - I - 0x03BE36 0E:BE26: 20        .byte $20, $07, $00   ; 01 
- D 1 - I - 0x03BE39 0E:BE29: 22        .byte $22, $09, $00   ; 02 
- D 1 - I - 0x03BE3C 0E:BE2C: FF        .byte $FF   ; 03 end token



_off042_BE2D_04:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE3D 0E:BE2D: 34        .byte $34, $05, $00   ; 00 
- D 1 - I - 0x03BE40 0E:BE30: 36        .byte $36, $07, $00   ; 01 
- D 1 - I - 0x03BE43 0E:BE33: 38        .byte $38, $09, $00   ; 02 
- D 1 - I - 0x03BE46 0E:BE36: 0A        .byte $0A, $01, $00   ; 03 
- D 1 - I - 0x03BE49 0E:BE39: FF        .byte $FF   ; 04 end token



_off042_BE3A_06:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE4A 0E:BE3A: 3A        .byte $3A, $05, $00   ; 00 
- D 1 - I - 0x03BE4D 0E:BE3D: 3C        .byte $3C, $07, $00   ; 01 
- D 1 - I - 0x03BE50 0E:BE40: 3E        .byte $3E, $09, $00   ; 02 
- D 1 - I - 0x03BE53 0E:BE43: 0C        .byte $0C, $01, $00   ; 03 
- D 1 - I - 0x03BE56 0E:BE46: FF        .byte $FF   ; 04 end token



_off042_BE47_08:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE57 0E:BE47: 18        .byte $18, $05, $00   ; 00 
- D 1 - I - 0x03BE5A 0E:BE4A: 1A        .byte $1A, $09, $00   ; 01 
- D 1 - I - 0x03BE5D 0E:BE4D: FF        .byte $FF   ; 02 end token



_off042_BE4E_0A:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE5E 0E:BE4E: 1C        .byte $1C, $05, $00   ; 00 
- D 1 - I - 0x03BE61 0E:BE51: 1E        .byte $1E, $09, $00   ; 01 
- D 1 - I - 0x03BE64 0E:BE54: FF        .byte $FF   ; 02 end token



_off042_BE55_0C:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE65 0E:BE55: 24        .byte $24, $05, $00   ; 00 
- D 1 - I - 0x03BE68 0E:BE58: 26        .byte $26, $09, $00   ; 01 
- D 1 - I - 0x03BE6B 0E:BE5B: 0A        .byte $0A, $01, $00   ; 02 
- D 1 - I - 0x03BE6E 0E:BE5E: FF        .byte $FF   ; 03 end token



_off042_BE5F_0E:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE6F 0E:BE5F: 28        .byte $28, $05, $00   ; 00 
- D 1 - I - 0x03BE72 0E:BE62: 2A        .byte $2A, $09, $00   ; 01 
- D 1 - I - 0x03BE75 0E:BE65: 0C        .byte $0C, $01, $00   ; 02 
- D 1 - I - 0x03BE78 0E:BE68: FF        .byte $FF   ; 03 end token



_off042_BE69_10:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE79 0E:BE69: 28        .byte $28, $03, $00   ; 00 
- D 1 - I - 0x03BE7C 0E:BE6C: 44        .byte $44, $09, $00   ; 01 
- D 1 - I - 0x03BE7F 0E:BE6F: 28        .byte $28, $02, $00   ; 02 
- D 1 - I - 0x03BE82 0E:BE72: FF        .byte $FF   ; 03 end token



_off042_BE73_12:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE83 0E:BE73: 46        .byte $46, $03, $00   ; 00 
- D 1 - I - 0x03BE86 0E:BE76: 4A        .byte $4A, $09, $00   ; 01 
- D 1 - I - 0x03BE89 0E:BE79: 46        .byte $46, $02, $00   ; 02 
- D 1 - I - 0x03BE8C 0E:BE7C: FF        .byte $FF   ; 03 end token



_off042_BE7D_14:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE8D 0E:BE7D: 50        .byte $50, $03, $00   ; 00 
- D 1 - I - 0x03BE90 0E:BE80: 52        .byte $52, $09, $00   ; 01 
- D 1 - I - 0x03BE93 0E:BE83: 50        .byte $50, $02, $00   ; 02 
- D 1 - I - 0x03BE96 0E:BE86: FF        .byte $FF   ; 03 end token



_off042_BE87_16:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- pos_X_hi
;                                              |    |    |
- D 1 - I - 0x03BE97 0E:BE87: 4C        .byte $4C, $03, $00   ; 00 
- D 1 - I - 0x03BE9A 0E:BE8A: 4E        .byte $4E, $09, $00   ; 01 
- D 1 - I - 0x03BE9D 0E:BE8D: 4C        .byte $4C, $02, $00   ; 02 
- D 1 - I - 0x03BEA0 0E:BE90: FF        .byte $FF   ; 03 end token



tbl_BE91:
- D 1 - - - 0x03BEA1 0E:BE91: A5 BE     .word off_BEA5_00
- D 1 - - - 0x03BEA3 0E:BE93: AD BE     .word off_BEAD_01
- D 1 - - - 0x03BEA5 0E:BE95: B5 BE     .word off_BEB5_02
- D 1 - - - 0x03BEA7 0E:BE97: BD BE     .word off_BEBD_03
- D 1 - - - 0x03BEA9 0E:BE99: 9D BE     .word off_BE9D_04
- D 1 - - - 0x03BEAB 0E:BE9B: C3 BE     .word off_BEC3_05



off_BE9D_04:
;                                              +---------- animation
;                                              |    +----- 
;                                              |    |
- D 1 - I - 0x03BEAD 0E:BE9D: 00        .byte $00, $00   ; 00 
- D 1 - I - 0x03BEAF 0E:BE9F: 02        .byte $02, $40   ; 01 
- D 1 - I - 0x03BEB1 0E:BEA1: 00        .byte $00, $00   ; 02 
- - - - - - 0x03BEB3 0E:BEA3: 00        .byte $00, $00   ; 03 



off_BEA5_00:
;                                              +---------- animation
;                                              |    +----- 
;                                              |    |
- D 1 - I - 0x03BEB5 0E:BEA5: 24        .byte $24, $00   ; 00 
- D 1 - I - 0x03BEB7 0E:BEA7: 26        .byte $26, $00   ; 01 
- D 1 - I - 0x03BEB9 0E:BEA9: 28        .byte $28, $40   ; 02 
- D 1 - I - 0x03BEBB 0E:BEAB: 00        .byte $00, $00   ; 03 



off_BEAD_01:
;                                              +---------- animation
;                                              |    +----- 
;                                              |    |
- D 1 - I - 0x03BEBD 0E:BEAD: 2C        .byte $2C, $00   ; 00 
- D 1 - I - 0x03BEBF 0E:BEAF: 2E        .byte $2E, $00   ; 01 
- D 1 - I - 0x03BEC1 0E:BEB1: 30        .byte $30, $60   ; 02 
- D 1 - I - 0x03BEC3 0E:BEB3: 00        .byte $00, $00   ; 03 



off_BEB5_02:
;                                              +---------- animation
;                                              |    +----- 
;                                              |    |
- D 1 - I - 0x03BEC5 0E:BEB5: 2C        .byte $2C, $00   ; 00 
- D 1 - I - 0x03BEC7 0E:BEB7: 2E        .byte $2E, $00   ; 01 
- D 1 - I - 0x03BEC9 0E:BEB9: 32        .byte $32, $60   ; 02 
- D 1 - I - 0x03BECB 0E:BEBB: 00        .byte $00, $00   ; 03 



off_BEBD_03:
;                                              +---------- animation
;                                              |    +----- 
;                                              |    |
- D 1 - I - 0x03BECD 0E:BEBD: 20        .byte $20, $00   ; 00 
- D 1 - I - 0x03BECF 0E:BEBF: 22        .byte $22, $40   ; 01 
- D 1 - I - 0x03BED1 0E:BEC1: 00        .byte $00, $00   ; 02 



off_BEC3_05:
;                                              +---------- animation
;                                              |    +----- 
;                                              |    |
- D 1 - I - 0x03BED3 0E:BEC3: 2A        .byte $2A, $00   ; 00 
- D 1 - I - 0x03BED5 0E:BEC5: 26        .byte $26, $00   ; 01 
- D 1 - I - 0x03BED7 0E:BEC7: 28        .byte $28, $40   ; 02 
- - - - - - 0x03BED9 0E:BEC9: 00        .byte $00, $00   ; 03 



sub_BECB:
C - - - - - 0x03BEDB 0E:BECB: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03BEDE 0E:BECE: 0A        ASL
C - - - - - 0x03BEDF 0E:BECF: A8        TAY
; bzk bug, should be LDA tbl_BDDA,Y
                                    .if con_bzk_hack = $00
C - - - - - 0x03BEE0 0E:BED0: AD DA BD  LDA tbl_BDDA
                                    .else
                                        LDA tbl_BDDA,Y
                                    .endif
C - - - - - 0x03BEE3 0E:BED3: 85 0C     STA ram_000C_t000_data
C - - - - - 0x03BEE5 0E:BED5: B9 DB BD  LDA tbl_BDDA + $01,Y
C - - - - - 0x03BEE8 0E:BED8: 85 0D     STA ram_000C_t000_data + $01
C - - - - - 0x03BEEA 0E:BEDA: A0 01     LDY #$01
C - - - - - 0x03BEEC 0E:BEDC: B1 0C     LDA (ram_000C_t000_data),Y
C - - - - - 0x03BEEE 0E:BEDE: A8        TAY
C - - - - - 0x03BEEF 0E:BEDF: B9 01 BE  LDA tbl_BE01,Y
C - - - - - 0x03BEF2 0E:BEE2: 85 08     STA ram_0008_t003_data
C - - - - - 0x03BEF4 0E:BEE4: B9 02 BE  LDA tbl_BE01 + $01,Y
C - - - - - 0x03BEF7 0E:BEE7: 85 09     STA ram_0008_t003_data + $01
C - - - - - 0x03BEF9 0E:BEE9: AC A6 05  LDY ram_obj_anim_cnt + $13
C - - - - - 0x03BEFC 0E:BEEC: 88        DEY
C - - - - - 0x03BEFD 0E:BEED: 30 0D     BMI bra_BEFC_RTS
C - - - - - 0x03BEFF 0E:BEEF: 98        TYA
C - - - - - 0x03BF00 0E:BEF0: 85 0F     STA ram_000F_temp
C - - - - - 0x03BF02 0E:BEF2: 0A        ASL
C - - - - - 0x03BF03 0E:BEF3: 18        CLC
C - - - - - 0x03BF04 0E:BEF4: 65 0F     ADC ram_000F_temp
C - - - - - 0x03BF06 0E:BEF6: A8        TAY
C - - - - - 0x03BF07 0E:BEF7: B1 08     LDA (ram_0008_t003_data),Y
C - - - - - 0x03BF09 0E:BEF9: 8D 00 04  STA ram_plr_anim_id
bra_BEFC_RTS:
C - - - - - 0x03BF0C 0E:BEFC: 60        RTS



_off038_0x03BF0D_03_Konami:
- D 1 - I - 0x03BF0D 0E:BEFD: 21        .byte $02 * $10 + $01   ; blk_hi + blk_lo
- D 1 - I - 0x03BF0E 0E:BEFE: 02        .byte $00 * $10 + $02   ; blk_fr + ?
- D 1 - I - 0x03BF0F 0E:BEFF: 00        .byte $00   ; 
- D 1 - I - 0x03BF10 0E:BF00: 00        .byte $00   ; ? Trevor
; 00 
- D 1 - I - 0x03BF11 0E:BF01: 00        .byte con_obj_type_00   ; 
- D 1 - I - 0x03BF12 0E:BF02: 02        .byte $02   ; animation
- D 1 - I - 0x03BF13 0E:BF03: BF        .byte $BF   ; pos_X_hi
- D 1 - I - 0x03BF14 0E:BF04: A2        .byte $A2   ; pos_Y_hi
- D 1 - I - 0x03BF15 0E:BF05: 01        .byte $01   ; facing
; 01 
- D 1 - I - 0x03BF16 0E:BF06: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x03BF17 0E:BF07: 0A        .byte $0A   ; animation
- D 1 - I - 0x03BF18 0E:BF08: 74        .byte $74   ; pos_X_hi
- D 1 - I - 0x03BF19 0E:BF09: 72        .byte $72   ; pos_Y_hi
- D 1 - I - 0x03BF1A 0E:BF0A: 00        .byte $00   ; facing
; 02 
- D 1 - I - 0x03BF1B 0E:BF0B: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x03BF1C 0E:BF0C: 04        .byte $04   ; animation
- D 1 - I - 0x03BF1D 0E:BF0D: B0        .byte $B0   ; pos_X_hi
- D 1 - I - 0x03BF1E 0E:BF0E: 80        .byte $80   ; pos_Y_hi
- D 1 - I - 0x03BF1F 0E:BF0F: 00        .byte $00   ; facing
; 03 
- D 1 - I - 0x03BF20 0E:BF10: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x03BF21 0E:BF11: 0C        .byte $0C   ; animation
- D 1 - I - 0x03BF22 0E:BF12: 10        .byte $10   ; pos_X_hi
- D 1 - I - 0x03BF23 0E:BF13: A0        .byte $A0   ; pos_Y_hi
- D 1 - I - 0x03BF24 0E:BF14: 00        .byte $00   ; facing
; 04 
- D 1 - I - 0x03BF25 0E:BF15: FF        .byte $FF   ; end token



_off038_0x03BF26_00_Sypha:
- D 1 - I - 0x03BF26 0E:BF16: 41        .byte $04 * $10 + $01   ; blk_hi + blk_lo
- D 1 - I - 0x03BF27 0E:BF17: 20        .byte $02 * $10 + $00   ; blk_fr + ?
- D 1 - I - 0x03BF28 0E:BF18: 01        .byte $01   ; 
- D 1 - I - 0x03BF29 0E:BF19: 01        .byte $01   ; Sypha
; 00 
- D 1 - I - 0x03BF2A 0E:BF1A: 02        .byte con_obj_type_02   ; 
- D 1 - I - 0x03BF2B 0E:BF1B: 2C        .byte $2C   ; animation
- D 1 - I - 0x03BF2C 0E:BF1C: 30        .byte $30   ; pos_X_hi
- D 1 - I - 0x03BF2D 0E:BF1D: 60        .byte $60   ; pos_Y_hi
- D 1 - I - 0x03BF2E 0E:BF1E: 00        .byte $00   ; facing
; 01 
- D 1 - I - 0x03BF2F 0E:BF1F: 02        .byte con_obj_type_02   ; 
- D 1 - I - 0x03BF30 0E:BF20: 4A        .byte $4A   ; animation
- D 1 - I - 0x03BF31 0E:BF21: 10        .byte $10   ; pos_X_hi
- D 1 - I - 0x03BF32 0E:BF22: 44        .byte $44   ; pos_Y_hi
- D 1 - I - 0x03BF33 0E:BF23: 00        .byte $00   ; facing
; 02 
- D 1 - I - 0x03BF34 0E:BF24: 02        .byte con_obj_type_02   ; 
- D 1 - I - 0x03BF35 0E:BF25: 4A        .byte $4A   ; animation
- D 1 - I - 0x03BF36 0E:BF26: 24        .byte $24   ; pos_X_hi
- D 1 - I - 0x03BF37 0E:BF27: 34        .byte $34   ; pos_Y_hi
- D 1 - I - 0x03BF38 0E:BF28: 00        .byte $00   ; facing
; 03 
- D 1 - I - 0x03BF39 0E:BF29: 02        .byte con_obj_type_02   ; 
- D 1 - I - 0x03BF3A 0E:BF2A: 4A        .byte $4A   ; animation
- D 1 - I - 0x03BF3B 0E:BF2B: 3C        .byte $3C   ; pos_X_hi
- D 1 - I - 0x03BF3C 0E:BF2C: 34        .byte $34   ; pos_Y_hi
- D 1 - I - 0x03BF3D 0E:BF2D: 00        .byte $00   ; facing
; 04 
- D 1 - I - 0x03BF3E 0E:BF2E: 02        .byte con_obj_type_02   ; 
- D 1 - I - 0x03BF3F 0E:BF2F: 4A        .byte $4A   ; animation
- D 1 - I - 0x03BF40 0E:BF30: 50        .byte $50   ; pos_X_hi
- D 1 - I - 0x03BF41 0E:BF31: 44        .byte $44   ; pos_Y_hi
- D 1 - I - 0x03BF42 0E:BF32: 00        .byte $00   ; facing
; 05 
- D 1 - I - 0x03BF43 0E:BF33: 02        .byte con_obj_type_02   ; 
- D 1 - I - 0x03BF44 0E:BF34: 4A        .byte $4A   ; animation
- D 1 - I - 0x03BF45 0E:BF35: 58        .byte $58   ; pos_X_hi
- D 1 - I - 0x03BF46 0E:BF36: 58        .byte $58   ; pos_Y_hi
- D 1 - I - 0x03BF47 0E:BF37: 00        .byte $00   ; facing
; 06 
- D 1 - I - 0x03BF48 0E:BF38: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x03BF49 0E:BF39: 8C        .byte $8C   ; animation
- D 1 - I - 0x03BF4A 0E:BF3A: A8        .byte $A8   ; pos_X_hi
- D 1 - I - 0x03BF4B 0E:BF3B: 40        .byte $40   ; pos_Y_hi
- D 1 - I - 0x03BF4C 0E:BF3C: 01        .byte $01   ; facing
; 07 
- D 1 - I - 0x03BF4D 0E:BF3D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x03BF4E 0E:BF3E: 8E        .byte $8E   ; animation
- D 1 - I - 0x03BF4F 0E:BF3F: C8        .byte $C8   ; pos_X_hi
- D 1 - I - 0x03BF50 0E:BF40: 70        .byte $70   ; pos_Y_hi
- D 1 - I - 0x03BF51 0E:BF41: 01        .byte $01   ; facing
; 08 
- D 1 - I - 0x03BF52 0E:BF42: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x03BF53 0E:BF43: 04        .byte $04   ; animation
- D 1 - I - 0x03BF54 0E:BF44: 90        .byte $90   ; pos_X_hi
- D 1 - I - 0x03BF55 0E:BF45: 48        .byte $48   ; pos_Y_hi
- D 1 - I - 0x03BF56 0E:BF46: 01        .byte $01   ; facing
; 09 
- D 1 - I - 0x03BF57 0E:BF47: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x03BF58 0E:BF48: 04        .byte $04   ; animation
- D 1 - I - 0x03BF59 0E:BF49: D0        .byte $D0   ; pos_X_hi
- D 1 - I - 0x03BF5A 0E:BF4A: 48        .byte $48   ; pos_Y_hi
- D 1 - I - 0x03BF5B 0E:BF4B: 01        .byte $01   ; facing
; 0A 
- D 1 - I - 0x03BF5C 0E:BF4C: FF        .byte $FF   ; end token



_off038_0x03BF5D_01_Grant:
- D 1 - I - 0x03BF5D 0E:BF4D: 11        .byte $01 * $10 + $01   ; blk_hi + blk_lo
- D 1 - I - 0x03BF5E 0E:BF4E: 01        .byte $00 * $10 + $01   ; blk_fr + ?
- D 1 - I - 0x03BF5F 0E:BF4F: 00        .byte $00   ; 
- D 1 - I - 0x03BF60 0E:BF50: 02        .byte $02   ; Grant
; 00 
- D 1 - I - 0x03BF61 0E:BF51: 04        .byte con_obj_type_04   ; 
- D 1 - I - 0x03BF62 0E:BF52: 1C        .byte $1C   ; animation
- D 1 - I - 0x03BF63 0E:BF53: D8        .byte $D8   ; pos_X_hi
- D 1 - I - 0x03BF64 0E:BF54: 42        .byte $42   ; pos_Y_hi
- D 1 - I - 0x03BF65 0E:BF55: 00        .byte $00   ; facing
; 01 
- D 1 - I - 0x03BF66 0E:BF56: 00        .byte con_obj_type_00   ; 
- D 1 - I - 0x03BF67 0E:BF57: 4E        .byte $4E   ; animation
- D 1 - I - 0x03BF68 0E:BF58: A4        .byte $A4   ; pos_X_hi
- D 1 - I - 0x03BF69 0E:BF59: 42        .byte $42   ; pos_Y_hi
- D 1 - I - 0x03BF6A 0E:BF5A: 01        .byte $01   ; facing
; 02 
- D 1 - I - 0x03BF6B 0E:BF5B: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x03BF6C 0E:BF5C: B6        .byte $B6   ; animation
- D 1 - I - 0x03BF6D 0E:BF5D: 5F        .byte $5F   ; pos_X_hi
- D 1 - I - 0x03BF6E 0E:BF5E: 40        .byte $40   ; pos_Y_hi
- D 1 - I - 0x03BF6F 0E:BF5F: 00        .byte $00   ; facing
; 03 
- D 1 - I - 0x03BF70 0E:BF60: 0C        .byte con_obj_type_0C   ; 
- D 1 - I - 0x03BF71 0E:BF61: 3C        .byte $3C   ; animation
- D 1 - I - 0x03BF72 0E:BF62: 5B        .byte $5B   ; pos_X_hi
- D 1 - I - 0x03BF73 0E:BF63: B6        .byte $B6   ; pos_Y_hi
- D 1 - I - 0x03BF74 0E:BF64: 01        .byte $01   ; facing
; 04 
- D 1 - I - 0x03BF75 0E:BF65: 0C        .byte con_obj_type_0C   ; 
- D 1 - I - 0x03BF76 0E:BF66: 3A        .byte $3A   ; animation
- D 1 - I - 0x03BF77 0E:BF67: 46        .byte $46   ; pos_X_hi
- D 1 - I - 0x03BF78 0E:BF68: 9C        .byte $9C   ; pos_Y_hi
- D 1 - I - 0x03BF79 0E:BF69: 01        .byte $01   ; facing
; 05 
- D 1 - I - 0x03BF7A 0E:BF6A: 0C        .byte con_obj_type_0C   ; 
- D 1 - I - 0x03BF7B 0E:BF6B: 36        .byte $36   ; animation
- D 1 - I - 0x03BF7C 0E:BF6C: 26        .byte $26   ; pos_X_hi
- D 1 - I - 0x03BF7D 0E:BF6D: 8E        .byte $8E   ; pos_Y_hi
- D 1 - I - 0x03BF7E 0E:BF6E: 01        .byte $01   ; facing
; 06 
- D 1 - I - 0x03BF7F 0E:BF6F: 0C        .byte con_obj_type_0C   ; 
- D 1 - I - 0x03BF80 0E:BF70: 38        .byte $38   ; animation
- D 1 - I - 0x03BF81 0E:BF71: 08        .byte $08   ; pos_X_hi
- D 1 - I - 0x03BF82 0E:BF72: 93        .byte $93   ; pos_Y_hi
- D 1 - I - 0x03BF83 0E:BF73: 00        .byte $00   ; facing
; 07 
- D 1 - I - 0x03BF84 0E:BF74: FF        .byte $FF   ; end token



_off038_0x03BF85_02_Alucard:
- D 1 - I - 0x03BF85 0E:BF75: 81        .byte $08 * $10 + $01   ; blk_hi + blk_lo
- D 1 - I - 0x03BF86 0E:BF76: 03        .byte $00 * $10 + $03   ; blk_fr + ?
- D 1 - I - 0x03BF87 0E:BF77: 01        .byte $01   ; 
- D 1 - I - 0x03BF88 0E:BF78: 03        .byte $03   ; Alucard
; 00 
- D 1 - I - 0x03BF89 0E:BF79: 06        .byte con_obj_type_06   ; 
- D 1 - I - 0x03BF8A 0E:BF7A: 36        .byte $36   ; animation
- D 1 - I - 0x03BF8B 0E:BF7B: 1D        .byte $1D   ; pos_X_hi
- D 1 - I - 0x03BF8C 0E:BF7C: 75        .byte $75   ; pos_Y_hi
- D 1 - I - 0x03BF8D 0E:BF7D: 00        .byte $00   ; facing
; 01 
- D 1 - I - 0x03BF8E 0E:BF7E: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x03BF8F 0E:BF7F: 46        .byte $46   ; animation
- D 1 - I - 0x03BF90 0E:BF80: 56        .byte $56   ; pos_X_hi
- D 1 - I - 0x03BF91 0E:BF81: 49        .byte $49   ; pos_Y_hi
- D 1 - I - 0x03BF92 0E:BF82: 01        .byte $01   ; facing
; 02 
- D 1 - I - 0x03BF93 0E:BF83: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x03BF94 0E:BF84: 46        .byte $46   ; animation
- D 1 - I - 0x03BF95 0E:BF85: 63        .byte $63   ; pos_X_hi
- D 1 - I - 0x03BF96 0E:BF86: 71        .byte $71   ; pos_Y_hi
- D 1 - I - 0x03BF97 0E:BF87: 01        .byte $01   ; facing
; 03 
- D 1 - I - 0x03BF98 0E:BF88: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x03BF99 0E:BF89: 44        .byte $44   ; animation
- D 1 - I - 0x03BF9A 0E:BF8A: D0        .byte $D0   ; pos_X_hi
- D 1 - I - 0x03BF9B 0E:BF8B: 90        .byte $90   ; pos_Y_hi
- D 1 - I - 0x03BF9C 0E:BF8C: 01        .byte $01   ; facing
; 04 
- D 1 - I - 0x03BF9D 0E:BF8D: FF        .byte $FF   ; end token



_off038_0x03BF9E_04_Trevor:
- D 1 - I - 0x03BF9E 0E:BF8E: B1        .byte $0B * $10 + $01   ; blk_hi + blk_lo
- D 1 - I - 0x03BF9F 0E:BF8F: 02        .byte $00 * $10 + $02   ; blk_fr + ?
- D 1 - I - 0x03BFA0 0E:BF90: 00        .byte $00   ; 
- D 1 - I - 0x03BFA1 0E:BF91: 00        .byte $00   ; Trevor
; 00 
- D 1 - I - 0x03BFA2 0E:BF92: 00        .byte con_obj_type_00   ; 
- D 1 - I - 0x03BFA3 0E:BF93: 02        .byte $02   ; animation
- D 1 - I - 0x03BFA4 0E:BF94: B0        .byte $B0   ; pos_X_hi
- D 1 - I - 0x03BFA5 0E:BF95: A0        .byte $A0   ; pos_Y_hi
- D 1 - I - 0x03BFA6 0E:BF96: 01        .byte $01   ; facing
; 01 
- D 1 - I - 0x03BFA7 0E:BF97: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x03BFA8 0E:BF98: 32        .byte $32   ; animation
- D 1 - I - 0x03BFA9 0E:BF99: 48        .byte $48   ; pos_X_hi
- D 1 - I - 0x03BFAA 0E:BF9A: 50        .byte $50   ; pos_Y_hi
- D 1 - I - 0x03BFAB 0E:BF9B: 00        .byte $00   ; facing
; 02 
- D 1 - I - 0x03BFAC 0E:BF9C: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x03BFAD 0E:BF9D: 38        .byte $38   ; animation
- D 1 - I - 0x03BFAE 0E:BF9E: 70        .byte $70   ; pos_X_hi
- D 1 - I - 0x03BFAF 0E:BF9F: 4C        .byte $4C   ; pos_Y_hi
- D 1 - I - 0x03BFB0 0E:BFA0: 00        .byte $00   ; facing
; 03 
- D 1 - I - 0x03BFB1 0E:BFA1: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x03BFB2 0E:BFA2: 04        .byte $04   ; animation
- D 1 - I - 0x03BFB3 0E:BFA3: 58        .byte $58   ; pos_X_hi
- D 1 - I - 0x03BFB4 0E:BFA4: 7C        .byte $7C   ; pos_Y_hi
- D 1 - I - 0x03BFB5 0E:BFA5: 01        .byte $01   ; facing
; 04 
- D 1 - I - 0x03BFB6 0E:BFA6: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x03BFB7 0E:BFA7: 04        .byte $04   ; animation
- D 1 - I - 0x03BFB8 0E:BFA8: C0        .byte $C0   ; pos_X_hi
- D 1 - I - 0x03BFB9 0E:BFA9: 38        .byte $38   ; pos_Y_hi
- D 1 - I - 0x03BFBA 0E:BFAA: 01        .byte $01   ; facing
; 05 
- D 1 - I - 0x03BFBB 0E:BFAB: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x03BFBC 0E:BFAC: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03BFC0 0E:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03BFD0 0E:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03BFE0 0E:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03BFF0 0E:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C000 0E:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 9C: 0x%04X [%d]", ($C000 - *), ($C000 - *))



