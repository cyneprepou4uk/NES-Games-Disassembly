.segment "BANK_01"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x004010-0x00800F



.export sub_0x004010_update_camera_and_scroll_positions
.export ofs_0x004016_draw_field
.export sub_0x004019_scroll_field_during_gameplay
.export sub_0x00401C_scroll_field_after_goal
.export sub_0x00401F_update_cpu_tactics
.export sub_0x004022_give_task_to_player_from_his_table
.export ofs_0x004025_draw_bent_goal_net
.export sub_0x004028_show_controllable_indicators_for_players
.export sub_0x00402B_draw_animation
.export sub_0x00402E_set_animation
.export sub_0x004031_write_team_palette_to_buffer
.export sub_0x004034_decrease_game_timer
.export sub_0x004037_display_GOAL
.export sub_0x00403A_display_big_score
.export sub_0x00403D_set_base_stats_for_team_and_players
.export sub_0x004040_calculate_initial_player_speed
.export ofs_0x004043_spectators_palette_after_goal
.export sub_0x004046_calculate_cpu_decision_or_his_direction
.export sub_0x004049_prepare_behavior_tempate_for_cpu
.export sub_0x00404C
.export sub_0x00404F_calculate_ball_side_relative_to_gk
.export sub_0x004052_select_random_button_for_cpu_during_pk
.export sub_0x004055_calculate_tactics_data_pointer_based_on_area
.export sub_0x004058_update_behavior_template_pointer
.export sub_0x00405B_8B3F_calculate_cpu_chance_for_fast_shoot



sub_0x004010_update_camera_and_scroll_positions:
; bzk optimize
C D 0 - - - 0x004010 01:8000: 4C 4E 80  JMP loc_804E_update_camera_and_scroll_positions


; bzk garbage
- - - - - - 0x004013 01:8003: 4C 87 80  JMP loc_8087_calculate_reminder_after_dividing_by_F0



ofs_0x004016_draw_field:
; bzk optimize
C - - - - - 0x004016 01:8006: 4C A3 80  JMP loc_80A3_draw_field



sub_0x004019_scroll_field_during_gameplay:
; bzk optimize
C - - - - - 0x004019 01:8009: 4C D9 81  JMP loc_81D9_scroll_field_during_gameplay



sub_0x00401C_scroll_field_after_goal:
; bzk optimize
C - - - - - 0x00401C 01:800C: 4C 7E 82  JMP loc_827E_scroll_field_after_goal



sub_0x00401F_update_cpu_tactics:
; bzk optimize
C - - - - - 0x00401F 01:800F: 4C ED 87  JMP loc_87ED_update_cpu_tactics



sub_0x004022_give_task_to_player_from_his_table:
; bzk optimize
C - - - - - 0x004022 01:8012: 4C E0 88  JMP loc_88E0_give_task_to_player_from_his_table



ofs_0x004025_draw_bent_goal_net:
; bzk optimize
C - - - - - 0x004025 01:8015: 4C 96 85  JMP loc_8596_draw_bent_goal_net



sub_0x004028_show_controllable_indicators_for_players:
; bzk optimize
C - - - - - 0x004028 01:8018: 4C 3C 86  JMP loc_863C_show_controllable_indicators_for_players



sub_0x00402B_draw_animation:
; bzk optimize
C - - - - - 0x00402B 01:801B: 4C 96 86  JMP loc_8696_draw_animation



sub_0x00402E_set_animation:
; bzk optimize
C - - - - - 0x00402E 01:801E: 4C 8F 87  JMP loc_878F_set_animation



sub_0x004031_write_team_palette_to_buffer:
; bzk optimize
C - - - - - 0x004031 01:8021: 4C 21 85  JMP loc_8521_write_team_palette_to_buffer



sub_0x004034_decrease_game_timer:
; bzk optimize
C - - - - - 0x004034 01:8024: 4C 7D 84  JMP loc_847D_decrease_game_timer



sub_0x004037_display_GOAL:
; bzk optimize
C - - - - - 0x004037 01:8027: 4C AA 83  JMP loc_83AA_display_GOAL



sub_0x00403A_display_big_score:
; bzk optimize
C - - - - - 0x00403A 01:802A: 4C 61 83  JMP loc_8361_display_big_score



sub_0x00403D_set_base_stats_for_team_and_players:
; bzk optimize
C - - - - - 0x00403D 01:802D: 4C 71 8A  JMP loc_8A71_set_base_stats_for_team_and_players



sub_0x004040_calculate_initial_player_speed:
; bzk optimize
C - - - - - 0x004040 01:8030: 4C F3 89  JMP loc_89F3_calculate_initial_player_speed



ofs_0x004043_spectators_palette_after_goal:
; bzk optimize
C - - - - - 0x004043 01:8033: 4C 41 83  JMP loc_8341_spectators_palette_after_goal



sub_0x004046_calculate_cpu_decision_or_his_direction:
; bzk optimize
C - - - - - 0x004046 01:8036: 4C E8 8B  JMP loc_8BE8_calculate_cpu_decision_or_his_direction



sub_0x004049_prepare_behavior_tempate_for_cpu:
; bzk optimize
C - - - - - 0x004049 01:8039: 4C 1A 8D  JMP loc_8D1A_prepare_behavior_tempate_for_cpu



sub_0x00404C:
; bzk optimize
C - - - - - 0x00404C 01:803C: 4C DC 8B  JMP loc_8BDC



sub_0x00404F_calculate_ball_side_relative_to_gk:
; bzk optimize
C - - - - - 0x00404F 01:803F: 4C 6B 8B  JMP loc_8B6B_calculate_ball_side_relative_to_gk



sub_0x004052_select_random_button_for_cpu_during_pk:
; bzk optimize
C - - - - - 0x004052 01:8042: 4C 24 8B  JMP loc_8B24_select_random_button_for_cpu_during_pk



sub_0x004055_calculate_tactics_data_pointer_based_on_area:
; bzk optimize
C - - - - - 0x004055 01:8045: 4C 6C 88  JMP loc_886C_calculate_tactics_data_pointer_based_on_area



sub_0x004058_update_behavior_template_pointer:
; bzk optimize
C - - - - - 0x004058 01:8048: 4C B2 88  JMP loc_88B2_update_behavior_template_pointer



sub_0x00405B_8B3F_calculate_cpu_chance_for_fast_shoot:
; bzk optimize
C - - - - - 0x00405B 01:804B: 4C 3F 8B  JMP loc_8B3F_calculate_cpu_chance_for_fast_shoot



loc_804E_update_camera_and_scroll_positions:
C D 0 - - - 0x00405E 01:804E: A9 00     LDA #$00
C - - - - - 0x004060 01:8050: 85 2A     STA ram_002A_temp
C - - - - - 0x004062 01:8052: AD 29 04  LDA ram_player_with_ball
C - - - - - 0x004065 01:8055: 10 02     BPL bra_8059
C - - - - - 0x004067 01:8057: A9 16     LDA #$16
bra_8059:
C - - - - - 0x004069 01:8059: 20 57 C0  JSR sub_0x00C067_set_player_base_address_pointer
C - - - - - 0x00406C 01:805C: 38        SEC
C - - - - - 0x00406D 01:805D: A0 05     LDY #con_plr_pos_X_lo
C - - - - - 0x00406F 01:805F: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004071 01:8061: E9 80     SBC #< $0080
C - - - - - 0x004073 01:8063: AA        TAX
C - - - - - 0x004074 01:8064: C8        INY
C - - - - - 0x004075 01:8065: C8        INY ; con_plr_pos_X_hi
C - - - - - 0x004076 01:8066: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004078 01:8068: E9 00     SBC #> $0080
C - - - - - 0x00407A 01:806A: 30 06     BMI bra_8072
C - - - - - 0x00407C 01:806C: C9 01     CMP #$01
C - - - - - 0x00407E 01:806E: 90 04     BCC bra_8074
C - - - - - 0x004080 01:8070: E6 2A     INC ram_002A_temp
bra_8072:
C - - - - - 0x004082 01:8072: A2 00     LDX #$00
bra_8074:
C - - - - - 0x004084 01:8074: 8E B7 03  STX ram_03B7
C - - - - - 0x004087 01:8077: 86 3A     STX ram_scroll_X
C - - - - - 0x004089 01:8079: A5 2A     LDA ram_002A_temp
C - - - - - 0x00408B 01:807B: 8D B8 03  STA ram_03B8
C - - - - - 0x00408E 01:807E: A5 28     LDA ram_for_2000
C - - - - - 0x004090 01:8080: 29 FE     AND #$FE
C - - - - - 0x004092 01:8082: 05 2A     ORA ram_002A_temp
C - - - - - 0x004094 01:8084: 85 28     STA ram_for_2000
C - - - - - 0x004096 01:8086: 60        RTS



sub_8087_calculate_reminder_after_dividing_by_F0:
loc_8087_calculate_reminder_after_dividing_by_F0:
C - - - - - 0x004097 01:8087: A9 00     LDA #$00
bra_8089:
C - - - - - 0x004099 01:8089: 48        PHA
C - - - - - 0x00409A 01:808A: 38        SEC
C - - - - - 0x00409B 01:808B: 8A        TXA
C - - - - - 0x00409C 01:808C: E9 F0     SBC #< $00F0
C - - - - - 0x00409E 01:808E: 48        PHA
C - - - - - 0x00409F 01:808F: 98        TYA
C - - - - - 0x0040A0 01:8090: E9 00     SBC #> $00F0
C - - - - - 0x0040A2 01:8092: 48        PHA
C - - - - - 0x0040A3 01:8093: 90 09     BCC bra_809E
C - - - - - 0x0040A5 01:8095: 68        PLA
C - - - - - 0x0040A6 01:8096: A8        TAY
C - - - - - 0x0040A7 01:8097: 68        PLA
C - - - - - 0x0040A8 01:8098: AA        TAX
C - - - - - 0x0040A9 01:8099: 68        PLA
C - - - - - 0x0040AA 01:809A: 69 00     ADC #$00
C - - - - - 0x0040AC 01:809C: D0 EB     BNE bra_8089
bra_809E:
C - - - - - 0x0040AE 01:809E: 68        PLA
C - - - - - 0x0040AF 01:809F: 68        PLA
C - - - - - 0x0040B0 01:80A0: 68        PLA
C - - - - - 0x0040B1 01:80A1: A8        TAY
C - - - - - 0x0040B2 01:80A2: 60        RTS



loc_80A3_draw_field:
loc_80A3_loop:
C D 0 - - - 0x0040B3 01:80A3: A9 01     LDA #$01
C - - - - - 0x0040B5 01:80A5: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0040B8 01:80A8: A9 00     LDA #$00
C - - - - - 0x0040BA 01:80AA: 85 2C     STA ram_002C_temp
C - - - - - 0x0040BC 01:80AC: 38        SEC
C - - - - - 0x0040BD 01:80AD: AD BC 03  LDA ram_03BC
C - - - - - 0x0040C0 01:80B0: ED C0 03  SBC ram_03C0
C - - - - - 0x0040C3 01:80B3: AA        TAX
C - - - - - 0x0040C4 01:80B4: AD BD 03  LDA ram_03BD
C - - - - - 0x0040C7 01:80B7: ED C1 03  SBC ram_03C1
C - - - - - 0x0040CA 01:80BA: A8        TAY
C - - - - - 0x0040CB 01:80BB: 10 05     BPL bra_80C2
C - - - - - 0x0040CD 01:80BD: C6 2C     DEC ram_002C_temp
C - - - - - 0x0040CF 01:80BF: 20 42 C0  JSR sub_0x00C052_EOR_16bit
bra_80C2:
C - - - - - 0x0040D2 01:80C2: 98        TYA
C - - - - - 0x0040D3 01:80C3: D0 07     BNE bra_80CC
C - - - - - 0x0040D5 01:80C5: E0 10     CPX #$10
C - - - - - 0x0040D7 01:80C7: B0 03     BCS bra_80CC
C - - - - - 0x0040D9 01:80C9: 4C A3 80  JMP loc_80A3_loop
bra_80CC:
C - - - - - 0x0040DC 01:80CC: A2 10     LDX #$10
C - - - - - 0x0040DE 01:80CE: A0 00     LDY #$00
C - - - - - 0x0040E0 01:80D0: 24 2C     BIT ram_002C_temp
C - - - - - 0x0040E2 01:80D2: 10 03     BPL bra_80D7
C - - - - - 0x0040E4 01:80D4: 20 42 C0  JSR sub_0x00C052_EOR_16bit
bra_80D7:
C - - - - - 0x0040E7 01:80D7: 8A        TXA
C - - - - - 0x0040E8 01:80D8: 18        CLC
C - - - - - 0x0040E9 01:80D9: 6D C0 03  ADC ram_03C0
C - - - - - 0x0040EC 01:80DC: 29 F0     AND #$F0
C - - - - - 0x0040EE 01:80DE: 8D C0 03  STA ram_03C0
C - - - - - 0x0040F1 01:80E1: AA        TAX
C - - - - - 0x0040F2 01:80E2: 98        TYA
C - - - - - 0x0040F3 01:80E3: 6D C1 03  ADC ram_03C1
C - - - - - 0x0040F6 01:80E6: 8D C1 03  STA ram_03C1
C - - - - - 0x0040F9 01:80E9: A8        TAY
C - - - - - 0x0040FA 01:80EA: 20 87 80  JSR sub_8087_calculate_reminder_after_dividing_by_F0
C - - - - - 0x0040FD 01:80ED: 86 2A     STX ram_002A_temp
C - - - - - 0x0040FF 01:80EF: 84 2B     STY ram_002B_temp
C - - - - - 0x004101 01:80F1: 24 2C     BIT ram_002C_temp
C - - - - - 0x004103 01:80F3: 30 12     BMI bra_8107
C - - - - - 0x004105 01:80F5: A5 2A     LDA ram_002A_temp
C - - - - - 0x004107 01:80F7: 18        CLC
C - - - - - 0x004108 01:80F8: 69 E0     ADC #$E0
C - - - - - 0x00410A 01:80FA: B0 04     BCS bra_8100
C - - - - - 0x00410C 01:80FC: C9 F0     CMP #$F0
C - - - - - 0x00410E 01:80FE: D0 05     BNE bra_8105
bra_8100:
C - - - - - 0x004110 01:8100: E6 2B     INC ram_002B_temp
C - - - - - 0x004112 01:8102: 18        CLC
C - - - - - 0x004113 01:8103: 69 10     ADC #$10
bra_8105:
C - - - - - 0x004115 01:8105: 85 2A     STA ram_002A_temp
bra_8107:
C - - - - - 0x004117 01:8107: A5 2A     LDA ram_002A_temp
C - - - - - 0x004119 01:8109: 8D C3 03  STA ram_03C3
C - - - - - 0x00411C 01:810C: A5 2B     LDA ram_002B_temp
C - - - - - 0x00411E 01:810E: 8D C4 03  STA ram_03C4
C - - - - - 0x004121 01:8111: 46 2B     LSR ram_002B_temp
C - - - - - 0x004123 01:8113: 66 2A     ROR ram_002A_temp
C - - - - - 0x004125 01:8115: A5 2A     LDA ram_002A_temp
C - - - - - 0x004127 01:8117: 18        CLC
C - - - - - 0x004128 01:8118: 69 3E     ADC #< tbl_8D3E
C - - - - - 0x00412A 01:811A: 85 59     STA ram_0059_temp
C - - - - - 0x00412C 01:811C: A5 2B     LDA ram_002B_temp
C - - - - - 0x00412E 01:811E: 69 8D     ADC #> tbl_8D3E
C - - - - - 0x004130 01:8120: 85 5A     STA ram_005A_temp
C - - - - - 0x004132 01:8122: A9 08     LDA #$08
C - - - - - 0x004134 01:8124: 8D C6 03  STA ram_03C6
C - - - - - 0x004137 01:8127: AD C3 03  LDA ram_03C3
C - - - - - 0x00413A 01:812A: 0A        ASL
C - - - - - 0x00413B 01:812B: 2E C6 03  ROL ram_03C6
C - - - - - 0x00413E 01:812E: 0A        ASL
C - - - - - 0x00413F 01:812F: 2E C6 03  ROL ram_03C6
C - - - - - 0x004142 01:8132: 8D C5 03  STA ram_03C5
bra_8135:
C - - - - - 0x004145 01:8135: A9 01     LDA #$01
C - - - - - 0x004147 01:8137: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x00414A 01:813A: AD 7D 03  LDA ram_037D
C - - - - - 0x00414D 01:813D: D0 F6     BNE bra_8135
C - - - - - 0x00414F 01:813F: A9 01     LDA #$01
C - - - - - 0x004151 01:8141: 8D 7D 03  STA ram_037D
C - - - - - 0x004154 01:8144: AD C4 03  LDA ram_03C4
C - - - - - 0x004157 01:8147: 85 2A     STA ram_002A_temp
C - - - - - 0x004159 01:8149: AD C3 03  LDA ram_03C3
C - - - - - 0x00415C 01:814C: 46 2A     LSR ram_002A_temp
C - - - - - 0x00415E 01:814E: 6A        ROR
C - - - - - 0x00415F 01:814F: 46 2A     LSR ram_002A_temp
C - - - - - 0x004161 01:8151: 6A        ROR
C - - - - - 0x004162 01:8152: 46 2A     LSR ram_002A_temp
C - - - - - 0x004164 01:8154: 6A        ROR
C - - - - - 0x004165 01:8155: 46 2A     LSR ram_002A_temp
C - - - - - 0x004167 01:8157: 6A        ROR
C - - - - - 0x004168 01:8158: 46 2A     LSR ram_002A_temp
C - - - - - 0x00416A 01:815A: 6A        ROR
C - - - - - 0x00416B 01:815B: AA        TAX
C - - - - - 0x00416C 01:815C: BD 66 8F  LDA tbl_8F66,X
C - - - - - 0x00416F 01:815F: 48        PHA
C - - - - - 0x004170 01:8160: A9 08     LDA #$08
C - - - - - 0x004172 01:8162: 8D 0D 03  STA ram_030D
C - - - - - 0x004175 01:8165: 8D 18 03  STA ram_0318
C - - - - - 0x004178 01:8168: AD C3 03  LDA ram_03C3
C - - - - - 0x00417B 01:816B: 29 E0     AND #$E0
C - - - - - 0x00417D 01:816D: 4A        LSR
C - - - - - 0x00417E 01:816E: 4A        LSR
C - - - - - 0x00417F 01:816F: 09 C0     ORA #$C0
C - - - - - 0x004181 01:8171: 8D 0E 03  STA ram_030E
C - - - - - 0x004184 01:8174: 8D 19 03  STA ram_0319
C - - - - - 0x004187 01:8177: A9 23     LDA #$23
C - - - - - 0x004189 01:8179: 8D 0F 03  STA ram_030F
C - - - - - 0x00418C 01:817C: A9 27     LDA #$27
C - - - - - 0x00418E 01:817E: 8D 1A 03  STA ram_031A
C - - - - - 0x004191 01:8181: A2 00     LDX #$00
C - - - - - 0x004193 01:8183: 68        PLA
bra_8184:
C - - - - - 0x004194 01:8184: 9D 10 03  STA ram_0310,X
C - - - - - 0x004197 01:8187: 9D 1B 03  STA ram_031B,X
C - - - - - 0x00419A 01:818A: E8        INX
C - - - - - 0x00419B 01:818B: E0 08     CPX #$08
C - - - - - 0x00419D 01:818D: D0 F5     BNE bra_8184
C - - - - - 0x00419F 01:818F: A9 00     LDA #$00
C - - - - - 0x0041A1 01:8191: 8D 23 03  STA ram_0323
C - - - - - 0x0041A4 01:8194: A9 80     LDA #$80
C - - - - - 0x0041A6 01:8196: 8D 7D 03  STA ram_037D
C - - - - - 0x0041A9 01:8199: A9 00     LDA #$00
C - - - - - 0x0041AB 01:819B: 8D C7 03  STA ram_03C7
bra_819E:
loc_819E:
C D 0 - - - 0x0041AE 01:819E: A9 01     LDA #$01
C - - - - - 0x0041B0 01:81A0: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0041B3 01:81A3: AD 7D 03  LDA ram_037D
C - - - - - 0x0041B6 01:81A6: D0 F6     BNE bra_819E
C - - - - - 0x0041B8 01:81A8: A9 01     LDA #$01
C - - - - - 0x0041BA 01:81AA: 8D 7D 03  STA ram_037D
C - - - - - 0x0041BD 01:81AD: A9 00     LDA #$00
C - - - - - 0x0041BF 01:81AF: 85 2C     STA ram_002C_temp
C - - - - - 0x0041C1 01:81B1: AC C7 03  LDY ram_03C7
C - - - - - 0x0041C4 01:81B4: 20 B4 82  JSR sub_82B4
C - - - - - 0x0041C7 01:81B7: F0 18     BEQ bra_81D1
C - - - - - 0x0041C9 01:81B9: AC C7 03  LDY ram_03C7
C - - - - - 0x0041CC 01:81BC: 20 B4 82  JSR sub_82B4
C - - - - - 0x0041CF 01:81BF: F0 10     BEQ bra_81D1
C - - - - - 0x0041D1 01:81C1: AC C7 03  LDY ram_03C7
C - - - - - 0x0041D4 01:81C4: 20 B4 82  JSR sub_82B4
C - - - - - 0x0041D7 01:81C7: F0 08     BEQ bra_81D1
C - - - - - 0x0041D9 01:81C9: A9 80     LDA #$80
C - - - - - 0x0041DB 01:81CB: 8D 7D 03  STA ram_037D
C - - - - - 0x0041DE 01:81CE: 4C 9E 81  JMP loc_819E
bra_81D1:
C - - - - - 0x0041E1 01:81D1: A9 80     LDA #$80
C - - - - - 0x0041E3 01:81D3: 8D 7D 03  STA ram_037D
C - - - - - 0x0041E6 01:81D6: 4C A3 80  JMP loc_80A3_loop



loc_81D9_scroll_field_during_gameplay:
C D 0 - - - 0x0041E9 01:81D9: AD 29 04  LDA ram_player_with_ball
C - - - - - 0x0041EC 01:81DC: 10 02     BPL bra_81E0
C - - - - - 0x0041EE 01:81DE: A9 16     LDA #$16
bra_81E0:
C - - - - - 0x0041F0 01:81E0: 20 57 C0  JSR sub_0x00C067_set_player_base_address_pointer
C - - - - - 0x0041F3 01:81E3: A0 0B     LDY #con_plr_pos_Y_lo
C - - - - - 0x0041F5 01:81E5: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0041F7 01:81E7: 38        SEC
C - - - - - 0x0041F8 01:81E8: E9 78     SBC #< $0078
C - - - - - 0x0041FA 01:81EA: AA        TAX
C - - - - - 0x0041FB 01:81EB: C8        INY
C - - - - - 0x0041FC 01:81EC: C8        INY ; con_plr_pos_Y_hi
C - - - - - 0x0041FD 01:81ED: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0041FF 01:81EF: E9 00     SBC #> $0078
C - - - - - 0x004201 01:81F1: A8        TAY
C - - - - - 0x004202 01:81F2: 8A        TXA
C - - - - - 0x004203 01:81F3: 38        SEC
C - - - - - 0x004204 01:81F4: E9 40     SBC #< $0040
C - - - - - 0x004206 01:81F6: 98        TYA
C - - - - - 0x004207 01:81F7: E9 00     SBC #> $0040
C - - - - - 0x004209 01:81F9: 10 06     BPL bra_8201
C - - - - - 0x00420B 01:81FB: A2 40     LDX #$40
C - - - - - 0x00420D 01:81FD: A0 00     LDY #$00
C - - - - - 0x00420F 01:81FF: F0 0D     BEQ bra_820E
bra_8201:
C - - - - - 0x004211 01:8201: 8A        TXA
C - - - - - 0x004212 01:8202: 38        SEC
C - - - - - 0x004213 01:8203: E9 D0     SBC #$D0
C - - - - - 0x004215 01:8205: 98        TYA
C - - - - - 0x004216 01:8206: E9 02     SBC #$02
C - - - - - 0x004218 01:8208: 30 04     BMI bra_820E
C - - - - - 0x00421A 01:820A: A2 D0     LDX #$D0
C - - - - - 0x00421C 01:820C: A0 02     LDY #$02
bra_820E:
C - - - - - 0x00421E 01:820E: 8E BE 03  STX ram_03BE
C - - - - - 0x004221 01:8211: 8C BF 03  STY ram_03BF
C - - - - - 0x004224 01:8214: A9 00     LDA #$00
C - - - - - 0x004226 01:8216: 85 2A     STA ram_002A_temp
C - - - - - 0x004228 01:8218: AD BE 03  LDA ram_03BE
C - - - - - 0x00422B 01:821B: 38        SEC
C - - - - - 0x00422C 01:821C: ED BC 03  SBC ram_03BC
C - - - - - 0x00422F 01:821F: AA        TAX
C - - - - - 0x004230 01:8220: AD BF 03  LDA ram_03BF
C - - - - - 0x004233 01:8223: ED BD 03  SBC ram_03BD
C - - - - - 0x004236 01:8226: A8        TAY
C - - - - - 0x004237 01:8227: 08        PHP
C - - - - - 0x004238 01:8228: 10 03     BPL bra_822D
C - - - - - 0x00423A 01:822A: 20 42 C0  JSR sub_0x00C052_EOR_16bit
bra_822D:
C - - - - - 0x00423D 01:822D: A9 00     LDA #$00
C - - - - - 0x00423F 01:822F: 8D C2 03  STA ram_03C2
C - - - - - 0x004242 01:8232: 98        TYA
C - - - - - 0x004243 01:8233: D0 09     BNE bra_823E
C - - - - - 0x004245 01:8235: 8A        TXA
C - - - - - 0x004246 01:8236: D0 02     BNE bra_823A
C - - - - - 0x004248 01:8238: 28        PLP
C - - - - - 0x004249 01:8239: 60        RTS
bra_823A:
C - - - - - 0x00424A 01:823A: E0 04     CPX #$04
C - - - - - 0x00424C 01:823C: 90 08     BCC bra_8246
bra_823E:
C - - - - - 0x00424E 01:823E: A9 20     LDA #$20
C - - - - - 0x004250 01:8240: 85 2A     STA ram_002A_temp
C - - - - - 0x004252 01:8242: A2 03     LDX #$03
C - - - - - 0x004254 01:8244: A0 00     LDY #$00
bra_8246:
C - - - - - 0x004256 01:8246: A9 80     LDA #$80
C - - - - - 0x004258 01:8248: 8D C2 03  STA ram_03C2
C - - - - - 0x00425B 01:824B: 28        PLP
C - - - - - 0x00425C 01:824C: 10 16     BPL bra_8264
C - - - - - 0x00425E 01:824E: A5 2A     LDA ram_002A_temp
C - - - - - 0x004260 01:8250: 49 FF     EOR #$FF
C - - - - - 0x004262 01:8252: 85 2A     STA ram_002A_temp
C - - - - - 0x004264 01:8254: 8A        TXA
C - - - - - 0x004265 01:8255: 49 FF     EOR #$FF
C - - - - - 0x004267 01:8257: AA        TAX
C - - - - - 0x004268 01:8258: 98        TYA
C - - - - - 0x004269 01:8259: 49 FF     EOR #$FF
C - - - - - 0x00426B 01:825B: A8        TAY
C - - - - - 0x00426C 01:825C: E6 2A     INC ram_002A_temp
C - - - - - 0x00426E 01:825E: D0 04     BNE bra_8264
C - - - - - 0x004270 01:8260: E8        INX
C - - - - - 0x004271 01:8261: D0 01     BNE bra_8264
- - - - - - 0x004273 01:8263: C8        INY
bra_8264:
C - - - - - 0x004274 01:8264: A5 2A     LDA ram_002A_temp
C - - - - - 0x004276 01:8266: 18        CLC
C - - - - - 0x004277 01:8267: 6D BB 03  ADC ram_03BB
C - - - - - 0x00427A 01:826A: 8D BB 03  STA ram_03BB
C - - - - - 0x00427D 01:826D: 8A        TXA
C - - - - - 0x00427E 01:826E: 6D BC 03  ADC ram_03BC
C - - - - - 0x004281 01:8271: 8D BC 03  STA ram_03BC
C - - - - - 0x004284 01:8274: 98        TYA
C - - - - - 0x004285 01:8275: 6D BD 03  ADC ram_03BD
C - - - - - 0x004288 01:8278: 8D BD 03  STA ram_03BD
C - - - - - 0x00428B 01:827B: 8C B9 03  STY ram_03B9
loc_827E_scroll_field_after_goal:
C D 0 - - - 0x00428E 01:827E: AE BC 03  LDX ram_03BC
C - - - - - 0x004291 01:8281: AC BD 03  LDY ram_03BD
C - - - - - 0x004294 01:8284: 20 87 80  JSR sub_8087_calculate_reminder_after_dividing_by_F0
C - - - - - 0x004297 01:8287: 86 3B     STX ram_scroll_Y
C - - - - - 0x004299 01:8289: A2 00     LDX #$00
bra_828B_loop:
C - - - - - 0x00429B 01:828B: 38        SEC
C - - - - - 0x00429C 01:828C: AD BC 03  LDA ram_03BC
C - - - - - 0x00429F 01:828F: FD AB 82  SBC tbl_82AB,X
C - - - - - 0x0042A2 01:8292: AD BD 03  LDA ram_03BD
C - - - - - 0x0042A5 01:8295: FD AC 82  SBC tbl_82AC,X
C - - - - - 0x0042A8 01:8298: 90 04     BCC bra_829E
C - - - - - 0x0042AA 01:829A: E8        INX
C - - - - - 0x0042AB 01:829B: E8        INX
C - - - - - 0x0042AC 01:829C: D0 ED     BNE bra_828B_loop    ; jmp
bra_829E:
C - - - - - 0x0042AE 01:829E: 8A        TXA
C - - - - - 0x0042AF 01:829F: 4A        LSR
C - - - - - 0x0042B0 01:82A0: AA        TAX
C - - - - - 0x0042B1 01:82A1: BD B1 82  LDA tbl_82B1,X
C - - - - - 0x0042B4 01:82A4: 85 69     STA ram_chr_bank
C - - - - - 0x0042B6 01:82A6: A9 02     LDA #$02
C - - - - - 0x0042B8 01:82A8: 85 6A     STA ram_chr_bank + $01
C - - - - - 0x0042BA 01:82AA: 60        RTS



tbl_82AB:
- D 0 - - - 0x0042BB 01:82AB: E0        .byte $E0   ; 
tbl_82AC:
- D 0 - - - 0x0042BC 01:82AC: 00        .byte $00   ; 
- D 0 - - - 0x0042BD 01:82AD: 40        .byte $40   ; 
- D 0 - - - 0x0042BE 01:82AE: 02        .byte $02   ; 
- D 0 - - - 0x0042BF 01:82AF: 00        .byte $00   ; 
- D 0 - - - 0x0042C0 01:82B0: 30        .byte $30   ; 



tbl_82B1:
- D 0 - - - 0x0042C1 01:82B1: 20        .byte $20   ; 
- D 0 - - - 0x0042C2 01:82B2: 00        .byte $00   ; 
- D 0 - - - 0x0042C3 01:82B3: 22        .byte $22   ; 



sub_82B4:
C - - - - - 0x0042C4 01:82B4: A9 00     LDA #$00
C - - - - - 0x0042C6 01:82B6: 85 2B     STA ram_002B_temp
C - - - - - 0x0042C8 01:82B8: B1 59     LDA (ram_0059_temp),Y
C - - - - - 0x0042CA 01:82BA: 0A        ASL
C - - - - - 0x0042CB 01:82BB: 26 2B     ROL ram_002B_temp
C - - - - - 0x0042CD 01:82BD: 0A        ASL
C - - - - - 0x0042CE 01:82BE: 26 2B     ROL ram_002B_temp
C - - - - - 0x0042D0 01:82C0: 0A        ASL
C - - - - - 0x0042D1 01:82C1: 26 2B     ROL ram_002B_temp
C - - - - - 0x0042D3 01:82C3: 0A        ASL
C - - - - - 0x0042D4 01:82C4: 26 2B     ROL ram_002B_temp
C - - - - - 0x0042D6 01:82C6: 69 26     ADC #< tbl_9026
C - - - - - 0x0042D8 01:82C8: 85 2A     STA ram_002A_temp
C - - - - - 0x0042DA 01:82CA: A5 2B     LDA ram_002B_temp
C - - - - - 0x0042DC 01:82CC: 69 90     ADC #> tbl_9026
C - - - - - 0x0042DE 01:82CE: 85 2B     STA ram_002B_temp
C - - - - - 0x0042E0 01:82D0: A6 2C     LDX ram_002C_temp
C - - - - - 0x0042E2 01:82D2: A9 08     LDA #$08
C - - - - - 0x0042E4 01:82D4: 9D 0D 03  STA ram_030D,X
C - - - - - 0x0042E7 01:82D7: 9D 18 03  STA ram_0318,X
C - - - - - 0x0042EA 01:82DA: AD C7 03  LDA ram_03C7
C - - - - - 0x0042ED 01:82DD: 0A        ASL
C - - - - - 0x0042EE 01:82DE: A8        TAY
C - - - - - 0x0042EF 01:82DF: B9 31 83  LDA tbl_8331,Y
C - - - - - 0x0042F2 01:82E2: 18        CLC
C - - - - - 0x0042F3 01:82E3: 6D C5 03  ADC ram_03C5
C - - - - - 0x0042F6 01:82E6: 9D 0E 03  STA ram_030E,X
C - - - - - 0x0042F9 01:82E9: B9 32 83  LDA tbl_8332,Y
C - - - - - 0x0042FC 01:82EC: 6D C6 03  ADC ram_03C6
C - - - - - 0x0042FF 01:82EF: 9D 0F 03  STA ram_030F,X
C - - - - - 0x004302 01:82F2: 48        PHA
C - - - - - 0x004303 01:82F3: BD 0E 03  LDA ram_030E,X
C - - - - - 0x004306 01:82F6: 18        CLC
C - - - - - 0x004307 01:82F7: 69 20     ADC #< $0020
C - - - - - 0x004309 01:82F9: 9D 19 03  STA ram_0319,X
C - - - - - 0x00430C 01:82FC: 68        PLA
C - - - - - 0x00430D 01:82FD: 69 00     ADC #> $0020
C - - - - - 0x00430F 01:82FF: 9D 1A 03  STA ram_031A,X
C - - - - - 0x004312 01:8302: A0 00     LDY #$00
C - - - - - 0x004314 01:8304: 20 1A 83  JSR sub_831A
C - - - - - 0x004317 01:8307: 20 1A 83  JSR sub_831A
C - - - - - 0x00431A 01:830A: A9 00     LDA #$00
C - - - - - 0x00431C 01:830C: 9D 0D 03  STA ram_030D,X
C - - - - - 0x00431F 01:830F: 86 2C     STX ram_002C_temp
C - - - - - 0x004321 01:8311: EE C7 03  INC ram_03C7
C - - - - - 0x004324 01:8314: AD C7 03  LDA ram_03C7
C - - - - - 0x004327 01:8317: C9 08     CMP #$08
C - - - - - 0x004329 01:8319: 60        RTS



sub_831A:
C - - - - - 0x00432A 01:831A: A6 2C     LDX ram_002C_temp
C - - - - - 0x00432C 01:831C: A9 08     LDA #$08
C - - - - - 0x00432E 01:831E: 85 2D     STA ram_002D_temp
bra_8320_loop:
C - - - - - 0x004330 01:8320: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004332 01:8322: 9D 10 03  STA ram_0310,X
C - - - - - 0x004335 01:8325: C8        INY
C - - - - - 0x004336 01:8326: E8        INX
C - - - - - 0x004337 01:8327: C6 2D     DEC ram_002D_temp
C - - - - - 0x004339 01:8329: D0 F5     BNE bra_8320_loop
C - - - - - 0x00433B 01:832B: E8        INX
C - - - - - 0x00433C 01:832C: E8        INX
C - - - - - 0x00433D 01:832D: E8        INX
C - - - - - 0x00433E 01:832E: 86 2C     STX ram_002C_temp
C - - - - - 0x004340 01:8330: 60        RTS



tbl_8331:
- D 0 - - - 0x004341 01:8331: 00        .byte $00   ; 
tbl_8332:
- D 0 - - - 0x004342 01:8332: 00        .byte $00   ; 
- D 0 - - - 0x004343 01:8333: 08        .byte $08   ; 
- D 0 - - - 0x004344 01:8334: 00        .byte $00   ; 
- D 0 - - - 0x004345 01:8335: 10        .byte $10   ; 
- D 0 - - - 0x004346 01:8336: 00        .byte $00   ; 
- D 0 - - - 0x004347 01:8337: 18        .byte $18   ; 
- D 0 - - - 0x004348 01:8338: 00        .byte $00   ; 
- D 0 - - - 0x004349 01:8339: 00        .byte $00   ; 
- D 0 - - - 0x00434A 01:833A: 04        .byte $04   ; 
- D 0 - - - 0x00434B 01:833B: 08        .byte $08   ; 
- D 0 - - - 0x00434C 01:833C: 04        .byte $04   ; 
- D 0 - - - 0x00434D 01:833D: 10        .byte $10   ; 
- D 0 - - - 0x00434E 01:833E: 04        .byte $04   ; 
- D 0 - - - 0x00434F 01:833F: 18        .byte $18   ; 
- D 0 - - - 0x004350 01:8340: 04        .byte $04   ; 



loc_8341_spectators_palette_after_goal:
C D 0 - - - 0x004351 01:8341: A9 21     LDA #$21
loc_8343_loop:
C D 0 - - - 0x004353 01:8343: 48        PHA
C - - - - - 0x004354 01:8344: 20 78 C0  JSR sub_0x00C088
- D 0 - I - 0x004357 01:8347: 80 03     .word ram_0380
C - - - - - 0x004359 01:8349: A9 04     LDA #$04
C - - - - - 0x00435B 01:834B: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x00435E 01:834E: 68        PLA
C - - - - - 0x00435F 01:834F: 8D 89 03  STA ram_0389
C - - - - - 0x004362 01:8352: 8D 8D 03  STA ram_038D
C - - - - - 0x004365 01:8355: 18        CLC
C - - - - - 0x004366 01:8356: 69 01     ADC #$01
C - - - - - 0x004368 01:8358: C9 2D     CMP #$2D
C - - - - - 0x00436A 01:835A: D0 02     BNE bra_835E
C - - - - - 0x00436C 01:835C: A9 21     LDA #$21
bra_835E:
C - - - - - 0x00436E 01:835E: 4C 43 83  JMP loc_8343_loop



loc_8361_display_big_score:
C D 0 - - - 0x004371 01:8361: 20 51 C0  JSR sub_0x00C061_hide_all_sprites
C - - - - - 0x004374 01:8364: A9 00     LDA #$00
C - - - - - 0x004376 01:8366: 85 5B     STA ram_index_oam
C - - - - - 0x004378 01:8368: A2 00     LDX #$00
C - - - - - 0x00437A 01:836A: 20 73 83  JSR sub_8373
C - - - - - 0x00437D 01:836D: A2 01     LDX #$01
C - - - - - 0x00437F 01:836F: 20 73 83  JSR sub_8373
C - - - - - 0x004382 01:8372: 60        RTS



sub_8373:
C - - - - - 0x004383 01:8373: 86 39     STX ram_0039_temp
C - - - - - 0x004385 01:8375: BD A7 03  LDA ram_goals_total,X
C - - - - - 0x004388 01:8378: A0 00     LDY #$00
bra_837A:
C - - - - - 0x00438A 01:837A: C9 0A     CMP #$0A
C - - - - - 0x00438C 01:837C: 90 05     BCC bra_8383
C - - - - - 0x00438E 01:837E: E9 0A     SBC #$0A
C - - - - - 0x004390 01:8380: C8        INY
C - - - - - 0x004391 01:8381: D0 F7     BNE bra_837A
bra_8383:
C - - - - - 0x004393 01:8383: 48        PHA
C - - - - - 0x004394 01:8384: 98        TYA
C - - - - - 0x004395 01:8385: 48        PHA
C - - - - - 0x004396 01:8386: 06 39     ASL ram_0039_temp
C - - - - - 0x004398 01:8388: A6 39     LDX ram_0039_temp
C - - - - - 0x00439A 01:838A: BD A6 83  LDA tbl_83A6,X
C - - - - - 0x00439D 01:838D: BC A7 83  LDY tbl_83A7,X
C - - - - - 0x0043A0 01:8390: AA        TAX
C - - - - - 0x0043A1 01:8391: 68        PLA
C - - - - - 0x0043A2 01:8392: 20 F5 83  JSR sub_83F5
C - - - - - 0x0043A5 01:8395: A6 39     LDX ram_0039_temp
C - - - - - 0x0043A7 01:8397: BC A7 83  LDY tbl_83A7,X
C - - - - - 0x0043AA 01:839A: BD A6 83  LDA tbl_83A6,X
C - - - - - 0x0043AD 01:839D: 18        CLC
C - - - - - 0x0043AE 01:839E: 69 28     ADC #$28
C - - - - - 0x0043B0 01:83A0: AA        TAX
C - - - - - 0x0043B1 01:83A1: 68        PLA
C - - - - - 0x0043B2 01:83A2: 20 F5 83  JSR sub_83F5
C - - - - - 0x0043B5 01:83A5: 60        RTS



tbl_83A6:
- D 0 - - - 0x0043B6 01:83A6: 20        .byte $20   ; 
tbl_83A7:
- D 0 - - - 0x0043B7 01:83A7: 50        .byte $50   ; 
- D 0 - - - 0x0043B8 01:83A8: A0        .byte $A0   ; 
- D 0 - - - 0x0043B9 01:83A9: 90        .byte $90   ; 



loc_83AA_display_GOAL:
C D 0 - - - 0x0043BA 01:83AA: A9 00     LDA #$00
bra_83AC:
C - - - - - 0x0043BC 01:83AC: 48        PHA
C - - - - - 0x0043BD 01:83AD: 20 51 C0  JSR sub_0x00C061_hide_all_sprites
C - - - - - 0x0043C0 01:83B0: A9 00     LDA #$00
C - - - - - 0x0043C2 01:83B2: 85 5B     STA ram_index_oam
C - - - - - 0x0043C4 01:83B4: 68        PLA
C - - - - - 0x0043C5 01:83B5: 48        PHA
C - - - - - 0x0043C6 01:83B6: 18        CLC
C - - - - - 0x0043C7 01:83B7: 20 D1 83  JSR sub_83D1_display_letter
C - - - - - 0x0043CA 01:83BA: 68        PLA
C - - - - - 0x0043CB 01:83BB: 18        CLC
C - - - - - 0x0043CC 01:83BC: 69 01     ADC #$01
C - - - - - 0x0043CE 01:83BE: 48        PHA
C - - - - - 0x0043CF 01:83BF: 38        SEC
C - - - - - 0x0043D0 01:83C0: 20 D1 83  JSR sub_83D1_display_letter
C - - - - - 0x0043D3 01:83C3: A9 01     LDA #$01
C - - - - - 0x0043D5 01:83C5: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0043D8 01:83C8: 68        PLA
C - - - - - 0x0043D9 01:83C9: C9 38     CMP #$38
C - - - - - 0x0043DB 01:83CB: D0 DF     BNE bra_83AC
C - - - - - 0x0043DD 01:83CD: 20 51 C0  JSR sub_0x00C061_hide_all_sprites
C - - - - - 0x0043E0 01:83D0: 60        RTS



sub_83D1_display_letter:
C - - - - - 0x0043E1 01:83D1: 29 03     AND #$03
; * 03
C - - - - - 0x0043E3 01:83D3: 85 2A     STA ram_002A_temp
C - - - - - 0x0043E5 01:83D5: 0A        ASL
C - - - - - 0x0043E6 01:83D6: 65 2A     ADC ram_002A_temp
C - - - - - 0x0043E8 01:83D8: AA        TAX
C - - - - - 0x0043E9 01:83D9: BD E9 83  LDA tbl_83E9,X
C - - - - - 0x0043EC 01:83DC: 48        PHA
C - - - - - 0x0043ED 01:83DD: BC EB 83  LDY tbl_83E9 + $02,X
C - - - - - 0x0043F0 01:83E0: BD EA 83  LDA tbl_83E9 + $01,X
C - - - - - 0x0043F3 01:83E3: AA        TAX
C - - - - - 0x0043F4 01:83E4: 68        PLA
; bzk optimize, JSR
C - - - - - 0x0043F5 01:83E5: 20 F5 83  JSR sub_83F5
C - - - - - 0x0043F8 01:83E8: 60        RTS



tbl_83E9:
;                                              +--------------- letter
;                                              |    +---------- X
;                                              |    |    +----- Y
;                                              |    |    |
- D 0 - - - 0x0043F9 01:83E9: 0A        .byte $0A, $34, $40   ; 00 G
- D 0 - - - 0x0043FC 01:83EC: 00        .byte $00, $5C, $40   ; 01 O
- D 0 - - - 0x0043FF 01:83EF: 0B        .byte $0B, $84, $40   ; 02 A
- D 0 - - - 0x004402 01:83F2: 0C        .byte $0C, $AC, $40   ; 03 L



sub_83F5:
C - - - - - 0x004405 01:83F5: 86 2A     STX ram_002A_temp
C - - - - - 0x004407 01:83F7: 84 2B     STY ram_002B_temp
C - - - - - 0x004409 01:83F9: 29 7F     AND #$7F
C - - - - - 0x00440B 01:83FB: 85 2D     STA ram_002D_temp
C - - - - - 0x00440D 01:83FD: 0A        ASL
C - - - - - 0x00440E 01:83FE: 65 2D     ADC ram_002D_temp
C - - - - - 0x004410 01:8400: AA        TAX
C - - - - - 0x004411 01:8401: 20 0F 84  JSR sub_840F
C - - - - - 0x004414 01:8404: E8        INX
C - - - - - 0x004415 01:8405: 20 0F 84  JSR sub_840F
C - - - - - 0x004418 01:8408: E8        INX
C - - - - - 0x004419 01:8409: BD 56 84  LDA tbl_8456,X
C - - - - - 0x00441C 01:840C: 4C 1B 84  JMP loc_841B



sub_840F:
; bzk optimize, JSR first, then LDA without PHA + PLA
C - - - - - 0x00441F 01:840F: BD 56 84  LDA tbl_8456,X
C - - - - - 0x004422 01:8412: 48        PHA
C - - - - - 0x004423 01:8413: 20 1B 84  JSR sub_841B
C - - - - - 0x004426 01:8416: 68        PLA
; * 10
C - - - - - 0x004427 01:8417: 0A        ASL
C - - - - - 0x004428 01:8418: 0A        ASL
C - - - - - 0x004429 01:8419: 0A        ASL
C - - - - - 0x00442A 01:841A: 0A        ASL
loc_841B:
sub_841B:
C D 0 - - - 0x00442B 01:841B: 85 2D     STA ram_002D_temp
C - - - - - 0x00442D 01:841D: A9 04     LDA #$04
C - - - - - 0x00442F 01:841F: 85 2E     STA ram_002E_temp
bra_8421_loop:
C - - - - - 0x004431 01:8421: 26 2D     ROL ram_002D_temp
C - - - - - 0x004433 01:8423: 90 25     BCC bra_844A
C - - - - - 0x004435 01:8425: A4 5B     LDY ram_index_oam
C - - - - - 0x004437 01:8427: A9 3C     LDA #$3C
C - - - - - 0x004439 01:8429: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x00443C 01:842C: A9 01     LDA #$01
C - - - - - 0x00443E 01:842E: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x004441 01:8431: A9 04     LDA #$04
C - - - - - 0x004443 01:8433: 38        SEC
C - - - - - 0x004444 01:8434: E5 2E     SBC ram_002E_temp
; * 08
C - - - - - 0x004446 01:8436: 0A        ASL
C - - - - - 0x004447 01:8437: 0A        ASL
C - - - - - 0x004448 01:8438: 0A        ASL
C - - - - - 0x004449 01:8439: 18        CLC
C - - - - - 0x00444A 01:843A: 65 2A     ADC ram_002A_temp
C - - - - - 0x00444C 01:843C: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x00444F 01:843F: A5 2B     LDA ram_002B_temp
C - - - - - 0x004451 01:8441: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x004454 01:8444: C8        INY
C - - - - - 0x004455 01:8445: C8        INY
C - - - - - 0x004456 01:8446: C8        INY
C - - - - - 0x004457 01:8447: C8        INY
C - - - - - 0x004458 01:8448: 84 5B     STY ram_index_oam
bra_844A:
C - - - - - 0x00445A 01:844A: C6 2E     DEC ram_002E_temp
C - - - - - 0x00445C 01:844C: D0 D3     BNE bra_8421_loop
C - - - - - 0x00445E 01:844E: A5 2B     LDA ram_002B_temp
C - - - - - 0x004460 01:8450: 18        CLC
C - - - - - 0x004461 01:8451: 69 08     ADC #$08
C - - - - - 0x004463 01:8453: 85 2B     STA ram_002B_temp
C - - - - - 0x004465 01:8455: 60        RTS



tbl_8456:
- D 0 - - - 0x004466 01:8456: F9        .byte $F9   ; 
- D 0 - - - 0x004467 01:8457: 99        .byte $99   ; 
- D 0 - - - 0x004468 01:8458: F0        .byte $F0   ; 
- D 0 - - - 0x004469 01:8459: 62        .byte $62   ; 
- D 0 - - - 0x00446A 01:845A: 22        .byte $22   ; 
- D 0 - - - 0x00446B 01:845B: 20        .byte $20   ; 
- D 0 - - - 0x00446C 01:845C: F1        .byte $F1   ; 
- D 0 - - - 0x00446D 01:845D: F8        .byte $F8   ; 
- D 0 - - - 0x00446E 01:845E: F0        .byte $F0   ; 
- D 0 - - - 0x00446F 01:845F: F1        .byte $F1   ; 
- D 0 - - - 0x004470 01:8460: 71        .byte $71   ; 
- D 0 - - - 0x004471 01:8461: F0        .byte $F0   ; 
- D 0 - - - 0x004472 01:8462: 8A        .byte $8A   ; 
- D 0 - - - 0x004473 01:8463: AF        .byte $AF   ; 
- D 0 - - - 0x004474 01:8464: 20        .byte $20   ; 
- D 0 - - - 0x004475 01:8465: F8        .byte $F8   ; 
- D 0 - - - 0x004476 01:8466: F1        .byte $F1   ; 
- D 0 - - - 0x004477 01:8467: F0        .byte $F0   ; 
- D 0 - - - 0x004478 01:8468: F8        .byte $F8   ; 
- D 0 - - - 0x004479 01:8469: F9        .byte $F9   ; 
- D 0 - - - 0x00447A 01:846A: F0        .byte $F0   ; 
- D 0 - - - 0x00447B 01:846B: F9        .byte $F9   ; 
- D 0 - - - 0x00447C 01:846C: 11        .byte $11   ; 
- D 0 - - - 0x00447D 01:846D: 10        .byte $10   ; 
- - - - - - 0x00447E 01:846E: F9        .byte $F9   ; 
- - - - - - 0x00447F 01:846F: F9        .byte $F9   ; 
- - - - - - 0x004480 01:8470: F0        .byte $F0   ; 
- - - - - - 0x004481 01:8471: F9        .byte $F9   ; 
- - - - - - 0x004482 01:8472: F1        .byte $F1   ; 
- - - - - - 0x004483 01:8473: F0        .byte $F0   ; 
- D 0 - - - 0x004484 01:8474: F8        .byte $F8   ; 
- D 0 - - - 0x004485 01:8475: B9        .byte $B9   ; 
- D 0 - - - 0x004486 01:8476: F0        .byte $F0   ; 
- D 0 - - - 0x004487 01:8477: F9        .byte $F9   ; 
- D 0 - - - 0x004488 01:8478: F9        .byte $F9   ; 
- D 0 - - - 0x004489 01:8479: 90        .byte $90   ; 
- D 0 - - - 0x00448A 01:847A: 88        .byte $88   ; 
- D 0 - - - 0x00448B 01:847B: 88        .byte $88   ; 
- D 0 - - - 0x00448C 01:847C: F0        .byte $F0   ; 



loc_847D_decrease_game_timer:
C D 0 - - - 0x00448D 01:847D: AD A4 03  LDA ram_03A4
C - - - - - 0x004490 01:8480: 29 10     AND #$10
C - - - - - 0x004492 01:8482: D0 68     BNE bra_84EC_RTS
C - - - - - 0x004494 01:8484: A9 8C     LDA #$8C
C - - - - - 0x004496 01:8486: 85 2A     STA ram_002A_temp
C - - - - - 0x004498 01:8488: AD B1 03  LDA ram_timer_sec
C - - - - - 0x00449B 01:848B: 20 ED 84  JSR sub_84ED
C - - - - - 0x00449E 01:848E: A9 17     LDA #$17
C - - - - - 0x0044A0 01:8490: 20 04 85  JSR sub_8504
C - - - - - 0x0044A3 01:8493: AD B2 03  LDA ram_timer_min
C - - - - - 0x0044A6 01:8496: 20 ED 84  JSR sub_84ED
C - - - - - 0x0044A9 01:8499: AD A4 03  LDA ram_03A4
C - - - - - 0x0044AC 01:849C: 29 20     AND #$20
C - - - - - 0x0044AE 01:849E: D0 4C     BNE bra_84EC_RTS
C - - - - - 0x0044B0 01:84A0: CE B0 03  DEC ram_timer_ms
C - - - - - 0x0044B3 01:84A3: 10 47     BPL bra_84EC_RTS
C - - - - - 0x0044B5 01:84A5: A2 00     LDX #$00
C - - - - - 0x0044B7 01:84A7: AD B1 03  LDA ram_timer_sec
bra_84AA:
C - - - - - 0x0044BA 01:84AA: C9 0A     CMP #$0A
C - - - - - 0x0044BC 01:84AC: 90 05     BCC bra_84B3
C - - - - - 0x0044BE 01:84AE: E9 0A     SBC #$0A
C - - - - - 0x0044C0 01:84B0: E8        INX
C - - - - - 0x0044C1 01:84B1: D0 F7     BNE bra_84AA
bra_84B3:
C - - - - - 0x0044C3 01:84B3: 86 2A     STX ram_002A_temp
C - - - - - 0x0044C5 01:84B5: A9 1E     LDA #$1E
C - - - - - 0x0044C7 01:84B7: 8D B0 03  STA ram_timer_ms
C - - - - - 0x0044CA 01:84BA: 38        SEC
C - - - - - 0x0044CB 01:84BB: AD B1 03  LDA ram_timer_sec
C - - - - - 0x0044CE 01:84BE: E9 05     SBC #$05
C - - - - - 0x0044D0 01:84C0: B0 11     BCS bra_84D3
C - - - - - 0x0044D2 01:84C2: CE B2 03  DEC ram_timer_min
C - - - - - 0x0044D5 01:84C5: 10 09     BPL bra_84D0
C - - - - - 0x0044D7 01:84C7: A9 00     LDA #$00
C - - - - - 0x0044D9 01:84C9: 8D B2 03  STA ram_timer_min
C - - - - - 0x0044DC 01:84CC: 8D B1 03  STA ram_timer_sec
C - - - - - 0x0044DF 01:84CF: 60        RTS
bra_84D0:
C - - - - - 0x0044E0 01:84D0: 18        CLC
C - - - - - 0x0044E1 01:84D1: 69 3C     ADC #$3C
bra_84D3:
C - - - - - 0x0044E3 01:84D3: 8D B1 03  STA ram_timer_sec
C - - - - - 0x0044E6 01:84D6: AE B2 03  LDX ram_timer_min
C - - - - - 0x0044E9 01:84D9: D0 11     BNE bra_84EC_RTS
loc_84DB:
C D 0 - - - 0x0044EB 01:84DB: C9 0A     CMP #$0A
C - - - - - 0x0044ED 01:84DD: 90 05     BCC bra_84E4
C - - - - - 0x0044EF 01:84DF: E9 0A     SBC #$0A
C - - - - - 0x0044F1 01:84E1: 4C DB 84  JMP loc_84DB
bra_84E4:
C - - - - - 0x0044F4 01:84E4: AA        TAX
C - - - - - 0x0044F5 01:84E5: D0 05     BNE bra_84EC_RTS
C - - - - - 0x0044F7 01:84E7: A9 0A     LDA #con_sfx_time_low
C - - - - - 0x0044F9 01:84E9: 20 7E C0  JSR sub_0x00C08E_prepare_sound
bra_84EC_RTS:
C - - - - - 0x0044FC 01:84EC: 60        RTS



sub_84ED:
C - - - - - 0x0044FD 01:84ED: A0 00     LDY #$00
bra_84EF_loop:
C - - - - - 0x0044FF 01:84EF: C9 0A     CMP #$0A
C - - - - - 0x004501 01:84F1: 90 05     BCC bra_84F8
C - - - - - 0x004503 01:84F3: E9 0A     SBC #$0A
C - - - - - 0x004505 01:84F5: C8        INY
C - - - - - 0x004506 01:84F6: D0 F7     BNE bra_84EF_loop
bra_84F8:
C - - - - - 0x004508 01:84F8: 20 00 85  JSR sub_8500
C - - - - - 0x00450B 01:84FB: 98        TYA
C - - - - - 0x00450C 01:84FC: 20 00 85  JSR sub_8500
C - - - - - 0x00450F 01:84FF: 60        RTS



sub_8500:
C - - - - - 0x004510 01:8500: 0A        ASL
C - - - - - 0x004511 01:8501: 18        CLC
C - - - - - 0x004512 01:8502: 69 03     ADC #$03
sub_8504:
C - - - - - 0x004514 01:8504: A6 5B     LDX ram_index_oam
C - - - - - 0x004516 01:8506: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x004519 01:8509: A9 01     LDA #$01
C - - - - - 0x00451B 01:850B: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00451E 01:850E: A9 18     LDA #$18
C - - - - - 0x004520 01:8510: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x004523 01:8513: A5 2A     LDA ram_002A_temp
C - - - - - 0x004525 01:8515: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x004528 01:8518: 38        SEC
C - - - - - 0x004529 01:8519: E9 08     SBC #$08
C - - - - - 0x00452B 01:851B: 85 2A     STA ram_002A_temp
C - - - - - 0x00452D 01:851D: 20 7B C0  JSR sub_0x00C08B
C - - - - - 0x004530 01:8520: 60        RTS



loc_8521_write_team_palette_to_buffer:
C D 0 - - - 0x004531 01:8521: A2 00     LDX #$00
C - - - - - 0x004533 01:8523: AD A9 03  LDA ram_team_id
C - - - - - 0x004536 01:8526: 20 3C 85  JSR sub_853C
C - - - - - 0x004539 01:8529: A2 08     LDX #$08
C - - - - - 0x00453B 01:852B: AD AA 03  LDA ram_team_id + $01
C - - - - - 0x00453E 01:852E: 20 3C 85  JSR sub_853C
C - - - - - 0x004541 01:8531: A9 0F     LDA #$0F
C - - - - - 0x004543 01:8533: 8D 99 03  STA ram_0399
C - - - - - 0x004546 01:8536: A9 30     LDA #$30
C - - - - - 0x004548 01:8538: 8D 9A 03  STA ram_039A
C - - - - - 0x00454B 01:853B: 60        RTS



sub_853C:
C - - - - - 0x00454C 01:853C: 0A        ASL
C - - - - - 0x00454D 01:853D: 0A        ASL
C - - - - - 0x00454E 01:853E: A8        TAY
C - - - - - 0x00454F 01:853F: B9 59 85  LDA tbl_8559,Y
C - - - - - 0x004552 01:8542: 9D 98 03  STA ram_0398,X
C - - - - - 0x004555 01:8545: A9 02     LDA #$02
C - - - - - 0x004557 01:8547: 85 2B     STA ram_002B_temp
bra_8549:
C - - - - - 0x004559 01:8549: B9 56 85  LDA tbl_8556,Y
C - - - - - 0x00455C 01:854C: 9D 94 03  STA ram_0394,X
C - - - - - 0x00455F 01:854F: E8        INX
C - - - - - 0x004560 01:8550: C8        INY
C - - - - - 0x004561 01:8551: C6 2B     DEC ram_002B_temp
C - - - - - 0x004563 01:8553: 10 F4     BPL bra_8549
C - - - - - 0x004565 01:8555: 60        RTS



tbl_8556:
- D 0 - - - 0x004566 01:8556: 37        .byte $37   ; 
- D 0 - - - 0x004567 01:8557: 11        .byte $11   ; 
- D 0 - - - 0x004568 01:8558: 16        .byte $16   ; 
tbl_8559:
- D 0 - - - 0x004569 01:8559: 0F        .byte $0F   ; 
- D 0 - - - 0x00456A 01:855A: 0A        .byte $0A   ; 
- D 0 - - - 0x00456B 01:855B: 30        .byte $30   ; 
- D 0 - - - 0x00456C 01:855C: 35        .byte $35   ; 
- D 0 - - - 0x00456D 01:855D: 37        .byte $37   ; 
- D 0 - - - 0x00456E 01:855E: 11        .byte $11   ; 
- D 0 - - - 0x00456F 01:855F: 30        .byte $30   ; 
- D 0 - - - 0x004570 01:8560: 35        .byte $35   ; 
- D 0 - - - 0x004571 01:8561: 37        .byte $37   ; 
- D 0 - - - 0x004572 01:8562: 26        .byte $26   ; 
- D 0 - - - 0x004573 01:8563: 30        .byte $30   ; 
- D 0 - - - 0x004574 01:8564: 35        .byte $35   ; 
- D 0 - - - 0x004575 01:8565: 17        .byte $17   ; 
- D 0 - - - 0x004576 01:8566: 31        .byte $31   ; 
- D 0 - - - 0x004577 01:8567: 0F        .byte $0F   ; 
- D 0 - - - 0x004578 01:8568: 36        .byte $36   ; 
- D 0 - - - 0x004579 01:8569: 0F        .byte $0F   ; 
- D 0 - - - 0x00457A 01:856A: 16        .byte $16   ; 
- D 0 - - - 0x00457B 01:856B: 30        .byte $30   ; 
- D 0 - - - 0x00457C 01:856C: 35        .byte $35   ; 
- D 0 - - - 0x00457D 01:856D: 37        .byte $37   ; 
- D 0 - - - 0x00457E 01:856E: 2C        .byte $2C   ; 
- D 0 - - - 0x00457F 01:856F: 30        .byte $30   ; 
- D 0 - - - 0x004580 01:8570: 35        .byte $35   ; 
- D 0 - - - 0x004581 01:8571: 17        .byte $17   ; 
- D 0 - - - 0x004582 01:8572: 14        .byte $14   ; 
- D 0 - - - 0x004583 01:8573: 30        .byte $30   ; 
- D 0 - - - 0x004584 01:8574: 35        .byte $35   ; 
- D 0 - - - 0x004585 01:8575: 26        .byte $26   ; 
- D 0 - - - 0x004586 01:8576: 30        .byte $30   ; 
- D 0 - - - 0x004587 01:8577: 31        .byte $31   ; 
- D 0 - - - 0x004588 01:8578: 35        .byte $35   ; 
- D 0 - - - 0x004589 01:8579: 37        .byte $37   ; 
- D 0 - - - 0x00458A 01:857A: 25        .byte $25   ; 
- D 0 - - - 0x00458B 01:857B: 11        .byte $11   ; 
- D 0 - - - 0x00458C 01:857C: 35        .byte $35   ; 
- D 0 - - - 0x00458D 01:857D: 37        .byte $37   ; 
- D 0 - - - 0x00458E 01:857E: 28        .byte $28   ; 
- D 0 - - - 0x00458F 01:857F: 30        .byte $30   ; 
- D 0 - - - 0x004590 01:8580: 26        .byte $26   ; 
- D 0 - - - 0x004591 01:8581: 37        .byte $37   ; 
- D 0 - - - 0x004592 01:8582: 01        .byte $01   ; 
- D 0 - - - 0x004593 01:8583: 21        .byte $21   ; 
- D 0 - - - 0x004594 01:8584: 35        .byte $35   ; 
- D 0 - - - 0x004595 01:8585: 16        .byte $16   ; 
- D 0 - - - 0x004596 01:8586: 21        .byte $21   ; 
- D 0 - - - 0x004597 01:8587: 30        .byte $30   ; 
- D 0 - - - 0x004598 01:8588: 35        .byte $35   ; 
- D 0 - - - 0x004599 01:8589: 17        .byte $17   ; 
- D 0 - - - 0x00459A 01:858A: 34        .byte $34   ; 
- D 0 - - - 0x00459B 01:858B: 30        .byte $30   ; 
- D 0 - - - 0x00459C 01:858C: 35        .byte $35   ; 
- D 0 - - - 0x00459D 01:858D: 17        .byte $17   ; 
- D 0 - - - 0x00459E 01:858E: 25        .byte $25   ; 
- D 0 - - - 0x00459F 01:858F: 16        .byte $16   ; 
- D 0 - - - 0x0045A0 01:8590: 36        .byte $36   ; 
- D 0 - - - 0x0045A1 01:8591: 0F        .byte $0F   ; 
- D 0 - - - 0x0045A2 01:8592: 30        .byte $30   ; 
- D 0 - - - 0x0045A3 01:8593: 16        .byte $16   ; 
- D 0 - - - 0x0045A4 01:8594: 36        .byte $36   ; 
- D 0 - - - 0x0045A5 01:8595: 0F        .byte $0F   ; 



loc_8596_draw_bent_goal_net:
loc_8596_loop:
C D 0 - - - 0x0045A6 01:8596: 2C D2 03  BIT ram_03D2
C - - - - - 0x0045A9 01:8599: 30 08     BMI bra_85A3
C - - - - - 0x0045AB 01:859B: A9 01     LDA #$01
C - - - - - 0x0045AD 01:859D: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0045B0 01:85A0: 4C 96 85  JMP loc_8596_loop
bra_85A3:
C - - - - - 0x0045B3 01:85A3: A9 01     LDA #$01
C - - - - - 0x0045B5 01:85A5: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0045B8 01:85A8: AD 7D 03  LDA ram_037D
C - - - - - 0x0045BB 01:85AB: D0 F6     BNE bra_85A3
C - - - - - 0x0045BD 01:85AD: A9 01     LDA #$01
C - - - - - 0x0045BF 01:85AF: 8D 7D 03  STA ram_037D
C - - - - - 0x0045C2 01:85B2: AE CE 03  LDX ram_03CE
C - - - - - 0x0045C5 01:85B5: BD CE 03  LDA ram_03CE,X
C - - - - - 0x0045C8 01:85B8: 0A        ASL
C - - - - - 0x0045C9 01:85B9: AA        TAX
C - - - - - 0x0045CA 01:85BA: BD 46 A4  LDA tbl_A446,X
C - - - - - 0x0045CD 01:85BD: 85 2A     STA ram_002A_temp
C - - - - - 0x0045CF 01:85BF: BD 47 A4  LDA tbl_A446 + $01,X
C - - - - - 0x0045D2 01:85C2: 85 2B     STA ram_002B_temp
C - - - - - 0x0045D4 01:85C4: 20 0C 86  JSR sub_860C
C - - - - - 0x0045D7 01:85C7: A9 08     LDA #$08
C - - - - - 0x0045D9 01:85C9: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0045DC 01:85CC: 20 E3 85  JSR sub_85E3
C - - - - - 0x0045DF 01:85CF: A9 01     LDA #$01
C - - - - - 0x0045E1 01:85D1: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0045E4 01:85D4: A9 00     LDA #$00
C - - - - - 0x0045E6 01:85D6: CE CE 03  DEC ram_03CE
C - - - - - 0x0045E9 01:85D9: F0 02     BEQ bra_85DD
C - - - - - 0x0045EB 01:85DB: A9 80     LDA #$80
bra_85DD:
C - - - - - 0x0045ED 01:85DD: 8D D2 03  STA ram_03D2
C - - - - - 0x0045F0 01:85E0: 4C 96 85  JMP loc_8596_loop



sub_85E3:
bra_85E3_loop:
C - - - - - 0x0045F3 01:85E3: A9 01     LDA #$01
C - - - - - 0x0045F5 01:85E5: 20 09 C0  JSR sub_0x00C019_script_delay
C - - - - - 0x0045F8 01:85E8: AD 7D 03  LDA ram_037D
C - - - - - 0x0045FB 01:85EB: D0 F6     BNE bra_85E3_loop
C - - - - - 0x0045FD 01:85ED: A9 01     LDA #$01
C - - - - - 0x0045FF 01:85EF: 8D 7D 03  STA ram_037D
C - - - - - 0x004602 01:85F2: AE CE 03  LDX ram_03CE
C - - - - - 0x004605 01:85F5: BD CE 03  LDA ram_03CE,X
C - - - - - 0x004608 01:85F8: A2 8F     LDX #< tbl_A58F
C - - - - - 0x00460A 01:85FA: A0 A5     LDY #> tbl_A58F
C - - - - - 0x00460C 01:85FC: C9 09     CMP #$09
C - - - - - 0x00460E 01:85FE: 90 04     BCC bra_8604
C - - - - - 0x004610 01:8600: A2 4C     LDX #< tbl_A54C
C - - - - - 0x004612 01:8602: A0 A5     LDY #> tbl_A54C
bra_8604:
C - - - - - 0x004614 01:8604: 86 2A     STX ram_002A_temp
C - - - - - 0x004616 01:8606: 84 2B     STY ram_002B_temp
C - - - - - 0x004618 01:8608: 20 0C 86  JSR sub_860C
C - - - - - 0x00461B 01:860B: 60        RTS



sub_860C:
C - - - - - 0x00461C 01:860C: A0 00     LDY #$00
C - - - - - 0x00461E 01:860E: A2 00     LDX #$00
bra_8610_loop:
C - - - - - 0x004620 01:8610: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004622 01:8612: 9D 0D 03  STA ram_030D,X
C - - - - - 0x004625 01:8615: F0 1F     BEQ bra_8636
C - - - - - 0x004627 01:8617: 85 2C     STA ram_002C_temp
C - - - - - 0x004629 01:8619: C8        INY
C - - - - - 0x00462A 01:861A: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x00462C 01:861C: 9D 0E 03  STA ram_030E,X
C - - - - - 0x00462F 01:861F: C8        INY
C - - - - - 0x004630 01:8620: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004632 01:8622: 9D 0F 03  STA ram_030F,X
C - - - - - 0x004635 01:8625: C8        INY
bra_8626_loop:
C - - - - - 0x004636 01:8626: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004638 01:8628: 9D 10 03  STA ram_0310,X
C - - - - - 0x00463B 01:862B: C8        INY
C - - - - - 0x00463C 01:862C: E8        INX
C - - - - - 0x00463D 01:862D: C6 2C     DEC ram_002C_temp
C - - - - - 0x00463F 01:862F: D0 F5     BNE bra_8626_loop
C - - - - - 0x004641 01:8631: E8        INX
C - - - - - 0x004642 01:8632: E8        INX
C - - - - - 0x004643 01:8633: E8        INX
C - - - - - 0x004644 01:8634: D0 DA     BNE bra_8610_loop
bra_8636:
C - - - - - 0x004646 01:8636: A9 80     LDA #$80
C - - - - - 0x004648 01:8638: 8D 7D 03  STA ram_037D
C - - - - - 0x00464B 01:863B: 60        RTS



loc_863C_show_controllable_indicators_for_players:
C D 0 - - - 0x00464C 01:863C: AD A4 03  LDA ram_03A4
C - - - - - 0x00464F 01:863F: 29 10     AND #$10
C - - - - - 0x004651 01:8641: D0 19     BNE bra_865C_RTS
C - - - - - 0x004653 01:8643: AE C9 03  LDX ram_03C9
C - - - - - 0x004656 01:8646: E8        INX
C - - - - - 0x004657 01:8647: E0 0C     CPX #$0C
C - - - - - 0x004659 01:8649: 90 02     BCC bra_864D
C - - - - - 0x00465B 01:864B: A2 00     LDX #$00
bra_864D:
C - - - - - 0x00465D 01:864D: 8E C9 03  STX ram_03C9
C - - - - - 0x004660 01:8650: AD 29 04  LDA ram_player_with_ball
C - - - - - 0x004663 01:8653: 20 5D 86  JSR sub_865D
C - - - - - 0x004666 01:8656: AD 2A 04  LDA ram_player_without_ball
C - - - - - 0x004669 01:8659: 20 5D 86  JSR sub_865D
bra_865C_RTS:
C - - - - - 0x00466C 01:865C: 60        RTS



sub_865D:
C - - - - - 0x00466D 01:865D: 30 36     BMI bra_8695_RTS
C - - - - - 0x00466F 01:865F: 2C A4 03  BIT ram_03A4
C - - - - - 0x004672 01:8662: 30 04     BMI bra_8668
C - - - - - 0x004674 01:8664: C9 0B     CMP #$0B
C - - - - - 0x004676 01:8666: B0 2D     BCS bra_8695_RTS
bra_8668:
C - - - - - 0x004678 01:8668: 20 57 C0  JSR sub_0x00C067_set_player_base_address_pointer
C - - - - - 0x00467B 01:866B: A0 01     LDY #con_plr_spr_A
C - - - - - 0x00467D 01:866D: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x00467F 01:866F: 48        PHA
C - - - - - 0x004680 01:8670: 29 03     AND #$03
C - - - - - 0x004682 01:8672: 09 80     ORA #$80
C - - - - - 0x004684 01:8674: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004686 01:8676: A0 11     LDY #con_plr_anim_id
C - - - - - 0x004688 01:8678: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x00468A 01:867A: 48        PHA
C - - - - - 0x00468B 01:867B: A9 2F     LDA #$2F
C - - - - - 0x00468D 01:867D: AE C9 03  LDX ram_03C9
C - - - - - 0x004690 01:8680: E0 06     CPX #$06
C - - - - - 0x004692 01:8682: 90 02     BCC bra_8686
C - - - - - 0x004694 01:8684: A9 30     LDA #$30
bra_8686:
C - - - - - 0x004696 01:8686: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004698 01:8688: 20 96 86  JSR sub_8696_draw_animation
C - - - - - 0x00469B 01:868B: 68        PLA
C - - - - - 0x00469C 01:868C: A0 11     LDY #con_plr_anim_id
C - - - - - 0x00469E 01:868E: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0046A0 01:8690: 68        PLA
C - - - - - 0x0046A1 01:8691: A0 01     LDY #con_plr_spr_A
C - - - - - 0x0046A3 01:8693: 91 61     STA (ram_0061_t01_player_data),Y
bra_8695_RTS:
C - - - - - 0x0046A5 01:8695: 60        RTS



loc_8696_draw_animation:
sub_8696_draw_animation:
C D 0 - - - 0x0046A6 01:8696: A0 00     LDY #con_plr_flags
C - - - - - 0x0046A8 01:8698: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046AA 01:869A: 29 FD     AND #con_plr_flag_visible ^ $FF
C - - - - - 0x0046AC 01:869C: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0046AE 01:869E: 24 5D     BIT ram_overflow_oam
C - - - - - 0x0046B0 01:86A0: 30 26     BMI bra_86C8_RTS
C - - - - - 0x0046B2 01:86A2: A0 0B     LDY #con_plr_pos_Y_lo
C - - - - - 0x0046B4 01:86A4: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046B6 01:86A6: 38        SEC
C - - - - - 0x0046B7 01:86A7: ED BC 03  SBC ram_03BC
C - - - - - 0x0046BA 01:86AA: 85 36     STA ram_0036_temp
C - - - - - 0x0046BC 01:86AC: C8        INY
C - - - - - 0x0046BD 01:86AD: C8        INY ; con_plr_pos_Y_hi
C - - - - - 0x0046BE 01:86AE: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046C0 01:86B0: ED BD 03  SBC ram_03BD
C - - - - - 0x0046C3 01:86B3: D0 13     BNE bra_86C8_RTS
C - - - - - 0x0046C5 01:86B5: 38        SEC
C - - - - - 0x0046C6 01:86B6: A0 05     LDY #con_plr_pos_X_lo
C - - - - - 0x0046C8 01:86B8: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046CA 01:86BA: ED B7 03  SBC ram_03B7
C - - - - - 0x0046CD 01:86BD: 85 34     STA ram_0034_temp
C - - - - - 0x0046CF 01:86BF: C8        INY
C - - - - - 0x0046D0 01:86C0: C8        INY ; con_plr_pos_X_hi
C - - - - - 0x0046D1 01:86C1: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046D3 01:86C3: ED B8 03  SBC ram_03B8
C - - - - - 0x0046D6 01:86C6: F0 01     BEQ bra_86C9
bra_86C8_RTS:
C - - - - - 0x0046D8 01:86C8: 60        RTS
bra_86C9:
C - - - - - 0x0046D9 01:86C9: A0 00     LDY #con_plr_flags
C - - - - - 0x0046DB 01:86CB: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046DD 01:86CD: 09 02     ORA #con_plr_flag_visible
C - - - - - 0x0046DF 01:86CF: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0046E1 01:86D1: A9 00     LDA #$00
C - - - - - 0x0046E3 01:86D3: 85 2F     STA ram_002F_temp
C - - - - - 0x0046E5 01:86D5: A9 01     LDA #$01
C - - - - - 0x0046E7 01:86D7: 85 38     STA ram_0038_temp
C - - - - - 0x0046E9 01:86D9: A0 01     LDY #con_plr_spr_A
C - - - - - 0x0046EB 01:86DB: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046ED 01:86DD: 29 E2     AND #$E2
C - - - - - 0x0046EF 01:86DF: 85 39     STA ram_0039_temp
C - - - - - 0x0046F1 01:86E1: A0 11     LDY #con_plr_anim_id
C - - - - - 0x0046F3 01:86E3: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0046F5 01:86E5: 0A        ASL
C - - - - - 0x0046F6 01:86E6: 26 2F     ROL ram_002F_temp
C - - - - - 0x0046F8 01:86E8: 69 C6     ADC #< tbl_97C6
C - - - - - 0x0046FA 01:86EA: 85 2E     STA ram_002E_temp
C - - - - - 0x0046FC 01:86EC: A5 2F     LDA ram_002F_temp
C - - - - - 0x0046FE 01:86EE: 69 97     ADC #> tbl_97C6
C - - - - - 0x004700 01:86F0: 85 2F     STA ram_002F_temp
C - - - - - 0x004702 01:86F2: A0 00     LDY #$00
C - - - - - 0x004704 01:86F4: 84 2C     STY ram_002C_temp
C - - - - - 0x004706 01:86F6: B1 2E     LDA (ram_002E_temp),Y
C - - - - - 0x004708 01:86F8: 85 2A     STA ram_002A_temp
C - - - - - 0x00470A 01:86FA: C8        INY
C - - - - - 0x00470B 01:86FB: B1 2E     LDA (ram_002E_temp),Y
C - - - - - 0x00470D 01:86FD: 85 2B     STA ram_002B_temp
loc_86FF_loop:
C D 0 - - - 0x00470F 01:86FF: 20 05 87  JSR sub_8705
C - - - - - 0x004712 01:8702: 4C FF 86  JMP loc_86FF_loop



sub_8705:
C - - - - - 0x004715 01:8705: A4 2C     LDY ram_002C_temp
C - - - - - 0x004717 01:8707: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004719 01:8709: 29 07     AND #$07
C - - - - - 0x00471B 01:870B: F0 11     BEQ bra_871E
C - - - - - 0x00471D 01:870D: C9 01     CMP #$01
C - - - - - 0x00471F 01:870F: D0 03     BNE bra_8714
C - - - - - 0x004721 01:8711: 4C 73 87  JMP loc_8773
bra_8714:
C - - - - - 0x004724 01:8714: C9 02     CMP #$02
C - - - - - 0x004726 01:8716: D0 03     BNE bra_871B
C - - - - - 0x004728 01:8718: 4C 76 87  JMP loc_8776
bra_871B:
C - - - - - 0x00472B 01:871B: 4C 7D 87  JMP loc_877D
bra_871E:
C - - - - - 0x00472E 01:871E: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004730 01:8720: 4A        LSR
C - - - - - 0x004731 01:8721: 4A        LSR
C - - - - - 0x004732 01:8722: 4A        LSR
C - - - - - 0x004733 01:8723: 85 2D     STA ram_002D_temp
C - - - - - 0x004735 01:8725: C8        INY
C - - - - - 0x004736 01:8726: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004738 01:8728: C8        INY
C - - - - - 0x004739 01:8729: 84 2C     STY ram_002C_temp
C - - - - - 0x00473B 01:872B: 24 39     BIT ram_0039_temp
C - - - - - 0x00473D 01:872D: 10 05     BPL bra_8734
C - - - - - 0x00473F 01:872F: 49 FF     EOR #$FF
C - - - - - 0x004741 01:8731: 38        SEC
C - - - - - 0x004742 01:8732: E9 10     SBC #$10
bra_8734:
C - - - - - 0x004744 01:8734: 18        CLC
C - - - - - 0x004745 01:8735: 65 36     ADC ram_0036_temp
C - - - - - 0x004747 01:8737: 85 2E     STA ram_002E_temp
bra_8739:
C - - - - - 0x004749 01:8739: A4 2C     LDY ram_002C_temp
C - - - - - 0x00474B 01:873B: E6 2C     INC ram_002C_temp
C - - - - - 0x00474D 01:873D: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x00474F 01:873F: 24 39     BIT ram_0039_temp
C - - - - - 0x004751 01:8741: 50 05     BVC bra_8748
C - - - - - 0x004753 01:8743: 49 FF     EOR #$FF
C - - - - - 0x004755 01:8745: 18        CLC
C - - - - - 0x004756 01:8746: 69 F8     ADC #$F8
bra_8748:
C - - - - - 0x004758 01:8748: A6 5B     LDX ram_index_oam
C - - - - - 0x00475A 01:874A: 18        CLC
C - - - - - 0x00475B 01:874B: 65 34     ADC ram_0034_temp
C - - - - - 0x00475D 01:874D: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x004760 01:8750: A5 2E     LDA ram_002E_temp
C - - - - - 0x004762 01:8752: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x004765 01:8755: A4 2C     LDY ram_002C_temp
C - - - - - 0x004767 01:8757: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004769 01:8759: 48        PHA
C - - - - - 0x00476A 01:875A: 29 01     AND #$01
C - - - - - 0x00476C 01:875C: 05 39     ORA ram_0039_temp
C - - - - - 0x00476E 01:875E: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x004771 01:8761: 68        PLA
C - - - - - 0x004772 01:8762: 29 FE     AND #$FE
C - - - - - 0x004774 01:8764: 05 38     ORA ram_0038_temp
C - - - - - 0x004776 01:8766: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x004779 01:8769: 20 7B C0  JSR sub_0x00C08B
C - - - - - 0x00477C 01:876C: E6 2C     INC ram_002C_temp
C - - - - - 0x00477E 01:876E: C6 2D     DEC ram_002D_temp
C - - - - - 0x004780 01:8770: D0 C7     BNE bra_8739
C - - - - - 0x004782 01:8772: 60        RTS


; bzk optimize
loc_8773:
C D 0 - - - 0x004783 01:8773: 68        PLA
C - - - - - 0x004784 01:8774: 68        PLA
C - - - - - 0x004785 01:8775: 60        RTS



loc_8776:
C D 0 - - - 0x004786 01:8776: A9 00     LDA #$00
C - - - - - 0x004788 01:8778: 85 38     STA ram_0038_temp
C - - - - - 0x00478A 01:877A: E6 2C     INC ram_002C_temp
C - - - - - 0x00478C 01:877C: 60        RTS



loc_877D:
C D 0 - - - 0x00478D 01:877D: A4 2C     LDY ram_002C_temp
C - - - - - 0x00478F 01:877F: C8        INY
C - - - - - 0x004790 01:8780: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004792 01:8782: C8        INY
C - - - - - 0x004793 01:8783: 84 2C     STY ram_002C_temp
C - - - - - 0x004795 01:8785: A8        TAY
C - - - - - 0x004796 01:8786: 29 03     AND #$03
C - - - - - 0x004798 01:8788: AA        TAX
C - - - - - 0x004799 01:8789: 98        TYA
C - - - - - 0x00479A 01:878A: 4A        LSR
C - - - - - 0x00479B 01:878B: 4A        LSR
C - - - - - 0x00479C 01:878C: 95 6B     STA ram_chr_bank + $02,X
C - - - - - 0x00479E 01:878E: 60        RTS



loc_878F_set_animation:
C D 0 - - - 0x00479F 01:878F: 0A        ASL
C - - - - - 0x0047A0 01:8790: AA        TAX
C - - - - - 0x0047A1 01:8791: BD 66 96  LDA tbl_9666_animations,X
C - - - - - 0x0047A4 01:8794: 85 2A     STA ram_002A_temp
C - - - - - 0x0047A6 01:8796: BD 67 96  LDA tbl_9666_animations + $01,X
C - - - - - 0x0047A9 01:8799: 85 2B     STA ram_002B_temp
C - - - - - 0x0047AB 01:879B: A0 0F     LDY #con_plr_anim_cnt_hi
C - - - - - 0x0047AD 01:879D: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0047AF 01:879F: 0A        ASL
C - - - - - 0x0047B0 01:87A0: 0A        ASL
C - - - - - 0x0047B1 01:87A1: A8        TAY
C - - - - - 0x0047B2 01:87A2: 85 2C     STA ram_002C_temp
C - - - - - 0x0047B4 01:87A4: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x0047B6 01:87A6: 48        PHA
C - - - - - 0x0047B7 01:87A7: A0 13     LDY #con_plr_direction
C - - - - - 0x0047B9 01:87A9: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0047BB 01:87AB: 18        CLC
C - - - - - 0x0047BC 01:87AC: 69 10     ADC #$10
C - - - - - 0x0047BE 01:87AE: 29 E0     AND #$E0
; / 10
C - - - - - 0x0047C0 01:87B0: 4A        LSR
C - - - - - 0x0047C1 01:87B1: 4A        LSR
C - - - - - 0x0047C2 01:87B2: 4A        LSR
C - - - - - 0x0047C3 01:87B3: 4A        LSR
C - - - - - 0x0047C4 01:87B4: AA        TAX
C - - - - - 0x0047C5 01:87B5: BD DD 87  LDA tbl_87DD,X
C - - - - - 0x0047C8 01:87B8: 18        CLC
C - - - - - 0x0047C9 01:87B9: 65 2C     ADC ram_002C_temp
C - - - - - 0x0047CB 01:87BB: A8        TAY
C - - - - - 0x0047CC 01:87BC: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x0047CE 01:87BE: A0 11     LDY #con_plr_anim_id
C - - - - - 0x0047D0 01:87C0: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0047D2 01:87C2: 68        PLA
C - - - - - 0x0047D3 01:87C3: BC DD 87  LDY tbl_87DD,X
bra_87C6:
C - - - - - 0x0047D6 01:87C6: 0A        ASL
C - - - - - 0x0047D7 01:87C7: 0A        ASL
C - - - - - 0x0047D8 01:87C8: 88        DEY
C - - - - - 0x0047D9 01:87C9: D0 FB     BNE bra_87C6
C - - - - - 0x0047DB 01:87CB: 29 C0     AND #$C0
C - - - - - 0x0047DD 01:87CD: 85 2C     STA ram_002C_temp
C - - - - - 0x0047DF 01:87CF: A0 01     LDY #con_plr_spr_A
C - - - - - 0x0047E1 01:87D1: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0047E3 01:87D3: 29 3F     AND #$3F
C - - - - - 0x0047E5 01:87D5: 1D DE 87  ORA tbl_87DE,X
C - - - - - 0x0047E8 01:87D8: 45 2C     EOR ram_002C_temp
C - - - - - 0x0047EA 01:87DA: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0047EC 01:87DC: 60        RTS



tbl_87DD:
- D 0 - - - 0x0047ED 01:87DD: 01        .byte $01   ; 
tbl_87DE:
- D 0 - - - 0x0047EE 01:87DE: 80        .byte $80   ; 
- D 0 - - - 0x0047EF 01:87DF: 02        .byte $02   ; 
- D 0 - - - 0x0047F0 01:87E0: C0        .byte $C0   ; 
- D 0 - - - 0x0047F1 01:87E1: 03        .byte $03   ; 
- D 0 - - - 0x0047F2 01:87E2: 40        .byte $40   ; 
- D 0 - - - 0x0047F3 01:87E3: 02        .byte $02   ; 
- D 0 - - - 0x0047F4 01:87E4: 40        .byte $40   ; 
- D 0 - - - 0x0047F5 01:87E5: 01        .byte $01   ; 
- D 0 - - - 0x0047F6 01:87E6: 00        .byte $00   ; 
- D 0 - - - 0x0047F7 01:87E7: 02        .byte $02   ; 
- D 0 - - - 0x0047F8 01:87E8: 00        .byte $00   ; 
- D 0 - - - 0x0047F9 01:87E9: 03        .byte $03   ; 
- D 0 - - - 0x0047FA 01:87EA: 00        .byte $00   ; 
- D 0 - - - 0x0047FB 01:87EB: 02        .byte $02   ; 
- D 0 - - - 0x0047FC 01:87EC: 80        .byte $80   ; 



loc_87ED_update_cpu_tactics:
C D 0 - - - 0x0047FD 01:87ED: 2C 2C 04  BIT ram_field_flags
C - - - - - 0x004800 01:87F0: 70 16     BVS bra_8808    ; if con_field_flag_gk_has_ball
C - - - - - 0x004802 01:87F2: AD 2C 04  LDA ram_field_flags
C - - - - - 0x004805 01:87F5: 30 01     BMI bra_87F8    ; if con_field_flag_update_tactics
C - - - - - 0x004807 01:87F7: 60        RTS
bra_87F8:
C - - - - - 0x004808 01:87F8: 29 7F     AND #con_field_flag_update_tactics ^ $FF
C - - - - - 0x00480A 01:87FA: 8D 2C 04  STA ram_field_flags
C - - - - - 0x00480D 01:87FD: A9 00     LDA #$00
C - - - - - 0x00480F 01:87FF: 20 49 88  JSR sub_8849
C - - - - - 0x004812 01:8802: A9 0B     LDA #$0B
C - - - - - 0x004814 01:8804: 20 49 88  JSR sub_8849
C - - - - - 0x004817 01:8807: 60        RTS
bra_8808:
C - - - - - 0x004818 01:8808: A9 00     LDA #$00
C - - - - - 0x00481A 01:880A: 85 2A     STA ram_002A_temp
bra_880C:
C - - - - - 0x00481C 01:880C: A5 2A     LDA ram_002A_temp
C - - - - - 0x00481E 01:880E: F0 30     BEQ bra_8840
C - - - - - 0x004820 01:8810: C9 0B     CMP #$0B
C - - - - - 0x004822 01:8812: F0 2C     BEQ bra_8840
C - - - - - 0x004824 01:8814: 20 57 C0  JSR sub_0x00C067_set_player_base_address_pointer
C - - - - - 0x004827 01:8817: A0 12     LDY #con_plr_state
C - - - - - 0x004829 01:8819: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x00482B 01:881B: C9 15     CMP #con_state_run_to_base
C - - - - - 0x00482D 01:881D: F0 21     BEQ bra_8840
C - - - - - 0x00482F 01:881F: A0 00     LDY #con_plr_flags
C - - - - - 0x004831 01:8821: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004833 01:8823: 29 FB     AND #con_plr_flag_busy ^ $FF
C - - - - - 0x004835 01:8825: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004837 01:8827: A0 1E     LDY #con_plr_tbl_lo
C - - - - - 0x004839 01:8829: A5 2A     LDA ram_002A_temp
C - - - - - 0x00483B 01:882B: 0A        ASL
C - - - - - 0x00483C 01:882C: 18        CLC
C - - - - - 0x00483D 01:882D: 69 D6     ADC #< tbl_A5D6
C - - - - - 0x00483F 01:882F: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004841 01:8831: C8        INY ; con_plr_tbl_hi
C - - - - - 0x004842 01:8832: A9 00     LDA #$00
C - - - - - 0x004844 01:8834: 69 A5     ADC #> tbl_A5D6
C - - - - - 0x004846 01:8836: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004848 01:8838: A0 00     LDY #con_plr_flags
C - - - - - 0x00484A 01:883A: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x00484C 01:883C: 09 08     ORA #con_plr_flag_08_unknown
C - - - - - 0x00484E 01:883E: 91 61     STA (ram_0061_t01_player_data),Y
bra_8840:
C - - - - - 0x004850 01:8840: E6 2A     INC ram_002A_temp
C - - - - - 0x004852 01:8842: A5 2A     LDA ram_002A_temp
C - - - - - 0x004854 01:8844: C9 16     CMP #$16
C - - - - - 0x004856 01:8846: D0 C4     BNE bra_880C
C - - - - - 0x004858 01:8848: 60        RTS



sub_8849:
C - - - - - 0x004859 01:8849: 85 2A     STA ram_002A_temp
C - - - - - 0x00485B 01:884B: 20 6C 88  JSR sub_886C_calculate_tactics_data_pointer_based_on_area
C - - - - - 0x00485E 01:884E: E6 2A     INC ram_002A_temp
C - - - - - 0x004860 01:8850: A9 0A     LDA #$0A
C - - - - - 0x004862 01:8852: 85 2B     STA ram_002B_temp
bra_8854:
C - - - - - 0x004864 01:8854: A5 2A     LDA ram_002A_temp
C - - - - - 0x004866 01:8856: 20 B2 88  JSR sub_88B2_update_behavior_template_pointer
C - - - - - 0x004869 01:8859: A5 2B     LDA ram_002B_temp
C - - - - - 0x00486B 01:885B: 0A        ASL
C - - - - - 0x00486C 01:885C: 0A        ASL
C - - - - - 0x00486D 01:885D: 0A        ASL
C - - - - - 0x00486E 01:885E: 0A        ASL
C - - - - - 0x00486F 01:885F: 6D 7E 03  ADC ram_random
C - - - - - 0x004872 01:8862: 8D 7E 03  STA ram_random
C - - - - - 0x004875 01:8865: E6 2A     INC ram_002A_temp
C - - - - - 0x004877 01:8867: C6 2B     DEC ram_002B_temp
C - - - - - 0x004879 01:8869: D0 E9     BNE bra_8854
C - - - - - 0x00487B 01:886B: 60        RTS



loc_886C_calculate_tactics_data_pointer_based_on_area:
sub_886C_calculate_tactics_data_pointer_based_on_area:
C D 0 - - - 0x00487C 01:886C: 48        PHA
C - - - - - 0x00487D 01:886D: C9 0B     CMP #$0B
C - - - - - 0x00487F 01:886F: A9 00     LDA #$00
C - - - - - 0x004881 01:8871: 08        PHP
C - - - - - 0x004882 01:8872: 90 02     BCC bra_8876
C - - - - - 0x004884 01:8874: A9 0B     LDA #$0B
bra_8876:
C - - - - - 0x004886 01:8876: 4D AD 03  EOR ram_team_w_ball
C - - - - - 0x004889 01:8879: F0 02     BEQ bra_887D
C - - - - - 0x00488B 01:887B: A9 02     LDA #$02
bra_887D:
C - - - - - 0x00488D 01:887D: AA        TAX
C - - - - - 0x00488E 01:887E: A9 00     LDA #$00
C - - - - - 0x004890 01:8880: 85 2F     STA ram_002F_temp
C - - - - - 0x004892 01:8882: AD 27 04  LDA ram_area_id
C - - - - - 0x004895 01:8885: 28        PLP
C - - - - - 0x004896 01:8886: 90 05     BCC bra_888D
C - - - - - 0x004898 01:8888: 49 FF     EOR #$FF
C - - - - - 0x00489A 01:888A: 18        CLC
C - - - - - 0x00489B 01:888B: 69 28     ADC #$28
bra_888D:
C - - - - - 0x00489D 01:888D: 0A        ASL
C - - - - - 0x00489E 01:888E: 0A        ASL
C - - - - - 0x00489F 01:888F: 0A        ASL
C - - - - - 0x0048A0 01:8890: 85 2E     STA ram_002E_temp
C - - - - - 0x0048A2 01:8892: 26 2F     ROL ram_002F_temp
C - - - - - 0x0048A4 01:8894: A4 2F     LDY ram_002F_temp
C - - - - - 0x0048A6 01:8896: 0A        ASL
C - - - - - 0x0048A7 01:8897: 26 2F     ROL ram_002F_temp
C - - - - - 0x0048A9 01:8899: 0A        ASL
C - - - - - 0x0048AA 01:889A: 26 2F     ROL ram_002F_temp
C - - - - - 0x0048AC 01:889C: 65 2E     ADC ram_002E_temp
C - - - - - 0x0048AE 01:889E: 48        PHA
C - - - - - 0x0048AF 01:889F: 98        TYA
C - - - - - 0x0048B0 01:88A0: 65 2F     ADC ram_002F_temp
C - - - - - 0x0048B2 01:88A2: A8        TAY
C - - - - - 0x0048B3 01:88A3: 68        PLA
C - - - - - 0x0048B4 01:88A4: 18        CLC
C - - - - - 0x0048B5 01:88A5: 7D D2 A5  ADC tbl_A5D2,X
C - - - - - 0x0048B8 01:88A8: 85 2C     STA ram_002C_temp
C - - - - - 0x0048BA 01:88AA: 98        TYA
C - - - - - 0x0048BB 01:88AB: 7D D3 A5  ADC tbl_A5D2 + $01,X
C - - - - - 0x0048BE 01:88AE: 85 2D     STA ram_002D_temp
C - - - - - 0x0048C0 01:88B0: 68        PLA
C - - - - - 0x0048C1 01:88B1: 60        RTS



loc_88B2_update_behavior_template_pointer:
sub_88B2_update_behavior_template_pointer:
C D 0 - - - 0x0048C2 01:88B2: 48        PHA
C - - - - - 0x0048C3 01:88B3: 20 57 C0  JSR sub_0x00C067_set_player_base_address_pointer
C - - - - - 0x0048C6 01:88B6: 68        PLA
C - - - - - 0x0048C7 01:88B7: C9 0B     CMP #$0B
C - - - - - 0x0048C9 01:88B9: 90 02     BCC bra_88BD
C - - - - - 0x0048CB 01:88BB: E9 0B     SBC #$0B
bra_88BD:
C - - - - - 0x0048CD 01:88BD: 38        SEC
C - - - - - 0x0048CE 01:88BE: E9 01     SBC #$01
C - - - - - 0x0048D0 01:88C0: 0A        ASL
C - - - - - 0x0048D1 01:88C1: 0A        ASL
C - - - - - 0x0048D2 01:88C2: 2C 7E 03  BIT ram_random
C - - - - - 0x0048D5 01:88C5: 10 02     BPL bra_88C9
C - - - - - 0x0048D7 01:88C7: 69 02     ADC #$02
bra_88C9:
C - - - - - 0x0048D9 01:88C9: A0 1E     LDY #con_plr_tbl_lo
C - - - - - 0x0048DB 01:88CB: 18        CLC
C - - - - - 0x0048DC 01:88CC: 65 2C     ADC ram_002C_temp
C - - - - - 0x0048DE 01:88CE: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0048E0 01:88D0: C8        INY ; con_plr_tbl_hi
C - - - - - 0x0048E1 01:88D1: A5 2D     LDA ram_002D_temp
C - - - - - 0x0048E3 01:88D3: 69 00     ADC #$00
C - - - - - 0x0048E5 01:88D5: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0048E7 01:88D7: A0 00     LDY #con_plr_flags
C - - - - - 0x0048E9 01:88D9: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0048EB 01:88DB: 09 08     ORA #con_plr_flag_08_unknown
C - - - - - 0x0048ED 01:88DD: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0048EF 01:88DF: 60        RTS



loc_88E0_give_task_to_player_from_his_table:
C D 0 - - - 0x0048F0 01:88E0: 2C 2C 04  BIT ram_field_flags
C - - - - - 0x0048F3 01:88E3: 70 38     BVS bra_891D    ; if con_field_flag_gk_has_ball
C - - - - - 0x0048F5 01:88E5: A2 00     LDX #$00
C - - - - - 0x0048F7 01:88E7: AD 2B 04  LDA ram_player_global_id
C - - - - - 0x0048FA 01:88EA: C9 0B     CMP #$0B
C - - - - - 0x0048FC 01:88EC: 90 04     BCC bra_88F2
C - - - - - 0x0048FE 01:88EE: E9 0B     SBC #$0B
C - - - - - 0x004900 01:88F0: A2 0B     LDX #$0B
bra_88F2:
C - - - - - 0x004902 01:88F2: A8        TAY
C - - - - - 0x004903 01:88F3: 8A        TXA
C - - - - - 0x004904 01:88F4: 4D AD 03  EOR ram_team_w_ball
C - - - - - 0x004907 01:88F7: 08        PHP
C - - - - - 0x004908 01:88F8: 8A        TXA
C - - - - - 0x004909 01:88F9: F0 02     BEQ bra_88FD
C - - - - - 0x00490B 01:88FB: A2 01     LDX #$01
bra_88FD:
C - - - - - 0x00490D 01:88FD: 28        PLP
C - - - - - 0x00490E 01:88FE: F0 0E     BEQ bra_890E
C - - - - - 0x004910 01:8900: BD 7C 00  LDA a: ram_attack,X
C - - - - - 0x004913 01:8903: CD 7E 03  CMP ram_random
C - - - - - 0x004916 01:8906: 90 03     BCC bra_890B
C - - - - - 0x004918 01:8908: 4C B0 89  JMP loc_89B0
bra_890B:
C - - - - - 0x00491B 01:890B: 4C 1D 89  JMP loc_891D
bra_890E:
C - - - - - 0x00491E 01:890E: C0 05     CPY #$05
C - - - - - 0x004920 01:8910: B0 0B     BCS bra_891D
C - - - - - 0x004922 01:8912: BD 7E 00  LDA a: ram_defense,X
C - - - - - 0x004925 01:8915: CD 7E 03  CMP ram_random
C - - - - - 0x004928 01:8918: 90 03     BCC bra_891D
C - - - - - 0x00492A 01:891A: 4C C0 89  JMP loc_89C0
bra_891D:
loc_891D:
C D 0 - - - 0x00492D 01:891D: A0 1E     LDY #con_plr_tbl_lo
C - - - - - 0x00492F 01:891F: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004931 01:8921: 85 2A     STA ram_002A_temp
C - - - - - 0x004933 01:8923: C8        INY ; con_plr_tbl_hi
C - - - - - 0x004934 01:8924: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004936 01:8926: 85 2B     STA ram_002B_temp
C - - - - - 0x004938 01:8928: A0 00     LDY #$00
C - - - - - 0x00493A 01:892A: B1 2A     LDA (ram_002A_temp),Y
; / 10
C - - - - - 0x00493C 01:892C: 4A        LSR
C - - - - - 0x00493D 01:892D: 4A        LSR
C - - - - - 0x00493E 01:892E: 4A        LSR
C - - - - - 0x00493F 01:892F: 4A        LSR
C - - - - - 0x004940 01:8930: 20 2A C0  JSR sub_0x00C03A_bytes_after_JSR
- - - - - - 0x004943 01:8933: 41 89     .word ofs_001_8941_00_set_idle_state
- D 0 - I - 0x004945 01:8935: 41 89     .word ofs_001_8941_01_set_idle_state
- D 0 - I - 0x004947 01:8937: 47 89     .word ofs_001_8947_02
- D 0 - I - 0x004949 01:8939: 68 89     .word ofs_001_8968_03
- D 0 - I - 0x00494B 01:893B: B0 89     .word ofs_001_89B0_04
- - - - - - 0x00494D 01:893D: C0 89     .word ofs_001_89C0_05
- D 0 - I - 0x00494F 01:893F: EA 89     .word ofs_001_89EA_06



ofs_001_8941_00_set_idle_state:
ofs_001_8941_01_set_idle_state:
C - - J - - 0x004951 01:8941: A9 00     LDA #con_state_idle
; bzk optimize, JMP
C - - - - - 0x004953 01:8943: 20 5A C0  JSR sub_0x00C06A_prepare_player_state_handler
C - - - - - 0x004956 01:8946: 60        RTS



sub_8947:
ofs_001_8947_02:
C - - J - - 0x004957 01:8947: A0 01     LDY #$01
C - - - - - 0x004959 01:8949: B1 2A     LDA (ram_002A_temp),Y
sub_894B:
C - - - - - 0x00495B 01:894B: 48        PHA
C - - - - - 0x00495C 01:894C: AD 2B 04  LDA ram_player_global_id
C - - - - - 0x00495F 01:894F: C9 0B     CMP #$0B
C - - - - - 0x004961 01:8951: 90 07     BCC bra_895A
C - - - - - 0x004963 01:8953: 68        PLA
C - - - - - 0x004964 01:8954: 49 FF     EOR #$FF
C - - - - - 0x004966 01:8956: 18        CLC
C - - - - - 0x004967 01:8957: 69 96     ADC #$96
C - - - - - 0x004969 01:8959: 48        PHA
bra_895A:
C - - - - - 0x00496A 01:895A: 68        PLA
C - - - - - 0x00496B 01:895B: A0 06     LDY #con_plr_action_timer_1
C - - - - - 0x00496D 01:895D: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x00496F 01:895F: 20 48 C0  JSR sub_0x00C058_set_aim_to_area_A
C - - - - - 0x004972 01:8962: A9 0F     LDA #con_state_run_to_area
; bzk optimize, JMP
C - - - - - 0x004974 01:8964: 20 5A C0  JSR sub_0x00C06A_prepare_player_state_handler
C - - - - - 0x004977 01:8967: 60        RTS



ofs_001_8968_03:
C - - - - - 0x004978 01:8968: A0 01     LDY #$01
C - - - - - 0x00497A 01:896A: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x00497C 01:896C: 29 1F     AND #$1F
C - - - - - 0x00497E 01:896E: 20 96 89  JSR sub_8996
C - - - - - 0x004981 01:8971: A0 0C     LDY #con_plr_action_timer_2
C - - - - - 0x004983 01:8973: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004985 01:8975: A0 00     LDY #$00
C - - - - - 0x004987 01:8977: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004989 01:8979: 29 0F     AND #$0F
C - - - - - 0x00498B 01:897B: 0A        ASL
C - - - - - 0x00498C 01:897C: 0A        ASL
C - - - - - 0x00498D 01:897D: 85 2C     STA ram_002C_temp
C - - - - - 0x00498F 01:897F: C8        INY
C - - - - - 0x004990 01:8980: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004992 01:8982: 2A        ROL
C - - - - - 0x004993 01:8983: 2A        ROL
C - - - - - 0x004994 01:8984: 2A        ROL
C - - - - - 0x004995 01:8985: 29 03     AND #$03
C - - - - - 0x004997 01:8987: 05 2C     ORA ram_002C_temp
C - - - - - 0x004999 01:8989: 20 96 89  JSR sub_8996
C - - - - - 0x00499C 01:898C: A0 06     LDY #con_plr_action_timer_1
C - - - - - 0x00499E 01:898E: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0049A0 01:8990: A9 10     LDA #con_state_run_near_ball
; bzk optimize, JMP
C - - - - - 0x0049A2 01:8992: 20 5A C0  JSR sub_0x00C06A_prepare_player_state_handler
C - - - - - 0x0049A5 01:8995: 60        RTS



sub_8996:
C - - - - - 0x0049A6 01:8996: AA        TAX
C - - - - - 0x0049A7 01:8997: 29 0F     AND #$0F
C - - - - - 0x0049A9 01:8999: 0A        ASL
C - - - - - 0x0049AA 01:899A: 0A        ASL
C - - - - - 0x0049AB 01:899B: 0A        ASL
C - - - - - 0x0049AC 01:899C: E0 10     CPX #$10
C - - - - - 0x0049AE 01:899E: 90 04     BCC bra_89A4
C - - - - - 0x0049B0 01:89A0: 49 FF     EOR #$FF
C - - - - - 0x0049B2 01:89A2: 69 00     ADC #$00
bra_89A4:
C - - - - - 0x0049B4 01:89A4: AE 2B 04  LDX ram_player_global_id
C - - - - - 0x0049B7 01:89A7: E0 0B     CPX #$0B
C - - - - - 0x0049B9 01:89A9: 90 04     BCC bra_89AF_RTS
C - - - - - 0x0049BB 01:89AB: 49 FF     EOR #$FF
C - - - - - 0x0049BD 01:89AD: 69 00     ADC #$00
bra_89AF_RTS:
C - - - - - 0x0049BF 01:89AF: 60        RTS



loc_89B0:
ofs_001_89B0_04:
C D 0 J - - 0x0049C0 01:89B0: A9 11     LDA #con_state_follow_enemy
C - - - - - 0x0049C2 01:89B2: 20 5A C0  JSR sub_0x00C06A_prepare_player_state_handler
C - - - - - 0x0049C5 01:89B5: A0 00     LDY #con_plr_flags
C - - - - - 0x0049C7 01:89B7: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0049C9 01:89B9: 09 04     ORA #con_plr_flag_busy
C - - - - - 0x0049CB 01:89BB: 29 F7     AND #con_plr_flag_08_unknown ^ $FF
C - - - - - 0x0049CD 01:89BD: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0049CF 01:89BF: 60        RTS



loc_89C0:
ofs_001_89C0_05:
C D 0 - - - 0x0049D0 01:89C0: A0 19     LDY #con_plr_area
C - - - - - 0x0049D2 01:89C2: B1 61     LDA (ram_0061_t01_player_data),Y
bra_89C4_loop:
C - - - - - 0x0049D4 01:89C4: C9 0A     CMP #$0A
C - - - - - 0x0049D6 01:89C6: 90 04     BCC bra_89CC
C - - - - - 0x0049D8 01:89C8: E9 0A     SBC #$0A
C - - - - - 0x0049DA 01:89CA: B0 F8     BCS bra_89C4_loop
bra_89CC:
C - - - - - 0x0049DC 01:89CC: 69 0A     ADC #$0A
C - - - - - 0x0049DE 01:89CE: AE 2B 04  LDX ram_player_global_id
C - - - - - 0x0049E1 01:89D1: E0 0B     CPX #$0B
C - - - - - 0x0049E3 01:89D3: 90 02     BCC bra_89D7
C - - - - - 0x0049E5 01:89D5: 69 81     ADC #$81
bra_89D7:
C - - - - - 0x0049E7 01:89D7: 20 4B 89  JSR sub_894B
C - - - - - 0x0049EA 01:89DA: A9 14     LDA #con_state_run_to_defense
C - - - - - 0x0049EC 01:89DC: 20 5A C0  JSR sub_0x00C06A_prepare_player_state_handler
C - - - - - 0x0049EF 01:89DF: A0 00     LDY #con_plr_flags
C - - - - - 0x0049F1 01:89E1: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x0049F3 01:89E3: 09 04     ORA #con_plr_flag_busy
C - - - - - 0x0049F5 01:89E5: 29 F7     AND #con_plr_flag_08_unknown ^ $FF
C - - - - - 0x0049F7 01:89E7: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x0049F9 01:89E9: 60        RTS



ofs_001_89EA_06:
C - - J - - 0x0049FA 01:89EA: 20 47 89  JSR sub_8947
C - - - - - 0x0049FD 01:89ED: A9 15     LDA #con_state_run_to_base
; bzk optimize, JMP
C - - - - - 0x0049FF 01:89EF: 20 5A C0  JSR sub_0x00C06A_prepare_player_state_handler
C - - - - - 0x004A02 01:89F2: 60        RTS



loc_89F3_calculate_initial_player_speed:
C D 0 - - - 0x004A03 01:89F3: 85 7A     STA ram_007A_temp
C - - - - - 0x004A05 01:89F5: A0 00     LDY #$00
C - - - - - 0x004A07 01:89F7: C9 0B     CMP #$0B
C - - - - - 0x004A09 01:89F9: 90 03     BCC bra_89FE
C - - - - - 0x004A0B 01:89FB: E9 0B     SBC #$0B
C - - - - - 0x004A0D 01:89FD: C8        INY
bra_89FE:
C - - - - - 0x004A0E 01:89FE: 48        PHA
C - - - - - 0x004A0F 01:89FF: B9 A9 03  LDA ram_team_id,Y
C - - - - - 0x004A12 01:8A02: 0A        ASL
C - - - - - 0x004A13 01:8A03: A8        TAY
C - - - - - 0x004A14 01:8A04: B9 57 B3  LDA tbl_B357,Y
C - - - - - 0x004A17 01:8A07: 85 77     STA ram_0077_temp
C - - - - - 0x004A19 01:8A09: B9 58 B3  LDA tbl_B357 + $01,Y
C - - - - - 0x004A1C 01:8A0C: 85 78     STA ram_0078_temp
C - - - - - 0x004A1E 01:8A0E: 68        PLA
C - - - - - 0x004A1F 01:8A0F: A8        TAY
C - - - - - 0x004A20 01:8A10: B9 19 8B  LDA tbl_8B19,Y
C - - - - - 0x004A23 01:8A13: A0 09     LDY #$09
C - - - - - 0x004A25 01:8A15: E0 09     CPX #$09
C - - - - - 0x004A27 01:8A17: F0 13     BEQ bra_8A2C
C - - - - - 0x004A29 01:8A19: E0 03     CPX #$03
C - - - - - 0x004A2B 01:8A1B: B0 39     BCS bra_8A56
C - - - - - 0x004A2D 01:8A1D: E9 00     SBC #$00
C - - - - - 0x004A2F 01:8A1F: 48        PHA
C - - - - - 0x004A30 01:8A20: 8A        TXA
C - - - - - 0x004A31 01:8A21: 85 79     STA ram_0079_temp
C - - - - - 0x004A33 01:8A23: 0A        ASL
C - - - - - 0x004A34 01:8A24: 65 79     ADC ram_0079_temp
C - - - - - 0x004A36 01:8A26: 85 79     STA ram_0079_temp
C - - - - - 0x004A38 01:8A28: 68        PLA
C - - - - - 0x004A39 01:8A29: 65 79     ADC ram_0079_temp
C - - - - - 0x004A3B 01:8A2B: A8        TAY
bra_8A2C:
C - - - - - 0x004A3C 01:8A2C: B1 77     LDA (ram_0077_temp),Y
C - - - - - 0x004A3E 01:8A2E: A6 7A     LDX ram_007A_temp
C - - - - - 0x004A40 01:8A30: E0 0B     CPX #$0B
C - - - - - 0x004A42 01:8A32: 90 15     BCC bra_8A49
C - - - - - 0x004A44 01:8A34: 48        PHA
C - - - - - 0x004A45 01:8A35: 98        TYA
C - - - - - 0x004A46 01:8A36: 18        CLC
C - - - - - 0x004A47 01:8A37: 65 7B     ADC ram_007B_temp
C - - - - - 0x004A49 01:8A39: A8        TAY
C - - - - - 0x004A4A 01:8A3A: 68        PLA
C - - - - - 0x004A4B 01:8A3B: 18        CLC
C - - - - - 0x004A4C 01:8A3C: 79 82 B2  ADC tbl_B282,Y
C - - - - - 0x004A4F 01:8A3F: 10 02     BPL bra_8A43
- - - - - - 0x004A51 01:8A41: A9 00     LDA #$00
bra_8A43:
C - - - - - 0x004A53 01:8A43: C9 10     CMP #$10
C - - - - - 0x004A55 01:8A45: 90 02     BCC bra_8A49
- - - - - - 0x004A57 01:8A47: A9 0F     LDA #$0F
bra_8A49:
C - - - - - 0x004A59 01:8A49: 0A        ASL
C - - - - - 0x004A5A 01:8A4A: A8        TAY
C - - - - - 0x004A5B 01:8A4B: B9 27 B3  LDA tbl_B327,Y
C - - - - - 0x004A5E 01:8A4E: 85 77     STA ram_0077_temp
C - - - - - 0x004A60 01:8A50: B9 28 B3  LDA tbl_B328,Y
C - - - - - 0x004A63 01:8A53: 85 78     STA ram_0078_temp
C - - - - - 0x004A65 01:8A55: 60        RTS
bra_8A56:
- - - - - - 0x004A66 01:8A56: E0 05     CPX #$05
- - - - - - 0x004A68 01:8A58: D0 06     BNE bra_8A60
- - - - - - 0x004A6A 01:8A5A: 18        CLC
- - - - - - 0x004A6B 01:8A5B: 69 0B     ADC #$0B
- - - - - - 0x004A6D 01:8A5D: 4C 67 8A  JMP loc_8A67
bra_8A60:
- - - - - - 0x004A70 01:8A60: E0 06     CPX #$06
- - - - - - 0x004A72 01:8A62: D0 03     BNE bra_8A67
- - - - - - 0x004A74 01:8A64: 18        CLC
- - - - - - 0x004A75 01:8A65: 69 0E     ADC #$0E
bra_8A67:
loc_8A67:
- - - - - - 0x004A77 01:8A67: A8        TAY
- - - - - - 0x004A78 01:8A68: B1 77     LDA (ram_0077_temp),Y
- - - - - - 0x004A7A 01:8A6A: 85 77     STA ram_0077_temp
- - - - - - 0x004A7C 01:8A6C: A9 00     LDA #$00
- - - - - - 0x004A7E 01:8A6E: 85 78     STA ram_0078_temp
- - - - - - 0x004A80 01:8A70: 60        RTS



loc_8A71_set_base_stats_for_team_and_players:
C D 0 - - - 0x004A81 01:8A71: A9 00     LDA #$00
C - - - - - 0x004A83 01:8A73: 2C A4 03  BIT ram_03A4
C - - - - - 0x004A86 01:8A76: 30 03     BMI bra_8A7B
C - - - - - 0x004A88 01:8A78: AD B3 03  LDA ram_game_counter
bra_8A7B:
C - - - - - 0x004A8B 01:8A7B: 85 2A     STA ram_002A_temp
C - - - - - 0x004A8D 01:8A7D: 0A        ASL
C - - - - - 0x004A8E 01:8A7E: AA        TAX
C - - - - - 0x004A8F 01:8A7F: 65 2A     ADC ram_002A_temp
C - - - - - 0x004A91 01:8A81: 85 2A     STA ram_002A_temp
C - - - - - 0x004A93 01:8A83: 8A        TXA
C - - - - - 0x004A94 01:8A84: 0A        ASL
C - - - - - 0x004A95 01:8A85: 0A        ASL
C - - - - - 0x004A96 01:8A86: 65 2A     ADC ram_002A_temp
C - - - - - 0x004A98 01:8A88: 85 7B     STA ram_007B_temp
C - - - - - 0x004A9A 01:8A8A: A2 00     LDX #$00
C - - - - - 0x004A9C 01:8A8C: 20 95 8A  JSR sub_8A95
C - - - - - 0x004A9F 01:8A8F: A2 01     LDX #$01
C - - - - - 0x004AA1 01:8A91: 20 95 8A  JSR sub_8A95
C - - - - - 0x004AA4 01:8A94: 60        RTS



sub_8A95:
C - - - - - 0x004AA5 01:8A95: BD A9 03  LDA ram_team_id,X
C - - - - - 0x004AA8 01:8A98: 0A        ASL
C - - - - - 0x004AA9 01:8A99: A8        TAY
C - - - - - 0x004AAA 01:8A9A: B9 57 B3  LDA tbl_B357,Y
C - - - - - 0x004AAD 01:8A9D: 85 2A     STA ram_002A_temp
C - - - - - 0x004AAF 01:8A9F: B9 58 B3  LDA tbl_B357 + $01,Y
C - - - - - 0x004AB2 01:8AA2: 85 2B     STA ram_002B_temp
C - - - - - 0x004AB4 01:8AA4: A0 11     LDY #$11
C - - - - - 0x004AB6 01:8AA6: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004AB8 01:8AA8: 95 7C     STA ram_attack,X
C - - - - - 0x004ABA 01:8AAA: C8        INY
C - - - - - 0x004ABB 01:8AAB: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004ABD 01:8AAD: 95 7E     STA ram_defense,X
C - - - - - 0x004ABF 01:8AAF: A0 0A     LDY #$0A
C - - - - - 0x004AC1 01:8AB1: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004AC3 01:8AB3: A4 7B     LDY ram_007B_temp
C - - - - - 0x004AC5 01:8AB5: 18        CLC
C - - - - - 0x004AC6 01:8AB6: 79 8C B2  ADC tbl_B28C,Y
C - - - - - 0x004AC9 01:8AB9: 10 02     BPL bra_8ABD
- - - - - - 0x004ACB 01:8ABB: A9 00     LDA #$00
bra_8ABD:
C - - - - - 0x004ACD 01:8ABD: C9 10     CMP #$10
C - - - - - 0x004ACF 01:8ABF: 90 02     BCC bra_8AC3
- - - - - - 0x004AD1 01:8AC1: A9 0F     LDA #$0F
bra_8AC3:
C - - - - - 0x004AD3 01:8AC3: A8        TAY
C - - - - - 0x004AD4 01:8AC4: B9 47 B3  LDA tbl_B347,Y
C - - - - - 0x004AD7 01:8AC7: 95 80     STA ram_unused_team_stats,X
C - - - - - 0x004AD9 01:8AC9: 8A        TXA
C - - - - - 0x004ADA 01:8ACA: F0 02     BEQ bra_8ACE
C - - - - - 0x004ADC 01:8ACC: A9 0B     LDA #$0B
bra_8ACE:
C - - - - - 0x004ADE 01:8ACE: A0 00     LDY #$00
C - - - - - 0x004AE0 01:8AD0: 84 2C     STY ram_002C_temp
bra_8AD2_loop:
C - - - - - 0x004AE2 01:8AD2: 48        PHA
C - - - - - 0x004AE3 01:8AD3: 20 57 C0  JSR sub_0x00C067_set_player_base_address_pointer
C - - - - - 0x004AE6 01:8AD6: A6 2C     LDX ram_002C_temp
C - - - - - 0x004AE8 01:8AD8: BD 19 8B  LDA tbl_8B19,X
C - - - - - 0x004AEB 01:8ADB: 18        CLC
C - - - - - 0x004AEC 01:8ADC: 69 07     ADC #$07
C - - - - - 0x004AEE 01:8ADE: A8        TAY
C - - - - - 0x004AEF 01:8ADF: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004AF1 01:8AE1: A0 0E     LDY #con_plr_unknown_0E
C - - - - - 0x004AF3 01:8AE3: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004AF5 01:8AE5: A5 2C     LDA ram_002C_temp
C - - - - - 0x004AF7 01:8AE7: D0 23     BNE bra_8B0C
C - - - - - 0x004AF9 01:8AE9: A0 09     LDY #$09
C - - - - - 0x004AFB 01:8AEB: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004AFD 01:8AED: A4 7B     LDY ram_007B_temp
C - - - - - 0x004AFF 01:8AEF: 18        CLC
C - - - - - 0x004B00 01:8AF0: 79 8B B2  ADC tbl_B28B,Y
C - - - - - 0x004B03 01:8AF3: 10 02     BPL bra_8AF7
- - - - - - 0x004B05 01:8AF5: A9 00     LDA #$00
bra_8AF7:
C - - - - - 0x004B07 01:8AF7: C9 10     CMP #$10
C - - - - - 0x004B09 01:8AF9: 90 02     BCC bra_8AFD
- - - - - - 0x004B0B 01:8AFB: A9 0F     LDA #$0F
bra_8AFD:
C - - - - - 0x004B0D 01:8AFD: 0A        ASL
C - - - - - 0x004B0E 01:8AFE: AA        TAX
C - - - - - 0x004B0F 01:8AFF: A0 14     LDY #con_plr_spd_fr_init
C - - - - - 0x004B11 01:8B01: BD 27 B3  LDA tbl_B327,X
C - - - - - 0x004B14 01:8B04: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004B16 01:8B06: C8        INY ; con_plr_spd_lo_init
C - - - - - 0x004B17 01:8B07: BD 28 B3  LDA tbl_B328,X
C - - - - - 0x004B1A 01:8B0A: 91 61     STA (ram_0061_t01_player_data),Y
bra_8B0C:
C - - - - - 0x004B1C 01:8B0C: 68        PLA
C - - - - - 0x004B1D 01:8B0D: 18        CLC
C - - - - - 0x004B1E 01:8B0E: 69 01     ADC #$01
C - - - - - 0x004B20 01:8B10: E6 2C     INC ram_002C_temp
C - - - - - 0x004B22 01:8B12: A6 2C     LDX ram_002C_temp
C - - - - - 0x004B24 01:8B14: E0 0B     CPX #$0B
C - - - - - 0x004B26 01:8B16: D0 BA     BNE bra_8AD2_loop
C - - - - - 0x004B28 01:8B18: 60        RTS



tbl_8B19:
- D 0 - - - 0x004B29 01:8B19: 00        .byte $00   ; 
- D 0 - - - 0x004B2A 01:8B1A: 03        .byte $03   ; 
- D 0 - - - 0x004B2B 01:8B1B: 03        .byte $03   ; 
- D 0 - - - 0x004B2C 01:8B1C: 03        .byte $03   ; 
- D 0 - - - 0x004B2D 01:8B1D: 03        .byte $03   ; 
- D 0 - - - 0x004B2E 01:8B1E: 02        .byte $02   ; 
- D 0 - - - 0x004B2F 01:8B1F: 01        .byte $01   ; 
- D 0 - - - 0x004B30 01:8B20: 02        .byte $02   ; 
- D 0 - - - 0x004B31 01:8B21: 01        .byte $01   ; 
- D 0 - - - 0x004B32 01:8B22: 02        .byte $02   ; 
- D 0 - - - 0x004B33 01:8B23: 01        .byte $01   ; 



loc_8B24_select_random_button_for_cpu_during_pk:
C D 0 - - - 0x004B34 01:8B24: AA        TAX
C - - - - - 0x004B35 01:8B25: A0 00     LDY #$00
C - - - - - 0x004B37 01:8B27: AD 7F 03  LDA ram_random + $01
C - - - - - 0x004B3A 01:8B2A: 6D 7E 03  ADC ram_random
C - - - - - 0x004B3D 01:8B2D: DD 3B 8B  CMP tbl_8B3B,X
C - - - - - 0x004B40 01:8B30: 90 07     BCC bra_8B39
C - - - - - 0x004B42 01:8B32: C8        INY
C - - - - - 0x004B43 01:8B33: DD 3C 8B  CMP tbl_8B3C,X
C - - - - - 0x004B46 01:8B36: 90 01     BCC bra_8B39
C - - - - - 0x004B48 01:8B38: C8        INY
bra_8B39:
C - - - - - 0x004B49 01:8B39: 98        TYA
C - - - - - 0x004B4A 01:8B3A: 60        RTS



tbl_8B3B:
- D 0 - - - 0x004B4B 01:8B3B: 55        .byte $55   ; 
tbl_8B3C:
- D 0 - - - 0x004B4C 01:8B3C: AA        .byte $AA   ; 
- D 0 - - - 0x004B4D 01:8B3D: 64        .byte $64   ; 
- D 0 - - - 0x004B4E 01:8B3E: B2        .byte $B2   ; 



loc_8B3F_calculate_cpu_chance_for_fast_shoot:
C D 0 - - - 0x004B4F 01:8B3F: 38        SEC
C - - - - - 0x004B50 01:8B40: AD DE 03  LDA ram_ball_pos_Y_lo
; bzk optimize, no need to perform 16-nit substraction if low SBC = 00,
; you can subsctract directly from high byte
C - - - - - 0x004B53 01:8B43: E9 00     SBC #< $0300
C - - - - - 0x004B55 01:8B45: AD E0 03  LDA ram_ball_pos_Y_hi
C - - - - - 0x004B58 01:8B48: E9 03     SBC #> $0300
C - - - - - 0x004B5A 01:8B4A: 90 1D     BCC bra_8B69
C - - - - - 0x004B5C 01:8B4C: AE D8 03  LDX ram_ball_pos_X_lo
C - - - - - 0x004B5F 01:8B4F: AC DA 03  LDY ram_ball_pos_X_hi
C - - - - - 0x004B62 01:8B52: F0 03     BEQ bra_8B57
C - - - - - 0x004B64 01:8B54: 20 36 C0  JSR sub_0x00C046_EOR_16bit_INYx2
bra_8B57:
C - - - - - 0x004B67 01:8B57: 8A        TXA
C - - - - - 0x004B68 01:8B58: 38        SEC
C - - - - - 0x004B69 01:8B59: E9 80     SBC #< $0080
C - - - - - 0x004B6B 01:8B5B: 98        TYA
C - - - - - 0x004B6C 01:8B5C: E9 00     SBC #> $0080
C - - - - - 0x004B6E 01:8B5E: 90 09     BCC bra_8B69
C - - - - - 0x004B70 01:8B60: AD 7E 03  LDA ram_random
C - - - - - 0x004B73 01:8B63: C9 40     CMP #$40
C - - - - - 0x004B75 01:8B65: 90 02     BCC bra_8B69
C - - - - - 0x004B77 01:8B67: 38        SEC
C - - - - - 0x004B78 01:8B68: 60        RTS
bra_8B69:
C - - - - - 0x004B79 01:8B69: 18        CLC
C - - - - - 0x004B7A 01:8B6A: 60        RTS



loc_8B6B_calculate_ball_side_relative_to_gk:
C D 0 - - - 0x004B7B 01:8B6B: 2C 29 04  BIT ram_player_with_ball
C - - - - - 0x004B7E 01:8B6E: 10 03     BPL bra_8B73
C - - - - - 0x004B80 01:8B70: 4C 97 8B  JMP loc_8B97
bra_8B73:
C - - - - - 0x004B83 01:8B73: A0 05     LDY #con_plr_pos_X_lo
C - - - - - 0x004B85 01:8B75: 20 85 8B  JSR sub_8B85
C - - - - - 0x004B88 01:8B78: 85 2A     STA ram_002A_temp
C - - - - - 0x004B8A 01:8B7A: A0 0B     LDY #con_plr_pos_Y_lo
C - - - - - 0x004B8C 01:8B7C: 20 85 8B  JSR sub_8B85
C - - - - - 0x004B8F 01:8B7F: 0A        ASL
C - - - - - 0x004B90 01:8B80: 0A        ASL
C - - - - - 0x004B91 01:8B81: 05 2A     ORA ram_002A_temp
C - - - - - 0x004B93 01:8B83: AA        TAX
C - - - - - 0x004B94 01:8B84: 60        RTS



sub_8B85:
; in
    ; Y = con_plr_pos_X_lo/con_plr_pos_Y_lo
C - - - - - 0x004B95 01:8B85: 38        SEC
C - - - - - 0x004B96 01:8B86: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004B98 01:8B88: F9 D3 03  SBC ram_ball_flags,Y
C - - - - - 0x004B9B 01:8B8B: AA        TAX
C - - - - - 0x004B9C 01:8B8C: C8        INY
C - - - - - 0x004B9D 01:8B8D: C8        INY ; con_plr_pos_X_hi/con_plr_pos_Y_hi
C - - - - - 0x004B9E 01:8B8E: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004BA0 01:8B90: F9 D3 03  SBC ram_ball_flags,Y
C - - - - - 0x004BA3 01:8B93: 20 C3 8B  JSR sub_8BC3
C - - - - - 0x004BA6 01:8B96: 60        RTS



loc_8B97:
C D 0 - - - 0x004BA7 01:8B97: A0 05     LDY #con_plr_pos_X_lo
C - - - - - 0x004BA9 01:8B99: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004BAB 01:8B9B: 38        SEC
C - - - - - 0x004BAC 01:8B9C: ED 13 04  SBC ram_ball_land_pos_X_lo
C - - - - - 0x004BAF 01:8B9F: AA        TAX
C - - - - - 0x004BB0 01:8BA0: C8        INY
C - - - - - 0x004BB1 01:8BA1: C8        INY ; con_plr_pos_X_hi
C - - - - - 0x004BB2 01:8BA2: ED 14 04  SBC ram_ball_land_pos_X_hi
C - - - - - 0x004BB5 01:8BA5: 20 C3 8B  JSR sub_8BC3
C - - - - - 0x004BB8 01:8BA8: 85 2A     STA ram_002A_temp
C - - - - - 0x004BBA 01:8BAA: A0 0B     LDY #con_plr_pos_Y_lo
C - - - - - 0x004BBC 01:8BAC: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004BBE 01:8BAE: 38        SEC
C - - - - - 0x004BBF 01:8BAF: ED 15 04  SBC ram_ball_land_pos_Y_lo
C - - - - - 0x004BC2 01:8BB2: AA        TAX
C - - - - - 0x004BC3 01:8BB3: C8        INY
C - - - - - 0x004BC4 01:8BB4: C8        INY ; con_plr_pos_Y_hi
C - - - - - 0x004BC5 01:8BB5: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004BC7 01:8BB7: ED 16 04  SBC ram_ball_land_pos_Y_hi
C - - - - - 0x004BCA 01:8BBA: 20 C3 8B  JSR sub_8BC3
C - - - - - 0x004BCD 01:8BBD: 0A        ASL
C - - - - - 0x004BCE 01:8BBE: 0A        ASL
C - - - - - 0x004BCF 01:8BBF: 05 2A     ORA ram_002A_temp
C - - - - - 0x004BD1 01:8BC1: AA        TAX
C - - - - - 0x004BD2 01:8BC2: 60        RTS



sub_8BC3:
C - - - - - 0x004BD3 01:8BC3: A8        TAY
C - - - - - 0x004BD4 01:8BC4: 08        PHP
C - - - - - 0x004BD5 01:8BC5: 10 03     BPL bra_8BCA
C - - - - - 0x004BD7 01:8BC7: 20 42 C0  JSR sub_0x00C052_EOR_16bit
bra_8BCA:
C - - - - - 0x004BDA 01:8BCA: 98        TYA
C - - - - - 0x004BDB 01:8BCB: D0 08     BNE bra_8BD5
C - - - - - 0x004BDD 01:8BCD: E0 04     CPX #$04
C - - - - - 0x004BDF 01:8BCF: B0 04     BCS bra_8BD5
C - - - - - 0x004BE1 01:8BD1: 28        PLP
C - - - - - 0x004BE2 01:8BD2: A9 00     LDA #$00
C - - - - - 0x004BE4 01:8BD4: 60        RTS
bra_8BD5:
C - - - - - 0x004BE5 01:8BD5: A9 01     LDA #$01
C - - - - - 0x004BE7 01:8BD7: 28        PLP
C - - - - - 0x004BE8 01:8BD8: 30 01     BMI bra_8BDB_RTS
C - - - - - 0x004BEA 01:8BDA: 0A        ASL
bra_8BDB_RTS:
C - - - - - 0x004BEB 01:8BDB: 60        RTS



loc_8BDC:
C D 0 - - - 0x004BEC 01:8BDC: AD 7F 03  LDA ram_random + $01
C - - - - - 0x004BEF 01:8BDF: A0 0C     LDY #con_plr_action_timer_2
C - - - - - 0x004BF1 01:8BE1: 29 0F     AND #$0F
C - - - - - 0x004BF3 01:8BE3: 69 10     ADC #$10
C - - - - - 0x004BF5 01:8BE5: 91 61     STA (ram_0061_t01_player_data),Y
C - - - - - 0x004BF7 01:8BE7: 60        RTS



loc_8BE8_calculate_cpu_decision_or_his_direction:
C D 0 - - - 0x004BF8 01:8BE8: 24 82     BIT ram_flag_cpu_got_ball
C - - - - - 0x004BFA 01:8BEA: 30 11     BMI bra_8BFD
C - - - - - 0x004BFC 01:8BEC: A9 80     LDA #$80
C - - - - - 0x004BFE 01:8BEE: 85 82     STA ram_flag_cpu_got_ball
C - - - - - 0x004C00 01:8BF0: A9 01     LDA #$01
C - - - - - 0x004C02 01:8BF2: 85 83     STA ram_timer_before_cpu_changes_direction
C - - - - - 0x004C04 01:8BF4: A9 00     LDA #$00
C - - - - - 0x004C06 01:8BF6: 85 84     STA ram_cpu_buttons
C - - - - - 0x004C08 01:8BF8: AD 27 04  LDA ram_area_id
C - - - - - 0x004C0B 01:8BFB: 85 85     STA ram_copy_area_id
bra_8BFD:
C - - - - - 0x004C0D 01:8BFD: A9 00     LDA #$00
C - - - - - 0x004C0F 01:8BFF: 85 86     STA ram_cpu_player_decision
C - - - - - 0x004C11 01:8C01: 20 A8 8C  JSR sub_8CA8_cpu_choses_partner_for_pass_or_shoots
C - - - - - 0x004C14 01:8C04: 20 4F 8C  JSR sub_8C4F_set_direction_to_cpu_with_ball
C - - - - - 0x004C17 01:8C07: C6 83     DEC ram_timer_before_cpu_changes_direction
C - - - - - 0x004C19 01:8C09: D0 41     BNE bra_8C4C
C - - - - - 0x004C1B 01:8C0B: A9 00     LDA #$00
C - - - - - 0x004C1D 01:8C0D: 85 84     STA ram_cpu_buttons
C - - - - - 0x004C1F 01:8C0F: 20 4F 8C  JSR sub_8C4F_set_direction_to_cpu_with_ball
C - - - - - 0x004C22 01:8C12: A5 84     LDA ram_cpu_buttons
C - - - - - 0x004C24 01:8C14: 29 0C     AND #$0C
C - - - - - 0x004C26 01:8C16: D0 0F     BNE bra_8C27
C - - - - - 0x004C28 01:8C18: AD 7F 03  LDA ram_random + $01
C - - - - - 0x004C2B 01:8C1B: 29 0C     AND #$0C
C - - - - - 0x004C2D 01:8C1D: C9 0C     CMP #$0C
C - - - - - 0x004C2F 01:8C1F: D0 02     BNE bra_8C23
- - - - - - 0x004C31 01:8C21: A9 04     LDA #$04
bra_8C23:
C - - - - - 0x004C33 01:8C23: 05 84     ORA ram_cpu_buttons
C - - - - - 0x004C35 01:8C25: 85 84     STA ram_cpu_buttons
bra_8C27:
C - - - - - 0x004C37 01:8C27: A5 84     LDA ram_cpu_buttons
C - - - - - 0x004C39 01:8C29: 29 03     AND #$03
C - - - - - 0x004C3B 01:8C2B: D0 16     BNE bra_8C43
C - - - - - 0x004C3D 01:8C2D: AD 7E 03  LDA ram_random
C - - - - - 0x004C40 01:8C30: 29 03     AND #$03
C - - - - - 0x004C42 01:8C32: C9 03     CMP #$03
C - - - - - 0x004C44 01:8C34: D0 09     BNE bra_8C3F
C - - - - - 0x004C46 01:8C36: A9 01     LDA #$01
C - - - - - 0x004C48 01:8C38: AE DA 03  LDX ram_ball_pos_X_hi
C - - - - - 0x004C4B 01:8C3B: F0 02     BEQ bra_8C3F
C - - - - - 0x004C4D 01:8C3D: A9 02     LDA #$02
bra_8C3F:
C - - - - - 0x004C4F 01:8C3F: 05 84     ORA ram_cpu_buttons
C - - - - - 0x004C51 01:8C41: 85 84     STA ram_cpu_buttons
bra_8C43:
C - - - - - 0x004C53 01:8C43: AD 7E 03  LDA ram_random
C - - - - - 0x004C56 01:8C46: 29 3C     AND #$3C
C - - - - - 0x004C58 01:8C48: 69 08     ADC #$08
C - - - - - 0x004C5A 01:8C4A: 85 83     STA ram_timer_before_cpu_changes_direction
bra_8C4C:
C - - - - - 0x004C5C 01:8C4C: A5 84     LDA ram_cpu_buttons
C - - - - - 0x004C5E 01:8C4E: 60        RTS



sub_8C4F_set_direction_to_cpu_with_ball:
C - - - - - 0x004C5F 01:8C4F: A0 0D     LDY #con_plr_pos_Y_hi
C - - - - - 0x004C61 01:8C51: B1 61     LDA (ram_0061_t01_player_data),Y
C - - - - - 0x004C63 01:8C53: C9 03     CMP #$03
C - - - - - 0x004C65 01:8C55: B0 0B     BCS bra_8C62
C - - - - - 0x004C67 01:8C57: A5 84     LDA ram_cpu_buttons
C - - - - - 0x004C69 01:8C59: 29 F3     AND #$F3
C - - - - - 0x004C6B 01:8C5B: 09 04     ORA #$04
C - - - - - 0x004C6D 01:8C5D: 85 84     STA ram_cpu_buttons
C - - - - - 0x004C6F 01:8C5F: 4C 65 8C  JMP loc_8C65
bra_8C62:
C - - - - - 0x004C72 01:8C62: 20 92 8C  JSR sub_8C92
loc_8C65:
C D 0 - - - 0x004C75 01:8C65: A9 00     LDA #$00
C - - - - - 0x004C77 01:8C67: 85 2A     STA ram_002A_temp
C - - - - - 0x004C79 01:8C69: AE D8 03  LDX ram_ball_pos_X_lo
C - - - - - 0x004C7C 01:8C6C: AC DA 03  LDY ram_ball_pos_X_hi
C - - - - - 0x004C7F 01:8C6F: F0 05     BEQ bra_8C76
C - - - - - 0x004C81 01:8C71: E6 2A     INC ram_002A_temp
C - - - - - 0x004C83 01:8C73: 20 36 C0  JSR sub_0x00C046_EOR_16bit_INYx2
bra_8C76:
C - - - - - 0x004C86 01:8C76: 38        SEC
C - - - - - 0x004C87 01:8C77: 8A        TXA
C - - - - - 0x004C88 01:8C78: E9 40     SBC #< $0040
C - - - - - 0x004C8A 01:8C7A: 98        TYA
C - - - - - 0x004C8B 01:8C7B: E9 00     SBC #> $0040
C - - - - - 0x004C8D 01:8C7D: B0 12     BCS bra_8C91_RTS
C - - - - - 0x004C8F 01:8C7F: A2 01     LDX #$01
C - - - - - 0x004C91 01:8C81: 46 2A     LSR ram_002A_temp
C - - - - - 0x004C93 01:8C83: 90 01     BCC bra_8C86
C - - - - - 0x004C95 01:8C85: E8        INX
bra_8C86:
C - - - - - 0x004C96 01:8C86: A5 84     LDA ram_cpu_buttons
C - - - - - 0x004C98 01:8C88: 29 FC     AND #$FC
C - - - - - 0x004C9A 01:8C8A: 85 84     STA ram_cpu_buttons
C - - - - - 0x004C9C 01:8C8C: 8A        TXA
C - - - - - 0x004C9D 01:8C8D: 05 84     ORA ram_cpu_buttons
C - - - - - 0x004C9F 01:8C8F: 85 84     STA ram_cpu_buttons
bra_8C91_RTS:
C - - - - - 0x004CA1 01:8C91: 60        RTS



sub_8C92:
C - - - - - 0x004CA2 01:8C92: 38        SEC
C - - - - - 0x004CA3 01:8C93: AD DE 03  LDA ram_ball_pos_Y_lo
C - - - - - 0x004CA6 01:8C96: E9 40     SBC #$40
C - - - - - 0x004CA8 01:8C98: AD E0 03  LDA ram_ball_pos_Y_hi
C - - - - - 0x004CAB 01:8C9B: E9 03     SBC #$03
C - - - - - 0x004CAD 01:8C9D: 90 08     BCC bra_8CA7_RTS
C - - - - - 0x004CAF 01:8C9F: A5 84     LDA ram_cpu_buttons
C - - - - - 0x004CB1 01:8CA1: 29 F3     AND #$F3
C - - - - - 0x004CB3 01:8CA3: 09 08     ORA #$08
C - - - - - 0x004CB5 01:8CA5: 85 84     STA ram_cpu_buttons
bra_8CA7_RTS:
C - - - - - 0x004CB7 01:8CA7: 60        RTS



sub_8CA8_cpu_choses_partner_for_pass_or_shoots:
C - - - - - 0x004CB8 01:8CA8: AC 27 04  LDY ram_area_id
C - - - - - 0x004CBB 01:8CAB: C4 85     CPY ram_copy_area_id
C - - - - - 0x004CBD 01:8CAD: D0 01     BNE bra_8CB0
C - - - - - 0x004CBF 01:8CAF: 60        RTS
bra_8CB0:
C - - - - - 0x004CC0 01:8CB0: 84 85     STY ram_copy_area_id
C - - - - - 0x004CC2 01:8CB2: A9 27     LDA #< tbl_B727_cpu_behavior
C - - - - - 0x004CC4 01:8CB4: 85 2A     STA ram_002A_temp
C - - - - - 0x004CC6 01:8CB6: A9 B7     LDA #> tbl_B727_cpu_behavior
C - - - - - 0x004CC8 01:8CB8: 85 2B     STA ram_002B_temp
C - - - - - 0x004CCA 01:8CBA: B1 88     LDA (ram_0088_temp),Y
C - - - - - 0x004CCC 01:8CBC: 0A        ASL
C - - - - - 0x004CCD 01:8CBD: 90 02     BCC bra_8CC1_not_overflow
- - - - - - 0x004CCF 01:8CBF: E6 2B     INC ram_002B_temp
bra_8CC1_not_overflow:
C - - - - - 0x004CD1 01:8CC1: A8        TAY
C - - - - - 0x004CD2 01:8CC2: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004CD4 01:8CC4: AA        TAX
C - - - - - 0x004CD5 01:8CC5: C8        INY
C - - - - - 0x004CD6 01:8CC6: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004CD8 01:8CC8: 86 2A     STX ram_002A_temp
C - - - - - 0x004CDA 01:8CCA: 85 2B     STA ram_002B_temp
C - - - - - 0x004CDC 01:8CCC: A0 00     LDY #$00
C - - - - - 0x004CDE 01:8CCE: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004CE0 01:8CD0: F0 08     BEQ bra_8CDA
C - - - - - 0x004CE2 01:8CD2: CD 7E 03  CMP ram_random
C - - - - - 0x004CE5 01:8CD5: 90 03     BCC bra_8CDA
C - - - - - 0x004CE7 01:8CD7: 4C 0A 8D  JMP loc_8D0A_shoot_decision
bra_8CDA:
C - - - - - 0x004CEA 01:8CDA: C8        INY
C - - - - - 0x004CEB 01:8CDB: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004CED 01:8CDD: F0 2A     BEQ bra_8D09_RTS
C - - - - - 0x004CEF 01:8CDF: CD 7F 03  CMP ram_random + $01
C - - - - - 0x004CF2 01:8CE2: 90 25     BCC bra_8D09_RTS
C - - - - - 0x004CF4 01:8CE4: C8        INY
C - - - - - 0x004CF5 01:8CE5: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004CF7 01:8CE7: F0 20     BEQ bra_8D09_RTS
C - - - - - 0x004CF9 01:8CE9: 85 2C     STA ram_002C_temp
C - - - - - 0x004CFB 01:8CEB: C8        INY
bra_8CEC_loop:
C - - - - - 0x004CFC 01:8CEC: 0E 7E 03  ASL ram_random
C - - - - - 0x004CFF 01:8CEF: 2E 7F 03  ROL ram_random + $01
C - - - - - 0x004D02 01:8CF2: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004D04 01:8CF4: CD 7F 03  CMP ram_random + $01
C - - - - - 0x004D07 01:8CF7: C8        INY
C - - - - - 0x004D08 01:8CF8: B1 2A     LDA (ram_002A_temp),Y
C - - - - - 0x004D0A 01:8CFA: C8        INY
C - - - - - 0x004D0B 01:8CFB: 90 08     BCC bra_8D05
C - - - - - 0x004D0D 01:8CFD: CD 29 04  CMP ram_player_with_ball
C - - - - - 0x004D10 01:8D00: F0 03     BEQ bra_8D05
C - - - - - 0x004D12 01:8D02: 4C 11 8D  JMP loc_8D11_pass_decision
bra_8D05:
C - - - - - 0x004D15 01:8D05: C6 2C     DEC ram_002C_temp
C - - - - - 0x004D17 01:8D07: D0 E3     BNE bra_8CEC_loop
bra_8D09_RTS:
C - - - - - 0x004D19 01:8D09: 60        RTS



loc_8D0A_shoot_decision:
C D 0 - - - 0x004D1A 01:8D0A: A9 80     LDA #$80
C - - - - - 0x004D1C 01:8D0C: 85 86     STA ram_cpu_player_decision
C - - - - - 0x004D1E 01:8D0E: 68        PLA
C - - - - - 0x004D1F 01:8D0F: 68        PLA
C - - - - - 0x004D20 01:8D10: 60        RTS



loc_8D11_pass_decision:
C D 0 - - - 0x004D21 01:8D11: 85 87     STA ram_cpu_teammate
C - - - - - 0x004D23 01:8D13: A9 81     LDA #$81
C - - - - - 0x004D25 01:8D15: 85 86     STA ram_cpu_player_decision
C - - - - - 0x004D27 01:8D17: 68        PLA
C - - - - - 0x004D28 01:8D18: 68        PLA
C - - - - - 0x004D29 01:8D19: 60        RTS



loc_8D1A_prepare_behavior_tempate_for_cpu:
C D 0 - - - 0x004D2A 01:8D1A: A9 00     LDA #$00
C - - - - - 0x004D2C 01:8D1C: 85 2B     STA ram_002B_temp
C - - - - - 0x004D2E 01:8D1E: AD AA 03  LDA ram_team_id + $01
C - - - - - 0x004D31 01:8D21: 0A        ASL
C - - - - - 0x004D32 01:8D22: 0A        ASL
C - - - - - 0x004D33 01:8D23: 0A        ASL
C - - - - - 0x004D34 01:8D24: 85 2A     STA ram_002A_temp
C - - - - - 0x004D36 01:8D26: 0A        ASL
C - - - - - 0x004D37 01:8D27: 0A        ASL
C - - - - - 0x004D38 01:8D28: 26 2B     ROL ram_002B_temp
C - - - - - 0x004D3A 01:8D2A: 65 2A     ADC ram_002A_temp
C - - - - - 0x004D3C 01:8D2C: 48        PHA
C - - - - - 0x004D3D 01:8D2D: A5 2B     LDA ram_002B_temp
C - - - - - 0x004D3F 01:8D2F: 69 00     ADC #$00
C - - - - - 0x004D41 01:8D31: AA        TAX
C - - - - - 0x004D42 01:8D32: 68        PLA
C - - - - - 0x004D43 01:8D33: 18        CLC
C - - - - - 0x004D44 01:8D34: 69 A7     ADC #< tbl_B4A7
C - - - - - 0x004D46 01:8D36: 85 88     STA ram_0088_temp
C - - - - - 0x004D48 01:8D38: 8A        TXA
C - - - - - 0x004D49 01:8D39: 69 B4     ADC #> tbl_B4A7
C - - - - - 0x004D4B 01:8D3B: 85 89     STA ram_0089_temp
C - - - - - 0x004D4D 01:8D3D: 60        RTS



tbl_8D3E:
; поинтеры на tbl_9026
; байтами выбирается набор тайлов размером 2x8 для поля
- - - - - - 0x004D4E 01:8D3E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004D56 01:8D46: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004D5E 01:8D4E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004D66 01:8D56: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004D6E 01:8D5E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004D76 01:8D66: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004D7E 01:8D6E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004D86 01:8D76: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01   ; 
- D 0 - I - 0x004D8E 01:8D7E: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02   ; 
- D 0 - I - 0x004D96 01:8D86: 03        .byte $03, $04, $04, $05, $06, $04, $04, $07   ; 
- D 0 - I - 0x004D9E 01:8D8E: 08        .byte $08, $09, $09, $0A, $0B, $0C, $0C, $0D   ; 
- D 0 - I - 0x004DA6 01:8D96: 0E        .byte $0E, $0F, $0F, $04, $04, $10, $10, $11   ; 
- D 0 - I - 0x004DAE 01:8D9E: 12        .byte $12, $13, $14, $15, $15, $16, $12, $13   ; 
- D 0 - I - 0x004DB6 01:8DA6: 10        .byte $10, $0F, $17, $18, $18, $19, $10, $0F   ; 
- D 0 - I - 0x004DBE 01:8DAE: 12        .byte $12, $13, $20, $20, $20, $20, $12, $13   ; 
- - - - - - 0x004DC6 01:8DB6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004DCE 01:8DBE: 10        .byte $10, $0F, $04, $1A, $1B, $04, $10, $0F   ; 
- D 0 - I - 0x004DD6 01:8DC6: 12        .byte $12, $13, $20, $20, $20, $20, $12, $13   ; 
- D 0 - I - 0x004DDE 01:8DCE: 10        .byte $10, $62, $2C, $2C, $2C, $2C, $63, $0F   ; 
- D 0 - I - 0x004DE6 01:8DD6: 12        .byte $12, $60, $33, $1C, $1D, $33, $61, $13   ; 
- D 0 - I - 0x004DEE 01:8DDE: 10        .byte $10, $04, $04, $1E, $1F, $04, $04, $0F   ; 
- D 0 - I - 0x004DF6 01:8DE6: 12        .byte $12, $20, $20, $20, $20, $20, $20, $13   ; 
- D 0 - I - 0x004DFE 01:8DEE: 10        .byte $10, $04, $04, $04, $04, $04, $04, $0F   ; 
- D 0 - I - 0x004E06 01:8DF6: 12        .byte $12, $20, $20, $20, $20, $20, $20, $13   ; 
- D 0 - I - 0x004E0E 01:8DFE: 10        .byte $10, $04, $04, $04, $04, $04, $04, $0F   ; 
- D 0 - I - 0x004E16 01:8E06: 12        .byte $12, $20, $20, $20, $20, $20, $20, $13   ; 
- D 0 - I - 0x004E1E 01:8E0E: 10        .byte $10, $04, $04, $04, $04, $04, $04, $0F   ; 
- D 0 - I - 0x004E26 01:8E16: 12        .byte $12, $20, $20, $20, $20, $20, $20, $13   ; 
- D 0 - I - 0x004E2E 01:8E1E: 10        .byte $10, $04, $04, $21, $22, $04, $04, $0F   ; 
- D 0 - I - 0x004E36 01:8E26: 12        .byte $12, $20, $20, $23, $24, $20, $20, $13   ; 
- D 0 - I - 0x004E3E 01:8E2E: 10        .byte $10, $04, $04, $25, $26, $04, $04, $0F   ; 
- - - - - - 0x004E46 01:8E36: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004E4E 01:8E3E: 12        .byte $12, $20, $27, $28, $29, $2A, $20, $13   ; 
- D 0 - I - 0x004E56 01:8E46: 2B        .byte $2B, $2C, $2D, $2E, $2F, $30, $2C, $31   ; 
- D 0 - I - 0x004E5E 01:8E4E: 32        .byte $32, $33, $34, $35, $36, $37, $33, $38   ; 
- D 0 - I - 0x004E66 01:8E56: 10        .byte $10, $04, $39, $3A, $3B, $3C, $04, $0F   ; 
- D 0 - I - 0x004E6E 01:8E5E: 12        .byte $12, $20, $20, $3D, $3E, $20, $20, $13   ; 
- D 0 - I - 0x004E76 01:8E66: 10        .byte $10, $04, $04, $3F, $40, $04, $04, $0F   ; 
- D 0 - I - 0x004E7E 01:8E6E: 12        .byte $12, $20, $20, $41, $42, $20, $20, $13   ; 
- D 0 - I - 0x004E86 01:8E76: 10        .byte $10, $04, $04, $04, $04, $04, $04, $0F   ; 
- D 0 - I - 0x004E8E 01:8E7E: 12        .byte $12, $20, $20, $20, $20, $20, $20, $13   ; 
- D 0 - I - 0x004E96 01:8E86: 10        .byte $10, $04, $04, $04, $04, $04, $04, $0F   ; 
- D 0 - I - 0x004E9E 01:8E8E: 12        .byte $12, $20, $20, $20, $20, $20, $20, $13   ; 
- D 0 - I - 0x004EA6 01:8E96: 10        .byte $10, $04, $04, $04, $04, $04, $04, $0F   ; 
- D 0 - I - 0x004EAE 01:8E9E: 12        .byte $12, $20, $20, $20, $20, $20, $20, $13   ; 
- D 0 - I - 0x004EB6 01:8EA6: 10        .byte $10, $04, $04, $04, $04, $04, $04, $0F   ; 
- D 0 - I - 0x004EBE 01:8EAE: 12        .byte $12, $20, $20, $43, $44, $20, $20, $13   ; 
- - - - - - 0x004EC6 01:8EB6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004ECE 01:8EBE: 10        .byte $10, $45, $2C, $46, $47, $2C, $48, $0F   ; 
- D 0 - I - 0x004ED6 01:8EC6: 12        .byte $12, $49, $33, $33, $33, $33, $4A, $13   ; 
- D 0 - I - 0x004EDE 01:8ECE: 10        .byte $10, $0F, $04, $04, $04, $04, $10, $0F   ; 
- D 0 - I - 0x004EE6 01:8ED6: 12        .byte $12, $13, $20, $4B, $4C, $20, $12, $13   ; 
- D 0 - I - 0x004EEE 01:8EDE: 10        .byte $10, $0F, $04, $04, $04, $04, $10, $0F   ; 
- D 0 - I - 0x004EF6 01:8EE6: 12        .byte $12, $13, $4D, $15, $15, $4E, $12, $13   ; 
- D 0 - I - 0x004EFE 01:8EEE: 10        .byte $10, $0F, $4F, $18, $18, $50, $10, $0F   ; 
- D 0 - I - 0x004F06 01:8EF6: 51        .byte $51, $13, $13, $20, $20, $12, $12, $52   ; 
- D 0 - I - 0x004F0E 01:8EFE: 53        .byte $53, $54, $54, $55, $56, $57, $57, $58   ; 
- D 0 - I - 0x004F16 01:8F06: 59        .byte $59, $20, $20, $5A, $5B, $20, $20, $5C   ; 
- D 0 - I - 0x004F1E 01:8F0E: 5D        .byte $5D, $5D, $5D, $5D, $5D, $5D, $5D, $5D   ; 
- D 0 - I - 0x004F26 01:8F16: 5E        .byte $5E, $5E, $5E, $5E, $5E, $5E, $5E, $5E   ; 
- D 0 - I - 0x004F2E 01:8F1E: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 0 - I - 0x004F36 01:8F26: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 0 - I - 0x004F3E 01:8F2E: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- - - - - - 0x004F46 01:8F36: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 0 - I - 0x004F4E 01:8F3E: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 0 - I - 0x004F56 01:8F46: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 0 - I - 0x004F5E 01:8F4E: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- - - - - - 0x004F66 01:8F56: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x004F6E 01:8F5E: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 



tbl_8F66:
- D 0 - - - 0x004F76 01:8F66: AA        .byte $AA   ; 
- D 0 - - - 0x004F77 01:8F67: AA        .byte $AA   ; 
- D 0 - - - 0x004F78 01:8F68: AA        .byte $AA   ; 
- D 0 - - - 0x004F79 01:8F69: AA        .byte $AA   ; 
- D 0 - - - 0x004F7A 01:8F6A: 00        .byte $00   ; 
- D 0 - - - 0x004F7B 01:8F6B: 00        .byte $00   ; 
- D 0 - - - 0x004F7C 01:8F6C: 00        .byte $00   ; 
- D 0 - - - 0x004F7D 01:8F6D: 00        .byte $00   ; 
- D 0 - - - 0x004F7E 01:8F6E: 00        .byte $00   ; 
- D 0 - - - 0x004F7F 01:8F6F: 00        .byte $00   ; 
- D 0 - - - 0x004F80 01:8F70: 00        .byte $00   ; 
- D 0 - - - 0x004F81 01:8F71: 00        .byte $00   ; 
- D 0 - - - 0x004F82 01:8F72: 00        .byte $00   ; 
- D 0 - - - 0x004F83 01:8F73: 00        .byte $00   ; 
- D 0 - - - 0x004F84 01:8F74: 00        .byte $00   ; 
- D 0 - - - 0x004F85 01:8F75: 00        .byte $00   ; 
- D 0 - - - 0x004F86 01:8F76: 00        .byte $00   ; 
- D 0 - - - 0x004F87 01:8F77: 00        .byte $00   ; 
- D 0 - - - 0x004F88 01:8F78: 00        .byte $00   ; 
- D 0 - - - 0x004F89 01:8F79: 00        .byte $00   ; 
- D 0 - - - 0x004F8A 01:8F7A: 00        .byte $00   ; 
- D 0 - - - 0x004F8B 01:8F7B: 00        .byte $00   ; 
- D 0 - - - 0x004F8C 01:8F7C: 00        .byte $00   ; 
- D 0 - - - 0x004F8D 01:8F7D: 00        .byte $00   ; 
- D 0 - - - 0x004F8E 01:8F7E: 00        .byte $00   ; 
- D 0 - - - 0x004F8F 01:8F7F: 00        .byte $00   ; 
- D 0 - - - 0x004F90 01:8F80: 00        .byte $00   ; 
- D 0 - - - 0x004F91 01:8F81: 00        .byte $00   ; 
- D 0 - - - 0x004F92 01:8F82: 00        .byte $00   ; 
- D 0 - - - 0x004F93 01:8F83: 50        .byte $50   ; 
- D 0 - - - 0x004F94 01:8F84: 55        .byte $55   ; 
- D 0 - - - 0x004F95 01:8F85: 55        .byte $55   ; 
- D 0 - - - 0x004F96 01:8F86: 55        .byte $55   ; 
- D 0 - - - 0x004F97 01:8F87: 55        .byte $55   ; 
- - - - - - 0x004F98 01:8F88: 00        .byte $00   ; 
- - - - - - 0x004F99 01:8F89: 00        .byte $00   ; 
- - - - - - 0x004F9A 01:8F8A: 00        .byte $00   ; 
- - - - - - 0x004F9B 01:8F8B: 00        .byte $00   ; 
- - - - - - 0x004F9C 01:8F8C: 00        .byte $00   ; 
- - - - - - 0x004F9D 01:8F8D: 00        .byte $00   ; 
- - - - - - 0x004F9E 01:8F8E: 00        .byte $00   ; 
- - - - - - 0x004F9F 01:8F8F: 00        .byte $00   ; 
- - - - - - 0x004FA0 01:8F90: 00        .byte $00   ; 
- - - - - - 0x004FA1 01:8F91: 00        .byte $00   ; 
- - - - - - 0x004FA2 01:8F92: 00        .byte $00   ; 
- - - - - - 0x004FA3 01:8F93: 00        .byte $00   ; 
- - - - - - 0x004FA4 01:8F94: 00        .byte $00   ; 
- - - - - - 0x004FA5 01:8F95: 00        .byte $00   ; 
- - - - - - 0x004FA6 01:8F96: 00        .byte $00   ; 
- - - - - - 0x004FA7 01:8F97: 00        .byte $00   ; 
- - - - - - 0x004FA8 01:8F98: 00        .byte $00   ; 
- - - - - - 0x004FA9 01:8F99: 00        .byte $00   ; 
- - - - - - 0x004FAA 01:8F9A: 00        .byte $00   ; 
- - - - - - 0x004FAB 01:8F9B: 00        .byte $00   ; 
- - - - - - 0x004FAC 01:8F9C: 00        .byte $00   ; 
- - - - - - 0x004FAD 01:8F9D: 00        .byte $00   ; 
- - - - - - 0x004FAE 01:8F9E: 00        .byte $00   ; 
- - - - - - 0x004FAF 01:8F9F: 00        .byte $00   ; 
- - - - - - 0x004FB0 01:8FA0: 00        .byte $00   ; 
- - - - - - 0x004FB1 01:8FA1: 00        .byte $00   ; 
- - - - - - 0x004FB2 01:8FA2: 00        .byte $00   ; 
- - - - - - 0x004FB3 01:8FA3: 00        .byte $00   ; 
- - - - - - 0x004FB4 01:8FA4: 00        .byte $00   ; 
- - - - - - 0x004FB5 01:8FA5: 00        .byte $00   ; 
- - - - - - 0x004FB6 01:8FA6: 00        .byte $00   ; 
- - - - - - 0x004FB7 01:8FA7: 00        .byte $00   ; 
- - - - - - 0x004FB8 01:8FA8: 00        .byte $00   ; 
- - - - - - 0x004FB9 01:8FA9: 00        .byte $00   ; 
- - - - - - 0x004FBA 01:8FAA: 00        .byte $00   ; 
- - - - - - 0x004FBB 01:8FAB: 00        .byte $00   ; 
- - - - - - 0x004FBC 01:8FAC: 00        .byte $00   ; 
- - - - - - 0x004FBD 01:8FAD: 00        .byte $00   ; 
- - - - - - 0x004FBE 01:8FAE: 00        .byte $00   ; 
- - - - - - 0x004FBF 01:8FAF: 00        .byte $00   ; 
- - - - - - 0x004FC0 01:8FB0: 00        .byte $00   ; 
- - - - - - 0x004FC1 01:8FB1: 00        .byte $00   ; 
- - - - - - 0x004FC2 01:8FB2: 00        .byte $00   ; 
- - - - - - 0x004FC3 01:8FB3: 00        .byte $00   ; 
- - - - - - 0x004FC4 01:8FB4: 00        .byte $00   ; 
- - - - - - 0x004FC5 01:8FB5: 00        .byte $00   ; 
- - - - - - 0x004FC6 01:8FB6: 00        .byte $00   ; 
- - - - - - 0x004FC7 01:8FB7: 00        .byte $00   ; 
- - - - - - 0x004FC8 01:8FB8: 00        .byte $00   ; 
- - - - - - 0x004FC9 01:8FB9: 00        .byte $00   ; 
- - - - - - 0x004FCA 01:8FBA: 00        .byte $00   ; 
- - - - - - 0x004FCB 01:8FBB: 00        .byte $00   ; 
- - - - - - 0x004FCC 01:8FBC: 00        .byte $00   ; 
- - - - - - 0x004FCD 01:8FBD: 00        .byte $00   ; 
- - - - - - 0x004FCE 01:8FBE: 00        .byte $00   ; 
- - - - - - 0x004FCF 01:8FBF: 00        .byte $00   ; 
- - - - - - 0x004FD0 01:8FC0: 00        .byte $00   ; 
- - - - - - 0x004FD1 01:8FC1: 00        .byte $00   ; 
- - - - - - 0x004FD2 01:8FC2: 00        .byte $00   ; 
- - - - - - 0x004FD3 01:8FC3: 00        .byte $00   ; 
- - - - - - 0x004FD4 01:8FC4: 00        .byte $00   ; 
- - - - - - 0x004FD5 01:8FC5: 00        .byte $00   ; 
- - - - - - 0x004FD6 01:8FC6: 00        .byte $00   ; 
- - - - - - 0x004FD7 01:8FC7: 00        .byte $00   ; 
- - - - - - 0x004FD8 01:8FC8: 00        .byte $00   ; 
- - - - - - 0x004FD9 01:8FC9: 00        .byte $00   ; 
- - - - - - 0x004FDA 01:8FCA: 00        .byte $00   ; 
- - - - - - 0x004FDB 01:8FCB: 00        .byte $00   ; 
- - - - - - 0x004FDC 01:8FCC: 00        .byte $00   ; 
- - - - - - 0x004FDD 01:8FCD: 00        .byte $00   ; 
- - - - - - 0x004FDE 01:8FCE: 00        .byte $00   ; 
- - - - - - 0x004FDF 01:8FCF: 00        .byte $00   ; 
- - - - - - 0x004FE0 01:8FD0: 00        .byte $00   ; 
- - - - - - 0x004FE1 01:8FD1: 00        .byte $00   ; 
- - - - - - 0x004FE2 01:8FD2: 00        .byte $00   ; 
- - - - - - 0x004FE3 01:8FD3: 00        .byte $00   ; 
- - - - - - 0x004FE4 01:8FD4: 00        .byte $00   ; 
- - - - - - 0x004FE5 01:8FD5: 00        .byte $00   ; 
- - - - - - 0x004FE6 01:8FD6: 00        .byte $00   ; 
- - - - - - 0x004FE7 01:8FD7: 00        .byte $00   ; 
- - - - - - 0x004FE8 01:8FD8: 00        .byte $00   ; 
- - - - - - 0x004FE9 01:8FD9: 00        .byte $00   ; 
- - - - - - 0x004FEA 01:8FDA: 00        .byte $00   ; 
- - - - - - 0x004FEB 01:8FDB: 00        .byte $00   ; 
- - - - - - 0x004FEC 01:8FDC: 00        .byte $00   ; 
- - - - - - 0x004FED 01:8FDD: 00        .byte $00   ; 
- - - - - - 0x004FEE 01:8FDE: 00        .byte $00   ; 
- - - - - - 0x004FEF 01:8FDF: 00        .byte $00   ; 
- - - - - - 0x004FF0 01:8FE0: 00        .byte $00   ; 
- - - - - - 0x004FF1 01:8FE1: 00        .byte $00   ; 
- - - - - - 0x004FF2 01:8FE2: 00        .byte $00   ; 
- - - - - - 0x004FF3 01:8FE3: 00        .byte $00   ; 
- - - - - - 0x004FF4 01:8FE4: AA        .byte $AA   ; 
- - - - - - 0x004FF5 01:8FE5: AA        .byte $AA   ; 
- - - - - - 0x004FF6 01:8FE6: 00        .byte $00   ; 
- - - - - - 0x004FF7 01:8FE7: 00        .byte $00   ; 
- - - - - - 0x004FF8 01:8FE8: 00        .byte $00   ; 
- - - - - - 0x004FF9 01:8FE9: 00        .byte $00   ; 
- - - - - - 0x004FFA 01:8FEA: 00        .byte $00   ; 
- - - - - - 0x004FFB 01:8FEB: 00        .byte $00   ; 
- - - - - - 0x004FFC 01:8FEC: 00        .byte $00   ; 
- - - - - - 0x004FFD 01:8FED: 00        .byte $00   ; 
- - - - - - 0x004FFE 01:8FEE: 00        .byte $00   ; 
- - - - - - 0x004FFF 01:8FEF: 00        .byte $00   ; 
- - - - - - 0x005000 01:8FF0: 00        .byte $00   ; 
- - - - - - 0x005001 01:8FF1: 00        .byte $00   ; 
- - - - - - 0x005002 01:8FF2: 00        .byte $00   ; 
- - - - - - 0x005003 01:8FF3: 00        .byte $00   ; 
- - - - - - 0x005004 01:8FF4: 00        .byte $00   ; 
- - - - - - 0x005005 01:8FF5: 00        .byte $00   ; 
- - - - - - 0x005006 01:8FF6: 00        .byte $00   ; 
- - - - - - 0x005007 01:8FF7: 00        .byte $00   ; 
- - - - - - 0x005008 01:8FF8: 00        .byte $00   ; 
- - - - - - 0x005009 01:8FF9: 00        .byte $00   ; 
- - - - - - 0x00500A 01:8FFA: 00        .byte $00   ; 
- - - - - - 0x00500B 01:8FFB: 00        .byte $00   ; 
- - - - - - 0x00500C 01:8FFC: 00        .byte $00   ; 
- - - - - - 0x00500D 01:8FFD: 00        .byte $00   ; 
- - - - - - 0x00500E 01:8FFE: 00        .byte $00   ; 
- - - - - - 0x00500F 01:8FFF: 00        .byte $00   ; 
- - - - - - 0x005010 01:9000: 00        .byte $00   ; 
- - - - - - 0x005011 01:9001: 00        .byte $00   ; 
- - - - - - 0x005012 01:9002: 00        .byte $00   ; 
- - - - - - 0x005013 01:9003: 00        .byte $00   ; 
- - - - - - 0x005014 01:9004: 00        .byte $00   ; 
- - - - - - 0x005015 01:9005: 00        .byte $00   ; 
- - - - - - 0x005016 01:9006: 00        .byte $00   ; 
- - - - - - 0x005017 01:9007: 00        .byte $00   ; 
- - - - - - 0x005018 01:9008: 00        .byte $00   ; 
- - - - - - 0x005019 01:9009: 00        .byte $00   ; 
- - - - - - 0x00501A 01:900A: 00        .byte $00   ; 
- - - - - - 0x00501B 01:900B: 00        .byte $00   ; 
- - - - - - 0x00501C 01:900C: 00        .byte $00   ; 
- - - - - - 0x00501D 01:900D: 00        .byte $00   ; 
- - - - - - 0x00501E 01:900E: 00        .byte $00   ; 
- - - - - - 0x00501F 01:900F: 00        .byte $00   ; 
- - - - - - 0x005020 01:9010: 00        .byte $00   ; 
- - - - - - 0x005021 01:9011: 00        .byte $00   ; 
- - - - - - 0x005022 01:9012: 00        .byte $00   ; 
- - - - - - 0x005023 01:9013: 00        .byte $00   ; 
- - - - - - 0x005024 01:9014: 00        .byte $00   ; 
- - - - - - 0x005025 01:9015: 00        .byte $00   ; 
- - - - - - 0x005026 01:9016: 00        .byte $00   ; 
- - - - - - 0x005027 01:9017: 00        .byte $00   ; 
- - - - - - 0x005028 01:9018: 00        .byte $00   ; 
- - - - - - 0x005029 01:9019: 00        .byte $00   ; 
- - - - - - 0x00502A 01:901A: 00        .byte $00   ; 
- - - - - - 0x00502B 01:901B: 00        .byte $00   ; 
- - - - - - 0x00502C 01:901C: 00        .byte $00   ; 
- - - - - - 0x00502D 01:901D: 00        .byte $00   ; 
- - - - - - 0x00502E 01:901E: 00        .byte $00   ; 
- - - - - - 0x00502F 01:901F: 00        .byte $00   ; 
- - - - - - 0x005030 01:9020: 00        .byte $00   ; 
- - - - - - 0x005031 01:9021: 00        .byte $00   ; 
- - - - - - 0x005032 01:9022: 00        .byte $00   ; 
- - - - - - 0x005033 01:9023: 00        .byte $00   ; 
- - - - - - 0x005034 01:9024: 00        .byte $00   ; 
- - - - - - 0x005035 01:9025: 00        .byte $00   ; 



tbl_9026:
- D 0 - I - 0x005036 01:9026: 04        .byte $04   ; 
- D 0 - I - 0x005037 01:9027: 05        .byte $05   ; 
- D 0 - I - 0x005038 01:9028: 04        .byte $04   ; 
- D 0 - I - 0x005039 01:9029: 05        .byte $05   ; 
- D 0 - I - 0x00503A 01:902A: 04        .byte $04   ; 
- D 0 - I - 0x00503B 01:902B: 05        .byte $05   ; 
- D 0 - I - 0x00503C 01:902C: 04        .byte $04   ; 
- D 0 - I - 0x00503D 01:902D: 05        .byte $05   ; 
- D 0 - I - 0x00503E 01:902E: 05        .byte $05   ; 
- D 0 - I - 0x00503F 01:902F: 04        .byte $04   ; 
- D 0 - I - 0x005040 01:9030: 05        .byte $05   ; 
- D 0 - I - 0x005041 01:9031: 04        .byte $04   ; 
- D 0 - I - 0x005042 01:9032: 05        .byte $05   ; 
- D 0 - I - 0x005043 01:9033: 04        .byte $04   ; 
- D 0 - I - 0x005044 01:9034: 05        .byte $05   ; 
- D 0 - I - 0x005045 01:9035: 04        .byte $04   ; 
- D 0 - I - 0x005046 01:9036: 04        .byte $04   ; 
- D 0 - I - 0x005047 01:9037: 05        .byte $05   ; 
- D 0 - I - 0x005048 01:9038: 04        .byte $04   ; 
- D 0 - I - 0x005049 01:9039: 05        .byte $05   ; 
- D 0 - I - 0x00504A 01:903A: 04        .byte $04   ; 
- D 0 - I - 0x00504B 01:903B: 05        .byte $05   ; 
- D 0 - I - 0x00504C 01:903C: 04        .byte $04   ; 
- D 0 - I - 0x00504D 01:903D: 05        .byte $05   ; 
- D 0 - I - 0x00504E 01:903E: 06        .byte $06   ; 
- D 0 - I - 0x00504F 01:903F: 07        .byte $07   ; 
- D 0 - I - 0x005050 01:9040: 06        .byte $06   ; 
- D 0 - I - 0x005051 01:9041: 07        .byte $07   ; 
- D 0 - I - 0x005052 01:9042: 06        .byte $06   ; 
- D 0 - I - 0x005053 01:9043: 07        .byte $07   ; 
- D 0 - I - 0x005054 01:9044: 06        .byte $06   ; 
- D 0 - I - 0x005055 01:9045: 07        .byte $07   ; 
- D 0 - I - 0x005056 01:9046: 08        .byte $08   ; 
- D 0 - I - 0x005057 01:9047: 08        .byte $08   ; 
- D 0 - I - 0x005058 01:9048: 08        .byte $08   ; 
- D 0 - I - 0x005059 01:9049: 08        .byte $08   ; 
- D 0 - I - 0x00505A 01:904A: 08        .byte $08   ; 
- D 0 - I - 0x00505B 01:904B: 08        .byte $08   ; 
- D 0 - I - 0x00505C 01:904C: 08        .byte $08   ; 
- D 0 - I - 0x00505D 01:904D: 08        .byte $08   ; 
- D 0 - I - 0x00505E 01:904E: 0A        .byte $0A   ; 
- D 0 - I - 0x00505F 01:904F: 0A        .byte $0A   ; 
- D 0 - I - 0x005060 01:9050: 0A        .byte $0A   ; 
- D 0 - I - 0x005061 01:9051: 0A        .byte $0A   ; 
- D 0 - I - 0x005062 01:9052: 0A        .byte $0A   ; 
- D 0 - I - 0x005063 01:9053: 0A        .byte $0A   ; 
- D 0 - I - 0x005064 01:9054: 0A        .byte $0A   ; 
- D 0 - I - 0x005065 01:9055: 0A        .byte $0A   ; 
- D 0 - I - 0x005066 01:9056: 02        .byte $02   ; 
- D 0 - I - 0x005067 01:9057: 02        .byte $02   ; 
- D 0 - I - 0x005068 01:9058: 02        .byte $02   ; 
- D 0 - I - 0x005069 01:9059: 02        .byte $02   ; 
- D 0 - I - 0x00506A 01:905A: 02        .byte $02   ; 
- D 0 - I - 0x00506B 01:905B: 02        .byte $02   ; 
- D 0 - I - 0x00506C 01:905C: 02        .byte $02   ; 
- D 0 - I - 0x00506D 01:905D: 02        .byte $02   ; 
- D 0 - I - 0x00506E 01:905E: 00        .byte $00   ; 
- D 0 - I - 0x00506F 01:905F: A4        .byte $A4   ; 
- D 0 - I - 0x005070 01:9060: 00        .byte $00   ; 
- D 0 - I - 0x005071 01:9061: 00        .byte $00   ; 
- D 0 - I - 0x005072 01:9062: 00        .byte $00   ; 
- D 0 - I - 0x005073 01:9063: 00        .byte $00   ; 
- D 0 - I - 0x005074 01:9064: 00        .byte $00   ; 
- D 0 - I - 0x005075 01:9065: 00        .byte $00   ; 
- D 0 - I - 0x005076 01:9066: 02        .byte $02   ; 
- D 0 - I - 0x005077 01:9067: 02        .byte $02   ; 
- D 0 - I - 0x005078 01:9068: 02        .byte $02   ; 
- D 0 - I - 0x005079 01:9069: 02        .byte $02   ; 
- D 0 - I - 0x00507A 01:906A: 02        .byte $02   ; 
- D 0 - I - 0x00507B 01:906B: 02        .byte $02   ; 
- D 0 - I - 0x00507C 01:906C: 02        .byte $02   ; 
- D 0 - I - 0x00507D 01:906D: 02        .byte $02   ; 
- D 0 - I - 0x00507E 01:906E: 00        .byte $00   ; 
- D 0 - I - 0x00507F 01:906F: 00        .byte $00   ; 
- D 0 - I - 0x005080 01:9070: 00        .byte $00   ; 
- D 0 - I - 0x005081 01:9071: 00        .byte $00   ; 
- D 0 - I - 0x005082 01:9072: 00        .byte $00   ; 
- D 0 - I - 0x005083 01:9073: 00        .byte $00   ; 
- D 0 - I - 0x005084 01:9074: 00        .byte $00   ; 
- D 0 - I - 0x005085 01:9075: 00        .byte $00   ; 
- D 0 - I - 0x005086 01:9076: 02        .byte $02   ; 
- D 0 - I - 0x005087 01:9077: 90        .byte $90   ; 
- D 0 - I - 0x005088 01:9078: 88        .byte $88   ; 
- D 0 - I - 0x005089 01:9079: 89        .byte $89   ; 
- D 0 - I - 0x00508A 01:907A: 89        .byte $89   ; 
- D 0 - I - 0x00508B 01:907B: 89        .byte $89   ; 
- D 0 - I - 0x00508C 01:907C: 8C        .byte $8C   ; 
- D 0 - I - 0x00508D 01:907D: 8D        .byte $8D   ; 
- D 0 - I - 0x00508E 01:907E: 00        .byte $00   ; 
- D 0 - I - 0x00508F 01:907F: 92        .byte $92   ; 
- D 0 - I - 0x005090 01:9080: B0        .byte $B0   ; 
- D 0 - I - 0x005091 01:9081: B1        .byte $B1   ; 
- D 0 - I - 0x005092 01:9082: B1        .byte $B1   ; 
- D 0 - I - 0x005093 01:9083: B1        .byte $B1   ; 
- D 0 - I - 0x005094 01:9084: B1        .byte $B1   ; 
- D 0 - I - 0x005095 01:9085: B1        .byte $B1   ; 
- D 0 - I - 0x005096 01:9086: 98        .byte $98   ; 
- D 0 - I - 0x005097 01:9087: 99        .byte $99   ; 
- D 0 - I - 0x005098 01:9088: 9C        .byte $9C   ; 
- D 0 - I - 0x005099 01:9089: 9C        .byte $9C   ; 
- D 0 - I - 0x00509A 01:908A: 9C        .byte $9C   ; 
- D 0 - I - 0x00509B 01:908B: 9D        .byte $9D   ; 
- D 0 - I - 0x00509C 01:908C: 91        .byte $91   ; 
- D 0 - I - 0x00509D 01:908D: 02        .byte $02   ; 
- D 0 - I - 0x00509E 01:908E: B1        .byte $B1   ; 
- D 0 - I - 0x00509F 01:908F: B1        .byte $B1   ; 
- D 0 - I - 0x0050A0 01:9090: B1        .byte $B1   ; 
- D 0 - I - 0x0050A1 01:9091: B1        .byte $B1   ; 
- D 0 - I - 0x0050A2 01:9092: B1        .byte $B1   ; 
- D 0 - I - 0x0050A3 01:9093: B4        .byte $B4   ; 
- D 0 - I - 0x0050A4 01:9094: 93        .byte $93   ; 
- D 0 - I - 0x0050A5 01:9095: 00        .byte $00   ; 
- D 0 - I - 0x0050A6 01:9096: 02        .byte $02   ; 
- D 0 - I - 0x0050A7 01:9097: 02        .byte $02   ; 
- D 0 - I - 0x0050A8 01:9098: 02        .byte $02   ; 
- D 0 - I - 0x0050A9 01:9099: 02        .byte $02   ; 
- D 0 - I - 0x0050AA 01:909A: 02        .byte $02   ; 
- D 0 - I - 0x0050AB 01:909B: 02        .byte $02   ; 
- D 0 - I - 0x0050AC 01:909C: 02        .byte $02   ; 
- D 0 - I - 0x0050AD 01:909D: 02        .byte $02   ; 
- D 0 - I - 0x0050AE 01:909E: 00        .byte $00   ; 
- D 0 - I - 0x0050AF 01:909F: 00        .byte $00   ; 
- D 0 - I - 0x0050B0 01:90A0: 00        .byte $00   ; 
- D 0 - I - 0x0050B1 01:90A1: 00        .byte $00   ; 
- D 0 - I - 0x0050B2 01:90A2: 00        .byte $00   ; 
- D 0 - I - 0x0050B3 01:90A3: 00        .byte $00   ; 
- D 0 - I - 0x0050B4 01:90A4: A5        .byte $A5   ; 
- D 0 - I - 0x0050B5 01:90A5: 00        .byte $00   ; 
- D 0 - I - 0x0050B6 01:90A6: A9        .byte $A9   ; 
- D 0 - I - 0x0050B7 01:90A7: A6        .byte $A6   ; 
- D 0 - I - 0x0050B8 01:90A8: 18        .byte $18   ; 
- D 0 - I - 0x0050B9 01:90A9: 18        .byte $18   ; 
- D 0 - I - 0x0050BA 01:90AA: 18        .byte $18   ; 
- D 0 - I - 0x0050BB 01:90AB: 18        .byte $18   ; 
- D 0 - I - 0x0050BC 01:90AC: 18        .byte $18   ; 
- D 0 - I - 0x0050BD 01:90AD: 18        .byte $18   ; 
- D 0 - I - 0x0050BE 01:90AE: 02        .byte $02   ; 
- D 0 - I - 0x0050BF 01:90AF: 14        .byte $14   ; 
- D 0 - I - 0x0050C0 01:90B0: 38        .byte $38   ; 
- D 0 - I - 0x0050C1 01:90B1: 61        .byte $61   ; 
- D 0 - I - 0x0050C2 01:90B2: 1B        .byte $1B   ; 
- D 0 - I - 0x0050C3 01:90B3: 1B        .byte $1B   ; 
- D 0 - I - 0x0050C4 01:90B4: 1B        .byte $1B   ; 
- D 0 - I - 0x0050C5 01:90B5: 1B        .byte $1B   ; 
- D 0 - I - 0x0050C6 01:90B6: 18        .byte $18   ; 
- D 0 - I - 0x0050C7 01:90B7: 18        .byte $18   ; 
- D 0 - I - 0x0050C8 01:90B8: 18        .byte $18   ; 
- D 0 - I - 0x0050C9 01:90B9: 18        .byte $18   ; 
- D 0 - I - 0x0050CA 01:90BA: 18        .byte $18   ; 
- D 0 - I - 0x0050CB 01:90BB: 18        .byte $18   ; 
- D 0 - I - 0x0050CC 01:90BC: 18        .byte $18   ; 
- D 0 - I - 0x0050CD 01:90BD: 18        .byte $18   ; 
- D 0 - I - 0x0050CE 01:90BE: 1B        .byte $1B   ; 
- D 0 - I - 0x0050CF 01:90BF: 1B        .byte $1B   ; 
- D 0 - I - 0x0050D0 01:90C0: 1B        .byte $1B   ; 
- D 0 - I - 0x0050D1 01:90C1: 1B        .byte $1B   ; 
- D 0 - I - 0x0050D2 01:90C2: 1B        .byte $1B   ; 
- D 0 - I - 0x0050D3 01:90C3: 39        .byte $39   ; 
- D 0 - I - 0x0050D4 01:90C4: 38        .byte $38   ; 
- D 0 - I - 0x0050D5 01:90C5: 1B        .byte $1B   ; 
- D 0 - I - 0x0050D6 01:90C6: 18        .byte $18   ; 
- D 0 - I - 0x0050D7 01:90C7: 80        .byte $80   ; 
- D 0 - I - 0x0050D8 01:90C8: 81        .byte $81   ; 
- D 0 - I - 0x0050D9 01:90C9: 0E        .byte $0E   ; 
- D 0 - I - 0x0050DA 01:90CA: 0E        .byte $0E   ; 
- D 0 - I - 0x0050DB 01:90CB: 0E        .byte $0E   ; 
- D 0 - I - 0x0050DC 01:90CC: 0E        .byte $0E   ; 
- D 0 - I - 0x0050DD 01:90CD: 0E        .byte $0E   ; 
- D 0 - I - 0x0050DE 01:90CE: 1B        .byte $1B   ; 
- D 0 - I - 0x0050DF 01:90CF: 1B        .byte $1B   ; 
- D 0 - I - 0x0050E0 01:90D0: 1B        .byte $1B   ; 
- D 0 - I - 0x0050E1 01:90D1: 1B        .byte $1B   ; 
- D 0 - I - 0x0050E2 01:90D2: 1B        .byte $1B   ; 
- D 0 - I - 0x0050E3 01:90D3: 1B        .byte $1B   ; 
- D 0 - I - 0x0050E4 01:90D4: 1B        .byte $1B   ; 
- D 0 - I - 0x0050E5 01:90D5: 1B        .byte $1B   ; 
- D 0 - I - 0x0050E6 01:90D6: 0E        .byte $0E   ; 
- D 0 - I - 0x0050E7 01:90D7: 0E        .byte $0E   ; 
- D 0 - I - 0x0050E8 01:90D8: 0E        .byte $0E   ; 
- D 0 - I - 0x0050E9 01:90D9: 0E        .byte $0E   ; 
- D 0 - I - 0x0050EA 01:90DA: 0E        .byte $0E   ; 
- D 0 - I - 0x0050EB 01:90DB: 84        .byte $84   ; 
- D 0 - I - 0x0050EC 01:90DC: 85        .byte $85   ; 
- D 0 - I - 0x0050ED 01:90DD: 18        .byte $18   ; 
- D 0 - I - 0x0050EE 01:90DE: 1B        .byte $1B   ; 
- D 0 - I - 0x0050EF 01:90DF: 1B        .byte $1B   ; 
- D 0 - I - 0x0050F0 01:90E0: 1B        .byte $1B   ; 
- D 0 - I - 0x0050F1 01:90E1: 1B        .byte $1B   ; 
- D 0 - I - 0x0050F2 01:90E2: 1B        .byte $1B   ; 
- D 0 - I - 0x0050F3 01:90E3: 1B        .byte $1B   ; 
- D 0 - I - 0x0050F4 01:90E4: 1B        .byte $1B   ; 
- D 0 - I - 0x0050F5 01:90E5: 1B        .byte $1B   ; 
- D 0 - I - 0x0050F6 01:90E6: 18        .byte $18   ; 
- D 0 - I - 0x0050F7 01:90E7: 18        .byte $18   ; 
- D 0 - I - 0x0050F8 01:90E8: 18        .byte $18   ; 
- D 0 - I - 0x0050F9 01:90E9: 18        .byte $18   ; 
- D 0 - I - 0x0050FA 01:90EA: 18        .byte $18   ; 
- D 0 - I - 0x0050FB 01:90EB: 18        .byte $18   ; 
- D 0 - I - 0x0050FC 01:90EC: 18        .byte $18   ; 
- D 0 - I - 0x0050FD 01:90ED: 18        .byte $18   ; 
- D 0 - I - 0x0050FE 01:90EE: 1B        .byte $1B   ; 
- D 0 - I - 0x0050FF 01:90EF: 39        .byte $39   ; 
- D 0 - I - 0x005100 01:90F0: 38        .byte $38   ; 
- D 0 - I - 0x005101 01:90F1: 1B        .byte $1B   ; 
- D 0 - I - 0x005102 01:90F2: 1B        .byte $1B   ; 
- D 0 - I - 0x005103 01:90F3: 1B        .byte $1B   ; 
- D 0 - I - 0x005104 01:90F4: 1B        .byte $1B   ; 
- D 0 - I - 0x005105 01:90F5: 1B        .byte $1B   ; 
- D 0 - I - 0x005106 01:90F6: 18        .byte $18   ; 
- D 0 - I - 0x005107 01:90F7: 18        .byte $18   ; 
- D 0 - I - 0x005108 01:90F8: 18        .byte $18   ; 
- D 0 - I - 0x005109 01:90F9: 18        .byte $18   ; 
- D 0 - I - 0x00510A 01:90FA: 18        .byte $18   ; 
- D 0 - I - 0x00510B 01:90FB: 18        .byte $18   ; 
- D 0 - I - 0x00510C 01:90FC: A7        .byte $A7   ; 
- D 0 - I - 0x00510D 01:90FD: AC        .byte $AC   ; 
- D 0 - I - 0x00510E 01:90FE: 1B        .byte $1B   ; 
- D 0 - I - 0x00510F 01:90FF: 1B        .byte $1B   ; 
- D 0 - I - 0x005110 01:9100: 1B        .byte $1B   ; 
- D 0 - I - 0x005111 01:9101: 1B        .byte $1B   ; 
- D 0 - I - 0x005112 01:9102: 64        .byte $64   ; 
- D 0 - I - 0x005113 01:9103: 39        .byte $39   ; 
- D 0 - I - 0x005114 01:9104: 15        .byte $15   ; 
- D 0 - I - 0x005115 01:9105: 02        .byte $02   ; 
- D 0 - I - 0x005116 01:9106: 02        .byte $02   ; 
- D 0 - I - 0x005117 01:9107: 14        .byte $14   ; 
- D 0 - I - 0x005118 01:9108: 62        .byte $62   ; 
- D 0 - I - 0x005119 01:9109: 27        .byte $27   ; 
- D 0 - I - 0x00511A 01:910A: 02        .byte $02   ; 
- D 0 - I - 0x00511B 01:910B: 02        .byte $02   ; 
- D 0 - I - 0x00511C 01:910C: 02        .byte $02   ; 
- D 0 - I - 0x00511D 01:910D: 02        .byte $02   ; 
- D 0 - I - 0x00511E 01:910E: 00        .byte $00   ; 
- D 0 - I - 0x00511F 01:910F: 16        .byte $16   ; 
- D 0 - I - 0x005120 01:9110: 17        .byte $17   ; 
- D 0 - I - 0x005121 01:9111: 00        .byte $00   ; 
- D 0 - I - 0x005122 01:9112: 00        .byte $00   ; 
- D 0 - I - 0x005123 01:9113: 00        .byte $00   ; 
- D 0 - I - 0x005124 01:9114: 00        .byte $00   ; 
- D 0 - I - 0x005125 01:9115: 00        .byte $00   ; 
- D 0 - I - 0x005126 01:9116: 02        .byte $02   ; 
- D 0 - I - 0x005127 01:9117: 02        .byte $02   ; 
- D 0 - I - 0x005128 01:9118: 02        .byte $02   ; 
- D 0 - I - 0x005129 01:9119: 02        .byte $02   ; 
- D 0 - I - 0x00512A 01:911A: 02        .byte $02   ; 
- D 0 - I - 0x00512B 01:911B: 14        .byte $14   ; 
- D 0 - I - 0x00512C 01:911C: 15        .byte $15   ; 
- D 0 - I - 0x00512D 01:911D: 02        .byte $02   ; 
- D 0 - I - 0x00512E 01:911E: 00        .byte $00   ; 
- D 0 - I - 0x00512F 01:911F: 00        .byte $00   ; 
- D 0 - I - 0x005130 01:9120: 00        .byte $00   ; 
- D 0 - I - 0x005131 01:9121: 00        .byte $00   ; 
- D 0 - I - 0x005132 01:9122: 00        .byte $00   ; 
- D 0 - I - 0x005133 01:9123: 16        .byte $16   ; 
- D 0 - I - 0x005134 01:9124: 17        .byte $17   ; 
- D 0 - I - 0x005135 01:9125: 00        .byte $00   ; 
- D 0 - I - 0x005136 01:9126: 02        .byte $02   ; 
- D 0 - I - 0x005137 01:9127: 14        .byte $14   ; 
- D 0 - I - 0x005138 01:9128: 15        .byte $15   ; 
- D 0 - I - 0x005139 01:9129: 02        .byte $02   ; 
- D 0 - I - 0x00513A 01:912A: 02        .byte $02   ; 
- D 0 - I - 0x00513B 01:912B: 02        .byte $02   ; 
- D 0 - I - 0x00513C 01:912C: 02        .byte $02   ; 
- D 0 - I - 0x00513D 01:912D: 02        .byte $02   ; 
- D 0 - I - 0x00513E 01:912E: 00        .byte $00   ; 
- D 0 - I - 0x00513F 01:912F: 16        .byte $16   ; 
- D 0 - I - 0x005140 01:9130: 17        .byte $17   ; 
- D 0 - I - 0x005141 01:9131: 00        .byte $00   ; 
- D 0 - I - 0x005142 01:9132: 00        .byte $00   ; 
- D 0 - I - 0x005143 01:9133: 00        .byte $00   ; 
- D 0 - I - 0x005144 01:9134: 00        .byte $00   ; 
- D 0 - I - 0x005145 01:9135: 00        .byte $00   ; 
- D 0 - I - 0x005146 01:9136: 02        .byte $02   ; 
- D 0 - I - 0x005147 01:9137: 02        .byte $02   ; 
- D 0 - I - 0x005148 01:9138: 02        .byte $02   ; 
- D 0 - I - 0x005149 01:9139: 02        .byte $02   ; 
- D 0 - I - 0x00514A 01:913A: 26        .byte $26   ; 
- D 0 - I - 0x00514B 01:913B: 67        .byte $67   ; 
- D 0 - I - 0x00514C 01:913C: 15        .byte $15   ; 
- D 0 - I - 0x00514D 01:913D: 02        .byte $02   ; 
- D 0 - I - 0x00514E 01:913E: 00        .byte $00   ; 
- D 0 - I - 0x00514F 01:913F: 00        .byte $00   ; 
- D 0 - I - 0x005150 01:9140: 00        .byte $00   ; 
- D 0 - I - 0x005151 01:9141: 00        .byte $00   ; 
- D 0 - I - 0x005152 01:9142: 00        .byte $00   ; 
- D 0 - I - 0x005153 01:9143: 16        .byte $16   ; 
- D 0 - I - 0x005154 01:9144: 17        .byte $17   ; 
- D 0 - I - 0x005155 01:9145: 00        .byte $00   ; 
- D 0 - I - 0x005156 01:9146: 00        .byte $00   ; 
- D 0 - I - 0x005157 01:9147: 16        .byte $16   ; 
- D 0 - I - 0x005158 01:9148: 17        .byte $17   ; 
- D 0 - I - 0x005159 01:9149: 00        .byte $00   ; 
- D 0 - I - 0x00515A 01:914A: 00        .byte $00   ; 
- D 0 - I - 0x00515B 01:914B: 00        .byte $00   ; 
- D 0 - I - 0x00515C 01:914C: 00        .byte $00   ; 
- D 0 - I - 0x00515D 01:914D: 00        .byte $00   ; 
- D 0 - I - 0x00515E 01:914E: 02        .byte $02   ; 
- D 0 - I - 0x00515F 01:914F: 14        .byte $14   ; 
- D 0 - I - 0x005160 01:9150: 15        .byte $15   ; 
- D 0 - I - 0x005161 01:9151: 02        .byte $02   ; 
- D 0 - I - 0x005162 01:9152: 02        .byte $02   ; 
- D 0 - I - 0x005163 01:9153: 02        .byte $02   ; 
- D 0 - I - 0x005164 01:9154: 02        .byte $02   ; 
- D 0 - I - 0x005165 01:9155: 02        .byte $02   ; 
- D 0 - I - 0x005166 01:9156: 00        .byte $00   ; 
- D 0 - I - 0x005167 01:9157: 00        .byte $00   ; 
- D 0 - I - 0x005168 01:9158: 00        .byte $00   ; 
- D 0 - I - 0x005169 01:9159: 00        .byte $00   ; 
- D 0 - I - 0x00516A 01:915A: 00        .byte $00   ; 
- D 0 - I - 0x00516B 01:915B: 16        .byte $16   ; 
- D 0 - I - 0x00516C 01:915C: 17        .byte $17   ; 
- D 0 - I - 0x00516D 01:915D: 00        .byte $00   ; 
- D 0 - I - 0x00516E 01:915E: 02        .byte $02   ; 
- D 0 - I - 0x00516F 01:915F: 02        .byte $02   ; 
- D 0 - I - 0x005170 01:9160: 02        .byte $02   ; 
- D 0 - I - 0x005171 01:9161: 02        .byte $02   ; 
- D 0 - I - 0x005172 01:9162: 02        .byte $02   ; 
- D 0 - I - 0x005173 01:9163: 14        .byte $14   ; 
- D 0 - I - 0x005174 01:9164: 15        .byte $15   ; 
- D 0 - I - 0x005175 01:9165: 02        .byte $02   ; 
- D 0 - I - 0x005176 01:9166: 00        .byte $00   ; 
- D 0 - I - 0x005177 01:9167: 00        .byte $00   ; 
- D 0 - I - 0x005178 01:9168: 00        .byte $00   ; 
- D 0 - I - 0x005179 01:9169: 00        .byte $00   ; 
- D 0 - I - 0x00517A 01:916A: 00        .byte $00   ; 
- D 0 - I - 0x00517B 01:916B: 16        .byte $16   ; 
- D 0 - I - 0x00517C 01:916C: 17        .byte $17   ; 
- D 0 - I - 0x00517D 01:916D: 00        .byte $00   ; 
- D 0 - I - 0x00517E 01:916E: 02        .byte $02   ; 
- D 0 - I - 0x00517F 01:916F: 02        .byte $02   ; 
- D 0 - I - 0x005180 01:9170: 02        .byte $02   ; 
- D 0 - I - 0x005181 01:9171: 02        .byte $02   ; 
- D 0 - I - 0x005182 01:9172: 02        .byte $02   ; 
- D 0 - I - 0x005183 01:9173: 14        .byte $14   ; 
- D 0 - I - 0x005184 01:9174: 3A        .byte $3A   ; 
- D 0 - I - 0x005185 01:9175: 19        .byte $19   ; 
- D 0 - I - 0x005186 01:9176: 00        .byte $00   ; 
- D 0 - I - 0x005187 01:9177: 00        .byte $00   ; 
- D 0 - I - 0x005188 01:9178: 00        .byte $00   ; 
- D 0 - I - 0x005189 01:9179: 00        .byte $00   ; 
- D 0 - I - 0x00518A 01:917A: 00        .byte $00   ; 
- D 0 - I - 0x00518B 01:917B: 00        .byte $00   ; 
- D 0 - I - 0x00518C 01:917C: 00        .byte $00   ; 
- D 0 - I - 0x00518D 01:917D: 00        .byte $00   ; 
- D 0 - I - 0x00518E 01:917E: 19        .byte $19   ; 
- D 0 - I - 0x00518F 01:917F: 19        .byte $19   ; 
- D 0 - I - 0x005190 01:9180: 19        .byte $19   ; 
- D 0 - I - 0x005191 01:9181: 19        .byte $19   ; 
- D 0 - I - 0x005192 01:9182: 19        .byte $19   ; 
- D 0 - I - 0x005193 01:9183: 19        .byte $19   ; 
- D 0 - I - 0x005194 01:9184: 19        .byte $19   ; 
- D 0 - I - 0x005195 01:9185: 19        .byte $19   ; 
- D 0 - I - 0x005196 01:9186: 00        .byte $00   ; 
- D 0 - I - 0x005197 01:9187: 16        .byte $16   ; 
- D 0 - I - 0x005198 01:9188: 17        .byte $17   ; 
- D 0 - I - 0x005199 01:9189: 00        .byte $00   ; 
- D 0 - I - 0x00519A 01:918A: 00        .byte $00   ; 
- D 0 - I - 0x00519B 01:918B: 00        .byte $00   ; 
- D 0 - I - 0x00519C 01:918C: 00        .byte $00   ; 
- D 0 - I - 0x00519D 01:918D: 00        .byte $00   ; 
- D 0 - I - 0x00519E 01:918E: 19        .byte $19   ; 
- D 0 - I - 0x00519F 01:918F: 3B        .byte $3B   ; 
- D 0 - I - 0x0051A0 01:9190: 15        .byte $15   ; 
- D 0 - I - 0x0051A1 01:9191: 02        .byte $02   ; 
- D 0 - I - 0x0051A2 01:9192: 02        .byte $02   ; 
- D 0 - I - 0x0051A3 01:9193: 02        .byte $02   ; 
- D 0 - I - 0x0051A4 01:9194: 02        .byte $02   ; 
- D 0 - I - 0x0051A5 01:9195: 02        .byte $02   ; 
- D 0 - I - 0x0051A6 01:9196: 02        .byte $02   ; 
- D 0 - I - 0x0051A7 01:9197: 02        .byte $02   ; 
- D 0 - I - 0x0051A8 01:9198: 02        .byte $02   ; 
- D 0 - I - 0x0051A9 01:9199: 02        .byte $02   ; 
- D 0 - I - 0x0051AA 01:919A: 02        .byte $02   ; 
- D 0 - I - 0x0051AB 01:919B: 2A        .byte $2A   ; 
- D 0 - I - 0x0051AC 01:919C: 1B        .byte $1B   ; 
- D 0 - I - 0x0051AD 01:919D: 1B        .byte $1B   ; 
- D 0 - I - 0x0051AE 01:919E: 00        .byte $00   ; 
- D 0 - I - 0x0051AF 01:919F: 00        .byte $00   ; 
- D 0 - I - 0x0051B0 01:91A0: 00        .byte $00   ; 
- D 0 - I - 0x0051B1 01:91A1: 00        .byte $00   ; 
- D 0 - I - 0x0051B2 01:91A2: 00        .byte $00   ; 
- D 0 - I - 0x0051B3 01:91A3: 00        .byte $00   ; 
- D 0 - I - 0x0051B4 01:91A4: 00        .byte $00   ; 
- D 0 - I - 0x0051B5 01:91A5: 00        .byte $00   ; 
- D 0 - I - 0x0051B6 01:91A6: 1B        .byte $1B   ; 
- D 0 - I - 0x0051B7 01:91A7: 1B        .byte $1B   ; 
- D 0 - I - 0x0051B8 01:91A8: 1B        .byte $1B   ; 
- D 0 - I - 0x0051B9 01:91A9: 1B        .byte $1B   ; 
- D 0 - I - 0x0051BA 01:91AA: 1B        .byte $1B   ; 
- D 0 - I - 0x0051BB 01:91AB: 1B        .byte $1B   ; 
- D 0 - I - 0x0051BC 01:91AC: 1B        .byte $1B   ; 
- D 0 - I - 0x0051BD 01:91AD: 1B        .byte $1B   ; 
- D 0 - I - 0x0051BE 01:91AE: 00        .byte $00   ; 
- D 0 - I - 0x0051BF 01:91AF: 00        .byte $00   ; 
- D 0 - I - 0x0051C0 01:91B0: 00        .byte $00   ; 
- D 0 - I - 0x0051C1 01:91B1: 00        .byte $00   ; 
- D 0 - I - 0x0051C2 01:91B2: 00        .byte $00   ; 
- D 0 - I - 0x0051C3 01:91B3: 00        .byte $00   ; 
- D 0 - I - 0x0051C4 01:91B4: 00        .byte $00   ; 
- D 0 - I - 0x0051C5 01:91B5: 00        .byte $00   ; 
- D 0 - I - 0x0051C6 01:91B6: 1B        .byte $1B   ; 
- D 0 - I - 0x0051C7 01:91B7: 1B        .byte $1B   ; 
- D 0 - I - 0x0051C8 01:91B8: 2B        .byte $2B   ; 
- D 0 - I - 0x0051C9 01:91B9: 02        .byte $02   ; 
- D 0 - I - 0x0051CA 01:91BA: 02        .byte $02   ; 
- D 0 - I - 0x0051CB 01:91BB: 02        .byte $02   ; 
- D 0 - I - 0x0051CC 01:91BC: 02        .byte $02   ; 
- D 0 - I - 0x0051CD 01:91BD: 02        .byte $02   ; 
- D 0 - I - 0x0051CE 01:91BE: 00        .byte $00   ; 
- D 0 - I - 0x0051CF 01:91BF: 00        .byte $00   ; 
- D 0 - I - 0x0051D0 01:91C0: 00        .byte $00   ; 
- D 0 - I - 0x0051D1 01:91C1: 00        .byte $00   ; 
- D 0 - I - 0x0051D2 01:91C2: 00        .byte $00   ; 
- D 0 - I - 0x0051D3 01:91C3: 00        .byte $00   ; 
- D 0 - I - 0x0051D4 01:91C4: 00        .byte $00   ; 
- D 0 - I - 0x0051D5 01:91C5: 00        .byte $00   ; 
- D 0 - I - 0x0051D6 01:91C6: 02        .byte $02   ; 
- D 0 - I - 0x0051D7 01:91C7: 02        .byte $02   ; 
- D 0 - I - 0x0051D8 01:91C8: 02        .byte $02   ; 
- D 0 - I - 0x0051D9 01:91C9: 02        .byte $02   ; 
- D 0 - I - 0x0051DA 01:91CA: 02        .byte $02   ; 
- D 0 - I - 0x0051DB 01:91CB: 02        .byte $02   ; 
- D 0 - I - 0x0051DC 01:91CC: 02        .byte $02   ; 
- D 0 - I - 0x0051DD 01:91CD: 24        .byte $24   ; 
- D 0 - I - 0x0051DE 01:91CE: 00        .byte $00   ; 
- D 0 - I - 0x0051DF 01:91CF: 00        .byte $00   ; 
- D 0 - I - 0x0051E0 01:91D0: 00        .byte $00   ; 
- D 0 - I - 0x0051E1 01:91D1: 00        .byte $00   ; 
- D 0 - I - 0x0051E2 01:91D2: 00        .byte $00   ; 
- D 0 - I - 0x0051E3 01:91D3: 00        .byte $00   ; 
- D 0 - I - 0x0051E4 01:91D4: 00        .byte $00   ; 
- D 0 - I - 0x0051E5 01:91D5: 22        .byte $22   ; 
- D 0 - I - 0x0051E6 01:91D6: 25        .byte $25   ; 
- D 0 - I - 0x0051E7 01:91D7: 02        .byte $02   ; 
- D 0 - I - 0x0051E8 01:91D8: 02        .byte $02   ; 
- D 0 - I - 0x0051E9 01:91D9: 02        .byte $02   ; 
- D 0 - I - 0x0051EA 01:91DA: 02        .byte $02   ; 
- D 0 - I - 0x0051EB 01:91DB: 02        .byte $02   ; 
- D 0 - I - 0x0051EC 01:91DC: 02        .byte $02   ; 
- D 0 - I - 0x0051ED 01:91DD: 02        .byte $02   ; 
- D 0 - I - 0x0051EE 01:91DE: 23        .byte $23   ; 
- D 0 - I - 0x0051EF 01:91DF: 00        .byte $00   ; 
- D 0 - I - 0x0051F0 01:91E0: 00        .byte $00   ; 
- D 0 - I - 0x0051F1 01:91E1: 00        .byte $00   ; 
- D 0 - I - 0x0051F2 01:91E2: 00        .byte $00   ; 
- D 0 - I - 0x0051F3 01:91E3: 00        .byte $00   ; 
- D 0 - I - 0x0051F4 01:91E4: 00        .byte $00   ; 
- D 0 - I - 0x0051F5 01:91E5: 00        .byte $00   ; 
- D 0 - I - 0x0051F6 01:91E6: 1A        .byte $1A   ; 
- D 0 - I - 0x0051F7 01:91E7: 68        .byte $68   ; 
- D 0 - I - 0x0051F8 01:91E8: 69        .byte $69   ; 
- D 0 - I - 0x0051F9 01:91E9: 1A        .byte $1A   ; 
- D 0 - I - 0x0051FA 01:91EA: 1A        .byte $1A   ; 
- D 0 - I - 0x0051FB 01:91EB: 1A        .byte $1A   ; 
- D 0 - I - 0x0051FC 01:91EC: 1A        .byte $1A   ; 
- D 0 - I - 0x0051FD 01:91ED: 1A        .byte $1A   ; 
- D 0 - I - 0x0051FE 01:91EE: 02        .byte $02   ; 
- D 0 - I - 0x0051FF 01:91EF: 2A        .byte $2A   ; 
- D 0 - I - 0x005200 01:91F0: 73        .byte $73   ; 
- D 0 - I - 0x005201 01:91F1: 25        .byte $25   ; 
- D 0 - I - 0x005202 01:91F2: 02        .byte $02   ; 
- D 0 - I - 0x005203 01:91F3: 02        .byte $02   ; 
- D 0 - I - 0x005204 01:91F4: 02        .byte $02   ; 
- D 0 - I - 0x005205 01:91F5: 02        .byte $02   ; 
- D 0 - I - 0x005206 01:91F6: 1A        .byte $1A   ; 
- D 0 - I - 0x005207 01:91F7: 1A        .byte $1A   ; 
- D 0 - I - 0x005208 01:91F8: 1A        .byte $1A   ; 
- D 0 - I - 0x005209 01:91F9: 1A        .byte $1A   ; 
- D 0 - I - 0x00520A 01:91FA: 1A        .byte $1A   ; 
- D 0 - I - 0x00520B 01:91FB: 6C        .byte $6C   ; 
- D 0 - I - 0x00520C 01:91FC: 6D        .byte $6D   ; 
- D 0 - I - 0x00520D 01:91FD: 1A        .byte $1A   ; 
- D 0 - I - 0x00520E 01:91FE: 02        .byte $02   ; 
- D 0 - I - 0x00520F 01:91FF: 02        .byte $02   ; 
- D 0 - I - 0x005210 01:9200: 02        .byte $02   ; 
- D 0 - I - 0x005211 01:9201: 02        .byte $02   ; 
- D 0 - I - 0x005212 01:9202: 24        .byte $24   ; 
- D 0 - I - 0x005213 01:9203: 76        .byte $76   ; 
- D 0 - I - 0x005214 01:9204: 2B        .byte $2B   ; 
- D 0 - I - 0x005215 01:9205: 02        .byte $02   ; 
- D 0 - I - 0x005216 01:9206: 02        .byte $02   ; 
- D 0 - I - 0x005217 01:9207: 02        .byte $02   ; 
- D 0 - I - 0x005218 01:9208: 02        .byte $02   ; 
- D 0 - I - 0x005219 01:9209: 46        .byte $46   ; 
- D 0 - I - 0x00521A 01:920A: 47        .byte $47   ; 
- D 0 - I - 0x00521B 01:920B: 35        .byte $35   ; 
- D 0 - I - 0x00521C 01:920C: 02        .byte $02   ; 
- D 0 - I - 0x00521D 01:920D: 02        .byte $02   ; 
- D 0 - I - 0x00521E 01:920E: 00        .byte $00   ; 
- D 0 - I - 0x00521F 01:920F: 00        .byte $00   ; 
- D 0 - I - 0x005220 01:9210: 00        .byte $00   ; 
- D 0 - I - 0x005221 01:9211: 00        .byte $00   ; 
- D 0 - I - 0x005222 01:9212: 00        .byte $00   ; 
- D 0 - I - 0x005223 01:9213: 78        .byte $78   ; 
- D 0 - I - 0x005224 01:9214: 79        .byte $79   ; 
- D 0 - I - 0x005225 01:9215: 0C        .byte $0C   ; 
- D 0 - I - 0x005226 01:9216: 02        .byte $02   ; 
- D 0 - I - 0x005227 01:9217: 02        .byte $02   ; 
- D 0 - I - 0x005228 01:9218: 34        .byte $34   ; 
- D 0 - I - 0x005229 01:9219: 52        .byte $52   ; 
- D 0 - I - 0x00522A 01:921A: 53        .byte $53   ; 
- D 0 - I - 0x00522B 01:921B: 02        .byte $02   ; 
- D 0 - I - 0x00522C 01:921C: 02        .byte $02   ; 
- D 0 - I - 0x00522D 01:921D: 02        .byte $02   ; 
- D 0 - I - 0x00522E 01:921E: 0C        .byte $0C   ; 
- D 0 - I - 0x00522F 01:921F: 7C        .byte $7C   ; 
- D 0 - I - 0x005230 01:9220: 7D        .byte $7D   ; 
- D 0 - I - 0x005231 01:9221: 00        .byte $00   ; 
- D 0 - I - 0x005232 01:9222: 00        .byte $00   ; 
- D 0 - I - 0x005233 01:9223: 00        .byte $00   ; 
- D 0 - I - 0x005234 01:9224: 00        .byte $00   ; 
- D 0 - I - 0x005235 01:9225: 00        .byte $00   ; 
- D 0 - I - 0x005236 01:9226: 00        .byte $00   ; 
- D 0 - I - 0x005237 01:9227: 00        .byte $00   ; 
- D 0 - I - 0x005238 01:9228: 00        .byte $00   ; 
- D 0 - I - 0x005239 01:9229: 00        .byte $00   ; 
- D 0 - I - 0x00523A 01:922A: 00        .byte $00   ; 
- D 0 - I - 0x00523B 01:922B: 00        .byte $00   ; 
- D 0 - I - 0x00523C 01:922C: 00        .byte $00   ; 
- D 0 - I - 0x00523D 01:922D: 00        .byte $00   ; 
- D 0 - I - 0x00523E 01:922E: 02        .byte $02   ; 
- D 0 - I - 0x00523F 01:922F: 02        .byte $02   ; 
- D 0 - I - 0x005240 01:9230: 02        .byte $02   ; 
- D 0 - I - 0x005241 01:9231: 02        .byte $02   ; 
- D 0 - I - 0x005242 01:9232: 02        .byte $02   ; 
- D 0 - I - 0x005243 01:9233: 02        .byte $02   ; 
- D 0 - I - 0x005244 01:9234: 02        .byte $02   ; 
- D 0 - I - 0x005245 01:9235: 02        .byte $02   ; 
- D 0 - I - 0x005246 01:9236: 02        .byte $02   ; 
- D 0 - I - 0x005247 01:9237: 02        .byte $02   ; 
- D 0 - I - 0x005248 01:9238: 02        .byte $02   ; 
- D 0 - I - 0x005249 01:9239: 02        .byte $02   ; 
- D 0 - I - 0x00524A 01:923A: 02        .byte $02   ; 
- D 0 - I - 0x00524B 01:923B: 02        .byte $02   ; 
- D 0 - I - 0x00524C 01:923C: 02        .byte $02   ; 
- D 0 - I - 0x00524D 01:923D: 02        .byte $02   ; 
- D 0 - I - 0x00524E 01:923E: 00        .byte $00   ; 
- D 0 - I - 0x00524F 01:923F: 00        .byte $00   ; 
- D 0 - I - 0x005250 01:9240: 00        .byte $00   ; 
- D 0 - I - 0x005251 01:9241: 00        .byte $00   ; 
- D 0 - I - 0x005252 01:9242: 2C        .byte $2C   ; 
- D 0 - I - 0x005253 01:9243: 7A        .byte $7A   ; 
- D 0 - I - 0x005254 01:9244: 7B        .byte $7B   ; 
- D 0 - I - 0x005255 01:9245: 0C        .byte $0C   ; 
- D 0 - I - 0x005256 01:9246: 02        .byte $02   ; 
- D 0 - I - 0x005257 01:9247: 02        .byte $02   ; 
- D 0 - I - 0x005258 01:9248: 02        .byte $02   ; 
- D 0 - I - 0x005259 01:9249: 02        .byte $02   ; 
- D 0 - I - 0x00525A 01:924A: 02        .byte $02   ; 
- D 0 - I - 0x00525B 01:924B: 02        .byte $02   ; 
- D 0 - I - 0x00525C 01:924C: 02        .byte $02   ; 
- D 0 - I - 0x00525D 01:924D: 02        .byte $02   ; 
- D 0 - I - 0x00525E 01:924E: 0C        .byte $0C   ; 
- D 0 - I - 0x00525F 01:924F: 7E        .byte $7E   ; 
- D 0 - I - 0x005260 01:9250: 7F        .byte $7F   ; 
- D 0 - I - 0x005261 01:9251: 2D        .byte $2D   ; 
- D 0 - I - 0x005262 01:9252: 00        .byte $00   ; 
- D 0 - I - 0x005263 01:9253: 00        .byte $00   ; 
- D 0 - I - 0x005264 01:9254: 00        .byte $00   ; 
- D 0 - I - 0x005265 01:9255: 00        .byte $00   ; 
- D 0 - I - 0x005266 01:9256: 00        .byte $00   ; 
- D 0 - I - 0x005267 01:9257: 00        .byte $00   ; 
- D 0 - I - 0x005268 01:9258: 00        .byte $00   ; 
- D 0 - I - 0x005269 01:9259: 4E        .byte $4E   ; 
- D 0 - I - 0x00526A 01:925A: 4F        .byte $4F   ; 
- D 0 - I - 0x00526B 01:925B: 33        .byte $33   ; 
- D 0 - I - 0x00526C 01:925C: 00        .byte $00   ; 
- D 0 - I - 0x00526D 01:925D: 00        .byte $00   ; 
- D 0 - I - 0x00526E 01:925E: 02        .byte $02   ; 
- D 0 - I - 0x00526F 01:925F: 28        .byte $28   ; 
- D 0 - I - 0x005270 01:9260: 71        .byte $71   ; 
- D 0 - I - 0x005271 01:9261: 27        .byte $27   ; 
- D 0 - I - 0x005272 01:9262: 02        .byte $02   ; 
- D 0 - I - 0x005273 01:9263: 02        .byte $02   ; 
- D 0 - I - 0x005274 01:9264: 02        .byte $02   ; 
- D 0 - I - 0x005275 01:9265: 02        .byte $02   ; 
- D 0 - I - 0x005276 01:9266: 00        .byte $00   ; 
- D 0 - I - 0x005277 01:9267: 00        .byte $00   ; 
- D 0 - I - 0x005278 01:9268: 32        .byte $32   ; 
- D 0 - I - 0x005279 01:9269: 5A        .byte $5A   ; 
- D 0 - I - 0x00527A 01:926A: 5B        .byte $5B   ; 
- D 0 - I - 0x00527B 01:926B: 00        .byte $00   ; 
- D 0 - I - 0x00527C 01:926C: 00        .byte $00   ; 
- D 0 - I - 0x00527D 01:926D: 00        .byte $00   ; 
- D 0 - I - 0x00527E 01:926E: 02        .byte $02   ; 
- D 0 - I - 0x00527F 01:926F: 02        .byte $02   ; 
- D 0 - I - 0x005280 01:9270: 02        .byte $02   ; 
- D 0 - I - 0x005281 01:9271: 02        .byte $02   ; 
- D 0 - I - 0x005282 01:9272: 26        .byte $26   ; 
- D 0 - I - 0x005283 01:9273: 74        .byte $74   ; 
- D 0 - I - 0x005284 01:9274: 29        .byte $29   ; 
- D 0 - I - 0x005285 01:9275: 02        .byte $02   ; 
- D 0 - I - 0x005286 01:9276: 02        .byte $02   ; 
- D 0 - I - 0x005287 01:9277: 70        .byte $70   ; 
- D 0 - I - 0x005288 01:9278: 2B        .byte $2B   ; 
- D 0 - I - 0x005289 01:9279: 02        .byte $02   ; 
- D 0 - I - 0x00528A 01:927A: 02        .byte $02   ; 
- D 0 - I - 0x00528B 01:927B: 02        .byte $02   ; 
- D 0 - I - 0x00528C 01:927C: 02        .byte $02   ; 
- D 0 - I - 0x00528D 01:927D: 02        .byte $02   ; 
- D 0 - I - 0x00528E 01:927E: 41        .byte $41   ; 
- D 0 - I - 0x00528F 01:927F: 23        .byte $23   ; 
- D 0 - I - 0x005290 01:9280: 00        .byte $00   ; 
- D 0 - I - 0x005291 01:9281: 00        .byte $00   ; 
- D 0 - I - 0x005292 01:9282: 00        .byte $00   ; 
- D 0 - I - 0x005293 01:9283: 00        .byte $00   ; 
- D 0 - I - 0x005294 01:9284: 00        .byte $00   ; 
- D 0 - I - 0x005295 01:9285: 00        .byte $00   ; 
- D 0 - I - 0x005296 01:9286: 02        .byte $02   ; 
- D 0 - I - 0x005297 01:9287: 02        .byte $02   ; 
- D 0 - I - 0x005298 01:9288: 02        .byte $02   ; 
- D 0 - I - 0x005299 01:9289: 02        .byte $02   ; 
- D 0 - I - 0x00529A 01:928A: 02        .byte $02   ; 
- D 0 - I - 0x00529B 01:928B: 2A        .byte $2A   ; 
- D 0 - I - 0x00529C 01:928C: 75        .byte $75   ; 
- D 0 - I - 0x00529D 01:928D: 02        .byte $02   ; 
- D 0 - I - 0x00529E 01:928E: 00        .byte $00   ; 
- D 0 - I - 0x00529F 01:928F: 00        .byte $00   ; 
- D 0 - I - 0x0052A0 01:9290: 00        .byte $00   ; 
- D 0 - I - 0x0052A1 01:9291: 00        .byte $00   ; 
- D 0 - I - 0x0052A2 01:9292: 00        .byte $00   ; 
- D 0 - I - 0x0052A3 01:9293: 00        .byte $00   ; 
- D 0 - I - 0x0052A4 01:9294: 22        .byte $22   ; 
- D 0 - I - 0x0052A5 01:9295: 54        .byte $54   ; 
- D 0 - I - 0x0052A6 01:9296: 00        .byte $00   ; 
- D 0 - I - 0x0052A7 01:9297: 00        .byte $00   ; 
- D 0 - I - 0x0052A8 01:9298: 00        .byte $00   ; 
- D 0 - I - 0x0052A9 01:9299: 00        .byte $00   ; 
- D 0 - I - 0x0052AA 01:929A: 00        .byte $00   ; 
- D 0 - I - 0x0052AB 01:929B: 00        .byte $00   ; 
- D 0 - I - 0x0052AC 01:929C: 00        .byte $00   ; 
- D 0 - I - 0x0052AD 01:929D: 2C        .byte $2C   ; 
- D 0 - I - 0x0052AE 01:929E: 02        .byte $02   ; 
- D 0 - I - 0x0052AF 01:929F: 02        .byte $02   ; 
- D 0 - I - 0x0052B0 01:92A0: 02        .byte $02   ; 
- D 0 - I - 0x0052B1 01:92A1: 02        .byte $02   ; 
- D 0 - I - 0x0052B2 01:92A2: 02        .byte $02   ; 
- D 0 - I - 0x0052B3 01:92A3: 02        .byte $02   ; 
- D 0 - I - 0x0052B4 01:92A4: 02        .byte $02   ; 
- D 0 - I - 0x0052B5 01:92A5: 40        .byte $40   ; 
- D 0 - I - 0x0052B6 01:92A6: 43        .byte $43   ; 
- D 0 - I - 0x0052B7 01:92A7: 00        .byte $00   ; 
- D 0 - I - 0x0052B8 01:92A8: 00        .byte $00   ; 
- D 0 - I - 0x0052B9 01:92A9: 00        .byte $00   ; 
- D 0 - I - 0x0052BA 01:92AA: 00        .byte $00   ; 
- D 0 - I - 0x0052BB 01:92AB: 00        .byte $00   ; 
- D 0 - I - 0x0052BC 01:92AC: 00        .byte $00   ; 
- D 0 - I - 0x0052BD 01:92AD: 00        .byte $00   ; 
- D 0 - I - 0x0052BE 01:92AE: A3        .byte $A3   ; 
- D 0 - I - 0x0052BF 01:92AF: 02        .byte $02   ; 
- D 0 - I - 0x0052C0 01:92B0: 02        .byte $02   ; 
- D 0 - I - 0x0052C1 01:92B1: 02        .byte $02   ; 
- D 0 - I - 0x0052C2 01:92B2: 02        .byte $02   ; 
- D 0 - I - 0x0052C3 01:92B3: 02        .byte $02   ; 
- D 0 - I - 0x0052C4 01:92B4: 02        .byte $02   ; 
- D 0 - I - 0x0052C5 01:92B5: 02        .byte $02   ; 
- D 0 - I - 0x0052C6 01:92B6: 00        .byte $00   ; 
- D 0 - I - 0x0052C7 01:92B7: 00        .byte $00   ; 
- D 0 - I - 0x0052C8 01:92B8: 00        .byte $00   ; 
- D 0 - I - 0x0052C9 01:92B9: 00        .byte $00   ; 
- D 0 - I - 0x0052CA 01:92BA: 00        .byte $00   ; 
- D 0 - I - 0x0052CB 01:92BB: 00        .byte $00   ; 
- D 0 - I - 0x0052CC 01:92BC: 00        .byte $00   ; 
- D 0 - I - 0x0052CD 01:92BD: 56        .byte $56   ; 
- D 0 - I - 0x0052CE 01:92BE: 02        .byte $02   ; 
- D 0 - I - 0x0052CF 01:92BF: 02        .byte $02   ; 
- D 0 - I - 0x0052D0 01:92C0: 02        .byte $02   ; 
- D 0 - I - 0x0052D1 01:92C1: 02        .byte $02   ; 
- D 0 - I - 0x0052D2 01:92C2: 02        .byte $02   ; 
- D 0 - I - 0x0052D3 01:92C3: 02        .byte $02   ; 
- D 0 - I - 0x0052D4 01:92C4: 02        .byte $02   ; 
- D 0 - I - 0x0052D5 01:92C5: A2        .byte $A2   ; 
- D 0 - I - 0x0052D6 01:92C6: 2D        .byte $2D   ; 
- D 0 - I - 0x0052D7 01:92C7: 00        .byte $00   ; 
- D 0 - I - 0x0052D8 01:92C8: 00        .byte $00   ; 
- D 0 - I - 0x0052D9 01:92C9: 00        .byte $00   ; 
- D 0 - I - 0x0052DA 01:92CA: 00        .byte $00   ; 
- D 0 - I - 0x0052DB 01:92CB: 00        .byte $00   ; 
- D 0 - I - 0x0052DC 01:92CC: 00        .byte $00   ; 
- D 0 - I - 0x0052DD 01:92CD: 00        .byte $00   ; 
- D 0 - I - 0x0052DE 01:92CE: 55        .byte $55   ; 
- D 0 - I - 0x0052DF 01:92CF: 02        .byte $02   ; 
- D 0 - I - 0x0052E0 01:92D0: 02        .byte $02   ; 
- D 0 - I - 0x0052E1 01:92D1: 02        .byte $02   ; 
- D 0 - I - 0x0052E2 01:92D2: 02        .byte $02   ; 
- D 0 - I - 0x0052E3 01:92D3: 02        .byte $02   ; 
- D 0 - I - 0x0052E4 01:92D4: 02        .byte $02   ; 
- D 0 - I - 0x0052E5 01:92D5: 02        .byte $02   ; 
- D 0 - I - 0x0052E6 01:92D6: A8        .byte $A8   ; 
- D 0 - I - 0x0052E7 01:92D7: 14        .byte $14   ; 
- D 0 - I - 0x0052E8 01:92D8: 15        .byte $15   ; 
- D 0 - I - 0x0052E9 01:92D9: 02        .byte $02   ; 
- D 0 - I - 0x0052EA 01:92DA: 02        .byte $02   ; 
- D 0 - I - 0x0052EB 01:92DB: 02        .byte $02   ; 
- D 0 - I - 0x0052EC 01:92DC: 02        .byte $02   ; 
- D 0 - I - 0x0052ED 01:92DD: 02        .byte $02   ; 
- D 0 - I - 0x0052EE 01:92DE: AA        .byte $AA   ; 
- D 0 - I - 0x0052EF 01:92DF: AB        .byte $AB   ; 
- D 0 - I - 0x0052F0 01:92E0: 3E        .byte $3E   ; 
- D 0 - I - 0x0052F1 01:92E1: 18        .byte $18   ; 
- D 0 - I - 0x0052F2 01:92E2: 18        .byte $18   ; 
- D 0 - I - 0x0052F3 01:92E3: 18        .byte $18   ; 
- D 0 - I - 0x0052F4 01:92E4: 18        .byte $18   ; 
- D 0 - I - 0x0052F5 01:92E5: 18        .byte $18   ; 
- D 0 - I - 0x0052F6 01:92E6: 02        .byte $02   ; 
- D 0 - I - 0x0052F7 01:92E7: 02        .byte $02   ; 
- D 0 - I - 0x0052F8 01:92E8: 02        .byte $02   ; 
- D 0 - I - 0x0052F9 01:92E9: 02        .byte $02   ; 
- D 0 - I - 0x0052FA 01:92EA: 02        .byte $02   ; 
- D 0 - I - 0x0052FB 01:92EB: 02        .byte $02   ; 
- D 0 - I - 0x0052FC 01:92EC: 02        .byte $02   ; 
- D 0 - I - 0x0052FD 01:92ED: 02        .byte $02   ; 
- D 0 - I - 0x0052FE 01:92EE: 18        .byte $18   ; 
- D 0 - I - 0x0052FF 01:92EF: 18        .byte $18   ; 
- D 0 - I - 0x005300 01:92F0: 18        .byte $18   ; 
- D 0 - I - 0x005301 01:92F1: 18        .byte $18   ; 
- D 0 - I - 0x005302 01:92F2: 18        .byte $18   ; 
- D 0 - I - 0x005303 01:92F3: 18        .byte $18   ; 
- D 0 - I - 0x005304 01:92F4: 18        .byte $18   ; 
- D 0 - I - 0x005305 01:92F5: 18        .byte $18   ; 
- D 0 - I - 0x005306 01:92F6: 02        .byte $02   ; 
- D 0 - I - 0x005307 01:92F7: 02        .byte $02   ; 
- D 0 - I - 0x005308 01:92F8: 02        .byte $02   ; 
- D 0 - I - 0x005309 01:92F9: 02        .byte $02   ; 
- D 0 - I - 0x00530A 01:92FA: 02        .byte $02   ; 
- D 0 - I - 0x00530B 01:92FB: 02        .byte $02   ; 
- D 0 - I - 0x00530C 01:92FC: 02        .byte $02   ; 
- D 0 - I - 0x00530D 01:92FD: 42        .byte $42   ; 
- D 0 - I - 0x00530E 01:92FE: 18        .byte $18   ; 
- D 0 - I - 0x00530F 01:92FF: 18        .byte $18   ; 
- D 0 - I - 0x005310 01:9300: 18        .byte $18   ; 
- D 0 - I - 0x005311 01:9301: 18        .byte $18   ; 
- D 0 - I - 0x005312 01:9302: 18        .byte $18   ; 
- D 0 - I - 0x005313 01:9303: 18        .byte $18   ; 
- D 0 - I - 0x005314 01:9304: 18        .byte $18   ; 
- D 0 - I - 0x005315 01:9305: 0D        .byte $0D   ; 
- D 0 - I - 0x005316 01:9306: 02        .byte $02   ; 
- D 0 - I - 0x005317 01:9307: 02        .byte $02   ; 
- D 0 - I - 0x005318 01:9308: 02        .byte $02   ; 
- D 0 - I - 0x005319 01:9309: 02        .byte $02   ; 
- D 0 - I - 0x00531A 01:930A: 02        .byte $02   ; 
- D 0 - I - 0x00531B 01:930B: 02        .byte $02   ; 
- D 0 - I - 0x00531C 01:930C: 02        .byte $02   ; 
- D 0 - I - 0x00531D 01:930D: 02        .byte $02   ; 
- D 0 - I - 0x00531E 01:930E: 18        .byte $18   ; 
- D 0 - I - 0x00531F 01:930F: 18        .byte $18   ; 
- D 0 - I - 0x005320 01:9310: 18        .byte $18   ; 
- D 0 - I - 0x005321 01:9311: 18        .byte $18   ; 
- D 0 - I - 0x005322 01:9312: 18        .byte $18   ; 
- D 0 - I - 0x005323 01:9313: 18        .byte $18   ; 
- D 0 - I - 0x005324 01:9314: 18        .byte $18   ; 
- D 0 - I - 0x005325 01:9315: 1C        .byte $1C   ; 
- D 0 - I - 0x005326 01:9316: 02        .byte $02   ; 
- D 0 - I - 0x005327 01:9317: 02        .byte $02   ; 
- D 0 - I - 0x005328 01:9318: 02        .byte $02   ; 
- D 0 - I - 0x005329 01:9319: 02        .byte $02   ; 
- D 0 - I - 0x00532A 01:931A: 02        .byte $02   ; 
- D 0 - I - 0x00532B 01:931B: 02        .byte $02   ; 
- D 0 - I - 0x00532C 01:931C: 02        .byte $02   ; 
- D 0 - I - 0x00532D 01:931D: 02        .byte $02   ; 
- D 0 - I - 0x00532E 01:931E: 1D        .byte $1D   ; 
- D 0 - I - 0x00532F 01:931F: 18        .byte $18   ; 
- D 0 - I - 0x005330 01:9320: 18        .byte $18   ; 
- D 0 - I - 0x005331 01:9321: 18        .byte $18   ; 
- D 0 - I - 0x005332 01:9322: 18        .byte $18   ; 
- D 0 - I - 0x005333 01:9323: 18        .byte $18   ; 
- D 0 - I - 0x005334 01:9324: 18        .byte $18   ; 
- D 0 - I - 0x005335 01:9325: 18        .byte $18   ; 
- D 0 - I - 0x005336 01:9326: 57        .byte $57   ; 
- D 0 - I - 0x005337 01:9327: 02        .byte $02   ; 
- D 0 - I - 0x005338 01:9328: 02        .byte $02   ; 
- D 0 - I - 0x005339 01:9329: 02        .byte $02   ; 
- D 0 - I - 0x00533A 01:932A: 02        .byte $02   ; 
- D 0 - I - 0x00533B 01:932B: 02        .byte $02   ; 
- D 0 - I - 0x00533C 01:932C: 02        .byte $02   ; 
- D 0 - I - 0x00533D 01:932D: 02        .byte $02   ; 
- D 0 - I - 0x00533E 01:932E: 0D        .byte $0D   ; 
- D 0 - I - 0x00533F 01:932F: 18        .byte $18   ; 
- D 0 - I - 0x005340 01:9330: 18        .byte $18   ; 
- D 0 - I - 0x005341 01:9331: 18        .byte $18   ; 
- D 0 - I - 0x005342 01:9332: 18        .byte $18   ; 
- D 0 - I - 0x005343 01:9333: 18        .byte $18   ; 
- D 0 - I - 0x005344 01:9334: 18        .byte $18   ; 
- D 0 - I - 0x005345 01:9335: 18        .byte $18   ; 
- D 0 - I - 0x005346 01:9336: 02        .byte $02   ; 
- D 0 - I - 0x005347 01:9337: 02        .byte $02   ; 
- D 0 - I - 0x005348 01:9338: 02        .byte $02   ; 
- D 0 - I - 0x005349 01:9339: 02        .byte $02   ; 
- D 0 - I - 0x00534A 01:933A: 02        .byte $02   ; 
- D 0 - I - 0x00534B 01:933B: 14        .byte $14   ; 
- D 0 - I - 0x00534C 01:933C: 15        .byte $15   ; 
- D 0 - I - 0x00534D 01:933D: AD        .byte $AD   ; 
- D 0 - I - 0x00534E 01:933E: 18        .byte $18   ; 
- D 0 - I - 0x00534F 01:933F: 18        .byte $18   ; 
- D 0 - I - 0x005350 01:9340: 18        .byte $18   ; 
- D 0 - I - 0x005351 01:9341: 18        .byte $18   ; 
- D 0 - I - 0x005352 01:9342: 18        .byte $18   ; 
- D 0 - I - 0x005353 01:9343: 3F        .byte $3F   ; 
- D 0 - I - 0x005354 01:9344: AE        .byte $AE   ; 
- D 0 - I - 0x005355 01:9345: AF        .byte $AF   ; 
- D 0 - I - 0x005356 01:9346: 00        .byte $00   ; 
- D 0 - I - 0x005357 01:9347: 16        .byte $16   ; 
- D 0 - I - 0x005358 01:9348: 3C        .byte $3C   ; 
- D 0 - I - 0x005359 01:9349: 1A        .byte $1A   ; 
- D 0 - I - 0x00535A 01:934A: 1A        .byte $1A   ; 
- D 0 - I - 0x00535B 01:934B: 1A        .byte $1A   ; 
- D 0 - I - 0x00535C 01:934C: 1A        .byte $1A   ; 
- D 0 - I - 0x00535D 01:934D: 1A        .byte $1A   ; 
- D 0 - I - 0x00535E 01:934E: 02        .byte $02   ; 
- D 0 - I - 0x00535F 01:934F: 14        .byte $14   ; 
- D 0 - I - 0x005360 01:9350: 15        .byte $15   ; 
- D 0 - I - 0x005361 01:9351: 02        .byte $02   ; 
- D 0 - I - 0x005362 01:9352: 02        .byte $02   ; 
- D 0 - I - 0x005363 01:9353: 02        .byte $02   ; 
- D 0 - I - 0x005364 01:9354: 02        .byte $02   ; 
- D 0 - I - 0x005365 01:9355: 02        .byte $02   ; 
- D 0 - I - 0x005366 01:9356: 1A        .byte $1A   ; 
- D 0 - I - 0x005367 01:9357: 1A        .byte $1A   ; 
- D 0 - I - 0x005368 01:9358: 1A        .byte $1A   ; 
- D 0 - I - 0x005369 01:9359: 1A        .byte $1A   ; 
- D 0 - I - 0x00536A 01:935A: 1A        .byte $1A   ; 
- D 0 - I - 0x00536B 01:935B: 1A        .byte $1A   ; 
- D 0 - I - 0x00536C 01:935C: 1A        .byte $1A   ; 
- D 0 - I - 0x00536D 01:935D: 1A        .byte $1A   ; 
- D 0 - I - 0x00536E 01:935E: 02        .byte $02   ; 
- D 0 - I - 0x00536F 01:935F: 02        .byte $02   ; 
- D 0 - I - 0x005370 01:9360: 02        .byte $02   ; 
- D 0 - I - 0x005371 01:9361: 02        .byte $02   ; 
- D 0 - I - 0x005372 01:9362: 02        .byte $02   ; 
- D 0 - I - 0x005373 01:9363: 02        .byte $02   ; 
- D 0 - I - 0x005374 01:9364: 02        .byte $02   ; 
- D 0 - I - 0x005375 01:9365: 02        .byte $02   ; 
- D 0 - I - 0x005376 01:9366: 1A        .byte $1A   ; 
- D 0 - I - 0x005377 01:9367: 1A        .byte $1A   ; 
- D 0 - I - 0x005378 01:9368: 1A        .byte $1A   ; 
- D 0 - I - 0x005379 01:9369: 1A        .byte $1A   ; 
- D 0 - I - 0x00537A 01:936A: 1A        .byte $1A   ; 
- D 0 - I - 0x00537B 01:936B: 1A        .byte $1A   ; 
- D 0 - I - 0x00537C 01:936C: 1A        .byte $1A   ; 
- D 0 - I - 0x00537D 01:936D: 0F        .byte $0F   ; 
- D 0 - I - 0x00537E 01:936E: 02        .byte $02   ; 
- D 0 - I - 0x00537F 01:936F: 02        .byte $02   ; 
- D 0 - I - 0x005380 01:9370: 02        .byte $02   ; 
- D 0 - I - 0x005381 01:9371: 02        .byte $02   ; 
- D 0 - I - 0x005382 01:9372: 02        .byte $02   ; 
- D 0 - I - 0x005383 01:9373: 02        .byte $02   ; 
- D 0 - I - 0x005384 01:9374: 02        .byte $02   ; 
- D 0 - I - 0x005385 01:9375: 48        .byte $48   ; 
- D 0 - I - 0x005386 01:9376: 1A        .byte $1A   ; 
- D 0 - I - 0x005387 01:9377: 1A        .byte $1A   ; 
- D 0 - I - 0x005388 01:9378: 1A        .byte $1A   ; 
- D 0 - I - 0x005389 01:9379: 1A        .byte $1A   ; 
- D 0 - I - 0x00538A 01:937A: 1A        .byte $1A   ; 
- D 0 - I - 0x00538B 01:937B: 1A        .byte $1A   ; 
- D 0 - I - 0x00538C 01:937C: 1A        .byte $1A   ; 
- D 0 - I - 0x00538D 01:937D: 1E        .byte $1E   ; 
- D 0 - I - 0x00538E 01:937E: 02        .byte $02   ; 
- D 0 - I - 0x00538F 01:937F: 02        .byte $02   ; 
- D 0 - I - 0x005390 01:9380: 02        .byte $02   ; 
- D 0 - I - 0x005391 01:9381: 02        .byte $02   ; 
- D 0 - I - 0x005392 01:9382: 02        .byte $02   ; 
- D 0 - I - 0x005393 01:9383: 02        .byte $02   ; 
- D 0 - I - 0x005394 01:9384: 02        .byte $02   ; 
- D 0 - I - 0x005395 01:9385: 02        .byte $02   ; 
- D 0 - I - 0x005396 01:9386: 1F        .byte $1F   ; 
- D 0 - I - 0x005397 01:9387: 1A        .byte $1A   ; 
- D 0 - I - 0x005398 01:9388: 1A        .byte $1A   ; 
- D 0 - I - 0x005399 01:9389: 1A        .byte $1A   ; 
- D 0 - I - 0x00539A 01:938A: 1A        .byte $1A   ; 
- D 0 - I - 0x00539B 01:938B: 1A        .byte $1A   ; 
- D 0 - I - 0x00539C 01:938C: 1A        .byte $1A   ; 
- D 0 - I - 0x00539D 01:938D: 1A        .byte $1A   ; 
- D 0 - I - 0x00539E 01:938E: 02        .byte $02   ; 
- D 0 - I - 0x00539F 01:938F: 02        .byte $02   ; 
- D 0 - I - 0x0053A0 01:9390: 02        .byte $02   ; 
- D 0 - I - 0x0053A1 01:9391: 02        .byte $02   ; 
- D 0 - I - 0x0053A2 01:9392: 02        .byte $02   ; 
- D 0 - I - 0x0053A3 01:9393: 02        .byte $02   ; 
- D 0 - I - 0x0053A4 01:9394: 02        .byte $02   ; 
- D 0 - I - 0x0053A5 01:9395: 02        .byte $02   ; 
- D 0 - I - 0x0053A6 01:9396: 0F        .byte $0F   ; 
- D 0 - I - 0x0053A7 01:9397: 1A        .byte $1A   ; 
- D 0 - I - 0x0053A8 01:9398: 1A        .byte $1A   ; 
- D 0 - I - 0x0053A9 01:9399: 1A        .byte $1A   ; 
- D 0 - I - 0x0053AA 01:939A: 1A        .byte $1A   ; 
- D 0 - I - 0x0053AB 01:939B: 1A        .byte $1A   ; 
- D 0 - I - 0x0053AC 01:939C: 1A        .byte $1A   ; 
- D 0 - I - 0x0053AD 01:939D: 1A        .byte $1A   ; 
- D 0 - I - 0x0053AE 01:939E: 5D        .byte $5D   ; 
- D 0 - I - 0x0053AF 01:939F: 02        .byte $02   ; 
- D 0 - I - 0x0053B0 01:93A0: 02        .byte $02   ; 
- D 0 - I - 0x0053B1 01:93A1: 02        .byte $02   ; 
- D 0 - I - 0x0053B2 01:93A2: 02        .byte $02   ; 
- D 0 - I - 0x0053B3 01:93A3: 02        .byte $02   ; 
- D 0 - I - 0x0053B4 01:93A4: 02        .byte $02   ; 
- D 0 - I - 0x0053B5 01:93A5: 02        .byte $02   ; 
- D 0 - I - 0x0053B6 01:93A6: 1A        .byte $1A   ; 
- D 0 - I - 0x0053B7 01:93A7: 1A        .byte $1A   ; 
- D 0 - I - 0x0053B8 01:93A8: 1A        .byte $1A   ; 
- D 0 - I - 0x0053B9 01:93A9: 1A        .byte $1A   ; 
- D 0 - I - 0x0053BA 01:93AA: 1A        .byte $1A   ; 
- D 0 - I - 0x0053BB 01:93AB: 3D        .byte $3D   ; 
- D 0 - I - 0x0053BC 01:93AC: 17        .byte $17   ; 
- D 0 - I - 0x0053BD 01:93AD: 00        .byte $00   ; 
- D 0 - I - 0x0053BE 01:93AE: 02        .byte $02   ; 
- D 0 - I - 0x0053BF 01:93AF: 02        .byte $02   ; 
- D 0 - I - 0x0053C0 01:93B0: 02        .byte $02   ; 
- D 0 - I - 0x0053C1 01:93B1: 02        .byte $02   ; 
- D 0 - I - 0x0053C2 01:93B2: 02        .byte $02   ; 
- D 0 - I - 0x0053C3 01:93B3: 14        .byte $14   ; 
- D 0 - I - 0x0053C4 01:93B4: 15        .byte $15   ; 
- D 0 - I - 0x0053C5 01:93B5: 02        .byte $02   ; 
- D 0 - I - 0x0053C6 01:93B6: 02        .byte $02   ; 
- D 0 - I - 0x0053C7 01:93B7: 02        .byte $02   ; 
- D 0 - I - 0x0053C8 01:93B8: 02        .byte $02   ; 
- D 0 - I - 0x0053C9 01:93B9: 02        .byte $02   ; 
- D 0 - I - 0x0053CA 01:93BA: 02        .byte $02   ; 
- D 0 - I - 0x0053CB 01:93BB: 02        .byte $02   ; 
- D 0 - I - 0x0053CC 01:93BC: 02        .byte $02   ; 
- D 0 - I - 0x0053CD 01:93BD: 4A        .byte $4A   ; 
- D 0 - I - 0x0053CE 01:93BE: 00        .byte $00   ; 
- D 0 - I - 0x0053CF 01:93BF: 00        .byte $00   ; 
- D 0 - I - 0x0053D0 01:93C0: 00        .byte $00   ; 
- D 0 - I - 0x0053D1 01:93C1: 00        .byte $00   ; 
- D 0 - I - 0x0053D2 01:93C2: 00        .byte $00   ; 
- D 0 - I - 0x0053D3 01:93C3: 00        .byte $00   ; 
- D 0 - I - 0x0053D4 01:93C4: 00        .byte $00   ; 
- D 0 - I - 0x0053D5 01:93C5: 2E        .byte $2E   ; 
- D 0 - I - 0x0053D6 01:93C6: A1        .byte $A1   ; 
- D 0 - I - 0x0053D7 01:93C7: 02        .byte $02   ; 
- D 0 - I - 0x0053D8 01:93C8: 02        .byte $02   ; 
- D 0 - I - 0x0053D9 01:93C9: 02        .byte $02   ; 
- D 0 - I - 0x0053DA 01:93CA: 02        .byte $02   ; 
- D 0 - I - 0x0053DB 01:93CB: 02        .byte $02   ; 
- D 0 - I - 0x0053DC 01:93CC: 02        .byte $02   ; 
- D 0 - I - 0x0053DD 01:93CD: 02        .byte $02   ; 
- D 0 - I - 0x0053DE 01:93CE: 49        .byte $49   ; 
- D 0 - I - 0x0053DF 01:93CF: 00        .byte $00   ; 
- D 0 - I - 0x0053E0 01:93D0: 00        .byte $00   ; 
- D 0 - I - 0x0053E1 01:93D1: 00        .byte $00   ; 
- D 0 - I - 0x0053E2 01:93D2: 00        .byte $00   ; 
- D 0 - I - 0x0053E3 01:93D3: 00        .byte $00   ; 
- D 0 - I - 0x0053E4 01:93D4: 00        .byte $00   ; 
- D 0 - I - 0x0053E5 01:93D5: 00        .byte $00   ; 
- D 0 - I - 0x0053E6 01:93D6: 02        .byte $02   ; 
- D 0 - I - 0x0053E7 01:93D7: 02        .byte $02   ; 
- D 0 - I - 0x0053E8 01:93D8: 02        .byte $02   ; 
- D 0 - I - 0x0053E9 01:93D9: 02        .byte $02   ; 
- D 0 - I - 0x0053EA 01:93DA: 02        .byte $02   ; 
- D 0 - I - 0x0053EB 01:93DB: 02        .byte $02   ; 
- D 0 - I - 0x0053EC 01:93DC: 02        .byte $02   ; 
- D 0 - I - 0x0053ED 01:93DD: A0        .byte $A0   ; 
- D 0 - I - 0x0053EE 01:93DE: 00        .byte $00   ; 
- D 0 - I - 0x0053EF 01:93DF: 00        .byte $00   ; 
- D 0 - I - 0x0053F0 01:93E0: 00        .byte $00   ; 
- D 0 - I - 0x0053F1 01:93E1: 00        .byte $00   ; 
- D 0 - I - 0x0053F2 01:93E2: 00        .byte $00   ; 
- D 0 - I - 0x0053F3 01:93E3: 00        .byte $00   ; 
- D 0 - I - 0x0053F4 01:93E4: 00        .byte $00   ; 
- D 0 - I - 0x0053F5 01:93E5: 5C        .byte $5C   ; 
- D 0 - I - 0x0053F6 01:93E6: 5F        .byte $5F   ; 
- D 0 - I - 0x0053F7 01:93E7: 02        .byte $02   ; 
- D 0 - I - 0x0053F8 01:93E8: 02        .byte $02   ; 
- D 0 - I - 0x0053F9 01:93E9: 02        .byte $02   ; 
- D 0 - I - 0x0053FA 01:93EA: 02        .byte $02   ; 
- D 0 - I - 0x0053FB 01:93EB: 02        .byte $02   ; 
- D 0 - I - 0x0053FC 01:93EC: 02        .byte $02   ; 
- D 0 - I - 0x0053FD 01:93ED: 02        .byte $02   ; 
- D 0 - I - 0x0053FE 01:93EE: 2F        .byte $2F   ; 
- D 0 - I - 0x0053FF 01:93EF: 00        .byte $00   ; 
- D 0 - I - 0x005400 01:93F0: 00        .byte $00   ; 
- D 0 - I - 0x005401 01:93F1: 00        .byte $00   ; 
- D 0 - I - 0x005402 01:93F2: 00        .byte $00   ; 
- D 0 - I - 0x005403 01:93F3: 00        .byte $00   ; 
- D 0 - I - 0x005404 01:93F4: 00        .byte $00   ; 
- D 0 - I - 0x005405 01:93F5: 00        .byte $00   ; 
- D 0 - I - 0x005406 01:93F6: 4B        .byte $4B   ; 
- D 0 - I - 0x005407 01:93F7: 21        .byte $21   ; 
- D 0 - I - 0x005408 01:93F8: 00        .byte $00   ; 
- D 0 - I - 0x005409 01:93F9: 00        .byte $00   ; 
- D 0 - I - 0x00540A 01:93FA: 00        .byte $00   ; 
- D 0 - I - 0x00540B 01:93FB: 00        .byte $00   ; 
- D 0 - I - 0x00540C 01:93FC: 00        .byte $00   ; 
- D 0 - I - 0x00540D 01:93FD: 00        .byte $00   ; 
- D 0 - I - 0x00540E 01:93FE: 02        .byte $02   ; 
- D 0 - I - 0x00540F 01:93FF: 72        .byte $72   ; 
- D 0 - I - 0x005410 01:9400: 29        .byte $29   ; 
- D 0 - I - 0x005411 01:9401: 02        .byte $02   ; 
- D 0 - I - 0x005412 01:9402: 02        .byte $02   ; 
- D 0 - I - 0x005413 01:9403: 02        .byte $02   ; 
- D 0 - I - 0x005414 01:9404: 02        .byte $02   ; 
- D 0 - I - 0x005415 01:9405: 02        .byte $02   ; 
- D 0 - I - 0x005416 01:9406: 00        .byte $00   ; 
- D 0 - I - 0x005417 01:9407: 00        .byte $00   ; 
- D 0 - I - 0x005418 01:9408: 00        .byte $00   ; 
- D 0 - I - 0x005419 01:9409: 00        .byte $00   ; 
- D 0 - I - 0x00541A 01:940A: 00        .byte $00   ; 
- D 0 - I - 0x00541B 01:940B: 00        .byte $00   ; 
- D 0 - I - 0x00541C 01:940C: 20        .byte $20   ; 
- D 0 - I - 0x00541D 01:940D: 5E        .byte $5E   ; 
- D 0 - I - 0x00541E 01:940E: 02        .byte $02   ; 
- D 0 - I - 0x00541F 01:940F: 02        .byte $02   ; 
- D 0 - I - 0x005420 01:9410: 02        .byte $02   ; 
- D 0 - I - 0x005421 01:9411: 02        .byte $02   ; 
- D 0 - I - 0x005422 01:9412: 02        .byte $02   ; 
- D 0 - I - 0x005423 01:9413: 28        .byte $28   ; 
- D 0 - I - 0x005424 01:9414: 77        .byte $77   ; 
- D 0 - I - 0x005425 01:9415: 02        .byte $02   ; 
- D 0 - I - 0x005426 01:9416: 02        .byte $02   ; 
- D 0 - I - 0x005427 01:9417: 2A        .byte $2A   ; 
- D 0 - I - 0x005428 01:9418: 73        .byte $73   ; 
- D 0 - I - 0x005429 01:9419: 25        .byte $25   ; 
- D 0 - I - 0x00542A 01:941A: 02        .byte $02   ; 
- D 0 - I - 0x00542B 01:941B: 02        .byte $02   ; 
- D 0 - I - 0x00542C 01:941C: 02        .byte $02   ; 
- D 0 - I - 0x00542D 01:941D: 02        .byte $02   ; 
- D 0 - I - 0x00542E 01:941E: 00        .byte $00   ; 
- D 0 - I - 0x00542F 01:941F: 00        .byte $00   ; 
- D 0 - I - 0x005430 01:9420: 00        .byte $00   ; 
- D 0 - I - 0x005431 01:9421: 44        .byte $44   ; 
- D 0 - I - 0x005432 01:9422: 45        .byte $45   ; 
- D 0 - I - 0x005433 01:9423: 31        .byte $31   ; 
- D 0 - I - 0x005434 01:9424: 00        .byte $00   ; 
- D 0 - I - 0x005435 01:9425: 00        .byte $00   ; 
- D 0 - I - 0x005436 01:9426: 02        .byte $02   ; 
- D 0 - I - 0x005437 01:9427: 02        .byte $02   ; 
- D 0 - I - 0x005438 01:9428: 02        .byte $02   ; 
- D 0 - I - 0x005439 01:9429: 02        .byte $02   ; 
- D 0 - I - 0x00543A 01:942A: 24        .byte $24   ; 
- D 0 - I - 0x00543B 01:942B: 76        .byte $76   ; 
- D 0 - I - 0x00543C 01:942C: 2B        .byte $2B   ; 
- D 0 - I - 0x00543D 01:942D: 02        .byte $02   ; 
- D 0 - I - 0x00543E 01:942E: 00        .byte $00   ; 
- D 0 - I - 0x00543F 01:942F: 00        .byte $00   ; 
- D 0 - I - 0x005440 01:9430: 30        .byte $30   ; 
- D 0 - I - 0x005441 01:9431: 50        .byte $50   ; 
- D 0 - I - 0x005442 01:9432: 51        .byte $51   ; 
- D 0 - I - 0x005443 01:9433: 00        .byte $00   ; 
- D 0 - I - 0x005444 01:9434: 00        .byte $00   ; 
- D 0 - I - 0x005445 01:9435: 00        .byte $00   ; 
- D 0 - I - 0x005446 01:9436: 00        .byte $00   ; 
- D 0 - I - 0x005447 01:9437: 00        .byte $00   ; 
- D 0 - I - 0x005448 01:9438: 00        .byte $00   ; 
- D 0 - I - 0x005449 01:9439: 00        .byte $00   ; 
- D 0 - I - 0x00544A 01:943A: 2E        .byte $2E   ; 
- D 0 - I - 0x00544B 01:943B: 78        .byte $78   ; 
- D 0 - I - 0x00544C 01:943C: 79        .byte $79   ; 
- D 0 - I - 0x00544D 01:943D: 0C        .byte $0C   ; 
- D 0 - I - 0x00544E 01:943E: 02        .byte $02   ; 
- D 0 - I - 0x00544F 01:943F: 02        .byte $02   ; 
- D 0 - I - 0x005450 01:9440: 02        .byte $02   ; 
- D 0 - I - 0x005451 01:9441: 02        .byte $02   ; 
- D 0 - I - 0x005452 01:9442: 02        .byte $02   ; 
- D 0 - I - 0x005453 01:9443: 02        .byte $02   ; 
- D 0 - I - 0x005454 01:9444: 02        .byte $02   ; 
- D 0 - I - 0x005455 01:9445: 02        .byte $02   ; 
- D 0 - I - 0x005456 01:9446: 0C        .byte $0C   ; 
- D 0 - I - 0x005457 01:9447: 7C        .byte $7C   ; 
- D 0 - I - 0x005458 01:9448: 7D        .byte $7D   ; 
- D 0 - I - 0x005459 01:9449: 2F        .byte $2F   ; 
- D 0 - I - 0x00545A 01:944A: 00        .byte $00   ; 
- D 0 - I - 0x00545B 01:944B: 00        .byte $00   ; 
- D 0 - I - 0x00545C 01:944C: 00        .byte $00   ; 
- D 0 - I - 0x00545D 01:944D: 00        .byte $00   ; 
- D 0 - I - 0x00545E 01:944E: 02        .byte $02   ; 
- D 0 - I - 0x00545F 01:944F: 02        .byte $02   ; 
- D 0 - I - 0x005460 01:9450: 02        .byte $02   ; 
- D 0 - I - 0x005461 01:9451: 02        .byte $02   ; 
- D 0 - I - 0x005462 01:9452: 02        .byte $02   ; 
- D 0 - I - 0x005463 01:9453: 02        .byte $02   ; 
- D 0 - I - 0x005464 01:9454: 02        .byte $02   ; 
- D 0 - I - 0x005465 01:9455: 02        .byte $02   ; 
- D 0 - I - 0x005466 01:9456: 00        .byte $00   ; 
- D 0 - I - 0x005467 01:9457: 00        .byte $00   ; 
- D 0 - I - 0x005468 01:9458: 00        .byte $00   ; 
- D 0 - I - 0x005469 01:9459: 00        .byte $00   ; 
- D 0 - I - 0x00546A 01:945A: 00        .byte $00   ; 
- D 0 - I - 0x00546B 01:945B: 7A        .byte $7A   ; 
- D 0 - I - 0x00546C 01:945C: 7B        .byte $7B   ; 
- D 0 - I - 0x00546D 01:945D: 0C        .byte $0C   ; 
- D 0 - I - 0x00546E 01:945E: 02        .byte $02   ; 
- D 0 - I - 0x00546F 01:945F: 02        .byte $02   ; 
- D 0 - I - 0x005470 01:9460: 02        .byte $02   ; 
- D 0 - I - 0x005471 01:9461: 4C        .byte $4C   ; 
- D 0 - I - 0x005472 01:9462: 4D        .byte $4D   ; 
- D 0 - I - 0x005473 01:9463: 37        .byte $37   ; 
- D 0 - I - 0x005474 01:9464: 02        .byte $02   ; 
- D 0 - I - 0x005475 01:9465: 02        .byte $02   ; 
- D 0 - I - 0x005476 01:9466: 0C        .byte $0C   ; 
- D 0 - I - 0x005477 01:9467: 7E        .byte $7E   ; 
- D 0 - I - 0x005478 01:9468: 7F        .byte $7F   ; 
- D 0 - I - 0x005479 01:9469: 00        .byte $00   ; 
- D 0 - I - 0x00547A 01:946A: 00        .byte $00   ; 
- D 0 - I - 0x00547B 01:946B: 00        .byte $00   ; 
- D 0 - I - 0x00547C 01:946C: 00        .byte $00   ; 
- D 0 - I - 0x00547D 01:946D: 00        .byte $00   ; 
- D 0 - I - 0x00547E 01:946E: 02        .byte $02   ; 
- D 0 - I - 0x00547F 01:946F: 02        .byte $02   ; 
- D 0 - I - 0x005480 01:9470: 36        .byte $36   ; 
- D 0 - I - 0x005481 01:9471: 58        .byte $58   ; 
- D 0 - I - 0x005482 01:9472: 59        .byte $59   ; 
- D 0 - I - 0x005483 01:9473: 02        .byte $02   ; 
- D 0 - I - 0x005484 01:9474: 02        .byte $02   ; 
- D 0 - I - 0x005485 01:9475: 02        .byte $02   ; 
- D 0 - I - 0x005486 01:9476: 02        .byte $02   ; 
- D 0 - I - 0x005487 01:9477: 02        .byte $02   ; 
- D 0 - I - 0x005488 01:9478: 02        .byte $02   ; 
- D 0 - I - 0x005489 01:9479: 02        .byte $02   ; 
- D 0 - I - 0x00548A 01:947A: 02        .byte $02   ; 
- D 0 - I - 0x00548B 01:947B: 02        .byte $02   ; 
- D 0 - I - 0x00548C 01:947C: 02        .byte $02   ; 
- D 0 - I - 0x00548D 01:947D: 02        .byte $02   ; 
- D 0 - I - 0x00548E 01:947E: 00        .byte $00   ; 
- D 0 - I - 0x00548F 01:947F: 00        .byte $00   ; 
- D 0 - I - 0x005490 01:9480: 00        .byte $00   ; 
- D 0 - I - 0x005491 01:9481: 00        .byte $00   ; 
- D 0 - I - 0x005492 01:9482: 00        .byte $00   ; 
- D 0 - I - 0x005493 01:9483: 2C        .byte $2C   ; 
- D 0 - I - 0x005494 01:9484: 18        .byte $18   ; 
- D 0 - I - 0x005495 01:9485: 18        .byte $18   ; 
- D 0 - I - 0x005496 01:9486: 02        .byte $02   ; 
- D 0 - I - 0x005497 01:9487: 28        .byte $28   ; 
- D 0 - I - 0x005498 01:9488: 71        .byte $71   ; 
- D 0 - I - 0x005499 01:9489: 27        .byte $27   ; 
- D 0 - I - 0x00549A 01:948A: 02        .byte $02   ; 
- D 0 - I - 0x00549B 01:948B: 02        .byte $02   ; 
- D 0 - I - 0x00549C 01:948C: 02        .byte $02   ; 
- D 0 - I - 0x00549D 01:948D: 02        .byte $02   ; 
- D 0 - I - 0x00549E 01:948E: 18        .byte $18   ; 
- D 0 - I - 0x00549F 01:948F: 6A        .byte $6A   ; 
- D 0 - I - 0x0054A0 01:9490: 6B        .byte $6B   ; 
- D 0 - I - 0x0054A1 01:9491: 18        .byte $18   ; 
- D 0 - I - 0x0054A2 01:9492: 18        .byte $18   ; 
- D 0 - I - 0x0054A3 01:9493: 18        .byte $18   ; 
- D 0 - I - 0x0054A4 01:9494: 18        .byte $18   ; 
- D 0 - I - 0x0054A5 01:9495: 18        .byte $18   ; 
- D 0 - I - 0x0054A6 01:9496: 02        .byte $02   ; 
- D 0 - I - 0x0054A7 01:9497: 02        .byte $02   ; 
- D 0 - I - 0x0054A8 01:9498: 02        .byte $02   ; 
- D 0 - I - 0x0054A9 01:9499: 02        .byte $02   ; 
- D 0 - I - 0x0054AA 01:949A: 26        .byte $26   ; 
- D 0 - I - 0x0054AB 01:949B: 74        .byte $74   ; 
- D 0 - I - 0x0054AC 01:949C: 29        .byte $29   ; 
- D 0 - I - 0x0054AD 01:949D: 02        .byte $02   ; 
- D 0 - I - 0x0054AE 01:949E: 18        .byte $18   ; 
- D 0 - I - 0x0054AF 01:949F: 18        .byte $18   ; 
- D 0 - I - 0x0054B0 01:94A0: 18        .byte $18   ; 
- D 0 - I - 0x0054B1 01:94A1: 18        .byte $18   ; 
- D 0 - I - 0x0054B2 01:94A2: 18        .byte $18   ; 
- D 0 - I - 0x0054B3 01:94A3: 6E        .byte $6E   ; 
- D 0 - I - 0x0054B4 01:94A4: 6F        .byte $6F   ; 
- D 0 - I - 0x0054B5 01:94A5: 18        .byte $18   ; 
- D 0 - I - 0x0054B6 01:94A6: 02        .byte $02   ; 
- D 0 - I - 0x0054B7 01:94A7: 02        .byte $02   ; 
- D 0 - I - 0x0054B8 01:94A8: 02        .byte $02   ; 
- D 0 - I - 0x0054B9 01:94A9: 02        .byte $02   ; 
- D 0 - I - 0x0054BA 01:94AA: 02        .byte $02   ; 
- D 0 - I - 0x0054BB 01:94AB: 02        .byte $02   ; 
- D 0 - I - 0x0054BC 01:94AC: 02        .byte $02   ; 
- D 0 - I - 0x0054BD 01:94AD: 02        .byte $02   ; 
- D 0 - I - 0x0054BE 01:94AE: 18        .byte $18   ; 
- D 0 - I - 0x0054BF 01:94AF: 18        .byte $18   ; 
- D 0 - I - 0x0054C0 01:94B0: 2D        .byte $2D   ; 
- D 0 - I - 0x0054C1 01:94B1: 00        .byte $00   ; 
- D 0 - I - 0x0054C2 01:94B2: 00        .byte $00   ; 
- D 0 - I - 0x0054C3 01:94B3: 00        .byte $00   ; 
- D 0 - I - 0x0054C4 01:94B4: 00        .byte $00   ; 
- D 0 - I - 0x0054C5 01:94B5: 00        .byte $00   ; 
- D 0 - I - 0x0054C6 01:94B6: 00        .byte $00   ; 
- D 0 - I - 0x0054C7 01:94B7: 00        .byte $00   ; 
- D 0 - I - 0x0054C8 01:94B8: 00        .byte $00   ; 
- D 0 - I - 0x0054C9 01:94B9: 00        .byte $00   ; 
- D 0 - I - 0x0054CA 01:94BA: 00        .byte $00   ; 
- D 0 - I - 0x0054CB 01:94BB: 16        .byte $16   ; 
- D 0 - I - 0x0054CC 01:94BC: 3C        .byte $3C   ; 
- D 0 - I - 0x0054CD 01:94BD: 1A        .byte $1A   ; 
- D 0 - I - 0x0054CE 01:94BE: 02        .byte $02   ; 
- D 0 - I - 0x0054CF 01:94BF: 02        .byte $02   ; 
- D 0 - I - 0x0054D0 01:94C0: 02        .byte $02   ; 
- D 0 - I - 0x0054D1 01:94C1: 02        .byte $02   ; 
- D 0 - I - 0x0054D2 01:94C2: 02        .byte $02   ; 
- D 0 - I - 0x0054D3 01:94C3: 14        .byte $14   ; 
- D 0 - I - 0x0054D4 01:94C4: 15        .byte $15   ; 
- D 0 - I - 0x0054D5 01:94C5: 02        .byte $02   ; 
- D 0 - I - 0x0054D6 01:94C6: 1A        .byte $1A   ; 
- D 0 - I - 0x0054D7 01:94C7: 3D        .byte $3D   ; 
- D 0 - I - 0x0054D8 01:94C8: 17        .byte $17   ; 
- D 0 - I - 0x0054D9 01:94C9: 00        .byte $00   ; 
- D 0 - I - 0x0054DA 01:94CA: 00        .byte $00   ; 
- D 0 - I - 0x0054DB 01:94CB: 00        .byte $00   ; 
- D 0 - I - 0x0054DC 01:94CC: 00        .byte $00   ; 
- D 0 - I - 0x0054DD 01:94CD: 00        .byte $00   ; 
- D 0 - I - 0x0054DE 01:94CE: 02        .byte $02   ; 
- D 0 - I - 0x0054DF 01:94CF: 14        .byte $14   ; 
- D 0 - I - 0x0054E0 01:94D0: 15        .byte $15   ; 
- D 0 - I - 0x0054E1 01:94D1: 02        .byte $02   ; 
- D 0 - I - 0x0054E2 01:94D2: 02        .byte $02   ; 
- D 0 - I - 0x0054E3 01:94D3: 02        .byte $02   ; 
- D 0 - I - 0x0054E4 01:94D4: 02        .byte $02   ; 
- D 0 - I - 0x0054E5 01:94D5: 02        .byte $02   ; 
- D 0 - I - 0x0054E6 01:94D6: 00        .byte $00   ; 
- D 0 - I - 0x0054E7 01:94D7: 00        .byte $00   ; 
- D 0 - I - 0x0054E8 01:94D8: 00        .byte $00   ; 
- D 0 - I - 0x0054E9 01:94D9: 00        .byte $00   ; 
- D 0 - I - 0x0054EA 01:94DA: 00        .byte $00   ; 
- D 0 - I - 0x0054EB 01:94DB: 00        .byte $00   ; 
- D 0 - I - 0x0054EC 01:94DC: 00        .byte $00   ; 
- D 0 - I - 0x0054ED 01:94DD: 20        .byte $20   ; 
- D 0 - I - 0x0054EE 01:94DE: 02        .byte $02   ; 
- D 0 - I - 0x0054EF 01:94DF: 02        .byte $02   ; 
- D 0 - I - 0x0054F0 01:94E0: 02        .byte $02   ; 
- D 0 - I - 0x0054F1 01:94E1: 02        .byte $02   ; 
- D 0 - I - 0x0054F2 01:94E2: 02        .byte $02   ; 
- D 0 - I - 0x0054F3 01:94E3: 02        .byte $02   ; 
- D 0 - I - 0x0054F4 01:94E4: 02        .byte $02   ; 
- D 0 - I - 0x0054F5 01:94E5: 26        .byte $26   ; 
- D 0 - I - 0x0054F6 01:94E6: 21        .byte $21   ; 
- D 0 - I - 0x0054F7 01:94E7: 00        .byte $00   ; 
- D 0 - I - 0x0054F8 01:94E8: 00        .byte $00   ; 
- D 0 - I - 0x0054F9 01:94E9: 00        .byte $00   ; 
- D 0 - I - 0x0054FA 01:94EA: 00        .byte $00   ; 
- D 0 - I - 0x0054FB 01:94EB: 00        .byte $00   ; 
- D 0 - I - 0x0054FC 01:94EC: 00        .byte $00   ; 
- D 0 - I - 0x0054FD 01:94ED: 00        .byte $00   ; 
- D 0 - I - 0x0054FE 01:94EE: 27        .byte $27   ; 
- D 0 - I - 0x0054FF 01:94EF: 02        .byte $02   ; 
- D 0 - I - 0x005500 01:94F0: 02        .byte $02   ; 
- D 0 - I - 0x005501 01:94F1: 02        .byte $02   ; 
- D 0 - I - 0x005502 01:94F2: 02        .byte $02   ; 
- D 0 - I - 0x005503 01:94F3: 02        .byte $02   ; 
- D 0 - I - 0x005504 01:94F4: 02        .byte $02   ; 
- D 0 - I - 0x005505 01:94F5: 02        .byte $02   ; 
- D 0 - I - 0x005506 01:94F6: 00        .byte $00   ; 
- D 0 - I - 0x005507 01:94F7: 00        .byte $00   ; 
- D 0 - I - 0x005508 01:94F8: 00        .byte $00   ; 
- D 0 - I - 0x005509 01:94F9: 00        .byte $00   ; 
- D 0 - I - 0x00550A 01:94FA: 00        .byte $00   ; 
- D 0 - I - 0x00550B 01:94FB: 00        .byte $00   ; 
- D 0 - I - 0x00550C 01:94FC: 00        .byte $00   ; 
- D 0 - I - 0x00550D 01:94FD: 00        .byte $00   ; 
- D 0 - I - 0x00550E 01:94FE: 02        .byte $02   ; 
- D 0 - I - 0x00550F 01:94FF: 02        .byte $02   ; 
- D 0 - I - 0x005510 01:9500: 02        .byte $02   ; 
- D 0 - I - 0x005511 01:9501: 02        .byte $02   ; 
- D 0 - I - 0x005512 01:9502: 02        .byte $02   ; 
- D 0 - I - 0x005513 01:9503: 28        .byte $28   ; 
- D 0 - I - 0x005514 01:9504: 19        .byte $19   ; 
- D 0 - I - 0x005515 01:9505: 19        .byte $19   ; 
- D 0 - I - 0x005516 01:9506: 00        .byte $00   ; 
- D 0 - I - 0x005517 01:9507: 00        .byte $00   ; 
- D 0 - I - 0x005518 01:9508: 00        .byte $00   ; 
- D 0 - I - 0x005519 01:9509: 00        .byte $00   ; 
- D 0 - I - 0x00551A 01:950A: 00        .byte $00   ; 
- D 0 - I - 0x00551B 01:950B: 00        .byte $00   ; 
- D 0 - I - 0x00551C 01:950C: 00        .byte $00   ; 
- D 0 - I - 0x00551D 01:950D: 00        .byte $00   ; 
- D 0 - I - 0x00551E 01:950E: 19        .byte $19   ; 
- D 0 - I - 0x00551F 01:950F: 19        .byte $19   ; 
- D 0 - I - 0x005520 01:9510: 29        .byte $29   ; 
- D 0 - I - 0x005521 01:9511: 02        .byte $02   ; 
- D 0 - I - 0x005522 01:9512: 02        .byte $02   ; 
- D 0 - I - 0x005523 01:9513: 02        .byte $02   ; 
- D 0 - I - 0x005524 01:9514: 02        .byte $02   ; 
- D 0 - I - 0x005525 01:9515: 02        .byte $02   ; 
- D 0 - I - 0x005526 01:9516: 02        .byte $02   ; 
- D 0 - I - 0x005527 01:9517: 02        .byte $02   ; 
- D 0 - I - 0x005528 01:9518: 02        .byte $02   ; 
- D 0 - I - 0x005529 01:9519: 02        .byte $02   ; 
- D 0 - I - 0x00552A 01:951A: 02        .byte $02   ; 
- D 0 - I - 0x00552B 01:951B: 14        .byte $14   ; 
- D 0 - I - 0x00552C 01:951C: 38        .byte $38   ; 
- D 0 - I - 0x00552D 01:951D: 1B        .byte $1B   ; 
- D 0 - I - 0x00552E 01:951E: 00        .byte $00   ; 
- D 0 - I - 0x00552F 01:951F: 00        .byte $00   ; 
- D 0 - I - 0x005530 01:9520: 00        .byte $00   ; 
- D 0 - I - 0x005531 01:9521: 00        .byte $00   ; 
- D 0 - I - 0x005532 01:9522: 00        .byte $00   ; 
- D 0 - I - 0x005533 01:9523: 16        .byte $16   ; 
- D 0 - I - 0x005534 01:9524: 17        .byte $17   ; 
- D 0 - I - 0x005535 01:9525: 00        .byte $00   ; 
- D 0 - I - 0x005536 01:9526: 1B        .byte $1B   ; 
- D 0 - I - 0x005537 01:9527: 39        .byte $39   ; 
- D 0 - I - 0x005538 01:9528: 15        .byte $15   ; 
- D 0 - I - 0x005539 01:9529: 02        .byte $02   ; 
- D 0 - I - 0x00553A 01:952A: 02        .byte $02   ; 
- D 0 - I - 0x00553B 01:952B: 02        .byte $02   ; 
- D 0 - I - 0x00553C 01:952C: 02        .byte $02   ; 
- D 0 - I - 0x00553D 01:952D: 02        .byte $02   ; 
- D 0 - I - 0x00553E 01:952E: 00        .byte $00   ; 
- D 0 - I - 0x00553F 01:952F: 16        .byte $16   ; 
- D 0 - I - 0x005540 01:9530: 17        .byte $17   ; 
- D 0 - I - 0x005541 01:9531: 00        .byte $00   ; 
- D 0 - I - 0x005542 01:9532: 00        .byte $00   ; 
- D 0 - I - 0x005543 01:9533: 00        .byte $00   ; 
- D 0 - I - 0x005544 01:9534: 00        .byte $00   ; 
- D 0 - I - 0x005545 01:9535: 00        .byte $00   ; 
- D 0 - I - 0x005546 01:9536: 00        .byte $00   ; 
- D 0 - I - 0x005547 01:9537: 16        .byte $16   ; 
- D 0 - I - 0x005548 01:9538: 17        .byte $17   ; 
- D 0 - I - 0x005549 01:9539: 00        .byte $00   ; 
- D 0 - I - 0x00554A 01:953A: 00        .byte $00   ; 
- D 0 - I - 0x00554B 01:953B: 00        .byte $00   ; 
- D 0 - I - 0x00554C 01:953C: 00        .byte $00   ; 
- D 0 - I - 0x00554D 01:953D: 00        .byte $00   ; 
- D 0 - I - 0x00554E 01:953E: 02        .byte $02   ; 
- D 0 - I - 0x00554F 01:953F: 14        .byte $14   ; 
- D 0 - I - 0x005550 01:9540: 60        .byte $60   ; 
- D 0 - I - 0x005551 01:9541: 25        .byte $25   ; 
- D 0 - I - 0x005552 01:9542: 02        .byte $02   ; 
- D 0 - I - 0x005553 01:9543: 02        .byte $02   ; 
- D 0 - I - 0x005554 01:9544: 02        .byte $02   ; 
- D 0 - I - 0x005555 01:9545: 02        .byte $02   ; 
- D 0 - I - 0x005556 01:9546: 00        .byte $00   ; 
- D 0 - I - 0x005557 01:9547: 00        .byte $00   ; 
- D 0 - I - 0x005558 01:9548: 00        .byte $00   ; 
- D 0 - I - 0x005559 01:9549: 00        .byte $00   ; 
- D 0 - I - 0x00555A 01:954A: 00        .byte $00   ; 
- D 0 - I - 0x00555B 01:954B: 16        .byte $16   ; 
- D 0 - I - 0x00555C 01:954C: 17        .byte $17   ; 
- D 0 - I - 0x00555D 01:954D: 00        .byte $00   ; 
- D 0 - I - 0x00555E 01:954E: 02        .byte $02   ; 
- D 0 - I - 0x00555F 01:954F: 02        .byte $02   ; 
- D 0 - I - 0x005560 01:9550: 02        .byte $02   ; 
- D 0 - I - 0x005561 01:9551: 02        .byte $02   ; 
- D 0 - I - 0x005562 01:9552: 24        .byte $24   ; 
- D 0 - I - 0x005563 01:9553: 65        .byte $65   ; 
- D 0 - I - 0x005564 01:9554: 15        .byte $15   ; 
- D 0 - I - 0x005565 01:9555: 02        .byte $02   ; 
- D 0 - I - 0x005566 01:9556: 02        .byte $02   ; 
- D 0 - I - 0x005567 01:9557: 14        .byte $14   ; 
- D 0 - I - 0x005568 01:9558: 3A        .byte $3A   ; 
- D 0 - I - 0x005569 01:9559: 63        .byte $63   ; 
- D 0 - I - 0x00556A 01:955A: 19        .byte $19   ; 
- D 0 - I - 0x00556B 01:955B: 19        .byte $19   ; 
- D 0 - I - 0x00556C 01:955C: 19        .byte $19   ; 
- D 0 - I - 0x00556D 01:955D: 19        .byte $19   ; 
- D 0 - I - 0x00556E 01:955E: B5        .byte $B5   ; 
- D 0 - I - 0x00556F 01:955F: B8        .byte $B8   ; 
- D 0 - I - 0x005570 01:9560: 1A        .byte $1A   ; 
- D 0 - I - 0x005571 01:9561: 1A        .byte $1A   ; 
- D 0 - I - 0x005572 01:9562: 1A        .byte $1A   ; 
- D 0 - I - 0x005573 01:9563: 1A        .byte $1A   ; 
- D 0 - I - 0x005574 01:9564: 1A        .byte $1A   ; 
- D 0 - I - 0x005575 01:9565: 1A        .byte $1A   ; 
- D 0 - I - 0x005576 01:9566: 19        .byte $19   ; 
- D 0 - I - 0x005577 01:9567: 19        .byte $19   ; 
- D 0 - I - 0x005578 01:9568: 19        .byte $19   ; 
- D 0 - I - 0x005579 01:9569: 19        .byte $19   ; 
- D 0 - I - 0x00557A 01:956A: 19        .byte $19   ; 
- D 0 - I - 0x00557B 01:956B: 3B        .byte $3B   ; 
- D 0 - I - 0x00557C 01:956C: 3A        .byte $3A   ; 
- D 0 - I - 0x00557D 01:956D: 19        .byte $19   ; 
- D 0 - I - 0x00557E 01:956E: 1A        .byte $1A   ; 
- D 0 - I - 0x00557F 01:956F: 1A        .byte $1A   ; 
- D 0 - I - 0x005580 01:9570: 1A        .byte $1A   ; 
- D 0 - I - 0x005581 01:9571: 1A        .byte $1A   ; 
- D 0 - I - 0x005582 01:9572: 1A        .byte $1A   ; 
- D 0 - I - 0x005583 01:9573: 1A        .byte $1A   ; 
- D 0 - I - 0x005584 01:9574: 1A        .byte $1A   ; 
- D 0 - I - 0x005585 01:9575: 1A        .byte $1A   ; 
- D 0 - I - 0x005586 01:9576: 19        .byte $19   ; 
- D 0 - I - 0x005587 01:9577: 19        .byte $19   ; 
- D 0 - I - 0x005588 01:9578: 19        .byte $19   ; 
- D 0 - I - 0x005589 01:9579: 19        .byte $19   ; 
- D 0 - I - 0x00558A 01:957A: 19        .byte $19   ; 
- D 0 - I - 0x00558B 01:957B: 19        .byte $19   ; 
- D 0 - I - 0x00558C 01:957C: 19        .byte $19   ; 
- D 0 - I - 0x00558D 01:957D: 19        .byte $19   ; 
- D 0 - I - 0x00558E 01:957E: 1A        .byte $1A   ; 
- D 0 - I - 0x00558F 01:957F: 82        .byte $82   ; 
- D 0 - I - 0x005590 01:9580: 83        .byte $83   ; 
- D 0 - I - 0x005591 01:9581: 0E        .byte $0E   ; 
- D 0 - I - 0x005592 01:9582: 0E        .byte $0E   ; 
- D 0 - I - 0x005593 01:9583: 0E        .byte $0E   ; 
- D 0 - I - 0x005594 01:9584: 0E        .byte $0E   ; 
- D 0 - I - 0x005595 01:9585: 0E        .byte $0E   ; 
- D 0 - I - 0x005596 01:9586: 19        .byte $19   ; 
- D 0 - I - 0x005597 01:9587: 19        .byte $19   ; 
- D 0 - I - 0x005598 01:9588: 19        .byte $19   ; 
- D 0 - I - 0x005599 01:9589: 19        .byte $19   ; 
- D 0 - I - 0x00559A 01:958A: 19        .byte $19   ; 
- D 0 - I - 0x00559B 01:958B: 19        .byte $19   ; 
- D 0 - I - 0x00559C 01:958C: 19        .byte $19   ; 
- D 0 - I - 0x00559D 01:958D: 19        .byte $19   ; 
- D 0 - I - 0x00559E 01:958E: 0E        .byte $0E   ; 
- D 0 - I - 0x00559F 01:958F: 0E        .byte $0E   ; 
- D 0 - I - 0x0055A0 01:9590: 0E        .byte $0E   ; 
- D 0 - I - 0x0055A1 01:9591: 0E        .byte $0E   ; 
- D 0 - I - 0x0055A2 01:9592: 0E        .byte $0E   ; 
- D 0 - I - 0x0055A3 01:9593: 86        .byte $86   ; 
- D 0 - I - 0x0055A4 01:9594: 87        .byte $87   ; 
- D 0 - I - 0x0055A5 01:9595: 1A        .byte $1A   ; 
- D 0 - I - 0x0055A6 01:9596: 19        .byte $19   ; 
- D 0 - I - 0x0055A7 01:9597: 3B        .byte $3B   ; 
- D 0 - I - 0x0055A8 01:9598: 3A        .byte $3A   ; 
- D 0 - I - 0x0055A9 01:9599: 19        .byte $19   ; 
- D 0 - I - 0x0055AA 01:959A: 19        .byte $19   ; 
- D 0 - I - 0x0055AB 01:959B: 19        .byte $19   ; 
- D 0 - I - 0x0055AC 01:959C: 19        .byte $19   ; 
- D 0 - I - 0x0055AD 01:959D: 19        .byte $19   ; 
- D 0 - I - 0x0055AE 01:959E: 1A        .byte $1A   ; 
- D 0 - I - 0x0055AF 01:959F: 1A        .byte $1A   ; 
- D 0 - I - 0x0055B0 01:95A0: 1A        .byte $1A   ; 
- D 0 - I - 0x0055B1 01:95A1: 1A        .byte $1A   ; 
- D 0 - I - 0x0055B2 01:95A2: 1A        .byte $1A   ; 
- D 0 - I - 0x0055B3 01:95A3: 1A        .byte $1A   ; 
- D 0 - I - 0x0055B4 01:95A4: 1A        .byte $1A   ; 
- D 0 - I - 0x0055B5 01:95A5: 1A        .byte $1A   ; 
- D 0 - I - 0x0055B6 01:95A6: 19        .byte $19   ; 
- D 0 - I - 0x0055B7 01:95A7: 19        .byte $19   ; 
- D 0 - I - 0x0055B8 01:95A8: 19        .byte $19   ; 
- D 0 - I - 0x0055B9 01:95A9: 19        .byte $19   ; 
- D 0 - I - 0x0055BA 01:95AA: 66        .byte $66   ; 
- D 0 - I - 0x0055BB 01:95AB: 3B        .byte $3B   ; 
- D 0 - I - 0x0055BC 01:95AC: 15        .byte $15   ; 
- D 0 - I - 0x0055BD 01:95AD: 02        .byte $02   ; 
- D 0 - I - 0x0055BE 01:95AE: 1A        .byte $1A   ; 
- D 0 - I - 0x0055BF 01:95AF: 1A        .byte $1A   ; 
- D 0 - I - 0x0055C0 01:95B0: 1A        .byte $1A   ; 
- D 0 - I - 0x0055C1 01:95B1: 1A        .byte $1A   ; 
- D 0 - I - 0x0055C2 01:95B2: 1A        .byte $1A   ; 
- D 0 - I - 0x0055C3 01:95B3: 1A        .byte $1A   ; 
- D 0 - I - 0x0055C4 01:95B4: B9        .byte $B9   ; 
- D 0 - I - 0x0055C5 01:95B5: B7        .byte $B7   ; 
- D 0 - I - 0x0055C6 01:95B6: 00        .byte $00   ; 
- D 0 - I - 0x0055C7 01:95B7: BA        .byte $BA   ; 
- D 0 - I - 0x0055C8 01:95B8: 00        .byte $00   ; 
- D 0 - I - 0x0055C9 01:95B9: 00        .byte $00   ; 
- D 0 - I - 0x0055CA 01:95BA: 00        .byte $00   ; 
- D 0 - I - 0x0055CB 01:95BB: 00        .byte $00   ; 
- D 0 - I - 0x0055CC 01:95BC: 00        .byte $00   ; 
- D 0 - I - 0x0055CD 01:95BD: 00        .byte $00   ; 
- D 0 - I - 0x0055CE 01:95BE: 02        .byte $02   ; 
- D 0 - I - 0x0055CF 01:95BF: 02        .byte $02   ; 
- D 0 - I - 0x0055D0 01:95C0: 02        .byte $02   ; 
- D 0 - I - 0x0055D1 01:95C1: 02        .byte $02   ; 
- D 0 - I - 0x0055D2 01:95C2: 02        .byte $02   ; 
- D 0 - I - 0x0055D3 01:95C3: 02        .byte $02   ; 
- D 0 - I - 0x0055D4 01:95C4: 02        .byte $02   ; 
- D 0 - I - 0x0055D5 01:95C5: 02        .byte $02   ; 
- D 0 - I - 0x0055D6 01:95C6: 00        .byte $00   ; 
- D 0 - I - 0x0055D7 01:95C7: 94        .byte $94   ; 
- D 0 - I - 0x0055D8 01:95C8: B2        .byte $B2   ; 
- D 0 - I - 0x0055D9 01:95C9: B3        .byte $B3   ; 
- D 0 - I - 0x0055DA 01:95CA: B3        .byte $B3   ; 
- D 0 - I - 0x0055DB 01:95CB: B3        .byte $B3   ; 
- D 0 - I - 0x0055DC 01:95CC: B3        .byte $B3   ; 
- D 0 - I - 0x0055DD 01:95CD: B3        .byte $B3   ; 
- D 0 - I - 0x0055DE 01:95CE: 02        .byte $02   ; 
- D 0 - I - 0x0055DF 01:95CF: 96        .byte $96   ; 
- D 0 - I - 0x0055E0 01:95D0: 8A        .byte $8A   ; 
- D 0 - I - 0x0055E1 01:95D1: 8B        .byte $8B   ; 
- D 0 - I - 0x0055E2 01:95D2: 8B        .byte $8B   ; 
- D 0 - I - 0x0055E3 01:95D3: 8B        .byte $8B   ; 
- D 0 - I - 0x0055E4 01:95D4: 8E        .byte $8E   ; 
- D 0 - I - 0x0055E5 01:95D5: 8F        .byte $8F   ; 
- D 0 - I - 0x0055E6 01:95D6: B3        .byte $B3   ; 
- D 0 - I - 0x0055E7 01:95D7: B3        .byte $B3   ; 
- D 0 - I - 0x0055E8 01:95D8: B3        .byte $B3   ; 
- D 0 - I - 0x0055E9 01:95D9: B3        .byte $B3   ; 
- D 0 - I - 0x0055EA 01:95DA: B3        .byte $B3   ; 
- D 0 - I - 0x0055EB 01:95DB: B6        .byte $B6   ; 
- D 0 - I - 0x0055EC 01:95DC: 95        .byte $95   ; 
- D 0 - I - 0x0055ED 01:95DD: 00        .byte $00   ; 
- D 0 - I - 0x0055EE 01:95DE: 9A        .byte $9A   ; 
- D 0 - I - 0x0055EF 01:95DF: 9B        .byte $9B   ; 
- D 0 - I - 0x0055F0 01:95E0: 9E        .byte $9E   ; 
- D 0 - I - 0x0055F1 01:95E1: 9E        .byte $9E   ; 
- D 0 - I - 0x0055F2 01:95E2: 9E        .byte $9E   ; 
- D 0 - I - 0x0055F3 01:95E3: 9F        .byte $9F   ; 
- D 0 - I - 0x0055F4 01:95E4: 97        .byte $97   ; 
- D 0 - I - 0x0055F5 01:95E5: 02        .byte $02   ; 
- D 0 - I - 0x0055F6 01:95E6: 00        .byte $00   ; 
- D 0 - I - 0x0055F7 01:95E7: 00        .byte $00   ; 
- D 0 - I - 0x0055F8 01:95E8: 00        .byte $00   ; 
- D 0 - I - 0x0055F9 01:95E9: 00        .byte $00   ; 
- D 0 - I - 0x0055FA 01:95EA: 00        .byte $00   ; 
- D 0 - I - 0x0055FB 01:95EB: 00        .byte $00   ; 
- D 0 - I - 0x0055FC 01:95EC: BB        .byte $BB   ; 
- D 0 - I - 0x0055FD 01:95ED: 00        .byte $00   ; 
- D 0 - I - 0x0055FE 01:95EE: 02        .byte $02   ; 
- D 0 - I - 0x0055FF 01:95EF: 02        .byte $02   ; 
- D 0 - I - 0x005600 01:95F0: 02        .byte $02   ; 
- D 0 - I - 0x005601 01:95F1: 02        .byte $02   ; 
- D 0 - I - 0x005602 01:95F2: 02        .byte $02   ; 
- D 0 - I - 0x005603 01:95F3: 02        .byte $02   ; 
- D 0 - I - 0x005604 01:95F4: 02        .byte $02   ; 
- D 0 - I - 0x005605 01:95F5: 02        .byte $02   ; 
- D 0 - I - 0x005606 01:95F6: 09        .byte $09   ; 
- D 0 - I - 0x005607 01:95F7: 09        .byte $09   ; 
- D 0 - I - 0x005608 01:95F8: 09        .byte $09   ; 
- D 0 - I - 0x005609 01:95F9: 09        .byte $09   ; 
- D 0 - I - 0x00560A 01:95FA: 09        .byte $09   ; 
- D 0 - I - 0x00560B 01:95FB: 09        .byte $09   ; 
- D 0 - I - 0x00560C 01:95FC: 09        .byte $09   ; 
- D 0 - I - 0x00560D 01:95FD: 09        .byte $09   ; 
- D 0 - I - 0x00560E 01:95FE: 0B        .byte $0B   ; 
- D 0 - I - 0x00560F 01:95FF: 0B        .byte $0B   ; 
- D 0 - I - 0x005610 01:9600: 0B        .byte $0B   ; 
- D 0 - I - 0x005611 01:9601: 0B        .byte $0B   ; 
- D 0 - I - 0x005612 01:9602: 0B        .byte $0B   ; 
- D 0 - I - 0x005613 01:9603: 0B        .byte $0B   ; 
- D 0 - I - 0x005614 01:9604: 0B        .byte $0B   ; 
- D 0 - I - 0x005615 01:9605: 0B        .byte $0B   ; 
- D 0 - I - 0x005616 01:9606: 10        .byte $10   ; 
- D 0 - I - 0x005617 01:9607: 11        .byte $11   ; 
- D 0 - I - 0x005618 01:9608: 10        .byte $10   ; 
- D 0 - I - 0x005619 01:9609: 11        .byte $11   ; 
- D 0 - I - 0x00561A 01:960A: 10        .byte $10   ; 
- D 0 - I - 0x00561B 01:960B: 11        .byte $11   ; 
- D 0 - I - 0x00561C 01:960C: 10        .byte $10   ; 
- D 0 - I - 0x00561D 01:960D: 11        .byte $11   ; 
- D 0 - I - 0x00561E 01:960E: 12        .byte $12   ; 
- D 0 - I - 0x00561F 01:960F: 13        .byte $13   ; 
- D 0 - I - 0x005620 01:9610: 12        .byte $12   ; 
- D 0 - I - 0x005621 01:9611: 13        .byte $13   ; 
- D 0 - I - 0x005622 01:9612: 12        .byte $12   ; 
- D 0 - I - 0x005623 01:9613: 13        .byte $13   ; 
- D 0 - I - 0x005624 01:9614: 12        .byte $12   ; 
- D 0 - I - 0x005625 01:9615: 13        .byte $13   ; 
- D 0 - I - 0x005626 01:9616: 13        .byte $13   ; 
- D 0 - I - 0x005627 01:9617: 12        .byte $12   ; 
- D 0 - I - 0x005628 01:9618: 13        .byte $13   ; 
- D 0 - I - 0x005629 01:9619: 12        .byte $12   ; 
- D 0 - I - 0x00562A 01:961A: 13        .byte $13   ; 
- D 0 - I - 0x00562B 01:961B: 12        .byte $12   ; 
- D 0 - I - 0x00562C 01:961C: 13        .byte $13   ; 
- D 0 - I - 0x00562D 01:961D: 12        .byte $12   ; 
- D 0 - I - 0x00562E 01:961E: 12        .byte $12   ; 
- D 0 - I - 0x00562F 01:961F: 13        .byte $13   ; 
- D 0 - I - 0x005630 01:9620: 12        .byte $12   ; 
- D 0 - I - 0x005631 01:9621: 13        .byte $13   ; 
- D 0 - I - 0x005632 01:9622: 12        .byte $12   ; 
- D 0 - I - 0x005633 01:9623: 13        .byte $13   ; 
- D 0 - I - 0x005634 01:9624: 12        .byte $12   ; 
- D 0 - I - 0x005635 01:9625: 13        .byte $13   ; 
- D 0 - I - 0x005636 01:9626: 00        .byte $00   ; 
- D 0 - I - 0x005637 01:9627: 00        .byte $00   ; 
- D 0 - I - 0x005638 01:9628: 00        .byte $00   ; 
- D 0 - I - 0x005639 01:9629: 00        .byte $00   ; 
- D 0 - I - 0x00563A 01:962A: 00        .byte $00   ; 
- D 0 - I - 0x00563B 01:962B: 2E        .byte $2E   ; 
- D 0 - I - 0x00563C 01:962C: 1A        .byte $1A   ; 
- D 0 - I - 0x00563D 01:962D: 1A        .byte $1A   ; 
- D 0 - I - 0x00563E 01:962E: 02        .byte $02   ; 
- D 0 - I - 0x00563F 01:962F: 02        .byte $02   ; 
- D 0 - I - 0x005640 01:9630: 02        .byte $02   ; 
- D 0 - I - 0x005641 01:9631: 02        .byte $02   ; 
- D 0 - I - 0x005642 01:9632: 02        .byte $02   ; 
- D 0 - I - 0x005643 01:9633: 02        .byte $02   ; 
- D 0 - I - 0x005644 01:9634: 02        .byte $02   ; 
- D 0 - I - 0x005645 01:9635: 02        .byte $02   ; 
- D 0 - I - 0x005646 01:9636: 1A        .byte $1A   ; 
- D 0 - I - 0x005647 01:9637: 1A        .byte $1A   ; 
- D 0 - I - 0x005648 01:9638: 2F        .byte $2F   ; 
- D 0 - I - 0x005649 01:9639: 00        .byte $00   ; 
- D 0 - I - 0x00564A 01:963A: 00        .byte $00   ; 
- D 0 - I - 0x00564B 01:963B: 00        .byte $00   ; 
- D 0 - I - 0x00564C 01:963C: 00        .byte $00   ; 
- D 0 - I - 0x00564D 01:963D: 00        .byte $00   ; 
- D 0 - I - 0x00564E 01:963E: 02        .byte $02   ; 
- D 0 - I - 0x00564F 01:963F: 02        .byte $02   ; 
- D 0 - I - 0x005650 01:9640: 02        .byte $02   ; 
- D 0 - I - 0x005651 01:9641: 02        .byte $02   ; 
- D 0 - I - 0x005652 01:9642: 02        .byte $02   ; 
- D 0 - I - 0x005653 01:9643: 02        .byte $02   ; 
- D 0 - I - 0x005654 01:9644: 02        .byte $02   ; 
- D 0 - I - 0x005655 01:9645: 02        .byte $02   ; 
- D 0 - I - 0x005656 01:9646: 02        .byte $02   ; 
- D 0 - I - 0x005657 01:9647: 02        .byte $02   ; 
- D 0 - I - 0x005658 01:9648: 02        .byte $02   ; 
- D 0 - I - 0x005659 01:9649: 02        .byte $02   ; 
- D 0 - I - 0x00565A 01:964A: 02        .byte $02   ; 
- D 0 - I - 0x00565B 01:964B: 14        .byte $14   ; 
- D 0 - I - 0x00565C 01:964C: 15        .byte $15   ; 
- D 0 - I - 0x00565D 01:964D: 02        .byte $02   ; 
- D 0 - I - 0x00565E 01:964E: 00        .byte $00   ; 
- D 0 - I - 0x00565F 01:964F: 00        .byte $00   ; 
- D 0 - I - 0x005660 01:9650: 00        .byte $00   ; 
- D 0 - I - 0x005661 01:9651: 00        .byte $00   ; 
- D 0 - I - 0x005662 01:9652: 00        .byte $00   ; 
- D 0 - I - 0x005663 01:9653: 16        .byte $16   ; 
- D 0 - I - 0x005664 01:9654: 3E        .byte $3E   ; 
- D 0 - I - 0x005665 01:9655: 18        .byte $18   ; 
- D 0 - I - 0x005666 01:9656: 02        .byte $02   ; 
- D 0 - I - 0x005667 01:9657: 14        .byte $14   ; 
- D 0 - I - 0x005668 01:9658: 15        .byte $15   ; 
- D 0 - I - 0x005669 01:9659: 02        .byte $02   ; 
- D 0 - I - 0x00566A 01:965A: 02        .byte $02   ; 
- D 0 - I - 0x00566B 01:965B: 02        .byte $02   ; 
- D 0 - I - 0x00566C 01:965C: 02        .byte $02   ; 
- D 0 - I - 0x00566D 01:965D: 02        .byte $02   ; 
- D 0 - I - 0x00566E 01:965E: 18        .byte $18   ; 
- D 0 - I - 0x00566F 01:965F: 3F        .byte $3F   ; 
- D 0 - I - 0x005670 01:9660: 17        .byte $17   ; 
- D 0 - I - 0x005671 01:9661: 00        .byte $00   ; 
- D 0 - I - 0x005672 01:9662: 00        .byte $00   ; 
- D 0 - I - 0x005673 01:9663: 00        .byte $00   ; 
- D 0 - I - 0x005674 01:9664: 00        .byte $00   ; 
- D 0 - I - 0x005675 01:9665: 00        .byte $00   ; 



tbl_9666_animations:
- - - - - - 0x005676 01:9666: E6 96     .word _off003_96E6_00
- D 0 - - - 0x005678 01:9668: E6 96     .word _off003_96E6_01
- D 0 - - - 0x00567A 01:966A: EA 96     .word _off003_96EA_02
- D 0 - - - 0x00567C 01:966C: EE 96     .word _off003_96EE_03_run_player
- D 0 - - - 0x00567E 01:966E: FE 96     .word _off003_96FE_04_run_gk
- D 0 - - - 0x005680 01:9670: 0E 97     .word _off003_970E_05
- D 0 - - - 0x005682 01:9672: 1A 97     .word _off003_971A_06
- D 0 - - - 0x005684 01:9674: 1E 97     .word _off003_971E_07
- D 0 - - - 0x005686 01:9676: 22 97     .word _off003_9722_08
- D 0 - - - 0x005688 01:9678: 2E 97     .word _off003_972E_09_dead
- D 0 - - - 0x00568A 01:967A: 36 97     .word _off003_9736_0A_dodge
- D 0 - - - 0x00568C 01:967C: 3E 97     .word _off003_973E_0B_shoot_normal
- D 0 - - - 0x00568E 01:967E: 46 97     .word _off003_9746_0C_shoot_volley
- D 0 - - - 0x005690 01:9680: 56 97     .word _off003_9756_0D_shoot_head
- D 0 - - - 0x005692 01:9682: 5E 97     .word _off003_975E_0E
- D 0 - - - 0x005694 01:9684: 6E 97     .word _off003_976E_0F_throw_in
- D 0 - - - 0x005696 01:9686: 76 97     .word _off003_9776_10
- D 0 - - - 0x005698 01:9688: 7A 97     .word _off003_977A_11
- D 0 - - - 0x00569A 01:968A: 8A 97     .word _off003_978A_12
- D 0 - - - 0x00569C 01:968C: 9A 97     .word _off003_979A_13
- - - - - - 0x00569E 01:968E: A2 97     .word _off003_97A2_14
- D 0 - - - 0x0056A0 01:9690: AA 97     .word _off003_97AA_15
- D 0 - - - 0x0056A2 01:9692: BA 97     .word _off003_97BA_16


; bzk garbage
- - - - - - 0x0056A4 01:9694: C6 97     .word _off003_97C6_17
- - - - - - 0x0056A6 01:9696: C6 97     .word _off003_97C6_18
- - - - - - 0x0056A8 01:9698: C6 97     .word _off003_97C6_19
- - - - - - 0x0056AA 01:969A: C6 97     .word _off003_97C6_1A
- - - - - - 0x0056AC 01:969C: C6 97     .word _off003_97C6_1B
- - - - - - 0x0056AE 01:969E: C6 97     .word _off003_97C6_1C
- - - - - - 0x0056B0 01:96A0: C6 97     .word _off003_97C6_1D
- - - - - - 0x0056B2 01:96A2: C6 97     .word _off003_97C6_1E
- - - - - - 0x0056B4 01:96A4: C6 97     .word _off003_97C6_1F
- - - - - - 0x0056B6 01:96A6: C6 97     .word _off003_97C6_20
- - - - - - 0x0056B8 01:96A8: C6 97     .word _off003_97C6_21
- - - - - - 0x0056BA 01:96AA: C6 97     .word _off003_97C6_22
- - - - - - 0x0056BC 01:96AC: C6 97     .word _off003_97C6_23
- - - - - - 0x0056BE 01:96AE: C6 97     .word _off003_97C6_24
- - - - - - 0x0056C0 01:96B0: C6 97     .word _off003_97C6_25
- - - - - - 0x0056C2 01:96B2: C6 97     .word _off003_97C6_26
- - - - - - 0x0056C4 01:96B4: C6 97     .word _off003_97C6_27
- - - - - - 0x0056C6 01:96B6: C6 97     .word _off003_97C6_28
- - - - - - 0x0056C8 01:96B8: C6 97     .word _off003_97C6_29
- - - - - - 0x0056CA 01:96BA: C6 97     .word _off003_97C6_2A
- - - - - - 0x0056CC 01:96BC: C6 97     .word _off003_97C6_2B
- - - - - - 0x0056CE 01:96BE: C6 97     .word _off003_97C6_2C
- - - - - - 0x0056D0 01:96C0: C6 97     .word _off003_97C6_2D
- - - - - - 0x0056D2 01:96C2: C6 97     .word _off003_97C6_2E
- - - - - - 0x0056D4 01:96C4: C6 97     .word _off003_97C6_2F
- - - - - - 0x0056D6 01:96C6: C6 97     .word _off003_97C6_30
- - - - - - 0x0056D8 01:96C8: C6 97     .word _off003_97C6_31
- - - - - - 0x0056DA 01:96CA: C6 97     .word _off003_97C6_32
- - - - - - 0x0056DC 01:96CC: C6 97     .word _off003_97C6_33
- - - - - - 0x0056DE 01:96CE: C6 97     .word _off003_97C6_34
- - - - - - 0x0056E0 01:96D0: C6 97     .word _off003_97C6_35
- - - - - - 0x0056E2 01:96D2: C6 97     .word _off003_97C6_36
- - - - - - 0x0056E4 01:96D4: C6 97     .word _off003_97C6_37
- - - - - - 0x0056E6 01:96D6: C6 97     .word _off003_97C6_38
- - - - - - 0x0056E8 01:96D8: C6 97     .word _off003_97C6_39
- - - - - - 0x0056EA 01:96DA: C6 97     .word _off003_97C6_3A
- - - - - - 0x0056EC 01:96DC: C6 97     .word _off003_97C6_3B
- - - - - - 0x0056EE 01:96DE: C6 97     .word _off003_97C6_3C
- - - - - - 0x0056F0 01:96E0: C6 97     .word _off003_97C6_3D
- - - - - - 0x0056F2 01:96E2: C6 97     .word _off003_97C6_3E
- - - - - - 0x0056F4 01:96E4: C6 97     .word _off003_97C6_3F



_off003_96E6_00:
_off003_96E6_01:
- D 0 - I - 0x0056F6 01:96E6: 00        .byte $00   ; 
- D 0 - I - 0x0056F7 01:96E7: 12        .byte $12   ; 
- D 0 - I - 0x0056F8 01:96E8: 14        .byte $14   ; 
- D 0 - I - 0x0056F9 01:96E9: 18        .byte $18   ; 



_off003_96EA_02:
- D 0 - I - 0x0056FA 01:96EA: 00        .byte $00   ; 
- D 0 - I - 0x0056FB 01:96EB: 75        .byte $75   ; 
- D 0 - I - 0x0056FC 01:96EC: 76        .byte $76   ; 
- D 0 - I - 0x0056FD 01:96ED: 77        .byte $77   ; 



_off003_96EE_03_run_player:
- D 0 - I - 0x0056FE 01:96EE: 00        .byte $00   ; 
- D 0 - I - 0x0056FF 01:96EF: 11        .byte $11   ; 
- D 0 - I - 0x005700 01:96F0: 13        .byte $13   ; 
- D 0 - I - 0x005701 01:96F1: 17        .byte $17   ; 
- D 0 - I - 0x005702 01:96F2: 00        .byte $00   ; 
- D 0 - I - 0x005703 01:96F3: 12        .byte $12   ; 
- D 0 - I - 0x005704 01:96F4: 14        .byte $14   ; 
- D 0 - I - 0x005705 01:96F5: 18        .byte $18   ; 
- D 0 - I - 0x005706 01:96F6: 12        .byte $12   ; 
- D 0 - I - 0x005707 01:96F7: 11        .byte $11   ; 
- D 0 - I - 0x005708 01:96F8: 15        .byte $15   ; 
- D 0 - I - 0x005709 01:96F9: 17        .byte $17   ; 
- D 0 - I - 0x00570A 01:96FA: 12        .byte $12   ; 
- D 0 - I - 0x00570B 01:96FB: 12        .byte $12   ; 
- D 0 - I - 0x00570C 01:96FC: 16        .byte $16   ; 
- D 0 - I - 0x00570D 01:96FD: 18        .byte $18   ; 



_off003_96FE_04_run_gk:
- D 0 - I - 0x00570E 01:96FE: 00        .byte $00   ; 
- D 0 - I - 0x00570F 01:96FF: 7B        .byte $7B   ; 
- D 0 - I - 0x005710 01:9700: 7D        .byte $7D   ; 
- D 0 - I - 0x005711 01:9701: 81        .byte $81   ; 
- D 0 - I - 0x005712 01:9702: 00        .byte $00   ; 
- D 0 - I - 0x005713 01:9703: 7C        .byte $7C   ; 
- D 0 - I - 0x005714 01:9704: 7E        .byte $7E   ; 
- D 0 - I - 0x005715 01:9705: 82        .byte $82   ; 
- D 0 - I - 0x005716 01:9706: 12        .byte $12   ; 
- D 0 - I - 0x005717 01:9707: 7B        .byte $7B   ; 
- D 0 - I - 0x005718 01:9708: 7F        .byte $7F   ; 
- D 0 - I - 0x005719 01:9709: 81        .byte $81   ; 
- D 0 - I - 0x00571A 01:970A: 12        .byte $12   ; 
- D 0 - I - 0x00571B 01:970B: 7C        .byte $7C   ; 
- D 0 - I - 0x00571C 01:970C: 80        .byte $80   ; 
- D 0 - I - 0x00571D 01:970D: 82        .byte $82   ; 



_off003_970E_05:
- D 0 - I - 0x00571E 01:970E: 00        .byte $00   ; 
- D 0 - I - 0x00571F 01:970F: 21        .byte $21   ; 
- D 0 - I - 0x005720 01:9710: 24        .byte $24   ; 
- D 0 - I - 0x005721 01:9711: 27        .byte $27   ; 
- D 0 - I - 0x005722 01:9712: 00        .byte $00   ; 
- D 0 - I - 0x005723 01:9713: 22        .byte $22   ; 
- D 0 - I - 0x005724 01:9714: 25        .byte $25   ; 
- D 0 - I - 0x005725 01:9715: 28        .byte $28   ; 
- D 0 - I - 0x005726 01:9716: 00        .byte $00   ; 
- D 0 - I - 0x005727 01:9717: 23        .byte $23   ; 
- D 0 - I - 0x005728 01:9718: 26        .byte $26   ; 
- D 0 - I - 0x005729 01:9719: 29        .byte $29   ; 



_off003_971A_06:
- D 0 - I - 0x00572A 01:971A: 00        .byte $00   ; 
- D 0 - I - 0x00572B 01:971B: 1B        .byte $1B   ; 
- D 0 - I - 0x00572C 01:971C: 1C        .byte $1C   ; 
- D 0 - I - 0x00572D 01:971D: 1D        .byte $1D   ; 



_off003_971E_07:
- D 0 - I - 0x00572E 01:971E: 00        .byte $00   ; 
- D 0 - I - 0x00572F 01:971F: 42        .byte $42   ; 
- D 0 - I - 0x005730 01:9720: 44        .byte $44   ; 
- D 0 - I - 0x005731 01:9721: 46        .byte $46   ; 



_off003_9722_08:
- D 0 - I - 0x005732 01:9722: 00        .byte $00   ; 
- D 0 - I - 0x005733 01:9723: 2D        .byte $2D   ; 
- D 0 - I - 0x005734 01:9724: 32        .byte $32   ; 
- D 0 - I - 0x005735 01:9725: 37        .byte $37   ; 
- D 0 - I - 0x005736 01:9726: 00        .byte $00   ; 
- D 0 - I - 0x005737 01:9727: 2E        .byte $2E   ; 
- D 0 - I - 0x005738 01:9728: 33        .byte $33   ; 
- D 0 - I - 0x005739 01:9729: 38        .byte $38   ; 
- D 0 - I - 0x00573A 01:972A: 00        .byte $00   ; 
- D 0 - I - 0x00573B 01:972B: 31        .byte $31   ; 
- D 0 - I - 0x00573C 01:972C: 36        .byte $36   ; 
- D 0 - I - 0x00573D 01:972D: 3B        .byte $3B   ; 



_off003_972E_09_dead:
- D 0 - I - 0x00573E 01:972E: 00        .byte $00   ; 
- D 0 - I - 0x00573F 01:972F: 4A        .byte $4A   ; 
- D 0 - I - 0x005740 01:9730: 4E        .byte $4E   ; 
- D 0 - I - 0x005741 01:9731: 52        .byte $52   ; 
- D 0 - I - 0x005742 01:9732: 00        .byte $00   ; 
- D 0 - I - 0x005743 01:9733: 4B        .byte $4B   ; 
- D 0 - I - 0x005744 01:9734: 4F        .byte $4F   ; 
- D 0 - I - 0x005745 01:9735: 53        .byte $53   ; 



_off003_9736_0A_dodge:
- D 0 - I - 0x005746 01:9736: 00        .byte $00   ; 
- D 0 - I - 0x005747 01:9737: E1        .byte $E1   ; 
- D 0 - I - 0x005748 01:9738: E3        .byte $E3   ; 
- D 0 - I - 0x005749 01:9739: E5        .byte $E5   ; 
- D 0 - I - 0x00574A 01:973A: 00        .byte $00   ; 
- D 0 - I - 0x00574B 01:973B: E2        .byte $E2   ; 
- D 0 - I - 0x00574C 01:973C: E4        .byte $E4   ; 
- D 0 - I - 0x00574D 01:973D: E6        .byte $E6   ; 



_off003_973E_0B_shoot_normal:
- D 0 - I - 0x00574E 01:973E: 00        .byte $00   ; 
- D 0 - I - 0x00574F 01:973F: 22        .byte $22   ; 
- D 0 - I - 0x005750 01:9740: 25        .byte $25   ; 
- D 0 - I - 0x005751 01:9741: 28        .byte $28   ; 
- D 0 - I - 0x005752 01:9742: 00        .byte $00   ; 
- D 0 - I - 0x005753 01:9743: 23        .byte $23   ; 
- D 0 - I - 0x005754 01:9744: 26        .byte $26   ; 
- D 0 - I - 0x005755 01:9745: 29        .byte $29   ; 



_off003_9746_0C_shoot_volley:
- D 0 - I - 0x005756 01:9746: 00        .byte $00   ; 
- D 0 - I - 0x005757 01:9747: 54        .byte $54   ; 
- D 0 - I - 0x005758 01:9748: 59        .byte $59   ; 
- D 0 - I - 0x005759 01:9749: 5E        .byte $5E   ; 
- D 0 - I - 0x00575A 01:974A: 00        .byte $00   ; 
- D 0 - I - 0x00575B 01:974B: 55        .byte $55   ; 
- D 0 - I - 0x00575C 01:974C: 5A        .byte $5A   ; 
- D 0 - I - 0x00575D 01:974D: 5F        .byte $5F   ; 
- D 0 - I - 0x00575E 01:974E: 00        .byte $00   ; 
- D 0 - I - 0x00575F 01:974F: 56        .byte $56   ; 
- D 0 - I - 0x005760 01:9750: 5B        .byte $5B   ; 
- D 0 - I - 0x005761 01:9751: 60        .byte $60   ; 
- D 0 - I - 0x005762 01:9752: 00        .byte $00   ; 
- D 0 - I - 0x005763 01:9753: 4B        .byte $4B   ; 
- D 0 - I - 0x005764 01:9754: 4F        .byte $4F   ; 
- D 0 - I - 0x005765 01:9755: 53        .byte $53   ; 



_off003_9756_0D_shoot_head:
- D 0 - I - 0x005766 01:9756: 00        .byte $00   ; 
- D 0 - I - 0x005767 01:9757: 63        .byte $63   ; 
- D 0 - I - 0x005768 01:9758: 65        .byte $65   ; 
- D 0 - I - 0x005769 01:9759: 67        .byte $67   ; 
- D 0 - I - 0x00576A 01:975A: 00        .byte $00   ; 
- D 0 - I - 0x00576B 01:975B: 64        .byte $64   ; 
- D 0 - I - 0x00576C 01:975C: 66        .byte $66   ; 
- D 0 - I - 0x00576D 01:975D: 68        .byte $68   ; 



_off003_975E_0E:
- D 0 - I - 0x00576E 01:975E: 00        .byte $00   ; 
- D 0 - I - 0x00576F 01:975F: 6C        .byte $6C   ; 
- D 0 - I - 0x005770 01:9760: 6F        .byte $6F   ; 
- - - - - - 0x005771 01:9761: 72        .byte $72   ; 
- D 0 - I - 0x005772 01:9762: 00        .byte $00   ; 
- D 0 - I - 0x005773 01:9763: 6D        .byte $6D   ; 
- D 0 - I - 0x005774 01:9764: 70        .byte $70   ; 
- - - - - - 0x005775 01:9765: 73        .byte $73   ; 
- D 0 - I - 0x005776 01:9766: 00        .byte $00   ; 
- D 0 - I - 0x005777 01:9767: 6E        .byte $6E   ; 
- D 0 - I - 0x005778 01:9768: 71        .byte $71   ; 
- - - - - - 0x005779 01:9769: 74        .byte $74   ; 
- D 0 - I - 0x00577A 01:976A: 3F        .byte $3F   ; 
- D 0 - I - 0x00577B 01:976B: 31        .byte $31   ; 
- D 0 - I - 0x00577C 01:976C: 36        .byte $36   ; 
- - - - - - 0x00577D 01:976D: 3B        .byte $3B   ; 



_off003_976E_0F_throw_in:
- D 0 - I - 0x00577E 01:976E: 00        .byte $00   ; 
- - - - - - 0x00577F 01:976F: 3C        .byte $3C   ; 
- D 0 - I - 0x005780 01:9770: 3E        .byte $3E   ; 
- D 0 - I - 0x005781 01:9771: 40        .byte $40   ; 
- D 0 - I - 0x005782 01:9772: 00        .byte $00   ; 
- - - - - - 0x005783 01:9773: 3D        .byte $3D   ; 
- D 0 - I - 0x005784 01:9774: 3F        .byte $3F   ; 
- D 0 - I - 0x005785 01:9775: 41        .byte $41   ; 



_off003_9776_10:
- D 0 - I - 0x005786 01:9776: 00        .byte $00   ; 
- D 0 - I - 0x005787 01:9777: 8F        .byte $8F   ; 
- D 0 - I - 0x005788 01:9778: 90        .byte $90   ; 
- D 0 - I - 0x005789 01:9779: 91        .byte $91   ; 



_off003_977A_11:
- D 0 - I - 0x00578A 01:977A: 00        .byte $00   ; 
- D 0 - I - 0x00578B 01:977B: 83        .byte $83   ; 
- D 0 - I - 0x00578C 01:977C: 87        .byte $87   ; 
- D 0 - I - 0x00578D 01:977D: 8B        .byte $8B   ; 
- D 0 - I - 0x00578E 01:977E: 00        .byte $00   ; 
- D 0 - I - 0x00578F 01:977F: 84        .byte $84   ; 
- D 0 - I - 0x005790 01:9780: 88        .byte $88   ; 
- D 0 - I - 0x005791 01:9781: 8C        .byte $8C   ; 
- D 0 - I - 0x005792 01:9782: 00        .byte $00   ; 
- D 0 - I - 0x005793 01:9783: 85        .byte $85   ; 
- D 0 - I - 0x005794 01:9784: 89        .byte $89   ; 
- D 0 - I - 0x005795 01:9785: 8D        .byte $8D   ; 
- D 0 - I - 0x005796 01:9786: 00        .byte $00   ; 
- D 0 - I - 0x005797 01:9787: 86        .byte $86   ; 
- D 0 - I - 0x005798 01:9788: 8A        .byte $8A   ; 
- D 0 - I - 0x005799 01:9789: 8E        .byte $8E   ; 



_off003_978A_12:
- D 0 - I - 0x00579A 01:978A: 00        .byte $00   ; 
- D 0 - I - 0x00579B 01:978B: 19        .byte $19   ; 
- D 0 - I - 0x00579C 01:978C: 1A        .byte $1A   ; 
- D 0 - I - 0x00579D 01:978D: 2B        .byte $2B   ; 
- D 0 - I - 0x00579E 01:978E: 00        .byte $00   ; 
- D 0 - I - 0x00579F 01:978F: 8F        .byte $8F   ; 
- D 0 - I - 0x0057A0 01:9790: 90        .byte $90   ; 
- D 0 - I - 0x0057A1 01:9791: 91        .byte $91   ; 
- D 0 - I - 0x0057A2 01:9792: 12        .byte $12   ; 
- D 0 - I - 0x0057A3 01:9793: 19        .byte $19   ; 
- D 0 - I - 0x0057A4 01:9794: 2A        .byte $2A   ; 
- D 0 - I - 0x0057A5 01:9795: 2B        .byte $2B   ; 
- D 0 - I - 0x0057A6 01:9796: 12        .byte $12   ; 
- D 0 - I - 0x0057A7 01:9797: 8F        .byte $8F   ; 
- D 0 - I - 0x0057A8 01:9798: 90        .byte $90   ; 
- D 0 - I - 0x0057A9 01:9799: 91        .byte $91   ; 



_off003_979A_13:
- D 0 - I - 0x0057AA 01:979A: 00        .byte $00   ; 
- D 0 - I - 0x0057AB 01:979B: 92        .byte $92   ; 
- D 0 - I - 0x0057AC 01:979C: 94        .byte $94   ; 
- D 0 - I - 0x0057AD 01:979D: 96        .byte $96   ; 
- D 0 - I - 0x0057AE 01:979E: 00        .byte $00   ; 
- D 0 - I - 0x0057AF 01:979F: 93        .byte $93   ; 
- D 0 - I - 0x0057B0 01:97A0: 95        .byte $95   ; 
- D 0 - I - 0x0057B1 01:97A1: 97        .byte $97   ; 



_off003_97A2_14:
- - - - - - 0x0057B2 01:97A2: 00        .byte $00   ; 
- - - - - - 0x0057B3 01:97A3: 98        .byte $98   ; 
- - - - - - 0x0057B4 01:97A4: 99        .byte $99   ; 
- - - - - - 0x0057B5 01:97A5: 9A        .byte $9A   ; 
- - - - - - 0x0057B6 01:97A6: 00        .byte $00   ; 
- - - - - - 0x0057B7 01:97A7: 93        .byte $93   ; 
- - - - - - 0x0057B8 01:97A8: 95        .byte $95   ; 
- - - - - - 0x0057B9 01:97A9: 97        .byte $97   ; 



_off003_97AA_15:
- D 0 - I - 0x0057BA 01:97AA: 00        .byte $00   ; 
- D 0 - I - 0x0057BB 01:97AB: E8        .byte $E8   ; 
- - - - - - 0x0057BC 01:97AC: E8        .byte $E8   ; 
- - - - - - 0x0057BD 01:97AD: E8        .byte $E8   ; 
- D 0 - I - 0x0057BE 01:97AE: 00        .byte $00   ; 
- D 0 - I - 0x0057BF 01:97AF: E9        .byte $E9   ; 
- - - - - - 0x0057C0 01:97B0: E9        .byte $E9   ; 
- - - - - - 0x0057C1 01:97B1: E9        .byte $E9   ; 
- D 0 - I - 0x0057C2 01:97B2: 00        .byte $00   ; 
- D 0 - I - 0x0057C3 01:97B3: EA        .byte $EA   ; 
- - - - - - 0x0057C4 01:97B4: EA        .byte $EA   ; 
- - - - - - 0x0057C5 01:97B5: EA        .byte $EA   ; 
- D 0 - I - 0x0057C6 01:97B6: 00        .byte $00   ; 
- D 0 - I - 0x0057C7 01:97B7: EB        .byte $EB   ; 
- - - - - - 0x0057C8 01:97B8: EB        .byte $EB   ; 
- - - - - - 0x0057C9 01:97B9: EB        .byte $EB   ; 



_off003_97BA_16:
- D 0 - I - 0x0057CA 01:97BA: 00        .byte $00   ; 
- D 0 - I - 0x0057CB 01:97BB: EC        .byte $EC   ; 
- - - - - - 0x0057CC 01:97BC: EC        .byte $EC   ; 
- - - - - - 0x0057CD 01:97BD: EC        .byte $EC   ; 
- D 0 - I - 0x0057CE 01:97BE: 00        .byte $00   ; 
- D 0 - I - 0x0057CF 01:97BF: F0        .byte $F0   ; 
- - - - - - 0x0057D0 01:97C0: ED        .byte $ED   ; 
- D 0 - I - 0x0057D1 01:97C1: ED        .byte $ED   ; 
- D 0 - I - 0x0057D2 01:97C2: 00        .byte $00   ; 
- D 0 - I - 0x0057D3 01:97C3: F0        .byte $F0   ; 
- - - - - - 0x0057D4 01:97C4: EE        .byte $EE   ; 
- D 0 - I - 0x0057D5 01:97C5: EE        .byte $EE   ; 



_off003_97C6_17:
_off003_97C6_18:
_off003_97C6_19:
_off003_97C6_1A:
_off003_97C6_1B:
_off003_97C6_1C:
_off003_97C6_1D:
_off003_97C6_1E:
_off003_97C6_1F:
_off003_97C6_20:
_off003_97C6_21:
_off003_97C6_22:
_off003_97C6_23:
_off003_97C6_24:
_off003_97C6_25:
_off003_97C6_26:
_off003_97C6_27:
_off003_97C6_28:
_off003_97C6_29:
_off003_97C6_2A:
_off003_97C6_2B:
_off003_97C6_2C:
_off003_97C6_2D:
_off003_97C6_2E:
_off003_97C6_2F:
_off003_97C6_30:
_off003_97C6_31:
_off003_97C6_32:
_off003_97C6_33:
_off003_97C6_34:
_off003_97C6_35:
_off003_97C6_36:
_off003_97C6_37:
_off003_97C6_38:
_off003_97C6_39:
_off003_97C6_3A:
_off003_97C6_3B:
_off003_97C6_3C:
_off003_97C6_3D:
_off003_97C6_3E:
_off003_97C6_3F:
tbl_97C6:
- D 0 - I - 0x0057D6 01:97C6: C6 99     .word _off010_99C6_00
- D 0 - I - 0x0057D8 01:97C8: C7 99     .word _off010_99C7_01
- D 0 - I - 0x0057DA 01:97CA: CE 99     .word _off010_99CE_02
- D 0 - I - 0x0057DC 01:97CC: D5 99     .word _off010_99D5_03
- D 0 - I - 0x0057DE 01:97CE: DE 99     .word _off010_99DE_04
- D 0 - I - 0x0057E0 01:97D0: E7 99     .word _off010_99E7_05
- D 0 - I - 0x0057E2 01:97D2: F0 99     .word _off010_99F0_06
- D 0 - I - 0x0057E4 01:97D4: F9 99     .word _off010_99F9_07
- D 0 - I - 0x0057E6 01:97D6: 02 9A     .word _off010_9A02_08
- D 0 - I - 0x0057E8 01:97D8: 0B 9A     .word _off010_9A0B_09
- D 0 - I - 0x0057EA 01:97DA: 14 9A     .word _off010_9A14_0A
- D 0 - I - 0x0057EC 01:97DC: DE 99     .word _off010_99DE_0B
- D 0 - I - 0x0057EE 01:97DE: 1D 9A     .word _off010_9A1D_0C
- D 0 - I - 0x0057F0 01:97E0: F0 99     .word _off010_99F0_0D
- D 0 - I - 0x0057F2 01:97E2: 26 9A     .word _off010_9A26_0E
- D 0 - I - 0x0057F4 01:97E4: 02 9A     .word _off010_9A02_0F
- D 0 - I - 0x0057F6 01:97E6: 2F 9A     .word _off010_9A2F_10
- D 0 - I - 0x0057F8 01:97E8: 38 9A     .word _off010_9A38_11
- D 0 - I - 0x0057FA 01:97EA: 42 9A     .word _off010_9A42_12
- D 0 - I - 0x0057FC 01:97EC: 4C 9A     .word _off010_9A4C_13
- D 0 - I - 0x0057FE 01:97EE: 58 9A     .word _off010_9A58_14
- D 0 - I - 0x005800 01:97F0: 64 9A     .word _off010_9A64_15
- D 0 - I - 0x005802 01:97F2: 70 9A     .word _off010_9A70_16
- D 0 - I - 0x005804 01:97F4: 7C 9A     .word _off010_9A7C_17
- D 0 - I - 0x005806 01:97F6: 86 9A     .word _off010_9A86_18
- D 0 - I - 0x005808 01:97F8: 8E 9A     .word _off010_9A8E_19
- D 0 - I - 0x00580A 01:97FA: 9B 9A     .word _off010_9A9B_1A
- D 0 - I - 0x00580C 01:97FC: A8 9A     .word _off010_9AA8_1B
- D 0 - I - 0x00580E 01:97FE: B4 9A     .word _off010_9AB4_1C
- D 0 - I - 0x005810 01:9800: C0 9A     .word _off010_9AC0_1D
- - - - - - 0x005812 01:9802: CC 9A     .word _off010_9ACC_1E
- - - - - - 0x005814 01:9804: CD 9A     .word _off010_9ACD_1F
- - - - - - 0x005816 01:9806: CE 9A     .word _off010_9ACE_20
- D 0 - I - 0x005818 01:9808: CF 9A     .word _off010_9ACF_21
- D 0 - I - 0x00581A 01:980A: DE 9A     .word _off010_9ADE_22
- D 0 - I - 0x00581C 01:980C: EB 9A     .word _off010_9AEB_23
- D 0 - I - 0x00581E 01:980E: FA 9A     .word _off010_9AFA_24
- D 0 - I - 0x005820 01:9810: 09 9B     .word _off010_9B09_25
- D 0 - I - 0x005822 01:9812: 16 9B     .word _off010_9B16_26
- D 0 - I - 0x005824 01:9814: 27 9B     .word _off010_9B27_27
- D 0 - I - 0x005826 01:9816: 36 9B     .word _off010_9B36_28
- D 0 - I - 0x005828 01:9818: 43 9B     .word _off010_9B43_29
- D 0 - I - 0x00582A 01:981A: 52 9B     .word _off010_9B52_2A
- D 0 - I - 0x00582C 01:981C: 5F 9B     .word _off010_9B5F_2B
- - - - - - 0x00582E 01:981E: 6C 9B     .word _off010_9B6C_2C
- D 0 - I - 0x005830 01:9820: 6D 9B     .word _off010_9B6D_2D
- D 0 - I - 0x005832 01:9822: 7C 9B     .word _off010_9B7C_2E
- D 0 - I - 0x005834 01:9824: 8F 9B     .word _off010_9B8F_2F
- D 0 - I - 0x005836 01:9826: 96 9B     .word _off010_9B96_30
- D 0 - I - 0x005838 01:9828: 9D 9B     .word _off010_9B9D_31
- D 0 - I - 0x00583A 01:982A: AA 9B     .word _off010_9BAA_32
- D 0 - I - 0x00583C 01:982C: B9 9B     .word _off010_9BB9_33
- - - - - - 0x00583E 01:982E: CA 9B     .word _off010_9BCA_34
- - - - - - 0x005840 01:9830: CB 9B     .word _off010_9BCB_35
- D 0 - I - 0x005842 01:9832: CC 9B     .word _off010_9BCC_36
- D 0 - I - 0x005844 01:9834: D9 9B     .word _off010_9BD9_37
- D 0 - I - 0x005846 01:9836: E8 9B     .word _off010_9BE8_38
- - - - - - 0x005848 01:9838: F9 9B     .word _off010_9BF9_39
- - - - - - 0x00584A 01:983A: FA 9B     .word _off010_9BFA_3A
- D 0 - I - 0x00584C 01:983C: FB 9B     .word _off010_9BFB_3B
- - - - - - 0x00584E 01:983E: 08 9C     .word _off010_9C08_3C
- - - - - - 0x005850 01:9840: 15 9C     .word _off010_9C15_3D
- D 0 - I - 0x005852 01:9842: 22 9C     .word _off010_9C22_3E
- D 0 - I - 0x005854 01:9844: 2F 9C     .word _off010_9C2F_3F
- D 0 - I - 0x005856 01:9846: 3C 9C     .word _off010_9C3C_40
- D 0 - I - 0x005858 01:9848: 45 9C     .word _off010_9C45_41
- D 0 - I - 0x00585A 01:984A: 50 9C     .word _off010_9C50_42
- - - - - - 0x00585C 01:984C: 5F 9C     .word _off010_9C5F_43
- D 0 - I - 0x00585E 01:984E: 60 9C     .word _off010_9C60_44
- - - - - - 0x005860 01:9850: 6D 9C     .word _off010_9C6D_45
- D 0 - I - 0x005862 01:9852: 6E 9C     .word _off010_9C6E_46
- - - - - - 0x005864 01:9854: 7D 9C     .word _off010_9C7D_47
- - - - - - 0x005866 01:9856: 7E 9C     .word _off010_9C7E_48
- - - - - - 0x005868 01:9858: 7F 9C     .word _off010_9C7F_49
- D 0 - I - 0x00586A 01:985A: 80 9C     .word _off010_9C80_4A
- D 0 - I - 0x00586C 01:985C: 91 9C     .word _off010_9C91_4B
- - - - - - 0x00586E 01:985E: 9E 9C     .word _off010_9C9E_4C
- - - - - - 0x005870 01:9860: 9F 9C     .word _off010_9C9F_4D
- D 0 - I - 0x005872 01:9862: A0 9C     .word _off010_9CA0_4E
- D 0 - I - 0x005874 01:9864: B5 9C     .word _off010_9CB5_4F
- - - - - - 0x005876 01:9866: C2 9C     .word _off010_9CC2_50
- - - - - - 0x005878 01:9868: C3 9C     .word _off010_9CC3_51
- D 0 - I - 0x00587A 01:986A: C4 9C     .word _off010_9CC4_52
- D 0 - I - 0x00587C 01:986C: D3 9C     .word _off010_9CD3_53
- D 0 - I - 0x00587E 01:986E: E0 9C     .word _off010_9CE0_54
- D 0 - I - 0x005880 01:9870: EF 9C     .word _off010_9CEF_55
- D 0 - I - 0x005882 01:9872: 02 9D     .word _off010_9D02_56
- - - - - - 0x005884 01:9874: 11 9D     .word _off010_9D11_57
- - - - - - 0x005886 01:9876: 12 9D     .word _off010_9D12_58
- D 0 - I - 0x005888 01:9878: 13 9D     .word _off010_9D13_59
- D 0 - I - 0x00588A 01:987A: 22 9D     .word _off010_9D22_5A
- D 0 - I - 0x00588C 01:987C: 33 9D     .word _off010_9D33_5B
- - - - - - 0x00588E 01:987E: 44 9D     .word _off010_9D44_5C
- - - - - - 0x005890 01:9880: 45 9D     .word _off010_9D45_5D
- D 0 - I - 0x005892 01:9882: 46 9D     .word _off010_9D46_5E
- D 0 - I - 0x005894 01:9884: 59 9D     .word _off010_9D59_5F
- D 0 - I - 0x005896 01:9886: 68 9D     .word _off010_9D68_60
- - - - - - 0x005898 01:9888: 77 9D     .word _off010_9D77_61
- - - - - - 0x00589A 01:988A: 78 9D     .word _off010_9D78_62
- D 0 - I - 0x00589C 01:988C: 79 9D     .word _off010_9D79_63
- D 0 - I - 0x00589E 01:988E: 86 9D     .word _off010_9D86_64
- D 0 - I - 0x0058A0 01:9890: 95 9D     .word _off010_9D95_65
- D 0 - I - 0x0058A2 01:9892: A2 9D     .word _off010_9DA2_66
- D 0 - I - 0x0058A4 01:9894: B3 9D     .word _off010_9DB3_67
- D 0 - I - 0x0058A6 01:9896: C0 9D     .word _off010_9DC0_68
- - - - - - 0x0058A8 01:9898: CF 9D     .word _off010_9DCF_69
- - - - - - 0x0058AA 01:989A: E2 9D     .word _off010_9DE2_6A
- - - - - - 0x0058AC 01:989C: EF 9D     .word _off010_9DEF_6B
- D 0 - I - 0x0058AE 01:989E: FE 9D     .word _off010_9DFE_6C
- D 0 - I - 0x0058B0 01:98A0: 11 9E     .word _off010_9E11_6D
- D 0 - I - 0x0058B2 01:98A2: 24 9E     .word _off010_9E24_6E
- D 0 - I - 0x0058B4 01:98A4: 37 9E     .word _off010_9E37_6F
- D 0 - I - 0x0058B6 01:98A6: 46 9E     .word _off010_9E46_70
- D 0 - I - 0x0058B8 01:98A8: 57 9E     .word _off010_9E57_71
- - - - - - 0x0058BA 01:98AA: 66 9E     .word _off010_9E66_72
- - - - - - 0x0058BC 01:98AC: 79 9E     .word _off010_9E79_73
- - - - - - 0x0058BE 01:98AE: 86 9E     .word _off010_9E86_74
- D 0 - I - 0x0058C0 01:98B0: 99 9E     .word _off010_9E99_75
- D 0 - I - 0x0058C2 01:98B2: A6 9E     .word _off010_9EA6_76
- D 0 - I - 0x0058C4 01:98B4: B3 9E     .word _off010_9EB3_77
- - - - - - 0x0058C6 01:98B6: BC 9E     .word _off010_9EBC_78
- - - - - - 0x0058C8 01:98B8: C9 9E     .word _off010_9EC9_79
- - - - - - 0x0058CA 01:98BA: D4 9E     .word _off010_9ED4_7A
- D 0 - I - 0x0058CC 01:98BC: E1 9E     .word _off010_9EE1_7B
- D 0 - I - 0x0058CE 01:98BE: EC 9E     .word _off010_9EEC_7C
- D 0 - I - 0x0058D0 01:98C0: F7 9E     .word _off010_9EF7_7D
- D 0 - I - 0x0058D2 01:98C2: 04 9F     .word _off010_9F04_7E
- D 0 - I - 0x0058D4 01:98C4: 11 9F     .word _off010_9F11_7F
- D 0 - I - 0x0058D6 01:98C6: 1E 9F     .word _off010_9F1E_80
- D 0 - I - 0x0058D8 01:98C8: 2B 9F     .word _off010_9F2B_81
- D 0 - I - 0x0058DA 01:98CA: 36 9F     .word _off010_9F36_82
- D 0 - I - 0x0058DC 01:98CC: 3F 9F     .word _off010_9F3F_83
- D 0 - I - 0x0058DE 01:98CE: 4E 9F     .word _off010_9F4E_84
- D 0 - I - 0x0058E0 01:98D0: 5B 9F     .word _off010_9F5B_85
- D 0 - I - 0x0058E2 01:98D2: 6A 9F     .word _off010_9F6A_86
- D 0 - I - 0x0058E4 01:98D4: 77 9F     .word _off010_9F77_87
- D 0 - I - 0x0058E6 01:98D6: 86 9F     .word _off010_9F86_88
- D 0 - I - 0x0058E8 01:98D8: 93 9F     .word _off010_9F93_89
- D 0 - I - 0x0058EA 01:98DA: A6 9F     .word _off010_9FA6_8A
- D 0 - I - 0x0058EC 01:98DC: B3 9F     .word _off010_9FB3_8B
- D 0 - I - 0x0058EE 01:98DE: C2 9F     .word _off010_9FC2_8C
- D 0 - I - 0x0058F0 01:98E0: CF 9F     .word _off010_9FCF_8D
- D 0 - I - 0x0058F2 01:98E2: DE 9F     .word _off010_9FDE_8E
- D 0 - I - 0x0058F4 01:98E4: EB 9F     .word _off010_9FEB_8F
- D 0 - I - 0x0058F6 01:98E6: F8 9F     .word _off010_9FF8_90
- D 0 - I - 0x0058F8 01:98E8: 05 A0     .word _off010_A005_91
- D 0 - I - 0x0058FA 01:98EA: 10 A0     .word _off010_A010_92
- D 0 - I - 0x0058FC 01:98EC: 1D A0     .word _off010_A01D_93
- D 0 - I - 0x0058FE 01:98EE: 28 A0     .word _off010_A028_94
- D 0 - I - 0x005900 01:98F0: 35 A0     .word _off010_A035_95
- D 0 - I - 0x005902 01:98F2: 42 A0     .word _off010_A042_96
- D 0 - I - 0x005904 01:98F4: 4F A0     .word _off010_A04F_97
- - - - - - 0x005906 01:98F6: 5C A0     .word _off010_A05C_98
- - - - - - 0x005908 01:98F8: 69 A0     .word _off010_A069_99
- - - - - - 0x00590A 01:98FA: 76 A0     .word _off010_A076_9A
- - - - - - 0x00590C 01:98FC: 83 A0     .word _off010_A083_9B
- - - - - - 0x00590E 01:98FE: 94 A0     .word _off010_A094_9C
- - - - - - 0x005910 01:9900: A5 A0     .word _off010_A0A5_9D
- D 0 - I - 0x005912 01:9902: B6 A0     .word _off010_A0B6_9E
- D 0 - I - 0x005914 01:9904: C5 A0     .word _off010_A0C5_9F
- D 0 - I - 0x005916 01:9906: D2 A0     .word _off010_A0D2_A0
- - - - - - 0x005918 01:9908: DF A0     .word _off010_A0DF_A1
- - - - - - 0x00591A 01:990A: F2 A0     .word _off010_A0F2_A2
- - - - - - 0x00591C 01:990C: 05 A1     .word _off010_A105_A3
- D 0 - I - 0x00591E 01:990E: 1A A1     .word _off010_A11A_A4
- D 0 - I - 0x005920 01:9910: 27 A1     .word _off010_A127_A5
- D 0 - I - 0x005922 01:9912: 32 A1     .word _off010_A132_A6
- D 0 - I - 0x005924 01:9914: 3F A1     .word _off010_A13F_A7
- D 0 - I - 0x005926 01:9916: 50 A1     .word _off010_A150_A8
- D 0 - I - 0x005928 01:9918: 5F A1     .word _off010_A15F_A9
- - - - - - 0x00592A 01:991A: 70 A1     .word _off010_A170_AA
- D 0 - I - 0x00592C 01:991C: 81 A1     .word _off010_A181_AB
- D 0 - I - 0x00592E 01:991E: 92 A1     .word _off010_A192_AC
- D 0 - I - 0x005930 01:9920: A3 A1     .word _off010_A1A3_AD
- - - - - - 0x005932 01:9922: B4 A1     .word _off010_A1B4_AE
- D 0 - I - 0x005934 01:9924: C5 A1     .word _off010_A1C5_AF
- D 0 - I - 0x005936 01:9926: D4 A1     .word _off010_A1D4_B0
- D 0 - I - 0x005938 01:9928: E1 A1     .word _off010_A1E1_B1
- D 0 - I - 0x00593A 01:992A: EE A1     .word _off010_A1EE_B2
- D 0 - I - 0x00593C 01:992C: 01 A2     .word _off010_A201_B3
- D 0 - I - 0x00593E 01:992E: 14 A2     .word _off010_A214_B4
- - - - - - 0x005940 01:9930: 25 A2     .word _off010_A225_B5
- D 0 - I - 0x005942 01:9932: 34 A2     .word _off010_A234_B6
- D 0 - I - 0x005944 01:9934: 45 A2     .word _off010_A245_B7
- D 0 - I - 0x005946 01:9936: 50 A2     .word _off010_A250_B8
- D 0 - I - 0x005948 01:9938: 5D A2     .word _off010_A25D_B9
- D 0 - I - 0x00594A 01:993A: 6E A2     .word _off010_A26E_BA
- D 0 - I - 0x00594C 01:993C: 7F A2     .word _off010_A27F_BB
- - - - - - 0x00594E 01:993E: 90 A2     .word _off010_A290_BC
- - - - - - 0x005950 01:9940: A3 A2     .word _off010_A2A3_BD
- - - - - - 0x005952 01:9942: A4 A2     .word _off010_A2A4_BE
- - - - - - 0x005954 01:9944: A5 A2     .word _off010_A2A5_BF
- - - - - - 0x005956 01:9946: A6 A2     .word _off010_A2A6_C0
- - - - - - 0x005958 01:9948: A7 A2     .word _off010_A2A7_C1
- - - - - - 0x00595A 01:994A: A8 A2     .word _off010_A2A8_C2
- - - - - - 0x00595C 01:994C: A9 A2     .word _off010_A2A9_C3
- - - - - - 0x00595E 01:994E: AA A2     .word _off010_A2AA_C4
- - - - - - 0x005960 01:9950: AB A2     .word _off010_A2AB_C5
- - - - - - 0x005962 01:9952: AC A2     .word _off010_A2AC_C6
- - - - - - 0x005964 01:9954: AD A2     .word _off010_A2AD_C7
- - - - - - 0x005966 01:9956: AE A2     .word _off010_A2AE_C8
- - - - - - 0x005968 01:9958: AF A2     .word _off010_A2AF_C9
- - - - - - 0x00596A 01:995A: B0 A2     .word _off010_A2B0_CA
- - - - - - 0x00596C 01:995C: B1 A2     .word _off010_A2B1_CB
- - - - - - 0x00596E 01:995E: B2 A2     .word _off010_A2B2_CC
- - - - - - 0x005970 01:9960: B3 A2     .word _off010_A2B3_CD
- - - - - - 0x005972 01:9962: B4 A2     .word _off010_A2B4_CE
- - - - - - 0x005974 01:9964: B5 A2     .word _off010_A2B5_CF
- - - - - - 0x005976 01:9966: B6 A2     .word _off010_A2B6_D0
- - - - - - 0x005978 01:9968: B7 A2     .word _off010_A2B7_D1
- - - - - - 0x00597A 01:996A: B8 A2     .word _off010_A2B8_D2
- - - - - - 0x00597C 01:996C: B9 A2     .word _off010_A2B9_D3
- - - - - - 0x00597E 01:996E: BA A2     .word _off010_A2BA_D4
- - - - - - 0x005980 01:9970: BB A2     .word _off010_A2BB_D5
- - - - - - 0x005982 01:9972: BC A2     .word _off010_A2BC_D6
- - - - - - 0x005984 01:9974: BD A2     .word _off010_A2BD_D7
- - - - - - 0x005986 01:9976: BE A2     .word _off010_A2BE_D8
- - - - - - 0x005988 01:9978: BF A2     .word _off010_A2BF_D9
- - - - - - 0x00598A 01:997A: C0 A2     .word _off010_A2C0_DA
- - - - - - 0x00598C 01:997C: C1 A2     .word _off010_A2C1_DB
- - - - - - 0x00598E 01:997E: C2 A2     .word _off010_A2C2_DC
- - - - - - 0x005990 01:9980: C3 A2     .word _off010_A2C3_DD
- - - - - - 0x005992 01:9982: C4 A2     .word _off010_A2C4_DE
- - - - - - 0x005994 01:9984: C5 A2     .word _off010_A2C5_DF
- D 0 - I - 0x005996 01:9986: C6 A2     .word _off010_A2C6_E0
- D 0 - I - 0x005998 01:9988: CD A2     .word _off010_A2CD_E1
- D 0 - I - 0x00599A 01:998A: DE A2     .word _off010_A2DE_E2
- D 0 - I - 0x00599C 01:998C: EB A2     .word _off010_A2EB_E3
- D 0 - I - 0x00599E 01:998E: FE A2     .word _off010_A2FE_E4
- D 0 - I - 0x0059A0 01:9990: 0B A3     .word _off010_A30B_E5
- D 0 - I - 0x0059A2 01:9992: 18 A3     .word _off010_A318_E6
- - - - - - 0x0059A4 01:9994: 25 A3     .word _off010_A325_E7
- D 0 - I - 0x0059A6 01:9996: 26 A3     .word _off010_A326_E8
- D 0 - I - 0x0059A8 01:9998: 4B A3     .word _off010_A34B_E9
- D 0 - I - 0x0059AA 01:999A: 72 A3     .word _off010_A372_EA
- D 0 - I - 0x0059AC 01:999C: 9F A3     .word _off010_A39F_EB
- D 0 - I - 0x0059AE 01:999E: C6 A3     .word _off010_A3C6_EC
- D 0 - I - 0x0059B0 01:99A0: E3 A3     .word _off010_A3E3_ED
- D 0 - I - 0x0059B2 01:99A2: FE A3     .word _off010_A3FE_EE
- - - - - - 0x0059B4 01:99A4: 1B A4     .word _off010_A41B_EF
- D 0 - I - 0x0059B6 01:99A6: 26 A4     .word _off010_A426_F0
- - - - - - 0x0059B8 01:99A8: 45 A4     .word _off010_A445_F1
- - - - - - 0x0059BA 01:99AA: 45 A4     .word _off010_A445_F2
- - - - - - 0x0059BC 01:99AC: 45 A4     .word _off010_A445_F3
- - - - - - 0x0059BE 01:99AE: 45 A4     .word _off010_A445_F4
- - - - - - 0x0059C0 01:99B0: 45 A4     .word _off010_A445_F5
- - - - - - 0x0059C2 01:99B2: 45 A4     .word _off010_A445_F6
- - - - - - 0x0059C4 01:99B4: 45 A4     .word _off010_A445_F7
- - - - - - 0x0059C6 01:99B6: 45 A4     .word _off010_A445_F8
- - - - - - 0x0059C8 01:99B8: 45 A4     .word _off010_A445_F9
- - - - - - 0x0059CA 01:99BA: 45 A4     .word _off010_A445_FA
- - - - - - 0x0059CC 01:99BC: 45 A4     .word _off010_A445_FB
- - - - - - 0x0059CE 01:99BE: 45 A4     .word _off010_A445_FC
- - - - - - 0x0059D0 01:99C0: 45 A4     .word _off010_A445_FD
- - - - - - 0x0059D2 01:99C2: 45 A4     .word _off010_A445_FE
- - - - - - 0x0059D4 01:99C4: 45 A4     .word _off010_A445_FF
_off010_99C6_00:
- D 0 - I - 0x0059D6 01:99C6: 01        .byte $01   ; 
_off010_99C7_01:
- D 0 - I - 0x0059D7 01:99C7: 03        .byte $03   ; 
- D 0 - I - 0x0059D8 01:99C8: 10        .byte $10   ; 
- D 0 - I - 0x0059D9 01:99C9: 08        .byte $08   ; 
- D 0 - I - 0x0059DA 01:99CA: F8        .byte $F8   ; 
- D 0 - I - 0x0059DB 01:99CB: FC        .byte $FC   ; 
- D 0 - I - 0x0059DC 01:99CC: 1D        .byte $1D   ; 
- D 0 - I - 0x0059DD 01:99CD: 01        .byte $01   ; 
_off010_99CE_02:
- D 0 - I - 0x0059DE 01:99CE: 03        .byte $03   ; 
- D 0 - I - 0x0059DF 01:99CF: 10        .byte $10   ; 
- D 0 - I - 0x0059E0 01:99D0: 08        .byte $08   ; 
- D 0 - I - 0x0059E1 01:99D1: F8        .byte $F8   ; 
- D 0 - I - 0x0059E2 01:99D2: FC        .byte $FC   ; 
- D 0 - I - 0x0059E3 01:99D3: 1F        .byte $1F   ; 
- D 0 - I - 0x0059E4 01:99D4: 01        .byte $01   ; 
_off010_99D5_03:
- D 0 - I - 0x0059E5 01:99D5: 03        .byte $03   ; 
- D 0 - I - 0x0059E6 01:99D6: 10        .byte $10   ; 
- D 0 - I - 0x0059E7 01:99D7: 10        .byte $10   ; 
- D 0 - I - 0x0059E8 01:99D8: F8        .byte $F8   ; 
- D 0 - I - 0x0059E9 01:99D9: F8        .byte $F8   ; 
- D 0 - I - 0x0059EA 01:99DA: 21        .byte $21   ; 
- D 0 - I - 0x0059EB 01:99DB: 00        .byte $00   ; 
- D 0 - I - 0x0059EC 01:99DC: 23        .byte $23   ; 
- D 0 - I - 0x0059ED 01:99DD: 01        .byte $01   ; 
_off010_99DE_04:
_off010_99DE_0B:
- D 0 - I - 0x0059EE 01:99DE: 03        .byte $03   ; 
- D 0 - I - 0x0059EF 01:99DF: 10        .byte $10   ; 
- D 0 - I - 0x0059F0 01:99E0: 10        .byte $10   ; 
- D 0 - I - 0x0059F1 01:99E1: F8        .byte $F8   ; 
- D 0 - I - 0x0059F2 01:99E2: F8        .byte $F8   ; 
- D 0 - I - 0x0059F3 01:99E3: 25        .byte $25   ; 
- D 0 - I - 0x0059F4 01:99E4: 00        .byte $00   ; 
- D 0 - I - 0x0059F5 01:99E5: 27        .byte $27   ; 
- D 0 - I - 0x0059F6 01:99E6: 01        .byte $01   ; 
_off010_99E7_05:
- D 0 - I - 0x0059F7 01:99E7: 03        .byte $03   ; 
- D 0 - I - 0x0059F8 01:99E8: 10        .byte $10   ; 
- D 0 - I - 0x0059F9 01:99E9: 10        .byte $10   ; 
- D 0 - I - 0x0059FA 01:99EA: F8        .byte $F8   ; 
- D 0 - I - 0x0059FB 01:99EB: F8        .byte $F8   ; 
- D 0 - I - 0x0059FC 01:99EC: 29        .byte $29   ; 
- D 0 - I - 0x0059FD 01:99ED: 00        .byte $00   ; 
- D 0 - I - 0x0059FE 01:99EE: 2B        .byte $2B   ; 
- D 0 - I - 0x0059FF 01:99EF: 01        .byte $01   ; 
_off010_99F0_06:
_off010_99F0_0D:
- D 0 - I - 0x005A00 01:99F0: 03        .byte $03   ; 
- D 0 - I - 0x005A01 01:99F1: 10        .byte $10   ; 
- D 0 - I - 0x005A02 01:99F2: 10        .byte $10   ; 
- D 0 - I - 0x005A03 01:99F3: F8        .byte $F8   ; 
- D 0 - I - 0x005A04 01:99F4: F8        .byte $F8   ; 
- D 0 - I - 0x005A05 01:99F5: 2D        .byte $2D   ; 
- D 0 - I - 0x005A06 01:99F6: 00        .byte $00   ; 
- D 0 - I - 0x005A07 01:99F7: 2F        .byte $2F   ; 
- D 0 - I - 0x005A08 01:99F8: 01        .byte $01   ; 
_off010_99F9_07:
- D 0 - I - 0x005A09 01:99F9: 03        .byte $03   ; 
- D 0 - I - 0x005A0A 01:99FA: 10        .byte $10   ; 
- D 0 - I - 0x005A0B 01:99FB: 10        .byte $10   ; 
- D 0 - I - 0x005A0C 01:99FC: F8        .byte $F8   ; 
- D 0 - I - 0x005A0D 01:99FD: F8        .byte $F8   ; 
- D 0 - I - 0x005A0E 01:99FE: 31        .byte $31   ; 
- D 0 - I - 0x005A0F 01:99FF: 00        .byte $00   ; 
- D 0 - I - 0x005A10 01:9A00: 33        .byte $33   ; 
- D 0 - I - 0x005A11 01:9A01: 01        .byte $01   ; 
_off010_9A02_08:
_off010_9A02_0F:
- D 0 - I - 0x005A12 01:9A02: 03        .byte $03   ; 
- D 0 - I - 0x005A13 01:9A03: 10        .byte $10   ; 
- D 0 - I - 0x005A14 01:9A04: 10        .byte $10   ; 
- D 0 - I - 0x005A15 01:9A05: F8        .byte $F8   ; 
- D 0 - I - 0x005A16 01:9A06: F8        .byte $F8   ; 
- D 0 - I - 0x005A17 01:9A07: 35        .byte $35   ; 
- D 0 - I - 0x005A18 01:9A08: 00        .byte $00   ; 
- D 0 - I - 0x005A19 01:9A09: 37        .byte $37   ; 
- D 0 - I - 0x005A1A 01:9A0A: 01        .byte $01   ; 
_off010_9A0B_09:
- D 0 - I - 0x005A1B 01:9A0B: 03        .byte $03   ; 
- D 0 - I - 0x005A1C 01:9A0C: 10        .byte $10   ; 
- D 0 - I - 0x005A1D 01:9A0D: 10        .byte $10   ; 
- D 0 - I - 0x005A1E 01:9A0E: F8        .byte $F8   ; 
- D 0 - I - 0x005A1F 01:9A0F: F8        .byte $F8   ; 
- D 0 - I - 0x005A20 01:9A10: 39        .byte $39   ; 
- D 0 - I - 0x005A21 01:9A11: 00        .byte $00   ; 
- D 0 - I - 0x005A22 01:9A12: 3B        .byte $3B   ; 
- D 0 - I - 0x005A23 01:9A13: 01        .byte $01   ; 
_off010_9A14_0A:
- D 0 - I - 0x005A24 01:9A14: 03        .byte $03   ; 
- D 0 - I - 0x005A25 01:9A15: 10        .byte $10   ; 
- D 0 - I - 0x005A26 01:9A16: 10        .byte $10   ; 
- D 0 - I - 0x005A27 01:9A17: F9        .byte $F9   ; 
- D 0 - I - 0x005A28 01:9A18: F8        .byte $F8   ; 
- D 0 - I - 0x005A29 01:9A19: 21        .byte $21   ; 
- D 0 - I - 0x005A2A 01:9A1A: 00        .byte $00   ; 
- D 0 - I - 0x005A2B 01:9A1B: 23        .byte $23   ; 
- D 0 - I - 0x005A2C 01:9A1C: 01        .byte $01   ; 
_off010_9A1D_0C:
- D 0 - I - 0x005A2D 01:9A1D: 03        .byte $03   ; 
- D 0 - I - 0x005A2E 01:9A1E: 10        .byte $10   ; 
- D 0 - I - 0x005A2F 01:9A1F: 10        .byte $10   ; 
- D 0 - I - 0x005A30 01:9A20: F9        .byte $F9   ; 
- D 0 - I - 0x005A31 01:9A21: F8        .byte $F8   ; 
- D 0 - I - 0x005A32 01:9A22: 29        .byte $29   ; 
- D 0 - I - 0x005A33 01:9A23: 00        .byte $00   ; 
- D 0 - I - 0x005A34 01:9A24: 2B        .byte $2B   ; 
- D 0 - I - 0x005A35 01:9A25: 01        .byte $01   ; 
_off010_9A26_0E:
- D 0 - I - 0x005A36 01:9A26: 03        .byte $03   ; 
- D 0 - I - 0x005A37 01:9A27: 10        .byte $10   ; 
- D 0 - I - 0x005A38 01:9A28: 10        .byte $10   ; 
- D 0 - I - 0x005A39 01:9A29: F9        .byte $F9   ; 
- D 0 - I - 0x005A3A 01:9A2A: F8        .byte $F8   ; 
- D 0 - I - 0x005A3B 01:9A2B: 31        .byte $31   ; 
- D 0 - I - 0x005A3C 01:9A2C: 00        .byte $00   ; 
- D 0 - I - 0x005A3D 01:9A2D: 33        .byte $33   ; 
- D 0 - I - 0x005A3E 01:9A2E: 01        .byte $01   ; 
_off010_9A2F_10:
- D 0 - I - 0x005A3F 01:9A2F: 03        .byte $03   ; 
- D 0 - I - 0x005A40 01:9A30: 10        .byte $10   ; 
- D 0 - I - 0x005A41 01:9A31: 10        .byte $10   ; 
- D 0 - I - 0x005A42 01:9A32: F9        .byte $F9   ; 
- D 0 - I - 0x005A43 01:9A33: F8        .byte $F8   ; 
- D 0 - I - 0x005A44 01:9A34: 39        .byte $39   ; 
- D 0 - I - 0x005A45 01:9A35: 00        .byte $00   ; 
- D 0 - I - 0x005A46 01:9A36: 3B        .byte $3B   ; 
- D 0 - I - 0x005A47 01:9A37: 01        .byte $01   ; 
_off010_9A38_11:
- D 0 - I - 0x005A48 01:9A38: 02        .byte $02   ; 
- D 0 - I - 0x005A49 01:9A39: 18        .byte $18   ; 
- D 0 - I - 0x005A4A 01:9A3A: F9        .byte $F9   ; 
- D 0 - I - 0x005A4B 01:9A3B: F9        .byte $F9   ; 
- D 0 - I - 0x005A4C 01:9A3C: C4        .byte $C4   ; 
- D 0 - I - 0x005A4D 01:9A3D: 01        .byte $01   ; 
- D 0 - I - 0x005A4E 01:9A3E: C6        .byte $C6   ; 
- D 0 - I - 0x005A4F 01:9A3F: FD        .byte $FD   ; 
- D 0 - I - 0x005A50 01:9A40: FD        .byte $FD   ; 
- D 0 - I - 0x005A51 01:9A41: 01        .byte $01   ; 
_off010_9A42_12:
- D 0 - I - 0x005A52 01:9A42: 02        .byte $02   ; 
- D 0 - I - 0x005A53 01:9A43: 18        .byte $18   ; 
- D 0 - I - 0x005A54 01:9A44: F9        .byte $F9   ; 
- D 0 - I - 0x005A55 01:9A45: F9        .byte $F9   ; 
- D 0 - I - 0x005A56 01:9A46: C8        .byte $C8   ; 
- D 0 - I - 0x005A57 01:9A47: 01        .byte $01   ; 
- D 0 - I - 0x005A58 01:9A48: CA        .byte $CA   ; 
- D 0 - I - 0x005A59 01:9A49: FD        .byte $FD   ; 
- D 0 - I - 0x005A5A 01:9A4A: FD        .byte $FD   ; 
- D 0 - I - 0x005A5B 01:9A4B: 01        .byte $01   ; 
_off010_9A4C_13:
- D 0 - I - 0x005A5C 01:9A4C: 02        .byte $02   ; 
- D 0 - I - 0x005A5D 01:9A4D: 10        .byte $10   ; 
- D 0 - I - 0x005A5E 01:9A4E: F9        .byte $F9   ; 
- D 0 - I - 0x005A5F 01:9A4F: F9        .byte $F9   ; 
- D 0 - I - 0x005A60 01:9A50: E0        .byte $E0   ; 
- D 0 - I - 0x005A61 01:9A51: 01        .byte $01   ; 
- D 0 - I - 0x005A62 01:9A52: E2        .byte $E2   ; 
- D 0 - I - 0x005A63 01:9A53: 08        .byte $08   ; 
- D 0 - I - 0x005A64 01:9A54: FB        .byte $FB   ; 
- D 0 - I - 0x005A65 01:9A55: FC        .byte $FC   ; 
- D 0 - I - 0x005A66 01:9A56: FD        .byte $FD   ; 
- D 0 - I - 0x005A67 01:9A57: 01        .byte $01   ; 
_off010_9A58_14:
- D 0 - I - 0x005A68 01:9A58: 02        .byte $02   ; 
- D 0 - I - 0x005A69 01:9A59: 10        .byte $10   ; 
- D 0 - I - 0x005A6A 01:9A5A: F9        .byte $F9   ; 
- D 0 - I - 0x005A6B 01:9A5B: F9        .byte $F9   ; 
- D 0 - I - 0x005A6C 01:9A5C: E4        .byte $E4   ; 
- D 0 - I - 0x005A6D 01:9A5D: 01        .byte $01   ; 
- D 0 - I - 0x005A6E 01:9A5E: E6        .byte $E6   ; 
- D 0 - I - 0x005A6F 01:9A5F: 08        .byte $08   ; 
- D 0 - I - 0x005A70 01:9A60: FB        .byte $FB   ; 
- D 0 - I - 0x005A71 01:9A61: FC        .byte $FC   ; 
- D 0 - I - 0x005A72 01:9A62: FD        .byte $FD   ; 
- D 0 - I - 0x005A73 01:9A63: 01        .byte $01   ; 
_off010_9A64_15:
- D 0 - I - 0x005A74 01:9A64: 02        .byte $02   ; 
- D 0 - I - 0x005A75 01:9A65: 10        .byte $10   ; 
- D 0 - I - 0x005A76 01:9A66: F9        .byte $F9   ; 
- D 0 - I - 0x005A77 01:9A67: F9        .byte $F9   ; 
- D 0 - I - 0x005A78 01:9A68: E8        .byte $E8   ; 
- D 0 - I - 0x005A79 01:9A69: 01        .byte $01   ; 
- D 0 - I - 0x005A7A 01:9A6A: EA        .byte $EA   ; 
- D 0 - I - 0x005A7B 01:9A6B: 08        .byte $08   ; 
- D 0 - I - 0x005A7C 01:9A6C: FB        .byte $FB   ; 
- D 0 - I - 0x005A7D 01:9A6D: FC        .byte $FC   ; 
- D 0 - I - 0x005A7E 01:9A6E: FD        .byte $FD   ; 
- D 0 - I - 0x005A7F 01:9A6F: 01        .byte $01   ; 
_off010_9A70_16:
- D 0 - I - 0x005A80 01:9A70: 02        .byte $02   ; 
- D 0 - I - 0x005A81 01:9A71: 10        .byte $10   ; 
- D 0 - I - 0x005A82 01:9A72: F9        .byte $F9   ; 
- D 0 - I - 0x005A83 01:9A73: F9        .byte $F9   ; 
- D 0 - I - 0x005A84 01:9A74: EC        .byte $EC   ; 
- D 0 - I - 0x005A85 01:9A75: 01        .byte $01   ; 
- D 0 - I - 0x005A86 01:9A76: EE        .byte $EE   ; 
- D 0 - I - 0x005A87 01:9A77: 08        .byte $08   ; 
- D 0 - I - 0x005A88 01:9A78: FB        .byte $FB   ; 
- D 0 - I - 0x005A89 01:9A79: FC        .byte $FC   ; 
- D 0 - I - 0x005A8A 01:9A7A: FD        .byte $FD   ; 
- D 0 - I - 0x005A8B 01:9A7B: 01        .byte $01   ; 
_off010_9A7C_17:
- D 0 - I - 0x005A8C 01:9A7C: 02        .byte $02   ; 
- D 0 - I - 0x005A8D 01:9A7D: 18        .byte $18   ; 
- D 0 - I - 0x005A8E 01:9A7E: F9        .byte $F9   ; 
- D 0 - I - 0x005A8F 01:9A7F: F9        .byte $F9   ; 
- D 0 - I - 0x005A90 01:9A80: CC        .byte $CC   ; 
- D 0 - I - 0x005A91 01:9A81: 01        .byte $01   ; 
- D 0 - I - 0x005A92 01:9A82: CE        .byte $CE   ; 
- D 0 - I - 0x005A93 01:9A83: F9        .byte $F9   ; 
- D 0 - I - 0x005A94 01:9A84: FF        .byte $FF   ; 
- D 0 - I - 0x005A95 01:9A85: 01        .byte $01   ; 
_off010_9A86_18:
- D 0 - I - 0x005A96 01:9A86: 02        .byte $02   ; 
- D 0 - I - 0x005A97 01:9A87: 10        .byte $10   ; 
- D 0 - I - 0x005A98 01:9A88: F9        .byte $F9   ; 
- D 0 - I - 0x005A99 01:9A89: FC        .byte $FC   ; 
- D 0 - I - 0x005A9A 01:9A8A: C2        .byte $C2   ; 
- D 0 - I - 0x005A9B 01:9A8B: F9        .byte $F9   ; 
- D 0 - I - 0x005A9C 01:9A8C: FF        .byte $FF   ; 
- D 0 - I - 0x005A9D 01:9A8D: 01        .byte $01   ; 
_off010_9A8E_19:
- D 0 - I - 0x005A9E 01:9A8E: 03        .byte $03   ; 
- D 0 - I - 0x005A9F 01:9A8F: 39        .byte $39   ; 
- D 0 - I - 0x005AA0 01:9A90: 10        .byte $10   ; 
- D 0 - I - 0x005AA1 01:9A91: F9        .byte $F9   ; 
- D 0 - I - 0x005AA2 01:9A92: F9        .byte $F9   ; 
- D 0 - I - 0x005AA3 01:9A93: 6C        .byte $6C   ; 
- D 0 - I - 0x005AA4 01:9A94: 01        .byte $01   ; 
- D 0 - I - 0x005AA5 01:9A95: 6E        .byte $6E   ; 
- D 0 - I - 0x005AA6 01:9A96: 08        .byte $08   ; 
- D 0 - I - 0x005AA7 01:9A97: FE        .byte $FE   ; 
- D 0 - I - 0x005AA8 01:9A98: FD        .byte $FD   ; 
- D 0 - I - 0x005AA9 01:9A99: 7D        .byte $7D   ; 
- D 0 - I - 0x005AAA 01:9A9A: 01        .byte $01   ; 
_off010_9A9B_1A:
- D 0 - I - 0x005AAB 01:9A9B: 03        .byte $03   ; 
- D 0 - I - 0x005AAC 01:9A9C: 39        .byte $39   ; 
- D 0 - I - 0x005AAD 01:9A9D: 10        .byte $10   ; 
- D 0 - I - 0x005AAE 01:9A9E: F9        .byte $F9   ; 
- D 0 - I - 0x005AAF 01:9A9F: F9        .byte $F9   ; 
- D 0 - I - 0x005AB0 01:9AA0: 70        .byte $70   ; 
- D 0 - I - 0x005AB1 01:9AA1: 01        .byte $01   ; 
- D 0 - I - 0x005AB2 01:9AA2: 72        .byte $72   ; 
- D 0 - I - 0x005AB3 01:9AA3: 08        .byte $08   ; 
- D 0 - I - 0x005AB4 01:9AA4: FD        .byte $FD   ; 
- D 0 - I - 0x005AB5 01:9AA5: FE        .byte $FE   ; 
- D 0 - I - 0x005AB6 01:9AA6: 7D        .byte $7D   ; 
- D 0 - I - 0x005AB7 01:9AA7: 01        .byte $01   ; 
_off010_9AA8_1B:
- D 0 - I - 0x005AB8 01:9AA8: 02        .byte $02   ; 
- D 0 - I - 0x005AB9 01:9AA9: 10        .byte $10   ; 
- D 0 - I - 0x005ABA 01:9AAA: F4        .byte $F4   ; 
- D 0 - I - 0x005ABB 01:9AAB: F9        .byte $F9   ; 
- D 0 - I - 0x005ABC 01:9AAC: F0        .byte $F0   ; 
- D 0 - I - 0x005ABD 01:9AAD: 01        .byte $01   ; 
- D 0 - I - 0x005ABE 01:9AAE: F2        .byte $F2   ; 
- D 0 - I - 0x005ABF 01:9AAF: 08        .byte $08   ; 
- D 0 - I - 0x005AC0 01:9AB0: FB        .byte $FB   ; 
- D 0 - I - 0x005AC1 01:9AB1: FC        .byte $FC   ; 
- D 0 - I - 0x005AC2 01:9AB2: FD        .byte $FD   ; 
- D 0 - I - 0x005AC3 01:9AB3: 01        .byte $01   ; 
_off010_9AB4_1C:
- D 0 - I - 0x005AC4 01:9AB4: 02        .byte $02   ; 
- D 0 - I - 0x005AC5 01:9AB5: 10        .byte $10   ; 
- D 0 - I - 0x005AC6 01:9AB6: F7        .byte $F7   ; 
- D 0 - I - 0x005AC7 01:9AB7: F7        .byte $F7   ; 
- D 0 - I - 0x005AC8 01:9AB8: F8        .byte $F8   ; 
- D 0 - I - 0x005AC9 01:9AB9: FF        .byte $FF   ; 
- D 0 - I - 0x005ACA 01:9ABA: FA        .byte $FA   ; 
- D 0 - I - 0x005ACB 01:9ABB: 08        .byte $08   ; 
- D 0 - I - 0x005ACC 01:9ABC: FC        .byte $FC   ; 
- D 0 - I - 0x005ACD 01:9ABD: FA        .byte $FA   ; 
- D 0 - I - 0x005ACE 01:9ABE: FD        .byte $FD   ; 
- D 0 - I - 0x005ACF 01:9ABF: 01        .byte $01   ; 
_off010_9AC0_1D:
- D 0 - I - 0x005AD0 01:9AC0: 02        .byte $02   ; 
- D 0 - I - 0x005AD1 01:9AC1: 10        .byte $10   ; 
- D 0 - I - 0x005AD2 01:9AC2: F9        .byte $F9   ; 
- D 0 - I - 0x005AD3 01:9AC3: F4        .byte $F4   ; 
- D 0 - I - 0x005AD4 01:9AC4: F4        .byte $F4   ; 
- D 0 - I - 0x005AD5 01:9AC5: FC        .byte $FC   ; 
- D 0 - I - 0x005AD6 01:9AC6: F6        .byte $F6   ; 
- D 0 - I - 0x005AD7 01:9AC7: 08        .byte $08   ; 
- D 0 - I - 0x005AD8 01:9AC8: FA        .byte $FA   ; 
- D 0 - I - 0x005AD9 01:9AC9: FB        .byte $FB   ; 
- D 0 - I - 0x005ADA 01:9ACA: FF        .byte $FF   ; 
- D 0 - I - 0x005ADB 01:9ACB: 01        .byte $01   ; 
_off010_9ACC_1E:
- - - - - - 0x005ADC 01:9ACC: 01        .byte $01   ; 
_off010_9ACD_1F:
- - - - - - 0x005ADD 01:9ACD: 01        .byte $01   ; 
_off010_9ACE_20:
- - - - - - 0x005ADE 01:9ACE: 01        .byte $01   ; 
_off010_9ACF_21:
- D 0 - I - 0x005ADF 01:9ACF: 03        .byte $03   ; 
- D 0 - I - 0x005AE0 01:9AD0: B3        .byte $B3   ; 
- D 0 - I - 0x005AE1 01:9AD1: 08        .byte $08   ; 
- D 0 - I - 0x005AE2 01:9AD2: F7        .byte $F7   ; 
- D 0 - I - 0x005AE3 01:9AD3: F8        .byte $F8   ; 
- D 0 - I - 0x005AE4 01:9AD4: C0        .byte $C0   ; 
- D 0 - I - 0x005AE5 01:9AD5: 08        .byte $08   ; 
- D 0 - I - 0x005AE6 01:9AD6: F9        .byte $F9   ; 
- D 0 - I - 0x005AE7 01:9AD7: 00        .byte $00   ; 
- D 0 - I - 0x005AE8 01:9AD8: C2        .byte $C2   ; 
- D 0 - I - 0x005AE9 01:9AD9: 08        .byte $08   ; 
- D 0 - I - 0x005AEA 01:9ADA: F8        .byte $F8   ; 
- D 0 - I - 0x005AEB 01:9ADB: FD        .byte $FD   ; 
- D 0 - I - 0x005AEC 01:9ADC: FD        .byte $FD   ; 
- D 0 - I - 0x005AED 01:9ADD: 01        .byte $01   ; 
_off010_9ADE_22:
- D 0 - I - 0x005AEE 01:9ADE: 03        .byte $03   ; 
- D 0 - I - 0x005AEF 01:9ADF: B7        .byte $B7   ; 
- D 0 - I - 0x005AF0 01:9AE0: 10        .byte $10   ; 
- D 0 - I - 0x005AF1 01:9AE1: F8        .byte $F8   ; 
- D 0 - I - 0x005AF2 01:9AE2: F8        .byte $F8   ; 
- D 0 - I - 0x005AF3 01:9AE3: C0        .byte $C0   ; 
- D 0 - I - 0x005AF4 01:9AE4: 00        .byte $00   ; 
- D 0 - I - 0x005AF5 01:9AE5: C2        .byte $C2   ; 
- D 0 - I - 0x005AF6 01:9AE6: 08        .byte $08   ; 
- D 0 - I - 0x005AF7 01:9AE7: FB        .byte $FB   ; 
- D 0 - I - 0x005AF8 01:9AE8: FD        .byte $FD   ; 
- D 0 - I - 0x005AF9 01:9AE9: FD        .byte $FD   ; 
- D 0 - I - 0x005AFA 01:9AEA: 01        .byte $01   ; 
_off010_9AEB_23:
- D 0 - I - 0x005AFB 01:9AEB: 03        .byte $03   ; 
- D 0 - I - 0x005AFC 01:9AEC: BB        .byte $BB   ; 
- D 0 - I - 0x005AFD 01:9AED: 08        .byte $08   ; 
- D 0 - I - 0x005AFE 01:9AEE: F2        .byte $F2   ; 
- D 0 - I - 0x005AFF 01:9AEF: F8        .byte $F8   ; 
- D 0 - I - 0x005B00 01:9AF0: C0        .byte $C0   ; 
- D 0 - I - 0x005B01 01:9AF1: 08        .byte $08   ; 
- D 0 - I - 0x005B02 01:9AF2: EC        .byte $EC   ; 
- D 0 - I - 0x005B03 01:9AF3: 00        .byte $00   ; 
- D 0 - I - 0x005B04 01:9AF4: C2        .byte $C2   ; 
- D 0 - I - 0x005B05 01:9AF5: 08        .byte $08   ; 
- D 0 - I - 0x005B06 01:9AF6: F0        .byte $F0   ; 
- D 0 - I - 0x005B07 01:9AF7: FD        .byte $FD   ; 
- D 0 - I - 0x005B08 01:9AF8: FD        .byte $FD   ; 
- D 0 - I - 0x005B09 01:9AF9: 01        .byte $01   ; 
_off010_9AFA_24:
- D 0 - I - 0x005B0A 01:9AFA: 03        .byte $03   ; 
- D 0 - I - 0x005B0B 01:9AFB: B3        .byte $B3   ; 
- D 0 - I - 0x005B0C 01:9AFC: 18        .byte $18   ; 
- D 0 - I - 0x005B0D 01:9AFD: F9        .byte $F9   ; 
- D 0 - I - 0x005B0E 01:9AFE: F2        .byte $F2   ; 
- D 0 - I - 0x005B0F 01:9AFF: C4        .byte $C4   ; 
- D 0 - I - 0x005B10 01:9B00: FA        .byte $FA   ; 
- D 0 - I - 0x005B11 01:9B01: C6        .byte $C6   ; 
- D 0 - I - 0x005B12 01:9B02: 02        .byte $02   ; 
- D 0 - I - 0x005B13 01:9B03: D0        .byte $D0   ; 
- D 0 - I - 0x005B14 01:9B04: 08        .byte $08   ; 
- D 0 - I - 0x005B15 01:9B05: FA        .byte $FA   ; 
- D 0 - I - 0x005B16 01:9B06: FB        .byte $FB   ; 
- D 0 - I - 0x005B17 01:9B07: FD        .byte $FD   ; 
- D 0 - I - 0x005B18 01:9B08: 01        .byte $01   ; 
_off010_9B09_25:
- D 0 - I - 0x005B19 01:9B09: 03        .byte $03   ; 
- D 0 - I - 0x005B1A 01:9B0A: B7        .byte $B7   ; 
- D 0 - I - 0x005B1B 01:9B0B: 10        .byte $10   ; 
- D 0 - I - 0x005B1C 01:9B0C: F9        .byte $F9   ; 
- D 0 - I - 0x005B1D 01:9B0D: F9        .byte $F9   ; 
- D 0 - I - 0x005B1E 01:9B0E: C4        .byte $C4   ; 
- D 0 - I - 0x005B1F 01:9B0F: 01        .byte $01   ; 
- D 0 - I - 0x005B20 01:9B10: C6        .byte $C6   ; 
- D 0 - I - 0x005B21 01:9B11: 08        .byte $08   ; 
- D 0 - I - 0x005B22 01:9B12: FB        .byte $FB   ; 
- D 0 - I - 0x005B23 01:9B13: FC        .byte $FC   ; 
- D 0 - I - 0x005B24 01:9B14: FD        .byte $FD   ; 
- D 0 - I - 0x005B25 01:9B15: 01        .byte $01   ; 
_off010_9B16_26:
- D 0 - I - 0x005B26 01:9B16: 03        .byte $03   ; 
- D 0 - I - 0x005B27 01:9B17: BB        .byte $BB   ; 
- D 0 - I - 0x005B28 01:9B18: 10        .byte $10   ; 
- D 0 - I - 0x005B29 01:9B19: F0        .byte $F0   ; 
- D 0 - I - 0x005B2A 01:9B1A: F6        .byte $F6   ; 
- D 0 - I - 0x005B2B 01:9B1B: C4        .byte $C4   ; 
- D 0 - I - 0x005B2C 01:9B1C: FE        .byte $FE   ; 
- D 0 - I - 0x005B2D 01:9B1D: C6        .byte $C6   ; 
- D 0 - I - 0x005B2E 01:9B1E: 08        .byte $08   ; 
- D 0 - I - 0x005B2F 01:9B1F: 00        .byte $00   ; 
- D 0 - I - 0x005B30 01:9B20: F6        .byte $F6   ; 
- D 0 - I - 0x005B31 01:9B21: CE        .byte $CE   ; 
- D 0 - I - 0x005B32 01:9B22: 08        .byte $08   ; 
- D 0 - I - 0x005B33 01:9B23: F6        .byte $F6   ; 
- D 0 - I - 0x005B34 01:9B24: F8        .byte $F8   ; 
- D 0 - I - 0x005B35 01:9B25: FD        .byte $FD   ; 
- D 0 - I - 0x005B36 01:9B26: 01        .byte $01   ; 
_off010_9B27_27:
- D 0 - I - 0x005B37 01:9B27: 03        .byte $03   ; 
- D 0 - I - 0x005B38 01:9B28: B3        .byte $B3   ; 
- D 0 - I - 0x005B39 01:9B29: 18        .byte $18   ; 
- D 0 - I - 0x005B3A 01:9B2A: F8        .byte $F8   ; 
- D 0 - I - 0x005B3B 01:9B2B: F1        .byte $F1   ; 
- D 0 - I - 0x005B3C 01:9B2C: C8        .byte $C8   ; 
- D 0 - I - 0x005B3D 01:9B2D: F9        .byte $F9   ; 
- D 0 - I - 0x005B3E 01:9B2E: CA        .byte $CA   ; 
- D 0 - I - 0x005B3F 01:9B2F: 00        .byte $00   ; 
- D 0 - I - 0x005B40 01:9B30: CC        .byte $CC   ; 
- D 0 - I - 0x005B41 01:9B31: 08        .byte $08   ; 
- D 0 - I - 0x005B42 01:9B32: F9        .byte $F9   ; 
- D 0 - I - 0x005B43 01:9B33: F8        .byte $F8   ; 
- D 0 - I - 0x005B44 01:9B34: FF        .byte $FF   ; 
- D 0 - I - 0x005B45 01:9B35: 01        .byte $01   ; 
_off010_9B36_28:
- D 0 - I - 0x005B46 01:9B36: 03        .byte $03   ; 
- D 0 - I - 0x005B47 01:9B37: B7        .byte $B7   ; 
- D 0 - I - 0x005B48 01:9B38: 10        .byte $10   ; 
- D 0 - I - 0x005B49 01:9B39: F8        .byte $F8   ; 
- D 0 - I - 0x005B4A 01:9B3A: F9        .byte $F9   ; 
- D 0 - I - 0x005B4B 01:9B3B: C8        .byte $C8   ; 
- D 0 - I - 0x005B4C 01:9B3C: 01        .byte $01   ; 
- D 0 - I - 0x005B4D 01:9B3D: CA        .byte $CA   ; 
- D 0 - I - 0x005B4E 01:9B3E: 08        .byte $08   ; 
- D 0 - I - 0x005B4F 01:9B3F: F9        .byte $F9   ; 
- D 0 - I - 0x005B50 01:9B40: FC        .byte $FC   ; 
- D 0 - I - 0x005B51 01:9B41: FF        .byte $FF   ; 
- D 0 - I - 0x005B52 01:9B42: 01        .byte $01   ; 
_off010_9B43_29:
- D 0 - I - 0x005B53 01:9B43: 03        .byte $03   ; 
- D 0 - I - 0x005B54 01:9B44: BB        .byte $BB   ; 
- D 0 - I - 0x005B55 01:9B45: 18        .byte $18   ; 
- D 0 - I - 0x005B56 01:9B46: F8        .byte $F8   ; 
- D 0 - I - 0x005B57 01:9B47: ED        .byte $ED   ; 
- D 0 - I - 0x005B58 01:9B48: C8        .byte $C8   ; 
- D 0 - I - 0x005B59 01:9B49: F5        .byte $F5   ; 
- D 0 - I - 0x005B5A 01:9B4A: CA        .byte $CA   ; 
- D 0 - I - 0x005B5B 01:9B4B: FD        .byte $FD   ; 
- D 0 - I - 0x005B5C 01:9B4C: CC        .byte $CC   ; 
- D 0 - I - 0x005B5D 01:9B4D: 08        .byte $08   ; 
- D 0 - I - 0x005B5E 01:9B4E: F9        .byte $F9   ; 
- D 0 - I - 0x005B5F 01:9B4F: F3        .byte $F3   ; 
- D 0 - I - 0x005B60 01:9B50: FF        .byte $FF   ; 
- D 0 - I - 0x005B61 01:9B51: 01        .byte $01   ; 
_off010_9B52_2A:
- D 0 - I - 0x005B62 01:9B52: 03        .byte $03   ; 
- D 0 - I - 0x005B63 01:9B53: 39        .byte $39   ; 
- D 0 - I - 0x005B64 01:9B54: 10        .byte $10   ; 
- D 0 - I - 0x005B65 01:9B55: F9        .byte $F9   ; 
- D 0 - I - 0x005B66 01:9B56: F9        .byte $F9   ; 
- D 0 - I - 0x005B67 01:9B57: 74        .byte $74   ; 
- D 0 - I - 0x005B68 01:9B58: 01        .byte $01   ; 
- D 0 - I - 0x005B69 01:9B59: 76        .byte $76   ; 
- D 0 - I - 0x005B6A 01:9B5A: 08        .byte $08   ; 
- D 0 - I - 0x005B6B 01:9B5B: FD        .byte $FD   ; 
- D 0 - I - 0x005B6C 01:9B5C: FE        .byte $FE   ; 
- D 0 - I - 0x005B6D 01:9B5D: 7D        .byte $7D   ; 
- D 0 - I - 0x005B6E 01:9B5E: 01        .byte $01   ; 
_off010_9B5F_2B:
- D 0 - I - 0x005B6F 01:9B5F: 03        .byte $03   ; 
- D 0 - I - 0x005B70 01:9B60: 39        .byte $39   ; 
- D 0 - I - 0x005B71 01:9B61: 10        .byte $10   ; 
- D 0 - I - 0x005B72 01:9B62: F9        .byte $F9   ; 
- D 0 - I - 0x005B73 01:9B63: F9        .byte $F9   ; 
- D 0 - I - 0x005B74 01:9B64: 78        .byte $78   ; 
- D 0 - I - 0x005B75 01:9B65: 01        .byte $01   ; 
- D 0 - I - 0x005B76 01:9B66: 7A        .byte $7A   ; 
- D 0 - I - 0x005B77 01:9B67: 08        .byte $08   ; 
- D 0 - I - 0x005B78 01:9B68: F9        .byte $F9   ; 
- D 0 - I - 0x005B79 01:9B69: FE        .byte $FE   ; 
- D 0 - I - 0x005B7A 01:9B6A: 7F        .byte $7F   ; 
- D 0 - I - 0x005B7B 01:9B6B: 01        .byte $01   ; 
_off010_9B6C_2C:
- - - - - - 0x005B7C 01:9B6C: 01        .byte $01   ; 
_off010_9B6D_2D:
- D 0 - I - 0x005B7D 01:9B6D: 03        .byte $03   ; 
- D 0 - I - 0x005B7E 01:9B6E: B2        .byte $B2   ; 
- D 0 - I - 0x005B7F 01:9B6F: 08        .byte $08   ; 
- D 0 - I - 0x005B80 01:9B70: F7        .byte $F7   ; 
- D 0 - I - 0x005B81 01:9B71: F9        .byte $F9   ; 
- D 0 - I - 0x005B82 01:9B72: 80        .byte $80   ; 
- D 0 - I - 0x005B83 01:9B73: 08        .byte $08   ; 
- D 0 - I - 0x005B84 01:9B74: F9        .byte $F9   ; 
- D 0 - I - 0x005B85 01:9B75: 01        .byte $01   ; 
- D 0 - I - 0x005B86 01:9B76: 82        .byte $82   ; 
- D 0 - I - 0x005B87 01:9B77: 08        .byte $08   ; 
- D 0 - I - 0x005B88 01:9B78: F8        .byte $F8   ; 
- D 0 - I - 0x005B89 01:9B79: FE        .byte $FE   ; 
- D 0 - I - 0x005B8A 01:9B7A: 7D        .byte $7D   ; 
- D 0 - I - 0x005B8B 01:9B7B: 01        .byte $01   ; 
_off010_9B7C_2E:
- D 0 - I - 0x005B8C 01:9B7C: 03        .byte $03   ; 
- D 0 - I - 0x005B8D 01:9B7D: 1A        .byte $1A   ; 
- D 0 - I - 0x005B8E 01:9B7E: 08        .byte $08   ; 
- D 0 - I - 0x005B8F 01:9B7F: E9        .byte $E9   ; 
- D 0 - I - 0x005B90 01:9B80: 01        .byte $01   ; 
- D 0 - I - 0x005B91 01:9B81: 82        .byte $82   ; 
- D 0 - I - 0x005B92 01:9B82: 08        .byte $08   ; 
- D 0 - I - 0x005B93 01:9B83: F8        .byte $F8   ; 
- D 0 - I - 0x005B94 01:9B84: F9        .byte $F9   ; 
- D 0 - I - 0x005B95 01:9B85: 88        .byte $88   ; 
- D 0 - I - 0x005B96 01:9B86: 08        .byte $08   ; 
- D 0 - I - 0x005B97 01:9B87: F9        .byte $F9   ; 
- D 0 - I - 0x005B98 01:9B88: 01        .byte $01   ; 
- D 0 - I - 0x005B99 01:9B89: 8A        .byte $8A   ; 
- D 0 - I - 0x005B9A 01:9B8A: 08        .byte $08   ; 
- D 0 - I - 0x005B9B 01:9B8B: FE        .byte $FE   ; 
- D 0 - I - 0x005B9C 01:9B8C: FE        .byte $FE   ; 
- D 0 - I - 0x005B9D 01:9B8D: 7D        .byte $7D   ; 
- D 0 - I - 0x005B9E 01:9B8E: 01        .byte $01   ; 
_off010_9B8F_2F:
- D 0 - I - 0x005B9F 01:9B8F: 10        .byte $10   ; 
- D 0 - I - 0x005BA0 01:9B90: 10        .byte $10   ; 
- D 0 - I - 0x005BA1 01:9B91: F1        .byte $F1   ; 
- D 0 - I - 0x005BA2 01:9B92: 3C        .byte $3C   ; 
- D 0 - I - 0x005BA3 01:9B93: 08        .byte $08   ; 
- D 0 - I - 0x005BA4 01:9B94: 00        .byte $00   ; 
- D 0 - I - 0x005BA5 01:9B95: 01        .byte $01   ; 
_off010_9B96_30:
- D 0 - I - 0x005BA6 01:9B96: 10        .byte $10   ; 
- D 0 - I - 0x005BA7 01:9B97: 10        .byte $10   ; 
- D 0 - I - 0x005BA8 01:9B98: F1        .byte $F1   ; 
- D 0 - I - 0x005BA9 01:9B99: 3E        .byte $3E   ; 
- D 0 - I - 0x005BAA 01:9B9A: 08        .byte $08   ; 
- D 0 - I - 0x005BAB 01:9B9B: 18        .byte $18   ; 
- D 0 - I - 0x005BAC 01:9B9C: 01        .byte $01   ; 
_off010_9B9D_31:
- D 0 - I - 0x005BAD 01:9B9D: 03        .byte $03   ; 
- D 0 - I - 0x005BAE 01:9B9E: 1A        .byte $1A   ; 
- D 0 - I - 0x005BAF 01:9B9F: 10        .byte $10   ; 
- D 0 - I - 0x005BB0 01:9BA0: F1        .byte $F1   ; 
- D 0 - I - 0x005BB1 01:9BA1: F9        .byte $F9   ; 
- D 0 - I - 0x005BB2 01:9BA2: A8        .byte $A8   ; 
- D 0 - I - 0x005BB3 01:9BA3: 01        .byte $01   ; 
- D 0 - I - 0x005BB4 01:9BA4: AA        .byte $AA   ; 
- D 0 - I - 0x005BB5 01:9BA5: 08        .byte $08   ; 
- D 0 - I - 0x005BB6 01:9BA6: F8        .byte $F8   ; 
- D 0 - I - 0x005BB7 01:9BA7: FE        .byte $FE   ; 
- D 0 - I - 0x005BB8 01:9BA8: 7D        .byte $7D   ; 
- D 0 - I - 0x005BB9 01:9BA9: 01        .byte $01   ; 
_off010_9BAA_32:
- D 0 - I - 0x005BBA 01:9BAA: 03        .byte $03   ; 
- D 0 - I - 0x005BBB 01:9BAB: B2        .byte $B2   ; 
- D 0 - I - 0x005BBC 01:9BAC: 18        .byte $18   ; 
- D 0 - I - 0x005BBD 01:9BAD: F9        .byte $F9   ; 
- D 0 - I - 0x005BBE 01:9BAE: F1        .byte $F1   ; 
- D 0 - I - 0x005BBF 01:9BAF: 84        .byte $84   ; 
- D 0 - I - 0x005BC0 01:9BB0: F9        .byte $F9   ; 
- D 0 - I - 0x005BC1 01:9BB1: 86        .byte $86   ; 
- D 0 - I - 0x005BC2 01:9BB2: 01        .byte $01   ; 
- D 0 - I - 0x005BC3 01:9BB3: 90        .byte $90   ; 
- D 0 - I - 0x005BC4 01:9BB4: 08        .byte $08   ; 
- D 0 - I - 0x005BC5 01:9BB5: FA        .byte $FA   ; 
- D 0 - I - 0x005BC6 01:9BB6: FA        .byte $FA   ; 
- D 0 - I - 0x005BC7 01:9BB7: 7D        .byte $7D   ; 
- D 0 - I - 0x005BC8 01:9BB8: 01        .byte $01   ; 
_off010_9BB9_33:
- D 0 - I - 0x005BC9 01:9BB9: 03        .byte $03   ; 
- D 0 - I - 0x005BCA 01:9BBA: 1A        .byte $1A   ; 
- D 0 - I - 0x005BCB 01:9BBB: 08        .byte $08   ; 
- D 0 - I - 0x005BCC 01:9BBC: F2        .byte $F2   ; 
- D 0 - I - 0x005BCD 01:9BBD: F1        .byte $F1   ; 
- D 0 - I - 0x005BCE 01:9BBE: 8C        .byte $8C   ; 
- D 0 - I - 0x005BCF 01:9BBF: 10        .byte $10   ; 
- D 0 - I - 0x005BD0 01:9BC0: F4        .byte $F4   ; 
- D 0 - I - 0x005BD1 01:9BC1: F9        .byte $F9   ; 
- D 0 - I - 0x005BD2 01:9BC2: 8E        .byte $8E   ; 
- D 0 - I - 0x005BD3 01:9BC3: 01        .byte $01   ; 
- D 0 - I - 0x005BD4 01:9BC4: A0        .byte $A0   ; 
- D 0 - I - 0x005BD5 01:9BC5: 08        .byte $08   ; 
- D 0 - I - 0x005BD6 01:9BC6: F9        .byte $F9   ; 
- D 0 - I - 0x005BD7 01:9BC7: FA        .byte $FA   ; 
- D 0 - I - 0x005BD8 01:9BC8: 7F        .byte $7F   ; 
- D 0 - I - 0x005BD9 01:9BC9: 01        .byte $01   ; 
_off010_9BCA_34:
- - - - - - 0x005BDA 01:9BCA: 01        .byte $01   ; 
_off010_9BCB_35:
- - - - - - 0x005BDB 01:9BCB: 01        .byte $01   ; 
_off010_9BCC_36:
- D 0 - I - 0x005BDC 01:9BCC: 03        .byte $03   ; 
- D 0 - I - 0x005BDD 01:9BCD: 1A        .byte $1A   ; 
- D 0 - I - 0x005BDE 01:9BCE: 10        .byte $10   ; 
- D 0 - I - 0x005BDF 01:9BCF: FC        .byte $FC   ; 
- D 0 - I - 0x005BE0 01:9BD0: FC        .byte $FC   ; 
- D 0 - I - 0x005BE1 01:9BD1: AC        .byte $AC   ; 
- D 0 - I - 0x005BE2 01:9BD2: 04        .byte $04   ; 
- D 0 - I - 0x005BE3 01:9BD3: AE        .byte $AE   ; 
- D 0 - I - 0x005BE4 01:9BD4: 08        .byte $08   ; 
- D 0 - I - 0x005BE5 01:9BD5: FF        .byte $FF   ; 
- D 0 - I - 0x005BE6 01:9BD6: 00        .byte $00   ; 
- D 0 - I - 0x005BE7 01:9BD7: 7D        .byte $7D   ; 
- D 0 - I - 0x005BE8 01:9BD8: 01        .byte $01   ; 
_off010_9BD9_37:
- D 0 - I - 0x005BE9 01:9BD9: 03        .byte $03   ; 
- D 0 - I - 0x005BEA 01:9BDA: B2        .byte $B2   ; 
- D 0 - I - 0x005BEB 01:9BDB: 18        .byte $18   ; 
- D 0 - I - 0x005BEC 01:9BDC: F8        .byte $F8   ; 
- D 0 - I - 0x005BED 01:9BDD: F1        .byte $F1   ; 
- D 0 - I - 0x005BEE 01:9BDE: 88        .byte $88   ; 
- D 0 - I - 0x005BEF 01:9BDF: F9        .byte $F9   ; 
- D 0 - I - 0x005BF0 01:9BE0: 8A        .byte $8A   ; 
- D 0 - I - 0x005BF1 01:9BE1: 01        .byte $01   ; 
- D 0 - I - 0x005BF2 01:9BE2: 8C        .byte $8C   ; 
- D 0 - I - 0x005BF3 01:9BE3: 08        .byte $08   ; 
- D 0 - I - 0x005BF4 01:9BE4: F9        .byte $F9   ; 
- D 0 - I - 0x005BF5 01:9BE5: F8        .byte $F8   ; 
- D 0 - I - 0x005BF6 01:9BE6: 7F        .byte $7F   ; 
- D 0 - I - 0x005BF7 01:9BE7: 01        .byte $01   ; 
_off010_9BE8_38:
- D 0 - I - 0x005BF8 01:9BE8: 03        .byte $03   ; 
- D 0 - I - 0x005BF9 01:9BE9: 1A        .byte $1A   ; 
- D 0 - I - 0x005BFA 01:9BEA: 20        .byte $20   ; 
- D 0 - I - 0x005BFB 01:9BEB: F8        .byte $F8   ; 
- D 0 - I - 0x005BFC 01:9BEC: E9        .byte $E9   ; 
- D 0 - I - 0x005BFD 01:9BED: 98        .byte $98   ; 
- D 0 - I - 0x005BFE 01:9BEE: F1        .byte $F1   ; 
- D 0 - I - 0x005BFF 01:9BEF: 9A        .byte $9A   ; 
- D 0 - I - 0x005C00 01:9BF0: F9        .byte $F9   ; 
- D 0 - I - 0x005C01 01:9BF1: 9C        .byte $9C   ; 
- D 0 - I - 0x005C02 01:9BF2: 01        .byte $01   ; 
- D 0 - I - 0x005C03 01:9BF3: 9E        .byte $9E   ; 
- D 0 - I - 0x005C04 01:9BF4: 08        .byte $08   ; 
- D 0 - I - 0x005C05 01:9BF5: F9        .byte $F9   ; 
- D 0 - I - 0x005C06 01:9BF6: FE        .byte $FE   ; 
- D 0 - I - 0x005C07 01:9BF7: 7F        .byte $7F   ; 
- D 0 - I - 0x005C08 01:9BF8: 01        .byte $01   ; 
_off010_9BF9_39:
- - - - - - 0x005C09 01:9BF9: 01        .byte $01   ; 
_off010_9BFA_3A:
- - - - - - 0x005C0A 01:9BFA: 01        .byte $01   ; 
_off010_9BFB_3B:
- D 0 - I - 0x005C0B 01:9BFB: 03        .byte $03   ; 
- D 0 - I - 0x005C0C 01:9BFC: 1A        .byte $1A   ; 
- D 0 - I - 0x005C0D 01:9BFD: 10        .byte $10   ; 
- D 0 - I - 0x005C0E 01:9BFE: F8        .byte $F8   ; 
- D 0 - I - 0x005C0F 01:9BFF: F1        .byte $F1   ; 
- D 0 - I - 0x005C10 01:9C00: B0        .byte $B0   ; 
- D 0 - I - 0x005C11 01:9C01: F9        .byte $F9   ; 
- D 0 - I - 0x005C12 01:9C02: B2        .byte $B2   ; 
- D 0 - I - 0x005C13 01:9C03: 08        .byte $08   ; 
- D 0 - I - 0x005C14 01:9C04: F9        .byte $F9   ; 
- D 0 - I - 0x005C15 01:9C05: F8        .byte $F8   ; 
- D 0 - I - 0x005C16 01:9C06: 7F        .byte $7F   ; 
- D 0 - I - 0x005C17 01:9C07: 01        .byte $01   ; 
_off010_9C08_3C:
- - - - - - 0x005C18 01:9C08: 03        .byte $03   ; 
- - - - - - 0x005C19 01:9C09: 47        .byte $47   ; 
- - - - - - 0x005C1A 01:9C0A: 10        .byte $10   ; 
- - - - - - 0x005C1B 01:9C0B: F9        .byte $F9   ; 
- - - - - - 0x005C1C 01:9C0C: F9        .byte $F9   ; 
- - - - - - 0x005C1D 01:9C0D: E8        .byte $E8   ; 
- - - - - - 0x005C1E 01:9C0E: 01        .byte $01   ; 
- - - - - - 0x005C1F 01:9C0F: EA        .byte $EA   ; 
- - - - - - 0x005C20 01:9C10: 08        .byte $08   ; 
- - - - - - 0x005C21 01:9C11: FD        .byte $FD   ; 
- - - - - - 0x005C22 01:9C12: FD        .byte $FD   ; 
- - - - - - 0x005C23 01:9C13: FD        .byte $FD   ; 
- - - - - - 0x005C24 01:9C14: 01        .byte $01   ; 
_off010_9C15_3D:
- - - - - - 0x005C25 01:9C15: 03        .byte $03   ; 
- - - - - - 0x005C26 01:9C16: 47        .byte $47   ; 
- - - - - - 0x005C27 01:9C17: 10        .byte $10   ; 
- - - - - - 0x005C28 01:9C18: F9        .byte $F9   ; 
- - - - - - 0x005C29 01:9C19: F9        .byte $F9   ; 
- - - - - - 0x005C2A 01:9C1A: EC        .byte $EC   ; 
- - - - - - 0x005C2B 01:9C1B: 01        .byte $01   ; 
- - - - - - 0x005C2C 01:9C1C: EE        .byte $EE   ; 
- - - - - - 0x005C2D 01:9C1D: 08        .byte $08   ; 
- - - - - - 0x005C2E 01:9C1E: FE        .byte $FE   ; 
- - - - - - 0x005C2F 01:9C1F: FD        .byte $FD   ; 
- - - - - - 0x005C30 01:9C20: FD        .byte $FD   ; 
- - - - - - 0x005C31 01:9C21: 01        .byte $01   ; 
_off010_9C22_3E:
- D 0 - I - 0x005C32 01:9C22: 03        .byte $03   ; 
- D 0 - I - 0x005C33 01:9C23: 47        .byte $47   ; 
- D 0 - I - 0x005C34 01:9C24: 10        .byte $10   ; 
- D 0 - I - 0x005C35 01:9C25: F9        .byte $F9   ; 
- D 0 - I - 0x005C36 01:9C26: F9        .byte $F9   ; 
- D 0 - I - 0x005C37 01:9C27: F0        .byte $F0   ; 
- D 0 - I - 0x005C38 01:9C28: 01        .byte $01   ; 
- D 0 - I - 0x005C39 01:9C29: F2        .byte $F2   ; 
- D 0 - I - 0x005C3A 01:9C2A: 08        .byte $08   ; 
- D 0 - I - 0x005C3B 01:9C2B: FD        .byte $FD   ; 
- D 0 - I - 0x005C3C 01:9C2C: FD        .byte $FD   ; 
- D 0 - I - 0x005C3D 01:9C2D: FD        .byte $FD   ; 
- D 0 - I - 0x005C3E 01:9C2E: 01        .byte $01   ; 
_off010_9C2F_3F:
- D 0 - I - 0x005C3F 01:9C2F: 03        .byte $03   ; 
- D 0 - I - 0x005C40 01:9C30: 47        .byte $47   ; 
- D 0 - I - 0x005C41 01:9C31: 10        .byte $10   ; 
- D 0 - I - 0x005C42 01:9C32: F9        .byte $F9   ; 
- D 0 - I - 0x005C43 01:9C33: F9        .byte $F9   ; 
- D 0 - I - 0x005C44 01:9C34: F4        .byte $F4   ; 
- D 0 - I - 0x005C45 01:9C35: 01        .byte $01   ; 
- D 0 - I - 0x005C46 01:9C36: F6        .byte $F6   ; 
- D 0 - I - 0x005C47 01:9C37: 08        .byte $08   ; 
- D 0 - I - 0x005C48 01:9C38: FD        .byte $FD   ; 
- D 0 - I - 0x005C49 01:9C39: FD        .byte $FD   ; 
- D 0 - I - 0x005C4A 01:9C3A: FD        .byte $FD   ; 
- D 0 - I - 0x005C4B 01:9C3B: 01        .byte $01   ; 
_off010_9C3C_40:
- D 0 - I - 0x005C4C 01:9C3C: 03        .byte $03   ; 
- D 0 - I - 0x005C4D 01:9C3D: 47        .byte $47   ; 
- D 0 - I - 0x005C4E 01:9C3E: 10        .byte $10   ; 
- D 0 - I - 0x005C4F 01:9C3F: F9        .byte $F9   ; 
- D 0 - I - 0x005C50 01:9C40: FD        .byte $FD   ; 
- D 0 - I - 0x005C51 01:9C41: E6        .byte $E6   ; 
- D 0 - I - 0x005C52 01:9C42: FD        .byte $FD   ; 
- D 0 - I - 0x005C53 01:9C43: FF        .byte $FF   ; 
- D 0 - I - 0x005C54 01:9C44: 01        .byte $01   ; 
_off010_9C45_41:
- D 0 - I - 0x005C55 01:9C45: 03        .byte $03   ; 
- D 0 - I - 0x005C56 01:9C46: 47        .byte $47   ; 
- D 0 - I - 0x005C57 01:9C47: 18        .byte $18   ; 
- D 0 - I - 0x005C58 01:9C48: F9        .byte $F9   ; 
- D 0 - I - 0x005C59 01:9C49: F9        .byte $F9   ; 
- D 0 - I - 0x005C5A 01:9C4A: F8        .byte $F8   ; 
- D 0 - I - 0x005C5B 01:9C4B: 01        .byte $01   ; 
- D 0 - I - 0x005C5C 01:9C4C: FA        .byte $FA   ; 
- D 0 - I - 0x005C5D 01:9C4D: FE        .byte $FE   ; 
- D 0 - I - 0x005C5E 01:9C4E: FF        .byte $FF   ; 
- D 0 - I - 0x005C5F 01:9C4F: 01        .byte $01   ; 
_off010_9C50_42:
- D 0 - I - 0x005C60 01:9C50: 03        .byte $03   ; 
- D 0 - I - 0x005C61 01:9C51: B3        .byte $B3   ; 
- D 0 - I - 0x005C62 01:9C52: 18        .byte $18   ; 
- D 0 - I - 0x005C63 01:9C53: F9        .byte $F9   ; 
- D 0 - I - 0x005C64 01:9C54: F5        .byte $F5   ; 
- D 0 - I - 0x005C65 01:9C55: F0        .byte $F0   ; 
- D 0 - I - 0x005C66 01:9C56: FD        .byte $FD   ; 
- D 0 - I - 0x005C67 01:9C57: F2        .byte $F2   ; 
- D 0 - I - 0x005C68 01:9C58: 04        .byte $04   ; 
- D 0 - I - 0x005C69 01:9C59: F4        .byte $F4   ; 
- D 0 - I - 0x005C6A 01:9C5A: 08        .byte $08   ; 
- D 0 - I - 0x005C6B 01:9C5B: FD        .byte $FD   ; 
- D 0 - I - 0x005C6C 01:9C5C: FD        .byte $FD   ; 
- D 0 - I - 0x005C6D 01:9C5D: FD        .byte $FD   ; 
- D 0 - I - 0x005C6E 01:9C5E: 01        .byte $01   ; 
_off010_9C5F_43:
- - - - - - 0x005C6F 01:9C5F: 01        .byte $01   ; 
_off010_9C60_44:
- D 0 - I - 0x005C70 01:9C60: 03        .byte $03   ; 
- D 0 - I - 0x005C71 01:9C61: B3        .byte $B3   ; 
- D 0 - I - 0x005C72 01:9C62: 10        .byte $10   ; 
- D 0 - I - 0x005C73 01:9C63: F9        .byte $F9   ; 
- D 0 - I - 0x005C74 01:9C64: F6        .byte $F6   ; 
- D 0 - I - 0x005C75 01:9C65: EC        .byte $EC   ; 
- D 0 - I - 0x005C76 01:9C66: FE        .byte $FE   ; 
- D 0 - I - 0x005C77 01:9C67: EE        .byte $EE   ; 
- D 0 - I - 0x005C78 01:9C68: 08        .byte $08   ; 
- D 0 - I - 0x005C79 01:9C69: FD        .byte $FD   ; 
- D 0 - I - 0x005C7A 01:9C6A: F9        .byte $F9   ; 
- D 0 - I - 0x005C7B 01:9C6B: FD        .byte $FD   ; 
- D 0 - I - 0x005C7C 01:9C6C: 01        .byte $01   ; 
_off010_9C6D_45:
- - - - - - 0x005C7D 01:9C6D: 01        .byte $01   ; 
_off010_9C6E_46:
- D 0 - I - 0x005C7E 01:9C6E: 03        .byte $03   ; 
- D 0 - I - 0x005C7F 01:9C6F: B3        .byte $B3   ; 
- D 0 - I - 0x005C80 01:9C70: 08        .byte $08   ; 
- D 0 - I - 0x005C81 01:9C71: F0        .byte $F0   ; 
- D 0 - I - 0x005C82 01:9C72: FE        .byte $FE   ; 
- D 0 - I - 0x005C83 01:9C73: F6        .byte $F6   ; 
- D 0 - I - 0x005C84 01:9C74: 08        .byte $08   ; 
- D 0 - I - 0x005C85 01:9C75: 00        .byte $00   ; 
- D 0 - I - 0x005C86 01:9C76: FE        .byte $FE   ; 
- D 0 - I - 0x005C87 01:9C77: F8        .byte $F8   ; 
- D 0 - I - 0x005C88 01:9C78: 08        .byte $08   ; 
- D 0 - I - 0x005C89 01:9C79: F9        .byte $F9   ; 
- D 0 - I - 0x005C8A 01:9C7A: FD        .byte $FD   ; 
- D 0 - I - 0x005C8B 01:9C7B: FF        .byte $FF   ; 
- D 0 - I - 0x005C8C 01:9C7C: 01        .byte $01   ; 
_off010_9C7D_47:
- - - - - - 0x005C8D 01:9C7D: 01        .byte $01   ; 
_off010_9C7E_48:
- - - - - - 0x005C8E 01:9C7E: 01        .byte $01   ; 
_off010_9C7F_49:
- - - - - - 0x005C8F 01:9C7F: 01        .byte $01   ; 
_off010_9C80_4A:
- D 0 - I - 0x005C90 01:9C80: 03        .byte $03   ; 
- D 0 - I - 0x005C91 01:9C81: 1A        .byte $1A   ; 
- D 0 - I - 0x005C92 01:9C82: 10        .byte $10   ; 
- D 0 - I - 0x005C93 01:9C83: E9        .byte $E9   ; 
- D 0 - I - 0x005C94 01:9C84: F9        .byte $F9   ; 
- D 0 - I - 0x005C95 01:9C85: 84        .byte $84   ; 
- D 0 - I - 0x005C96 01:9C86: 01        .byte $01   ; 
- D 0 - I - 0x005C97 01:9C87: 86        .byte $86   ; 
- D 0 - I - 0x005C98 01:9C88: 08        .byte $08   ; 
- D 0 - I - 0x005C99 01:9C89: F9        .byte $F9   ; 
- D 0 - I - 0x005C9A 01:9C8A: FE        .byte $FE   ; 
- D 0 - I - 0x005C9B 01:9C8B: 80        .byte $80   ; 
- D 0 - I - 0x005C9C 01:9C8C: 08        .byte $08   ; 
- D 0 - I - 0x005C9D 01:9C8D: F1        .byte $F1   ; 
- D 0 - I - 0x005C9E 01:9C8E: FD        .byte $FD   ; 
- D 0 - I - 0x005C9F 01:9C8F: 7D        .byte $7D   ; 
- D 0 - I - 0x005CA0 01:9C90: 01        .byte $01   ; 
_off010_9C91_4B:
- D 0 - I - 0x005CA1 01:9C91: 03        .byte $03   ; 
- D 0 - I - 0x005CA2 01:9C92: 1A        .byte $1A   ; 
- D 0 - I - 0x005CA3 01:9C93: 10        .byte $10   ; 
- D 0 - I - 0x005CA4 01:9C94: F9        .byte $F9   ; 
- D 0 - I - 0x005CA5 01:9C95: F9        .byte $F9   ; 
- D 0 - I - 0x005CA6 01:9C96: B4        .byte $B4   ; 
- D 0 - I - 0x005CA7 01:9C97: 01        .byte $01   ; 
- D 0 - I - 0x005CA8 01:9C98: B6        .byte $B6   ; 
- D 0 - I - 0x005CA9 01:9C99: 08        .byte $08   ; 
- D 0 - I - 0x005CAA 01:9C9A: F8        .byte $F8   ; 
- D 0 - I - 0x005CAB 01:9C9B: FD        .byte $FD   ; 
- D 0 - I - 0x005CAC 01:9C9C: 7D        .byte $7D   ; 
- D 0 - I - 0x005CAD 01:9C9D: 01        .byte $01   ; 
_off010_9C9E_4C:
- - - - - - 0x005CAE 01:9C9E: 01        .byte $01   ; 
_off010_9C9F_4D:
- - - - - - 0x005CAF 01:9C9F: 01        .byte $01   ; 
_off010_9CA0_4E:
- D 0 - I - 0x005CB0 01:9CA0: 03        .byte $03   ; 
- D 0 - I - 0x005CB1 01:9CA1: 1A        .byte $1A   ; 
- D 0 - I - 0x005CB2 01:9CA2: 10        .byte $10   ; 
- D 0 - I - 0x005CB3 01:9CA3: EE        .byte $EE   ; 
- D 0 - I - 0x005CB4 01:9CA4: EF        .byte $EF   ; 
- D 0 - I - 0x005CB5 01:9CA5: 90        .byte $90   ; 
- D 0 - I - 0x005CB6 01:9CA6: F7        .byte $F7   ; 
- D 0 - I - 0x005CB7 01:9CA7: 92        .byte $92   ; 
- D 0 - I - 0x005CB8 01:9CA8: 08        .byte $08   ; 
- D 0 - I - 0x005CB9 01:9CA9: F6        .byte $F6   ; 
- D 0 - I - 0x005CBA 01:9CAA: FF        .byte $FF   ; 
- D 0 - I - 0x005CBB 01:9CAB: 96        .byte $96   ; 
- D 0 - I - 0x005CBC 01:9CAC: 08        .byte $08   ; 
- D 0 - I - 0x005CBD 01:9CAD: FE        .byte $FE   ; 
- D 0 - I - 0x005CBE 01:9CAE: F7        .byte $F7   ; 
- D 0 - I - 0x005CBF 01:9CAF: 94        .byte $94   ; 
- D 0 - I - 0x005CC0 01:9CB0: 08        .byte $08   ; 
- D 0 - I - 0x005CC1 01:9CB1: EF        .byte $EF   ; 
- D 0 - I - 0x005CC2 01:9CB2: F4        .byte $F4   ; 
- D 0 - I - 0x005CC3 01:9CB3: 7F        .byte $7F   ; 
- D 0 - I - 0x005CC4 01:9CB4: 01        .byte $01   ; 
_off010_9CB5_4F:
- D 0 - I - 0x005CC5 01:9CB5: 03        .byte $03   ; 
- D 0 - I - 0x005CC6 01:9CB6: 1A        .byte $1A   ; 
- D 0 - I - 0x005CC7 01:9CB7: 10        .byte $10   ; 
- D 0 - I - 0x005CC8 01:9CB8: F9        .byte $F9   ; 
- D 0 - I - 0x005CC9 01:9CB9: F9        .byte $F9   ; 
- D 0 - I - 0x005CCA 01:9CBA: B8        .byte $B8   ; 
- D 0 - I - 0x005CCB 01:9CBB: 01        .byte $01   ; 
- D 0 - I - 0x005CCC 01:9CBC: BA        .byte $BA   ; 
- D 0 - I - 0x005CCD 01:9CBD: 08        .byte $08   ; 
- D 0 - I - 0x005CCE 01:9CBE: FA        .byte $FA   ; 
- D 0 - I - 0x005CCF 01:9CBF: FA        .byte $FA   ; 
- D 0 - I - 0x005CD0 01:9CC0: 7D        .byte $7D   ; 
- D 0 - I - 0x005CD1 01:9CC1: 01        .byte $01   ; 
_off010_9CC2_50:
- - - - - - 0x005CD2 01:9CC2: 01        .byte $01   ; 
_off010_9CC3_51:
- - - - - - 0x005CD3 01:9CC3: 01        .byte $01   ; 
_off010_9CC4_52:
- D 0 - I - 0x005CD4 01:9CC4: 03        .byte $03   ; 
- D 0 - I - 0x005CD5 01:9CC5: 1A        .byte $1A   ; 
- D 0 - I - 0x005CD6 01:9CC6: 18        .byte $18   ; 
- D 0 - I - 0x005CD7 01:9CC7: F8        .byte $F8   ; 
- D 0 - I - 0x005CD8 01:9CC8: F1        .byte $F1   ; 
- D 0 - I - 0x005CD9 01:9CC9: A2        .byte $A2   ; 
- D 0 - I - 0x005CDA 01:9CCA: F9        .byte $F9   ; 
- D 0 - I - 0x005CDB 01:9CCB: A4        .byte $A4   ; 
- D 0 - I - 0x005CDC 01:9CCC: 01        .byte $01   ; 
- D 0 - I - 0x005CDD 01:9CCD: A6        .byte $A6   ; 
- D 0 - I - 0x005CDE 01:9CCE: 08        .byte $08   ; 
- D 0 - I - 0x005CDF 01:9CCF: F9        .byte $F9   ; 
- D 0 - I - 0x005CE0 01:9CD0: F2        .byte $F2   ; 
- D 0 - I - 0x005CE1 01:9CD1: 7F        .byte $7F   ; 
- D 0 - I - 0x005CE2 01:9CD2: 01        .byte $01   ; 
_off010_9CD3_53:
- D 0 - I - 0x005CE3 01:9CD3: 03        .byte $03   ; 
- D 0 - I - 0x005CE4 01:9CD4: 1A        .byte $1A   ; 
- D 0 - I - 0x005CE5 01:9CD5: 10        .byte $10   ; 
- D 0 - I - 0x005CE6 01:9CD6: F8        .byte $F8   ; 
- D 0 - I - 0x005CE7 01:9CD7: F9        .byte $F9   ; 
- D 0 - I - 0x005CE8 01:9CD8: BC        .byte $BC   ; 
- D 0 - I - 0x005CE9 01:9CD9: 01        .byte $01   ; 
- D 0 - I - 0x005CEA 01:9CDA: BE        .byte $BE   ; 
- D 0 - I - 0x005CEB 01:9CDB: 08        .byte $08   ; 
- D 0 - I - 0x005CEC 01:9CDC: F9        .byte $F9   ; 
- D 0 - I - 0x005CED 01:9CDD: F8        .byte $F8   ; 
- D 0 - I - 0x005CEE 01:9CDE: 7F        .byte $7F   ; 
- D 0 - I - 0x005CEF 01:9CDF: 01        .byte $01   ; 
_off010_9CE0_54:
- D 0 - I - 0x005CF0 01:9CE0: 03        .byte $03   ; 
- D 0 - I - 0x005CF1 01:9CE1: B3        .byte $B3   ; 
- D 0 - I - 0x005CF2 01:9CE2: 18        .byte $18   ; 
- D 0 - I - 0x005CF3 01:9CE3: F9        .byte $F9   ; 
- D 0 - I - 0x005CF4 01:9CE4: FB        .byte $FB   ; 
- D 0 - I - 0x005CF5 01:9CE5: CE        .byte $CE   ; 
- D 0 - I - 0x005CF6 01:9CE6: 03        .byte $03   ; 
- D 0 - I - 0x005CF7 01:9CE7: D8        .byte $D8   ; 
- D 0 - I - 0x005CF8 01:9CE8: 0B        .byte $0B   ; 
- D 0 - I - 0x005CF9 01:9CE9: DA        .byte $DA   ; 
- D 0 - I - 0x005CFA 01:9CEA: 08        .byte $08   ; 
- D 0 - I - 0x005CFB 01:9CEB: F9        .byte $F9   ; 
- D 0 - I - 0x005CFC 01:9CEC: FD        .byte $FD   ; 
- D 0 - I - 0x005CFD 01:9CED: FD        .byte $FD   ; 
- D 0 - I - 0x005CFE 01:9CEE: 01        .byte $01   ; 
_off010_9CEF_55:
- D 0 - I - 0x005CFF 01:9CEF: 03        .byte $03   ; 
- D 0 - I - 0x005D00 01:9CF0: B7        .byte $B7   ; 
- D 0 - I - 0x005D01 01:9CF1: 08        .byte $08   ; 
- D 0 - I - 0x005D02 01:9CF2: F9        .byte $F9   ; 
- D 0 - I - 0x005D03 01:9CF3: 01        .byte $01   ; 
- D 0 - I - 0x005D04 01:9CF4: CE        .byte $CE   ; 
- D 0 - I - 0x005D05 01:9CF5: 08        .byte $08   ; 
- D 0 - I - 0x005D06 01:9CF6: FD        .byte $FD   ; 
- D 0 - I - 0x005D07 01:9CF7: F9        .byte $F9   ; 
- D 0 - I - 0x005D08 01:9CF8: CC        .byte $CC   ; 
- D 0 - I - 0x005D09 01:9CF9: 08        .byte $08   ; 
- D 0 - I - 0x005D0A 01:9CFA: 09        .byte $09   ; 
- D 0 - I - 0x005D0B 01:9CFB: 01        .byte $01   ; 
- D 0 - I - 0x005D0C 01:9CFC: D0        .byte $D0   ; 
- D 0 - I - 0x005D0D 01:9CFD: 08        .byte $08   ; 
- D 0 - I - 0x005D0E 01:9CFE: FD        .byte $FD   ; 
- D 0 - I - 0x005D0F 01:9CFF: F8        .byte $F8   ; 
- D 0 - I - 0x005D10 01:9D00: FD        .byte $FD   ; 
- D 0 - I - 0x005D11 01:9D01: 01        .byte $01   ; 
_off010_9D02_56:
- D 0 - I - 0x005D12 01:9D02: 03        .byte $03   ; 
- D 0 - I - 0x005D13 01:9D03: BB        .byte $BB   ; 
- D 0 - I - 0x005D14 01:9D04: 08        .byte $08   ; 
- D 0 - I - 0x005D15 01:9D05: FB        .byte $FB   ; 
- D 0 - I - 0x005D16 01:9D06: F9        .byte $F9   ; 
- D 0 - I - 0x005D17 01:9D07: D0        .byte $D0   ; 
- D 0 - I - 0x005D18 01:9D08: 08        .byte $08   ; 
- D 0 - I - 0x005D19 01:9D09: 03        .byte $03   ; 
- D 0 - I - 0x005D1A 01:9D0A: 01        .byte $01   ; 
- D 0 - I - 0x005D1B 01:9D0B: D2        .byte $D2   ; 
- D 0 - I - 0x005D1C 01:9D0C: 08        .byte $08   ; 
- D 0 - I - 0x005D1D 01:9D0D: FD        .byte $FD   ; 
- D 0 - I - 0x005D1E 01:9D0E: F8        .byte $F8   ; 
- D 0 - I - 0x005D1F 01:9D0F: FF        .byte $FF   ; 
- D 0 - I - 0x005D20 01:9D10: 01        .byte $01   ; 
_off010_9D11_57:
- - - - - - 0x005D21 01:9D11: 01        .byte $01   ; 
_off010_9D12_58:
- - - - - - 0x005D22 01:9D12: 01        .byte $01   ; 
_off010_9D13_59:
- D 0 - I - 0x005D23 01:9D13: 03        .byte $03   ; 
- D 0 - I - 0x005D24 01:9D14: B3        .byte $B3   ; 
- D 0 - I - 0x005D25 01:9D15: 18        .byte $18   ; 
- D 0 - I - 0x005D26 01:9D16: F9        .byte $F9   ; 
- D 0 - I - 0x005D27 01:9D17: FB        .byte $FB   ; 
- D 0 - I - 0x005D28 01:9D18: D2        .byte $D2   ; 
- D 0 - I - 0x005D29 01:9D19: 03        .byte $03   ; 
- D 0 - I - 0x005D2A 01:9D1A: D4        .byte $D4   ; 
- D 0 - I - 0x005D2B 01:9D1B: 0B        .byte $0B   ; 
- D 0 - I - 0x005D2C 01:9D1C: D6        .byte $D6   ; 
- D 0 - I - 0x005D2D 01:9D1D: 08        .byte $08   ; 
- D 0 - I - 0x005D2E 01:9D1E: FE        .byte $FE   ; 
- D 0 - I - 0x005D2F 01:9D1F: FB        .byte $FB   ; 
- D 0 - I - 0x005D30 01:9D20: FF        .byte $FF   ; 
- D 0 - I - 0x005D31 01:9D21: 01        .byte $01   ; 
_off010_9D22_5A:
- D 0 - I - 0x005D32 01:9D22: 03        .byte $03   ; 
- D 0 - I - 0x005D33 01:9D23: B7        .byte $B7   ; 
- D 0 - I - 0x005D34 01:9D24: 08        .byte $08   ; 
- D 0 - I - 0x005D35 01:9D25: EF        .byte $EF   ; 
- D 0 - I - 0x005D36 01:9D26: 02        .byte $02   ; 
- D 0 - I - 0x005D37 01:9D27: D6        .byte $D6   ; 
- D 0 - I - 0x005D38 01:9D28: 10        .byte $10   ; 
- D 0 - I - 0x005D39 01:9D29: FF        .byte $FF   ; 
- D 0 - I - 0x005D3A 01:9D2A: FA        .byte $FA   ; 
- D 0 - I - 0x005D3B 01:9D2B: D2        .byte $D2   ; 
- D 0 - I - 0x005D3C 01:9D2C: 02        .byte $02   ; 
- D 0 - I - 0x005D3D 01:9D2D: D4        .byte $D4   ; 
- D 0 - I - 0x005D3E 01:9D2E: 08        .byte $08   ; 
- D 0 - I - 0x005D3F 01:9D2F: FE        .byte $FE   ; 
- D 0 - I - 0x005D40 01:9D30: F9        .byte $F9   ; 
- D 0 - I - 0x005D41 01:9D31: FF        .byte $FF   ; 
- D 0 - I - 0x005D42 01:9D32: 01        .byte $01   ; 
_off010_9D33_5B:
- D 0 - I - 0x005D43 01:9D33: 03        .byte $03   ; 
- D 0 - I - 0x005D44 01:9D34: BB        .byte $BB   ; 
- D 0 - I - 0x005D45 01:9D35: 20        .byte $20   ; 
- D 0 - I - 0x005D46 01:9D36: FB        .byte $FB   ; 
- D 0 - I - 0x005D47 01:9D37: F9        .byte $F9   ; 
- D 0 - I - 0x005D48 01:9D38: D4        .byte $D4   ; 
- D 0 - I - 0x005D49 01:9D39: 01        .byte $01   ; 
- D 0 - I - 0x005D4A 01:9D3A: D6        .byte $D6   ; 
- D 0 - I - 0x005D4B 01:9D3B: 09        .byte $09   ; 
- D 0 - I - 0x005D4C 01:9D3C: D8        .byte $D8   ; 
- D 0 - I - 0x005D4D 01:9D3D: 11        .byte $11   ; 
- D 0 - I - 0x005D4E 01:9D3E: DA        .byte $DA   ; 
- D 0 - I - 0x005D4F 01:9D3F: 08        .byte $08   ; 
- D 0 - I - 0x005D50 01:9D40: 00        .byte $00   ; 
- D 0 - I - 0x005D51 01:9D41: 00        .byte $00   ; 
- D 0 - I - 0x005D52 01:9D42: FF        .byte $FF   ; 
- D 0 - I - 0x005D53 01:9D43: 01        .byte $01   ; 
_off010_9D44_5C:
- - - - - - 0x005D54 01:9D44: 01        .byte $01   ; 
_off010_9D45_5D:
- - - - - - 0x005D55 01:9D45: 01        .byte $01   ; 
_off010_9D46_5E:
- D 0 - I - 0x005D56 01:9D46: 03        .byte $03   ; 
- D 0 - I - 0x005D57 01:9D47: B3        .byte $B3   ; 
- D 0 - I - 0x005D58 01:9D48: 10        .byte $10   ; 
- D 0 - I - 0x005D59 01:9D49: F0        .byte $F0   ; 
- D 0 - I - 0x005D5A 01:9D4A: F9        .byte $F9   ; 
- D 0 - I - 0x005D5B 01:9D4B: DC        .byte $DC   ; 
- D 0 - I - 0x005D5C 01:9D4C: 01        .byte $01   ; 
- D 0 - I - 0x005D5D 01:9D4D: DE        .byte $DE   ; 
- D 0 - I - 0x005D5E 01:9D4E: 10        .byte $10   ; 
- D 0 - I - 0x005D5F 01:9D4F: F8        .byte $F8   ; 
- D 0 - I - 0x005D60 01:9D50: F9        .byte $F9   ; 
- D 0 - I - 0x005D61 01:9D51: E0        .byte $E0   ; 
- D 0 - I - 0x005D62 01:9D52: 01        .byte $01   ; 
- D 0 - I - 0x005D63 01:9D53: E2        .byte $E2   ; 
- D 0 - I - 0x005D64 01:9D54: 08        .byte $08   ; 
- D 0 - I - 0x005D65 01:9D55: F9        .byte $F9   ; 
- D 0 - I - 0x005D66 01:9D56: F9        .byte $F9   ; 
- D 0 - I - 0x005D67 01:9D57: FF        .byte $FF   ; 
- D 0 - I - 0x005D68 01:9D58: 01        .byte $01   ; 
_off010_9D59_5F:
- D 0 - I - 0x005D69 01:9D59: 03        .byte $03   ; 
- D 0 - I - 0x005D6A 01:9D5A: B7        .byte $B7   ; 
- D 0 - I - 0x005D6B 01:9D5B: 18        .byte $18   ; 
- D 0 - I - 0x005D6C 01:9D5C: F6        .byte $F6   ; 
- D 0 - I - 0x005D6D 01:9D5D: F9        .byte $F9   ; 
- D 0 - I - 0x005D6E 01:9D5E: D8        .byte $D8   ; 
- D 0 - I - 0x005D6F 01:9D5F: 01        .byte $01   ; 
- D 0 - I - 0x005D70 01:9D60: DA        .byte $DA   ; 
- D 0 - I - 0x005D71 01:9D61: 09        .byte $09   ; 
- D 0 - I - 0x005D72 01:9D62: DC        .byte $DC   ; 
- D 0 - I - 0x005D73 01:9D63: 08        .byte $08   ; 
- D 0 - I - 0x005D74 01:9D64: FC        .byte $FC   ; 
- D 0 - I - 0x005D75 01:9D65: FD        .byte $FD   ; 
- D 0 - I - 0x005D76 01:9D66: FF        .byte $FF   ; 
- D 0 - I - 0x005D77 01:9D67: 01        .byte $01   ; 
_off010_9D68_60:
- D 0 - I - 0x005D78 01:9D68: 03        .byte $03   ; 
- D 0 - I - 0x005D79 01:9D69: BB        .byte $BB   ; 
- D 0 - I - 0x005D7A 01:9D6A: 18        .byte $18   ; 
- D 0 - I - 0x005D7B 01:9D6B: F8        .byte $F8   ; 
- D 0 - I - 0x005D7C 01:9D6C: FA        .byte $FA   ; 
- D 0 - I - 0x005D7D 01:9D6D: DC        .byte $DC   ; 
- D 0 - I - 0x005D7E 01:9D6E: 02        .byte $02   ; 
- D 0 - I - 0x005D7F 01:9D6F: DE        .byte $DE   ; 
- D 0 - I - 0x005D80 01:9D70: 0A        .byte $0A   ; 
- D 0 - I - 0x005D81 01:9D71: EC        .byte $EC   ; 
- D 0 - I - 0x005D82 01:9D72: 08        .byte $08   ; 
- D 0 - I - 0x005D83 01:9D73: 01        .byte $01   ; 
- D 0 - I - 0x005D84 01:9D74: 01        .byte $01   ; 
- D 0 - I - 0x005D85 01:9D75: FD        .byte $FD   ; 
- D 0 - I - 0x005D86 01:9D76: 01        .byte $01   ; 
_off010_9D77_61:
- - - - - - 0x005D87 01:9D77: 01        .byte $01   ; 
_off010_9D78_62:
- - - - - - 0x005D88 01:9D78: 01        .byte $01   ; 
_off010_9D79_63:
- D 0 - I - 0x005D89 01:9D79: 03        .byte $03   ; 
- D 0 - I - 0x005D8A 01:9D7A: B7        .byte $B7   ; 
- D 0 - I - 0x005D8B 01:9D7B: 10        .byte $10   ; 
- D 0 - I - 0x005D8C 01:9D7C: F9        .byte $F9   ; 
- D 0 - I - 0x005D8D 01:9D7D: FC        .byte $FC   ; 
- D 0 - I - 0x005D8E 01:9D7E: E0        .byte $E0   ; 
- D 0 - I - 0x005D8F 01:9D7F: 04        .byte $04   ; 
- D 0 - I - 0x005D90 01:9D80: E2        .byte $E2   ; 
- D 0 - I - 0x005D91 01:9D81: 08        .byte $08   ; 
- D 0 - I - 0x005D92 01:9D82: FE        .byte $FE   ; 
- D 0 - I - 0x005D93 01:9D83: 00        .byte $00   ; 
- D 0 - I - 0x005D94 01:9D84: FD        .byte $FD   ; 
- D 0 - I - 0x005D95 01:9D85: 01        .byte $01   ; 
_off010_9D86_64:
- D 0 - I - 0x005D96 01:9D86: 03        .byte $03   ; 
- D 0 - I - 0x005D97 01:9D87: BB        .byte $BB   ; 
- D 0 - I - 0x005D98 01:9D88: 18        .byte $18   ; 
- D 0 - I - 0x005D99 01:9D89: F9        .byte $F9   ; 
- D 0 - I - 0x005D9A 01:9D8A: F9        .byte $F9   ; 
- D 0 - I - 0x005D9B 01:9D8B: E0        .byte $E0   ; 
- D 0 - I - 0x005D9C 01:9D8C: 01        .byte $01   ; 
- D 0 - I - 0x005D9D 01:9D8D: E2        .byte $E2   ; 
- D 0 - I - 0x005D9E 01:9D8E: 09        .byte $09   ; 
- D 0 - I - 0x005D9F 01:9D8F: EC        .byte $EC   ; 
- D 0 - I - 0x005DA0 01:9D90: 08        .byte $08   ; 
- D 0 - I - 0x005DA1 01:9D91: F8        .byte $F8   ; 
- D 0 - I - 0x005DA2 01:9D92: FE        .byte $FE   ; 
- D 0 - I - 0x005DA3 01:9D93: FD        .byte $FD   ; 
- D 0 - I - 0x005DA4 01:9D94: 01        .byte $01   ; 
_off010_9D95_65:
- D 0 - I - 0x005DA5 01:9D95: 03        .byte $03   ; 
- D 0 - I - 0x005DA6 01:9D96: B7        .byte $B7   ; 
- D 0 - I - 0x005DA7 01:9D97: 10        .byte $10   ; 
- D 0 - I - 0x005DA8 01:9D98: F9        .byte $F9   ; 
- D 0 - I - 0x005DA9 01:9D99: F9        .byte $F9   ; 
- D 0 - I - 0x005DAA 01:9D9A: E4        .byte $E4   ; 
- D 0 - I - 0x005DAB 01:9D9B: 01        .byte $01   ; 
- D 0 - I - 0x005DAC 01:9D9C: E6        .byte $E6   ; 
- D 0 - I - 0x005DAD 01:9D9D: 08        .byte $08   ; 
- D 0 - I - 0x005DAE 01:9D9E: FD        .byte $FD   ; 
- D 0 - I - 0x005DAF 01:9D9F: FE        .byte $FE   ; 
- D 0 - I - 0x005DB0 01:9DA0: FD        .byte $FD   ; 
- D 0 - I - 0x005DB1 01:9DA1: 01        .byte $01   ; 
_off010_9DA2_66:
- D 0 - I - 0x005DB2 01:9DA2: 03        .byte $03   ; 
- D 0 - I - 0x005DB3 01:9DA3: BB        .byte $BB   ; 
- D 0 - I - 0x005DB4 01:9DA4: 10        .byte $10   ; 
- D 0 - I - 0x005DB5 01:9DA5: F9        .byte $F9   ; 
- D 0 - I - 0x005DB6 01:9DA6: F9        .byte $F9   ; 
- D 0 - I - 0x005DB7 01:9DA7: E4        .byte $E4   ; 
- D 0 - I - 0x005DB8 01:9DA8: 01        .byte $01   ; 
- D 0 - I - 0x005DB9 01:9DA9: E6        .byte $E6   ; 
- D 0 - I - 0x005DBA 01:9DAA: 08        .byte $08   ; 
- D 0 - I - 0x005DBB 01:9DAB: F4        .byte $F4   ; 
- D 0 - I - 0x005DBC 01:9DAC: 09        .byte $09   ; 
- D 0 - I - 0x005DBD 01:9DAD: EC        .byte $EC   ; 
- D 0 - I - 0x005DBE 01:9DAE: 08        .byte $08   ; 
- D 0 - I - 0x005DBF 01:9DAF: F8        .byte $F8   ; 
- D 0 - I - 0x005DC0 01:9DB0: FA        .byte $FA   ; 
- D 0 - I - 0x005DC1 01:9DB1: FD        .byte $FD   ; 
- D 0 - I - 0x005DC2 01:9DB2: 01        .byte $01   ; 
_off010_9DB3_67:
- D 0 - I - 0x005DC3 01:9DB3: 03        .byte $03   ; 
- D 0 - I - 0x005DC4 01:9DB4: B7        .byte $B7   ; 
- D 0 - I - 0x005DC5 01:9DB5: 10        .byte $10   ; 
- D 0 - I - 0x005DC6 01:9DB6: FC        .byte $FC   ; 
- D 0 - I - 0x005DC7 01:9DB7: F9        .byte $F9   ; 
- D 0 - I - 0x005DC8 01:9DB8: E8        .byte $E8   ; 
- D 0 - I - 0x005DC9 01:9DB9: 01        .byte $01   ; 
- D 0 - I - 0x005DCA 01:9DBA: EA        .byte $EA   ; 
- D 0 - I - 0x005DCB 01:9DBB: 08        .byte $08   ; 
- D 0 - I - 0x005DCC 01:9DBC: FF        .byte $FF   ; 
- D 0 - I - 0x005DCD 01:9DBD: FE        .byte $FE   ; 
- D 0 - I - 0x005DCE 01:9DBE: FD        .byte $FD   ; 
- D 0 - I - 0x005DCF 01:9DBF: 01        .byte $01   ; 
_off010_9DC0_68:
- D 0 - I - 0x005DD0 01:9DC0: 03        .byte $03   ; 
- D 0 - I - 0x005DD1 01:9DC1: BB        .byte $BB   ; 
- D 0 - I - 0x005DD2 01:9DC2: 08        .byte $08   ; 
- D 0 - I - 0x005DD3 01:9DC3: F9        .byte $F9   ; 
- D 0 - I - 0x005DD4 01:9DC4: F9        .byte $F9   ; 
- D 0 - I - 0x005DD5 01:9DC5: E8        .byte $E8   ; 
- D 0 - I - 0x005DD6 01:9DC6: 08        .byte $08   ; 
- D 0 - I - 0x005DD7 01:9DC7: FB        .byte $FB   ; 
- D 0 - I - 0x005DD8 01:9DC8: 01        .byte $01   ; 
- D 0 - I - 0x005DD9 01:9DC9: EA        .byte $EA   ; 
- D 0 - I - 0x005DDA 01:9DCA: 08        .byte $08   ; 
- D 0 - I - 0x005DDB 01:9DCB: FA        .byte $FA   ; 
- D 0 - I - 0x005DDC 01:9DCC: F8        .byte $F8   ; 
- D 0 - I - 0x005DDD 01:9DCD: FF        .byte $FF   ; 
- D 0 - I - 0x005DDE 01:9DCE: 01        .byte $01   ; 
_off010_9DCF_69:
- - - - - - 0x005DDF 01:9DCF: 03        .byte $03   ; 
- - - - - - 0x005DE0 01:9DD0: 2B        .byte $2B   ; 
- - - - - - 0x005DE1 01:9DD1: 10        .byte $10   ; 
- - - - - - 0x005DE2 01:9DD2: F1        .byte $F1   ; 
- - - - - - 0x005DE3 01:9DD3: F9        .byte $F9   ; 
- - - - - - 0x005DE4 01:9DD4: DA        .byte $DA   ; 
- - - - - - 0x005DE5 01:9DD5: 01        .byte $01   ; 
- - - - - - 0x005DE6 01:9DD6: DC        .byte $DC   ; 
- - - - - - 0x005DE7 01:9DD7: 10        .byte $10   ; 
- - - - - - 0x005DE8 01:9DD8: 01        .byte $01   ; 
- - - - - - 0x005DE9 01:9DD9: F9        .byte $F9   ; 
- - - - - - 0x005DEA 01:9DDA: E0        .byte $E0   ; 
- - - - - - 0x005DEB 01:9DDB: 01        .byte $01   ; 
- - - - - - 0x005DEC 01:9DDC: E2        .byte $E2   ; 
- - - - - - 0x005DED 01:9DDD: 08        .byte $08   ; 
- - - - - - 0x005DEE 01:9DDE: F6        .byte $F6   ; 
- - - - - - 0x005DEF 01:9DDF: FF        .byte $FF   ; 
- - - - - - 0x005DF0 01:9DE0: FD        .byte $FD   ; 
- - - - - - 0x005DF1 01:9DE1: 01        .byte $01   ; 
_off010_9DE2_6A:
- - - - - - 0x005DF2 01:9DE2: 03        .byte $03   ; 
- - - - - - 0x005DF3 01:9DE3: 2B        .byte $2B   ; 
- - - - - - 0x005DF4 01:9DE4: 10        .byte $10   ; 
- - - - - - 0x005DF5 01:9DE5: FB        .byte $FB   ; 
- - - - - - 0x005DF6 01:9DE6: F5        .byte $F5   ; 
- - - - - - 0x005DF7 01:9DE7: E4        .byte $E4   ; 
- - - - - - 0x005DF8 01:9DE8: FD        .byte $FD   ; 
- - - - - - 0x005DF9 01:9DE9: E6        .byte $E6   ; 
- - - - - - 0x005DFA 01:9DEA: 08        .byte $08   ; 
- - - - - - 0x005DFB 01:9DEB: F7        .byte $F7   ; 
- - - - - - 0x005DFC 01:9DEC: F4        .byte $F4   ; 
- - - - - - 0x005DFD 01:9DED: FD        .byte $FD   ; 
- - - - - - 0x005DFE 01:9DEE: 01        .byte $01   ; 
_off010_9DEF_6B:
- - - - - - 0x005DFF 01:9DEF: 03        .byte $03   ; 
- - - - - - 0x005E00 01:9DF0: 2B        .byte $2B   ; 
- - - - - - 0x005E01 01:9DF1: 18        .byte $18   ; 
- - - - - - 0x005E02 01:9DF2: F9        .byte $F9   ; 
- - - - - - 0x005E03 01:9DF3: F1        .byte $F1   ; 
- - - - - - 0x005E04 01:9DF4: E8        .byte $E8   ; 
- - - - - - 0x005E05 01:9DF5: F9        .byte $F9   ; 
- - - - - - 0x005E06 01:9DF6: EA        .byte $EA   ; 
- - - - - - 0x005E07 01:9DF7: 01        .byte $01   ; 
- - - - - - 0x005E08 01:9DF8: DE        .byte $DE   ; 
- - - - - - 0x005E09 01:9DF9: 08        .byte $08   ; 
- - - - - - 0x005E0A 01:9DFA: FB        .byte $FB   ; 
- - - - - - 0x005E0B 01:9DFB: EE        .byte $EE   ; 
- - - - - - 0x005E0C 01:9DFC: FF        .byte $FF   ; 
- - - - - - 0x005E0D 01:9DFD: 01        .byte $01   ; 
_off010_9DFE_6C:
- D 0 - I - 0x005E0E 01:9DFE: 03        .byte $03   ; 
- D 0 - I - 0x005E0F 01:9DFF: 17        .byte $17   ; 
- D 0 - I - 0x005E10 01:9E00: 08        .byte $08   ; 
- D 0 - I - 0x005E11 01:9E01: 07        .byte $07   ; 
- D 0 - I - 0x005E12 01:9E02: FC        .byte $FC   ; 
- D 0 - I - 0x005E13 01:9E03: C6        .byte $C6   ; 
- D 0 - I - 0x005E14 01:9E04: 18        .byte $18   ; 
- D 0 - I - 0x005E15 01:9E05: F7        .byte $F7   ; 
- D 0 - I - 0x005E16 01:9E06: F4        .byte $F4   ; 
- D 0 - I - 0x005E17 01:9E07: C0        .byte $C0   ; 
- D 0 - I - 0x005E18 01:9E08: FC        .byte $FC   ; 
- D 0 - I - 0x005E19 01:9E09: C2        .byte $C2   ; 
- D 0 - I - 0x005E1A 01:9E0A: 04        .byte $04   ; 
- D 0 - I - 0x005E1B 01:9E0B: C4        .byte $C4   ; 
- D 0 - I - 0x005E1C 01:9E0C: 08        .byte $08   ; 
- D 0 - I - 0x005E1D 01:9E0D: FB        .byte $FB   ; 
- D 0 - I - 0x005E1E 01:9E0E: FD        .byte $FD   ; 
- D 0 - I - 0x005E1F 01:9E0F: FD        .byte $FD   ; 
- D 0 - I - 0x005E20 01:9E10: 01        .byte $01   ; 
_off010_9E11_6D:
- D 0 - I - 0x005E21 01:9E11: 03        .byte $03   ; 
- D 0 - I - 0x005E22 01:9E12: 17        .byte $17   ; 
- D 0 - I - 0x005E23 01:9E13: 08        .byte $08   ; 
- D 0 - I - 0x005E24 01:9E14: F1        .byte $F1   ; 
- D 0 - I - 0x005E25 01:9E15: F9        .byte $F9   ; 
- D 0 - I - 0x005E26 01:9E16: C8        .byte $C8   ; 
- D 0 - I - 0x005E27 01:9E17: 08        .byte $08   ; 
- D 0 - I - 0x005E28 01:9E18: F9        .byte $F9   ; 
- D 0 - I - 0x005E29 01:9E19: 01        .byte $01   ; 
- D 0 - I - 0x005E2A 01:9E1A: CA        .byte $CA   ; 
- D 0 - I - 0x005E2B 01:9E1B: 08        .byte $08   ; 
- D 0 - I - 0x005E2C 01:9E1C: 01        .byte $01   ; 
- D 0 - I - 0x005E2D 01:9E1D: F9        .byte $F9   ; 
- D 0 - I - 0x005E2E 01:9E1E: CC        .byte $CC   ; 
- D 0 - I - 0x005E2F 01:9E1F: 08        .byte $08   ; 
- D 0 - I - 0x005E30 01:9E20: F9        .byte $F9   ; 
- D 0 - I - 0x005E31 01:9E21: FE        .byte $FE   ; 
- D 0 - I - 0x005E32 01:9E22: FD        .byte $FD   ; 
- D 0 - I - 0x005E33 01:9E23: 01        .byte $01   ; 
_off010_9E24_6E:
- D 0 - I - 0x005E34 01:9E24: 03        .byte $03   ; 
- D 0 - I - 0x005E35 01:9E25: 17        .byte $17   ; 
- D 0 - I - 0x005E36 01:9E26: 08        .byte $08   ; 
- D 0 - I - 0x005E37 01:9E27: F1        .byte $F1   ; 
- D 0 - I - 0x005E38 01:9E28: F9        .byte $F9   ; 
- D 0 - I - 0x005E39 01:9E29: CE        .byte $CE   ; 
- D 0 - I - 0x005E3A 01:9E2A: 08        .byte $08   ; 
- D 0 - I - 0x005E3B 01:9E2B: F9        .byte $F9   ; 
- D 0 - I - 0x005E3C 01:9E2C: 01        .byte $01   ; 
- D 0 - I - 0x005E3D 01:9E2D: D2        .byte $D2   ; 
- D 0 - I - 0x005E3E 01:9E2E: 08        .byte $08   ; 
- D 0 - I - 0x005E3F 01:9E2F: 01        .byte $01   ; 
- D 0 - I - 0x005E40 01:9E30: F9        .byte $F9   ; 
- D 0 - I - 0x005E41 01:9E31: D0        .byte $D0   ; 
- D 0 - I - 0x005E42 01:9E32: 08        .byte $08   ; 
- D 0 - I - 0x005E43 01:9E33: F8        .byte $F8   ; 
- D 0 - I - 0x005E44 01:9E34: FD        .byte $FD   ; 
- D 0 - I - 0x005E45 01:9E35: FD        .byte $FD   ; 
- D 0 - I - 0x005E46 01:9E36: 01        .byte $01   ; 
_off010_9E37_6F:
- D 0 - I - 0x005E47 01:9E37: 03        .byte $03   ; 
- D 0 - I - 0x005E48 01:9E38: 17        .byte $17   ; 
- D 0 - I - 0x005E49 01:9E39: 08        .byte $08   ; 
- D 0 - I - 0x005E4A 01:9E3A: FB        .byte $FB   ; 
- D 0 - I - 0x005E4B 01:9E3B: F9        .byte $F9   ; 
- D 0 - I - 0x005E4C 01:9E3C: D4        .byte $D4   ; 
- D 0 - I - 0x005E4D 01:9E3D: 08        .byte $08   ; 
- D 0 - I - 0x005E4E 01:9E3E: F9        .byte $F9   ; 
- D 0 - I - 0x005E4F 01:9E3F: 01        .byte $01   ; 
- D 0 - I - 0x005E50 01:9E40: D6        .byte $D6   ; 
- D 0 - I - 0x005E51 01:9E41: 08        .byte $08   ; 
- D 0 - I - 0x005E52 01:9E42: FC        .byte $FC   ; 
- D 0 - I - 0x005E53 01:9E43: F8        .byte $F8   ; 
- D 0 - I - 0x005E54 01:9E44: FD        .byte $FD   ; 
- D 0 - I - 0x005E55 01:9E45: 01        .byte $01   ; 
_off010_9E46_70:
- D 0 - I - 0x005E56 01:9E46: 03        .byte $03   ; 
- D 0 - I - 0x005E57 01:9E47: 17        .byte $17   ; 
- D 0 - I - 0x005E58 01:9E48: 10        .byte $10   ; 
- D 0 - I - 0x005E59 01:9E49: F4        .byte $F4   ; 
- D 0 - I - 0x005E5A 01:9E4A: F3        .byte $F3   ; 
- D 0 - I - 0x005E5B 01:9E4B: D8        .byte $D8   ; 
- D 0 - I - 0x005E5C 01:9E4C: 02        .byte $02   ; 
- D 0 - I - 0x005E5D 01:9E4D: DC        .byte $DC   ; 
- D 0 - I - 0x005E5E 01:9E4E: 08        .byte $08   ; 
- D 0 - I - 0x005E5F 01:9E4F: F3        .byte $F3   ; 
- D 0 - I - 0x005E60 01:9E50: FB        .byte $FB   ; 
- D 0 - I - 0x005E61 01:9E51: DA        .byte $DA   ; 
- D 0 - I - 0x005E62 01:9E52: 08        .byte $08   ; 
- D 0 - I - 0x005E63 01:9E53: F1        .byte $F1   ; 
- D 0 - I - 0x005E64 01:9E54: F8        .byte $F8   ; 
- D 0 - I - 0x005E65 01:9E55: FD        .byte $FD   ; 
- D 0 - I - 0x005E66 01:9E56: 01        .byte $01   ; 
_off010_9E57_71:
- D 0 - I - 0x005E67 01:9E57: 03        .byte $03   ; 
- D 0 - I - 0x005E68 01:9E58: 17        .byte $17   ; 
- D 0 - I - 0x005E69 01:9E59: 18        .byte $18   ; 
- D 0 - I - 0x005E6A 01:9E5A: F8        .byte $F8   ; 
- D 0 - I - 0x005E6B 01:9E5B: F1        .byte $F1   ; 
- D 0 - I - 0x005E6C 01:9E5C: DE        .byte $DE   ; 
- D 0 - I - 0x005E6D 01:9E5D: F9        .byte $F9   ; 
- D 0 - I - 0x005E6E 01:9E5E: E0        .byte $E0   ; 
- D 0 - I - 0x005E6F 01:9E5F: 01        .byte $01   ; 
- D 0 - I - 0x005E70 01:9E60: E2        .byte $E2   ; 
- D 0 - I - 0x005E71 01:9E61: 08        .byte $08   ; 
- D 0 - I - 0x005E72 01:9E62: F9        .byte $F9   ; 
- D 0 - I - 0x005E73 01:9E63: F8        .byte $F8   ; 
- D 0 - I - 0x005E74 01:9E64: FD        .byte $FD   ; 
- D 0 - I - 0x005E75 01:9E65: 01        .byte $01   ; 
_off010_9E66_72:
- - - - - - 0x005E76 01:9E66: 03        .byte $03   ; 
- - - - - - 0x005E77 01:9E67: 17        .byte $17   ; 
- - - - - - 0x005E78 01:9E68: 08        .byte $08   ; 
- - - - - - 0x005E79 01:9E69: ED        .byte $ED   ; 
- - - - - - 0x005E7A 01:9E6A: FF        .byte $FF   ; 
- - - - - - 0x005E7B 01:9E6B: F0        .byte $F0   ; 
- - - - - - 0x005E7C 01:9E6C: 18        .byte $18   ; 
- - - - - - 0x005E7D 01:9E6D: FD        .byte $FD   ; 
- - - - - - 0x005E7E 01:9E6E: F7        .byte $F7   ; 
- - - - - - 0x005E7F 01:9E6F: E4        .byte $E4   ; 
- - - - - - 0x005E80 01:9E70: FF        .byte $FF   ; 
- - - - - - 0x005E81 01:9E71: E6        .byte $E6   ; 
- - - - - - 0x005E82 01:9E72: 07        .byte $07   ; 
- - - - - - 0x005E83 01:9E73: E8        .byte $E8   ; 
- - - - - - 0x005E84 01:9E74: 08        .byte $08   ; 
- - - - - - 0x005E85 01:9E75: F9        .byte $F9   ; 
- - - - - - 0x005E86 01:9E76: FB        .byte $FB   ; 
- - - - - - 0x005E87 01:9E77: FF        .byte $FF   ; 
- - - - - - 0x005E88 01:9E78: 01        .byte $01   ; 
_off010_9E79_73:
- - - - - - 0x005E89 01:9E79: 03        .byte $03   ; 
- - - - - - 0x005E8A 01:9E7A: 17        .byte $17   ; 
- - - - - - 0x005E8B 01:9E7B: 20        .byte $20   ; 
- - - - - - 0x005E8C 01:9E7C: F8        .byte $F8   ; 
- - - - - - 0x005E8D 01:9E7D: F5        .byte $F5   ; 
- - - - - - 0x005E8E 01:9E7E: EA        .byte $EA   ; 
- - - - - - 0x005E8F 01:9E7F: FD        .byte $FD   ; 
- - - - - - 0x005E90 01:9E80: EC        .byte $EC   ; 
- - - - - - 0x005E91 01:9E81: 05        .byte $05   ; 
- - - - - - 0x005E92 01:9E82: EE        .byte $EE   ; 
- - - - - - 0x005E93 01:9E83: F9        .byte $F9   ; 
- - - - - - 0x005E94 01:9E84: FF        .byte $FF   ; 
- - - - - - 0x005E95 01:9E85: 01        .byte $01   ; 
_off010_9E86_74:
- - - - - - 0x005E96 01:9E86: 03        .byte $03   ; 
- - - - - - 0x005E97 01:9E87: 17        .byte $17   ; 
- - - - - - 0x005E98 01:9E88: 18        .byte $18   ; 
- - - - - - 0x005E99 01:9E89: F8        .byte $F8   ; 
- - - - - - 0x005E9A 01:9E8A: F1        .byte $F1   ; 
- - - - - - 0x005E9B 01:9E8B: F2        .byte $F2   ; 
- - - - - - 0x005E9C 01:9E8C: F9        .byte $F9   ; 
- - - - - - 0x005E9D 01:9E8D: F4        .byte $F4   ; 
- - - - - - 0x005E9E 01:9E8E: 01        .byte $01   ; 
- - - - - - 0x005E9F 01:9E8F: F6        .byte $F6   ; 
- - - - - - 0x005EA0 01:9E90: 08        .byte $08   ; 
- - - - - - 0x005EA1 01:9E91: 00        .byte $00   ; 
- - - - - - 0x005EA2 01:9E92: 09        .byte $09   ; 
- - - - - - 0x005EA3 01:9E93: F8        .byte $F8   ; 
- - - - - - 0x005EA4 01:9E94: 08        .byte $08   ; 
- - - - - - 0x005EA5 01:9E95: F9        .byte $F9   ; 
- - - - - - 0x005EA6 01:9E96: F8        .byte $F8   ; 
- - - - - - 0x005EA7 01:9E97: FF        .byte $FF   ; 
- - - - - - 0x005EA8 01:9E98: 01        .byte $01   ; 
_off010_9E99_75:
- D 0 - I - 0x005EA9 01:9E99: 03        .byte $03   ; 
- D 0 - I - 0x005EAA 01:9E9A: 31        .byte $31   ; 
- D 0 - I - 0x005EAB 01:9E9B: 10        .byte $10   ; 
- D 0 - I - 0x005EAC 01:9E9C: F9        .byte $F9   ; 
- D 0 - I - 0x005EAD 01:9E9D: F9        .byte $F9   ; 
- D 0 - I - 0x005EAE 01:9E9E: 40        .byte $40   ; 
- D 0 - I - 0x005EAF 01:9E9F: 01        .byte $01   ; 
- D 0 - I - 0x005EB0 01:9EA0: 42        .byte $42   ; 
- D 0 - I - 0x005EB1 01:9EA1: 08        .byte $08   ; 
- D 0 - I - 0x005EB2 01:9EA2: FC        .byte $FC   ; 
- D 0 - I - 0x005EB3 01:9EA3: FD        .byte $FD   ; 
- D 0 - I - 0x005EB4 01:9EA4: 7D        .byte $7D   ; 
- D 0 - I - 0x005EB5 01:9EA5: 01        .byte $01   ; 
_off010_9EA6_76:
- D 0 - I - 0x005EB6 01:9EA6: 03        .byte $03   ; 
- D 0 - I - 0x005EB7 01:9EA7: 31        .byte $31   ; 
- D 0 - I - 0x005EB8 01:9EA8: 10        .byte $10   ; 
- D 0 - I - 0x005EB9 01:9EA9: F9        .byte $F9   ; 
- D 0 - I - 0x005EBA 01:9EAA: F9        .byte $F9   ; 
- D 0 - I - 0x005EBB 01:9EAB: 44        .byte $44   ; 
- D 0 - I - 0x005EBC 01:9EAC: 01        .byte $01   ; 
- D 0 - I - 0x005EBD 01:9EAD: 46        .byte $46   ; 
- D 0 - I - 0x005EBE 01:9EAE: 08        .byte $08   ; 
- D 0 - I - 0x005EBF 01:9EAF: FC        .byte $FC   ; 
- D 0 - I - 0x005EC0 01:9EB0: FD        .byte $FD   ; 
- D 0 - I - 0x005EC1 01:9EB1: 7D        .byte $7D   ; 
- D 0 - I - 0x005EC2 01:9EB2: 01        .byte $01   ; 
_off010_9EB3_77:
- D 0 - I - 0x005EC3 01:9EB3: 03        .byte $03   ; 
- D 0 - I - 0x005EC4 01:9EB4: 31        .byte $31   ; 
- D 0 - I - 0x005EC5 01:9EB5: 10        .byte $10   ; 
- D 0 - I - 0x005EC6 01:9EB6: F9        .byte $F9   ; 
- D 0 - I - 0x005EC7 01:9EB7: FD        .byte $FD   ; 
- D 0 - I - 0x005EC8 01:9EB8: 48        .byte $48   ; 
- D 0 - I - 0x005EC9 01:9EB9: FC        .byte $FC   ; 
- D 0 - I - 0x005ECA 01:9EBA: 7F        .byte $7F   ; 
- D 0 - I - 0x005ECB 01:9EBB: 01        .byte $01   ; 
_off010_9EBC_78:
- - - - - - 0x005ECC 01:9EBC: 03        .byte $03   ; 
- - - - - - 0x005ECD 01:9EBD: 31        .byte $31   ; 
- - - - - - 0x005ECE 01:9EBE: 10        .byte $10   ; 
- - - - - - 0x005ECF 01:9EBF: F9        .byte $F9   ; 
- - - - - - 0x005ED0 01:9EC0: F9        .byte $F9   ; 
- - - - - - 0x005ED1 01:9EC1: 4C        .byte $4C   ; 
- - - - - - 0x005ED2 01:9EC2: 01        .byte $01   ; 
- - - - - - 0x005ED3 01:9EC3: 4E        .byte $4E   ; 
- - - - - - 0x005ED4 01:9EC4: 08        .byte $08   ; 
- - - - - - 0x005ED5 01:9EC5: F8        .byte $F8   ; 
- - - - - - 0x005ED6 01:9EC6: FE        .byte $FE   ; 
- - - - - - 0x005ED7 01:9EC7: 7D        .byte $7D   ; 
- - - - - - 0x005ED8 01:9EC8: 01        .byte $01   ; 
_off010_9EC9_79:
- - - - - - 0x005ED9 01:9EC9: 03        .byte $03   ; 
- - - - - - 0x005EDA 01:9ECA: 31        .byte $31   ; 
- - - - - - 0x005EDB 01:9ECB: 18        .byte $18   ; 
- - - - - - 0x005EDC 01:9ECC: F9        .byte $F9   ; 
- - - - - - 0x005EDD 01:9ECD: F9        .byte $F9   ; 
- - - - - - 0x005EDE 01:9ECE: 50        .byte $50   ; 
- - - - - - 0x005EDF 01:9ECF: 01        .byte $01   ; 
- - - - - - 0x005EE0 01:9ED0: 52        .byte $52   ; 
- - - - - - 0x005EE1 01:9ED1: FA        .byte $FA   ; 
- - - - - - 0x005EE2 01:9ED2: 7D        .byte $7D   ; 
- - - - - - 0x005EE3 01:9ED3: 01        .byte $01   ; 
_off010_9ED4_7A:
- - - - - - 0x005EE4 01:9ED4: 03        .byte $03   ; 
- - - - - - 0x005EE5 01:9ED5: 31        .byte $31   ; 
- - - - - - 0x005EE6 01:9ED6: 10        .byte $10   ; 
- - - - - - 0x005EE7 01:9ED7: F9        .byte $F9   ; 
- - - - - - 0x005EE8 01:9ED8: F9        .byte $F9   ; 
- - - - - - 0x005EE9 01:9ED9: 54        .byte $54   ; 
- - - - - - 0x005EEA 01:9EDA: 01        .byte $01   ; 
- - - - - - 0x005EEB 01:9EDB: 56        .byte $56   ; 
- - - - - - 0x005EEC 01:9EDC: 08        .byte $08   ; 
- - - - - - 0x005EED 01:9EDD: FA        .byte $FA   ; 
- - - - - - 0x005EEE 01:9EDE: F8        .byte $F8   ; 
- - - - - - 0x005EEF 01:9EDF: 7F        .byte $7F   ; 
- - - - - - 0x005EF0 01:9EE0: 01        .byte $01   ; 
_off010_9EE1_7B:
- D 0 - I - 0x005EF1 01:9EE1: 03        .byte $03   ; 
- D 0 - I - 0x005EF2 01:9EE2: 31        .byte $31   ; 
- D 0 - I - 0x005EF3 01:9EE3: 18        .byte $18   ; 
- D 0 - I - 0x005EF4 01:9EE4: F9        .byte $F9   ; 
- D 0 - I - 0x005EF5 01:9EE5: F9        .byte $F9   ; 
- D 0 - I - 0x005EF6 01:9EE6: 58        .byte $58   ; 
- D 0 - I - 0x005EF7 01:9EE7: 01        .byte $01   ; 
- D 0 - I - 0x005EF8 01:9EE8: 5A        .byte $5A   ; 
- D 0 - I - 0x005EF9 01:9EE9: FD        .byte $FD   ; 
- D 0 - I - 0x005EFA 01:9EEA: 7D        .byte $7D   ; 
- D 0 - I - 0x005EFB 01:9EEB: 01        .byte $01   ; 
_off010_9EEC_7C:
- D 0 - I - 0x005EFC 01:9EEC: 03        .byte $03   ; 
- D 0 - I - 0x005EFD 01:9EED: 31        .byte $31   ; 
- D 0 - I - 0x005EFE 01:9EEE: 18        .byte $18   ; 
- D 0 - I - 0x005EFF 01:9EEF: F9        .byte $F9   ; 
- D 0 - I - 0x005F00 01:9EF0: F9        .byte $F9   ; 
- D 0 - I - 0x005F01 01:9EF1: 5C        .byte $5C   ; 
- D 0 - I - 0x005F02 01:9EF2: 01        .byte $01   ; 
- D 0 - I - 0x005F03 01:9EF3: 5E        .byte $5E   ; 
- D 0 - I - 0x005F04 01:9EF4: FD        .byte $FD   ; 
- D 0 - I - 0x005F05 01:9EF5: 7D        .byte $7D   ; 
- D 0 - I - 0x005F06 01:9EF6: 01        .byte $01   ; 
_off010_9EF7_7D:
- D 0 - I - 0x005F07 01:9EF7: 03        .byte $03   ; 
- D 0 - I - 0x005F08 01:9EF8: 31        .byte $31   ; 
- D 0 - I - 0x005F09 01:9EF9: 10        .byte $10   ; 
- D 0 - I - 0x005F0A 01:9EFA: F9        .byte $F9   ; 
- D 0 - I - 0x005F0B 01:9EFB: F9        .byte $F9   ; 
- D 0 - I - 0x005F0C 01:9EFC: 60        .byte $60   ; 
- D 0 - I - 0x005F0D 01:9EFD: 01        .byte $01   ; 
- D 0 - I - 0x005F0E 01:9EFE: 62        .byte $62   ; 
- D 0 - I - 0x005F0F 01:9EFF: 08        .byte $08   ; 
- D 0 - I - 0x005F10 01:9F00: FB        .byte $FB   ; 
- D 0 - I - 0x005F11 01:9F01: FC        .byte $FC   ; 
- D 0 - I - 0x005F12 01:9F02: 7D        .byte $7D   ; 
- D 0 - I - 0x005F13 01:9F03: 01        .byte $01   ; 
_off010_9F04_7E:
- D 0 - I - 0x005F14 01:9F04: 03        .byte $03   ; 
- D 0 - I - 0x005F15 01:9F05: 31        .byte $31   ; 
- D 0 - I - 0x005F16 01:9F06: 10        .byte $10   ; 
- D 0 - I - 0x005F17 01:9F07: F9        .byte $F9   ; 
- D 0 - I - 0x005F18 01:9F08: F9        .byte $F9   ; 
- D 0 - I - 0x005F19 01:9F09: 64        .byte $64   ; 
- D 0 - I - 0x005F1A 01:9F0A: 01        .byte $01   ; 
- D 0 - I - 0x005F1B 01:9F0B: 66        .byte $66   ; 
- D 0 - I - 0x005F1C 01:9F0C: 08        .byte $08   ; 
- D 0 - I - 0x005F1D 01:9F0D: FB        .byte $FB   ; 
- D 0 - I - 0x005F1E 01:9F0E: FC        .byte $FC   ; 
- D 0 - I - 0x005F1F 01:9F0F: 7D        .byte $7D   ; 
- D 0 - I - 0x005F20 01:9F10: 01        .byte $01   ; 
_off010_9F11_7F:
- D 0 - I - 0x005F21 01:9F11: 03        .byte $03   ; 
- D 0 - I - 0x005F22 01:9F12: 31        .byte $31   ; 
- D 0 - I - 0x005F23 01:9F13: 10        .byte $10   ; 
- D 0 - I - 0x005F24 01:9F14: F9        .byte $F9   ; 
- D 0 - I - 0x005F25 01:9F15: F9        .byte $F9   ; 
- D 0 - I - 0x005F26 01:9F16: 68        .byte $68   ; 
- D 0 - I - 0x005F27 01:9F17: 01        .byte $01   ; 
- D 0 - I - 0x005F28 01:9F18: 6A        .byte $6A   ; 
- D 0 - I - 0x005F29 01:9F19: 08        .byte $08   ; 
- D 0 - I - 0x005F2A 01:9F1A: FC        .byte $FC   ; 
- D 0 - I - 0x005F2B 01:9F1B: FC        .byte $FC   ; 
- D 0 - I - 0x005F2C 01:9F1C: 7D        .byte $7D   ; 
- D 0 - I - 0x005F2D 01:9F1D: 01        .byte $01   ; 
_off010_9F1E_80:
- D 0 - I - 0x005F2E 01:9F1E: 03        .byte $03   ; 
- D 0 - I - 0x005F2F 01:9F1F: 31        .byte $31   ; 
- D 0 - I - 0x005F30 01:9F20: 10        .byte $10   ; 
- D 0 - I - 0x005F31 01:9F21: F9        .byte $F9   ; 
- D 0 - I - 0x005F32 01:9F22: F9        .byte $F9   ; 
- D 0 - I - 0x005F33 01:9F23: 6C        .byte $6C   ; 
- D 0 - I - 0x005F34 01:9F24: 01        .byte $01   ; 
- D 0 - I - 0x005F35 01:9F25: 6E        .byte $6E   ; 
- D 0 - I - 0x005F36 01:9F26: 08        .byte $08   ; 
- D 0 - I - 0x005F37 01:9F27: FB        .byte $FB   ; 
- D 0 - I - 0x005F38 01:9F28: FC        .byte $FC   ; 
- D 0 - I - 0x005F39 01:9F29: 7D        .byte $7D   ; 
- D 0 - I - 0x005F3A 01:9F2A: 01        .byte $01   ; 
_off010_9F2B_81:
- D 0 - I - 0x005F3B 01:9F2B: 03        .byte $03   ; 
- D 0 - I - 0x005F3C 01:9F2C: 31        .byte $31   ; 
- D 0 - I - 0x005F3D 01:9F2D: 18        .byte $18   ; 
- D 0 - I - 0x005F3E 01:9F2E: F9        .byte $F9   ; 
- D 0 - I - 0x005F3F 01:9F2F: F9        .byte $F9   ; 
- D 0 - I - 0x005F40 01:9F30: 70        .byte $70   ; 
- D 0 - I - 0x005F41 01:9F31: 01        .byte $01   ; 
- D 0 - I - 0x005F42 01:9F32: 72        .byte $72   ; 
- D 0 - I - 0x005F43 01:9F33: FA        .byte $FA   ; 
- D 0 - I - 0x005F44 01:9F34: 7F        .byte $7F   ; 
- D 0 - I - 0x005F45 01:9F35: 01        .byte $01   ; 
_off010_9F36_82:
- D 0 - I - 0x005F46 01:9F36: 03        .byte $03   ; 
- D 0 - I - 0x005F47 01:9F37: 31        .byte $31   ; 
- D 0 - I - 0x005F48 01:9F38: 10        .byte $10   ; 
- D 0 - I - 0x005F49 01:9F39: F9        .byte $F9   ; 
- D 0 - I - 0x005F4A 01:9F3A: FC        .byte $FC   ; 
- D 0 - I - 0x005F4B 01:9F3B: 4A        .byte $4A   ; 
- D 0 - I - 0x005F4C 01:9F3C: F9        .byte $F9   ; 
- D 0 - I - 0x005F4D 01:9F3D: 7F        .byte $7F   ; 
- D 0 - I - 0x005F4E 01:9F3E: 01        .byte $01   ; 
_off010_9F3F_83:
- D 0 - I - 0x005F4F 01:9F3F: 03        .byte $03   ; 
- D 0 - I - 0x005F50 01:9F40: 35        .byte $35   ; 
- D 0 - I - 0x005F51 01:9F41: 08        .byte $08   ; 
- D 0 - I - 0x005F52 01:9F42: F7        .byte $F7   ; 
- D 0 - I - 0x005F53 01:9F43: F8        .byte $F8   ; 
- D 0 - I - 0x005F54 01:9F44: 40        .byte $40   ; 
- D 0 - I - 0x005F55 01:9F45: 08        .byte $08   ; 
- D 0 - I - 0x005F56 01:9F46: F9        .byte $F9   ; 
- D 0 - I - 0x005F57 01:9F47: 00        .byte $00   ; 
- D 0 - I - 0x005F58 01:9F48: 42        .byte $42   ; 
- D 0 - I - 0x005F59 01:9F49: 08        .byte $08   ; 
- D 0 - I - 0x005F5A 01:9F4A: F8        .byte $F8   ; 
- D 0 - I - 0x005F5B 01:9F4B: FD        .byte $FD   ; 
- D 0 - I - 0x005F5C 01:9F4C: 7D        .byte $7D   ; 
- D 0 - I - 0x005F5D 01:9F4D: 01        .byte $01   ; 
_off010_9F4E_84:
- D 0 - I - 0x005F5E 01:9F4E: 03        .byte $03   ; 
- D 0 - I - 0x005F5F 01:9F4F: 35        .byte $35   ; 
- D 0 - I - 0x005F60 01:9F50: 10        .byte $10   ; 
- D 0 - I - 0x005F61 01:9F51: F8        .byte $F8   ; 
- D 0 - I - 0x005F62 01:9F52: F8        .byte $F8   ; 
- D 0 - I - 0x005F63 01:9F53: 44        .byte $44   ; 
- D 0 - I - 0x005F64 01:9F54: 00        .byte $00   ; 
- D 0 - I - 0x005F65 01:9F55: 46        .byte $46   ; 
- D 0 - I - 0x005F66 01:9F56: 08        .byte $08   ; 
- D 0 - I - 0x005F67 01:9F57: FB        .byte $FB   ; 
- D 0 - I - 0x005F68 01:9F58: FD        .byte $FD   ; 
- D 0 - I - 0x005F69 01:9F59: 7D        .byte $7D   ; 
- D 0 - I - 0x005F6A 01:9F5A: 01        .byte $01   ; 
_off010_9F5B_85:
- D 0 - I - 0x005F6B 01:9F5B: 03        .byte $03   ; 
- D 0 - I - 0x005F6C 01:9F5C: 35        .byte $35   ; 
- D 0 - I - 0x005F6D 01:9F5D: 08        .byte $08   ; 
- D 0 - I - 0x005F6E 01:9F5E: EC        .byte $EC   ; 
- D 0 - I - 0x005F6F 01:9F5F: 00        .byte $00   ; 
- D 0 - I - 0x005F70 01:9F60: 4A        .byte $4A   ; 
- D 0 - I - 0x005F71 01:9F61: 08        .byte $08   ; 
- D 0 - I - 0x005F72 01:9F62: F2        .byte $F2   ; 
- D 0 - I - 0x005F73 01:9F63: F8        .byte $F8   ; 
- D 0 - I - 0x005F74 01:9F64: 48        .byte $48   ; 
- D 0 - I - 0x005F75 01:9F65: 08        .byte $08   ; 
- D 0 - I - 0x005F76 01:9F66: F0        .byte $F0   ; 
- D 0 - I - 0x005F77 01:9F67: FD        .byte $FD   ; 
- D 0 - I - 0x005F78 01:9F68: 7D        .byte $7D   ; 
- D 0 - I - 0x005F79 01:9F69: 01        .byte $01   ; 
_off010_9F6A_86:
- D 0 - I - 0x005F7A 01:9F6A: 03        .byte $03   ; 
- D 0 - I - 0x005F7B 01:9F6B: 39        .byte $39   ; 
- D 0 - I - 0x005F7C 01:9F6C: 10        .byte $10   ; 
- D 0 - I - 0x005F7D 01:9F6D: F2        .byte $F2   ; 
- D 0 - I - 0x005F7E 01:9F6E: F8        .byte $F8   ; 
- D 0 - I - 0x005F7F 01:9F6F: 60        .byte $60   ; 
- D 0 - I - 0x005F80 01:9F70: 00        .byte $00   ; 
- D 0 - I - 0x005F81 01:9F71: 62        .byte $62   ; 
- D 0 - I - 0x005F82 01:9F72: 08        .byte $08   ; 
- D 0 - I - 0x005F83 01:9F73: F3        .byte $F3   ; 
- D 0 - I - 0x005F84 01:9F74: FD        .byte $FD   ; 
- D 0 - I - 0x005F85 01:9F75: 7D        .byte $7D   ; 
- D 0 - I - 0x005F86 01:9F76: 01        .byte $01   ; 
_off010_9F77_87:
- D 0 - I - 0x005F87 01:9F77: 03        .byte $03   ; 
- D 0 - I - 0x005F88 01:9F78: 35        .byte $35   ; 
- D 0 - I - 0x005F89 01:9F79: 18        .byte $18   ; 
- D 0 - I - 0x005F8A 01:9F7A: FA        .byte $FA   ; 
- D 0 - I - 0x005F8B 01:9F7B: F2        .byte $F2   ; 
- D 0 - I - 0x005F8C 01:9F7C: 4C        .byte $4C   ; 
- D 0 - I - 0x005F8D 01:9F7D: FA        .byte $FA   ; 
- D 0 - I - 0x005F8E 01:9F7E: 4E        .byte $4E   ; 
- D 0 - I - 0x005F8F 01:9F7F: 02        .byte $02   ; 
- D 0 - I - 0x005F90 01:9F80: 50        .byte $50   ; 
- D 0 - I - 0x005F91 01:9F81: 08        .byte $08   ; 
- D 0 - I - 0x005F92 01:9F82: FB        .byte $FB   ; 
- D 0 - I - 0x005F93 01:9F83: FB        .byte $FB   ; 
- D 0 - I - 0x005F94 01:9F84: 7D        .byte $7D   ; 
- D 0 - I - 0x005F95 01:9F85: 01        .byte $01   ; 
_off010_9F86_88:
- D 0 - I - 0x005F96 01:9F86: 03        .byte $03   ; 
- D 0 - I - 0x005F97 01:9F87: 35        .byte $35   ; 
- D 0 - I - 0x005F98 01:9F88: 10        .byte $10   ; 
- D 0 - I - 0x005F99 01:9F89: FA        .byte $FA   ; 
- D 0 - I - 0x005F9A 01:9F8A: FB        .byte $FB   ; 
- D 0 - I - 0x005F9B 01:9F8B: 58        .byte $58   ; 
- D 0 - I - 0x005F9C 01:9F8C: 03        .byte $03   ; 
- D 0 - I - 0x005F9D 01:9F8D: 5A        .byte $5A   ; 
- D 0 - I - 0x005F9E 01:9F8E: 08        .byte $08   ; 
- D 0 - I - 0x005F9F 01:9F8F: FC        .byte $FC   ; 
- D 0 - I - 0x005FA0 01:9F90: FE        .byte $FE   ; 
- D 0 - I - 0x005FA1 01:9F91: 7D        .byte $7D   ; 
- D 0 - I - 0x005FA2 01:9F92: 01        .byte $01   ; 
_off010_9F93_89:
- D 0 - I - 0x005FA3 01:9F93: 03        .byte $03   ; 
- D 0 - I - 0x005FA4 01:9F94: 35        .byte $35   ; 
- D 0 - I - 0x005FA5 01:9F95: 08        .byte $08   ; 
- D 0 - I - 0x005FA6 01:9F96: F0        .byte $F0   ; 
- D 0 - I - 0x005FA7 01:9F97: F6        .byte $F6   ; 
- D 0 - I - 0x005FA8 01:9F98: 52        .byte $52   ; 
- D 0 - I - 0x005FA9 01:9F99: 08        .byte $08   ; 
- D 0 - I - 0x005FAA 01:9F9A: F8        .byte $F8   ; 
- D 0 - I - 0x005FAB 01:9F9B: FE        .byte $FE   ; 
- D 0 - I - 0x005FAC 01:9F9C: 56        .byte $56   ; 
- D 0 - I - 0x005FAD 01:9F9D: 08        .byte $08   ; 
- D 0 - I - 0x005FAE 01:9F9E: 00        .byte $00   ; 
- D 0 - I - 0x005FAF 01:9F9F: F6        .byte $F6   ; 
- D 0 - I - 0x005FB0 01:9FA0: 54        .byte $54   ; 
- D 0 - I - 0x005FB1 01:9FA1: 08        .byte $08   ; 
- D 0 - I - 0x005FB2 01:9FA2: FA        .byte $FA   ; 
- D 0 - I - 0x005FB3 01:9FA3: F8        .byte $F8   ; 
- D 0 - I - 0x005FB4 01:9FA4: 7D        .byte $7D   ; 
- D 0 - I - 0x005FB5 01:9FA5: 01        .byte $01   ; 
_off010_9FA6_8A:
- D 0 - I - 0x005FB6 01:9FA6: 03        .byte $03   ; 
- D 0 - I - 0x005FB7 01:9FA7: 39        .byte $39   ; 
- D 0 - I - 0x005FB8 01:9FA8: 10        .byte $10   ; 
- D 0 - I - 0x005FB9 01:9FA9: F9        .byte $F9   ; 
- D 0 - I - 0x005FBA 01:9FAA: F9        .byte $F9   ; 
- D 0 - I - 0x005FBB 01:9FAB: 64        .byte $64   ; 
- D 0 - I - 0x005FBC 01:9FAC: 01        .byte $01   ; 
- D 0 - I - 0x005FBD 01:9FAD: 66        .byte $66   ; 
- D 0 - I - 0x005FBE 01:9FAE: 08        .byte $08   ; 
- D 0 - I - 0x005FBF 01:9FAF: FA        .byte $FA   ; 
- D 0 - I - 0x005FC0 01:9FB0: FE        .byte $FE   ; 
- D 0 - I - 0x005FC1 01:9FB1: 7D        .byte $7D   ; 
- D 0 - I - 0x005FC2 01:9FB2: 01        .byte $01   ; 
_off010_9FB3_8B:
- D 0 - I - 0x005FC3 01:9FB3: 03        .byte $03   ; 
- D 0 - I - 0x005FC4 01:9FB4: 35        .byte $35   ; 
- D 0 - I - 0x005FC5 01:9FB5: 18        .byte $18   ; 
- D 0 - I - 0x005FC6 01:9FB6: F8        .byte $F8   ; 
- D 0 - I - 0x005FC7 01:9FB7: F1        .byte $F1   ; 
- D 0 - I - 0x005FC8 01:9FB8: 60        .byte $60   ; 
- D 0 - I - 0x005FC9 01:9FB9: F9        .byte $F9   ; 
- D 0 - I - 0x005FCA 01:9FBA: 62        .byte $62   ; 
- D 0 - I - 0x005FCB 01:9FBB: 01        .byte $01   ; 
- D 0 - I - 0x005FCC 01:9FBC: 64        .byte $64   ; 
- D 0 - I - 0x005FCD 01:9FBD: 08        .byte $08   ; 
- D 0 - I - 0x005FCE 01:9FBE: F9        .byte $F9   ; 
- D 0 - I - 0x005FCF 01:9FBF: F8        .byte $F8   ; 
- D 0 - I - 0x005FD0 01:9FC0: 7F        .byte $7F   ; 
- D 0 - I - 0x005FD1 01:9FC1: 01        .byte $01   ; 
_off010_9FC2_8C:
- D 0 - I - 0x005FD2 01:9FC2: 03        .byte $03   ; 
- D 0 - I - 0x005FD3 01:9FC3: 35        .byte $35   ; 
- D 0 - I - 0x005FD4 01:9FC4: 10        .byte $10   ; 
- D 0 - I - 0x005FD5 01:9FC5: F8        .byte $F8   ; 
- D 0 - I - 0x005FD6 01:9FC6: F9        .byte $F9   ; 
- D 0 - I - 0x005FD7 01:9FC7: 5C        .byte $5C   ; 
- D 0 - I - 0x005FD8 01:9FC8: 01        .byte $01   ; 
- D 0 - I - 0x005FD9 01:9FC9: 5E        .byte $5E   ; 
- D 0 - I - 0x005FDA 01:9FCA: 08        .byte $08   ; 
- D 0 - I - 0x005FDB 01:9FCB: F9        .byte $F9   ; 
- D 0 - I - 0x005FDC 01:9FCC: FC        .byte $FC   ; 
- D 0 - I - 0x005FDD 01:9FCD: 7F        .byte $7F   ; 
- D 0 - I - 0x005FDE 01:9FCE: 01        .byte $01   ; 
_off010_9FCF_8D:
- D 0 - I - 0x005FDF 01:9FCF: 03        .byte $03   ; 
- D 0 - I - 0x005FE0 01:9FD0: 35        .byte $35   ; 
- D 0 - I - 0x005FE1 01:9FD1: 18        .byte $18   ; 
- D 0 - I - 0x005FE2 01:9FD2: F8        .byte $F8   ; 
- D 0 - I - 0x005FE3 01:9FD3: ED        .byte $ED   ; 
- D 0 - I - 0x005FE4 01:9FD4: 66        .byte $66   ; 
- D 0 - I - 0x005FE5 01:9FD5: F5        .byte $F5   ; 
- D 0 - I - 0x005FE6 01:9FD6: 68        .byte $68   ; 
- D 0 - I - 0x005FE7 01:9FD7: FD        .byte $FD   ; 
- D 0 - I - 0x005FE8 01:9FD8: 6A        .byte $6A   ; 
- D 0 - I - 0x005FE9 01:9FD9: 08        .byte $08   ; 
- D 0 - I - 0x005FEA 01:9FDA: F9        .byte $F9   ; 
- D 0 - I - 0x005FEB 01:9FDB: F3        .byte $F3   ; 
- D 0 - I - 0x005FEC 01:9FDC: 7F        .byte $7F   ; 
- D 0 - I - 0x005FED 01:9FDD: 01        .byte $01   ; 
_off010_9FDE_8E:
- D 0 - I - 0x005FEE 01:9FDE: 03        .byte $03   ; 
- D 0 - I - 0x005FEF 01:9FDF: 39        .byte $39   ; 
- D 0 - I - 0x005FF0 01:9FE0: 10        .byte $10   ; 
- D 0 - I - 0x005FF1 01:9FE1: F8        .byte $F8   ; 
- D 0 - I - 0x005FF2 01:9FE2: F9        .byte $F9   ; 
- D 0 - I - 0x005FF3 01:9FE3: 68        .byte $68   ; 
- D 0 - I - 0x005FF4 01:9FE4: 01        .byte $01   ; 
- D 0 - I - 0x005FF5 01:9FE5: 6A        .byte $6A   ; 
- D 0 - I - 0x005FF6 01:9FE6: 08        .byte $08   ; 
- D 0 - I - 0x005FF7 01:9FE7: F9        .byte $F9   ; 
- D 0 - I - 0x005FF8 01:9FE8: FA        .byte $FA   ; 
- D 0 - I - 0x005FF9 01:9FE9: 7F        .byte $7F   ; 
- D 0 - I - 0x005FFA 01:9FEA: 01        .byte $01   ; 
_off010_9FEB_8F:
- D 0 - I - 0x005FFB 01:9FEB: 03        .byte $03   ; 
- D 0 - I - 0x005FFC 01:9FEC: 3D        .byte $3D   ; 
- D 0 - I - 0x005FFD 01:9FED: 10        .byte $10   ; 
- D 0 - I - 0x005FFE 01:9FEE: F9        .byte $F9   ; 
- D 0 - I - 0x005FFF 01:9FEF: F9        .byte $F9   ; 
- D 0 - I - 0x006000 01:9FF0: 70        .byte $70   ; 
- D 0 - I - 0x006001 01:9FF1: 01        .byte $01   ; 
- D 0 - I - 0x006002 01:9FF2: 72        .byte $72   ; 
- D 0 - I - 0x006003 01:9FF3: 08        .byte $08   ; 
- D 0 - I - 0x006004 01:9FF4: FE        .byte $FE   ; 
- D 0 - I - 0x006005 01:9FF5: FD        .byte $FD   ; 
- D 0 - I - 0x006006 01:9FF6: 7D        .byte $7D   ; 
- D 0 - I - 0x006007 01:9FF7: 01        .byte $01   ; 
_off010_9FF8_90:
- D 0 - I - 0x006008 01:9FF8: 03        .byte $03   ; 
- D 0 - I - 0x006009 01:9FF9: 3D        .byte $3D   ; 
- D 0 - I - 0x00600A 01:9FFA: 10        .byte $10   ; 
- D 0 - I - 0x00600B 01:9FFB: F9        .byte $F9   ; 
- D 0 - I - 0x00600C 01:9FFC: F9        .byte $F9   ; 
- D 0 - I - 0x00600D 01:9FFD: 74        .byte $74   ; 
- D 0 - I - 0x00600E 01:9FFE: 01        .byte $01   ; 
- D 0 - I - 0x00600F 01:9FFF: 76        .byte $76   ; 
- D 1 - I - 0x006010 01:A000: 08        .byte $08   ; 
- D 1 - I - 0x006011 01:A001: FD        .byte $FD   ; 
- D 1 - I - 0x006012 01:A002: FE        .byte $FE   ; 
- D 1 - I - 0x006013 01:A003: 7D        .byte $7D   ; 
- D 1 - I - 0x006014 01:A004: 01        .byte $01   ; 
_off010_A005_91:
- D 1 - I - 0x006015 01:A005: 03        .byte $03   ; 
- D 1 - I - 0x006016 01:A006: 3D        .byte $3D   ; 
- D 1 - I - 0x006017 01:A007: 18        .byte $18   ; 
- D 1 - I - 0x006018 01:A008: F9        .byte $F9   ; 
- D 1 - I - 0x006019 01:A009: F9        .byte $F9   ; 
- D 1 - I - 0x00601A 01:A00A: 78        .byte $78   ; 
- D 1 - I - 0x00601B 01:A00B: 01        .byte $01   ; 
- D 1 - I - 0x00601C 01:A00C: 7A        .byte $7A   ; 
- D 1 - I - 0x00601D 01:A00D: FE        .byte $FE   ; 
- D 1 - I - 0x00601E 01:A00E: 7F        .byte $7F   ; 
- D 1 - I - 0x00601F 01:A00F: 01        .byte $01   ; 
_off010_A010_92:
- D 1 - I - 0x006020 01:A010: 03        .byte $03   ; 
- D 1 - I - 0x006021 01:A011: 3D        .byte $3D   ; 
- D 1 - I - 0x006022 01:A012: 10        .byte $10   ; 
- D 1 - I - 0x006023 01:A013: F9        .byte $F9   ; 
- D 1 - I - 0x006024 01:A014: F9        .byte $F9   ; 
- D 1 - I - 0x006025 01:A015: 40        .byte $40   ; 
- D 1 - I - 0x006026 01:A016: 01        .byte $01   ; 
- D 1 - I - 0x006027 01:A017: 42        .byte $42   ; 
- D 1 - I - 0x006028 01:A018: 08        .byte $08   ; 
- D 1 - I - 0x006029 01:A019: F8        .byte $F8   ; 
- D 1 - I - 0x00602A 01:A01A: FC        .byte $FC   ; 
- D 1 - I - 0x00602B 01:A01B: 7D        .byte $7D   ; 
- D 1 - I - 0x00602C 01:A01C: 01        .byte $01   ; 
_off010_A01D_93:
- D 1 - I - 0x00602D 01:A01D: 03        .byte $03   ; 
- D 1 - I - 0x00602E 01:A01E: 3D        .byte $3D   ; 
- D 1 - I - 0x00602F 01:A01F: 18        .byte $18   ; 
- D 1 - I - 0x006030 01:A020: F9        .byte $F9   ; 
- D 1 - I - 0x006031 01:A021: F9        .byte $F9   ; 
- D 1 - I - 0x006032 01:A022: 44        .byte $44   ; 
- D 1 - I - 0x006033 01:A023: 01        .byte $01   ; 
- D 1 - I - 0x006034 01:A024: 46        .byte $46   ; 
- D 1 - I - 0x006035 01:A025: FC        .byte $FC   ; 
- D 1 - I - 0x006036 01:A026: 7D        .byte $7D   ; 
- D 1 - I - 0x006037 01:A027: 01        .byte $01   ; 
_off010_A028_94:
- D 1 - I - 0x006038 01:A028: 03        .byte $03   ; 
- D 1 - I - 0x006039 01:A029: 3D        .byte $3D   ; 
- D 1 - I - 0x00603A 01:A02A: 10        .byte $10   ; 
- D 1 - I - 0x00603B 01:A02B: F9        .byte $F9   ; 
- D 1 - I - 0x00603C 01:A02C: F9        .byte $F9   ; 
- D 1 - I - 0x00603D 01:A02D: 48        .byte $48   ; 
- D 1 - I - 0x00603E 01:A02E: 01        .byte $01   ; 
- D 1 - I - 0x00603F 01:A02F: 4A        .byte $4A   ; 
- D 1 - I - 0x006040 01:A030: 08        .byte $08   ; 
- D 1 - I - 0x006041 01:A031: FB        .byte $FB   ; 
- D 1 - I - 0x006042 01:A032: F8        .byte $F8   ; 
- D 1 - I - 0x006043 01:A033: 7D        .byte $7D   ; 
- D 1 - I - 0x006044 01:A034: 01        .byte $01   ; 
_off010_A035_95:
- D 1 - I - 0x006045 01:A035: 03        .byte $03   ; 
- D 1 - I - 0x006046 01:A036: 3D        .byte $3D   ; 
- D 1 - I - 0x006047 01:A037: 10        .byte $10   ; 
- D 1 - I - 0x006048 01:A038: F9        .byte $F9   ; 
- D 1 - I - 0x006049 01:A039: F9        .byte $F9   ; 
- D 1 - I - 0x00604A 01:A03A: 4C        .byte $4C   ; 
- D 1 - I - 0x00604B 01:A03B: 01        .byte $01   ; 
- D 1 - I - 0x00604C 01:A03C: 4E        .byte $4E   ; 
- D 1 - I - 0x00604D 01:A03D: 08        .byte $08   ; 
- D 1 - I - 0x00604E 01:A03E: FB        .byte $FB   ; 
- D 1 - I - 0x00604F 01:A03F: F9        .byte $F9   ; 
- D 1 - I - 0x006050 01:A040: 7D        .byte $7D   ; 
- D 1 - I - 0x006051 01:A041: 01        .byte $01   ; 
_off010_A042_96:
- D 1 - I - 0x006052 01:A042: 03        .byte $03   ; 
- D 1 - I - 0x006053 01:A043: 3D        .byte $3D   ; 
- D 1 - I - 0x006054 01:A044: 10        .byte $10   ; 
- D 1 - I - 0x006055 01:A045: F9        .byte $F9   ; 
- D 1 - I - 0x006056 01:A046: F9        .byte $F9   ; 
- D 1 - I - 0x006057 01:A047: 50        .byte $50   ; 
- D 1 - I - 0x006058 01:A048: 01        .byte $01   ; 
- D 1 - I - 0x006059 01:A049: 52        .byte $52   ; 
- D 1 - I - 0x00605A 01:A04A: 08        .byte $08   ; 
- D 1 - I - 0x00605B 01:A04B: F8        .byte $F8   ; 
- D 1 - I - 0x00605C 01:A04C: F8        .byte $F8   ; 
- D 1 - I - 0x00605D 01:A04D: 7F        .byte $7F   ; 
- D 1 - I - 0x00605E 01:A04E: 01        .byte $01   ; 
_off010_A04F_97:
- D 1 - I - 0x00605F 01:A04F: 03        .byte $03   ; 
- D 1 - I - 0x006060 01:A050: 3D        .byte $3D   ; 
- D 1 - I - 0x006061 01:A051: 10        .byte $10   ; 
- D 1 - I - 0x006062 01:A052: F9        .byte $F9   ; 
- D 1 - I - 0x006063 01:A053: F9        .byte $F9   ; 
- D 1 - I - 0x006064 01:A054: 54        .byte $54   ; 
- D 1 - I - 0x006065 01:A055: 01        .byte $01   ; 
- D 1 - I - 0x006066 01:A056: 56        .byte $56   ; 
- D 1 - I - 0x006067 01:A057: 08        .byte $08   ; 
- D 1 - I - 0x006068 01:A058: F8        .byte $F8   ; 
- D 1 - I - 0x006069 01:A059: F9        .byte $F9   ; 
- D 1 - I - 0x00606A 01:A05A: 7F        .byte $7F   ; 
- D 1 - I - 0x00606B 01:A05B: 01        .byte $01   ; 
_off010_A05C_98:
- - - - - - 0x00606C 01:A05C: 03        .byte $03   ; 
- - - - - - 0x00606D 01:A05D: 3D        .byte $3D   ; 
- - - - - - 0x00606E 01:A05E: 10        .byte $10   ; 
- - - - - - 0x00606F 01:A05F: F9        .byte $F9   ; 
- - - - - - 0x006070 01:A060: F9        .byte $F9   ; 
- - - - - - 0x006071 01:A061: 64        .byte $64   ; 
- - - - - - 0x006072 01:A062: 01        .byte $01   ; 
- - - - - - 0x006073 01:A063: 66        .byte $66   ; 
- - - - - - 0x006074 01:A064: 08        .byte $08   ; 
- - - - - - 0x006075 01:A065: FF        .byte $FF   ; 
- - - - - - 0x006076 01:A066: FE        .byte $FE   ; 
- - - - - - 0x006077 01:A067: 7D        .byte $7D   ; 
- - - - - - 0x006078 01:A068: 01        .byte $01   ; 
_off010_A069_99:
- - - - - - 0x006079 01:A069: 03        .byte $03   ; 
- - - - - - 0x00607A 01:A06A: 3D        .byte $3D   ; 
- - - - - - 0x00607B 01:A06B: 10        .byte $10   ; 
- - - - - - 0x00607C 01:A06C: F9        .byte $F9   ; 
- - - - - - 0x00607D 01:A06D: F9        .byte $F9   ; 
- - - - - - 0x00607E 01:A06E: 68        .byte $68   ; 
- - - - - - 0x00607F 01:A06F: 01        .byte $01   ; 
- - - - - - 0x006080 01:A070: 6A        .byte $6A   ; 
- - - - - - 0x006081 01:A071: 08        .byte $08   ; 
- - - - - - 0x006082 01:A072: FF        .byte $FF   ; 
- - - - - - 0x006083 01:A073: FF        .byte $FF   ; 
- - - - - - 0x006084 01:A074: 7D        .byte $7D   ; 
- - - - - - 0x006085 01:A075: 01        .byte $01   ; 
_off010_A076_9A:
- - - - - - 0x006086 01:A076: 03        .byte $03   ; 
- - - - - - 0x006087 01:A077: 3D        .byte $3D   ; 
- - - - - - 0x006088 01:A078: 10        .byte $10   ; 
- - - - - - 0x006089 01:A079: F9        .byte $F9   ; 
- - - - - - 0x00608A 01:A07A: F9        .byte $F9   ; 
- - - - - - 0x00608B 01:A07B: 6C        .byte $6C   ; 
- - - - - - 0x00608C 01:A07C: 01        .byte $01   ; 
- - - - - - 0x00608D 01:A07D: 6E        .byte $6E   ; 
- - - - - - 0x00608E 01:A07E: 08        .byte $08   ; 
- - - - - - 0x00608F 01:A07F: FA        .byte $FA   ; 
- - - - - - 0x006090 01:A080: FF        .byte $FF   ; 
- - - - - - 0x006091 01:A081: 7F        .byte $7F   ; 
- - - - - - 0x006092 01:A082: 01        .byte $01   ; 
_off010_A083_9B:
- - - - - - 0x006093 01:A083: 03        .byte $03   ; 
- - - - - - 0x006094 01:A084: 41        .byte $41   ; 
- - - - - - 0x006095 01:A085: 20        .byte $20   ; 
- - - - - - 0x006096 01:A086: F9        .byte $F9   ; 
- - - - - - 0x006097 01:A087: F1        .byte $F1   ; 
- - - - - - 0x006098 01:A088: 40        .byte $40   ; 
- - - - - - 0x006099 01:A089: F9        .byte $F9   ; 
- - - - - - 0x00609A 01:A08A: 42        .byte $42   ; 
- - - - - - 0x00609B 01:A08B: 01        .byte $01   ; 
- - - - - - 0x00609C 01:A08C: 44        .byte $44   ; 
- - - - - - 0x00609D 01:A08D: 09        .byte $09   ; 
- - - - - - 0x00609E 01:A08E: 46        .byte $46   ; 
- - - - - - 0x00609F 01:A08F: 08        .byte $08   ; 
- - - - - - 0x0060A0 01:A090: FA        .byte $FA   ; 
- - - - - - 0x0060A1 01:A091: F5        .byte $F5   ; 
- - - - - - 0x0060A2 01:A092: 7F        .byte $7F   ; 
- - - - - - 0x0060A3 01:A093: 01        .byte $01   ; 
_off010_A094_9C:
- - - - - - 0x0060A4 01:A094: 03        .byte $03   ; 
- - - - - - 0x0060A5 01:A095: 41        .byte $41   ; 
- - - - - - 0x0060A6 01:A096: 20        .byte $20   ; 
- - - - - - 0x0060A7 01:A097: F9        .byte $F9   ; 
- - - - - - 0x0060A8 01:A098: F1        .byte $F1   ; 
- - - - - - 0x0060A9 01:A099: 50        .byte $50   ; 
- - - - - - 0x0060AA 01:A09A: F9        .byte $F9   ; 
- - - - - - 0x0060AB 01:A09B: 52        .byte $52   ; 
- - - - - - 0x0060AC 01:A09C: 01        .byte $01   ; 
- - - - - - 0x0060AD 01:A09D: 54        .byte $54   ; 
- - - - - - 0x0060AE 01:A09E: 09        .byte $09   ; 
- - - - - - 0x0060AF 01:A09F: 56        .byte $56   ; 
- - - - - - 0x0060B0 01:A0A0: 08        .byte $08   ; 
- - - - - - 0x0060B1 01:A0A1: F8        .byte $F8   ; 
- - - - - - 0x0060B2 01:A0A2: F9        .byte $F9   ; 
- - - - - - 0x0060B3 01:A0A3: 7F        .byte $7F   ; 
- - - - - - 0x0060B4 01:A0A4: 01        .byte $01   ; 
_off010_A0A5_9D:
- - - - - - 0x0060B5 01:A0A5: 03        .byte $03   ; 
- - - - - - 0x0060B6 01:A0A6: 41        .byte $41   ; 
- - - - - - 0x0060B7 01:A0A7: 20        .byte $20   ; 
- - - - - - 0x0060B8 01:A0A8: F9        .byte $F9   ; 
- - - - - - 0x0060B9 01:A0A9: F1        .byte $F1   ; 
- - - - - - 0x0060BA 01:A0AA: 48        .byte $48   ; 
- - - - - - 0x0060BB 01:A0AB: F9        .byte $F9   ; 
- - - - - - 0x0060BC 01:A0AC: 4A        .byte $4A   ; 
- - - - - - 0x0060BD 01:A0AD: 01        .byte $01   ; 
- - - - - - 0x0060BE 01:A0AE: 4C        .byte $4C   ; 
- - - - - - 0x0060BF 01:A0AF: 09        .byte $09   ; 
- - - - - - 0x0060C0 01:A0B0: 4E        .byte $4E   ; 
- - - - - - 0x0060C1 01:A0B1: 08        .byte $08   ; 
- - - - - - 0x0060C2 01:A0B2: F6        .byte $F6   ; 
- - - - - - 0x0060C3 01:A0B3: F6        .byte $F6   ; 
- - - - - - 0x0060C4 01:A0B4: 7F        .byte $7F   ; 
- - - - - - 0x0060C5 01:A0B5: 01        .byte $01   ; 
_off010_A0B6_9E:
- D 1 - I - 0x0060C6 01:A0B6: 03        .byte $03   ; 
- D 1 - I - 0x0060C7 01:A0B7: 45        .byte $45   ; 
- D 1 - I - 0x0060C8 01:A0B8: 18        .byte $18   ; 
- D 1 - I - 0x0060C9 01:A0B9: F9        .byte $F9   ; 
- D 1 - I - 0x0060CA 01:A0BA: F1        .byte $F1   ; 
- D 1 - I - 0x0060CB 01:A0BB: 40        .byte $40   ; 
- D 1 - I - 0x0060CC 01:A0BC: F9        .byte $F9   ; 
- D 1 - I - 0x0060CD 01:A0BD: 42        .byte $42   ; 
- D 1 - I - 0x0060CE 01:A0BE: 01        .byte $01   ; 
- D 1 - I - 0x0060CF 01:A0BF: 44        .byte $44   ; 
- D 1 - I - 0x0060D0 01:A0C0: 08        .byte $08   ; 
- D 1 - I - 0x0060D1 01:A0C1: FA        .byte $FA   ; 
- D 1 - I - 0x0060D2 01:A0C2: F2        .byte $F2   ; 
- D 1 - I - 0x0060D3 01:A0C3: 7D        .byte $7D   ; 
- D 1 - I - 0x0060D4 01:A0C4: 01        .byte $01   ; 
_off010_A0C5_9F:
- D 1 - I - 0x0060D5 01:A0C5: 03        .byte $03   ; 
- D 1 - I - 0x0060D6 01:A0C6: 45        .byte $45   ; 
- D 1 - I - 0x0060D7 01:A0C7: 10        .byte $10   ; 
- D 1 - I - 0x0060D8 01:A0C8: F9        .byte $F9   ; 
- D 1 - I - 0x0060D9 01:A0C9: F9        .byte $F9   ; 
- D 1 - I - 0x0060DA 01:A0CA: 48        .byte $48   ; 
- D 1 - I - 0x0060DB 01:A0CB: 01        .byte $01   ; 
- D 1 - I - 0x0060DC 01:A0CC: 4A        .byte $4A   ; 
- D 1 - I - 0x0060DD 01:A0CD: 08        .byte $08   ; 
- D 1 - I - 0x0060DE 01:A0CE: F8        .byte $F8   ; 
- D 1 - I - 0x0060DF 01:A0CF: F9        .byte $F9   ; 
- D 1 - I - 0x0060E0 01:A0D0: 7D        .byte $7D   ; 
- D 1 - I - 0x0060E1 01:A0D1: 01        .byte $01   ; 
_off010_A0D2_A0:
- D 1 - I - 0x0060E2 01:A0D2: 03        .byte $03   ; 
- D 1 - I - 0x0060E3 01:A0D3: 3D        .byte $3D   ; 
- D 1 - I - 0x0060E4 01:A0D4: 10        .byte $10   ; 
- D 1 - I - 0x0060E5 01:A0D5: F9        .byte $F9   ; 
- D 1 - I - 0x0060E6 01:A0D6: F9        .byte $F9   ; 
- D 1 - I - 0x0060E7 01:A0D7: 70        .byte $70   ; 
- D 1 - I - 0x0060E8 01:A0D8: 01        .byte $01   ; 
- D 1 - I - 0x0060E9 01:A0D9: 72        .byte $72   ; 
- D 1 - I - 0x0060EA 01:A0DA: 08        .byte $08   ; 
- D 1 - I - 0x0060EB 01:A0DB: FE        .byte $FE   ; 
- D 1 - I - 0x0060EC 01:A0DC: FD        .byte $FD   ; 
- D 1 - I - 0x0060ED 01:A0DD: 7D        .byte $7D   ; 
- D 1 - I - 0x0060EE 01:A0DE: 01        .byte $01   ; 
_off010_A0DF_A1:
- - - - - - 0x0060EF 01:A0DF: 03        .byte $03   ; 
- - - - - - 0x0060F0 01:A0E0: 41        .byte $41   ; 
- - - - - - 0x0060F1 01:A0E1: 10        .byte $10   ; 
- - - - - - 0x0060F2 01:A0E2: F1        .byte $F1   ; 
- - - - - - 0x0060F3 01:A0E3: F3        .byte $F3   ; 
- - - - - - 0x0060F4 01:A0E4: 60        .byte $60   ; 
- - - - - - 0x0060F5 01:A0E5: FB        .byte $FB   ; 
- - - - - - 0x0060F6 01:A0E6: 62        .byte $62   ; 
- - - - - - 0x0060F7 01:A0E7: 10        .byte $10   ; 
- - - - - - 0x0060F8 01:A0E8: 01        .byte $01   ; 
- - - - - - 0x0060F9 01:A0E9: F3        .byte $F3   ; 
- - - - - - 0x0060FA 01:A0EA: 68        .byte $68   ; 
- - - - - - 0x0060FB 01:A0EB: FB        .byte $FB   ; 
- - - - - - 0x0060FC 01:A0EC: 6A        .byte $6A   ; 
- - - - - - 0x0060FD 01:A0ED: 08        .byte $08   ; 
- - - - - - 0x0060FE 01:A0EE: F5        .byte $F5   ; 
- - - - - - 0x0060FF 01:A0EF: FB        .byte $FB   ; 
- - - - - - 0x006100 01:A0F0: 7F        .byte $7F   ; 
- - - - - - 0x006101 01:A0F1: 01        .byte $01   ; 
_off010_A0F2_A2:
- - - - - - 0x006102 01:A0F2: 03        .byte $03   ; 
- - - - - - 0x006103 01:A0F3: 41        .byte $41   ; 
- - - - - - 0x006104 01:A0F4: 10        .byte $10   ; 
- - - - - - 0x006105 01:A0F5: F1        .byte $F1   ; 
- - - - - - 0x006106 01:A0F6: F9        .byte $F9   ; 
- - - - - - 0x006107 01:A0F7: 64        .byte $64   ; 
- - - - - - 0x006108 01:A0F8: 01        .byte $01   ; 
- - - - - - 0x006109 01:A0F9: 66        .byte $66   ; 
- - - - - - 0x00610A 01:A0FA: 10        .byte $10   ; 
- - - - - - 0x00610B 01:A0FB: 01        .byte $01   ; 
- - - - - - 0x00610C 01:A0FC: F1        .byte $F1   ; 
- - - - - - 0x00610D 01:A0FD: 6C        .byte $6C   ; 
- - - - - - 0x00610E 01:A0FE: F9        .byte $F9   ; 
- - - - - - 0x00610F 01:A0FF: 6E        .byte $6E   ; 
- - - - - - 0x006110 01:A100: 08        .byte $08   ; 
- - - - - - 0x006111 01:A101: F9        .byte $F9   ; 
- - - - - - 0x006112 01:A102: FD        .byte $FD   ; 
- - - - - - 0x006113 01:A103: 7D        .byte $7D   ; 
- - - - - - 0x006114 01:A104: 01        .byte $01   ; 
_off010_A105_A3:
- - - - - - 0x006115 01:A105: 03        .byte $03   ; 
- - - - - - 0x006116 01:A106: 41        .byte $41   ; 
- - - - - - 0x006117 01:A107: 08        .byte $08   ; 
- - - - - - 0x006118 01:A108: EF        .byte $EF   ; 
- - - - - - 0x006119 01:A109: F6        .byte $F6   ; 
- - - - - - 0x00611A 01:A10A: 5C        .byte $5C   ; 
- - - - - - 0x00611B 01:A10B: 08        .byte $08   ; 
- - - - - - 0x00611C 01:A10C: F6        .byte $F6   ; 
- - - - - - 0x00611D 01:A10D: FE        .byte $FE   ; 
- - - - - - 0x00611E 01:A10E: 5E        .byte $5E   ; 
- - - - - - 0x00611F 01:A10F: 10        .byte $10   ; 
- - - - - - 0x006120 01:A110: FE        .byte $FE   ; 
- - - - - - 0x006121 01:A111: EF        .byte $EF   ; 
- - - - - - 0x006122 01:A112: 58        .byte $58   ; 
- - - - - - 0x006123 01:A113: F6        .byte $F6   ; 
- - - - - - 0x006124 01:A114: 5A        .byte $5A   ; 
- - - - - - 0x006125 01:A115: 08        .byte $08   ; 
- - - - - - 0x006126 01:A116: F8        .byte $F8   ; 
- - - - - - 0x006127 01:A117: F9        .byte $F9   ; 
- - - - - - 0x006128 01:A118: 7D        .byte $7D   ; 
- - - - - - 0x006129 01:A119: 01        .byte $01   ; 
_off010_A11A_A4:
- D 1 - I - 0x00612A 01:A11A: 03        .byte $03   ; 
- D 1 - I - 0x00612B 01:A11B: 45        .byte $45   ; 
- D 1 - I - 0x00612C 01:A11C: 08        .byte $08   ; 
- D 1 - I - 0x00612D 01:A11D: FD        .byte $FD   ; 
- D 1 - I - 0x00612E 01:A11E: F9        .byte $F9   ; 
- D 1 - I - 0x00612F 01:A11F: 60        .byte $60   ; 
- D 1 - I - 0x006130 01:A120: 10        .byte $10   ; 
- D 1 - I - 0x006131 01:A121: F9        .byte $F9   ; 
- D 1 - I - 0x006132 01:A122: 01        .byte $01   ; 
- D 1 - I - 0x006133 01:A123: 62        .byte $62   ; 
- D 1 - I - 0x006134 01:A124: FB        .byte $FB   ; 
- D 1 - I - 0x006135 01:A125: 7D        .byte $7D   ; 
- D 1 - I - 0x006136 01:A126: 01        .byte $01   ; 
_off010_A127_A5:
- D 1 - I - 0x006137 01:A127: 03        .byte $03   ; 
- D 1 - I - 0x006138 01:A128: 45        .byte $45   ; 
- D 1 - I - 0x006139 01:A129: 18        .byte $18   ; 
- D 1 - I - 0x00613A 01:A12A: F9        .byte $F9   ; 
- D 1 - I - 0x00613B 01:A12B: F9        .byte $F9   ; 
- D 1 - I - 0x00613C 01:A12C: 4C        .byte $4C   ; 
- D 1 - I - 0x00613D 01:A12D: 01        .byte $01   ; 
- D 1 - I - 0x00613E 01:A12E: 4E        .byte $4E   ; 
- D 1 - I - 0x00613F 01:A12F: F8        .byte $F8   ; 
- D 1 - I - 0x006140 01:A130: 7D        .byte $7D   ; 
- D 1 - I - 0x006141 01:A131: 01        .byte $01   ; 
_off010_A132_A6:
- D 1 - I - 0x006142 01:A132: 03        .byte $03   ; 
- D 1 - I - 0x006143 01:A133: 3D        .byte $3D   ; 
- D 1 - I - 0x006144 01:A134: 10        .byte $10   ; 
- D 1 - I - 0x006145 01:A135: F9        .byte $F9   ; 
- D 1 - I - 0x006146 01:A136: F9        .byte $F9   ; 
- D 1 - I - 0x006147 01:A137: 74        .byte $74   ; 
- D 1 - I - 0x006148 01:A138: 01        .byte $01   ; 
- D 1 - I - 0x006149 01:A139: 76        .byte $76   ; 
- D 1 - I - 0x00614A 01:A13A: 08        .byte $08   ; 
- D 1 - I - 0x00614B 01:A13B: FD        .byte $FD   ; 
- D 1 - I - 0x00614C 01:A13C: FE        .byte $FE   ; 
- D 1 - I - 0x00614D 01:A13D: 7D        .byte $7D   ; 
- D 1 - I - 0x00614E 01:A13E: 01        .byte $01   ; 
_off010_A13F_A7:
- D 1 - I - 0x00614F 01:A13F: 03        .byte $03   ; 
- D 1 - I - 0x006150 01:A140: 49        .byte $49   ; 
- D 1 - I - 0x006151 01:A141: 20        .byte $20   ; 
- D 1 - I - 0x006152 01:A142: F9        .byte $F9   ; 
- D 1 - I - 0x006153 01:A143: F1        .byte $F1   ; 
- D 1 - I - 0x006154 01:A144: 40        .byte $40   ; 
- D 1 - I - 0x006155 01:A145: F9        .byte $F9   ; 
- D 1 - I - 0x006156 01:A146: 42        .byte $42   ; 
- D 1 - I - 0x006157 01:A147: 01        .byte $01   ; 
- D 1 - I - 0x006158 01:A148: 44        .byte $44   ; 
- D 1 - I - 0x006159 01:A149: 09        .byte $09   ; 
- D 1 - I - 0x00615A 01:A14A: 46        .byte $46   ; 
- D 1 - I - 0x00615B 01:A14B: 08        .byte $08   ; 
- D 1 - I - 0x00615C 01:A14C: F7        .byte $F7   ; 
- D 1 - I - 0x00615D 01:A14D: F8        .byte $F8   ; 
- D 1 - I - 0x00615E 01:A14E: 7F        .byte $7F   ; 
- D 1 - I - 0x00615F 01:A14F: 01        .byte $01   ; 
_off010_A150_A8:
- D 1 - I - 0x006160 01:A150: 03        .byte $03   ; 
- D 1 - I - 0x006161 01:A151: 49        .byte $49   ; 
- D 1 - I - 0x006162 01:A152: 08        .byte $08   ; 
- D 1 - I - 0x006163 01:A153: F2        .byte $F2   ; 
- D 1 - I - 0x006164 01:A154: 01        .byte $01   ; 
- D 1 - I - 0x006165 01:A155: 4C        .byte $4C   ; 
- D 1 - I - 0x006166 01:A156: 18        .byte $18   ; 
- D 1 - I - 0x006167 01:A157: FA        .byte $FA   ; 
- D 1 - I - 0x006168 01:A158: F1        .byte $F1   ; 
- D 1 - I - 0x006169 01:A159: 48        .byte $48   ; 
- D 1 - I - 0x00616A 01:A15A: F9        .byte $F9   ; 
- D 1 - I - 0x00616B 01:A15B: 4A        .byte $4A   ; 
- D 1 - I - 0x00616C 01:A15C: F5        .byte $F5   ; 
- D 1 - I - 0x00616D 01:A15D: 7F        .byte $7F   ; 
- D 1 - I - 0x00616E 01:A15E: 01        .byte $01   ; 
_off010_A15F_A9:
- D 1 - I - 0x00616F 01:A15F: 03        .byte $03   ; 
- D 1 - I - 0x006170 01:A160: 49        .byte $49   ; 
- D 1 - I - 0x006171 01:A161: 20        .byte $20   ; 
- D 1 - I - 0x006172 01:A162: F9        .byte $F9   ; 
- D 1 - I - 0x006173 01:A163: F1        .byte $F1   ; 
- D 1 - I - 0x006174 01:A164: 50        .byte $50   ; 
- D 1 - I - 0x006175 01:A165: F9        .byte $F9   ; 
- D 1 - I - 0x006176 01:A166: 52        .byte $52   ; 
- D 1 - I - 0x006177 01:A167: 01        .byte $01   ; 
- D 1 - I - 0x006178 01:A168: 54        .byte $54   ; 
- D 1 - I - 0x006179 01:A169: 09        .byte $09   ; 
- D 1 - I - 0x00617A 01:A16A: 56        .byte $56   ; 
- D 1 - I - 0x00617B 01:A16B: 08        .byte $08   ; 
- D 1 - I - 0x00617C 01:A16C: FC        .byte $FC   ; 
- D 1 - I - 0x00617D 01:A16D: F9        .byte $F9   ; 
- D 1 - I - 0x00617E 01:A16E: 7F        .byte $7F   ; 
- D 1 - I - 0x00617F 01:A16F: 01        .byte $01   ; 
_off010_A170_AA:
- - - - - - 0x006180 01:A170: 03        .byte $03   ; 
- - - - - - 0x006181 01:A171: 49        .byte $49   ; 
- - - - - - 0x006182 01:A172: 20        .byte $20   ; 
- - - - - - 0x006183 01:A173: F9        .byte $F9   ; 
- - - - - - 0x006184 01:A174: F1        .byte $F1   ; 
- - - - - - 0x006185 01:A175: 4E        .byte $4E   ; 
- - - - - - 0x006186 01:A176: F9        .byte $F9   ; 
- - - - - - 0x006187 01:A177: 58        .byte $58   ; 
- - - - - - 0x006188 01:A178: 01        .byte $01   ; 
- - - - - - 0x006189 01:A179: 5A        .byte $5A   ; 
- - - - - - 0x00618A 01:A17A: 09        .byte $09   ; 
- - - - - - 0x00618B 01:A17B: 5C        .byte $5C   ; 
- - - - - - 0x00618C 01:A17C: 08        .byte $08   ; 
- - - - - - 0x00618D 01:A17D: FE        .byte $FE   ; 
- - - - - - 0x00618E 01:A17E: F5        .byte $F5   ; 
- - - - - - 0x00618F 01:A17F: 7F        .byte $7F   ; 
- - - - - - 0x006190 01:A180: 01        .byte $01   ; 
_off010_A181_AB:
- D 1 - I - 0x006191 01:A181: 03        .byte $03   ; 
- D 1 - I - 0x006192 01:A182: 49        .byte $49   ; 
- D 1 - I - 0x006193 01:A183: 10        .byte $10   ; 
- D 1 - I - 0x006194 01:A184: F1        .byte $F1   ; 
- D 1 - I - 0x006195 01:A185: FD        .byte $FD   ; 
- D 1 - I - 0x006196 01:A186: 62        .byte $62   ; 
- D 1 - I - 0x006197 01:A187: 05        .byte $05   ; 
- D 1 - I - 0x006198 01:A188: 5E        .byte $5E   ; 
- D 1 - I - 0x006199 01:A189: 08        .byte $08   ; 
- D 1 - I - 0x00619A 01:A18A: F9        .byte $F9   ; 
- D 1 - I - 0x00619B 01:A18B: F5        .byte $F5   ; 
- D 1 - I - 0x00619C 01:A18C: 60        .byte $60   ; 
- D 1 - I - 0x00619D 01:A18D: 08        .byte $08   ; 
- D 1 - I - 0x00619E 01:A18E: F2        .byte $F2   ; 
- D 1 - I - 0x00619F 01:A18F: 01        .byte $01   ; 
- D 1 - I - 0x0061A0 01:A190: 7F        .byte $7F   ; 
- D 1 - I - 0x0061A1 01:A191: 01        .byte $01   ; 
_off010_A192_AC:
- D 1 - I - 0x0061A2 01:A192: 03        .byte $03   ; 
- D 1 - I - 0x0061A3 01:A193: 49        .byte $49   ; 
- D 1 - I - 0x0061A4 01:A194: 20        .byte $20   ; 
- D 1 - I - 0x0061A5 01:A195: F1        .byte $F1   ; 
- D 1 - I - 0x0061A6 01:A196: F1        .byte $F1   ; 
- D 1 - I - 0x0061A7 01:A197: 64        .byte $64   ; 
- D 1 - I - 0x0061A8 01:A198: F9        .byte $F9   ; 
- D 1 - I - 0x0061A9 01:A199: 66        .byte $66   ; 
- D 1 - I - 0x0061AA 01:A19A: 01        .byte $01   ; 
- D 1 - I - 0x0061AB 01:A19B: 68        .byte $68   ; 
- D 1 - I - 0x0061AC 01:A19C: 09        .byte $09   ; 
- D 1 - I - 0x0061AD 01:A19D: 6A        .byte $6A   ; 
- D 1 - I - 0x0061AE 01:A19E: 08        .byte $08   ; 
- D 1 - I - 0x0061AF 01:A19F: F0        .byte $F0   ; 
- D 1 - I - 0x0061B0 01:A1A0: 07        .byte $07   ; 
- D 1 - I - 0x0061B1 01:A1A1: 7F        .byte $7F   ; 
- D 1 - I - 0x0061B2 01:A1A2: 01        .byte $01   ; 
_off010_A1A3_AD:
- D 1 - I - 0x0061B3 01:A1A3: 03        .byte $03   ; 
- D 1 - I - 0x0061B4 01:A1A4: 49        .byte $49   ; 
- D 1 - I - 0x0061B5 01:A1A5: 20        .byte $20   ; 
- D 1 - I - 0x0061B6 01:A1A6: F1        .byte $F1   ; 
- D 1 - I - 0x0061B7 01:A1A7: F1        .byte $F1   ; 
- D 1 - I - 0x0061B8 01:A1A8: 70        .byte $70   ; 
- D 1 - I - 0x0061B9 01:A1A9: F9        .byte $F9   ; 
- D 1 - I - 0x0061BA 01:A1AA: 72        .byte $72   ; 
- D 1 - I - 0x0061BB 01:A1AB: 01        .byte $01   ; 
- D 1 - I - 0x0061BC 01:A1AC: 74        .byte $74   ; 
- D 1 - I - 0x0061BD 01:A1AD: 09        .byte $09   ; 
- D 1 - I - 0x0061BE 01:A1AE: 76        .byte $76   ; 
- D 1 - I - 0x0061BF 01:A1AF: 08        .byte $08   ; 
- D 1 - I - 0x0061C0 01:A1B0: F3        .byte $F3   ; 
- D 1 - I - 0x0061C1 01:A1B1: 02        .byte $02   ; 
- D 1 - I - 0x0061C2 01:A1B2: 7F        .byte $7F   ; 
- D 1 - I - 0x0061C3 01:A1B3: 01        .byte $01   ; 
_off010_A1B4_AE:
- - - - - - 0x0061C4 01:A1B4: 03        .byte $03   ; 
- - - - - - 0x0061C5 01:A1B5: 49        .byte $49   ; 
- - - - - - 0x0061C6 01:A1B6: 20        .byte $20   ; 
- - - - - - 0x0061C7 01:A1B7: F1        .byte $F1   ; 
- - - - - - 0x0061C8 01:A1B8: F1        .byte $F1   ; 
- - - - - - 0x0061C9 01:A1B9: 6C        .byte $6C   ; 
- - - - - - 0x0061CA 01:A1BA: F9        .byte $F9   ; 
- - - - - - 0x0061CB 01:A1BB: 6E        .byte $6E   ; 
- - - - - - 0x0061CC 01:A1BC: 01        .byte $01   ; 
- - - - - - 0x0061CD 01:A1BD: 78        .byte $78   ; 
- - - - - - 0x0061CE 01:A1BE: 09        .byte $09   ; 
- - - - - - 0x0061CF 01:A1BF: 7A        .byte $7A   ; 
- - - - - - 0x0061D0 01:A1C0: 08        .byte $08   ; 
- - - - - - 0x0061D1 01:A1C1: F3        .byte $F3   ; 
- - - - - - 0x0061D2 01:A1C2: 04        .byte $04   ; 
- - - - - - 0x0061D3 01:A1C3: 7F        .byte $7F   ; 
- - - - - - 0x0061D4 01:A1C4: 01        .byte $01   ; 
_off010_A1C5_AF:
- D 1 - I - 0x0061D5 01:A1C5: 03        .byte $03   ; 
- D 1 - I - 0x0061D6 01:A1C6: 45        .byte $45   ; 
- D 1 - I - 0x0061D7 01:A1C7: 18        .byte $18   ; 
- D 1 - I - 0x0061D8 01:A1C8: F1        .byte $F1   ; 
- D 1 - I - 0x0061D9 01:A1C9: F9        .byte $F9   ; 
- D 1 - I - 0x0061DA 01:A1CA: 46        .byte $46   ; 
- D 1 - I - 0x0061DB 01:A1CB: 01        .byte $01   ; 
- D 1 - I - 0x0061DC 01:A1CC: 50        .byte $50   ; 
- D 1 - I - 0x0061DD 01:A1CD: 08        .byte $08   ; 
- D 1 - I - 0x0061DE 01:A1CE: 52        .byte $52   ; 
- D 1 - I - 0x0061DF 01:A1CF: 08        .byte $08   ; 
- D 1 - I - 0x0061E0 01:A1D0: F2        .byte $F2   ; 
- D 1 - I - 0x0061E1 01:A1D1: 08        .byte $08   ; 
- D 1 - I - 0x0061E2 01:A1D2: 7D        .byte $7D   ; 
- D 1 - I - 0x0061E3 01:A1D3: 01        .byte $01   ; 
_off010_A1D4_B0:
- D 1 - I - 0x0061E4 01:A1D4: 03        .byte $03   ; 
- D 1 - I - 0x0061E5 01:A1D5: 45        .byte $45   ; 
- D 1 - I - 0x0061E6 01:A1D6: 10        .byte $10   ; 
- D 1 - I - 0x0061E7 01:A1D7: F1        .byte $F1   ; 
- D 1 - I - 0x0061E8 01:A1D8: F9        .byte $F9   ; 
- D 1 - I - 0x0061E9 01:A1D9: 54        .byte $54   ; 
- D 1 - I - 0x0061EA 01:A1DA: 01        .byte $01   ; 
- D 1 - I - 0x0061EB 01:A1DB: 56        .byte $56   ; 
- D 1 - I - 0x0061EC 01:A1DC: 08        .byte $08   ; 
- D 1 - I - 0x0061ED 01:A1DD: F3        .byte $F3   ; 
- D 1 - I - 0x0061EE 01:A1DE: FE        .byte $FE   ; 
- D 1 - I - 0x0061EF 01:A1DF: 7D        .byte $7D   ; 
- D 1 - I - 0x0061F0 01:A1E0: 01        .byte $01   ; 
_off010_A1E1_B1:
- D 1 - I - 0x0061F1 01:A1E1: 03        .byte $03   ; 
- D 1 - I - 0x0061F2 01:A1E2: 3D        .byte $3D   ; 
- D 1 - I - 0x0061F3 01:A1E3: 10        .byte $10   ; 
- D 1 - I - 0x0061F4 01:A1E4: F9        .byte $F9   ; 
- D 1 - I - 0x0061F5 01:A1E5: F9        .byte $F9   ; 
- D 1 - I - 0x0061F6 01:A1E6: 74        .byte $74   ; 
- D 1 - I - 0x0061F7 01:A1E7: 01        .byte $01   ; 
- D 1 - I - 0x0061F8 01:A1E8: 76        .byte $76   ; 
- D 1 - I - 0x0061F9 01:A1E9: 08        .byte $08   ; 
- D 1 - I - 0x0061FA 01:A1EA: FD        .byte $FD   ; 
- D 1 - I - 0x0061FB 01:A1EB: FE        .byte $FE   ; 
- D 1 - I - 0x0061FC 01:A1EC: 7D        .byte $7D   ; 
- D 1 - I - 0x0061FD 01:A1ED: 01        .byte $01   ; 
_off010_A1EE_B2:
- D 1 - I - 0x0061FE 01:A1EE: 03        .byte $03   ; 
- D 1 - I - 0x0061FF 01:A1EF: 4D        .byte $4D   ; 
- D 1 - I - 0x006200 01:A1F0: 10        .byte $10   ; 
- D 1 - I - 0x006201 01:A1F1: F0        .byte $F0   ; 
- D 1 - I - 0x006202 01:A1F2: F9        .byte $F9   ; 
- D 1 - I - 0x006203 01:A1F3: 40        .byte $40   ; 
- D 1 - I - 0x006204 01:A1F4: 01        .byte $01   ; 
- D 1 - I - 0x006205 01:A1F5: 42        .byte $42   ; 
- D 1 - I - 0x006206 01:A1F6: 10        .byte $10   ; 
- D 1 - I - 0x006207 01:A1F7: 00        .byte $00   ; 
- D 1 - I - 0x006208 01:A1F8: F1        .byte $F1   ; 
- D 1 - I - 0x006209 01:A1F9: 48        .byte $48   ; 
- D 1 - I - 0x00620A 01:A1FA: F9        .byte $F9   ; 
- D 1 - I - 0x00620B 01:A1FB: 4A        .byte $4A   ; 
- D 1 - I - 0x00620C 01:A1FC: 08        .byte $08   ; 
- D 1 - I - 0x00620D 01:A1FD: 01        .byte $01   ; 
- D 1 - I - 0x00620E 01:A1FE: F6        .byte $F6   ; 
- D 1 - I - 0x00620F 01:A1FF: 7D        .byte $7D   ; 
- D 1 - I - 0x006210 01:A200: 01        .byte $01   ; 
_off010_A201_B3:
- D 1 - I - 0x006211 01:A201: 03        .byte $03   ; 
- D 1 - I - 0x006212 01:A202: 4D        .byte $4D   ; 
- D 1 - I - 0x006213 01:A203: 10        .byte $10   ; 
- D 1 - I - 0x006214 01:A204: F1        .byte $F1   ; 
- D 1 - I - 0x006215 01:A205: F1        .byte $F1   ; 
- D 1 - I - 0x006216 01:A206: 44        .byte $44   ; 
- D 1 - I - 0x006217 01:A207: F9        .byte $F9   ; 
- D 1 - I - 0x006218 01:A208: 46        .byte $46   ; 
- D 1 - I - 0x006219 01:A209: 10        .byte $10   ; 
- D 1 - I - 0x00621A 01:A20A: 01        .byte $01   ; 
- D 1 - I - 0x00621B 01:A20B: F1        .byte $F1   ; 
- D 1 - I - 0x00621C 01:A20C: 4C        .byte $4C   ; 
- D 1 - I - 0x00621D 01:A20D: F9        .byte $F9   ; 
- D 1 - I - 0x00621E 01:A20E: 4E        .byte $4E   ; 
- D 1 - I - 0x00621F 01:A20F: 08        .byte $08   ; 
- D 1 - I - 0x006220 01:A210: 05        .byte $05   ; 
- D 1 - I - 0x006221 01:A211: F4        .byte $F4   ; 
- D 1 - I - 0x006222 01:A212: 7D        .byte $7D   ; 
- D 1 - I - 0x006223 01:A213: 01        .byte $01   ; 
_off010_A214_B4:
- D 1 - I - 0x006224 01:A214: 03        .byte $03   ; 
- D 1 - I - 0x006225 01:A215: 4D        .byte $4D   ; 
- D 1 - I - 0x006226 01:A216: 08        .byte $08   ; 
- D 1 - I - 0x006227 01:A217: F1        .byte $F1   ; 
- D 1 - I - 0x006228 01:A218: F8        .byte $F8   ; 
- D 1 - I - 0x006229 01:A219: 50        .byte $50   ; 
- D 1 - I - 0x00622A 01:A21A: 10        .byte $10   ; 
- D 1 - I - 0x00622B 01:A21B: 01        .byte $01   ; 
- D 1 - I - 0x00622C 01:A21C: F1        .byte $F1   ; 
- D 1 - I - 0x00622D 01:A21D: 58        .byte $58   ; 
- D 1 - I - 0x00622E 01:A21E: F9        .byte $F9   ; 
- D 1 - I - 0x00622F 01:A21F: 5A        .byte $5A   ; 
- D 1 - I - 0x006230 01:A220: 08        .byte $08   ; 
- D 1 - I - 0x006231 01:A221: 02        .byte $02   ; 
- D 1 - I - 0x006232 01:A222: F7        .byte $F7   ; 
- D 1 - I - 0x006233 01:A223: 7D        .byte $7D   ; 
- D 1 - I - 0x006234 01:A224: 01        .byte $01   ; 
_off010_A225_B5:
- - - - - - 0x006235 01:A225: 03        .byte $03   ; 
- - - - - - 0x006236 01:A226: 4D        .byte $4D   ; 
- - - - - - 0x006237 01:A227: 08        .byte $08   ; 
- - - - - - 0x006238 01:A228: F1        .byte $F1   ; 
- - - - - - 0x006239 01:A229: F9        .byte $F9   ; 
- - - - - - 0x00623A 01:A22A: 52        .byte $52   ; 
- - - - - - 0x00623B 01:A22B: 08        .byte $08   ; 
- - - - - - 0x00623C 01:A22C: 01        .byte $01   ; 
- - - - - - 0x00623D 01:A22D: F8        .byte $F8   ; 
- - - - - - 0x00623E 01:A22E: 54        .byte $54   ; 
- - - - - - 0x00623F 01:A22F: 08        .byte $08   ; 
- - - - - - 0x006240 01:A230: 05        .byte $05   ; 
- - - - - - 0x006241 01:A231: F7        .byte $F7   ; 
- - - - - - 0x006242 01:A232: 7F        .byte $7F   ; 
- - - - - - 0x006243 01:A233: 01        .byte $01   ; 
_off010_A234_B6:
- D 1 - I - 0x006244 01:A234: 03        .byte $03   ; 
- D 1 - I - 0x006245 01:A235: 45        .byte $45   ; 
- D 1 - I - 0x006246 01:A236: 08        .byte $08   ; 
- D 1 - I - 0x006247 01:A237: F1        .byte $F1   ; 
- D 1 - I - 0x006248 01:A238: F8        .byte $F8   ; 
- D 1 - I - 0x006249 01:A239: 64        .byte $64   ; 
- D 1 - I - 0x00624A 01:A23A: 10        .byte $10   ; 
- D 1 - I - 0x00624B 01:A23B: FF        .byte $FF   ; 
- D 1 - I - 0x00624C 01:A23C: F1        .byte $F1   ; 
- D 1 - I - 0x00624D 01:A23D: 58        .byte $58   ; 
- D 1 - I - 0x00624E 01:A23E: F9        .byte $F9   ; 
- D 1 - I - 0x00624F 01:A23F: 5A        .byte $5A   ; 
- D 1 - I - 0x006250 01:A240: 08        .byte $08   ; 
- D 1 - I - 0x006251 01:A241: 00        .byte $00   ; 
- D 1 - I - 0x006252 01:A242: F2        .byte $F2   ; 
- D 1 - I - 0x006253 01:A243: 7F        .byte $7F   ; 
- D 1 - I - 0x006254 01:A244: 01        .byte $01   ; 
_off010_A245_B7:
- D 1 - I - 0x006255 01:A245: 03        .byte $03   ; 
- D 1 - I - 0x006256 01:A246: 45        .byte $45   ; 
- D 1 - I - 0x006257 01:A247: 18        .byte $18   ; 
- D 1 - I - 0x006258 01:A248: F8        .byte $F8   ; 
- D 1 - I - 0x006259 01:A249: F1        .byte $F1   ; 
- D 1 - I - 0x00625A 01:A24A: 5C        .byte $5C   ; 
- D 1 - I - 0x00625B 01:A24B: F9        .byte $F9   ; 
- D 1 - I - 0x00625C 01:A24C: 5E        .byte $5E   ; 
- D 1 - I - 0x00625D 01:A24D: F2        .byte $F2   ; 
- D 1 - I - 0x00625E 01:A24E: 7F        .byte $7F   ; 
- D 1 - I - 0x00625F 01:A24F: 01        .byte $01   ; 
_off010_A250_B8:
- D 1 - I - 0x006260 01:A250: 03        .byte $03   ; 
- D 1 - I - 0x006261 01:A251: 3D        .byte $3D   ; 
- D 1 - I - 0x006262 01:A252: 10        .byte $10   ; 
- D 1 - I - 0x006263 01:A253: F8        .byte $F8   ; 
- D 1 - I - 0x006264 01:A254: F9        .byte $F9   ; 
- D 1 - I - 0x006265 01:A255: 74        .byte $74   ; 
- D 1 - I - 0x006266 01:A256: 01        .byte $01   ; 
- D 1 - I - 0x006267 01:A257: 76        .byte $76   ; 
- D 1 - I - 0x006268 01:A258: 08        .byte $08   ; 
- D 1 - I - 0x006269 01:A259: FC        .byte $FC   ; 
- D 1 - I - 0x00626A 01:A25A: FD        .byte $FD   ; 
- D 1 - I - 0x00626B 01:A25B: 7D        .byte $7D   ; 
- D 1 - I - 0x00626C 01:A25C: 01        .byte $01   ; 
_off010_A25D_B9:
- D 1 - I - 0x00626D 01:A25D: 03        .byte $03   ; 
- D 1 - I - 0x00626E 01:A25E: 4D        .byte $4D   ; 
- D 1 - I - 0x00626F 01:A25F: 08        .byte $08   ; 
- D 1 - I - 0x006270 01:A260: F1        .byte $F1   ; 
- D 1 - I - 0x006271 01:A261: FA        .byte $FA   ; 
- D 1 - I - 0x006272 01:A262: 56        .byte $56   ; 
- D 1 - I - 0x006273 01:A263: 10        .byte $10   ; 
- D 1 - I - 0x006274 01:A264: 01        .byte $01   ; 
- D 1 - I - 0x006275 01:A265: F9        .byte $F9   ; 
- D 1 - I - 0x006276 01:A266: 5C        .byte $5C   ; 
- D 1 - I - 0x006277 01:A267: 01        .byte $01   ; 
- D 1 - I - 0x006278 01:A268: 5E        .byte $5E   ; 
- D 1 - I - 0x006279 01:A269: 08        .byte $08   ; 
- D 1 - I - 0x00627A 01:A26A: F8        .byte $F8   ; 
- D 1 - I - 0x00627B 01:A26B: FB        .byte $FB   ; 
- D 1 - I - 0x00627C 01:A26C: 7D        .byte $7D   ; 
- D 1 - I - 0x00627D 01:A26D: 01        .byte $01   ; 
_off010_A26E_BA:
- D 1 - I - 0x00627E 01:A26E: 03        .byte $03   ; 
- D 1 - I - 0x00627F 01:A26F: 4D        .byte $4D   ; 
- D 1 - I - 0x006280 01:A270: 08        .byte $08   ; 
- D 1 - I - 0x006281 01:A271: E9        .byte $E9   ; 
- D 1 - I - 0x006282 01:A272: FC        .byte $FC   ; 
- D 1 - I - 0x006283 01:A273: 64        .byte $64   ; 
- D 1 - I - 0x006284 01:A274: 10        .byte $10   ; 
- D 1 - I - 0x006285 01:A275: F9        .byte $F9   ; 
- D 1 - I - 0x006286 01:A276: F4        .byte $F4   ; 
- D 1 - I - 0x006287 01:A277: 60        .byte $60   ; 
- D 1 - I - 0x006288 01:A278: FC        .byte $FC   ; 
- D 1 - I - 0x006289 01:A279: 62        .byte $62   ; 
- D 1 - I - 0x00628A 01:A27A: 08        .byte $08   ; 
- D 1 - I - 0x00628B 01:A27B: F5        .byte $F5   ; 
- D 1 - I - 0x00628C 01:A27C: FE        .byte $FE   ; 
- D 1 - I - 0x00628D 01:A27D: 7D        .byte $7D   ; 
- D 1 - I - 0x00628E 01:A27E: 01        .byte $01   ; 
_off010_A27F_BB:
- D 1 - I - 0x00628F 01:A27F: 03        .byte $03   ; 
- D 1 - I - 0x006290 01:A280: 4D        .byte $4D   ; 
- D 1 - I - 0x006291 01:A281: 10        .byte $10   ; 
- D 1 - I - 0x006292 01:A282: ED        .byte $ED   ; 
- D 1 - I - 0x006293 01:A283: F9        .byte $F9   ; 
- D 1 - I - 0x006294 01:A284: 68        .byte $68   ; 
- D 1 - I - 0x006295 01:A285: 01        .byte $01   ; 
- D 1 - I - 0x006296 01:A286: 6A        .byte $6A   ; 
- D 1 - I - 0x006297 01:A287: 08        .byte $08   ; 
- D 1 - I - 0x006298 01:A288: FD        .byte $FD   ; 
- D 1 - I - 0x006299 01:A289: F9        .byte $F9   ; 
- D 1 - I - 0x00629A 01:A28A: 66        .byte $66   ; 
- D 1 - I - 0x00629B 01:A28B: 08        .byte $08   ; 
- D 1 - I - 0x00629C 01:A28C: F1        .byte $F1   ; 
- D 1 - I - 0x00629D 01:A28D: 00        .byte $00   ; 
- D 1 - I - 0x00629E 01:A28E: 7D        .byte $7D   ; 
- D 1 - I - 0x00629F 01:A28F: 01        .byte $01   ; 
_off010_A290_BC:
- - - - - - 0x0062A0 01:A290: 03        .byte $03   ; 
- - - - - - 0x0062A1 01:A291: 4D        .byte $4D   ; 
- - - - - - 0x0062A2 01:A292: 08        .byte $08   ; 
- - - - - - 0x0062A3 01:A293: FD        .byte $FD   ; 
- - - - - - 0x0062A4 01:A294: F9        .byte $F9   ; 
- - - - - - 0x0062A5 01:A295: 6C        .byte $6C   ; 
- - - - - - 0x0062A6 01:A296: 08        .byte $08   ; 
- - - - - - 0x0062A7 01:A297: 01        .byte $01   ; 
- - - - - - 0x0062A8 01:A298: 01        .byte $01   ; 
- - - - - - 0x0062A9 01:A299: 6E        .byte $6E   ; 
- - - - - - 0x0062AA 01:A29A: 08        .byte $08   ; 
- - - - - - 0x0062AB 01:A29B: F1        .byte $F1   ; 
- - - - - - 0x0062AC 01:A29C: 01        .byte $01   ; 
- - - - - - 0x0062AD 01:A29D: 70        .byte $70   ; 
- - - - - - 0x0062AE 01:A29E: 08        .byte $08   ; 
- - - - - - 0x0062AF 01:A29F: F5        .byte $F5   ; 
- - - - - - 0x0062B0 01:A2A0: 02        .byte $02   ; 
- - - - - - 0x0062B1 01:A2A1: 7D        .byte $7D   ; 
- - - - - - 0x0062B2 01:A2A2: 01        .byte $01   ; 
_off010_A2A3_BD:
- - - - - - 0x0062B3 01:A2A3: 01        .byte $01   ; 
_off010_A2A4_BE:
- - - - - - 0x0062B4 01:A2A4: 01        .byte $01   ; 
_off010_A2A5_BF:
- - - - - - 0x0062B5 01:A2A5: 01        .byte $01   ; 
_off010_A2A6_C0:
- - - - - - 0x0062B6 01:A2A6: 01        .byte $01   ; 
_off010_A2A7_C1:
- - - - - - 0x0062B7 01:A2A7: 01        .byte $01   ; 
_off010_A2A8_C2:
- - - - - - 0x0062B8 01:A2A8: 01        .byte $01   ; 
_off010_A2A9_C3:
- - - - - - 0x0062B9 01:A2A9: 01        .byte $01   ; 
_off010_A2AA_C4:
- - - - - - 0x0062BA 01:A2AA: 01        .byte $01   ; 
_off010_A2AB_C5:
- - - - - - 0x0062BB 01:A2AB: 01        .byte $01   ; 
_off010_A2AC_C6:
- - - - - - 0x0062BC 01:A2AC: 01        .byte $01   ; 
_off010_A2AD_C7:
- - - - - - 0x0062BD 01:A2AD: 01        .byte $01   ; 
_off010_A2AE_C8:
- - - - - - 0x0062BE 01:A2AE: 01        .byte $01   ; 
_off010_A2AF_C9:
- - - - - - 0x0062BF 01:A2AF: 01        .byte $01   ; 
_off010_A2B0_CA:
- - - - - - 0x0062C0 01:A2B0: 01        .byte $01   ; 
_off010_A2B1_CB:
- - - - - - 0x0062C1 01:A2B1: 01        .byte $01   ; 
_off010_A2B2_CC:
- - - - - - 0x0062C2 01:A2B2: 01        .byte $01   ; 
_off010_A2B3_CD:
- - - - - - 0x0062C3 01:A2B3: 01        .byte $01   ; 
_off010_A2B4_CE:
- - - - - - 0x0062C4 01:A2B4: 01        .byte $01   ; 
_off010_A2B5_CF:
- - - - - - 0x0062C5 01:A2B5: 01        .byte $01   ; 
_off010_A2B6_D0:
- - - - - - 0x0062C6 01:A2B6: 01        .byte $01   ; 
_off010_A2B7_D1:
- - - - - - 0x0062C7 01:A2B7: 01        .byte $01   ; 
_off010_A2B8_D2:
- - - - - - 0x0062C8 01:A2B8: 01        .byte $01   ; 
_off010_A2B9_D3:
- - - - - - 0x0062C9 01:A2B9: 01        .byte $01   ; 
_off010_A2BA_D4:
- - - - - - 0x0062CA 01:A2BA: 01        .byte $01   ; 
_off010_A2BB_D5:
- - - - - - 0x0062CB 01:A2BB: 01        .byte $01   ; 
_off010_A2BC_D6:
- - - - - - 0x0062CC 01:A2BC: 01        .byte $01   ; 
_off010_A2BD_D7:
- - - - - - 0x0062CD 01:A2BD: 01        .byte $01   ; 
_off010_A2BE_D8:
- - - - - - 0x0062CE 01:A2BE: 01        .byte $01   ; 
_off010_A2BF_D9:
- - - - - - 0x0062CF 01:A2BF: 01        .byte $01   ; 
_off010_A2C0_DA:
- - - - - - 0x0062D0 01:A2C0: 01        .byte $01   ; 
_off010_A2C1_DB:
- - - - - - 0x0062D1 01:A2C1: 01        .byte $01   ; 
_off010_A2C2_DC:
- - - - - - 0x0062D2 01:A2C2: 01        .byte $01   ; 
_off010_A2C3_DD:
- - - - - - 0x0062D3 01:A2C3: 01        .byte $01   ; 
_off010_A2C4_DE:
- - - - - - 0x0062D4 01:A2C4: 01        .byte $01   ; 
_off010_A2C5_DF:
- - - - - - 0x0062D5 01:A2C5: 01        .byte $01   ; 
_off010_A2C6_E0:
- D 1 - I - 0x0062D6 01:A2C6: 03        .byte $03   ; 
- D 1 - I - 0x0062D7 01:A2C7: 10        .byte $10   ; 
- D 1 - I - 0x0062D8 01:A2C8: 08        .byte $08   ; 
- D 1 - I - 0x0062D9 01:A2C9: F8        .byte $F8   ; 
- D 1 - I - 0x0062DA 01:A2CA: FC        .byte $FC   ; 
- D 1 - I - 0x0062DB 01:A2CB: 1B        .byte $1B   ; 
- D 1 - I - 0x0062DC 01:A2CC: 01        .byte $01   ; 
_off010_A2CD_E1:
- D 1 - I - 0x0062DD 01:A2CD: 03        .byte $03   ; 
- D 1 - I - 0x0062DE 01:A2CE: B7        .byte $B7   ; 
- D 1 - I - 0x0062DF 01:A2CF: 10        .byte $10   ; 
- D 1 - I - 0x0062E0 01:A2D0: ED        .byte $ED   ; 
- D 1 - I - 0x0062E1 01:A2D1: F9        .byte $F9   ; 
- D 1 - I - 0x0062E2 01:A2D2: F0        .byte $F0   ; 
- D 1 - I - 0x0062E3 01:A2D3: 01        .byte $01   ; 
- D 1 - I - 0x0062E4 01:A2D4: F2        .byte $F2   ; 
- D 1 - I - 0x0062E5 01:A2D5: 08        .byte $08   ; 
- D 1 - I - 0x0062E6 01:A2D6: FD        .byte $FD   ; 
- D 1 - I - 0x0062E7 01:A2D7: F9        .byte $F9   ; 
- D 1 - I - 0x0062E8 01:A2D8: DE        .byte $DE   ; 
- D 1 - I - 0x0062E9 01:A2D9: 08        .byte $08   ; 
- D 1 - I - 0x0062EA 01:A2DA: EF        .byte $EF   ; 
- D 1 - I - 0x0062EB 01:A2DB: FD        .byte $FD   ; 
- D 1 - I - 0x0062EC 01:A2DC: FD        .byte $FD   ; 
- D 1 - I - 0x0062ED 01:A2DD: 01        .byte $01   ; 
_off010_A2DE_E2:
- D 1 - I - 0x0062EE 01:A2DE: 03        .byte $03   ; 
- D 1 - I - 0x0062EF 01:A2DF: BB        .byte $BB   ; 
- D 1 - I - 0x0062F0 01:A2E0: 10        .byte $10   ; 
- D 1 - I - 0x0062F1 01:A2E1: F9        .byte $F9   ; 
- D 1 - I - 0x0062F2 01:A2E2: F9        .byte $F9   ; 
- D 1 - I - 0x0062F3 01:A2E3: F0        .byte $F0   ; 
- D 1 - I - 0x0062F4 01:A2E4: 01        .byte $01   ; 
- D 1 - I - 0x0062F5 01:A2E5: F2        .byte $F2   ; 
- D 1 - I - 0x0062F6 01:A2E6: 08        .byte $08   ; 
- D 1 - I - 0x0062F7 01:A2E7: FB        .byte $FB   ; 
- D 1 - I - 0x0062F8 01:A2E8: FC        .byte $FC   ; 
- D 1 - I - 0x0062F9 01:A2E9: FD        .byte $FD   ; 
- D 1 - I - 0x0062FA 01:A2EA: 01        .byte $01   ; 
_off010_A2EB_E3:
- D 1 - I - 0x0062FB 01:A2EB: 03        .byte $03   ; 
- D 1 - I - 0x0062FC 01:A2EC: B7        .byte $B7   ; 
- D 1 - I - 0x0062FD 01:A2ED: 08        .byte $08   ; 
- D 1 - I - 0x0062FE 01:A2EE: ED        .byte $ED   ; 
- D 1 - I - 0x0062FF 01:A2EF: F5        .byte $F5   ; 
- D 1 - I - 0x006300 01:A2F0: F4        .byte $F4   ; 
- D 1 - I - 0x006301 01:A2F1: 08        .byte $08   ; 
- D 1 - I - 0x006302 01:A2F2: F5        .byte $F5   ; 
- D 1 - I - 0x006303 01:A2F3: FD        .byte $FD   ; 
- D 1 - I - 0x006304 01:A2F4: F6        .byte $F6   ; 
- D 1 - I - 0x006305 01:A2F5: 08        .byte $08   ; 
- D 1 - I - 0x006306 01:A2F6: FD        .byte $FD   ; 
- D 1 - I - 0x006307 01:A2F7: F5        .byte $F5   ; 
- D 1 - I - 0x006308 01:A2F8: EC        .byte $EC   ; 
- D 1 - I - 0x006309 01:A2F9: 08        .byte $08   ; 
- D 1 - I - 0x00630A 01:A2FA: F1        .byte $F1   ; 
- D 1 - I - 0x00630B 01:A2FB: F9        .byte $F9   ; 
- D 1 - I - 0x00630C 01:A2FC: FD        .byte $FD   ; 
- D 1 - I - 0x00630D 01:A2FD: 01        .byte $01   ; 
_off010_A2FE_E4:
- D 1 - I - 0x00630E 01:A2FE: 03        .byte $03   ; 
- D 1 - I - 0x00630F 01:A2FF: BB        .byte $BB   ; 
- D 1 - I - 0x006310 01:A300: 10        .byte $10   ; 
- D 1 - I - 0x006311 01:A301: F7        .byte $F7   ; 
- D 1 - I - 0x006312 01:A302: F7        .byte $F7   ; 
- D 1 - I - 0x006313 01:A303: F4        .byte $F4   ; 
- D 1 - I - 0x006314 01:A304: FF        .byte $FF   ; 
- D 1 - I - 0x006315 01:A305: F6        .byte $F6   ; 
- D 1 - I - 0x006316 01:A306: 08        .byte $08   ; 
- D 1 - I - 0x006317 01:A307: F9        .byte $F9   ; 
- D 1 - I - 0x006318 01:A308: FA        .byte $FA   ; 
- D 1 - I - 0x006319 01:A309: FD        .byte $FD   ; 
- D 1 - I - 0x00631A 01:A30A: 01        .byte $01   ; 
_off010_A30B_E5:
- D 1 - I - 0x00631B 01:A30B: 03        .byte $03   ; 
- D 1 - I - 0x00631C 01:A30C: B7        .byte $B7   ; 
- D 1 - I - 0x00631D 01:A30D: 20        .byte $20   ; 
- D 1 - I - 0x00631E 01:A30E: F9        .byte $F9   ; 
- D 1 - I - 0x00631F 01:A30F: ED        .byte $ED   ; 
- D 1 - I - 0x006320 01:A310: F8        .byte $F8   ; 
- D 1 - I - 0x006321 01:A311: F5        .byte $F5   ; 
- D 1 - I - 0x006322 01:A312: FA        .byte $FA   ; 
- D 1 - I - 0x006323 01:A313: FD        .byte $FD   ; 
- D 1 - I - 0x006324 01:A314: EE        .byte $EE   ; 
- D 1 - I - 0x006325 01:A315: EF        .byte $EF   ; 
- D 1 - I - 0x006326 01:A316: FF        .byte $FF   ; 
- D 1 - I - 0x006327 01:A317: 01        .byte $01   ; 
_off010_A318_E6:
- D 1 - I - 0x006328 01:A318: 03        .byte $03   ; 
- D 1 - I - 0x006329 01:A319: BB        .byte $BB   ; 
- D 1 - I - 0x00632A 01:A31A: 10        .byte $10   ; 
- D 1 - I - 0x00632B 01:A31B: F9        .byte $F9   ; 
- D 1 - I - 0x00632C 01:A31C: F9        .byte $F9   ; 
- D 1 - I - 0x00632D 01:A31D: F8        .byte $F8   ; 
- D 1 - I - 0x00632E 01:A31E: 01        .byte $01   ; 
- D 1 - I - 0x00632F 01:A31F: FA        .byte $FA   ; 
- D 1 - I - 0x006330 01:A320: 08        .byte $08   ; 
- D 1 - I - 0x006331 01:A321: FA        .byte $FA   ; 
- D 1 - I - 0x006332 01:A322: FB        .byte $FB   ; 
- D 1 - I - 0x006333 01:A323: FF        .byte $FF   ; 
- D 1 - I - 0x006334 01:A324: 01        .byte $01   ; 
_off010_A325_E7:
- - - - - - 0x006335 01:A325: 01        .byte $01   ; 
_off010_A326_E8:
- D 1 - I - 0x006336 01:A326: 10        .byte $10   ; 
- D 1 - I - 0x006337 01:A327: F1        .byte $F1   ; 
- D 1 - I - 0x006338 01:A328: E9        .byte $E9   ; 
- D 1 - I - 0x006339 01:A329: 82        .byte $82   ; 
- D 1 - I - 0x00633A 01:A32A: F1        .byte $F1   ; 
- D 1 - I - 0x00633B 01:A32B: 84        .byte $84   ; 
- D 1 - I - 0x00633C 01:A32C: 08        .byte $08   ; 
- D 1 - I - 0x00633D 01:A32D: F0        .byte $F0   ; 
- D 1 - I - 0x00633E 01:A32E: ED        .byte $ED   ; 
- D 1 - I - 0x00633F 01:A32F: 81        .byte $81   ; 
- D 1 - I - 0x006340 01:A330: 10        .byte $10   ; 
- D 1 - I - 0x006341 01:A331: 01        .byte $01   ; 
- D 1 - I - 0x006342 01:A332: E8        .byte $E8   ; 
- D 1 - I - 0x006343 01:A333: 8A        .byte $8A   ; 
- D 1 - I - 0x006344 01:A334: F0        .byte $F0   ; 
- D 1 - I - 0x006345 01:A335: 8C        .byte $8C   ; 
- D 1 - I - 0x006346 01:A336: 28        .byte $28   ; 
- D 1 - I - 0x006347 01:A337: 11        .byte $11   ; 
- D 1 - I - 0x006348 01:A338: E1        .byte $E1   ; 
- D 1 - I - 0x006349 01:A339: 86        .byte $86   ; 
- D 1 - I - 0x00634A 01:A33A: E1        .byte $E1   ; 
- D 1 - I - 0x00634B 01:A33B: 93        .byte $93   ; 
- D 1 - I - 0x00634C 01:A33C: E9        .byte $E9   ; 
- D 1 - I - 0x00634D 01:A33D: 90        .byte $90   ; 
- D 1 - I - 0x00634E 01:A33E: F1        .byte $F1   ; 
- D 1 - I - 0x00634F 01:A33F: 88        .byte $88   ; 
- D 1 - I - 0x006350 01:A340: F1        .byte $F1   ; 
- D 1 - I - 0x006351 01:A341: 95        .byte $95   ; 
- D 1 - I - 0x006352 01:A342: 18        .byte $18   ; 
- D 1 - I - 0x006353 01:A343: 21        .byte $21   ; 
- D 1 - I - 0x006354 01:A344: E1        .byte $E1   ; 
- D 1 - I - 0x006355 01:A345: 4D        .byte $4D   ; 
- D 1 - I - 0x006356 01:A346: E9        .byte $E9   ; 
- D 1 - I - 0x006357 01:A347: 51        .byte $51   ; 
- D 1 - I - 0x006358 01:A348: F1        .byte $F1   ; 
- D 1 - I - 0x006359 01:A349: 4F        .byte $4F   ; 
- D 1 - I - 0x00635A 01:A34A: 01        .byte $01   ; 
_off010_A34B_E9:
- D 1 - I - 0x00635B 01:A34B: 10        .byte $10   ; 
- D 1 - I - 0x00635C 01:A34C: F1        .byte $F1   ; 
- D 1 - I - 0x00635D 01:A34D: F1        .byte $F1   ; 
- D 1 - I - 0x00635E 01:A34E: 8E        .byte $8E   ; 
- D 1 - I - 0x00635F 01:A34F: F9        .byte $F9   ; 
- D 1 - I - 0x006360 01:A350: 98        .byte $98   ; 
- D 1 - I - 0x006361 01:A351: 08        .byte $08   ; 
- D 1 - I - 0x006362 01:A352: F0        .byte $F0   ; 
- D 1 - I - 0x006363 01:A353: F7        .byte $F7   ; 
- D 1 - I - 0x006364 01:A354: 81        .byte $81   ; 
- D 1 - I - 0x006365 01:A355: 08        .byte $08   ; 
- D 1 - I - 0x006366 01:A356: F9        .byte $F9   ; 
- D 1 - I - 0x006367 01:A357: 01        .byte $01   ; 
- D 1 - I - 0x006368 01:A358: 96        .byte $96   ; 
- D 1 - I - 0x006369 01:A359: 18        .byte $18   ; 
- D 1 - I - 0x00636A 01:A35A: 01        .byte $01   ; 
- D 1 - I - 0x00636B 01:A35B: F1        .byte $F1   ; 
- D 1 - I - 0x00636C 01:A35C: 9A        .byte $9A   ; 
- D 1 - I - 0x00636D 01:A35D: F1        .byte $F1   ; 
- D 1 - I - 0x00636E 01:A35E: 9F        .byte $9F   ; 
- D 1 - I - 0x00636F 01:A35F: F9        .byte $F9   ; 
- D 1 - I - 0x006370 01:A360: 9C        .byte $9C   ; 
- D 1 - I - 0x006371 01:A361: 18        .byte $18   ; 
- D 1 - I - 0x006372 01:A362: 11        .byte $11   ; 
- D 1 - I - 0x006373 01:A363: F1        .byte $F1   ; 
- D 1 - I - 0x006374 01:A364: A0        .byte $A0   ; 
- D 1 - I - 0x006375 01:A365: F1        .byte $F1   ; 
- D 1 - I - 0x006376 01:A366: A5        .byte $A5   ; 
- D 1 - I - 0x006377 01:A367: F9        .byte $F9   ; 
- D 1 - I - 0x006378 01:A368: A2        .byte $A2   ; 
- D 1 - I - 0x006379 01:A369: 18        .byte $18   ; 
- D 1 - I - 0x00637A 01:A36A: 21        .byte $21   ; 
- D 1 - I - 0x00637B 01:A36B: F1        .byte $F1   ; 
- D 1 - I - 0x00637C 01:A36C: 4D        .byte $4D   ; 
- D 1 - I - 0x00637D 01:A36D: F9        .byte $F9   ; 
- D 1 - I - 0x00637E 01:A36E: 51        .byte $51   ; 
- D 1 - I - 0x00637F 01:A36F: 01        .byte $01   ; 
- D 1 - I - 0x006380 01:A370: 4F        .byte $4F   ; 
- D 1 - I - 0x006381 01:A371: 01        .byte $01   ; 
_off010_A372_EA:
- D 1 - I - 0x006382 01:A372: 20        .byte $20   ; 
- D 1 - I - 0x006383 01:A373: F1        .byte $F1   ; 
- D 1 - I - 0x006384 01:A374: F2        .byte $F2   ; 
- D 1 - I - 0x006385 01:A375: A6        .byte $A6   ; 
- D 1 - I - 0x006386 01:A376: FA        .byte $FA   ; 
- D 1 - I - 0x006387 01:A377: B0        .byte $B0   ; 
- D 1 - I - 0x006388 01:A378: 02        .byte $02   ; 
- D 1 - I - 0x006389 01:A379: B2        .byte $B2   ; 
- D 1 - I - 0x00638A 01:A37A: 0A        .byte $0A   ; 
- D 1 - I - 0x00638B 01:A37B: B4        .byte $B4   ; 
- D 1 - I - 0x00638C 01:A37C: 08        .byte $08   ; 
- D 1 - I - 0x00638D 01:A37D: F0        .byte $F0   ; 
- D 1 - I - 0x00638E 01:A37E: 02        .byte $02   ; 
- D 1 - I - 0x00638F 01:A37F: 81        .byte $81   ; 
- D 1 - I - 0x006390 01:A380: 18        .byte $18   ; 
- D 1 - I - 0x006391 01:A381: 01        .byte $01   ; 
- D 1 - I - 0x006392 01:A382: F9        .byte $F9   ; 
- D 1 - I - 0x006393 01:A383: A8        .byte $A8   ; 
- D 1 - I - 0x006394 01:A384: 01        .byte $01   ; 
- D 1 - I - 0x006395 01:A385: AA        .byte $AA   ; 
- D 1 - I - 0x006396 01:A386: 09        .byte $09   ; 
- D 1 - I - 0x006397 01:A387: AC        .byte $AC   ; 
- D 1 - I - 0x006398 01:A388: 30        .byte $30   ; 
- D 1 - I - 0x006399 01:A389: 11        .byte $11   ; 
- D 1 - I - 0x00639A 01:A38A: F1        .byte $F1   ; 
- D 1 - I - 0x00639B 01:A38B: AE        .byte $AE   ; 
- D 1 - I - 0x00639C 01:A38C: F1        .byte $F1   ; 
- D 1 - I - 0x00639D 01:A38D: B7        .byte $B7   ; 
- D 1 - I - 0x00639E 01:A38E: F9        .byte $F9   ; 
- D 1 - I - 0x00639F 01:A38F: B8        .byte $B8   ; 
- D 1 - I - 0x0063A0 01:A390: 01        .byte $01   ; 
- D 1 - I - 0x0063A1 01:A391: BA        .byte $BA   ; 
- D 1 - I - 0x0063A2 01:A392: 09        .byte $09   ; 
- D 1 - I - 0x0063A3 01:A393: BC        .byte $BC   ; 
- D 1 - I - 0x0063A4 01:A394: 09        .byte $09   ; 
- D 1 - I - 0x0063A5 01:A395: BF        .byte $BF   ; 
- D 1 - I - 0x0063A6 01:A396: 18        .byte $18   ; 
- D 1 - I - 0x0063A7 01:A397: 21        .byte $21   ; 
- D 1 - I - 0x0063A8 01:A398: F9        .byte $F9   ; 
- D 1 - I - 0x0063A9 01:A399: 4D        .byte $4D   ; 
- D 1 - I - 0x0063AA 01:A39A: 01        .byte $01   ; 
- D 1 - I - 0x0063AB 01:A39B: 51        .byte $51   ; 
- D 1 - I - 0x0063AC 01:A39C: 09        .byte $09   ; 
- D 1 - I - 0x0063AD 01:A39D: 4F        .byte $4F   ; 
- D 1 - I - 0x0063AE 01:A39E: 01        .byte $01   ; 
_off010_A39F_EB:
- D 1 - I - 0x0063AF 01:A39F: 28        .byte $28   ; 
- D 1 - I - 0x0063B0 01:A3A0: F1        .byte $F1   ; 
- D 1 - I - 0x0063B1 01:A3A1: F1        .byte $F1   ; 
- D 1 - I - 0x0063B2 01:A3A2: C0        .byte $C0   ; 
- D 1 - I - 0x0063B3 01:A3A3: F9        .byte $F9   ; 
- D 1 - I - 0x0063B4 01:A3A4: C2        .byte $C2   ; 
- D 1 - I - 0x0063B5 01:A3A5: F9        .byte $F9   ; 
- D 1 - I - 0x0063B6 01:A3A6: 81        .byte $81   ; 
- D 1 - I - 0x0063B7 01:A3A7: 01        .byte $01   ; 
- D 1 - I - 0x0063B8 01:A3A8: C4        .byte $C4   ; 
- D 1 - I - 0x0063B9 01:A3A9: 09        .byte $09   ; 
- D 1 - I - 0x0063BA 01:A3AA: C6        .byte $C6   ; 
- D 1 - I - 0x0063BB 01:A3AB: 20        .byte $20   ; 
- D 1 - I - 0x0063BC 01:A3AC: 01        .byte $01   ; 
- D 1 - I - 0x0063BD 01:A3AD: F9        .byte $F9   ; 
- D 1 - I - 0x0063BE 01:A3AE: CA        .byte $CA   ; 
- D 1 - I - 0x0063BF 01:A3AF: 01        .byte $01   ; 
- D 1 - I - 0x0063C0 01:A3B0: CC        .byte $CC   ; 
- D 1 - I - 0x0063C1 01:A3B1: 09        .byte $09   ; 
- D 1 - I - 0x0063C2 01:A3B2: CE        .byte $CE   ; 
- D 1 - I - 0x0063C3 01:A3B3: F7        .byte $F7   ; 
- D 1 - I - 0x0063C4 01:A3B4: C9        .byte $C9   ; 
- D 1 - I - 0x0063C5 01:A3B5: 18        .byte $18   ; 
- D 1 - I - 0x0063C6 01:A3B6: 11        .byte $11   ; 
- D 1 - I - 0x0063C7 01:A3B7: 01        .byte $01   ; 
- D 1 - I - 0x0063C8 01:A3B8: D0        .byte $D0   ; 
- D 1 - I - 0x0063C9 01:A3B9: 09        .byte $09   ; 
- D 1 - I - 0x0063CA 01:A3BA: D2        .byte $D2   ; 
- D 1 - I - 0x0063CB 01:A3BB: 09        .byte $09   ; 
- D 1 - I - 0x0063CC 01:A3BC: D5        .byte $D5   ; 
- D 1 - I - 0x0063CD 01:A3BD: 18        .byte $18   ; 
- D 1 - I - 0x0063CE 01:A3BE: 21        .byte $21   ; 
- D 1 - I - 0x0063CF 01:A3BF: F9        .byte $F9   ; 
- D 1 - I - 0x0063D0 01:A3C0: 4D        .byte $4D   ; 
- D 1 - I - 0x0063D1 01:A3C1: 01        .byte $01   ; 
- D 1 - I - 0x0063D2 01:A3C2: 51        .byte $51   ; 
- D 1 - I - 0x0063D3 01:A3C3: 09        .byte $09   ; 
- D 1 - I - 0x0063D4 01:A3C4: 4F        .byte $4F   ; 
- D 1 - I - 0x0063D5 01:A3C5: 01        .byte $01   ; 
_off010_A3C6_EC:
- D 1 - I - 0x0063D6 01:A3C6: 10        .byte $10   ; 
- D 1 - I - 0x0063D7 01:A3C7: F1        .byte $F1   ; 
- D 1 - I - 0x0063D8 01:A3C8: FE        .byte $FE   ; 
- D 1 - I - 0x0063D9 01:A3C9: D8        .byte $D8   ; 
- D 1 - I - 0x0063DA 01:A3CA: FE        .byte $FE   ; 
- D 1 - I - 0x0063DB 01:A3CB: D7        .byte $D7   ; 
- D 1 - I - 0x0063DC 01:A3CC: 18        .byte $18   ; 
- D 1 - I - 0x0063DD 01:A3CD: F9        .byte $F9   ; 
- D 1 - I - 0x0063DE 01:A3CE: F6        .byte $F6   ; 
- D 1 - I - 0x0063DF 01:A3CF: DA        .byte $DA   ; 
- D 1 - I - 0x0063E0 01:A3D0: FE        .byte $FE   ; 
- D 1 - I - 0x0063E1 01:A3D1: DC        .byte $DC   ; 
- D 1 - I - 0x0063E2 01:A3D2: 06        .byte $06   ; 
- D 1 - I - 0x0063E3 01:A3D3: DE        .byte $DE   ; 
- D 1 - I - 0x0063E4 01:A3D4: 30        .byte $30   ; 
- D 1 - I - 0x0063E5 01:A3D5: 08        .byte $08   ; 
- D 1 - I - 0x0063E6 01:A3D6: F1        .byte $F1   ; 
- D 1 - I - 0x0063E7 01:A3D7: E0        .byte $E0   ; 
- D 1 - I - 0x0063E8 01:A3D8: F1        .byte $F1   ; 
- D 1 - I - 0x0063E9 01:A3D9: E9        .byte $E9   ; 
- D 1 - I - 0x0063EA 01:A3DA: F9        .byte $F9   ; 
- D 1 - I - 0x0063EB 01:A3DB: E2        .byte $E2   ; 
- D 1 - I - 0x0063EC 01:A3DC: 01        .byte $01   ; 
- D 1 - I - 0x0063ED 01:A3DD: E4        .byte $E4   ; 
- D 1 - I - 0x0063EE 01:A3DE: 09        .byte $09   ; 
- D 1 - I - 0x0063EF 01:A3DF: E6        .byte $E6   ; 
- D 1 - I - 0x0063F0 01:A3E0: 09        .byte $09   ; 
- D 1 - I - 0x0063F1 01:A3E1: EB        .byte $EB   ; 
- D 1 - I - 0x0063F2 01:A3E2: 01        .byte $01   ; 
_off010_A3E3_ED:
- D 1 - I - 0x0063F3 01:A3E3: 20        .byte $20   ; 
- D 1 - I - 0x0063F4 01:A3E4: F1        .byte $F1   ; 
- D 1 - I - 0x0063F5 01:A3E5: E9        .byte $E9   ; 
- D 1 - I - 0x0063F6 01:A3E6: F0        .byte $F0   ; 
- D 1 - I - 0x0063F7 01:A3E7: F1        .byte $F1   ; 
- D 1 - I - 0x0063F8 01:A3E8: F2        .byte $F2   ; 
- D 1 - I - 0x0063F9 01:A3E9: F9        .byte $F9   ; 
- D 1 - I - 0x0063FA 01:A3EA: F4        .byte $F4   ; 
- D 1 - I - 0x0063FB 01:A3EB: 01        .byte $01   ; 
- D 1 - I - 0x0063FC 01:A3EC: F6        .byte $F6   ; 
- D 1 - I - 0x0063FD 01:A3ED: 28        .byte $28   ; 
- D 1 - I - 0x0063FE 01:A3EE: 01        .byte $01   ; 
- D 1 - I - 0x0063FF 01:A3EF: F1        .byte $F1   ; 
- D 1 - I - 0x006400 01:A3F0: EC        .byte $EC   ; 
- D 1 - I - 0x006401 01:A3F1: F9        .byte $F9   ; 
- D 1 - I - 0x006402 01:A3F2: EE        .byte $EE   ; 
- D 1 - I - 0x006403 01:A3F3: 01        .byte $01   ; 
- D 1 - I - 0x006404 01:A3F4: F8        .byte $F8   ; 
- D 1 - I - 0x006405 01:A3F5: 09        .byte $09   ; 
- D 1 - I - 0x006406 01:A3F6: FA        .byte $FA   ; 
- D 1 - I - 0x006407 01:A3F7: 09        .byte $09   ; 
- D 1 - I - 0x006408 01:A3F8: FD        .byte $FD   ; 
- D 1 - I - 0x006409 01:A3F9: 08        .byte $08   ; 
- D 1 - I - 0x00640A 01:A3FA: F4        .byte $F4   ; 
- D 1 - I - 0x00640B 01:A3FB: F2        .byte $F2   ; 
- D 1 - I - 0x00640C 01:A3FC: D7        .byte $D7   ; 
- D 1 - I - 0x00640D 01:A3FD: 01        .byte $01   ; 
_off010_A3FE_EE:
- D 1 - I - 0x00640E 01:A3FE: 38        .byte $38   ; 
- D 1 - I - 0x00640F 01:A3FF: F1        .byte $F1   ; 
- D 1 - I - 0x006410 01:A400: E9        .byte $E9   ; 
- D 1 - I - 0x006411 01:A401: 40        .byte $40   ; 
- D 1 - I - 0x006412 01:A402: E9        .byte $E9   ; 
- D 1 - I - 0x006413 01:A403: FF        .byte $FF   ; 
- D 1 - I - 0x006414 01:A404: F1        .byte $F1   ; 
- D 1 - I - 0x006415 01:A405: 42        .byte $42   ; 
- D 1 - I - 0x006416 01:A406: F9        .byte $F9   ; 
- D 1 - I - 0x006417 01:A407: 44        .byte $44   ; 
- D 1 - I - 0x006418 01:A408: 01        .byte $01   ; 
- D 1 - I - 0x006419 01:A409: 46        .byte $46   ; 
- D 1 - I - 0x00641A 01:A40A: 09        .byte $09   ; 
- D 1 - I - 0x00641B 01:A40B: 48        .byte $48   ; 
- D 1 - I - 0x00641C 01:A40C: 09        .byte $09   ; 
- D 1 - I - 0x00641D 01:A40D: 4B        .byte $4B   ; 
- D 1 - I - 0x00641E 01:A40E: 28        .byte $28   ; 
- D 1 - I - 0x00641F 01:A40F: 01        .byte $01   ; 
- D 1 - I - 0x006420 01:A410: E9        .byte $E9   ; 
- D 1 - I - 0x006421 01:A411: 4D        .byte $4D   ; 
- D 1 - I - 0x006422 01:A412: F1        .byte $F1   ; 
- D 1 - I - 0x006423 01:A413: 51        .byte $51   ; 
- D 1 - I - 0x006424 01:A414: F9        .byte $F9   ; 
- D 1 - I - 0x006425 01:A415: 51        .byte $51   ; 
- D 1 - I - 0x006426 01:A416: 01        .byte $01   ; 
- D 1 - I - 0x006427 01:A417: 51        .byte $51   ; 
- D 1 - I - 0x006428 01:A418: 09        .byte $09   ; 
- D 1 - I - 0x006429 01:A419: 4F        .byte $4F   ; 
- D 1 - I - 0x00642A 01:A41A: 01        .byte $01   ; 
_off010_A41B_EF:
- - - - - - 0x00642B 01:A41B: 20        .byte $20   ; 
- - - - - - 0x00642C 01:A41C: 00        .byte $00   ; 
- - - - - - 0x00642D 01:A41D: F1        .byte $F1   ; 
- - - - - - 0x00642E 01:A41E: 4D        .byte $4D   ; 
- - - - - - 0x00642F 01:A41F: F9        .byte $F9   ; 
- - - - - - 0x006430 01:A420: 51        .byte $51   ; 
- - - - - - 0x006431 01:A421: 01        .byte $01   ; 
- - - - - - 0x006432 01:A422: 51        .byte $51   ; 
- - - - - - 0x006433 01:A423: 09        .byte $09   ; 
- - - - - - 0x006434 01:A424: 4F        .byte $4F   ; 
- - - - - - 0x006435 01:A425: 01        .byte $01   ; 
_off010_A426_F0:
- D 1 - I - 0x006436 01:A426: 18        .byte $18   ; 
- D 1 - I - 0x006437 01:A427: E9        .byte $E9   ; 
- D 1 - I - 0x006438 01:A428: F9        .byte $F9   ; 
- D 1 - I - 0x006439 01:A429: 52        .byte $52   ; 
- D 1 - I - 0x00643A 01:A42A: 00        .byte $00   ; 
- D 1 - I - 0x00643B 01:A42B: 54        .byte $54   ; 
- D 1 - I - 0x00643C 01:A42C: 00        .byte $00   ; 
- D 1 - I - 0x00643D 01:A42D: 57        .byte $57   ; 
- D 1 - I - 0x00643E 01:A42E: 18        .byte $18   ; 
- D 1 - I - 0x00643F 01:A42F: F9        .byte $F9   ; 
- D 1 - I - 0x006440 01:A430: F8        .byte $F8   ; 
- D 1 - I - 0x006441 01:A431: 58        .byte $58   ; 
- D 1 - I - 0x006442 01:A432: 00        .byte $00   ; 
- D 1 - I - 0x006443 01:A433: 5A        .byte $5A   ; 
- D 1 - I - 0x006444 01:A434: 08        .byte $08   ; 
- D 1 - I - 0x006445 01:A435: 5C        .byte $5C   ; 
- D 1 - I - 0x006446 01:A436: 30        .byte $30   ; 
- D 1 - I - 0x006447 01:A437: 09        .byte $09   ; 
- D 1 - I - 0x006448 01:A438: F1        .byte $F1   ; 
- D 1 - I - 0x006449 01:A439: E0        .byte $E0   ; 
- D 1 - I - 0x00644A 01:A43A: F9        .byte $F9   ; 
- D 1 - I - 0x00644B 01:A43B: E2        .byte $E2   ; 
- D 1 - I - 0x00644C 01:A43C: 01        .byte $01   ; 
- D 1 - I - 0x00644D 01:A43D: E4        .byte $E4   ; 
- D 1 - I - 0x00644E 01:A43E: 09        .byte $09   ; 
- D 1 - I - 0x00644F 01:A43F: E6        .byte $E6   ; 
- D 1 - I - 0x006450 01:A440: F1        .byte $F1   ; 
- D 1 - I - 0x006451 01:A441: E9        .byte $E9   ; 
- D 1 - I - 0x006452 01:A442: 09        .byte $09   ; 
- D 1 - I - 0x006453 01:A443: EB        .byte $EB   ; 
- D 1 - I - 0x006454 01:A444: 01        .byte $01   ; 
_off010_A445_F1:
_off010_A445_F2:
_off010_A445_F3:
_off010_A445_F4:
_off010_A445_F5:
_off010_A445_F6:
_off010_A445_F7:
_off010_A445_F8:
_off010_A445_F9:
_off010_A445_FA:
_off010_A445_FB:
_off010_A445_FC:
_off010_A445_FD:
_off010_A445_FE:
_off010_A445_FF:
- - - - - - 0x006455 01:A445: 01        .byte $01   ; 



tbl_A446:
- D 1 - - - 0x006456 01:A446: 6A A4     .word _off004_A46A_00
- D 1 - - - 0x006458 01:A448: 73 A4     .word _off004_A473_01
- D 1 - - - 0x00645A 01:A44A: 7F A4     .word _off004_A47F_02
- - - - - - 0x00645C 01:A44C: 8C A4     .word _off004_A48C_03
- D 1 - - - 0x00645E 01:A44E: 99 A4     .word _off004_A499_04
- - - - - - 0x006460 01:A450: AC A4     .word _off004_A4AC_05
- D 1 - - - 0x006462 01:A452: B9 A4     .word _off004_A4B9_06
- D 1 - - - 0x006464 01:A454: C6 A4     .word _off004_A4C6_07
- - - - - - 0x006466 01:A456: D2 A4     .word _off004_A4D2_08
- D 1 - - - 0x006468 01:A458: DB A4     .word _off004_A4DB_09
- D 1 - - - 0x00646A 01:A45A: E4 A4     .word _off004_A4E4_0A
- D 1 - - - 0x00646C 01:A45C: F0 A4     .word _off004_A4F0_0B
- D 1 - - - 0x00646E 01:A45E: FD A4     .word _off004_A4FD_0C
- - - - - - 0x006470 01:A460: 0A A5     .word _off004_A50A_0D
- D 1 - - - 0x006472 01:A462: 1D A5     .word _off004_A51D_0E
- D 1 - - - 0x006474 01:A464: 2A A5     .word _off004_A52A_0F
- D 1 - - - 0x006476 01:A466: 37 A5     .word _off004_A537_10
- D 1 - - - 0x006478 01:A468: 43 A5     .word _off004_A543_11



_off004_A46A_00:
- D 1 - I - 0x00647A 01:A46A: 01        .byte $01   ; counter
- D 1 - I - 0x00647B 01:A46B: 59 22     .word $2259 ; ppu address
- D 1 - I - 0x00647D 01:A46D: 40        .byte $40   ; 

- D 1 - I - 0x00647E 01:A46E: 01        .byte $01   ; counter
- D 1 - I - 0x00647F 01:A46F: 79 22     .word $2279 ; ppu address
- D 1 - I - 0x006481 01:A471: 42        .byte $42   ; 

- D 1 - I - 0x006482 01:A472: 00        .byte $00   ; end token



_off004_A473_01:
- D 1 - I - 0x006483 01:A473: 01        .byte $01   ; counter
- D 1 - I - 0x006484 01:A474: 3A 22     .word $223A ; ppu address
- D 1 - I - 0x006486 01:A476: 43        .byte $43   ; 

- D 1 - I - 0x006487 01:A477: 04        .byte $04   ; counter
- D 1 - I - 0x006488 01:A478: 59 22     .word $2259 ; ppu address
- D 1 - I - 0x00648A 01:A47A: 41        .byte $41, $44, $45, $4F   ; 

- D 1 - I - 0x00648E 01:A47E: 00        .byte $00   ; end token



_off004_A47F_02:
- D 1 - I - 0x00648F 01:A47F: 02        .byte $02   ; counter
- D 1 - I - 0x006490 01:A480: 3B 22     .word $223B ; ppu address
- D 1 - I - 0x006492 01:A482: 48        .byte $48, $49   ; 

- D 1 - I - 0x006494 01:A484: 04        .byte $04   ; counter
- D 1 - I - 0x006495 01:A485: 5A 22     .word $225A ; ppu address
- D 1 - I - 0x006497 01:A487: 4A        .byte $4A, $4B, $4E, $4F   ; 

- D 1 - I - 0x00649B 01:A48B: 00        .byte $00   ; end token



_off004_A48C_03:
- - - - - - 0x00649C 01:A48C: 02        .byte $02   ; counter
- - - - - - 0x00649D 01:A48D: 3D 22     .word $223D ; ppu address
- - - - - - 0x00649F 01:A48F: 48        .byte $48, $49   ; 

- - - - - - 0x0064A1 01:A491: 04        .byte $04   ; counter
- - - - - - 0x0064A2 01:A492: 5C 22     .word $225C ; ppu address
- - - - - - 0x0064A4 01:A494: 4A        .byte $4A, $4B, $4E, $4F   ; 

- - - - - - 0x0064A8 01:A498: 00        .byte $00   ; end token



_off004_A499_04:
- D 1 - I - 0x0064A9 01:A499: 01        .byte $01   ; counter
- D 1 - I - 0x0064AA 01:A49A: 3F 22     .word $223F ; ppu address
- D 1 - I - 0x0064AC 01:A49C: 48        .byte $48   ; 

- D 1 - I - 0x0064AD 01:A49D: 01        .byte $01   ; counter
- D 1 - I - 0x0064AE 01:A49E: 20 26     .word $2620 ; ppu address
- D 1 - I - 0x0064B0 01:A4A0: 49        .byte $49   ; 

- D 1 - I - 0x0064B1 01:A4A1: 02        .byte $02   ; counter
- D 1 - I - 0x0064B2 01:A4A2: 5E 22     .word $225E ; ppu address
- D 1 - I - 0x0064B4 01:A4A4: 4F        .byte $4F, $4B   ; 

- D 1 - I - 0x0064B6 01:A4A6: 02        .byte $02   ; counter
- D 1 - I - 0x0064B7 01:A4A7: 40 26     .word $2640 ; ppu address
- D 1 - I - 0x0064B9 01:A4A9: 4E        .byte $4E, $4F   ; 

- D 1 - I - 0x0064BB 01:A4AB: 00        .byte $00   ; end token



_off004_A4AC_05:
- - - - - - 0x0064BC 01:A4AC: 02        .byte $02   ; counter
- - - - - - 0x0064BD 01:A4AD: 21 26     .word $2621 ; ppu address
- - - - - - 0x0064BF 01:A4AF: 48        .byte $48, $49   ; 

- - - - - - 0x0064C1 01:A4B1: 04        .byte $04   ; counter
- - - - - - 0x0064C2 01:A4B2: 40 26     .word $2640 ; ppu address
- - - - - - 0x0064C4 01:A4B4: 4F        .byte $4F, $4B, $4E, $4F   ; 

- - - - - - 0x0064C8 01:A4B8: 00        .byte $00   ; end token



_off004_A4B9_06:
- D 1 - I - 0x0064C9 01:A4B9: 02        .byte $02   ; counter
- D 1 - I - 0x0064CA 01:A4BA: 23 26     .word $2623 ; ppu address
- D 1 - I - 0x0064CC 01:A4BC: 48        .byte $48, $49   ; 

- D 1 - I - 0x0064CE 01:A4BE: 04        .byte $04   ; counter
- D 1 - I - 0x0064CF 01:A4BF: 42 26     .word $2642 ; ppu address
- D 1 - I - 0x0064D1 01:A4C1: 4F        .byte $4F, $4B, $4E, $4F   ; 

- D 1 - I - 0x0064D5 01:A4C5: 00        .byte $00   ; end token



_off004_A4C6_07:
- D 1 - I - 0x0064D6 01:A4C6: 01        .byte $01   ; counter
- D 1 - I - 0x0064D7 01:A4C7: 25 26     .word $2625 ; ppu address
- D 1 - I - 0x0064D9 01:A4C9: 43        .byte $43   ; 

- D 1 - I - 0x0064DA 01:A4CA: 04        .byte $04   ; counter
- D 1 - I - 0x0064DB 01:A4CB: 43 26     .word $2643 ; ppu address
- D 1 - I - 0x0064DD 01:A4CD: 4F        .byte $4F, $51, $54, $55   ; 

- D 1 - I - 0x0064E1 01:A4D1: 00        .byte $00   ; end token



_off004_A4D2_08:
- - - - - - 0x0064E2 01:A4D2: 01        .byte $01   ; counter
- - - - - - 0x0064E3 01:A4D3: 46 26     .word $2646 ; ppu address
- - - - - - 0x0064E5 01:A4D5: 56        .byte $56   ; 

- - - - - - 0x0064E6 01:A4D6: 01        .byte $01   ; counter
- - - - - - 0x0064E7 01:A4D7: 66 26     .word $2666 ; ppu address
- - - - - - 0x0064E9 01:A4D9: 57        .byte $57   ; 

- - - - - - 0x0064EA 01:A4DA: 00        .byte $00   ; end token



_off004_A4DB_09:
- D 1 - I - 0x0064EB 01:A4DB: 01        .byte $01   ; counter
- D 1 - I - 0x0064EC 01:A4DC: 59 22     .word $2259 ; ppu address
- D 1 - I - 0x0064EE 01:A4DE: 42        .byte $42   ; 

- D 1 - I - 0x0064EF 01:A4DF: 01        .byte $01   ; counter
- D 1 - I - 0x0064F0 01:A4E0: 79 22     .word $2279 ; ppu address
- D 1 - I - 0x0064F2 01:A4E2: 40        .byte $40   ; 

- D 1 - I - 0x0064F3 01:A4E3: 00        .byte $00   ; end token



_off004_A4E4_0A:
- D 1 - I - 0x0064F4 01:A4E4: 04        .byte $04   ; counter
- D 1 - I - 0x0064F5 01:A4E5: 79 22     .word $2279 ; ppu address
- D 1 - I - 0x0064F7 01:A4E7: 41        .byte $41, $44, $45, $4F   ; 

- D 1 - I - 0x0064FB 01:A4EB: 01        .byte $01   ; counter
- D 1 - I - 0x0064FC 01:A4EC: 9A 22     .word $229A ; ppu address
- D 1 - I - 0x0064FE 01:A4EE: 43        .byte $43   ; 

- D 1 - I - 0x0064FF 01:A4EF: 00        .byte $00   ; end token



_off004_A4F0_0B:
- D 1 - I - 0x006500 01:A4F0: 04        .byte $04   ; counter
- D 1 - I - 0x006501 01:A4F1: 7A 22     .word $227A ; ppu address
- D 1 - I - 0x006503 01:A4F3: 4A        .byte $4A, $4B, $4E, $4F   ; 

- D 1 - I - 0x006507 01:A4F7: 02        .byte $02   ; counter
- D 1 - I - 0x006508 01:A4F8: 9B 22     .word $229B ; ppu address
- D 1 - I - 0x00650A 01:A4FA: 48        .byte $48, $49   ; 

- D 1 - I - 0x00650C 01:A4FC: 00        .byte $00   ; end token



_off004_A4FD_0C:
- D 1 - I - 0x00650D 01:A4FD: 04        .byte $04   ; counter
- D 1 - I - 0x00650E 01:A4FE: 7C 22     .word $227C ; ppu address
- D 1 - I - 0x006510 01:A500: 4F        .byte $4F, $4B, $4E, $4F   ; 

- D 1 - I - 0x006514 01:A504: 02        .byte $02   ; counter
- D 1 - I - 0x006515 01:A505: 9D 22     .word $229D ; ppu address
- D 1 - I - 0x006517 01:A507: 48        .byte $48, $49   ; 

- D 1 - I - 0x006519 01:A509: 00        .byte $00   ; end token



_off004_A50A_0D:
- - - - - - 0x00651A 01:A50A: 02        .byte $02   ; counter
- - - - - - 0x00651B 01:A50B: 7E 22     .word $227E ; ppu address
- - - - - - 0x00651D 01:A50D: 4F        .byte $4F, $4B   ; 

- - - - - - 0x00651F 01:A50F: 02        .byte $02   ; counter
- - - - - - 0x006520 01:A510: 60 26     .word $2660 ; ppu address
- - - - - - 0x006522 01:A512: 4E        .byte $4E, $4F   ; 

- - - - - - 0x006524 01:A514: 01        .byte $01   ; counter
- - - - - - 0x006525 01:A515: 9F 22     .word $229F ; ppu address
- - - - - - 0x006527 01:A517: 48        .byte $48   ; 

- - - - - - 0x006528 01:A518: 01        .byte $01   ; counter
- - - - - - 0x006529 01:A519: 80 26     .word $2680 ; ppu address
- - - - - - 0x00652B 01:A51B: 49        .byte $49   ; 

- - - - - - 0x00652C 01:A51C: 00        .byte $00   ; end token



_off004_A51D_0E:
- D 1 - I - 0x00652D 01:A51D: 04        .byte $04   ; counter
- D 1 - I - 0x00652E 01:A51E: 60 26     .word $2660 ; ppu address
- D 1 - I - 0x006530 01:A520: 4F        .byte $4F, $4B, $4E, $4F   ; 

- D 1 - I - 0x006534 01:A524: 02        .byte $02   ; counter
- D 1 - I - 0x006535 01:A525: 81 26     .word $2681 ; ppu address
- D 1 - I - 0x006537 01:A527: 48        .byte $48, $49   ; 

- D 1 - I - 0x006539 01:A529: 00        .byte $00   ; end token



_off004_A52A_0F:
- D 1 - I - 0x00653A 01:A52A: 04        .byte $04   ; counter
- D 1 - I - 0x00653B 01:A52B: 62 26     .word $2662 ; ppu address
- D 1 - I - 0x00653D 01:A52D: 4F        .byte $4F, $4B, $4E, $50   ; 

- D 1 - I - 0x006541 01:A531: 02        .byte $02   ; counter
- D 1 - I - 0x006542 01:A532: 83 26     .word $2683 ; ppu address
- D 1 - I - 0x006544 01:A534: 48        .byte $48, $49   ; 

- D 1 - I - 0x006546 01:A536: 00        .byte $00   ; end token



_off004_A537_10:
- D 1 - I - 0x006547 01:A537: 04        .byte $04   ; counter
- D 1 - I - 0x006548 01:A538: 63 26     .word $2663 ; ppu address
- D 1 - I - 0x00654A 01:A53A: 4F        .byte $4F, $51, $54, $55   ; 

- D 1 - I - 0x00654E 01:A53E: 01        .byte $01   ; counter
- D 1 - I - 0x00654F 01:A53F: 85 26     .word $2685 ; ppu address
- D 1 - I - 0x006551 01:A541: 43        .byte $43   ; 

- D 1 - I - 0x006552 01:A542: 00        .byte $00   ; end token



_off004_A543_11:
- D 1 - I - 0x006553 01:A543: 01        .byte $01   ; counter
- D 1 - I - 0x006554 01:A544: 46 26     .word $2646 ; ppu address
- D 1 - I - 0x006556 01:A546: 57        .byte $57   ; 

- D 1 - I - 0x006557 01:A547: 01        .byte $01   ; counter
- D 1 - I - 0x006558 01:A548: 66 26     .word $2666 ; ppu address
- D 1 - I - 0x00655A 01:A54A: 56        .byte $56   ; 

- D 1 - I - 0x00655B 01:A54B: 00        .byte $00   ; end token



tbl_A54C:
- D 1 - I - 0x00655C 01:A54C: 08        .byte $08   ; 
- D 1 - I - 0x00655D 01:A54D: 58        .byte $58   ; 
- D 1 - I - 0x00655E 01:A54E: 22        .byte $22   ; 
- D 1 - I - 0x00655F 01:A54F: 00        .byte $00   ; 
- D 1 - I - 0x006560 01:A550: 94        .byte $94   ; 
- D 1 - I - 0x006561 01:A551: B2        .byte $B2   ; 
- D 1 - I - 0x006562 01:A552: B3        .byte $B3   ; 
- D 1 - I - 0x006563 01:A553: B3        .byte $B3   ; 
- D 1 - I - 0x006564 01:A554: B3        .byte $B3   ; 
- D 1 - I - 0x006565 01:A555: B3        .byte $B3   ; 
- D 1 - I - 0x006566 01:A556: B3        .byte $B3   ; 
- D 1 - I - 0x006567 01:A557: 08        .byte $08   ; 
- D 1 - I - 0x006568 01:A558: 78        .byte $78   ; 
- D 1 - I - 0x006569 01:A559: 22        .byte $22   ; 
- D 1 - I - 0x00656A 01:A55A: 02        .byte $02   ; 
- D 1 - I - 0x00656B 01:A55B: 96        .byte $96   ; 
- D 1 - I - 0x00656C 01:A55C: 8A        .byte $8A   ; 
- D 1 - I - 0x00656D 01:A55D: 8B        .byte $8B   ; 
- D 1 - I - 0x00656E 01:A55E: 8B        .byte $8B   ; 
- D 1 - I - 0x00656F 01:A55F: 8B        .byte $8B   ; 
- D 1 - I - 0x006570 01:A560: 8E        .byte $8E   ; 
- D 1 - I - 0x006571 01:A561: 8F        .byte $8F   ; 
- D 1 - I - 0x006572 01:A562: 08        .byte $08   ; 
- D 1 - I - 0x006573 01:A563: 98        .byte $98   ; 
- D 1 - I - 0x006574 01:A564: 22        .byte $22   ; 
- D 1 - I - 0x006575 01:A565: 09        .byte $09   ; 
- D 1 - I - 0x006576 01:A566: 09        .byte $09   ; 
- D 1 - I - 0x006577 01:A567: 09        .byte $09   ; 
- D 1 - I - 0x006578 01:A568: 09        .byte $09   ; 
- D 1 - I - 0x006579 01:A569: 09        .byte $09   ; 
- D 1 - I - 0x00657A 01:A56A: 09        .byte $09   ; 
- D 1 - I - 0x00657B 01:A56B: 09        .byte $09   ; 
- D 1 - I - 0x00657C 01:A56C: 09        .byte $09   ; 
- D 1 - I - 0x00657D 01:A56D: 08        .byte $08   ; 
- D 1 - I - 0x00657E 01:A56E: 40        .byte $40   ; 
- D 1 - I - 0x00657F 01:A56F: 26        .byte $26   ; 
- D 1 - I - 0x006580 01:A570: B3        .byte $B3   ; 
- D 1 - I - 0x006581 01:A571: B3        .byte $B3   ; 
- D 1 - I - 0x006582 01:A572: B3        .byte $B3   ; 
- D 1 - I - 0x006583 01:A573: B3        .byte $B3   ; 
- D 1 - I - 0x006584 01:A574: B3        .byte $B3   ; 
- D 1 - I - 0x006585 01:A575: B6        .byte $B6   ; 
- D 1 - I - 0x006586 01:A576: 95        .byte $95   ; 
- D 1 - I - 0x006587 01:A577: 00        .byte $00   ; 
- D 1 - I - 0x006588 01:A578: 08        .byte $08   ; 
- D 1 - I - 0x006589 01:A579: 60        .byte $60   ; 
- D 1 - I - 0x00658A 01:A57A: 26        .byte $26   ; 
- D 1 - I - 0x00658B 01:A57B: 9A        .byte $9A   ; 
- D 1 - I - 0x00658C 01:A57C: 9B        .byte $9B   ; 
- D 1 - I - 0x00658D 01:A57D: 9E        .byte $9E   ; 
- D 1 - I - 0x00658E 01:A57E: 9E        .byte $9E   ; 
- D 1 - I - 0x00658F 01:A57F: 9E        .byte $9E   ; 
- D 1 - I - 0x006590 01:A580: 9F        .byte $9F   ; 
- D 1 - I - 0x006591 01:A581: 97        .byte $97   ; 
- D 1 - I - 0x006592 01:A582: 02        .byte $02   ; 
- D 1 - I - 0x006593 01:A583: 08        .byte $08   ; 
- D 1 - I - 0x006594 01:A584: 80        .byte $80   ; 
- D 1 - I - 0x006595 01:A585: 26        .byte $26   ; 
- D 1 - I - 0x006596 01:A586: 09        .byte $09   ; 
- D 1 - I - 0x006597 01:A587: 09        .byte $09   ; 
- D 1 - I - 0x006598 01:A588: 09        .byte $09   ; 
- D 1 - I - 0x006599 01:A589: 09        .byte $09   ; 
- D 1 - I - 0x00659A 01:A58A: 09        .byte $09   ; 
- D 1 - I - 0x00659B 01:A58B: 09        .byte $09   ; 
- D 1 - I - 0x00659C 01:A58C: 09        .byte $09   ; 
- D 1 - I - 0x00659D 01:A58D: 09        .byte $09   ; 
- D 1 - I - 0x00659E 01:A58E: 00        .byte $00   ; 



tbl_A58F:
- D 1 - I - 0x00659F 01:A58F: 08        .byte $08   ; 
- D 1 - I - 0x0065A0 01:A590: 38        .byte $38   ; 
- D 1 - I - 0x0065A1 01:A591: 22        .byte $22   ; 
- D 1 - I - 0x0065A2 01:A592: 0A        .byte $0A   ; 
- D 1 - I - 0x0065A3 01:A593: 0A        .byte $0A   ; 
- D 1 - I - 0x0065A4 01:A594: 0A        .byte $0A   ; 
- D 1 - I - 0x0065A5 01:A595: 0A        .byte $0A   ; 
- D 1 - I - 0x0065A6 01:A596: 0A        .byte $0A   ; 
- D 1 - I - 0x0065A7 01:A597: 0A        .byte $0A   ; 
- D 1 - I - 0x0065A8 01:A598: 0A        .byte $0A   ; 
- D 1 - I - 0x0065A9 01:A599: 0A        .byte $0A   ; 
- D 1 - I - 0x0065AA 01:A59A: 08        .byte $08   ; 
- D 1 - I - 0x0065AB 01:A59B: 58        .byte $58   ; 
- D 1 - I - 0x0065AC 01:A59C: 22        .byte $22   ; 
- D 1 - I - 0x0065AD 01:A59D: 02        .byte $02   ; 
- D 1 - I - 0x0065AE 01:A59E: 90        .byte $90   ; 
- D 1 - I - 0x0065AF 01:A59F: 88        .byte $88   ; 
- D 1 - I - 0x0065B0 01:A5A0: 89        .byte $89   ; 
- D 1 - I - 0x0065B1 01:A5A1: 89        .byte $89   ; 
- D 1 - I - 0x0065B2 01:A5A2: 89        .byte $89   ; 
- D 1 - I - 0x0065B3 01:A5A3: 8C        .byte $8C   ; 
- D 1 - I - 0x0065B4 01:A5A4: 8D        .byte $8D   ; 
- D 1 - I - 0x0065B5 01:A5A5: 08        .byte $08   ; 
- D 1 - I - 0x0065B6 01:A5A6: 78        .byte $78   ; 
- D 1 - I - 0x0065B7 01:A5A7: 22        .byte $22   ; 
- D 1 - I - 0x0065B8 01:A5A8: 00        .byte $00   ; 
- D 1 - I - 0x0065B9 01:A5A9: 92        .byte $92   ; 
- D 1 - I - 0x0065BA 01:A5AA: B0        .byte $B0   ; 
- D 1 - I - 0x0065BB 01:A5AB: B1        .byte $B1   ; 
- D 1 - I - 0x0065BC 01:A5AC: B1        .byte $B1   ; 
- D 1 - I - 0x0065BD 01:A5AD: B1        .byte $B1   ; 
- D 1 - I - 0x0065BE 01:A5AE: B1        .byte $B1   ; 
- D 1 - I - 0x0065BF 01:A5AF: B1        .byte $B1   ; 
- D 1 - I - 0x0065C0 01:A5B0: 08        .byte $08   ; 
- D 1 - I - 0x0065C1 01:A5B1: 20        .byte $20   ; 
- D 1 - I - 0x0065C2 01:A5B2: 26        .byte $26   ; 
- D 1 - I - 0x0065C3 01:A5B3: 0A        .byte $0A   ; 
- D 1 - I - 0x0065C4 01:A5B4: 0A        .byte $0A   ; 
- D 1 - I - 0x0065C5 01:A5B5: 0A        .byte $0A   ; 
- D 1 - I - 0x0065C6 01:A5B6: 0A        .byte $0A   ; 
- D 1 - I - 0x0065C7 01:A5B7: 0A        .byte $0A   ; 
- D 1 - I - 0x0065C8 01:A5B8: 0A        .byte $0A   ; 
- D 1 - I - 0x0065C9 01:A5B9: 0A        .byte $0A   ; 
- D 1 - I - 0x0065CA 01:A5BA: 0A        .byte $0A   ; 
- D 1 - I - 0x0065CB 01:A5BB: 08        .byte $08   ; 
- D 1 - I - 0x0065CC 01:A5BC: 40        .byte $40   ; 
- D 1 - I - 0x0065CD 01:A5BD: 26        .byte $26   ; 
- D 1 - I - 0x0065CE 01:A5BE: 98        .byte $98   ; 
- D 1 - I - 0x0065CF 01:A5BF: 99        .byte $99   ; 
- D 1 - I - 0x0065D0 01:A5C0: 9C        .byte $9C   ; 
- D 1 - I - 0x0065D1 01:A5C1: 9C        .byte $9C   ; 
- D 1 - I - 0x0065D2 01:A5C2: 9C        .byte $9C   ; 
- D 1 - I - 0x0065D3 01:A5C3: 9D        .byte $9D   ; 
- D 1 - I - 0x0065D4 01:A5C4: 91        .byte $91   ; 
- D 1 - I - 0x0065D5 01:A5C5: 02        .byte $02   ; 
- D 1 - I - 0x0065D6 01:A5C6: 08        .byte $08   ; 
- D 1 - I - 0x0065D7 01:A5C7: 60        .byte $60   ; 
- D 1 - I - 0x0065D8 01:A5C8: 26        .byte $26   ; 
- D 1 - I - 0x0065D9 01:A5C9: B1        .byte $B1   ; 
- D 1 - I - 0x0065DA 01:A5CA: B1        .byte $B1   ; 
- D 1 - I - 0x0065DB 01:A5CB: B1        .byte $B1   ; 
- D 1 - I - 0x0065DC 01:A5CC: B1        .byte $B1   ; 
- D 1 - I - 0x0065DD 01:A5CD: B1        .byte $B1   ; 
- D 1 - I - 0x0065DE 01:A5CE: B4        .byte $B4   ; 
- D 1 - I - 0x0065DF 01:A5CF: 93        .byte $93   ; 
- D 1 - I - 0x0065E0 01:A5D0: 00        .byte $00   ; 
- D 1 - I - 0x0065E1 01:A5D1: 00        .byte $00   ; 



tbl_A5D2:
; считывается в зависимости от первой или второй команды
; что-то связанное с поведением в зависимости от зоны 0427
; в каждой таблице по 1600 байтов (40 зон * 40 байтов)
- D 1 - - - 0x0065E2 01:A5D2: 02 A6     .word tbl_A602_00
- D 1 - - - 0x0065E4 01:A5D4: 42 AC     .word tbl_AC42_01



tbl_A5D6:
- - - - - - 0x0065E6 01:A5D6: 00        .byte $00, $00   ; 00 кипер снизу, не считывается
- D 1 - I - 0x0065E8 01:A5D8: 60        .byte $60, $70   ; 01
- D 1 - I - 0x0065EA 01:A5DA: 60        .byte $60, $75   ; 02
- D 1 - I - 0x0065EC 01:A5DC: 60        .byte $60, $5E   ; 03
- D 1 - I - 0x0065EE 01:A5DE: 60        .byte $60, $7D   ; 04
- D 1 - I - 0x0065F0 01:A5E0: 60        .byte $60, $5B   ; 05
- D 1 - I - 0x0065F2 01:A5E2: 60        .byte $60, $45   ; 06
- D 1 - I - 0x0065F4 01:A5E4: 60        .byte $60, $62   ; 07
- D 1 - I - 0x0065F6 01:A5E6: 60        .byte $60, $36   ; 08
- D 1 - I - 0x0065F8 01:A5E8: 60        .byte $60, $4C   ; 09
- D 1 - I - 0x0065FA 01:A5EA: 60        .byte $60, $3C   ; 0A
- - - - - - 0x0065FC 01:A5EC: 00        .byte $00, $00   ; 0B кипер сверху, не считывается
- D 1 - I - 0x0065FE 01:A5EE: 60        .byte $60, $70   ; 0C
- D 1 - I - 0x006600 01:A5F0: 60        .byte $60, $75   ; 0D
- D 1 - I - 0x006602 01:A5F2: 60        .byte $60, $5E   ; 0E
- D 1 - I - 0x006604 01:A5F4: 60        .byte $60, $7D   ; 0F
- D 1 - I - 0x006606 01:A5F6: 60        .byte $60, $51   ; 10
- D 1 - I - 0x006608 01:A5F8: 60        .byte $60, $45   ; 11
- D 1 - I - 0x00660A 01:A5FA: 60        .byte $60, $59   ; 12
- D 1 - I - 0x00660C 01:A5FC: 60        .byte $60, $40   ; 13
- D 1 - I - 0x00660E 01:A5FE: 60        .byte $60, $4A   ; 14
- D 1 - I - 0x006610 01:A600: 60        .byte $60, $3C   ; 15



tbl_A602_00:
; в зависимости от первого байта считываются байты из table_01_8933 для непрямого прыжка
	; этот байт делится на 16, чтобы обрезать младшие 4 бита, а потом умножается на 2
	; за что отвечают младшие 4 бита пока не известно, читаются в 8968 и умножаются на 2
; второй байт влияет на параметр игрока 0433
; в зависимости от рандома читается либо первые 2 байта, либо вторые
; вратари не входят в этот список, байты только для полевых игроков
- D 1 - I - 0x006612 01:A602: 20        .byte $20, $47,     $20, $47	; зона 00
- D 1 - I - 0x006616 01:A606: 20        .byte $20, $4F,     $20, $4F
- D 1 - I - 0x00661A 01:A60A: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x00661E 01:A60E: 20        .byte $20, $5F,     $20, $5F
- D 1 - I - 0x006622 01:A612: 20        .byte $20, $1F,     $20, $1F
- D 1 - I - 0x006626 01:A616: 20        .byte $20, $12,     $20, $13
- D 1 - I - 0x00662A 01:A61A: 20        .byte $20, $18,     $20, $18
- D 1 - I - 0x00662E 01:A61E: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x006632 01:A622: 20        .byte $20, $0F,     $20, $10
- D 1 - I - 0x006636 01:A626: 20        .byte $20, $0C,     $20, $16
- D 1 - I - 0x00663A 01:A62A: 20        .byte $20, $47,     $20, $47	; зона 01
- D 1 - I - 0x00663E 01:A62E: 20        .byte $20, $4F,     $20, $4F
- D 1 - I - 0x006642 01:A632: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x006646 01:A636: 20        .byte $20, $5F,     $20, $5F
- D 1 - I - 0x00664A 01:A63A: 20        .byte $20, $21,     $20, $21
- D 1 - I - 0x00664E 01:A63E: 20        .byte $20, $12,     $20, $13
- D 1 - I - 0x006652 01:A642: 20        .byte $20, $18,     $20, $18
- D 1 - I - 0x006656 01:A646: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x00665A 01:A64A: 20        .byte $20, $0F,     $20, $10
- D 1 - I - 0x00665E 01:A64E: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x006662 01:A652: 20        .byte $20, $47,     $20, $47	; зона 02
- D 1 - I - 0x006666 01:A656: 20        .byte $20, $4E,     $20, $4E
- D 1 - I - 0x00666A 01:A65A: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x00666E 01:A65E: 20        .byte $20, $5F,     $20, $5F
- D 1 - I - 0x006672 01:A662: 20        .byte $20, $21,     $20, $2A
- D 1 - I - 0x006676 01:A666: 20        .byte $20, $12,     $20, $12
- D 1 - I - 0x00667A 01:A66A: 20        .byte $20, $1A,     $20, $1A
- D 1 - I - 0x00667E 01:A66E: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x006682 01:A672: 30        .byte $30, $0B,     $30, $0B
- D 1 - I - 0x006686 01:A676: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x00668A 01:A67A: 20        .byte $20, $47,     $20, $47	; зона 03
- D 1 - I - 0x00668E 01:A67E: 20        .byte $20, $4F,     $20, $4F
- D 1 - I - 0x006692 01:A682: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x006696 01:A686: 20        .byte $20, $5F,     $20, $5F
- D 1 - I - 0x00669A 01:A68A: 20        .byte $20, $18,     $20, $2B
- D 1 - I - 0x00669E 01:A68E: 33        .byte $33, $40,     $33, $40
- D 1 - I - 0x0066A2 01:A692: 20        .byte $20, $1B,     $20, $1B
- D 1 - I - 0x0066A6 01:A696: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x0066AA 01:A69A: 20        .byte $20, $0F,     $20, $0F
- D 1 - I - 0x0066AE 01:A69E: 20        .byte $20, $0B,     $20, $0B
- - - - - - 0x0066B2 01:A6A2: 20        .byte $20, $33,     $20, $47	; зона 04
- D 1 - I - 0x0066B6 01:A6A6: 20        .byte $20, $4F,     $20, $4F
- D 1 - I - 0x0066BA 01:A6AA: 20        .byte $20, $4C,     $20, $4C
- D 1 - I - 0x0066BE 01:A6AE: 20        .byte $20, $5E,     $20, $5E
- - - - - - 0x0066C2 01:A6B2: 20        .byte $20, $23,     $20, $2B
- - - - - - 0x0066C6 01:A6B6: 36        .byte $36, $00,     $36, $00
- - - - - - 0x0066CA 01:A6BA: 20        .byte $20, $1B,     $20, $1B
- - - - - - 0x0066CE 01:A6BE: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x0066D2 01:A6C2: 20        .byte $20, $10,     $20, $10
- D 1 - I - 0x0066D6 01:A6C6: 20        .byte $20, $0C,     $20, $0C
- D 1 - I - 0x0066DA 01:A6CA: 20        .byte $20, $51,     $20, $51	; зона 05
- D 1 - I - 0x0066DE 01:A6CE: 20        .byte $20, $4D,     $20, $4D
- D 1 - I - 0x0066E2 01:A6D2: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x0066E6 01:A6D6: 20        .byte $20, $67,     $20, $47
- D 1 - I - 0x0066EA 01:A6DA: 20        .byte $20, $2A,     $20, $2A
- D 1 - I - 0x0066EE 01:A6DE: 20        .byte $20, $1D,     $20, $1D
- D 1 - I - 0x0066F2 01:A6E2: 20        .byte $20, $2E,     $20, $2E
- D 1 - I - 0x0066F6 01:A6E6: 20        .byte $20, $18,     $20, $18
- D 1 - I - 0x0066FA 01:A6EA: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x0066FE 01:A6EE: 30        .byte $30, $18,     $30, $18
- D 1 - I - 0x006702 01:A6F2: 20        .byte $20, $51,     $20, $51	; зона 06
- D 1 - I - 0x006706 01:A6F6: 20        .byte $20, $4E,     $20, $4E
- D 1 - I - 0x00670A 01:A6FA: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x00670E 01:A6FE: 20        .byte $20, $68,     $20, $68
- D 1 - I - 0x006712 01:A702: 20        .byte $20, $2A,     $20, $2A
- D 1 - I - 0x006716 01:A706: 20        .byte $20, $1D,     $20, $1D
- D 1 - I - 0x00671A 01:A70A: 20        .byte $20, $2E,     $20, $2E
- D 1 - I - 0x00671E 01:A70E: 20        .byte $20, $0D,     $20, $0D
- D 1 - I - 0x006722 01:A712: 33        .byte $33, $C0,     $33, $C0
- D 1 - I - 0x006726 01:A716: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x00672A 01:A71A: 20        .byte $20, $51,     $20, $51	; зона 07
- D 1 - I - 0x00672E 01:A71E: 20        .byte $20, $4E,     $20, $4E
- D 1 - I - 0x006732 01:A722: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x006736 01:A726: 20        .byte $20, $68,     $20, $68
- D 1 - I - 0x00673A 01:A72A: 20        .byte $20, $20,     $20, $20
- D 1 - I - 0x00673E 01:A72E: 20        .byte $20, $1D,     $20, $1D
- D 1 - I - 0x006742 01:A732: 20        .byte $20, $2E,     $20, $2E
- D 1 - I - 0x006746 01:A736: 20        .byte $20, $18,     $20, $18
- D 1 - I - 0x00674A 01:A73A: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x00674E 01:A73E: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x006752 01:A742: 20        .byte $20, $33,     $20, $48	; зона 08
- D 1 - I - 0x006756 01:A746: 20        .byte $20, $4E,     $20, $4E
- D 1 - I - 0x00675A 01:A74A: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x00675E 01:A74E: 20        .byte $20, $5F,     $20, $5F
- D 1 - I - 0x006762 01:A752: 36        .byte $36, $00,     $36, $00
- D 1 - I - 0x006766 01:A756: 20        .byte $20, $1D,     $20, $1D
- D 1 - I - 0x00676A 01:A75A: 20        .byte $20, $25,     $20, $25
- D 1 - I - 0x00676E 01:A75E: 20        .byte $20, $0D,     $20, $0D
- D 1 - I - 0x006772 01:A762: 20        .byte $20, $0F,     $20, $0F
- D 1 - I - 0x006776 01:A766: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x00677A 01:A76A: 20        .byte $20, $48,     $20, $48	; зона 09
- - - - - - 0x00677E 01:A76E: 20        .byte $20, $58,     $20, $58
- D 1 - I - 0x006782 01:A772: 20        .byte $20, $4C,     $20, $4C
- D 1 - I - 0x006786 01:A776: 20        .byte $20, $5F,     $20, $5F
- D 1 - I - 0x00678A 01:A77A: 20        .byte $20, $22,     $20, $22
- D 1 - I - 0x00678E 01:A77E: 20        .byte $20, $13,     $20, $13
- D 1 - I - 0x006792 01:A782: 20        .byte $20, $25,     $20, $25
- D 1 - I - 0x006796 01:A786: 20        .byte $20, $18,     $20, $18
- D 1 - I - 0x00679A 01:A78A: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x00679E 01:A78E: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x0067A2 01:A792: 20        .byte $20, $5A,     $20, $5A	; зона 0A
- D 1 - I - 0x0067A6 01:A796: 20        .byte $20, $57,     $20, $57
- D 1 - I - 0x0067AA 01:A79A: 20        .byte $20, $53,     $20, $53
- D 1 - I - 0x0067AE 01:A79E: 20        .byte $20, $68,     $20, $68
- D 1 - I - 0x0067B2 01:A7A2: 20        .byte $20, $2A,     $20, $2A
- D 1 - I - 0x0067B6 01:A7A6: 20        .byte $20, $12,     $20, $12
- D 1 - I - 0x0067BA 01:A7AA: 20        .byte $20, $2E,     $20, $2E
- D 1 - I - 0x0067BE 01:A7AE: 20        .byte $20, $0E,     $20, $0E
- D 1 - I - 0x0067C2 01:A7B2: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x0067C6 01:A7B6: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x0067CA 01:A7BA: 20        .byte $20, $5B,     $10, $00	; зона 0B
- D 1 - I - 0x0067CE 01:A7BE: 20        .byte $20, $57,     $10, $00
- D 1 - I - 0x0067D2 01:A7C2: 20        .byte $20, $53,     $10, $00
- D 1 - I - 0x0067D6 01:A7C6: 20        .byte $20, $68,     $10, $00
- D 1 - I - 0x0067DA 01:A7CA: 20        .byte $20, $29,     $20, $29
- D 1 - I - 0x0067DE 01:A7CE: 20        .byte $20, $13,     $20, $13
- D 1 - I - 0x0067E2 01:A7D2: 20        .byte $20, $2D,     $20, $2D
- D 1 - I - 0x0067E6 01:A7D6: 20        .byte $20, $0E,     $20, $0E
- D 1 - I - 0x0067EA 01:A7DA: 20        .byte $20, $10,     $20, $10
- D 1 - I - 0x0067EE 01:A7DE: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x0067F2 01:A7E2: 20        .byte $20, $51,     $20, $51	; зона 0C
- D 1 - I - 0x0067F6 01:A7E6: 20        .byte $20, $58,     $20, $58
- D 1 - I - 0x0067FA 01:A7EA: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x0067FE 01:A7EE: 20        .byte $20, $69,     $20, $69
- D 1 - I - 0x006802 01:A7F2: 20        .byte $20, $17,     $20, $20
- D 1 - I - 0x006806 01:A7F6: 20        .byte $20, $12,     $20, $12
- D 1 - I - 0x00680A 01:A7FA: 20        .byte $20, $1A,     $20, $25
- D 1 - I - 0x00680E 01:A7FE: 20        .byte $20, $0E,     $20, $0E
- D 1 - I - 0x006812 01:A802: 20        .byte $20, $0F,     $20, $0F
- D 1 - I - 0x006816 01:A806: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x00681A 01:A80A: 20        .byte $20, $51,     $10, $00	; зона 0D
- D 1 - I - 0x00681E 01:A80E: 20        .byte $20, $62,     $10, $00
- D 1 - I - 0x006822 01:A812: 20        .byte $20, $43,     $20, $4B
- D 1 - I - 0x006826 01:A816: 20        .byte $20, $69,     $10, $00
- D 1 - I - 0x00682A 01:A81A: 20        .byte $20, $21,     $20, $36
- D 1 - I - 0x00682E 01:A81E: 20        .byte $20, $13,     $20, $13
- D 1 - I - 0x006832 01:A822: 20        .byte $20, $1B,     $20, $1B
- D 1 - I - 0x006836 01:A826: 20        .byte $20, $0D,     $20, $0D
- D 1 - I - 0x00683A 01:A82A: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x00683E 01:A82E: 20        .byte $20, $15,     $20, $15
- D 1 - I - 0x006842 01:A832: 20        .byte $20, $52,     $20, $52	; зона 0E
- D 1 - I - 0x006846 01:A836: 20        .byte $20, $59,     $20, $59
- D 1 - I - 0x00684A 01:A83A: 20        .byte $20, $41,     $20, $56
- D 1 - I - 0x00684E 01:A83E: 20        .byte $20, $73,     $20, $73
- D 1 - I - 0x006852 01:A842: 20        .byte $20, $2A,     $20, $2C
- D 1 - I - 0x006856 01:A846: 20        .byte $20, $13,     $20, $13
- D 1 - I - 0x00685A 01:A84A: 20        .byte $20, $1B,     $20, $1B
- D 1 - I - 0x00685E 01:A84E: 20        .byte $20, $0E,     $20, $0E
- D 1 - I - 0x006862 01:A852: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x006866 01:A856: 20        .byte $20, $15,     $20, $15
- D 1 - I - 0x00686A 01:A85A: 20        .byte $20, $6E,     $10, $00	; зона 0F
- D 1 - I - 0x00686E 01:A85E: 20        .byte $20, $61,     $10, $00
- D 1 - I - 0x006872 01:A862: 20        .byte $20, $52,     $10, $00
- D 1 - I - 0x006876 01:A866: 20        .byte $20, $71,     $10, $00
- D 1 - I - 0x00687A 01:A86A: 20        .byte $20, $29,     $20, $29
- D 1 - I - 0x00687E 01:A86E: 20        .byte $20, $26,     $20, $26
- D 1 - I - 0x006882 01:A872: 20        .byte $20, $36,     $20, $42
- D 1 - I - 0x006886 01:A876: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x00688A 01:A87A: 20        .byte $20, $22,     $20, $22
- D 1 - I - 0x00688E 01:A87E: 20        .byte $20, $14,     $20, $24
- D 1 - I - 0x006892 01:A882: 20        .byte $20, $6F,     $10, $00	; зона 10
- D 1 - I - 0x006896 01:A886: 20        .byte $20, $76,     $10, $00
- D 1 - I - 0x00689A 01:A88A: 20        .byte $20, $53,     $20, $56
- D 1 - I - 0x00689E 01:A88E: 20        .byte $20, $72,     $10, $00
- D 1 - I - 0x0068A2 01:A892: 20        .byte $20, $3D,     $20, $3D
- D 1 - I - 0x0068A6 01:A896: 20        .byte $20, $26,     $20, $26
- D 1 - I - 0x0068AA 01:A89A: 20        .byte $20, $44,     $20, $44
- D 1 - I - 0x0068AE 01:A89E: 20        .byte $20, $18,     $20, $18
- D 1 - I - 0x0068B2 01:A8A2: 20        .byte $20, $36,     $20, $36
- D 1 - I - 0x0068B6 01:A8A6: 20        .byte $20, $15,     $20, $15
- D 1 - I - 0x0068BA 01:A8AA: 20        .byte $20, $6F,     $10, $00	; зона 11
- D 1 - I - 0x0068BE 01:A8AE: 20        .byte $20, $76,     $10, $00
- D 1 - I - 0x0068C2 01:A8B2: 20        .byte $20, $54,     $10, $00
- D 1 - I - 0x0068C6 01:A8B6: 20        .byte $20, $72,     $10, $00
- D 1 - I - 0x0068CA 01:A8BA: 20        .byte $20, $2A,     $20, $3D
- D 1 - I - 0x0068CE 01:A8BE: 20        .byte $20, $26,     $20, $26
- D 1 - I - 0x0068D2 01:A8C2: 20        .byte $20, $39,     $20, $45
- D 1 - I - 0x0068D6 01:A8C6: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x0068DA 01:A8CA: 20        .byte $20, $36,     $20, $36
- D 1 - I - 0x0068DE 01:A8CE: 20        .byte $20, $15,     $20, $15
- D 1 - I - 0x0068E2 01:A8D2: 20        .byte $20, $6F,     $10, $00	; зона 12
- D 1 - I - 0x0068E6 01:A8D6: 20        .byte $20, $76,     $10, $00
- D 1 - I - 0x0068EA 01:A8DA: 20        .byte $20, $54,     $10, $00
- D 1 - I - 0x0068EE 01:A8DE: 20        .byte $20, $73,     $10, $00
- D 1 - I - 0x0068F2 01:A8E2: 20        .byte $20, $33,     $20, $3F
- D 1 - I - 0x0068F6 01:A8E6: 20        .byte $20, $27,     $20, $27
- D 1 - I - 0x0068FA 01:A8EA: 20        .byte $20, $44,     $20, $44
- D 1 - I - 0x0068FE 01:A8EE: 20        .byte $20, $1A,     $20, $1A
- D 1 - I - 0x006902 01:A8F2: 20        .byte $20, $2C,     $20, $2C
- D 1 - I - 0x006906 01:A8F6: 20        .byte $20, $16,     $20, $16
- D 1 - I - 0x00690A 01:A8FA: 20        .byte $20, $65,     $10, $00	; зона 13
- D 1 - I - 0x00690E 01:A8FE: 20        .byte $20, $6D,     $10, $00
- D 1 - I - 0x006912 01:A902: 20        .byte $20, $5E,     $10, $00
- D 1 - I - 0x006916 01:A906: 20        .byte $20, $74,     $10, $00
- D 1 - I - 0x00691A 01:A90A: 20        .byte $20, $3D,     $20, $3D
- D 1 - I - 0x00691E 01:A90E: 20        .byte $20, $27,     $20, $27
- D 1 - I - 0x006922 01:A912: 20        .byte $20, $44,     $20, $44
- D 1 - I - 0x006926 01:A916: 20        .byte $20, $1A,     $20, $1A
- D 1 - I - 0x00692A 01:A91A: 20        .byte $20, $41,     $20, $41
- D 1 - I - 0x00692E 01:A91E: 20        .byte $20, $16,     $20, $16
- D 1 - I - 0x006932 01:A922: 20        .byte $20, $64,     $10, $00	; зона 14
- D 1 - I - 0x006936 01:A926: 20        .byte $20, $80,     $10, $00
- D 1 - I - 0x00693A 01:A92A: 20        .byte $20, $67,     $10, $00
- D 1 - I - 0x00693E 01:A92E: 20        .byte $20, $84,     $10, $00
- D 1 - I - 0x006942 01:A932: 20        .byte $20, $51,     $20, $51
- D 1 - I - 0x006946 01:A936: 20        .byte $20, $30,     $20, $30
- D 1 - I - 0x00694A 01:A93A: 20        .byte $20, $57,     $20, $6B
- D 1 - I - 0x00694E 01:A93E: 20        .byte $20, $21,     $20, $21
- D 1 - I - 0x006952 01:A942: 20        .byte $20, $3F,     $20, $55
- D 1 - I - 0x006956 01:A946: 20        .byte $20, $28,     $20, $28
- D 1 - I - 0x00695A 01:A94A: 20        .byte $20, $6F,     $10, $00	; зона 15
- D 1 - I - 0x00695E 01:A94E: 20        .byte $20, $80,     $10, $00
- D 1 - I - 0x006962 01:A952: 20        .byte $20, $67,     $10, $00
- D 1 - I - 0x006966 01:A956: 20        .byte $20, $85,     $10, $00
- D 1 - I - 0x00696A 01:A95A: 20        .byte $20, $47,     $20, $47
- D 1 - I - 0x00696E 01:A95E: 20        .byte $20, $30,     $20, $30
- D 1 - I - 0x006972 01:A962: 20        .byte $20, $58,     $20, $58
- D 1 - I - 0x006976 01:A966: 20        .byte $20, $22,     $20, $22
- D 1 - I - 0x00697A 01:A96A: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x00697E 01:A96E: 20        .byte $20, $28,     $20, $28
- D 1 - I - 0x006982 01:A972: 20        .byte $20, $79,     $10, $00	; зона 16
- D 1 - I - 0x006986 01:A976: 20        .byte $20, $80,     $10, $00
- D 1 - I - 0x00698A 01:A97A: 20        .byte $20, $68,     $10, $00
- D 1 - I - 0x00698E 01:A97E: 20        .byte $20, $86,     $10, $00
- D 1 - I - 0x006992 01:A982: 20        .byte $20, $52,     $20, $52
- D 1 - I - 0x006996 01:A986: 20        .byte $20, $30,     $20, $30
- D 1 - I - 0x00699A 01:A98A: 20        .byte $20, $57,     $20, $57
- D 1 - I - 0x00699E 01:A98E: 20        .byte $20, $22,     $20, $22
- D 1 - I - 0x0069A2 01:A992: 20        .byte $20, $37,     $20, $37
- D 1 - I - 0x0069A6 01:A996: 20        .byte $20, $29,     $20, $29
- D 1 - I - 0x0069AA 01:A99A: 20        .byte $20, $70,     $10, $00	; зона 17
- D 1 - I - 0x0069AE 01:A99E: 20        .byte $20, $76,     $10, $00
- D 1 - I - 0x0069B2 01:A9A2: 20        .byte $20, $69,     $10, $00
- D 1 - I - 0x0069B6 01:A9A6: 20        .byte $20, $87,     $10, $00
- D 1 - I - 0x0069BA 01:A9AA: 20        .byte $20, $52,     $20, $52
- D 1 - I - 0x0069BE 01:A9AE: 20        .byte $20, $31,     $20, $31
- D 1 - I - 0x0069C2 01:A9B2: 20        .byte $20, $4D,     $20, $4D
- D 1 - I - 0x0069C6 01:A9B6: 20        .byte $20, $24,     $20, $24
- D 1 - I - 0x0069CA 01:A9BA: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x0069CE 01:A9BE: 20        .byte $20, $29,     $20, $29
- D 1 - I - 0x0069D2 01:A9C2: 20        .byte $20, $6F,     $10, $00	; зона 18
- D 1 - I - 0x0069D6 01:A9C6: 20        .byte $20, $81,     $10, $00
- D 1 - I - 0x0069DA 01:A9CA: 20        .byte $20, $6A,     $20, $72
- D 1 - I - 0x0069DE 01:A9CE: 20        .byte $20, $87,     $10, $00
- D 1 - I - 0x0069E2 01:A9D2: 20        .byte $20, $50,     $20, $50
- D 1 - I - 0x0069E6 01:A9D6: 20        .byte $20, $31,     $20, $31
- D 1 - I - 0x0069EA 01:A9DA: 20        .byte $20, $58,     $20, $58
- D 1 - I - 0x0069EE 01:A9DE: 20        .byte $20, $25,     $20, $25
- D 1 - I - 0x0069F2 01:A9E2: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x0069F6 01:A9E6: 20        .byte $20, $2A,     $20, $2A
- D 1 - I - 0x0069FA 01:A9EA: 20        .byte $20, $64,     $10, $00	; зона 19
- D 1 - I - 0x0069FE 01:A9EE: 20        .byte $20, $7F,     $10, $00
- D 1 - I - 0x006A02 01:A9F2: 20        .byte $20, $67,     $20, $7C
- D 1 - I - 0x006A06 01:A9F6: 20        .byte $20, $8E,     $10, $00
- D 1 - I - 0x006A0A 01:A9FA: 20        .byte $20, $51,     $20, $51
- D 1 - I - 0x006A0E 01:A9FE: 20        .byte $20, $3A,     $20, $3A
- D 1 - I - 0x006A12 01:AA02: 20        .byte $20, $60,     $20, $60
- D 1 - I - 0x006A16 01:AA06: 20        .byte $20, $2C,     $20, $2C
- D 1 - I - 0x006A1A 01:AA0A: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x006A1E 01:AA0E: 20        .byte $20, $28,     $20, $28
- D 1 - I - 0x006A22 01:AA12: 20        .byte $20, $78,     $10, $00	; зона 1A
- D 1 - I - 0x006A26 01:AA16: 20        .byte $20, $7F,     $10, $00
- D 1 - I - 0x006A2A 01:AA1A: 20        .byte $20, $67,     $10, $00
- D 1 - I - 0x006A2E 01:AA1E: 20        .byte $20, $85,     $10, $00
- D 1 - I - 0x006A32 01:AA22: 20        .byte $20, $51,     $20, $51
- D 1 - I - 0x006A36 01:AA26: 20        .byte $20, $3B,     $20, $3B
- D 1 - I - 0x006A3A 01:AA2A: 20        .byte $20, $61,     $20, $61
- D 1 - I - 0x006A3E 01:AA2E: 20        .byte $20, $2D,     $20, $2D
- D 1 - I - 0x006A42 01:AA32: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x006A46 01:AA36: 20        .byte $20, $28,     $20, $28
- D 1 - I - 0x006A4A 01:AA3A: 20        .byte $20, $78,     $10, $00	; зона 1B
- D 1 - I - 0x006A4E 01:AA3E: 20        .byte $20, $80,     $10, $00
- D 1 - I - 0x006A52 01:AA42: 20        .byte $20, $68,     $10, $00
- D 1 - I - 0x006A56 01:AA46: 20        .byte $20, $86,     $10, $00
- D 1 - I - 0x006A5A 01:AA4A: 20        .byte $20, $52,     $20, $52
- D 1 - I - 0x006A5E 01:AA4E: 20        .byte $20, $3B,     $20, $3B
- D 1 - I - 0x006A62 01:AA52: 20        .byte $20, $57,     $20, $57
- D 1 - I - 0x006A66 01:AA56: 20        .byte $20, $2D,     $20, $2D
- D 1 - I - 0x006A6A 01:AA5A: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x006A6E 01:AA5E: 20        .byte $20, $32,     $20, $32
- D 1 - I - 0x006A72 01:AA62: 20        .byte $20, $79,     $10, $00	; зона 1C
- D 1 - I - 0x006A76 01:AA66: 20        .byte $20, $6D,     $10, $00
- D 1 - I - 0x006A7A 01:AA6A: 20        .byte $20, $6A,     $10, $00
- D 1 - I - 0x006A7E 01:AA6E: 20        .byte $20, $87,     $10, $00
- D 1 - I - 0x006A82 01:AA72: 20        .byte $20, $5C,     $20, $5C
- D 1 - I - 0x006A86 01:AA76: 20        .byte $20, $3B,     $20, $3B
- D 1 - I - 0x006A8A 01:AA7A: 20        .byte $20, $58,     $20, $58
- D 1 - I - 0x006A8E 01:AA7E: 20        .byte $20, $38,     $20, $38
- D 1 - I - 0x006A92 01:AA82: 20        .byte $20, $55,     $20, $55
- D 1 - I - 0x006A96 01:AA86: 20        .byte $20, $32,     $20, $32
- D 1 - I - 0x006A9A 01:AA8A: 20        .byte $20, $79,     $10, $00	; зона 1D
- D 1 - I - 0x006A9E 01:AA8E: 20        .byte $20, $6C,     $10, $00
- D 1 - I - 0x006AA2 01:AA92: 20        .byte $20, $6A,     $10, $00
- D 1 - I - 0x006AA6 01:AA96: 20        .byte $20, $87,     $10, $00
- D 1 - I - 0x006AAA 01:AA9A: 20        .byte $20, $5C,     $20, $5C
- D 1 - I - 0x006AAE 01:AA9E: 20        .byte $20, $3B,     $20, $3B
- D 1 - I - 0x006AB2 01:AAA2: 20        .byte $20, $58,     $20, $58
- D 1 - I - 0x006AB6 01:AAA6: 20        .byte $20, $38,     $20, $38
- D 1 - I - 0x006ABA 01:AAAA: 20        .byte $20, $55,     $20, $55
- D 1 - I - 0x006ABE 01:AAAE: 20        .byte $20, $32,     $20, $32
- D 1 - I - 0x006AC2 01:AAB2: 20        .byte $20, $78,     $20, $78	; зона 1E
- D 1 - I - 0x006AC6 01:AAB6: 20        .byte $20, $74,     $20, $7F
- D 1 - I - 0x006ACA 01:AABA: 20        .byte $20, $71,     $20, $7A
- D 1 - I - 0x006ACE 01:AABE: 20        .byte $20, $7D,     $20, $85
- D 1 - I - 0x006AD2 01:AAC2: 20        .byte $20, $48,     $20, $5B
- D 1 - I - 0x006AD6 01:AAC6: 20        .byte $20, $45,     $20, $62
- D 1 - I - 0x006ADA 01:AACA: 20        .byte $20, $56,     $20, $5F
- D 1 - I - 0x006ADE 01:AACE: 20        .byte $20, $35,     $20, $54
- D 1 - I - 0x006AE2 01:AAD2: 20        .byte $20, $42,     $20, $5D
- D 1 - I - 0x006AE6 01:AAD6: 20        .byte $20, $46,     $20, $46
- D 1 - I - 0x006AEA 01:AADA: 20        .byte $20, $78,     $20, $78	; зона 1F
- D 1 - I - 0x006AEE 01:AADE: 20        .byte $20, $76,     $20, $7F
- D 1 - I - 0x006AF2 01:AAE2: 20        .byte $20, $72,     $20, $7B
- D 1 - I - 0x006AF6 01:AAE6: 20        .byte $20, $86,     $20, $8F
- D 1 - I - 0x006AFA 01:AAEA: 20        .byte $20, $48,     $20, $67
- D 1 - I - 0x006AFE 01:AAEE: 20        .byte $20, $3B,     $20, $59
- D 1 - I - 0x006B02 01:AAF2: 20        .byte $20, $57,     $20, $6A
- D 1 - I - 0x006B06 01:AAF6: 20        .byte $20, $36,     $20, $36
- D 1 - I - 0x006B0A 01:AAFA: 20        .byte $20, $42,     $20, $5F
- D 1 - I - 0x006B0E 01:AAFE: 20        .byte $20, $3C,     $20, $51
- D 1 - I - 0x006B12 01:AB02: 20        .byte $20, $6E,     $20, $83	; зона 20
- D 1 - I - 0x006B16 01:AB06: 20        .byte $20, $77,     $20, $8A
- D 1 - I - 0x006B1A 01:AB0A: 20        .byte $20, $72,     $20, $72
- D 1 - I - 0x006B1E 01:AB0E: 20        .byte $20, $7E,     $20, $7E
- D 1 - I - 0x006B22 01:AB12: 20        .byte $20, $53,     $20, $67
- D 1 - I - 0x006B26 01:AB16: 20        .byte $20, $4E,     $20, $63
- D 1 - I - 0x006B2A 01:AB1A: 20        .byte $20, $56,     $20, $6A
- D 1 - I - 0x006B2E 01:AB1E: 20        .byte $20, $38,     $20, $38
- D 1 - I - 0x006B32 01:AB22: 20        .byte $20, $40,     $20, $5E
- D 1 - I - 0x006B36 01:AB26: 20        .byte $20, $47,     $20, $5A
- D 1 - I - 0x006B3A 01:AB2A: 20        .byte $20, $6E,     $20, $7A	; зона 21
- D 1 - I - 0x006B3E 01:AB2E: 20        .byte $20, $77,     $20, $77
- D 1 - I - 0x006B42 01:AB32: 20        .byte $20, $6A,     $20, $73
- D 1 - I - 0x006B46 01:AB36: 20        .byte $20, $7D,     $20, $7D
- D 1 - I - 0x006B4A 01:AB3A: 20        .byte $20, $53,     $20, $66
- D 1 - I - 0x006B4E 01:AB3E: 20        .byte $20, $43,     $20, $59
- D 1 - I - 0x006B52 01:AB42: 20        .byte $20, $56,     $20, $56
- D 1 - I - 0x006B56 01:AB46: 20        .byte $20, $2E,     $20, $4B
- D 1 - I - 0x006B5A 01:AB4A: 20        .byte $20, $3F,     $20, $54
- D 1 - I - 0x006B5E 01:AB4E: 20        .byte $20, $3C,     $20, $51
- D 1 - I - 0x006B62 01:AB52: 20        .byte $20, $67,     $20, $67	; зона 22
- - - - - - 0x006B66 01:AB56: 20        .byte $20, $77,     $20, $77
- D 1 - I - 0x006B6A 01:AB5A: 20        .byte $20, $60,     $20, $6B
- - - - - - 0x006B6E 01:AB5E: 20        .byte $20, $7E,     $20, $87
- D 1 - I - 0x006B72 01:AB62: 20        .byte $20, $53,     $20, $5B
- D 1 - I - 0x006B76 01:AB66: 20        .byte $20, $3B,     $20, $43
- D 1 - I - 0x006B7A 01:AB6A: 20        .byte $20, $4E,     $20, $57
- D 1 - I - 0x006B7E 01:AB6E: 20        .byte $20, $2D,     $20, $2D
- D 1 - I - 0x006B82 01:AB72: 20        .byte $20, $35,     $20, $4B
- D 1 - I - 0x006B86 01:AB76: 20        .byte $20, $33,     $20, $46
- - - - - - 0x006B8A 01:AB7A: 20        .byte $20, $78,     $20, $8C	; зона 23
- D 1 - I - 0x006B8E 01:AB7E: 20        .byte $20, $7D,     $20, $7D
- D 1 - I - 0x006B92 01:AB82: 20        .byte $20, $71,     $20, $7A
- D 1 - I - 0x006B96 01:AB86: 33        .byte $33, $C0,     $33, $C0
- D 1 - I - 0x006B9A 01:AB8A: 20        .byte $20, $5C,     $20, $5C
- D 1 - I - 0x006B9E 01:AB8E: 20        .byte $20, $59,     $20, $59
- D 1 - I - 0x006BA2 01:AB92: 20        .byte $20, $74,     $20, $7C
- D 1 - I - 0x006BA6 01:AB96: 20        .byte $20, $47,     $20, $4A
- D 1 - I - 0x006BAA 01:AB9A: 20        .byte $20, $56,     $20, $5E
- D 1 - I - 0x006BAE 01:AB9E: 20        .byte $20, $50,     $20, $50
- - - - - - 0x006BB2 01:ABA2: 20        .byte $20, $83,     $20, $8D	; зона 24
- D 1 - I - 0x006BB6 01:ABA6: 20        .byte $20, $88,     $20, $88
- D 1 - I - 0x006BBA 01:ABAA: 20        .byte $20, $7A,     $20, $7B
- D 1 - I - 0x006BBE 01:ABAE: 20        .byte $20, $86,     $20, $8F
- D 1 - I - 0x006BC2 01:ABB2: 20        .byte $20, $66,     $20, $66
- D 1 - I - 0x006BC6 01:ABB6: 20        .byte $20, $63,     $20, $63
- D 1 - I - 0x006BCA 01:ABBA: 20        .byte $20, $6B,     $20, $73
- D 1 - I - 0x006BCE 01:ABBE: 20        .byte $20, $48,     $20, $4A
- D 1 - I - 0x006BD2 01:ABC2: 20        .byte $20, $55,     $20, $68
- D 1 - I - 0x006BD6 01:ABC6: 20        .byte $20, $5A,     $20, $5A
- D 1 - I - 0x006BDA 01:ABCA: 20        .byte $20, $84,     $20, $8F	; зона 25
- D 1 - I - 0x006BDE 01:ABCE: 20        .byte $20, $89,     $20, $92
- D 1 - I - 0x006BE2 01:ABD2: 20        .byte $20, $7C,     $20, $87
- D 1 - I - 0x006BE6 01:ABD6: 20        .byte $20, $73,     $20, $7E
- D 1 - I - 0x006BEA 01:ABDA: 20        .byte $20, $6F,     $20, $7A
- D 1 - I - 0x006BEE 01:ABDE: 20        .byte $20, $4F,     $20, $4F
- D 1 - I - 0x006BF2 01:ABE2: 20        .byte $20, $6B,     $20, $81
- D 1 - I - 0x006BF6 01:ABE6: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x006BFA 01:ABEA: 20        .byte $20, $60,     $20, $68
- D 1 - I - 0x006BFE 01:ABEE: 20        .byte $20, $5A,     $20, $5A
- D 1 - I - 0x006C02 01:ABF2: 20        .byte $20, $86,     $20, $8F	; зона 26
- D 1 - I - 0x006C06 01:ABF6: 30        .byte $30, $1B,     $30, $1B
- D 1 - I - 0x006C0A 01:ABFA: 20        .byte $20, $73,     $20, $7E
- D 1 - I - 0x006C0E 01:ABFE: 36        .byte $36, $00,     $36, $00
- D 1 - I - 0x006C12 01:AC02: 20        .byte $20, $6F,     $20, $7B
- D 1 - I - 0x006C16 01:AC06: 20        .byte $20, $63,     $20, $63
- D 1 - I - 0x006C1A 01:AC0A: 20        .byte $20, $5F,     $20, $6B
- D 1 - I - 0x006C1E 01:AC0E: 20        .byte $20, $4C,     $20, $54
- D 1 - I - 0x006C22 01:AC12: 20        .byte $20, $52,     $20, $67
- D 1 - I - 0x006C26 01:AC16: 20        .byte $20, $3A,     $20, $3A
- D 1 - I - 0x006C2A 01:AC1A: 20        .byte $20, $84,     $20, $86	; зона 27
- D 1 - I - 0x006C2E 01:AC1E: 20        .byte $20, $81,     $20, $94
- D 1 - I - 0x006C32 01:AC22: 20        .byte $20, $76,     $20, $7F
- D 1 - I - 0x006C36 01:AC26: 37        .byte $37, $C0,     $37, $C0
- D 1 - I - 0x006C3A 01:AC2A: 20        .byte $20, $66,     $20, $72
- D 1 - I - 0x006C3E 01:AC2E: 20        .byte $20, $71,     $20, $7D
- D 1 - I - 0x006C42 01:AC32: 20        .byte $20, $59,     $20, $59
- D 1 - I - 0x006C46 01:AC36: 20        .byte $20, $61,     $20, $61
- D 1 - I - 0x006C4A 01:AC3A: 20        .byte $20, $4E,     $20, $55
- D 1 - I - 0x006C4E 01:AC3E: 20        .byte $20, $50,     $20, $50



tbl_AC42_01:
- D 1 - I - 0x006C52 01:AC42: 20        .byte $20, $32,     $20, $48	; зона 00
- D 1 - I - 0x006C56 01:AC46: 20        .byte $20, $30,     $20, $4D
- D 1 - I - 0x006C5A 01:AC4A: 20        .byte $20, $35,     $20, $41
- D 1 - I - 0x006C5E 01:AC4E: 20        .byte $20, $5E,     $20, $66
- D 1 - I - 0x006C62 01:AC52: 20        .byte $20, $20,     $20, $20
- D 1 - I - 0x006C66 01:AC56: 20        .byte $20, $12,     $20, $12
- D 1 - I - 0x006C6A 01:AC5A: 20        .byte $20, $10,     $20, $19
- D 1 - I - 0x006C6E 01:AC5E: 20        .byte $20, $03,     $20, $03
- D 1 - I - 0x006C72 01:AC62: 20        .byte $20, $0D,     $40, $00
- - - - - - 0x006C76 01:AC66: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006C7A 01:AC6A: 20        .byte $20, $29,     $20, $48	; зона 01
- D 1 - I - 0x006C7E 01:AC6E: 20        .byte $20, $30,     $20, $4D
- D 1 - I - 0x006C82 01:AC72: 20        .byte $20, $36,     $20, $36
- D 1 - I - 0x006C86 01:AC76: 20        .byte $20, $54,     $20, $54
- D 1 - I - 0x006C8A 01:AC7A: 20        .byte $20, $21,     $20, $21
- D 1 - I - 0x006C8E 01:AC7E: 20        .byte $20, $12,     $20, $12
- D 1 - I - 0x006C92 01:AC82: 20        .byte $20, $19,     $20, $19
- D 1 - I - 0x006C96 01:AC86: 20        .byte $20, $10,     $20, $10
- D 1 - I - 0x006C9A 01:AC8A: 20        .byte $20, $0D,     $40, $00
- D 1 - I - 0x006C9E 01:AC8E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006CA2 01:AC92: 20        .byte $20, $29,     $20, $48	; зона 02
- D 1 - I - 0x006CA6 01:AC96: 20        .byte $20, $30,     $20, $4D
- D 1 - I - 0x006CAA 01:AC9A: 20        .byte $20, $36,     $20, $49
- D 1 - I - 0x006CAE 01:AC9E: 20        .byte $20, $55,     $20, $6A
- D 1 - I - 0x006CB2 01:ACA2: 20        .byte $20, $20,     $20, $2B
- D 1 - I - 0x006CB6 01:ACA6: 20        .byte $20, $07,     $20, $12
- D 1 - I - 0x006CBA 01:ACAA: 20        .byte $20, $2D,     $20, $3B
- D 1 - I - 0x006CBE 01:ACAE: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006CC2 01:ACB2: 20        .byte $20, $18,     $40, $00
- D 1 - I - 0x006CC6 01:ACB6: 20        .byte $20, $04,     $20, $04
- D 1 - I - 0x006CCA 01:ACBA: 20        .byte $20, $29,     $20, $49	; зона 03
- D 1 - I - 0x006CCE 01:ACBE: 20        .byte $20, $31,     $20, $44
- D 1 - I - 0x006CD2 01:ACC2: 20        .byte $20, $37,     $20, $4A
- D 1 - I - 0x006CD6 01:ACC6: 20        .byte $20, $57,     $20, $5F
- D 1 - I - 0x006CDA 01:ACCA: 20        .byte $20, $21,     $20, $2C
- D 1 - I - 0x006CDE 01:ACCE: 32        .byte $32, $00,     $32, $00
- D 1 - I - 0x006CE2 01:ACD2: 20        .byte $20, $24,     $20, $24
- D 1 - I - 0x006CE6 01:ACD6: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006CEA 01:ACDA: 20        .byte $20, $0F,     $40, $00
- D 1 - I - 0x006CEE 01:ACDE: 20        .byte $20, $0C,     $20, $15
- D 1 - I - 0x006CF2 01:ACE2: 20        .byte $20, $29,     $20, $48	; зона 04
- D 1 - I - 0x006CF6 01:ACE6: 20        .byte $20, $45,     $20, $4D
- D 1 - I - 0x006CFA 01:ACEA: 20        .byte $20, $38,     $20, $40
- D 1 - I - 0x006CFE 01:ACEE: 20        .byte $20, $5F,     $20, $6B
- D 1 - I - 0x006D02 01:ACF2: 20        .byte $20, $0D,     $20, $17
- D 1 - I - 0x006D06 01:ACF6: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006D0A 01:ACFA: 20        .byte $20, $25,     $20, $25
- D 1 - I - 0x006D0E 01:ACFE: 20        .byte $20, $0D,     $20, $0D
- D 1 - I - 0x006D12 01:AD02: 20        .byte $20, $10,     $20, $10
- D 1 - I - 0x006D16 01:AD06: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x006D1A 01:AD0A: 20        .byte $20, $46,     $20, $48	; зона 05
- D 1 - I - 0x006D1E 01:AD0E: 20        .byte $20, $3A,     $20, $4D
- D 1 - I - 0x006D22 01:AD12: 20        .byte $20, $40,     $20, $4B
- D 1 - I - 0x006D26 01:AD16: 20        .byte $20, $5D,     $20, $70
- - - - - - 0x006D2A 01:AD1A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006D2E 01:AD1E: 20        .byte $20, $1C,     $20, $1C
- D 1 - I - 0x006D32 01:AD22: 20        .byte $20, $10,     $20, $19
- D 1 - I - 0x006D36 01:AD26: 20        .byte $20, $0F,     $20, $0F
- D 1 - I - 0x006D3A 01:AD2A: 20        .byte $20, $0C,     $20, $20
- D 1 - I - 0x006D3E 01:AD2E: 20        .byte $20, $0A,     $40, $00
- D 1 - I - 0x006D42 01:AD32: 20        .byte $20, $33,     $20, $48	; зона 06
- D 1 - I - 0x006D46 01:AD36: 20        .byte $20, $31,     $20, $44
- D 1 - I - 0x006D4A 01:AD3A: 20        .byte $20, $38,     $20, $41
- D 1 - I - 0x006D4E 01:AD3E: 20        .byte $20, $60,     $20, $67
- D 1 - I - 0x006D52 01:AD42: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006D56 01:AD46: 20        .byte $20, $12,     $20, $12
- D 1 - I - 0x006D5A 01:AD4A: 20        .byte $20, $06,     $20, $06
- D 1 - I - 0x006D5E 01:AD4E: 20        .byte $20, $0F,     $40, $00
- D 1 - I - 0x006D62 01:AD52: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x006D66 01:AD56: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x006D6A 01:AD5A: 20        .byte $20, $29,     $20, $48	; зона 07
- D 1 - I - 0x006D6E 01:AD5E: 20        .byte $20, $30,     $20, $4D
- D 1 - I - 0x006D72 01:AD62: 20        .byte $20, $40,     $20, $49
- D 1 - I - 0x006D76 01:AD66: 20        .byte $20, $5F,     $20, $6A
- D 1 - I - 0x006D7A 01:AD6A: 20        .byte $20, $20,     $20, $35
- D 1 - I - 0x006D7E 01:AD6E: 20        .byte $20, $07,     $20, $12
- D 1 - I - 0x006D82 01:AD72: 20        .byte $20, $2D,     $20, $42
- D 1 - I - 0x006D86 01:AD76: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006D8A 01:AD7A: 20        .byte $20, $19,     $40, $00
- D 1 - I - 0x006D8E 01:AD7E: 20        .byte $20, $02,     $20, $0B
- D 1 - I - 0x006D92 01:AD82: 20        .byte $20, $28,     $20, $3D	; зона 08
- D 1 - I - 0x006D96 01:AD86: 20        .byte $20, $3A,     $20, $4D
- D 1 - I - 0x006D9A 01:AD8A: 20        .byte $20, $35,     $20, $40
- D 1 - I - 0x006D9E 01:AD8E: 20        .byte $20, $5D,     $20, $6A
- D 1 - I - 0x006DA2 01:AD92: 20        .byte $20, $20,     $20, $2C
- D 1 - I - 0x006DA6 01:AD96: 20        .byte $20, $12,     $40, $00
- D 1 - I - 0x006DAA 01:AD9A: 20        .byte $20, $2F,     $20, $2F
- D 1 - I - 0x006DAE 01:AD9E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006DB2 01:ADA2: 20        .byte $20, $19,     $40, $00
- D 1 - I - 0x006DB6 01:ADA6: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x006DBA 01:ADAA: 20        .byte $20, $33,     $20, $48	; зона 09
- D 1 - I - 0x006DBE 01:ADAE: 20        .byte $20, $4D,     $20, $4F
- D 1 - I - 0x006DC2 01:ADB2: 20        .byte $20, $55,     $20, $5E
- D 1 - I - 0x006DC6 01:ADB6: 20        .byte $20, $60,     $20, $75
- D 1 - I - 0x006DCA 01:ADBA: 20        .byte $20, $2C,     $20, $4A
- D 1 - I - 0x006DCE 01:ADBE: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006DD2 01:ADC2: 20        .byte $20, $30,     $20, $56
- D 1 - I - 0x006DD6 01:ADC6: 20        .byte $20, $0E,     $20, $0E
- D 1 - I - 0x006DDA 01:ADCA: 20        .byte $20, $11,     $40, $00
- D 1 - I - 0x006DDE 01:ADCE: 20        .byte $20, $0B,     $20, $0B
- D 1 - I - 0x006DE2 01:ADD2: 20        .byte $20, $46,     $20, $48	; зона 0A
- D 1 - I - 0x006DE6 01:ADD6: 20        .byte $20, $58,     $20, $6A
- D 1 - I - 0x006DEA 01:ADDA: 20        .byte $20, $5B,     $20, $5D
- D 1 - I - 0x006DEE 01:ADDE: 20        .byte $20, $70,     $20, $7B
- D 1 - I - 0x006DF2 01:ADE2: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006DF6 01:ADE6: 20        .byte $20, $26,     $20, $39
- D 1 - I - 0x006DFA 01:ADEA: 20        .byte $20, $2D,     $20, $54
- D 1 - I - 0x006DFE 01:ADEE: 20        .byte $20, $19,     $20, $22
- D 1 - I - 0x006E02 01:ADF2: 20        .byte $20, $0C,     $20, $20
- D 1 - I - 0x006E06 01:ADF6: 20        .byte $20, $15,     $20, $15
- D 1 - I - 0x006E0A 01:ADFA: 20        .byte $20, $3C,     $20, $48	; зона 0B
- D 1 - I - 0x006E0E 01:ADFE: 20        .byte $20, $44,     $20, $61
- D 1 - I - 0x006E12 01:AE02: 20        .byte $20, $54,     $20, $67
- D 1 - I - 0x006E16 01:AE06: 20        .byte $20, $73,     $20, $86
- D 1 - I - 0x006E1A 01:AE0A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006E1E 01:AE0E: 20        .byte $20, $12,     $20, $27
- D 1 - I - 0x006E22 01:AE12: 20        .byte $20, $2F,     $20, $42
- D 1 - I - 0x006E26 01:AE16: 20        .byte $20, $0F,     $20, $24
- D 1 - I - 0x006E2A 01:AE1A: 20        .byte $20, $2C,     $20, $2D
- D 1 - I - 0x006E2E 01:AE1E: 20        .byte $20, $0C,     $20, $1F
- D 1 - I - 0x006E32 01:AE22: 20        .byte $20, $3D,     $20, $5D	; зона 0C
- D 1 - I - 0x006E36 01:AE26: 20        .byte $20, $45,     $20, $61
- D 1 - I - 0x006E3A 01:AE2A: 20        .byte $20, $5F,     $20, $68
- D 1 - I - 0x006E3E 01:AE2E: 20        .byte $20, $74,     $20, $87
- D 1 - I - 0x006E42 01:AE32: 20        .byte $20, $3F,     $20, $4A
- D 1 - I - 0x006E46 01:AE36: 20        .byte $20, $26,     $20, $2F
- D 1 - I - 0x006E4A 01:AE3A: 20        .byte $20, $43,     $20, $4C
- D 1 - I - 0x006E4E 01:AE3E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006E52 01:AE42: 20        .byte $20, $37,     $20, $37
- D 1 - I - 0x006E56 01:AE46: 20        .byte $20, $1F,     $20, $2A
- D 1 - I - 0x006E5A 01:AE4A: 20        .byte $20, $3D,     $20, $5C	; зона 0D
- D 1 - I - 0x006E5E 01:AE4E: 20        .byte $20, $45,     $20, $62
- D 1 - I - 0x006E62 01:AE52: 20        .byte $20, $60,     $20, $69
- D 1 - I - 0x006E66 01:AE56: 20        .byte $20, $72,     $20, $88
- D 1 - I - 0x006E6A 01:AE5A: 20        .byte $20, $3F,     $20, $54
- D 1 - I - 0x006E6E 01:AE5E: 20        .byte $20, $11,     $20, $27
- D 1 - I - 0x006E72 01:AE62: 20        .byte $20, $44,     $20, $4C
- D 1 - I - 0x006E76 01:AE66: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006E7A 01:AE6A: 20        .byte $20, $2D,     $20, $2D
- D 1 - I - 0x006E7E 01:AE6E: 20        .byte $20, $20,     $20, $34
- D 1 - I - 0x006E82 01:AE72: 20        .byte $20, $47,     $20, $72	; зона 0E
- D 1 - I - 0x006E86 01:AE76: 20        .byte $20, $45,     $20, $62
- D 1 - I - 0x006E8A 01:AE7A: 20        .byte $20, $60,     $20, $69
- D 1 - I - 0x006E8E 01:AE7E: 20        .byte $20, $74,     $20, $7D
- D 1 - I - 0x006E92 01:AE82: 20        .byte $20, $2C,     $20, $54
- - - - - - 0x006E96 01:AE86: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006E9A 01:AE8A: 20        .byte $20, $43,     $20, $4E
- D 1 - I - 0x006E9E 01:AE8E: 20        .byte $20, $17,     $20, $17
- D 1 - I - 0x006EA2 01:AE92: 20        .byte $20, $1B,     $20, $24
- D 1 - I - 0x006EA6 01:AE96: 20        .byte $20, $20,     $20, $33
- D 1 - I - 0x006EAA 01:AE9A: 20        .byte $20, $64,     $20, $66	; зона 0F
- D 1 - I - 0x006EAE 01:AE9E: 20        .byte $20, $76,     $20, $88
- D 1 - I - 0x006EB2 01:AEA2: 20        .byte $20, $71,     $20, $72
- D 1 - I - 0x006EB6 01:AEA6: 20        .byte $20, $85,     $20, $85
- D 1 - I - 0x006EBA 01:AEAA: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006EBE 01:AEAE: 20        .byte $20, $3A,     $20, $57
- D 1 - I - 0x006EC2 01:AEB2: 20        .byte $20, $38,     $20, $5F
- D 1 - I - 0x006EC6 01:AEB6: 20        .byte $20, $2C,     $20, $35
- D 1 - I - 0x006ECA 01:AEBA: 20        .byte $20, $4A,     $20, $52
- D 1 - I - 0x006ECE 01:AEBE: 20        .byte $20, $32,     $40, $00
- D 1 - I - 0x006ED2 01:AEC2: 20        .byte $20, $5B,     $20, $66	; зона 10
- D 1 - I - 0x006ED6 01:AEC6: 20        .byte $20, $76,     $20, $88
- D 1 - I - 0x006EDA 01:AECA: 20        .byte $20, $69,     $20, $72
- D 1 - I - 0x006EDE 01:AECE: 20        .byte $20, $7B,     $20, $86
- D 1 - I - 0x006EE2 01:AED2: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006EE6 01:AED6: 20        .byte $20, $31,     $20, $4E
- D 1 - I - 0x006EEA 01:AEDA: 20        .byte $20, $39,     $20, $61
- D 1 - I - 0x006EEE 01:AEDE: 20        .byte $20, $2A,     $20, $2B
- D 1 - I - 0x006EF2 01:AEE2: 20        .byte $20, $41,     $20, $4A
- D 1 - I - 0x006EF6 01:AEE6: 20        .byte $20, $33,     $40, $00
- D 1 - I - 0x006EFA 01:AEEA: 20        .byte $20, $65,     $20, $84	; зона 11
- D 1 - I - 0x006EFE 01:AEEE: 20        .byte $20, $6C,     $20, $89
- D 1 - I - 0x006F02 01:AEF2: 20        .byte $20, $72,     $20, $7C
- D 1 - I - 0x006F06 01:AEF6: 20        .byte $20, $87,     $20, $87
- D 1 - I - 0x006F0A 01:AEFA: 20        .byte $20, $53,     $20, $53
- D 1 - I - 0x006F0E 01:AEFE: 20        .byte $20, $44,     $20, $4C
- D 1 - I - 0x006F12 01:AF02: 20        .byte $20, $40,     $40, $00
- D 1 - I - 0x006F16 01:AF06: 20        .byte $20, $2D,     $20, $2D
- D 1 - I - 0x006F1A 01:AF0A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006F1E 01:AF0E: 20        .byte $20, $3D,     $20, $49
- D 1 - I - 0x006F22 01:AF12: 20        .byte $20, $6F,     $20, $85	; зона 12
- D 1 - I - 0x006F26 01:AF16: 20        .byte $20, $62,     $20, $6B
- D 1 - I - 0x006F2A 01:AF1A: 20        .byte $20, $68,     $20, $73
- D 1 - I - 0x006F2E 01:AF1E: 20        .byte $20, $7E,     $20, $87
- D 1 - I - 0x006F32 01:AF22: 20        .byte $20, $34,     $20, $5C
- D 1 - I - 0x006F36 01:AF26: 20        .byte $20, $3A,     $20, $3A
- D 1 - I - 0x006F3A 01:AF2A: 20        .byte $20, $56,     $40, $00
- D 1 - I - 0x006F3E 01:AF2E: 20        .byte $20, $2E,     $20, $2F
- D 1 - I - 0x006F42 01:AF32: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006F46 01:AF36: 20        .byte $20, $28,     $20, $47
- D 1 - I - 0x006F4A 01:AF3A: 20        .byte $20, $6F,     $20, $85	; зона 13
- D 1 - I - 0x006F4E 01:AF3E: 20        .byte $20, $77,     $20, $7F
- D 1 - I - 0x006F52 01:AF42: 20        .byte $20, $7D,     $20, $7E
- D 1 - I - 0x006F56 01:AF46: 20        .byte $20, $8A,     $20, $93
- D 1 - I - 0x006F5A 01:AF4A: 20        .byte $20, $35,     $20, $5E
- D 1 - I - 0x006F5E 01:AF4E: 20        .byte $20, $3B,     $40, $00
- D 1 - I - 0x006F62 01:AF52: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006F66 01:AF56: 20        .byte $20, $2C,     $20, $38
- D 1 - I - 0x006F6A 01:AF5A: 20        .byte $20, $60,     $20, $60
- D 1 - I - 0x006F6E 01:AF5E: 20        .byte $20, $33,     $20, $52
- D 1 - I - 0x006F72 01:AF62: 20        .byte $20, $78,     $40, $00	; зона 14
- D 1 - I - 0x006F76 01:AF66: 20        .byte $20, $75,     $20, $88
- D 1 - I - 0x006F7A 01:AF6A: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x006F7E 01:AF6E: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x006F82 01:AF72: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006F86 01:AF76: 20        .byte $20, $4E,     $20, $62
- D 1 - I - 0x006F8A 01:AF7A: 20        .byte $20, $6A,     $20, $72
- D 1 - I - 0x006F8E 01:AF7E: 20        .byte $20, $40,     $20, $49
- D 1 - I - 0x006F92 01:AF82: 20        .byte $20, $55,     $20, $5E
- D 1 - I - 0x006F96 01:AF86: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006F9A 01:AF8A: 20        .byte $20, $79,     $20, $7B	; зона 15
- D 1 - I - 0x006F9E 01:AF8E: 20        .byte $20, $6D,     $20, $89
- D 1 - I - 0x006FA2 01:AF92: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x006FA6 01:AF96: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x006FAA 01:AF9A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006FAE 01:AF9E: 20        .byte $20, $4E,     $20, $56
- D 1 - I - 0x006FB2 01:AFA2: 20        .byte $20, $61,     $20, $6B
- D 1 - I - 0x006FB6 01:AFA6: 20        .byte $20, $41,     $20, $41
- D 1 - I - 0x006FBA 01:AFAA: 20        .byte $20, $54,     $40, $00
- D 1 - I - 0x006FBE 01:AFAE: 20        .byte $20, $47,     $20, $5A
- D 1 - I - 0x006FC2 01:AFB2: 20        .byte $20, $65,     $20, $85	; зона 16
- D 1 - I - 0x006FC6 01:AFB6: 20        .byte $20, $76,     $20, $88
- D 1 - I - 0x006FCA 01:AFBA: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x006FCE 01:AFBE: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x006FD2 01:AFC2: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006FD6 01:AFC6: 20        .byte $20, $4E,     $20, $60
- D 1 - I - 0x006FDA 01:AFCA: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006FDE 01:AFCE: 20        .byte $20, $37,     $20, $37
- D 1 - I - 0x006FE2 01:AFD2: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x006FE6 01:AFD6: 20        .byte $20, $47,     $20, $5D
- D 1 - I - 0x006FEA 01:AFDA: 20        .byte $20, $6E,     $20, $8D	; зона 17
- D 1 - I - 0x006FEE 01:AFDE: 20        .byte $20, $6D,     $20, $7F
- D 1 - I - 0x006FF2 01:AFE2: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x006FF6 01:AFE6: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x006FFA 01:AFEA: 20        .byte $20, $5B,     $20, $66
- D 1 - I - 0x006FFE 01:AFEE: 20        .byte $20, $45,     $20, $4E
- D 1 - I - 0x007002 01:AFF2: 20        .byte $20, $61,     $40, $00
- D 1 - I - 0x007006 01:AFF6: 20        .byte $20, $38,     $20, $40
- D 1 - I - 0x00700A 01:AFFA: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00700E 01:AFFE: 20        .byte $20, $3C,     $20, $50
- D 1 - I - 0x007012 01:B002: 20        .byte $20, $6F,     $20, $85	; зона 18
- D 1 - I - 0x007016 01:B006: 20        .byte $20, $76,     $20, $77
- D 1 - I - 0x00701A 01:B00A: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x00701E 01:B00E: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007022 01:B012: 20        .byte $20, $3F,     $20, $68
- D 1 - I - 0x007026 01:B016: 20        .byte $20, $45,     $40, $00
- D 1 - I - 0x00702A 01:B01A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00702E 01:B01E: 20        .byte $20, $37,     $20, $42
- D 1 - I - 0x007032 01:B022: 20        .byte $20, $57,     $20, $60
- D 1 - I - 0x007036 01:B026: 20        .byte $20, $3D,     $20, $52
- D 1 - I - 0x00703A 01:B02A: 20        .byte $20, $78,     $10, $00	; зона 19
- D 1 - I - 0x00703E 01:B02E: 20        .byte $20, $87,     $20, $87
- D 1 - I - 0x007042 01:B032: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x007046 01:B036: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00704A 01:B03A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00704E 01:B03E: 20        .byte $20, $58,     $20, $61
- D 1 - I - 0x007052 01:B042: 20        .byte $20, $73,     $20, $7C
- D 1 - I - 0x007056 01:B046: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x00705A 01:B04A: 20        .byte $20, $5F,     $20, $67
- D 1 - I - 0x00705E 01:B04E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007062 01:B052: 20        .byte $20, $83,     $10, $00	; зона 1A
- D 1 - I - 0x007066 01:B056: 20        .byte $20, $8A,     $20, $92
- D 1 - I - 0x00706A 01:B05A: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x00706E 01:B05E: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007072 01:B062: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007076 01:B066: 20        .byte $20, $57,     $20, $6C
- D 1 - I - 0x00707A 01:B06A: 20        .byte $20, $74,     $20, $7D
- D 1 - I - 0x00707E 01:B06E: 20        .byte $20, $4B,     $20, $4B
- D 1 - I - 0x007082 01:B072: 20        .byte $20, $5E,     $20, $5E
- D 1 - I - 0x007086 01:B076: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00708A 01:B07A: 20        .byte $20, $85,     $20, $86	; зона 1B
- D 1 - I - 0x00708E 01:B07E: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x007092 01:B082: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x007096 01:B086: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00709A 01:B08A: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00709E 01:B08E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0070A2 01:B092: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x0070A6 01:B096: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x0070AA 01:B09A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0070AE 01:B09E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0070B2 01:B0A2: 20        .byte $20, $85,     $20, $86	; зона 1C
- D 1 - I - 0x0070B6 01:B0A6: 20        .byte $20, $80,     $20, $88
- D 1 - I - 0x0070BA 01:B0AA: 20        .byte $20, $71,     $20, $7C
- D 1 - I - 0x0070BE 01:B0AE: 20        .byte $20, $87,     $10, $00
- D 1 - I - 0x0070C2 01:B0B2: 20        .byte $20, $53,     $20, $68
- D 1 - I - 0x0070C6 01:B0B6: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0070CA 01:B0BA: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0070CE 01:B0BE: 20        .byte $20, $40,     $20, $55
- D 1 - I - 0x0070D2 01:B0C2: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0070D6 01:B0C6: 20        .byte $20, $50,     $20, $6F
- D 1 - I - 0x0070DA 01:B0CA: 20        .byte $20, $85,     $20, $86	; зона 1D
- D 1 - I - 0x0070DE 01:B0CE: 20        .byte $20, $81,     $40, $00
- D 1 - I - 0x0070E2 01:B0D2: 20        .byte $20, $88,     $20, $88
- D 1 - I - 0x0070E6 01:B0D6: 20        .byte $20, $89,     $10, $00
- D 1 - I - 0x0070EA 01:B0DA: 20        .byte $20, $72,     $20, $7D
- D 1 - I - 0x0070EE 01:B0DE: 20        .byte $20, $4F,     $20, $4F
- D 1 - I - 0x0070F2 01:B0E2: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0070F6 01:B0E6: 20        .byte $20, $42,     $20, $57
- D 1 - I - 0x0070FA 01:B0EA: 20        .byte $20, $55,     $20, $6A
- D 1 - I - 0x0070FE 01:B0EE: 20        .byte $20, $5B,     $20, $70
- D 1 - I - 0x007102 01:B0F2: 40        .byte $40, $00,     $40, $00	; зона 1E
- D 1 - I - 0x007106 01:B0F6: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x00710A 01:B0FA: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00710E 01:B0FE: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007112 01:B102: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007116 01:B106: 20        .byte $20, $5B,     $20, $6B
- D 1 - I - 0x00711A 01:B10A: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x00711E 01:B10E: 20        .byte $20, $48,     $20, $54
- - - - - - 0x007122 01:B112: 20        .byte $20, $72,     $20, $73
- D 1 - I - 0x007126 01:B116: 20        .byte $20, $70,     $20, $70
- D 1 - I - 0x00712A 01:B11A: 40        .byte $40, $00,     $40, $00	; зона 1F
- D 1 - I - 0x00712E 01:B11E: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x007132 01:B122: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007136 01:B126: 20        .byte $20, $84,     $20, $85
- D 1 - I - 0x00713A 01:B12A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00713E 01:B12E: 20        .byte $20, $75,     $20, $75
- D 1 - I - 0x007142 01:B132: 20        .byte $20, $7D,     $20, $7E
- D 1 - I - 0x007146 01:B136: 20        .byte $20, $52,     $20, $52
- D 1 - I - 0x00714A 01:B13A: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00714E 01:B13E: 20        .byte $20, $7A,     $20, $7A
- D 1 - I - 0x007152 01:B142: 20        .byte $20, $84,     $20, $85	; зона 20
- D 1 - I - 0x007156 01:B146: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x00715A 01:B14A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00715E 01:B14E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007162 01:B152: 20        .byte $20, $7A,     $20, $84
- D 1 - I - 0x007166 01:B156: 20        .byte $20, $4F,     $20, $76
- D 1 - I - 0x00716A 01:B15A: 20        .byte $20, $7F,     $20, $89
- D 1 - I - 0x00716E 01:B15E: 20        .byte $20, $4A,     $20, $4A
- D 1 - I - 0x007172 01:B162: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007176 01:B166: 20        .byte $20, $46,     $20, $6F
- D 1 - I - 0x00717A 01:B16A: 20        .byte $20, $85,     $20, $86	; зона 21
- D 1 - I - 0x00717E 01:B16E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007182 01:B172: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007186 01:B176: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00718A 01:B17A: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00718E 01:B17E: 20        .byte $20, $57,     $20, $57
- D 1 - I - 0x007192 01:B182: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007196 01:B186: 20        .byte $20, $4A,     $20, $5F
- D 1 - I - 0x00719A 01:B18A: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00719E 01:B18E: 20        .byte $20, $52,     $20, $65
- D 1 - I - 0x0071A2 01:B192: 20        .byte $20, $85,     $20, $86	; зона 22
- D 1 - I - 0x0071A6 01:B196: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0071AA 01:B19A: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x0071AE 01:B19E: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x0071B2 01:B1A2: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x0071B6 01:B1A6: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0071BA 01:B1AA: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0071BE 01:B1AE: 20        .byte $20, $54,     $20, $55
- D 1 - I - 0x0071C2 01:B1B2: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x0071C6 01:B1B6: 20        .byte $20, $51,     $20, $6C
- D 1 - I - 0x0071CA 01:B1BA: 40        .byte $40, $00,     $40, $00	; зона 23
- D 1 - I - 0x0071CE 01:B1BE: 20        .byte $20, $88,     $20, $88
- D 1 - I - 0x0071D2 01:B1C2: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x0071D6 01:B1C6: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x0071DA 01:B1CA: 40        .byte $40, $00,     $40, $00
- - - - - - 0x0071DE 01:B1CE: 20        .byte $20, $7F,     $20, $80
- D 1 - I - 0x0071E2 01:B1D2: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x0071E6 01:B1D6: 20        .byte $20, $56,     $20, $56
- - - - - - 0x0071EA 01:B1DA: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x0071EE 01:B1DE: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x0071F2 01:B1E2: 40        .byte $40, $00,     $40, $00	; зона 24
- D 1 - I - 0x0071F6 01:B1E6: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x0071FA 01:B1EA: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x0071FE 01:B1EE: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007202 01:B1F2: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007206 01:B1F6: 20        .byte $20, $7F,     $20, $80
- D 1 - I - 0x00720A 01:B1FA: 20        .byte $20, $87,     $20, $88
- D 1 - I - 0x00720E 01:B1FE: 20        .byte $20, $4C,     $20, $4C
- D 1 - I - 0x007212 01:B202: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007216 01:B206: 20        .byte $20, $84,     $20, $85
- D 1 - I - 0x00721A 01:B20A: 40        .byte $40, $00,     $40, $00	; зона 25
- D 1 - I - 0x00721E 01:B20E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007222 01:B212: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007226 01:B216: 30        .byte $30, $01,     $30, $01
- D 1 - I - 0x00722A 01:B21A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00722E 01:B21E: 20        .byte $20, $89,     $20, $8A
- D 1 - I - 0x007232 01:B222: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007236 01:B226: 20        .byte $20, $4A,     $20, $4B
- D 1 - I - 0x00723A 01:B22A: 20        .byte $20, $7C,     $20, $7D
- D 1 - I - 0x00723E 01:B22E: 20        .byte $20, $84,     $20, $85
- D 1 - I - 0x007242 01:B232: 20        .byte $20, $85,     $20, $85	; зона 26
- D 1 - I - 0x007246 01:B236: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00724A 01:B23A: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00724E 01:B23E: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007252 01:B242: 20        .byte $20, $85,     $20, $86
- D 1 - I - 0x007256 01:B246: 20        .byte $20, $80,     $20, $8A
- D 1 - I - 0x00725A 01:B24A: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x00725E 01:B24E: 20        .byte $20, $4C,     $20, $4C
- D 1 - I - 0x007262 01:B252: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007266 01:B256: 20        .byte $20, $84,     $20, $85
- D 1 - I - 0x00726A 01:B25A: 20        .byte $20, $85,     $20, $86	; зона 27
- D 1 - I - 0x00726E 01:B25E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007272 01:B262: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x007276 01:B266: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00727A 01:B26A: 20        .byte $20, $85,     $20, $86
- D 1 - I - 0x00727E 01:B26E: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007282 01:B272: 40        .byte $40, $00,     $40, $00
- D 1 - I - 0x007286 01:B276: 20        .byte $20, $4C,     $20, $4C
- D 1 - I - 0x00728A 01:B27A: 20        .byte $20, $86,     $20, $87
- D 1 - I - 0x00728E 01:B27E: 20        .byte $20, $84,     $20, $85



tbl_B282:
- D 1 - - - 0x007292 01:B282: 00        .byte $00   ; 
- D 1 - - - 0x007293 01:B283: 00        .byte $00   ; 
- D 1 - - - 0x007294 01:B284: 00        .byte $00   ; 
- D 1 - - - 0x007295 01:B285: 00        .byte $00   ; 
- D 1 - - - 0x007296 01:B286: 00        .byte $00   ; 
- D 1 - - - 0x007297 01:B287: 00        .byte $00   ; 
- D 1 - - - 0x007298 01:B288: 00        .byte $00   ; 
- D 1 - - - 0x007299 01:B289: 00        .byte $00   ; 
- D 1 - - - 0x00729A 01:B28A: 00        .byte $00   ; 



tbl_B28B:
- D 1 - - - 0x00729B 01:B28B: 00        .byte $00   ; 
tbl_B28C:
- D 1 - - - 0x00729C 01:B28C: 00        .byte $00   ; 
- D 1 - - - 0x00729D 01:B28D: 06        .byte $06   ; 
- D 1 - - - 0x00729E 01:B28E: 06        .byte $06   ; 
- D 1 - - - 0x00729F 01:B28F: 06        .byte $06   ; 
- D 1 - - - 0x0072A0 01:B290: 06        .byte $06   ; 
- D 1 - - - 0x0072A1 01:B291: 06        .byte $06   ; 
- D 1 - - - 0x0072A2 01:B292: 06        .byte $06   ; 
- D 1 - - - 0x0072A3 01:B293: 06        .byte $06   ; 
- D 1 - - - 0x0072A4 01:B294: 06        .byte $06   ; 
- D 1 - - - 0x0072A5 01:B295: 06        .byte $06   ; 
- D 1 - - - 0x0072A6 01:B296: 07        .byte $07   ; 
- D 1 - - - 0x0072A7 01:B297: 07        .byte $07   ; 
- - - - - - 0x0072A8 01:B298: 06        .byte $06   ; 
- - - - - - 0x0072A9 01:B299: 06        .byte $06   ; 
- - - - - - 0x0072AA 01:B29A: 06        .byte $06   ; 
- D 1 - - - 0x0072AB 01:B29B: 06        .byte $06   ; 
- D 1 - - - 0x0072AC 01:B29C: 06        .byte $06   ; 
- D 1 - - - 0x0072AD 01:B29D: 06        .byte $06   ; 
- - - - - - 0x0072AE 01:B29E: 06        .byte $06   ; 
- - - - - - 0x0072AF 01:B29F: 06        .byte $06   ; 
- - - - - - 0x0072B0 01:B2A0: 06        .byte $06   ; 
- D 1 - - - 0x0072B1 01:B2A1: 07        .byte $07   ; 
- D 1 - - - 0x0072B2 01:B2A2: 07        .byte $07   ; 
- - - - - - 0x0072B3 01:B2A3: 06        .byte $06   ; 
- - - - - - 0x0072B4 01:B2A4: 06        .byte $06   ; 
- - - - - - 0x0072B5 01:B2A5: 06        .byte $06   ; 
- - - - - - 0x0072B6 01:B2A6: 06        .byte $06   ; 
- - - - - - 0x0072B7 01:B2A7: 06        .byte $06   ; 
- - - - - - 0x0072B8 01:B2A8: 06        .byte $06   ; 
- - - - - - 0x0072B9 01:B2A9: 06        .byte $06   ; 
- - - - - - 0x0072BA 01:B2AA: 06        .byte $06   ; 
- - - - - - 0x0072BB 01:B2AB: 06        .byte $06   ; 
- - - - - - 0x0072BC 01:B2AC: 07        .byte $07   ; 
- - - - - - 0x0072BD 01:B2AD: 07        .byte $07   ; 
- - - - - - 0x0072BE 01:B2AE: 06        .byte $06   ; 
- - - - - - 0x0072BF 01:B2AF: 06        .byte $06   ; 
- - - - - - 0x0072C0 01:B2B0: 06        .byte $06   ; 
- - - - - - 0x0072C1 01:B2B1: 06        .byte $06   ; 
- - - - - - 0x0072C2 01:B2B2: 06        .byte $06   ; 
- - - - - - 0x0072C3 01:B2B3: 06        .byte $06   ; 
- - - - - - 0x0072C4 01:B2B4: 06        .byte $06   ; 
- - - - - - 0x0072C5 01:B2B5: 06        .byte $06   ; 
- - - - - - 0x0072C6 01:B2B6: 06        .byte $06   ; 
- - - - - - 0x0072C7 01:B2B7: 07        .byte $07   ; 
- - - - - - 0x0072C8 01:B2B8: 07        .byte $07   ; 
- - - - - - 0x0072C9 01:B2B9: 06        .byte $06   ; 
- - - - - - 0x0072CA 01:B2BA: 06        .byte $06   ; 
- - - - - - 0x0072CB 01:B2BB: 06        .byte $06   ; 
- - - - - - 0x0072CC 01:B2BC: 06        .byte $06   ; 
- - - - - - 0x0072CD 01:B2BD: 06        .byte $06   ; 
- - - - - - 0x0072CE 01:B2BE: 06        .byte $06   ; 
- - - - - - 0x0072CF 01:B2BF: 06        .byte $06   ; 
- - - - - - 0x0072D0 01:B2C0: 06        .byte $06   ; 
- - - - - - 0x0072D1 01:B2C1: 06        .byte $06   ; 
- - - - - - 0x0072D2 01:B2C2: 07        .byte $07   ; 
- - - - - - 0x0072D3 01:B2C3: 07        .byte $07   ; 
- - - - - - 0x0072D4 01:B2C4: 06        .byte $06   ; 
- - - - - - 0x0072D5 01:B2C5: 06        .byte $06   ; 
- - - - - - 0x0072D6 01:B2C6: 06        .byte $06   ; 
- - - - - - 0x0072D7 01:B2C7: 06        .byte $06   ; 
- - - - - - 0x0072D8 01:B2C8: 06        .byte $06   ; 
- - - - - - 0x0072D9 01:B2C9: 06        .byte $06   ; 
- - - - - - 0x0072DA 01:B2CA: 06        .byte $06   ; 
- - - - - - 0x0072DB 01:B2CB: 06        .byte $06   ; 
- - - - - - 0x0072DC 01:B2CC: 06        .byte $06   ; 
- - - - - - 0x0072DD 01:B2CD: 07        .byte $07   ; 
- - - - - - 0x0072DE 01:B2CE: 07        .byte $07   ; 
- - - - - - 0x0072DF 01:B2CF: 06        .byte $06   ; 
- - - - - - 0x0072E0 01:B2D0: 06        .byte $06   ; 
- - - - - - 0x0072E1 01:B2D1: 06        .byte $06   ; 
- - - - - - 0x0072E2 01:B2D2: 06        .byte $06   ; 
- - - - - - 0x0072E3 01:B2D3: 06        .byte $06   ; 
- - - - - - 0x0072E4 01:B2D4: 06        .byte $06   ; 
- - - - - - 0x0072E5 01:B2D5: 06        .byte $06   ; 
- - - - - - 0x0072E6 01:B2D6: 06        .byte $06   ; 
- - - - - - 0x0072E7 01:B2D7: 06        .byte $06   ; 
- - - - - - 0x0072E8 01:B2D8: 07        .byte $07   ; 
- - - - - - 0x0072E9 01:B2D9: 07        .byte $07   ; 
- - - - - - 0x0072EA 01:B2DA: 06        .byte $06   ; 
- - - - - - 0x0072EB 01:B2DB: 06        .byte $06   ; 
- - - - - - 0x0072EC 01:B2DC: 06        .byte $06   ; 
- - - - - - 0x0072ED 01:B2DD: 06        .byte $06   ; 
- - - - - - 0x0072EE 01:B2DE: 06        .byte $06   ; 
- - - - - - 0x0072EF 01:B2DF: 06        .byte $06   ; 
- - - - - - 0x0072F0 01:B2E0: 06        .byte $06   ; 
- - - - - - 0x0072F1 01:B2E1: 06        .byte $06   ; 
- - - - - - 0x0072F2 01:B2E2: 06        .byte $06   ; 
- - - - - - 0x0072F3 01:B2E3: 07        .byte $07   ; 
- - - - - - 0x0072F4 01:B2E4: 07        .byte $07   ; 
- - - - - - 0x0072F5 01:B2E5: 06        .byte $06   ; 
- - - - - - 0x0072F6 01:B2E6: 06        .byte $06   ; 
- - - - - - 0x0072F7 01:B2E7: 06        .byte $06   ; 
- - - - - - 0x0072F8 01:B2E8: 06        .byte $06   ; 
- - - - - - 0x0072F9 01:B2E9: 06        .byte $06   ; 
- - - - - - 0x0072FA 01:B2EA: 06        .byte $06   ; 
- - - - - - 0x0072FB 01:B2EB: 06        .byte $06   ; 
- - - - - - 0x0072FC 01:B2EC: 06        .byte $06   ; 
- - - - - - 0x0072FD 01:B2ED: 06        .byte $06   ; 
- - - - - - 0x0072FE 01:B2EE: 07        .byte $07   ; 
- - - - - - 0x0072FF 01:B2EF: 07        .byte $07   ; 
- - - - - - 0x007300 01:B2F0: 06        .byte $06   ; 
- - - - - - 0x007301 01:B2F1: 06        .byte $06   ; 
- - - - - - 0x007302 01:B2F2: 06        .byte $06   ; 
- - - - - - 0x007303 01:B2F3: 06        .byte $06   ; 
- - - - - - 0x007304 01:B2F4: 06        .byte $06   ; 
- - - - - - 0x007305 01:B2F5: 06        .byte $06   ; 
- - - - - - 0x007306 01:B2F6: 06        .byte $06   ; 
- - - - - - 0x007307 01:B2F7: 06        .byte $06   ; 
- - - - - - 0x007308 01:B2F8: 06        .byte $06   ; 
- - - - - - 0x007309 01:B2F9: 07        .byte $07   ; 
- - - - - - 0x00730A 01:B2FA: 07        .byte $07   ; 
- - - - - - 0x00730B 01:B2FB: 06        .byte $06   ; 
- - - - - - 0x00730C 01:B2FC: 06        .byte $06   ; 
- - - - - - 0x00730D 01:B2FD: 06        .byte $06   ; 
- - - - - - 0x00730E 01:B2FE: 06        .byte $06   ; 
- - - - - - 0x00730F 01:B2FF: 06        .byte $06   ; 
- - - - - - 0x007310 01:B300: 06        .byte $06   ; 
- - - - - - 0x007311 01:B301: 06        .byte $06   ; 
- - - - - - 0x007312 01:B302: 06        .byte $06   ; 
- - - - - - 0x007313 01:B303: 06        .byte $06   ; 
- - - - - - 0x007314 01:B304: 07        .byte $07   ; 
- - - - - - 0x007315 01:B305: 07        .byte $07   ; 
- - - - - - 0x007316 01:B306: 06        .byte $06   ; 
- - - - - - 0x007317 01:B307: 06        .byte $06   ; 
- - - - - - 0x007318 01:B308: 06        .byte $06   ; 
- - - - - - 0x007319 01:B309: 06        .byte $06   ; 
- - - - - - 0x00731A 01:B30A: 06        .byte $06   ; 
- - - - - - 0x00731B 01:B30B: 06        .byte $06   ; 
- - - - - - 0x00731C 01:B30C: 06        .byte $06   ; 
- - - - - - 0x00731D 01:B30D: 06        .byte $06   ; 
- - - - - - 0x00731E 01:B30E: 06        .byte $06   ; 
- - - - - - 0x00731F 01:B30F: 07        .byte $07   ; 
- - - - - - 0x007320 01:B310: 07        .byte $07   ; 
- - - - - - 0x007321 01:B311: 06        .byte $06   ; 
- - - - - - 0x007322 01:B312: 06        .byte $06   ; 
- - - - - - 0x007323 01:B313: 06        .byte $06   ; 
- - - - - - 0x007324 01:B314: 06        .byte $06   ; 
- - - - - - 0x007325 01:B315: 06        .byte $06   ; 
- - - - - - 0x007326 01:B316: 06        .byte $06   ; 
- - - - - - 0x007327 01:B317: 06        .byte $06   ; 
- - - - - - 0x007328 01:B318: 06        .byte $06   ; 
- - - - - - 0x007329 01:B319: 06        .byte $06   ; 
- - - - - - 0x00732A 01:B31A: 07        .byte $07   ; 
- - - - - - 0x00732B 01:B31B: 07        .byte $07   ; 
- D 1 - - - 0x00732C 01:B31C: 06        .byte $06   ; 
- D 1 - - - 0x00732D 01:B31D: 06        .byte $06   ; 
- D 1 - - - 0x00732E 01:B31E: 06        .byte $06   ; 
- D 1 - - - 0x00732F 01:B31F: 06        .byte $06   ; 
- D 1 - - - 0x007330 01:B320: 06        .byte $06   ; 
- D 1 - - - 0x007331 01:B321: 06        .byte $06   ; 
- D 1 - - - 0x007332 01:B322: 06        .byte $06   ; 
- D 1 - - - 0x007333 01:B323: 06        .byte $06   ; 
- D 1 - - - 0x007334 01:B324: 06        .byte $06   ; 
- D 1 - - - 0x007335 01:B325: 07        .byte $07   ; 
- D 1 - - - 0x007336 01:B326: 07        .byte $07   ; 



tbl_B327:
- - - - - - 0x007337 01:B327: 14        .byte $14   ; 
tbl_B328:
- - - - - - 0x007338 01:B328: 01        .byte $01   ; 
- D 1 - - - 0x007339 01:B329: 16        .byte $16   ; 
- D 1 - - - 0x00733A 01:B32A: 01        .byte $01   ; 
- - - - - - 0x00733B 01:B32B: 18        .byte $18   ; 
- - - - - - 0x00733C 01:B32C: 01        .byte $01   ; 
- D 1 - - - 0x00733D 01:B32D: 1A        .byte $1A   ; 
- D 1 - - - 0x00733E 01:B32E: 01        .byte $01   ; 
- D 1 - - - 0x00733F 01:B32F: 1C        .byte $1C   ; 
- D 1 - - - 0x007340 01:B330: 01        .byte $01   ; 
- D 1 - - - 0x007341 01:B331: 20        .byte $20   ; 
- D 1 - - - 0x007342 01:B332: 01        .byte $01   ; 
- D 1 - - - 0x007343 01:B333: 24        .byte $24   ; 
- D 1 - - - 0x007344 01:B334: 01        .byte $01   ; 
- D 1 - - - 0x007345 01:B335: 26        .byte $26   ; 
- D 1 - - - 0x007346 01:B336: 01        .byte $01   ; 
- D 1 - - - 0x007347 01:B337: 28        .byte $28   ; 
- D 1 - - - 0x007348 01:B338: 01        .byte $01   ; 
- D 1 - - - 0x007349 01:B339: 30        .byte $30   ; 
- D 1 - - - 0x00734A 01:B33A: 01        .byte $01   ; 
- - - - - - 0x00734B 01:B33B: 90        .byte $90   ; 
- - - - - - 0x00734C 01:B33C: 01        .byte $01   ; 
- D 1 - - - 0x00734D 01:B33D: A0        .byte $A0   ; 
- D 1 - - - 0x00734E 01:B33E: 01        .byte $01   ; 
- D 1 - - - 0x00734F 01:B33F: B0        .byte $B0   ; 
- D 1 - - - 0x007350 01:B340: 01        .byte $01   ; 
- D 1 - - - 0x007351 01:B341: C0        .byte $C0   ; 
- D 1 - - - 0x007352 01:B342: 01        .byte $01   ; 
- D 1 - - - 0x007353 01:B343: D0        .byte $D0   ; 
- D 1 - - - 0x007354 01:B344: 01        .byte $01   ; 
- D 1 - - - 0x007355 01:B345: E0        .byte $E0   ; 
- D 1 - - - 0x007356 01:B346: 01        .byte $01   ; 



tbl_B347:
- - - - - - 0x007357 01:B347: 08        .byte $08   ; 
- - - - - - 0x007358 01:B348: 07        .byte $07   ; 
- - - - - - 0x007359 01:B349: 07        .byte $07   ; 
- D 1 - - - 0x00735A 01:B34A: 06        .byte $06   ; 
- D 1 - - - 0x00735B 01:B34B: 06        .byte $06   ; 
- D 1 - - - 0x00735C 01:B34C: 05        .byte $05   ; 
- D 1 - - - 0x00735D 01:B34D: 05        .byte $05   ; 
- D 1 - - - 0x00735E 01:B34E: 04        .byte $04   ; 
- D 1 - - - 0x00735F 01:B34F: 04        .byte $04   ; 
- - - - - - 0x007360 01:B350: 03        .byte $03   ; 
- - - - - - 0x007361 01:B351: 03        .byte $03   ; 
- D 1 - - - 0x007362 01:B352: 02        .byte $02   ; 
- D 1 - - - 0x007363 01:B353: 02        .byte $02   ; 
- - - - - - 0x007364 01:B354: 01        .byte $01   ; 
- D 1 - - - 0x007365 01:B355: 01        .byte $01   ; 
- D 1 - - - 0x007366 01:B356: 00        .byte $00   ; 



tbl_B357:
- D 1 - - - 0x007367 01:B357: 77 B3     .word _off005_B377_00
- D 1 - - - 0x007369 01:B359: 8A B3     .word _off005_B38A_01
- D 1 - - - 0x00736B 01:B35B: 9D B3     .word _off005_B39D_02
- D 1 - - - 0x00736D 01:B35D: B0 B3     .word _off005_B3B0_03
- D 1 - - - 0x00736F 01:B35F: C3 B3     .word _off005_B3C3_04
- D 1 - - - 0x007371 01:B361: D6 B3     .word _off005_B3D6_05
- D 1 - - - 0x007373 01:B363: E9 B3     .word _off005_B3E9_06
- D 1 - - - 0x007375 01:B365: FC B3     .word _off005_B3FC_07
- D 1 - - - 0x007377 01:B367: 0F B4     .word _off005_B40F_08
- D 1 - - - 0x007379 01:B369: 22 B4     .word _off005_B422_09
- D 1 - - - 0x00737B 01:B36B: 35 B4     .word _off005_B435_0A
- D 1 - - - 0x00737D 01:B36D: 48 B4     .word _off005_B448_0B
- D 1 - - - 0x00737F 01:B36F: 5B B4     .word _off005_B45B_0C
- D 1 - - - 0x007381 01:B371: 6E B4     .word _off005_B46E_0D
- D 1 - - - 0x007383 01:B373: 81 B4     .word _off005_B481_0E
- D 1 - - - 0x007385 01:B375: 94 B4     .word _off005_B494_0F



_off005_B377_00:
- D 1 - I - 0x007387 01:B377: 09        .byte $09   ; 
- D 1 - I - 0x007388 01:B378: 09        .byte $09   ; 
- D 1 - I - 0x007389 01:B379: 08        .byte $08   ; 
- D 1 - I - 0x00738A 01:B37A: 09        .byte $09   ; 
- D 1 - I - 0x00738B 01:B37B: 09        .byte $09   ; 
- D 1 - I - 0x00738C 01:B37C: 08        .byte $08   ; 
- D 1 - I - 0x00738D 01:B37D: 09        .byte $09   ; 
- D 1 - I - 0x00738E 01:B37E: 08        .byte $08   ; 
- D 1 - I - 0x00738F 01:B37F: 07        .byte $07   ; 
- D 1 - I - 0x007390 01:B380: 08        .byte $08   ; 
- D 1 - I - 0x007391 01:B381: 08        .byte $08   ; 
- - - - - - 0x007392 01:B382: 68        .byte $68   ; 
- - - - - - 0x007393 01:B383: 58        .byte $58   ; 
- - - - - - 0x007394 01:B384: 68        .byte $68   ; 
- - - - - - 0x007395 01:B385: 05        .byte $05   ; 
- - - - - - 0x007396 01:B386: 06        .byte $06   ; 
- - - - - - 0x007397 01:B387: 05        .byte $05   ; 
- D 1 - I - 0x007398 01:B388: 40        .byte $40   ; 
- D 1 - I - 0x007399 01:B389: 08        .byte $08   ; 



_off005_B38A_01:
- D 1 - I - 0x00739A 01:B38A: 09        .byte $09   ; 
- D 1 - I - 0x00739B 01:B38B: 08        .byte $08   ; 
- D 1 - I - 0x00739C 01:B38C: 08        .byte $08   ; 
- D 1 - I - 0x00739D 01:B38D: 09        .byte $09   ; 
- D 1 - I - 0x00739E 01:B38E: 08        .byte $08   ; 
- D 1 - I - 0x00739F 01:B38F: 08        .byte $08   ; 
- - - - - - 0x0073A0 01:B390: 08        .byte $08   ; 
- D 1 - I - 0x0073A1 01:B391: 07        .byte $07   ; 
- D 1 - I - 0x0073A2 01:B392: 07        .byte $07   ; 
- D 1 - I - 0x0073A3 01:B393: 08        .byte $08   ; 
- D 1 - I - 0x0073A4 01:B394: 08        .byte $08   ; 
- - - - - - 0x0073A5 01:B395: 68        .byte $68   ; 
- - - - - - 0x0073A6 01:B396: 6B        .byte $6B   ; 
- - - - - - 0x0073A7 01:B397: 60        .byte $60   ; 
- - - - - - 0x0073A8 01:B398: 07        .byte $07   ; 
- - - - - - 0x0073A9 01:B399: 06        .byte $06   ; 
- - - - - - 0x0073AA 01:B39A: 05        .byte $05   ; 
- D 1 - I - 0x0073AB 01:B39B: 3C        .byte $3C   ; 
- D 1 - I - 0x0073AC 01:B39C: 10        .byte $10   ; 



_off005_B39D_02:
- D 1 - I - 0x0073AD 01:B39D: 09        .byte $09   ; 
- D 1 - I - 0x0073AE 01:B39E: 07        .byte $07   ; 
- D 1 - I - 0x0073AF 01:B39F: 08        .byte $08   ; 
- - - - - - 0x0073B0 01:B3A0: 09        .byte $09   ; 
- - - - - - 0x0073B1 01:B3A1: 08        .byte $08   ; 
- - - - - - 0x0073B2 01:B3A2: 09        .byte $09   ; 
- - - - - - 0x0073B3 01:B3A3: 08        .byte $08   ; 
- D 1 - I - 0x0073B4 01:B3A4: 06        .byte $06   ; 
- D 1 - I - 0x0073B5 01:B3A5: 06        .byte $06   ; 
- D 1 - I - 0x0073B6 01:B3A6: 08        .byte $08   ; 
- D 1 - I - 0x0073B7 01:B3A7: 08        .byte $08   ; 
- - - - - - 0x0073B8 01:B3A8: 60        .byte $60   ; 
- - - - - - 0x0073B9 01:B3A9: 68        .byte $68   ; 
- - - - - - 0x0073BA 01:B3AA: 60        .byte $60   ; 
- - - - - - 0x0073BB 01:B3AB: 07        .byte $07   ; 
- - - - - - 0x0073BC 01:B3AC: 07        .byte $07   ; 
- - - - - - 0x0073BD 01:B3AD: 06        .byte $06   ; 
- D 1 - I - 0x0073BE 01:B3AE: 41        .byte $41   ; 
- D 1 - I - 0x0073BF 01:B3AF: 10        .byte $10   ; 



_off005_B3B0_03:
- D 1 - I - 0x0073C0 01:B3B0: 09        .byte $09   ; 
- D 1 - I - 0x0073C1 01:B3B1: 07        .byte $07   ; 
- D 1 - I - 0x0073C2 01:B3B2: 09        .byte $09   ; 
- D 1 - I - 0x0073C3 01:B3B3: 09        .byte $09   ; 
- D 1 - I - 0x0073C4 01:B3B4: 09        .byte $09   ; 
- D 1 - I - 0x0073C5 01:B3B5: 08        .byte $08   ; 
- D 1 - I - 0x0073C6 01:B3B6: 08        .byte $08   ; 
- D 1 - I - 0x0073C7 01:B3B7: 07        .byte $07   ; 
- D 1 - I - 0x0073C8 01:B3B8: 08        .byte $08   ; 
- D 1 - I - 0x0073C9 01:B3B9: 08        .byte $08   ; 
- D 1 - I - 0x0073CA 01:B3BA: 08        .byte $08   ; 
- - - - - - 0x0073CB 01:B3BB: 70        .byte $70   ; 
- - - - - - 0x0073CC 01:B3BC: 68        .byte $68   ; 
- - - - - - 0x0073CD 01:B3BD: 60        .byte $60   ; 
- - - - - - 0x0073CE 01:B3BE: 07        .byte $07   ; 
- - - - - - 0x0073CF 01:B3BF: 07        .byte $07   ; 
- - - - - - 0x0073D0 01:B3C0: 06        .byte $06   ; 
- D 1 - I - 0x0073D1 01:B3C1: 30        .byte $30   ; 
- D 1 - I - 0x0073D2 01:B3C2: 04        .byte $04   ; 



_off005_B3C3_04:
- D 1 - I - 0x0073D3 01:B3C3: 08        .byte $08   ; 
- D 1 - I - 0x0073D4 01:B3C4: 09        .byte $09   ; 
- D 1 - I - 0x0073D5 01:B3C5: 08        .byte $08   ; 
- D 1 - I - 0x0073D6 01:B3C6: 08        .byte $08   ; 
- D 1 - I - 0x0073D7 01:B3C7: 08        .byte $08   ; 
- D 1 - I - 0x0073D8 01:B3C8: 08        .byte $08   ; 
- D 1 - I - 0x0073D9 01:B3C9: 08        .byte $08   ; 
- D 1 - I - 0x0073DA 01:B3CA: 09        .byte $09   ; 
- D 1 - I - 0x0073DB 01:B3CB: 07        .byte $07   ; 
- D 1 - I - 0x0073DC 01:B3CC: 08        .byte $08   ; 
- D 1 - I - 0x0073DD 01:B3CD: 07        .byte $07   ; 
- - - - - - 0x0073DE 01:B3CE: 70        .byte $70   ; 
- - - - - - 0x0073DF 01:B3CF: 78        .byte $78   ; 
- - - - - - 0x0073E0 01:B3D0: 80        .byte $80   ; 
- - - - - - 0x0073E1 01:B3D1: 06        .byte $06   ; 
- - - - - - 0x0073E2 01:B3D2: 07        .byte $07   ; 
- - - - - - 0x0073E3 01:B3D3: 05        .byte $05   ; 
- D 1 - I - 0x0073E4 01:B3D4: 20        .byte $20   ; 
- D 1 - I - 0x0073E5 01:B3D5: 04        .byte $04   ; 



_off005_B3D6_05:
- - - - - - 0x0073E6 01:B3D6: 07        .byte $07   ; 
- - - - - - 0x0073E7 01:B3D7: 08        .byte $08   ; 
- - - - - - 0x0073E8 01:B3D8: 07        .byte $07   ; 
- D 1 - I - 0x0073E9 01:B3D9: 08        .byte $08   ; 
- D 1 - I - 0x0073EA 01:B3DA: 09        .byte $09   ; 
- D 1 - I - 0x0073EB 01:B3DB: 08        .byte $08   ; 
- - - - - - 0x0073EC 01:B3DC: 07        .byte $07   ; 
- D 1 - I - 0x0073ED 01:B3DD: 07        .byte $07   ; 
- D 1 - I - 0x0073EE 01:B3DE: 06        .byte $06   ; 
- D 1 - I - 0x0073EF 01:B3DF: 08        .byte $08   ; 
- D 1 - I - 0x0073F0 01:B3E0: 07        .byte $07   ; 
- - - - - - 0x0073F1 01:B3E1: 90        .byte $90   ; 
- - - - - - 0x0073F2 01:B3E2: 90        .byte $90   ; 
- - - - - - 0x0073F3 01:B3E3: 60        .byte $60   ; 
- - - - - - 0x0073F4 01:B3E4: 07        .byte $07   ; 
- - - - - - 0x0073F5 01:B3E5: 07        .byte $07   ; 
- - - - - - 0x0073F6 01:B3E6: 05        .byte $05   ; 
- D 1 - I - 0x0073F7 01:B3E7: 3C        .byte $3C   ; 
- D 1 - I - 0x0073F8 01:B3E8: 08        .byte $08   ; 



_off005_B3E9_06:
- D 1 - I - 0x0073F9 01:B3E9: 09        .byte $09   ; 
- D 1 - I - 0x0073FA 01:B3EA: 07        .byte $07   ; 
- D 1 - I - 0x0073FB 01:B3EB: 06        .byte $06   ; 
- - - - - - 0x0073FC 01:B3EC: 08        .byte $08   ; 
- - - - - - 0x0073FD 01:B3ED: 08        .byte $08   ; 
- - - - - - 0x0073FE 01:B3EE: 07        .byte $07   ; 
- - - - - - 0x0073FF 01:B3EF: 07        .byte $07   ; 
- D 1 - I - 0x007400 01:B3F0: 06        .byte $06   ; 
- D 1 - I - 0x007401 01:B3F1: 06        .byte $06   ; 
- D 1 - I - 0x007402 01:B3F2: 08        .byte $08   ; 
- D 1 - I - 0x007403 01:B3F3: 06        .byte $06   ; 
- - - - - - 0x007404 01:B3F4: A0        .byte $A0   ; 
- - - - - - 0x007405 01:B3F5: 90        .byte $90   ; 
- - - - - - 0x007406 01:B3F6: A0        .byte $A0   ; 
- - - - - - 0x007407 01:B3F7: 08        .byte $08   ; 
- - - - - - 0x007408 01:B3F8: 06        .byte $06   ; 
- - - - - - 0x007409 01:B3F9: 06        .byte $06   ; 
- D 1 - I - 0x00740A 01:B3FA: 28        .byte $28   ; 
- D 1 - I - 0x00740B 01:B3FB: 02        .byte $02   ; 



_off005_B3FC_07:
- - - - - - 0x00740C 01:B3FC: 07        .byte $07   ; 
- - - - - - 0x00740D 01:B3FD: 06        .byte $06   ; 
- - - - - - 0x00740E 01:B3FE: 06        .byte $06   ; 
- D 1 - I - 0x00740F 01:B3FF: 08        .byte $08   ; 
- D 1 - I - 0x007410 01:B400: 07        .byte $07   ; 
- D 1 - I - 0x007411 01:B401: 07        .byte $07   ; 
- - - - - - 0x007412 01:B402: 08        .byte $08   ; 
- D 1 - I - 0x007413 01:B403: 06        .byte $06   ; 
- D 1 - I - 0x007414 01:B404: 05        .byte $05   ; 
- D 1 - I - 0x007415 01:B405: 01        .byte $01   ; 
- D 1 - I - 0x007416 01:B406: 06        .byte $06   ; 
- - - - - - 0x007417 01:B407: B0        .byte $B0   ; 
- - - - - - 0x007418 01:B408: B0        .byte $B0   ; 
- - - - - - 0x007419 01:B409: A0        .byte $A0   ; 
- - - - - - 0x00741A 01:B40A: 15        .byte $15   ; 
- - - - - - 0x00741B 01:B40B: 15        .byte $15   ; 
- - - - - - 0x00741C 01:B40C: 10        .byte $10   ; 
- D 1 - I - 0x00741D 01:B40D: 32        .byte $32   ; 
- D 1 - I - 0x00741E 01:B40E: 04        .byte $04   ; 



_off005_B40F_08:
- D 1 - I - 0x00741F 01:B40F: 07        .byte $07   ; 
- D 1 - I - 0x007420 01:B410: 07        .byte $07   ; 
- D 1 - I - 0x007421 01:B411: 05        .byte $05   ; 
- - - - - - 0x007422 01:B412: 08        .byte $08   ; 
- - - - - - 0x007423 01:B413: 07        .byte $07   ; 
- - - - - - 0x007424 01:B414: 06        .byte $06   ; 
- - - - - - 0x007425 01:B415: 06        .byte $06   ; 
- D 1 - I - 0x007426 01:B416: 05        .byte $05   ; 
- D 1 - I - 0x007427 01:B417: 04        .byte $04   ; 
- D 1 - I - 0x007428 01:B418: 07        .byte $07   ; 
- D 1 - I - 0x007429 01:B419: 06        .byte $06   ; 
- - - - - - 0x00742A 01:B41A: A0        .byte $A0   ; 
- - - - - - 0x00742B 01:B41B: A0        .byte $A0   ; 
- - - - - - 0x00742C 01:B41C: 90        .byte $90   ; 
- - - - - - 0x00742D 01:B41D: 17        .byte $17   ; 
- - - - - - 0x00742E 01:B41E: 17        .byte $17   ; 
- - - - - - 0x00742F 01:B41F: 15        .byte $15   ; 
- D 1 - I - 0x007430 01:B420: 46        .byte $46   ; 
- D 1 - I - 0x007431 01:B421: 08        .byte $08   ; 



_off005_B422_09:
- D 1 - I - 0x007432 01:B422: 06        .byte $06   ; 
- D 1 - I - 0x007433 01:B423: 06        .byte $06   ; 
- D 1 - I - 0x007434 01:B424: 06        .byte $06   ; 
- D 1 - I - 0x007435 01:B425: 07        .byte $07   ; 
- D 1 - I - 0x007436 01:B426: 07        .byte $07   ; 
- D 1 - I - 0x007437 01:B427: 07        .byte $07   ; 
- D 1 - I - 0x007438 01:B428: 05        .byte $05   ; 
- D 1 - I - 0x007439 01:B429: 05        .byte $05   ; 
- D 1 - I - 0x00743A 01:B42A: 05        .byte $05   ; 
- D 1 - I - 0x00743B 01:B42B: 07        .byte $07   ; 
- D 1 - I - 0x00743C 01:B42C: 05        .byte $05   ; 
- - - - - - 0x00743D 01:B42D: B0        .byte $B0   ; 
- - - - - - 0x00743E 01:B42E: B0        .byte $B0   ; 
- - - - - - 0x00743F 01:B42F: A0        .byte $A0   ; 
- - - - - - 0x007440 01:B430: 13        .byte $13   ; 
- - - - - - 0x007441 01:B431: 15        .byte $15   ; 
- - - - - - 0x007442 01:B432: 12        .byte $12   ; 
- D 1 - I - 0x007443 01:B433: 28        .byte $28   ; 
- D 1 - I - 0x007444 01:B434: 10        .byte $10   ; 



_off005_B435_0A:
- D 1 - I - 0x007445 01:B435: 06        .byte $06   ; 
- D 1 - I - 0x007446 01:B436: 06        .byte $06   ; 
- D 1 - I - 0x007447 01:B437: 05        .byte $05   ; 
- D 1 - I - 0x007448 01:B438: 08        .byte $08   ; 
- D 1 - I - 0x007449 01:B439: 07        .byte $07   ; 
- D 1 - I - 0x00744A 01:B43A: 06        .byte $06   ; 
- D 1 - I - 0x00744B 01:B43B: 06        .byte $06   ; 
- D 1 - I - 0x00744C 01:B43C: 05        .byte $05   ; 
- D 1 - I - 0x00744D 01:B43D: 04        .byte $04   ; 
- D 1 - I - 0x00744E 01:B43E: 07        .byte $07   ; 
- D 1 - I - 0x00744F 01:B43F: 04        .byte $04   ; 
- - - - - - 0x007450 01:B440: A0        .byte $A0   ; 
- - - - - - 0x007451 01:B441: A0        .byte $A0   ; 
- - - - - - 0x007452 01:B442: 98        .byte $98   ; 
- - - - - - 0x007453 01:B443: 24        .byte $24   ; 
- - - - - - 0x007454 01:B444: 23        .byte $23   ; 
- - - - - - 0x007455 01:B445: 23        .byte $23   ; 
- D 1 - I - 0x007456 01:B446: 20        .byte $20   ; 
- D 1 - I - 0x007457 01:B447: 10        .byte $10   ; 



_off005_B448_0B:
- D 1 - I - 0x007458 01:B448: 06        .byte $06   ; 
- D 1 - I - 0x007459 01:B449: 05        .byte $05   ; 
- D 1 - I - 0x00745A 01:B44A: 04        .byte $04   ; 
- D 1 - I - 0x00745B 01:B44B: 07        .byte $07   ; 
- D 1 - I - 0x00745C 01:B44C: 06        .byte $06   ; 
- D 1 - I - 0x00745D 01:B44D: 06        .byte $06   ; 
- D 1 - I - 0x00745E 01:B44E: 05        .byte $05   ; 
- D 1 - I - 0x00745F 01:B44F: 04        .byte $04   ; 
- D 1 - I - 0x007460 01:B450: 04        .byte $04   ; 
- D 1 - I - 0x007461 01:B451: 06        .byte $06   ; 
- D 1 - I - 0x007462 01:B452: 04        .byte $04   ; 
- - - - - - 0x007463 01:B453: A0        .byte $A0   ; 
- - - - - - 0x007464 01:B454: A2        .byte $A2   ; 
- - - - - - 0x007465 01:B455: A6        .byte $A6   ; 
- - - - - - 0x007466 01:B456: 24        .byte $24   ; 
- - - - - - 0x007467 01:B457: 23        .byte $23   ; 
- - - - - - 0x007468 01:B458: 23        .byte $23   ; 
- D 1 - I - 0x007469 01:B459: 20        .byte $20   ; 
- D 1 - I - 0x00746A 01:B45A: 10        .byte $10   ; 



_off005_B45B_0C:
- D 1 - I - 0x00746B 01:B45B: 06        .byte $06   ; 
- D 1 - I - 0x00746C 01:B45C: 07        .byte $07   ; 
- D 1 - I - 0x00746D 01:B45D: 05        .byte $05   ; 
- D 1 - I - 0x00746E 01:B45E: 07        .byte $07   ; 
- D 1 - I - 0x00746F 01:B45F: 06        .byte $06   ; 
- D 1 - I - 0x007470 01:B460: 06        .byte $06   ; 
- D 1 - I - 0x007471 01:B461: 06        .byte $06   ; 
- D 1 - I - 0x007472 01:B462: 05        .byte $05   ; 
- D 1 - I - 0x007473 01:B463: 06        .byte $06   ; 
- D 1 - I - 0x007474 01:B464: 06        .byte $06   ; 
- D 1 - I - 0x007475 01:B465: 06        .byte $06   ; 
- - - - - - 0x007476 01:B466: 94        .byte $94   ; 
- - - - - - 0x007477 01:B467: 98        .byte $98   ; 
- - - - - - 0x007478 01:B468: 9B        .byte $9B   ; 
- - - - - - 0x007479 01:B469: 32        .byte $32   ; 
- - - - - - 0x00747A 01:B46A: 35        .byte $35   ; 
- - - - - - 0x00747B 01:B46B: 33        .byte $33   ; 
- D 1 - I - 0x00747C 01:B46C: 2A        .byte $2A   ; 
- D 1 - I - 0x00747D 01:B46D: 10        .byte $10   ; 



_off005_B46E_0D:
- D 1 - I - 0x00747E 01:B46E: 05        .byte $05   ; 
- D 1 - I - 0x00747F 01:B46F: 04        .byte $04   ; 
- D 1 - I - 0x007480 01:B470: 05        .byte $05   ; 
- D 1 - I - 0x007481 01:B471: 06        .byte $06   ; 
- D 1 - I - 0x007482 01:B472: 06        .byte $06   ; 
- D 1 - I - 0x007483 01:B473: 06        .byte $06   ; 
- D 1 - I - 0x007484 01:B474: 04        .byte $04   ; 
- D 1 - I - 0x007485 01:B475: 04        .byte $04   ; 
- D 1 - I - 0x007486 01:B476: 04        .byte $04   ; 
- D 1 - I - 0x007487 01:B477: 05        .byte $05   ; 
- D 1 - I - 0x007488 01:B478: 05        .byte $05   ; 
- - - - - - 0x007489 01:B479: 90        .byte $90   ; 
- - - - - - 0x00748A 01:B47A: 92        .byte $92   ; 
- - - - - - 0x00748B 01:B47B: 94        .byte $94   ; 
- - - - - - 0x00748C 01:B47C: 34        .byte $34   ; 
- - - - - - 0x00748D 01:B47D: 33        .byte $33   ; 
- - - - - - 0x00748E 01:B47E: 33        .byte $33   ; 
- D 1 - I - 0x00748F 01:B47F: 20        .byte $20   ; 
- D 1 - I - 0x007490 01:B480: 08        .byte $08   ; 



_off005_B481_0E:
- D 1 - I - 0x007491 01:B481: 05        .byte $05   ; 
- D 1 - I - 0x007492 01:B482: 04        .byte $04   ; 
- D 1 - I - 0x007493 01:B483: 04        .byte $04   ; 
- D 1 - I - 0x007494 01:B484: 06        .byte $06   ; 
- D 1 - I - 0x007495 01:B485: 06        .byte $06   ; 
- D 1 - I - 0x007496 01:B486: 06        .byte $06   ; 
- D 1 - I - 0x007497 01:B487: 04        .byte $04   ; 
- D 1 - I - 0x007498 01:B488: 04        .byte $04   ; 
- D 1 - I - 0x007499 01:B489: 03        .byte $03   ; 
- D 1 - I - 0x00749A 01:B48A: 05        .byte $05   ; 
- D 1 - I - 0x00749B 01:B48B: 04        .byte $04   ; 
- - - - - - 0x00749C 01:B48C: 82        .byte $82   ; 
- - - - - - 0x00749D 01:B48D: 84        .byte $84   ; 
- - - - - - 0x00749E 01:B48E: 86        .byte $86   ; 
- - - - - - 0x00749F 01:B48F: 42        .byte $42   ; 
- - - - - - 0x0074A0 01:B490: 42        .byte $42   ; 
- - - - - - 0x0074A1 01:B491: 41        .byte $41   ; 
- D 1 - I - 0x0074A2 01:B492: 20        .byte $20   ; 
- D 1 - I - 0x0074A3 01:B493: 08        .byte $08   ; 



_off005_B494_0F:
- - - - - - 0x0074A4 01:B494: 03        .byte $03   ; 
- - - - - - 0x0074A5 01:B495: 03        .byte $03   ; 
- - - - - - 0x0074A6 01:B496: 03        .byte $03   ; 
- D 1 - I - 0x0074A7 01:B497: 06        .byte $06   ; 
- D 1 - I - 0x0074A8 01:B498: 06        .byte $06   ; 
- D 1 - I - 0x0074A9 01:B499: 05        .byte $05   ; 
- - - - - - 0x0074AA 01:B49A: 03        .byte $03   ; 
- D 1 - I - 0x0074AB 01:B49B: 02        .byte $02   ; 
- D 1 - I - 0x0074AC 01:B49C: 02        .byte $02   ; 
- D 1 - I - 0x0074AD 01:B49D: 04        .byte $04   ; 
- D 1 - I - 0x0074AE 01:B49E: 03        .byte $03   ; 
- - - - - - 0x0074AF 01:B49F: 80        .byte $80   ; 
- - - - - - 0x0074B0 01:B4A0: 84        .byte $84   ; 
- - - - - - 0x0074B1 01:B4A1: 88        .byte $88   ; 
- - - - - - 0x0074B2 01:B4A2: 42        .byte $42   ; 
- - - - - - 0x0074B3 01:B4A3: 41        .byte $41   ; 
- - - - - - 0x0074B4 01:B4A4: 41        .byte $41   ; 
- D 1 - I - 0x0074B5 01:B4A5: 10        .byte $10   ; 
- D 1 - I - 0x0074B6 01:B4A6: 08        .byte $08   ; 



tbl_B4A7:
- - - - - - 0x0074B7 01:B4A7: 3C        .byte $3C   ; 
- - - - - - 0x0074B8 01:B4A8: 24        .byte $24   ; 
- - - - - - 0x0074B9 01:B4A9: 23        .byte $23   ; 
- - - - - - 0x0074BA 01:B4AA: 22        .byte $22   ; 
- - - - - - 0x0074BB 01:B4AB: 38        .byte $38   ; 
- - - - - - 0x0074BC 01:B4AC: 3B        .byte $3B   ; 
- - - - - - 0x0074BD 01:B4AD: 47        .byte $47   ; 
- - - - - - 0x0074BE 01:B4AE: 3A        .byte $3A   ; 
- - - - - - 0x0074BF 01:B4AF: 3D        .byte $3D   ; 
- - - - - - 0x0074C0 01:B4B0: 39        .byte $39   ; 
- - - - - - 0x0074C1 01:B4B1: 3C        .byte $3C   ; 
- - - - - - 0x0074C2 01:B4B2: 3B        .byte $3B   ; 
- - - - - - 0x0074C3 01:B4B3: 3A        .byte $3A   ; 
- - - - - - 0x0074C4 01:B4B4: 39        .byte $39   ; 
- - - - - - 0x0074C5 01:B4B5: 38        .byte $38   ; 
- - - - - - 0x0074C6 01:B4B6: 18        .byte $18   ; 
- - - - - - 0x0074C7 01:B4B7: 17        .byte $17   ; 
- - - - - - 0x0074C8 01:B4B8: 16        .byte $16   ; 
- - - - - - 0x0074C9 01:B4B9: 15        .byte $15   ; 
- - - - - - 0x0074CA 01:B4BA: 14        .byte $14   ; 
- - - - - - 0x0074CB 01:B4BB: 13        .byte $13   ; 
- - - - - - 0x0074CC 01:B4BC: 12        .byte $12   ; 
- - - - - - 0x0074CD 01:B4BD: 11        .byte $11   ; 
- - - - - - 0x0074CE 01:B4BE: 10        .byte $10   ; 
- - - - - - 0x0074CF 01:B4BF: 19        .byte $19   ; 
- - - - - - 0x0074D0 01:B4C0: 0E        .byte $0E   ; 
- - - - - - 0x0074D1 01:B4C1: 0D        .byte $0D   ; 
- - - - - - 0x0074D2 01:B4C2: 0C        .byte $0C   ; 
- - - - - - 0x0074D3 01:B4C3: 0B        .byte $0B   ; 
- - - - - - 0x0074D4 01:B4C4: 0A        .byte $0A   ; 
- - - - - - 0x0074D5 01:B4C5: 09        .byte $09   ; 
- - - - - - 0x0074D6 01:B4C6: 4F        .byte $4F   ; 
- - - - - - 0x0074D7 01:B4C7: 4E        .byte $4E   ; 
- - - - - - 0x0074D8 01:B4C8: 4D        .byte $4D   ; 
- - - - - - 0x0074D9 01:B4C9: 05        .byte $05   ; 
- - - - - - 0x0074DA 01:B4CA: 04        .byte $04   ; 
- - - - - - 0x0074DB 01:B4CB: 03        .byte $03   ; 
- - - - - - 0x0074DC 01:B4CC: 02        .byte $02   ; 
- - - - - - 0x0074DD 01:B4CD: 01        .byte $01   ; 
- - - - - - 0x0074DE 01:B4CE: 00        .byte $00   ; 
- - - - - - 0x0074DF 01:B4CF: 30        .byte $30   ; 
- - - - - - 0x0074E0 01:B4D0: 34        .byte $34   ; 
- - - - - - 0x0074E1 01:B4D1: 33        .byte $33   ; 
- - - - - - 0x0074E2 01:B4D2: 32        .byte $32   ; 
- - - - - - 0x0074E3 01:B4D3: 2F        .byte $2F   ; 
- - - - - - 0x0074E4 01:B4D4: 31        .byte $31   ; 
- - - - - - 0x0074E5 01:B4D5: 30        .byte $30   ; 
- - - - - - 0x0074E6 01:B4D6: 30        .byte $30   ; 
- - - - - - 0x0074E7 01:B4D7: 2F        .byte $2F   ; 
- - - - - - 0x0074E8 01:B4D8: 2E        .byte $2E   ; 
- - - - - - 0x0074E9 01:B4D9: 1D        .byte $1D   ; 
- - - - - - 0x0074EA 01:B4DA: 1C        .byte $1C   ; 
- - - - - - 0x0074EB 01:B4DB: 1B        .byte $1B   ; 
- - - - - - 0x0074EC 01:B4DC: 1A        .byte $1A   ; 
- - - - - - 0x0074ED 01:B4DD: 19        .byte $19   ; 
- - - - - - 0x0074EE 01:B4DE: 31        .byte $31   ; 
- - - - - - 0x0074EF 01:B4DF: 30        .byte $30   ; 
- - - - - - 0x0074F0 01:B4E0: 16        .byte $16   ; 
- - - - - - 0x0074F1 01:B4E1: 2F        .byte $2F   ; 
- - - - - - 0x0074F2 01:B4E2: 2E        .byte $2E   ; 
- - - - - - 0x0074F3 01:B4E3: 13        .byte $13   ; 
- - - - - - 0x0074F4 01:B4E4: 12        .byte $12   ; 
- - - - - - 0x0074F5 01:B4E5: 11        .byte $11   ; 
- - - - - - 0x0074F6 01:B4E6: 10        .byte $10   ; 
- - - - - - 0x0074F7 01:B4E7: 14        .byte $14   ; 
- - - - - - 0x0074F8 01:B4E8: 2D        .byte $2D   ; 
- - - - - - 0x0074F9 01:B4E9: 2C        .byte $2C   ; 
- - - - - - 0x0074FA 01:B4EA: 2B        .byte $2B   ; 
- - - - - - 0x0074FB 01:B4EB: 2A        .byte $2A   ; 
- - - - - - 0x0074FC 01:B4EC: 29        .byte $29   ; 
- - - - - - 0x0074FD 01:B4ED: 04        .byte $04   ; 
- - - - - - 0x0074FE 01:B4EE: 28        .byte $28   ; 
- - - - - - 0x0074FF 01:B4EF: 27        .byte $27   ; 
- - - - - - 0x007500 01:B4F0: 26        .byte $26   ; 
- - - - - - 0x007501 01:B4F1: 00        .byte $00   ; 
- - - - - - 0x007502 01:B4F2: 04        .byte $04   ; 
- - - - - - 0x007503 01:B4F3: 03        .byte $03   ; 
- - - - - - 0x007504 01:B4F4: 02        .byte $02   ; 
- - - - - - 0x007505 01:B4F5: 01        .byte $01   ; 
- - - - - - 0x007506 01:B4F6: 00        .byte $00   ; 
- - - - - - 0x007507 01:B4F7: 25        .byte $25   ; 
- - - - - - 0x007508 01:B4F8: 24        .byte $24   ; 
- - - - - - 0x007509 01:B4F9: 23        .byte $23   ; 
- - - - - - 0x00750A 01:B4FA: 22        .byte $22   ; 
- - - - - - 0x00750B 01:B4FB: 21        .byte $21   ; 
- - - - - - 0x00750C 01:B4FC: 20        .byte $20   ; 
- - - - - - 0x00750D 01:B4FD: 1F        .byte $1F   ; 
- - - - - - 0x00750E 01:B4FE: 1E        .byte $1E   ; 
- - - - - - 0x00750F 01:B4FF: 1D        .byte $1D   ; 
- - - - - - 0x007510 01:B500: 1C        .byte $1C   ; 
- - - - - - 0x007511 01:B501: 1B        .byte $1B   ; 
- - - - - - 0x007512 01:B502: 1A        .byte $1A   ; 
- - - - - - 0x007513 01:B503: 16        .byte $16   ; 
- - - - - - 0x007514 01:B504: 15        .byte $15   ; 
- - - - - - 0x007515 01:B505: 19        .byte $19   ; 
- - - - - - 0x007516 01:B506: 18        .byte $18   ; 
- - - - - - 0x007517 01:B507: 17        .byte $17   ; 
- - - - - - 0x007518 01:B508: 16        .byte $16   ; 
- - - - - - 0x007519 01:B509: 15        .byte $15   ; 
- - - - - - 0x00751A 01:B50A: 2E        .byte $2E   ; 
- - - - - - 0x00751B 01:B50B: 13        .byte $13   ; 
- - - - - - 0x00751C 01:B50C: 12        .byte $12   ; 
- - - - - - 0x00751D 01:B50D: 11        .byte $11   ; 
- - - - - - 0x00751E 01:B50E: 10        .byte $10   ; 
- - - - - - 0x00751F 01:B50F: 14        .byte $14   ; 
- - - - - - 0x007520 01:B510: 0E        .byte $0E   ; 
- - - - - - 0x007521 01:B511: 0D        .byte $0D   ; 
- - - - - - 0x007522 01:B512: 0C        .byte $0C   ; 
- - - - - - 0x007523 01:B513: 0B        .byte $0B   ; 
- - - - - - 0x007524 01:B514: 0A        .byte $0A   ; 
- - - - - - 0x007525 01:B515: 09        .byte $09   ; 
- - - - - - 0x007526 01:B516: 08        .byte $08   ; 
- - - - - - 0x007527 01:B517: 07        .byte $07   ; 
- - - - - - 0x007528 01:B518: 06        .byte $06   ; 
- - - - - - 0x007529 01:B519: 05        .byte $05   ; 
- - - - - - 0x00752A 01:B51A: 04        .byte $04   ; 
- - - - - - 0x00752B 01:B51B: 03        .byte $03   ; 
- - - - - - 0x00752C 01:B51C: 02        .byte $02   ; 
- - - - - - 0x00752D 01:B51D: 01        .byte $01   ; 
- - - - - - 0x00752E 01:B51E: 00        .byte $00   ; 
- - - - - - 0x00752F 01:B51F: 30        .byte $30   ; 
- - - - - - 0x007530 01:B520: 34        .byte $34   ; 
- - - - - - 0x007531 01:B521: 33        .byte $33   ; 
- - - - - - 0x007532 01:B522: 32        .byte $32   ; 
- - - - - - 0x007533 01:B523: 2F        .byte $2F   ; 
- - - - - - 0x007534 01:B524: 31        .byte $31   ; 
- - - - - - 0x007535 01:B525: 30        .byte $30   ; 
- - - - - - 0x007536 01:B526: 33        .byte $33   ; 
- - - - - - 0x007537 01:B527: 2F        .byte $2F   ; 
- - - - - - 0x007538 01:B528: 2E        .byte $2E   ; 
- - - - - - 0x007539 01:B529: 1D        .byte $1D   ; 
- - - - - - 0x00753A 01:B52A: 1C        .byte $1C   ; 
- - - - - - 0x00753B 01:B52B: 1B        .byte $1B   ; 
- - - - - - 0x00753C 01:B52C: 1A        .byte $1A   ; 
- - - - - - 0x00753D 01:B52D: 19        .byte $19   ; 
- - - - - - 0x00753E 01:B52E: 32        .byte $32   ; 
- - - - - - 0x00753F 01:B52F: 30        .byte $30   ; 
- - - - - - 0x007540 01:B530: 16        .byte $16   ; 
- - - - - - 0x007541 01:B531: 2F        .byte $2F   ; 
- - - - - - 0x007542 01:B532: 2E        .byte $2E   ; 
- - - - - - 0x007543 01:B533: 3C        .byte $3C   ; 
- - - - - - 0x007544 01:B534: 3C        .byte $3C   ; 
- - - - - - 0x007545 01:B535: 11        .byte $11   ; 
- - - - - - 0x007546 01:B536: 38        .byte $38   ; 
- - - - - - 0x007547 01:B537: 38        .byte $38   ; 
- - - - - - 0x007548 01:B538: 2D        .byte $2D   ; 
- - - - - - 0x007549 01:B539: 2C        .byte $2C   ; 
- - - - - - 0x00754A 01:B53A: 2B        .byte $2B   ; 
- - - - - - 0x00754B 01:B53B: 2A        .byte $2A   ; 
- - - - - - 0x00754C 01:B53C: 29        .byte $29   ; 
- - - - - - 0x00754D 01:B53D: 09        .byte $09   ; 
- - - - - - 0x00754E 01:B53E: 28        .byte $28   ; 
- - - - - - 0x00754F 01:B53F: 27        .byte $27   ; 
- - - - - - 0x007550 01:B540: 26        .byte $26   ; 
- - - - - - 0x007551 01:B541: 05        .byte $05   ; 
- - - - - - 0x007552 01:B542: 04        .byte $04   ; 
- - - - - - 0x007553 01:B543: 03        .byte $03   ; 
- - - - - - 0x007554 01:B544: 02        .byte $02   ; 
- - - - - - 0x007555 01:B545: 01        .byte $01   ; 
- - - - - - 0x007556 01:B546: 00        .byte $00   ; 
- - - - - - 0x007557 01:B547: 30        .byte $30   ; 
- - - - - - 0x007558 01:B548: 34        .byte $34   ; 
- D 1 - I - 0x007559 01:B549: 33        .byte $33   ; 
- - - - - - 0x00755A 01:B54A: 32        .byte $32   ; 
- - - - - - 0x00755B 01:B54B: 2F        .byte $2F   ; 
- - - - - - 0x00755C 01:B54C: 31        .byte $31   ; 
- - - - - - 0x00755D 01:B54D: 30        .byte $30   ; 
- D 1 - I - 0x00755E 01:B54E: 33        .byte $33   ; 
- - - - - - 0x00755F 01:B54F: 2F        .byte $2F   ; 
- - - - - - 0x007560 01:B550: 2E        .byte $2E   ; 
- - - - - - 0x007561 01:B551: 25        .byte $25   ; 
- D 1 - I - 0x007562 01:B552: 25        .byte $25   ; 
- D 1 - I - 0x007563 01:B553: 3A        .byte $3A   ; 
- D 1 - I - 0x007564 01:B554: 3D        .byte $3D   ; 
- D 1 - I - 0x007565 01:B555: 3D        .byte $3D   ; 
- D 1 - I - 0x007566 01:B556: 18        .byte $18   ; 
- D 1 - I - 0x007567 01:B557: 12        .byte $12   ; 
- D 1 - I - 0x007568 01:B558: 11        .byte $11   ; 
- D 1 - I - 0x007569 01:B559: 10        .byte $10   ; 
- D 1 - I - 0x00756A 01:B55A: 14        .byte $14   ; 
- D 1 - I - 0x00756B 01:B55B: 32        .byte $32   ; 
- D 1 - I - 0x00756C 01:B55C: 31        .byte $31   ; 
- D 1 - I - 0x00756D 01:B55D: 30        .byte $30   ; 
- D 1 - I - 0x00756E 01:B55E: 2F        .byte $2F   ; 
- - - - - - 0x00756F 01:B55F: 2E        .byte $2E   ; 
- D 1 - I - 0x007570 01:B560: 2D        .byte $2D   ; 
- D 1 - I - 0x007571 01:B561: 2C        .byte $2C   ; 
- D 1 - I - 0x007572 01:B562: 4C        .byte $4C   ; 
- D 1 - I - 0x007573 01:B563: 2A        .byte $2A   ; 
- D 1 - I - 0x007574 01:B564: 29        .byte $29   ; 
- - - - - - 0x007575 01:B565: 04        .byte $04   ; 
- D 1 - I - 0x007576 01:B566: 28        .byte $28   ; 
- D 1 - I - 0x007577 01:B567: 27        .byte $27   ; 
- - - - - - 0x007578 01:B568: 26        .byte $26   ; 
- - - - - - 0x007579 01:B569: 00        .byte $00   ; 
- - - - - - 0x00757A 01:B56A: 04        .byte $04   ; 
- D 1 - I - 0x00757B 01:B56B: 03        .byte $03   ; 
- D 1 - I - 0x00757C 01:B56C: 02        .byte $02   ; 
- - - - - - 0x00757D 01:B56D: 01        .byte $01   ; 
- - - - - - 0x00757E 01:B56E: 00        .byte $00   ; 
- - - - - - 0x00757F 01:B56F: 3C        .byte $3C   ; 
- - - - - - 0x007580 01:B570: 24        .byte $24   ; 
- - - - - - 0x007581 01:B571: 23        .byte $23   ; 
- - - - - - 0x007582 01:B572: 22        .byte $22   ; 
- - - - - - 0x007583 01:B573: 38        .byte $38   ; 
- - - - - - 0x007584 01:B574: 0F        .byte $0F   ; 
- - - - - - 0x007585 01:B575: 18        .byte $18   ; 
- - - - - - 0x007586 01:B576: 16        .byte $16   ; 
- - - - - - 0x007587 01:B577: 1D        .byte $1D   ; 
- - - - - - 0x007588 01:B578: 1C        .byte $1C   ; 
- - - - - - 0x007589 01:B579: 30        .byte $30   ; 
- - - - - - 0x00758A 01:B57A: 31        .byte $31   ; 
- - - - - - 0x00758B 01:B57B: 32        .byte $32   ; 
- - - - - - 0x00758C 01:B57C: 2F        .byte $2F   ; 
- - - - - - 0x00758D 01:B57D: 2E        .byte $2E   ; 
- - - - - - 0x00758E 01:B57E: 3C        .byte $3C   ; 
- - - - - - 0x00758F 01:B57F: 3B        .byte $3B   ; 
- - - - - - 0x007590 01:B580: 3A        .byte $3A   ; 
- - - - - - 0x007591 01:B581: 39        .byte $39   ; 
- - - - - - 0x007592 01:B582: 38        .byte $38   ; 
- - - - - - 0x007593 01:B583: 32        .byte $32   ; 
- - - - - - 0x007594 01:B584: 31        .byte $31   ; 
- - - - - - 0x007595 01:B585: 4B        .byte $4B   ; 
- - - - - - 0x007596 01:B586: 2F        .byte $2F   ; 
- - - - - - 0x007597 01:B587: 2E        .byte $2E   ; 
- - - - - - 0x007598 01:B588: 0E        .byte $0E   ; 
- - - - - - 0x007599 01:B589: 2C        .byte $2C   ; 
- - - - - - 0x00759A 01:B58A: 4B        .byte $4B   ; 
- - - - - - 0x00759B 01:B58B: 2A        .byte $2A   ; 
- - - - - - 0x00759C 01:B58C: 0A        .byte $0A   ; 
- - - - - - 0x00759D 01:B58D: 04        .byte $04   ; 
- - - - - - 0x00759E 01:B58E: 37        .byte $37   ; 
- - - - - - 0x00759F 01:B58F: 36        .byte $36   ; 
- - - - - - 0x0075A0 01:B590: 35        .byte $35   ; 
- - - - - - 0x0075A1 01:B591: 00        .byte $00   ; 
- - - - - - 0x0075A2 01:B592: 04        .byte $04   ; 
- - - - - - 0x0075A3 01:B593: 3F        .byte $3F   ; 
- - - - - - 0x0075A4 01:B594: 02        .byte $02   ; 
- - - - - - 0x0075A5 01:B595: 3E        .byte $3E   ; 
- - - - - - 0x0075A6 01:B596: 00        .byte $00   ; 
- - - - - - 0x0075A7 01:B597: 30        .byte $30   ; 
- - - - - - 0x0075A8 01:B598: 34        .byte $34   ; 
- - - - - - 0x0075A9 01:B599: 33        .byte $33   ; 
- - - - - - 0x0075AA 01:B59A: 32        .byte $32   ; 
- - - - - - 0x0075AB 01:B59B: 2F        .byte $2F   ; 
- - - - - - 0x0075AC 01:B59C: 31        .byte $31   ; 
- - - - - - 0x0075AD 01:B59D: 30        .byte $30   ; 
- - - - - - 0x0075AE 01:B59E: 33        .byte $33   ; 
- - - - - - 0x0075AF 01:B59F: 2F        .byte $2F   ; 
- - - - - - 0x0075B0 01:B5A0: 2E        .byte $2E   ; 
- - - - - - 0x0075B1 01:B5A1: 3B        .byte $3B   ; 
- - - - - - 0x0075B2 01:B5A2: 3D        .byte $3D   ; 
- - - - - - 0x0075B3 01:B5A3: 3A        .byte $3A   ; 
- - - - - - 0x0075B4 01:B5A4: 3D        .byte $3D   ; 
- - - - - - 0x0075B5 01:B5A5: 38        .byte $38   ; 
- - - - - - 0x0075B6 01:B5A6: 18        .byte $18   ; 
- - - - - - 0x0075B7 01:B5A7: 3B        .byte $3B   ; 
- - - - - - 0x0075B8 01:B5A8: 3A        .byte $3A   ; 
- - - - - - 0x0075B9 01:B5A9: 39        .byte $39   ; 
- - - - - - 0x0075BA 01:B5AA: 14        .byte $14   ; 
- - - - - - 0x0075BB 01:B5AB: 13        .byte $13   ; 
- - - - - - 0x0075BC 01:B5AC: 3C        .byte $3C   ; 
- - - - - - 0x0075BD 01:B5AD: 11        .byte $11   ; 
- - - - - - 0x0075BE 01:B5AE: 38        .byte $38   ; 
- - - - - - 0x0075BF 01:B5AF: 2F        .byte $2F   ; 
- - - - - - 0x0075C0 01:B5B0: 2D        .byte $2D   ; 
- - - - - - 0x0075C1 01:B5B1: 2C        .byte $2C   ; 
- - - - - - 0x0075C2 01:B5B2: 2B        .byte $2B   ; 
- - - - - - 0x0075C3 01:B5B3: 2A        .byte $2A   ; 
- - - - - - 0x0075C4 01:B5B4: 29        .byte $29   ; 
- - - - - - 0x0075C5 01:B5B5: 04        .byte $04   ; 
- - - - - - 0x0075C6 01:B5B6: 28        .byte $28   ; 
- - - - - - 0x0075C7 01:B5B7: 27        .byte $27   ; 
- - - - - - 0x0075C8 01:B5B8: 26        .byte $26   ; 
- - - - - - 0x0075C9 01:B5B9: 00        .byte $00   ; 
- - - - - - 0x0075CA 01:B5BA: 04        .byte $04   ; 
- - - - - - 0x0075CB 01:B5BB: 03        .byte $03   ; 
- - - - - - 0x0075CC 01:B5BC: 02        .byte $02   ; 
- - - - - - 0x0075CD 01:B5BD: 01        .byte $01   ; 
- - - - - - 0x0075CE 01:B5BE: 00        .byte $00   ; 
- - - - - - 0x0075CF 01:B5BF: 30        .byte $30   ; 
- - - - - - 0x0075D0 01:B5C0: 34        .byte $34   ; 
- - - - - - 0x0075D1 01:B5C1: 33        .byte $33   ; 
- - - - - - 0x0075D2 01:B5C2: 32        .byte $32   ; 
- - - - - - 0x0075D3 01:B5C3: 2F        .byte $2F   ; 
- - - - - - 0x0075D4 01:B5C4: 31        .byte $31   ; 
- - - - - - 0x0075D5 01:B5C5: 30        .byte $30   ; 
- - - - - - 0x0075D6 01:B5C6: 33        .byte $33   ; 
- - - - - - 0x0075D7 01:B5C7: 2F        .byte $2F   ; 
- - - - - - 0x0075D8 01:B5C8: 2E        .byte $2E   ; 
- - - - - - 0x0075D9 01:B5C9: 1D        .byte $1D   ; 
- - - - - - 0x0075DA 01:B5CA: 1C        .byte $1C   ; 
- - - - - - 0x0075DB 01:B5CB: 1B        .byte $1B   ; 
- - - - - - 0x0075DC 01:B5CC: 1A        .byte $1A   ; 
- - - - - - 0x0075DD 01:B5CD: 19        .byte $19   ; 
- - - - - - 0x0075DE 01:B5CE: 18        .byte $18   ; 
- - - - - - 0x0075DF 01:B5CF: 17        .byte $17   ; 
- - - - - - 0x0075E0 01:B5D0: 16        .byte $16   ; 
- - - - - - 0x0075E1 01:B5D1: 15        .byte $15   ; 
- - - - - - 0x0075E2 01:B5D2: 14        .byte $14   ; 
- - - - - - 0x0075E3 01:B5D3: 30        .byte $30   ; 
- - - - - - 0x0075E4 01:B5D4: 34        .byte $34   ; 
- - - - - - 0x0075E5 01:B5D5: 33        .byte $33   ; 
- - - - - - 0x0075E6 01:B5D6: 2F        .byte $2F   ; 
- - - - - - 0x0075E7 01:B5D7: 2E        .byte $2E   ; 
- - - - - - 0x0075E8 01:B5D8: 0E        .byte $0E   ; 
- - - - - - 0x0075E9 01:B5D9: 37        .byte $37   ; 
- - - - - - 0x0075EA 01:B5DA: 32        .byte $32   ; 
- - - - - - 0x0075EB 01:B5DB: 35        .byte $35   ; 
- - - - - - 0x0075EC 01:B5DC: 0A        .byte $0A   ; 
- - - - - - 0x0075ED 01:B5DD: 04        .byte $04   ; 
- - - - - - 0x0075EE 01:B5DE: 2C        .byte $2C   ; 
- - - - - - 0x0075EF 01:B5DF: 36        .byte $36   ; 
- - - - - - 0x0075F0 01:B5E0: 2A        .byte $2A   ; 
- - - - - - 0x0075F1 01:B5E1: 00        .byte $00   ; 
- - - - - - 0x0075F2 01:B5E2: 04        .byte $04   ; 
- - - - - - 0x0075F3 01:B5E3: 3F        .byte $3F   ; 
- - - - - - 0x0075F4 01:B5E4: 02        .byte $02   ; 
- - - - - - 0x0075F5 01:B5E5: 3E        .byte $3E   ; 
- - - - - - 0x0075F6 01:B5E6: 00        .byte $00   ; 
- - - - - - 0x0075F7 01:B5E7: 30        .byte $30   ; 
- - - - - - 0x0075F8 01:B5E8: 34        .byte $34   ; 
- - - - - - 0x0075F9 01:B5E9: 33        .byte $33   ; 
- - - - - - 0x0075FA 01:B5EA: 32        .byte $32   ; 
- - - - - - 0x0075FB 01:B5EB: 2F        .byte $2F   ; 
- - - - - - 0x0075FC 01:B5EC: 31        .byte $31   ; 
- - - - - - 0x0075FD 01:B5ED: 30        .byte $30   ; 
- - - - - - 0x0075FE 01:B5EE: 33        .byte $33   ; 
- - - - - - 0x0075FF 01:B5EF: 2F        .byte $2F   ; 
- - - - - - 0x007600 01:B5F0: 2E        .byte $2E   ; 
- - - - - - 0x007601 01:B5F1: 31        .byte $31   ; 
- - - - - - 0x007602 01:B5F2: 30        .byte $30   ; 
- - - - - - 0x007603 01:B5F3: 33        .byte $33   ; 
- - - - - - 0x007604 01:B5F4: 2F        .byte $2F   ; 
- - - - - - 0x007605 01:B5F5: 2E        .byte $2E   ; 
- - - - - - 0x007606 01:B5F6: 18        .byte $18   ; 
- - - - - - 0x007607 01:B5F7: 17        .byte $17   ; 
- - - - - - 0x007608 01:B5F8: 16        .byte $16   ; 
- - - - - - 0x007609 01:B5F9: 15        .byte $15   ; 
- - - - - - 0x00760A 01:B5FA: 14        .byte $14   ; 
- - - - - - 0x00760B 01:B5FB: 13        .byte $13   ; 
- - - - - - 0x00760C 01:B5FC: 12        .byte $12   ; 
- - - - - - 0x00760D 01:B5FD: 11        .byte $11   ; 
- - - - - - 0x00760E 01:B5FE: 10        .byte $10   ; 
- - - - - - 0x00760F 01:B5FF: 2F        .byte $2F   ; 
- - - - - - 0x007610 01:B600: 0E        .byte $0E   ; 
- - - - - - 0x007611 01:B601: 0D        .byte $0D   ; 
- - - - - - 0x007612 01:B602: 0C        .byte $0C   ; 
- - - - - - 0x007613 01:B603: 0B        .byte $0B   ; 
- - - - - - 0x007614 01:B604: 0A        .byte $0A   ; 
- - - - - - 0x007615 01:B605: 09        .byte $09   ; 
- - - - - - 0x007616 01:B606: 08        .byte $08   ; 
- - - - - - 0x007617 01:B607: 07        .byte $07   ; 
- - - - - - 0x007618 01:B608: 06        .byte $06   ; 
- - - - - - 0x007619 01:B609: 05        .byte $05   ; 
- - - - - - 0x00761A 01:B60A: 04        .byte $04   ; 
- - - - - - 0x00761B 01:B60B: 03        .byte $03   ; 
- - - - - - 0x00761C 01:B60C: 02        .byte $02   ; 
- - - - - - 0x00761D 01:B60D: 01        .byte $01   ; 
- - - - - - 0x00761E 01:B60E: 00        .byte $00   ; 
- - - - - - 0x00761F 01:B60F: 30        .byte $30   ; 
- - - - - - 0x007620 01:B610: 34        .byte $34   ; 
- D 1 - I - 0x007621 01:B611: 33        .byte $33   ; 
- - - - - - 0x007622 01:B612: 32        .byte $32   ; 
- - - - - - 0x007623 01:B613: 2F        .byte $2F   ; 
- - - - - - 0x007624 01:B614: 31        .byte $31   ; 
- D 1 - I - 0x007625 01:B615: 30        .byte $30   ; 
- D 1 - I - 0x007626 01:B616: 33        .byte $33   ; 
- D 1 - I - 0x007627 01:B617: 2F        .byte $2F   ; 
- - - - - - 0x007628 01:B618: 2E        .byte $2E   ; 
- D 1 - I - 0x007629 01:B619: 20        .byte $20   ; 
- D 1 - I - 0x00762A 01:B61A: 1F        .byte $1F   ; 
- D 1 - I - 0x00762B 01:B61B: 16        .byte $16   ; 
- D 1 - I - 0x00762C 01:B61C: 1C        .byte $1C   ; 
- - - - - - 0x00762D 01:B61D: 21        .byte $21   ; 
- D 1 - I - 0x00762E 01:B61E: 18        .byte $18   ; 
- D 1 - I - 0x00762F 01:B61F: 18        .byte $18   ; 
- D 1 - I - 0x007630 01:B620: 15        .byte $15   ; 
- D 1 - I - 0x007631 01:B621: 14        .byte $14   ; 
- - - - - - 0x007632 01:B622: 14        .byte $14   ; 
- D 1 - I - 0x007633 01:B623: 13        .byte $13   ; 
- D 1 - I - 0x007634 01:B624: 12        .byte $12   ; 
- D 1 - I - 0x007635 01:B625: 4C        .byte $4C   ; 
- D 1 - I - 0x007636 01:B626: 10        .byte $10   ; 
- D 1 - I - 0x007637 01:B627: 2F        .byte $2F   ; 
- D 1 - I - 0x007638 01:B628: 0E        .byte $0E   ; 
- D 1 - I - 0x007639 01:B629: 0D        .byte $0D   ; 
- D 1 - I - 0x00763A 01:B62A: 4B        .byte $4B   ; 
- D 1 - I - 0x00763B 01:B62B: 0B        .byte $0B   ; 
- - - - - - 0x00763C 01:B62C: 0A        .byte $0A   ; 
- - - - - - 0x00763D 01:B62D: 09        .byte $09   ; 
- D 1 - I - 0x00763E 01:B62E: 08        .byte $08   ; 
- D 1 - I - 0x00763F 01:B62F: 07        .byte $07   ; 
- D 1 - I - 0x007640 01:B630: 06        .byte $06   ; 
- D 1 - I - 0x007641 01:B631: 05        .byte $05   ; 
- D 1 - I - 0x007642 01:B632: 04        .byte $04   ; 
- - - - - - 0x007643 01:B633: 03        .byte $03   ; 
- - - - - - 0x007644 01:B634: 02        .byte $02   ; 
- D 1 - I - 0x007645 01:B635: 01        .byte $01   ; 
- - - - - - 0x007646 01:B636: 00        .byte $00   ; 
- - - - - - 0x007647 01:B637: 30        .byte $30   ; 
- D 1 - I - 0x007648 01:B638: 32        .byte $32   ; 
- D 1 - I - 0x007649 01:B639: 33        .byte $33   ; 
- - - - - - 0x00764A 01:B63A: 32        .byte $32   ; 
- - - - - - 0x00764B 01:B63B: 2F        .byte $2F   ; 
- - - - - - 0x00764C 01:B63C: 24        .byte $24   ; 
- D 1 - I - 0x00764D 01:B63D: 18        .byte $18   ; 
- D 1 - I - 0x00764E 01:B63E: 1F        .byte $1F   ; 
- D 1 - I - 0x00764F 01:B63F: 17        .byte $17   ; 
- D 1 - I - 0x007650 01:B640: 1C        .byte $1C   ; 
- D 1 - I - 0x007651 01:B641: 3C        .byte $3C   ; 
- D 1 - I - 0x007652 01:B642: 3B        .byte $3B   ; 
- D 1 - I - 0x007653 01:B643: 4B        .byte $4B   ; 
- D 1 - I - 0x007654 01:B644: 39        .byte $39   ; 
- D 1 - I - 0x007655 01:B645: 38        .byte $38   ; 
- - - - - - 0x007656 01:B646: 18        .byte $18   ; 
- D 1 - I - 0x007657 01:B647: 16        .byte $16   ; 
- D 1 - I - 0x007658 01:B648: 15        .byte $15   ; 
- D 1 - I - 0x007659 01:B649: 15        .byte $15   ; 
- D 1 - I - 0x00765A 01:B64A: 14        .byte $14   ; 
- D 1 - I - 0x00765B 01:B64B: 3C        .byte $3C   ; 
- D 1 - I - 0x00765C 01:B64C: 3B        .byte $3B   ; 
- D 1 - I - 0x00765D 01:B64D: 4C        .byte $4C   ; 
- D 1 - I - 0x00765E 01:B64E: 39        .byte $39   ; 
- D 1 - I - 0x00765F 01:B64F: 38        .byte $38   ; 
- - - - - - 0x007660 01:B650: 31        .byte $31   ; 
- D 1 - I - 0x007661 01:B651: 30        .byte $30   ; 
- D 1 - I - 0x007662 01:B652: 0C        .byte $0C   ; 
- D 1 - I - 0x007663 01:B653: 2F        .byte $2F   ; 
- D 1 - I - 0x007664 01:B654: 2E        .byte $2E   ; 
- D 1 - I - 0x007665 01:B655: 04        .byte $04   ; 
- D 1 - I - 0x007666 01:B656: 2C        .byte $2C   ; 
- D 1 - I - 0x007667 01:B657: 2B        .byte $2B   ; 
- - - - - - 0x007668 01:B658: 2A        .byte $2A   ; 
- - - - - - 0x007669 01:B659: 00        .byte $00   ; 
- - - - - - 0x00766A 01:B65A: 04        .byte $04   ; 
- D 1 - I - 0x00766B 01:B65B: 03        .byte $03   ; 
- D 1 - I - 0x00766C 01:B65C: 02        .byte $02   ; 
- D 1 - I - 0x00766D 01:B65D: 01        .byte $01   ; 
- - - - - - 0x00766E 01:B65E: 00        .byte $00   ; 
- - - - - - 0x00766F 01:B65F: 30        .byte $30   ; 
- - - - - - 0x007670 01:B660: 34        .byte $34   ; 
- - - - - - 0x007671 01:B661: 33        .byte $33   ; 
- - - - - - 0x007672 01:B662: 32        .byte $32   ; 
- - - - - - 0x007673 01:B663: 2F        .byte $2F   ; 
- - - - - - 0x007674 01:B664: 31        .byte $31   ; 
- - - - - - 0x007675 01:B665: 30        .byte $30   ; 
- - - - - - 0x007676 01:B666: 33        .byte $33   ; 
- - - - - - 0x007677 01:B667: 2F        .byte $2F   ; 
- - - - - - 0x007678 01:B668: 2E        .byte $2E   ; 
- - - - - - 0x007679 01:B669: 3B        .byte $3B   ; 
- - - - - - 0x00767A 01:B66A: 3D        .byte $3D   ; 
- - - - - - 0x00767B 01:B66B: 3A        .byte $3A   ; 
- - - - - - 0x00767C 01:B66C: 3D        .byte $3D   ; 
- - - - - - 0x00767D 01:B66D: 38        .byte $38   ; 
- - - - - - 0x00767E 01:B66E: 18        .byte $18   ; 
- - - - - - 0x00767F 01:B66F: 3B        .byte $3B   ; 
- - - - - - 0x007680 01:B670: 3A        .byte $3A   ; 
- - - - - - 0x007681 01:B671: 39        .byte $39   ; 
- - - - - - 0x007682 01:B672: 14        .byte $14   ; 
- - - - - - 0x007683 01:B673: 3C        .byte $3C   ; 
- - - - - - 0x007684 01:B674: 3C        .byte $3C   ; 
- - - - - - 0x007685 01:B675: 11        .byte $11   ; 
- - - - - - 0x007686 01:B676: 38        .byte $38   ; 
- - - - - - 0x007687 01:B677: 38        .byte $38   ; 
- - - - - - 0x007688 01:B678: 43        .byte $43   ; 
- - - - - - 0x007689 01:B679: 42        .byte $42   ; 
- - - - - - 0x00768A 01:B67A: 0C        .byte $0C   ; 
- - - - - - 0x00768B 01:B67B: 41        .byte $41   ; 
- - - - - - 0x00768C 01:B67C: 40        .byte $40   ; 
- - - - - - 0x00768D 01:B67D: 04        .byte $04   ; 
- - - - - - 0x00768E 01:B67E: 37        .byte $37   ; 
- - - - - - 0x00768F 01:B67F: 36        .byte $36   ; 
- - - - - - 0x007690 01:B680: 35        .byte $35   ; 
- - - - - - 0x007691 01:B681: 00        .byte $00   ; 
- - - - - - 0x007692 01:B682: 04        .byte $04   ; 
- - - - - - 0x007693 01:B683: 3F        .byte $3F   ; 
- - - - - - 0x007694 01:B684: 02        .byte $02   ; 
- - - - - - 0x007695 01:B685: 3E        .byte $3E   ; 
- - - - - - 0x007696 01:B686: 00        .byte $00   ; 
- - - - - - 0x007697 01:B687: 30        .byte $30   ; 
- - - - - - 0x007698 01:B688: 34        .byte $34   ; 
- - - - - - 0x007699 01:B689: 33        .byte $33   ; 
- - - - - - 0x00769A 01:B68A: 32        .byte $32   ; 
- - - - - - 0x00769B 01:B68B: 2F        .byte $2F   ; 
- - - - - - 0x00769C 01:B68C: 48        .byte $48   ; 
- - - - - - 0x00769D 01:B68D: 45        .byte $45   ; 
- - - - - - 0x00769E 01:B68E: 4A        .byte $4A   ; 
- - - - - - 0x00769F 01:B68F: 44        .byte $44   ; 
- - - - - - 0x0076A0 01:B690: 47        .byte $47   ; 
- - - - - - 0x0076A1 01:B691: 49        .byte $49   ; 
- - - - - - 0x0076A2 01:B692: 48        .byte $48   ; 
- - - - - - 0x0076A3 01:B693: 3A        .byte $3A   ; 
- - - - - - 0x0076A4 01:B694: 47        .byte $47   ; 
- - - - - - 0x0076A5 01:B695: 46        .byte $46   ; 
- - - - - - 0x0076A6 01:B696: 45        .byte $45   ; 
- - - - - - 0x0076A7 01:B697: 3A        .byte $3A   ; 
- - - - - - 0x0076A8 01:B698: 3A        .byte $3A   ; 
- - - - - - 0x0076A9 01:B699: 3A        .byte $3A   ; 
- - - - - - 0x0076AA 01:B69A: 44        .byte $44   ; 
- - - - - - 0x0076AB 01:B69B: 3C        .byte $3C   ; 
- - - - - - 0x0076AC 01:B69C: 3C        .byte $3C   ; 
- - - - - - 0x0076AD 01:B69D: 4B        .byte $4B   ; 
- - - - - - 0x0076AE 01:B69E: 38        .byte $38   ; 
- - - - - - 0x0076AF 01:B69F: 38        .byte $38   ; 
- - - - - - 0x0076B0 01:B6A0: 43        .byte $43   ; 
- - - - - - 0x0076B1 01:B6A1: 42        .byte $42   ; 
- - - - - - 0x0076B2 01:B6A2: 4B        .byte $4B   ; 
- - - - - - 0x0076B3 01:B6A3: 41        .byte $41   ; 
- - - - - - 0x0076B4 01:B6A4: 40        .byte $40   ; 
- - - - - - 0x0076B5 01:B6A5: 09        .byte $09   ; 
- - - - - - 0x0076B6 01:B6A6: 37        .byte $37   ; 
- - - - - - 0x0076B7 01:B6A7: 36        .byte $36   ; 
- - - - - - 0x0076B8 01:B6A8: 35        .byte $35   ; 
- - - - - - 0x0076B9 01:B6A9: 05        .byte $05   ; 
- - - - - - 0x0076BA 01:B6AA: 04        .byte $04   ; 
- - - - - - 0x0076BB 01:B6AB: 3F        .byte $3F   ; 
- - - - - - 0x0076BC 01:B6AC: 02        .byte $02   ; 
- - - - - - 0x0076BD 01:B6AD: 3E        .byte $3E   ; 
- - - - - - 0x0076BE 01:B6AE: 00        .byte $00   ; 
- - - - - - 0x0076BF 01:B6AF: 30        .byte $30   ; 
- - - - - - 0x0076C0 01:B6B0: 34        .byte $34   ; 
- - - - - - 0x0076C1 01:B6B1: 33        .byte $33   ; 
- - - - - - 0x0076C2 01:B6B2: 32        .byte $32   ; 
- - - - - - 0x0076C3 01:B6B3: 2F        .byte $2F   ; 
- - - - - - 0x0076C4 01:B6B4: 0F        .byte $0F   ; 
- - - - - - 0x0076C5 01:B6B5: 45        .byte $45   ; 
- - - - - - 0x0076C6 01:B6B6: 4A        .byte $4A   ; 
- - - - - - 0x0076C7 01:B6B7: 44        .byte $44   ; 
- - - - - - 0x0076C8 01:B6B8: 2E        .byte $2E   ; 
- - - - - - 0x0076C9 01:B6B9: 3C        .byte $3C   ; 
- - - - - - 0x0076CA 01:B6BA: 3B        .byte $3B   ; 
- - - - - - 0x0076CB 01:B6BB: 3A        .byte $3A   ; 
- - - - - - 0x0076CC 01:B6BC: 39        .byte $39   ; 
- - - - - - 0x0076CD 01:B6BD: 38        .byte $38   ; 
- - - - - - 0x0076CE 01:B6BE: 45        .byte $45   ; 
- - - - - - 0x0076CF 01:B6BF: 3A        .byte $3A   ; 
- - - - - - 0x0076D0 01:B6C0: 4B        .byte $4B   ; 
- - - - - - 0x0076D1 01:B6C1: 3A        .byte $3A   ; 
- - - - - - 0x0076D2 01:B6C2: 44        .byte $44   ; 
- - - - - - 0x0076D3 01:B6C3: 3C        .byte $3C   ; 
- - - - - - 0x0076D4 01:B6C4: 12        .byte $12   ; 
- - - - - - 0x0076D5 01:B6C5: 11        .byte $11   ; 
- - - - - - 0x0076D6 01:B6C6: 10        .byte $10   ; 
- - - - - - 0x0076D7 01:B6C7: 3D        .byte $3D   ; 
- - - - - - 0x0076D8 01:B6C8: 43        .byte $43   ; 
- - - - - - 0x0076D9 01:B6C9: 42        .byte $42   ; 
- - - - - - 0x0076DA 01:B6CA: 0C        .byte $0C   ; 
- - - - - - 0x0076DB 01:B6CB: 41        .byte $41   ; 
- - - - - - 0x0076DC 01:B6CC: 40        .byte $40   ; 
- - - - - - 0x0076DD 01:B6CD: 05        .byte $05   ; 
- - - - - - 0x0076DE 01:B6CE: 37        .byte $37   ; 
- - - - - - 0x0076DF 01:B6CF: 36        .byte $36   ; 
- - - - - - 0x0076E0 01:B6D0: 35        .byte $35   ; 
- - - - - - 0x0076E1 01:B6D1: 00        .byte $00   ; 
- - - - - - 0x0076E2 01:B6D2: 04        .byte $04   ; 
- - - - - - 0x0076E3 01:B6D3: 3F        .byte $3F   ; 
- - - - - - 0x0076E4 01:B6D4: 02        .byte $02   ; 
- - - - - - 0x0076E5 01:B6D5: 3E        .byte $3E   ; 
- - - - - - 0x0076E6 01:B6D6: 00        .byte $00   ; 
- - - - - - 0x0076E7 01:B6D7: 30        .byte $30   ; 
- - - - - - 0x0076E8 01:B6D8: 34        .byte $34   ; 
- - - - - - 0x0076E9 01:B6D9: 33        .byte $33   ; 
- - - - - - 0x0076EA 01:B6DA: 32        .byte $32   ; 
- - - - - - 0x0076EB 01:B6DB: 2F        .byte $2F   ; 
- - - - - - 0x0076EC 01:B6DC: 31        .byte $31   ; 
- - - - - - 0x0076ED 01:B6DD: 30        .byte $30   ; 
- - - - - - 0x0076EE 01:B6DE: 4A        .byte $4A   ; 
- - - - - - 0x0076EF 01:B6DF: 2F        .byte $2F   ; 
- - - - - - 0x0076F0 01:B6E0: 2E        .byte $2E   ; 
- - - - - - 0x0076F1 01:B6E1: 31        .byte $31   ; 
- - - - - - 0x0076F2 01:B6E2: 30        .byte $30   ; 
- - - - - - 0x0076F3 01:B6E3: 4A        .byte $4A   ; 
- - - - - - 0x0076F4 01:B6E4: 2F        .byte $2F   ; 
- - - - - - 0x0076F5 01:B6E5: 2E        .byte $2E   ; 
- - - - - - 0x0076F6 01:B6E6: 18        .byte $18   ; 
- - - - - - 0x0076F7 01:B6E7: 17        .byte $17   ; 
- - - - - - 0x0076F8 01:B6E8: 16        .byte $16   ; 
- - - - - - 0x0076F9 01:B6E9: 15        .byte $15   ; 
- - - - - - 0x0076FA 01:B6EA: 14        .byte $14   ; 
- - - - - - 0x0076FB 01:B6EB: 3C        .byte $3C   ; 
- - - - - - 0x0076FC 01:B6EC: 12        .byte $12   ; 
- - - - - - 0x0076FD 01:B6ED: 11        .byte $11   ; 
- - - - - - 0x0076FE 01:B6EE: 10        .byte $10   ; 
- - - - - - 0x0076FF 01:B6EF: 38        .byte $38   ; 
- - - - - - 0x007700 01:B6F0: 0E        .byte $0E   ; 
- - - - - - 0x007701 01:B6F1: 42        .byte $42   ; 
- - - - - - 0x007702 01:B6F2: 36        .byte $36   ; 
- - - - - - 0x007703 01:B6F3: 41        .byte $41   ; 
- - - - - - 0x007704 01:B6F4: 0A        .byte $0A   ; 
- - - - - - 0x007705 01:B6F5: 09        .byte $09   ; 
- - - - - - 0x007706 01:B6F6: 08        .byte $08   ; 
- - - - - - 0x007707 01:B6F7: 0C        .byte $0C   ; 
- - - - - - 0x007708 01:B6F8: 06        .byte $06   ; 
- - - - - - 0x007709 01:B6F9: 05        .byte $05   ; 
- - - - - - 0x00770A 01:B6FA: 04        .byte $04   ; 
- - - - - - 0x00770B 01:B6FB: 03        .byte $03   ; 
- - - - - - 0x00770C 01:B6FC: 02        .byte $02   ; 
- - - - - - 0x00770D 01:B6FD: 01        .byte $01   ; 
- - - - - - 0x00770E 01:B6FE: 00        .byte $00   ; 
- - - - - - 0x00770F 01:B6FF: 30        .byte $30   ; 
- - - - - - 0x007710 01:B700: 34        .byte $34   ; 
- - - - - - 0x007711 01:B701: 33        .byte $33   ; 
- - - - - - 0x007712 01:B702: 32        .byte $32   ; 
- - - - - - 0x007713 01:B703: 2F        .byte $2F   ; 
- - - - - - 0x007714 01:B704: 31        .byte $31   ; 
- - - - - - 0x007715 01:B705: 30        .byte $30   ; 
- - - - - - 0x007716 01:B706: 33        .byte $33   ; 
- - - - - - 0x007717 01:B707: 2F        .byte $2F   ; 
- - - - - - 0x007718 01:B708: 2E        .byte $2E   ; 
- - - - - - 0x007719 01:B709: 31        .byte $31   ; 
- - - - - - 0x00771A 01:B70A: 30        .byte $30   ; 
- - - - - - 0x00771B 01:B70B: 1B        .byte $1B   ; 
- - - - - - 0x00771C 01:B70C: 2F        .byte $2F   ; 
- - - - - - 0x00771D 01:B70D: 2E        .byte $2E   ; 
- - - - - - 0x00771E 01:B70E: 18        .byte $18   ; 
- - - - - - 0x00771F 01:B70F: 17        .byte $17   ; 
- - - - - - 0x007720 01:B710: 16        .byte $16   ; 
- - - - - - 0x007721 01:B711: 15        .byte $15   ; 
- - - - - - 0x007722 01:B712: 14        .byte $14   ; 
- - - - - - 0x007723 01:B713: 13        .byte $13   ; 
- - - - - - 0x007724 01:B714: 12        .byte $12   ; 
- - - - - - 0x007725 01:B715: 11        .byte $11   ; 
- - - - - - 0x007726 01:B716: 10        .byte $10   ; 
- - - - - - 0x007727 01:B717: 30        .byte $30   ; 
- - - - - - 0x007728 01:B718: 0E        .byte $0E   ; 
- - - - - - 0x007729 01:B719: 2C        .byte $2C   ; 
- - - - - - 0x00772A 01:B71A: 2B        .byte $2B   ; 
- - - - - - 0x00772B 01:B71B: 2A        .byte $2A   ; 
- - - - - - 0x00772C 01:B71C: 0A        .byte $0A   ; 
- - - - - - 0x00772D 01:B71D: 04        .byte $04   ; 
- - - - - - 0x00772E 01:B71E: 37        .byte $37   ; 
- - - - - - 0x00772F 01:B71F: 36        .byte $36   ; 
- - - - - - 0x007730 01:B720: 35        .byte $35   ; 
- - - - - - 0x007731 01:B721: 00        .byte $00   ; 
- - - - - - 0x007732 01:B722: 04        .byte $04   ; 
- - - - - - 0x007733 01:B723: 3F        .byte $3F   ; 
- - - - - - 0x007734 01:B724: 02        .byte $02   ; 
- - - - - - 0x007735 01:B725: 3E        .byte $3E   ; 
- - - - - - 0x007736 01:B726: 00        .byte $00   ; 



tbl_B727_cpu_behavior:
- - - - - - 0x007737 01:B727: 27 B8     .word _off011_B827_00
- D 1 - I - 0x007739 01:B729: 30 B8     .word _off011_B830_01
- D 1 - I - 0x00773B 01:B72B: 39 B8     .word _off011_B839_02
- D 1 - I - 0x00773D 01:B72D: 3C B8     .word _off011_B83C_03
- D 1 - I - 0x00773F 01:B72F: 45 B8     .word _off011_B845_04
- D 1 - I - 0x007741 01:B731: 4E B8     .word _off011_B84E_05
- D 1 - I - 0x007743 01:B733: 57 B8     .word _off011_B857_06
- D 1 - I - 0x007745 01:B735: 5E B8     .word _off011_B85E_07
- D 1 - I - 0x007747 01:B737: 67 B8     .word _off011_B867_08
- - - - - - 0x007749 01:B739: 6E B8     .word _off011_B86E_09
- - - - - - 0x00774B 01:B73B: 77 B8     .word _off011_B877_0A
- D 1 - I - 0x00774D 01:B73D: 80 B8     .word _off011_B880_0B
- D 1 - I - 0x00774F 01:B73F: 87 B8     .word _off011_B887_0C
- D 1 - I - 0x007751 01:B741: 90 B8     .word _off011_B890_0D
- D 1 - I - 0x007753 01:B743: 97 B8     .word _off011_B897_0E
- - - - - - 0x007755 01:B745: A0 B8     .word _off011_B8A0_0F
- D 1 - I - 0x007757 01:B747: A5 B8     .word _off011_B8A5_10
- D 1 - I - 0x007759 01:B749: AE B8     .word _off011_B8AE_11
- D 1 - I - 0x00775B 01:B74B: B7 B8     .word _off011_B8B7_12
- D 1 - I - 0x00775D 01:B74D: C0 B8     .word _off011_B8C0_13
- D 1 - I - 0x00775F 01:B74F: C5 B8     .word _off011_B8C5_14
- D 1 - I - 0x007761 01:B751: CC B8     .word _off011_B8CC_15
- D 1 - I - 0x007763 01:B753: D5 B8     .word _off011_B8D5_16
- D 1 - I - 0x007765 01:B755: DE B8     .word _off011_B8DE_17
- D 1 - I - 0x007767 01:B757: E5 B8     .word _off011_B8E5_18
- - - - - - 0x007769 01:B759: EC B8     .word _off011_B8EC_19
- - - - - - 0x00776B 01:B75B: F1 B8     .word _off011_B8F1_1A
- - - - - - 0x00776D 01:B75D: FA B8     .word _off011_B8FA_1B
- D 1 - I - 0x00776F 01:B75F: FF B8     .word _off011_B8FF_1C
- - - - - - 0x007771 01:B761: 08 B9     .word _off011_B908_1D
- - - - - - 0x007773 01:B763: 0F B9     .word _off011_B90F_1E
- D 1 - I - 0x007775 01:B765: 16 B9     .word _off011_B916_1F
- D 1 - I - 0x007777 01:B767: 1D B9     .word _off011_B91D_20
- - - - - - 0x007779 01:B769: 26 B9     .word _off011_B926_21
- - - - - - 0x00777B 01:B76B: 2F B9     .word _off011_B92F_22
- - - - - - 0x00777D 01:B76D: 38 B9     .word _off011_B938_23
- - - - - - 0x00777F 01:B76F: 41 B9     .word _off011_B941_24
- D 1 - I - 0x007781 01:B771: 4A B9     .word _off011_B94A_25
- - - - - - 0x007783 01:B773: 53 B9     .word _off011_B953_26
- D 1 - I - 0x007785 01:B775: 5A B9     .word _off011_B95A_27
- D 1 - I - 0x007787 01:B777: 61 B9     .word _off011_B961_28
- D 1 - I - 0x007789 01:B779: 68 B9     .word _off011_B968_29
- D 1 - I - 0x00778B 01:B77B: 71 B9     .word _off011_B971_2A
- D 1 - I - 0x00778D 01:B77D: 7A B9     .word _off011_B97A_2B
- D 1 - I - 0x00778F 01:B77F: 83 B9     .word _off011_B983_2C
- D 1 - I - 0x007791 01:B781: 8C B9     .word _off011_B98C_2D
- D 1 - I - 0x007793 01:B783: 95 B9     .word _off011_B995_2E
- D 1 - I - 0x007795 01:B785: 9E B9     .word _off011_B99E_2F
- D 1 - I - 0x007797 01:B787: A7 B9     .word _off011_B9A7_30
- D 1 - I - 0x007799 01:B789: B0 B9     .word _off011_B9B0_31
- D 1 - I - 0x00779B 01:B78B: B9 B9     .word _off011_B9B9_32
- D 1 - I - 0x00779D 01:B78D: C2 B9     .word _off011_B9C2_33
- - - - - - 0x00779F 01:B78F: CB B9     .word _off011_B9CB_34
- - - - - - 0x0077A1 01:B791: D4 B9     .word _off011_B9D4_35
- - - - - - 0x0077A3 01:B793: D9 B9     .word _off011_B9D9_36
- - - - - - 0x0077A5 01:B795: E0 B9     .word _off011_B9E0_37
- D 1 - I - 0x0077A7 01:B797: E5 B9     .word _off011_B9E5_38
- D 1 - I - 0x0077A9 01:B799: EC B9     .word _off011_B9EC_39
- D 1 - I - 0x0077AB 01:B79B: F3 B9     .word _off011_B9F3_3A
- D 1 - I - 0x0077AD 01:B79D: FC B9     .word _off011_B9FC_3B
- D 1 - I - 0x0077AF 01:B79F: 03 BA     .word _off011_BA03_3C
- D 1 - I - 0x0077B1 01:B7A1: 0A BA     .word _off011_BA0A_3D
- - - - - - 0x0077B3 01:B7A3: 13 BA     .word _off011_BA13_3E
- - - - - - 0x0077B5 01:B7A5: 1C BA     .word _off011_BA1C_3F
- - - - - - 0x0077B7 01:B7A7: 25 BA     .word _off011_BA25_40
- - - - - - 0x0077B9 01:B7A9: 2A BA     .word _off011_BA2A_41
- - - - - - 0x0077BB 01:B7AB: 31 BA     .word _off011_BA31_42
- - - - - - 0x0077BD 01:B7AD: 38 BA     .word _off011_BA38_43
- - - - - - 0x0077BF 01:B7AF: 3D BA     .word _off011_BA3D_44
- - - - - - 0x0077C1 01:B7B1: 46 BA     .word _off011_BA46_45
- - - - - - 0x0077C3 01:B7B3: 4F BA     .word _off011_BA4F_46
- - - - - - 0x0077C5 01:B7B5: 56 BA     .word _off011_BA56_47
- - - - - - 0x0077C7 01:B7B7: 5F BA     .word _off011_BA5F_48
- - - - - - 0x0077C9 01:B7B9: 68 BA     .word _off011_BA68_49
- - - - - - 0x0077CB 01:B7BB: 6F BA     .word _off011_BA6F_4A
- D 1 - I - 0x0077CD 01:B7BD: 78 BA     .word _off011_BA78_4B
- D 1 - I - 0x0077CF 01:B7BF: 7F BA     .word _off011_BA7F_4C
- - - - - - 0x0077D1 01:B7C1: 88 BA     .word _off011_BA88_4D
- - - - - - 0x0077D3 01:B7C3: 8D BA     .word _off011_BA8D_4E
- - - - - - 0x0077D5 01:B7C5: 94 BA     .word _off011_BA94_4F
- - - - - - 0x0077D7 01:B7C7: 99 BA     .word _off011_BA99_50
- - - - - - 0x0077D9 01:B7C9: 99 BA     .word _off011_BA99_51
- - - - - - 0x0077DB 01:B7CB: 99 BA     .word _off011_BA99_52
- - - - - - 0x0077DD 01:B7CD: 99 BA     .word _off011_BA99_53
- - - - - - 0x0077DF 01:B7CF: 99 BA     .word _off011_BA99_54
- - - - - - 0x0077E1 01:B7D1: 99 BA     .word _off011_BA99_55
- - - - - - 0x0077E3 01:B7D3: 99 BA     .word _off011_BA99_56
- - - - - - 0x0077E5 01:B7D5: 99 BA     .word _off011_BA99_57
- - - - - - 0x0077E7 01:B7D7: 99 BA     .word _off011_BA99_58
- - - - - - 0x0077E9 01:B7D9: 99 BA     .word _off011_BA99_59
- - - - - - 0x0077EB 01:B7DB: 99 BA     .word _off011_BA99_5A
- - - - - - 0x0077ED 01:B7DD: 99 BA     .word _off011_BA99_5B
- - - - - - 0x0077EF 01:B7DF: 99 BA     .word _off011_BA99_5C
- - - - - - 0x0077F1 01:B7E1: 99 BA     .word _off011_BA99_5D
- - - - - - 0x0077F3 01:B7E3: 99 BA     .word _off011_BA99_5E
- - - - - - 0x0077F5 01:B7E5: 99 BA     .word _off011_BA99_5F
- - - - - - 0x0077F7 01:B7E7: 99 BA     .word _off011_BA99_60
- - - - - - 0x0077F9 01:B7E9: 99 BA     .word _off011_BA99_61
- - - - - - 0x0077FB 01:B7EB: 99 BA     .word _off011_BA99_62
- - - - - - 0x0077FD 01:B7ED: 99 BA     .word _off011_BA99_63
- - - - - - 0x0077FF 01:B7EF: 99 BA     .word _off011_BA99_64
- - - - - - 0x007801 01:B7F1: 99 BA     .word _off011_BA99_65
- - - - - - 0x007803 01:B7F3: 99 BA     .word _off011_BA99_66
- - - - - - 0x007805 01:B7F5: 99 BA     .word _off011_BA99_67
- - - - - - 0x007807 01:B7F7: 99 BA     .word _off011_BA99_68
- - - - - - 0x007809 01:B7F9: 99 BA     .word _off011_BA99_69
- - - - - - 0x00780B 01:B7FB: 99 BA     .word _off011_BA99_6A
- - - - - - 0x00780D 01:B7FD: 99 BA     .word _off011_BA99_6B
- - - - - - 0x00780F 01:B7FF: 99 BA     .word _off011_BA99_6C
- - - - - - 0x007811 01:B801: 99 BA     .word _off011_BA99_6D
- - - - - - 0x007813 01:B803: 99 BA     .word _off011_BA99_6E
- - - - - - 0x007815 01:B805: 99 BA     .word _off011_BA99_6F
- - - - - - 0x007817 01:B807: 99 BA     .word _off011_BA99_70
- - - - - - 0x007819 01:B809: 99 BA     .word _off011_BA99_71
- - - - - - 0x00781B 01:B80B: 99 BA     .word _off011_BA99_72
- - - - - - 0x00781D 01:B80D: 99 BA     .word _off011_BA99_73
- - - - - - 0x00781F 01:B80F: 99 BA     .word _off011_BA99_74
- - - - - - 0x007821 01:B811: 99 BA     .word _off011_BA99_75
- - - - - - 0x007823 01:B813: 99 BA     .word _off011_BA99_76
- - - - - - 0x007825 01:B815: 99 BA     .word _off011_BA99_77
- - - - - - 0x007827 01:B817: 99 BA     .word _off011_BA99_78
- - - - - - 0x007829 01:B819: 99 BA     .word _off011_BA99_79
- - - - - - 0x00782B 01:B81B: 99 BA     .word _off011_BA99_7A
- - - - - - 0x00782D 01:B81D: 99 BA     .word _off011_BA99_7B
- - - - - - 0x00782F 01:B81F: 99 BA     .word _off011_BA99_7C
- - - - - - 0x007831 01:B821: 99 BA     .word _off011_BA99_7D
- - - - - - 0x007833 01:B823: 99 BA     .word _off011_BA99_7E
- - - - - - 0x007835 01:B825: 99 BA     .word _off011_BA99_7F



_off011_B827_00:
- - - - - - 0x007837 01:B827: 80        .byte $80   ; 
- - - - - - 0x007838 01:B828: FF        .byte $FF   ; 
- - - - - - 0x007839 01:B829: 03        .byte $03   ; 
- - - - - - 0x00783A 01:B82A: 60        .byte $60   ; 
- - - - - - 0x00783B 01:B82B: 14        .byte $14   ; 
- - - - - - 0x00783C 01:B82C: F8        .byte $F8   ; 
- - - - - - 0x00783D 01:B82D: 13        .byte $13   ; 
- - - - - - 0x00783E 01:B82E: 80        .byte $80   ; 
- - - - - - 0x00783F 01:B82F: 11        .byte $11   ; 



_off011_B830_01:
- D 1 - I - 0x007840 01:B830: E8        .byte $E8   ; 
- - - - - - 0x007841 01:B831: F8        .byte $F8   ; 
- - - - - - 0x007842 01:B832: 03        .byte $03   ; 
- - - - - - 0x007843 01:B833: 10        .byte $10   ; 
- - - - - - 0x007844 01:B834: 15        .byte $15   ; 
- - - - - - 0x007845 01:B835: C0        .byte $C0   ; 
- - - - - - 0x007846 01:B836: 13        .byte $13   ; 
- - - - - - 0x007847 01:B837: 80        .byte $80   ; 
- - - - - - 0x007848 01:B838: 14        .byte $14   ; 



_off011_B839_02:
- D 1 - I - 0x007849 01:B839: FF        .byte $FF   ; 
- - - - - - 0x00784A 01:B83A: 00        .byte $00   ; 
- - - - - - 0x00784B 01:B83B: 00        .byte $00   ; 



_off011_B83C_03:
- D 1 - I - 0x00784C 01:B83C: E8        .byte $E8   ; 
- D 1 - I - 0x00784D 01:B83D: F8        .byte $F8   ; 
- D 1 - I - 0x00784E 01:B83E: 03        .byte $03   ; 
- D 1 - I - 0x00784F 01:B83F: 60        .byte $60   ; 
- D 1 - I - 0x007850 01:B840: 11        .byte $11   ; 
- D 1 - I - 0x007851 01:B841: C0        .byte $C0   ; 
- D 1 - I - 0x007852 01:B842: 13        .byte $13   ; 
- - - - - - 0x007853 01:B843: 80        .byte $80   ; 
- - - - - - 0x007854 01:B844: 14        .byte $14   ; 



_off011_B845_04:
- D 1 - I - 0x007855 01:B845: 80        .byte $80   ; 
- D 1 - I - 0x007856 01:B846: FF        .byte $FF   ; 
- D 1 - I - 0x007857 01:B847: 03        .byte $03   ; 
- D 1 - I - 0x007858 01:B848: 60        .byte $60   ; 
- D 1 - I - 0x007859 01:B849: 14        .byte $14   ; 
- - - - - - 0x00785A 01:B84A: F8        .byte $F8   ; 
- - - - - - 0x00785B 01:B84B: 13        .byte $13   ; 
- - - - - - 0x00785C 01:B84C: 80        .byte $80   ; 
- - - - - - 0x00785D 01:B84D: 15        .byte $15   ; 



_off011_B84E_05:
- D 1 - I - 0x00785E 01:B84E: E8        .byte $E8   ; 
- D 1 - I - 0x00785F 01:B84F: 80        .byte $80   ; 
- D 1 - I - 0x007860 01:B850: 03        .byte $03   ; 
- D 1 - I - 0x007861 01:B851: 80        .byte $80   ; 
- D 1 - I - 0x007862 01:B852: 14        .byte $14   ; 
- D 1 - I - 0x007863 01:B853: C0        .byte $C0   ; 
- D 1 - I - 0x007864 01:B854: 13        .byte $13   ; 
- - - - - - 0x007865 01:B855: 80        .byte $80   ; 
- - - - - - 0x007866 01:B856: 11        .byte $11   ; 



_off011_B857_06:
- D 1 - I - 0x007867 01:B857: E8        .byte $E8   ; 
- - - - - - 0x007868 01:B858: 80        .byte $80   ; 
- - - - - - 0x007869 01:B859: 02        .byte $02   ; 
- - - - - - 0x00786A 01:B85A: 80        .byte $80   ; 
- - - - - - 0x00786B 01:B85B: 15        .byte $15   ; 
- - - - - - 0x00786C 01:B85C: C0        .byte $C0   ; 
- - - - - - 0x00786D 01:B85D: 13        .byte $13   ; 



_off011_B85E_07:
- D 1 - I - 0x00786E 01:B85E: E8        .byte $E8   ; 
- - - - - - 0x00786F 01:B85F: 80        .byte $80   ; 
- - - - - - 0x007870 01:B860: 03        .byte $03   ; 
- - - - - - 0x007871 01:B861: 60        .byte $60   ; 
- - - - - - 0x007872 01:B862: 15        .byte $15   ; 
- - - - - - 0x007873 01:B863: 60        .byte $60   ; 
- - - - - - 0x007874 01:B864: 11        .byte $11   ; 
- - - - - - 0x007875 01:B865: C0        .byte $C0   ; 
- - - - - - 0x007876 01:B866: 13        .byte $13   ; 



_off011_B867_08:
- D 1 - I - 0x007877 01:B867: E8        .byte $E8   ; 
- - - - - - 0x007878 01:B868: 80        .byte $80   ; 
- - - - - - 0x007879 01:B869: 02        .byte $02   ; 
- - - - - - 0x00787A 01:B86A: 80        .byte $80   ; 
- - - - - - 0x00787B 01:B86B: 11        .byte $11   ; 
- - - - - - 0x00787C 01:B86C: C0        .byte $C0   ; 
- - - - - - 0x00787D 01:B86D: 13        .byte $13   ; 



_off011_B86E_09:
- - - - - - 0x00787E 01:B86E: E8        .byte $E8   ; 
- - - - - - 0x00787F 01:B86F: C0        .byte $C0   ; 
- - - - - - 0x007880 01:B870: 03        .byte $03   ; 
- - - - - - 0x007881 01:B871: 80        .byte $80   ; 
- - - - - - 0x007882 01:B872: 14        .byte $14   ; 
- - - - - - 0x007883 01:B873: C0        .byte $C0   ; 
- - - - - - 0x007884 01:B874: 13        .byte $13   ; 
- - - - - - 0x007885 01:B875: 80        .byte $80   ; 
- - - - - - 0x007886 01:B876: 15        .byte $15   ; 



_off011_B877_0A:
- - - - - - 0x007887 01:B877: 40        .byte $40   ; 
- - - - - - 0x007888 01:B878: F0        .byte $F0   ; 
- - - - - - 0x007889 01:B879: 03        .byte $03   ; 
- - - - - - 0x00788A 01:B87A: C0        .byte $C0   ; 
- - - - - - 0x00788B 01:B87B: 13        .byte $13   ; 
- - - - - - 0x00788C 01:B87C: 40        .byte $40   ; 
- - - - - - 0x00788D 01:B87D: 10        .byte $10   ; 
- - - - - - 0x00788E 01:B87E: 20        .byte $20   ; 
- - - - - - 0x00788F 01:B87F: 15        .byte $15   ; 



_off011_B880_0B:
- D 1 - I - 0x007890 01:B880: 00        .byte $00   ; 
- D 1 - I - 0x007891 01:B881: C0        .byte $C0   ; 
- D 1 - I - 0x007892 01:B882: 02        .byte $02   ; 
- D 1 - I - 0x007893 01:B883: B0        .byte $B0   ; 
- D 1 - I - 0x007894 01:B884: 15        .byte $15   ; 
- D 1 - I - 0x007895 01:B885: C0        .byte $C0   ; 
- D 1 - I - 0x007896 01:B886: 13        .byte $13   ; 



_off011_B887_0C:
- D 1 - I - 0x007897 01:B887: 00        .byte $00   ; 
- D 1 - I - 0x007898 01:B888: 50        .byte $50   ; 
- D 1 - I - 0x007899 01:B889: 03        .byte $03   ; 
- D 1 - I - 0x00789A 01:B88A: C0        .byte $C0   ; 
- D 1 - I - 0x00789B 01:B88B: 13        .byte $13   ; 
- D 1 - I - 0x00789C 01:B88C: 40        .byte $40   ; 
- D 1 - I - 0x00789D 01:B88D: 10        .byte $10   ; 
- - - - - - 0x00789E 01:B88E: 40        .byte $40   ; 
- - - - - - 0x00789F 01:B88F: 12        .byte $12   ; 



_off011_B890_0D:
- D 1 - I - 0x0078A0 01:B890: 00        .byte $00   ; 
- D 1 - I - 0x0078A1 01:B891: C0        .byte $C0   ; 
- D 1 - I - 0x0078A2 01:B892: 02        .byte $02   ; 
- D 1 - I - 0x0078A3 01:B893: B0        .byte $B0   ; 
- D 1 - I - 0x0078A4 01:B894: 11        .byte $11   ; 
- D 1 - I - 0x0078A5 01:B895: C0        .byte $C0   ; 
- D 1 - I - 0x0078A6 01:B896: 13        .byte $13   ; 



_off011_B897_0E:
- D 1 - I - 0x0078A7 01:B897: 40        .byte $40   ; 
- D 1 - I - 0x0078A8 01:B898: F0        .byte $F0   ; 
- D 1 - I - 0x0078A9 01:B899: 03        .byte $03   ; 
- D 1 - I - 0x0078AA 01:B89A: C0        .byte $C0   ; 
- D 1 - I - 0x0078AB 01:B89B: 13        .byte $13   ; 
- - - - - - 0x0078AC 01:B89C: 40        .byte $40   ; 
- - - - - - 0x0078AD 01:B89D: 12        .byte $12   ; 
- - - - - - 0x0078AE 01:B89E: 20        .byte $20   ; 
- - - - - - 0x0078AF 01:B89F: 11        .byte $11   ; 



_off011_B8A0_0F:
- - - - - - 0x0078B0 01:B8A0: 00        .byte $00   ; 
- - - - - - 0x0078B1 01:B8A1: F0        .byte $F0   ; 
- - - - - - 0x0078B2 01:B8A2: 01        .byte $01   ; 
- - - - - - 0x0078B3 01:B8A3: 80        .byte $80   ; 
- - - - - - 0x0078B4 01:B8A4: 11        .byte $11   ; 



_off011_B8A5_10:
- D 1 - I - 0x0078B5 01:B8A5: 00        .byte $00   ; 
- D 1 - I - 0x0078B6 01:B8A6: 80        .byte $80   ; 
- D 1 - I - 0x0078B7 01:B8A7: 03        .byte $03   ; 
- D 1 - I - 0x0078B8 01:B8A8: 20        .byte $20   ; 
- D 1 - I - 0x0078B9 01:B8A9: 15        .byte $15   ; 
- D 1 - I - 0x0078BA 01:B8AA: 20        .byte $20   ; 
- D 1 - I - 0x0078BB 01:B8AB: 10        .byte $10   ; 
- D 1 - I - 0x0078BC 01:B8AC: 20        .byte $20   ; 
- D 1 - I - 0x0078BD 01:B8AD: 13        .byte $13   ; 



_off011_B8AE_11:
- D 1 - I - 0x0078BE 01:B8AE: 00        .byte $00   ; 
- D 1 - I - 0x0078BF 01:B8AF: 80        .byte $80   ; 
- D 1 - I - 0x0078C0 01:B8B0: 03        .byte $03   ; 
- D 1 - I - 0x0078C1 01:B8B1: 80        .byte $80   ; 
- D 1 - I - 0x0078C2 01:B8B2: 13        .byte $13   ; 
- D 1 - I - 0x0078C3 01:B8B3: 60        .byte $60   ; 
- D 1 - I - 0x0078C4 01:B8B4: 10        .byte $10   ; 
- D 1 - I - 0x0078C5 01:B8B5: 40        .byte $40   ; 
- D 1 - I - 0x0078C6 01:B8B6: 12        .byte $12   ; 



_off011_B8B7_12:
- D 1 - I - 0x0078C7 01:B8B7: 00        .byte $00   ; 
- D 1 - I - 0x0078C8 01:B8B8: 80        .byte $80   ; 
- D 1 - I - 0x0078C9 01:B8B9: 03        .byte $03   ; 
- D 1 - I - 0x0078CA 01:B8BA: 20        .byte $20   ; 
- D 1 - I - 0x0078CB 01:B8BB: 11        .byte $11   ; 
- D 1 - I - 0x0078CC 01:B8BC: 20        .byte $20   ; 
- D 1 - I - 0x0078CD 01:B8BD: 12        .byte $12   ; 
- D 1 - I - 0x0078CE 01:B8BE: C0        .byte $C0   ; 
- D 1 - I - 0x0078CF 01:B8BF: 13        .byte $13   ; 



_off011_B8C0_13:
- D 1 - I - 0x0078D0 01:B8C0: 00        .byte $00   ; 
- D 1 - I - 0x0078D1 01:B8C1: 80        .byte $80   ; 
- D 1 - I - 0x0078D2 01:B8C2: 01        .byte $01   ; 
- D 1 - I - 0x0078D3 01:B8C3: 80        .byte $80   ; 
- D 1 - I - 0x0078D4 01:B8C4: 13        .byte $13   ; 



_off011_B8C5_14:
- D 1 - I - 0x0078D5 01:B8C5: 00        .byte $00   ; 
- D 1 - I - 0x0078D6 01:B8C6: 60        .byte $60   ; 
- D 1 - I - 0x0078D7 01:B8C7: 02        .byte $02   ; 
- D 1 - I - 0x0078D8 01:B8C8: 40        .byte $40   ; 
- D 1 - I - 0x0078D9 01:B8C9: 10        .byte $10   ; 
- D 1 - I - 0x0078DA 01:B8CA: 20        .byte $20   ; 
- D 1 - I - 0x0078DB 01:B8CB: 15        .byte $15   ; 



_off011_B8CC_15:
- D 1 - I - 0x0078DC 01:B8CC: 00        .byte $00   ; 
- D 1 - I - 0x0078DD 01:B8CD: 80        .byte $80   ; 
- D 1 - I - 0x0078DE 01:B8CE: 03        .byte $03   ; 
- D 1 - I - 0x0078DF 01:B8CF: 80        .byte $80   ; 
- D 1 - I - 0x0078E0 01:B8D0: 10        .byte $10   ; 
- D 1 - I - 0x0078E1 01:B8D1: 60        .byte $60   ; 
- D 1 - I - 0x0078E2 01:B8D2: 14        .byte $14   ; 
- D 1 - I - 0x0078E3 01:B8D3: 40        .byte $40   ; 
- D 1 - I - 0x0078E4 01:B8D4: 12        .byte $12   ; 



_off011_B8D5_16:
- D 1 - I - 0x0078E5 01:B8D5: 00        .byte $00   ; 
- D 1 - I - 0x0078E6 01:B8D6: 80        .byte $80   ; 
- D 1 - I - 0x0078E7 01:B8D7: 03        .byte $03   ; 
- D 1 - I - 0x0078E8 01:B8D8: 70        .byte $70   ; 
- D 1 - I - 0x0078E9 01:B8D9: 14        .byte $14   ; 
- D 1 - I - 0x0078EA 01:B8DA: 60        .byte $60   ; 
- D 1 - I - 0x0078EB 01:B8DB: 10        .byte $10   ; 
- D 1 - I - 0x0078EC 01:B8DC: 40        .byte $40   ; 
- D 1 - I - 0x0078ED 01:B8DD: 12        .byte $12   ; 



_off011_B8DE_17:
- D 1 - I - 0x0078EE 01:B8DE: 00        .byte $00   ; 
- D 1 - I - 0x0078EF 01:B8DF: 60        .byte $60   ; 
- D 1 - I - 0x0078F0 01:B8E0: 02        .byte $02   ; 
- D 1 - I - 0x0078F1 01:B8E1: 60        .byte $60   ; 
- D 1 - I - 0x0078F2 01:B8E2: 12        .byte $12   ; 
- - - - - - 0x0078F3 01:B8E3: 60        .byte $60   ; 
- - - - - - 0x0078F4 01:B8E4: 14        .byte $14   ; 



_off011_B8E5_18:
- D 1 - I - 0x0078F5 01:B8E5: 00        .byte $00   ; 
- D 1 - I - 0x0078F6 01:B8E6: 60        .byte $60   ; 
- D 1 - I - 0x0078F7 01:B8E7: 02        .byte $02   ; 
- D 1 - I - 0x0078F8 01:B8E8: 40        .byte $40   ; 
- D 1 - I - 0x0078F9 01:B8E9: 12        .byte $12   ; 
- D 1 - I - 0x0078FA 01:B8EA: 20        .byte $20   ; 
- D 1 - I - 0x0078FB 01:B8EB: 11        .byte $11   ; 



_off011_B8EC_19:
- - - - - - 0x0078FC 01:B8EC: 00        .byte $00   ; 
- - - - - - 0x0078FD 01:B8ED: 60        .byte $60   ; 
- - - - - - 0x0078FE 01:B8EE: 01        .byte $01   ; 
- - - - - - 0x0078FF 01:B8EF: C0        .byte $C0   ; 
- - - - - - 0x007900 01:B8F0: 10        .byte $10   ; 



_off011_B8F1_1A:
- - - - - - 0x007901 01:B8F1: 00        .byte $00   ; 
- - - - - - 0x007902 01:B8F2: 60        .byte $60   ; 
- - - - - - 0x007903 01:B8F3: 03        .byte $03   ; 
- - - - - - 0x007904 01:B8F4: 30        .byte $30   ; 
- - - - - - 0x007905 01:B8F5: 12        .byte $12   ; 
- - - - - - 0x007906 01:B8F6: 30        .byte $30   ; 
- - - - - - 0x007907 01:B8F7: 14        .byte $14   ; 
- - - - - - 0x007908 01:B8F8: 30        .byte $30   ; 
- - - - - - 0x007909 01:B8F9: 10        .byte $10   ; 



_off011_B8FA_1B:
- - - - - - 0x00790A 01:B8FA: 00        .byte $00   ; 
- - - - - - 0x00790B 01:B8FB: 60        .byte $60   ; 
- - - - - - 0x00790C 01:B8FC: 01        .byte $01   ; 
- - - - - - 0x00790D 01:B8FD: C0        .byte $C0   ; 
- - - - - - 0x00790E 01:B8FE: 12        .byte $12   ; 



_off011_B8FF_1C:
- D 1 - I - 0x00790F 01:B8FF: 00        .byte $00   ; 
- D 1 - I - 0x007910 01:B900: 60        .byte $60   ; 
- D 1 - I - 0x007911 01:B901: 03        .byte $03   ; 
- D 1 - I - 0x007912 01:B902: 40        .byte $40   ; 
- D 1 - I - 0x007913 01:B903: 10        .byte $10   ; 
- D 1 - I - 0x007914 01:B904: 20        .byte $20   ; 
- D 1 - I - 0x007915 01:B905: 14        .byte $14   ; 
- D 1 - I - 0x007916 01:B906: 10        .byte $10   ; 
- D 1 - I - 0x007917 01:B907: 15        .byte $15   ; 



_off011_B908_1D:
- - - - - - 0x007918 01:B908: 00        .byte $00   ; 
- - - - - - 0x007919 01:B909: 60        .byte $60   ; 
- - - - - - 0x00791A 01:B90A: 02        .byte $02   ; 
- - - - - - 0x00791B 01:B90B: 40        .byte $40   ; 
- - - - - - 0x00791C 01:B90C: 10        .byte $10   ; 
- - - - - - 0x00791D 01:B90D: 20        .byte $20   ; 
- - - - - - 0x00791E 01:B90E: 14        .byte $14   ; 



_off011_B90F_1E:
- - - - - - 0x00791F 01:B90F: 00        .byte $00   ; 
- - - - - - 0x007920 01:B910: 40        .byte $40   ; 
- - - - - - 0x007921 01:B911: 02        .byte $02   ; 
- - - - - - 0x007922 01:B912: 40        .byte $40   ; 
- - - - - - 0x007923 01:B913: 10        .byte $10   ; 
- - - - - - 0x007924 01:B914: 40        .byte $40   ; 
- - - - - - 0x007925 01:B915: 12        .byte $12   ; 



_off011_B916_1F:
- D 1 - I - 0x007926 01:B916: 00        .byte $00   ; 
- D 1 - I - 0x007927 01:B917: 60        .byte $60   ; 
- D 1 - I - 0x007928 01:B918: 02        .byte $02   ; 
- D 1 - I - 0x007929 01:B919: 40        .byte $40   ; 
- D 1 - I - 0x00792A 01:B91A: 12        .byte $12   ; 
- D 1 - I - 0x00792B 01:B91B: 20        .byte $20   ; 
- D 1 - I - 0x00792C 01:B91C: 14        .byte $14   ; 



_off011_B91D_20:
- D 1 - I - 0x00792D 01:B91D: 00        .byte $00   ; 
- D 1 - I - 0x00792E 01:B91E: 60        .byte $60   ; 
- - - - - - 0x00792F 01:B91F: 03        .byte $03   ; 
- - - - - - 0x007930 01:B920: 40        .byte $40   ; 
- - - - - - 0x007931 01:B921: 12        .byte $12   ; 
- - - - - - 0x007932 01:B922: 20        .byte $20   ; 
- - - - - - 0x007933 01:B923: 14        .byte $14   ; 
- - - - - - 0x007934 01:B924: 10        .byte $10   ; 
- - - - - - 0x007935 01:B925: 15        .byte $15   ; 



_off011_B926_21:
- - - - - - 0x007936 01:B926: 00        .byte $00   ; 
- - - - - - 0x007937 01:B927: 80        .byte $80   ; 
- - - - - - 0x007938 01:B928: 03        .byte $03   ; 
- - - - - - 0x007939 01:B929: 80        .byte $80   ; 
- - - - - - 0x00793A 01:B92A: 10        .byte $10   ; 
- - - - - - 0x00793B 01:B92B: 20        .byte $20   ; 
- - - - - - 0x00793C 01:B92C: 15        .byte $15   ; 
- - - - - - 0x00793D 01:B92D: 20        .byte $20   ; 
- - - - - - 0x00793E 01:B92E: 14        .byte $14   ; 



_off011_B92F_22:
- - - - - - 0x00793F 01:B92F: 00        .byte $00   ; 
- - - - - - 0x007940 01:B930: F8        .byte $F8   ; 
- - - - - - 0x007941 01:B931: 03        .byte $03   ; 
- - - - - - 0x007942 01:B932: 80        .byte $80   ; 
- - - - - - 0x007943 01:B933: 10        .byte $10   ; 
- - - - - - 0x007944 01:B934: 20        .byte $20   ; 
- - - - - - 0x007945 01:B935: 15        .byte $15   ; 
- - - - - - 0x007946 01:B936: C0        .byte $C0   ; 
- - - - - - 0x007947 01:B937: 13        .byte $13   ; 



_off011_B938_23:
- - - - - - 0x007948 01:B938: 00        .byte $00   ; 
- - - - - - 0x007949 01:B939: FF        .byte $FF   ; 
- - - - - - 0x00794A 01:B93A: 03        .byte $03   ; 
- - - - - - 0x00794B 01:B93B: C0        .byte $C0   ; 
- - - - - - 0x00794C 01:B93C: 13        .byte $13   ; 
- - - - - - 0x00794D 01:B93D: 30        .byte $30   ; 
- - - - - - 0x00794E 01:B93E: 15        .byte $15   ; 
- - - - - - 0x00794F 01:B93F: 30        .byte $30   ; 
- - - - - - 0x007950 01:B940: 11        .byte $11   ; 



_off011_B941_24:
- - - - - - 0x007951 01:B941: 00        .byte $00   ; 
- - - - - - 0x007952 01:B942: F8        .byte $F8   ; 
- - - - - - 0x007953 01:B943: 03        .byte $03   ; 
- - - - - - 0x007954 01:B944: 80        .byte $80   ; 
- - - - - - 0x007955 01:B945: 12        .byte $12   ; 
- - - - - - 0x007956 01:B946: 20        .byte $20   ; 
- - - - - - 0x007957 01:B947: 11        .byte $11   ; 
- - - - - - 0x007958 01:B948: C0        .byte $C0   ; 
- - - - - - 0x007959 01:B949: 13        .byte $13   ; 



_off011_B94A_25:
- D 1 - I - 0x00795A 01:B94A: 00        .byte $00   ; 
- D 1 - I - 0x00795B 01:B94B: 80        .byte $80   ; 
- D 1 - I - 0x00795C 01:B94C: 03        .byte $03   ; 
- D 1 - I - 0x00795D 01:B94D: 80        .byte $80   ; 
- D 1 - I - 0x00795E 01:B94E: 12        .byte $12   ; 
- D 1 - I - 0x00795F 01:B94F: 20        .byte $20   ; 
- D 1 - I - 0x007960 01:B950: 11        .byte $11   ; 
- D 1 - I - 0x007961 01:B951: 20        .byte $20   ; 
- D 1 - I - 0x007962 01:B952: 14        .byte $14   ; 



_off011_B953_26:
- - - - - - 0x007963 01:B953: E8        .byte $E8   ; 
- - - - - - 0x007964 01:B954: F8        .byte $F8   ; 
- - - - - - 0x007965 01:B955: 02        .byte $02   ; 
- - - - - - 0x007966 01:B956: 80        .byte $80   ; 
- - - - - - 0x007967 01:B957: 15        .byte $15   ; 
- - - - - - 0x007968 01:B958: C0        .byte $C0   ; 
- - - - - - 0x007969 01:B959: 13        .byte $13   ; 



_off011_B95A_27:
- D 1 - I - 0x00796A 01:B95A: F8        .byte $F8   ; 
- - - - - - 0x00796B 01:B95B: F8        .byte $F8   ; 
- - - - - - 0x00796C 01:B95C: 02        .byte $02   ; 
- - - - - - 0x00796D 01:B95D: 40        .byte $40   ; 
- - - - - - 0x00796E 01:B95E: 15        .byte $15   ; 
- - - - - - 0x00796F 01:B95F: 40        .byte $40   ; 
- - - - - - 0x007970 01:B960: 11        .byte $11   ; 



_off011_B961_28:
- D 1 - I - 0x007971 01:B961: E8        .byte $E8   ; 
- - - - - - 0x007972 01:B962: F8        .byte $F8   ; 
- - - - - - 0x007973 01:B963: 02        .byte $02   ; 
- - - - - - 0x007974 01:B964: 80        .byte $80   ; 
- - - - - - 0x007975 01:B965: 10        .byte $10   ; 
- - - - - - 0x007976 01:B966: C0        .byte $C0   ; 
- - - - - - 0x007977 01:B967: 11        .byte $11   ; 



_off011_B968_29:
- D 1 - I - 0x007978 01:B968: 40        .byte $40   ; 
- D 1 - I - 0x007979 01:B969: F0        .byte $F0   ; 
- D 1 - I - 0x00797A 01:B96A: 03        .byte $03   ; 
- D 1 - I - 0x00797B 01:B96B: A0        .byte $A0   ; 
- D 1 - I - 0x00797C 01:B96C: 14        .byte $14   ; 
- - - - - - 0x00797D 01:B96D: C0        .byte $C0   ; 
- - - - - - 0x00797E 01:B96E: 13        .byte $13   ; 
- - - - - - 0x00797F 01:B96F: 30        .byte $30   ; 
- - - - - - 0x007980 01:B970: 11        .byte $11   ; 



_off011_B971_2A:
- D 1 - I - 0x007981 01:B971: 40        .byte $40   ; 
- D 1 - I - 0x007982 01:B972: E8        .byte $E8   ; 
- D 1 - I - 0x007983 01:B973: 03        .byte $03   ; 
- D 1 - I - 0x007984 01:B974: 10        .byte $10   ; 
- D 1 - I - 0x007985 01:B975: 15        .byte $15   ; 
- D 1 - I - 0x007986 01:B976: 30        .byte $30   ; 
- D 1 - I - 0x007987 01:B977: 11        .byte $11   ; 
- D 1 - I - 0x007988 01:B978: C0        .byte $C0   ; 
- D 1 - I - 0x007989 01:B979: 13        .byte $13   ; 



_off011_B97A_2B:
- D 1 - I - 0x00798A 01:B97A: 00        .byte $00   ; 
- D 1 - I - 0x00798B 01:B97B: F8        .byte $F8   ; 
- D 1 - I - 0x00798C 01:B97C: 03        .byte $03   ; 
- D 1 - I - 0x00798D 01:B97D: 80        .byte $80   ; 
- D 1 - I - 0x00798E 01:B97E: 15        .byte $15   ; 
- D 1 - I - 0x00798F 01:B97F: 80        .byte $80   ; 
- D 1 - I - 0x007990 01:B980: 11        .byte $11   ; 
- - - - - - 0x007991 01:B981: F8        .byte $F8   ; 
- - - - - - 0x007992 01:B982: 13        .byte $13   ; 



_off011_B983_2C:
- D 1 - I - 0x007993 01:B983: 40        .byte $40   ; 
- D 1 - I - 0x007994 01:B984: E8        .byte $E8   ; 
- D 1 - I - 0x007995 01:B985: 03        .byte $03   ; 
- D 1 - I - 0x007996 01:B986: 10        .byte $10   ; 
- D 1 - I - 0x007997 01:B987: 11        .byte $11   ; 
- D 1 - I - 0x007998 01:B988: 30        .byte $30   ; 
- D 1 - I - 0x007999 01:B989: 12        .byte $12   ; 
- D 1 - I - 0x00799A 01:B98A: C0        .byte $C0   ; 
- D 1 - I - 0x00799B 01:B98B: 13        .byte $13   ; 



_off011_B98C_2D:
- D 1 - I - 0x00799C 01:B98C: 40        .byte $40   ; 
- D 1 - I - 0x00799D 01:B98D: F0        .byte $F0   ; 
- D 1 - I - 0x00799E 01:B98E: 03        .byte $03   ; 
- D 1 - I - 0x00799F 01:B98F: A0        .byte $A0   ; 
- D 1 - I - 0x0079A0 01:B990: 14        .byte $14   ; 
- D 1 - I - 0x0079A1 01:B991: C0        .byte $C0   ; 
- D 1 - I - 0x0079A2 01:B992: 13        .byte $13   ; 
- - - - - - 0x0079A3 01:B993: 30        .byte $30   ; 
- - - - - - 0x0079A4 01:B994: 15        .byte $15   ; 



_off011_B995_2E:
- D 1 - I - 0x0079A5 01:B995: 00        .byte $00   ; 
- D 1 - I - 0x0079A6 01:B996: F0        .byte $F0   ; 
- D 1 - I - 0x0079A7 01:B997: 03        .byte $03   ; 
- D 1 - I - 0x0079A8 01:B998: 50        .byte $50   ; 
- D 1 - I - 0x0079A9 01:B999: 15        .byte $15   ; 
- D 1 - I - 0x0079AA 01:B99A: C0        .byte $C0   ; 
- D 1 - I - 0x0079AB 01:B99B: 13        .byte $13   ; 
- - - - - - 0x0079AC 01:B99C: 50        .byte $50   ; 
- - - - - - 0x0079AD 01:B99D: 10        .byte $10   ; 



_off011_B99E_2F:
- D 1 - I - 0x0079AE 01:B99E: 00        .byte $00   ; 
- D 1 - I - 0x0079AF 01:B99F: F8        .byte $F8   ; 
- D 1 - I - 0x0079B0 01:B9A0: 03        .byte $03   ; 
- D 1 - I - 0x0079B1 01:B9A1: 50        .byte $50   ; 
- D 1 - I - 0x0079B2 01:B9A2: 15        .byte $15   ; 
- D 1 - I - 0x0079B3 01:B9A3: C0        .byte $C0   ; 
- D 1 - I - 0x0079B4 01:B9A4: 13        .byte $13   ; 
- D 1 - I - 0x0079B5 01:B9A5: 50        .byte $50   ; 
- D 1 - I - 0x0079B6 01:B9A6: 11        .byte $11   ; 



_off011_B9A7_30:
- D 1 - I - 0x0079B7 01:B9A7: 00        .byte $00   ; 
- D 1 - I - 0x0079B8 01:B9A8: 80        .byte $80   ; 
- D 1 - I - 0x0079B9 01:B9A9: 03        .byte $03   ; 
- D 1 - I - 0x0079BA 01:B9AA: 50        .byte $50   ; 
- D 1 - I - 0x0079BB 01:B9AB: 11        .byte $11   ; 
- D 1 - I - 0x0079BC 01:B9AC: C0        .byte $C0   ; 
- D 1 - I - 0x0079BD 01:B9AD: 13        .byte $13   ; 
- - - - - - 0x0079BE 01:B9AE: 50        .byte $50   ; 
- - - - - - 0x0079BF 01:B9AF: 15        .byte $15   ; 



_off011_B9B0_31:
- D 1 - I - 0x0079C0 01:B9B0: 00        .byte $00   ; 
- D 1 - I - 0x0079C1 01:B9B1: F0        .byte $F0   ; 
- D 1 - I - 0x0079C2 01:B9B2: 03        .byte $03   ; 
- D 1 - I - 0x0079C3 01:B9B3: 50        .byte $50   ; 
- D 1 - I - 0x0079C4 01:B9B4: 11        .byte $11   ; 
- D 1 - I - 0x0079C5 01:B9B5: C0        .byte $C0   ; 
- D 1 - I - 0x0079C6 01:B9B6: 13        .byte $13   ; 
- D 1 - I - 0x0079C7 01:B9B7: 50        .byte $50   ; 
- D 1 - I - 0x0079C8 01:B9B8: 10        .byte $10   ; 



_off011_B9B9_32:
- D 1 - I - 0x0079C9 01:B9B9: 00        .byte $00   ; 
- D 1 - I - 0x0079CA 01:B9BA: F8        .byte $F8   ; 
- D 1 - I - 0x0079CB 01:B9BB: 03        .byte $03   ; 
- D 1 - I - 0x0079CC 01:B9BC: 50        .byte $50   ; 
- D 1 - I - 0x0079CD 01:B9BD: 15        .byte $15   ; 
- D 1 - I - 0x0079CE 01:B9BE: C0        .byte $C0   ; 
- D 1 - I - 0x0079CF 01:B9BF: 13        .byte $13   ; 
- - - - - - 0x0079D0 01:B9C0: 50        .byte $50   ; 
- - - - - - 0x0079D1 01:B9C1: 11        .byte $11   ; 



_off011_B9C2_33:
- D 1 - I - 0x0079D2 01:B9C2: 00        .byte $00   ; 
- D 1 - I - 0x0079D3 01:B9C3: FF        .byte $FF   ; 
- D 1 - I - 0x0079D4 01:B9C4: 03        .byte $03   ; 
- D 1 - I - 0x0079D5 01:B9C5: C0        .byte $C0   ; 
- D 1 - I - 0x0079D6 01:B9C6: 13        .byte $13   ; 
- D 1 - I - 0x0079D7 01:B9C7: 80        .byte $80   ; 
- D 1 - I - 0x0079D8 01:B9C8: 15        .byte $15   ; 
- D 1 - I - 0x0079D9 01:B9C9: 80        .byte $80   ; 
- D 1 - I - 0x0079DA 01:B9CA: 11        .byte $11   ; 



_off011_B9CB_34:
- - - - - - 0x0079DB 01:B9CB: 00        .byte $00   ; 
- - - - - - 0x0079DC 01:B9CC: F8        .byte $F8   ; 
- - - - - - 0x0079DD 01:B9CD: 03        .byte $03   ; 
- - - - - - 0x0079DE 01:B9CE: 50        .byte $50   ; 
- - - - - - 0x0079DF 01:B9CF: 11        .byte $11   ; 
- - - - - - 0x0079E0 01:B9D0: C0        .byte $C0   ; 
- - - - - - 0x0079E1 01:B9D1: 13        .byte $13   ; 
- - - - - - 0x0079E2 01:B9D2: 50        .byte $50   ; 
- - - - - - 0x0079E3 01:B9D3: 15        .byte $15   ; 



_off011_B9D4_35:
- - - - - - 0x0079E4 01:B9D4: 80        .byte $80   ; 
- - - - - - 0x0079E5 01:B9D5: C0        .byte $C0   ; 
- - - - - - 0x0079E6 01:B9D6: 01        .byte $01   ; 
- - - - - - 0x0079E7 01:B9D7: D0        .byte $D0   ; 
- - - - - - 0x0079E8 01:B9D8: 15        .byte $15   ; 



_off011_B9D9_36:
- - - - - - 0x0079E9 01:B9D9: 00        .byte $00   ; 
- - - - - - 0x0079EA 01:B9DA: 80        .byte $80   ; 
- - - - - - 0x0079EB 01:B9DB: 02        .byte $02   ; 
- - - - - - 0x0079EC 01:B9DC: 50        .byte $50   ; 
- - - - - - 0x0079ED 01:B9DD: 15        .byte $15   ; 
- - - - - - 0x0079EE 01:B9DE: 50        .byte $50   ; 
- - - - - - 0x0079EF 01:B9DF: 11        .byte $11   ; 



_off011_B9E0_37:
- - - - - - 0x0079F0 01:B9E0: 80        .byte $80   ; 
- - - - - - 0x0079F1 01:B9E1: 80        .byte $80   ; 
- - - - - - 0x0079F2 01:B9E2: 01        .byte $01   ; 
- - - - - - 0x0079F3 01:B9E3: D0        .byte $D0   ; 
- - - - - - 0x0079F4 01:B9E4: 11        .byte $11   ; 



_off011_B9E5_38:
- D 1 - I - 0x0079F5 01:B9E5: 00        .byte $00   ; 
- D 1 - I - 0x0079F6 01:B9E6: A0        .byte $A0   ; 
- D 1 - I - 0x0079F7 01:B9E7: 02        .byte $02   ; 
- D 1 - I - 0x0079F8 01:B9E8: 10        .byte $10   ; 
- D 1 - I - 0x0079F9 01:B9E9: 10        .byte $10   ; 
- D 1 - I - 0x0079FA 01:B9EA: A0        .byte $A0   ; 
- D 1 - I - 0x0079FB 01:B9EB: 15        .byte $15   ; 



_off011_B9EC_39:
- D 1 - I - 0x0079FC 01:B9EC: 00        .byte $00   ; 
- D 1 - I - 0x0079FD 01:B9ED: A0        .byte $A0   ; 
- D 1 - I - 0x0079FE 01:B9EE: 02        .byte $02   ; 
- D 1 - I - 0x0079FF 01:B9EF: 80        .byte $80   ; 
- D 1 - I - 0x007A00 01:B9F0: 10        .byte $10   ; 
- D 1 - I - 0x007A01 01:B9F1: 80        .byte $80   ; 
- D 1 - I - 0x007A02 01:B9F2: 14        .byte $14   ; 



_off011_B9F3_3A:
- D 1 - I - 0x007A03 01:B9F3: 00        .byte $00   ; 
- D 1 - I - 0x007A04 01:B9F4: C0        .byte $C0   ; 
- D 1 - I - 0x007A05 01:B9F5: 03        .byte $03   ; 
- D 1 - I - 0x007A06 01:B9F6: 80        .byte $80   ; 
- D 1 - I - 0x007A07 01:B9F7: 14        .byte $14   ; 
- D 1 - I - 0x007A08 01:B9F8: 60        .byte $60   ; 
- D 1 - I - 0x007A09 01:B9F9: 12        .byte $12   ; 
- D 1 - I - 0x007A0A 01:B9FA: 40        .byte $40   ; 
- D 1 - I - 0x007A0B 01:B9FB: 10        .byte $10   ; 



_off011_B9FC_3B:
- D 1 - I - 0x007A0C 01:B9FC: 00        .byte $00   ; 
- D 1 - I - 0x007A0D 01:B9FD: A0        .byte $A0   ; 
- D 1 - I - 0x007A0E 01:B9FE: 02        .byte $02   ; 
- D 1 - I - 0x007A0F 01:B9FF: 80        .byte $80   ; 
- D 1 - I - 0x007A10 01:BA00: 12        .byte $12   ; 
- D 1 - I - 0x007A11 01:BA01: 80        .byte $80   ; 
- D 1 - I - 0x007A12 01:BA02: 14        .byte $14   ; 



_off011_BA03_3C:
- D 1 - I - 0x007A13 01:BA03: 00        .byte $00   ; 
- D 1 - I - 0x007A14 01:BA04: A0        .byte $A0   ; 
- D 1 - I - 0x007A15 01:BA05: 02        .byte $02   ; 
- D 1 - I - 0x007A16 01:BA06: 10        .byte $10   ; 
- D 1 - I - 0x007A17 01:BA07: 12        .byte $12   ; 
- D 1 - I - 0x007A18 01:BA08: A0        .byte $A0   ; 
- D 1 - I - 0x007A19 01:BA09: 11        .byte $11   ; 



_off011_BA0A_3D:
- D 1 - I - 0x007A1A 01:BA0A: 00        .byte $00   ; 
- D 1 - I - 0x007A1B 01:BA0B: C0        .byte $C0   ; 
- D 1 - I - 0x007A1C 01:BA0C: 03        .byte $03   ; 
- D 1 - I - 0x007A1D 01:BA0D: 50        .byte $50   ; 
- D 1 - I - 0x007A1E 01:BA0E: 10        .byte $10   ; 
- D 1 - I - 0x007A1F 01:BA0F: 50        .byte $50   ; 
- D 1 - I - 0x007A20 01:BA10: 14        .byte $14   ; 
- D 1 - I - 0x007A21 01:BA11: 50        .byte $50   ; 
- D 1 - I - 0x007A22 01:BA12: 15        .byte $15   ; 



_off011_BA13_3E:
- - - - - - 0x007A23 01:BA13: F8        .byte $F8   ; 
- - - - - - 0x007A24 01:BA14: 80        .byte $80   ; 
- - - - - - 0x007A25 01:BA15: 03        .byte $03   ; 
- - - - - - 0x007A26 01:BA16: 10        .byte $10   ; 
- - - - - - 0x007A27 01:BA17: 15        .byte $15   ; 
- - - - - - 0x007A28 01:BA18: C0        .byte $C0   ; 
- - - - - - 0x007A29 01:BA19: 13        .byte $13   ; 
- - - - - - 0x007A2A 01:BA1A: 80        .byte $80   ; 
- - - - - - 0x007A2B 01:BA1B: 14        .byte $14   ; 



_off011_BA1C_3F:
- - - - - - 0x007A2C 01:BA1C: F8        .byte $F8   ; 
- - - - - - 0x007A2D 01:BA1D: 80        .byte $80   ; 
- - - - - - 0x007A2E 01:BA1E: 03        .byte $03   ; 
- - - - - - 0x007A2F 01:BA1F: 10        .byte $10   ; 
- - - - - - 0x007A30 01:BA20: 11        .byte $11   ; 
- - - - - - 0x007A31 01:BA21: 80        .byte $80   ; 
- - - - - - 0x007A32 01:BA22: 13        .byte $13   ; 
- - - - - - 0x007A33 01:BA23: 80        .byte $80   ; 
- - - - - - 0x007A34 01:BA24: 14        .byte $14   ; 



_off011_BA25_40:
- - - - - - 0x007A35 01:BA25: 00        .byte $00   ; 
- - - - - - 0x007A36 01:BA26: C0        .byte $C0   ; 
- - - - - - 0x007A37 01:BA27: 01        .byte $01   ; 
- - - - - - 0x007A38 01:BA28: A0        .byte $A0   ; 
- - - - - - 0x007A39 01:BA29: 15        .byte $15   ; 



_off011_BA2A_41:
- - - - - - 0x007A3A 01:BA2A: 00        .byte $00   ; 
- - - - - - 0x007A3B 01:BA2B: E0        .byte $E0   ; 
- - - - - - 0x007A3C 01:BA2C: 02        .byte $02   ; 
- - - - - - 0x007A3D 01:BA2D: 80        .byte $80   ; 
- - - - - - 0x007A3E 01:BA2E: 15        .byte $15   ; 
- - - - - - 0x007A3F 01:BA2F: 80        .byte $80   ; 
- - - - - - 0x007A40 01:BA30: 13        .byte $13   ; 



_off011_BA31_42:
- - - - - - 0x007A41 01:BA31: 00        .byte $00   ; 
- - - - - - 0x007A42 01:BA32: E0        .byte $E0   ; 
- - - - - - 0x007A43 01:BA33: 02        .byte $02   ; 
- - - - - - 0x007A44 01:BA34: 80        .byte $80   ; 
- - - - - - 0x007A45 01:BA35: 11        .byte $11   ; 
- - - - - - 0x007A46 01:BA36: 80        .byte $80   ; 
- - - - - - 0x007A47 01:BA37: 13        .byte $13   ; 



_off011_BA38_43:
- - - - - - 0x007A48 01:BA38: 00        .byte $00   ; 
- - - - - - 0x007A49 01:BA39: C0        .byte $C0   ; 
- - - - - - 0x007A4A 01:BA3A: 01        .byte $01   ; 
- - - - - - 0x007A4B 01:BA3B: A0        .byte $A0   ; 
- - - - - - 0x007A4C 01:BA3C: 11        .byte $11   ; 



_off011_BA3D_44:
- - - - - - 0x007A4D 01:BA3D: 00        .byte $00   ; 
- - - - - - 0x007A4E 01:BA3E: C0        .byte $C0   ; 
- - - - - - 0x007A4F 01:BA3F: 03        .byte $03   ; 
- - - - - - 0x007A50 01:BA40: 80        .byte $80   ; 
- - - - - - 0x007A51 01:BA41: 10        .byte $10   ; 
- - - - - - 0x007A52 01:BA42: 80        .byte $80   ; 
- - - - - - 0x007A53 01:BA43: 0C        .byte $0C   ; 
- - - - - - 0x007A54 01:BA44: 80        .byte $80   ; 
- - - - - - 0x007A55 01:BA45: 0E        .byte $0E   ; 



_off011_BA46_45:
- - - - - - 0x007A56 01:BA46: 00        .byte $00   ; 
- - - - - - 0x007A57 01:BA47: C0        .byte $C0   ; 
- - - - - - 0x007A58 01:BA48: 03        .byte $03   ; 
- - - - - - 0x007A59 01:BA49: 80        .byte $80   ; 
- - - - - - 0x007A5A 01:BA4A: 12        .byte $12   ; 
- - - - - - 0x007A5B 01:BA4B: 80        .byte $80   ; 
- - - - - - 0x007A5C 01:BA4C: 0D        .byte $0D   ; 
- - - - - - 0x007A5D 01:BA4D: 80        .byte $80   ; 
- - - - - - 0x007A5E 01:BA4E: 0E        .byte $0E   ; 



_off011_BA4F_46:
- - - - - - 0x007A5F 01:BA4F: 00        .byte $00   ; 
- - - - - - 0x007A60 01:BA50: C0        .byte $C0   ; 
- - - - - - 0x007A61 01:BA51: 02        .byte $02   ; 
- - - - - - 0x007A62 01:BA52: 80        .byte $80   ; 
- - - - - - 0x007A63 01:BA53: 10        .byte $10   ; 
- - - - - - 0x007A64 01:BA54: 80        .byte $80   ; 
- - - - - - 0x007A65 01:BA55: 15        .byte $15   ; 



_off011_BA56_47:
- - - - - - 0x007A66 01:BA56: 00        .byte $00   ; 
- - - - - - 0x007A67 01:BA57: C0        .byte $C0   ; 
- - - - - - 0x007A68 01:BA58: 03        .byte $03   ; 
- - - - - - 0x007A69 01:BA59: 80        .byte $80   ; 
- - - - - - 0x007A6A 01:BA5A: 10        .byte $10   ; 
- - - - - - 0x007A6B 01:BA5B: 80        .byte $80   ; 
- - - - - - 0x007A6C 01:BA5C: 14        .byte $14   ; 
- - - - - - 0x007A6D 01:BA5D: 80        .byte $80   ; 
- - - - - - 0x007A6E 01:BA5E: 15        .byte $15   ; 



_off011_BA5F_48:
- - - - - - 0x007A6F 01:BA5F: 00        .byte $00   ; 
- - - - - - 0x007A70 01:BA60: C0        .byte $C0   ; 
- - - - - - 0x007A71 01:BA61: 03        .byte $03   ; 
- - - - - - 0x007A72 01:BA62: 80        .byte $80   ; 
- - - - - - 0x007A73 01:BA63: 12        .byte $12   ; 
- - - - - - 0x007A74 01:BA64: 80        .byte $80   ; 
- - - - - - 0x007A75 01:BA65: 14        .byte $14   ; 
- - - - - - 0x007A76 01:BA66: 80        .byte $80   ; 
- - - - - - 0x007A77 01:BA67: 11        .byte $11   ; 



_off011_BA68_49:
- - - - - - 0x007A78 01:BA68: 00        .byte $00   ; 
- - - - - - 0x007A79 01:BA69: C0        .byte $C0   ; 
- - - - - - 0x007A7A 01:BA6A: 02        .byte $02   ; 
- - - - - - 0x007A7B 01:BA6B: 80        .byte $80   ; 
- - - - - - 0x007A7C 01:BA6C: 12        .byte $12   ; 
- - - - - - 0x007A7D 01:BA6D: 80        .byte $80   ; 
- - - - - - 0x007A7E 01:BA6E: 11        .byte $11   ; 



_off011_BA6F_4A:
- - - - - - 0x007A7F 01:BA6F: 00        .byte $00   ; 
- - - - - - 0x007A80 01:BA70: F0        .byte $F0   ; 
- - - - - - 0x007A81 01:BA71: 03        .byte $03   ; 
- - - - - - 0x007A82 01:BA72: 80        .byte $80   ; 
- - - - - - 0x007A83 01:BA73: 10        .byte $10   ; 
- - - - - - 0x007A84 01:BA74: 80        .byte $80   ; 
- - - - - - 0x007A85 01:BA75: 12        .byte $12   ; 
- - - - - - 0x007A86 01:BA76: C0        .byte $C0   ; 
- - - - - - 0x007A87 01:BA77: 13        .byte $13   ; 



_off011_BA78_4B:
- D 1 - I - 0x007A88 01:BA78: 00        .byte $00   ; 
- D 1 - I - 0x007A89 01:BA79: 80        .byte $80   ; 
- D 1 - I - 0x007A8A 01:BA7A: 02        .byte $02   ; 
- D 1 - I - 0x007A8B 01:BA7B: 80        .byte $80   ; 
- D 1 - I - 0x007A8C 01:BA7C: 13        .byte $13   ; 
- D 1 - I - 0x007A8D 01:BA7D: 80        .byte $80   ; 
- D 1 - I - 0x007A8E 01:BA7E: 14        .byte $14   ; 



_off011_BA7F_4C:
- D 1 - I - 0x007A8F 01:BA7F: 00        .byte $00   ; 
- D 1 - I - 0x007A90 01:BA80: 40        .byte $40   ; 
- D 1 - I - 0x007A91 01:BA81: 03        .byte $03   ; 
- D 1 - I - 0x007A92 01:BA82: C0        .byte $C0   ; 
- D 1 - I - 0x007A93 01:BA83: 13        .byte $13   ; 
- D 1 - I - 0x007A94 01:BA84: 60        .byte $60   ; 
- D 1 - I - 0x007A95 01:BA85: 15        .byte $15   ; 
- D 1 - I - 0x007A96 01:BA86: 40        .byte $40   ; 
- D 1 - I - 0x007A97 01:BA87: 11        .byte $11   ; 



_off011_BA88_4D:
- - - - - - 0x007A98 01:BA88: F8        .byte $F8   ; 
- - - - - - 0x007A99 01:BA89: A0        .byte $A0   ; 
- - - - - - 0x007A9A 01:BA8A: 01        .byte $01   ; 
- - - - - - 0x007A9B 01:BA8B: 80        .byte $80   ; 
- - - - - - 0x007A9C 01:BA8C: 15        .byte $15   ; 



_off011_BA8D_4E:
- - - - - - 0x007A9D 01:BA8D: FB        .byte $FB   ; 
- - - - - - 0x007A9E 01:BA8E: 80        .byte $80   ; 
- - - - - - 0x007A9F 01:BA8F: 02        .byte $02   ; 
- - - - - - 0x007AA0 01:BA90: 80        .byte $80   ; 
- - - - - - 0x007AA1 01:BA91: 15        .byte $15   ; 
- - - - - - 0x007AA2 01:BA92: 80        .byte $80   ; 
- - - - - - 0x007AA3 01:BA93: 11        .byte $11   ; 



_off011_BA94_4F:
- - - - - - 0x007AA4 01:BA94: F8        .byte $F8   ; 
- - - - - - 0x007AA5 01:BA95: A0        .byte $A0   ; 
- - - - - - 0x007AA6 01:BA96: 01        .byte $01   ; 
- - - - - - 0x007AA7 01:BA97: 80        .byte $80   ; 
- - - - - - 0x007AA8 01:BA98: 11        .byte $11   ; 



_off011_BA99_50:
_off011_BA99_51:
_off011_BA99_52:
_off011_BA99_53:
_off011_BA99_54:
_off011_BA99_55:
_off011_BA99_56:
_off011_BA99_57:
_off011_BA99_58:
_off011_BA99_59:
_off011_BA99_5A:
_off011_BA99_5B:
_off011_BA99_5C:
_off011_BA99_5D:
_off011_BA99_5E:
_off011_BA99_5F:
_off011_BA99_60:
_off011_BA99_61:
_off011_BA99_62:
_off011_BA99_63:
_off011_BA99_64:
_off011_BA99_65:
_off011_BA99_66:
_off011_BA99_67:
_off011_BA99_68:
_off011_BA99_69:
_off011_BA99_6A:
_off011_BA99_6B:
_off011_BA99_6C:
_off011_BA99_6D:
_off011_BA99_6E:
_off011_BA99_6F:
_off011_BA99_70:
_off011_BA99_71:
_off011_BA99_72:
_off011_BA99_73:
_off011_BA99_74:
_off011_BA99_75:
_off011_BA99_76:
_off011_BA99_77:
_off011_BA99_78:
_off011_BA99_79:
_off011_BA99_7A:
_off011_BA99_7B:
_off011_BA99_7C:
_off011_BA99_7D:
_off011_BA99_7E:
_off011_BA99_7F:
; bzk garbage
- - - - - - 0x007AA9 01:BA99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AB0 01:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AC0 01:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AD0 01:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AE0 01:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AF0 01:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B00 01:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B10 01:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B20 01:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B30 01:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B40 01:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B50 01:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B60 01:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B70 01:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B80 01:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B90 01:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BA0 01:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BB0 01:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BC0 01:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BD0 01:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BE0 01:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BF0 01:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C00 01:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C10 01:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C20 01:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C30 01:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C40 01:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C50 01:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C60 01:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C70 01:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C80 01:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C90 01:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CA0 01:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CB0 01:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CC0 01:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CD0 01:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CE0 01:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CF0 01:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D00 01:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D10 01:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D20 01:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D30 01:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
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
- - - - - - 0x008000 01:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 01: 0x%04X [%d]", ($C000 - *), ($C000 - *))



