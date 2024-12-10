.segment "BANK_82"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x004010-0x00800F



.export sub_0x004011
.export sub_0x00429E
.export sub_0x0043DF
.export sub_0x00446E_partner_cutscene_handler
.export loc_0x0054C8_object_handler
.export tbl_0x005F41_irq_handlers
.export loc_0x00661C_prayer_handler
.export sub_0x0067D3
.export loc_0x006F75_enter_your_name_handler
.export loc_0x0075B2
.export _off005_0x0079B6_18_enter_your_name_screen
.export sub_0x007C9D
.export sub_0x007D22



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x004010 01:8000: 82        .byte con_prg_bank + $82   ; 



sub_0x004011:
C - - - - - 0x004011 01:8001: A0 00     LDY #$00
; bzk optimize, JMP
C - - - - - 0x004013 01:8003: 20 0C 89  JSR sub_890C_jump_to_pointers
C - - - - - 0x004016 01:8006: 60        RTS



_off050_8007_00:
- D 0 - I - 0x004017 01:8007: 27 80     .word ofs_048_8027_00
- D 0 - I - 0x004019 01:8009: 8A 83     .word ofs_048_838A_01
- D 0 - I - 0x00401B 01:800B: 38 80     .word ofs_048_8038_02
- D 0 - I - 0x00401D 01:800D: 8A 83     .word ofs_048_838A_03
- D 0 - I - 0x00401F 01:800F: 80 80     .word ofs_048_8080_04
- D 0 - I - 0x004021 01:8011: 87 80     .word ofs_048_8087_05
- D 0 - I - 0x004023 01:8013: 8A 83     .word ofs_048_838A_06
- D 0 - I - 0x004025 01:8015: C3 80     .word ofs_048_80C3_07_hearts
- D 0 - I - 0x004027 01:8017: 8A 83     .word ofs_048_838A_08
- D 0 - I - 0x004029 01:8019: EA 80     .word ofs_048_80EA_09_meat
- D 0 - I - 0x00402B 01:801B: F8 80     .word ofs_048_80F8_0A
- D 0 - I - 0x00402D 01:801D: 8A 83     .word ofs_048_838A_0B
- D 0 - I - 0x00402F 01:801F: 16 81     .word ofs_048_8116_0C
- D 0 - I - 0x004031 01:8021: 48 80     .word ofs_048_8048_0D
- D 0 - I - 0x004033 01:8023: 91 81     .word ofs_048_8191_0E
- D 0 - I - 0x004035 01:8025: 77 82     .word ofs_048_8277_0F



ofs_048_8027_00:
C - - J - - 0x004037 01:8027: A9 00     LDA #$00
C - - - - - 0x004039 01:8029: 8D 1A 04  STA ram_obj_anim_id + $1A
C - - - - - 0x00403C 01:802C: 8D 1B 04  STA ram_obj_anim_id + $1B
C - - - - - 0x00403F 01:802F: A9 FF     LDA #$FF
bra_8031:
C - - - - - 0x004041 01:8031: 8D F3 07  STA ram_07F3
loc_8034:
C D 0 - - - 0x004044 01:8034: EE ED 07  INC ram_07ED
C - - - - - 0x004047 01:8037: 60        RTS



ofs_048_8038_02:
C - - J - - 0x004048 01:8038: A5 32     LDA ram_blk_id_hi
C - - - - - 0x00404A 01:803A: C9 0E     CMP #$0E    ; Final Clock Tower
C - - - - - 0x00404C 01:803C: D0 04     BNE bra_8042
C - - - - - 0x00404E 01:803E: A9 D0     LDA #$D0
C - - - - - 0x004050 01:8040: D0 EF     BNE bra_8031    ; jmp
bra_8042:
C - - - - - 0x004052 01:8042: EE ED 07  INC ram_07ED
C - - - - - 0x004055 01:8045: 4C 34 80  JMP loc_8034



ofs_048_8048_0D:
C - - J - - 0x004058 01:8048: A4 32     LDY ram_blk_id_hi
C - - - - - 0x00405A 01:804A: B9 78 80  LDA tbl_8078,Y
C - - - - - 0x00405D 01:804D: 85 00     STA ram_0000_t063
C - - - - - 0x00405F 01:804F: A2 01     LDX #$01
bra_8051_loop:
C - - - - - 0x004061 01:8051: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x004064 01:8054: C5 00     CMP ram_0000_t063
C - - - - - 0x004066 01:8056: F0 03     BEQ bra_805B
C - - - - - 0x004068 01:8058: 20 6F 96  JSR sub_966F
bra_805B:
C - - - - - 0x00406B 01:805B: E8        INX
C - - - - - 0x00406C 01:805C: E0 0D     CPX #$0D
C - - - - - 0x00406E 01:805E: D0 F1     BNE bra_8051_loop
C - - - - - 0x004070 01:8060: EE ED 07  INC ram_07ED
C - - - - - 0x004073 01:8063: A9 00     LDA #$00
C - - - - - 0x004075 01:8065: 8D 13 04  STA ram_obj_anim_id + $13
C - - - - - 0x004078 01:8068: 8D 14 04  STA ram_obj_anim_id + $14
C - - - - - 0x00407B 01:806B: 8D 15 04  STA ram_obj_anim_id + $15
C - - - - - 0x00407E 01:806E: 8D 16 04  STA ram_obj_anim_id + $16
C - - - - - 0x004081 01:8071: 8D 18 04  STA ram_obj_anim_id + $18
C - - - - - 0x004084 01:8074: 8D 19 04  STA ram_obj_anim_id + $19
C - - - - - 0x004087 01:8077: 60        RTS



tbl_8078:
- - - - - - 0x004088 01:8078: 00        .byte $00   ; 00 Warakiya
- D 0 - - - 0x004089 01:8079: 03        .byte $03   ; 01 Clock Tower
- D 0 - - - 0x00408A 01:807A: 02        .byte $02   ; 02 Forest of Madness
- - - - - - 0x00408B 01:807B: 00        .byte $00   ; 03 Ship of Fools
- - - - - - 0x00408C 01:807C: 00        .byte $00   ; 04 Tower of Terror
- - - - - - 0x00408D 01:807D: 00        .byte $00   ; 05 Causeway
- - - - - - 0x00408E 01:807E: 00        .byte $00   ; 06 Murky Marshes
- D 0 - - - 0x00408F 01:807F: 05        .byte $05   ; 07 Caves of Alucard



ofs_048_8080_04:
C - - J - - 0x004090 01:8080: A9 10     LDA #$10
C - - - - - 0x004092 01:8082: 8D F3 07  STA ram_07F3
C - - - - - 0x004095 01:8085: D0 1F     BNE bra_80A6    ; jmp



ofs_048_8087_05:
C - - J - - 0x004097 01:8087: A5 7E     LDA ram_blk_timer_0xx
C - - - - - 0x004099 01:8089: 05 7F     ORA ram_blk_timer_x00
C - - - - - 0x00409B 01:808B: F0 10     BEQ bra_809D_time_is_up
C - - - - - 0x00409D 01:808D: 20 56 E6  JSR sub_0x03E666_display_time
C - - - - - 0x0040A0 01:8090: 4C AA 80  JMP loc_80AA



sub_8093:
C - - - - - 0x0040A3 01:8093: A9 02     LDA #$02
C - - - - - 0x0040A5 01:8095: 8D F3 07  STA ram_07F3
C - - - - - 0x0040A8 01:8098: 60        RTS



bra_8099:
C - - - - - 0x0040A9 01:8099: CE F3 07  DEC ram_07F3
C - - - - - 0x0040AC 01:809C: 60        RTS


bra_809D_time_is_up:
C - - - - - 0x0040AD 01:809D: A9 12     LDA #$12
C - - - - - 0x0040AF 01:809F: D0 02     BNE bra_80A3    ; jmp


loc_80A1:
bra_80A1:
C D 0 - - - 0x0040B1 01:80A1: A9 40     LDA #$40
bra_80A3:
C - - - - - 0x0040B3 01:80A3: 8D F3 07  STA ram_07F3
loc_80A6:
bra_80A6:
C D 0 - - - 0x0040B6 01:80A6: EE ED 07  INC ram_07ED
C - - - - - 0x0040B9 01:80A9: 60        RTS



loc_80AA:
C D 0 - - - 0x0040BA 01:80AA: A9 10     LDA #$10
C - - - - - 0x0040BC 01:80AC: 85 00     STA ram_0000_t098_score
C - - - - - 0x0040BE 01:80AE: AD F3 07  LDA ram_07F3
C - - - - - 0x0040C1 01:80B1: D0 0A     BNE bra_80BD
C - - - - - 0x0040C3 01:80B3: A9 08     LDA #$08
C - - - - - 0x0040C5 01:80B5: 8D F3 07  STA ram_07F3
C - - - - - 0x0040C8 01:80B8: A9 19     LDA #con_sound_score_count
C - - - - - 0x0040CA 01:80BA: 4C BE 83  JMP loc_83BE_play_sound
bra_80BD:
C - - - - - 0x0040CD 01:80BD: CE F3 07  DEC ram_07F3
C - - - - - 0x0040D0 01:80C0: 4C C1 83  JMP loc_83C1



ofs_048_80C3_07_hearts:
C - - J - - 0x0040D3 01:80C3: AD F3 07  LDA ram_07F3
C - - - - - 0x0040D6 01:80C6: D0 D1     BNE bra_8099
C - - - - - 0x0040D8 01:80C8: A5 84     LDA ram_hearts
C - - - - - 0x0040DA 01:80CA: F0 D5     BEQ bra_80A1
C - - - - - 0x0040DC 01:80CC: C6 84     DEC ram_hearts
C - - - - - 0x0040DE 01:80CE: A5 84     LDA ram_hearts
C - - - - - 0x0040E0 01:80D0: 29 0F     AND #$0F
C - - - - - 0x0040E2 01:80D2: C9 0A     CMP #$0A
C - - - - - 0x0040E4 01:80D4: 90 08     BCC bra_80DE
C - - - - - 0x0040E6 01:80D6: A5 84     LDA ram_hearts
C - - - - - 0x0040E8 01:80D8: 29 F0     AND #$F0
C - - - - - 0x0040EA 01:80DA: 09 09     ORA #$09
C - - - - - 0x0040EC 01:80DC: 85 84     STA ram_hearts
bra_80DE:
C - - - - - 0x0040EE 01:80DE: 20 93 80  JSR sub_8093
C - - - - - 0x0040F1 01:80E1: A9 20     LDA #$20
C - - - - - 0x0040F3 01:80E3: 85 00     STA ram_0000_t098_score
C - - - - - 0x0040F5 01:80E5: A9 1A     LDA #con_sound_heart_count
C - - - - - 0x0040F7 01:80E7: 4C BE 83  JMP loc_83BE_play_sound



ofs_048_80EA_09_meat:
C - - J - - 0x0040FA 01:80EA: A5 3C     LDA ram_hp_player
C - - - - - 0x0040FC 01:80EC: C9 40     CMP #$40
C - - - - - 0x0040FE 01:80EE: F0 05     BEQ bra_80F5_full_health
C - - - - - 0x004100 01:80F0: A9 2C     LDA #con_sound_pick_up_meat
C - - - - - 0x004102 01:80F2: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_80F5_full_health:
C - - - - - 0x004105 01:80F5: 4C A6 80  JMP loc_80A6



ofs_048_80F8_0A:
C - - J - - 0x004108 01:80F8: AD F3 07  LDA ram_07F3
C - - - - - 0x00410B 01:80FB: D0 9C     BNE bra_8099
C - - - - - 0x00410D 01:80FD: A5 3C     LDA ram_hp_player
C - - - - - 0x00410F 01:80FF: 18        CLC
C - - - - - 0x004110 01:8100: 69 04     ADC #$04
C - - - - - 0x004112 01:8102: C9 40     CMP #$40
C - - - - - 0x004114 01:8104: B0 09     BCS bra_810F
C - - - - - 0x004116 01:8106: 85 3C     STA ram_hp_player
C - - - - - 0x004118 01:8108: A9 00     LDA #$00
C - - - - - 0x00411A 01:810A: 85 00     STA ram_0000_t098_score
C - - - - - 0x00411C 01:810C: 4C C1 83  JMP loc_83C1
bra_810F:
C - - - - - 0x00411F 01:810F: A9 40     LDA #$40
C - - - - - 0x004121 01:8111: 85 3C     STA ram_hp_player
C - - - - - 0x004123 01:8113: 4C A1 80  JMP loc_80A1



ofs_048_8116_0C:
C - - J - - 0x004126 01:8116: A5 32     LDA ram_blk_id_hi
C - - - - - 0x004128 01:8118: C9 01     CMP #$01    ; Clock Tower
C - - - - - 0x00412A 01:811A: D0 02     BNE bra_811E
; A = 01
C - - - - - 0x00412C 01:811C: 85 2F     STA ram_002F_flag
bra_811E:
C - - - - - 0x00412E 01:811E: A4 32     LDY ram_blk_id_hi
C - - - - - 0x004130 01:8120: B9 71 81  LDA tbl_8171,Y
C - - - - - 0x004133 01:8123: F0 3A     BEQ bra_815F
C - - - - - 0x004135 01:8125: C9 02     CMP #$02
C - - - - - 0x004137 01:8127: F0 23     BEQ bra_814C
C - - - - - 0x004139 01:8129: C0 01     CPY #$01
C - - - - - 0x00413B 01:812B: D0 06     BNE bra_8133
C - - - - - 0x00413D 01:812D: A5 33     LDA ram_blk_id_lo
C - - - - - 0x00413F 01:812F: C9 05     CMP #$05
C - - - - - 0x004141 01:8131: F0 35     BEQ bra_8168
bra_8133:
C - - - - - 0x004143 01:8133: AD F6 07  LDA ram_quest
C - - - - - 0x004146 01:8136: D0 27     BNE bra_815F    ; if 2nd quest
C - - - - - 0x004148 01:8138: 20 93 E5  JSR sub_0x03E5A3_check_for_special_name
C - - - - - 0x00414B 01:813B: B0 22     BCS bra_815F
C - - - - - 0x00414D 01:813D: A4 32     LDY ram_blk_id_hi
C - - - - - 0x00414F 01:813F: C0 07     CPY #$07    ; Caves of Alucard
C - - - - - 0x004151 01:8141: D0 06     BNE bra_8149
C - - - - - 0x004153 01:8143: A5 33     LDA ram_blk_id_lo
C - - - - - 0x004155 01:8145: C9 06     CMP #$06
C - - - - - 0x004157 01:8147: F0 16     BEQ bra_815F
bra_8149:
C - - - - - 0x004159 01:8149: 4C A6 80  JMP loc_80A6
bra_814C:
C - - - - - 0x00415C 01:814C: A5 32     LDA ram_blk_id_hi
C - - - - - 0x00415E 01:814E: C9 0E     CMP #$0E    ; Final Clock Tower
C - - - - - 0x004160 01:8150: D0 04     BNE bra_8156
C - - - - - 0x004162 01:8152: A9 0C     LDA #con_0018_0C
C - - - - - 0x004164 01:8154: D0 02     BNE bra_8158    ; jmp
bra_8156:
C - - - - - 0x004166 01:8156: A9 08     LDA #con_0018_08
bra_8158:
C - - - - - 0x004168 01:8158: 85 18     STA ram_main_script
C - - - - - 0x00416A 01:815A: A9 00     LDA #$00
C - - - - - 0x00416C 01:815C: 85 19     STA ram_0019_subscript
C - - - - - 0x00416E 01:815E: 60        RTS
bra_815F:
C - - - - - 0x00416F 01:815F: A9 1E     LDA #con_002A_1E
C - - - - - 0x004171 01:8161: 85 2A     STA ram_002A_script
C - - - - - 0x004173 01:8163: A9 00     LDA #$00
C - - - - - 0x004175 01:8165: 85 6B     STA ram_006B_subscript
C - - - - - 0x004177 01:8167: 60        RTS
bra_8168:
C - - - - - 0x004178 01:8168: A9 18     LDA #con_002A_18
C - - - - - 0x00417A 01:816A: 85 2A     STA ram_002A_script
C - - - - - 0x00417C 01:816C: A9 02     LDA #$02
C - - - - - 0x00417E 01:816E: 85 6B     STA ram_006B_subscript
C - - - - - 0x004180 01:8170: 60        RTS



tbl_8171:
- D 0 - - - 0x004181 01:8171: 02        .byte $02   ; 00 Warakiya
- D 0 - - - 0x004182 01:8172: 01        .byte $01   ; 01 Clock Tower
- D 0 - - - 0x004183 01:8173: 01        .byte $01   ; 02 Forest of Madness
- D 0 - - - 0x004184 01:8174: 00        .byte $00   ; 03 Ship of Fools
- D 0 - - - 0x004185 01:8175: 00        .byte $00   ; 04 Tower of Terror
- D 0 - - - 0x004186 01:8176: 00        .byte $00   ; 05 Causeway
- D 0 - - - 0x004187 01:8177: 00        .byte $00   ; 06 Murky Marshes
- D 0 - - - 0x004188 01:8178: 01        .byte $01   ; 07 Caves of Alucard
- D 0 - - - 0x004189 01:8179: 00        .byte $00   ; 08 Sunken City
- D 0 - - - 0x00418A 01:817A: 00        .byte $00   ; 09 Catacombs
- D 0 - - - 0x00418B 01:817B: 00        .byte $00   ; 0A Mountain Range
- D 0 - - - 0x00418C 01:817C: 00        .byte $00   ; 0B Castle Courtyard
- D 0 - - - 0x00418D 01:817D: 00        .byte $00   ; 0C Main Hall
- D 0 - - - 0x00418E 01:817E: 00        .byte $00   ; 0D Castle Tower
- D 0 - - - 0x00418F 01:817F: 02        .byte $02   ; 0E Final Clock Tower



; bzk garbage
- - - - - - 0x004190 01:8180: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0041A0 01:8190: 00        .byte $00   ; 



ofs_048_8191_0E:
C - - J - - 0x0041A1 01:8191: A9 04     LDA #$04
C - - - - - 0x0041A3 01:8193: 85 00     STA ram_0000_t062
C - - - - - 0x0041A5 01:8195: A9 00     LDA #$00
C - - - - - 0x0041A7 01:8197: 85 01     STA ram_0001_t012
C - - - - - 0x0041A9 01:8199: A2 01     LDX #$01
loc_819B:
C D 0 - - - 0x0041AB 01:819B: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0041AE 01:819E: F0 1A     BEQ bra_81BA
C - - - - - 0x0041B0 01:81A0: A4 32     LDY ram_blk_id_hi
C - - - - - 0x0041B2 01:81A2: C0 02     CPY #$02    ; Forest of Madness
C - - - - - 0x0041B4 01:81A4: D0 06     BNE bra_81AC
C - - - - - 0x0041B6 01:81A6: 20 6F 96  JSR sub_966F
C - - - - - 0x0041B9 01:81A9: 4C 63 82  JMP loc_8263
bra_81AC:
C - - - - - 0x0041BC 01:81AC: B9 6F 82  LDA tbl_826F,Y
C - - - - - 0x0041BF 01:81AF: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0041C2 01:81B2: A9 03     LDA #$03
C - - - - - 0x0041C4 01:81B4: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0041C7 01:81B7: 4C 63 82  JMP loc_8263
bra_81BA:
C - - - - - 0x0041CA 01:81BA: A5 00     LDA ram_0000_t062
C - - - - - 0x0041CC 01:81BC: C9 01     CMP #$01
C - - - - - 0x0041CE 01:81BE: D0 03     BNE bra_81C3
C - - - - - 0x0041D0 01:81C0: 4C 45 82  JMP loc_8245
bra_81C3:
C - - - - - 0x0041D3 01:81C3: A5 01     LDA ram_0001_t012
C - - - - - 0x0041D5 01:81C5: D0 46     BNE bra_820D
C - - - - - 0x0041D7 01:81C7: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0041DA 01:81CA: F0 04     BEQ bra_81D0
C - - - - - 0x0041DC 01:81CC: A9 02     LDA #$02
C - - - - - 0x0041DE 01:81CE: D0 02     BNE bra_81D2    ; jmp
bra_81D0:
C - - - - - 0x0041E0 01:81D0: A9 01     LDA #$01
bra_81D2:
C - - - - - 0x0041E2 01:81D2: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0041E5 01:81D5: AC 4E 05  LDY ram_plr_id
C - - - - - 0x0041E8 01:81D8: C8        INY
C - - - - - 0x0041E9 01:81D9: 98        TYA
C - - - - - 0x0041EA 01:81DA: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0041ED 01:81DD: AD 00 04  LDA ram_plr_anim_id
C - - - - - 0x0041F0 01:81E0: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0041F3 01:81E3: AD 8C 04  LDA ram_plr_type
C - - - - - 0x0041F6 01:81E6: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0041F9 01:81E9: AD A8 04  LDA ram_plr_facing
C - - - - - 0x0041FC 01:81EC: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0041FF 01:81EF: A9 40     LDA #con_obj_flag_40
C - - - - - 0x004201 01:81F1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x004204 01:81F4: AD 38 04  LDA ram_plr_pos_X_lo
C - - - - - 0x004207 01:81F7: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x00420A 01:81FA: AD 1C 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x00420D 01:81FD: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x004210 01:8200: AD 70 04  LDA ram_plr_flags
C - - - - - 0x004213 01:8203: 09 80     ORA #con_obj_flag_not_visible
C - - - - - 0x004215 01:8205: 8D 70 04  STA ram_plr_flags
C - - - - - 0x004218 01:8208: E6 01     INC ram_0001_t012
C - - - - - 0x00421A 01:820A: 4C 63 82  JMP loc_8263
bra_820D:
C - - - - - 0x00421D 01:820D: A4 3A     LDY ram_partner
C - - - - - 0x00421F 01:820F: C0 FF     CPY #$FF
C - - - - - 0x004221 01:8211: F0 50     BEQ bra_8263    ; no partner
C - - - - - 0x004223 01:8213: AD 4E 05  LDA ram_plr_id
C - - - - - 0x004226 01:8216: D0 04     BNE bra_821C
C - - - - - 0x004228 01:8218: A9 02     LDA #$02
C - - - - - 0x00422A 01:821A: D0 02     BNE bra_821E    ; jmp
bra_821C:
C - - - - - 0x00422C 01:821C: A9 01     LDA #$01
bra_821E:
C - - - - - 0x00422E 01:821E: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x004231 01:8221: AC 4E 05  LDY ram_plr_id
C - - - - - 0x004234 01:8224: D0 04     BNE bra_822A
C - - - - - 0x004236 01:8226: A4 3A     LDY ram_partner
C - - - - - 0x004238 01:8228: D0 02     BNE bra_822C
bra_822A:
C - - - - - 0x00423A 01:822A: A4 39     LDY ram_0039
bra_822C:
C - - - - - 0x00423C 01:822C: B9 86 82  LDA tbl_8286,Y
C - - - - - 0x00423F 01:822F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x004242 01:8232: B9 8A 82  LDA tbl_828A,Y
C - - - - - 0x004245 01:8235: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x004248 01:8238: C8        INY
C - - - - - 0x004249 01:8239: 98        TYA
C - - - - - 0x00424A 01:823A: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00424D 01:823D: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x00424F 01:823F: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x004252 01:8242: 4C 63 82  JMP loc_8263



loc_8245:
C D 0 - - - 0x004255 01:8245: A5 32     LDA ram_blk_id_hi
C - - - - - 0x004257 01:8247: C9 02     CMP #$02    ; Forest of Madness
C - - - - - 0x004259 01:8249: D0 18     BNE bra_8263
C - - - - - 0x00425B 01:824B: A9 06     LDA #$06
C - - - - - 0x00425D 01:824D: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x004260 01:8250: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x004262 01:8252: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x004265 01:8255: A9 00     LDA #$00
C - - - - - 0x004267 01:8257: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00426A 01:825A: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x00426D 01:825D: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x004270 01:8260: 9D 1D 06  STA ram_061D_obj,X
loc_8263:
bra_8263:
C D 0 - - - 0x004273 01:8263: E8        INX
C - - - - - 0x004274 01:8264: C6 00     DEC ram_0000_t062
C - - - - - 0x004276 01:8266: F0 03     BEQ bra_826B
C - - - - - 0x004278 01:8268: 4C 9B 81  JMP loc_819B
bra_826B:
C - - - - - 0x00427B 01:826B: EE ED 07  INC ram_07ED
C - - - - - 0x00427E 01:826E: 60        RTS



tbl_826F:
- - - - - - 0x00427F 01:826F: 00        .byte $00   ; 00 
- D 0 - - - 0x004280 01:8270: 03        .byte $03   ; 01 
- - - - - - 0x004281 01:8271: 02        .byte $02   ; 02 
- - - - - - 0x004282 01:8272: 00        .byte $00   ; 03 
- - - - - - 0x004283 01:8273: 00        .byte $00   ; 04 
- - - - - - 0x004284 01:8274: 00        .byte $00   ; 05 
- - - - - - 0x004285 01:8275: 00        .byte $00   ; 06 
- D 0 - - - 0x004286 01:8276: 04        .byte $04   ; 07 



ofs_048_8277_0F:
C - - J - - 0x004287 01:8277: A9 00     LDA #$00
C - - - - - 0x004289 01:8279: 8D ED 07  STA ram_07ED
C - - - - - 0x00428C 01:827C: 8D F3 07  STA ram_07F3
C - - - - - 0x00428F 01:827F: EE EC 07  INC ram_07EC
; bzk optimize, JMP
C - - - - - 0x004292 01:8282: 20 DA E2  JSR sub_0x03E2EA_prg_bankswitch_dpcm_2
C - - - - - 0x004295 01:8285: 60        RTS



tbl_8286:
- D 0 - - - 0x004296 01:8286: 02        .byte $02   ; 00 
- D 0 - - - 0x004297 01:8287: 02        .byte $02   ; 01 
- D 0 - - - 0x004298 01:8288: 02        .byte $02   ; 02 
- - - - - - 0x004299 01:8289: 02        .byte $02   ; 03 



tbl_828A:
- D 0 - - - 0x00429A 01:828A: 00        .byte con_obj_type_00   ; 00 
- D 0 - - - 0x00429B 01:828B: 02        .byte con_obj_type_02   ; 01 
- D 0 - - - 0x00429C 01:828C: 04        .byte con_obj_type_04   ; 02 
- - - - - - 0x00429D 01:828D: 06        .byte con_obj_type_06   ; 03 



sub_0x00429E:
C - - - - - 0x00429E 01:828E: A0 02     LDY #$02
; bzk optimize, JMP
C - - - - - 0x0042A0 01:8290: 20 0C 89  JSR sub_890C_jump_to_pointers
C - - - - - 0x0042A3 01:8293: 60        RTS



_off050_8294_02:
- D 0 - I - 0x0042A4 01:8294: A0 82     .word ofs_049_82A0_00
- D 0 - I - 0x0042A6 01:8296: B0 82     .word ofs_049_82B0_01
- D 0 - I - 0x0042A8 01:8298: CC 82     .word ofs_049_82CC_02
- D 0 - I - 0x0042AA 01:829A: 5B 83     .word ofs_049_835B_03
- D 0 - I - 0x0042AC 01:829C: 8A 83     .word ofs_049_838A_04
- D 0 - I - 0x0042AE 01:829E: 93 83     .word ofs_049_8393_05



ofs_049_82A0_00:
C - - J - - 0x0042B0 01:82A0: A5 32     LDA ram_blk_id_hi
C - - - - - 0x0042B2 01:82A2: C9 02     CMP #$02    ; Forest of Madness
C - - - - - 0x0042B4 01:82A4: D0 01     BNE bra_82A7
C - - - - - 0x0042B6 01:82A6: 60        RTS
bra_82A7:
C - - - - - 0x0042B7 01:82A7: EE ED 07  INC ram_07ED
C - - - - - 0x0042BA 01:82AA: A9 00     LDA #$00
C - - - - - 0x0042BC 01:82AC: 8D F0 07  STA ram_07F0
C - - - - - 0x0042BF 01:82AF: 60        RTS



ofs_049_82B0_01:
C - - J - - 0x0042C0 01:82B0: A4 32     LDY ram_blk_id_hi
C - - - - - 0x0042C2 01:82B2: B9 BB 82  LDA tbl_82BB,Y
C - - - - - 0x0042C5 01:82B5: 8D EF 07  STA ram_07EF
C - - - - - 0x0042C8 01:82B8: 4C C3 82  JMP loc_82C3



tbl_82BB:
- - - - - - 0x0042CB 01:82BB: 00        .byte $00   ; 00 Warakiya
- D 0 - - - 0x0042CC 01:82BC: 01        .byte $01   ; 01 Clock Tower
- D 0 - - - 0x0042CD 01:82BD: 02        .byte $02   ; 02 Forest of Madness
- - - - - - 0x0042CE 01:82BE: 00        .byte $00   ; 03 Ship of Fools
- - - - - - 0x0042CF 01:82BF: 00        .byte $00   ; 04 Tower of Terror
- - - - - - 0x0042D0 01:82C0: 00        .byte $00   ; 05 Causeway
- - - - - - 0x0042D1 01:82C1: 00        .byte $00   ; 06 Murky Marshes
- D 0 - - - 0x0042D2 01:82C2: 03        .byte $03   ; 07 Caves of Alucard



loc_82C3:
; bzk optimize, move to where one of JMPs is
C D 0 - - - 0x0042D3 01:82C3: A9 01     LDA #$01
C - - - - - 0x0042D5 01:82C5: 85 B5     STA ram_00B5
C - - - - - 0x0042D7 01:82C7: A9 00     LDA #$00
C - - - - - 0x0042D9 01:82C9: 85 B4     STA ram_00B4
C - - - - - 0x0042DB 01:82CB: 60        RTS



loc_82CC:
ofs_049_82CC_02:
C D 0 J - - 0x0042DC 01:82CC: A5 B4     LDA ram_00B4
C - - - - - 0x0042DE 01:82CE: C9 FF     CMP #$FF
C - - - - - 0x0042E0 01:82D0: F0 38     BEQ bra_830A_FF
C - - - - - 0x0042E2 01:82D2: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x0042E4 01:82D4: 48        PHA
C - - - - - 0x0042E5 01:82D5: 20 1E 83  JSR sub_831E
C - - - - - 0x0042E8 01:82D8: AD EC 07  LDA ram_07EC
C - - - - - 0x0042EB 01:82DB: C9 02     CMP #$02
C - - - - - 0x0042ED 01:82DD: B0 14     BCS bra_82F3
C - - - - - 0x0042EF 01:82DF: 68        PLA
C - - - - - 0x0042F0 01:82E0: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x0042F2 01:82E2: A0 00     LDY #$00    ; decrease brightness
sub_82E4:
C - - - - - 0x0042F4 01:82E4: B9 1A 83  LDA tbl_831A,Y
C - - - - - 0x0042F7 01:82E7: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x0042F9 01:82E9: B9 1B 83  LDA tbl_831A + $01,Y
C - - - - - 0x0042FC 01:82EC: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x0042FE 01:82EE: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x004300 01:82F0: 4C 2F E6  JMP loc_0x03E63F_indirect_jump_custom_bank
bra_82F3:
C - - - - - 0x004303 01:82F3: 68        PLA
C - - - - - 0x004304 01:82F4: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x004306 01:82F6: 48        PHA
C - - - - - 0x004307 01:82F7: A0 02     LDY #$02    ; increase brightness
C - - - - - 0x004309 01:82F9: 20 E4 82  JSR sub_82E4
C - - - - - 0x00430C 01:82FC: 68        PLA
C - - - - - 0x00430D 01:82FD: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x00430F 01:82FF: A5 B4     LDA ram_00B4
C - - - - - 0x004311 01:8301: C9 05     CMP #$05
C - - - - - 0x004313 01:8303: D0 04     BNE bra_8309_RTS
C - - - - - 0x004315 01:8305: A9 FF     LDA #$FF
C - - - - - 0x004317 01:8307: 85 B4     STA ram_00B4
bra_8309_RTS:
C - - - - - 0x004319 01:8309: 60        RTS
bra_830A_FF:
C - - - - - 0x00431A 01:830A: A9 B0     LDA #$B0
C - - - - - 0x00431C 01:830C: 85 FF     STA ram_for_2000
C - - - - - 0x00431E 01:830E: EE ED 07  INC ram_07ED
C - - - - - 0x004321 01:8311: A9 00     LDA #$00
C - - - - - 0x004323 01:8313: 8D F1 07  STA ram_07F1
C - - - - - 0x004326 01:8316: 8D F2 07  STA ram_07F2
C - - - - - 0x004329 01:8319: 60        RTS



tbl_831A:
- D 0 - - - 0x00432A 01:831A: 74 8B     .word ofs_0x000B84_00_decrease_brightness
- D 0 - - - 0x00432C 01:831C: 70 8B     .word ofs_0x000B80_02_increase_brightness



sub_831E:
C - - - - - 0x00432E 01:831E: A0 00     LDY #$00    ; bzk optimize, always the same jump address
C - - - - - 0x004330 01:8320: B9 32 83  LDA tbl_8332,Y
C - - - - - 0x004333 01:8323: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x004335 01:8325: B9 33 83  LDA tbl_8332 + $01,Y
C - - - - - 0x004338 01:8328: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x00433A 01:832A: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x00433C 01:832C: 20 2F E6  JSR sub_0x03E63F_indirect_jump_custom_bank
C - - - - - 0x00433F 01:832F: 4C 34 83  JMP loc_8334



tbl_8332:
; bzk optimize
- D 0 - - - 0x004342 01:8332: 2C 85     .word ofs_0x00053C_update_background_and_sprite_palette



loc_8334:
C D 0 - - - 0x004344 01:8334: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x004346 01:8336: 38        SEC
C - - - - - 0x004347 01:8337: E9 19     SBC #$19
C - - - - - 0x004349 01:8339: AA        TAX
C - - - - - 0x00434A 01:833A: A0 00     LDY #$00
C - - - - - 0x00434C 01:833C: B9 69 9D  LDA tbl_9D69_sprite_palette,Y
C - - - - - 0x00434F 01:833F: 85 00     STA ram_0000_t023_data
C - - - - - 0x004351 01:8341: B9 6A 9D  LDA tbl_9D69_sprite_palette + $01,Y
C - - - - - 0x004354 01:8344: 85 01     STA ram_0000_t023_data + $01
C - - - - - 0x004356 01:8346: A0 02     LDY #$02
loc_8348_loop:
C D 0 - - - 0x004358 01:8348: B1 00     LDA (ram_0000_t023_data),Y
C - - - - - 0x00435A 01:834A: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x00435D 01:834D: C9 FF     CMP #$FF
C - - - - - 0x00435F 01:834F: F0 04     BEQ bra_8355_RTS
C - - - - - 0x004361 01:8351: C8        INY
C - - - - - 0x004362 01:8352: 4C 48 83  JMP loc_8348_loop
bra_8355_RTS:
C - - - - - 0x004365 01:8355: 60        RTS



sub_8356_write_to_buffer_and_INX:
; bzk optimize, same as 0x0332CC, move to bank FF
C - - - - - 0x004366 01:8356: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x004369 01:8359: E8        INX
C - - - - - 0x00436A 01:835A: 60        RTS



ofs_049_835B_03:
C - - J - - 0x00436B 01:835B: A9 04     LDA #$04
C - - - - - 0x00436D 01:835D: 8D EF 07  STA ram_07EF
C - - - - - 0x004370 01:8360: A9 00     LDA #$00
C - - - - - 0x004372 01:8362: 85 00     STA ram_0000_t061
C - - - - - 0x004374 01:8364: A2 01     LDX #$01
bra_8366_loop:
C - - - - - 0x004376 01:8366: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x004379 01:8369: F0 02     BEQ bra_836D
C - - - - - 0x00437B 01:836B: E6 00     INC ram_0000_t061
bra_836D:
C - - - - - 0x00437D 01:836D: E8        INX
C - - - - - 0x00437E 01:836E: E0 0D     CPX #$0D
C - - - - - 0x004380 01:8370: D0 F4     BNE bra_8366_loop
C - - - - - 0x004382 01:8372: AD F0 07  LDA ram_07F0
C - - - - - 0x004385 01:8375: C5 00     CMP ram_0000_t061
C - - - - - 0x004387 01:8377: 90 10     BCC bra_8389_RTS
C - - - - - 0x004389 01:8379: EE ED 07  INC ram_07ED
C - - - - - 0x00438C 01:837C: A9 00     LDA #$00
C - - - - - 0x00438E 01:837E: 8D EF 07  STA ram_07EF
C - - - - - 0x004391 01:8381: 8D F0 07  STA ram_07F0
C - - - - - 0x004394 01:8384: A9 01     LDA #$01
C - - - - - 0x004396 01:8386: 8D F3 07  STA ram_07F3
bra_8389_RTS:
C - - - - - 0x004399 01:8389: 60        RTS



ofs_048_838A_01:
ofs_048_838A_03:
ofs_048_838A_06:
ofs_048_838A_08:
ofs_048_838A_0B:
ofs_049_838A_04:
C - - J - - 0x00439A 01:838A: CE F3 07  DEC ram_07F3
C - - - - - 0x00439D 01:838D: D0 03     BNE bra_8392_RTS
C - - - - - 0x00439F 01:838F: EE ED 07  INC ram_07ED
bra_8392_RTS:
C - - - - - 0x0043A2 01:8392: 60        RTS



ofs_049_8393_05:
C - - J - - 0x0043A3 01:8393: A9 1D     LDA #con__chr_bank + $1D
C - - - - - 0x0043A5 01:8395: 85 49     STA ram_chr_bank_5123
C - - - - - 0x0043A7 01:8397: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x0043AA 01:839A: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x0043AC 01:839C: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x0043AE 01:839E: A9 6F     LDA #con__chr_bank + $6F
C - - - - - 0x0043B0 01:83A0: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x0043B2 01:83A2: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
C - - - - - 0x0043B5 01:83A5: 20 81 91  JSR sub_9181
C - - - - - 0x0043B8 01:83A8: A9 00     LDA #$00
C - - - - - 0x0043BA 01:83AA: 8D ED 07  STA ram_07ED
C - - - - - 0x0043BD 01:83AD: EE EC 07  INC ram_07EC
C - - - - - 0x0043C0 01:83B0: A9 00     LDA #$00
C - - - - - 0x0043C2 01:83B2: 85 72     STA ram_0072_chr_banks_config
C - - - - - 0x0043C4 01:83B4: A9 80     LDA #con_irq_80
C - - - - - 0x0043C6 01:83B6: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x0043C8 01:83B8: A9 6B     LDA #con_music_dialog
; bzk optimize, JMP
C - - - - - 0x0043CA 01:83BA: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0043CD 01:83BD: 60        RTS



loc_83BE_play_sound:
C D 0 - - - 0x0043CE 01:83BE: 20 5F E2  JSR sub_0x03E26F_play_sound
loc_83C1:
C D 0 - - - 0x0043D1 01:83C1: A5 00     LDA ram_0000_t098_score
C - - - - - 0x0043D3 01:83C3: 85 01     STA ram_0000_t046_add + $01
C - - - - - 0x0043D5 01:83C5: A9 00     LDA #$00
C - - - - - 0x0043D7 01:83C7: 85 02     STA ram_0000_t046_add + $02
C - - - - - 0x0043D9 01:83C9: 85 03     STA ram_0000_t046_add + $03
; bzk optimize, JMP
C - - - - - 0x0043DB 01:83CB: 20 77 E7  JSR sub_0x03E787_add_points
C - - - - - 0x0043DE 01:83CE: 60        RTS



sub_0x0043DF:
C - - - - - 0x0043DF 01:83CF: A0 04     LDY #$04
; bzk optimize, JMP
C - - - - - 0x0043E1 01:83D1: 20 0C 89  JSR sub_890C_jump_to_pointers
C - - - - - 0x0043E4 01:83D4: 60        RTS



_off050_83D5_04:
- D 0 - I - 0x0043E5 01:83D5: DD 83     .word ofs_050_83DD_00
- D 0 - I - 0x0043E7 01:83D7: FD 83     .word ofs_050_83FD_01
- D 0 - I - 0x0043E9 01:83D9: 4A 84     .word ofs_050_844A_02
- D 0 - I - 0x0043EB 01:83DB: 4D 84     .word ofs_050_844D_03



ofs_050_83DD_00:
C - - J - - 0x0043ED 01:83DD: 20 31 89  JSR sub_8931_clear_obj_data
C - - - - - 0x0043F0 01:83E0: A9 0B     LDA #$0B
C - - - - - 0x0043F2 01:83E2: 85 00     STA ram_0000_t060
C - - - - - 0x0043F4 01:83E4: A2 01     LDX #$01
bra_83E6_loop:
C - - - - - 0x0043F6 01:83E6: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0043F9 01:83E9: C9 01     CMP #$01
C - - - - - 0x0043FB 01:83EB: D0 07     BNE bra_83F4
C - - - - - 0x0043FD 01:83ED: 8A        TXA
C - - - - - 0x0043FE 01:83EE: 8D F1 07  STA ram_07F1
C - - - - - 0x004401 01:83F1: 4C F9 83  JMP loc_83F9
bra_83F4:
C - - - - - 0x004404 01:83F4: E8        INX
C - - - - - 0x004405 01:83F5: C6 00     DEC ram_0000_t060
C - - - - - 0x004407 01:83F7: D0 ED     BNE bra_83E6_loop
loc_83F9:
C D 0 - - - 0x004409 01:83F9: EE ED 07  INC ram_07ED
C - - - - - 0x00440C 01:83FC: 60        RTS



ofs_050_83FD_01:
C - - J - - 0x00440D 01:83FD: A9 0B     LDA #$0B
C - - - - - 0x00440F 01:83FF: 85 00     STA ram_0000_t05F
C - - - - - 0x004411 01:8401: A2 01     LDX #$01
bra_8403_loop:
C - - - - - 0x004413 01:8403: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x004416 01:8406: C9 02     CMP #$02
C - - - - - 0x004418 01:8408: D0 2B     BNE bra_8435
C - - - - - 0x00441A 01:840A: 86 01     STX ram_0001_t028
C - - - - - 0x00441C 01:840C: AC F1 07  LDY ram_07F1
C - - - - - 0x00441F 01:840F: AD 4E 05  LDA ram_plr_id
C - - - - - 0x004422 01:8412: F0 05     BEQ bra_8419
C - - - - - 0x004424 01:8414: 8A        TXA
C - - - - - 0x004425 01:8415: A8        TAY
C - - - - - 0x004426 01:8416: AE F1 07  LDX ram_07F1
bra_8419:
C - - - - - 0x004429 01:8419: B9 1C 04  LDA ram_obj_pos_Y_lo,Y
C - - - - - 0x00442C 01:841C: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x00442F 01:841F: B9 38 04  LDA ram_obj_pos_X_lo,Y
C - - - - - 0x004432 01:8422: 18        CLC
C - - - - - 0x004433 01:8423: 69 10     ADC #$10
C - - - - - 0x004435 01:8425: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x004438 01:8428: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00443B 01:842B: 29 7F     AND #con_obj_flag_not_visible ^ $FF
C - - - - - 0x00443D 01:842D: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x004440 01:8430: A6 01     LDX ram_0001_t028
C - - - - - 0x004442 01:8432: 4C 3A 84  JMP loc_843A
bra_8435:
C - - - - - 0x004445 01:8435: E8        INX
C - - - - - 0x004446 01:8436: C6 00     DEC ram_0000_t05F
C - - - - - 0x004448 01:8438: D0 C9     BNE bra_8403_loop
loc_843A:
C D 0 - - - 0x00444A 01:843A: EE ED 07  INC ram_07ED
C - - - - - 0x00444D 01:843D: A9 00     LDA #$00
C - - - - - 0x00444F 01:843F: 8D F3 07  STA ram_07F3
C - - - - - 0x004452 01:8442: A9 06     LDA #$06
C - - - - - 0x004454 01:8444: 8D EF 07  STA ram_07EF
C - - - - - 0x004457 01:8447: 4C C3 82  JMP loc_82C3



ofs_050_844A_02:    ; bzk optimize
C - - J - - 0x00445A 01:844A: 4C CC 82  JMP loc_82CC



ofs_050_844D_03:
C - - J - - 0x00445D 01:844D: AD EF 07  LDA ram_07EF
C - - - - - 0x004460 01:8450: D0 0B     BNE bra_845D_RTS
C - - - - - 0x004462 01:8452: EE EC 07  INC ram_07EC
C - - - - - 0x004465 01:8455: A9 00     LDA #$00
C - - - - - 0x004467 01:8457: 8D ED 07  STA ram_07ED
C - - - - - 0x00446A 01:845A: 8D F3 07  STA ram_07F3
bra_845D_RTS:
C - - - - - 0x00446D 01:845D: 60        RTS



sub_0x00446E_partner_cutscene_handler:
C - - - - - 0x00446E 01:845E: A0 06     LDY #$06
; bzk optimize, JMP
C - - - - - 0x004470 01:8460: 20 0C 89  JSR sub_890C_jump_to_pointers
C - - - - - 0x004473 01:8463: 60        RTS



_off050_8464_06_partner_cutscene:
- D 0 - I - 0x004474 01:8464: B2 84     .word ofs_051_84B2_00
- D 0 - I - 0x004476 01:8466: C6 84     .word ofs_051_84C6_01
- D 0 - I - 0x004478 01:8468: 31 85     .word ofs_051_8531_02
- D 0 - I - 0x00447A 01:846A: 91 85     .word ofs_051_8591_03_partner_intro_1
- D 0 - I - 0x00447C 01:846C: F1 85     .word ofs_051_85F1_04
- D 0 - I - 0x00447E 01:846E: 09 86     .word ofs_051_8609_05
- D 0 - I - 0x004480 01:8470: 31 85     .word ofs_051_8531_06
- D 0 - I - 0x004482 01:8472: 4D 85     .word ofs_051_854D_07_partner_intro_2
- D 0 - I - 0x004484 01:8474: F1 85     .word ofs_051_85F1_08
- D 0 - I - 0x004486 01:8476: 09 86     .word ofs_051_8609_09
- D 0 - I - 0x004488 01:8478: 31 85     .word ofs_051_8531_0A
- D 0 - I - 0x00448A 01:847A: 56 85     .word ofs_051_8556_0B_what_will_you_do
- D 0 - I - 0x00448C 01:847C: 6A 86     .word ofs_051_866A_0C
- D 0 - I - 0x00448E 01:847E: 76 86     .word ofs_051_8676_0D
- D 0 - I - 0x004490 01:8480: E4 86     .word ofs_051_86E4_0E
- D 0 - I - 0x004492 01:8482: 09 86     .word ofs_051_8609_0F
- D 0 - I - 0x004494 01:8484: 31 85     .word ofs_051_8531_10
- D 0 - I - 0x004496 01:8486: 78 85     .word ofs_051_8578_11_partner_take_or_leave
- D 0 - I - 0x004498 01:8488: F1 85     .word ofs_051_85F1_12
- D 0 - I - 0x00449A 01:848A: 09 86     .word ofs_051_8609_13
- D 0 - I - 0x00449C 01:848C: 0E 87     .word ofs_051_870E_14
- D 0 - I - 0x00449E 01:848E: 3E 87     .word ofs_051_873E_15
- D 0 - I - 0x0044A0 01:8490: 5A 87     .word ofs_051_875A_16
- D 0 - I - 0x0044A2 01:8492: 74 87     .word ofs_051_8774_17
- D 0 - I - 0x0044A4 01:8494: AE 87     .word ofs_051_87AE_18
- D 0 - I - 0x0044A6 01:8496: 14 85     .word ofs_051_8514_19
- D 0 - I - 0x0044A8 01:8498: 5F 85     .word ofs_051_855F_1A_swap_partner
- D 0 - I - 0x0044AA 01:849A: F1 85     .word ofs_051_85F1_1B
- D 0 - I - 0x0044AC 01:849C: 09 86     .word ofs_051_8609_1C
- D 0 - I - 0x0044AE 01:849E: F5 87     .word ofs_051_87F5_1D
- - - - - - 0x0044B0 01:84A0: 14 88     .word ofs_051_8814_1E
- D 0 - I - 0x0044B2 01:84A2: 1D 88     .word ofs_051_881D_1F
- D 0 - I - 0x0044B4 01:84A4: 36 88     .word ofs_051_8836_20
- D 0 - I - 0x0044B6 01:84A6: 72 88     .word ofs_051_8872_21
- D 0 - I - 0x0044B8 01:84A8: 9B 88     .word ofs_051_889B_22
- D 0 - I - 0x0044BA 01:84AA: DC 88     .word ofs_051_88DC_23
- D 0 - I - 0x0044BC 01:84AC: E0 88     .word ofs_051_88E0_24
- D 0 - I - 0x0044BE 01:84AE: F1 85     .word ofs_051_85F1_25
- D 0 - I - 0x0044C0 01:84B0: ED 88     .word ofs_051_88ED_26



ofs_051_84B2_00:
C - - J - - 0x0044C2 01:84B2: EE ED 07  INC ram_07ED
C - - - - - 0x0044C5 01:84B5: A9 07     LDA #$07
C - - - - - 0x0044C7 01:84B7: 8D F0 07  STA ram_07F0
C - - - - - 0x0044CA 01:84BA: A9 00     LDA #$00
C - - - - - 0x0044CC 01:84BC: 8D F2 07  STA ram_07F2
C - - - - - 0x0044CF 01:84BF: 8D F1 07  STA ram_07F1
C - - - - - 0x0044D2 01:84C2: 8D F3 07  STA ram_07F3
C - - - - - 0x0044D5 01:84C5: 60        RTS



ofs_051_84C6_01:
C - - J - - 0x0044D6 01:84C6: AD F3 07  LDA ram_07F3
C - - - - - 0x0044D9 01:84C9: C9 07     CMP #$07
C - - - - - 0x0044DB 01:84CB: B0 18     BCS bra_84E5
C - - - - - 0x0044DD 01:84CD: 29 01     AND #$01
C - - - - - 0x0044DF 01:84CF: D0 0A     BNE bra_84DB
C - - - - - 0x0044E1 01:84D1: A9 20     LDA #$20
C - - - - - 0x0044E3 01:84D3: 85 17     STA ram_0017_t000_ppu_addr_hi
C - - - - - 0x0044E5 01:84D5: A5 FF     LDA ram_for_2000
C - - - - - 0x0044E7 01:84D7: 09 01     ORA #$01
C - - - - - 0x0044E9 01:84D9: D0 08     BNE bra_84E3    ; jmp
bra_84DB:
C - - - - - 0x0044EB 01:84DB: A9 24     LDA #$24
C - - - - - 0x0044ED 01:84DD: 85 17     STA ram_0017_t000_ppu_addr_hi
C - - - - - 0x0044EF 01:84DF: A5 FF     LDA ram_for_2000
C - - - - - 0x0044F1 01:84E1: 29 FE     AND #$FE
bra_84E3:
C - - - - - 0x0044F3 01:84E3: 85 FF     STA ram_for_2000
bra_84E5:
C - - - - - 0x0044F5 01:84E5: AD F3 07  LDA ram_07F3
C - - - - - 0x0044F8 01:84E8: C9 07     CMP #$07
C - - - - - 0x0044FA 01:84EA: F0 08     BEQ bra_84F4
C - - - - - 0x0044FC 01:84EC: C9 08     CMP #$08
C - - - - - 0x0044FE 01:84EE: F0 18     BEQ bra_8508
; bzk optimize, JMP
C - - - - - 0x004500 01:84F0: 20 86 8D  JSR sub_8D86
C - - - - - 0x004503 01:84F3: 60        RTS
bra_84F4:
C - - - - - 0x004504 01:84F4: A9 24     LDA #$24
C - - - - - 0x004506 01:84F6: 85 17     STA ram_0017_t000_ppu_addr_hi
C - - - - - 0x004508 01:84F8: A5 FF     LDA ram_for_2000
C - - - - - 0x00450A 01:84FA: 29 FE     AND #$FE
C - - - - - 0x00450C 01:84FC: 85 FF     STA ram_for_2000
C - - - - - 0x00450E 01:84FE: CE F3 07  DEC ram_07F3
C - - - - - 0x004511 01:8501: 20 86 8D  JSR sub_8D86
C - - - - - 0x004514 01:8504: EE F3 07  INC ram_07F3
C - - - - - 0x004517 01:8507: 60        RTS
bra_8508:
C - - - - - 0x004518 01:8508: EE ED 07  INC ram_07ED
C - - - - - 0x00451B 01:850B: A9 00     LDA #$00
C - - - - - 0x00451D 01:850D: 8D F1 07  STA ram_07F1
C - - - - - 0x004520 01:8510: 8D F0 07  STA ram_07F0
C - - - - - 0x004523 01:8513: 60        RTS



ofs_051_8514_19:
C - - J - - 0x004524 01:8514: A2 01     LDX #$01
bra_8516_loop:
C - - - - - 0x004526 01:8516: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x004529 01:8519: F0 07     BEQ bra_8522
C - - - - - 0x00452B 01:851B: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00452E 01:851E: C9 03     CMP #$03
C - - - - - 0x004530 01:8520: F0 05     BEQ bra_8527
bra_8522:
C - - - - - 0x004532 01:8522: E8        INX
C - - - - - 0x004533 01:8523: E0 0D     CPX #$0D
C - - - - - 0x004535 01:8525: D0 EF     BNE bra_8516_loop
bra_8527:
C - - - - - 0x004537 01:8527: 88        DEY
C - - - - - 0x004538 01:8528: B9 2D 85  LDA tbl_852D,Y
C - - - - - 0x00453B 01:852B: D0 09     BNE bra_8536    ; jmp



tbl_852D:
- - - - - - 0x00453D 01:852D: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x00453E 01:852E: 0D        .byte $0D   ; 01 
- D 0 - - - 0x00453F 01:852F: 07        .byte $07   ; 02 
- - - - - - 0x004540 01:8530: 0E        .byte $0E   ; 03 



ofs_051_8531_02:
ofs_051_8531_06:
ofs_051_8531_0A:
ofs_051_8531_10:
C - - J - - 0x004541 01:8531: A4 32     LDY ram_blk_id_hi
C - - - - - 0x004543 01:8533: B9 45 85  LDA tbl_8545,Y
bra_8536:
C - - - - - 0x004546 01:8536: 8D EF 07  STA ram_07EF
C - - - - - 0x004549 01:8539: EE ED 07  INC ram_07ED
C - - - - - 0x00454C 01:853C: A9 00     LDA #$00
C - - - - - 0x00454E 01:853E: 8D F3 07  STA ram_07F3
C - - - - - 0x004551 01:8541: 8D F2 07  STA ram_07F2
C - - - - - 0x004554 01:8544: 60        RTS



tbl_8545:
- - - - - - 0x004555 01:8545: 00        .byte $00   ; 00 Warakiya
- D 0 - - - 0x004556 01:8546: 07        .byte $07   ; 01 Clock Tower
- D 0 - - - 0x004557 01:8547: 0D        .byte $0D   ; 02 Forest of Madness
- - - - - - 0x004558 01:8548: 00        .byte $00   ; 03 Ship of Fools
- - - - - - 0x004559 01:8549: 00        .byte $00   ; 04 Tower of Terror
- - - - - - 0x00455A 01:854A: 00        .byte $00   ; 05 Causeway
- - - - - - 0x00455B 01:854B: 00        .byte $00   ; 06 Murky Marshes
- D 0 - - - 0x00455C 01:854C: 0E        .byte $0E   ; 07 Caves of Alucard



ofs_051_854D_07_partner_intro_2:
C - - J - - 0x00455D 01:854D: A4 32     LDY ram_blk_id_hi
C - - - - - 0x00455F 01:854F: B9 D1 85  LDA tbl_85D1_partner_intro_2,Y
C - - - - - 0x004562 01:8552: A8        TAY
C - - - - - 0x004563 01:8553: 4C 97 85  JMP loc_8597_select_cutscene_text



ofs_051_8556_0B_what_will_you_do:
C - - J - - 0x004566 01:8556: A9 00     LDA #$00
C - - - - - 0x004568 01:8558: 8D EF 07  STA ram_07EF
C - - - - - 0x00456B 01:855B: A0 04     LDY #con_8A26_what_will_you_do
C - - - - - 0x00456D 01:855D: D0 38     BNE bra_8597    ; jmp



ofs_051_855F_1A_swap_partner:
C - - J - - 0x00456F 01:855F: A5 3A     LDA ram_partner
C - - - - - 0x004571 01:8561: C9 FF     CMP #$FF
C - - - - - 0x004573 01:8563: F0 09     BEQ bra_856E_no_partner
C - - - - - 0x004575 01:8565: A4 32     LDY ram_blk_id_hi
C - - - - - 0x004577 01:8567: B9 E9 85  LDA tbl_85E9_swap_partner,Y
C - - - - - 0x00457A 01:856A: A8        TAY
C - - - - - 0x00457B 01:856B: 4C 97 85  JMP loc_8597_select_cutscene_text
bra_856E_no_partner:
- - - - - - 0x00457E 01:856E: A9 03     LDA #$03
- - - - - - 0x004580 01:8570: 18        CLC
- - - - - - 0x004581 01:8571: 6D ED 07  ADC ram_07ED
- - - - - - 0x004584 01:8574: 8D ED 07  STA ram_07ED
- - - - - - 0x004587 01:8577: 60        RTS



ofs_051_8578_11_partner_take_or_leave:
C - - J - - 0x004588 01:8578: AD ED 07  LDA ram_07ED
C - - - - - 0x00458B 01:857B: 29 80     AND #$80
C - - - - - 0x00458D 01:857D: D0 09     BNE bra_8588
C - - - - - 0x00458F 01:857F: A4 32     LDY ram_blk_id_hi
C - - - - - 0x004591 01:8581: B9 D9 85  LDA tbl_85D9_partner_take,Y
C - - - - - 0x004594 01:8584: A8        TAY
C - - - - - 0x004595 01:8585: 4C 97 85  JMP loc_8597_select_cutscene_text
bra_8588:
C - - - - - 0x004598 01:8588: A4 32     LDY ram_blk_id_hi
C - - - - - 0x00459A 01:858A: B9 E1 85  LDA tbl_85E1_partner_leave,Y
C - - - - - 0x00459D 01:858D: A8        TAY
C - - - - - 0x00459E 01:858E: 4C 97 85  JMP loc_8597_select_cutscene_text



ofs_051_8591_03_partner_intro_1:
C - - J - - 0x0045A1 01:8591: A4 32     LDY ram_blk_id_hi
C - - - - - 0x0045A3 01:8593: B9 C9 85  LDA tbl_85C9_partner_intro_1,Y
C - - - - - 0x0045A6 01:8596: A8        TAY
bra_8597:
loc_8597_select_cutscene_text:
C D 0 - - - 0x0045A7 01:8597: AD F3 07  LDA ram_07F3
C - - - - - 0x0045AA 01:859A: D0 15     BNE bra_85B1
C - - - - - 0x0045AC 01:859C: 20 44 89  JSR sub_8944_partner_speech
C - - - - - 0x0045AF 01:859F: B0 14     BCS bra_85B5
C - - - - - 0x0045B1 01:85A1: A9 04     LDA #$04
C - - - - - 0x0045B3 01:85A3: 8D F3 07  STA ram_07F3
C - - - - - 0x0045B6 01:85A6: A5 28     LDA ram_btn_hold
C - - - - - 0x0045B8 01:85A8: 29 80     AND #con_btn_A
C - - - - - 0x0045BA 01:85AA: F0 05     BEQ bra_85B1
C - - - - - 0x0045BC 01:85AC: A9 02     LDA #$02
C - - - - - 0x0045BE 01:85AE: 8D F3 07  STA ram_07F3
bra_85B1:
C - - - - - 0x0045C1 01:85B1: CE F3 07  DEC ram_07F3
C - - - - - 0x0045C4 01:85B4: 60        RTS
bra_85B5:
C - - - - - 0x0045C5 01:85B5: A9 00     LDA #$00
C - - - - - 0x0045C7 01:85B7: 8D EF 07  STA ram_07EF
C - - - - - 0x0045CA 01:85BA: 8D F3 07  STA ram_07F3
C - - - - - 0x0045CD 01:85BD: 8D F1 07  STA ram_07F1
C - - - - - 0x0045D0 01:85C0: EE ED 07  INC ram_07ED
C - - - - - 0x0045D3 01:85C3: A9 FF     LDA #$FF
C - - - - - 0x0045D5 01:85C5: 8D F2 07  STA ram_07F2
C - - - - - 0x0045D8 01:85C8: 60        RTS



tbl_85C9_partner_intro_1:
- - - - - - 0x0045D9 01:85C9: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0045DA 01:85CA: 00        .byte con_8A26_Grant_intro_1   ; 01 Clock Tower
- D 0 - - - 0x0045DB 01:85CB: 0C        .byte con_8A26_Sypha_intro_1   ; 02 Forest of Madness
- - - - - - 0x0045DC 01:85CC: 00        .byte $00   ; 03 placeholder
- - - - - - 0x0045DD 01:85CD: 00        .byte $00   ; 04 placeholder
- - - - - - 0x0045DE 01:85CE: 00        .byte $00   ; 05 placeholder
- - - - - - 0x0045DF 01:85CF: 00        .byte $00   ; 06 placeholder
- D 0 - - - 0x0045E0 01:85D0: 14        .byte con_8A26_Alucard_intro_1   ; 07 Caves of Alucard



tbl_85D1_partner_intro_2:
- - - - - - 0x0045E1 01:85D1: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0045E2 01:85D2: 02        .byte con_8A26_Grant_intro_2   ; 01 Clock Tower
- D 0 - - - 0x0045E3 01:85D3: 0E        .byte con_8A26_Sypha_intro_2   ; 02 Forest of Madness
- - - - - - 0x0045E4 01:85D4: 00        .byte $00   ; 03 placeholder
- - - - - - 0x0045E5 01:85D5: 00        .byte $00   ; 04 placeholder
- - - - - - 0x0045E6 01:85D6: 00        .byte $00   ; 05 placeholder
- - - - - - 0x0045E7 01:85D7: 00        .byte $00   ; 06 placeholder
- D 0 - - - 0x0045E8 01:85D8: 16        .byte con_8A26_Alucard_intro_2   ; 07 Caves of Alucard



tbl_85D9_partner_take:
- - - - - - 0x0045E9 01:85D9: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0045EA 01:85DA: 06        .byte con_8A26_Grant_take   ; 01 Clock Tower
- D 0 - - - 0x0045EB 01:85DB: 10        .byte con_8A26_Sypha_take   ; 02 Forest of Madness
- - - - - - 0x0045EC 01:85DC: 00        .byte $00   ; 03 placeholder
- - - - - - 0x0045ED 01:85DD: 00        .byte $00   ; 04 placeholder
- - - - - - 0x0045EE 01:85DE: 00        .byte $00   ; 05 placeholder
- - - - - - 0x0045EF 01:85DF: 00        .byte $00   ; 06 placeholder
- D 0 - - - 0x0045F0 01:85E0: 18        .byte con_8A26_Alucard_take   ; 07 Caves of Alucard



tbl_85E1_partner_leave:
- - - - - - 0x0045F1 01:85E1: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0045F2 01:85E2: 08        .byte con_8A26_Grant_leave   ; 01 Clock Tower
- D 0 - - - 0x0045F3 01:85E3: 12        .byte con_8A26_Sypha_leave   ; 02 Forest of Madness
- - - - - - 0x0045F4 01:85E4: 00        .byte $00   ; 03 placeholder
- - - - - - 0x0045F5 01:85E5: 00        .byte $00   ; 04 placeholder
- - - - - - 0x0045F6 01:85E6: 00        .byte $00   ; 05 placeholder
- - - - - - 0x0045F7 01:85E7: 00        .byte $00   ; 06 placeholder
- D 0 - - - 0x0045F8 01:85E8: 1A        .byte con_8A26_Alucard_leave   ; 07 Caves of Alucard



tbl_85E9_swap_partner:
- - - - - - 0x0045F9 01:85E9: 00        .byte $00   ; 00 placeholder
- - - - - - 0x0045FA 01:85EA: 0A        .byte con_8A26_swap_partner   ; 01 Clock Tower
- D 0 - - - 0x0045FB 01:85EB: 0A        .byte con_8A26_swap_partner   ; 02 Forest of Madness
- - - - - - 0x0045FC 01:85EC: 00        .byte $00   ; 03 placeholder
- - - - - - 0x0045FD 01:85ED: 00        .byte $00   ; 04 placeholder
- - - - - - 0x0045FE 01:85EE: 00        .byte $00   ; 05 placeholder
- - - - - - 0x0045FF 01:85EF: 00        .byte $00   ; 06 placeholder
- D 0 - - - 0x004600 01:85F0: 0A        .byte con_8A26_swap_partner   ; 07 Caves of Alucard



ofs_051_85F1_04:
ofs_051_85F1_08:
ofs_051_85F1_12:
ofs_051_85F1_1B:
ofs_051_85F1_25:
C - - J - - 0x004601 01:85F1: AD F2 07  LDA ram_07F2
C - - - - - 0x004604 01:85F4: D0 04     BNE bra_85FA
C - - - - - 0x004606 01:85F6: EE ED 07  INC ram_07ED
C - - - - - 0x004609 01:85F9: 60        RTS
bra_85FA:
C - - - - - 0x00460A 01:85FA: CE F2 07  DEC ram_07F2
C - - - - - 0x00460D 01:85FD: A5 28     LDA ram_btn_hold
C - - - - - 0x00460F 01:85FF: 29 80     AND #con_btn_A
C - - - - - 0x004611 01:8601: F0 05     BEQ bra_8608_RTS
C - - - - - 0x004613 01:8603: A9 00     LDA #$00
C - - - - - 0x004615 01:8605: 8D F2 07  STA ram_07F2
bra_8608_RTS:
C - - - - - 0x004618 01:8608: 60        RTS



ofs_051_8609_05:
ofs_051_8609_09:
ofs_051_8609_0F:
ofs_051_8609_13:
ofs_051_8609_1C:
C - - J - - 0x004619 01:8609: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x00461B 01:860B: A9 02     LDA #$02
C - - - - - 0x00461D 01:860D: 85 03     STA ram_0003_t010
C - - - - - 0x00461F 01:860F: AD F1 07  LDA ram_07F1
; * 40
C - - - - - 0x004622 01:8612: 0A        ASL
C - - - - - 0x004623 01:8613: 0A        ASL
C - - - - - 0x004624 01:8614: 0A        ASL
C - - - - - 0x004625 01:8615: 0A        ASL
C - - - - - 0x004626 01:8616: 0A        ASL
C - - - - - 0x004627 01:8617: 0A        ASL
C - - - - - 0x004628 01:8618: 18        CLC
C - - - - - 0x004629 01:8619: 69 C6     ADC #< $20C6
C - - - - - 0x00462B 01:861B: 85 00     STA ram_0000_t05B_ppu_addr_lo
C - - - - - 0x00462D 01:861D: A9 20     LDA #> $20C6
C - - - - - 0x00462F 01:861F: 69 00     ADC #$00
C - - - - - 0x004631 01:8621: 85 01     STA ram_0001_t02E_ppu_addr_hi
bra_8623_loop:
C - - - - - 0x004633 01:8623: A9 01     LDA #$01
C - - - - - 0x004635 01:8625: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x004638 01:8628: A5 00     LDA ram_0000_t05B_ppu_addr_lo
C - - - - - 0x00463A 01:862A: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x00463D 01:862D: A5 01     LDA ram_0001_t02E_ppu_addr_hi
C - - - - - 0x00463F 01:862F: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x004642 01:8632: A9 14     LDA #$14
C - - - - - 0x004644 01:8634: 85 02     STA ram_0002_t024
C - - - - - 0x004646 01:8636: A9 00     LDA #$00
bra_8638_loop:
C - - - - - 0x004648 01:8638: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x00464B 01:863B: C6 02     DEC ram_0002_t024
C - - - - - 0x00464D 01:863D: D0 F9     BNE bra_8638_loop
C - - - - - 0x00464F 01:863F: A9 FF     LDA #$FF
C - - - - - 0x004651 01:8641: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x004654 01:8644: A5 00     LDA ram_0000_t05B_ppu_addr_lo
C - - - - - 0x004656 01:8646: 18        CLC
C - - - - - 0x004657 01:8647: 69 20     ADC #< $0020
C - - - - - 0x004659 01:8649: 85 00     STA ram_0000_t05B_ppu_addr_lo
C - - - - - 0x00465B 01:864B: A5 01     LDA ram_0001_t02E_ppu_addr_hi
C - - - - - 0x00465D 01:864D: 69 00     ADC #> $0020
C - - - - - 0x00465F 01:864F: 85 01     STA ram_0001_t02E_ppu_addr_hi
C - - - - - 0x004661 01:8651: C6 03     DEC ram_0003_t010
C - - - - - 0x004663 01:8653: D0 CE     BNE bra_8623_loop
C - - - - - 0x004665 01:8655: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x004667 01:8657: EE F1 07  INC ram_07F1
C - - - - - 0x00466A 01:865A: AD F1 07  LDA ram_07F1
C - - - - - 0x00466D 01:865D: C9 03     CMP #$03
C - - - - - 0x00466F 01:865F: D0 08     BNE bra_8669_RTS
C - - - - - 0x004671 01:8661: A9 00     LDA #$00
C - - - - - 0x004673 01:8663: 8D F1 07  STA ram_07F1
C - - - - - 0x004676 01:8666: EE ED 07  INC ram_07ED
bra_8669_RTS:
C - - - - - 0x004679 01:8669: 60        RTS



ofs_051_866A_0C:
C - - J - - 0x00467A 01:866A: EE ED 07  INC ram_07ED
C - - - - - 0x00467D 01:866D: AD ED 07  LDA ram_07ED
C - - - - - 0x004680 01:8670: 29 7F     AND #$7F
C - - - - - 0x004682 01:8672: 8D ED 07  STA ram_07ED
C - - - - - 0x004685 01:8675: 60        RTS



ofs_051_8676_0D:
C - - J - - 0x004686 01:8676: A5 26     LDA ram_btn_press
C - - - - - 0x004688 01:8678: 29 0C     AND #con_btns_UD
C - - - - - 0x00468A 01:867A: F0 0E     BEQ bra_868A
C - - - - - 0x00468C 01:867C: A9 72     LDA #con_dmc_whip
C - - - - - 0x00468E 01:867E: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x004691 01:8681: AD ED 07  LDA ram_07ED
C - - - - - 0x004694 01:8684: 18        CLC
C - - - - - 0x004695 01:8685: 69 80     ADC #$80
C - - - - - 0x004697 01:8687: 8D ED 07  STA ram_07ED
bra_868A:
C - - - - - 0x00469A 01:868A: 20 A8 86  JSR sub_86A8
C - - - - - 0x00469D 01:868D: A5 26     LDA ram_btn_press
C - - - - - 0x00469F 01:868F: 29 80     AND #con_btn_A
C - - - - - 0x0046A1 01:8691: D0 01     BNE bra_8694
C - - - - - 0x0046A3 01:8693: 60        RTS
bra_8694:
C - - - - - 0x0046A4 01:8694: EE ED 07  INC ram_07ED
C - - - - - 0x0046A7 01:8697: A9 00     LDA #$00
C - - - - - 0x0046A9 01:8699: 8D EF 07  STA ram_07EF
C - - - - - 0x0046AC 01:869C: 8D F0 07  STA ram_07F0
C - - - - - 0x0046AF 01:869F: 8D F3 07  STA ram_07F3
C - - - - - 0x0046B2 01:86A2: A9 20     LDA #$20
C - - - - - 0x0046B4 01:86A4: 8D F2 07  STA ram_07F2
C - - - - - 0x0046B7 01:86A7: 60        RTS



sub_86A8:
loc_86A8:
C D 0 - - - 0x0046B8 01:86A8: A0 00     LDY #$00
C - - - - - 0x0046BA 01:86AA: AD ED 07  LDA ram_07ED
C - - - - - 0x0046BD 01:86AD: 29 80     AND #$80
C - - - - - 0x0046BF 01:86AF: F0 02     BEQ bra_86B3
C - - - - - 0x0046C1 01:86B1: A0 03     LDY #$03
loc_86B3:
bra_86B3:
C D 0 - - - 0x0046C3 01:86B3: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x0046C5 01:86B5: A9 02     LDA #$02
C - - - - - 0x0046C7 01:86B7: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x0046CA 01:86BA: A9 26     LDA #> $2621
C - - - - - 0x0046CC 01:86BC: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x0046CF 01:86BF: A9 21     LDA #< $2621
C - - - - - 0x0046D1 01:86C1: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x0046D4 01:86C4: A9 03     LDA #$03
C - - - - - 0x0046D6 01:86C6: 85 00     STA ram_0000_t099
bra_86C8_loop:
C - - - - - 0x0046D8 01:86C8: B9 DB 86  LDA tbl_86DB_tiles,Y
C - - - - - 0x0046DB 01:86CB: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x0046DE 01:86CE: C8        INY
C - - - - - 0x0046DF 01:86CF: C6 00     DEC ram_0000_t099
C - - - - - 0x0046E1 01:86D1: D0 F5     BNE bra_86C8_loop
C - - - - - 0x0046E3 01:86D3: A9 FF     LDA #$FF
C - - - - - 0x0046E5 01:86D5: 20 56 83  JSR sub_8356_write_to_buffer_and_INX
C - - - - - 0x0046E8 01:86D8: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x0046EA 01:86DA: 60        RTS



tbl_86DB_tiles:
- D 0 - - - 0x0046EB 01:86DB: 36        .byte $36   ; 00 
- D 0 - - - 0x0046EC 01:86DC: 00        .byte $00   ; 01 
- D 0 - - - 0x0046ED 01:86DD: 00        .byte $00   ; 02 
- D 0 - - - 0x0046EE 01:86DE: 00        .byte $00   ; 03 
- D 0 - - - 0x0046EF 01:86DF: 00        .byte $00   ; 04 
- D 0 - - - 0x0046F0 01:86E0: 36        .byte $36   ; 05 
- D 0 - - - 0x0046F1 01:86E1: 00        .byte $00   ; 06 
- D 0 - - - 0x0046F2 01:86E2: 00        .byte $00   ; 07 
- D 0 - - - 0x0046F3 01:86E3: 00        .byte $00   ; 08 



ofs_051_86E4_0E:
C - - J - - 0x0046F4 01:86E4: AD F2 07  LDA ram_07F2
C - - - - - 0x0046F7 01:86E7: F0 21     BEQ bra_870A
C - - - - - 0x0046F9 01:86E9: CE F2 07  DEC ram_07F2
C - - - - - 0x0046FC 01:86EC: A9 0F     LDA #$0F
C - - - - - 0x0046FE 01:86EE: 8D EF 07  STA ram_07EF
C - - - - - 0x004701 01:86F1: AD ED 07  LDA ram_07ED
C - - - - - 0x004704 01:86F4: 29 80     AND #$80
C - - - - - 0x004706 01:86F6: F0 03     BEQ bra_86FB
C - - - - - 0x004708 01:86F8: EE EF 07  INC ram_07EF
bra_86FB:
C - - - - - 0x00470B 01:86FB: AD F2 07  LDA ram_07F2
C - - - - - 0x00470E 01:86FE: 29 04     AND #$04
C - - - - - 0x004710 01:8700: D0 03     BNE bra_8705
C - - - - - 0x004712 01:8702: 4C A8 86  JMP loc_86A8
bra_8705:
C - - - - - 0x004715 01:8705: A0 06     LDY #$06
C - - - - - 0x004717 01:8707: 4C B3 86  JMP loc_86B3
bra_870A:
C - - - - - 0x00471A 01:870A: EE ED 07  INC ram_07ED
C - - - - - 0x00471D 01:870D: 60        RTS



ofs_051_870E_14:
C - - J - - 0x00471E 01:870E: AD ED 07  LDA ram_07ED
C - - - - - 0x004721 01:8711: 29 80     AND #$80
C - - - - - 0x004723 01:8713: D0 1F     BNE bra_8734
C - - - - - 0x004725 01:8715: AD EF 07  LDA ram_07EF
C - - - - - 0x004728 01:8718: D0 14     BNE bra_872E
C - - - - - 0x00472A 01:871A: AD F3 07  LDA ram_07F3
C - - - - - 0x00472D 01:871D: F0 0F     BEQ bra_872E
C - - - - - 0x00472F 01:871F: EE ED 07  INC ram_07ED
C - - - - - 0x004732 01:8722: A9 00     LDA #$00
C - - - - - 0x004734 01:8724: 8D EF 07  STA ram_07EF
C - - - - - 0x004737 01:8727: 8D F3 07  STA ram_07F3
C - - - - - 0x00473A 01:872A: 8D F0 07  STA ram_07F0
C - - - - - 0x00473D 01:872D: 60        RTS
bra_872E:
C - - - - - 0x00473E 01:872E: A9 08     LDA #$08
C - - - - - 0x004740 01:8730: 8D EF 07  STA ram_07EF
C - - - - - 0x004743 01:8733: 60        RTS
bra_8734:
C - - - - - 0x004744 01:8734: A9 0B     LDA #$0B
C - - - - - 0x004746 01:8736: 18        CLC
C - - - - - 0x004747 01:8737: 6D ED 07  ADC ram_07ED
C - - - - - 0x00474A 01:873A: 8D ED 07  STA ram_07ED
C - - - - - 0x00474D 01:873D: 60        RTS



ofs_051_873E_15:
C - - J - - 0x00474E 01:873E: AD F3 07  LDA ram_07F3
C - - - - - 0x004751 01:8741: D0 06     BNE bra_8749
C - - - - - 0x004753 01:8743: A9 09     LDA #$09
C - - - - - 0x004755 01:8745: 8D EF 07  STA ram_07EF
C - - - - - 0x004758 01:8748: 60        RTS
bra_8749:
C - - - - - 0x004759 01:8749: EE ED 07  INC ram_07ED
C - - - - - 0x00475C 01:874C: A9 00     LDA #$00
C - - - - - 0x00475E 01:874E: 8D F3 07  STA ram_07F3
C - - - - - 0x004761 01:8751: 8D EF 07  STA ram_07EF
C - - - - - 0x004764 01:8754: A9 40     LDA #$40
C - - - - - 0x004766 01:8756: 8D F0 07  STA ram_07F0
C - - - - - 0x004769 01:8759: 60        RTS



ofs_051_875A_16:
C - - J - - 0x00476A 01:875A: AD F3 07  LDA ram_07F3
C - - - - - 0x00476D 01:875D: D0 06     BNE bra_8765
C - - - - - 0x00476F 01:875F: A9 0A     LDA #$0A
C - - - - - 0x004771 01:8761: 8D EF 07  STA ram_07EF
C - - - - - 0x004774 01:8764: 60        RTS
bra_8765:
C - - - - - 0x004775 01:8765: EE ED 07  INC ram_07ED
C - - - - - 0x004778 01:8768: A9 00     LDA #$00
C - - - - - 0x00477A 01:876A: 8D EF 07  STA ram_07EF
C - - - - - 0x00477D 01:876D: 8D F0 07  STA ram_07F0
C - - - - - 0x004780 01:8770: 8D F3 07  STA ram_07F3
C - - - - - 0x004783 01:8773: 60        RTS



ofs_051_8774_17:
C - - J - - 0x004784 01:8774: A5 3A     LDA ram_partner
C - - - - - 0x004786 01:8776: C9 FF     CMP #$FF
C - - - - - 0x004788 01:8778: F0 09     BEQ bra_8783_no_partner
C - - - - - 0x00478A 01:877A: A9 11     LDA #$11
C - - - - - 0x00478C 01:877C: 8D EF 07  STA ram_07EF
C - - - - - 0x00478F 01:877F: EE ED 07  INC ram_07ED
C - - - - - 0x004792 01:8782: 60        RTS
bra_8783_no_partner:
C - - - - - 0x004793 01:8783: A2 01     LDX #$01
bra_8785_loop:
C - - - - - 0x004795 01:8785: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x004798 01:8788: F0 15     BEQ bra_879F
C - - - - - 0x00479A 01:878A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00479D 01:878D: C9 03     CMP #$03
C - - - - - 0x00479F 01:878F: D0 0E     BNE bra_879F
C - - - - - 0x0047A1 01:8791: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x0047A4 01:8794: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0047A7 01:8797: 38        SEC
C - - - - - 0x0047A8 01:8798: E9 01     SBC #$01
C - - - - - 0x0047AA 01:879A: 85 3A     STA ram_partner
C - - - - - 0x0047AC 01:879C: 20 EC 87  JSR sub_87EC_clear_partner_weapon_data
bra_879F:
C - - - - - 0x0047AF 01:879F: E8        INX
C - - - - - 0x0047B0 01:87A0: E0 0D     CPX #$0D
C - - - - - 0x0047B2 01:87A2: D0 E1     BNE bra_8785_loop
C - - - - - 0x0047B4 01:87A4: A9 08     LDA #$08
C - - - - - 0x0047B6 01:87A6: 18        CLC
C - - - - - 0x0047B7 01:87A7: 6D ED 07  ADC ram_07ED
C - - - - - 0x0047BA 01:87AA: 8D ED 07  STA ram_07ED
C - - - - - 0x0047BD 01:87AD: 60        RTS



ofs_051_87AE_18:
C - - J - - 0x0047BE 01:87AE: AD EF 07  LDA ram_07EF
C - - - - - 0x0047C1 01:87B1: D0 38     BNE bra_87EB_RTS
C - - - - - 0x0047C3 01:87B3: EE ED 07  INC ram_07ED
C - - - - - 0x0047C6 01:87B6: A2 01     LDX #$01
bra_87B8_loop:
C - - - - - 0x0047C8 01:87B8: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0047CB 01:87BB: F0 29     BEQ bra_87E6
C - - - - - 0x0047CD 01:87BD: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0047D0 01:87C0: C9 02     CMP #$02
C - - - - - 0x0047D2 01:87C2: F0 1F     BEQ bra_87E3
C - - - - - 0x0047D4 01:87C4: C9 03     CMP #$03
C - - - - - 0x0047D6 01:87C6: D0 1E     BNE bra_87E6
C - - - - - 0x0047D8 01:87C8: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x0047DB 01:87CB: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0047DE 01:87CE: 38        SEC
C - - - - - 0x0047DF 01:87CF: E9 01     SBC #$01
C - - - - - 0x0047E1 01:87D1: 85 3A     STA ram_partner
C - - - - - 0x0047E3 01:87D3: 20 EC 87  JSR sub_87EC_clear_partner_weapon_data
C - - - - - 0x0047E6 01:87D6: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0047E9 01:87D9: F0 0B     BEQ bra_87E6
C - - - - - 0x0047EB 01:87DB: A5 3A     LDA ram_partner
C - - - - - 0x0047ED 01:87DD: 8D 4E 05  STA ram_plr_id
C - - - - - 0x0047F0 01:87E0: 4C E6 87  JMP loc_87E6
bra_87E3:
C - - - - - 0x0047F3 01:87E3: FE 06 06  INC ram_obj_config,X
bra_87E6:
loc_87E6:
C D 0 - - - 0x0047F6 01:87E6: E8        INX
C - - - - - 0x0047F7 01:87E7: E0 0D     CPX #$0D
C - - - - - 0x0047F9 01:87E9: D0 CD     BNE bra_87B8_loop
bra_87EB_RTS:
C - - - - - 0x0047FB 01:87EB: 60        RTS



sub_87EC_clear_partner_weapon_data:
C - - - - - 0x0047FC 01:87EC: A9 00     LDA #$00
C - - - - - 0x0047FE 01:87EE: 85 8F     STA ram_subweapon_power + $01
C - - - - - 0x004800 01:87F0: 85 86     STA ram_subweapon_id + $01 ; con_subweapon_none
C - - - - - 0x004802 01:87F2: 85 88     STA ram_subweapon_multiplier + $01
C - - - - - 0x004804 01:87F4: 60        RTS



ofs_051_87F5_1D:
C - - J - - 0x004805 01:87F5: A9 12     LDA #$12
C - - - - - 0x004807 01:87F7: 8D EF 07  STA ram_07EF
C - - - - - 0x00480A 01:87FA: A5 32     LDA ram_blk_id_hi
C - - - - - 0x00480C 01:87FC: C9 01     CMP #$01    ; Clock Tower
C - - - - - 0x00480E 01:87FE: F0 0B     BEQ bra_880B_01_Clock_Tower
C - - - - - 0x004810 01:8800: A9 00     LDA #$00
C - - - - - 0x004812 01:8802: 8D EF 07  STA ram_07EF
C - - - - - 0x004815 01:8805: EE ED 07  INC ram_07ED
C - - - - - 0x004818 01:8808: 4C 10 88  JMP loc_8810
bra_880B_01_Clock_Tower:
- - - - - - 0x00481B 01:880B: A9 80     LDA #$80
- - - - - - 0x00481D 01:880D: 8D F2 07  STA ram_07F2
loc_8810:
C D 0 - - - 0x004820 01:8810: EE ED 07  INC ram_07ED
C - - - - - 0x004823 01:8813: 60        RTS



ofs_051_8814_1E:
- - - - - - 0x004824 01:8814: CE F2 07  DEC ram_07F2
- - - - - - 0x004827 01:8817: D0 03     BNE bra_881C_RTS
- - - - - - 0x004829 01:8819: EE ED 07  INC ram_07ED
bra_881C_RTS:
- - - - - - 0x00482C 01:881C: 60        RTS



ofs_051_881D_1F:
C - - J - - 0x00482D 01:881D: EE ED 07  INC ram_07ED
C - - - - - 0x004830 01:8820: A9 07     LDA #$07
C - - - - - 0x004832 01:8822: 8D F0 07  STA ram_07F0
C - - - - - 0x004835 01:8825: A9 06     LDA #$06
C - - - - - 0x004837 01:8827: 8D F3 07  STA ram_07F3
C - - - - - 0x00483A 01:882A: A9 00     LDA #$00
C - - - - - 0x00483C 01:882C: 8D F2 07  STA ram_07F2
C - - - - - 0x00483F 01:882F: 8D F1 07  STA ram_07F1
C - - - - - 0x004842 01:8832: 8D EF 07  STA ram_07EF
C - - - - - 0x004845 01:8835: 60        RTS



ofs_051_8836_20:
C - - J - - 0x004846 01:8836: AD F3 07  LDA ram_07F3
C - - - - - 0x004849 01:8839: 29 01     AND #$01
C - - - - - 0x00484B 01:883B: D0 0A     BNE bra_8847
C - - - - - 0x00484D 01:883D: A9 20     LDA #$20
C - - - - - 0x00484F 01:883F: 85 17     STA ram_0017_t000_ppu_addr_hi
C - - - - - 0x004851 01:8841: A5 FF     LDA ram_for_2000
C - - - - - 0x004853 01:8843: 09 01     ORA #$01
C - - - - - 0x004855 01:8845: D0 08     BNE bra_884F    ; jmp
bra_8847:
C - - - - - 0x004857 01:8847: A9 24     LDA #$24
C - - - - - 0x004859 01:8849: 85 17     STA ram_0017_t000_ppu_addr_hi
C - - - - - 0x00485B 01:884B: A5 FF     LDA ram_for_2000
C - - - - - 0x00485D 01:884D: 29 FE     AND #$FE
bra_884F:
C - - - - - 0x00485F 01:884F: 85 FF     STA ram_for_2000
C - - - - - 0x004861 01:8851: AD F3 07  LDA ram_07F3
C - - - - - 0x004864 01:8854: C9 FF     CMP #$FF
C - - - - - 0x004866 01:8856: F0 04     BEQ bra_885C_FF
C - - - - - 0x004868 01:8858: 20 82 8D  JSR sub_8D82
C - - - - - 0x00486B 01:885B: 60        RTS
bra_885C_FF:
C - - - - - 0x00486C 01:885C: EE ED 07  INC ram_07ED
C - - - - - 0x00486F 01:885F: A9 00     LDA #$00
C - - - - - 0x004871 01:8861: 8D F1 07  STA ram_07F1
C - - - - - 0x004874 01:8864: 8D F0 07  STA ram_07F0
C - - - - - 0x004877 01:8867: 8D F2 07  STA ram_07F2
C - - - - - 0x00487A 01:886A: A9 43     LDA #con__chr_bank + $43
C - - - - - 0x00487C 01:886C: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x00487E 01:886E: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
C - - - - - 0x004881 01:8871: 60        RTS



ofs_051_8872_21:
C - - J - - 0x004882 01:8872: A9 0B     LDA #$0B
C - - - - - 0x004884 01:8874: 8D EF 07  STA ram_07EF
C - - - - - 0x004887 01:8877: A5 32     LDA ram_blk_id_hi
C - - - - - 0x004889 01:8879: C9 01     CMP #$01    ; Clock Tower
C - - - - - 0x00488B 01:887B: D0 15     BNE bra_8892
C - - - - - 0x00488D 01:887D: A9 03     LDA #$03
C - - - - - 0x00488F 01:887F: 85 00     STA ram_0000_t09A
bra_8881_loop:
C - - - - - 0x004891 01:8881: 20 B9 FE  JSR sub_0x03FEC9_find_empty_object_slot_01_0C
C - - - - - 0x004894 01:8884: A9 05     LDA #$05
C - - - - - 0x004896 01:8886: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x004899 01:8889: A5 00     LDA ram_0000_t09A
C - - - - - 0x00489B 01:888B: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00489E 01:888E: C6 00     DEC ram_0000_t09A
C - - - - - 0x0048A0 01:8890: D0 EF     BNE bra_8881_loop
bra_8892:
C - - - - - 0x0048A2 01:8892: EE ED 07  INC ram_07ED
C - - - - - 0x0048A5 01:8895: A9 00     LDA #$00
C - - - - - 0x0048A7 01:8897: 8D F3 07  STA ram_07F3
C - - - - - 0x0048AA 01:889A: 60        RTS



ofs_051_889B_22:
C - - J - - 0x0048AB 01:889B: AD F3 07  LDA ram_07F3
C - - - - - 0x0048AE 01:889E: C9 D0     CMP #$D0
C - - - - - 0x0048B0 01:88A0: F0 21     BEQ bra_88C3_D0
C - - - - - 0x0048B2 01:88A2: 4A        LSR
C - - - - - 0x0048B3 01:88A3: 29 0F     AND #$0F
C - - - - - 0x0048B5 01:88A5: A8        TAY
C - - - - - 0x0048B6 01:88A6: A5 32     LDA ram_blk_id_hi
C - - - - - 0x0048B8 01:88A8: C9 01     CMP #$01    ; Clock Tower
C - - - - - 0x0048BA 01:88AA: D0 13     BNE bra_88BF
C - - - - - 0x0048BC 01:88AC: B9 CC 88  LDA tbl_88CC,Y
C - - - - - 0x0048BF 01:88AF: 85 FC     STA ram_scroll_Y
C - - - - - 0x0048C1 01:88B1: 85 FD     STA ram_scroll_X
C - - - - - 0x0048C3 01:88B3: AD F3 07  LDA ram_07F3
C - - - - - 0x0048C6 01:88B6: 29 0F     AND #$0F
C - - - - - 0x0048C8 01:88B8: D0 05     BNE bra_88BF
C - - - - - 0x0048CA 01:88BA: A9 3A     LDA #con_sound_earthshake
C - - - - - 0x0048CC 01:88BC: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_88BF:
C - - - - - 0x0048CF 01:88BF: EE F3 07  INC ram_07F3
C - - - - - 0x0048D2 01:88C2: 60        RTS
bra_88C3_D0:
C - - - - - 0x0048D3 01:88C3: EE ED 07  INC ram_07ED
C - - - - - 0x0048D6 01:88C6: A9 00     LDA #$00
C - - - - - 0x0048D8 01:88C8: 8D EF 07  STA ram_07EF
C - - - - - 0x0048DB 01:88CB: 60        RTS



tbl_88CC:
- D 0 - - - 0x0048DC 01:88CC: 00        .byte $00   ; 00 
- D 0 - - - 0x0048DD 01:88CD: 02        .byte $02   ; 02 
- D 0 - - - 0x0048DE 01:88CE: 01        .byte $01   ; 04 
- D 0 - - - 0x0048DF 01:88CF: 03        .byte $03   ; 06 
- D 0 - - - 0x0048E0 01:88D0: 00        .byte $00   ; 08 
- D 0 - - - 0x0048E1 01:88D1: 01        .byte $01   ; 0A 
- D 0 - - - 0x0048E2 01:88D2: 01        .byte $01   ; 0C 
- D 0 - - - 0x0048E3 01:88D3: 02        .byte $02   ; 0E 
- D 0 - - - 0x0048E4 01:88D4: 01        .byte $01   ; 10 
- D 0 - - - 0x0048E5 01:88D5: 03        .byte $03   ; 12 
- D 0 - - - 0x0048E6 01:88D6: 00        .byte $00   ; 14 
- D 0 - - - 0x0048E7 01:88D7: 01        .byte $01   ; 16 
- D 0 - - - 0x0048E8 01:88D8: 00        .byte $00   ; 18 
- D 0 - - - 0x0048E9 01:88D9: 02        .byte $02   ; 1A 
- D 0 - - - 0x0048EA 01:88DA: 03        .byte $03   ; 1C 
- D 0 - - - 0x0048EB 01:88DB: 00        .byte $00   ; 1E 



loc_88DC:
ofs_051_88DC_23:
C D 0 J - - 0x0048EC 01:88DC: EE ED 07  INC ram_07ED
C - - - - - 0x0048EF 01:88DF: 60        RTS



ofs_051_88E0_24:
C - - J - - 0x0048F0 01:88E0: A9 07     LDA #$07
C - - - - - 0x0048F2 01:88E2: 8D 60 01  STA ram_015B_se + $05
C - - - - - 0x0048F5 01:88E5: A9 B4     LDA #$B4
C - - - - - 0x0048F7 01:88E7: 8D F2 07  STA ram_07F2
C - - - - - 0x0048FA 01:88EA: 4C DC 88  JMP loc_88DC



ofs_051_88ED_26:
C - - J - - 0x0048FD 01:88ED: A9 1E     LDA #con_002A_1E
C - - - - - 0x0048FF 01:88EF: 85 2A     STA ram_002A_script
C - - - - - 0x004901 01:88F1: A9 00     LDA #$00
C - - - - - 0x004903 01:88F3: 8D EC 07  STA ram_07EC
C - - - - - 0x004906 01:88F6: 8D ED 07  STA ram_07ED
C - - - - - 0x004909 01:88F9: 8D EE 07  STA ram_07EE
C - - - - - 0x00490C 01:88FC: 8D EF 07  STA ram_07EF
C - - - - - 0x00490F 01:88FF: 8D F0 07  STA ram_07F0
C - - - - - 0x004912 01:8902: 8D F1 07  STA ram_07F1
C - - - - - 0x004915 01:8905: 8D F2 07  STA ram_07F2
C - - - - - 0x004918 01:8908: 8D F3 07  STA ram_07F3
C - - - - - 0x00491B 01:890B: 60        RTS



sub_890C_jump_to_pointers:
; in
    ; Y = table index
    ; 07ED = handler index
C - - - - - 0x00491C 01:890C: B9 29 89  LDA tbl_8929,Y
C - - - - - 0x00491F 01:890F: 85 00     STA ram_0000_t022_data
C - - - - - 0x004921 01:8911: B9 2A 89  LDA tbl_8929 + $01,Y
C - - - - - 0x004924 01:8914: 85 01     STA ram_0000_t022_data + $01
C - - - - - 0x004926 01:8916: AD ED 07  LDA ram_07ED
C - - - - - 0x004929 01:8919: 29 7F     AND #$7F
C - - - - - 0x00492B 01:891B: 0A        ASL
C - - - - - 0x00492C 01:891C: A8        TAY
C - - - - - 0x00492D 01:891D: B1 00     LDA (ram_0000_t022_data),Y
C - - - - - 0x00492F 01:891F: 85 02     STA ram_0002_t009_jmp
C - - - - - 0x004931 01:8921: C8        INY
C - - - - - 0x004932 01:8922: B1 00     LDA (ram_0000_t022_data),Y
C - - - - - 0x004934 01:8924: 85 03     STA ram_0002_t009_jmp + $01
C - - - - - 0x004936 01:8926: 6C 02 00  JMP (ram_0002_t009_jmp)



tbl_8929:
- D 0 - - - 0x004939 01:8929: 07 80     .word _off050_8007_00
- D 0 - - - 0x00493B 01:892B: 94 82     .word _off050_8294_02
- D 0 - - - 0x00493D 01:892D: D5 83     .word _off050_83D5_04
- D 0 - - - 0x00493F 01:892F: 64 84     .word _off050_8464_06_partner_cutscene



sub_8931_clear_obj_data:
C - - - - - 0x004941 01:8931: A2 0D     LDX #$0D
bra_8933_loop:
C - - - - - 0x004943 01:8933: A9 00     LDA #$00
C - - - - - 0x004945 01:8935: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x004948 01:8938: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00494B 01:893B: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x00494E 01:893E: E8        INX
C - - - - - 0x00494F 01:893F: E0 13     CPX #$13
C - - - - - 0x004951 01:8941: 90 F0     BCC bra_8933_loop
C - - - - - 0x004953 01:8943: 60        RTS



sub_8944_partner_speech:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x004954 01:8944: B9 26 8A  LDA tbl_8A26_partner_speech,Y
C - - - - - 0x004957 01:8947: 85 00     STA ram_0000_t021_data_pointer
C - - - - - 0x004959 01:8949: B9 27 8A  LDA tbl_8A26_partner_speech + $01,Y
C - - - - - 0x00495C 01:894C: 85 01     STA ram_0000_t021_data_pointer + $01
C - - - - - 0x00495E 01:894E: AD F2 07  LDA ram_07F2
C - - - - - 0x004961 01:8951: 0A        ASL
C - - - - - 0x004962 01:8952: A8        TAY
C - - - - - 0x004963 01:8953: B1 00     LDA (ram_0000_t021_data_pointer),Y
C - - - - - 0x004965 01:8955: C9 FF     CMP #$FF
C - - - - - 0x004967 01:8957: D0 0D     BNE bra_8966
C - - - - - 0x004969 01:8959: C8        INY
C - - - - - 0x00496A 01:895A: B1 00     LDA (ram_0000_t021_data_pointer),Y
C - - - - - 0x00496C 01:895C: C9 FF     CMP #$FF
C - - - - - 0x00496E 01:895E: D0 03     BNE bra_8963
; end token FFFF
C - - - - - 0x004970 01:8960: 4C 1F 8A  JMP loc_8A1F
bra_8963:
- - - - - - 0x004973 01:8963: 88        DEY
- - - - - - 0x004974 01:8964: B1 00     LDA (ram_0000_t021_data_pointer),Y
bra_8966:
C - - - - - 0x004976 01:8966: 85 02     STA ram_0002_t006_data
C - - - - - 0x004978 01:8968: C8        INY
C - - - - - 0x004979 01:8969: B1 00     LDA (ram_0000_t021_data_pointer),Y
C - - - - - 0x00497B 01:896B: 85 03     STA ram_0002_t006_data + $01
C - - - - - 0x00497D 01:896D: AC F1 07  LDY ram_07F1
C - - - - - 0x004980 01:8970: B1 02     LDA (ram_0002_t006_data),Y
C - - - - - 0x004982 01:8972: C9 FF     CMP #$FF
C - - - - - 0x004984 01:8974: D0 03     BNE bra_8979
; end token FF
C - - - - - 0x004986 01:8976: 4C 15 8A  JMP loc_8A15
bra_8979:
C - - - - - 0x004989 01:8979: 85 04     STA ram_0004_t011
C - - - - - 0x00498B 01:897B: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x00498D 01:897D: A9 01     LDA #$01
C - - - - - 0x00498F 01:897F: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x004992 01:8982: AD F2 07  LDA ram_07F2
; * 40
C - - - - - 0x004995 01:8985: 0A        ASL
C - - - - - 0x004996 01:8986: 0A        ASL
C - - - - - 0x004997 01:8987: 0A        ASL
C - - - - - 0x004998 01:8988: 0A        ASL
C - - - - - 0x004999 01:8989: 0A        ASL
C - - - - - 0x00499A 01:898A: 0A        ASL
C - - - - - 0x00499B 01:898B: 18        CLC
C - - - - - 0x00499C 01:898C: 6D F1 07  ADC ram_07F1
C - - - - - 0x00499F 01:898F: 18        CLC
C - - - - - 0x0049A0 01:8990: 69 E6     ADC #< $20E6
C - - - - - 0x0049A2 01:8992: 85 00     STA ram_0000_t077_ppu_addr_lo
C - - - - - 0x0049A4 01:8994: A9 20     LDA #> $20E6
C - - - - - 0x0049A6 01:8996: 69 00     ADC #$00
C - - - - - 0x0049A8 01:8998: 85 01     STA ram_0001_t029_ppu_addr_hi
C - - - - - 0x0049AA 01:899A: A5 00     LDA ram_0000_t077_ppu_addr_lo
C - - - - - 0x0049AC 01:899C: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x0049AF 01:899F: A5 01     LDA ram_0001_t029_ppu_addr_hi
C - - - - - 0x0049B1 01:89A1: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x0049B4 01:89A4: A5 04     LDA ram_0004_t011
C - - - - - 0x0049B6 01:89A6: C9 40     CMP #$40
C - - - - - 0x0049B8 01:89A8: 90 10     BCC bra_89BA
C - - - - - 0x0049BA 01:89AA: C9 C0     CMP #$C0
C - - - - - 0x0049BC 01:89AC: B0 0C     BCS bra_89BA
- - - - - - 0x0049BE 01:89AE: C9 80     CMP #$80
- - - - - - 0x0049C0 01:89B0: 90 06     BCC bra_89B8
- - - - - - 0x0049C2 01:89B2: 29 1F     AND #$1F
- - - - - - 0x0049C4 01:89B4: 09 C0     ORA #$C0
- - - - - - 0x0049C6 01:89B6: D0 02     BNE bra_89BA
bra_89B8:
- - - - - - 0x0049C8 01:89B8: 29 1F     AND #$1F
bra_89BA:
C - - - - - 0x0049CA 01:89BA: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x0049CD 01:89BD: A9 FF     LDA #$FF
C - - - - - 0x0049CF 01:89BF: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x0049D2 01:89C2: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x0049D4 01:89C4: A5 04     LDA ram_0004_t011
C - - - - - 0x0049D6 01:89C6: C9 40     CMP #$40
C - - - - - 0x0049D8 01:89C8: 90 46     BCC bra_8A10
C - - - - - 0x0049DA 01:89CA: C9 C0     CMP #$C0
C - - - - - 0x0049DC 01:89CC: B0 42     BCS bra_8A10
- - - - - - 0x0049DE 01:89CE: C9 80     CMP #$80
- - - - - - 0x0049E0 01:89D0: 90 06     BCC bra_89D8
- - - - - - 0x0049E2 01:89D2: C9 A0     CMP #$A0
- - - - - - 0x0049E4 01:89D4: B0 0E     BCS bra_89E4
- - - - - - 0x0049E6 01:89D6: 90 08     BCC bra_89E0    ; jmp
bra_89D8:
- - - - - - 0x0049E8 01:89D8: C9 60     CMP #$60
- - - - - - 0x0049EA 01:89DA: B0 08     BCS bra_89E4
- - - - - - 0x0049EC 01:89DC: A9 10     LDA #$10
- - - - - - 0x0049EE 01:89DE: D0 06     BNE bra_89E6    ; jmp
bra_89E0:
- - - - - - 0x0049F0 01:89E0: A9 10     LDA #$10
- - - - - - 0x0049F2 01:89E2: D0 02     BNE bra_89E6    ; jmp
bra_89E4:
- - - - - - 0x0049F4 01:89E4: A9 C0     LDA #$C0
bra_89E6:
- - - - - - 0x0049F6 01:89E6: 85 04     STA ram_0004_t012_tile
- - - - - - 0x0049F8 01:89E8: A5 00     LDA ram_0000_t078_ppu_addr_lo
- - - - - - 0x0049FA 01:89EA: 38        SEC
- - - - - - 0x0049FB 01:89EB: E9 20     SBC #< $0020
- - - - - - 0x0049FD 01:89ED: 85 00     STA ram_0000_t078_ppu_addr_lo
- - - - - - 0x0049FF 01:89EF: A5 01     LDA ram_0001_t02A_ppu_addr_hi
- - - - - - 0x004A01 01:89F1: E9 00     SBC #> $0020
- - - - - - 0x004A03 01:89F3: 85 01     STA ram_0001_t02A_ppu_addr_hi
- - - - - - 0x004A05 01:89F5: A9 01     LDA #$01
- - - - - - 0x004A07 01:89F7: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
- - - - - - 0x004A0A 01:89FA: A5 00     LDA ram_0000_t078_ppu_addr_lo
- - - - - - 0x004A0C 01:89FC: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
- - - - - - 0x004A0F 01:89FF: A5 01     LDA ram_0001_t02A_ppu_addr_hi
- - - - - - 0x004A11 01:8A01: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
- - - - - - 0x004A14 01:8A04: A5 04     LDA ram_0004_t012_tile
- - - - - - 0x004A16 01:8A06: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
- - - - - - 0x004A19 01:8A09: A9 FF     LDA #$FF
- - - - - - 0x004A1B 01:8A0B: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
- - - - - - 0x004A1E 01:8A0E: 86 1D     STX ram_index_ppu_buffer
bra_8A10:
C - - - - - 0x004A20 01:8A10: EE F1 07  INC ram_07F1
C - - - - - 0x004A23 01:8A13: 18        CLC
C - - - - - 0x004A24 01:8A14: 60        RTS



loc_8A15:
C D 0 - - - 0x004A25 01:8A15: EE F2 07  INC ram_07F2
C - - - - - 0x004A28 01:8A18: A9 00     LDA #$00
C - - - - - 0x004A2A 01:8A1A: 8D F1 07  STA ram_07F1
C - - - - - 0x004A2D 01:8A1D: 18        CLC
C - - - - - 0x004A2E 01:8A1E: 60        RTS



loc_8A1F:
; bzk optimize, single JMP to here
C D 0 - - - 0x004A2F 01:8A1F: 38        SEC
C - - - - - 0x004A30 01:8A20: 60        RTS



sub_8A21_write_to_buffer_and_INX:
; bzk same code as 0x004366
C - - - - - 0x004A31 01:8A21: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x004A34 01:8A24: E8        INX
C - - - - - 0x004A35 01:8A25: 60        RTS



tbl_8A26_partner_speech:
; see con_8A26
- D 0 - - - 0x004A36 01:8A26: 42 8A     .word _off007_8A42_00_Grant_intro_1
- D 0 - - - 0x004A38 01:8A28: 4A 8A     .word _off007_8A4A_02_Grant_intro_2
- D 0 - - - 0x004A3A 01:8A2A: 52 8A     .word _off007_8A52_04_what_will_you_do
- D 0 - - - 0x004A3C 01:8A2C: 5A 8A     .word _off007_8A5A_06_Grant_take
- D 0 - - - 0x004A3E 01:8A2E: 62 8A     .word _off007_8A62_08_Grant_leave
- D 0 - - - 0x004A40 01:8A30: 6A 8A     .word _off007_8A6A_0A_swap_partner
- D 0 - - - 0x004A42 01:8A32: 72 8A     .word _off007_8A72_0C_Sypha_intro_1
- D 0 - - - 0x004A44 01:8A34: 7A 8A     .word _off007_8A7A_0E_Sypha_intro_2
- D 0 - - - 0x004A46 01:8A36: 82 8A     .word _off007_8A82_10_Sypha_take
- D 0 - - - 0x004A48 01:8A38: 8A 8A     .word _off007_8A8A_12_Sypha_leave
- D 0 - - - 0x004A4A 01:8A3A: 92 8A     .word _off007_8A92_14_Alucard_intro_1
- D 0 - - - 0x004A4C 01:8A3C: 9A 8A     .word _off007_8A9A_16_Alucard_intro_2
- D 0 - - - 0x004A4E 01:8A3E: A2 8A     .word _off007_8AA2_18_Alucard_take
- D 0 - - - 0x004A50 01:8A40: AA 8A     .word _off007_8AAA_1A_Alucard_leave



_off007_8A42_00_Grant_intro_1:
; con_8A26_Grant_intro_1
- D 0 - I - 0x004A52 01:8A42: B2 8A     .word off_8AB2_00_00
- D 0 - I - 0x004A54 01:8A44: C4 8A     .word off_8AC4_00_01
- D 0 - I - 0x004A56 01:8A46: D4 8A     .word off_8AD4_00_02
- D 0 - I - 0x004A58 01:8A48: FF FF     .word $FFFF ; end token



_off007_8A4A_02_Grant_intro_2:
; con_8A26_Grant_intro_2
- D 0 - I - 0x004A5A 01:8A4A: E9 8A     .word off_8AE9_02_00
- D 0 - I - 0x004A5C 01:8A4C: FD 8A     .word off_8AFD_02_01
- D 0 - I - 0x004A5E 01:8A4E: 11 8B     .word off_8B11_02_02
- D 0 - I - 0x004A60 01:8A50: FF FF     .word $FFFF ; end token



_off007_8A52_04_what_will_you_do:
; con_8A26_what_will_you_do
- D 0 - I - 0x004A62 01:8A52: 24 8B     .word off_8B24_04_00
- D 0 - I - 0x004A64 01:8A54: 36 8B     .word off_8B36_04_01
- D 0 - I - 0x004A66 01:8A56: 4B 8B     .word off_8B4B_04_02
- D 0 - I - 0x004A68 01:8A58: FF FF     .word $FFFF ; end token



_off007_8A5A_06_Grant_take:
; con_8A26_Grant_take
- D 0 - I - 0x004A6A 01:8A5A: 5F 8B     .word off_8B5F_06_00
- D 0 - I - 0x004A6C 01:8A5C: 6E 8B     .word off_8B6E_06_01
- D 0 - I - 0x004A6E 01:8A5E: 7E 8B     .word off_8B7E_06_02
- D 0 - I - 0x004A70 01:8A60: FF FF     .word $FFFF ; end token



_off007_8A62_08_Grant_leave:
; con_8A26_Grant_leave
- D 0 - I - 0x004A72 01:8A62: 8C 8B     .word off_8B8C_08_00
- D 0 - I - 0x004A74 01:8A64: 9F 8B     .word off_8B9F_08_01
- D 0 - I - 0x004A76 01:8A66: B2 8B     .word off_8BB2_08_02
- D 0 - I - 0x004A78 01:8A68: FF FF     .word $FFFF ; end token



_off007_8A6A_0A_swap_partner:
; con_8A26_swap_partner
- D 0 - I - 0x004A7A 01:8A6A: C4 8B     .word off_8BC4_0A_00
- D 0 - I - 0x004A7C 01:8A6C: D4 8B     .word off_8BD4_0A_01
- D 0 - I - 0x004A7E 01:8A6E: E5 8B     .word off_8BE5_0A_02
- D 0 - I - 0x004A80 01:8A70: FF FF     .word $FFFF ; end token



_off007_8A72_0C_Sypha_intro_1:
; con_8A26_Sypha_intro_1
- D 0 - I - 0x004A82 01:8A72: F7 8B     .word off_8BF7_0C_00
- D 0 - I - 0x004A84 01:8A74: 0A 8C     .word off_8C0A_0C_01
- D 0 - I - 0x004A86 01:8A76: 1D 8C     .word off_8C1D_0C_02
- D 0 - I - 0x004A88 01:8A78: FF FF     .word $FFFF ; end token



_off007_8A7A_0E_Sypha_intro_2:
; con_8A26_Sypha_intro_2
- D 0 - I - 0x004A8A 01:8A7A: 2D 8C     .word off_8C2D_0E_00
- D 0 - I - 0x004A8C 01:8A7C: 3B 8C     .word off_8C3B_0E_01
- D 0 - I - 0x004A8E 01:8A7E: 4B 8C     .word off_8C4B_0E_02
- D 0 - I - 0x004A90 01:8A80: FF FF     .word $FFFF ; end token



_off007_8A82_10_Sypha_take:
; con_8A26_Sypha_take
- D 0 - I - 0x004A92 01:8A82: 54 8C     .word off_8C54_10_00
- D 0 - I - 0x004A94 01:8A84: 63 8C     .word off_8C63_10_01
- D 0 - I - 0x004A96 01:8A86: 74 8C     .word off_8C74_10_02
- D 0 - I - 0x004A98 01:8A88: FF FF     .word $FFFF ; end token



_off007_8A8A_12_Sypha_leave:
; con_8A26_Sypha_leave
- D 0 - I - 0x004A9A 01:8A8A: 82 8C     .word off_8C82_12_00
- D 0 - I - 0x004A9C 01:8A8C: 95 8C     .word off_8C95_12_01
- D 0 - I - 0x004A9E 01:8A8E: A8 8C     .word off_8CA8_12_02
- D 0 - I - 0x004AA0 01:8A90: FF FF     .word $FFFF ; end token



_off007_8A92_14_Alucard_intro_1:
; con_8A26_Alucard_intro_1
- D 0 - I - 0x004AA2 01:8A92: B4 8C     .word off_8CB4_14_00
- D 0 - I - 0x004AA4 01:8A94: C6 8C     .word off_8CC6_14_01
- D 0 - I - 0x004AA6 01:8A96: DA 8C     .word off_8CDA_14_02
- D 0 - I - 0x004AA8 01:8A98: FF FF     .word $FFFF ; end token



_off007_8A9A_16_Alucard_intro_2:
; con_8A26_Alucard_intro_2
- D 0 - I - 0x004AAA 01:8A9A: EB 8C     .word off_8CEB_16_00
- D 0 - I - 0x004AAC 01:8A9C: F9 8C     .word off_8CF9_16_01
- D 0 - I - 0x004AAE 01:8A9E: 09 8D     .word off_8D09_16_02
- D 0 - I - 0x004AB0 01:8AA0: FF FF     .word $FFFF ; end token



_off007_8AA2_18_Alucard_take:
; con_8A26_Alucard_take
- D 0 - I - 0x004AB2 01:8AA2: 12 8D     .word off_8D12_18_00
- D 0 - I - 0x004AB4 01:8AA4: 23 8D     .word off_8D23_18_01
- D 0 - I - 0x004AB6 01:8AA6: 34 8D     .word off_8D34_18_02
- D 0 - I - 0x004AB8 01:8AA8: FF FF     .word $FFFF ; end token



_off007_8AAA_1A_Alucard_leave:
; con_8A26_Alucard_leave
- D 0 - I - 0x004ABA 01:8AAA: 49 8D     .word off_8D49_1A_00
- D 0 - I - 0x004ABC 01:8AAC: 5C 8D     .word off_8D5C_1A_01
- D 0 - I - 0x004ABE 01:8AAE: 6F 8D     .word off_8D6F_1A_02
- D 0 - I - 0x004AC0 01:8AB0: FF FF     .word $FFFF ; end token



off_8AB2_00_00:
; "My name is Grant."
- D 0 - I - 0x004AC2 01:8AB2: CC        .byte $CC, $F8, $00, $ED, $E0, $EC, $E4, $00, $E8, $F2, $00, $C6, $F1, $E0, $ED, $F3   ; 
- D 0 - I - 0x004AD2 01:8AC2: DB        .byte $DB   ; 

- D 0 - I - 0x004AD3 01:8AC3: FF        .byte $FF   ; end token



off_8AC4_00_01:
; "I dreamed I was"
- D 0 - I - 0x004AD4 01:8AC4: C8        .byte $C8, $00, $E3, $F1, $E4, $E0, $EC, $E4, $E3, $00, $C8, $00, $F6, $E0, $F2   ; 

- D 0 - I - 0x004AE3 01:8AD3: FF        .byte $FF   ; end token



off_8AD4_00_02:
; "turned into a ghost."
- D 0 - I - 0x004AE4 01:8AD4: F3        .byte $F3, $F4, $F1, $ED, $E4, $E3, $00, $E8, $ED, $F3, $EE, $00, $E0, $00, $E6, $E7   ; 
- D 0 - I - 0x004AF4 01:8AE4: EE        .byte $EE, $F2, $F3, $DB   ; 

- D 0 - I - 0x004AF8 01:8AE8: FF        .byte $FF   ; end token



off_8AE9_02_00:
; "Please take me with"
- D 0 - I - 0x004AF9 01:8AE9: CF        .byte $CF, $EB, $E4, $E0, $F2, $E4, $00, $F3, $E0, $EA, $E4, $00, $EC, $E4, $00, $F6   ; 
- D 0 - I - 0x004B09 01:8AF9: E8        .byte $E8, $F3, $E7   ; 

- D 0 - I - 0x004B0C 01:8AFC: FF        .byte $FF   ; end token



off_8AFD_02_01:
; "you.  My family was"
- D 0 - I - 0x004B0D 01:8AFD: F8        .byte $F8, $EE, $F4, $DB, $00, $00, $CC, $F8, $00, $E5, $E0, $EC, $E8, $EB, $F8, $00   ; 
- D 0 - I - 0x004B1D 01:8B0D: F6        .byte $F6, $E0, $F2   ; 

- D 0 - I - 0x004B20 01:8B10: FF        .byte $FF   ; end token



off_8B11_02_02:
; "killed by Dracula."
- D 0 - I - 0x004B21 01:8B11: EA        .byte $EA, $E8, $EB, $EB, $E4, $E3, $00, $E1, $F8, $00, $C3, $F1, $E0, $E2, $F4, $EB   ; 
- D 0 - I - 0x004B31 01:8B21: E0        .byte $E0, $DB   ; 

- D 0 - I - 0x004B33 01:8B23: FF        .byte $FF   ; end token



off_8B24_04_00:
; "What will you do?"
- D 0 - I - 0x004B34 01:8B24: D6        .byte $D6, $E7, $E0, $F3, $00, $F6, $E8, $EB, $EB, $00, $F8, $EE, $F4, $00, $E3, $EE   ; 
- D 0 - I - 0x004B44 01:8B34: FB        .byte $FB   ; 

- D 0 - I - 0x004B45 01:8B35: FF        .byte $FF   ; end token



off_8B36_04_01:
; "  Take him with you?"
- D 0 - I - 0x004B46 01:8B36: 00        .byte $00, $00, $D3, $E0, $EA, $E4, $00, $E7, $E8, $EC, $00, $F6, $E8, $F3, $E7, $00   ; 
- D 0 - I - 0x004B56 01:8B46: F8        .byte $F8, $EE, $F4, $FB   ; 

- D 0 - I - 0x004B5A 01:8B4A: FF        .byte $FF   ; end token



off_8B4B_04_02:
; "  Leave him behind?"
- D 0 - I - 0x004B5B 01:8B4B: 00        .byte $00, $00, $CB, $E4, $E0, $F5, $E4, $00, $E7, $E8, $EC, $00, $E1, $E4, $E7, $E8   ; 
- D 0 - I - 0x004B6B 01:8B5B: ED        .byte $ED, $E3, $FB   ; 

- D 0 - I - 0x004B6E 01:8B5E: FF        .byte $FF   ; end token



off_8B5F_06_00:
; "I can help you"
- D 0 - I - 0x004B6F 01:8B5F: C8        .byte $C8, $00, $E2, $E0, $ED, $00, $E7, $E4, $EB, $EF, $00, $F8, $EE, $F4   ; 

- D 0 - I - 0x004B7D 01:8B6D: FF        .byte $FF   ; end token



off_8B6E_06_01:
; "a lot because I"
- D 0 - I - 0x004B7E 01:8B6E: E0        .byte $E0, $00, $EB, $EE, $F3, $00, $E1, $E4, $E2, $E0, $F4, $F2, $E4, $00, $C8   ; 

- D 0 - I - 0x004B8D 01:8B7D: FF        .byte $FF   ; end token



off_8B7E_06_02:
; "am very fast."
- D 0 - I - 0x004B8E 01:8B7E: E0        .byte $E0, $EC, $00, $F5, $E4, $F1, $F8, $00, $E5, $E0, $F2, $F3, $DB   ; 

- D 0 - I - 0x004B9B 01:8B8B: FF        .byte $FF   ; end token



off_8B8C_08_00:
; "Thanks for helping"
- D 0 - I - 0x004B9C 01:8B8C: D3        .byte $D3, $E7, $E0, $ED, $EA, $F2, $00, $E5, $EE, $F1, $00, $E7, $E4, $EB, $EF, $E8   ; 
- D 0 - I - 0x004BAC 01:8B9C: ED        .byte $ED, $E6   ; 

- D 0 - I - 0x004BAE 01:8B9E: FF        .byte $FF   ; end token



off_8B9F_08_01:
; "me.  I hope we see"
- D 0 - I - 0x004BAF 01:8B9F: EC        .byte $EC, $E4, $DB, $00, $00, $C8, $00, $E7, $EE, $EF, $E4, $00, $F6, $E4, $00, $F2   ; 
- D 0 - I - 0x004BBF 01:8BAF: E4        .byte $E4, $E4   ; 

- D 0 - I - 0x004BC1 01:8BB1: FF        .byte $FF   ; end token



off_8BB2_08_02:
; "each other again."
- D 0 - I - 0x004BC2 01:8BB2: E4        .byte $E4, $E0, $E2, $E7, $00, $EE, $F3, $E7, $E4, $F1, $00, $E0, $E6, $E0, $E8, $ED   ; 
- D 0 - I - 0x004BD2 01:8BC2: DB        .byte $DB   ; 

- D 0 - I - 0x004BD3 01:8BC3: FF        .byte $FF   ; end token



off_8BC4_0A_00:
; "My job is done,"
- D 0 - I - 0x004BD4 01:8BC4: CC        .byte $CC, $F8, $00, $E9, $EE, $E1, $00, $E8, $F2, $00, $E3, $EE, $ED, $E4, $DC   ; 

- D 0 - I - 0x004BE3 01:8BD3: FF        .byte $FF   ; end token



off_8BD4_0A_01:
; "so you should go"
- D 0 - I - 0x004BE4 01:8BD4: F2        .byte $F2, $EE, $00, $F8, $EE, $F4, $00, $F2, $E7, $EE, $F4, $EB, $E3, $00, $E6, $EE   ; 

- D 0 - I - 0x004BF4 01:8BE4: FF        .byte $FF   ; end token



off_8BE5_0A_02:
; "with him for now."
- D 0 - I - 0x004BF5 01:8BE5: F6        .byte $F6, $E8, $F3, $E7, $00, $E7, $E8, $EC, $00, $E5, $EE, $F1, $00, $ED, $EE, $F6   ; 
- D 0 - I - 0x004C05 01:8BF5: DB        .byte $DB   ; 

- D 0 - I - 0x004C06 01:8BF6: FF        .byte $FF   ; end token



off_8BF7_0C_00:
; "Thanks for helping"
- D 0 - I - 0x004C07 01:8BF7: D3        .byte $D3, $E7, $E0, $ED, $EA, $F2, $00, $E5, $EE, $F1, $00, $E7, $E4, $EB, $EF, $E8   ; 
- D 0 - I - 0x004C17 01:8C07: ED        .byte $ED, $E6   ; 

- D 0 - I - 0x004C19 01:8C09: FF        .byte $FF   ; end token



off_8C0A_0C_01:
; "me.  I'm Syfa, the"
- D 0 - I - 0x004C1A 01:8C0A: EC        .byte $EC, $E4, $DB, $00, $00, $C8, $DA, $EC, $00, $D2, $F8, $E5, $E0, $DC, $00, $F3   ; 
- D 0 - I - 0x004C2A 01:8C1A: E7        .byte $E7, $E4   ; 

- D 0 - I - 0x004C2C 01:8C1C: FF        .byte $FF   ; end token



off_8C1D_0C_02:
; "Vampire Hunter."
- D 0 - I - 0x004C2D 01:8C1D: D5        .byte $D5, $E0, $EC, $EF, $E8, $F1, $E4, $00, $C7, $F4, $ED, $F3, $E4, $F1, $DB   ; 

- D 0 - I - 0x004C3C 01:8C2C: FF        .byte $FF   ; end token



off_8C2D_0E_00:
; "I will follow"
- D 0 - I - 0x004C3D 01:8C2D: C8        .byte $C8, $00, $F6, $E8, $EB, $EB, $00, $E5, $EE, $EB, $EB, $EE, $F6   ; 

- D 0 - I - 0x004C4A 01:8C3A: FF        .byte $FF   ; end token



off_8C3B_0E_01:
; "you if you need"
- D 0 - I - 0x004C4B 01:8C3B: F8        .byte $F8, $EE, $F4, $00, $E8, $E5, $00, $F8, $EE, $F4, $00, $ED, $E4, $E4, $E3   ; 

- D 0 - I - 0x004C5A 01:8C4A: FF        .byte $FF   ; end token



off_8C4B_0E_02:
; "my help."
- D 0 - I - 0x004C5B 01:8C4B: EC        .byte $EC, $F8, $00, $E7, $E4, $EB, $EF, $DB   ; 

- D 0 - I - 0x004C63 01:8C53: FF        .byte $FF   ; end token



off_8C54_10_00:
; "I hope a Magic"
- D 0 - I - 0x004C64 01:8C54: C8        .byte $C8, $00, $E7, $EE, $EF, $E4, $00, $E0, $00, $CC, $E0, $E6, $E8, $E2   ; 

- D 0 - I - 0x004C72 01:8C62: FF        .byte $FF   ; end token



off_8C63_10_01:
; "Spirit will give"
- D 0 - I - 0x004C73 01:8C63: D2        .byte $D2, $EF, $E8, $F1, $E8, $F3, $00, $F6, $E8, $EB, $EB, $00, $E6, $E8, $F5, $E4   ; 

- D 0 - I - 0x004C83 01:8C73: FF        .byte $FF   ; end token



off_8C74_10_02:
; "us the power."
- D 0 - I - 0x004C84 01:8C74: F4        .byte $F4, $F2, $00, $F3, $E7, $E4, $00, $EF, $EE, $F6, $E4, $F1, $DB   ; 

- D 0 - I - 0x004C91 01:8C81: FF        .byte $FF   ; end token



off_8C82_12_00:
; "Please be careful."
- D 0 - I - 0x004C92 01:8C82: CF        .byte $CF, $EB, $E4, $E0, $F2, $E4, $00, $E1, $E4, $00, $E2, $E0, $F1, $E4, $E5, $F4   ; 
- D 0 - I - 0x004CA2 01:8C92: EB        .byte $EB, $DB   ; 

- D 0 - I - 0x004CA4 01:8C94: FF        .byte $FF   ; end token



off_8C95_12_01:
; "I hope you will be"
- D 0 - I - 0x004CA5 01:8C95: C8        .byte $C8, $00, $E7, $EE, $EF, $E4, $00, $F8, $EE, $F4, $00, $F6, $E8, $EB, $EB, $00   ; 
- D 0 - I - 0x004CB5 01:8CA5: E1        .byte $E1, $E4   ; 

- D 0 - I - 0x004CB7 01:8CA7: FF        .byte $FF   ; end token



off_8CA8_12_02:
; "victorious."
- D 0 - I - 0x004CB8 01:8CA8: F5        .byte $F5, $E8, $E2, $F3, $EE, $F1, $E8, $EE, $F4, $F2, $DB   ; 

- D 0 - I - 0x004CC3 01:8CB3: FF        .byte $FF   ; end token



off_8CB4_14_00:
; "I'm surprised you"
- D 0 - I - 0x004CC4 01:8CB4: C8        .byte $C8, $DA, $EC, $00, $F2, $F4, $F1, $EF, $F1, $E8, $F2, $E4, $E3, $00, $F8, $EE   ; 
- D 0 - I - 0x004CD4 01:8CC4: F4        .byte $F4   ; 

- D 0 - I - 0x004CD5 01:8CC5: FF        .byte $FF   ; end token



off_8CC6_14_01:
; "beat me.  I've been"
- D 0 - I - 0x004CD6 01:8CC6: E1        .byte $E1, $E4, $E0, $F3, $00, $EC, $E4, $DB, $00, $00, $C8, $DA, $F5, $E4, $00, $E1   ; 
- D 0 - I - 0x004CE6 01:8CD6: E4        .byte $E4, $E4, $ED   ; 

- D 0 - I - 0x004CE9 01:8CD9: FF        .byte $FF   ; end token



off_8CDA_14_02:
; "waiting for you."
- D 0 - I - 0x004CEA 01:8CDA: F6        .byte $F6, $E0, $E8, $F3, $E8, $ED, $E6, $00, $E5, $EE, $F1, $00, $F8, $EE, $F4, $DB   ; 

- D 0 - I - 0x004CFA 01:8CEA: FF        .byte $FF   ; end token



off_8CEB_16_00:
; "I need you to"
- D 0 - I - 0x004CFB 01:8CEB: C8        .byte $C8, $00, $ED, $E4, $E4, $E3, $00, $F8, $EE, $F4, $00, $F3, $EE   ; 

- D 0 - I - 0x004D08 01:8CF8: FF        .byte $FF   ; end token



off_8CF9_16_01:
; "help me destroy"
- D 0 - I - 0x004D09 01:8CF9: E7        .byte $E7, $E4, $EB, $EF, $00, $EC, $E4, $00, $E3, $E4, $F2, $F3, $F1, $EE, $F8   ; 

- D 0 - I - 0x004D18 01:8D08: FF        .byte $FF   ; end token



off_8D09_16_02:
; "Dracula."
- D 0 - I - 0x004D19 01:8D09: C3        .byte $C3, $F1, $E0, $E2, $F4, $EB, $E0, $DB   ; 

- D 0 - I - 0x004D21 01:8D11: FF        .byte $FF   ; end token



off_8D12_18_00:
; "I'm glad to hear"
- D 0 - I - 0x004D22 01:8D12: C8        .byte $C8, $DA, $EC, $00, $E6, $EB, $E0, $E3, $00, $F3, $EE, $00, $E7, $E4, $E0, $F1   ; 

- D 0 - I - 0x004D32 01:8D22: FF        .byte $FF   ; end token



off_8D23_18_01:
; "that.  Let's get"
- D 0 - I - 0x004D33 01:8D23: F3        .byte $F3, $E7, $E0, $F3, $DB, $00, $00, $CB, $E4, $F3, $DA, $F2, $00, $E6, $E4, $F3   ; 

- D 0 - I - 0x004D43 01:8D33: FF        .byte $FF   ; end token



off_8D34_18_02:
; "him .  I am Alucard."
- D 0 - I - 0x004D44 01:8D34: E7        .byte $E7, $E8, $EC, $00, $DB, $00, $00, $C8, $00, $E0, $EC, $00, $C0, $EB, $F4, $E2   ; 
- D 0 - I - 0x004D54 01:8D44: E0        .byte $E0, $F1, $E3, $DB   ; 

- D 0 - I - 0x004D58 01:8D48: FF        .byte $FF   ; end token



off_8D49_1A_00:
; "Well, I'll have to"
- D 0 - I - 0x004D59 01:8D49: D6        .byte $D6, $E4, $EB, $EB, $DC, $00, $C8, $DA, $EB, $EB, $00, $E7, $E0, $F5, $E4, $00   ; 
- D 0 - I - 0x004D69 01:8D59: F3        .byte $F3, $EE   ; 

- D 0 - I - 0x004D6B 01:8D5B: FF        .byte $FF   ; end token



off_8D5C_1A_01:
; "find someone else."
- D 0 - I - 0x004D6C 01:8D5C: E5        .byte $E5, $E8, $ED, $E3, $00, $F2, $EE, $EC, $E4, $EE, $ED, $E4, $00, $E4, $EB, $F2   ; 
- D 0 - I - 0x004D7C 01:8D6C: E4        .byte $E4, $DB   ; 

- D 0 - I - 0x004D7E 01:8D6E: FF        .byte $FF   ; end token



off_8D6F_1A_02:
; "Please be careful!"
- D 0 - I - 0x004D7F 01:8D6F: CF        .byte $CF, $EB, $E4, $E0, $F2, $E4, $00, $E1, $E4, $00, $E2, $E0, $F1, $E4, $E5, $F4   ; 
- D 0 - I - 0x004D8F 01:8D7F: EB        .byte $EB, $FA   ; 

- D 0 - I - 0x004D91 01:8D81: FF        .byte $FF   ; end token



sub_8D82:
C - - - - - 0x004D92 01:8D82: A0 01     LDY #$01
C - - - - - 0x004D94 01:8D84: D0 02     BNE bra_8D88    ; jmp



sub_8D86:
C - - - - - 0x004D96 01:8D86: A0 00     LDY #$00
bra_8D88:
C - - - - - 0x004D98 01:8D88: AD F0 07  LDA ram_07F0
C - - - - - 0x004D9B 01:8D8B: 10 24     BPL bra_8DB1
C - - - - - 0x004D9D 01:8D8D: CE F0 07  DEC ram_07F0
C - - - - - 0x004DA0 01:8D90: AD F0 07  LDA ram_07F0
C - - - - - 0x004DA3 01:8D93: 29 7F     AND #$7F
C - - - - - 0x004DA5 01:8D95: D0 19     BNE bra_8DB0_RTS
bra_8D97:
C - - - - - 0x004DA7 01:8D97: 98        TYA
C - - - - - 0x004DA8 01:8D98: 48        PHA
C - - - - - 0x004DA9 01:8D99: 20 DA 92  JSR sub_92DA
C - - - - - 0x004DAC 01:8D9C: 68        PLA
C - - - - - 0x004DAD 01:8D9D: A8        TAY
; bzk optimize, no need for CPY 00
C - - - - - 0x004DAE 01:8D9E: C0 00     CPY #$00
C - - - - - 0x004DB0 01:8DA0: F0 06     BEQ bra_8DA8
C - - - - - 0x004DB2 01:8DA2: CE F3 07  DEC ram_07F3
C - - - - - 0x004DB5 01:8DA5: 4C AB 8D  JMP loc_8DAB
bra_8DA8:
C - - - - - 0x004DB8 01:8DA8: EE F3 07  INC ram_07F3
loc_8DAB:
C D 0 - - - 0x004DBB 01:8DAB: A9 07     LDA #$07
C - - - - - 0x004DBD 01:8DAD: 8D F0 07  STA ram_07F0
bra_8DB0_RTS:
C - - - - - 0x004DC0 01:8DB0: 60        RTS
bra_8DB1:
C - - - - - 0x004DC1 01:8DB1: CE F0 07  DEC ram_07F0
C - - - - - 0x004DC4 01:8DB4: F0 E1     BEQ bra_8D97
loc_8DB6_loop:
C D 0 - - - 0x004DC6 01:8DB6: AD F3 07  LDA ram_07F3
C - - - - - 0x004DC9 01:8DB9: 0A        ASL
C - - - - - 0x004DCA 01:8DBA: A8        TAY
C - - - - - 0x004DCB 01:8DBB: B9 73 91  LDA tbl_9173_ppu,Y
C - - - - - 0x004DCE 01:8DBE: 85 06     STA ram_0006_t003_ppu_addr_lo
C - - - - - 0x004DD0 01:8DC0: B9 74 91  LDA tbl_9173_ppu + $01,Y
C - - - - - 0x004DD3 01:8DC3: 85 07     STA ram_0007_t010_ppu_addr_hi
C - - - - - 0x004DD5 01:8DC5: B9 50 8F  LDA tbl_8F50,Y
C - - - - - 0x004DD8 01:8DC8: 85 04     STA ram_0004_t002_data
C - - - - - 0x004DDA 01:8DCA: B9 51 8F  LDA tbl_8F50 + $01,Y
C - - - - - 0x004DDD 01:8DCD: 85 05     STA ram_0004_t002_data + $01
C - - - - - 0x004DDF 01:8DCF: A9 00     LDA #$00
C - - - - - 0x004DE1 01:8DD1: 85 10     STA ram_0010_t009_ppu_addr_hi
C - - - - - 0x004DE3 01:8DD3: AD F1 07  LDA ram_07F1
; * 20
C - - - - - 0x004DE6 01:8DD6: 0A        ASL
C - - - - - 0x004DE7 01:8DD7: 26 10     ROL ram_0010_t009_ppu_addr_hi
C - - - - - 0x004DE9 01:8DD9: 0A        ASL
C - - - - - 0x004DEA 01:8DDA: 26 10     ROL ram_0010_t009_ppu_addr_hi
C - - - - - 0x004DEC 01:8DDC: 0A        ASL
C - - - - - 0x004DED 01:8DDD: 26 10     ROL ram_0010_t009_ppu_addr_hi
C - - - - - 0x004DEF 01:8DDF: 0A        ASL
C - - - - - 0x004DF0 01:8DE0: 26 10     ROL ram_0010_t009_ppu_addr_hi
C - - - - - 0x004DF2 01:8DE2: 0A        ASL
C - - - - - 0x004DF3 01:8DE3: 26 10     ROL ram_0010_t009_ppu_addr_hi
C - - - - - 0x004DF5 01:8DE5: 18        CLC
C - - - - - 0x004DF6 01:8DE6: 65 06     ADC ram_0006_t003_ppu_addr_lo
C - - - - - 0x004DF8 01:8DE8: 85 06     STA ram_0006_t003_ppu_addr_lo
C - - - - - 0x004DFA 01:8DEA: 85 08     STA ram_0008_t049_final_ppu_addr_lo
C - - - - - 0x004DFC 01:8DEC: A5 07     LDA ram_0007_t010_ppu_addr_hi
C - - - - - 0x004DFE 01:8DEE: 65 10     ADC ram_0010_t009_ppu_addr_hi
C - - - - - 0x004E00 01:8DF0: 85 07     STA ram_0007_t010_ppu_addr_hi
C - - - - - 0x004E02 01:8DF2: 05 17     ORA ram_0017_t000_ppu_addr_hi
C - - - - - 0x004E04 01:8DF4: 85 09     STA ram_0009_t00A_final_ppu_addr_hi
C - - - - - 0x004E06 01:8DF6: A6 1D     LDX ram_index_ppu_buffer
loc_8DF8_loop:
C - - - - - 0x004E08 01:8DF8: A9 01     LDA #$01
C - - - - - 0x004E0A 01:8DFA: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x004E0D 01:8DFD: A5 08     LDA ram_0008_t049_final_ppu_addr_lo
C - - - - - 0x004E0F 01:8DFF: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x004E12 01:8E02: A5 09     LDA ram_0009_t00A_final_ppu_addr_hi
C - - - - - 0x004E14 01:8E04: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
loc_8E07_loop:
C D 0 - - - 0x004E17 01:8E07: AC F2 07  LDY ram_07F2
C - - - - - 0x004E1A 01:8E0A: B1 04     LDA (ram_0004_t002_data),Y
C - - - - - 0x004E1C 01:8E0C: C9 FF     CMP #$FF
C - - - - - 0x004E1E 01:8E0E: F0 5E     BEQ bra_8E6E_FF
C - - - - - 0x004E20 01:8E10: C9 FE     CMP #$FE
C - - - - - 0x004E22 01:8E12: F0 73     BEQ bra_8E87_FE
C - - - - - 0x004E24 01:8E14: C9 03     CMP #$03
; bzk optimize, useless check, there is no such control byte 03
C - - - - - 0x004E26 01:8E16: F0 40     BEQ bra_8E58_03
C - - - - - 0x004E28 01:8E18: C9 01     CMP #$01
C - - - - - 0x004E2A 01:8E1A: F0 1E     BEQ bra_8E3A_01
C - - - - - 0x004E2C 01:8E1C: 85 0E     STA ram_000E_t00C
C - - - - - 0x004E2E 01:8E1E: C8        INY
C - - - - - 0x004E2F 01:8E1F: B1 04     LDA (ram_0004_t002_data),Y
C - - - - - 0x004E31 01:8E21: 85 0F     STA ram_000F_t003
C - - - - - 0x004E33 01:8E23: 18        CLC
C - - - - - 0x004E34 01:8E24: 65 06     ADC ram_0006_t003_ppu_addr_lo
C - - - - - 0x004E36 01:8E26: 85 06     STA ram_0006_t003_ppu_addr_lo
C - - - - - 0x004E38 01:8E28: 85 08     STA ram_0008_t049_final_ppu_addr_lo
C - - - - - 0x004E3A 01:8E2A: A5 0E     LDA ram_000E_t00C
bra_8E2C_loop:
C - - - - - 0x004E3C 01:8E2C: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x004E3F 01:8E2F: C6 0F     DEC ram_000F_t003
C - - - - - 0x004E41 01:8E31: D0 F9     BNE bra_8E2C_loop
C - - - - - 0x004E43 01:8E33: C8        INY
C - - - - - 0x004E44 01:8E34: 8C F2 07  STY ram_07F2
; bzk optimize, JMP to 0x004E1A
C - - - - - 0x004E47 01:8E37: 4C 07 8E  JMP loc_8E07_loop
bra_8E3A_01:
C - - - - - 0x004E4A 01:8E3A: C8        INY
C - - - - - 0x004E4B 01:8E3B: 8C F2 07  STY ram_07F2
C - - - - - 0x004E4E 01:8E3E: B1 04     LDA (ram_0004_t002_data),Y
C - - - - - 0x004E50 01:8E40: 85 0D     STA ram_000D_t002
C - - - - - 0x004E52 01:8E42: 20 9F 8E  JSR sub_8E9F
C - - - - - 0x004E55 01:8E45: AC F2 07  LDY ram_07F2
C - - - - - 0x004E58 01:8E48: B1 04     LDA (ram_0004_t002_data),Y
C - - - - - 0x004E5A 01:8E4A: 18        CLC
C - - - - - 0x004E5B 01:8E4B: 65 06     ADC ram_0006_t003_ppu_addr_lo
C - - - - - 0x004E5D 01:8E4D: 85 06     STA ram_0006_t003_ppu_addr_lo
C - - - - - 0x004E5F 01:8E4F: 85 08     STA ram_0008_t049_final_ppu_addr_lo
C - - - - - 0x004E61 01:8E51: C8        INY
C - - - - - 0x004E62 01:8E52: 8C F2 07  STY ram_07F2
C - - - - - 0x004E65 01:8E55: 4C 07 8E  JMP loc_8E07_loop
bra_8E58_03:
- - - - - - 0x004E68 01:8E58: C8        INY
- - - - - - 0x004E69 01:8E59: B1 04     LDA (ram_0004_t002_data),Y
- - - - - - 0x004E6B 01:8E5B: 18        CLC
- - - - - - 0x004E6C 01:8E5C: 65 06     ADC ram_0006_t003_ppu_addr_lo
- - - - - - 0x004E6E 01:8E5E: 85 06     STA ram_0006_t003_ppu_addr_lo
- - - - - - 0x004E70 01:8E60: 85 08     STA ram_0008_t049_final_ppu_addr_lo
- - - - - - 0x004E72 01:8E62: C8        INY
- - - - - - 0x004E73 01:8E63: 8C F2 07  STY ram_07F2
- - - - - - 0x004E76 01:8E66: A9 FF     LDA #$FF
- - - - - - 0x004E78 01:8E68: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
- - - - - - 0x004E7B 01:8E6B: 4C F8 8D  JMP loc_8DF8_loop
bra_8E6E_FF:
C - - - - - 0x004E7E 01:8E6E: C8        INY
C - - - - - 0x004E7F 01:8E6F: 8C F2 07  STY ram_07F2
C - - - - - 0x004E82 01:8E72: EE F1 07  INC ram_07F1
C - - - - - 0x004E85 01:8E75: A9 FF     LDA #$FF
C - - - - - 0x004E87 01:8E77: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x004E8A 01:8E7A: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x004E8C 01:8E7C: AD F1 07  LDA ram_07F1
C - - - - - 0x004E8F 01:8E7F: 29 01     AND #$01
C - - - - - 0x004E91 01:8E81: F0 03     BEQ bra_8E86_RTS
C - - - - - 0x004E93 01:8E83: 4C B6 8D  JMP loc_8DB6_loop
bra_8E86_RTS:
C - - - - - 0x004E96 01:8E86: 60        RTS
bra_8E87_FE:
; end token
C - - - - - 0x004E97 01:8E87: A9 FF     LDA #$FF
C - - - - - 0x004E99 01:8E89: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x004E9C 01:8E8C: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x004E9E 01:8E8E: AD F0 07  LDA ram_07F0
C - - - - - 0x004EA1 01:8E91: 09 80     ORA #$80
C - - - - - 0x004EA3 01:8E93: 8D F0 07  STA ram_07F0
C - - - - - 0x004EA6 01:8E96: A9 00     LDA #$00
C - - - - - 0x004EA8 01:8E98: 8D F2 07  STA ram_07F2
C - - - - - 0x004EAB 01:8E9B: 8D F1 07  STA ram_07F1
C - - - - - 0x004EAE 01:8E9E: 60        RTS



sub_8E9F:
C - - - - - 0x004EAF 01:8E9F: 20 BD 8E  JSR sub_8EBD
bra_8EA2_loop:
C - - - - - 0x004EB2 01:8EA2: 20 FA 8E  JSR sub_8EFA_read_byte_from_blk_data
C - - - - - 0x004EB5 01:8EA5: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x004EB8 01:8EA8: E6 0C     INC ram_000C_t003
C - - - - - 0x004EBA 01:8EAA: C6 0D     DEC ram_000D_t002
C - - - - - 0x004EBC 01:8EAC: F0 0E     BEQ bra_8EBC_RTS
C - - - - - 0x004EBE 01:8EAE: A5 0C     LDA ram_000C_t003
C - - - - - 0x004EC0 01:8EB0: C9 04     CMP #$04
C - - - - - 0x004EC2 01:8EB2: D0 EE     BNE bra_8EA2_loop
; if overflow
C - - - - - 0x004EC4 01:8EB4: E6 0A     INC ram_000A_t01E
C - - - - - 0x004EC6 01:8EB6: A9 00     LDA #$00
C - - - - - 0x004EC8 01:8EB8: 85 0C     STA ram_000C_t003
C - - - - - 0x004ECA 01:8EBA: F0 E6     BEQ bra_8EA2_loop    ; jmp
bra_8EBC_RTS:
C - - - - - 0x004ECC 01:8EBC: 60        RTS



sub_8EBD:
; out
    ; ram_000A_t01E
    ; ram_000B_t001
    ; ram_000C_t003
C - - - - - 0x004ECD 01:8EBD: A5 06     LDA ram_0006_t004_ppu_addr_lo
C - - - - - 0x004ECF 01:8EBF: 38        SEC
C - - - - - 0x004ED0 01:8EC0: E9 80     SBC #< $0080
C - - - - - 0x004ED2 01:8EC2: 85 0C     STA ram_000C_t003
C - - - - - 0x004ED4 01:8EC4: A5 07     LDA ram_0007_t00C_ppu_addr_hi
C - - - - - 0x004ED6 01:8EC6: E9 00     SBC #> $0080
C - - - - - 0x004ED8 01:8EC8: 85 0B     STA ram_000B_t001
C - - - - - 0x004EDA 01:8ECA: A5 0C     LDA ram_000C_t003
C - - - - - 0x004EDC 01:8ECC: 29 80     AND #$80
C - - - - - 0x004EDE 01:8ECE: 85 01     STA ram_0001_t02B
C - - - - - 0x004EE0 01:8ED0: A5 0B     LDA ram_000B_t001
C - - - - - 0x004EE2 01:8ED2: 29 03     AND #$03
; / 10
C - - - - - 0x004EE4 01:8ED4: 4A        LSR
C - - - - - 0x004EE5 01:8ED5: 66 01     ROR ram_0001_t02B
C - - - - - 0x004EE7 01:8ED7: 4A        LSR
C - - - - - 0x004EE8 01:8ED8: 66 01     ROR ram_0001_t02B
C - - - - - 0x004EEA 01:8EDA: 4A        LSR
C - - - - - 0x004EEB 01:8EDB: 66 01     ROR ram_0001_t02B
C - - - - - 0x004EED 01:8EDD: 4A        LSR
C - - - - - 0x004EEE 01:8EDE: 66 01     ROR ram_0001_t02B
C - - - - - 0x004EF0 01:8EE0: A5 0C     LDA ram_000C_t003
C - - - - - 0x004EF2 01:8EE2: 29 1F     AND #$1F
C - - - - - 0x004EF4 01:8EE4: 4A        LSR
C - - - - - 0x004EF5 01:8EE5: 4A        LSR
C - - - - - 0x004EF6 01:8EE6: 05 01     ORA ram_0001_t02B
C - - - - - 0x004EF8 01:8EE8: 85 0A     STA ram_000A_t01E
C - - - - - 0x004EFA 01:8EEA: A5 0C     LDA ram_000C_t003
C - - - - - 0x004EFC 01:8EEC: 29 60     AND #$60
; / 08
C - - - - - 0x004EFE 01:8EEE: 4A        LSR
C - - - - - 0x004EFF 01:8EEF: 4A        LSR
C - - - - - 0x004F00 01:8EF0: 4A        LSR
C - - - - - 0x004F01 01:8EF1: 85 0B     STA ram_000B_t001
C - - - - - 0x004F03 01:8EF3: A5 0C     LDA ram_000C_t003
C - - - - - 0x004F05 01:8EF5: 29 03     AND #$03
C - - - - - 0x004F07 01:8EF7: 85 0C     STA ram_000C_t003
C - - - - - 0x004F09 01:8EF9: 60        RTS



sub_8EFA_read_byte_from_blk_data:
; in
    ; ram_0000_t049
    ; ram_000C_t003
    ; ram_000A_t01E
; out
    ; A = 
C - - - - - 0x004F0A 01:8EFA: 20 3C 8F  JSR sub_8F3C
C - - - - - 0x004F0D 01:8EFD: A4 0A     LDY ram_000A_t01E
C - - - - - 0x004F0F 01:8EFF: C8        INY
C - - - - - 0x004F10 01:8F00: 20 86 EB  JSR sub_0x03EB96
C - - - - - 0x004F13 01:8F03: A5 32     LDA ram_blk_id_hi
C - - - - - 0x004F15 01:8F05: 0A        ASL
C - - - - - 0x004F16 01:8F06: A8        TAY
C - - - - - 0x004F17 01:8F07: 20 66 EB  JSR sub_0x03EB76_prepare_tile_blocks_pointers
C - - - - - 0x004F1A 01:8F0A: A9 00     LDA #$00
; * 10
C - - - - - 0x004F1C 01:8F0C: 06 00     ASL ram_0000_t049
C - - - - - 0x004F1E 01:8F0E: 2A        ROL
C - - - - - 0x004F1F 01:8F0F: 06 00     ASL ram_0000_t049
C - - - - - 0x004F21 01:8F11: 2A        ROL
C - - - - - 0x004F22 01:8F12: 06 00     ASL ram_0000_t049
C - - - - - 0x004F24 01:8F14: 2A        ROL
C - - - - - 0x004F25 01:8F15: 06 00     ASL ram_0000_t049
C - - - - - 0x004F27 01:8F17: 2A        ROL
C - - - - - 0x004F28 01:8F18: 85 01     STA ram_0000_t00B_blk_data + $01
C - - - - - 0x004F2A 01:8F1A: A5 02     LDA ram_0002_t01D_data_pointer
C - - - - - 0x004F2C 01:8F1C: 18        CLC
C - - - - - 0x004F2D 01:8F1D: 65 00     ADC ram_0000_t049
C - - - - - 0x004F2F 01:8F1F: 85 00     STA ram_0000_t00B_blk_data
C - - - - - 0x004F31 01:8F21: A5 01     LDA ram_0000_t00B_blk_data + $01
C - - - - - 0x004F33 01:8F23: 65 03     ADC ram_0002_t01D_data_pointer + $01
C - - - - - 0x004F35 01:8F25: 85 01     STA ram_0000_t00B_blk_data + $01
C - - - - - 0x004F37 01:8F27: A5 0B     LDA ram_000B_t001
C - - - - - 0x004F39 01:8F29: 18        CLC
C - - - - - 0x004F3A 01:8F2A: 65 0C     ADC ram_000C_t003
C - - - - - 0x004F3C 01:8F2C: 85 02     STA ram_0002_t01B_blk_data_index
C - - - - - 0x004F3E 01:8F2E: 20 9C EB  JSR sub_0x03EBAC_read_byte_from_blk_data
C - - - - - 0x004F41 01:8F31: A5 02     LDA ram_0002_t01C
C - - - - - 0x004F43 01:8F33: 60        RTS



tbl_8F34_offset:
- - - - - - 0x004F44 01:8F34: 00        .byte $00   ; 00 Warakiya
- D 0 - - - 0x004F45 01:8F35: 00        .byte $00   ; 01 Clock Tower
- D 0 - - - 0x004F46 01:8F36: 30        .byte $30   ; 02 Forest of Madness
- - - - - - 0x004F47 01:8F37: 00        .byte $00   ; 03 Ship of Fools
- - - - - - 0x004F48 01:8F38: 00        .byte $00   ; 04 Tower of Terror
- - - - - - 0x004F49 01:8F39: 00        .byte $00   ; 05 Causeway
- - - - - - 0x004F4A 01:8F3A: 00        .byte $00   ; 06 Murky Marshes
- D 0 - - - 0x004F4B 01:8F3B: 30        .byte $30   ; 07 Caves of Alucard



sub_8F3C:
C - - - - - 0x004F4C 01:8F3C: 20 5D EB  JSR sub_0x03EB6D_prepare_blk_data_pointers
C - - - - - 0x004F4F 01:8F3F: A4 32     LDY ram_blk_id_hi
C - - - - - 0x004F51 01:8F41: B9 34 8F  LDA tbl_8F34_offset,Y
C - - - - - 0x004F54 01:8F44: 18        CLC
C - - - - - 0x004F55 01:8F45: 65 00     ADC ram_0000_t00B_blk_data
C - - - - - 0x004F57 01:8F47: 85 00     STA ram_0000_t00B_blk_data
C - - - - - 0x004F59 01:8F49: A5 01     LDA ram_0000_t00B_blk_data + $01
C - - - - - 0x004F5B 01:8F4B: 69 00     ADC #$00
C - - - - - 0x004F5D 01:8F4D: 85 01     STA ram_0000_t00B_blk_data + $01
C - - - - - 0x004F5F 01:8F4F: 60        RTS



tbl_8F50:
- D 0 - - - 0x004F60 01:8F50: 5E 8F     .word off_8F5E_00
- D 0 - - - 0x004F62 01:8F52: 7F 8F     .word off_8F7F_01
- D 0 - - - 0x004F64 01:8F54: A5 8F     .word off_8FA5_02
- D 0 - - - 0x004F66 01:8F56: E3 8F     .word off_8FE3_03
- D 0 - - - 0x004F68 01:8F58: 39 90     .word off_9039_04
- D 0 - - - 0x004F6A 01:8F5A: A7 90     .word off_90A7_05
- D 0 - - - 0x004F6C 01:8F5C: 2D 91     .word off_912D_06

; control bytes 01, FE, FF

off_8F5E_00:
- D 0 - I - 0x004F6E 01:8F5E: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F70 01:8F60: FF        .byte $FF   ; 
- D 0 - I - 0x004F71 01:8F61: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F73 01:8F63: FF        .byte $FF   ; 
- D 0 - I - 0x004F74 01:8F64: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F76 01:8F66: FF        .byte $FF   ; 
- D 0 - I - 0x004F77 01:8F67: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F79 01:8F69: FF        .byte $FF   ; 
- D 0 - I - 0x004F7A 01:8F6A: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F7C 01:8F6C: FF        .byte $FF   ; 
- D 0 - I - 0x004F7D 01:8F6D: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F7F 01:8F6F: FF        .byte $FF   ; 
- D 0 - I - 0x004F80 01:8F70: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F82 01:8F72: FF        .byte $FF   ; 
- D 0 - I - 0x004F83 01:8F73: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F85 01:8F75: FF        .byte $FF   ; 
- D 0 - I - 0x004F86 01:8F76: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F88 01:8F78: FF        .byte $FF   ; 
- D 0 - I - 0x004F89 01:8F79: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F8B 01:8F7B: FF        .byte $FF   ; 
- D 0 - I - 0x004F8C 01:8F7C: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F8E 01:8F7E: FE        .byte $FE   ; end token



off_8F7F_01:
- D 0 - I - 0x004F8F 01:8F7F: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F91 01:8F81: FF        .byte $FF   ; 
- D 0 - I - 0x004F92 01:8F82: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F94 01:8F84: FF        .byte $FF   ; 
- D 0 - I - 0x004F95 01:8F85: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F97 01:8F87: FF        .byte $FF   ; 
- D 0 - I - 0x004F98 01:8F88: 01        .byte $01, $18   ; 
- D 0 - I - 0x004F9A 01:8F8A: FF        .byte $FF   ; 
- D 0 - I - 0x004F9B 01:8F8B: 01        .byte $01, $0A   ; 
- D 0 - I - 0x004F9D 01:8F8D: 00        .byte $00, $04   ; 
- D 0 - I - 0x004F9F 01:8F8F: 01        .byte $01, $0A   ; 
- D 0 - I - 0x004FA1 01:8F91: FF        .byte $FF   ; 
- D 0 - I - 0x004FA2 01:8F92: 01        .byte $01, $0A   ; 
- D 0 - I - 0x004FA4 01:8F94: 00        .byte $00, $04   ; 
- D 0 - I - 0x004FA6 01:8F96: 01        .byte $01, $0A   ; 
- D 0 - I - 0x004FA8 01:8F98: FF        .byte $FF   ; 
- D 0 - I - 0x004FA9 01:8F99: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FAB 01:8F9B: FF        .byte $FF   ; 
- D 0 - I - 0x004FAC 01:8F9C: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FAE 01:8F9E: FF        .byte $FF   ; 
- D 0 - I - 0x004FAF 01:8F9F: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FB1 01:8FA1: FF        .byte $FF   ; 
- D 0 - I - 0x004FB2 01:8FA2: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FB4 01:8FA4: FE        .byte $FE   ; end token



off_8FA5_02:
- D 0 - I - 0x004FB5 01:8FA5: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FB7 01:8FA7: FF        .byte $FF   ; 
- D 0 - I - 0x004FB8 01:8FA8: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FBA 01:8FAA: FF        .byte $FF   ; 
- D 0 - I - 0x004FBB 01:8FAB: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FBD 01:8FAD: FF        .byte $FF   ; 
- D 0 - I - 0x004FBE 01:8FAE: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FC0 01:8FB0: 00        .byte $00, $06   ; 
- D 0 - I - 0x004FC2 01:8FB2: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FC4 01:8FB4: FF        .byte $FF   ; 
- D 0 - I - 0x004FC5 01:8FB5: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FC7 01:8FB7: 00        .byte $00, $01   ; 
- D 0 - I - 0x004FC9 01:8FB9: 31        .byte $31, $01   ; 
- D 0 - I - 0x004FCB 01:8FBB: 32        .byte $32, $02   ; 
- D 0 - I - 0x004FCD 01:8FBD: 33        .byte $33, $01   ; 
- D 0 - I - 0x004FCF 01:8FBF: 00        .byte $00, $01   ; 
- D 0 - I - 0x004FD1 01:8FC1: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FD3 01:8FC3: FF        .byte $FF   ; 
- D 0 - I - 0x004FD4 01:8FC4: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FD6 01:8FC6: 00        .byte $00, $01   ; 
- D 0 - I - 0x004FD8 01:8FC8: 34        .byte $34, $01   ; 
- D 0 - I - 0x004FDA 01:8FCA: 32        .byte $32, $02   ; 
- D 0 - I - 0x004FDC 01:8FCC: 35        .byte $35, $01   ; 
- D 0 - I - 0x004FDE 01:8FCE: 00        .byte $00, $01   ; 
- D 0 - I - 0x004FE0 01:8FD0: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FE2 01:8FD2: FF        .byte $FF   ; 
- D 0 - I - 0x004FE3 01:8FD3: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FE5 01:8FD5: 00        .byte $00, $06   ; 
- D 0 - I - 0x004FE7 01:8FD7: 01        .byte $01, $09   ; 
- D 0 - I - 0x004FE9 01:8FD9: FF        .byte $FF   ; 
- D 0 - I - 0x004FEA 01:8FDA: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FEC 01:8FDC: FF        .byte $FF   ; 
- D 0 - I - 0x004FED 01:8FDD: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FEF 01:8FDF: FF        .byte $FF   ; 
- D 0 - I - 0x004FF0 01:8FE0: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FF2 01:8FE2: FE        .byte $FE   ; end token



off_8FE3_03:
- D 0 - I - 0x004FF3 01:8FE3: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FF5 01:8FE5: FF        .byte $FF   ; 
- D 0 - I - 0x004FF6 01:8FE6: 01        .byte $01, $18   ; 
- D 0 - I - 0x004FF8 01:8FE8: FF        .byte $FF   ; 
- D 0 - I - 0x004FF9 01:8FE9: 01        .byte $01, $07   ; 
- D 0 - I - 0x004FFB 01:8FEB: 00        .byte $00, $0A   ; 
- D 0 - I - 0x004FFD 01:8FED: 01        .byte $01, $07   ; 
- D 0 - I - 0x004FFF 01:8FEF: FF        .byte $FF   ; 
- D 0 - I - 0x005000 01:8FF0: 01        .byte $01, $07   ; 
- D 0 - I - 0x005002 01:8FF2: 00        .byte $00, $01   ; 
- D 0 - I - 0x005004 01:8FF4: 31        .byte $31, $01   ; 
- D 0 - I - 0x005006 01:8FF6: 32        .byte $32, $06   ; 
- D 0 - I - 0x005008 01:8FF8: 33        .byte $33, $01   ; 
- D 0 - I - 0x00500A 01:8FFA: 00        .byte $00, $01   ; 
- D 0 - I - 0x00500C 01:8FFC: 01        .byte $01, $07   ; 
- D 0 - I - 0x00500E 01:8FFE: FF        .byte $FF   ; 
- D 0 - I - 0x00500F 01:8FFF: 01        .byte $01, $07   ; 
- D 0 - I - 0x005011 01:9001: 00        .byte $00, $01   ; 
- D 0 - I - 0x005013 01:9003: 30        .byte $30, $01   ; 
- D 0 - I - 0x005015 01:9005: 00        .byte $00, $06   ; 
- D 0 - I - 0x005017 01:9007: 30        .byte $30, $01   ; 
- D 0 - I - 0x005019 01:9009: 00        .byte $00, $01   ; 
- D 0 - I - 0x00501B 01:900B: 01        .byte $01, $07   ; 
- D 0 - I - 0x00501D 01:900D: FF        .byte $FF   ; 
- D 0 - I - 0x00501E 01:900E: 01        .byte $01, $07   ; 
- D 0 - I - 0x005020 01:9010: 00        .byte $00, $01   ; 
- D 0 - I - 0x005022 01:9012: 30        .byte $30, $01   ; 
- D 0 - I - 0x005024 01:9014: 00        .byte $00, $06   ; 
- D 0 - I - 0x005026 01:9016: 30        .byte $30, $01   ; 
- D 0 - I - 0x005028 01:9018: 00        .byte $00, $01   ; 
- D 0 - I - 0x00502A 01:901A: 01        .byte $01, $07   ; 
- D 0 - I - 0x00502C 01:901C: FF        .byte $FF   ; 
- D 0 - I - 0x00502D 01:901D: 01        .byte $01, $07   ; 
- D 0 - I - 0x00502F 01:901F: 00        .byte $00, $01   ; 
- D 0 - I - 0x005031 01:9021: 34        .byte $34, $01   ; 
- D 0 - I - 0x005033 01:9023: 32        .byte $32, $06   ; 
- D 0 - I - 0x005035 01:9025: 35        .byte $35, $01   ; 
- D 0 - I - 0x005037 01:9027: 00        .byte $00, $01   ; 
- D 0 - I - 0x005039 01:9029: 01        .byte $01, $07   ; 
- D 0 - I - 0x00503B 01:902B: FF        .byte $FF   ; 
- D 0 - I - 0x00503C 01:902C: 01        .byte $01, $07   ; 
- D 0 - I - 0x00503E 01:902E: 00        .byte $00, $0A   ; 
- D 0 - I - 0x005040 01:9030: 01        .byte $01, $07   ; 
- D 0 - I - 0x005042 01:9032: FF        .byte $FF   ; 
- D 0 - I - 0x005043 01:9033: 01        .byte $01, $18   ; 
- D 0 - I - 0x005045 01:9035: FF        .byte $FF   ; 
- D 0 - I - 0x005046 01:9036: 01        .byte $01, $18   ; 
- D 0 - I - 0x005048 01:9038: FE        .byte $FE   ; end token



off_9039_04:
- D 0 - I - 0x005049 01:9039: 01        .byte $01, $18   ; 
- D 0 - I - 0x00504B 01:903B: FF        .byte $FF   ; 
- D 0 - I - 0x00504C 01:903C: 01        .byte $01, $05   ; 
- D 0 - I - 0x00504E 01:903E: 00        .byte $00, $0E   ; 
- D 0 - I - 0x005050 01:9040: 01        .byte $01, $05   ; 
- D 0 - I - 0x005052 01:9042: FF        .byte $FF   ; 
- D 0 - I - 0x005053 01:9043: 01        .byte $01, $05   ; 
- D 0 - I - 0x005055 01:9045: 00        .byte $00, $01   ; 
- D 0 - I - 0x005057 01:9047: 31        .byte $31, $01   ; 
- D 0 - I - 0x005059 01:9049: 32        .byte $32, $0A   ; 
- D 0 - I - 0x00505B 01:904B: 33        .byte $33, $01   ; 
- D 0 - I - 0x00505D 01:904D: 00        .byte $00, $01   ; 
- D 0 - I - 0x00505F 01:904F: 01        .byte $01, $05   ; 
- D 0 - I - 0x005061 01:9051: FF        .byte $FF   ; 
- D 0 - I - 0x005062 01:9052: 01        .byte $01, $05   ; 
- D 0 - I - 0x005064 01:9054: 00        .byte $00, $01   ; 
- D 0 - I - 0x005066 01:9056: 30        .byte $30, $01   ; 
- D 0 - I - 0x005068 01:9058: 00        .byte $00, $0A   ; 
- D 0 - I - 0x00506A 01:905A: 30        .byte $30, $01   ; 
- D 0 - I - 0x00506C 01:905C: 00        .byte $00, $01   ; 
- D 0 - I - 0x00506E 01:905E: 01        .byte $01, $05   ; 
- D 0 - I - 0x005070 01:9060: FF        .byte $FF   ; 
- D 0 - I - 0x005071 01:9061: 01        .byte $01, $05   ; 
- D 0 - I - 0x005073 01:9063: 00        .byte $00, $01   ; 
- D 0 - I - 0x005075 01:9065: 30        .byte $30, $01   ; 
- D 0 - I - 0x005077 01:9067: 00        .byte $00, $0A   ; 
- D 0 - I - 0x005079 01:9069: 30        .byte $30, $01   ; 
- D 0 - I - 0x00507B 01:906B: 00        .byte $00, $01   ; 
- D 0 - I - 0x00507D 01:906D: 01        .byte $01, $05   ; 
- D 0 - I - 0x00507F 01:906F: FF        .byte $FF   ; 
- D 0 - I - 0x005080 01:9070: 01        .byte $01, $05   ; 
- D 0 - I - 0x005082 01:9072: 00        .byte $00, $01   ; 
- D 0 - I - 0x005084 01:9074: 30        .byte $30, $01   ; 
- D 0 - I - 0x005086 01:9076: 00        .byte $00, $0A   ; 
- D 0 - I - 0x005088 01:9078: 30        .byte $30, $01   ; 
- D 0 - I - 0x00508A 01:907A: 00        .byte $00, $01   ; 
- D 0 - I - 0x00508C 01:907C: 01        .byte $01, $05   ; 
- D 0 - I - 0x00508E 01:907E: FF        .byte $FF   ; 
- D 0 - I - 0x00508F 01:907F: 01        .byte $01, $05   ; 
- D 0 - I - 0x005091 01:9081: 00        .byte $00, $01   ; 
- D 0 - I - 0x005093 01:9083: 30        .byte $30, $01   ; 
- D 0 - I - 0x005095 01:9085: 00        .byte $00, $0A   ; 
- D 0 - I - 0x005097 01:9087: 30        .byte $30, $01   ; 
- D 0 - I - 0x005099 01:9089: 00        .byte $00, $01   ; 
- D 0 - I - 0x00509B 01:908B: 01        .byte $01, $05   ; 
- D 0 - I - 0x00509D 01:908D: FF        .byte $FF   ; 
- D 0 - I - 0x00509E 01:908E: 01        .byte $01, $05   ; 
- D 0 - I - 0x0050A0 01:9090: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050A2 01:9092: 34        .byte $34, $01   ; 
- D 0 - I - 0x0050A4 01:9094: 32        .byte $32, $0A   ; 
- D 0 - I - 0x0050A6 01:9096: 35        .byte $35, $01   ; 
- D 0 - I - 0x0050A8 01:9098: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050AA 01:909A: 01        .byte $01, $05   ; 
- D 0 - I - 0x0050AC 01:909C: FF        .byte $FF   ; 
- D 0 - I - 0x0050AD 01:909D: 01        .byte $01, $05   ; 
- D 0 - I - 0x0050AF 01:909F: 00        .byte $00, $0E   ; 
- D 0 - I - 0x0050B1 01:90A1: 01        .byte $01, $05   ; 
- D 0 - I - 0x0050B3 01:90A3: FF        .byte $FF   ; 
- D 0 - I - 0x0050B4 01:90A4: 01        .byte $01, $18   ; 
- D 0 - I - 0x0050B6 01:90A6: FE        .byte $FE   ; end token



off_90A7_05:
- D 0 - I - 0x0050B7 01:90A7: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050B9 01:90A9: 00        .byte $00, $14   ; 
- D 0 - I - 0x0050BB 01:90AB: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050BD 01:90AD: FF        .byte $FF   ; 
- D 0 - I - 0x0050BE 01:90AE: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050C0 01:90B0: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050C2 01:90B2: 31        .byte $31, $01   ; 
- D 0 - I - 0x0050C4 01:90B4: 32        .byte $32, $10   ; 
- D 0 - I - 0x0050C6 01:90B6: 33        .byte $33, $01   ; 
- D 0 - I - 0x0050C8 01:90B8: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050CA 01:90BA: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050CC 01:90BC: FF        .byte $FF   ; 
- D 0 - I - 0x0050CD 01:90BD: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050CF 01:90BF: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050D1 01:90C1: 30        .byte $30, $01   ; 
- D 0 - I - 0x0050D3 01:90C3: 00        .byte $00, $10   ; 
- D 0 - I - 0x0050D5 01:90C5: 30        .byte $30, $01   ; 
- D 0 - I - 0x0050D7 01:90C7: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050D9 01:90C9: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050DB 01:90CB: FF        .byte $FF   ; 
- D 0 - I - 0x0050DC 01:90CC: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050DE 01:90CE: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050E0 01:90D0: 30        .byte $30, $01   ; 
- D 0 - I - 0x0050E2 01:90D2: 00        .byte $00, $10   ; 
- D 0 - I - 0x0050E4 01:90D4: 30        .byte $30, $01   ; 
- D 0 - I - 0x0050E6 01:90D6: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050E8 01:90D8: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050EA 01:90DA: FF        .byte $FF   ; 
- D 0 - I - 0x0050EB 01:90DB: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050ED 01:90DD: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050EF 01:90DF: 30        .byte $30, $01   ; 
- D 0 - I - 0x0050F1 01:90E1: 00        .byte $00, $10   ; 
- D 0 - I - 0x0050F3 01:90E3: 30        .byte $30, $01   ; 
- D 0 - I - 0x0050F5 01:90E5: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050F7 01:90E7: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050F9 01:90E9: FF        .byte $FF   ; 
- D 0 - I - 0x0050FA 01:90EA: 01        .byte $01, $02   ; 
- D 0 - I - 0x0050FC 01:90EC: 00        .byte $00, $01   ; 
- D 0 - I - 0x0050FE 01:90EE: 30        .byte $30, $01   ; 
- D 0 - I - 0x005100 01:90F0: 00        .byte $00, $10   ; 
- D 0 - I - 0x005102 01:90F2: 30        .byte $30, $01   ; 
- D 0 - I - 0x005104 01:90F4: 00        .byte $00, $01   ; 
- D 0 - I - 0x005106 01:90F6: 01        .byte $01, $02   ; 
- D 0 - I - 0x005108 01:90F8: FF        .byte $FF   ; 
- D 0 - I - 0x005109 01:90F9: 01        .byte $01, $02   ; 
- D 0 - I - 0x00510B 01:90FB: 00        .byte $00, $01   ; 
- D 0 - I - 0x00510D 01:90FD: 30        .byte $30, $01   ; 
- D 0 - I - 0x00510F 01:90FF: 00        .byte $00, $10   ; 
- D 0 - I - 0x005111 01:9101: 30        .byte $30, $01   ; 
- D 0 - I - 0x005113 01:9103: 00        .byte $00, $01   ; 
- D 0 - I - 0x005115 01:9105: 01        .byte $01, $02   ; 
- D 0 - I - 0x005117 01:9107: FF        .byte $FF   ; 
- D 0 - I - 0x005118 01:9108: 01        .byte $01, $02   ; 
- D 0 - I - 0x00511A 01:910A: 00        .byte $00, $01   ; 
- D 0 - I - 0x00511C 01:910C: 30        .byte $30, $01   ; 
- D 0 - I - 0x00511E 01:910E: 00        .byte $00, $10   ; 
- D 0 - I - 0x005120 01:9110: 30        .byte $30, $01   ; 
- D 0 - I - 0x005122 01:9112: 00        .byte $00, $01   ; 
- D 0 - I - 0x005124 01:9114: 01        .byte $01, $02   ; 
- D 0 - I - 0x005126 01:9116: FF        .byte $FF   ; 
- D 0 - I - 0x005127 01:9117: 01        .byte $01, $02   ; 
- D 0 - I - 0x005129 01:9119: 00        .byte $00, $01   ; 
- D 0 - I - 0x00512B 01:911B: 34        .byte $34, $01   ; 
- D 0 - I - 0x00512D 01:911D: 32        .byte $32, $10   ; 
- D 0 - I - 0x00512F 01:911F: 35        .byte $35, $01   ; 
- D 0 - I - 0x005131 01:9121: 00        .byte $00, $01   ; 
- D 0 - I - 0x005133 01:9123: 01        .byte $01, $02   ; 
- D 0 - I - 0x005135 01:9125: FF        .byte $FF   ; 
- D 0 - I - 0x005136 01:9126: 01        .byte $01, $02   ; 
- D 0 - I - 0x005138 01:9128: 00        .byte $00, $14   ; 
- D 0 - I - 0x00513A 01:912A: 01        .byte $01, $02   ; 
- D 0 - I - 0x00513C 01:912C: FE        .byte $FE   ; end token



off_912D_06:
- D 0 - I - 0x00513D 01:912D: 31        .byte $31, $01   ; 
- D 0 - I - 0x00513F 01:912F: 32        .byte $32, $16   ; 
- D 0 - I - 0x005141 01:9131: 33        .byte $33, $01   ; 
- D 0 - I - 0x005143 01:9133: FF        .byte $FF   ; 
- D 0 - I - 0x005144 01:9134: 30        .byte $30, $01   ; 
- D 0 - I - 0x005146 01:9136: 00        .byte $00, $16   ; 
- D 0 - I - 0x005148 01:9138: 30        .byte $30, $01   ; 
- D 0 - I - 0x00514A 01:913A: FF        .byte $FF   ; 
- D 0 - I - 0x00514B 01:913B: 30        .byte $30, $01   ; 
- D 0 - I - 0x00514D 01:913D: 00        .byte $00, $16   ; 
- D 0 - I - 0x00514F 01:913F: 30        .byte $30, $01   ; 
- D 0 - I - 0x005151 01:9141: FF        .byte $FF   ; 
- D 0 - I - 0x005152 01:9142: 30        .byte $30, $01   ; 
- D 0 - I - 0x005154 01:9144: 00        .byte $00, $16   ; 
- D 0 - I - 0x005156 01:9146: 30        .byte $30, $01   ; 
- D 0 - I - 0x005158 01:9148: FF        .byte $FF   ; 
- D 0 - I - 0x005159 01:9149: 30        .byte $30, $01   ; 
- D 0 - I - 0x00515B 01:914B: 00        .byte $00, $16   ; 
- D 0 - I - 0x00515D 01:914D: 30        .byte $30, $01   ; 
- D 0 - I - 0x00515F 01:914F: FF        .byte $FF   ; 
- D 0 - I - 0x005160 01:9150: 30        .byte $30, $01   ; 
- D 0 - I - 0x005162 01:9152: 00        .byte $00, $16   ; 
- D 0 - I - 0x005164 01:9154: 30        .byte $30, $01   ; 
- D 0 - I - 0x005166 01:9156: FF        .byte $FF   ; 
- D 0 - I - 0x005167 01:9157: 30        .byte $30, $01   ; 
- D 0 - I - 0x005169 01:9159: 00        .byte $00, $16   ; 
- D 0 - I - 0x00516B 01:915B: 30        .byte $30, $01   ; 
- D 0 - I - 0x00516D 01:915D: FF        .byte $FF   ; 
- D 0 - I - 0x00516E 01:915E: 30        .byte $30, $01   ; 
- D 0 - I - 0x005170 01:9160: 00        .byte $00, $16   ; 
- D 0 - I - 0x005172 01:9162: 30        .byte $30, $01   ; 
- D 0 - I - 0x005174 01:9164: FF        .byte $FF   ; 
- D 0 - I - 0x005175 01:9165: 30        .byte $30, $01   ; 
- D 0 - I - 0x005177 01:9167: 00        .byte $00, $16   ; 
- D 0 - I - 0x005179 01:9169: 30        .byte $30, $01   ; 
- D 0 - I - 0x00517B 01:916B: FF        .byte $FF   ; 
- D 0 - I - 0x00517C 01:916C: 34        .byte $34, $01   ; 
- D 0 - I - 0x00517E 01:916E: 32        .byte $32, $16   ; 
- D 0 - I - 0x005180 01:9170: 35        .byte $35, $01   ; 
- D 0 - I - 0x005182 01:9172: FE        .byte $FE   ; end token



tbl_9173_ppu:
; bzk optimize, same bytes
- D 0 - - - 0x005183 01:9173: 84 00     .word $0084 ; 00 
- D 0 - - - 0x005185 01:9175: 84 00     .word $0084 ; 01 
- D 0 - - - 0x005187 01:9177: 84 00     .word $0084 ; 02 
- D 0 - - - 0x005189 01:9179: 84 00     .word $0084 ; 03 
- D 0 - - - 0x00518B 01:917B: 84 00     .word $0084 ; 04 
- D 0 - - - 0x00518D 01:917D: 84 00     .word $0084 ; 05 
- D 0 - - - 0x00518F 01:917F: 84 00     .word $0084 ; 06 



sub_9181:
C - - - - - 0x005191 01:9181: 20 82 E1  JSR sub_0x03E192_disable_nmi_and_rendering
C - - - - - 0x005194 01:9184: A9 00     LDA #$00
C - - - - - 0x005196 01:9186: 85 FD     STA ram_scroll_X
C - - - - - 0x005198 01:9188: 85 FC     STA ram_scroll_Y
C - - - - - 0x00519A 01:918A: A9 20     LDA #$20
C - - - - - 0x00519C 01:918C: 85 00     STA ram_0000_t09B_ppu_addr_hi
C - - - - - 0x00519E 01:918E: 20 1C 92  JSR sub_921C_clear_80h_ppu
C - - - - - 0x0051A1 01:9191: A9 24     LDA #$24
C - - - - - 0x0051A3 01:9193: 85 00     STA ram_0000_t09B_ppu_addr_hi
C - - - - - 0x0051A5 01:9195: 20 1C 92  JSR sub_921C_clear_80h_ppu
C - - - - - 0x0051A8 01:9198: A9 24     LDA #$24
C - - - - - 0x0051AA 01:919A: 85 07     STA ram_0007_t00C_ppu_addr_hi
C - - - - - 0x0051AC 01:919C: 20 CF 91  JSR sub_91CF
C - - - - - 0x0051AF 01:919F: A9 20     LDA #$20
C - - - - - 0x0051B1 01:91A1: 85 07     STA ram_0007_t00C_ppu_addr_hi
C - - - - - 0x0051B3 01:91A3: 20 CF 91  JSR sub_91CF
C - - - - - 0x0051B6 01:91A6: A9 23     LDA #$23
C - - - - - 0x0051B8 01:91A8: 85 00     STA ram_0000_t08B_ppu_addr_hi
C - - - - - 0x0051BA 01:91AA: 20 3C 92  JSR sub_923C
C - - - - - 0x0051BD 01:91AD: A9 27     LDA #$27
C - - - - - 0x0051BF 01:91AF: 85 00     STA ram_0000_t08B_ppu_addr_hi
C - - - - - 0x0051C1 01:91B1: 20 3C 92  JSR sub_923C
C - - - - - 0x0051C4 01:91B4: A5 FF     LDA ram_for_2000
C - - - - - 0x0051C6 01:91B6: 29 67     AND #$67
C - - - - - 0x0051C8 01:91B8: 09 04     ORA #$04
C - - - - - 0x0051CA 01:91BA: 8D 00 20  STA $2000
C - - - - - 0x0051CD 01:91BD: A9 20     LDA #$20
C - - - - - 0x0051CF 01:91BF: 85 00     STA ram_0000_t09C_ppu_addr_hi
C - - - - - 0x0051D1 01:91C1: 20 65 92  JSR sub_9265_clear_certain_ppu_locations
C - - - - - 0x0051D4 01:91C4: A9 24     LDA #$24
C - - - - - 0x0051D6 01:91C6: 85 00     STA ram_0000_t09C_ppu_addr_hi
C - - - - - 0x0051D8 01:91C8: 20 65 92  JSR sub_9265_clear_certain_ppu_locations
; bzk optimize, JMP
C - - - - - 0x0051DB 01:91CB: 20 66 ED  JSR sub_0x03ED76_set_2000
C - - - - - 0x0051DE 01:91CE: 60        RTS



sub_91CF:
; bzk optimize, BIT instead of LDA at 0x0051DF, delete LDA at 0x0051E2
C - - - - - 0x0051DF 01:91CF: AD 02 20  LDA $2002
C - - - - - 0x0051E2 01:91D2: A5 07     LDA ram_0007_t00C_ppu_addr_hi
C - - - - - 0x0051E4 01:91D4: 8D 06 20  STA $2006
C - - - - - 0x0051E7 01:91D7: A9 80     LDA #$80
C - - - - - 0x0051E9 01:91D9: 85 06     STA ram_0006_t004_ppu_addr_lo
C - - - - - 0x0051EB 01:91DB: 8D 06 20  STA $2006
C - - - - - 0x0051EE 01:91DE: A9 18     LDA #$18
C - - - - - 0x0051F0 01:91E0: 85 08     STA ram_0008_t057_loop_counter
loc_91E2_loop:
C D 0 - - - 0x0051F2 01:91E2: A9 20     LDA #$20
C - - - - - 0x0051F4 01:91E4: 85 0D     STA ram_000D_t001
C - - - - - 0x0051F6 01:91E6: 20 FE 91  JSR sub_91FE
C - - - - - 0x0051F9 01:91E9: C6 08     DEC ram_0008_t057_loop_counter
C - - - - - 0x0051FB 01:91EB: F0 10     BEQ bra_91FD_RTS
C - - - - - 0x0051FD 01:91ED: A5 06     LDA ram_0006_t004_ppu_addr_lo
C - - - - - 0x0051FF 01:91EF: 18        CLC
C - - - - - 0x005200 01:91F0: 69 20     ADC #< $0020
C - - - - - 0x005202 01:91F2: 85 06     STA ram_0006_t004_ppu_addr_lo
C - - - - - 0x005204 01:91F4: A5 07     LDA ram_0007_t00C_ppu_addr_hi
C - - - - - 0x005206 01:91F6: 69 00     ADC #> $0020
C - - - - - 0x005208 01:91F8: 85 07     STA ram_0007_t00C_ppu_addr_hi
C - - - - - 0x00520A 01:91FA: 4C E2 91  JMP loc_91E2_loop
bra_91FD_RTS:
C - - - - - 0x00520D 01:91FD: 60        RTS



sub_91FE:
C - - - - - 0x00520E 01:91FE: 20 BD 8E  JSR sub_8EBD
bra_9201_loop:
C - - - - - 0x005211 01:9201: 20 FA 8E  JSR sub_8EFA_read_byte_from_blk_data
C - - - - - 0x005214 01:9204: 8D 07 20  STA $2007
C - - - - - 0x005217 01:9207: E6 0C     INC ram_000C_t003
C - - - - - 0x005219 01:9209: C6 0D     DEC ram_000D_t001
C - - - - - 0x00521B 01:920B: F0 0E     BEQ bra_921B_RTS
C - - - - - 0x00521D 01:920D: A5 0C     LDA ram_000C_t003
C - - - - - 0x00521F 01:920F: C9 04     CMP #$04
C - - - - - 0x005221 01:9211: D0 EE     BNE bra_9201_loop
; if overflow
C - - - - - 0x005223 01:9213: E6 0A     INC ram_000A_t01E
C - - - - - 0x005225 01:9215: A9 00     LDA #$00
C - - - - - 0x005227 01:9217: 85 0C     STA ram_000C_t003
C - - - - - 0x005229 01:9219: F0 E6     BEQ bra_9201_loop    ; jmp
bra_921B_RTS:
C - - - - - 0x00522B 01:921B: 60        RTS



sub_921C_clear_80h_ppu:
; bzk optimize, BIT instead of LDA,
; this will eliminate the need of 0000 middleman
C - - - - - 0x00522C 01:921C: AD 02 20  LDA $2002
C - - - - - 0x00522F 01:921F: A5 00     LDA ram_0000_t09B_ppu_addr_hi
C - - - - - 0x005231 01:9221: 8D 06 20  STA $2006
C - - - - - 0x005234 01:9224: A9 00     LDA #$00
C - - - - - 0x005236 01:9226: 8D 06 20  STA $2006
C - - - - - 0x005239 01:9229: A2 80     LDX #$80
C - - - - - 0x00523B 01:922B: A9 00     LDA #$00
bra_922D_loop:  ; 2000-207F or 2400-247F
C - - - - - 0x00523D 01:922D: 8D 07 20  STA $2007
C - - - - - 0x005240 01:9230: CA        DEX
C - - - - - 0x005241 01:9231: D0 FA     BNE bra_922D_loop
C - - - - - 0x005243 01:9233: 60        RTS


; bzk garbage
- - - - - - 0x005244 01:9234: 00        .byte $00   ; 
- - - - - - 0x005245 01:9235: 00        .byte $00   ; 
- - - - - - 0x005246 01:9236: 01        .byte $01   ; 
- - - - - - 0x005247 01:9237: 00        .byte $00   ; 
- - - - - - 0x005248 01:9238: 00        .byte $00   ; 
- - - - - - 0x005249 01:9239: 00        .byte $00   ; 
- - - - - - 0x00524A 01:923A: 00        .byte $00   ; 
- - - - - - 0x00524B 01:923B: 01        .byte $01   ; 



sub_923C:
; bzk optimize, BIT instead of LDA,
; this will eliminate the need of ram_0000_t08B_ppu_addr_hi middleman
C - - - - - 0x00524C 01:923C: AD 02 20  LDA $2002
C - - - - - 0x00524F 01:923F: A5 00     LDA ram_0000_t08B_ppu_addr_hi
C - - - - - 0x005251 01:9241: 8D 06 20  STA $2006
C - - - - - 0x005254 01:9244: A9 C8     LDA #$C8
C - - - - - 0x005256 01:9246: 8D 06 20  STA $2006
C - - - - - 0x005259 01:9249: A9 00     LDA #$00
C - - - - - 0x00525B 01:924B: 85 07     STA ram_0007_t011_loop_counter
bra_924D_loop:
C - - - - - 0x00525D 01:924D: 20 3C 8F  JSR sub_8F3C
C - - - - - 0x005260 01:9250: A5 07     LDA ram_0007_t011_loop_counter
C - - - - - 0x005262 01:9252: 85 02     STA ram_0002_t01B_blk_data_index
C - - - - - 0x005264 01:9254: E6 02     INC ram_0002_t01B_blk_data_index
C - - - - - 0x005266 01:9256: 20 FF 93  JSR sub_93FF
C - - - - - 0x005269 01:9259: 8D 07 20  STA $2007
C - - - - - 0x00526C 01:925C: E6 07     INC ram_0007_t011_loop_counter
C - - - - - 0x00526E 01:925E: A5 07     LDA ram_0007_t011_loop_counter
C - - - - - 0x005270 01:9260: C9 38     CMP #$38
C - - - - - 0x005272 01:9262: D0 E9     BNE bra_924D_loop
C - - - - - 0x005274 01:9264: 60        RTS



sub_9265_clear_certain_ppu_locations:
C - - - - - 0x005275 01:9265: A4 32     LDY ram_blk_id_hi
C - - - - - 0x005277 01:9267: B9 96 92  LDA tbl_9296_offset,Y
C - - - - - 0x00527A 01:926A: A8        TAY
loc_926B_loop:
C D 0 - - - 0x00527B 01:926B: B9 9E 92  LDA tbl_929E,Y
C - - - - - 0x00527E 01:926E: C9 FE     CMP #$FE
C - - - - - 0x005280 01:9270: F0 23     BEQ bra_9295_RTS
; bzk optimize, BIT instead of LDA,
; this will eliminate the need of reading the table twice
C - - - - - 0x005282 01:9272: AD 02 20  LDA $2002
C - - - - - 0x005285 01:9275: B9 9E 92  LDA tbl_929E,Y
C - - - - - 0x005288 01:9278: 05 00     ORA ram_0000_t09C_ppu_addr_hi
C - - - - - 0x00528A 01:927A: 8D 06 20  STA $2006
C - - - - - 0x00528D 01:927D: C8        INY
C - - - - - 0x00528E 01:927E: B9 9E 92  LDA tbl_929E,Y
C - - - - - 0x005291 01:9281: 8D 06 20  STA $2006
C - - - - - 0x005294 01:9284: C8        INY
C - - - - - 0x005295 01:9285: B9 9E 92  LDA tbl_929E,Y
C - - - - - 0x005298 01:9288: AA        TAX
C - - - - - 0x005299 01:9289: A9 00     LDA #$00
bra_928B_loop:
C - - - - - 0x00529B 01:928B: 8D 07 20  STA $2007
C - - - - - 0x00529E 01:928E: CA        DEX
C - - - - - 0x00529F 01:928F: D0 FA     BNE bra_928B_loop
C - - - - - 0x0052A1 01:9291: C8        INY
C - - - - - 0x0052A2 01:9292: 4C 6B 92  JMP loc_926B_loop
bra_9295_RTS:
C - - - - - 0x0052A5 01:9295: 60        RTS



tbl_9296_offset:
- - - - - - 0x0052A6 01:9296: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0052A7 01:9297: 00        .byte off_929E_01_Clock_Tower - tbl__929E   ; 01 Clock Tower
- D 0 - - - 0x0052A8 01:9298: 13        .byte off_92B1_02_Forest_of_Madness - tbl__929E   ; 02 Forest of Madness
- - - - - - 0x0052A9 01:9299: 00        .byte $00   ; 03 placeholder
- - - - - - 0x0052AA 01:929A: 00        .byte $00   ; 04 placeholder
- - - - - - 0x0052AB 01:929B: 00        .byte $00   ; 05 placeholder
- - - - - - 0x0052AC 01:929C: 00        .byte $00   ; 06 placeholder
- D 0 - - - 0x0052AD 01:929D: 2C        .byte off_92CA_07_Caves_of_Alucard - tbl__929E   ; 07 Caves of Alucard



tbl_929E:
tbl__929E:
off_929E_01_Clock_Tower:
- D 0 - - - 0x0052AE 01:929E: 02 42     .dbyt $0242 ; offset for ppu, 0242 = 2242/2642
- D 0 - - - 0x0052B0 01:92A0: 06        .byte $06   ; counter of 00s

- D 0 - - - 0x0052B1 01:92A1: 02 43     .dbyt $0243 ; 
- D 0 - - - 0x0052B3 01:92A3: 06        .byte $06   ; 

- D 0 - - - 0x0052B4 01:92A4: 02 9C     .dbyt $029C ; 
- D 0 - - - 0x0052B6 01:92A6: 04        .byte $04   ; 

- D 0 - - - 0x0052B7 01:92A7: 02 9D     .dbyt $029D ; 
- D 0 - - - 0x0052B9 01:92A9: 04        .byte $04   ; 

- D 0 - - - 0x0052BA 01:92AA: 02 9E     .dbyt $029E ; 
- D 0 - - - 0x0052BC 01:92AC: 04        .byte $04   ; 

- D 0 - - - 0x0052BD 01:92AD: 02 9F     .dbyt $029F ; 
- D 0 - - - 0x0052BF 01:92AF: 04        .byte $04   ; 

- D 0 - - - 0x0052C0 01:92B0: FE        .byte $FE   ; end token



off_92B1_02_Forest_of_Madness:
- D 0 - - - 0x0052C1 01:92B1: 02 84     .dbyt $0284 ; offset for ppu, 0284 = 2284/2684
- D 0 - - - 0x0052C3 01:92B3: 02        .byte $02   ; counter of 00s

- D 0 - - - 0x0052C4 01:92B4: 02 85     .dbyt $0285 ; 
- D 0 - - - 0x0052C6 01:92B6: 02        .byte $02   ; 

- D 0 - - - 0x0052C7 01:92B7: 02 4E     .dbyt $024E ; 
- D 0 - - - 0x0052C9 01:92B9: 04        .byte $04   ; 

- D 0 - - - 0x0052CA 01:92BA: 02 4F     .dbyt $024F ; 
- D 0 - - - 0x0052CC 01:92BC: 04        .byte $04   ; 

- D 0 - - - 0x0052CD 01:92BD: 02 9C     .dbyt $029C ; 
- D 0 - - - 0x0052CF 01:92BF: 02        .byte $02   ; 

- D 0 - - - 0x0052D0 01:92C0: 02 9D     .dbyt $029D ; 
- D 0 - - - 0x0052D2 01:92C2: 02        .byte $02   ; 

- D 0 - - - 0x0052D3 01:92C3: 02 9E     .dbyt $029E ; 
- D 0 - - - 0x0052D5 01:92C5: 02        .byte $02   ; 

- D 0 - - - 0x0052D6 01:92C6: 02 9F     .dbyt $029F ; 
- D 0 - - - 0x0052D8 01:92C8: 02        .byte $02   ; 

- D 0 - - - 0x0052D9 01:92C9: FE        .byte $FE   ; end token



off_92CA_07_Caves_of_Alucard:
- D 0 - - - 0x0052DA 01:92CA: 02 80     .dbyt $0280 ; offset for ppu, 0280 = 2280/2680
- D 0 - - - 0x0052DC 01:92CC: 04        .byte $04   ; counter of 00s

- D 0 - - - 0x0052DD 01:92CD: 02 81     .dbyt $0281 ; 
- D 0 - - - 0x0052DF 01:92CF: 04        .byte $04   ; 

- D 0 - - - 0x0052E0 01:92D0: 02 C2     .dbyt $02C2 ; 
- D 0 - - - 0x0052E2 01:92D2: 02        .byte $02   ; 

- D 0 - - - 0x0052E3 01:92D3: 02 C3     .dbyt $02C3 ; 
- D 0 - - - 0x0052E5 01:92D5: 02        .byte $02   ; 

- D 0 - - - 0x0052E6 01:92D6: 02 5E     .dbyt $025E ; 
- D 0 - - - 0x0052E8 01:92D8: 06        .byte $06   ; 

- D 0 - - - 0x0052E9 01:92D9: FE        .byte $FE   ; end token



sub_92DA:
C - - - - - 0x0052EA 01:92DA: AC F3 07  LDY ram_07F3
C - - - - - 0x0052ED 01:92DD: B9 15 94  LDA tbl_9415,Y
C - - - - - 0x0052F0 01:92E0: 85 06     STA ram_0006_t008_tile
C - - - - - 0x0052F2 01:92E2: AD F3 07  LDA ram_07F3
C - - - - - 0x0052F5 01:92E5: 0A        ASL
C - - - - - 0x0052F6 01:92E6: A8        TAY
C - - - - - 0x0052F7 01:92E7: B9 23 94  LDA tbl_9423,Y
C - - - - - 0x0052FA 01:92EA: 85 10     STA ram_0010_t003_data
C - - - - - 0x0052FC 01:92EC: B9 24 94  LDA tbl_9423 + $01,Y
C - - - - - 0x0052FF 01:92EF: 85 11     STA ram_0010_t003_data + $01
C - - - - - 0x005301 01:92F1: AC F3 07  LDY ram_07F3
C - - - - - 0x005304 01:92F4: B9 1C 94  LDA tbl_941C,Y
C - - - - - 0x005307 01:92F7: 85 0A     STA ram_000A_t019
C - - - - - 0x005309 01:92F9: A0 00     LDY #$00
C - - - - - 0x00530B 01:92FB: A6 1D     LDX ram_index_ppu_buffer
loc_92FD_loop:
C D 0 - - - 0x00530D 01:92FD: A5 0A     LDA ram_000A_t019
C - - - - - 0x00530F 01:92FF: 29 0F     AND #$0F
C - - - - - 0x005311 01:9301: 4A        LSR
C - - - - - 0x005312 01:9302: 85 09     STA ram_0009_t003_ppu_addr_lo
C - - - - - 0x005314 01:9304: A5 0A     LDA ram_000A_t019
C - - - - - 0x005316 01:9306: 29 E0     AND #$E0
C - - - - - 0x005318 01:9308: 4A        LSR
C - - - - - 0x005319 01:9309: 4A        LSR
C - - - - - 0x00531A 01:930A: 05 09     ORA ram_0009_t003_ppu_addr_lo
C - - - - - 0x00531C 01:930C: 18        CLC
C - - - - - 0x00531D 01:930D: 69 C0     ADC #$C0
C - - - - - 0x00531F 01:930F: 85 09     STA ram_0009_t003_ppu_addr_lo
C - - - - - 0x005321 01:9311: A5 17     LDA ram_0017_t000_ppu_addr_hi
C - - - - - 0x005323 01:9313: 09 03     ORA #$03
C - - - - - 0x005325 01:9315: 85 08     STA ram_0008_t040_ppu_addr_hi
C - - - - - 0x005327 01:9317: A9 0A     LDA #$0A
C - - - - - 0x005329 01:9319: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x00532C 01:931C: A5 09     LDA ram_0009_t003_ppu_addr_lo
C - - - - - 0x00532E 01:931E: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x005331 01:9321: A5 08     LDA ram_0008_t040_ppu_addr_hi
C - - - - - 0x005333 01:9323: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x005336 01:9326: A5 06     LDA ram_0006_t008_tile
C - - - - - 0x005338 01:9328: 20 21 8A  JSR sub_8A21_write_to_buffer_and_INX
C - - - - - 0x00533B 01:932B: 86 15     STX ram_0015_t002_copy_index_ppu_buffer
C - - - - - 0x00533D 01:932D: A5 0A     LDA ram_000A_t019
C - - - - - 0x00533F 01:932F: 85 0B     STA ram_000B_t003
loc_9331:
C D 0 - - - 0x005341 01:9331: B1 10     LDA (ram_0010_t003_data),Y
C - - - - - 0x005343 01:9333: C9 FE     CMP #$FE
C - - - - - 0x005345 01:9335: D0 03     BNE bra_933A
C - - - - - 0x005347 01:9337: 4C D3 93  JMP loc_93D3_FE
bra_933A:
C - - - - - 0x00534A 01:933A: C9 FF     CMP #$FF
C - - - - - 0x00534C 01:933C: F0 3F     BEQ bra_937D_FF
C - - - - - 0x00534E 01:933E: 85 12     STA ram_0012_t010
C - - - - - 0x005350 01:9340: C8        INY
C - - - - - 0x005351 01:9341: B1 10     LDA (ram_0010_t003_data),Y
C - - - - - 0x005353 01:9343: 85 07     STA ram_0007_t016_loop_counter
bra_9345_loop:
C - - - - - 0x005355 01:9345: A5 0B     LDA ram_000B_t003
C - - - - - 0x005357 01:9347: 29 01     AND #$01
C - - - - - 0x005359 01:9349: F0 06     BEQ bra_9351
C - - - - - 0x00535B 01:934B: A9 F3     LDA #$F3
C - - - - - 0x00535D 01:934D: 85 14     STA ram_0014_t006
C - - - - - 0x00535F 01:934F: D0 0C     BNE bra_935D    ; jmp
bra_9351:
C - - - - - 0x005361 01:9351: 20 D6 93  JSR sub_93D6
C - - - - - 0x005364 01:9354: A5 16     LDA ram_0016_t00A_nametable_attribute
C - - - - - 0x005366 01:9356: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x005369 01:9359: A9 FC     LDA #$FC
C - - - - - 0x00536B 01:935B: 85 14     STA ram_0014_t006
bra_935D:
C - - - - - 0x00536D 01:935D: A5 12     LDA ram_0012_t010
C - - - - - 0x00536F 01:935F: F0 03     BEQ bra_9364
C - - - - - 0x005371 01:9361: 4C 6C 93  JMP loc_936C
bra_9364:
C - - - - - 0x005374 01:9364: BD 00 03  LDA ram_ppu_buffer,X
C - - - - - 0x005377 01:9367: 25 14     AND ram_0014_t006
C - - - - - 0x005379 01:9369: 9D 00 03  STA ram_ppu_buffer,X
loc_936C:
C D 0 - - - 0x00537C 01:936C: A5 0B     LDA ram_000B_t003
C - - - - - 0x00537E 01:936E: 29 01     AND #$01
C - - - - - 0x005380 01:9370: F0 01     BEQ bra_9373
C - - - - - 0x005382 01:9372: E8        INX
bra_9373:
C - - - - - 0x005383 01:9373: E6 0B     INC ram_000B_t003
C - - - - - 0x005385 01:9375: C6 07     DEC ram_0007_t016_loop_counter
C - - - - - 0x005387 01:9377: D0 CC     BNE bra_9345_loop
C - - - - - 0x005389 01:9379: C8        INY
C - - - - - 0x00538A 01:937A: 4C 31 93  JMP loc_9331
bra_937D_FF:
C - - - - - 0x00538D 01:937D: C8        INY
C - - - - - 0x00538E 01:937E: A5 0A     LDA ram_000A_t019
C - - - - - 0x005390 01:9380: 18        CLC
C - - - - - 0x005391 01:9381: 69 10     ADC #$10
C - - - - - 0x005393 01:9383: 85 0A     STA ram_000A_t019
C - - - - - 0x005395 01:9385: A6 15     LDX ram_0015_t002_copy_index_ppu_buffer
loc_9387_loop:
C D 0 - - - 0x005397 01:9387: B1 10     LDA (ram_0010_t003_data),Y
C - - - - - 0x005399 01:9389: C9 FE     CMP #$FE
C - - - - - 0x00539B 01:938B: F0 46     BEQ bra_93D3_FE
C - - - - - 0x00539D 01:938D: C9 FF     CMP #$FF
C - - - - - 0x00539F 01:938F: F0 37     BEQ bra_93C8_FF
C - - - - - 0x0053A1 01:9391: 85 12     STA ram_0012_t00D
C - - - - - 0x0053A3 01:9393: C8        INY
C - - - - - 0x0053A4 01:9394: B1 10     LDA (ram_0010_t003_data),Y
C - - - - - 0x0053A6 01:9396: 85 07     STA ram_0007_t015_loop_counter
bra_9398_loop:
C - - - - - 0x0053A8 01:9398: A5 0B     LDA ram_000B_t003
C - - - - - 0x0053AA 01:939A: 29 01     AND #$01
C - - - - - 0x0053AC 01:939C: F0 06     BEQ bra_93A4
C - - - - - 0x0053AE 01:939E: A9 3F     LDA #$3F
C - - - - - 0x0053B0 01:93A0: 85 14     STA ram_0014_t005
C - - - - - 0x0053B2 01:93A2: D0 04     BNE bra_93A8    ; jmp
bra_93A4:
C - - - - - 0x0053B4 01:93A4: A9 CF     LDA #$CF
C - - - - - 0x0053B6 01:93A6: 85 14     STA ram_0014_t005
bra_93A8:
C - - - - - 0x0053B8 01:93A8: A5 12     LDA ram_0012_t00D
C - - - - - 0x0053BA 01:93AA: F0 03     BEQ bra_93AF
C - - - - - 0x0053BC 01:93AC: 4C B7 93  JMP loc_93B7
bra_93AF:
C - - - - - 0x0053BF 01:93AF: BD 00 03  LDA ram_ppu_buffer,X
C - - - - - 0x0053C2 01:93B2: 25 14     AND ram_0014_t005
C - - - - - 0x0053C4 01:93B4: 9D 00 03  STA ram_ppu_buffer,X
loc_93B7:
C D 0 - - - 0x0053C7 01:93B7: A5 0B     LDA ram_000B_t003
C - - - - - 0x0053C9 01:93B9: 29 01     AND #$01
C - - - - - 0x0053CB 01:93BB: F0 01     BEQ bra_93BE
C - - - - - 0x0053CD 01:93BD: E8        INX
bra_93BE:
C - - - - - 0x0053CE 01:93BE: E6 0B     INC ram_000B_t003
C - - - - - 0x0053D0 01:93C0: C6 07     DEC ram_0007_t015_loop_counter
C - - - - - 0x0053D2 01:93C2: D0 D4     BNE bra_9398_loop
C - - - - - 0x0053D4 01:93C4: C8        INY
C - - - - - 0x0053D5 01:93C5: 4C 87 93  JMP loc_9387_loop
bra_93C8_FF:
C - - - - - 0x0053D8 01:93C8: C8        INY
C - - - - - 0x0053D9 01:93C9: A5 0A     LDA ram_000A_t019
C - - - - - 0x0053DB 01:93CB: 18        CLC
C - - - - - 0x0053DC 01:93CC: 69 10     ADC #$10
C - - - - - 0x0053DE 01:93CE: 85 0A     STA ram_000A_t019
C - - - - - 0x0053E0 01:93D0: 4C FD 92  JMP loc_92FD_loop
loc_93D3_FE:
bra_93D3_FE:
C D 0 - - - 0x0053E3 01:93D3: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x0053E5 01:93D5: 60        RTS



sub_93D6:
; out
    ; ram_0016_t00A_nametable_attribute
C - - - - - 0x0053E6 01:93D6: 84 0E     STY ram_000E_t006_save_Y
C - - - - - 0x0053E8 01:93D8: A5 10     LDA ram_0010_t003_data
C - - - - - 0x0053EA 01:93DA: 48        PHA
C - - - - - 0x0053EB 01:93DB: A5 11     LDA ram_0010_t003_data + $01
C - - - - - 0x0053ED 01:93DD: 48        PHA
C - - - - - 0x0053EE 01:93DE: 20 3C 8F  JSR sub_8F3C
C - - - - - 0x0053F1 01:93E1: 68        PLA
C - - - - - 0x0053F2 01:93E2: 85 11     STA ram_0010_t003_data + $01
C - - - - - 0x0053F4 01:93E4: 68        PLA
C - - - - - 0x0053F5 01:93E5: 85 10     STA ram_0010_t003_data
C - - - - - 0x0053F7 01:93E7: A5 0B     LDA ram_000B_t003
C - - - - - 0x0053F9 01:93E9: 38        SEC
C - - - - - 0x0053FA 01:93EA: E9 20     SBC #$20
C - - - - - 0x0053FC 01:93EC: 85 0C     STA ram_000C_t007
C - - - - - 0x0053FE 01:93EE: 29 E0     AND #$E0
C - - - - - 0x005400 01:93F0: 4A        LSR
C - - - - - 0x005401 01:93F1: 4A        LSR
C - - - - - 0x005402 01:93F2: 85 0F     STA ram_000F_t002
C - - - - - 0x005404 01:93F4: A5 0C     LDA ram_000C_t007
C - - - - - 0x005406 01:93F6: 29 0F     AND #$0F
C - - - - - 0x005408 01:93F8: 4A        LSR
C - - - - - 0x005409 01:93F9: 05 0F     ORA ram_000F_t002
C - - - - - 0x00540B 01:93FB: 85 02     STA ram_0002_t01B_blk_data_index
C - - - - - 0x00540D 01:93FD: E6 02     INC ram_0002_t01B_blk_data_index
sub_93FF:
C - - - - - 0x00540F 01:93FF: 20 9C EB  JSR sub_0x03EBAC_read_byte_from_blk_data
C - - - - - 0x005412 01:9402: A5 02     LDA ram_0002_t01C
C - - - - - 0x005414 01:9404: 85 00     STA ram_0000_t079
C - - - - - 0x005416 01:9406: A5 32     LDA ram_blk_id_hi
C - - - - - 0x005418 01:9408: 0A        ASL
C - - - - - 0x005419 01:9409: A8        TAY
C - - - - - 0x00541A 01:940A: 20 76 EB  JSR sub_0x03EB86_prepare_nametable_attributes_pointers
C - - - - - 0x00541D 01:940D: 20 90 EB  JSR sub_0x03EBA0_read_nametable_attribute
C - - - - - 0x005420 01:9410: A5 16     LDA ram_0016_t00A_nametable_attribute
C - - - - - 0x005422 01:9412: A4 0E     LDY ram_000E_t006_save_Y
C - - - - - 0x005424 01:9414: 60        RTS



tbl_9415:
- D 0 - - - 0x005425 01:9415: 02        .byte $02   ; 00 
- D 0 - - - 0x005426 01:9416: 02        .byte $02   ; 01 
- D 0 - - - 0x005427 01:9417: 04        .byte $04   ; 02 
- D 0 - - - 0x005428 01:9418: 06        .byte $06   ; 03 
- D 0 - - - 0x005429 01:9419: 06        .byte $06   ; 04 
- D 0 - - - 0x00542A 01:941A: 06        .byte $06   ; 05 
- D 0 - - - 0x00542B 01:941B: 06        .byte $06   ; 06 



tbl_941C:
- D 0 - - - 0x00542C 01:941C: 46        .byte $46   ; 00 
- D 0 - - - 0x00542D 01:941D: 26        .byte $26   ; 01 
- D 0 - - - 0x00542E 01:941E: 24        .byte $24   ; 02 
- D 0 - - - 0x00542F 01:941F: 22        .byte $22   ; 03 
- D 0 - - - 0x005430 01:9420: 22        .byte $22   ; 04 
- D 0 - - - 0x005431 01:9421: 22        .byte $22   ; 05 
- D 0 - - - 0x005432 01:9422: 22        .byte $22   ; 06 



tbl_9423:
- D 0 - - - 0x005433 01:9423: 31 94     .word _off020_9431_00
- D 0 - - - 0x005435 01:9425: 34 94     .word _off020_9434_01
- D 0 - - - 0x005437 01:9427: 40 94     .word _off020_9440_02
- D 0 - - - 0x005439 01:9429: 50 94     .word _off020_9450_03
- D 0 - - - 0x00543B 01:942B: 6B 94     .word _off020_946B_04
- D 0 - - - 0x00543D 01:942D: 86 94     .word _off020_9486_05
- D 0 - - - 0x00543F 01:942F: A9 94     .word _off020_94A9_06

; control bytes FE FF

_off020_9431_00:
- D 0 - I - 0x005441 01:9431: 01        .byte $01   ; 
- D 0 - I - 0x005442 01:9432: 04        .byte $04   ; 
- D 0 - I - 0x005443 01:9433: FE        .byte $FE   ; end token



_off020_9434_01:
- D 0 - I - 0x005444 01:9434: 01        .byte $01   ; 
- D 0 - I - 0x005445 01:9435: 04        .byte $04   ; 
- D 0 - I - 0x005446 01:9436: FF        .byte $FF   ; FF
- D 0 - I - 0x005447 01:9437: 01        .byte $01   ; 
- D 0 - I - 0x005448 01:9438: 04        .byte $04   ; 
- D 0 - I - 0x005449 01:9439: FF        .byte $FF   ; FF
- D 0 - I - 0x00544A 01:943A: 01        .byte $01   ; 
- D 0 - I - 0x00544B 01:943B: 04        .byte $04   ; 
- D 0 - I - 0x00544C 01:943C: FF        .byte $FF   ; FF
- D 0 - I - 0x00544D 01:943D: 01        .byte $01   ; 
- D 0 - I - 0x00544E 01:943E: 04        .byte $04   ; 
- D 0 - I - 0x00544F 01:943F: FE        .byte $FE   ; end token



_off020_9440_02:
- D 0 - I - 0x005450 01:9440: 01        .byte $01   ; 
- D 0 - I - 0x005451 01:9441: 08        .byte $08   ; 
- D 0 - I - 0x005452 01:9442: FF        .byte $FF   ; FF
- D 0 - I - 0x005453 01:9443: 01        .byte $01   ; 
- D 0 - I - 0x005454 01:9444: 08        .byte $08   ; 
- D 0 - I - 0x005455 01:9445: FF        .byte $FF   ; FF
- D 0 - I - 0x005456 01:9446: 01        .byte $01   ; 
- D 0 - I - 0x005457 01:9447: 03        .byte $03   ; 
- D 0 - I - 0x005458 01:9448: 00        .byte $00   ; 
- D 0 - I - 0x005459 01:9449: 02        .byte $02   ; 
- D 0 - I - 0x00545A 01:944A: 01        .byte $01   ; 
- D 0 - I - 0x00545B 01:944B: 03        .byte $03   ; 
- D 0 - I - 0x00545C 01:944C: FF        .byte $FF   ; FF
- D 0 - I - 0x00545D 01:944D: 01        .byte $01   ; 
- D 0 - I - 0x00545E 01:944E: 08        .byte $08   ; 
- D 0 - I - 0x00545F 01:944F: FE        .byte $FE   ; end token



_off020_9450_03:
- D 0 - I - 0x005460 01:9450: 01        .byte $01   ; 
- D 0 - I - 0x005461 01:9451: 0C        .byte $0C   ; 
- D 0 - I - 0x005462 01:9452: FF        .byte $FF   ; FF
- D 0 - I - 0x005463 01:9453: 01        .byte $01   ; 
- D 0 - I - 0x005464 01:9454: 04        .byte $04   ; 
- D 0 - I - 0x005465 01:9455: 00        .byte $00   ; 
- D 0 - I - 0x005466 01:9456: 04        .byte $04   ; 
- D 0 - I - 0x005467 01:9457: 01        .byte $01   ; 
- D 0 - I - 0x005468 01:9458: 04        .byte $04   ; 
- D 0 - I - 0x005469 01:9459: FF        .byte $FF   ; FF
- D 0 - I - 0x00546A 01:945A: 01        .byte $01   ; 
- D 0 - I - 0x00546B 01:945B: 04        .byte $04   ; 
- D 0 - I - 0x00546C 01:945C: 00        .byte $00   ; 
- D 0 - I - 0x00546D 01:945D: 04        .byte $04   ; 
- D 0 - I - 0x00546E 01:945E: 01        .byte $01   ; 
- D 0 - I - 0x00546F 01:945F: 04        .byte $04   ; 
- D 0 - I - 0x005470 01:9460: FF        .byte $FF   ; FF
- D 0 - I - 0x005471 01:9461: 01        .byte $01   ; 
- D 0 - I - 0x005472 01:9462: 04        .byte $04   ; 
- D 0 - I - 0x005473 01:9463: 00        .byte $00   ; 
- D 0 - I - 0x005474 01:9464: 04        .byte $04   ; 
- D 0 - I - 0x005475 01:9465: 01        .byte $01   ; 
- D 0 - I - 0x005476 01:9466: 04        .byte $04   ; 
- D 0 - I - 0x005477 01:9467: FF        .byte $FF   ; FF
- D 0 - I - 0x005478 01:9468: 01        .byte $01   ; 
- D 0 - I - 0x005479 01:9469: 0C        .byte $0C   ; 
- D 0 - I - 0x00547A 01:946A: FE        .byte $FE   ; end token



_off020_946B_04:
- D 0 - I - 0x00547B 01:946B: 01        .byte $01   ; 
- D 0 - I - 0x00547C 01:946C: 0C        .byte $0C   ; 
- D 0 - I - 0x00547D 01:946D: FF        .byte $FF   ; FF
- D 0 - I - 0x00547E 01:946E: 01        .byte $01   ; 
- D 0 - I - 0x00547F 01:946F: 03        .byte $03   ; 
- D 0 - I - 0x005480 01:9470: 00        .byte $00   ; 
- D 0 - I - 0x005481 01:9471: 06        .byte $06   ; 
- D 0 - I - 0x005482 01:9472: 01        .byte $01   ; 
- D 0 - I - 0x005483 01:9473: 03        .byte $03   ; 
- D 0 - I - 0x005484 01:9474: FF        .byte $FF   ; FF
- D 0 - I - 0x005485 01:9475: 01        .byte $01   ; 
- D 0 - I - 0x005486 01:9476: 03        .byte $03   ; 
- D 0 - I - 0x005487 01:9477: 00        .byte $00   ; 
- D 0 - I - 0x005488 01:9478: 06        .byte $06   ; 
- D 0 - I - 0x005489 01:9479: 01        .byte $01   ; 
- D 0 - I - 0x00548A 01:947A: 03        .byte $03   ; 
- D 0 - I - 0x00548B 01:947B: FF        .byte $FF   ; FF
- D 0 - I - 0x00548C 01:947C: 01        .byte $01   ; 
- D 0 - I - 0x00548D 01:947D: 03        .byte $03   ; 
- D 0 - I - 0x00548E 01:947E: 00        .byte $00   ; 
- D 0 - I - 0x00548F 01:947F: 06        .byte $06   ; 
- D 0 - I - 0x005490 01:9480: 01        .byte $01   ; 
- D 0 - I - 0x005491 01:9481: 03        .byte $03   ; 
- D 0 - I - 0x005492 01:9482: FF        .byte $FF   ; FF
- D 0 - I - 0x005493 01:9483: 01        .byte $01   ; 
- D 0 - I - 0x005494 01:9484: 0C        .byte $0C   ; 
- D 0 - I - 0x005495 01:9485: FE        .byte $FE   ; end token



_off020_9486_05:
- D 0 - I - 0x005496 01:9486: 01        .byte $01   ; 
- D 0 - I - 0x005497 01:9487: 01        .byte $01   ; 
- D 0 - I - 0x005498 01:9488: 00        .byte $00   ; 
- D 0 - I - 0x005499 01:9489: 0A        .byte $0A   ; 
- D 0 - I - 0x00549A 01:948A: 01        .byte $01   ; 
- D 0 - I - 0x00549B 01:948B: 01        .byte $01   ; 
- D 0 - I - 0x00549C 01:948C: FF        .byte $FF   ; FF
- D 0 - I - 0x00549D 01:948D: 01        .byte $01   ; 
- D 0 - I - 0x00549E 01:948E: 01        .byte $01   ; 
- D 0 - I - 0x00549F 01:948F: 00        .byte $00   ; 
- D 0 - I - 0x0054A0 01:9490: 0A        .byte $0A   ; 
- D 0 - I - 0x0054A1 01:9491: 01        .byte $01   ; 
- D 0 - I - 0x0054A2 01:9492: 01        .byte $01   ; 
- D 0 - I - 0x0054A3 01:9493: FF        .byte $FF   ; FF
- D 0 - I - 0x0054A4 01:9494: 01        .byte $01   ; 
- D 0 - I - 0x0054A5 01:9495: 01        .byte $01   ; 
- D 0 - I - 0x0054A6 01:9496: 00        .byte $00   ; 
- D 0 - I - 0x0054A7 01:9497: 0A        .byte $0A   ; 
- D 0 - I - 0x0054A8 01:9498: 01        .byte $01   ; 
- D 0 - I - 0x0054A9 01:9499: 01        .byte $01   ; 
- D 0 - I - 0x0054AA 01:949A: FF        .byte $FF   ; FF
- D 0 - I - 0x0054AB 01:949B: 01        .byte $01   ; 
- D 0 - I - 0x0054AC 01:949C: 01        .byte $01   ; 
- D 0 - I - 0x0054AD 01:949D: 00        .byte $00   ; 
- D 0 - I - 0x0054AE 01:949E: 0A        .byte $0A   ; 
- D 0 - I - 0x0054AF 01:949F: 01        .byte $01   ; 
- D 0 - I - 0x0054B0 01:94A0: 01        .byte $01   ; 
- D 0 - I - 0x0054B1 01:94A1: FF        .byte $FF   ; FF
- D 0 - I - 0x0054B2 01:94A2: 01        .byte $01   ; 
- D 0 - I - 0x0054B3 01:94A3: 01        .byte $01   ; 
- D 0 - I - 0x0054B4 01:94A4: 00        .byte $00   ; 
- D 0 - I - 0x0054B5 01:94A5: 0A        .byte $0A   ; 
- D 0 - I - 0x0054B6 01:94A6: 01        .byte $01   ; 
- D 0 - I - 0x0054B7 01:94A7: 01        .byte $01   ; 
- D 0 - I - 0x0054B8 01:94A8: FE        .byte $FE   ; end token



_off020_94A9_06:
- D 0 - I - 0x0054B9 01:94A9: 00        .byte $00   ; 
- D 0 - I - 0x0054BA 01:94AA: 0C        .byte $0C   ; 
- D 0 - I - 0x0054BB 01:94AB: FF        .byte $FF   ; FF
- D 0 - I - 0x0054BC 01:94AC: 00        .byte $00   ; 
- D 0 - I - 0x0054BD 01:94AD: 0C        .byte $0C   ; 
- D 0 - I - 0x0054BE 01:94AE: FF        .byte $FF   ; FF
- D 0 - I - 0x0054BF 01:94AF: 00        .byte $00   ; 
- D 0 - I - 0x0054C0 01:94B0: 0C        .byte $0C   ; 
- D 0 - I - 0x0054C1 01:94B1: FF        .byte $FF   ; FF
- D 0 - I - 0x0054C2 01:94B2: 00        .byte $00   ; 
- D 0 - I - 0x0054C3 01:94B3: 0C        .byte $0C   ; 
- D 0 - I - 0x0054C4 01:94B4: FF        .byte $FF   ; FF
- D 0 - I - 0x0054C5 01:94B5: 00        .byte $00   ; 
- D 0 - I - 0x0054C6 01:94B6: 0C        .byte $0C   ; 
- D 0 - I - 0x0054C7 01:94B7: FE        .byte $FE   ; end token



loc_0x0054C8_object_handler:
C D 0 - - - 0x0054C8 01:94B8: AD EC 07  LDA ram_07EC
C - - - - - 0x0054CB 01:94BB: D0 01     BNE bra_94BE
C - - - - - 0x0054CD 01:94BD: 60        RTS
bra_94BE:
C - - - - - 0x0054CE 01:94BE: A9 00     LDA #$00
C - - - - - 0x0054D0 01:94C0: 85 07     STA ram_0007_t017_counter
C - - - - - 0x0054D2 01:94C2: A2 01     LDX #$01
bra_94C4_loop:
C - - - - - 0x0054D4 01:94C4: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0054D7 01:94C7: F0 0F     BEQ bra_94D8
C - - - - - 0x0054D9 01:94C9: 0A        ASL
C - - - - - 0x0054DA 01:94CA: A8        TAY
C - - - - - 0x0054DB 01:94CB: B9 E1 94  LDA tbl_94E1,Y
C - - - - - 0x0054DE 01:94CE: 85 00     STA ram_0000_t028_jmp
C - - - - - 0x0054E0 01:94D0: B9 E2 94  LDA tbl_94E1 + $01,Y
C - - - - - 0x0054E3 01:94D3: 85 01     STA ram_0000_t028_jmp + $01
C - - - - - 0x0054E5 01:94D5: 20 DE 94  JSR sub_94DE_indirect_jump
bra_94D8:
C - - - - - 0x0054E8 01:94D8: E8        INX
C - - - - - 0x0054E9 01:94D9: E0 0C     CPX #$0C
C - - - - - 0x0054EB 01:94DB: D0 E7     BNE bra_94C4_loop
C - - - - - 0x0054ED 01:94DD: 60        RTS



sub_94DE_indirect_jump:
C - - - - - 0x0054EE 01:94DE: 6C 00 00  JMP (ram_0000_t028_jmp)



tbl_94E1:
- - - - - - 0x0054F1 01:94E1: EF 97     .word ofs_052_97EF_00   ; unused 0x0054D7
- D 0 - - - 0x0054F3 01:94E3: F1 94     .word ofs_052_94F1_01
- D 0 - - - 0x0054F5 01:94E5: 49 95     .word ofs_052_9549_02
- D 0 - - - 0x0054F7 01:94E7: 1D 95     .word ofs_052_951D_03
- D 0 - - - 0x0054F9 01:94E9: 75 95     .word ofs_052_9575_04
- D 0 - - - 0x0054FB 01:94EB: C4 95     .word ofs_052_95C4_05
- D 0 - - - 0x0054FD 01:94ED: 9A 96     .word ofs_052_969A_06
- D 0 - - - 0x0054FF 01:94EF: 7B 97     .word ofs_052_977B_07



ofs_052_94F1_01:
C - - J - - 0x005501 01:94F1: A0 00     LDY #$00
; bzk optimize, JMP
C - - - - - 0x005503 01:94F3: 20 A9 95  JSR sub_95A9_jump_to_pointers
C - - - - - 0x005506 01:94F6: 60        RTS



off_94F7_00:
- D 0 - I - 0x005507 01:94F7: EF 97     .word ofs_053_00_97EF_00
- D 0 - I - 0x005509 01:94F9: EF 97     .word ofs_053_00_97EF_01
- D 0 - I - 0x00550B 01:94FB: EF 97     .word ofs_053_00_97EF_02
- D 0 - I - 0x00550D 01:94FD: EF 97     .word ofs_053_00_97EF_03
- D 0 - I - 0x00550F 01:94FF: 77 98     .word ofs_053_00_9877_04
- - - - - - 0x005511 01:9501: 2E 9D     .word ofs_053_00_9D2E_05_RTS
- D 0 - I - 0x005513 01:9503: 3F 9A     .word ofs_053_00_9A3F_06
- D 0 - I - 0x005515 01:9505: EF 97     .word ofs_053_00_97EF_07
- D 0 - I - 0x005517 01:9507: 0B 9B     .word ofs_053_00_9B0B_08
- D 0 - I - 0x005519 01:9509: 20 9B     .word ofs_053_00_9B20_09
- D 0 - I - 0x00551B 01:950B: ED 9B     .word ofs_053_00_9BED_0A
- D 0 - I - 0x00551D 01:950D: 20 9C     .word ofs_053_00_9C20_0B
- D 0 - I - 0x00551F 01:950F: 8F 9C     .word ofs_053_00_9C8F_0C
- D 0 - I - 0x005521 01:9511: EF 97     .word ofs_053_00_97EF_0D
- D 0 - I - 0x005523 01:9513: EF 97     .word ofs_053_00_97EF_0E
- D 0 - I - 0x005525 01:9515: AE 9B     .word ofs_053_00_9BAE_0F
- D 0 - I - 0x005527 01:9517: B9 9B     .word ofs_053_00_9BB9_10
- D 0 - I - 0x005529 01:9519: 2A 9A     .word ofs_053_00_9A2A_11
- - - - - - 0x00552B 01:951B: 18 9C     .word ofs_053_00_9C18_12



ofs_052_951D_03:
C - - J - - 0x00552D 01:951D: A0 04     LDY #$04
; bzk optimize, JMP
C - - - - - 0x00552F 01:951F: 20 A9 95  JSR sub_95A9_jump_to_pointers
C - - - - - 0x005532 01:9522: 60        RTS



off_9523_04:
- D 0 - I - 0x005533 01:9523: EF 97     .word ofs_053_04_97EF_00
- D 0 - I - 0x005535 01:9525: 01 98     .word ofs_053_04_9801_01
- D 0 - I - 0x005537 01:9527: EA 97     .word ofs_053_04_97EA_02
- D 0 - I - 0x005539 01:9529: EF 97     .word ofs_053_04_97EF_03
- D 0 - I - 0x00553B 01:952B: 77 98     .word ofs_053_04_9877_04
- - - - - - 0x00553D 01:952D: 2E 9D     .word ofs_053_04_9D2E_05_RTS
- D 0 - I - 0x00553F 01:952F: 3F 9A     .word ofs_053_04_9A3F_06
- D 0 - I - 0x005541 01:9531: DA 9B     .word ofs_053_04_9BDA_07
- D 0 - I - 0x005543 01:9533: 0B 9B     .word ofs_053_04_9B0B_08
- D 0 - I - 0x005545 01:9535: 20 9B     .word ofs_053_04_9B20_09
- D 0 - I - 0x005547 01:9537: ED 9B     .word ofs_053_04_9BED_0A
- D 0 - I - 0x005549 01:9539: 20 9C     .word ofs_053_04_9C20_0B
- D 0 - I - 0x00554B 01:953B: 8F 9C     .word ofs_053_04_9C8F_0C
- D 0 - I - 0x00554D 01:953D: EF 97     .word ofs_053_04_97EF_0D
- D 0 - I - 0x00554F 01:953F: EF 97     .word ofs_053_04_97EF_0E
- D 0 - I - 0x005551 01:9541: EF 97     .word ofs_053_04_97EF_0F
- D 0 - I - 0x005553 01:9543: EF 97     .word ofs_053_04_97EF_10
- D 0 - I - 0x005555 01:9545: 2A 9A     .word ofs_053_04_9A2A_11
- - - - - - 0x005557 01:9547: 18 9C     .word ofs_053_04_9C18_12



ofs_052_9549_02:
C - - J - - 0x005559 01:9549: A0 02     LDY #$02
; bzk optimize, JMP
C - - - - - 0x00555B 01:954B: 20 A9 95  JSR sub_95A9_jump_to_pointers
C - - - - - 0x00555E 01:954E: 60        RTS



off_954F_02:
- D 0 - I - 0x00555F 01:954F: EF 97     .word ofs_053_02_97EF_00
- - - - - - 0x005561 01:9551: EF 97     .word ofs_053_02_97EF_01
- D 0 - I - 0x005563 01:9553: C2 98     .word ofs_053_02_98C2_02
- D 0 - I - 0x005565 01:9555: EF 97     .word ofs_053_02_97EF_03
- D 0 - I - 0x005567 01:9557: 77 98     .word ofs_053_02_9877_04
- - - - - - 0x005569 01:9559: 2E 9D     .word ofs_053_02_9D2E_05_RTS
- D 0 - I - 0x00556B 01:955B: 3F 9A     .word ofs_053_02_9A3F_06
- D 0 - I - 0x00556D 01:955D: EF 97     .word ofs_053_02_97EF_07
- D 0 - I - 0x00556F 01:955F: 0B 9B     .word ofs_053_02_9B0B_08
- D 0 - I - 0x005571 01:9561: 20 9B     .word ofs_053_02_9B20_09
- D 0 - I - 0x005573 01:9563: ED 9B     .word ofs_053_02_9BED_0A
- D 0 - I - 0x005575 01:9565: 20 9C     .word ofs_053_02_9C20_0B
- - - - - - 0x005577 01:9567: 8F 9C     .word ofs_053_02_9C8F_0C
- D 0 - I - 0x005579 01:9569: C4 9B     .word ofs_053_02_9BC4_0D
- D 0 - I - 0x00557B 01:956B: EF 97     .word ofs_053_02_97EF_0E
- D 0 - I - 0x00557D 01:956D: EF 97     .word ofs_053_02_97EF_0F
- D 0 - I - 0x00557F 01:956F: EF 97     .word ofs_053_02_97EF_10
- D 0 - I - 0x005581 01:9571: 2A 9A     .word ofs_053_02_9A2A_11
- - - - - - 0x005583 01:9573: 18 9C     .word ofs_053_02_9C18_12



ofs_052_9575_04:
C - - J - - 0x005585 01:9575: A0 06     LDY #$06
; bzk optimize, JMP
C - - - - - 0x005587 01:9577: 20 A9 95  JSR sub_95A9_jump_to_pointers
C - - - - - 0x00558A 01:957A: 60        RTS



off_957B_06:
- D 0 - I - 0x00558B 01:957B: EF 97     .word ofs_053_06_97EF_00
- - - - - - 0x00558D 01:957D: EF 97     .word ofs_053_06_97EF_01
- - - - - - 0x00558F 01:957F: EF 97     .word ofs_053_06_97EF_02
- D 0 - I - 0x005591 01:9581: CD 99     .word ofs_053_06_99CD_03
- D 0 - I - 0x005593 01:9583: 77 98     .word ofs_053_06_9877_04
- - - - - - 0x005595 01:9585: 2E 9D     .word ofs_053_06_9D2E_05_RTS
- D 0 - I - 0x005597 01:9587: 3F 9A     .word ofs_053_06_9A3F_06
- D 0 - I - 0x005599 01:9589: EF 97     .word ofs_053_06_97EF_07
- D 0 - I - 0x00559B 01:958B: 0B 9B     .word ofs_053_06_9B0B_08
- D 0 - I - 0x00559D 01:958D: 20 9B     .word ofs_053_06_9B20_09
- D 0 - I - 0x00559F 01:958F: ED 9B     .word ofs_053_06_9BED_0A
- D 0 - I - 0x0055A1 01:9591: 20 9C     .word ofs_053_06_9C20_0B
- - - - - - 0x0055A3 01:9593: 8F 9C     .word ofs_053_06_9C8F_0C
- D 0 - I - 0x0055A5 01:9595: EF 97     .word ofs_053_06_97EF_0D
- D 0 - I - 0x0055A7 01:9597: CF 9B     .word ofs_053_06_9BCF_0E
- D 0 - I - 0x0055A9 01:9599: EF 97     .word ofs_053_06_97EF_0F
- D 0 - I - 0x0055AB 01:959B: EF 97     .word ofs_053_06_97EF_10
- D 0 - I - 0x0055AD 01:959D: 2A 9A     .word ofs_053_06_9A2A_11
- - - - - - 0x0055AF 01:959F: 18 9C     .word ofs_053_06_9C18_12



tbl_95A1:
- D 0 - - - 0x0055B1 01:95A1: F7 94     .word off_94F7_00
- D 0 - - - 0x0055B3 01:95A3: 4F 95     .word off_954F_02
- D 0 - - - 0x0055B5 01:95A5: 23 95     .word off_9523_04
- D 0 - - - 0x0055B7 01:95A7: 7B 95     .word off_957B_06



sub_95A9_jump_to_pointers:
; in
    ; Y = which table
C - - - - - 0x0055B9 01:95A9: B9 A1 95  LDA tbl_95A1,Y
C - - - - - 0x0055BC 01:95AC: 85 00     STA ram_0000_t020_data
C - - - - - 0x0055BE 01:95AE: B9 A2 95  LDA tbl_95A1 + $01,Y
C - - - - - 0x0055C1 01:95B1: 85 01     STA ram_0000_t020_data + $01
C - - - - - 0x0055C3 01:95B3: AD EF 07  LDA ram_07EF
C - - - - - 0x0055C6 01:95B6: 0A        ASL
C - - - - - 0x0055C7 01:95B7: A8        TAY
C - - - - - 0x0055C8 01:95B8: B1 00     LDA (ram_0000_t020_data),Y
C - - - - - 0x0055CA 01:95BA: 85 02     STA ram_0002_t00E_jmp
C - - - - - 0x0055CC 01:95BC: C8        INY
C - - - - - 0x0055CD 01:95BD: B1 00     LDA (ram_0000_t020_data),Y
C - - - - - 0x0055CF 01:95BF: 85 03     STA ram_0002_t00E_jmp + $01
C - - - - - 0x0055D1 01:95C1: 6C 02 00  JMP (ram_0002_t00E_jmp)



ofs_052_95C4_05:
C - - J - - 0x0055D4 01:95C4: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x0055D7 01:95C7: D0 3E     BNE bra_9607
; 00
C - - - - - 0x0055D9 01:95C9: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x0055DB 01:95CB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0055DE 01:95CE: A9 00     LDA #$00
C - - - - - 0x0055E0 01:95D0: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0055E3 01:95D3: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0055E6 01:95D6: 18        CLC
C - - - - - 0x0055E7 01:95D7: 7D 33 06  ADC ram_obj_0634,X
C - - - - - 0x0055EA 01:95DA: 29 0F     AND #$0F
C - - - - - 0x0055EC 01:95DC: A8        TAY
C - - - - - 0x0055ED 01:95DD: B9 8A 96  LDA tbl_968A,Y
C - - - - - 0x0055F0 01:95E0: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x0055F3 01:95E3: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x0055F6 01:95E6: A9 00     LDA #$00
C - - - - - 0x0055F8 01:95E8: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x0055FB 01:95EB: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x0055FE 01:95EE: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x005601 01:95F1: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x005604 01:95F4: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005606 01:95F6: A0 09     LDY #$09
C - - - - - 0x005608 01:95F8: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x00560B 01:95FB: 20 0D 9E  JSR sub_9E0D
C - - - - - 0x00560E 01:95FE: BD 06 06  LDA ram_obj_config,X
; * 04
C - - - - - 0x005611 01:9601: 0A        ASL
C - - - - - 0x005612 01:9602: 0A        ASL
C - - - - - 0x005613 01:9603: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x005616 01:9606: 60        RTS
bra_9607:
C - - - - - 0x005617 01:9607: 88        DEY
C - - - - - 0x005618 01:9608: D0 11     BNE bra_961B
; 01
C - - - - - 0x00561A 01:960A: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00561D 01:960D: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x005620 01:9610: D0 08     BNE bra_961A_RTS
C - - - - - 0x005622 01:9612: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005625 01:9615: A9 40     LDA #con_obj_flag_40
C - - - - - 0x005627 01:9617: 9D 70 04  STA ram_obj_flags,X
bra_961A_RTS:
C - - - - - 0x00562A 01:961A: 60        RTS
bra_961B:
C - - - - - 0x00562B 01:961B: 88        DEY
C - - - - - 0x00562C 01:961C: D0 24     BNE bra_9642
; 02
C - - - - - 0x00562E 01:961E: BD 37 05  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x005631 01:9621: 18        CLC
C - - - - - 0x005632 01:9622: 69 20     ADC #< $0020
C - - - - - 0x005634 01:9624: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x005637 01:9627: BD 20 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x00563A 01:962A: 69 00     ADC #> $0020
C - - - - - 0x00563C 01:962C: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00563F 01:962F: 20 D6 9D  JSR sub_9DD6_move_object
C - - - - - 0x005642 01:9632: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x005645 01:9635: C9 B8     CMP #$B8
C - - - - - 0x005647 01:9637: 90 08     BCC bra_9641_RTS
C - - - - - 0x005649 01:9639: A9 11     LDA #con_sound_block
C - - - - - 0x00564B 01:963B: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00564E 01:963E: FE 1D 06  INC ram_061D_obj,X
bra_9641_RTS:
C - - - - - 0x005651 01:9641: 60        RTS
bra_9642:
C - - - - - 0x005652 01:9642: 88        DEY
C - - - - - 0x005653 01:9643: D0 0E     BNE bra_9653
; 03
C - - - - - 0x005655 01:9645: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x005657 01:9647: A0 0A     LDY #$0A
C - - - - - 0x005659 01:9649: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x00565C 01:964C: 20 0D 9E  JSR sub_9E0D
C - - - - - 0x00565F 01:964F: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005662 01:9652: 60        RTS
bra_9653:
C - - - - - 0x005663 01:9653: 88        DEY
C - - - - - 0x005664 01:9654: D0 09     BNE bra_965F
; 04
C - - - - - 0x005666 01:9656: 20 0D 9E  JSR sub_9E0D
C - - - - - 0x005669 01:9659: 90 03     BCC bra_965E_RTS
C - - - - - 0x00566B 01:965B: FE 1D 06  INC ram_061D_obj,X
bra_965E_RTS:
C - - - - - 0x00566E 01:965E: 60        RTS
bra_965F:
; 05
C - - - - - 0x00566F 01:965F: A9 00     LDA #$00
C - - - - - 0x005671 01:9661: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x005674 01:9664: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x005677 01:9667: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00567A 01:966A: C9 02     CMP #$02
C - - - - - 0x00567C 01:966C: F0 01     BEQ bra_966F
C - - - - - 0x00567E 01:966E: 60        RTS
sub_966F:
loc_966F:
bra_966F:
C D 0 - - - 0x00567F 01:966F: A9 00     LDA #$00
C - - - - - 0x005681 01:9671: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x005684 01:9674: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x005687 01:9677: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00568A 01:967A: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00568D 01:967D: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x005690 01:9680: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x005693 01:9683: 9D 8C 04  STA ram_obj_type,X ; con_obj_type_00
C - - - - - 0x005696 01:9686: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x005699 01:9689: 60        RTS



tbl_968A:
- - - - - - 0x00569A 01:968A: 10        .byte $10   ; 00 
- D 0 - - - 0x00569B 01:968B: 30        .byte $30   ; 01 
- D 0 - - - 0x00569C 01:968C: 20        .byte $20   ; 02 
- D 0 - - - 0x00569D 01:968D: 50        .byte $50   ; 03 
- D 0 - - - 0x00569E 01:968E: 60        .byte $60   ; 04 
- - - - - - 0x00569F 01:968F: 40        .byte $40   ; 05 
- - - - - - 0x0056A0 01:9690: 30        .byte $30   ; 06 
- - - - - - 0x0056A1 01:9691: 40        .byte $40   ; 07 
- - - - - - 0x0056A2 01:9692: 80        .byte $80   ; 08 
- - - - - - 0x0056A3 01:9693: 50        .byte $50   ; 09 
- - - - - - 0x0056A4 01:9694: 70        .byte $70   ; 0A 
- - - - - - 0x0056A5 01:9695: A0        .byte $A0   ; 0B 
- - - - - - 0x0056A6 01:9696: 90        .byte $90   ; 0C 
- - - - - - 0x0056A7 01:9697: B0        .byte $B0   ; 0D 
- - - - - - 0x0056A8 01:9698: 60        .byte $60   ; 0E 
- - - - - - 0x0056A9 01:9699: C0        .byte $C0   ; 0F 



ofs_052_969A_06:
C - - J - - 0x0056AA 01:969A: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x0056AD 01:969D: D0 35     BNE bra_96D4
; 00
C - - - - - 0x0056AF 01:969F: A9 3F     LDA #con_sound_3F
C - - - - - 0x0056B1 01:96A1: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0056B4 01:96A4: A9 0C     LDA #$0C
C - - - - - 0x0056B6 01:96A6: 8D EF 07  STA ram_07EF
C - - - - - 0x0056B9 01:96A9: A9 7B     LDA #con__chr_bank + $7B
C - - - - - 0x0056BB 01:96AB: 85 49     STA ram_chr_bank_5123
C - - - - - 0x0056BD 01:96AD: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x0056C0 01:96B0: A9 00     LDA #$00
C - - - - - 0x0056C2 01:96B2: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0056C5 01:96B5: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x0056C8 01:96B8: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0056CB 01:96BB: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x0056CD 01:96BD: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0056D0 01:96C0: A9 78     LDA #$78
C - - - - - 0x0056D2 01:96C2: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x0056D5 01:96C5: A9 90     LDA #$90
C - - - - - 0x0056D7 01:96C7: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0056DA 01:96CA: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x0056DD 01:96CD: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x0056DF 01:96CF: A0 0C     LDY #$0C
C - - - - - 0x0056E1 01:96D1: 4C FD 9D  JMP loc_9DFD_prepare_animation
bra_96D4:
C - - - - - 0x0056E4 01:96D4: 88        DEY
C - - - - - 0x0056E5 01:96D5: D0 5B     BNE bra_9732
; 01
C - - - - - 0x0056E7 01:96D7: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x0056EA 01:96DA: D0 50     BNE bra_972C
C - - - - - 0x0056EC 01:96DC: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x0056EF 01:96DF: 0A        ASL
C - - - - - 0x0056F0 01:96E0: A8        TAY
C - - - - - 0x0056F1 01:96E1: B9 6C 97  LDA tbl_976B + $01,Y
C - - - - - 0x0056F4 01:96E4: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0056F7 01:96E7: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x0056FA 01:96EA: B9 6B 97  LDA tbl_976B,Y
C - - - - - 0x0056FD 01:96ED: F0 36     BEQ bra_9725_00
C - - - - - 0x0056FF 01:96EF: C9 01     CMP #$01
C - - - - - 0x005701 01:96F1: F0 2B     BEQ bra_971E_01
C - - - - - 0x005703 01:96F3: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005706 01:96F6: A9 04     LDA #$04
C - - - - - 0x005708 01:96F8: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00570B 01:96FB: A9 07     LDA #$07
C - - - - - 0x00570D 01:96FD: 85 01     STA ram_0001_t030
bra_96FF_loop:
C - - - - - 0x00570F 01:96FF: A9 07     LDA #$07
C - - - - - 0x005711 01:9701: 20 02 9D  JSR sub_9D02
C - - - - - 0x005714 01:9704: 90 17     BCC bra_971D_RTS
C - - - - - 0x005716 01:9706: A9 00     LDA #$00
C - - - - - 0x005718 01:9708: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x00571B 01:970B: A5 01     LDA ram_0001_t030
C - - - - - 0x00571D 01:970D: 99 06 06  STA ram_obj_config,Y
; * 04
C - - - - - 0x005720 01:9710: 0A        ASL
C - - - - - 0x005721 01:9711: 0A        ASL
C - - - - - 0x005722 01:9712: 18        CLC
C - - - - - 0x005723 01:9713: 79 1C 04  ADC ram_obj_pos_Y_lo,Y
C - - - - - 0x005726 01:9716: 99 1C 04  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x005729 01:9719: C6 01     DEC ram_0001_t030
C - - - - - 0x00572B 01:971B: 10 E2     BPL bra_96FF_loop
bra_971D_RTS:
C - - - - - 0x00572D 01:971D: 60        RTS
bra_971E_01:
C - - - - - 0x00572E 01:971E: A9 00     LDA #con_obj_flag_00
C - - - - - 0x005730 01:9720: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x005733 01:9723: F0 0A     BEQ bra_972F    ; jmp
bra_9725_00:
C - - - - - 0x005735 01:9725: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x005737 01:9727: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00573A 01:972A: D0 03     BNE bra_972F    ; jmp
bra_972C:
C - - - - - 0x00573C 01:972C: DE D8 05  DEC ram_05D8_obj,X
bra_972F:
C - - - - - 0x00573F 01:972F: 4C 0D 9E  JMP loc_9E0D
bra_9732:
C - - - - - 0x005742 01:9732: 88        DEY
C - - - - - 0x005743 01:9733: D0 20     BNE bra_9755
; 02
C - - - - - 0x005745 01:9735: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x005748 01:9738: F0 0B     BEQ bra_9745
C - - - - - 0x00574A 01:973A: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00574D 01:973D: A9 00     LDA #con_obj_flag_00
C - - - - - 0x00574F 01:973F: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x005752 01:9742: 4C 0D 9E  JMP loc_9E0D
bra_9745:
C - - - - - 0x005755 01:9745: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x005757 01:9747: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00575A 01:974A: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00575D 01:974D: A9 17     LDA #con__chr_bank + $17
C - - - - - 0x00575F 01:974F: 85 48     STA ram_chr_bank_5122
C - - - - - 0x005761 01:9751: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x005764 01:9754: 60        RTS
bra_9755:
; 03
C - - - - - 0x005765 01:9755: EE ED 07  INC ram_07ED
C - - - - - 0x005768 01:9758: A9 00     LDA #$00
C - - - - - 0x00576A 01:975A: 8D F0 07  STA ram_07F0
C - - - - - 0x00576D 01:975D: 20 6F 96  JSR sub_966F
C - - - - - 0x005770 01:9760: A9 02     LDA #$02
C - - - - - 0x005772 01:9762: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x005775 01:9765: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x005777 01:9767: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00577A 01:976A: 60        RTS



tbl_976B:
;                                              +---------- flag 00/01/FF
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x00577B 01:976B: 00        .byte $00, $04   ; 00 
- D 0 - - - 0x00577D 01:976D: 01        .byte $01, $02   ; 01 
- D 0 - - - 0x00577F 01:976F: 00        .byte $00, $01   ; 02 
- D 0 - - - 0x005781 01:9771: 01        .byte $01, $01   ; 03 
- D 0 - - - 0x005783 01:9773: 00        .byte $00, $01   ; 04 
- D 0 - - - 0x005785 01:9775: 01        .byte $01, $01   ; 05 
- D 0 - - - 0x005787 01:9777: 00        .byte $00, $08   ; 06 
- D 0 - - - 0x005789 01:9779: FF        .byte $FF, $00   ; 07 



ofs_052_977B_07:
C - - J - - 0x00578B 01:977B: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x00578E 01:977E: D0 2B     BNE bra_97AB
C - - - - - 0x005790 01:9780: A9 18     LDA #$18
C - - - - - 0x005792 01:9782: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x005795 01:9785: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x005797 01:9787: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x00579A 01:978A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00579D 01:978D: 0A        ASL
C - - - - - 0x00579E 01:978E: A8        TAY
C - - - - - 0x00579F 01:978F: B9 CA 97  LDA tbl_97CA_spd_Y,Y
C - - - - - 0x0057A2 01:9792: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0057A5 01:9795: B9 CB 97  LDA tbl_97CA_spd_Y + $01,Y
C - - - - - 0x0057A8 01:9798: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0057AB 01:979B: B9 DA 97  LDA tbl_97DA_spd_X,Y
C - - - - - 0x0057AE 01:979E: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x0057B1 01:97A1: B9 DB 97  LDA tbl_97DA_spd_X + $01,Y
C - - - - - 0x0057B4 01:97A4: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x0057B7 01:97A7: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x0057BA 01:97AA: 60        RTS
bra_97AB:
C - - - - - 0x0057BB 01:97AB: BD 37 05  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0057BE 01:97AE: 18        CLC
C - - - - - 0x0057BF 01:97AF: 69 20     ADC #< $0020
C - - - - - 0x0057C1 01:97B1: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0057C4 01:97B4: BD 20 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0057C7 01:97B7: 69 00     ADC #> $0020
C - - - - - 0x0057C9 01:97B9: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0057CC 01:97BC: 20 D6 9D  JSR sub_9DD6_move_object
C - - - - - 0x0057CF 01:97BF: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0057D2 01:97C2: C9 F8     CMP #$F8
C - - - - - 0x0057D4 01:97C4: 90 03     BCC bra_97C9_RTS
C - - - - - 0x0057D6 01:97C6: 4C 6F 96  JMP loc_966F
bra_97C9_RTS:
C - - - - - 0x0057D9 01:97C9: 60        RTS



tbl_97CA_spd_Y:
- D 0 - - - 0x0057DA 01:97CA: 00 FF     .word $FF00 ; 00 
- D 0 - - - 0x0057DC 01:97CC: C0 FE     .word $FEC0 ; 01 
- D 0 - - - 0x0057DE 01:97CE: E0 FE     .word $FEE0 ; 02 
- D 0 - - - 0x0057E0 01:97D0: B0 FE     .word $FEB0 ; 03 
- D 0 - - - 0x0057E2 01:97D2: 00 FF     .word $FF00 ; 04 
- D 0 - - - 0x0057E4 01:97D4: C0 FE     .word $FEC0 ; 05 
- D 0 - - - 0x0057E6 01:97D6: E0 FE     .word $FEE0 ; 06 
- D 0 - - - 0x0057E8 01:97D8: B0 FE     .word $FEB0 ; 07 



tbl_97DA_spd_X:
- D 0 - - - 0x0057EA 01:97DA: 40 00     .word $0040 ; 00 
- D 0 - - - 0x0057EC 01:97DC: 80 FF     .word $FF80 ; 01 
- D 0 - - - 0x0057EE 01:97DE: 60 00     .word $0060 ; 02 
- D 0 - - - 0x0057F0 01:97E0: 60 FF     .word $FF60 ; 03 
- D 0 - - - 0x0057F2 01:97E2: B0 FF     .word $FFB0 ; 04 
- D 0 - - - 0x0057F4 01:97E4: 90 00     .word $0090 ; 05 
- D 0 - - - 0x0057F6 01:97E6: 90 FF     .word $FF90 ; 06 
- D 0 - - - 0x0057F8 01:97E8: B0 00     .word $00B0 ; 07 



ofs_053_04_97EA_02:
C - - J - - 0x0057FA 01:97EA: A9 01     LDA #$01
C - - - - - 0x0057FC 01:97EC: 9D 54 04  STA ram_0454_obj,X
ofs_052_97EF_00:
ofs_053_02_97EF_00:
ofs_053_04_97EF_00:
ofs_053_06_97EF_00:
ofs_053_00_97EF_00:
ofs_053_00_97EF_01:
ofs_053_02_97EF_01:
ofs_053_04_97EF_01:
ofs_053_06_97EF_01:
ofs_053_00_97EF_02:
ofs_053_02_97EF_03:
ofs_053_06_97EF_02:
ofs_053_04_97EF_03:
ofs_053_00_97EF_03:
ofs_053_00_97EF_07:
ofs_053_02_97EF_07:
ofs_053_06_97EF_07:
ofs_053_00_97EF_0D:
ofs_053_04_97EF_0D:
ofs_053_06_97EF_0D:
ofs_053_00_97EF_0E:
ofs_053_04_97EF_0E:
ofs_053_02_97EF_0E:
ofs_053_02_97EF_0F:
ofs_053_04_97EF_0F:
ofs_053_06_97EF_0F:
ofs_053_02_97EF_10:
ofs_053_04_97EF_10:
ofs_053_06_97EF_10:
C - - J - - 0x0057FF 01:97EF: A9 00     LDA #$00
C - - - - - 0x005801 01:97F1: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x005804 01:97F4: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x005807 01:97F7: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x00580A 01:97FA: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x00580D 01:97FD: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x005810 01:9800: 60        RTS



ofs_053_04_9801_01:
C - - J - - 0x005811 01:9801: AC F0 07  LDY ram_07F0
C - - - - - 0x005814 01:9804: D0 21     BNE bra_9827
; 00
C - - - - - 0x005816 01:9806: 20 25 9A  JSR sub_9A25_play_sound_transform_boss_to_partner
C - - - - - 0x005819 01:9809: A9 2A     LDA #con__chr_bank + $2A
C - - - - - 0x00581B 01:980B: 85 47     STA ram_chr_bank_5121
C - - - - - 0x00581D 01:980D: A9 2B     LDA #con__chr_bank + $2B
C - - - - - 0x00581F 01:980F: 85 48     STA ram_chr_bank_5122
C - - - - - 0x005821 01:9811: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x005824 01:9814: EE F0 07  INC ram_07F0
C - - - - - 0x005827 01:9817: A9 A0     LDA #$A0
C - - - - - 0x005829 01:9819: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00582C 01:981C: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00582E 01:981E: A0 00     LDY #$00
C - - - - - 0x005830 01:9820: 20 FD 9D  JSR sub_9DFD_prepare_animation
; bzk optimize, JMP
C - - - - - 0x005833 01:9823: 20 0D 9E  JSR sub_9E0D
C - - - - - 0x005836 01:9826: 60        RTS
bra_9827:
C - - - - - 0x005837 01:9827: 88        DEY
C - - - - - 0x005838 01:9828: D0 3C     BNE bra_9866
; 01
C - - - - - 0x00583A 01:982A: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x00583D 01:982D: A9 00     LDA #$00
C - - - - - 0x00583F 01:982F: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x005842 01:9832: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x005845 01:9835: F0 1C     BEQ bra_9853
C - - - - - 0x005847 01:9837: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00584A 01:983A: C9 20     CMP #$20
C - - - - - 0x00584C 01:983C: 90 0D     BCC bra_984B
C - - - - - 0x00584E 01:983E: D0 03     BNE bra_9843
C - - - - - 0x005850 01:9840: 20 33 9D  JSR sub_9D33
bra_9843:
C - - - - - 0x005853 01:9843: 29 04     AND #$04
C - - - - - 0x005855 01:9845: F0 09     BEQ bra_9850
C - - - - - 0x005857 01:9847: A9 01     LDA #$01
C - - - - - 0x005859 01:9849: D0 02     BNE bra_984D    ; jmp
bra_984B:
C - - - - - 0x00585B 01:984B: A9 01     LDA #$01
bra_984D:
C - - - - - 0x00585D 01:984D: 9D 54 04  STA ram_0454_obj,X
bra_9850:
C - - - - - 0x005860 01:9850: 4C 0D 9E  JMP loc_9E0D
bra_9853:
C - - - - - 0x005863 01:9853: A9 01     LDA #$01
C - - - - - 0x005865 01:9855: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x005868 01:9858: EE F0 07  INC ram_07F0
C - - - - - 0x00586B 01:985B: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00586D 01:985D: A0 0B     LDY #$0B
C - - - - - 0x00586F 01:985F: 20 FD 9D  JSR sub_9DFD_prepare_animation
; bzk optimize, JMP
C - - - - - 0x005872 01:9862: 20 0D 9E  JSR sub_9E0D
C - - - - - 0x005875 01:9865: 60        RTS
bra_9866:
; 02
C - - - - - 0x005876 01:9866: EE ED 07  INC ram_07ED
C - - - - - 0x005879 01:9869: A9 00     LDA #$00
C - - - - - 0x00587B 01:986B: 8D EF 07  STA ram_07EF
C - - - - - 0x00587E 01:986E: 8D F0 07  STA ram_07F0
C - - - - - 0x005881 01:9871: A9 00     LDA #$00
C - - - - - 0x005883 01:9873: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x005886 01:9876: 60        RTS



ofs_053_00_9877_04:
ofs_053_02_9877_04:
ofs_053_04_9877_04:
ofs_053_06_9877_04:
C - - J - - 0x005887 01:9877: A4 32     LDY ram_blk_id_hi
C - - - - - 0x005889 01:9879: B9 B6 98  LDA tbl_98B6_B0,Y
C - - - - - 0x00588C 01:987C: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x00588F 01:987F: 88        DEY
C - - - - - 0x005890 01:9880: 18        CLC
C - - - - - 0x005891 01:9881: 79 BE 98  ADC tbl_98BE_pos_Y_lo,Y
C - - - - - 0x005894 01:9884: 85 00     STA ram_0000_t09D_pos_Y_lo
C - - - - - 0x005896 01:9886: A9 00     LDA #$00
C - - - - - 0x005898 01:9888: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x00589B 01:988B: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x00589E 01:988E: BD 37 05  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x0058A1 01:9891: 18        CLC
C - - - - - 0x0058A2 01:9892: 69 20     ADC #< $0020
C - - - - - 0x0058A4 01:9894: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x0058A7 01:9897: BD 20 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x0058AA 01:989A: 69 00     ADC #> $0020
C - - - - - 0x0058AC 01:989C: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0058AF 01:989F: 20 D6 9D  JSR sub_9DD6_move_object
C - - - - - 0x0058B2 01:98A2: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0058B5 01:98A5: C5 00     CMP ram_0000_t09D_pos_Y_lo
C - - - - - 0x0058B7 01:98A7: 90 0C     BCC bra_98B5_RTS
C - - - - - 0x0058B9 01:98A9: A5 00     LDA ram_0000_t09D_pos_Y_lo
C - - - - - 0x0058BB 01:98AB: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0058BE 01:98AE: E6 07     INC ram_0007_t017_counter
C - - - - - 0x0058C0 01:98B0: A5 07     LDA ram_0007_t017_counter
C - - - - - 0x0058C2 01:98B2: 8D F0 07  STA ram_07F0
bra_98B5_RTS:
C - - - - - 0x0058C5 01:98B5: 60        RTS



tbl_98B6_B0:
; bzk optimize, same bytes
- - - - - - 0x0058C6 01:98B6: B0        .byte $B0   ; 00 placeholder
- D 0 - - - 0x0058C7 01:98B7: B0        .byte $B0   ; 01 Clock Tower
- D 0 - - - 0x0058C8 01:98B8: B0        .byte $B0   ; 02 Forest of Madness
- - - - - - 0x0058C9 01:98B9: B0        .byte $B0   ; 03 placeholder
- - - - - - 0x0058CA 01:98BA: B0        .byte $B0   ; 04 placeholder
- - - - - - 0x0058CB 01:98BB: B0        .byte $B0   ; 05 placeholder
- - - - - - 0x0058CC 01:98BC: B0        .byte $B0   ; 06 placeholder
- D 0 - - - 0x0058CD 01:98BD: B0        .byte $B0   ; 07 Caves of Alucard



tbl_98BE_pos_Y_lo:
- D 0 - - - 0x0058CE 01:98BE: 00        .byte $00   ; 01 
- D 0 - - - 0x0058CF 01:98BF: 00        .byte $00   ; 02 
- D 0 - - - 0x0058D0 01:98C0: 00        .byte $00   ; 03 
- D 0 - - - 0x0058D1 01:98C1: F8        .byte $F8   ; 04 



ofs_053_02_98C2_02:
C - - J - - 0x0058D2 01:98C2: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x0058D5 01:98C5: D0 1C     BNE bra_98E3
; 00
C - - - - - 0x0058D7 01:98C7: 20 2F 9D  JSR sub_9D2F
C - - - - - 0x0058DA 01:98CA: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x0058DD 01:98CD: A9 78     LDA #$78
C - - - - - 0x0058DF 01:98CF: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x0058E2 01:98D2: A9 A8     LDA #$A8
C - - - - - 0x0058E4 01:98D4: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0058E7 01:98D7: A9 00     LDA #con_obj_flag_00
C - - - - - 0x0058E9 01:98D9: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0058EC 01:98DC: A9 40     LDA #$40
C - - - - - 0x0058EE 01:98DE: A0 0D     LDY #$0D
C - - - - - 0x0058F0 01:98E0: 4C C5 99  JMP loc_99C5
bra_98E3:
C - - - - - 0x0058F3 01:98E3: 88        DEY
C - - - - - 0x0058F4 01:98E4: D0 18     BNE bra_98FE
; 01
C - - - - - 0x0058F6 01:98E6: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x0058F9 01:98E9: F0 06     BEQ bra_98F1
C - - - - - 0x0058FB 01:98EB: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x0058FE 01:98EE: 4C 0D 9E  JMP loc_9E0D
bra_98F1:
C - - - - - 0x005901 01:98F1: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005904 01:98F4: 20 25 9A  JSR sub_9A25_play_sound_transform_boss_to_partner
C - - - - - 0x005907 01:98F7: A9 40     LDA #$40
C - - - - - 0x005909 01:98F9: A0 0E     LDY #$0E
C - - - - - 0x00590B 01:98FB: 4C C5 99  JMP loc_99C5
bra_98FE:
C - - - - - 0x00590E 01:98FE: 88        DEY
C - - - - - 0x00590F 01:98FF: D0 15     BNE bra_9916
; 02
C - - - - - 0x005911 01:9901: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x005914 01:9904: F0 06     BEQ bra_990C
C - - - - - 0x005916 01:9906: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x005919 01:9909: 4C 0D 9E  JMP loc_9E0D
bra_990C:
C - - - - - 0x00591C 01:990C: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00591F 01:990F: A9 40     LDA #$40
C - - - - - 0x005921 01:9911: A0 0F     LDY #$0F
C - - - - - 0x005923 01:9913: 4C C5 99  JMP loc_99C5
bra_9916:
C - - - - - 0x005926 01:9916: 88        DEY
C - - - - - 0x005927 01:9917: D0 18     BNE bra_9931
; 03
C - - - - - 0x005929 01:9919: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00592C 01:991C: F0 06     BEQ bra_9924
C - - - - - 0x00592E 01:991E: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x005931 01:9921: 4C 0D 9E  JMP loc_9E0D
bra_9924:
C - - - - - 0x005934 01:9924: 20 93 9D  JSR sub_9D93
C - - - - - 0x005937 01:9927: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00593A 01:992A: A9 10     LDA #$10
C - - - - - 0x00593C 01:992C: A0 10     LDY #$10
C - - - - - 0x00593E 01:992E: 4C C5 99  JMP loc_99C5
bra_9931:
C - - - - - 0x005941 01:9931: 88        DEY
C - - - - - 0x005942 01:9932: D0 45     BNE bra_9979
; 04
C - - - - - 0x005944 01:9934: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x005947 01:9937: F0 15     BEQ bra_994E
C - - - - - 0x005949 01:9939: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00594C 01:993C: 20 0D 9E  JSR sub_9E0D
sub_993F_clear_speed:
C - - - - - 0x00594F 01:993F: A9 00     LDA #$00
C - - - - - 0x005951 01:9941: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x005954 01:9944: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x005957 01:9947: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x00595A 01:994A: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x00595D 01:994D: 60        RTS
bra_994E:
C - - - - - 0x00595E 01:994E: BD 37 05  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x005961 01:9951: 18        CLC
C - - - - - 0x005962 01:9952: 69 10     ADC #< $0010
C - - - - - 0x005964 01:9954: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x005967 01:9957: BD 20 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x00596A 01:995A: 69 00     ADC #> $0010
C - - - - - 0x00596C 01:995C: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00596F 01:995F: 20 D6 9D  JSR sub_9DD6_move_object
C - - - - - 0x005972 01:9962: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x005975 01:9965: C9 B8     CMP #$B8
C - - - - - 0x005977 01:9967: 90 0F     BCC bra_9978_RTS
C - - - - - 0x005979 01:9969: A9 B8     LDA #$B8
C - - - - - 0x00597B 01:996B: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x00597E 01:996E: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005981 01:9971: A9 10     LDA #$10
C - - - - - 0x005983 01:9973: A0 11     LDY #$11
C - - - - - 0x005985 01:9975: 4C C5 99  JMP loc_99C5
bra_9978_RTS:
C - - - - - 0x005988 01:9978: 60        RTS
bra_9979:
C - - - - - 0x005989 01:9979: 88        DEY
C - - - - - 0x00598A 01:997A: D0 1A     BNE bra_9996
; 05
C - - - - - 0x00598C 01:997C: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00598F 01:997F: F0 06     BEQ bra_9987
C - - - - - 0x005991 01:9981: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x005994 01:9984: 4C 0D 9E  JMP loc_9E0D
bra_9987:
C - - - - - 0x005997 01:9987: A9 B0     LDA #$B0
C - - - - - 0x005999 01:9989: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x00599C 01:998C: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00599F 01:998F: A9 04     LDA #$04
C - - - - - 0x0059A1 01:9991: A0 13     LDY #$13
C - - - - - 0x0059A3 01:9993: 4C C5 99  JMP loc_99C5
bra_9996:
; 06
C - - - - - 0x0059A6 01:9996: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x0059A9 01:9999: F0 06     BEQ bra_99A1
C - - - - - 0x0059AB 01:999B: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x0059AE 01:999E: 4C 0D 9E  JMP loc_9E0D
bra_99A1:
C - - - - - 0x0059B1 01:99A1: EE ED 07  INC ram_07ED
C - - - - - 0x0059B4 01:99A4: A9 00     LDA #$00
C - - - - - 0x0059B6 01:99A6: 8D EF 07  STA ram_07EF
C - - - - - 0x0059B9 01:99A9: 8D F0 07  STA ram_07F0
C - - - - - 0x0059BC 01:99AC: A9 00     LDA #$00
C - - - - - 0x0059BE 01:99AE: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0059C1 01:99B1: 20 3F 99  JSR sub_993F_clear_speed
C - - - - - 0x0059C4 01:99B4: A9 2A     LDA #con__chr_bank + $2A
C - - - - - 0x0059C6 01:99B6: 85 47     STA ram_chr_bank_5121
C - - - - - 0x0059C8 01:99B8: A9 2B     LDA #con__chr_bank + $2B
C - - - - - 0x0059CA 01:99BA: 85 48     STA ram_chr_bank_5122
C - - - - - 0x0059CC 01:99BC: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x0059CF 01:99BF: A9 03     LDA #$03
C - - - - - 0x0059D1 01:99C1: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0059D4 01:99C4: 60        RTS



loc_99C5:
C D 0 - - - 0x0059D5 01:99C5: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0059D8 01:99C8: A9 14     LDA #con_obj_type_14
C - - - - - 0x0059DA 01:99CA: 4C FD 9D  JMP loc_9DFD_prepare_animation



ofs_053_06_99CD_03:
C - - J - - 0x0059DD 01:99CD: AC F0 07  LDY ram_07F0
C - - - - - 0x0059E0 01:99D0: D0 1E     BNE bra_99F0
; 00
C - - - - - 0x0059E2 01:99D2: 20 25 9A  JSR sub_9A25_play_sound_transform_boss_to_partner
C - - - - - 0x0059E5 01:99D5: A9 2A     LDA #con__chr_bank + $2A
C - - - - - 0x0059E7 01:99D7: 85 47     STA ram_chr_bank_5121
C - - - - - 0x0059E9 01:99D9: A9 2B     LDA #con__chr_bank + $2B
C - - - - - 0x0059EB 01:99DB: 85 48     STA ram_chr_bank_5122
C - - - - - 0x0059ED 01:99DD: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x0059F0 01:99E0: EE F0 07  INC ram_07F0
C - - - - - 0x0059F3 01:99E3: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x0059F5 01:99E5: A0 18     LDY #$18
C - - - - - 0x0059F7 01:99E7: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x0059FA 01:99EA: A9 A0     LDA #$A0
C - - - - - 0x0059FC 01:99EC: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0059FF 01:99EF: 60        RTS
bra_99F0:
C - - - - - 0x005A00 01:99F0: 88        DEY
C - - - - - 0x005A01 01:99F1: D0 0C     BNE bra_99FF
; 01
C - - - - - 0x005A03 01:99F3: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x005A06 01:99F6: D0 04     BNE bra_99FC
C - - - - - 0x005A08 01:99F8: EE F0 07  INC ram_07F0
C - - - - - 0x005A0B 01:99FB: 60        RTS
bra_99FC:
C - - - - - 0x005A0C 01:99FC: 4C 0D 9E  JMP loc_9E0D
bra_99FF:
C - - - - - 0x005A0F 01:99FF: 88        DEY
C - - - - - 0x005A10 01:9A00: D0 0B     BNE bra_9A0D
; 02
C - - - - - 0x005A12 01:9A02: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x005A14 01:9A04: A0 33     LDY #$33
C - - - - - 0x005A16 01:9A06: 20 B4 9D  JSR sub_9DB4
C - - - - - 0x005A19 01:9A09: EE F0 07  INC ram_07F0
C - - - - - 0x005A1C 01:9A0C: 60        RTS
bra_9A0D:
C - - - - - 0x005A1D 01:9A0D: 88        DEY
C - - - - - 0x005A1E 01:9A0E: D0 09     BNE bra_9A19
; 03
C - - - - - 0x005A20 01:9A10: 20 C4 9D  JSR sub_9DC4
C - - - - - 0x005A23 01:9A13: 90 03     BCC bra_9A18_RTS
C - - - - - 0x005A25 01:9A15: EE F0 07  INC ram_07F0
bra_9A18_RTS:
C - - - - - 0x005A28 01:9A18: 60        RTS
bra_9A19:
; 04
C - - - - - 0x005A29 01:9A19: EE ED 07  INC ram_07ED
C - - - - - 0x005A2C 01:9A1C: A9 00     LDA #$00
C - - - - - 0x005A2E 01:9A1E: 8D EF 07  STA ram_07EF
C - - - - - 0x005A31 01:9A21: 8D F0 07  STA ram_07F0
C - - - - - 0x005A34 01:9A24: 60        RTS



sub_9A25_play_sound_transform_boss_to_partner:
C - - - - - 0x005A35 01:9A25: A9 41     LDA #con_sound_boss_to_partner
C - - - - - 0x005A37 01:9A27: 4C 5F E2  JMP loc_0x03E26F_play_sound



ofs_053_00_9A2A_11:
ofs_053_02_9A2A_11:
ofs_053_04_9A2A_11:
ofs_053_06_9A2A_11:
C - - J - - 0x005A3A 01:9A2A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005A3D 01:9A2D: 38        SEC
C - - - - - 0x005A3E 01:9A2E: E9 01     SBC #$01
C - - - - - 0x005A40 01:9A30: 85 01     STA ram_0001_t057
; bzk optimize, TAY
C - - - - - 0x005A42 01:9A32: A4 01     LDY ram_0001_t057
C - - - - - 0x005A44 01:9A34: B9 3C 9A  LDA tbl_9A3C_pos_X_lo,Y
C - - - - - 0x005A47 01:9A37: 85 00     STA ram_0000_t09E_pos_X_lo
C - - - - - 0x005A49 01:9A39: 4C 4E 9A  JMP loc_9A4E



tbl_9A3C_pos_X_lo:
- D 0 - - - 0x005A4C 01:9A3C: B0        .byte $B0   ; 01 
- D 0 - - - 0x005A4D 01:9A3D: 50        .byte $50   ; 02 
- D 0 - - - 0x005A4E 01:9A3E: C0        .byte $C0   ; 03 



ofs_053_00_9A3F_06:
ofs_053_02_9A3F_06:
ofs_053_04_9A3F_06:
ofs_053_06_9A3F_06:
C - - J - - 0x005A4F 01:9A3F: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005A52 01:9A42: 38        SEC
C - - - - - 0x005A53 01:9A43: E9 01     SBC #$01
C - - - - - 0x005A55 01:9A45: 85 01     STA ram_0001_t059
; bzk optimize, TAY
C - - - - - 0x005A57 01:9A47: A4 01     LDY ram_0001_t059
C - - - - - 0x005A59 01:9A49: B9 00 9B  LDA tbl_9B00_pos_X_lo,Y
C - - - - - 0x005A5C 01:9A4C: 85 00     STA ram_0000_t09E_pos_X_lo
loc_9A4E:
C D 0 - - - 0x005A5E 01:9A4E: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x005A61 01:9A51: D0 1D     BNE bra_9A70
C - - - - - 0x005A63 01:9A53: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x005A66 01:9A56: 38        SEC
C - - - - - 0x005A67 01:9A57: E9 01     SBC #$01
C - - - - - 0x005A69 01:9A59: A8        TAY
C - - - - - 0x005A6A 01:9A5A: B9 07 9B  LDA tbl_9B07,Y
C - - - - - 0x005A6D 01:9A5D: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x005A70 01:9A60: B9 03 9B  LDA tbl_9B03,Y
C - - - - - 0x005A73 01:9A63: A8        TAY
C - - - - - 0x005A74 01:9A64: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005A76 01:9A66: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x005A79 01:9A69: 20 0D 9E  JSR sub_9E0D
C - - - - - 0x005A7C 01:9A6C: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005A7F 01:9A6F: 60        RTS
bra_9A70:
C - - - - - 0x005A80 01:9A70: A9 01     LDA #> $0100
C - - - - - 0x005A82 01:9A72: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x005A85 01:9A75: A9 00     LDA #< $0100
C - - - - - 0x005A87 01:9A77: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x005A8A 01:9A7A: A9 00     LDA #$00
C - - - - - 0x005A8C 01:9A7C: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x005A8F 01:9A7F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x005A92 01:9A82: 29 01     AND #con_obj_flag_01
C - - - - - 0x005A94 01:9A84: F0 0B     BEQ bra_9A91
- - - - - - 0x005A96 01:9A86: A9 80     LDA #$80
- - - - - - 0x005A98 01:9A88: 85 00     STA ram_0000_t09E_pos_X_lo
- - - - - - 0x005A9A 01:9A8A: BD 38 04  LDA ram_obj_pos_X_lo,X
- - - - - - 0x005A9D 01:9A8D: 30 22     BMI bra_9AB1
- - - - - - 0x005A9F 01:9A8F: 10 0A     BPL bra_9A9B
bra_9A91:
C - - - - - 0x005AA1 01:9A91: A5 00     LDA ram_0000_t09E_pos_X_lo
C - - - - - 0x005AA3 01:9A93: 38        SEC
C - - - - - 0x005AA4 01:9A94: FD 38 04  SBC ram_obj_pos_X_lo,X
C - - - - - 0x005AA7 01:9A97: 85 00     STA ram_0000_t09E_pos_X_lo
C - - - - - 0x005AA9 01:9A99: B0 16     BCS bra_9AB1
bra_9A9B:
C - - - - - 0x005AAB 01:9A9B: 49 FF     EOR #$FF
C - - - - - 0x005AAD 01:9A9D: 18        CLC
C - - - - - 0x005AAE 01:9A9E: 69 01     ADC #$01
C - - - - - 0x005AB0 01:9AA0: 85 00     STA ram_0000_t09E_pos_X_lo
C - - - - - 0x005AB2 01:9AA2: A9 FF     LDA #> $FF00
C - - - - - 0x005AB4 01:9AA4: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x005AB7 01:9AA7: A9 00     LDA #< $FF00
C - - - - - 0x005AB9 01:9AA9: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x005ABC 01:9AAC: A9 01     LDA #$01    ; facing left
C - - - - - 0x005ABE 01:9AAE: 9D A8 04  STA ram_obj_facing,X
bra_9AB1:
C - - - - - 0x005AC1 01:9AB1: A5 00     LDA ram_0000_t09E_pos_X_lo
C - - - - - 0x005AC3 01:9AB3: C9 03     CMP #$03
C - - - - - 0x005AC5 01:9AB5: B0 3B     BCS bra_9AF2
C - - - - - 0x005AC7 01:9AB7: A9 00     LDA #$00
C - - - - - 0x005AC9 01:9AB9: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x005ACC 01:9ABC: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x005ACF 01:9ABF: A9 0E     LDA #$0E    ; 02 + 04 + 08
C - - - - - 0x005AD1 01:9AC1: A4 3A     LDY ram_partner
C - - - - - 0x005AD3 01:9AC3: C0 FF     CPY #$FF
C - - - - - 0x005AD5 01:9AC5: D0 02     BNE bra_9AC9_you_have_partner
C - - - - - 0x005AD7 01:9AC7: A9 0A     LDA #$0A    ; 02 + 08
bra_9AC9_you_have_partner:
C - - - - - 0x005AD9 01:9AC9: 85 00     STA ram_0000_t09F
C - - - - - 0x005ADB 01:9ACB: A9 00     LDA #$00
C - - - - - 0x005ADD 01:9ACD: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x005AE0 01:9AD0: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x005AE3 01:9AD3: C9 80     CMP #$80
C - - - - - 0x005AE5 01:9AD5: 90 05     BCC bra_9ADC
C - - - - - 0x005AE7 01:9AD7: A9 01     LDA #$01    ; facing left
C - - - - - 0x005AE9 01:9AD9: 9D A8 04  STA ram_obj_facing,X
bra_9ADC:
C - - - - - 0x005AEC 01:9ADC: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x005AEF 01:9ADF: B9 F8 9A  LDA tbl_9AF8_bits,Y
C - - - - - 0x005AF2 01:9AE2: 0D F3 07  ORA ram_07F3
C - - - - - 0x005AF5 01:9AE5: 8D F3 07  STA ram_07F3
C - - - - - 0x005AF8 01:9AE8: C5 00     CMP ram_0000_t09F
C - - - - - 0x005AFA 01:9AEA: D0 06     BNE bra_9AF2
C - - - - - 0x005AFC 01:9AEC: A9 00     LDA #$00
C - - - - - 0x005AFE 01:9AEE: 8D EF 07  STA ram_07EF
C - - - - - 0x005B01 01:9AF1: 60        RTS
bra_9AF2:
C - - - - - 0x005B02 01:9AF2: 20 D6 9D  JSR sub_9DD6_move_object
C - - - - - 0x005B05 01:9AF5: 4C 0D 9E  JMP loc_9E0D



tbl_9AF8_bits:
- - - - - - 0x005B08 01:9AF8: 01        .byte $01   ; 00 
- D 0 - - - 0x005B09 01:9AF9: 02        .byte $02   ; 01 
- D 0 - - - 0x005B0A 01:9AFA: 04        .byte $04   ; 02 
- D 0 - - - 0x005B0B 01:9AFB: 08        .byte $08   ; 03 
- - - - - - 0x005B0C 01:9AFC: 10        .byte $10   ; 04 
- - - - - - 0x005B0D 01:9AFD: 20        .byte $20   ; 05 
- - - - - - 0x005B0E 01:9AFE: 40        .byte $40   ; 06 
- - - - - - 0x005B0F 01:9AFF: 80        .byte $80   ; 07 



tbl_9B00_pos_X_lo:
- D 0 - - - 0x005B10 01:9B00: B0        .byte $B0   ; 01 
- D 0 - - - 0x005B11 01:9B01: D0        .byte $D0   ; 02 
- D 0 - - - 0x005B12 01:9B02: 50        .byte $50   ; 03 



tbl_9B03:
- D 0 - - - 0x005B13 01:9B03: 01        .byte $01   ; 01 
- D 0 - - - 0x005B14 01:9B04: 02        .byte $02   ; 02 
- D 0 - - - 0x005B15 01:9B05: 03        .byte $03   ; 03 
- D 0 - - - 0x005B16 01:9B06: 04        .byte $04   ; 04 



tbl_9B07:
- D 0 - - - 0x005B17 01:9B07: 00        .byte $00   ; 01 
- D 0 - - - 0x005B18 01:9B08: 02        .byte $02   ; 02 
- D 0 - - - 0x005B19 01:9B09: 01        .byte $01   ; 03 
- D 0 - - - 0x005B1A 01:9B0A: 03        .byte $03   ; 04 



ofs_053_00_9B0B_08:
ofs_053_02_9B0B_08:
ofs_053_04_9B0B_08:
ofs_053_06_9B0B_08:
C - - J - - 0x005B1B 01:9B0B: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005B1E 01:9B0E: 38        SEC
C - - - - - 0x005B1F 01:9B0F: E9 01     SBC #$01
C - - - - - 0x005B21 01:9B11: 85 01     STA ram_0001_t058
; bzk optimize, TAY
C - - - - - 0x005B23 01:9B13: A4 01     LDY ram_0001_t058
C - - - - - 0x005B25 01:9B15: B9 1D 9B  LDA tbl_9B1D_pos_X_lo,Y
C - - - - - 0x005B28 01:9B18: 85 00     STA ram_0000_t09E_pos_X_lo
C - - - - - 0x005B2A 01:9B1A: 4C 4E 9A  JMP loc_9A4E



tbl_9B1D_pos_X_lo:
- D 0 - - - 0x005B2D 01:9B1D: 90        .byte $90   ; 01 
- D 0 - - - 0x005B2E 01:9B1E: C0        .byte $C0   ; 02 
- D 0 - - - 0x005B2F 01:9B1F: 76        .byte $76   ; 03 



ofs_053_00_9B20_09:
ofs_053_02_9B20_09:
ofs_053_04_9B20_09:
ofs_053_06_9B20_09:
C - - J - - 0x005B30 01:9B20: AD F0 07  LDA ram_07F0
C - - - - - 0x005B33 01:9B23: D0 34     BNE bra_9B59
C - - - - - 0x005B35 01:9B25: A9 4C     LDA #con_sound_handshake
C - - - - - 0x005B37 01:9B27: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x005B3A 01:9B2A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005B3D 01:9B2D: C9 03     CMP #$03
C - - - - - 0x005B3F 01:9B2F: D0 66     BNE bra_9B97
C - - - - - 0x005B41 01:9B31: EE F0 07  INC ram_07F0
C - - - - - 0x005B44 01:9B34: A9 00     LDA #$00
C - - - - - 0x005B46 01:9B36: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x005B49 01:9B39: A9 80     LDA #$80
C - - - - - 0x005B4B 01:9B3B: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x005B4E 01:9B3E: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x005B51 01:9B41: 49 01     EOR #$01
C - - - - - 0x005B53 01:9B43: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x005B56 01:9B46: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x005B59 01:9B49: 38        SEC
C - - - - - 0x005B5A 01:9B4A: E9 01     SBC #$01
C - - - - - 0x005B5C 01:9B4C: A8        TAY
C - - - - - 0x005B5D 01:9B4D: B9 AA 9B  LDA tbl_9BAA,Y
C - - - - - 0x005B60 01:9B50: A8        TAY
C - - - - - 0x005B61 01:9B51: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005B63 01:9B53: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x005B66 01:9B56: 4C 0D 9E  JMP loc_9E0D
bra_9B59:
C - - - - - 0x005B69 01:9B59: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005B6C 01:9B5C: C9 03     CMP #$03
C - - - - - 0x005B6E 01:9B5E: D0 37     BNE bra_9B97
C - - - - - 0x005B70 01:9B60: AD F0 07  LDA ram_07F0
C - - - - - 0x005B73 01:9B63: C9 80     CMP #$80
C - - - - - 0x005B75 01:9B65: 90 2A     BCC bra_9B91
C - - - - - 0x005B77 01:9B67: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x005B7A 01:9B6A: 38        SEC
C - - - - - 0x005B7B 01:9B6B: E9 01     SBC #$01
C - - - - - 0x005B7D 01:9B6D: A8        TAY
C - - - - - 0x005B7E 01:9B6E: B9 07 9B  LDA tbl_9B07,Y
C - - - - - 0x005B81 01:9B71: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x005B84 01:9B74: A9 76     LDA #$76
C - - - - - 0x005B86 01:9B76: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x005B89 01:9B79: A9 00     LDA #$00
C - - - - - 0x005B8B 01:9B7B: 8D EF 07  STA ram_07EF
C - - - - - 0x005B8E 01:9B7E: 8D F0 07  STA ram_07F0
C - - - - - 0x005B91 01:9B81: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x005B94 01:9B84: 49 01     EOR #$01
C - - - - - 0x005B96 01:9B86: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x005B99 01:9B89: A9 01     LDA #$01
C - - - - - 0x005B9B 01:9B8B: 8D F3 07  STA ram_07F3
C - - - - - 0x005B9E 01:9B8E: 4C FF 9B  JMP loc_9BFF
bra_9B91:
C - - - - - 0x005BA1 01:9B91: EE F0 07  INC ram_07F0
C - - - - - 0x005BA4 01:9B94: 4C 0D 9E  JMP loc_9E0D
bra_9B97:
C - - - - - 0x005BA7 01:9B97: C9 02     CMP #$02
C - - - - - 0x005BA9 01:9B99: F0 0E     BEQ bra_9BA9_RTS
C - - - - - 0x005BAB 01:9B9B: AD F0 07  LDA ram_07F0
C - - - - - 0x005BAE 01:9B9E: 10 04     BPL bra_9BA4
C - - - - - 0x005BB0 01:9BA0: A9 00     LDA #con_obj_flag_00
C - - - - - 0x005BB2 01:9BA2: F0 02     BEQ bra_9BA6    ; jmp
bra_9BA4:
C - - - - - 0x005BB4 01:9BA4: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
bra_9BA6:
C - - - - - 0x005BB6 01:9BA6: 9D 70 04  STA ram_obj_flags,X
bra_9BA9_RTS:
C - - - - - 0x005BB9 01:9BA9: 60        RTS



tbl_9BAA:
- - - - - - 0x005BBA 01:9BAA: 00        .byte $00   ; 01 
- D 0 - - - 0x005BBB 01:9BAB: 06        .byte $06   ; 02 
- D 0 - - - 0x005BBC 01:9BAC: 07        .byte $07   ; 03 
- D 0 - - - 0x005BBD 01:9BAD: 08        .byte $08   ; 04 



ofs_053_00_9BAE_0F:
C - - J - - 0x005BBE 01:9BAE: AD F0 07  LDA ram_07F0
C - - - - - 0x005BC1 01:9BB1: D0 37     BNE bra_9BEA
C - - - - - 0x005BC3 01:9BB3: A0 16     LDY #$16
C - - - - - 0x005BC5 01:9BB5: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005BC7 01:9BB7: D0 2A     BNE bra_9BE3    ; jmp



ofs_053_00_9BB9_10:
C - - J - - 0x005BC9 01:9BB9: AD F0 07  LDA ram_07F0
C - - - - - 0x005BCC 01:9BBC: D0 2C     BNE bra_9BEA
C - - - - - 0x005BCE 01:9BBE: A0 17     LDY #$17
C - - - - - 0x005BD0 01:9BC0: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005BD2 01:9BC2: D0 1F     BNE bra_9BE3    ; jmp



ofs_053_02_9BC4_0D:
C - - J - - 0x005BD4 01:9BC4: AD F0 07  LDA ram_07F0
C - - - - - 0x005BD7 01:9BC7: D0 21     BNE bra_9BEA
C - - - - - 0x005BD9 01:9BC9: A0 14     LDY #$14
C - - - - - 0x005BDB 01:9BCB: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005BDD 01:9BCD: D0 14     BNE bra_9BE3    ; jmp



ofs_053_06_9BCF_0E:
C - - J - - 0x005BDF 01:9BCF: AD F0 07  LDA ram_07F0
C - - - - - 0x005BE2 01:9BD2: D0 16     BNE bra_9BEA
C - - - - - 0x005BE4 01:9BD4: A0 15     LDY #$15
C - - - - - 0x005BE6 01:9BD6: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005BE8 01:9BD8: D0 09     BNE bra_9BE3    ; jmp



ofs_053_04_9BDA_07:
C - - J - - 0x005BEA 01:9BDA: AD F0 07  LDA ram_07F0
C - - - - - 0x005BED 01:9BDD: D0 0B     BNE bra_9BEA
C - - - - - 0x005BEF 01:9BDF: A0 05     LDY #$05
C - - - - - 0x005BF1 01:9BE1: A9 0C     LDA #con_obj_type_0C
bra_9BE3:
C - - - - - 0x005BF3 01:9BE3: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x005BF6 01:9BE6: EE F0 07  INC ram_07F0
C - - - - - 0x005BF9 01:9BE9: 60        RTS
bra_9BEA:
C - - - - - 0x005BFA 01:9BEA: 4C 0D 9E  JMP loc_9E0D



ofs_053_00_9BED_0A:
ofs_053_02_9BED_0A:
ofs_053_04_9BED_0A:
ofs_053_06_9BED_0A:
C - - J - - 0x005BFD 01:9BED: AD F0 07  LDA ram_07F0
C - - - - - 0x005C00 01:9BF0: F0 20     BEQ bra_9C12
C - - - - - 0x005C02 01:9BF2: CE F0 07  DEC ram_07F0
C - - - - - 0x005C05 01:9BF5: A9 00     LDA #con_obj_flag_00
C - - - - - 0x005C07 01:9BF7: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x005C0A 01:9BFA: A9 00     LDA #$00
C - - - - - 0x005C0C 01:9BFC: 9D 1D 06  STA ram_061D_obj,X
loc_9BFF:
C D 0 - - - 0x005C0F 01:9BFF: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x005C12 01:9C02: 38        SEC
C - - - - - 0x005C13 01:9C03: E9 01     SBC #$01
C - - - - - 0x005C15 01:9C05: A8        TAY
C - - - - - 0x005C16 01:9C06: B9 03 9B  LDA tbl_9B03,Y
C - - - - - 0x005C19 01:9C09: A8        TAY
C - - - - - 0x005C1A 01:9C0A: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005C1C 01:9C0C: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x005C1F 01:9C0F: 4C 0D 9E  JMP loc_9E0D
bra_9C12:
C - - - - - 0x005C22 01:9C12: A9 01     LDA #$01
C - - - - - 0x005C24 01:9C14: 8D F3 07  STA ram_07F3
C - - - - - 0x005C27 01:9C17: 60        RTS



ofs_053_00_9C18_12:
ofs_053_02_9C18_12:
ofs_053_04_9C18_12:
ofs_053_06_9C18_12:
- - - - - - 0x005C28 01:9C18: BD 06 06  LDA ram_obj_config,X
- - - - - - 0x005C2B 01:9C1B: C9 03     CMP #$03
- - - - - - 0x005C2D 01:9C1D: F0 01     BEQ bra_9C20
- - - - - - 0x005C2F 01:9C1F: 60        RTS
bra_9C20:
ofs_053_00_9C20_0B:
ofs_053_02_9C20_0B:
ofs_053_04_9C20_0B:
ofs_053_06_9C20_0B:
C - - J - - 0x005C30 01:9C20: A9 01     LDA #> $0100
C - - - - - 0x005C32 01:9C22: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x005C35 01:9C25: A9 00     LDA #< $0100
C - - - - - 0x005C37 01:9C27: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x005C3A 01:9C2A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005C3D 01:9C2D: C9 03     CMP #$03
C - - - - - 0x005C3F 01:9C2F: D0 0A     BNE bra_9C3B
C - - - - - 0x005C41 01:9C31: A9 FF     LDA #> $FF00
C - - - - - 0x005C43 01:9C33: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x005C46 01:9C36: A9 00     LDA #< $FF00
C - - - - - 0x005C48 01:9C38: 9D 09 05  STA ram_obj_spd_X_fr,X
bra_9C3B:
C - - - - - 0x005C4B 01:9C3B: 20 D6 9D  JSR sub_9DD6_move_object
C - - - - - 0x005C4E 01:9C3E: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005C51 01:9C41: C9 03     CMP #$03
C - - - - - 0x005C53 01:9C43: D0 0E     BNE bra_9C53
C - - - - - 0x005C55 01:9C45: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x005C58 01:9C48: C9 04     CMP #$04
C - - - - - 0x005C5A 01:9C4A: 90 34     BCC bra_9C80
C - - - - - 0x005C5C 01:9C4C: A9 01     LDA #$01    ; facing left
C - - - - - 0x005C5E 01:9C4E: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x005C61 01:9C51: D0 0C     BNE bra_9C5F    ; jmp
bra_9C53:
C - - - - - 0x005C63 01:9C53: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x005C66 01:9C56: C9 FC     CMP #$FC
C - - - - - 0x005C68 01:9C58: B0 26     BCS bra_9C80
C - - - - - 0x005C6A 01:9C5A: A9 00     LDA #$00
C - - - - - 0x005C6C 01:9C5C: 9D A8 04  STA ram_obj_facing,X
bra_9C5F:
C - - - - - 0x005C6F 01:9C5F: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x005C72 01:9C62: D0 18     BNE bra_9C7C
C - - - - - 0x005C74 01:9C64: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005C77 01:9C67: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x005C7A 01:9C6A: 38        SEC
C - - - - - 0x005C7B 01:9C6B: E9 01     SBC #$01
C - - - - - 0x005C7D 01:9C6D: A8        TAY
C - - - - - 0x005C7E 01:9C6E: B9 03 9B  LDA tbl_9B03,Y
C - - - - - 0x005C81 01:9C71: A8        TAY
C - - - - - 0x005C82 01:9C72: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x005C84 01:9C74: 20 FD 9D  JSR sub_9DFD_prepare_animation
C - - - - - 0x005C87 01:9C77: A9 40     LDA #con_obj_flag_40
C - - - - - 0x005C89 01:9C79: 9D 70 04  STA ram_obj_flags,X
bra_9C7C:
C - - - - - 0x005C8C 01:9C7C: 4C 0D 9E  JMP loc_9E0D


; bzk garbage
- - - - - - 0x005C8F 01:9C7F: 60        RTS



bra_9C80:
C - - - - - 0x005C90 01:9C80: A9 00     LDA #$00
C - - - - - 0x005C92 01:9C82: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x005C95 01:9C85: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x005C98 01:9C88: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x005C9B 01:9C8B: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x005C9E 01:9C8E: 60        RTS



ofs_053_00_9C8F_0C:
ofs_053_02_9C8F_0C:
ofs_053_04_9C8F_0C:
ofs_053_06_9C8F_0C:
C - - J - - 0x005C9F 01:9C8F: AD 4E 05  LDA ram_plr_id
C - - - - - 0x005CA2 01:9C92: F0 08     BEQ bra_9C9C
C - - - - - 0x005CA4 01:9C94: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005CA7 01:9C97: C9 02     CMP #$02
C - - - - - 0x005CA9 01:9C99: F0 09     BEQ bra_9CA4
C - - - - - 0x005CAB 01:9C9B: 60        RTS
bra_9C9C:
C - - - - - 0x005CAC 01:9C9C: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x005CAF 01:9C9F: C9 01     CMP #$01
C - - - - - 0x005CB1 01:9CA1: F0 01     BEQ bra_9CA4
C - - - - - 0x005CB3 01:9CA3: 60        RTS
bra_9CA4:
C - - - - - 0x005CB4 01:9CA4: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x005CB7 01:9CA7: D0 11     BNE bra_9CBA
C - - - - - 0x005CB9 01:9CA9: 20 C0 9C  JSR sub_9CC0
C - - - - - 0x005CBC 01:9CAC: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x005CBF 01:9CAF: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x005CC2 01:9CB2: 88        DEY
C - - - - - 0x005CC3 01:9CB3: 98        TYA
C - - - - - 0x005CC4 01:9CB4: 0A        ASL
; con_obj_type_00
; con_obj_type_04
C - - - - - 0x005CC5 01:9CB5: A0 12     LDY #$12
C - - - - - 0x005CC7 01:9CB7: 4C FD 9D  JMP loc_9DFD_prepare_animation
bra_9CBA:
C - - - - - 0x005CCA 01:9CBA: 20 C0 9C  JSR sub_9CC0
C - - - - - 0x005CCD 01:9CBD: 4C 0D 9E  JMP loc_9E0D



sub_9CC0:
C - - - - - 0x005CD0 01:9CC0: A9 00     LDA #$00    ; facing right
C - - - - - 0x005CD2 01:9CC2: 85 00     STA ram_0000_t0A0_obj_facing
C - - - - - 0x005CD4 01:9CC4: A9 70     LDA #$70
C - - - - - 0x005CD6 01:9CC6: 38        SEC
C - - - - - 0x005CD7 01:9CC7: FD 38 04  SBC ram_obj_pos_X_lo,X
C - - - - - 0x005CDA 01:9CCA: B0 07     BCS bra_9CD3
C - - - - - 0x005CDC 01:9CCC: 49 FF     EOR #$FF
C - - - - - 0x005CDE 01:9CCE: 18        CLC
C - - - - - 0x005CDF 01:9CCF: 69 01     ADC #$01
C - - - - - 0x005CE1 01:9CD1: E6 00     INC ram_0000_t0A0_obj_facing   ; -> 01 facing left
bra_9CD3:
C - - - - - 0x005CE3 01:9CD3: C9 20     CMP #$20
C - - - - - 0x005CE5 01:9CD5: B0 1D     BCS bra_9CF4
C - - - - - 0x005CE7 01:9CD7: A9 FF     LDA #$FF
C - - - - - 0x005CE9 01:9CD9: 9D F2 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x005CEC 01:9CDC: A5 00     LDA ram_0000_t0A0_obj_facing
C - - - - - 0x005CEE 01:9CDE: F0 05     BEQ bra_9CE5_facing_right
; if facing left
C - - - - - 0x005CF0 01:9CE0: A9 01     LDA #$01
C - - - - - 0x005CF2 01:9CE2: 9D F2 04  STA ram_obj_spd_X_lo,X
bra_9CE5_facing_right:
C - - - - - 0x005CF5 01:9CE5: A9 00     LDA #$00
C - - - - - 0x005CF7 01:9CE7: 9D 09 05  STA ram_obj_spd_X_fr,X
C - - - - - 0x005CFA 01:9CEA: 9D 20 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x005CFD 01:9CED: 9D 37 05  STA ram_obj_spd_Y_fr,X
C - - - - - 0x005D00 01:9CF0: 20 D6 9D  JSR sub_9DD6_move_object
C - - - - - 0x005D03 01:9CF3: 60        RTS
bra_9CF4:
C - - - - - 0x005D04 01:9CF4: A5 00     LDA ram_0000_t0A0_obj_facing
C - - - - - 0x005D06 01:9CF6: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x005D09 01:9CF9: A9 00     LDA #$00
C - - - - - 0x005D0B 01:9CFB: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x005D0E 01:9CFE: 8D EF 07  STA ram_07EF
C - - - - - 0x005D11 01:9D01: 60        RTS



sub_9D02:
; in
    ; A = object id
C - - - - - 0x005D12 01:9D02: 85 10     STA ram_0010_t004
C - - - - - 0x005D14 01:9D04: 86 16     STX ram_0016_t008_save_X
C - - - - - 0x005D16 01:9D06: 20 B9 FE  JSR sub_0x03FEC9_find_empty_object_slot_01_0C
C - - - - - 0x005D19 01:9D09: D0 1F     BNE bra_9D2A    ; if not found
; if found
C - - - - - 0x005D1B 01:9D0B: 20 6F 96  JSR sub_966F
C - - - - - 0x005D1E 01:9D0E: 8A        TXA
C - - - - - 0x005D1F 01:9D0F: A8        TAY
C - - - - - 0x005D20 01:9D10: A6 16     LDX ram_0016_t008_save_X
C - - - - - 0x005D22 01:9D12: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x005D25 01:9D15: 99 38 04  STA ram_obj_pos_X_lo,Y
C - - - - - 0x005D28 01:9D18: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x005D2B 01:9D1B: 99 1C 04  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x005D2E 01:9D1E: A5 10     LDA ram_0010_t004
C - - - - - 0x005D30 01:9D20: 99 4E 05  STA ram_obj_id,Y
C - - - - - 0x005D33 01:9D23: A9 00     LDA #$00
C - - - - - 0x005D35 01:9D25: 99 54 04  STA ram_0454_obj,Y
C - - - - - 0x005D38 01:9D28: 38        SEC
C - - - - - 0x005D39 01:9D29: 60        RTS
bra_9D2A:
- - - - - - 0x005D3A 01:9D2A: A6 16     LDX ram_0016_t008_save_X
- - - - - - 0x005D3C 01:9D2C: 18        CLC
- - - - - - 0x005D3D 01:9D2D: 60        RTS



ofs_053_00_9D2E_05_RTS:
ofs_053_02_9D2E_05_RTS:
ofs_053_04_9D2E_05_RTS:
ofs_053_06_9D2E_05_RTS:
; bzk optimize, use RTS above
- - - - - - 0x005D3E 01:9D2E: 60        RTS



sub_9D2F:
C - - - - - 0x005D3F 01:9D2F: A0 02     LDY #$02
C - - - - - 0x005D41 01:9D31: D0 02     BNE bra_9D35    ; jmp



sub_9D33:
C - - - - - 0x005D43 01:9D33: A0 00     LDY #$00
bra_9D35:
C - - - - - 0x005D45 01:9D35: B9 69 9D  LDA tbl_9D69_sprite_palette,Y
C - - - - - 0x005D48 01:9D38: 85 00     STA ram_0000_t019_data
C - - - - - 0x005D4A 01:9D3A: B9 6A 9D  LDA tbl_9D69_sprite_palette + $01,Y
C - - - - - 0x005D4D 01:9D3D: 85 01     STA ram_0000_t019_data + $01
C - - - - - 0x005D4F 01:9D3F: 86 16     STX ram_0016_t007_save_X
C - - - - - 0x005D51 01:9D41: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x005D53 01:9D43: A0 00     LDY #$00
C - - - - - 0x005D55 01:9D45: A9 01     LDA #$01
C - - - - - 0x005D57 01:9D47: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x005D5A 01:9D4A: E8        INX
loc_9D4B:
C D 0 - - - 0x005D5B 01:9D4B: B1 00     LDA (ram_0000_t019_data),Y
C - - - - - 0x005D5D 01:9D4D: C9 FF     CMP #$FF
C - - - - - 0x005D5F 01:9D4F: F0 08     BEQ bra_9D59_FF
C - - - - - 0x005D61 01:9D51: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x005D64 01:9D54: C8        INY
C - - - - - 0x005D65 01:9D55: E8        INX
C - - - - - 0x005D66 01:9D56: 4C 4B 9D  JMP loc_9D4B
bra_9D59_FF:
C - - - - - 0x005D69 01:9D59: A9 FF     LDA #$FF
C - - - - - 0x005D6B 01:9D5B: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x005D6E 01:9D5E: E8        INX
C - - - - - 0x005D6F 01:9D5F: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x005D71 01:9D61: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x005D73 01:9D63: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x005D76 01:9D66: A6 16     LDX ram_0016_t007_save_X
C - - - - - 0x005D78 01:9D68: 60        RTS



tbl_9D69_sprite_palette:
- D 0 - - - 0x005D79 01:9D69: 6D 9D     .word off_9D6D_00
- D 0 - - - 0x005D7B 01:9D6B: 80 9D     .word off_9D80_01



off_9D6D_00:
- D 0 - I - 0x005D7D 01:9D6D: 10 3F     .word $3F10 ; ppu address

- D 0 - I - 0x005D7F 01:9D6F: 0F        .byte $0F, $08, $26, $37   ; 
- D 0 - I - 0x005D83 01:9D73: 0F        .byte $0F, $08, $15, $35   ; 
- D 0 - I - 0x005D87 01:9D77: 0F        .byte $0F, $21, $11, $20   ; 
- D 0 - I - 0x005D8B 01:9D7B: 0F        .byte $0F, $0F, $15, $36   ; 

- D 0 - I - 0x005D8F 01:9D7F: FF        .byte $FF   ; end token



off_9D80_01:
- D 0 - I - 0x005D90 01:9D80: 10 3F     .word $3F10 ; ppu address

- D 0 - I - 0x005D92 01:9D82: 0F        .byte $0F, $08, $26, $37   ; 
- D 0 - I - 0x005D96 01:9D86: 0F        .byte $0F, $08, $15, $35   ; 
- D 0 - I - 0x005D9A 01:9D8A: 0F        .byte $0F, $21, $11, $20   ; 
- D 0 - I - 0x005D9E 01:9D8E: 0F        .byte $0F, $0F, $36, $15   ; 

- D 0 - I - 0x005DA2 01:9D92: FF        .byte $FF   ; end token



sub_9D93:
C - - - - - 0x005DA3 01:9D93: 86 16     STX ram_0016_t006_save_X
C - - - - - 0x005DA5 01:9D95: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x005DA7 01:9D97: A0 00     LDY #$00
bra_9D99_loop:
C - - - - - 0x005DA9 01:9D99: B9 AA 9D  LDA tbl_9DAA,Y
C - - - - - 0x005DAC 01:9D9C: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x005DAF 01:9D9F: C8        INY
C - - - - - 0x005DB0 01:9DA0: E8        INX
C - - - - - 0x005DB1 01:9DA1: C0 0A     CPY #$0A
C - - - - - 0x005DB3 01:9DA3: D0 F4     BNE bra_9D99_loop
C - - - - - 0x005DB5 01:9DA5: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x005DB7 01:9DA7: A6 16     LDX ram_0016_t006_save_X
C - - - - - 0x005DB9 01:9DA9: 60        RTS



tbl_9DAA:
- D 0 - - - 0x005DBA 01:9DAA: 03        .byte $03   ; buffer mode
- D 0 - - - 0x005DBB 01:9DAB: 6E 26     .word $266E ; ppu address
- D 0 - - - 0x005DBD 01:9DAD: 04        .byte $04, $00, $03, $6F, $26, $04, $00   ; 



sub_9DB4:
; bzk optimize, single JSR to here
C - - - - - 0x005DC4 01:9DB4: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x005DC7 01:9DB7: 98        TYA
C - - - - - 0x005DC8 01:9DB8: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x005DCB 01:9DBB: A9 00     LDA #$00
C - - - - - 0x005DCD 01:9DBD: 9D 93 05  STA ram_obj_anim_cnt,X
; bzk optimize, JMP
C - - - - - 0x005DD0 01:9DC0: 20 7B EF  JSR sub_0x03EF8B_object_animation_handler
C - - - - - 0x005DD3 01:9DC3: 60        RTS



sub_9DC4:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x005DD4 01:9DC4: BD 93 05  LDA ram_obj_anim_cnt,X
C - - - - - 0x005DD7 01:9DC7: D0 06     BNE bra_9DCF
C - - - - - 0x005DD9 01:9DC9: BC 7C 05  LDY ram_obj_anim_timer,X
C - - - - - 0x005DDC 01:9DCC: 88        DEY
C - - - - - 0x005DDD 01:9DCD: F0 05     BEQ bra_9DD4
bra_9DCF:
C - - - - - 0x005DDF 01:9DCF: 20 75 EF  JSR sub_0x03EF85_object_animation_handler
C - - - - - 0x005DE2 01:9DD2: 18        CLC
C - - - - - 0x005DE3 01:9DD3: 60        RTS
bra_9DD4:
C - - - - - 0x005DE4 01:9DD4: 38        SEC
C - - - - - 0x005DE5 01:9DD5: 60        RTS



sub_9DD6_move_object:
C - - - - - 0x005DE6 01:9DD6: 18        CLC
C - - - - - 0x005DE7 01:9DD7: BD 09 05  LDA ram_obj_spd_X_fr,X
C - - - - - 0x005DEA 01:9DDA: 7D C4 04  ADC ram_obj_pos_X_fr,X
C - - - - - 0x005DED 01:9DDD: 9D C4 04  STA ram_obj_pos_X_fr,X
C - - - - - 0x005DF0 01:9DE0: BD F2 04  LDA ram_obj_spd_X_lo,X
C - - - - - 0x005DF3 01:9DE3: 7D 38 04  ADC ram_obj_pos_X_lo,X
C - - - - - 0x005DF6 01:9DE6: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x005DF9 01:9DE9: 18        CLC
C - - - - - 0x005DFA 01:9DEA: BD 37 05  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x005DFD 01:9DED: 7D DB 04  ADC ram_obj_pos_Y_fr,X
C - - - - - 0x005E00 01:9DF0: 9D DB 04  STA ram_obj_pos_Y_fr,X
C - - - - - 0x005E03 01:9DF3: BD 20 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x005E06 01:9DF6: 7D 1C 04  ADC ram_obj_pos_Y_lo,X
C - - - - - 0x005E09 01:9DF9: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x005E0C 01:9DFC: 60        RTS



sub_9DFD_prepare_animation:
loc_9DFD_prepare_animation:
C D 0 - - - 0x005E0D 01:9DFD: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x005E10 01:9E00: 98        TYA
C - - - - - 0x005E11 01:9E01: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x005E14 01:9E04: A9 00     LDA #$00
C - - - - - 0x005E16 01:9E06: 9D 93 05  STA ram_obj_anim_cnt,X
C - - - - - 0x005E19 01:9E09: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x005E1C 01:9E0C: 60        RTS



sub_9E0D:
loc_9E0D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 - - - 0x005E1D 01:9E0D: BD 7C 05  LDA ram_obj_anim_timer,X
C - - - - - 0x005E20 01:9E10: D0 2E     BNE bra_9E40
C - - - - - 0x005E22 01:9E12: BD AA 05  LDA ram_05AA_obj,X
C - - - - - 0x005E25 01:9E15: 0A        ASL
C - - - - - 0x005E26 01:9E16: A8        TAY
C - - - - - 0x005E27 01:9E17: B9 5B 9E  LDA tbl_9E5B,Y
C - - - - - 0x005E2A 01:9E1A: 85 00     STA ram_0000_t01F_data
C - - - - - 0x005E2C 01:9E1C: B9 5C 9E  LDA tbl_9E5B + $01,Y
C - - - - - 0x005E2F 01:9E1F: 85 01     STA ram_0000_t01F_data + $01
C - - - - - 0x005E31 01:9E21: BD 93 05  LDA ram_obj_anim_cnt,X
C - - - - - 0x005E34 01:9E24: C9 FF     CMP #$FF
C - - - - - 0x005E36 01:9E26: F0 31     BEQ bra_9E59_FF
C - - - - - 0x005E38 01:9E28: 0A        ASL
C - - - - - 0x005E39 01:9E29: A8        TAY
C - - - - - 0x005E3A 01:9E2A: B1 00     LDA (ram_0000_t01F_data),Y
C - - - - - 0x005E3C 01:9E2C: C9 FE     CMP #$FE
C - - - - - 0x005E3E 01:9E2E: F0 1F     BEQ bra_9E4F_FE
C - - - - - 0x005E40 01:9E30: C9 FF     CMP #$FF
C - - - - - 0x005E42 01:9E32: F0 11     BEQ bra_9E45_FF
C - - - - - 0x005E44 01:9E34: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x005E47 01:9E37: C8        INY
C - - - - - 0x005E48 01:9E38: B1 00     LDA (ram_0000_t01F_data),Y
C - - - - - 0x005E4A 01:9E3A: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x005E4D 01:9E3D: FE 93 05  INC ram_obj_anim_cnt,X
bra_9E40:
C - - - - - 0x005E50 01:9E40: DE 7C 05  DEC ram_obj_anim_timer,X
C - - - - - 0x005E53 01:9E43: 18        CLC
C - - - - - 0x005E54 01:9E44: 60        RTS
bra_9E45_FF:
C - - - - - 0x005E55 01:9E45: A9 00     LDA #$00
C - - - - - 0x005E57 01:9E47: 9D 93 05  STA ram_obj_anim_cnt,X
C - - - - - 0x005E5A 01:9E4A: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x005E5D 01:9E4D: 18        CLC
C - - - - - 0x005E5E 01:9E4E: 60        RTS
bra_9E4F_FE:
C - - - - - 0x005E5F 01:9E4F: A9 00     LDA #$00
C - - - - - 0x005E61 01:9E51: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x005E64 01:9E54: A9 FF     LDA #$FF
C - - - - - 0x005E66 01:9E56: 9D 93 05  STA ram_obj_anim_cnt,X
bra_9E59_FF:
C - - - - - 0x005E69 01:9E59: 38        SEC
C - - - - - 0x005E6A 01:9E5A: 60        RTS



tbl_9E5B:
- D 0 - - - 0x005E6B 01:9E5B: 8D 9E     .word _off021_9E8D_00
- D 0 - - - 0x005E6D 01:9E5D: 96 9E     .word _off021_9E96_01
- D 0 - - - 0x005E6F 01:9E5F: 9F 9E     .word _off021_9E9F_02
- D 0 - - - 0x005E71 01:9E61: A8 9E     .word _off021_9EA8_03
- D 0 - - - 0x005E73 01:9E63: B1 9E     .word _off021_9EB1_04
- D 0 - - - 0x005E75 01:9E65: BA 9E     .word _off021_9EBA_05
- D 0 - - - 0x005E77 01:9E67: C3 9E     .word _off021_9EC3_06
- D 0 - - - 0x005E79 01:9E69: C8 9E     .word _off021_9EC8_07
- D 0 - - - 0x005E7B 01:9E6B: CD 9E     .word _off021_9ECD_08
- D 0 - - - 0x005E7D 01:9E6D: D2 9E     .word _off021_9ED2_09
- D 0 - - - 0x005E7F 01:9E6F: D5 9E     .word _off021_9ED5_0A
- D 0 - - - 0x005E81 01:9E71: DA 9E     .word _off021_9EDA_0B
- D 0 - - - 0x005E83 01:9E73: DD 9E     .word _off021_9EDD_0C
- D 0 - - - 0x005E85 01:9E75: E0 9E     .word _off021_9EE0_0D
- D 0 - - - 0x005E87 01:9E77: E5 9E     .word _off021_9EE5_0E
- D 0 - - - 0x005E89 01:9E79: EC 9E     .word _off021_9EEC_0F
- D 0 - - - 0x005E8B 01:9E7B: F5 9E     .word _off021_9EF5_10
- D 0 - - - 0x005E8D 01:9E7D: F8 9E     .word _off021_9EF8_11
- D 0 - - - 0x005E8F 01:9E7F: FB 9E     .word _off021_9EFB_12
- D 0 - - - 0x005E91 01:9E81: 04 9F     .word _off021_9F04_13
- D 0 - - - 0x005E93 01:9E83: 07 9F     .word _off021_9F07_14
- D 0 - - - 0x005E95 01:9E85: 10 9F     .word _off021_9F10_15
- D 0 - - - 0x005E97 01:9E87: 19 9F     .word _off021_9F19_16
- D 0 - - - 0x005E99 01:9E89: 20 9F     .word _off021_9F20_17
- D 0 - - - 0x005E9B 01:9E8B: 2C 9F     .word _off021_9F2C_18

; control bytes FE FF

_off021_9E8D_00:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005E9D 01:9E8D: 02        .byte $02, $4A   ; 00 
- D 0 - I - 0x005E9F 01:9E8F: 02        .byte $02, $94   ; 01 
- D 0 - I - 0x005EA1 01:9E91: 02        .byte $02, $96   ; 02 
- D 0 - I - 0x005EA3 01:9E93: 02        .byte $02, $98   ; 03 
- D 0 - I - 0x005EA5 01:9E95: FF        .byte $FF   ; 04 



_off021_9E96_01:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EA6 01:9E96: 08        .byte $08, $70   ; 00 
- D 0 - I - 0x005EA8 01:9E98: 08        .byte $08, $72   ; 01 
- D 0 - I - 0x005EAA 01:9E9A: 08        .byte $08, $74   ; 02 
- D 0 - I - 0x005EAC 01:9E9C: 08        .byte $08, $72   ; 03 
- D 0 - I - 0x005EAE 01:9E9E: FF        .byte $FF   ; 04 



_off021_9E9F_02:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EAF 01:9E9F: 08        .byte $08, $94   ; 00 
- D 0 - I - 0x005EB1 01:9EA1: 08        .byte $08, $96   ; 01 
- D 0 - I - 0x005EB3 01:9EA3: 08        .byte $08, $98   ; 02 
- D 0 - I - 0x005EB5 01:9EA5: 08        .byte $08, $96   ; 03 
- D 0 - I - 0x005EB7 01:9EA7: FF        .byte $FF   ; 04 



_off021_9EA8_03:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EB8 01:9EA8: 08        .byte $08, $7C   ; 00 
- D 0 - I - 0x005EBA 01:9EAA: 08        .byte $08, $7E   ; 01 
- D 0 - I - 0x005EBC 01:9EAC: 08        .byte $08, $80   ; 02 
- D 0 - I - 0x005EBE 01:9EAE: 08        .byte $08, $7E   ; 03 
- D 0 - I - 0x005EC0 01:9EB0: FF        .byte $FF   ; 04 



_off021_9EB1_04:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EC1 01:9EB1: 08        .byte $08, $88   ; 00 
- D 0 - I - 0x005EC3 01:9EB3: 08        .byte $08, $8A   ; 01 
- D 0 - I - 0x005EC5 01:9EB5: 08        .byte $08, $8C   ; 02 
- D 0 - I - 0x005EC7 01:9EB7: 08        .byte $08, $8A   ; 03 
- D 0 - I - 0x005EC9 01:9EB9: FF        .byte $FF   ; 04 



_off021_9EBA_05:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005ECA 01:9EBA: 18        .byte $18, $7C   ; 00 
- D 0 - I - 0x005ECC 01:9EBC: 08        .byte $08, $86   ; 01 
- D 0 - I - 0x005ECE 01:9EBE: 10        .byte $10, $7C   ; 02 
- D 0 - I - 0x005ED0 01:9EC0: 04        .byte $04, $86   ; 03 
- D 0 - I - 0x005ED2 01:9EC2: FF        .byte $FF   ; 04 



_off021_9EC3_06:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005ED3 01:9EC3: 08        .byte $08, $9A   ; 00 
- D 0 - I - 0x005ED5 01:9EC5: 08        .byte $08, $9C   ; 01 
- D 0 - I - 0x005ED7 01:9EC7: FF        .byte $FF   ; 02 



_off021_9EC8_07:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005ED8 01:9EC8: 08        .byte $08, $82   ; 00 
- D 0 - I - 0x005EDA 01:9ECA: 08        .byte $08, $84   ; 01 
- D 0 - I - 0x005EDC 01:9ECC: FF        .byte $FF   ; 02 



_off021_9ECD_08:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EDD 01:9ECD: 08        .byte $08, $8E   ; 00 
- D 0 - I - 0x005EDF 01:9ECF: 08        .byte $08, $90   ; 01 
- D 0 - I - 0x005EE1 01:9ED1: FF        .byte $FF   ; 02 



_off021_9ED2_09:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EE2 01:9ED2: 08        .byte $08, $6E   ; 00 
- - - - - - 0x005EE4 01:9ED4: FF        .byte $FF   ; 01 



_off021_9ED5_0A:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EE5 01:9ED5: 08        .byte $08, $48   ; 00 
- D 0 - I - 0x005EE7 01:9ED7: 08        .byte $08, $4A   ; 01 
- D 0 - I - 0x005EE9 01:9ED9: FE        .byte $FE   ; 02 FE



_off021_9EDA_0B:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EEA 01:9EDA: 08        .byte $08, $98   ; 00 
- - - - - - 0x005EEC 01:9EDC: FF        .byte $FF   ; 01 



_off021_9EDD_0C:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EED 01:9EDD: 08        .byte $08, $2E   ; 00 
- D 0 - I - 0x005EEF 01:9EDF: FF        .byte $FF   ; 01 



_off021_9EE0_0D:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EF0 01:9EE0: 02        .byte $02, $02   ; 00 
- D 0 - I - 0x005EF2 01:9EE2: 02        .byte $02, $04   ; 01 
- D 0 - I - 0x005EF4 01:9EE4: FF        .byte $FF   ; 02 



_off021_9EE5_0E:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EF5 01:9EE5: 02        .byte $02, $02   ; 00 
- D 0 - I - 0x005EF7 01:9EE7: 02        .byte $02, $04   ; 01 
- D 0 - I - 0x005EF9 01:9EE9: 02        .byte $02, $06   ; 02 
- D 0 - I - 0x005EFB 01:9EEB: FF        .byte $FF   ; 03 



_off021_9EEC_0F:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005EFC 01:9EEC: 02        .byte $02, $02   ; 00 
- D 0 - I - 0x005EFE 01:9EEE: 02        .byte $02, $04   ; 01 
- D 0 - I - 0x005F00 01:9EF0: 02        .byte $02, $06   ; 02 
- D 0 - I - 0x005F02 01:9EF2: 02        .byte $02, $08   ; 03 
- D 0 - I - 0x005F04 01:9EF4: FF        .byte $FF   ; 04 



_off021_9EF5_10:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F05 01:9EF5: 08        .byte $08, $0A   ; 00 
- D 0 - I - 0x005F07 01:9EF7: FF        .byte $FF   ; 01 



_off021_9EF8_11:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F08 01:9EF8: 08        .byte $08, $0C   ; 00 
- D 0 - I - 0x005F0A 01:9EFA: FF        .byte $FF   ; 01 



_off021_9EFB_12:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F0B 01:9EFB: 08        .byte $08, $02   ; 00 
- D 0 - I - 0x005F0D 01:9EFD: 08        .byte $08, $04   ; 01 
- D 0 - I - 0x005F0F 01:9EFF: 08        .byte $08, $06   ; 02 
- - - - - - 0x005F11 01:9F01: 08        .byte $08, $08   ; 03 
- - - - - - 0x005F13 01:9F03: FF        .byte $FF   ; 04 



_off021_9F04_13:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F14 01:9F04: 08        .byte $08, $0E   ; 00 
- - - - - - 0x005F16 01:9F06: FF        .byte $FF   ; 01 



_off021_9F07_14:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F17 01:9F07: 18        .byte $18, $98   ; 00 
- D 0 - I - 0x005F19 01:9F09: 08        .byte $08, $9E   ; 01 
- D 0 - I - 0x005F1B 01:9F0B: 10        .byte $10, $98   ; 02 
- D 0 - I - 0x005F1D 01:9F0D: 04        .byte $04, $9E   ; 03 
- D 0 - I - 0x005F1F 01:9F0F: FF        .byte $FF   ; 04 



_off021_9F10_15:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F20 01:9F10: 18        .byte $18, $8C   ; 00 
- D 0 - I - 0x005F22 01:9F12: 08        .byte $08, $92   ; 01 
- D 0 - I - 0x005F24 01:9F14: 10        .byte $10, $8C   ; 02 
- D 0 - I - 0x005F26 01:9F16: 04        .byte $04, $92   ; 03 
- D 0 - I - 0x005F28 01:9F18: FF        .byte $FF   ; 04 



_off021_9F19_16:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F29 01:9F19: 08        .byte $08, $74   ; 00 
- D 0 - I - 0x005F2B 01:9F1B: 04        .byte $04, $76   ; 01 
- D 0 - I - 0x005F2D 01:9F1D: 10        .byte $10, $74   ; 02 
- D 0 - I - 0x005F2F 01:9F1F: FF        .byte $FF   ; 03 



_off021_9F20_17:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F30 01:9F20: 08        .byte $08, $78   ; 00 
- D 0 - I - 0x005F32 01:9F22: 04        .byte $04, $74   ; 01 
- D 0 - I - 0x005F34 01:9F24: 08        .byte $08, $7A   ; 02 
- D 0 - I - 0x005F36 01:9F26: FF        .byte $FF   ; 03 


; bzk garbage
- - - - - - 0x005F37 01:9F27: 04        .byte $04, $74   ; 00 
- - - - - - 0x005F39 01:9F29: 10        .byte $10, $78   ; 01 
- - - - - - 0x005F3B 01:9F2B: FF        .byte $FF   ; 02 



_off021_9F2C_18:
;                                              +---------- timer
;                                              |    +----- animation
;                                              |    |
- D 0 - I - 0x005F3C 01:9F2C: 02        .byte $02, $88   ; 00 
- D 0 - I - 0x005F3E 01:9F2E: 02        .byte $02, $8A   ; 01 
- D 0 - I - 0x005F40 01:9F30: FF        .byte $FF   ; 02 



tbl_0x005F41_irq_handlers:
; see con_irq
- D 0 - - - 0x005F41 01:9F31: 3A E1     .word ofs_irq_handler_0x03E14A_00
- D 0 - - - 0x005F43 01:9F33: BC A0     .word ofs_irq_handler_A0BC_01
- D 0 - - - 0x005F45 01:9F35: EF A0     .word ofs_irq_handler_A0EF_02
- D 0 - - - 0x005F47 01:9F37: 2F A1     .word ofs_irq_handler_A12F_03
- D 0 - - - 0x005F49 01:9F39: 3C A1     .word ofs_irq_handler_A13C_04
- D 0 - - - 0x005F4B 01:9F3B: 79 A1     .word ofs_irq_handler_A179_05
- D 0 - - - 0x005F4D 01:9F3D: 90 A1     .word ofs_irq_handler_A190_06
- D 0 - - - 0x005F4F 01:9F3F: BF A1     .word ofs_irq_handler_A1BF_07
- D 0 - - - 0x005F51 01:9F41: E8 A1     .word ofs_irq_handler_A1E8_08
- D 0 - - - 0x005F53 01:9F43: 74 A2     .word ofs_irq_handler_A274_09
- D 0 - - - 0x005F55 01:9F45: A1 A2     .word ofs_irq_handler_A2A1_0A
- D 0 - - - 0x005F57 01:9F47: 79 A1     .word ofs_irq_handler_A179_0B
- D 0 - - - 0x005F59 01:9F49: 90 A1     .word ofs_irq_handler_A190_0C
- D 0 - - - 0x005F5B 01:9F4B: 1E A2     .word ofs_irq_handler_A21E_0D
- D 0 - - - 0x005F5D 01:9F4D: 4B A2     .word ofs_irq_handler_A24B_0E
- D 0 - - - 0x005F5F 01:9F4F: A1 A2     .word ofs_irq_handler_A2A1_0F
- D 0 - - - 0x005F61 01:9F51: DC A2     .word ofs_irq_handler_A2DC_10
- D 0 - - - 0x005F63 01:9F53: F2 A2     .word ofs_irq_handler_A2F2_11
- D 0 - - - 0x005F65 01:9F55: F8 A2     .word ofs_irq_handler_A2F8_12
- D 0 - - - 0x005F67 01:9F57: 45 A3     .word ofs_irq_handler_A345_13
- D 0 - - - 0x005F69 01:9F59: 9B A3     .word ofs_irq_handler_A39B_14
- D 0 - - - 0x005F6B 01:9F5B: EE A3     .word ofs_irq_handler_A3EE_15
- D 0 - - - 0x005F6D 01:9F5D: 5A A0     .word ofs_irq_handler_A05A_16
- D 0 - - - 0x005F6F 01:9F5F: 0D A0     .word ofs_irq_handler_A00D_17
- D 0 - - - 0x005F71 01:9F61: 23 A0     .word ofs_irq_handler_A023_18
- D 0 - - - 0x005F73 01:9F63: D9 9F     .word ofs_irq_handler_9FD9_19
- D 0 - - - 0x005F75 01:9F65: F4 A3     .word ofs_irq_handler_A3F4_1A
- D 0 - - - 0x005F77 01:9F67: 1D A4     .word ofs_irq_handler_A41D_1B
- D 0 - - - 0x005F79 01:9F69: 34 A4     .word ofs_irq_handler_A434_1C
- D 0 - - - 0x005F7B 01:9F6B: 58 A4     .word ofs_irq_handler_A458_1D
- D 0 - - - 0x005F7D 01:9F6D: 88 A4     .word ofs_irq_handler_A488_1E
- D 0 - - - 0x005F7F 01:9F6F: C8 A4     .word ofs_irq_handler_A4C8_1F
- D 0 - - - 0x005F81 01:9F71: E6 A4     .word ofs_irq_handler_A4E6_20
- D 0 - - - 0x005F83 01:9F73: 88 A4     .word ofs_irq_handler_A488_21
- - - - - - 0x005F85 01:9F75: 01 A5     .word ofs_irq_handler_A501_22   ; could be unused
- D 0 - - - 0x005F87 01:9F77: D1 9F     .word ofs_irq_handler_9FD1_23
- D 0 - - - 0x005F89 01:9F79: 45 A3     .word ofs_irq_handler_A345_24
- D 0 - - - 0x005F8B 01:9F7B: 9B A3     .word ofs_irq_handler_A39B_25
- D 0 - - - 0x005F8D 01:9F7D: DA A3     .word ofs_irq_handler_A3DA_26
- D 0 - - - 0x005F8F 01:9F7F: C1 A3     .word ofs_irq_handler_A3C1_27
- D 0 - - - 0x005F91 01:9F81: EE A3     .word ofs_irq_handler_A3EE_28
- D 0 - - - 0x005F93 01:9F83: 78 A5     .word ofs_irq_handler_A578_29
- D 0 - - - 0x005F95 01:9F85: A0 A5     .word ofs_irq_handler_A5A0_2A
- D 0 - - - 0x005F97 01:9F87: D2 A5     .word ofs_irq_handler_A5D2_2B
- D 0 - - - 0x005F99 01:9F89: E5 A5     .word ofs_irq_handler_A5E5_2C
- D 0 - - - 0x005F9B 01:9F8B: 6A A1     .word ofs_irq_handler_A16A_2D



sub_9F8D:
C - - - - - 0x005F9D 01:9F8D: CE 81 07  DEC ram_0781
C - - - - - 0x005FA0 01:9F90: D0 26     BNE bra_9FB8_RTS
C - - - - - 0x005FA2 01:9F92: A5 7D     LDA ram_007D
C - - - - - 0x005FA4 01:9F94: 29 0F     AND #$0F
C - - - - - 0x005FA6 01:9F96: 0A        ASL
C - - - - - 0x005FA7 01:9F97: A8        TAY
C - - - - - 0x005FA8 01:9F98: B9 BD 9F  LDA tbl_9FBD_chr_banks,Y
C - - - - - 0x005FAB 01:9F9B: 85 44     STA ram_0044_t000_data
C - - - - - 0x005FAD 01:9F9D: B9 BE 9F  LDA tbl_9FBD_chr_banks + $01,Y
C - - - - - 0x005FB0 01:9FA0: 85 45     STA ram_0044_t000_data + $01
C - - - - - 0x005FB2 01:9FA2: A0 00     LDY #$00
C - - - - - 0x005FB4 01:9FA4: B1 44     LDA (ram_0044_t000_data),Y
C - - - - - 0x005FB6 01:9FA6: 8D 81 07  STA ram_0781
C - - - - - 0x005FB9 01:9FA9: AC 80 07  LDY ram_0780
C - - - - - 0x005FBC 01:9FAC: C8        INY
bra_9FAD:
C - - - - - 0x005FBD 01:9FAD: B1 44     LDA (ram_0044_t000_data),Y
C - - - - - 0x005FBF 01:9FAF: C9 FF     CMP #$FF
C - - - - - 0x005FC1 01:9FB1: F0 06     BEQ bra_9FB9_FF
C - - - - - 0x005FC3 01:9FB3: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x005FC5 01:9FB5: 8C 80 07  STY ram_0780
bra_9FB8_RTS:
C - - - - - 0x005FC8 01:9FB8: 60        RTS
bra_9FB9_FF:
C - - - - - 0x005FC9 01:9FB9: A0 01     LDY #$01
C - - - - - 0x005FCB 01:9FBB: D0 F0     BNE bra_9FAD    ; jmp



tbl_9FBD_chr_banks:
- D 0 - - - 0x005FCD 01:9FBD: C1 9F     .word off_9FC1_40
- D 0 - - - 0x005FCF 01:9FBF: C6 9F     .word off_9FC6_41



off_9FC1_40:
- D 0 - I - 0x005FD1 01:9FC1: 0A        .byte con__chr_bank + $0A   ; 00 
- D 0 - I - 0x005FD2 01:9FC2: 54        .byte con__chr_bank + $54   ; 01 
- D 0 - I - 0x005FD3 01:9FC3: 55        .byte con__chr_bank + $55   ; 02 
- D 0 - I - 0x005FD4 01:9FC4: 56        .byte con__chr_bank + $56   ; 03 
- D 0 - I - 0x005FD5 01:9FC5: FF        .byte $FF   ; 04 



off_9FC6_41:
- D 0 - I - 0x005FD6 01:9FC6: 06        .byte con__chr_bank + $06   ; 00 
- D 0 - I - 0x005FD7 01:9FC7: 54        .byte con__chr_bank + $54   ; 01 
- D 0 - I - 0x005FD8 01:9FC8: 55        .byte con__chr_bank + $55   ; 02 
- D 0 - I - 0x005FD9 01:9FC9: 56        .byte con__chr_bank + $56   ; 03 
- D 0 - I - 0x005FDA 01:9FCA: FF        .byte $FF   ; 04 



sub_9FCB_set_vertical_nametable_mapping:
C - - - - - 0x005FDB 01:9FCB: A9 44     LDA #$44
C - - - - - 0x005FDD 01:9FCD: 8D 05 51  STA $5105
C - - - - - 0x005FE0 01:9FD0: 60        RTS



ofs_irq_handler_9FD1_23:
; con_irq_23
C - - J - - 0x005FE1 01:9FD1: A9 7F     LDA #con__chr_bank + $7F
C - - - - - 0x005FE3 01:9FD3: 8D 22 51  STA $5122
C - - - - - 0x005FE6 01:9FD6: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_9FD9_19:
; con_irq_19
C - - J - - 0x005FE9 01:9FD9: AD 02 20  LDA $2002
C - - - - - 0x005FEC 01:9FDC: AE 8C 07  LDX ram_078C
C - - - - - 0x005FEF 01:9FDF: AD 8D 07  LDA ram_078D
C - - - - - 0x005FF2 01:9FE2: 8D 06 20  STA $2006
C - - - - - 0x005FF5 01:9FE5: 8E 06 20  STX $2006
C - - - - - 0x005FF8 01:9FE8: AD 8A 07  LDA ram_078A
C - - - - - 0x005FFB 01:9FEB: 8D 05 20  STA $2005
C - - - - - 0x005FFE 01:9FEE: A9 00     LDA #$00
C - - - - - 0x006000 01:9FF0: 8D 05 20  STA $2005
C - - - - - 0x006003 01:9FF3: AD 8B 07  LDA ram_078B
C - - - - - 0x006006 01:9FF6: 8D 00 20  STA $2000
C - - - - - 0x006009 01:9FF9: A0 7C     LDY #con__chr_bank + $7C
C - - - - - 0x00600B 01:9FFB: 84 4B     STY ram_chr_bank______5129
C - - - - - 0x00600D 01:9FFD: C8        INY ; con__chr_bank + $7D
C - - - - - 0x00600E 01:9FFE: 84 4C     STY ram_chr_bank_5126_512A
C - - - - - 0x006010 01:A000: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x006013 01:A003: A0 75     LDY #con__chr_bank + $75
C - - - - - 0x006015 01:A005: 84 4B     STY ram_chr_bank______5129
C - - - - - 0x006017 01:A007: C8        INY ; con__chr_bank + $76
C - - - - - 0x006018 01:A008: 84 4C     STY ram_chr_bank_5126_512A
C - - - - - 0x00601A 01:A00A: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A00D_17:
; con_irq_17
C - - J - - 0x00601D 01:A00D: 20 97 A0  JSR sub_A097
C - - - - - 0x006020 01:A010: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
C - - - - - 0x006023 01:A013: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x006026 01:A016: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x006029 01:A019: A5 89     LDA ram_0089_scanline
C - - - - - 0x00602B 01:A01B: 8D 03 52  STA $5203
; -> con_irq_18
C - - - - - 0x00602E 01:A01E: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x006030 01:A020: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A023_18:
; con_irq_18
C - - J - - 0x006033 01:A023: A0 12     LDY #$12
bra_A025_garbage_loop:
C - - - - - 0x006035 01:A025: 88        DEY
C - - - - - 0x006036 01:A026: D0 FD     BNE bra_A025_garbage_loop
C - - - - - 0x006038 01:A028: A5 70     LDA ram_copy_cam_pos_hi
C - - - - - 0x00603A 01:A02A: 29 01     AND #$01
C - - - - - 0x00603C 01:A02C: 09 B0     ORA #$B0
C - - - - - 0x00603E 01:A02E: A8        TAY
C - - - - - 0x00603F 01:A02F: A2 00     LDX #< $2900
C - - - - - 0x006041 01:A031: AD 02 20  LDA $2002
C - - - - - 0x006044 01:A034: A9 29     LDA #> $2900
C - - - - - 0x006046 01:A036: 8D 06 20  STA $2006
; X = 00
C - - - - - 0x006049 01:A039: 8E 06 20  STX $2006
C - - - - - 0x00604C 01:A03C: A5 6F     LDA ram_copy_cam_pos_lo
C - - - - - 0x00604E 01:A03E: 8D 05 20  STA $2005
C - - - - - 0x006051 01:A041: A9 00     LDA #$00
C - - - - - 0x006053 01:A043: 8D 05 20  STA $2005
C - - - - - 0x006056 01:A046: 8C 00 20  STY $2000
C - - - - - 0x006059 01:A049: A9 A4     LDA #$A4
C - - - - - 0x00605B 01:A04B: 8D 05 51  STA $5105
C - - - - - 0x00605E 01:A04E: A5 1A     LDA ram_frm_cnt
C - - - - - 0x006060 01:A050: 29 01     AND #$01
C - - - - - 0x006062 01:A052: D0 03     BNE bra_A057
C - - - - - 0x006064 01:A054: 20 13 E3  JSR sub_0x03E323_write_chr_banks___7F_5120_5121_5122_5123
bra_A057:
C - - - - - 0x006067 01:A057: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A05A_16:
; con_irq_16
C - - J - - 0x00606A 01:A05A: AD ED 07  LDA ram_07ED
C - - - - - 0x00606D 01:A05D: F0 12     BEQ bra_A071
C - - - - - 0x00606F 01:A05F: AA        TAX
C - - - - - 0x006070 01:A060: A8        TAY
C - - - - - 0x006071 01:A061: 20 2D E3  JSR sub_0x03E33D_write_chr_banks___7F_5128_5129_512A_512B
bra_A064_garbage_loop:
C - - - - - 0x006074 01:A064: A9 0B     LDA #$0B
C - - - - - 0x006076 01:A066: 85 44     STA ram_0044_t002_garbage_loop_cnt
bra_A068_garbage_loop:
C - - - - - 0x006078 01:A068: EA        NOP
C - - - - - 0x006079 01:A069: C6 44     DEC ram_0044_t002_garbage_loop_cnt
C - - - - - 0x00607B 01:A06B: D0 FB     BNE bra_A068_garbage_loop
C - - - - - 0x00607D 01:A06D: EA        NOP
C - - - - - 0x00607E 01:A06E: 88        DEY
C - - - - - 0x00607F 01:A06F: D0 F3     BNE bra_A064_garbage_loop
bra_A071:
C - - - - - 0x006081 01:A071: AD 02 20  LDA $2002
C - - - - - 0x006084 01:A074: A9 20     LDA #> $20C0
C - - - - - 0x006086 01:A076: 8D 06 20  STA $2006
C - - - - - 0x006089 01:A079: A9 C0     LDA #< $20C0
C - - - - - 0x00608B 01:A07B: 8D 06 20  STA $2006
; bzk optimize, this LDA is redundant
C - - - - - 0x00608E 01:A07E: AD 02 20  LDA $2002
C - - - - - 0x006091 01:A081: A9 00     LDA #$00
C - - - - - 0x006093 01:A083: 8D 05 20  STA $2005
C - - - - - 0x006096 01:A086: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x006098 01:A088: 45 75     EOR ram_0075
C - - - - - 0x00609A 01:A08A: 29 01     AND #$01
C - - - - - 0x00609C 01:A08C: 05 FF     ORA ram_for_2000
C - - - - - 0x00609E 01:A08E: 8D 00 20  STA $2000
C - - - - - 0x0060A1 01:A091: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
C - - - - - 0x0060A4 01:A094: 4C 3A E1  JMP loc_0x03E14A



sub_A097:
C - - - - - 0x0060A7 01:A097: A2 03     LDX #$03
C - - - - - 0x0060A9 01:A099: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x0060AC 01:A09C: A5 75     LDA ram_0075
C - - - - - 0x0060AE 01:A09E: 29 01     AND #$01
C - - - - - 0x0060B0 01:A0A0: 85 44     STA ram_0044_t003
C - - - - - 0x0060B2 01:A0A2: A5 70     LDA ram_copy_cam_pos_hi
C - - - - - 0x0060B4 01:A0A4: 29 01     AND #$01
C - - - - - 0x0060B6 01:A0A6: 45 44     EOR ram_0044_t003
C - - - - - 0x0060B8 01:A0A8: 09 B0     ORA #$B0
C - - - - - 0x0060BA 01:A0AA: AA        TAX
C - - - - - 0x0060BB 01:A0AB: AD 02 20  LDA $2002
C - - - - - 0x0060BE 01:A0AE: A5 6F     LDA ram_copy_cam_pos_lo
C - - - - - 0x0060C0 01:A0B0: 8D 05 20  STA $2005
C - - - - - 0x0060C3 01:A0B3: A9 00     LDA #$00
C - - - - - 0x0060C5 01:A0B5: 8D 05 20  STA $2005
C - - - - - 0x0060C8 01:A0B8: 8E 00 20  STX $2000
C - - - - - 0x0060CB 01:A0BB: 60        RTS



ofs_irq_handler_A0BC_01:
; con_irq_01
C - - J - - 0x0060CC 01:A0BC: 20 97 A0  JSR sub_A097
C - - - - - 0x0060CF 01:A0BF: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
C - - - - - 0x0060D2 01:A0C2: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x0060D5 01:A0C5: A5 7D     LDA ram_007D
C - - - - - 0x0060D7 01:A0C7: 29 F0     AND #$F0
C - - - - - 0x0060D9 01:A0C9: C9 40     CMP #$40
C - - - - - 0x0060DB 01:A0CB: F0 0A     BEQ bra_A0D7
C - - - - - 0x0060DD 01:A0CD: A5 B0     LDA ram_00B0_oam_flag
C - - - - - 0x0060DF 01:A0CF: F0 03     BEQ bra_A0D4
C - - - - - 0x0060E1 01:A0D1: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
bra_A0D4:
loc_A0D4:
C D 1 - - - 0x0060E4 01:A0D4: 4C 3A E1  JMP loc_0x03E14A
bra_A0D7:
C - - - - - 0x0060E7 01:A0D7: 20 8D 9F  JSR sub_9F8D
C - - - - - 0x0060EA 01:A0DA: 4C D4 A0  JMP loc_A0D4



sub_A0DD:
C - - - - - 0x0060ED 01:A0DD: AC 80 07  LDY ram_0780
C - - - - - 0x0060F0 01:A0E0: A5 6F     LDA ram_copy_cam_pos_lo
C - - - - - 0x0060F2 01:A0E2: 18        CLC
C - - - - - 0x0060F3 01:A0E3: 79 83 07  ADC ram_0783,Y
C - - - - - 0x0060F6 01:A0E6: 85 D5     STA ram_00D5
C - - - - - 0x0060F8 01:A0E8: A5 70     LDA ram_copy_cam_pos_hi
C - - - - - 0x0060FA 01:A0EA: 69 00     ADC #$00
C - - - - - 0x0060FC 01:A0EC: 85 D6     STA ram_00D6
C - - - - - 0x0060FE 01:A0EE: 60        RTS



ofs_irq_handler_A0EF_02:
; con_irq_02
C - - J - - 0x0060FF 01:A0EF: 20 97 A0  JSR sub_A097
C - - - - - 0x006102 01:A0F2: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
; bzk optimize, are these 2 STA's necessary?
C - - - - - 0x006105 01:A0F5: 8D 05 51  STA $5105
C - - - - - 0x006108 01:A0F8: 8D 05 51  STA $5105
C - - - - - 0x00610B 01:A0FB: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x00610E 01:A0FE: A5 89     LDA ram_0089_scanline
C - - - - - 0x006110 01:A100: 8D 03 52  STA $5203
C - - - - - 0x006113 01:A103: A5 7D     LDA ram_007D
C - - - - - 0x006115 01:A105: 29 0F     AND #$0F
C - - - - - 0x006117 01:A107: A8        TAY
C - - - - - 0x006118 01:A108: B9 1D A1  LDA tbl_A11D,Y
C - - - - - 0x00611B 01:A10B: 8D 80 07  STA ram_0780
C - - - - - 0x00611E 01:A10E: 20 DD A0  JSR sub_A0DD
C - - - - - 0x006121 01:A111: A9 04     LDA #$04
C - - - - - 0x006123 01:A113: 18        CLC
C - - - - - 0x006124 01:A114: 65 89     ADC ram_0089_scanline
C - - - - - 0x006126 01:A116: 85 43     STA ram_scanline
; -> con_irq_03
C - - - - - 0x006128 01:A118: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x00612A 01:A11A: 4C 3F E1  JMP loc_0x03E14F



tbl_A11D:
- D 1 - - - 0x00612D 01:A11D: 2E        .byte $2E   ; 00 
- D 1 - - - 0x00612E 01:A11E: 1E        .byte $1E   ; 01 
- D 1 - - - 0x00612F 01:A11F: 16        .byte $16   ; 02 
- D 1 - - - 0x006130 01:A120: 1E        .byte $1E   ; 03 



sub_A121_set_scroll:
C - - - - - 0x006131 01:A121: AD 02 20  LDA $2002
C - - - - - 0x006134 01:A124: A5 D5     LDA ram_00D5    ; scroll X
C - - - - - 0x006136 01:A126: 8D 05 20  STA $2005
C - - - - - 0x006139 01:A129: A9 00     LDA #$00
C - - - - - 0x00613B 01:A12B: 8D 05 20  STA $2005
C - - - - - 0x00613E 01:A12E: 60        RTS



ofs_irq_handler_A12F_03:
; con_irq_03
C - - J - - 0x00613F 01:A12F: A2 01     LDX #$01
C - - - - - 0x006141 01:A131: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x006144 01:A134: 20 21 A1  JSR sub_A121_set_scroll
; -> con_irq_04
C - - - - - 0x006147 01:A137: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x006149 01:A139: 4C 44 A1  JMP loc_A144



ofs_irq_handler_A13C_04:
; con_irq_04
C - - J - - 0x00614C 01:A13C: A2 01     LDX #$01
C - - - - - 0x00614E 01:A13E: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x006151 01:A141: 20 21 A1  JSR sub_A121_set_scroll
loc_A144:
C D 1 - - - 0x006154 01:A144: A9 00     LDA #$00
C - - - - - 0x006156 01:A146: 8D 05 51  STA $5105
C - - - - - 0x006159 01:A149: A5 43     LDA ram_scanline
C - - - - - 0x00615B 01:A14B: 8D 03 52  STA $5203
C - - - - - 0x00615E 01:A14E: CE 80 07  DEC ram_0780
C - - - - - 0x006161 01:A151: CE 80 07  DEC ram_0780
C - - - - - 0x006164 01:A154: F0 0D     BEQ bra_A163
C - - - - - 0x006166 01:A156: A9 04     LDA #$04
C - - - - - 0x006168 01:A158: 18        CLC
C - - - - - 0x006169 01:A159: 65 43     ADC ram_scanline
C - - - - - 0x00616B 01:A15B: 85 43     STA ram_scanline
C - - - - - 0x00616D 01:A15D: 20 DD A0  JSR sub_A0DD
C - - - - - 0x006170 01:A160: 4C 3F E1  JMP loc_0x03E14F
bra_A163:
C - - - - - 0x006173 01:A163: A9 2D     LDA #con_irq_2D
C - - - - - 0x006175 01:A165: 85 6D     STA ram_006D_irq_handler
C - - - - - 0x006177 01:A167: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A16A_2D:
; con_irq_2D
C - - J - - 0x00617A 01:A16A: 20 97 A0  JSR sub_A097
C - - - - - 0x00617D 01:A16D: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
; bzk optimize, are these 2 STA's necessary?
C - - - - - 0x006180 01:A170: 8D 05 51  STA $5105
C - - - - - 0x006183 01:A173: 8D 05 51  STA $5105
C - - - - - 0x006186 01:A176: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A179_05:
; con_irq_05
ofs_irq_handler_A179_0B:
; con_irq_0B
C - - J - - 0x006189 01:A179: A5 89     LDA ram_0089_scanline
C - - - - - 0x00618B 01:A17B: 8D 03 52  STA $5203
C - - - - - 0x00618E 01:A17E: A5 6F     LDA ram_copy_cam_pos_lo
C - - - - - 0x006190 01:A180: 29 07     AND #$07
C - - - - - 0x006192 01:A182: 49 07     EOR #$07
C - - - - - 0x006194 01:A184: 18        CLC
C - - - - - 0x006195 01:A185: 69 03     ADC #$03
C - - - - - 0x006197 01:A187: 65 89     ADC ram_0089_scanline
C - - - - - 0x006199 01:A189: 85 43     STA ram_scanline
; -> con_irq_06
; -> con_irq_0C
C - - - - - 0x00619B 01:A18B: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x00619D 01:A18D: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A190_06:
; con_irq_06
ofs_irq_handler_A190_0C:
; con_irq_0C
C - - J - - 0x0061A0 01:A190: A5 43     LDA ram_scanline
C - - - - - 0x0061A2 01:A192: 8D 03 52  STA $5203
C - - - - - 0x0061A5 01:A195: A2 0C     LDX #$0C
C - - - - - 0x0061A7 01:A197: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x0061AA 01:A19A: 20 2D E3  JSR sub_0x03E33D_write_chr_banks___7F_5128_5129_512A_512B
C - - - - - 0x0061AD 01:A19D: A9 55     LDA #$55
C - - - - - 0x0061AF 01:A19F: 8D 05 51  STA $5105
C - - - - - 0x0061B2 01:A1A2: A5 6F     LDA ram_copy_cam_pos_lo
C - - - - - 0x0061B4 01:A1A4: 29 07     AND #$07
C - - - - - 0x0061B6 01:A1A6: 18        CLC
C - - - - - 0x0061B7 01:A1A7: 69 01     ADC #$01
C - - - - - 0x0061B9 01:A1A9: 65 43     ADC ram_scanline
C - - - - - 0x0061BB 01:A1AB: 85 43     STA ram_scanline
C - - - - - 0x0061BD 01:A1AD: A9 00     LDA #$00
; * 04
C - - - - - 0x0061BF 01:A1AF: 06 6F     ASL ram_copy_cam_pos_lo
C - - - - - 0x0061C1 01:A1B1: 2A        ROL
C - - - - - 0x0061C2 01:A1B2: 06 6F     ASL ram_copy_cam_pos_lo
C - - - - - 0x0061C4 01:A1B4: 2A        ROL
C - - - - - 0x0061C5 01:A1B5: 18        CLC
C - - - - - 0x0061C6 01:A1B6: 69 28     ADC #$28
C - - - - - 0x0061C8 01:A1B8: 85 70     STA ram_copy_cam_pos_hi
; -> con_irq_07
; -> con_irq_0D
C - - - - - 0x0061CA 01:A1BA: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0061CC 01:A1BC: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A1BF_07:
; con_irq_07
C - - J - - 0x0061CF 01:A1BF: A5 43     LDA ram_scanline
C - - - - - 0x0061D1 01:A1C1: 8D 03 52  STA $5203
C - - - - - 0x0061D4 01:A1C4: A2 02     LDX #$02
C - - - - - 0x0061D6 01:A1C6: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x0061D9 01:A1C9: AD 02 20  LDA $2002
C - - - - - 0x0061DC 01:A1CC: A6 6F     LDX ram_copy_cam_pos_lo
C - - - - - 0x0061DE 01:A1CE: A5 70     LDA ram_copy_cam_pos_hi
C - - - - - 0x0061E0 01:A1D0: 8D 06 20  STA $2006
C - - - - - 0x0061E3 01:A1D3: 8E 06 20  STX $2006
C - - - - - 0x0061E6 01:A1D6: A9 00     LDA #$00
C - - - - - 0x0061E8 01:A1D8: 8D 05 20  STA $2005
C - - - - - 0x0061EB 01:A1DB: 8D 05 20  STA $2005
C - - - - - 0x0061EE 01:A1DE: A9 B0     LDA #$B0
C - - - - - 0x0061F0 01:A1E0: 8D 00 20  STA $2000
; -> con_irq_08
C - - - - - 0x0061F3 01:A1E3: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0061F5 01:A1E5: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A1E8_08:
; con_irq_08
C - - J - - 0x0061F8 01:A1E8: A2 01     LDX #$01
C - - - - - 0x0061FA 01:A1EA: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x0061FD 01:A1ED: A5 4B     LDA ram_chr_bank______5129
C - - - - - 0x0061FF 01:A1EF: A4 4C     LDY ram_chr_bank_5126_512A
C - - - - - 0x006201 01:A1F1: A6 4A     LDX ram_chr_bank_5124_5128
C - - - - - 0x006203 01:A1F3: 8D 29 51  STA $5129
C - - - - - 0x006206 01:A1F6: 8C 2A 51  STY $512A
C - - - - - 0x006209 01:A1F9: 8E 28 51  STX $5128
C - - - - - 0x00620C 01:A1FC: A5 4D     LDA ram_chr_bank_5127_512B
C - - - - - 0x00620E 01:A1FE: 8D 2B 51  STA $512B
C - - - - - 0x006211 01:A201: 8D 27 51  STA $5127
C - - - - - 0x006214 01:A204: 8E 24 51  STX $5124
C - - - - - 0x006217 01:A207: 8C 26 51  STY $5126
C - - - - - 0x00621A 01:A20A: 20 42 E3  JSR sub_0x03E352_write_chr_banks___5122_5123_5125
C - - - - - 0x00621D 01:A20D: A5 7D     LDA ram_007D
C - - - - - 0x00621F 01:A20F: 29 F0     AND #$F0
C - - - - - 0x006221 01:A211: C9 40     CMP #$40
C - - - - - 0x006223 01:A213: F0 03     BEQ bra_A218
loc_A215:
C D 1 - - - 0x006225 01:A215: 4C 3A E1  JMP loc_0x03E14A
bra_A218:
C - - - - - 0x006228 01:A218: 20 8D 9F  JSR sub_9F8D
C - - - - - 0x00622B 01:A21B: 4C 15 A2  JMP loc_A215



ofs_irq_handler_A21E_0D:
; con_irq_0D
C - - J - - 0x00622E 01:A21E: A5 43     LDA ram_scanline
C - - - - - 0x006230 01:A220: 8D 03 52  STA $5203
C - - - - - 0x006233 01:A223: A2 01     LDX #$01
C - - - - - 0x006235 01:A225: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x006238 01:A228: AD 02 20  LDA $2002
C - - - - - 0x00623B 01:A22B: A6 6F     LDX ram_copy_cam_pos_lo
C - - - - - 0x00623D 01:A22D: A5 70     LDA ram_copy_cam_pos_hi
C - - - - - 0x00623F 01:A22F: 8D 06 20  STA $2006
C - - - - - 0x006242 01:A232: 8E 06 20  STX $2006
C - - - - - 0x006245 01:A235: A9 00     LDA #$00
C - - - - - 0x006247 01:A237: 8D 05 20  STA $2005
C - - - - - 0x00624A 01:A23A: 8D 05 20  STA $2005
C - - - - - 0x00624D 01:A23D: A9 B0     LDA #$B0
C - - - - - 0x00624F 01:A23F: 8D 00 20  STA $2000
C - - - - - 0x006252 01:A242: A5 7C     LDA ram_007C
C - - - - - 0x006254 01:A244: 85 43     STA ram_scanline
; -> con_irq_0E
C - - - - - 0x006256 01:A246: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x006258 01:A248: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A24B_0E:
; con_irq_0E
C - - J - - 0x00625B 01:A24B: A2 01     LDX #$01
C - - - - - 0x00625D 01:A24D: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x006260 01:A250: 20 42 E3  JSR sub_0x03E352_write_chr_banks___5122_5123_5125
C - - - - - 0x006263 01:A253: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
C - - - - - 0x006266 01:A256: A5 43     LDA ram_scanline
C - - - - - 0x006268 01:A258: 8D 03 52  STA $5203
C - - - - - 0x00626B 01:A25B: 20 07 A3  JSR sub_A307
C - - - - - 0x00626E 01:A25E: AD 19 06  LDA ram_obj_config + $13
C - - - - - 0x006271 01:A261: 38        SEC
C - - - - - 0x006272 01:A262: ED 30 06  SBC ram_061D_obj + $13
C - - - - - 0x006275 01:A265: 85 7C     STA ram_007C
C - - - - - 0x006277 01:A267: AD 30 06  LDA ram_061D_obj + $13
C - - - - - 0x00627A 01:A26A: 49 01     EOR #$01
C - - - - - 0x00627C 01:A26C: 8D 30 06  STA ram_061D_obj + $13
; -> con_irq_0F
C - - - - - 0x00627F 01:A26F: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x006281 01:A271: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A274_09:
; con_irq_09
C - - J - - 0x006284 01:A274: 20 97 A0  JSR sub_A097
C - - - - - 0x006287 01:A277: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
C - - - - - 0x00628A 01:A27A: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x00628D 01:A27D: A5 89     LDA ram_0089_scanline
C - - - - - 0x00628F 01:A27F: 8D 03 52  STA $5203
C - - - - - 0x006292 01:A282: 20 07 A3  JSR sub_A307
C - - - - - 0x006295 01:A285: A5 3F     LDA ram_003F_copy_irq_handler
C - - - - - 0x006297 01:A287: C9 09     CMP #con_irq_09
C - - - - - 0x006299 01:A289: D0 09     BNE bra_A294
C - - - - - 0x00629B 01:A28B: AD 19 06  LDA ram_obj_config + $13
C - - - - - 0x00629E 01:A28E: 38        SEC
C - - - - - 0x00629F 01:A28F: ED 30 06  SBC ram_061D_obj + $13
C - - - - - 0x0062A2 01:A292: 85 42     STA ram_0042
bra_A294:
C - - - - - 0x0062A4 01:A294: AD 30 06  LDA ram_061D_obj + $13
C - - - - - 0x0062A7 01:A297: 49 01     EOR #$01
C - - - - - 0x0062A9 01:A299: 8D 30 06  STA ram_061D_obj + $13
; -> con_irq_0A
C - - - - - 0x0062AC 01:A29C: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0062AE 01:A29E: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A2A1_0A:
; con_irq_0A
ofs_irq_handler_A2A1_0F:
; con_irq_0F
C - - J - - 0x0062B1 01:A2A1: A0 05     LDY #$05
bra_A2A3_garbage_loop:
C - - - - - 0x0062B3 01:A2A3: 20 22 E3  JSR sub_0x03E332_write_chr_banks___7F_5120_5121
C - - - - - 0x0062B6 01:A2A6: 20 05 E0  JSR sub_0x03E015_garbage_loop_0F
C - - - - - 0x0062B9 01:A2A9: 20 52 E3  JSR sub_0x03E362_write_chr_banks___5120_5121
C - - - - - 0x0062BC 01:A2AC: 20 05 E0  JSR sub_0x03E015_garbage_loop_0F
C - - - - - 0x0062BF 01:A2AF: 20 22 E3  JSR sub_0x03E332_write_chr_banks___7F_5120_5121
C - - - - - 0x0062C2 01:A2B2: 20 05 E0  JSR sub_0x03E015_garbage_loop_0F
C - - - - - 0x0062C5 01:A2B5: 20 52 E3  JSR sub_0x03E362_write_chr_banks___5120_5121
C - - - - - 0x0062C8 01:A2B8: 20 05 E0  JSR sub_0x03E015_garbage_loop_0F
C - - - - - 0x0062CB 01:A2BB: 20 22 E3  JSR sub_0x03E332_write_chr_banks___7F_5120_5121
C - - - - - 0x0062CE 01:A2BE: 20 05 E0  JSR sub_0x03E015_garbage_loop_0F
C - - - - - 0x0062D1 01:A2C1: 20 52 E3  JSR sub_0x03E362_write_chr_banks___5120_5121
C - - - - - 0x0062D4 01:A2C4: 20 05 E0  JSR sub_0x03E015_garbage_loop_0F
C - - - - - 0x0062D7 01:A2C7: 20 22 E3  JSR sub_0x03E332_write_chr_banks___7F_5120_5121
C - - - - - 0x0062DA 01:A2CA: 20 05 E0  JSR sub_0x03E015_garbage_loop_0F
C - - - - - 0x0062DD 01:A2CD: 20 52 E3  JSR sub_0x03E362_write_chr_banks___5120_5121
C - - - - - 0x0062E0 01:A2D0: A2 10     LDX #$10
bra_A2D2_garbage_loop:
C - - - - - 0x0062E2 01:A2D2: CA        DEX
C - - - - - 0x0062E3 01:A2D3: D0 FD     BNE bra_A2D2_garbage_loop
C - - - - - 0x0062E5 01:A2D5: EA        NOP
C - - - - - 0x0062E6 01:A2D6: 88        DEY
C - - - - - 0x0062E7 01:A2D7: D0 CA     BNE bra_A2A3_garbage_loop
C - - - - - 0x0062E9 01:A2D9: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A2DC_10:
; con_irq_10
C - - J - - 0x0062EC 01:A2DC: 20 97 A0  JSR sub_A097
C - - - - - 0x0062EF 01:A2DF: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
C - - - - - 0x0062F2 01:A2E2: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x0062F5 01:A2E5: 20 52 E3  JSR sub_0x03E362_write_chr_banks___5120_5121
C - - - - - 0x0062F8 01:A2E8: A5 89     LDA ram_0089_scanline
C - - - - - 0x0062FA 01:A2EA: 8D 03 52  STA $5203
; -> con_irq_11
C - - - - - 0x0062FD 01:A2ED: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0062FF 01:A2EF: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A2F2_11:
; con_irq_11
C - - J - - 0x006302 01:A2F2: 20 22 E3  JSR sub_0x03E332_write_chr_banks___7F_5120_5121
C - - - - - 0x006305 01:A2F5: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A2F8_12:
; con_irq_12
C - - J - - 0x006308 01:A2F8: 20 97 A0  JSR sub_A097
C - - - - - 0x00630B 01:A2FB: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
C - - - - - 0x00630E 01:A2FE: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x006311 01:A301: 20 52 E3  JSR sub_0x03E362_write_chr_banks___5120_5121
C - - - - - 0x006314 01:A304: 4C 3A E1  JMP loc_0x03E14A



sub_A307:
C - - - - - 0x006317 01:A307: A9 00     LDA #con_obj_flag_00
C - - - - - 0x006319 01:A309: 8D 70 04  STA ram_plr_flags
C - - - - - 0x00631C 01:A30C: AD 05 05  LDA ram_obj_spd_X_lo + $13
C - - - - - 0x00631F 01:A30F: 30 2D     BMI bra_A33E
C - - - - - 0x006321 01:A311: AD 30 06  LDA ram_061D_obj + $13
C - - - - - 0x006324 01:A314: F0 17     BEQ bra_A32D
C - - - - - 0x006326 01:A316: AD D4 05  LDA ram_obj_ai_subscript + $13
C - - - - - 0x006329 01:A319: 38        SEC
C - - - - - 0x00632A 01:A31A: ED 05 05  SBC ram_obj_spd_X_lo + $13
C - - - - - 0x00632D 01:A31D: 90 08     BCC bra_A327
C - - - - - 0x00632F 01:A31F: C9 08     CMP #$08
C - - - - - 0x006331 01:A321: 90 04     BCC bra_A327
C - - - - - 0x006333 01:A323: 8D 38 04  STA ram_plr_pos_X_lo
C - - - - - 0x006336 01:A326: 60        RTS
bra_A327:
- - - - - - 0x006337 01:A327: A9 80     LDA #con_obj_flag_not_visible
- - - - - - 0x006339 01:A329: 8D 70 04  STA ram_plr_flags
- - - - - - 0x00633C 01:A32C: 60        RTS
bra_A32D:
C - - - - - 0x00633D 01:A32D: AD D4 05  LDA ram_obj_ai_subscript + $13
C - - - - - 0x006340 01:A330: 18        CLC
C - - - - - 0x006341 01:A331: 6D 05 05  ADC ram_obj_spd_X_lo + $13
C - - - - - 0x006344 01:A334: B0 F1     BCS bra_A327
C - - - - - 0x006346 01:A336: C9 F8     CMP #$F8
C - - - - - 0x006348 01:A338: B0 ED     BCS bra_A327
C - - - - - 0x00634A 01:A33A: 8D 38 04  STA ram_plr_pos_X_lo
C - - - - - 0x00634D 01:A33D: 60        RTS
bra_A33E:
C - - - - - 0x00634E 01:A33E: AD D4 05  LDA ram_obj_ai_subscript + $13
C - - - - - 0x006351 01:A341: 8D 38 04  STA ram_plr_pos_X_lo
C - - - - - 0x006354 01:A344: 60        RTS



ofs_irq_handler_A345_13:
; con_irq_13
ofs_irq_handler_A345_24:
; con_irq_24
C - - J - - 0x006355 01:A345: 20 97 A0  JSR sub_A097
C - - - - - 0x006358 01:A348: 20 CB 9F  JSR sub_9FCB_set_vertical_nametable_mapping
C - - - - - 0x00635B 01:A34B: 20 6D E3  JSR sub_0x03E37D_write_chr_banks___5126_5129_512A
C - - - - - 0x00635E 01:A34E: A5 89     LDA ram_0089_scanline
C - - - - - 0x006360 01:A350: 8D 03 52  STA $5203
C - - - - - 0x006363 01:A353: A5 7D     LDA ram_007D
C - - - - - 0x006365 01:A355: 29 0F     AND #$0F
C - - - - - 0x006367 01:A357: C9 02     CMP #$02
C - - - - - 0x006369 01:A359: B0 23     BCS bra_A37E
C - - - - - 0x00636B 01:A35B: EE 81 07  INC ram_0781
C - - - - - 0x00636E 01:A35E: AD 81 07  LDA ram_0781
C - - - - - 0x006371 01:A361: C9 06     CMP #$06
C - - - - - 0x006373 01:A363: 90 19     BCC bra_A37E
C - - - - - 0x006375 01:A365: A9 00     LDA #$00
C - - - - - 0x006377 01:A367: 8D 81 07  STA ram_0781
C - - - - - 0x00637A 01:A36A: AC 80 07  LDY ram_0780
C - - - - - 0x00637D 01:A36D: C8        INY
C - - - - - 0x00637E 01:A36E: C0 03     CPY #$03
C - - - - - 0x006380 01:A370: 90 02     BCC bra_A374
C - - - - - 0x006382 01:A372: A0 00     LDY #$00
bra_A374:
C - - - - - 0x006384 01:A374: 8C 80 07  STY ram_0780
C - - - - - 0x006387 01:A377: B9 90 A3  LDA tbl_A390_chr_bank,Y
C - - - - - 0x00638A 01:A37A: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x00638C 01:A37C: 85 4E     STA ram_chr_bank_5125_____
bra_A37E:
C - - - - - 0x00638E 01:A37E: A5 7D     LDA ram_007D
C - - - - - 0x006390 01:A380: 29 0F     AND #$0F
C - - - - - 0x006392 01:A382: A8        TAY
C - - - - - 0x006393 01:A383: B9 93 A3  LDA tbl_A393,Y
C - - - - - 0x006396 01:A386: 18        CLC
C - - - - - 0x006397 01:A387: 65 89     ADC ram_0089_scanline
C - - - - - 0x006399 01:A389: 85 43     STA ram_scanline
; -> con_irq_14
; -> con_irq_25
C - - - - - 0x00639B 01:A38B: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x00639D 01:A38D: 4C 3F E1  JMP loc_0x03E14F



tbl_A390_chr_bank:
- D 1 - - - 0x0063A0 01:A390: 54        .byte con__chr_bank + $54   ; 00 
- D 1 - - - 0x0063A1 01:A391: 55        .byte con__chr_bank + $55   ; 01 
- D 1 - - - 0x0063A2 01:A392: 56        .byte con__chr_bank + $56   ; 02 



tbl_A393:
- D 1 - - - 0x0063A3 01:A393: 30        .byte $30   ; 00 
- D 1 - - - 0x0063A4 01:A394: 10        .byte $10   ; 01 
- D 1 - - - 0x0063A5 01:A395: 30        .byte $30   ; 02 
- D 1 - - - 0x0063A6 01:A396: 30        .byte $30   ; 03 
- D 1 - - - 0x0063A7 01:A397: 30        .byte $30   ; 04 
- D 1 - - - 0x0063A8 01:A398: 30        .byte $30   ; 05 
- D 1 - - - 0x0063A9 01:A399: 30        .byte $30   ; 06 
- D 1 - - - 0x0063AA 01:A39A: 30        .byte $30   ; 07 



ofs_irq_handler_A39B_14:
; con_irq_14
ofs_irq_handler_A39B_25:
; con_irq_25
C - - J - - 0x0063AB 01:A39B: A5 43     LDA ram_scanline
C - - - - - 0x0063AD 01:A39D: 8D 03 52  STA $5203
C - - - - - 0x0063B0 01:A3A0: A5 43     LDA ram_scanline
C - - - - - 0x0063B2 01:A3A2: 18        CLC
C - - - - - 0x0063B3 01:A3A3: 69 40     ADC #$40
C - - - - - 0x0063B5 01:A3A5: 85 43     STA ram_scanline
C - - - - - 0x0063B7 01:A3A7: A5 7D     LDA ram_007D
C - - - - - 0x0063B9 01:A3A9: 29 0F     AND #$0F
C - - - - - 0x0063BB 01:A3AB: C9 02     CMP #$02
C - - - - - 0x0063BD 01:A3AD: 90 17     BCC bra_A3C6
C - - - - - 0x0063BF 01:A3AF: A8        TAY
C - - - - - 0x0063C0 01:A3B0: 88        DEY
C - - - - - 0x0063C1 01:A3B1: 88        DEY
C - - - - - 0x0063C2 01:A3B2: B9 D4 A3  LDA tbl_A3D4,Y
C - - - - - 0x0063C5 01:A3B5: C5 57     CMP ram_cam_pos_hi
C - - - - - 0x0063C7 01:A3B7: F0 16     BEQ bra_A3CF
C - - - - - 0x0063C9 01:A3B9: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0063CB 01:A3BB: 29 03     AND #$03
C - - - - - 0x0063CD 01:A3BD: F0 10     BEQ bra_A3CF
C - - - - - 0x0063CF 01:A3BF: D0 0B     BNE bra_A3CC    ; jmp



ofs_irq_handler_A3C1_27:
; con_irq_27
C - - J - - 0x0063D1 01:A3C1: A5 43     LDA ram_scanline
C - - - - - 0x0063D3 01:A3C3: 8D 03 52  STA $5203
bra_A3C6:
C - - - - - 0x0063D6 01:A3C6: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0063D8 01:A3C8: 29 01     AND #$01
C - - - - - 0x0063DA 01:A3CA: F0 03     BEQ bra_A3CF
bra_A3CC:
C - - - - - 0x0063DC 01:A3CC: 20 13 E3  JSR sub_0x03E323_write_chr_banks___7F_5120_5121_5122_5123
bra_A3CF:
; -> con_irq_15
; -> con_irq_26
; -> con_irq_28
C - - - - - 0x0063DF 01:A3CF: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0063E1 01:A3D1: 4C 3F E1  JMP loc_0x03E14F



tbl_A3D4:
- D 1 - - - 0x0063E4 01:A3D4: 03        .byte $03   ; 02 
- D 1 - - - 0x0063E5 01:A3D5: 02        .byte $02   ; 03 
- D 1 - - - 0x0063E6 01:A3D6: 06        .byte $06   ; 04 
- D 1 - - - 0x0063E7 01:A3D7: 02        .byte $02   ; 05 
- D 1 - - - 0x0063E8 01:A3D8: 01        .byte $01   ; 06 
- D 1 - - - 0x0063E9 01:A3D9: 01        .byte $01   ; 07 



ofs_irq_handler_A3DA_26:
; con_irq_26
C - - J - - 0x0063EA 01:A3DA: A5 43     LDA ram_scanline
C - - - - - 0x0063EC 01:A3DC: 8D 03 52  STA $5203
C - - - - - 0x0063EF 01:A3DF: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x0063F2 01:A3E2: A5 43     LDA ram_scanline
C - - - - - 0x0063F4 01:A3E4: 18        CLC
C - - - - - 0x0063F5 01:A3E5: 69 30     ADC #$30
C - - - - - 0x0063F7 01:A3E7: 85 43     STA ram_scanline
; -> con_irq_27
C - - - - - 0x0063F9 01:A3E9: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0063FB 01:A3EB: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A3EE_15:
; con_irq_15
ofs_irq_handler_A3EE_28:
; con_irq_28
C - - J - - 0x0063FE 01:A3EE: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x006401 01:A3F1: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A3F4_1A:
; con_irq_1A
C - - J - - 0x006404 01:A3F4: A5 89     LDA ram_0089_scanline
C - - - - - 0x006406 01:A3F6: 8D 03 52  STA $5203
C - - - - - 0x006409 01:A3F9: AC 82 07  LDY ram_0782
C - - - - - 0x00640C 01:A3FC: 8C 89 07  STY ram_0789
C - - - - - 0x00640F 01:A3FF: B9 1A A4  LDA tbl_A41A,Y
C - - - - - 0x006412 01:A402: 85 6D     STA ram_006D_irq_handler
C - - - - - 0x006414 01:A404: AD 83 07  LDA ram_0783
C - - - - - 0x006417 01:A407: 18        CLC
C - - - - - 0x006418 01:A408: 65 89     ADC ram_0089_scanline
C - - - - - 0x00641A 01:A40A: 8D 8A 07  STA ram_078A
C - - - - - 0x00641D 01:A40D: AD 84 07  LDA ram_0784
C - - - - - 0x006420 01:A410: 18        CLC
C - - - - - 0x006421 01:A411: 6D 8A 07  ADC ram_078A
C - - - - - 0x006424 01:A414: 8D 8B 07  STA ram_078B
C - - - - - 0x006427 01:A417: 4C 3F E1  JMP loc_0x03E14F



tbl_A41A:
- D 1 - - - 0x00642A 01:A41A: 1B        .byte con_irq_1B   ; 00 
- D 1 - - - 0x00642B 01:A41B: 1B        .byte con_irq_1B   ; 01 
- D 1 - - - 0x00642C 01:A41C: 1C        .byte con_irq_1C   ; 02 



ofs_irq_handler_A41D_1B:
; con_irq_1B
C - - J - - 0x00642D 01:A41D: AD 8A 07  LDA ram_078A
C - - - - - 0x006430 01:A420: 8D 03 52  STA $5203
C - - - - - 0x006433 01:A423: 20 5E A4  JSR sub_A45E_write_fixed_chr_banks_2___5128_5129_512A_512B
C - - - - - 0x006436 01:A426: AC 89 07  LDY ram_0789
C - - - - - 0x006439 01:A429: B9 31 A4  LDA tbl_A431,Y
C - - - - - 0x00643C 01:A42C: 85 6D     STA ram_006D_irq_handler
C - - - - - 0x00643E 01:A42E: 4C 3F E1  JMP loc_0x03E14F



tbl_A431:
- D 1 - - - 0x006441 01:A431: 1D        .byte con_irq_1D   ; 00 
- D 1 - - - 0x006442 01:A432: 1C        .byte con_irq_1C   ; 01 
- - - - - - 0x006443 01:A433: 1D        .byte con_irq_1D   ; 02 



ofs_irq_handler_A434_1C:
; con_irq_1C
C - - J - - 0x006444 01:A434: A2 10     LDX #$10
bra_A436_garbage_loop:
C - - - - - 0x006446 01:A436: CA        DEX
C - - - - - 0x006447 01:A437: 10 FD     BPL bra_A436_garbage_loop
C - - - - - 0x006449 01:A439: A5 FF     LDA ram_for_2000
C - - - - - 0x00644B 01:A43B: 49 01     EOR #$01
C - - - - - 0x00644D 01:A43D: 8D 00 20  STA $2000
C - - - - - 0x006450 01:A440: 20 73 A4  JSR sub_A473_write_fixed_chr_banks_1___5128_5129_512A_512B
C - - - - - 0x006453 01:A443: AD 8B 07  LDA ram_078B
C - - - - - 0x006456 01:A446: AC 89 07  LDY ram_0789
C - - - - - 0x006459 01:A449: C0 01     CPY #$01
C - - - - - 0x00645B 01:A44B: F0 03     BEQ bra_A450
C - - - - - 0x00645D 01:A44D: AD 8A 07  LDA ram_078A
bra_A450:
C - - - - - 0x006460 01:A450: 8D 03 52  STA $5203
; -> con_irq_1D
C - - - - - 0x006463 01:A453: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x006465 01:A455: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A458_1D:
; con_irq_1D
C - - J - - 0x006468 01:A458: 20 2D E3  JSR sub_0x03E33D_write_chr_banks___7F_5128_5129_512A_512B
C - - - - - 0x00646B 01:A45B: 4C 3A E1  JMP loc_0x03E14A



sub_A45E_write_fixed_chr_banks_2___5128_5129_512A_512B:
; bzk optimize, single JSR to here
C - - - - - 0x00646E 01:A45E: A9 74     LDA #con__chr_bank + $74
C - - - - - 0x006470 01:A460: 8D 28 51  STA $5128
C - - - - - 0x006473 01:A463: A9 77     LDA #con__chr_bank + $77
C - - - - - 0x006475 01:A465: 8D 2B 51  STA $512B
C - - - - - 0x006478 01:A468: A9 75     LDA #con__chr_bank + $75
C - - - - - 0x00647A 01:A46A: 8D 29 51  STA $5129
C - - - - - 0x00647D 01:A46D: A9 76     LDA #con__chr_bank + $76
C - - - - - 0x00647F 01:A46F: 8D 2A 51  STA $512A
C - - - - - 0x006482 01:A472: 60        RTS



sub_A473_write_fixed_chr_banks_1___5128_5129_512A_512B:
; bzk optimize, single JSR to here
C - - - - - 0x006483 01:A473: A9 78     LDA #con__chr_bank + $78
C - - - - - 0x006485 01:A475: 8D 28 51  STA $5128
C - - - - - 0x006488 01:A478: A9 7A     LDA #con__chr_bank + $7A
C - - - - - 0x00648A 01:A47A: 8D 2B 51  STA $512B
C - - - - - 0x00648D 01:A47D: A9 4F     LDA #con__chr_bank + $4F
C - - - - - 0x00648F 01:A47F: 8D 29 51  STA $5129
C - - - - - 0x006492 01:A482: A9 79     LDA #con__chr_bank + $79
C - - - - - 0x006494 01:A484: 8D 2A 51  STA $512A
C - - - - - 0x006497 01:A487: 60        RTS



ofs_irq_handler_A488_1E:
; con_irq_1E
ofs_irq_handler_A488_21:
; con_irq_21
C - - J - - 0x006498 01:A488: A5 89     LDA ram_0089_scanline
C - - - - - 0x00649A 01:A48A: 8D 03 52  STA $5203
C - - - - - 0x00649D 01:A48D: AD 8E 07  LDA ram_078E_scroll_X
C - - - - - 0x0064A0 01:A490: 18        CLC
C - - - - - 0x0064A1 01:A491: 65 89     ADC ram_0089_scanline
C - - - - - 0x0064A3 01:A493: 8D 89 07  STA ram_0789
C - - - - - 0x0064A6 01:A496: AD 90 07  LDA ram_0790
C - - - - - 0x0064A9 01:A499: 8D 8B 07  STA ram_078B
C - - - - - 0x0064AC 01:A49C: AD 8F 07  LDA ram_078F
C - - - - - 0x0064AF 01:A49F: 8D 8A 07  STA ram_078A
C - - - - - 0x0064B2 01:A4A2: AD 93 07  LDA ram_0793
C - - - - - 0x0064B5 01:A4A5: F0 06     BEQ bra_A4AD
C - - - - - 0x0064B7 01:A4A7: 20 3F A5  JSR sub_A53F_prepare_chr_banks
C - - - - - 0x0064BA 01:A4AA: 4C B8 A4  JMP loc_A4B8
bra_A4AD:
C - - - - - 0x0064BD 01:A4AD: AD 86 07  LDA ram_0786
C - - - - - 0x0064C0 01:A4B0: 8D 92 07  STA ram_0792
C - - - - - 0x0064C3 01:A4B3: A2 08     LDX #$08
C - - - - - 0x0064C5 01:A4B5: 20 27 A5  JSR sub_A527_prepare_chr_banks
loc_A4B8:
C D 1 - - - 0x0064C8 01:A4B8: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
C - - - - - 0x0064CB 01:A4BB: AD 8A 07  LDA ram_078A
C - - - - - 0x0064CE 01:A4BE: D0 05     BNE bra_A4C5
; -> con_irq_1F
; -> con_irq_22
C - - - - - 0x0064D0 01:A4C0: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0064D2 01:A4C2: 4C 3F E1  JMP loc_0x03E14F
bra_A4C5:
C - - - - - 0x0064D5 01:A4C5: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A4C8_1F:
; con_irq_1F
C - - J - - 0x0064D8 01:A4C8: AD 89 07  LDA ram_0789
C - - - - - 0x0064DB 01:A4CB: 8D 03 52  STA $5203
C - - - - - 0x0064DE 01:A4CE: AD 92 07  LDA ram_0792
C - - - - - 0x0064E1 01:A4D1: 18        CLC
C - - - - - 0x0064E2 01:A4D2: 69 01     ADC #$01
C - - - - - 0x0064E4 01:A4D4: A2 00     LDX #$00
C - - - - - 0x0064E6 01:A4D6: 20 27 A5  JSR sub_A527_prepare_chr_banks
C - - - - - 0x0064E9 01:A4D9: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
C - - - - - 0x0064EC 01:A4DC: AD 8B 07  LDA ram_078B
C - - - - - 0x0064EF 01:A4DF: D0 E4     BNE bra_A4C5
; -> con_irq_20
C - - - - - 0x0064F1 01:A4E1: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0064F3 01:A4E3: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A4E6_20:
; con_irq_20
C - - J - - 0x0064F6 01:A4E6: AD 92 07  LDA ram_0792
C - - - - - 0x0064F9 01:A4E9: 18        CLC
C - - - - - 0x0064FA 01:A4EA: 69 02     ADC #$02
C - - - - - 0x0064FC 01:A4EC: A2 04     LDX #$04
C - - - - - 0x0064FE 01:A4EE: 20 27 A5  JSR sub_A527_prepare_chr_banks
C - - - - - 0x006501 01:A4F1: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
C - - - - - 0x006504 01:A4F4: A9 7F     LDA #con__chr_bank + $7F
C - - - - - 0x006506 01:A4F6: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x006508 01:A4F8: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x00650A 01:A4FA: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x00650C 01:A4FC: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x00650E 01:A4FE: 4C 3A E1  JMP loc_0x03E14A



ofs_irq_handler_A501_22:
; con_irq_22
- - - - - - 0x006511 01:A501: A2 08     LDX #$08
bra_A503_loop:
- - - - - - 0x006513 01:A503: 8A        TXA
; / 08
- - - - - - 0x006514 01:A504: 4A        LSR
- - - - - - 0x006515 01:A505: 4A        LSR
- - - - - - 0x006516 01:A506: 4A        LSR
- - - - - - 0x006517 01:A507: A8        TAY
- - - - - - 0x006518 01:A508: AD 02 20  LDA $2002
- - - - - - 0x00651B 01:A50B: B9 94 07  LDA ram_0794,Y
- - - - - - 0x00651E 01:A50E: 8D 05 20  STA $2005
- - - - - - 0x006521 01:A511: A9 00     LDA #$00
- - - - - - 0x006523 01:A513: 8D 05 20  STA $2005
- - - - - - 0x006526 01:A516: A9 09     LDA #$09
- - - - - - 0x006528 01:A518: 85 44     STA ram_0044_t004_garbage_loop_cnt
bra_A51A_garbage_loop:
- - - - - - 0x00652A 01:A51A: C6 44     DEC ram_0044_t004_garbage_loop_cnt
- - - - - - 0x00652C 01:A51C: D0 FC     BNE bra_A51A_garbage_loop
- - - - - - 0x00652E 01:A51E: EA        NOP
- - - - - - 0x00652F 01:A51F: E8        INX
- - - - - - 0x006530 01:A520: E0 49     CPX #$49
- - - - - - 0x006532 01:A522: D0 DF     BNE bra_A503_loop
- - - - - - 0x006534 01:A524: 4C 3A E1  JMP loc_0x03E14A



sub_A527_prepare_chr_banks:
; * 04
C - - - - - 0x006537 01:A527: 0A        ASL
C - - - - - 0x006538 01:A528: 0A        ASL
C - - - - - 0x006539 01:A529: A8        TAY
C - - - - - 0x00653A 01:A52A: B9 50 A5  LDA tbl_A550_chr_banks,Y
C - - - - - 0x00653D 01:A52D: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x00653F 01:A52F: B9 51 A5  LDA tbl_A550_chr_banks + $01,Y
C - - - - - 0x006542 01:A532: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x006544 01:A534: B9 52 A5  LDA tbl_A550_chr_banks + $02,Y
C - - - - - 0x006547 01:A537: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x006549 01:A539: B9 53 A5  LDA tbl_A550_chr_banks + $03,Y
C - - - - - 0x00654C 01:A53C: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x00654E 01:A53E: 60        RTS



sub_A53F_prepare_chr_banks:
; bzk optimize, single JSR to here
C - - - - - 0x00654F 01:A53F: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x006551 01:A541: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x006553 01:A543: A9 3E     LDA #con__chr_bank + $3E
C - - - - - 0x006555 01:A545: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x006557 01:A547: A9 3F     LDA #con__chr_bank + $3F
C - - - - - 0x006559 01:A549: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x00655B 01:A54B: A9 6F     LDA #con__chr_bank + $6F
C - - - - - 0x00655D 01:A54D: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x00655F 01:A54F: 60        RTS



tbl_A550_chr_banks:
; 00 
- D 1 - - - 0x006560 01:A550: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x006561 01:A551: 70        .byte con__chr_bank + $70   ; 
- D 1 - - - 0x006562 01:A552: 71        .byte con__chr_bank + $71   ; 
- D 1 - - - 0x006563 01:A553: 72        .byte con__chr_bank + $72   ; 
; 01 
- D 1 - - - 0x006564 01:A554: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x006565 01:A555: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x006566 01:A556: 5A        .byte con__chr_bank + $5A   ; 
- D 1 - - - 0x006567 01:A557: 6F        .byte con__chr_bank + $6F   ; 
; 02 
- D 1 - - - 0x006568 01:A558: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x006569 01:A559: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x00656A 01:A55A: 5A        .byte con__chr_bank + $5A   ; 
- D 1 - - - 0x00656B 01:A55B: 6F        .byte con__chr_bank + $6F   ; 
; 03 
- D 1 - - - 0x00656C 01:A55C: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x00656D 01:A55D: 3C        .byte con__chr_bank + $3C   ; 
- D 1 - - - 0x00656E 01:A55E: 3D        .byte con__chr_bank + $3D   ; 
- D 1 - - - 0x00656F 01:A55F: 6F        .byte con__chr_bank + $6F   ; 
; 04 
- D 1 - - - 0x006570 01:A560: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x006571 01:A561: 3E        .byte con__chr_bank + $3E   ; 
- D 1 - - - 0x006572 01:A562: 3F        .byte con__chr_bank + $3F   ; 
- D 1 - - - 0x006573 01:A563: 6F        .byte con__chr_bank + $6F   ; 
; 05 
- D 1 - - - 0x006574 01:A564: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x006575 01:A565: 3C        .byte con__chr_bank + $3C   ; 
- D 1 - - - 0x006576 01:A566: 3D        .byte con__chr_bank + $3D   ; 
- D 1 - - - 0x006577 01:A567: 6F        .byte con__chr_bank + $6F   ; 
; 06 
- D 1 - - - 0x006578 01:A568: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x006579 01:A569: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x00657A 01:A56A: 5A        .byte con__chr_bank + $5A   ; 
- D 1 - - - 0x00657B 01:A56B: 6F        .byte con__chr_bank + $6F   ; 
; 07 
- D 1 - - - 0x00657C 01:A56C: 41        .byte con__chr_bank + $41   ; 
- D 1 - - - 0x00657D 01:A56D: 3C        .byte con__chr_bank + $3C   ; 
- D 1 - - - 0x00657E 01:A56E: 3D        .byte con__chr_bank + $3D   ; 
- D 1 - - - 0x00657F 01:A56F: 6F        .byte con__chr_bank + $6F   ; 
; 08 
- - - - - - 0x006580 01:A570: 41        .byte con__chr_bank + $41   ; 
- - - - - - 0x006581 01:A571: 3C        .byte con__chr_bank + $3C   ; 
- - - - - - 0x006582 01:A572: 3D        .byte con__chr_bank + $3D   ; 
- - - - - - 0x006583 01:A573: 6F        .byte con__chr_bank + $6F   ; 
; 09 
- - - - - - 0x006584 01:A574: 41        .byte con__chr_bank + $41   ; 
- - - - - - 0x006585 01:A575: 3C        .byte con__chr_bank + $3C   ; 
- - - - - - 0x006586 01:A576: 3D        .byte con__chr_bank + $3D   ; 
- - - - - - 0x006587 01:A577: 6F        .byte con__chr_bank + $6F   ; 



ofs_irq_handler_A578_29:
; con_irq_29
C - - J - - 0x006588 01:A578: A5 89     LDA ram_0089_scanline
C - - - - - 0x00658A 01:A57A: 8D 03 52  STA $5203
C - - - - - 0x00658D 01:A57D: A2 07     LDX #$07
bra_A57F_loop:
C - - - - - 0x00658F 01:A57F: BD 82 07  LDA ram_0782,X
C - - - - - 0x006592 01:A582: 9D 89 07  STA ram_0789,X
C - - - - - 0x006595 01:A585: CA        DEX
C - - - - - 0x006596 01:A586: 10 F7     BPL bra_A57F_loop
C - - - - - 0x006598 01:A588: AD 8A 07  LDA ram_078A
C - - - - - 0x00659B 01:A58B: 18        CLC
C - - - - - 0x00659C 01:A58C: 65 89     ADC ram_0089_scanline
C - - - - - 0x00659E 01:A58E: 8D 8A 07  STA ram_078A
C - - - - - 0x0065A1 01:A591: AD 8B 07  LDA ram_078B
C - - - - - 0x0065A4 01:A594: 18        CLC
C - - - - - 0x0065A5 01:A595: 6D 8A 07  ADC ram_078A
C - - - - - 0x0065A8 01:A598: 8D 8B 07  STA ram_078B
; -> con_irq_2A
C - - - - - 0x0065AB 01:A59B: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0065AD 01:A59D: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A5A0_2A:
; con_irq_2A
C - - J - - 0x0065B0 01:A5A0: AD 8A 07  LDA ram_078A
C - - - - - 0x0065B3 01:A5A3: 8D 03 52  STA $5203
C - - - - - 0x0065B6 01:A5A6: A9 55     LDA #$55
C - - - - - 0x0065B8 01:A5A8: 8D 05 51  STA $5105
C - - - - - 0x0065BB 01:A5AB: A2 05     LDX #$05
C - - - - - 0x0065BD 01:A5AD: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x0065C0 01:A5B0: AD 02 20  LDA $2002
C - - - - - 0x0065C3 01:A5B3: AD 8D 07  LDA ram_078D
C - - - - - 0x0065C6 01:A5B6: 8D 06 20  STA $2006
C - - - - - 0x0065C9 01:A5B9: AD 8C 07  LDA ram_078C
C - - - - - 0x0065CC 01:A5BC: 8D 06 20  STA $2006
C - - - - - 0x0065CF 01:A5BF: AD 8E 07  LDA ram_078E_scroll_X
C - - - - - 0x0065D2 01:A5C2: 8D 05 20  STA $2005
C - - - - - 0x0065D5 01:A5C5: A9 00     LDA #$00
C - - - - - 0x0065D7 01:A5C7: 8D 05 20  STA $2005
C - - - - - 0x0065DA 01:A5CA: 20 2D E3  JSR sub_0x03E33D_write_chr_banks___7F_5128_5129_512A_512B
; -> con_irq_2B
C - - - - - 0x0065DD 01:A5CD: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0065DF 01:A5CF: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A5D2_2B:
; con_irq_2B
C - - J - - 0x0065E2 01:A5D2: AD 8B 07  LDA ram_078B
C - - - - - 0x0065E5 01:A5D5: 8D 03 52  STA $5203
C - - - - - 0x0065E8 01:A5D8: A2 0C     LDX #$0C
C - - - - - 0x0065EA 01:A5DA: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x0065ED 01:A5DD: 20 5D E3  JSR sub_0x03E36D_write_chr_banks___5124_5126_5127_5128_5129_512A_512B
; -> con_irq_2C
C - - - - - 0x0065F0 01:A5E0: E6 6D     INC ram_006D_irq_handler
C - - - - - 0x0065F2 01:A5E2: 4C 3F E1  JMP loc_0x03E14F



ofs_irq_handler_A5E5_2C:
; con_irq_2C
C - - J - - 0x0065F5 01:A5E5: A2 14     LDX #$14
C - - - - - 0x0065F7 01:A5E7: 20 01 E0  JSR sub_0x03E011_garbage_loop_X
C - - - - - 0x0065FA 01:A5EA: A9 44     LDA #$44
C - - - - - 0x0065FC 01:A5EC: 8D 05 51  STA $5105
C - - - - - 0x0065FF 01:A5EF: AD 02 20  LDA $2002
C - - - - - 0x006602 01:A5F2: A9 23     LDA #> $2300
C - - - - - 0x006604 01:A5F4: 8D 06 20  STA $2006
C - - - - - 0x006607 01:A5F7: A9 00     LDA #< $2300
C - - - - - 0x006609 01:A5F9: 8D 06 20  STA $2006
; bzk optimize, loading the same A
C - - - - - 0x00660C 01:A5FC: A9 00     LDA #$00
C - - - - - 0x00660E 01:A5FE: 8D 05 20  STA $2005
C - - - - - 0x006611 01:A601: 8D 05 20  STA $2005
C - - - - - 0x006614 01:A604: A9 B0     LDA #$B0
C - - - - - 0x006616 01:A606: 8D 00 20  STA $2000
C - - - - - 0x006619 01:A609: 4C 3A E1  JMP loc_0x03E14A



loc_0x00661C_prayer_handler:
C D 1 - - - 0x00661C 01:A60C: A5 19     LDA ram_0019_subscript
C - - - - - 0x00661E 01:A60E: C9 02     CMP #$02
C - - - - - 0x006620 01:A610: 90 09     BCC bra_A61B
C - - - - - 0x006622 01:A612: A5 26     LDA ram_btn_press
C - - - - - 0x006624 01:A614: 29 10     AND #con_btn_Start
C - - - - - 0x006626 01:A616: F0 03     BEQ bra_A61B
C - - - - - 0x006628 01:A618: 4C 2A A7  JMP loc_A72A
bra_A61B:
C - - - - - 0x00662B 01:A61B: A5 19     LDA ram_0019_subscript
C - - - - - 0x00662D 01:A61D: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x006630 01:A620: 30 A6     .word ofs_025_A630_00
- D 1 - I - 0x006632 01:A622: 6B A6     .word ofs_025_A66B_01
- D 1 - I - 0x006634 01:A624: 94 A6     .word ofs_025_A694_02
- D 1 - I - 0x006636 01:A626: B3 A6     .word ofs_025_A6B3_03
- D 1 - I - 0x006638 01:A628: E6 A6     .word ofs_025_A6E6_04
- D 1 - I - 0x00663A 01:A62A: F9 A6     .word ofs_025_A6F9_05
- D 1 - I - 0x00663C 01:A62C: 11 A7     .word ofs_025_A711_06
- D 1 - I - 0x00663E 01:A62E: 25 A7     .word ofs_025_A725_07



ofs_025_A630_00:
C - - J - - 0x006640 01:A630: A9 02     LDA #$02
C - - - - - 0x006642 01:A632: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x006644 01:A634: A9 67     LDA #con_music_67
C - - - - - 0x006646 01:A636: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x006649 01:A639: A9 00     LDA #con__chr_bank + $00
C - - - - - 0x00664B 01:A63B: 85 46     STA ram_chr_bank_5120
C - - - - - 0x00664D 01:A63D: A9 01     LDA #con__chr_bank + $01
C - - - - - 0x00664F 01:A63F: 85 47     STA ram_chr_bank_5121
C - - - - - 0x006651 01:A641: A9 16     LDA #con__chr_bank + $16
C - - - - - 0x006653 01:A643: 85 48     STA ram_chr_bank_5122
C - - - - - 0x006655 01:A645: A9 7B     LDA #con__chr_bank + $7B
C - - - - - 0x006657 01:A647: 85 49     STA ram_chr_bank_5123
C - - - - - 0x006659 01:A649: A9 44     LDA #con__chr_bank + $44
C - - - - - 0x00665B 01:A64B: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x00665D 01:A64D: A9 45     LDA #con__chr_bank + $45
C - - - - - 0x00665F 01:A64F: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x006661 01:A651: A9 47     LDA #con__chr_bank + $47
C - - - - - 0x006663 01:A653: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x006665 01:A655: A9 43     LDA #con__chr_bank + $43
C - - - - - 0x006667 01:A657: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x006669 01:A659: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x00666C 01:A65C: 20 F7 E7  JSR sub_0x03E807_clear_all_objects_data
C - - - - - 0x00666F 01:A65F: E6 19     INC ram_0019_subscript
sub_A661:
C - - - - - 0x006671 01:A661: A9 1F     LDA #con_98E4_1F_bg_spr_pal
C - - - - - 0x006673 01:A663: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x006676 01:A666: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x006678 01:A668: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



ofs_025_A66B_01:
C - - J - - 0x00667B 01:A66B: A2 16     LDX #con_EC77_16
C - - - - - 0x00667D 01:A66D: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x00667F 01:A66F: 20 D5 EB  JSR sub_0x03EBE5_draw_screen
C - - - - - 0x006682 01:A672: A0 00     LDY #$00
C - - - - - 0x006684 01:A674: 20 6D A7  JSR sub_A76D
C - - - - - 0x006687 01:A677: A9 01     LDA #$01    ; facing left
C - - - - - 0x006689 01:A679: 8D A8 04  STA ram_plr_facing
C - - - - - 0x00668C 01:A67C: A9 80     LDA #$80
C - - - - - 0x00668E 01:A67E: 8D 38 04  STA ram_plr_pos_X_lo
C - - - - - 0x006691 01:A681: A9 B0     LDA #$B0
C - - - - - 0x006693 01:A683: 8D 1C 04  STA ram_plr_pos_Y_lo
C - - - - - 0x006696 01:A686: E6 19     INC ram_0019_subscript
C - - - - - 0x006698 01:A688: A9 08     LDA #$08
C - - - - - 0x00669A 01:A68A: 8D C2 05  STA ram_obj_ai_subscript + $01
C - - - - - 0x00669D 01:A68D: A0 01     LDY #> $0100
C - - - - - 0x00669F 01:A68F: A9 00     LDA #< $0100
C - - - - - 0x0066A1 01:A691: 4C 8E E5  JMP loc_0x03E59E_set_screen_timer



ofs_025_A694_02:
C - - J - - 0x0066A4 01:A694: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x0066A7 01:A697: D0 19     BNE bra_A6B2_RTS
C - - - - - 0x0066A9 01:A699: A9 1D     LDA #con_98E4_1D_bg_pal
C - - - - - 0x0066AB 01:A69B: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0066AE 01:A69E: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x0066B0 01:A6A0: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0066B3 01:A6A3: E6 19     INC ram_0019_subscript
C - - - - - 0x0066B5 01:A6A5: AD C2 05  LDA ram_obj_ai_subscript + $01
C - - - - - 0x0066B8 01:A6A8: 20 2F A7  JSR sub_A72F
C - - - - - 0x0066BB 01:A6AB: A0 00     LDY #> $0002
C - - - - - 0x0066BD 01:A6AD: A9 02     LDA #< $0002
C - - - - - 0x0066BF 01:A6AF: 4C 8E E5  JMP loc_0x03E59E_set_screen_timer
bra_A6B2_RTS:
C - - - - - 0x0066C2 01:A6B2: 60        RTS



ofs_025_A6B3_03:
C - - J - - 0x0066C3 01:A6B3: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x0066C6 01:A6B6: D0 FA     BNE bra_A6B2_RTS
C - - - - - 0x0066C8 01:A6B8: A9 00     LDA #$00
C - - - - - 0x0066CA 01:A6BA: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x0066CD 01:A6BD: 8D 8D 04  STA ram_obj_type + $01  ; con_obj_type_00
C - - - - - 0x0066D0 01:A6C0: 20 61 A6  JSR sub_A661
C - - - - - 0x0066D3 01:A6C3: CE C2 05  DEC ram_obj_ai_subscript + $01
C - - - - - 0x0066D6 01:A6C6: F0 0D     BEQ bra_A6D5
C - - - - - 0x0066D8 01:A6C8: C6 19     DEC ram_0019_subscript
C - - - - - 0x0066DA 01:A6CA: AC C2 05  LDY ram_obj_ai_subscript + $01
C - - - - - 0x0066DD 01:A6CD: B9 DE A6  LDA tbl_A6DE_screen_timer_lo,Y
C - - - - - 0x0066E0 01:A6D0: A0 00     LDY #$00
C - - - - - 0x0066E2 01:A6D2: 4C 8E E5  JMP loc_0x03E59E_set_screen_timer
bra_A6D5:
C - - - - - 0x0066E5 01:A6D5: E6 19     INC ram_0019_subscript
C - - - - - 0x0066E7 01:A6D7: A0 00     LDY #> $0040
C - - - - - 0x0066E9 01:A6D9: A9 40     LDA #< $0040
C - - - - - 0x0066EB 01:A6DB: 4C 8E E5  JMP loc_0x03E59E_set_screen_timer



tbl_A6DE_screen_timer_lo:
- - - - - - 0x0066EE 01:A6DE: 03        .byte < $0003   ; 00 
- D 1 - - - 0x0066EF 01:A6DF: 03        .byte < $0003   ; 01 
- D 1 - - - 0x0066F0 01:A6E0: 06        .byte < $0006   ; 02 
- D 1 - - - 0x0066F1 01:A6E1: 06        .byte < $0006   ; 03 
- D 1 - - - 0x0066F2 01:A6E2: 0C        .byte < $000C   ; 04 
- D 1 - - - 0x0066F3 01:A6E3: 10        .byte < $0010   ; 05 
- D 1 - - - 0x0066F4 01:A6E4: 10        .byte < $0010   ; 06 
- D 1 - - - 0x0066F5 01:A6E5: 18        .byte < $0018   ; 07 



ofs_025_A6E6_04:
C - - J - - 0x0066F6 01:A6E6: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x0066F9 01:A6E9: D0 C7     BNE bra_A6B2_RTS
C - - - - - 0x0066FB 01:A6EB: A0 01     LDY #$01
C - - - - - 0x0066FD 01:A6ED: 20 6D A7  JSR sub_A76D
C - - - - - 0x006700 01:A6F0: E6 19     INC ram_0019_subscript
C - - - - - 0x006702 01:A6F2: A0 00     LDY #> $0040
C - - - - - 0x006704 01:A6F4: A9 40     LDA #< $0040
C - - - - - 0x006706 01:A6F6: 4C 8E E5  JMP loc_0x03E59E_set_screen_timer



ofs_025_A6F9_05:
C - - J - - 0x006709 01:A6F9: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x00670C 01:A6FC: D0 B4     BNE bra_A6B2_RTS
C - - - - - 0x00670E 01:A6FE: A0 39     LDY #$39
C - - - - - 0x006710 01:A700: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x006712 01:A702: A2 00     LDX #$00
C - - - - - 0x006714 01:A704: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x006717 01:A707: A0 00     LDY #> $0020
C - - - - - 0x006719 01:A709: A9 20     LDA #< $0020
C - - - - - 0x00671B 01:A70B: 20 8E E5  JSR sub_0x03E59E_set_screen_timer
loc_A70E:   ; bzk optimize, paste this code instead of JMP
C D 1 - - - 0x00671E 01:A70E: E6 19     INC ram_0019_subscript
bra_A710_RTS:
C - - - - - 0x006720 01:A710: 60        RTS



ofs_025_A711_06:
C - - J - - 0x006721 01:A711: A2 00     LDX #$00
C - - - - - 0x006723 01:A713: 20 75 EF  JSR sub_0x03EF85_object_animation_handler
C - - - - - 0x006726 01:A716: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x006729 01:A719: D0 F5     BNE bra_A710_RTS
C - - - - - 0x00672B 01:A71B: A0 00     LDY #> $002C
C - - - - - 0x00672D 01:A71D: A9 2C     LDA #< $002C
C - - - - - 0x00672F 01:A71F: 20 8E E5  JSR sub_0x03E59E_set_screen_timer
C - - - - - 0x006732 01:A722: 4C 0E A7  JMP loc_A70E



ofs_025_A725_07:
C - - J - - 0x006735 01:A725: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x006738 01:A728: D0 E6     BNE bra_A710_RTS
loc_A72A:
C D 1 - - - 0x00673A 01:A72A: A9 03     LDA #con_0018_03
C - - - - - 0x00673C 01:A72C: 85 18     STA ram_main_script
C - - - - - 0x00673E 01:A72E: 60        RTS



sub_A72F:
C - - - - - 0x00673F 01:A72F: A8        TAY
C - - - - - 0x006740 01:A730: B9 64 A7  LDA tbl_A764_facing,Y
C - - - - - 0x006743 01:A733: 8D A9 04  STA ram_obj_facing + $01
C - - - - - 0x006746 01:A736: A9 DA     LDA #$DA
C - - - - - 0x006748 01:A738: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x00674B 01:A73B: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x00674D 01:A73D: 8D 8D 04  STA ram_obj_type + $01
C - - - - - 0x006750 01:A740: B9 52 A7  LDA tbl_A752_pos_X_lo,Y
C - - - - - 0x006753 01:A743: 8D 39 04  STA ram_obj_pos_X_lo + $01
C - - - - - 0x006756 01:A746: B9 5B A7  LDA tbl_A75B_pos_Y_lo,Y
C - - - - - 0x006759 01:A749: 8D 1D 04  STA ram_obj_pos_Y_lo + $01
C - - - - - 0x00675C 01:A74C: A9 3E     LDA #con_sound_3E
C - - - - - 0x00675E 01:A74E: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x006761 01:A751: 60        RTS



tbl_A752_pos_X_lo:
- - - - - - 0x006762 01:A752: 00        .byte $00   ; 00 
- D 1 - - - 0x006763 01:A753: 28        .byte $28   ; 01 
- D 1 - - - 0x006764 01:A754: 18        .byte $18   ; 02 
- D 1 - - - 0x006765 01:A755: C0        .byte $C0   ; 03 
- D 1 - - - 0x006766 01:A756: 30        .byte $30   ; 04 
- D 1 - - - 0x006767 01:A757: D0        .byte $D0   ; 05 
- D 1 - - - 0x006768 01:A758: D0        .byte $D0   ; 06 
- D 1 - - - 0x006769 01:A759: 20        .byte $20   ; 07 
- D 1 - - - 0x00676A 01:A75A: E0        .byte $E0   ; 08 



tbl_A75B_pos_Y_lo:
- - - - - - 0x00676B 01:A75B: 00        .byte $00   ; 00 
- D 1 - - - 0x00676C 01:A75C: 40        .byte $40   ; 01 
- D 1 - - - 0x00676D 01:A75D: 40        .byte $40   ; 02 
- D 1 - - - 0x00676E 01:A75E: 40        .byte $40   ; 03 
- D 1 - - - 0x00676F 01:A75F: 40        .byte $40   ; 04 
- D 1 - - - 0x006770 01:A760: 40        .byte $40   ; 05 
- D 1 - - - 0x006771 01:A761: 40        .byte $40   ; 06 
- D 1 - - - 0x006772 01:A762: 40        .byte $40   ; 07 
- D 1 - - - 0x006773 01:A763: 40        .byte $40   ; 08 



tbl_A764_facing:
; 00 = facing right
; 01 = facing left
- - - - - - 0x006774 01:A764: 00        .byte $00   ; 00 
- D 1 - - - 0x006775 01:A765: 00        .byte $00   ; 01 
- D 1 - - - 0x006776 01:A766: 00        .byte $00   ; 02 
- D 1 - - - 0x006777 01:A767: 01        .byte $01   ; 03 
- D 1 - - - 0x006778 01:A768: 00        .byte $00   ; 04 
- D 1 - - - 0x006779 01:A769: 01        .byte $01   ; 05 
- D 1 - - - 0x00677A 01:A76A: 01        .byte $01   ; 06 
- D 1 - - - 0x00677B 01:A76B: 00        .byte $00   ; 07 
- D 1 - - - 0x00677C 01:A76C: 01        .byte $01   ; 08 



sub_A76D:
C - - - - - 0x00677D 01:A76D: B9 7E A7  LDA tbl_A77E,Y
C - - - - - 0x006780 01:A770: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x006783 01:A773: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x006785 01:A775: 8D 8C 04  STA ram_plr_type
C - - - - - 0x006788 01:A778: A9 00     LDA #$00
C - - - - - 0x00678A 01:A77A: 8D 54 04  STA ram_0454_plr
C - - - - - 0x00678D 01:A77D: 60        RTS



tbl_A77E:
- D 1 - - - 0x00678E 01:A77E: DC        .byte $DC   ; 00 
- D 1 - - - 0x00678F 01:A77F: DE        .byte $DE   ; 01 



sub_A780:
C - - - - - 0x006790 01:A780: A0 00     LDY #$00
C - - - - - 0x006792 01:A782: F0 1E     BEQ bra_A7A2    ; jmp



sub_A784:
C - - - - - 0x006794 01:A784: A0 02     LDY #$02
C - - - - - 0x006796 01:A786: D0 1A     BNE bra_A7A2    ; jmp



sub_A788:
C - - - - - 0x006798 01:A788: A0 04     LDY #$04
C - - - - - 0x00679A 01:A78A: D0 16     BNE bra_A7A2    ; jmp



sub_A78C_prepare_vertical_nametable_mapping:
C - - - - - 0x00679C 01:A78C: A0 06     LDY #$06
C - - - - - 0x00679E 01:A78E: D0 12     BNE bra_A7A2    ; jmp



sub_A790:
C - - - - - 0x0067A0 01:A790: A0 08     LDY #$08
C - - - - - 0x0067A2 01:A792: D0 0E     BNE bra_A7A2    ; jmp



sub_A794:
C - - - - - 0x0067A4 01:A794: A0 0A     LDY #$0A
C - - - - - 0x0067A6 01:A796: D0 0A     BNE bra_A7A2    ; jmp



sub_A798:
C - - - - - 0x0067A8 01:A798: A0 0C     LDY #$0C
C - - - - - 0x0067AA 01:A79A: D0 06     BNE bra_A7A2    ; jmp



sub_A79C_print_intro_text:
C - - - - - 0x0067AC 01:A79C: A0 0E     LDY #$0E
C - - - - - 0x0067AE 01:A79E: D0 02     BNE bra_A7A2    ; jmp


; bzk garbage
- - - - - - 0x0067B0 01:A7A0: A0 10     LDY #$10



bra_A7A2:
C - - - - - 0x0067B2 01:A7A2: B9 B1 A7  LDA tbl_A7B1,Y
C - - - - - 0x0067B5 01:A7A5: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x0067B7 01:A7A7: B9 B2 A7  LDA tbl_A7B1 + $01,Y
C - - - - - 0x0067BA 01:A7AA: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x0067BC 01:A7AC: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x0067BE 01:A7AE: 4C 2F E6  JMP loc_0x03E63F_indirect_jump_custom_bank



tbl_A7B1:
- D 1 - - - 0x0067C1 01:A7B1: CA B6     .word ofs_055_0x00B6DA_00
- D 1 - - - 0x0067C3 01:A7B3: E1 B7     .word ofs_055_0x00B7F1_02
- D 1 - - - 0x0067C5 01:A7B5: 9A B9     .word ofs_055_0x00B9AA_04
- D 1 - - - 0x0067C7 01:A7B7: 77 BA     .word ofs_055_0x00BA87_06_prepare_vertical_nametable_mapping
- D 1 - - - 0x0067C9 01:A7B9: 7C BA     .word ofs_055_0x00BA8C_08
- D 1 - - - 0x0067CB 01:A7BB: BC BA     .word ofs_055_0x00BACC_0A
- D 1 - - - 0x0067CD 01:A7BD: DD BA     .word ofs_055_0x00BAED_0C
- D 1 - - - 0x0067CF 01:A7BF: C5 B8     .word ofs_055_0x00B8D5_0E_print_intro_text


; bzk garbage 0x0067B0
- - - - - - 0x0067D1 01:A7C1: 04 EC     .word ofs_055_0x03EC14_10



sub_0x0067D3:
C - - - - - 0x0067D3 01:A7C3: AD EC 07  LDA ram_07EC
C - - - - - 0x0067D6 01:A7C6: 0A        ASL
C - - - - - 0x0067D7 01:A7C7: A8        TAY
C - - - - - 0x0067D8 01:A7C8: B9 E3 A7  LDA tbl_A7E3,Y
C - - - - - 0x0067DB 01:A7CB: 85 00     STA ram_0000_t027_jmp
C - - - - - 0x0067DD 01:A7CD: B9 E4 A7  LDA tbl_A7E3 + $01,Y
C - - - - - 0x0067E0 01:A7D0: 85 01     STA ram_0000_t027_jmp + $01
C - - - - - 0x0067E2 01:A7D2: 20 E0 A7  JSR sub_A7E0_indirect_jump
C - - - - - 0x0067E5 01:A7D5: AD EC 07  LDA ram_07EC
C - - - - - 0x0067E8 01:A7D8: C9 10     CMP #$10
C - - - - - 0x0067EA 01:A7DA: 90 03     BCC bra_A7DF_RTS
; bzk optimize, JMP
C - - - - - 0x0067EC 01:A7DC: 20 88 A7  JSR sub_A788
bra_A7DF_RTS:
C - - - - - 0x0067EF 01:A7DF: 60        RTS



sub_A7E0_indirect_jump:
; bzk same JMP as 0x0054EE
C - - - - - 0x0067F0 01:A7E0: 6C 00 00  JMP (ram_0000_t027_jmp)



tbl_A7E3:
- D 1 - - - 0x0067F3 01:A7E3: 25 A8     .word ofs_056_A825_00
- D 1 - - - 0x0067F5 01:A7E5: 9F A8     .word ofs_056_A89F_01
- D 1 - - - 0x0067F7 01:A7E7: B5 A8     .word ofs_056_A8B5_02
- D 1 - - - 0x0067F9 01:A7E9: C4 A8     .word ofs_056_A8C4_03
- D 1 - - - 0x0067FB 01:A7EB: D2 A8     .word ofs_056_A8D2_04
- D 1 - - - 0x0067FD 01:A7ED: DD A8     .word ofs_056_A8DD_05
- D 1 - - - 0x0067FF 01:A7EF: EB A8     .word ofs_056_A8EB_06
- D 1 - - - 0x006801 01:A7F1: F9 A8     .word ofs_056_A8F9_07
- D 1 - - - 0x006803 01:A7F3: 1B A9     .word ofs_056_A91B_08
- - - - - - 0x006805 01:A7F5: 45 A9     .word ofs_056_A945_09
- D 1 - - - 0x006807 01:A7F7: 62 A9     .word ofs_056_A962_0A
- D 1 - - - 0x006809 01:A7F9: 79 A9     .word ofs_056_A979_0B
- D 1 - - - 0x00680B 01:A7FB: 84 A9     .word ofs_056_A984_0C
- D 1 - - - 0x00680D 01:A7FD: 8F A9     .word ofs_056_A98F_0D
- D 1 - - - 0x00680F 01:A7FF: CE A9     .word ofs_056_A9CE_0E
- D 1 - - - 0x006811 01:A801: D9 A9     .word ofs_056_A9D9_0F
- D 1 - - - 0x006813 01:A803: 0E AA     .word ofs_056_AA0E_10
- D 1 - - - 0x006815 01:A805: 11 AA     .word ofs_056_AA11_11
- D 1 - - - 0x006817 01:A807: 40 AA     .word ofs_056_AA40_12
- D 1 - - - 0x006819 01:A809: 4E AA     .word ofs_056_AA4E_13
- D 1 - - - 0x00681B 01:A80B: 51 AA     .word ofs_056_AA51_14
- D 1 - - - 0x00681D 01:A80D: 6F AA     .word ofs_056_AA6F_15
- D 1 - - - 0x00681F 01:A80F: 94 AA     .word ofs_056_AA94_16
- D 1 - - - 0x006821 01:A811: C6 AA     .word ofs_056_AAC6_17
- D 1 - - - 0x006823 01:A813: C9 AA     .word ofs_056_AAC9_18
- D 1 - - - 0x006825 01:A815: E5 AA     .word ofs_056_AAE5_19
- D 1 - - - 0x006827 01:A817: F1 AA     .word ofs_056_AAF1_1A
- D 1 - - - 0x006829 01:A819: FC AA     .word ofs_056_AAFC_1B
- D 1 - - - 0x00682B 01:A81B: 13 AB     .word ofs_056_AB13_1C
- D 1 - - - 0x00682D 01:A81D: 22 AB     .word ofs_056_AB22_1D
- D 1 - - - 0x00682F 01:A81F: 40 AB     .word ofs_056_AB40_1E
- D 1 - - - 0x006831 01:A821: 52 AB     .word ofs_056_AB52_1F
- D 1 - - - 0x006833 01:A823: 65 AB     .word ofs_056_AB65_20



ofs_056_A825_00:
C - - J - - 0x006835 01:A825: 20 DA E2  JSR sub_0x03E2EA_prg_bankswitch_dpcm_2
C - - - - - 0x006838 01:A828: A2 24     LDX #$24
C - - - - - 0x00683A 01:A82A: A9 00     LDA #$00
bra_A82C_loop:  ; 0780-07A4
C - - - - - 0x00683C 01:A82C: 9D 80 07  STA ram_0780,X
C - - - - - 0x00683F 01:A82F: CA        DEX
C - - - - - 0x006840 01:A830: 10 FA     BPL bra_A82C_loop
C - - - - - 0x006842 01:A832: A9 1E     LDA #con_irq_1E
C - - - - - 0x006844 01:A834: A2 08     LDX #$08
C - - - - - 0x006846 01:A836: 20 C1 E5  JSR sub_0x03E5D1
C - - - - - 0x006849 01:A839: A9 80     LDA #$80
C - - - - - 0x00684B 01:A83B: 8D 91 07  STA ram_0791
C - - - - - 0x00684E 01:A83E: A9 01     LDA #$01
C - - - - - 0x006850 01:A840: 8D 93 07  STA ram_0793
C - - - - - 0x006853 01:A843: A9 7F     LDA #con__chr_bank + $7F
C - - - - - 0x006855 01:A845: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x006857 01:A847: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x006859 01:A849: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x00685B 01:A84B: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x00685D 01:A84D: A9 00     LDA #con__chr_bank + $00
C - - - - - 0x00685F 01:A84F: 85 46     STA ram_chr_bank_5120
C - - - - - 0x006861 01:A851: A9 01     LDA #con__chr_bank + $01
C - - - - - 0x006863 01:A853: 85 47     STA ram_chr_bank_5121
C - - - - - 0x006865 01:A855: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x006868 01:A858: 20 73 AB  JSR sub_AB73
C - - - - - 0x00686B 01:A85B: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x00686E 01:A85E: 20 88 AE  JSR sub_AE88_prepare_horisontal_nametable_mapping
C - - - - - 0x006871 01:A861: A2 1E     LDX #con_EC77_1E
C - - - - - 0x006873 01:A863: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x006875 01:A865: 20 D5 EB  JSR sub_0x03EBE5_draw_screen
C - - - - - 0x006878 01:A868: A2 00     LDX #$00
C - - - - - 0x00687A 01:A86A: 20 7C AC  JSR sub_AC7C
C - - - - - 0x00687D 01:A86D: A9 55     LDA #$55
C - - - - - 0x00687F 01:A86F: 85 25     STA ram_for_5105
C - - - - - 0x006881 01:A871: A5 FF     LDA ram_for_2000
C - - - - - 0x006883 01:A873: 09 02     ORA #$02
C - - - - - 0x006885 01:A875: 85 FF     STA ram_for_2000
C - - - - - 0x006887 01:A877: A9 00     LDA #$00
C - - - - - 0x006889 01:A879: 8D 80 07  STA ram_0780
C - - - - - 0x00688C 01:A87C: A9 02     LDA #$02
C - - - - - 0x00688E 01:A87E: 8D 81 07  STA ram_0781
C - - - - - 0x006891 01:A881: A9 80     LDA #$80
C - - - - - 0x006893 01:A883: 8D ED 07  STA ram_07ED
C - - - - - 0x006896 01:A886: A9 00     LDA #$00
C - - - - - 0x006898 01:A888: 8D EE 07  STA ram_07EE
C - - - - - 0x00689B 01:A88B: A9 00     LDA #$00
C - - - - - 0x00689D 01:A88D: 8D 83 07  STA ram_0783
C - - - - - 0x0068A0 01:A890: 8D 84 07  STA ram_0784
C - - - - - 0x0068A3 01:A893: 8D 85 07  STA ram_0785
C - - - - - 0x0068A6 01:A896: A9 66     LDA #con_music_title_screen
C - - - - - 0x0068A8 01:A898: 20 5F E2  JSR sub_0x03E26F_play_sound
loc_A89B:
bra_A89B:
C D 1 - - - 0x0068AB 01:A89B: EE EC 07  INC ram_07EC
C - - - - - 0x0068AE 01:A89E: 60        RTS



ofs_056_A89F_01:
C - - J - - 0x0068AF 01:A89F: 20 8D AE  JSR sub_AE8D
C - - - - - 0x0068B2 01:A8A2: F0 04     BEQ bra_A8A8
C - - - - - 0x0068B4 01:A8A4: 20 34 AD  JSR sub_AD34
C - - - - - 0x0068B7 01:A8A7: 60        RTS
bra_A8A8:
C - - - - - 0x0068B8 01:A8A8: A9 80     LDA #$80
C - - - - - 0x0068BA 01:A8AA: 8D ED 07  STA ram_07ED
C - - - - - 0x0068BD 01:A8AD: A9 00     LDA #$00
C - - - - - 0x0068BF 01:A8AF: 8D EE 07  STA ram_07EE
C - - - - - 0x0068C2 01:A8B2: 4C 9B A8  JMP loc_A89B



ofs_056_A8B5_02:
C - - J - - 0x0068C5 01:A8B5: 20 8D AE  JSR sub_AE8D
C - - - - - 0x0068C8 01:A8B8: F0 E1     BEQ bra_A89B
C - - - - - 0x0068CA 01:A8BA: 20 DB AB  JSR sub_ABDB
C - - - - - 0x0068CD 01:A8BD: 20 34 AD  JSR sub_AD34
C - - - - - 0x0068D0 01:A8C0: 20 6F AE  JSR sub_AE6F
C - - - - - 0x0068D3 01:A8C3: 60        RTS



ofs_056_A8C4_03:
C - - J - - 0x0068D4 01:A8C4: 20 DB AB  JSR sub_ABDB
C - - - - - 0x0068D7 01:A8C7: 20 34 AD  JSR sub_AD34
C - - - - - 0x0068DA 01:A8CA: 20 6F AE  JSR sub_AE6F
C - - - - - 0x0068DD 01:A8CD: A5 FC     LDA ram_scroll_Y
C - - - - - 0x0068DF 01:A8CF: F0 CA     BEQ bra_A89B
C - - - - - 0x0068E1 01:A8D1: 60        RTS



ofs_056_A8D2_04:
C - - J - - 0x0068E2 01:A8D2: 20 88 AE  JSR sub_AE88_prepare_horisontal_nametable_mapping
C - - - - - 0x0068E5 01:A8D5: A9 03     LDA #$03
C - - - - - 0x0068E7 01:A8D7: 8D EF 07  STA ram_07EF
C - - - - - 0x0068EA 01:A8DA: 4C 9B A8  JMP loc_A89B



ofs_056_A8DD_05:
C - - J - - 0x0068ED 01:A8DD: 20 34 AD  JSR sub_AD34
C - - - - - 0x0068F0 01:A8E0: 20 22 AF  JSR sub_AF22
C - - - - - 0x0068F3 01:A8E3: A5 FC     LDA ram_scroll_Y
C - - - - - 0x0068F5 01:A8E5: F0 01     BEQ bra_A8E8
C - - - - - 0x0068F7 01:A8E7: 60        RTS
bra_A8E8:
C - - - - - 0x0068F8 01:A8E8: 4C 9B A8  JMP loc_A89B



ofs_056_A8EB_06:
C - - J - - 0x0068FB 01:A8EB: 20 34 AD  JSR sub_AD34
C - - - - - 0x0068FE 01:A8EE: 20 8C A7  JSR sub_A78C_prepare_vertical_nametable_mapping
C - - - - - 0x006901 01:A8F1: A9 00     LDA #$00
C - - - - - 0x006903 01:A8F3: 8D EE 07  STA ram_07EE
C - - - - - 0x006906 01:A8F6: 4C 9B A8  JMP loc_A89B



ofs_056_A8F9_07:
C - - J - - 0x006909 01:A8F9: 20 34 AD  JSR sub_AD34
C - - - - - 0x00690C 01:A8FC: 20 90 A7  JSR sub_A790
C - - - - - 0x00690F 01:A8FF: 90 19     BCC bra_A91A_RTS
C - - - - - 0x006911 01:A901: 20 94 A7  JSR sub_A794
C - - - - - 0x006914 01:A904: A9 21     LDA #con_irq_21
C - - - - - 0x006916 01:A906: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x006918 01:A908: A9 01     LDA #$01
C - - - - - 0x00691A 01:A90A: 8D 8F 07  STA ram_078F
C - - - - - 0x00691D 01:A90D: A9 80     LDA #$80
C - - - - - 0x00691F 01:A90F: 8D ED 07  STA ram_07ED
C - - - - - 0x006922 01:A912: A9 00     LDA #$00
C - - - - - 0x006924 01:A914: 8D EE 07  STA ram_07EE
C - - - - - 0x006927 01:A917: 4C 9B A8  JMP loc_A89B
bra_A91A_RTS:
C - - - - - 0x00692A 01:A91A: 60        RTS



ofs_056_A91B_08:
C - - J - - 0x00692B 01:A91B: 20 34 AD  JSR sub_AD34
C - - - - - 0x00692E 01:A91E: A9 00     LDA #$00
; bzk optimize, useless LDA + STA, will be overwritten at 0x00BAEF
C - - - - - 0x006930 01:A920: 85 08     STA ram_0008_t059_useless
C - - - - - 0x006932 01:A922: 20 98 A7  JSR sub_A798
C - - - - - 0x006935 01:A925: A5 08     LDA ram_0008_t058_counter
C - - - - - 0x006937 01:A927: C9 09     CMP #$09
C - - - - - 0x006939 01:A929: B0 04     BCS bra_A92F
; bzk optimize, JMP
C - - - - - 0x00693B 01:A92B: 20 45 A9  JSR sub_A945
C - - - - - 0x00693E 01:A92E: 60        RTS
bra_A92F:
C - - - - - 0x00693F 01:A92F: 20 88 AE  JSR sub_AE88_prepare_horisontal_nametable_mapping
C - - - - - 0x006942 01:A932: A9 1E     LDA #con_irq_1E
C - - - - - 0x006944 01:A934: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x006946 01:A936: A9 80     LDA #$80
C - - - - - 0x006948 01:A938: 85 40     STA ram_for_5204
C - - - - - 0x00694A 01:A93A: A9 01     LDA #$01
C - - - - - 0x00694C 01:A93C: 8D 8F 07  STA ram_078F
C - - - - - 0x00694F 01:A93F: EE EC 07  INC ram_07EC
C - - - - - 0x006952 01:A942: 4C 9B A8  JMP loc_A89B



sub_A945:
ofs_056_A945_09:
C - - - - - 0x006955 01:A945: 20 8D AE  JSR sub_AE8D
C - - - - - 0x006958 01:A948: D0 17     BNE bra_A961_RTS
C - - - - - 0x00695A 01:A94A: AD EF 07  LDA ram_07EF
C - - - - - 0x00695D 01:A94D: 30 12     BMI bra_A961_RTS
C - - - - - 0x00695F 01:A94F: A2 00     LDX #$00
C - - - - - 0x006961 01:A951: 20 A2 AE  JSR sub_AEA2
C - - - - - 0x006964 01:A954: A9 08     LDA #$08
C - - - - - 0x006966 01:A956: 8D ED 07  STA ram_07ED
C - - - - - 0x006969 01:A959: A9 00     LDA #$00
C - - - - - 0x00696B 01:A95B: 8D EE 07  STA ram_07EE
C - - - - - 0x00696E 01:A95E: CE EF 07  DEC ram_07EF
bra_A961_RTS:
C - - - - - 0x006971 01:A961: 60        RTS



ofs_056_A962_0A:
C - - J - - 0x006972 01:A962: 20 34 AD  JSR sub_AD34
bra_A965:
C - - - - - 0x006975 01:A965: A9 00     LDA #$00
C - - - - - 0x006977 01:A967: 8D EF 07  STA ram_07EF
C - - - - - 0x00697A 01:A96A: 8D F0 07  STA ram_07F0
C - - - - - 0x00697D 01:A96D: 8D F1 07  STA ram_07F1
C - - - - - 0x006980 01:A970: 8D F2 07  STA ram_07F2
C - - - - - 0x006983 01:A973: 8D F3 07  STA ram_07F3
C - - - - - 0x006986 01:A976: 4C 9B A8  JMP loc_A89B



ofs_056_A979_0B:
C - - J - - 0x006989 01:A979: 20 34 AD  JSR sub_AD34
C - - - - - 0x00698C 01:A97C: A2 02     LDX #$02
C - - - - - 0x00698E 01:A97E: 20 80 A7  JSR sub_A780
C - - - - - 0x006991 01:A981: B0 E2     BCS bra_A965
C - - - - - 0x006993 01:A983: 60        RTS



ofs_056_A984_0C:
C - - J - - 0x006994 01:A984: 20 34 AD  JSR sub_AD34
C - - - - - 0x006997 01:A987: A2 00     LDX #$00
C - - - - - 0x006999 01:A989: 20 80 A7  JSR sub_A780
C - - - - - 0x00699C 01:A98C: B0 D7     BCS bra_A965
C - - - - - 0x00699E 01:A98E: 60        RTS



ofs_056_A98F_0D:
C - - J - - 0x00699F 01:A98F: 20 34 AD  JSR sub_AD34
C - - - - - 0x0069A2 01:A992: A5 FF     LDA ram_for_2000
C - - - - - 0x0069A4 01:A994: 09 02     ORA #$02
C - - - - - 0x0069A6 01:A996: 85 FF     STA ram_for_2000
C - - - - - 0x0069A8 01:A998: A2 10     LDX #$10
C - - - - - 0x0069AA 01:A99A: A9 02     LDA #$02
C - - - - - 0x0069AC 01:A99C: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0069AF 01:A99F: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x0069B1 01:A9A1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0069B4 01:A9A4: A9 00     LDA #$00
C - - - - - 0x0069B6 01:A9A6: 8D EF 07  STA ram_07EF
C - - - - - 0x0069B9 01:A9A9: 8D F0 07  STA ram_07F0
C - - - - - 0x0069BC 01:A9AC: A9 7B     LDA #con__chr_bank + $7B
C - - - - - 0x0069BE 01:A9AE: 85 49     STA ram_chr_bank_5123
C - - - - - 0x0069C0 01:A9B0: 20 3C E3  JSR sub_0x03E34C_write_chr_banks___5120_5121_5122_5123_5125
C - - - - - 0x0069C3 01:A9B3: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x0069C5 01:A9B5: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0069C8 01:A9B8: A9 DA     LDA #$DA
C - - - - - 0x0069CA 01:A9BA: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0069CD 01:A9BD: A9 00     LDA #$00
C - - - - - 0x0069CF 01:A9BF: 8D 86 07  STA ram_0786
C - - - - - 0x0069D2 01:A9C2: 8D 93 07  STA ram_0793
C - - - - - 0x0069D5 01:A9C5: 8D 87 07  STA ram_0787
C - - - - - 0x0069D8 01:A9C8: 8D 88 07  STA ram_0788
C - - - - - 0x0069DB 01:A9CB: 4C 9B A8  JMP loc_A89B



ofs_056_A9CE_0E:
C - - J - - 0x0069DE 01:A9CE: 20 34 AD  JSR sub_AD34
C - - - - - 0x0069E1 01:A9D1: A5 10     LDA ram_0010_t006_flag
C - - - - - 0x0069E3 01:A9D3: D0 01     BNE bra_A9D6
C - - - - - 0x0069E5 01:A9D5: 60        RTS
bra_A9D6:
C - - - - - 0x0069E6 01:A9D6: 4C 9B A8  JMP loc_A89B



ofs_056_A9D9_0F:
C - - J - - 0x0069E9 01:A9D9: 20 34 AD  JSR sub_AD34
C - - - - - 0x0069EC 01:A9DC: A5 FF     LDA ram_for_2000
C - - - - - 0x0069EE 01:A9DE: 29 FD     AND #$FD
C - - - - - 0x0069F0 01:A9E0: 85 FF     STA ram_for_2000
C - - - - - 0x0069F2 01:A9E2: 20 8D AE  JSR sub_AE8D
C - - - - - 0x0069F5 01:A9E5: D0 19     BNE bra_AA00_RTS
C - - - - - 0x0069F7 01:A9E7: A2 02     LDX #$02
C - - - - - 0x0069F9 01:A9E9: 20 A2 AE  JSR sub_AEA2
C - - - - - 0x0069FC 01:A9EC: A9 08     LDA #$08
C - - - - - 0x0069FE 01:A9EE: 8D ED 07  STA ram_07ED
C - - - - - 0x006A01 01:A9F1: A9 00     LDA #$00
C - - - - - 0x006A03 01:A9F3: 8D EE 07  STA ram_07EE
C - - - - - 0x006A06 01:A9F6: EE EF 07  INC ram_07EF
C - - - - - 0x006A09 01:A9F9: AD EF 07  LDA ram_07EF
C - - - - - 0x006A0C 01:A9FC: C9 04     CMP #$04
C - - - - - 0x006A0E 01:A9FE: F0 01     BEQ bra_AA01
bra_AA00_RTS:
C - - - - - 0x006A10 01:AA00: 60        RTS
bra_AA01:
C - - - - - 0x006A11 01:AA01: A9 48     LDA #$48
C - - - - - 0x006A13 01:AA03: 8D 80 07  STA ram_0780
C - - - - - 0x006A16 01:AA06: A9 00     LDA #$00
C - - - - - 0x006A18 01:AA08: 8D 81 07  STA ram_0781
C - - - - - 0x006A1B 01:AA0B: 4C 9B A8  JMP loc_A89B



ofs_056_AA0E_10:
; bzk optimize
C - - J - - 0x006A1E 01:AA0E: 4C 7A AA  JMP loc_AA7A



ofs_056_AA11_11:
C - - J - - 0x006A21 01:AA11: 20 34 AD  JSR sub_AD34
C - - - - - 0x006A24 01:AA14: A2 06     LDX #$06
loc_AA16:
C D 1 - - - 0x006A26 01:AA16: AD F0 07  LDA ram_07F0
C - - - - - 0x006A29 01:AA19: 29 01     AND #$01
C - - - - - 0x006A2B 01:AA1B: D0 06     BNE bra_AA23
C - - - - - 0x006A2D 01:AA1D: 20 84 A7  JSR sub_A784
C - - - - - 0x006A30 01:AA20: 4C 3C AA  JMP loc_AA3C
bra_AA23:
C - - - - - 0x006A33 01:AA23: 20 9C A7  JSR sub_A79C_print_intro_text
C - - - - - 0x006A36 01:AA26: EE EF 07  INC ram_07EF
C - - - - - 0x006A39 01:AA29: AD EF 07  LDA ram_07EF
C - - - - - 0x006A3C 01:AA2C: C9 20     CMP #$20
C - - - - - 0x006A3E 01:AA2E: D0 0C     BNE bra_AA3C
bra_AA30:
C - - - - - 0x006A40 01:AA30: A9 00     LDA #$00
C - - - - - 0x006A42 01:AA32: 8D 83 07  STA ram_0783
C - - - - - 0x006A45 01:AA35: A9 01     LDA #$01
C - - - - - 0x006A47 01:AA37: 85 FC     STA ram_scroll_Y
C - - - - - 0x006A49 01:AA39: 4C 83 AA  JMP loc_AA83
bra_AA3C:
loc_AA3C:
C D 1 - - - 0x006A4C 01:AA3C: EE F0 07  INC ram_07F0
C - - - - - 0x006A4F 01:AA3F: 60        RTS



ofs_056_AA40_12:
C - - J - - 0x006A50 01:AA40: 20 34 AD  JSR sub_AD34
C - - - - - 0x006A53 01:AA43: 20 22 AF  JSR sub_AF22
C - - - - - 0x006A56 01:AA46: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006A58 01:AA48: D0 03     BNE bra_AA4D_RTS
C - - - - - 0x006A5A 01:AA4A: 4C 9B A8  JMP loc_A89B
bra_AA4D_RTS:
C - - - - - 0x006A5D 01:AA4D: 60        RTS



ofs_056_AA4E_13:
C - - J - - 0x006A5E 01:AA4E: 20 7A AA  JSR sub_AA7A
ofs_056_AA51_14:
C - - - - - 0x006A61 01:AA51: 20 34 AD  JSR sub_AD34
C - - - - - 0x006A64 01:AA54: 20 22 AF  JSR sub_AF22
C - - - - - 0x006A67 01:AA57: A2 08     LDX #$08
C - - - - - 0x006A69 01:AA59: AD 83 07  LDA ram_0783
C - - - - - 0x006A6C 01:AA5C: 85 00     STA ram_0000_t0E3
C - - - - - 0x006A6E 01:AA5E: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006A70 01:AA60: F0 CE     BEQ bra_AA30
C - - - - - 0x006A72 01:AA62: 29 FC     AND #$FC
C - - - - - 0x006A74 01:AA64: C5 00     CMP ram_0000_t0E3
C - - - - - 0x006A76 01:AA66: 8D 83 07  STA ram_0783
C - - - - - 0x006A79 01:AA69: F0 03     BEQ bra_AA6E_RTS
C - - - - - 0x006A7B 01:AA6B: 4C 16 AA  JMP loc_AA16
bra_AA6E_RTS:
C - - - - - 0x006A7E 01:AA6E: 60        RTS



ofs_056_AA6F_15:
C - - J - - 0x006A7F 01:AA6F: A2 00     LDX #$00
C - - - - - 0x006A81 01:AA71: 20 7C AC  JSR sub_AC7C
C - - - - - 0x006A84 01:AA74: 20 7A AA  JSR sub_AA7A
C - - - - - 0x006A87 01:AA77: 4C 94 AA  JMP loc_AA94



loc_AA7A:
sub_AA7A:
C D 1 - - - 0x006A8A 01:AA7A: A9 00     LDA #$00
C - - - - - 0x006A8C 01:AA7C: 8D 83 07  STA ram_0783
C - - - - - 0x006A8F 01:AA7F: A9 01     LDA #$01
C - - - - - 0x006A91 01:AA81: 85 FC     STA ram_scroll_Y
loc_AA83:
C D 1 - - - 0x006A93 01:AA83: A9 00     LDA #$00
C - - - - - 0x006A95 01:AA85: 8D EF 07  STA ram_07EF
C - - - - - 0x006A98 01:AA88: 8D F0 07  STA ram_07F0
C - - - - - 0x006A9B 01:AA8B: 8D F1 07  STA ram_07F1
C - - - - - 0x006A9E 01:AA8E: 8D F2 07  STA ram_07F2
C - - - - - 0x006AA1 01:AA91: 4C 9B A8  JMP loc_A89B



loc_AA94:
ofs_056_AA94_16:
C D 1 - - - 0x006AA4 01:AA94: 20 34 AD  JSR sub_AD34
C - - - - - 0x006AA7 01:AA97: 20 22 AF  JSR sub_AF22
C - - - - - 0x006AAA 01:AA9A: A2 00     LDX #$00
C - - - - - 0x006AAC 01:AA9C: 4C D1 AA  JMP loc_AAD1



loc_AA9F:
C D 1 - - - 0x006AAF 01:AA9F: AD F0 07  LDA ram_07F0
C - - - - - 0x006AB2 01:AAA2: 29 01     AND #$01
C - - - - - 0x006AB4 01:AAA4: D0 06     BNE bra_AAAC
C - - - - - 0x006AB6 01:AAA6: 20 84 A7  JSR sub_A784
C - - - - - 0x006AB9 01:AAA9: 4C C2 AA  JMP loc_AAC2
bra_AAAC:
C - - - - - 0x006ABC 01:AAAC: 20 9C A7  JSR sub_A79C_print_intro_text
C - - - - - 0x006ABF 01:AAAF: EE EF 07  INC ram_07EF
C - - - - - 0x006AC2 01:AAB2: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006AC4 01:AAB4: D0 0C     BNE bra_AAC2
C - - - - - 0x006AC6 01:AAB6: A9 00     LDA #$00
C - - - - - 0x006AC8 01:AAB8: 8D 83 07  STA ram_0783
C - - - - - 0x006ACB 01:AABB: A9 01     LDA #$01
C - - - - - 0x006ACD 01:AABD: 85 FC     STA ram_scroll_Y
C - - - - - 0x006ACF 01:AABF: 4C 83 AA  JMP loc_AA83
bra_AAC2:
loc_AAC2:
C D 1 - - - 0x006AD2 01:AAC2: EE F0 07  INC ram_07F0
C - - - - - 0x006AD5 01:AAC5: 60        RTS



ofs_056_AAC6_17:
C - - J - - 0x006AD6 01:AAC6: 20 7A AA  JSR sub_AA7A
ofs_056_AAC9_18:
C - - - - - 0x006AD9 01:AAC9: 20 34 AD  JSR sub_AD34
C - - - - - 0x006ADC 01:AACC: 20 22 AF  JSR sub_AF22
C - - - - - 0x006ADF 01:AACF: A2 02     LDX #$02
loc_AAD1:
C D 1 - - - 0x006AE1 01:AAD1: AD 83 07  LDA ram_0783
C - - - - - 0x006AE4 01:AAD4: 85 00     STA ram_0000_t0E4
C - - - - - 0x006AE6 01:AAD6: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006AE8 01:AAD8: 29 FC     AND #$FC
C - - - - - 0x006AEA 01:AADA: C5 00     CMP ram_0000_t0E4
C - - - - - 0x006AEC 01:AADC: 8D 83 07  STA ram_0783
C - - - - - 0x006AEF 01:AADF: F0 03     BEQ bra_AAE4_RTS
C - - - - - 0x006AF1 01:AAE1: 4C 9F AA  JMP loc_AA9F
bra_AAE4_RTS:
C - - - - - 0x006AF4 01:AAE4: 60        RTS



ofs_056_AAE5_19:
C - - J - - 0x006AF5 01:AAE5: A9 00     LDA #$00
C - - - - - 0x006AF7 01:AAE7: 8D 83 07  STA ram_0783
C - - - - - 0x006AFA 01:AAEA: A9 01     LDA #$01
C - - - - - 0x006AFC 01:AAEC: 85 FC     STA ram_scroll_Y
C - - - - - 0x006AFE 01:AAEE: 4C 9B A8  JMP loc_A89B



ofs_056_AAF1_1A:
C - - J - - 0x006B01 01:AAF1: 20 34 AD  JSR sub_AD34
C - - - - - 0x006B04 01:AAF4: 20 22 AF  JSR sub_AF22
C - - - - - 0x006B07 01:AAF7: A2 04     LDX #$04
C - - - - - 0x006B09 01:AAF9: 4C D1 AA  JMP loc_AAD1



ofs_056_AAFC_1B:
C - - J - - 0x006B0C 01:AAFC: A9 55     LDA #$55
C - - - - - 0x006B0E 01:AAFE: 85 25     STA ram_for_5105
C - - - - - 0x006B10 01:AB00: A9 80     LDA #$80
C - - - - - 0x006B12 01:AB02: 8D ED 07  STA ram_07ED
C - - - - - 0x006B15 01:AB05: A9 00     LDA #$00
C - - - - - 0x006B17 01:AB07: 8D EE 07  STA ram_07EE
C - - - - - 0x006B1A 01:AB0A: 8D 84 07  STA ram_0784
C - - - - - 0x006B1D 01:AB0D: 8D 85 07  STA ram_0785
bra_AB10:
C - - - - - 0x006B20 01:AB10: 4C 9B A8  JMP loc_A89B



ofs_056_AB13_1C:
C - - J - - 0x006B23 01:AB13: 20 8D AE  JSR sub_AE8D
C - - - - - 0x006B26 01:AB16: F0 F8     BEQ bra_AB10
sub_AB18:
C - - - - - 0x006B28 01:AB18: 20 D5 AB  JSR sub_ABD5
C - - - - - 0x006B2B 01:AB1B: 20 34 AD  JSR sub_AD34
; bzk optimize, JMP
C - - - - - 0x006B2E 01:AB1E: 20 22 AF  JSR sub_AF22
bra_AB21_RTS:
C - - - - - 0x006B31 01:AB21: 60        RTS



ofs_056_AB22_1D:
C - - J - - 0x006B32 01:AB22: 20 18 AB  JSR sub_AB18
C - - - - - 0x006B35 01:AB25: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006B37 01:AB27: D0 F8     BNE bra_AB21_RTS
C - - - - - 0x006B39 01:AB29: A9 00     LDA #$00
C - - - - - 0x006B3B 01:AB2B: 8D 80 07  STA ram_0780
C - - - - - 0x006B3E 01:AB2E: A9 02     LDA #$02
C - - - - - 0x006B40 01:AB30: 8D 81 07  STA ram_0781
C - - - - - 0x006B43 01:AB33: A9 00     LDA #$00
C - - - - - 0x006B45 01:AB35: 8D 84 07  STA ram_0784
C - - - - - 0x006B48 01:AB38: 8D 85 07  STA ram_0785
C - - - - - 0x006B4B 01:AB3B: E6 FC     INC ram_scroll_Y
C - - - - - 0x006B4D 01:AB3D: 4C 9B A8  JMP loc_A89B



ofs_056_AB40_1E:
C - - J - - 0x006B50 01:AB40: 20 CB AB  JSR sub_ABCB
C - - - - - 0x006B53 01:AB43: 20 34 AD  JSR sub_AD34
C - - - - - 0x006B56 01:AB46: 20 22 AF  JSR sub_AF22
C - - - - - 0x006B59 01:AB49: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006B5B 01:AB4B: 29 FE     AND #$FE
C - - - - - 0x006B5D 01:AB4D: D0 D2     BNE bra_AB21_RTS
C - - - - - 0x006B5F 01:AB4F: 4C 9B A8  JMP loc_A89B



ofs_056_AB52_1F:
C - - J - - 0x006B62 01:AB52: A9 00     LDA #$00
C - - - - - 0x006B64 01:AB54: 85 16     STA ram_0016_t00E_flag
C - - - - - 0x006B66 01:AB56: 20 34 AD  JSR sub_AD34
C - - - - - 0x006B69 01:AB59: A5 16     LDA ram_0016_t00E_flag
C - - - - - 0x006B6B 01:AB5B: F0 01     BEQ bra_AB5E
C - - - - - 0x006B6D 01:AB5D: 60        RTS
bra_AB5E:
C - - - - - 0x006B6E 01:AB5E: A9 44     LDA #$44    ; vertical nametable mapping
C - - - - - 0x006B70 01:AB60: 85 25     STA ram_for_5105
C - - - - - 0x006B72 01:AB62: 4C 9B A8  JMP loc_A89B



ofs_056_AB65_20:
C - - J - - 0x006B75 01:AB65: A9 00     LDA #$00
C - - - - - 0x006B77 01:AB67: 85 19     STA ram_0019_subscript
C - - - - - 0x006B79 01:AB69: A5 FF     LDA ram_for_2000
C - - - - - 0x006B7B 01:AB6B: 29 F0     AND #$F0
C - - - - - 0x006B7D 01:AB6D: 85 FF     STA ram_for_2000
; bzk optimize, JMP
C - - - - - 0x006B7F 01:AB6F: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x006B82 01:AB72: 60        RTS



sub_AB73:
C - - - - - 0x006B83 01:AB73: A2 00     LDX #$00
bra_AB75_loop:
C - - - - - 0x006B85 01:AB75: A9 01     LDA #$01
C - - - - - 0x006B87 01:AB77: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x006B8A 01:AB7A: A9 14     LDA #con_obj_type_14
C - - - - - 0x006B8C 01:AB7C: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x006B8F 01:AB7F: A9 10     LDA #$10
C - - - - - 0x006B91 01:AB81: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x006B94 01:AB84: 8A        TXA
C - - - - - 0x006B95 01:AB85: 0A        ASL
C - - - - - 0x006B96 01:AB86: A8        TAY
C - - - - - 0x006B97 01:AB87: B9 AB AB  LDA tbl_ABAB,Y
C - - - - - 0x006B9A 01:AB8A: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x006B9D 01:AB8D: B9 AC AB  LDA tbl_ABAB + $01,Y
; bzk optimize, A is always 01
; con_obj_flag_01
C - - - - - 0x006BA0 01:AB90: 09 80     ORA #con_obj_flag_not_visible
C - - - - - 0x006BA2 01:AB92: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x006BA5 01:AB95: E0 08     CPX #$08
C - - - - - 0x006BA7 01:AB97: 90 07     BCC bra_ABA0
C - - - - - 0x006BA9 01:AB99: A9 F0     LDA #$F0
C - - - - - 0x006BAB 01:AB9B: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x006BAE 01:AB9E: D0 05     BNE bra_ABA5    ; jmp
bra_ABA0:
C - - - - - 0x006BB0 01:ABA0: A9 10     LDA #$10
C - - - - - 0x006BB2 01:ABA2: 9D 38 04  STA ram_obj_pos_X_lo,X
bra_ABA5:
C - - - - - 0x006BB5 01:ABA5: E8        INX
C - - - - - 0x006BB6 01:ABA6: E0 10     CPX #$10
C - - - - - 0x006BB8 01:ABA8: D0 CB     BNE bra_AB75_loop
C - - - - - 0x006BBA 01:ABAA: 60        RTS



tbl_ABAB:
; bzk optimize, 2nd bytes are the same
;                                              +---------- pos_Y_lo
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x006BBB 01:ABAB: 00        .byte $00, $01   ; 00 
- D 1 - - - 0x006BBD 01:ABAD: 20        .byte $20, $01   ; 01 
- D 1 - - - 0x006BBF 01:ABAF: 40        .byte $40, $01   ; 02 
- D 1 - - - 0x006BC1 01:ABB1: 60        .byte $60, $01   ; 03 
- D 1 - - - 0x006BC3 01:ABB3: 80        .byte $80, $01   ; 04 
- D 1 - - - 0x006BC5 01:ABB5: A0        .byte $A0, $01   ; 05 
- D 1 - - - 0x006BC7 01:ABB7: C0        .byte $C0, $01   ; 06 
- D 1 - - - 0x006BC9 01:ABB9: E0        .byte $E0, $01   ; 07 
- D 1 - - - 0x006BCB 01:ABBB: 00        .byte $00, $01   ; 08 
- D 1 - - - 0x006BCD 01:ABBD: 20        .byte $20, $01   ; 09 
- D 1 - - - 0x006BCF 01:ABBF: 40        .byte $40, $01   ; 0A 
- D 1 - - - 0x006BD1 01:ABC1: 60        .byte $60, $01   ; 0B 
- D 1 - - - 0x006BD3 01:ABC3: 80        .byte $80, $01   ; 0C 
- D 1 - - - 0x006BD5 01:ABC5: A0        .byte $A0, $01   ; 0D 
- D 1 - - - 0x006BD7 01:ABC7: C0        .byte $C0, $01   ; 0E 
- D 1 - - - 0x006BD9 01:ABC9: E0        .byte $E0, $01   ; 0F 



sub_ABCB:
C - - - - - 0x006BDB 01:ABCB: A9 00     LDA #$00
C - - - - - 0x006BDD 01:ABCD: 85 17     STA ram_0017_t004_flag
C - - - - - 0x006BDF 01:ABCF: A9 20     LDA #$20
C - - - - - 0x006BE1 01:ABD1: 85 08     STA ram_0008_t044_ppu_addr_hi
C - - - - - 0x006BE3 01:ABD3: D0 0E     BNE bra_ABE3    ; jmp



sub_ABD5:
C - - - - - 0x006BE5 01:ABD5: A9 20     LDA #$20
C - - - - - 0x006BE7 01:ABD7: 85 08     STA ram_0008_t044_ppu_addr_hi
C - - - - - 0x006BE9 01:ABD9: D0 04     BNE bra_ABDF    ; jmp



sub_ABDB:
C - - - - - 0x006BEB 01:ABDB: A9 28     LDA #$28
C - - - - - 0x006BED 01:ABDD: 85 08     STA ram_0008_t044_ppu_addr_hi
bra_ABDF:
C - - - - - 0x006BEF 01:ABDF: A9 01     LDA #$01
C - - - - - 0x006BF1 01:ABE1: 85 17     STA ram_0017_t004_flag
bra_ABE3:
C - - - - - 0x006BF3 01:ABE3: AD 83 07  LDA ram_0783
; bzk optimize, write code without ram_0000_t07E
C - - - - - 0x006BF6 01:ABE6: 85 00     STA ram_0000_t07E
C - - - - - 0x006BF8 01:ABE8: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006BFA 01:ABEA: 29 F8     AND #$F8
C - - - - - 0x006BFC 01:ABEC: C5 00     CMP ram_0000_t07E
C - - - - - 0x006BFE 01:ABEE: 8D 83 07  STA ram_0783
C - - - - - 0x006C01 01:ABF1: F0 5A     BEQ bra_AC4D_RTS
C - - - - - 0x006C03 01:ABF3: AC 84 07  LDY ram_0784
C - - - - - 0x006C06 01:ABF6: AD 85 07  LDA ram_0785
C - - - - - 0x006C09 01:ABF9: D0 0A     BNE bra_AC05
C - - - - - 0x006C0B 01:ABFB: B9 53 AC  LDA tbl_AC53,Y
C - - - - - 0x006C0E 01:ABFE: C9 FE     CMP #$FE
C - - - - - 0x006C10 01:AC00: F0 4B     BEQ bra_AC4D_RTS
C - - - - - 0x006C12 01:AC02: 8D 85 07  STA ram_0785
bra_AC05:
C - - - - - 0x006C15 01:AC05: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x006C17 01:AC07: A9 01     LDA #$01
C - - - - - 0x006C19 01:AC09: 20 4E AC  JSR sub_AC4E_write_to_buffer_and_INX
C - - - - - 0x006C1C 01:AC0C: A9 00     LDA #$00
C - - - - - 0x006C1E 01:AC0E: 85 01     STA ram_0001_t031
C - - - - - 0x006C20 01:AC10: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006C22 01:AC12: 29 F8     AND #$F8
; * 04
C - - - - - 0x006C24 01:AC14: 0A        ASL
C - - - - - 0x006C25 01:AC15: 26 01     ROL ram_0001_t031
C - - - - - 0x006C27 01:AC17: 0A        ASL
C - - - - - 0x006C28 01:AC18: 26 01     ROL ram_0001_t031
C - - - - - 0x006C2A 01:AC1A: 20 4E AC  JSR sub_AC4E_write_to_buffer_and_INX
C - - - - - 0x006C2D 01:AC1D: A5 01     LDA ram_0001_t031
C - - - - - 0x006C2F 01:AC1F: 05 08     ORA ram_0008_t044_ppu_addr_hi
C - - - - - 0x006C31 01:AC21: 20 4E AC  JSR sub_AC4E_write_to_buffer_and_INX
bra_AC24:
C - - - - - 0x006C34 01:AC24: C8        INY
C - - - - - 0x006C35 01:AC25: B9 53 AC  LDA tbl_AC53,Y
C - - - - - 0x006C38 01:AC28: C9 FF     CMP #$FF
C - - - - - 0x006C3A 01:AC2A: F0 13     BEQ bra_AC3F_FF
C - - - - - 0x006C3C 01:AC2C: 85 00     STA ram_0000_t07D
C - - - - - 0x006C3E 01:AC2E: C8        INY
C - - - - - 0x006C3F 01:AC2F: A5 17     LDA ram_0017_t004_flag
C - - - - - 0x006C41 01:AC31: F0 03     BEQ bra_AC36
C - - - - - 0x006C43 01:AC33: B9 53 AC  LDA tbl_AC53,Y
bra_AC36:
C - - - - - 0x006C46 01:AC36: 20 4E AC  JSR sub_AC4E_write_to_buffer_and_INX
C - - - - - 0x006C49 01:AC39: C6 00     DEC ram_0000_t07D
C - - - - - 0x006C4B 01:AC3B: D0 F9     BNE bra_AC36
C - - - - - 0x006C4D 01:AC3D: F0 E5     BEQ bra_AC24    ; jmp
bra_AC3F_FF:
C - - - - - 0x006C4F 01:AC3F: 20 4E AC  JSR sub_AC4E_write_to_buffer_and_INX
C - - - - - 0x006C52 01:AC42: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x006C54 01:AC44: CE 85 07  DEC ram_0785
C - - - - - 0x006C57 01:AC47: D0 04     BNE bra_AC4D_RTS
C - - - - - 0x006C59 01:AC49: C8        INY
C - - - - - 0x006C5A 01:AC4A: 8C 84 07  STY ram_0784
bra_AC4D_RTS:
C - - - - - 0x006C5D 01:AC4D: 60        RTS



sub_AC4E_write_to_buffer_and_INX:
; bzk same code as 0x004366
C - - - - - 0x006C5E 01:AC4E: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x006C61 01:AC51: E8        INX
C - - - - - 0x006C62 01:AC52: 60        RTS



tbl_AC53:
; control bytes FE FF
- D 1 - - - 0x006C63 01:AC53: 01        .byte $01   ; 
- D 1 - - - 0x006C64 01:AC54: 20        .byte $20   ; 
- D 1 - - - 0x006C65 01:AC55: 00        .byte $00   ; 
- D 1 - - - 0x006C66 01:AC56: FF        .byte $FF   ; FF
- D 1 - - - 0x006C67 01:AC57: 01        .byte $01   ; 
- D 1 - - - 0x006C68 01:AC58: 04        .byte $04   ; 
- D 1 - - - 0x006C69 01:AC59: 00        .byte $00   ; 
- D 1 - - - 0x006C6A 01:AC5A: 18        .byte $18   ; 
- D 1 - - - 0x006C6B 01:AC5B: 6E        .byte $6E   ; 
- D 1 - - - 0x006C6C 01:AC5C: 04        .byte $04   ; 
- D 1 - - - 0x006C6D 01:AC5D: 00        .byte $00   ; 
- D 1 - - - 0x006C6E 01:AC5E: FF        .byte $FF   ; FF
- D 1 - - - 0x006C6F 01:AC5F: 19        .byte $19   ; 
- D 1 - - - 0x006C70 01:AC60: 03        .byte $03   ; 
- D 1 - - - 0x006C71 01:AC61: 00        .byte $00   ; 
- D 1 - - - 0x006C72 01:AC62: 01        .byte $01   ; 
- D 1 - - - 0x006C73 01:AC63: 6D        .byte $6D   ; 
- D 1 - - - 0x006C74 01:AC64: 17        .byte $17   ; 
- D 1 - - - 0x006C75 01:AC65: 00        .byte $00   ; 
- D 1 - - - 0x006C76 01:AC66: 01        .byte $01   ; 
- D 1 - - - 0x006C77 01:AC67: 6D        .byte $6D   ; 
- D 1 - - - 0x006C78 01:AC68: 04        .byte $04   ; 
- D 1 - - - 0x006C79 01:AC69: 00        .byte $00   ; 
- D 1 - - - 0x006C7A 01:AC6A: FF        .byte $FF   ; FF
- D 1 - - - 0x006C7B 01:AC6B: 01        .byte $01   ; 
- D 1 - - - 0x006C7C 01:AC6C: 03        .byte $03   ; 
- D 1 - - - 0x006C7D 01:AC6D: 00        .byte $00   ; 
- D 1 - - - 0x006C7E 01:AC6E: 01        .byte $01   ; 
- D 1 - - - 0x006C7F 01:AC6F: 6D        .byte $6D   ; 
- D 1 - - - 0x006C80 01:AC70: 17        .byte $17   ; 
- D 1 - - - 0x006C81 01:AC71: 6E        .byte $6E   ; 
- D 1 - - - 0x006C82 01:AC72: 01        .byte $01   ; 
- D 1 - - - 0x006C83 01:AC73: 6F        .byte $6F   ; 
- D 1 - - - 0x006C84 01:AC74: 04        .byte $04   ; 
- D 1 - - - 0x006C85 01:AC75: 00        .byte $00   ; 
- D 1 - - - 0x006C86 01:AC76: FF        .byte $FF   ; FF
- D 1 - - - 0x006C87 01:AC77: 02        .byte $02   ; 
- D 1 - - - 0x006C88 01:AC78: 20        .byte $20   ; 
- D 1 - - - 0x006C89 01:AC79: 00        .byte $00   ; 
- D 1 - - - 0x006C8A 01:AC7A: FF        .byte $FF   ; FF
- D 1 - - - 0x006C8B 01:AC7B: FE        .byte $FE   ; FE



sub_AC7C:
C - - - - - 0x006C8C 01:AC7C: A0 00     LDY #$00
C - - - - - 0x006C8E 01:AC7E: BD D3 AC  LDA tbl_ACD3_palette,X
C - - - - - 0x006C91 01:AC81: 85 00     STA ram_0000_t01E_data
C - - - - - 0x006C93 01:AC83: BD D4 AC  LDA tbl_ACD3_palette + $01,X
C - - - - - 0x006C96 01:AC86: 85 01     STA ram_0000_t01E_data + $01
C - - - - - 0x006C98 01:AC88: A6 1D     LDX ram_index_ppu_buffer
loc_AC8A_loop:
C - - - - - 0x006C9A 01:AC8A: A9 01     LDA #$01
C - - - - - 0x006C9C 01:AC8C: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
C - - - - - 0x006C9F 01:AC8F: 20 C6 AC  JSR sub_ACC6_write_color_to_ppu_buffer
C - - - - - 0x006CA2 01:AC92: 20 C6 AC  JSR sub_ACC6_write_color_to_ppu_buffer
loc_AC95_loop:
C D 1 - - - 0x006CA5 01:AC95: A9 0F     LDA #$0F
C - - - - - 0x006CA7 01:AC97: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
C - - - - - 0x006CAA 01:AC9A: A9 03     LDA #$03
C - - - - - 0x006CAC 01:AC9C: 85 02     STA ram_0002_t023
bra_AC9E_loop:
C - - - - - 0x006CAE 01:AC9E: 20 C6 AC  JSR sub_ACC6_write_color_to_ppu_buffer
C - - - - - 0x006CB1 01:ACA1: C6 02     DEC ram_0002_t023
C - - - - - 0x006CB3 01:ACA3: D0 F9     BNE bra_AC9E_loop
C - - - - - 0x006CB5 01:ACA5: B1 00     LDA (ram_0000_t01E_data),Y
C - - - - - 0x006CB7 01:ACA7: C9 FE     CMP #$FE
C - - - - - 0x006CB9 01:ACA9: F0 0E     BEQ bra_ACB9_FE
C - - - - - 0x006CBB 01:ACAB: C9 FF     CMP #$FF
C - - - - - 0x006CBD 01:ACAD: F0 03     BEQ bra_ACB2_FF
C - - - - - 0x006CBF 01:ACAF: 4C 95 AC  JMP loc_AC95_loop
bra_ACB2_FF:
- - - - - - 0x006CC2 01:ACB2: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
- - - - - - 0x006CC5 01:ACB5: C8        INY
- - - - - - 0x006CC6 01:ACB6: 4C 8A AC  JMP loc_AC8A_loop
bra_ACB9_FE:
C - - - - - 0x006CC9 01:ACB9: A9 FF     LDA #$FF
C - - - - - 0x006CCB 01:ACBB: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
C - - - - - 0x006CCE 01:ACBE: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x006CD0 01:ACC0: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x006CD2 01:ACC2: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x006CD5 01:ACC5: 60        RTS



sub_ACC6_write_color_to_ppu_buffer:
C - - - - - 0x006CD6 01:ACC6: B1 00     LDA (ram_0000_t01E_data),Y
C - - - - - 0x006CD8 01:ACC8: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x006CDB 01:ACCB: E8        INX
C - - - - - 0x006CDC 01:ACCC: C8        INY
C - - - - - 0x006CDD 01:ACCD: 60        RTS



sub_ACCE_write_to_buffer_and_INX:
; bzk same code as 0x004366
C - - - - - 0x006CDE 01:ACCE: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x006CE1 01:ACD1: E8        INX
C - - - - - 0x006CE2 01:ACD2: 60        RTS



tbl_ACD3_palette:
- D 1 - - - 0x006CE3 01:ACD3: DD AC     .word off_ACDD_00
- D 1 - - - 0x006CE5 01:ACD5: 16 AD     .word off_AD16_01
- D 1 - - - 0x006CE7 01:ACD7: F8 AC     .word off_ACF8_02
- D 1 - - - 0x006CE9 01:ACD9: 07 AD     .word off_AD07_03
- D 1 - - - 0x006CEB 01:ACDB: 25 AD     .word off_AD25_04



off_ACDD_00:
- D 1 - I - 0x006CED 01:ACDD: 00 3F     .word $3F00 ; ppu address
; background
- D 1 - I - 0x006CEF 01:ACDF: 08        .byte $08, $17, $20   ; 
- D 1 - I - 0x006CF2 01:ACE2: 04        .byte $04, $25, $20   ; 
- D 1 - I - 0x006CF5 01:ACE5: 08        .byte $08, $28, $20   ; 
- D 1 - I - 0x006CF8 01:ACE8: 0F        .byte $0F, $01, $20   ; 
; sprites
- D 1 - I - 0x006CFB 01:ACEB: 0F        .byte $0F, $17, $38   ; 
- D 1 - I - 0x006CFE 01:ACEE: 04        .byte $04, $25, $38   ; 
- D 1 - I - 0x006D01 01:ACF1: 08        .byte $08, $28, $38   ; 
- D 1 - I - 0x006D04 01:ACF4: 0F        .byte $0F, $01, $38   ; 

- D 1 - I - 0x006D07 01:ACF7: FE        .byte $FE   ; end token



off_ACF8_02:
- D 1 - I - 0x006D08 01:ACF8: 00 3F     .word $3F00 ; ppu address
- D 1 - I - 0x006D0A 01:ACFA: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D0D 01:ACFD: 2C        .byte $2C, $1B, $30   ; 
- D 1 - I - 0x006D10 01:AD00: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D13 01:AD03: 0F        .byte $0F, $0F, $0F   ; 

- D 1 - I - 0x006D16 01:AD06: FE        .byte $FE   ; end token



off_AD07_03:
- D 1 - I - 0x006D17 01:AD07: 00 3F     .word $3F00 ; ppu address
- D 1 - I - 0x006D19 01:AD09: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D1C 01:AD0C: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D1F 01:AD0F: 2C        .byte $2C, $1B, $30   ; 
- D 1 - I - 0x006D22 01:AD12: 0F        .byte $0F, $0F, $0F   ; 

- D 1 - I - 0x006D25 01:AD15: FE        .byte $FE   ; end token



off_AD16_01:
- D 1 - I - 0x006D26 01:AD16: 00 3F     .word $3F00 ; ppu address
- D 1 - I - 0x006D28 01:AD18: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D2B 01:AD1B: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D2E 01:AD1E: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D31 01:AD21: 2C        .byte $2C, $1B, $30   ; 

- D 1 - I - 0x006D34 01:AD24: FE        .byte $FE   ; end token



off_AD25_04:
- D 1 - I - 0x006D35 01:AD25: 00 3F     .word $3F00 ; ppu address
- D 1 - I - 0x006D37 01:AD27: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D3A 01:AD2A: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D3D 01:AD2D: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x006D40 01:AD30: 0F        .byte $0F, $0F, $0F   ; 

- D 1 - I - 0x006D43 01:AD33: FE        .byte $FE   ; end token



sub_AD34:
C - - - - - 0x006D44 01:AD34: A2 00     LDX #$00
bra_AD36_loop:
C - - - - - 0x006D46 01:AD36: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x006D49 01:AD39: F0 0F     BEQ bra_AD4A
C - - - - - 0x006D4B 01:AD3B: 0A        ASL
C - - - - - 0x006D4C 01:AD3C: A8        TAY
C - - - - - 0x006D4D 01:AD3D: B9 50 AD  LDA tbl_AD50,Y
C - - - - - 0x006D50 01:AD40: 85 00     STA ram_0000_t027_jmp
C - - - - - 0x006D52 01:AD42: B9 51 AD  LDA tbl_AD50 + $01,Y
C - - - - - 0x006D55 01:AD45: 85 01     STA ram_0000_t027_jmp + $01
C - - - - - 0x006D57 01:AD47: 20 E0 A7  JSR sub_A7E0_indirect_jump
bra_AD4A:
C - - - - - 0x006D5A 01:AD4A: E8        INX
C - - - - - 0x006D5B 01:AD4B: E0 12     CPX #$12
C - - - - - 0x006D5D 01:AD4D: D0 E7     BNE bra_AD36_loop
C - - - - - 0x006D5F 01:AD4F: 60        RTS



tbl_AD50:
- - - - - - 0x006D60 01:AD50: 56 AD     .word ofs_057_AD56_00_RTS   ; unused 0x006D49
- D 1 - - - 0x006D62 01:AD52: 05 AE     .word ofs_057_AE05_01
- D 1 - - - 0x006D64 01:AD54: 57 AD     .word ofs_057_AD57_02



ofs_057_AD56_00_RTS:
; bzk garbage
- - - - - - 0x006D66 01:AD56: 60        RTS



ofs_057_AD57_02:
C - - J - - 0x006D67 01:AD57: A9 00     LDA #$00
C - - - - - 0x006D69 01:AD59: 85 10     STA ram_0010_t006_flag
C - - - - - 0x006D6B 01:AD5B: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x006D6E 01:AD5E: F0 04     BEQ bra_AD64
C - - - - - 0x006D70 01:AD60: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x006D73 01:AD63: 60        RTS
bra_AD64:
C - - - - - 0x006D74 01:AD64: AD F0 07  LDA ram_07F0
C - - - - - 0x006D77 01:AD67: 0A        ASL
C - - - - - 0x006D78 01:AD68: A8        TAY
C - - - - - 0x006D79 01:AD69: B9 D8 AD  LDA tbl_ADD8,Y
C - - - - - 0x006D7C 01:AD6C: F0 4D     BEQ bra_ADBB_00
C - - - - - 0x006D7E 01:AD6E: C9 FF     CMP #$FF
C - - - - - 0x006D80 01:AD70: D0 10     BNE bra_AD82
; FF
C - - - - - 0x006D82 01:AD72: A9 01     LDA #$01
C - - - - - 0x006D84 01:AD74: 85 10     STA ram_0010_t006_flag
C - - - - - 0x006D86 01:AD76: A9 00     LDA #$00
C - - - - - 0x006D88 01:AD78: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x006D8B 01:AD7B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x006D8E 01:AD7E: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x006D91 01:AD81: 60        RTS
bra_AD82:
C - - - - - 0x006D92 01:AD82: C9 04     CMP #$04
C - - - - - 0x006D94 01:AD84: 90 15     BCC bra_AD9B
C - - - - - 0x006D96 01:AD86: 38        SEC
C - - - - - 0x006D97 01:AD87: E9 04     SBC #$04
C - - - - - 0x006D99 01:AD89: 48        PHA
C - - - - - 0x006D9A 01:AD8A: 20 C9 AD  JSR sub_ADC9
C - - - - - 0x006D9D 01:AD8D: 68        PLA
C - - - - - 0x006D9E 01:AD8E: 86 12     STX ram_0012_t00E_save_X
C - - - - - 0x006DA0 01:AD90: AA        TAX
C - - - - - 0x006DA1 01:AD91: E8        INX
C - - - - - 0x006DA2 01:AD92: 8A        TXA
C - - - - - 0x006DA3 01:AD93: 0A        ASL
C - - - - - 0x006DA4 01:AD94: AA        TAX
C - - - - - 0x006DA5 01:AD95: 20 7C AC  JSR sub_AC7C
C - - - - - 0x006DA8 01:AD98: A6 12     LDX ram_0012_t00E_save_X
C - - - - - 0x006DAA 01:AD9A: 60        RTS
bra_AD9B:
C - - - - - 0x006DAB 01:AD9B: 38        SEC
C - - - - - 0x006DAC 01:AD9C: E9 01     SBC #$01
C - - - - - 0x006DAE 01:AD9E: 48        PHA
C - - - - - 0x006DAF 01:AD9F: 20 C9 AD  JSR sub_ADC9
C - - - - - 0x006DB2 01:ADA2: 68        PLA
C - - - - - 0x006DB3 01:ADA3: A8        TAY
C - - - - - 0x006DB4 01:ADA4: B9 FF AD  LDA tbl_ADFF_pos_X_lo,Y
C - - - - - 0x006DB7 01:ADA7: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x006DBA 01:ADAA: B9 02 AE  LDA tbl_AE02_pos_Y_lo,Y
C - - - - - 0x006DBD 01:ADAD: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x006DC0 01:ADB0: 29 40     AND #$40    ; con_obj_flag_40
C - - - - - 0x006DC2 01:ADB2: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x006DC5 01:ADB5: A9 2E     LDA #con_sound_thunder
; bzk optimize, JMP
C - - - - - 0x006DC7 01:ADB7: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x006DCA 01:ADBA: 60        RTS
bra_ADBB_00:
C - - - - - 0x006DCB 01:ADBB: 86 12     STX ram_0012_t00F_save_X
C - - - - - 0x006DCD 01:ADBD: A2 08     LDX #$08
C - - - - - 0x006DCF 01:ADBF: 20 7C AC  JSR sub_AC7C
C - - - - - 0x006DD2 01:ADC2: A6 12     LDX ram_0012_t00F_save_X
C - - - - - 0x006DD4 01:ADC4: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x006DD6 01:ADC6: 9D 70 04  STA ram_obj_flags,X
sub_ADC9:
C - - - - - 0x006DD9 01:ADC9: AD F0 07  LDA ram_07F0
C - - - - - 0x006DDC 01:ADCC: 0A        ASL
C - - - - - 0x006DDD 01:ADCD: A8        TAY
C - - - - - 0x006DDE 01:ADCE: B9 D9 AD  LDA tbl_ADD8 + $01,Y
C - - - - - 0x006DE1 01:ADD1: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x006DE4 01:ADD4: EE F0 07  INC ram_07F0
C - - - - - 0x006DE7 01:ADD7: 60        RTS



tbl_ADD8:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x006DE8 01:ADD8: 00        .byte $00, $10   ; 00 
- D 1 - - - 0x006DEA 01:ADDA: 01        .byte $01, $02   ; 01 
- D 1 - - - 0x006DEC 01:ADDC: 00        .byte $00, $02   ; 02 
- D 1 - - - 0x006DEE 01:ADDE: 04        .byte $04, $02   ; 03 
- D 1 - - - 0x006DF0 01:ADE0: 01        .byte $01, $02   ; 04 
- D 1 - - - 0x006DF2 01:ADE2: 00        .byte $00, $02   ; 05 
- D 1 - - - 0x006DF4 01:ADE4: 00        .byte $00, $20   ; 06 
- D 1 - - - 0x006DF6 01:ADE6: 02        .byte $02, $02   ; 07 
- D 1 - - - 0x006DF8 01:ADE8: 00        .byte $00, $02   ; 08 
- D 1 - - - 0x006DFA 01:ADEA: 05        .byte $05, $02   ; 09 
- D 1 - - - 0x006DFC 01:ADEC: 02        .byte $02, $02   ; 0A 
- D 1 - - - 0x006DFE 01:ADEE: 00        .byte $00, $02   ; 0B 
- D 1 - - - 0x006E00 01:ADF0: 00        .byte $00, $20   ; 0C 
- D 1 - - - 0x006E02 01:ADF2: 03        .byte $03, $02   ; 0D 
- D 1 - - - 0x006E04 01:ADF4: 00        .byte $00, $02   ; 0E 
- D 1 - - - 0x006E06 01:ADF6: 06        .byte $06, $02   ; 0F 
- D 1 - - - 0x006E08 01:ADF8: 03        .byte $03, $02   ; 10 
- D 1 - - - 0x006E0A 01:ADFA: 00        .byte $00, $02   ; 11 
- D 1 - - - 0x006E0C 01:ADFC: 00        .byte $00, $30   ; 12 
- D 1 - - - 0x006E0E 01:ADFE: FF        .byte $FF   ; 13 end token



tbl_ADFF_pos_X_lo:
- D 1 - - - 0x006E0F 01:ADFF: C0        .byte $C0   ; 
- D 1 - - - 0x006E10 01:AE00: 40        .byte $40   ; 
- D 1 - - - 0x006E11 01:AE01: 80        .byte $80   ; 



tbl_AE02_pos_Y_lo:
- D 1 - - - 0x006E12 01:AE02: 60        .byte $60   ; 
- D 1 - - - 0x006E13 01:AE03: 68        .byte $68   ; 
- D 1 - - - 0x006E14 01:AE04: 50        .byte $50   ; 



ofs_057_AE05_01:
C - - J - - 0x006E15 01:AE05: BD DB 04  LDA ram_obj_pos_Y_fr,X
C - - - - - 0x006E18 01:AE08: 38        SEC
C - - - - - 0x006E19 01:AE09: E9 00     SBC #$00
C - - - - - 0x006E1B 01:AE0B: 9D DB 04  STA ram_obj_pos_Y_fr,X
C - - - - - 0x006E1E 01:AE0E: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x006E21 01:AE11: E9 04     SBC #$04
C - - - - - 0x006E23 01:AE13: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x006E26 01:AE16: B0 0C     BCS bra_AE24
C - - - - - 0x006E28 01:AE18: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x006E2B 01:AE1B: 29 01     AND #con_obj_flag_01
C - - - - - 0x006E2D 01:AE1D: F0 05     BEQ bra_AE24
C - - - - - 0x006E2F 01:AE1F: A9 40     LDA #con_obj_flag_40
C - - - - - 0x006E31 01:AE21: 9D 70 04  STA ram_obj_flags,X
bra_AE24:
C - - - - - 0x006E34 01:AE24: AD EC 07  LDA ram_07EC
C - - - - - 0x006E37 01:AE27: C9 1F     CMP #$1F
C - - - - - 0x006E39 01:AE29: F0 2A     BEQ bra_AE55
C - - - - - 0x006E3B 01:AE2B: C9 08     CMP #$08
C - - - - - 0x006E3D 01:AE2D: D0 1B     BNE bra_AE4A
C - - - - - 0x006E3F 01:AE2F: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x006E42 01:AE32: 30 16     BMI bra_AE4A
C - - - - - 0x006E44 01:AE34: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x006E47 01:AE37: C9 08     CMP #$08
C - - - - - 0x006E49 01:AE39: 90 0F     BCC bra_AE4A
C - - - - - 0x006E4B 01:AE3B: C9 68     CMP #$68
C - - - - - 0x006E4D 01:AE3D: B0 0B     BCS bra_AE4A
C - - - - - 0x006E4F 01:AE3F: A9 14     LDA #con_obj_type_14
C - - - - - 0x006E51 01:AE41: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x006E54 01:AE44: A9 12     LDA #$12
C - - - - - 0x006E56 01:AE46: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x006E59 01:AE49: 60        RTS
bra_AE4A:
C - - - - - 0x006E5A 01:AE4A: A9 14     LDA #con_obj_type_14
C - - - - - 0x006E5C 01:AE4C: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x006E5F 01:AE4F: A9 10     LDA #$10
C - - - - - 0x006E61 01:AE51: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x006E64 01:AE54: 60        RTS
bra_AE55:
C - - - - - 0x006E65 01:AE55: E6 16     INC ram_0016_t00E_flag
C - - - - - 0x006E67 01:AE57: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x006E6A 01:AE5A: C9 04     CMP #$04
C - - - - - 0x006E6C 01:AE5C: 90 05     BCC bra_AE63
C - - - - - 0x006E6E 01:AE5E: C9 FC     CMP #$FC
C - - - - - 0x006E70 01:AE60: B0 01     BCS bra_AE63
C - - - - - 0x006E72 01:AE62: 60        RTS
bra_AE63:
C - - - - - 0x006E73 01:AE63: A9 00     LDA #$00
C - - - - - 0x006E75 01:AE65: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x006E78 01:AE68: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x006E7B 01:AE6B: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x006E7E 01:AE6E: 60        RTS



sub_AE6F:
C - - - - - 0x006E7F 01:AE6F: AD 80 07  LDA ram_0780
C - - - - - 0x006E82 01:AE72: 18        CLC
C - - - - - 0x006E83 01:AE73: 6D 82 07  ADC ram_0782
C - - - - - 0x006E86 01:AE76: 8D 82 07  STA ram_0782
C - - - - - 0x006E89 01:AE79: AD 81 07  LDA ram_0781
C - - - - - 0x006E8C 01:AE7C: 65 FC     ADC ram_scroll_Y
C - - - - - 0x006E8E 01:AE7E: C9 F0     CMP #$F0
C - - - - - 0x006E90 01:AE80: 90 03     BCC bra_AE85
C - - - - - 0x006E92 01:AE82: 18        CLC
C - - - - - 0x006E93 01:AE83: 69 10     ADC #$10
bra_AE85:
C - - - - - 0x006E95 01:AE85: 85 FC     STA ram_scroll_Y
C - - - - - 0x006E97 01:AE87: 60        RTS



sub_AE88_prepare_horisontal_nametable_mapping:
; bzk optimize, same code as 0x03F773
C - - - - - 0x006E98 01:AE88: A9 50     LDA #$50    ; horisontal nametable mapping
C - - - - - 0x006E9A 01:AE8A: 85 25     STA ram_for_5105
C - - - - - 0x006E9C 01:AE8C: 60        RTS



sub_AE8D:
C - - - - - 0x006E9D 01:AE8D: AD ED 07  LDA ram_07ED
C - - - - - 0x006EA0 01:AE90: 0D EE 07  ORA ram_07EE
C - - - - - 0x006EA3 01:AE93: F0 0C     BEQ bra_AEA1_RTS
C - - - - - 0x006EA5 01:AE95: CE ED 07  DEC ram_07ED
C - - - - - 0x006EA8 01:AE98: AC ED 07  LDY ram_07ED
C - - - - - 0x006EAB 01:AE9B: C8        INY
C - - - - - 0x006EAC 01:AE9C: D0 03     BNE bra_AEA1_RTS
- - - - - - 0x006EAE 01:AE9E: CE EE 07  DEC ram_07EE
bra_AEA1_RTS:
C - - - - - 0x006EB1 01:AEA1: 60        RTS



sub_AEA2:
; in
    ; X = background palette index
C - - - - - 0x006EB2 01:AEA2: AD EF 07  LDA ram_07EF
; * 10
C - - - - - 0x006EB5 01:AEA5: 0A        ASL
C - - - - - 0x006EB6 01:AEA6: 0A        ASL
C - - - - - 0x006EB7 01:AEA7: 0A        ASL
C - - - - - 0x006EB8 01:AEA8: 0A        ASL
C - - - - - 0x006EB9 01:AEA9: 85 04     STA ram_0004_t01D
C - - - - - 0x006EBB 01:AEAB: BD 00 AF  LDA tbl_AF00_background_palette,X
C - - - - - 0x006EBE 01:AEAE: 85 00     STA ram_0000_t01E_data
C - - - - - 0x006EC0 01:AEB0: BD 01 AF  LDA tbl_AF00_background_palette + $01,X
C - - - - - 0x006EC3 01:AEB3: 85 01     STA ram_0000_t01E_data + $01
C - - - - - 0x006EC5 01:AEB5: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x006EC7 01:AEB7: A0 00     LDY #$00
C - - - - - 0x006EC9 01:AEB9: A9 01     LDA #$01    ; buffer mode
C - - - - - 0x006ECB 01:AEBB: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
C - - - - - 0x006ECE 01:AEBE: 20 C6 AC  JSR sub_ACC6_write_color_to_ppu_buffer
C - - - - - 0x006ED1 01:AEC1: 20 C6 AC  JSR sub_ACC6_write_color_to_ppu_buffer
bra_AEC4_loop:
C - - - - - 0x006ED4 01:AEC4: A9 0F     LDA #$0F
C - - - - - 0x006ED6 01:AEC6: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
C - - - - - 0x006ED9 01:AEC9: A9 03     LDA #$03
C - - - - - 0x006EDB 01:AECB: 85 02     STA ram_0002_t011
bra_AECD_loop:
C - - - - - 0x006EDD 01:AECD: A5 04     LDA ram_0004_t01D
C - - - - - 0x006EDF 01:AECF: D0 04     BNE bra_AED5
C - - - - - 0x006EE1 01:AED1: A9 0F     LDA #$0F
C - - - - - 0x006EE3 01:AED3: D0 12     BNE bra_AEE7    ; jmp
bra_AED5:
C - - - - - 0x006EE5 01:AED5: B1 00     LDA (ram_0000_t01E_data),Y
C - - - - - 0x006EE7 01:AED7: 29 0F     AND #$0F
C - - - - - 0x006EE9 01:AED9: 85 03     STA ram_0003_t014
C - - - - - 0x006EEB 01:AEDB: B1 00     LDA (ram_0000_t01E_data),Y
C - - - - - 0x006EED 01:AEDD: 29 F0     AND #$F0
C - - - - - 0x006EEF 01:AEDF: C5 04     CMP ram_0004_t01D
C - - - - - 0x006EF1 01:AEE1: 90 02     BCC bra_AEE5
C - - - - - 0x006EF3 01:AEE3: A5 04     LDA ram_0004_t01D
bra_AEE5:
C - - - - - 0x006EF5 01:AEE5: 05 03     ORA ram_0003_t014
bra_AEE7:
C - - - - - 0x006EF7 01:AEE7: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
C - - - - - 0x006EFA 01:AEEA: C8        INY
C - - - - - 0x006EFB 01:AEEB: C6 02     DEC ram_0002_t011
C - - - - - 0x006EFD 01:AEED: D0 DE     BNE bra_AECD_loop
C - - - - - 0x006EFF 01:AEEF: B1 00     LDA (ram_0000_t01E_data),Y
C - - - - - 0x006F01 01:AEF1: C9 FF     CMP #$FF
C - - - - - 0x006F03 01:AEF3: D0 CF     BNE bra_AEC4_loop
C - - - - - 0x006F05 01:AEF5: 20 CE AC  JSR sub_ACCE_write_to_buffer_and_INX
C - - - - - 0x006F08 01:AEF8: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x006F0A 01:AEFA: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x006F0C 01:AEFC: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x006F0F 01:AEFF: 60        RTS



tbl_AF00_background_palette:
- D 1 - - - 0x006F10 01:AF00: 04 AF     .word off_AF04_00
- D 1 - - - 0x006F12 01:AF02: 13 AF     .word off_AF13_02



off_AF04_00:
- D 1 - I - 0x006F14 01:AF04: 00 3F     .word $3F00 ; ppu address
- D 1 - I - 0x006F16 01:AF06: 08        .byte $08, $17, $20   ; 
- D 1 - I - 0x006F19 01:AF09: 04        .byte $04, $25, $20   ; 
- D 1 - I - 0x006F1C 01:AF0C: 08        .byte $08, $28, $20   ; 
- D 1 - I - 0x006F1F 01:AF0F: 0F        .byte $0F, $01, $20   ; 

- D 1 - I - 0x006F22 01:AF12: FF        .byte $FF   ; end token



off_AF13_02:
- D 1 - I - 0x006F23 01:AF13: 00 3F     .word $3F00 ; ppu address
- D 1 - I - 0x006F25 01:AF15: 16        .byte $16, $05, $20   ; 
- D 1 - I - 0x006F28 01:AF18: 13        .byte $13, $02, $20   ; 
- D 1 - I - 0x006F2B 01:AF1B: 14        .byte $14, $03, $3B   ; 
- D 1 - I - 0x006F2E 01:AF1E: 16        .byte $16, $27, $10   ; 

- D 1 - I - 0x006F31 01:AF21: FF        .byte $FF   ; end token



sub_AF22:
C - - - - - 0x006F32 01:AF22: A9 00     LDA #$00
C - - - - - 0x006F34 01:AF24: 85 00     STA ram_0000_t07F_flag
C - - - - - 0x006F36 01:AF26: AD 80 07  LDA ram_0780
C - - - - - 0x006F39 01:AF29: 18        CLC
C - - - - - 0x006F3A 01:AF2A: 6D 82 07  ADC ram_0782
C - - - - - 0x006F3D 01:AF2D: 8D 82 07  STA ram_0782
C - - - - - 0x006F40 01:AF30: 90 04     BCC bra_AF36
C - - - - - 0x006F42 01:AF32: A9 01     LDA #$01
C - - - - - 0x006F44 01:AF34: 85 00     STA ram_0000_t07F_flag
bra_AF36:
C - - - - - 0x006F46 01:AF36: AD 81 07  LDA ram_0781
C - - - - - 0x006F49 01:AF39: 65 FC     ADC ram_scroll_Y
C - - - - - 0x006F4B 01:AF3B: C9 F0     CMP #$F0
C - - - - - 0x006F4D 01:AF3D: 90 0C     BCC bra_AF4B
C - - - - - 0x006F4F 01:AF3F: 18        CLC
C - - - - - 0x006F50 01:AF40: 69 10     ADC #$10
C - - - - - 0x006F52 01:AF42: 85 FC     STA ram_scroll_Y
C - - - - - 0x006F54 01:AF44: A5 FF     LDA ram_for_2000
C - - - - - 0x006F56 01:AF46: 49 02     EOR #$02
C - - - - - 0x006F58 01:AF48: 85 FF     STA ram_for_2000
C - - - - - 0x006F5A 01:AF4A: 60        RTS
bra_AF4B:
C - - - - - 0x006F5B 01:AF4B: 85 FC     STA ram_scroll_Y
C - - - - - 0x006F5D 01:AF4D: 18        CLC
C - - - - - 0x006F5E 01:AF4E: A5 00     LDA ram_0000_t07F_flag
C - - - - - 0x006F60 01:AF50: F0 01     BEQ bra_AF53
C - - - - - 0x006F62 01:AF52: 38        SEC
bra_AF53:
C - - - - - 0x006F63 01:AF53: AD 81 07  LDA ram_0781
C - - - - - 0x006F66 01:AF56: 6D 88 07  ADC ram_0788
C - - - - - 0x006F69 01:AF59: 8D 88 07  STA ram_0788
C - - - - - 0x006F6C 01:AF5C: AD 87 07  LDA ram_0787
C - - - - - 0x006F6F 01:AF5F: 69 00     ADC #$00
C - - - - - 0x006F71 01:AF61: 8D 87 07  STA ram_0787
C - - - - - 0x006F74 01:AF64: 60        RTS



loc_0x006F75_enter_your_name_handler:
C D 1 - - - 0x006F75 01:AF65: A5 19     LDA ram_0019_subscript
C - - - - - 0x006F77 01:AF67: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x006F7A 01:AF6A: 84 AF     .word ofs_024_AF84_00
- D 1 - I - 0x006F7C 01:AF6C: A4 AF     .word ofs_024_AFA4_01
- D 1 - I - 0x006F7E 01:AF6E: C1 AF     .word ofs_024_AFC1_02
- D 1 - I - 0x006F80 01:AF70: E0 AF     .word ofs_024_AFE0_03
- D 1 - I - 0x006F82 01:AF72: F4 AF     .word ofs_024_AFF4_04
- D 1 - I - 0x006F84 01:AF74: 11 B0     .word ofs_024_B011_05
- D 1 - I - 0x006F86 01:AF76: B9 B2     .word ofs_024_B2B9_06
- D 1 - I - 0x006F88 01:AF78: D8 B2     .word ofs_024_B2D8_07
- D 1 - I - 0x006F8A 01:AF7A: 00 B3     .word ofs_024_B300_08
- D 1 - I - 0x006F8C 01:AF7C: 51 B3     .word ofs_024_B351_09
- D 1 - I - 0x006F8E 01:AF7E: 68 B3     .word ofs_024_B368_0A
- D 1 - I - 0x006F90 01:AF80: 96 B3     .word ofs_024_B396_0B
- D 1 - I - 0x006F92 01:AF82: 81 B3     .word ofs_024_B381_0C



ofs_024_AF84_00:
C - - J - - 0x006F94 01:AF84: A5 19     LDA ram_0019_subscript
C - - - - - 0x006F96 01:AF86: 30 08     BMI bra_AF90
C - - - - - 0x006F98 01:AF88: A9 03     LDA #$03
C - - - - - 0x006F9A 01:AF8A: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x006F9C 01:AF8C: A9 80     LDA #$80
C - - - - - 0x006F9E 01:AF8E: 85 19     STA ram_0019_subscript
bra_AF90:
C - - - - - 0x006FA0 01:AF90: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x006FA3 01:AF93: A9 44     LDA #$44    ; vertical nametable mapping
C - - - - - 0x006FA5 01:AF95: 85 25     STA ram_for_5105
C - - - - - 0x006FA7 01:AF97: 8D 05 51  STA $5105
C - - - - - 0x006FAA 01:AF9A: A9 62     LDA #con_music_enter_name_psw
C - - - - - 0x006FAC 01:AF9C: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x006FAF 01:AF9F: A9 01     LDA #$01
C - - - - - 0x006FB1 01:AFA1: 85 19     STA ram_0019_subscript
C - - - - - 0x006FB3 01:AFA3: 60        RTS



ofs_024_AFA4_01:
C - - J - - 0x006FB4 01:AFA4: 20 25 B6  JSR sub_B625
C - - - - - 0x006FB7 01:AFA7: A2 18     LDX #con_EC77_enter_your_name
C - - - - - 0x006FB9 01:AFA9: 20 04 EC  JSR sub_0x03EC14_draw_screen
C - - - - - 0x006FBC 01:AFAC: A0 00     LDY #$00
C - - - - - 0x006FBE 01:AFAE: 20 8D B2  JSR sub_B28D
C - - - - - 0x006FC1 01:AFB1: 20 D6 E2  JSR sub_0x03E2E6_prg_bankswitch_dpcm_1
C - - - - - 0x006FC4 01:AFB4: 20 C7 B1  JSR sub_B1C7
C - - - - - 0x006FC7 01:AFB7: 20 66 B0  JSR sub_B066
C - - - - - 0x006FCA 01:AFBA: A9 03     LDA #$03
C - - - - - 0x006FCC 01:AFBC: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x006FCE 01:AFBE: E6 19     INC ram_0019_subscript
C - - - - - 0x006FD0 01:AFC0: 60        RTS



ofs_024_AFC1_02:
C - - J - - 0x006FD1 01:AFC1: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x006FD3 01:AFC3: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x006FD5 01:AFC5: 20 98 B5  JSR sub_B598
C - - - - - 0x006FD8 01:AFC8: 20 A4 FB  JSR sub_0x03FBB4_increase_brightness
C - - - - - 0x006FDB 01:AFCB: A5 B4     LDA ram_00B4
C - - - - - 0x006FDD 01:AFCD: C9 FF     CMP #$FF
C - - - - - 0x006FDF 01:AFCF: D0 0E     BNE bra_AFDF_RTS
C - - - - - 0x006FE1 01:AFD1: A9 00     LDA #$00
C - - - - - 0x006FE3 01:AFD3: A6 15     LDX ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x006FE5 01:AFD5: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x006FE8 01:AFD8: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x006FEA 01:AFDA: 20 75 B6  JSR sub_B675_clear_0780_078F
C - - - - - 0x006FED 01:AFDD: E6 19     INC ram_0019_subscript
bra_AFDF_RTS:
C - - - - - 0x006FEF 01:AFDF: 60        RTS



ofs_024_AFE0_03:
C - - J - - 0x006FF0 01:AFE0: 20 6E B0  JSR sub_B06E
C - - - - - 0x006FF3 01:AFE3: A5 26     LDA ram_btn_press
C - - - - - 0x006FF5 01:AFE5: 29 10     AND #con_btn_Start
C - - - - - 0x006FF7 01:AFE7: D0 04     BNE bra_AFED
C - - - - - 0x006FF9 01:AFE9: A5 2D     LDA ram_002D_flag
C - - - - - 0x006FFB 01:AFEB: F0 19     BEQ bra_B006_RTS
bra_AFED:
C - - - - - 0x006FFD 01:AFED: A0 00     LDY #$00
C - - - - - 0x006FFF 01:AFEF: 84 2D     STY ram_002D_flag
C - - - - - 0x007001 01:AFF1: E6 19     INC ram_0019_subscript
C - - - - - 0x007003 01:AFF3: 60        RTS



ofs_024_AFF4_04:
C - - J - - 0x007004 01:AFF4: A4 6B     LDY ram_006B_subscript
C - - - - - 0x007006 01:AFF6: D0 0F     BNE bra_B007_password_screen
C - - - - - 0x007008 01:AFF8: A9 07     LDA #$07
C - - - - - 0x00700A 01:AFFA: 8D 60 01  STA ram_015B_se + $05
C - - - - - 0x00700D 01:AFFD: 20 66 B0  JSR sub_B066
C - - - - - 0x007010 01:B000: A9 78     LDA #$78
C - - - - - 0x007012 01:B002: 85 30     STA ram_screen_timer_lo
C - - - - - 0x007014 01:B004: E6 19     INC ram_0019_subscript
bra_B006_RTS:
C - - - - - 0x007016 01:B006: 60        RTS
bra_B007_password_screen:
C - - - - - 0x007017 01:B007: E6 19     INC ram_0019_subscript
C - - - - - 0x007019 01:B009: 4C 66 B0  JMP loc_B066


; bzk garbage
- - - - - - 0x00701C 01:B00C: A9 02     LDA #$02
- - - - - - 0x00701E 01:B00E: 85 19     STA ram_0019_subscript
- - - - - - 0x007020 01:B010: 60        RTS



ofs_024_B011_05:
C - - J - - 0x007021 01:B011: 20 7A B1  JSR sub_B17A
C - - - - - 0x007024 01:B014: A9 00     LDA #$00
C - - - - - 0x007026 01:B016: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x007029 01:B019: A5 6B     LDA ram_006B_subscript
C - - - - - 0x00702B 01:B01B: D0 2A     BNE bra_B047
C - - - - - 0x00702D 01:B01D: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x00702F 01:B01F: F0 2F     BEQ bra_B050
C - - - - - 0x007031 01:B021: A5 B4     LDA ram_00B4
C - - - - - 0x007033 01:B023: C9 FF     CMP #$FF
C - - - - - 0x007035 01:B025: F0 35     BEQ bra_B05C_RTS
C - - - - - 0x007037 01:B027: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x007039 01:B029: C9 30     CMP #$30
C - - - - - 0x00703B 01:B02B: B0 2F     BCS bra_B05C_RTS
sub_B02D:
C - - - - - 0x00703D 01:B02D: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x00703F 01:B02F: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x007041 01:B031: 20 98 B5  JSR sub_B598
C - - - - - 0x007044 01:B034: 20 AF FB  JSR sub_0x03FBBF_decrease_brightness
C - - - - - 0x007047 01:B037: A5 B4     LDA ram_00B4
C - - - - - 0x007049 01:B039: C9 FF     CMP #$FF
C - - - - - 0x00704B 01:B03B: D0 1F     BNE bra_B05C_RTS
C - - - - - 0x00704D 01:B03D: A9 00     LDA #$00
C - - - - - 0x00704F 01:B03F: A6 15     LDX ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x007051 01:B041: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x007054 01:B044: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x007056 01:B046: 60        RTS
bra_B047:
C - - - - - 0x007057 01:B047: 20 2D B0  JSR sub_B02D
C - - - - - 0x00705A 01:B04A: A5 B4     LDA ram_00B4
C - - - - - 0x00705C 01:B04C: C9 FF     CMP #$FF
C - - - - - 0x00705E 01:B04E: D0 0C     BNE bra_B05C_RTS
bra_B050:
C - - - - - 0x007060 01:B050: A9 00     LDA #$00
C - - - - - 0x007062 01:B052: 85 2D     STA ram_002D_flag
C - - - - - 0x007064 01:B054: A5 6B     LDA ram_006B_subscript
C - - - - - 0x007066 01:B056: F0 05     BEQ bra_B05D
C - - - - - 0x007068 01:B058: A9 06     LDA #$06
C - - - - - 0x00706A 01:B05A: 85 19     STA ram_0019_subscript
bra_B05C_RTS:
C - - - - - 0x00706C 01:B05C: 60        RTS
bra_B05D:
C - - - - - 0x00706D 01:B05D: A9 FF     LDA #con_player_off
C - - - - - 0x00706F 01:B05F: 85 3A     STA ram_partner
C - - - - - 0x007071 01:B061: A9 09     LDA #con_0018_prayer
C - - - - - 0x007073 01:B063: 4C 74 E5  JMP loc_0x03E584_prepare_script



sub_B066:
loc_B066:
C D 1 - - - 0x007076 01:B066: A0 00     LDY #$00
C - - - - - 0x007078 01:B068: 84 B4     STY ram_00B4
C - - - - - 0x00707A 01:B06A: C8        INY ; 01
C - - - - - 0x00707B 01:B06B: 84 B5     STY ram_00B5
C - - - - - 0x00707D 01:B06D: 60        RTS



sub_B06E:
C - - - - - 0x00707E 01:B06E: 20 7A B0  JSR sub_B07A
C - - - - - 0x007081 01:B071: 20 7A B1  JSR sub_B17A
C - - - - - 0x007084 01:B074: 20 DC B1  JSR sub_B1DC
C - - - - - 0x007087 01:B077: 4C 4E B1  JMP loc_B14E



sub_B07A:
C - - - - - 0x00708A 01:B07A: A2 00     LDX #$00
C - - - - - 0x00708C 01:B07C: 20 CC B0  JSR sub_B0CC
C - - - - - 0x00708F 01:B07F: 20 82 B0  JSR sub_B082
sub_B082:
C - - - - - 0x007092 01:B082: AD 81 07  LDA ram_0781
C - - - - - 0x007095 01:B085: C9 03     CMP #$03
C - - - - - 0x007097 01:B087: 90 3C     BCC bra_B0C5_RTS
C - - - - - 0x007099 01:B089: A5 10     LDA ram_0010_t015_buttons
C - - - - - 0x00709B 01:B08B: 29 0C     AND #con_btns_UP
C - - - - - 0x00709D 01:B08D: F0 1B     BEQ bra_B0AA
C - - - - - 0x00709F 01:B08F: AC 80 07  LDY ram_0780
C - - - - - 0x0070A2 01:B092: B9 75 B2  LDA tbl_B275_4th_line_name,Y
C - - - - - 0x0070A5 01:B095: C9 FC     CMP #$FC
C - - - - - 0x0070A7 01:B097: D0 11     BNE bra_B0AA
C - - - - - 0x0070A9 01:B099: A9 02     LDA #$02
C - - - - - 0x0070AB 01:B09B: C0 03     CPY #$03
C - - - - - 0x0070AD 01:B09D: F0 08     BEQ bra_B0A7
C - - - - - 0x0070AF 01:B09F: A9 05     LDA #$05
C - - - - - 0x0070B1 01:B0A1: C0 04     CPY #$04
C - - - - - 0x0070B3 01:B0A3: F0 02     BEQ bra_B0A7
C - - - - - 0x0070B5 01:B0A5: A9 08     LDA #$08
bra_B0A7:
C - - - - - 0x0070B7 01:B0A7: 8D 80 07  STA ram_0780
bra_B0AA:
C - - - - - 0x0070BA 01:B0AA: A5 10     LDA ram_0010_t015_buttons
C - - - - - 0x0070BC 01:B0AC: 29 03     AND #con_btns_LR
C - - - - - 0x0070BE 01:B0AE: F0 15     BEQ bra_B0C5_RTS
C - - - - - 0x0070C0 01:B0B0: AA        TAX
C - - - - - 0x0070C1 01:B0B1: AC 80 07  LDY ram_0780
C - - - - - 0x0070C4 01:B0B4: B9 75 B2  LDA tbl_B275_4th_line_name,Y
C - - - - - 0x0070C7 01:B0B7: C9 FC     CMP #$FC
C - - - - - 0x0070C9 01:B0B9: D0 0A     BNE bra_B0C5_RTS
C - - - - - 0x0070CB 01:B0BB: BD C6 B0  LDA tbl_B0C6,X
C - - - - - 0x0070CE 01:B0BE: 18        CLC
C - - - - - 0x0070CF 01:B0BF: 6D 80 07  ADC ram_0780
C - - - - - 0x0070D2 01:B0C2: 8D 80 07  STA ram_0780
bra_B0C5_RTS:
C - - - - - 0x0070D5 01:B0C5: 60        RTS



tbl_B0C6:
- - - - - - 0x0070D6 01:B0C6: 00        .byte $00   ; 00 unused 0x0070BE
- D 1 - - - 0x0070D7 01:B0C7: 01        .byte $01   ; 01 Right
- D 1 - - - 0x0070D8 01:B0C8: FF        .byte $FF   ; 02 Left
; bzk garbage, this combination normally is not possible
- - - - - - 0x0070D9 01:B0C9: 01        .byte $01   ; 03 Right + Left



loc_B0CA:
C D 1 - - - 0x0070DA 01:B0CA: A2 01     LDX #$01
sub_B0CC:
C - - - - - 0x0070DC 01:B0CC: 20 2B B1  JSR sub_B12B_get_buttons
C - - - - - 0x0070DF 01:B0CF: 85 00     STA ram_0000_t06E_buttons
C - - - - - 0x0070E1 01:B0D1: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0070E3 01:B0D3: F0 05     BEQ bra_B0DA
; if any Dpad button was pressed
C - - - - - 0x0070E5 01:B0D5: A9 1A     LDA #con_sound_heart_count
C - - - - - 0x0070E7 01:B0D7: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_B0DA:
C - - - - - 0x0070EA 01:B0DA: 46 00     LSR ram_0000_t06E_buttons
C - - - - - 0x0070EC 01:B0DC: 90 0F     BCC bra_B0ED
; if pressed Right
C - - - - - 0x0070EE 01:B0DE: AD 80 07  LDA ram_0780
C - - - - - 0x0070F1 01:B0E1: 69 00     ADC #$00
C - - - - - 0x0070F3 01:B0E3: DD 27 B1  CMP tbl_B127,X
C - - - - - 0x0070F6 01:B0E6: 90 02     BCC bra_B0EA
C - - - - - 0x0070F8 01:B0E8: A9 00     LDA #$00
bra_B0EA:
C - - - - - 0x0070FA 01:B0EA: 8D 80 07  STA ram_0780
bra_B0ED:
C - - - - - 0x0070FD 01:B0ED: 46 00     LSR ram_0000_t06E_buttons
C - - - - - 0x0070FF 01:B0EF: 90 0F     BCC bra_B100
; if pressed Left
C - - - - - 0x007101 01:B0F1: AD 80 07  LDA ram_0780
C - - - - - 0x007104 01:B0F4: E9 01     SBC #$01
C - - - - - 0x007106 01:B0F6: 10 05     BPL bra_B0FD
C - - - - - 0x007108 01:B0F8: BC 27 B1  LDY tbl_B127,X
C - - - - - 0x00710B 01:B0FB: 88        DEY
C - - - - - 0x00710C 01:B0FC: 98        TYA
bra_B0FD:
C - - - - - 0x00710D 01:B0FD: 8D 80 07  STA ram_0780
bra_B100:
C - - - - - 0x007110 01:B100: 46 00     LSR ram_0000_t06E_buttons
C - - - - - 0x007112 01:B102: 90 0F     BCC bra_B113
; if pressed Down
C - - - - - 0x007114 01:B104: AD 81 07  LDA ram_0781
C - - - - - 0x007117 01:B107: 69 00     ADC #$00
C - - - - - 0x007119 01:B109: DD 29 B1  CMP tbl_B129,X
C - - - - - 0x00711C 01:B10C: 90 02     BCC bra_B110
C - - - - - 0x00711E 01:B10E: A9 00     LDA #$00
bra_B110:
C - - - - - 0x007120 01:B110: 8D 81 07  STA ram_0781
bra_B113:
C - - - - - 0x007123 01:B113: 46 00     LSR ram_0000_t06E_buttons
C - - - - - 0x007125 01:B115: 90 0F     BCC bra_B126_RTS
; if pressed Up
C - - - - - 0x007127 01:B117: AD 81 07  LDA ram_0781
C - - - - - 0x00712A 01:B11A: E9 01     SBC #$01
C - - - - - 0x00712C 01:B11C: 10 05     BPL bra_B123
C - - - - - 0x00712E 01:B11E: BC 29 B1  LDY tbl_B129,X
C - - - - - 0x007131 01:B121: 88        DEY
C - - - - - 0x007132 01:B122: 98        TYA
bra_B123:
C - - - - - 0x007133 01:B123: 8D 81 07  STA ram_0781
bra_B126_RTS:
C - - - - - 0x007136 01:B126: 60        RTS



tbl_B127:
- D 1 - - - 0x007137 01:B127: 09        .byte $09   ; 00 
- D 1 - - - 0x007138 01:B128: 04        .byte $04   ; 01 



tbl_B129:
; bzk optimize, same bytes
- D 1 - - - 0x007139 01:B129: 04        .byte $04   ; 00 
- D 1 - - - 0x00713A 01:B12A: 04        .byte $04   ; 01 



sub_B12B_get_buttons:
; in
    ; X
        ; 00 = do some additional checks
        ; 01 = get raw buttons
; out
    ; A = buttons
C - - - - - 0x00713B 01:B12B: E0 01     CPX #$01
C - - - - - 0x00713D 01:B12D: B0 1A     BCS bra_B149
C - - - - - 0x00713F 01:B12F: 18        CLC
C - - - - - 0x007140 01:B130: A0 00     LDY #$00
C - - - - - 0x007142 01:B132: A5 28     LDA ram_btn_hold
C - - - - - 0x007144 01:B134: 29 0F     AND #con_btns_Dpad
C - - - - - 0x007146 01:B136: F0 0A     BEQ bra_B142
C - - - - - 0x007148 01:B138: AC B0 07  LDY ram_07B0
C - - - - - 0x00714B 01:B13B: C8        INY
C - - - - - 0x00714C 01:B13C: C0 0E     CPY #$0E
C - - - - - 0x00714E 01:B13E: 90 02     BCC bra_B142
C - - - - - 0x007150 01:B140: A0 00     LDY #$00
bra_B142:
C - - - - - 0x007152 01:B142: 8C B0 07  STY ram_07B0
C - - - - - 0x007155 01:B145: A5 28     LDA ram_btn_hold
C - - - - - 0x007157 01:B147: B0 02     BCS bra_B14B    ; if con_btn_Right
bra_B149:
C - - - - - 0x007159 01:B149: A5 26     LDA ram_btn_press
bra_B14B:
C - - - - - 0x00715B 01:B14B: 85 10     STA ram_0010_t015_buttons
C - - - - - 0x00715D 01:B14D: 60        RTS



loc_B14E:
C D 1 - - - 0x00715E 01:B14E: A0 01     LDY #$01
C - - - - - 0x007160 01:B150: A2 01     LDX #$01
C - - - - - 0x007162 01:B152: A5 1A     LDA ram_frm_cnt
C - - - - - 0x007164 01:B154: 29 10     AND #$10
C - - - - - 0x007166 01:B156: F0 1C     BEQ bra_B174
C - - - - - 0x007168 01:B158: AD 85 07  LDA ram_0785
C - - - - - 0x00716B 01:B15B: 18        CLC
C - - - - - 0x00716C 01:B15C: 69 47     ADC #$47
C - - - - - 0x00716E 01:B15E: 85 00     STA ram_0000_t080_pos_Y_lo
C - - - - - 0x007170 01:B160: AD 84 07  LDA ram_0784
; * 08
C - - - - - 0x007173 01:B163: 0A        ASL
C - - - - - 0x007174 01:B164: 0A        ASL
C - - - - - 0x007175 01:B165: 0A        ASL
C - - - - - 0x007176 01:B166: 18        CLC
C - - - - - 0x007177 01:B167: 69 60     ADC #$60
C - - - - - 0x007179 01:B169: 85 01     STA ram_0001_t032_pos_X_lo
C - - - - - 0x00717B 01:B16B: 20 AC B1  JSR sub_B1AC
C - - - - - 0x00717E 01:B16E: A9 F6     LDA #$F6
C - - - - - 0x007180 01:B170: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x007183 01:B173: 60        RTS
bra_B174:
C - - - - - 0x007184 01:B174: A9 00     LDA #$00
C - - - - - 0x007186 01:B176: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x007189 01:B179: 60        RTS



sub_B17A:
C - - - - - 0x00718A 01:B17A: 20 90 B1  JSR sub_B190
C - - - - - 0x00718D 01:B17D: A0 F8     LDY #$F8
C - - - - - 0x00718F 01:B17F: FE 7C 05  INC ram_obj_anim_timer,X
C - - - - - 0x007192 01:B182: BD 7C 05  LDA ram_obj_anim_timer,X
C - - - - - 0x007195 01:B185: 29 08     AND #$08
C - - - - - 0x007197 01:B187: D0 02     BNE bra_B18B
C - - - - - 0x007199 01:B189: A0 FA     LDY #$FA
bra_B18B:
C - - - - - 0x00719B 01:B18B: 98        TYA
C - - - - - 0x00719C 01:B18C: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00719F 01:B18F: 60        RTS



sub_B190:
C - - - - - 0x0071A0 01:B190: A0 00     LDY #$00
C - - - - - 0x0071A2 01:B192: A2 00     LDX #$00
C - - - - - 0x0071A4 01:B194: AD 81 07  LDA ram_0781
; * 10
C - - - - - 0x0071A7 01:B197: 0A        ASL
C - - - - - 0x0071A8 01:B198: 0A        ASL
C - - - - - 0x0071A9 01:B199: 0A        ASL
C - - - - - 0x0071AA 01:B19A: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x0071AB 01:B19B: 18        CLC
C - - - - - 0x0071AC 01:B19C: 69 88     ADC #$88
C - - - - - 0x0071AE 01:B19E: 85 00     STA ram_0000_t080_pos_Y_lo
C - - - - - 0x0071B0 01:B1A0: AD 80 07  LDA ram_0780
; * 10
C - - - - - 0x0071B3 01:B1A3: 0A        ASL
C - - - - - 0x0071B4 01:B1A4: 0A        ASL
C - - - - - 0x0071B5 01:B1A5: 0A        ASL
C - - - - - 0x0071B6 01:B1A6: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x0071B7 01:B1A7: 18        CLC
C - - - - - 0x0071B8 01:B1A8: 69 3C     ADC #$3C
C - - - - - 0x0071BA 01:B1AA: 85 01     STA ram_0001_t032_pos_X_lo
sub_B1AC:
C - - - - - 0x0071BC 01:B1AC: A5 00     LDA ram_0000_t080_pos_Y_lo
C - - - - - 0x0071BE 01:B1AE: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0071C1 01:B1B1: A5 01     LDA ram_0001_t032_pos_X_lo
C - - - - - 0x0071C3 01:B1B3: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x0071C6 01:B1B6: B9 C3 B1  LDA tbl_B1C3,Y
C - - - - - 0x0071C9 01:B1B9: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0071CC 01:B1BC: B9 C5 B1  LDA tbl_B1C5,Y
C - - - - - 0x0071CF 01:B1BF: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0071D2 01:B1C2: 60        RTS



tbl_B1C3:
; bzk optimize, same bytes
- D 1 - - - 0x0071D3 01:B1C3: 0C        .byte con_obj_type_0C   ; 00 
- D 1 - - - 0x0071D4 01:B1C4: 0C        .byte con_obj_type_0C   ; 01 



tbl_B1C5:
- D 1 - - - 0x0071D5 01:B1C5: 23        .byte $23   ; 00 
- D 1 - - - 0x0071D6 01:B1C6: 00        .byte $00   ; 01 



sub_B1C7:
loc_B1C7:
C D 1 - - - 0x0071D7 01:B1C7: A2 00     LDX #$00
bra_B1C9_loop:
C - - - - - 0x0071D9 01:B1C9: BD D4 B1  LDA tbl_B1D4_chr_banks,X
C - - - - - 0x0071DC 01:B1CC: 95 46     STA ram_chr_banks,X
C - - - - - 0x0071DE 01:B1CE: E8        INX
C - - - - - 0x0071DF 01:B1CF: E0 08     CPX #$08
C - - - - - 0x0071E1 01:B1D1: 90 F6     BCC bra_B1C9_loop
C - - - - - 0x0071E3 01:B1D3: 60        RTS



tbl_B1D4_chr_banks:
- D 1 - - - 0x0071E4 01:B1D4: 40        .byte con__chr_bank + $40   ; 00 
- D 1 - - - 0x0071E5 01:B1D5: 01        .byte con__chr_bank + $01   ; 01 
- D 1 - - - 0x0071E6 01:B1D6: 00        .byte con__chr_bank + $00   ; 02 
- D 1 - - - 0x0071E7 01:B1D7: 43        .byte con__chr_bank + $43   ; 03 
- D 1 - - - 0x0071E8 01:B1D8: 40        .byte con__chr_bank + $40   ; 04 
- D 1 - - - 0x0071E9 01:B1D9: 41        .byte con__chr_bank + $41   ; 05 
- D 1 - - - 0x0071EA 01:B1DA: 42        .byte con__chr_bank + $42   ; 06 
- D 1 - - - 0x0071EB 01:B1DB: 73        .byte con__chr_bank + $73   ; 07 



sub_B1DC:
C - - - - - 0x0071EC 01:B1DC: A5 26     LDA ram_btn_press
C - - - - - 0x0071EE 01:B1DE: 29 C0     AND #con_btns_AB
C - - - - - 0x0071F0 01:B1E0: F0 4C     BEQ bra_B22E_RTS
C - - - - - 0x0071F2 01:B1E2: A5 26     LDA ram_btn_press
C - - - - - 0x0071F4 01:B1E4: 29 80     AND #con_btn_A
C - - - - - 0x0071F6 01:B1E6: F0 47     BEQ bra_B22F
C - - - - - 0x0071F8 01:B1E8: AD 81 07  LDA ram_0781
C - - - - - 0x0071FB 01:B1EB: 85 00     STA ram_0000_t081
; bzk optimize, useless LDA
C - - - - - 0x0071FD 01:B1ED: A5 00     LDA ram_0000_t081
C - - - - - 0x0071FF 01:B1EF: F0 0A     BEQ bra_B1FB
C - - - - - 0x007201 01:B1F1: A9 00     LDA #$00
C - - - - - 0x007203 01:B1F3: 18        CLC
bra_B1F4_loop:
; bzk optimize, ADC 09
; bzk bug? should be ADC,X?
C - - - - - 0x007204 01:B1F4: 6D 27 B1  ADC tbl_B127    ; byte 09
C - - - - - 0x007207 01:B1F7: C6 00     DEC ram_0000_t081
C - - - - - 0x007209 01:B1F9: D0 F9     BNE bra_B1F4_loop
bra_B1FB:
C - - - - - 0x00720B 01:B1FB: 18        CLC
C - - - - - 0x00720C 01:B1FC: 6D 80 07  ADC ram_0780
C - - - - - 0x00720F 01:B1FF: A8        TAY
C - - - - - 0x007210 01:B200: AE 84 07  LDX ram_0784
C - - - - - 0x007213 01:B203: B9 5A B2  LDA tbl_B25A_3_lines_name,Y
C - - - - - 0x007216 01:B206: C9 FF     CMP #$FF
C - - - - - 0x007218 01:B208: F0 3C     BEQ bra_B246_FF
C - - - - - 0x00721A 01:B20A: C9 FE     CMP #$FE
C - - - - - 0x00721C 01:B20C: F0 3D     BEQ bra_B24B_FE
C - - - - - 0x00721E 01:B20E: C9 FD     CMP #$FD
C - - - - - 0x007220 01:B210: F0 28     BEQ bra_B23A_FD
C - - - - - 0x007222 01:B212: C9 FC     CMP #$FC
C - - - - - 0x007224 01:B214: F0 43     BEQ bra_B259_RTS
C - - - - - 0x007226 01:B216: 9D F8 07  STA ram_name,X
C - - - - - 0x007229 01:B219: 20 7E B2  JSR sub_B27E
C - - - - - 0x00722C 01:B21C: A9 1B     LDA #con_sound_pick_up_heart
C - - - - - 0x00722E 01:B21E: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x007231 01:B221: AC 84 07  LDY ram_0784
C - - - - - 0x007234 01:B224: C8        INY
C - - - - - 0x007235 01:B225: C0 08     CPY #$08
C - - - - - 0x007237 01:B227: 90 02     BCC bra_B22B
C - - - - - 0x007239 01:B229: A0 00     LDY #$00
bra_B22B:
C - - - - - 0x00723B 01:B22B: 8C 84 07  STY ram_0784
bra_B22E_RTS:
C - - - - - 0x00723E 01:B22E: 60        RTS
bra_B22F:
C - - - - - 0x00723F 01:B22F: 20 3A B2  JSR sub_B23A
C - - - - - 0x007242 01:B232: A9 00     LDA #$00
C - - - - - 0x007244 01:B234: 99 F8 07  STA ram_name,Y
C - - - - - 0x007247 01:B237: 4C 7E B2  JMP loc_B27E
bra_B23A_FD:
sub_B23A:
C - - - - - 0x00724A 01:B23A: AC 84 07  LDY ram_0784
C - - - - - 0x00724D 01:B23D: 88        DEY
C - - - - - 0x00724E 01:B23E: 10 02     BPL bra_B242
C - - - - - 0x007250 01:B240: A0 07     LDY #$07
bra_B242:
C - - - - - 0x007252 01:B242: 8C 84 07  STY ram_0784
C - - - - - 0x007255 01:B245: 60        RTS
bra_B246_FF:
C - - - - - 0x007256 01:B246: A9 01     LDA #$01
C - - - - - 0x007258 01:B248: 85 2D     STA ram_002D_flag
C - - - - - 0x00725A 01:B24A: 60        RTS
bra_B24B_FE:
C - - - - - 0x00725B 01:B24B: AC 84 07  LDY ram_0784
C - - - - - 0x00725E 01:B24E: C8        INY
C - - - - - 0x00725F 01:B24F: C0 08     CPY #$08
C - - - - - 0x007261 01:B251: 90 02     BCC bra_B255
C - - - - - 0x007263 01:B253: A0 00     LDY #$00
bra_B255:
C - - - - - 0x007265 01:B255: 8C 84 07  STY ram_0784
C - - - - - 0x007268 01:B258: 60        RTS
bra_B259_RTS:
- - - - - - 0x007269 01:B259: 60        RTS



tbl_B25A_3_lines_name:
- D 1 - - - 0x00726A 01:B25A: 50        .byte $50, $51, $52, $53, $54, $55, $56, $57, $58   ; ABCDEFGHI
- D 1 - - - 0x007273 01:B263: 59        .byte $59, $5A, $5B, $5C, $5D, $5E, $5F, $60, $61   ; JKLMNOPQR
- D 1 - - - 0x00727C 01:B26C: 62        .byte $62, $63, $64, $65, $66, $67, $68, $69, $00   ; STUVWXYZ[]



tbl_B275_4th_line_name:
- D 1 - - - 0x007285 01:B275: 6A        .byte $6A, $6B, $4B   ; !?.
- D 1 - - - 0x007288 01:B278: FC        .byte $FC             ; nothing
- D 1 - - - 0x007289 01:B279: FC        .byte $FC             ; nothing
- D 1 - - - 0x00728A 01:B27A: FD        .byte $FD             ; <-
- D 1 - - - 0x00728B 01:B27B: FE        .byte $FE             ; ->
- D 1 - - - 0x00728C 01:B27C: FC        .byte $FC             ; nothing
- D 1 - - - 0x00728D 01:B27D: FF        .byte $FF             ; END



sub_B27E:
loc_B27E:
C D 1 - - - 0x00728E 01:B27E: 48        PHA
C - - - - - 0x00728F 01:B27F: A0 00     LDY #$00
C - - - - - 0x007291 01:B281: 20 A0 B2  JSR sub_B2A0
C - - - - - 0x007294 01:B284: 68        PLA
C - - - - - 0x007295 01:B285: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x007298 01:B288: 4C 12 ED  JMP loc_0x03ED22_close_buffer



sub_B28B:
C - - - - - 0x00729B 01:B28B: A0 02     LDY #$02
sub_B28D:
C - - - - - 0x00729D 01:B28D: 20 A0 B2  JSR sub_B2A0
C - - - - - 0x0072A0 01:B290: A0 00     LDY #$00
bra_B292_loop:
C - - - - - 0x0072A2 01:B292: B9 F8 07  LDA ram_name,Y
C - - - - - 0x0072A5 01:B295: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0072A8 01:B298: C8        INY
C - - - - - 0x0072A9 01:B299: C0 08     CPY #$08
C - - - - - 0x0072AB 01:B29B: 90 F5     BCC bra_B292_loop
C - - - - - 0x0072AD 01:B29D: 4C 12 ED  JMP loc_0x03ED22_close_buffer



sub_B2A0:
C - - - - - 0x0072B0 01:B2A0: A9 01     LDA #$01
C - - - - - 0x0072B2 01:B2A2: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0072B5 01:B2A5: AD 84 07  LDA ram_0784
C - - - - - 0x0072B8 01:B2A8: 18        CLC
C - - - - - 0x0072B9 01:B2A9: 79 B5 B2  ADC tbl_B2B5_ppu_address,Y
C - - - - - 0x0072BC 01:B2AC: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0072BF 01:B2AF: B9 B6 B2  LDA tbl_B2B5_ppu_address + $01,Y
C - - - - - 0x0072C2 01:B2B2: 4C 14 ED  JMP loc_0x03ED24_write_byte_to_buffer___unk_index



tbl_B2B5_ppu_address:
- D 1 - - - 0x0072C5 01:B2B5: EC 20     .word $20EC ; 00 
- D 1 - - - 0x0072C7 01:B2B7: AC 20     .word $20AC ; 02 



ofs_024_B2B9_06:
C - - J - - 0x0072C9 01:B2B9: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x0072CC 01:B2BC: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x0072CE 01:B2BE: A2 1A     LDX #con_EC77_password
C - - - - - 0x0072D0 01:B2C0: 20 D5 EB  JSR sub_0x03EBE5_draw_screen
C - - - - - 0x0072D3 01:B2C3: 20 75 B6  JSR sub_B675_clear_0780_078F
C - - - - - 0x0072D6 01:B2C6: 20 8B B2  JSR sub_B28B
C - - - - - 0x0072D9 01:B2C9: A9 02     LDA #$02
C - - - - - 0x0072DB 01:B2CB: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x0072DD 01:B2CD: 20 25 B6  JSR sub_B625
C - - - - - 0x0072E0 01:B2D0: 20 66 B0  JSR sub_B066
C - - - - - 0x0072E3 01:B2D3: E6 19     INC ram_0019_subscript
C - - - - - 0x0072E5 01:B2D5: 4C C7 B1  JMP loc_B1C7



ofs_024_B2D8_07:
C - - J - - 0x0072E8 01:B2D8: A5 B4     LDA ram_00B4
C - - - - - 0x0072EA 01:B2DA: C9 FF     CMP #$FF
C - - - - - 0x0072EC 01:B2DC: F0 1A     BEQ bra_B2F8_FF
C - - - - - 0x0072EE 01:B2DE: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x0072F0 01:B2E0: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x0072F2 01:B2E2: 20 98 B5  JSR sub_B598
C - - - - - 0x0072F5 01:B2E5: 20 A4 FB  JSR sub_0x03FBB4_increase_brightness
C - - - - - 0x0072F8 01:B2E8: A5 B4     LDA ram_00B4
C - - - - - 0x0072FA 01:B2EA: C9 FF     CMP #$FF
C - - - - - 0x0072FC 01:B2EC: D0 4A     BNE bra_B338_RTS
C - - - - - 0x0072FE 01:B2EE: A9 00     LDA #$00
C - - - - - 0x007300 01:B2F0: A6 15     LDX ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x007302 01:B2F2: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x007305 01:B2F5: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x007307 01:B2F7: 60        RTS
bra_B2F8_FF:
C - - - - - 0x007308 01:B2F8: E6 19     INC ram_0019_subscript
C - - - - - 0x00730A 01:B2FA: 20 8D B4  JSR sub_B48D
C - - - - - 0x00730D 01:B2FD: 4C 71 B4  JMP loc_B471



ofs_024_B300_08:
C - - J - - 0x007310 01:B300: 20 DB B3  JSR sub_B3DB
C - - - - - 0x007313 01:B303: 20 0C B5  JSR sub_B50C
C - - - - - 0x007316 01:B306: 20 B9 B3  JSR sub_B3B9
C - - - - - 0x007319 01:B309: A5 26     LDA ram_btn_press
C - - - - - 0x00731B 01:B30B: 29 30     AND #con_btns_SS
C - - - - - 0x00731D 01:B30D: D0 04     BNE bra_B313
C - - - - - 0x00731F 01:B30F: A5 2D     LDA ram_002D_flag
C - - - - - 0x007321 01:B311: F0 25     BEQ bra_B338_RTS
bra_B313:
C - - - - - 0x007323 01:B313: A5 26     LDA ram_btn_press
C - - - - - 0x007325 01:B315: 29 20     AND #con_btn_Select
C - - - - - 0x007327 01:B317: D0 30     BNE bra_B349
C - - - - - 0x007329 01:B319: 20 56 B6  JSR sub_B656
C - - - - - 0x00732C 01:B31C: A2 05     LDX #$05
C - - - - - 0x00732E 01:B31E: 20 27 B6  JSR sub_B627
C - - - - - 0x007331 01:B321: AD 8B 07  LDA ram_078B
C - - - - - 0x007334 01:B324: F0 13     BEQ bra_B339
C - - - - - 0x007336 01:B326: A9 40     LDA #con_sound_wrong_psw
C - - - - - 0x007338 01:B328: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00733B 01:B32B: A9 09     LDA #$09
C - - - - - 0x00733D 01:B32D: 85 19     STA ram_0019_subscript
C - - - - - 0x00733F 01:B32F: A9 23     LDA #con_98E4_23
C - - - - - 0x007341 01:B331: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x007344 01:B334: A9 78     LDA #$78
C - - - - - 0x007346 01:B336: 85 30     STA ram_screen_timer_lo
bra_B338_RTS:
C - - - - - 0x007348 01:B338: 60        RTS
bra_B339:
C - - - - - 0x007349 01:B339: A9 78     LDA #$78
C - - - - - 0x00734B 01:B33B: 85 30     STA ram_screen_timer_lo
C - - - - - 0x00734D 01:B33D: A9 07     LDA #$07
C - - - - - 0x00734F 01:B33F: 8D 60 01  STA ram_015B_se + $05
C - - - - - 0x007352 01:B342: A9 0A     LDA #$0A
C - - - - - 0x007354 01:B344: 85 19     STA ram_0019_subscript
C - - - - - 0x007356 01:B346: 4C 66 B0  JMP loc_B066
bra_B349:
C - - - - - 0x007359 01:B349: 20 66 B0  JSR sub_B066
C - - - - - 0x00735C 01:B34C: A9 0B     LDA #$0B
C - - - - - 0x00735E 01:B34E: 85 19     STA ram_0019_subscript
bra_B350_RTS:
C - - - - - 0x007360 01:B350: 60        RTS



ofs_024_B351_09:
C - - J - - 0x007361 01:B351: A9 22     LDA #con_98E4_not_complete_try_again
C - - - - - 0x007363 01:B353: 20 AB B3  JSR sub_B3AB
C - - - - - 0x007366 01:B356: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x007368 01:B358: D0 F6     BNE bra_B350_RTS
C - - - - - 0x00736A 01:B35A: 20 66 B0  JSR sub_B066
C - - - - - 0x00736D 01:B35D: A9 0C     LDA #$0C
C - - - - - 0x00736F 01:B35F: 85 19     STA ram_0019_subscript
C - - - - - 0x007371 01:B361: A9 00     LDA #$00
C - - - - - 0x007373 01:B363: 85 1D     STA ram_index_ppu_buffer
C - - - - - 0x007375 01:B365: 4C 82 B6  JMP loc_B682_clear_0790_079F



ofs_024_B368_0A:
C - - J - - 0x007378 01:B368: A5 B4     LDA ram_00B4
C - - - - - 0x00737A 01:B36A: C9 FF     CMP #$FF
C - - - - - 0x00737C 01:B36C: F0 0A     BEQ bra_B378_FF
C - - - - - 0x00737E 01:B36E: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x007380 01:B370: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x007382 01:B372: 20 98 B5  JSR sub_B598
C - - - - - 0x007385 01:B375: 20 AF FB  JSR sub_0x03FBBF_decrease_brightness
bra_B378_FF:
C - - - - - 0x007388 01:B378: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x00738A 01:B37A: D0 D4     BNE bra_B350_RTS
C - - - - - 0x00738C 01:B37C: A9 0E     LDA #con_0018_0E
C - - - - - 0x00738E 01:B37E: 4C 74 E5  JMP loc_0x03E584_prepare_script



ofs_024_B381_0C:
C - - J - - 0x007391 01:B381: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x007393 01:B383: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x007395 01:B385: 20 98 B5  JSR sub_B598
C - - - - - 0x007398 01:B388: 20 AF FB  JSR sub_0x03FBBF_decrease_brightness
C - - - - - 0x00739B 01:B38B: A5 B4     LDA ram_00B4
C - - - - - 0x00739D 01:B38D: C9 FF     CMP #$FF
C - - - - - 0x00739F 01:B38F: D0 19     BNE bra_B3AA_RTS
C - - - - - 0x0073A1 01:B391: A9 06     LDA #$06
C - - - - - 0x0073A3 01:B393: 85 19     STA ram_0019_subscript
C - - - - - 0x0073A5 01:B395: 60        RTS



ofs_024_B396_0B:
C - - J - - 0x0073A6 01:B396: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x0073A8 01:B398: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x0073AA 01:B39A: 20 98 B5  JSR sub_B598
C - - - - - 0x0073AD 01:B39D: 20 AF FB  JSR sub_0x03FBBF_decrease_brightness
C - - - - - 0x0073B0 01:B3A0: A5 B4     LDA ram_00B4
C - - - - - 0x0073B2 01:B3A2: C9 FF     CMP #$FF
C - - - - - 0x0073B4 01:B3A4: D0 04     BNE bra_B3AA_RTS
C - - - - - 0x0073B6 01:B3A6: A9 01     LDA #$01
C - - - - - 0x0073B8 01:B3A8: 85 19     STA ram_0019_subscript
bra_B3AA_RTS:
C - - - - - 0x0073BA 01:B3AA: 60        RTS



sub_B3AB:
; bzk optimize, single JSR to here
; in
    ; A = con_98E4
C - - - - - 0x0073BB 01:B3AB: 85 00     STA ram_0000_t082
C - - - - - 0x0073BD 01:B3AD: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x0073BF 01:B3AF: 29 10     AND #$10
; * 08
C - - - - - 0x0073C1 01:B3B1: 0A        ASL
C - - - - - 0x0073C2 01:B3B2: 0A        ASL
C - - - - - 0x0073C3 01:B3B3: 0A        ASL
; A = 00/80
C - - - - - 0x0073C4 01:B3B4: 05 00     ORA ram_0000_t082
C - - - - - 0x0073C6 01:B3B6: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



sub_B3B9:
C - - - - - 0x0073C9 01:B3B9: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0073CB 01:B3BB: 29 01     AND #$01
C - - - - - 0x0073CD 01:B3BD: D0 0E     BNE bra_B3CD
C - - - - - 0x0073CF 01:B3BF: AD 8D 07  LDA ram_078D
C - - - - - 0x0073D2 01:B3C2: F0 16     BEQ bra_B3DA_RTS
C - - - - - 0x0073D4 01:B3C4: 20 8D B4  JSR sub_B48D
C - - - - - 0x0073D7 01:B3C7: A9 00     LDA #$00
C - - - - - 0x0073D9 01:B3C9: 8D 8D 07  STA ram_078D
C - - - - - 0x0073DC 01:B3CC: 60        RTS
bra_B3CD:
C - - - - - 0x0073DD 01:B3CD: AD 8C 07  LDA ram_078C
C - - - - - 0x0073E0 01:B3D0: F0 08     BEQ bra_B3DA_RTS
C - - - - - 0x0073E2 01:B3D2: 20 71 B4  JSR sub_B471
C - - - - - 0x0073E5 01:B3D5: A9 00     LDA #$00
C - - - - - 0x0073E7 01:B3D7: 8D 8C 07  STA ram_078C
bra_B3DA_RTS:
C - - - - - 0x0073EA 01:B3DA: 60        RTS



sub_B3DB:
C - - - - - 0x0073EB 01:B3DB: 20 33 B5  JSR sub_B533
C - - - - - 0x0073EE 01:B3DE: 20 FB B3  JSR sub_B3FB
C - - - - - 0x0073F1 01:B3E1: A5 26     LDA ram_btn_press
C - - - - - 0x0073F3 01:B3E3: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0073F5 01:B3E5: F0 11     BEQ bra_B3F8
C - - - - - 0x0073F7 01:B3E7: AD 81 07  LDA ram_0781
C - - - - - 0x0073FA 01:B3EA: 8D 83 07  STA ram_0783
C - - - - - 0x0073FD 01:B3ED: AD 80 07  LDA ram_0780
C - - - - - 0x007400 01:B3F0: 8D 82 07  STA ram_0782
C - - - - - 0x007403 01:B3F3: A9 01     LDA #$01
C - - - - - 0x007405 01:B3F5: 8D 8C 07  STA ram_078C
bra_B3F8:
C - - - - - 0x007408 01:B3F8: 4C CA B0  JMP loc_B0CA



sub_B3FB:
loc_B3FB:
C D 1 - - - 0x00740B 01:B3FB: A2 02     LDX #$02
C - - - - - 0x00740D 01:B3FD: A0 01     LDY #$01
bra_B3FF_loop:
C - - - - - 0x00740F 01:B3FF: 20 14 B4  JSR sub_B414
C - - - - - 0x007412 01:B402: B9 33 B4  LDA tbl_B433_pos_X_lo,Y
C - - - - - 0x007415 01:B405: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x007418 01:B408: A9 50     LDA #$50
C - - - - - 0x00741A 01:B40A: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x00741D 01:B40D: E8        INX
C - - - - - 0x00741E 01:B40E: C8        INY
C - - - - - 0x00741F 01:B40F: E0 05     CPX #$05
C - - - - - 0x007421 01:B411: 90 EC     BCC bra_B3FF_loop
C - - - - - 0x007423 01:B413: 60        RTS



sub_B414:
loc_B414:
C D 1 - - - 0x007424 01:B414: B9 27 B4  LDA tbl_B427,Y
C - - - - - 0x007427 01:B417: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00742A 01:B41A: B9 2B B4  LDA tbl_B42B,Y
C - - - - - 0x00742D 01:B41D: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x007430 01:B420: B9 2F B4  LDA tbl_B42F,Y
C - - - - - 0x007433 01:B423: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x007436 01:B426: 60        RTS



tbl_B427:
- D 1 - - - 0x007437 01:B427: 00        .byte $00   ; 00 
- D 1 - - - 0x007438 01:B428: 42        .byte $42   ; 01 
- D 1 - - - 0x007439 01:B429: FC        .byte $FC   ; 02 
- D 1 - - - 0x00743A 01:B42A: F4        .byte $F4   ; 03 



tbl_B42B:
- D 1 - - - 0x00743B 01:B42B: 00        .byte con_obj_type_00   ; 00 
- D 1 - - - 0x00743C 01:B42C: 14        .byte con_obj_type_14   ; 01 
- D 1 - - - 0x00743D 01:B42D: 0C        .byte con_obj_type_0C   ; 02 
- D 1 - - - 0x00743E 01:B42E: 0C        .byte con_obj_type_0C   ; 03 



tbl_B42F:
- D 1 - - - 0x00743F 01:B42F: 00        .byte $00   ; 00 
- D 1 - - - 0x007440 01:B430: 00        .byte $00   ; 01 
- D 1 - - - 0x007441 01:B431: 00        .byte $00   ; 02 
- D 1 - - - 0x007442 01:B432: 00        .byte $00   ; 03 



tbl_B433_pos_X_lo:
- - - - - - 0x007443 01:B433: 50        .byte $50   ; 00 
- D 1 - - - 0x007444 01:B434: 70        .byte $70   ; 01 
- D 1 - - - 0x007445 01:B435: 90        .byte $90   ; 02 
- D 1 - - - 0x007446 01:B436: B0        .byte $B0   ; 03 



tbl_B437_tiles:
; bzk optimize, rows = columns in all cases
; 00 
- D 1 - - - 0x007447 01:B437: 04        .byte $04   ; rows
- D 1 - - - 0x007448 01:B438: 04        .byte $04   ; columns
- D 1 - - - 0x007449 01:B439: 86        .byte $86, $A4, $A4, $87   ; 01 
- D 1 - - - 0x00744D 01:B43D: 96        .byte $96, $00, $00, $97   ; 02 
- D 1 - - - 0x007451 01:B441: 96        .byte $96, $00, $00, $97   ; 03 
- D 1 - - - 0x007455 01:B445: A6        .byte $A6, $A5, $A5, $A7   ; 04 
; 12 
- D 1 - - - 0x007459 01:B449: 04        .byte $04   ; rows
- D 1 - - - 0x00745A 01:B44A: 04        .byte $04   ; columns
- D 1 - - - 0x00745B 01:B44B: 80        .byte $80, $81, $81, $82   ; 01 
- D 1 - - - 0x00745F 01:B44F: 90        .byte $90, $00, $00, $92   ; 02 
- D 1 - - - 0x007463 01:B453: 90        .byte $90, $00, $00, $92   ; 03 
- D 1 - - - 0x007467 01:B457: A0        .byte $A0, $A1, $A1, $A2   ; 04 
; 24 
- D 1 - - - 0x00746B 01:B45B: 03        .byte $03   ; rows
- D 1 - - - 0x00746C 01:B45C: 03        .byte $03   ; columns
- D 1 - - - 0x00746D 01:B45D: 86        .byte $86, $A4, $87   ; 01 
- D 1 - - - 0x007470 01:B460: 96        .byte $96, $00, $97   ; 02 
- D 1 - - - 0x007473 01:B463: A6        .byte $A6, $A5, $A7   ; 03 
; 2F 
- D 1 - - - 0x007476 01:B466: 03        .byte $03   ; rows
- D 1 - - - 0x007477 01:B467: 03        .byte $03   ; columns
- D 1 - - - 0x007478 01:B468: 80        .byte $80, $81, $82   ; 01 
- D 1 - - - 0x00747B 01:B46B: 90        .byte $90, $00, $92   ; 02 
- D 1 - - - 0x00747E 01:B46E: A0        .byte $A0, $A1, $A2   ; 03 



loc_B471:
sub_B471:
C D 1 - - - 0x007481 01:B471: AD 83 07  LDA ram_0783
C - - - - - 0x007484 01:B474: AC 82 07  LDY ram_0782
C - - - - - 0x007487 01:B477: 20 EB B4  JSR sub_B4EB_calculate_ppu_address
C - - - - - 0x00748A 01:B47A: A0 2F     LDY #$2F
C - - - - - 0x00748C 01:B47C: 20 A0 B4  JSR sub_B4A0
C - - - - - 0x00748F 01:B47F: AD 81 07  LDA ram_0781
C - - - - - 0x007492 01:B482: AC 80 07  LDY ram_0780
C - - - - - 0x007495 01:B485: 20 EB B4  JSR sub_B4EB_calculate_ppu_address
C - - - - - 0x007498 01:B488: A0 24     LDY #$24
C - - - - - 0x00749A 01:B48A: 4C A0 B4  JMP loc_B4A0



sub_B48D:
C - - - - - 0x00749D 01:B48D: AD 87 07  LDA ram_0787
C - - - - - 0x0074A0 01:B490: 20 DF B4  JSR sub_B4DF_calculate_ppu_address
C - - - - - 0x0074A3 01:B493: A0 12     LDY #$12
C - - - - - 0x0074A5 01:B495: 20 A0 B4  JSR sub_B4A0
C - - - - - 0x0074A8 01:B498: AD 86 07  LDA ram_0786
C - - - - - 0x0074AB 01:B49B: 20 DF B4  JSR sub_B4DF_calculate_ppu_address
C - - - - - 0x0074AE 01:B49E: A0 00     LDY #$00
sub_B4A0:
loc_B4A0:
C D 1 - - - 0x0074B0 01:B4A0: B9 37 B4  LDA tbl_B437_tiles,Y
C - - - - - 0x0074B3 01:B4A3: 85 03     STA ram_0003_t001_rows
C - - - - - 0x0074B5 01:B4A5: C8        INY
C - - - - - 0x0074B6 01:B4A6: B9 37 B4  LDA tbl_B437_tiles,Y
C - - - - - 0x0074B9 01:B4A9: 85 04     STA ram_0004_t003_columns
C - - - - - 0x0074BB 01:B4AB: C8        INY
bra_B4AC_loop:
C - - - - - 0x0074BC 01:B4AC: A9 01     LDA #$01
C - - - - - 0x0074BE 01:B4AE: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0074C1 01:B4B1: A5 00     LDA ram_0000_t083_ppu_addr_lo
C - - - - - 0x0074C3 01:B4B3: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0074C6 01:B4B6: A5 01     LDA ram_0001_t033_ppu_addr_hi
C - - - - - 0x0074C8 01:B4B8: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0074CB 01:B4BB: A5 04     LDA ram_0004_t003_columns
C - - - - - 0x0074CD 01:B4BD: 85 05     STA ram_0005_t001_tiles_counter
bra_B4BF_loop:
C - - - - - 0x0074CF 01:B4BF: B9 37 B4  LDA tbl_B437_tiles,Y
C - - - - - 0x0074D2 01:B4C2: C8        INY
C - - - - - 0x0074D3 01:B4C3: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0074D6 01:B4C6: C6 05     DEC ram_0005_t001_tiles_counter
C - - - - - 0x0074D8 01:B4C8: D0 F5     BNE bra_B4BF_loop
C - - - - - 0x0074DA 01:B4CA: 20 12 ED  JSR sub_0x03ED22_close_buffer
C - - - - - 0x0074DD 01:B4CD: 18        CLC
C - - - - - 0x0074DE 01:B4CE: A9 20     LDA #< $0020
C - - - - - 0x0074E0 01:B4D0: 65 00     ADC ram_0000_t083_ppu_addr_lo
C - - - - - 0x0074E2 01:B4D2: 85 00     STA ram_0000_t083_ppu_addr_lo
C - - - - - 0x0074E4 01:B4D4: A9 00     LDA #> $0020
C - - - - - 0x0074E6 01:B4D6: 65 01     ADC ram_0001_t033_ppu_addr_hi
C - - - - - 0x0074E8 01:B4D8: 85 01     STA ram_0001_t033_ppu_addr_hi
C - - - - - 0x0074EA 01:B4DA: C6 03     DEC ram_0003_t001_rows
C - - - - - 0x0074EC 01:B4DC: D0 CE     BNE bra_B4AC_loop
C - - - - - 0x0074EE 01:B4DE: 60        RTS



sub_B4DF_calculate_ppu_address:
; in
    ; A = 
; * 04
C - - - - - 0x0074EF 01:B4DF: 0A        ASL
C - - - - - 0x0074F0 01:B4E0: 0A        ASL
C - - - - - 0x0074F1 01:B4E1: 18        CLC
C - - - - - 0x0074F2 01:B4E2: 69 08     ADC #< $2108
C - - - - - 0x0074F4 01:B4E4: 85 00     STA ram_0000_t083_ppu_addr_lo
C - - - - - 0x0074F6 01:B4E6: A9 21     LDA #> $2108
C - - - - - 0x0074F8 01:B4E8: 85 01     STA ram_0001_t033_ppu_addr_hi
C - - - - - 0x0074FA 01:B4EA: 60        RTS



sub_B4EB_calculate_ppu_address:
; in
    ; A = 
C - - - - - 0x0074FB 01:B4EB: 0A        ASL
C - - - - - 0x0074FC 01:B4EC: AA        TAX
C - - - - - 0x0074FD 01:B4ED: BD 00 B5  LDA tbl_B500_ppu_base,X
C - - - - - 0x007500 01:B4F0: 85 00     STA ram_0000_t083_ppu_addr_lo
C - - - - - 0x007502 01:B4F2: BD 01 B5  LDA tbl_B500_ppu_base + $01,X
C - - - - - 0x007505 01:B4F5: 85 01     STA ram_0001_t033_ppu_addr_hi
C - - - - - 0x007507 01:B4F7: A5 00     LDA ram_0000_t083_ppu_addr_lo
C - - - - - 0x007509 01:B4F9: 18        CLC
C - - - - - 0x00750A 01:B4FA: 79 08 B5  ADC tbl_B508_ppu_offset,Y
C - - - - - 0x00750D 01:B4FD: 85 00     STA ram_0000_t083_ppu_addr_lo
C - - - - - 0x00750F 01:B4FF: 60        RTS



tbl_B500_ppu_base:
- D 1 - - - 0x007510 01:B500: C0 21     .word $21C0 ; 00 
- D 1 - - - 0x007512 01:B502: 20 22     .word $2220 ; 01 
- D 1 - - - 0x007514 01:B504: 80 22     .word $2280 ; 02 
- D 1 - - - 0x007516 01:B506: E0 22     .word $22E0 ; 03 



tbl_B508_ppu_offset:
- D 1 - - - 0x007518 01:B508: 0A        .byte $0A   ; 00 
- D 1 - - - 0x007519 01:B509: 0D        .byte $0D   ; 01 
- D 1 - - - 0x00751A 01:B50A: 10        .byte $10   ; 02 
- D 1 - - - 0x00751B 01:B50B: 13        .byte $13   ; 03 



sub_B50C:
C - - - - - 0x00751C 01:B50C: A2 00     LDX #$00
C - - - - - 0x00751E 01:B50E: AD 81 07  LDA ram_0781
; * 18
C - - - - - 0x007521 01:B511: 0A        ASL
C - - - - - 0x007522 01:B512: 0A        ASL
C - - - - - 0x007523 01:B513: 0A        ASL
C - - - - - 0x007524 01:B514: 85 00     STA ram_0000_t0A2
C - - - - - 0x007526 01:B516: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x007527 01:B517: 18        CLC
C - - - - - 0x007528 01:B518: 65 00     ADC ram_0000_t0A2
; bzk optimize, value is too low, no need for CLC after ADC
C - - - - - 0x00752A 01:B51A: 18        CLC
C - - - - - 0x00752B 01:B51B: 69 7A     ADC #$7A
C - - - - - 0x00752D 01:B51D: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x007530 01:B520: AD 80 07  LDA ram_0780
; * 18
; bzk optimize, use ram_0000_t0A2 instead of ram_0001_t03B
C - - - - - 0x007533 01:B523: 0A        ASL
C - - - - - 0x007534 01:B524: 0A        ASL
C - - - - - 0x007535 01:B525: 0A        ASL
C - - - - - 0x007536 01:B526: 85 01     STA ram_0001_t03B
C - - - - - 0x007538 01:B528: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x007539 01:B529: 18        CLC
C - - - - - 0x00753A 01:B52A: 65 01     ADC ram_0001_t03B
; bzk optimize, value is too low, no need for CLC after ADC
C - - - - - 0x00753C 01:B52C: 18        CLC
C - - - - - 0x00753D 01:B52D: 69 5D     ADC #$5D
C - - - - - 0x00753F 01:B52F: 9D 38 04  STA ram_obj_pos_X_lo,X
bra_B532_RTS:
C - - - - - 0x007542 01:B532: 60        RTS



sub_B533:
C - - - - - 0x007543 01:B533: A5 26     LDA ram_btn_press
C - - - - - 0x007545 01:B535: 29 40     AND #con_btn_B
C - - - - - 0x007547 01:B537: F0 17     BEQ bra_B550
C - - - - - 0x007549 01:B539: A9 1A     LDA #con_sound_heart_count
C - - - - - 0x00754B 01:B53B: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00754E 01:B53E: A9 01     LDA #$01
C - - - - - 0x007550 01:B540: 8D 8D 07  STA ram_078D
C - - - - - 0x007553 01:B543: AC 86 07  LDY ram_0786
C - - - - - 0x007556 01:B546: 8C 87 07  STY ram_0787
C - - - - - 0x007559 01:B549: C8        INY
C - - - - - 0x00755A 01:B54A: 98        TYA
C - - - - - 0x00755B 01:B54B: 29 03     AND #$03
C - - - - - 0x00755D 01:B54D: 8D 86 07  STA ram_0786
bra_B550:
C - - - - - 0x007560 01:B550: A5 26     LDA ram_btn_press
C - - - - - 0x007562 01:B552: 29 80     AND #con_btn_A
C - - - - - 0x007564 01:B554: F0 DC     BEQ bra_B532_RTS
C - - - - - 0x007566 01:B556: A9 1B     LDA #con_sound_pick_up_heart
C - - - - - 0x007568 01:B558: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00756B 01:B55B: AD 81 07  LDA ram_0781
; * 04
C - - - - - 0x00756E 01:B55E: 0A        ASL
C - - - - - 0x00756F 01:B55F: 0A        ASL
C - - - - - 0x007570 01:B560: 6D 80 07  ADC ram_0780
C - - - - - 0x007573 01:B563: A8        TAY
C - - - - - 0x007574 01:B564: AD 81 07  LDA ram_0781
; * 04
C - - - - - 0x007577 01:B567: 0A        ASL
C - - - - - 0x007578 01:B568: 0A        ASL
C - - - - - 0x007579 01:B569: 0D 80 07  ORA ram_0780
C - - - - - 0x00757C 01:B56C: 48        PHA
C - - - - - 0x00757D 01:B56D: 18        CLC
C - - - - - 0x00757E 01:B56E: 69 05     ADC #$05
C - - - - - 0x007580 01:B570: AA        TAX
C - - - - - 0x007581 01:B571: 68        PLA
; * 04
C - - - - - 0x007582 01:B572: 0A        ASL
C - - - - - 0x007583 01:B573: 0A        ASL
C - - - - - 0x007584 01:B574: 0D 86 07  ORA ram_0786
C - - - - - 0x007587 01:B577: 85 00     STA ram_0000_t0A3
C - - - - - 0x007589 01:B579: 29 03     AND #$03
C - - - - - 0x00758B 01:B57B: D0 04     BNE bra_B581
C - - - - - 0x00758D 01:B57D: A9 00     LDA #$00
C - - - - - 0x00758F 01:B57F: F0 02     BEQ bra_B583    ; jmp
bra_B581:
C - - - - - 0x007591 01:B581: A5 00     LDA ram_0000_t0A3
bra_B583:
C - - - - - 0x007593 01:B583: 99 90 07  STA ram_0790,Y
C - - - - - 0x007596 01:B586: AC 86 07  LDY ram_0786
C - - - - - 0x007599 01:B589: AD 38 04  LDA ram_plr_pos_X_lo
C - - - - - 0x00759C 01:B58C: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x00759F 01:B58F: AD 1C 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x0075A2 01:B592: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0075A5 01:B595: 4C 14 B4  JMP loc_B414



sub_B598:
C - - - - - 0x0075A8 01:B598: A9 1E     LDA #con_98E4_1E_bg_spr_pal
C - - - - - 0x0075AA 01:B59A: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0075AD 01:B59D: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x0075AF 01:B59F: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



loc_0x0075B2:
C D 1 - - - 0x0075B2 01:B5A2: A5 19     LDA ram_0019_subscript
C - - - - - 0x0075B4 01:B5A4: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x0075B7 01:B5A7: AD B5     .word ofs_023_B5AD_00_show_password_by_user_request
- D 1 - I - 0x0075B9 01:B5A9: E4 B5     .word ofs_023_B5E4_01
- D 1 - I - 0x0075BB 01:B5AB: 10 B6     .word ofs_023_B610_02



ofs_023_B5AD_00_show_password_by_user_request:
C - - J - - 0x0075BD 01:B5AD: A9 44     LDA #$44    ; vertical nametable mapping
C - - - - - 0x0075BF 01:B5AF: 85 25     STA ram_for_5105
C - - - - - 0x0075C1 01:B5B1: 8D 05 51  STA $5105
C - - - - - 0x0075C4 01:B5B4: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x0075C7 01:B5B7: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x0075C9 01:B5B9: A2 1A     LDX #con_EC77_password
C - - - - - 0x0075CB 01:B5BB: 20 D5 EB  JSR sub_0x03EBE5_draw_screen
C - - - - - 0x0075CE 01:B5BE: 20 D6 E2  JSR sub_0x03E2E6_prg_bankswitch_dpcm_1
C - - - - - 0x0075D1 01:B5C1: A9 62     LDA #con_music_enter_name_psw
C - - - - - 0x0075D3 01:B5C3: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0075D6 01:B5C6: E6 19     INC ram_0019_subscript
C - - - - - 0x0075D8 01:B5C8: 20 C7 B1  JSR sub_B1C7
C - - - - - 0x0075DB 01:B5CB: 20 25 B6  JSR sub_B625
C - - - - - 0x0075DE 01:B5CE: 20 75 B6  JSR sub_B675_clear_0780_078F
C - - - - - 0x0075E1 01:B5D1: 20 4A B6  JSR sub_B64A
C - - - - - 0x0075E4 01:B5D4: 20 8B B2  JSR sub_B28B
C - - - - - 0x0075E7 01:B5D7: 20 47 B6  JSR sub_B647_arrange_password_symbols
C - - - - - 0x0075EA 01:B5DA: 20 66 B0  JSR sub_B066
C - - - - - 0x0075ED 01:B5DD: A9 03     LDA #$03
C - - - - - 0x0075EF 01:B5DF: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x0075F1 01:B5E1: 4C FB B3  JMP loc_B3FB



ofs_023_B5E4_01:
C - - J - - 0x0075F4 01:B5E4: A5 B4     LDA ram_00B4
C - - - - - 0x0075F6 01:B5E6: C9 FF     CMP #$FF
C - - - - - 0x0075F8 01:B5E8: F0 1A     BEQ bra_B604_FF
C - - - - - 0x0075FA 01:B5EA: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x0075FC 01:B5EC: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x0075FE 01:B5EE: 20 98 B5  JSR sub_B598
C - - - - - 0x007601 01:B5F1: 20 A4 FB  JSR sub_0x03FBB4_increase_brightness
C - - - - - 0x007604 01:B5F4: A5 B4     LDA ram_00B4
C - - - - - 0x007606 01:B5F6: C9 FF     CMP #$FF
C - - - - - 0x007608 01:B5F8: D0 15     BNE bra_B60F_RTS
C - - - - - 0x00760A 01:B5FA: A9 00     LDA #$00
C - - - - - 0x00760C 01:B5FC: A6 15     LDX ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x00760E 01:B5FE: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x007610 01:B600: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x007613 01:B603: 60        RTS
bra_B604_FF:
C - - - - - 0x007614 01:B604: A5 26     LDA ram_btn_press
C - - - - - 0x007616 01:B606: 29 10     AND #con_btn_Start
C - - - - - 0x007618 01:B608: F0 05     BEQ bra_B60F_RTS
C - - - - - 0x00761A 01:B60A: 20 66 B0  JSR sub_B066
C - - - - - 0x00761D 01:B60D: E6 19     INC ram_0019_subscript
bra_B60F_RTS:
C - - - - - 0x00761F 01:B60F: 60        RTS



ofs_023_B610_02:
C - - J - - 0x007620 01:B610: A5 B4     LDA ram_00B4
C - - - - - 0x007622 01:B612: C9 FF     CMP #$FF
C - - - - - 0x007624 01:B614: F0 0A     BEQ bra_B620_FF
C - - - - - 0x007626 01:B616: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x007628 01:B618: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x00762A 01:B61A: 20 98 B5  JSR sub_B598
C - - - - - 0x00762D 01:B61D: 4C AF FB  JMP loc_0x03FBBF_decrease_brightness
bra_B620_FF:
C - - - - - 0x007630 01:B620: A9 00     LDA #con_0018_title_screen
C - - - - - 0x007632 01:B622: 4C 74 E5  JMP loc_0x03E584_prepare_script



sub_B625:
C - - - - - 0x007635 01:B625: A2 00     LDX #$00
sub_B627:
C - - - - - 0x007637 01:B627: A9 00     LDA #$00
bra_B629_loop:
C - - - - - 0x007639 01:B629: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00763C 01:B62C: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x00763F 01:B62F: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x007642 01:B632: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x007645 01:B635: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x007648 01:B638: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x00764B 01:B63B: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00764E 01:B63E: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x007651 01:B641: E8        INX
C - - - - - 0x007652 01:B642: E0 17     CPX #$17
C - - - - - 0x007654 01:B644: 90 E3     BCC bra_B629_loop
C - - - - - 0x007656 01:B646: 60        RTS



sub_B647_arrange_password_symbols:
; bzk optimize
C - - - - - 0x007657 01:B647: 4C 40 B9  JMP loc_B940_arrange_password_symbols



sub_B64A:
C - - - - - 0x00765A 01:B64A: 20 CD B6  JSR sub_B6CD_get_name_hash
C - - - - - 0x00765D 01:B64D: 8D 8A 07  STA ram_078A
C - - - - - 0x007660 01:B650: 20 EE B6  JSR sub_B6EE
C - - - - - 0x007663 01:B653: 4C C4 B8  JMP loc_B8C4



sub_B656:
C - - - - - 0x007666 01:B656: 20 CD B6  JSR sub_B6CD_get_name_hash
C - - - - - 0x007669 01:B659: 85 10     STA ram_0010_t014
C - - - - - 0x00766B 01:B65B: 20 9A B7  JSR sub_B79A
C - - - - - 0x00766E 01:B65E: 20 F0 B7  JSR sub_B7F0
C - - - - - 0x007671 01:B661: 20 8F B6  JSR sub_B68F
C - - - - - 0x007674 01:B664: 20 2C B8  JSR sub_B82C
C - - - - - 0x007677 01:B667: 20 93 E5  JSR sub_0x03E5A3_check_for_special_name
C - - - - - 0x00767A 01:B66A: B0 03     BCS bra_B66F
C - - - - - 0x00767C 01:B66C: 20 7F B8  JSR sub_B87F
bra_B66F:
C - - - - - 0x00767F 01:B66F: 20 56 B7  JSR sub_B756
C - - - - - 0x007682 01:B672: 4C 65 B8  JMP loc_B865



sub_B675_clear_0780_078F:
C - - - - - 0x007685 01:B675: A9 00     LDA #$00
C - - - - - 0x007687 01:B677: A2 00     LDX #$00
bra_B679_loop:  ; 0780-078F
C - - - - - 0x007689 01:B679: 9D 80 07  STA ram_0780,X
C - - - - - 0x00768C 01:B67C: E8        INX
C - - - - - 0x00768D 01:B67D: E0 10     CPX #$10
C - - - - - 0x00768F 01:B67F: 90 F8     BCC bra_B679_loop
C - - - - - 0x007691 01:B681: 60        RTS



loc_B682_clear_0790_079F:
C D 1 - - - 0x007692 01:B682: A0 00     LDY #$00
C - - - - - 0x007694 01:B684: A9 00     LDA #$00
bra_B686_loop:  ; 0790-079F
C - - - - - 0x007696 01:B686: 99 90 07  STA ram_0790,Y
C - - - - - 0x007699 01:B689: C8        INY
C - - - - - 0x00769A 01:B68A: C0 10     CPY #$10
C - - - - - 0x00769C 01:B68C: 90 F8     BCC bra_B686_loop
C - - - - - 0x00769E 01:B68E: 60        RTS



sub_B68F:
C - - - - - 0x00769F 01:B68F: A2 00     LDX #$00
C - - - - - 0x0076A1 01:B691: AD 8F 07  LDA ram_078F
; * 08
C - - - - - 0x0076A4 01:B694: 0A        ASL
C - - - - - 0x0076A5 01:B695: 0A        ASL
C - - - - - 0x0076A6 01:B696: 0A        ASL
C - - - - - 0x0076A7 01:B697: 6D 8F 07  ADC ram_078F
C - - - - - 0x0076AA 01:B69A: 85 00     STA ram_0000_t0A4
bra_B69C_loop:
C - - - - - 0x0076AC 01:B69C: A4 00     LDY ram_0000_t0A4
C - - - - - 0x0076AE 01:B69E: B9 B2 B6  LDA tbl_B6B2,Y
C - - - - - 0x0076B1 01:B6A1: 20 E2 B7  JSR sub_B7E2
C - - - - - 0x0076B4 01:B6A4: B9 90 07  LDA ram_0790,Y
C - - - - - 0x0076B7 01:B6A7: 9D A0 07  STA ram_pal_buffer,X
C - - - - - 0x0076BA 01:B6AA: E6 00     INC ram_0000_t0A4
C - - - - - 0x0076BC 01:B6AC: E8        INX
C - - - - - 0x0076BD 01:B6AD: E0 09     CPX #$09
C - - - - - 0x0076BF 01:B6AF: 90 EB     BCC bra_B69C_loop
C - - - - - 0x0076C1 01:B6B1: 60        RTS


; ???
tbl_B6B2:
- D 1 - - - 0x0076C2 01:B6B2: 00        .byte $00   ; 
tbl_B6B3:
- D 1 - - - 0x0076C3 01:B6B3: 33        .byte $33   ; 
- D 1 - - - 0x0076C4 01:B6B4: 20        .byte $20   ; 
- D 1 - - - 0x0076C5 01:B6B5: 13        .byte $13   ; 
- D 1 - - - 0x0076C6 01:B6B6: 22        .byte $22   ; 
- D 1 - - - 0x0076C7 01:B6B7: 01        .byte $01   ; 
- D 1 - - - 0x0076C8 01:B6B8: 11        .byte $11   ; 
- D 1 - - - 0x0076C9 01:B6B9: 03        .byte $03   ; 
- D 1 - - - 0x0076CA 01:B6BA: 32        .byte $32   ; 
- D 1 - - - 0x0076CB 01:B6BB: 12        .byte $12   ; 
- D 1 - - - 0x0076CC 01:B6BC: 10        .byte $10   ; 
- D 1 - - - 0x0076CD 01:B6BD: 02        .byte $02   ; 
- D 1 - - - 0x0076CE 01:B6BE: 32        .byte $32   ; 
- D 1 - - - 0x0076CF 01:B6BF: 23        .byte $23   ; 
- D 1 - - - 0x0076D0 01:B6C0: 13        .byte $13   ; 
- D 1 - - - 0x0076D1 01:B6C1: 30        .byte $30   ; 
- D 1 - - - 0x0076D2 01:B6C2: 21        .byte $21   ; 
- D 1 - - - 0x0076D3 01:B6C3: 01        .byte $01   ; 
- D 1 - - - 0x0076D4 01:B6C4: 31        .byte $31   ; 
- - - - - - 0x0076D5 01:B6C5: 13        .byte $13   ; 
- - - - - - 0x0076D6 01:B6C6: 01        .byte $01   ; 
- - - - - - 0x0076D7 01:B6C7: 22        .byte $22   ; 
- - - - - - 0x0076D8 01:B6C8: 10        .byte $10   ; 
- - - - - - 0x0076D9 01:B6C9: 30        .byte $30   ; 
- - - - - - 0x0076DA 01:B6CA: 33        .byte $33   ; 
- - - - - - 0x0076DB 01:B6CB: 03        .byte $03   ; 
- - - - - - 0x0076DC 01:B6CC: 21        .byte $21   ; 



sub_B6CD_get_name_hash:
; out
    ; A = 
C - - - - - 0x0076DD 01:B6CD: A9 00     LDA #$00
C - - - - - 0x0076DF 01:B6CF: 85 00     STA ram_0000_t0A6_hash
C - - - - - 0x0076E1 01:B6D1: AA        TAX ; 00
bra_B6D2_loop:
; 07F8-07FF
C - - - - - 0x0076E2 01:B6D2: BD F8 07  LDA ram_name,X
C - - - - - 0x0076E5 01:B6D5: 18        CLC
C - - - - - 0x0076E6 01:B6D6: 7D E6 B6  ADC tbl_B6E6_hash,X
C - - - - - 0x0076E9 01:B6D9: 18        CLC
C - - - - - 0x0076EA 01:B6DA: 65 00     ADC ram_0000_t0A6_hash
C - - - - - 0x0076EC 01:B6DC: 85 00     STA ram_0000_t0A6_hash
C - - - - - 0x0076EE 01:B6DE: E8        INX
C - - - - - 0x0076EF 01:B6DF: E0 08     CPX #$08
C - - - - - 0x0076F1 01:B6E1: D0 EF     BNE bra_B6D2_loop
C - - - - - 0x0076F3 01:B6E3: 29 07     AND #$07
C - - - - - 0x0076F5 01:B6E5: 60        RTS



tbl_B6E6_hash:
- D 1 - - - 0x0076F6 01:B6E6: 07        .byte $07   ; 00 
- D 1 - - - 0x0076F7 01:B6E7: 03        .byte $03   ; 01 
- D 1 - - - 0x0076F8 01:B6E8: 01        .byte $01   ; 02 
- D 1 - - - 0x0076F9 01:B6E9: 06        .byte $06   ; 03 
- D 1 - - - 0x0076FA 01:B6EA: 02        .byte $02   ; 04 
- D 1 - - - 0x0076FB 01:B6EB: 04        .byte $04   ; 05 
- D 1 - - - 0x0076FC 01:B6EC: 05        .byte $05   ; 06 
- D 1 - - - 0x0076FD 01:B6ED: 00        .byte $00   ; 07 



sub_B6EE:
C - - - - - 0x0076FE 01:B6EE: AD 8A 07  LDA ram_078A
C - - - - - 0x007701 01:B6F1: 85 00     STA ram_0000_t0A7
C - - - - - 0x007703 01:B6F3: A5 2E     LDA ram_002E
C - - - - - 0x007705 01:B6F5: C9 11     CMP #$11
C - - - - - 0x007707 01:B6F7: 90 02     BCC bra_B6FB_not_overflow
- - - - - - 0x007709 01:B6F9: A9 11     LDA #$11
bra_B6FB_not_overflow:
C - - - - - 0x00770B 01:B6FB: 85 2E     STA ram_002E
C - - - - - 0x00770D 01:B6FD: 4A        LSR
C - - - - - 0x00770E 01:B6FE: 26 00     ROL ram_0000_t0A7
C - - - - - 0x007710 01:B700: A5 1A     LDA ram_frm_cnt
C - - - - - 0x007712 01:B702: 4A        LSR
C - - - - - 0x007713 01:B703: 26 00     ROL ram_0000_t0A7
C - - - - - 0x007715 01:B705: 26 00     ROL ram_0000_t0A7
C - - - - - 0x007717 01:B707: 26 00     ROL ram_0000_t0A7
C - - - - - 0x007719 01:B709: A5 3A     LDA ram_partner
C - - - - - 0x00771B 01:B70B: 10 02     BPL bra_B70F
C - - - - - 0x00771D 01:B70D: A9 00     LDA #$00
bra_B70F:
C - - - - - 0x00771F 01:B70F: 05 00     ORA ram_0000_t0A7
C - - - - - 0x007721 01:B711: 0A        ASL
C - - - - - 0x007722 01:B712: 0D F6 07  ORA ram_quest
C - - - - - 0x007725 01:B715: 8D 88 07  STA ram_0788
C - - - - - 0x007728 01:B718: A5 1A     LDA ram_frm_cnt
C - - - - - 0x00772A 01:B71A: 4A        LSR
C - - - - - 0x00772B 01:B71B: A9 50     LDA #$50
C - - - - - 0x00772D 01:B71D: 90 02     BCC bra_B721
C - - - - - 0x00772F 01:B71F: A9 A0     LDA #$A0
bra_B721:
C - - - - - 0x007731 01:B721: 85 04     STA ram_0004_t015
C - - - - - 0x007733 01:B723: 20 2A B7  JSR sub_B72A
C - - - - - 0x007736 01:B726: 8D 89 07  STA ram_0789
C - - - - - 0x007739 01:B729: 60        RTS



sub_B72A:
; in
    ; ram_0004_t015
; out
    ; A = 
C - - - - - 0x00773A 01:B72A: AD 88 07  LDA ram_0788
C - - - - - 0x00773D 01:B72D: 29 F0     AND #$F0
C - - - - - 0x00773F 01:B72F: 85 02     STA ram_0002_t032
C - - - - - 0x007741 01:B731: AD 88 07  LDA ram_0788
; * 10
C - - - - - 0x007744 01:B734: 0A        ASL
C - - - - - 0x007745 01:B735: 0A        ASL
C - - - - - 0x007746 01:B736: 0A        ASL
C - - - - - 0x007747 01:B737: 0A        ASL
C - - - - - 0x007748 01:B738: 85 03     STA ram_0003_t012
C - - - - - 0x00774A 01:B73A: 18        CLC
C - - - - - 0x00774B 01:B73B: 65 02     ADC ram_0002_t032
C - - - - - 0x00774D 01:B73D: 85 01     STA ram_0001_t038
C - - - - - 0x00774F 01:B73F: A5 04     LDA ram_0004_t015
C - - - - - 0x007751 01:B741: 45 02     EOR ram_0002_t032
C - - - - - 0x007753 01:B743: 85 00     STA ram_0000_t08C
C - - - - - 0x007755 01:B745: A5 04     LDA ram_0004_t015
C - - - - - 0x007757 01:B747: 45 03     EOR ram_0003_t012
C - - - - - 0x007759 01:B749: 18        CLC
C - - - - - 0x00775A 01:B74A: 65 00     ADC ram_0000_t08C
; / 10
C - - - - - 0x00775C 01:B74C: 4A        LSR
C - - - - - 0x00775D 01:B74D: 4A        LSR
C - - - - - 0x00775E 01:B74E: 4A        LSR
C - - - - - 0x00775F 01:B74F: 4A        LSR
C - - - - - 0x007760 01:B750: 05 01     ORA ram_0001_t038
C - - - - - 0x007762 01:B752: 18        CLC
C - - - - - 0x007763 01:B753: 65 2E     ADC ram_002E
C - - - - - 0x007765 01:B755: 60        RTS



sub_B756:
C - - - - - 0x007766 01:B756: AD 88 07  LDA ram_0788
C - - - - - 0x007769 01:B759: 29 01     AND #$01
C - - - - - 0x00776B 01:B75B: 8D F6 07  STA ram_quest
C - - - - - 0x00776E 01:B75E: AD 88 07  LDA ram_0788
C - - - - - 0x007771 01:B761: 4A        LSR
C - - - - - 0x007772 01:B762: 29 03     AND #$03
C - - - - - 0x007774 01:B764: D0 02     BNE bra_B768
C - - - - - 0x007776 01:B766: A9 FF     LDA #$FF
bra_B768:
C - - - - - 0x007778 01:B768: 85 3A     STA ram_partner
C - - - - - 0x00777A 01:B76A: AD 88 07  LDA ram_0788
C - - - - - 0x00777D 01:B76D: 29 10     AND #$10
C - - - - - 0x00777F 01:B76F: F0 06     BEQ bra_B777
C - - - - - 0x007781 01:B771: A5 2E     LDA ram_002E
C - - - - - 0x007783 01:B773: 09 01     ORA #$01
C - - - - - 0x007785 01:B775: 85 2E     STA ram_002E
bra_B777:
C - - - - - 0x007787 01:B777: AD 88 07  LDA ram_0788
; / 20
C - - - - - 0x00778A 01:B77A: 4A        LSR
C - - - - - 0x00778B 01:B77B: 4A        LSR
C - - - - - 0x00778C 01:B77C: 4A        LSR
C - - - - - 0x00778D 01:B77D: 4A        LSR
C - - - - - 0x00778E 01:B77E: 4A        LSR
C - - - - - 0x00778F 01:B77F: 8D 8A 07  STA ram_078A
C - - - - - 0x007792 01:B782: C5 10     CMP ram_0010_t014
C - - - - - 0x007794 01:B784: F0 05     BEQ bra_B78B
C - - - - - 0x007796 01:B786: A9 10     LDA #$10
C - - - - - 0x007798 01:B788: 4C D8 B7  JMP loc_B7D8
bra_B78B:
C - - - - - 0x00779B 01:B78B: A5 2E     LDA ram_002E
C - - - - - 0x00779D 01:B78D: C9 02     CMP #$02
C - - - - - 0x00779F 01:B78F: F0 04     BEQ bra_B795
C - - - - - 0x0077A1 01:B791: C9 04     CMP #$04
C - - - - - 0x0077A3 01:B793: D0 04     BNE bra_B799_RTS
bra_B795:
- - - - - - 0x0077A5 01:B795: A9 01     LDA #$01
- - - - - - 0x0077A7 01:B797: 85 2F     STA ram_002F_flag
bra_B799_RTS:
C - - - - - 0x0077A9 01:B799: 60        RTS



sub_B79A:
C - - - - - 0x0077AA 01:B79A: A9 02     LDA #$02
C - - - - - 0x0077AC 01:B79C: 85 00     STA ram_0000_t0A5
C - - - - - 0x0077AE 01:B79E: A9 00     LDA #$00
C - - - - - 0x0077B0 01:B7A0: 85 01     STA ram_0001_t03C_counter
bra_B7A2_loop:
C - - - - - 0x0077B2 01:B7A2: A4 00     LDY ram_0000_t0A5
C - - - - - 0x0077B4 01:B7A4: B9 DF B7  LDA tbl_B7DF,Y
C - - - - - 0x0077B7 01:B7A7: 20 E2 B7  JSR sub_B7E2
C - - - - - 0x0077BA 01:B7AA: B9 90 07  LDA ram_0790,Y
C - - - - - 0x0077BD 01:B7AD: 29 03     AND #$03
C - - - - - 0x0077BF 01:B7AF: F0 1A     BEQ bra_B7CB
C - - - - - 0x0077C1 01:B7B1: A5 00     LDA ram_0000_t0A5
C - - - - - 0x0077C3 01:B7B3: 8D 8F 07  STA ram_078F
C - - - - - 0x0077C6 01:B7B6: E6 01     INC ram_0001_t03C_counter
C - - - - - 0x0077C8 01:B7B8: A2 00     LDX #$00
C - - - - - 0x0077CA 01:B7BA: B9 90 07  LDA ram_0790,Y
bra_B7BD_loop:
C - - - - - 0x0077CD 01:B7BD: DD 37 B9  CMP tbl_B937,X
C - - - - - 0x0077D0 01:B7C0: F0 05     BEQ bra_B7C7
C - - - - - 0x0077D2 01:B7C2: E8        INX
C - - - - - 0x0077D3 01:B7C3: E0 09     CPX #$09
C - - - - - 0x0077D5 01:B7C5: D0 F6     BNE bra_B7BD_loop
bra_B7C7:
C - - - - - 0x0077D7 01:B7C7: 8A        TXA
C - - - - - 0x0077D8 01:B7C8: 0A        ASL
C - - - - - 0x0077D9 01:B7C9: 85 2E     STA ram_002E
bra_B7CB:
C - - - - - 0x0077DB 01:B7CB: C6 00     DEC ram_0000_t0A5
C - - - - - 0x0077DD 01:B7CD: 10 D3     BPL bra_B7A2_loop
C - - - - - 0x0077DF 01:B7CF: A5 01     LDA ram_0001_t03C_counter
C - - - - - 0x0077E1 01:B7D1: C9 01     CMP #$01
C - - - - - 0x0077E3 01:B7D3: D0 01     BNE bra_B7D6
C - - - - - 0x0077E5 01:B7D5: 60        RTS
bra_B7D6:
C - - - - - 0x0077E6 01:B7D6: A9 01     LDA #$01
loc_B7D8:
C D 1 - - - 0x0077E8 01:B7D8: 0D 8B 07  ORA ram_078B
C - - - - - 0x0077EB 01:B7DB: 8D 8B 07  STA ram_078B
C - - - - - 0x0077EE 01:B7DE: 60        RTS



tbl_B7DF:
- D 1 - - - 0x0077EF 01:B7DF: 00        .byte $00   ; 00 
- D 1 - - - 0x0077F0 01:B7E0: 12        .byte $12   ; 01 
- D 1 - - - 0x0077F1 01:B7E1: 31        .byte $31   ; 02 



sub_B7E2:
; in
    ; A = 
C - - - - - 0x0077F2 01:B7E2: 48        PHA
C - - - - - 0x0077F3 01:B7E3: 29 30     AND #$30
C - - - - - 0x0077F5 01:B7E5: 4A        LSR
C - - - - - 0x0077F6 01:B7E6: 4A        LSR
C - - - - - 0x0077F7 01:B7E7: 85 07     STA ram_0007_t00E
C - - - - - 0x0077F9 01:B7E9: 68        PLA
C - - - - - 0x0077FA 01:B7EA: 29 03     AND #$03
C - - - - - 0x0077FC 01:B7EC: 05 07     ORA ram_0007_t00E
C - - - - - 0x0077FE 01:B7EE: A8        TAY
C - - - - - 0x0077FF 01:B7EF: 60        RTS



sub_B7F0:
C - - - - - 0x007800 01:B7F0: AD 8F 07  LDA ram_078F
; * 08
C - - - - - 0x007803 01:B7F3: 0A        ASL
C - - - - - 0x007804 01:B7F4: 0A        ASL
C - - - - - 0x007805 01:B7F5: 0A        ASL
C - - - - - 0x007806 01:B7F6: 6D 8F 07  ADC ram_078F
C - - - - - 0x007809 01:B7F9: 85 00     STA ram_0000_t0A8
C - - - - - 0x00780B 01:B7FB: A9 0F     LDA #$0F
C - - - - - 0x00780D 01:B7FD: 85 01     STA ram_0001_t018
bra_B7FF_loop:
C - - - - - 0x00780F 01:B7FF: A4 01     LDY ram_0001_t018
C - - - - - 0x007811 01:B801: B9 90 07  LDA ram_0790,Y
C - - - - - 0x007814 01:B804: 29 03     AND #$03
C - - - - - 0x007816 01:B806: F0 1F     BEQ bra_B827
C - - - - - 0x007818 01:B808: A5 00     LDA ram_0000_t0A8
C - - - - - 0x00781A 01:B80A: 85 02     STA ram_0002_t028
C - - - - - 0x00781C 01:B80C: A9 09     LDA #$09
C - - - - - 0x00781E 01:B80E: 85 03     STA ram_0003_t00B
bra_B810_loop:
C - - - - - 0x007820 01:B810: A4 02     LDY ram_0002_t028
C - - - - - 0x007822 01:B812: B9 B2 B6  LDA tbl_B6B2,Y
C - - - - - 0x007825 01:B815: 20 E2 B7  JSR sub_B7E2
C - - - - - 0x007828 01:B818: C4 01     CPY ram_0001_t018
C - - - - - 0x00782A 01:B81A: F0 0B     BEQ bra_B827
C - - - - - 0x00782C 01:B81C: E6 02     INC ram_0002_t028
C - - - - - 0x00782E 01:B81E: C6 03     DEC ram_0003_t00B
C - - - - - 0x007830 01:B820: D0 EE     BNE bra_B810_loop
C - - - - - 0x007832 01:B822: A9 02     LDA #$02
C - - - - - 0x007834 01:B824: 4C D8 B7  JMP loc_B7D8
bra_B827:
C - - - - - 0x007837 01:B827: C6 01     DEC ram_0001_t018
C - - - - - 0x007839 01:B829: 10 D4     BPL bra_B7FF_loop
C - - - - - 0x00783B 01:B82B: 60        RTS



sub_B82C:
C - - - - - 0x00783C 01:B82C: A2 00     LDX #$00
bra_B82E_loop:
; 0008-000E, 07A1-07A8
C - - - - - 0x00783E 01:B82E: BD A1 07  LDA ram_07A1,X
C - - - - - 0x007841 01:B831: 95 08     STA ram_0008_t06B_array,X
C - - - - - 0x007843 01:B833: E8        INX
C - - - - - 0x007844 01:B834: E0 08     CPX #$08
C - - - - - 0x007846 01:B836: 90 F6     BCC bra_B82E_loop
C - - - - - 0x007848 01:B838: A9 00     LDA #$00
C - - - - - 0x00784A 01:B83A: 85 00     STA ram_0000_t0E5
C - - - - - 0x00784C 01:B83C: 85 01     STA ram_0001_t046
C - - - - - 0x00784E 01:B83E: A0 00     LDY #$00
C - - - - - 0x007850 01:B840: A2 00     LDX #$00
bra_B842_loop:
C - - - - - 0x007852 01:B842: 56 08     LSR ram_0008_t06B_array,X
C - - - - - 0x007854 01:B844: 66 01     ROR ram_0001_t046
C - - - - - 0x007856 01:B846: 56 08     LSR ram_0008_t06B_array,X
C - - - - - 0x007858 01:B848: 66 00     ROR ram_0000_t0E5
C - - - - - 0x00785A 01:B84A: E8        INX
C - - - - - 0x00785B 01:B84B: C8        INY
C - - - - - 0x00785C 01:B84C: C0 08     CPY #$08
C - - - - - 0x00785E 01:B84E: 90 F2     BCC bra_B842_loop
C - - - - - 0x007860 01:B850: A5 01     LDA ram_0001_t046
C - - - - - 0x007862 01:B852: 8D 89 07  STA ram_0789
C - - - - - 0x007865 01:B855: A5 00     LDA ram_0000_t0E5
C - - - - - 0x007867 01:B857: 8D 88 07  STA ram_0788
C - - - - - 0x00786A 01:B85A: 29 10     AND #$10
; / 10
C - - - - - 0x00786C 01:B85C: 4A        LSR
C - - - - - 0x00786D 01:B85D: 4A        LSR
C - - - - - 0x00786E 01:B85E: 4A        LSR
C - - - - - 0x00786F 01:B85F: 4A        LSR
C - - - - - 0x007870 01:B860: 05 2E     ORA ram_002E
C - - - - - 0x007872 01:B862: 85 2E     STA ram_002E
bra_B864_RTS:
C - - - - - 0x007874 01:B864: 60        RTS



loc_B865:
C D 1 - - - 0x007875 01:B865: A0 50     LDY #$50
C - - - - - 0x007877 01:B867: AD 88 07  LDA ram_0788
C - - - - - 0x00787A 01:B86A: 29 08     AND #$08
C - - - - - 0x00787C 01:B86C: F0 02     BEQ bra_B870
C - - - - - 0x00787E 01:B86E: A0 A0     LDY #$A0
bra_B870:
C - - - - - 0x007880 01:B870: 84 04     STY ram_0004_t015
C - - - - - 0x007882 01:B872: 20 2A B7  JSR sub_B72A
C - - - - - 0x007885 01:B875: CD 89 07  CMP ram_0789
C - - - - - 0x007888 01:B878: F0 EA     BEQ bra_B864_RTS
C - - - - - 0x00788A 01:B87A: A9 04     LDA #$04
C - - - - - 0x00788C 01:B87C: 4C D8 B7  JMP loc_B7D8



sub_B87F:
C - - - - - 0x00788F 01:B87F: AD 88 07  LDA ram_0788
C - - - - - 0x007892 01:B882: 29 01     AND #$01
C - - - - - 0x007894 01:B884: D0 2F     BNE bra_B8B5_RTS
C - - - - - 0x007896 01:B886: A5 2E     LDA ram_002E
C - - - - - 0x007898 01:B888: C9 12     CMP #$12
C - - - - - 0x00789A 01:B88A: B0 24     BCS bra_B8B0
C - - - - - 0x00789C 01:B88C: C9 10     CMP #$10
C - - - - - 0x00789E 01:B88E: B0 25     BCS bra_B8B5_RTS
C - - - - - 0x0078A0 01:B890: AD 88 07  LDA ram_0788
C - - - - - 0x0078A3 01:B893: 29 06     AND #$06
C - - - - - 0x0078A5 01:B895: 85 00     STA ram_0000_t0A9
C - - - - - 0x0078A7 01:B897: F0 1C     BEQ bra_B8B5_RTS
- - - - - - 0x0078A9 01:B899: A5 2E     LDA ram_002E
- - - - - - 0x0078AB 01:B89B: 29 08     AND #$08
; / 08
- - - - - - 0x0078AD 01:B89D: 4A        LSR
- - - - - - 0x0078AE 01:B89E: 4A        LSR
- - - - - - 0x0078AF 01:B89F: 4A        LSR
- - - - - - 0x0078B0 01:B8A0: 05 00     ORA ram_0000_t0A9
- - - - - - 0x0078B2 01:B8A2: A8        TAY
- - - - - - 0x0078B3 01:B8A3: A5 2E     LDA ram_002E
- - - - - - 0x0078B5 01:B8A5: 29 07     AND #$07
- - - - - - 0x0078B7 01:B8A7: AA        TAX
- - - - - - 0x0078B8 01:B8A8: B9 B4 B8  LDA tbl_B8B6 - $02,Y
- - - - - - 0x0078BB 01:B8AB: 3D BC B8  AND tbl_B8BC,X
- - - - - - 0x0078BE 01:B8AE: D0 05     BNE bra_B8B5_RTS
bra_B8B0:
- - - - - - 0x0078C0 01:B8B0: A9 08     LDA #$08
- - - - - - 0x0078C2 01:B8B2: 4C D8 B7  JMP loc_B7D8
bra_B8B5_RTS:
C - - - - - 0x0078C5 01:B8B5: 60        RTS



tbl_B8B6:
- - - - - - 0x0078C6 01:B8B6: 07        .byte $07   ; 02 
- - - - - - 0x0078C7 01:B8B7: 03        .byte $03   ; 03 
- - - - - - 0x0078C8 01:B8B8: 2F        .byte $2F   ; 04 
- - - - - - 0x0078C9 01:B8B9: FF        .byte $FF   ; 05 
- - - - - - 0x0078CA 01:B8BA: 00        .byte $00   ; 06 
- - - - - - 0x0078CB 01:B8BB: 3D        .byte $3D   ; 07 



tbl_B8BC:
- - - - - - 0x0078CC 01:B8BC: 80        .byte $80   ; 00 
- - - - - - 0x0078CD 01:B8BD: 40        .byte $40   ; 01 
- - - - - - 0x0078CE 01:B8BE: 20        .byte $20   ; 02 
- - - - - - 0x0078CF 01:B8BF: 10        .byte $10   ; 03 
- - - - - - 0x0078D0 01:B8C0: 08        .byte $08   ; 04 
- - - - - - 0x0078D1 01:B8C1: 04        .byte $04   ; 05 
- - - - - - 0x0078D2 01:B8C2: 02        .byte $02   ; 06 
- - - - - - 0x0078D3 01:B8C3: 01        .byte $01   ; 07 



loc_B8C4:
C D 1 - - - 0x0078D4 01:B8C4: AD 88 07  LDA ram_0788
C - - - - - 0x0078D7 01:B8C7: 85 00     STA ram_0000_t074_lo
C - - - - - 0x0078D9 01:B8C9: AD 89 07  LDA ram_0789
C - - - - - 0x0078DC 01:B8CC: 85 01     STA ram_0001_t074_hi
; bzk bug? should be LDX 07?
C - - - - - 0x0078DE 01:B8CE: A2 08     LDX #$08
C - - - - - 0x0078E0 01:B8D0: A9 00     LDA #$00
bra_B8D2_loop:
C - - - - - 0x0078E2 01:B8D2: 95 08     STA ram_0008_t06C_password,X ; 0008 0009 000A 000B 000C 000D 000E 000F 0010 
C - - - - - 0x0078E4 01:B8D4: CA        DEX
C - - - - - 0x0078E5 01:B8D5: 10 FB     BPL bra_B8D2_loop
C - - - - - 0x0078E7 01:B8D7: A2 00     LDX #$00
bra_B8D9_loop:
C - - - - - 0x0078E9 01:B8D9: 46 00     LSR ram_0000_t074_lo
C - - - - - 0x0078EB 01:B8DB: 36 08     ROL ram_0008_t06C_password,X ; 0008 0009 000A 000B 000C 000D 000E 000F 
C - - - - - 0x0078ED 01:B8DD: 46 01     LSR ram_0001_t074_hi
C - - - - - 0x0078EF 01:B8DF: 36 08     ROL ram_0008_t06C_password,X ; 0008 0009 000A 000B 000C 000D 000E 000F 
C - - - - - 0x0078F1 01:B8E1: E8        INX
C - - - - - 0x0078F2 01:B8E2: E0 08     CPX #$08
C - - - - - 0x0078F4 01:B8E4: 90 F3     BCC bra_B8D9_loop
C - - - - - 0x0078F6 01:B8E6: A5 2E     LDA ram_002E
C - - - - - 0x0078F8 01:B8E8: 4A        LSR
C - - - - - 0x0078F9 01:B8E9: A8        TAY
C - - - - - 0x0078FA 01:B8EA: A2 02     LDX #$02
bra_B8EC_loop:
C - - - - - 0x0078FC 01:B8EC: B9 37 B9  LDA tbl_B937,Y
C - - - - - 0x0078FF 01:B8EF: 29 0C     AND #$0C
C - - - - - 0x007901 01:B8F1: 4A        LSR
C - - - - - 0x007902 01:B8F2: 4A        LSR
C - - - - - 0x007903 01:B8F3: 85 00     STA ram_0000_t075
C - - - - - 0x007905 01:B8F5: B9 37 B9  LDA tbl_B937,Y
C - - - - - 0x007908 01:B8F8: 29 30     AND #$30
C - - - - - 0x00790A 01:B8FA: 05 00     ORA ram_0000_t075
C - - - - - 0x00790C 01:B8FC: DD DF B7  CMP tbl_B7DF,X
C - - - - - 0x00790F 01:B8FF: F0 03     BEQ bra_B904
C - - - - - 0x007911 01:B901: CA        DEX
C - - - - - 0x007912 01:B902: 10 E8     BPL bra_B8EC_loop
bra_B904:
C - - - - - 0x007914 01:B904: 8E 8F 07  STX ram_078F
C - - - - - 0x007917 01:B907: 8A        TXA
; * 08
C - - - - - 0x007918 01:B908: 0A        ASL
C - - - - - 0x007919 01:B909: 0A        ASL
C - - - - - 0x00791A 01:B90A: 0A        ASL
C - - - - - 0x00791B 01:B90B: 6D 8F 07  ADC ram_078F
C - - - - - 0x00791E 01:B90E: A8        TAY
C - - - - - 0x00791F 01:B90F: A2 00     LDX #$00
bra_B911_loop:
C - - - - - 0x007921 01:B911: B9 B3 B6  LDA tbl_B6B3,Y
C - - - - - 0x007924 01:B914: 29 30     AND #$30
C - - - - - 0x007926 01:B916: 85 01     STA ram_0001_t022
C - - - - - 0x007928 01:B918: B9 B3 B6  LDA tbl_B6B3,Y
C - - - - - 0x00792B 01:B91B: 29 03     AND #$03
; * 04
C - - - - - 0x00792D 01:B91D: 0A        ASL
C - - - - - 0x00792E 01:B91E: 0A        ASL
C - - - - - 0x00792F 01:B91F: 05 01     ORA ram_0001_t022
C - - - - - 0x007931 01:B921: 15 08     ORA ram_0008_t06C_password,X ; 0008 0009 000A 000B 000C 000D 000E 000F 0010 
C - - - - - 0x007933 01:B923: 9D A1 07  STA ram_07A1,X
C - - - - - 0x007936 01:B926: C8        INY
C - - - - - 0x007937 01:B927: E8        INX
; bzk bug? should be CPX 08?
C - - - - - 0x007938 01:B928: E0 09     CPX #$09
C - - - - - 0x00793A 01:B92A: 90 E5     BCC bra_B911_loop
C - - - - - 0x00793C 01:B92C: A5 2E     LDA ram_002E
C - - - - - 0x00793E 01:B92E: 4A        LSR
C - - - - - 0x00793F 01:B92F: A8        TAY
C - - - - - 0x007940 01:B930: B9 37 B9  LDA tbl_B937,Y
C - - - - - 0x007943 01:B933: 8D A0 07  STA ram_pal_buffer
C - - - - - 0x007946 01:B936: 60        RTS



tbl_B937:
- D 1 - - - 0x007947 01:B937: 01        .byte $01   ; 00 
- D 1 - - - 0x007948 01:B938: 1B        .byte $1B   ; 02 
- D 1 - - - 0x007949 01:B939: 02        .byte $02   ; 04 
- D 1 - - - 0x00794A 01:B93A: 35        .byte $35   ; 06 
- D 1 - - - 0x00794B 01:B93B: 19        .byte $19   ; 08 
- - - - - - 0x00794C 01:B93C: 03        .byte $03   ; 0A 
- - - - - - 0x00794D 01:B93D: 37        .byte $37   ; 0C 
- D 1 - - - 0x00794E 01:B93E: 1A        .byte $1A   ; 0E 
- - - - - - 0x00794F 01:B93F: 36        .byte $36   ; 10 



loc_B940_arrange_password_symbols:
C D 1 - - - 0x007950 01:B940: A9 00     LDA #$00
C - - - - - 0x007952 01:B942: 85 00     STA ram_0000_t076
C - - - - - 0x007954 01:B944: A2 05     LDX #$05
bra_B946_loop:
C - - - - - 0x007956 01:B946: A4 00     LDY ram_0000_t076
C - - - - - 0x007958 01:B948: B9 A0 07  LDA ram_psw_buffer,Y
C - - - - - 0x00795B 01:B94B: 29 03     AND #$03
C - - - - - 0x00795D 01:B94D: A8        TAY
C - - - - - 0x00795E 01:B94E: B9 82 B9  LDA tbl_B982,Y
C - - - - - 0x007961 01:B951: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x007964 01:B954: B9 7E B9  LDA tbl_B97E,Y
C - - - - - 0x007967 01:B957: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x00796A 01:B95A: A4 00     LDY ram_0000_t076
C - - - - - 0x00796C 01:B95C: B9 A0 07  LDA ram_psw_buffer,Y
C - - - - - 0x00796F 01:B95F: 29 3C     AND #$3C
C - - - - - 0x007971 01:B961: 4A        LSR
C - - - - - 0x007972 01:B962: A8        TAY
C - - - - - 0x007973 01:B963: B9 86 B9  LDA tbl_B986_password_position,Y
C - - - - - 0x007976 01:B966: 9D 1C 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x007979 01:B969: B9 87 B9  LDA tbl_B986_password_position + $01,Y
C - - - - - 0x00797C 01:B96C: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x00797F 01:B96F: A9 00     LDA #$00
C - - - - - 0x007981 01:B971: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x007984 01:B974: E8        INX
C - - - - - 0x007985 01:B975: E6 00     INC ram_0000_t076
C - - - - - 0x007987 01:B977: A5 00     LDA ram_0000_t076
C - - - - - 0x007989 01:B979: C9 09     CMP #$09
C - - - - - 0x00798B 01:B97B: 90 C9     BCC bra_B946_loop
C - - - - - 0x00798D 01:B97D: 60        RTS



tbl_B97E:
- D 1 - - - 0x00798E 01:B97E: 00        .byte con_obj_type_00   ; 00 
- D 1 - - - 0x00798F 01:B97F: 14        .byte con_obj_type_14   ; 01 
- D 1 - - - 0x007990 01:B980: 0C        .byte con_obj_type_0C   ; 02 
- D 1 - - - 0x007991 01:B981: 0C        .byte con_obj_type_0C   ; 03 



tbl_B982:
- D 1 - - - 0x007992 01:B982: 00        .byte $00   ; 00 
- D 1 - - - 0x007993 01:B983: 42        .byte $42   ; 01 
- D 1 - - - 0x007994 01:B984: FC        .byte $FC   ; 02 
- D 1 - - - 0x007995 01:B985: F4        .byte $F4   ; 03 



tbl_B986_password_position:
;                                              +---------- pos_Y_lo
;                                              |    +----- pos_X_lo
;                                              |    |
; row 1
- D 1 - - - 0x007996 01:B986: 7A        .byte $7A, $5D   ; 00 
- D 1 - - - 0x007998 01:B988: 7A        .byte $7A, $75   ; 01 
- D 1 - - - 0x00799A 01:B98A: 7A        .byte $7A, $8D   ; 02 
- D 1 - - - 0x00799C 01:B98C: 7A        .byte $7A, $A5   ; 03 
; row 2
- D 1 - - - 0x00799E 01:B98E: 92        .byte $92, $5D   ; 04 
- D 1 - - - 0x0079A0 01:B990: 92        .byte $92, $75   ; 05 
- D 1 - - - 0x0079A2 01:B992: 92        .byte $92, $8D   ; 06 
- D 1 - - - 0x0079A4 01:B994: 92        .byte $92, $A5   ; 07 
; row 3
- D 1 - - - 0x0079A6 01:B996: AA        .byte $AA, $5D   ; 08 
- D 1 - - - 0x0079A8 01:B998: AA        .byte $AA, $75   ; 09 
- D 1 - - - 0x0079AA 01:B99A: AA        .byte $AA, $8D   ; 0A 
- D 1 - - - 0x0079AC 01:B99C: AA        .byte $AA, $A5   ; 0B 
; row 4
- D 1 - - - 0x0079AE 01:B99E: C2        .byte $C2, $5D   ; 0C 
- - - - - - 0x0079B0 01:B9A0: C2        .byte $C2, $75   ; 0D 
- D 1 - - - 0x0079B2 01:B9A2: C2        .byte $C2, $8D   ; 0E 
- D 1 - - - 0x0079B4 01:B9A4: C2        .byte $C2, $A5   ; 0F 



_off005_0x0079B6_18_enter_your_name_screen:
; con_EC77_enter_your_name
- D 1 - I - 0x0079B6 01:B9A6: 00 20     .word $2000 ; ppu address

- D 1 - I - 0x0079B8 01:B9A8: 8E        .byte $0E + $80   ; write these tiles 0E length
- D 1 - I - 0x0079B9 01:B9A9: F6        .byte $F6, $F7, $F6, $F7, $F6, $F7, $F6, $F7   ; 
- D 1 - I - 0x0079C1 01:B9B1: F6        .byte $F6, $F7, $F6, $F7, $F6, $F7   ; 

- D 1 - I - 0x0079C7 01:B9B7: 06        .byte $06   ; write 06 times tile 00
- D 1 - I - 0x0079C8 01:B9B8: 00        .byte $00   ; 

- D 1 - I - 0x0079C9 01:B9B9: 99        .byte $19 + $80   ; 
- D 1 - I - 0x0079CA 01:B9BA: F6        .byte $F6, $F7, $F6, $F7, $F6, $F7, $F6, $F7, $F6, $F7, $F6, $ED, $F6, $F6, $F7, $F6   ; 
- D 1 - I - 0x0079DA 01:B9CA: F7        .byte $F7, $F6, $F7, $F6, $F7, $F6, $F7, $F6, $F7   ; 

- D 1 - I - 0x0079E3 01:B9D3: 08        .byte $08   ; 
- D 1 - I - 0x0079E4 01:B9D4: 00        .byte $00   ; 

- D 1 - I - 0x0079E5 01:B9D5: 93        .byte $13 + $80   ; 
- D 1 - I - 0x0079E6 01:B9D6: F6        .byte $F6, $F7, $F6, $F7, $F6, $F7, $EB, $EC, $F6, $F7, $F6, $F6, $F7, $F6, $F7, $F6   ; 
- D 1 - I - 0x0079F6 01:B9E6: F7        .byte $F7, $F6, $F7   ; 

- D 1 - I - 0x0079F9 01:B9E9: 14        .byte $14   ; 
- D 1 - I - 0x0079FA 01:B9EA: 00        .byte $00   ; 

- D 1 - I - 0x0079FB 01:B9EB: 8B        .byte $0B + $80   ; 
- D 1 - I - 0x0079FC 01:B9EC: FC        .byte $FC, $F7, $F6, $F7, $F7, $F6, $F7, $F6, $F7, $F6, $F7   ; 

- D 1 - I - 0x007A07 01:B9F7: 14        .byte $14   ; 
- D 1 - I - 0x007A08 01:B9F8: 00        .byte $00   ; 

- D 1 - I - 0x007A09 01:B9F9: 9C        .byte $1C + $80   ; 
- D 1 - I - 0x007A0A 01:B9FA: F6        .byte $F6, $F7, $FD, $F7, $F6, $F6, $F7, $F6, $F7, $FD, $F7, $00, $00, $54, $5D, $63   ; 
- D 1 - I - 0x007A1A 01:BA0A: 54        .byte $54, $61, $00, $68, $5E, $64, $61, $00, $5D, $50, $5C, $54   ; 

- D 1 - I - 0x007A26 01:BA16: 05        .byte $05   ; 
- D 1 - I - 0x007A27 01:BA17: 00        .byte $00   ; 

- D 1 - I - 0x007A28 01:BA18: 89        .byte $09 + $80   ; 
- D 1 - I - 0x007A29 01:BA19: F6        .byte $F6, $F7, $F6, $F7, $F7, $F6, $F7, $F6, $F7   ; 

- D 1 - I - 0x007A32 01:BA22: 16        .byte $16   ; 
- D 1 - I - 0x007A33 01:BA23: 00        .byte $00   ; 

- D 1 - I - 0x007A34 01:BA24: 8D        .byte $0D + $80   ; 
- D 1 - I - 0x007A35 01:BA25: F6        .byte $F6, $F7, $F6, $F7, $FD, $F6, $F7, $FD, $ED, $F6, $F7, $F6, $F7   ; 

- D 1 - I - 0x007A42 01:BA32: 03        .byte $03   ; 
- D 1 - I - 0x007A43 01:BA33: 00        .byte $00   ; 

- D 1 - I - 0x007A44 01:BA34: 81        .byte $01 + $80   ; 
- D 1 - I - 0x007A45 01:BA35: 80        .byte $80   ; 

- D 1 - I - 0x007A46 01:BA36: 08        .byte $08   ; 
- D 1 - I - 0x007A47 01:BA37: 81        .byte $81   ; 

- D 1 - I - 0x007A48 01:BA38: 81        .byte $01 + $80   ; 
- D 1 - I - 0x007A49 01:BA39: 82        .byte $82   ; 

- D 1 - I - 0x007A4A 01:BA3A: 03        .byte $03   ; 
- D 1 - I - 0x007A4B 01:BA3B: 00        .byte $00   ; 

- D 1 - I - 0x007A4C 01:BA3C: 8F        .byte $0F + $80   ; 
- D 1 - I - 0x007A4D 01:BA3D: F6        .byte $F6, $F7, $F6, $F7, $FD, $F7, $F6, $F7, $ED, $F6, $ED, $F6, $F7, $F6, $F7   ; 

- D 1 - I - 0x007A5C 01:BA4C: 04        .byte $04   ; 
- D 1 - I - 0x007A5D 01:BA4D: 00        .byte $00   ; 

- D 1 - I - 0x007A5E 01:BA4E: 81        .byte $01 + $80   ; 
- D 1 - I - 0x007A5F 01:BA4F: 90        .byte $90   ; 

- D 1 - I - 0x007A60 01:BA50: 08        .byte $08   ; 
- D 1 - I - 0x007A61 01:BA51: 00        .byte $00   ; 

- D 1 - I - 0x007A62 01:BA52: 81        .byte $01 + $80   ; 
- D 1 - I - 0x007A63 01:BA53: 92        .byte $92   ; 

- D 1 - I - 0x007A64 01:BA54: 04        .byte $04   ; 
- D 1 - I - 0x007A65 01:BA55: 00        .byte $00   ; 

- D 1 - I - 0x007A66 01:BA56: 8F        .byte $0F + $80   ; 
- D 1 - I - 0x007A67 01:BA57: F6        .byte $F6, $F7, $F6, $F7, $FD, $F7, $FD, $F6, $ED, $F6, $ED, $F6, $F7, $FD, $F7   ; 

- D 1 - I - 0x007A76 01:BA66: 03        .byte $03   ; 
- D 1 - I - 0x007A77 01:BA67: 00        .byte $00   ; 

- D 1 - I - 0x007A78 01:BA68: 81        .byte $01 + $80   ; 
- D 1 - I - 0x007A79 01:BA69: A0        .byte $A0   ; 

- D 1 - I - 0x007A7A 01:BA6A: 08        .byte $08   ; 
- D 1 - I - 0x007A7B 01:BA6B: A1        .byte $A1   ; 

- D 1 - I - 0x007A7C 01:BA6C: 81        .byte $01 + $80   ; 
- D 1 - I - 0x007A7D 01:BA6D: A2        .byte $A2   ; 

- D 1 - I - 0x007A7E 01:BA6E: 07        .byte $07   ; 
- D 1 - I - 0x007A7F 01:BA6F: 00        .byte $00   ; 

- D 1 - I - 0x007A80 01:BA70: 8B        .byte $0B + $80   ; 
- D 1 - I - 0x007A81 01:BA71: F6        .byte $F6, $F7, $EB, $ED, $ED, $F6, $F7, $F6, $ED, $F6, $F7   ; 

- D 1 - I - 0x007A8C 01:BA7C: 14        .byte $14   ; 
- D 1 - I - 0x007A8D 01:BA7D: 00        .byte $00   ; 

- D 1 - I - 0x007A8E 01:BA7E: 8B        .byte $0B + $80   ; 
- D 1 - I - 0x007A8F 01:BA7F: F6        .byte $F6, $F7, $F6, $FB, $FC, $F6, $F7, $FD, $F7, $FD, $F7   ; 

- D 1 - I - 0x007A9A 01:BA8A: 16        .byte $16   ; 
- D 1 - I - 0x007A9B 01:BA8B: 00        .byte $00   ; 

- D 1 - I - 0x007A9C 01:BA8C: 89        .byte $09 + $80   ; 
- D 1 - I - 0x007A9D 01:BA8D: F6        .byte $F6, $F7, $FD, $F7, $FB, $FD, $ED, $F6, $F7   ; 

- D 1 - I - 0x007AA6 01:BA96: 14        .byte $14   ; 
- D 1 - I - 0x007AA7 01:BA97: 00        .byte $00   ; 

- D 1 - I - 0x007AA8 01:BA98: 8D        .byte $0D + $80   ; 
- D 1 - I - 0x007AA9 01:BA99: F6        .byte $F6, $F7, $F6, $ED, $F6, $F7, $FD, $F6, $ED, $EB, $EC, $FD, $F7   ; 

- D 1 - I - 0x007AB6 01:BAA6: 12        .byte $12   ; 
- D 1 - I - 0x007AB7 01:BAA7: 00        .byte $00   ; 

- D 1 - I - 0x007AB8 01:BAA8: 8F        .byte $0F + $80   ; 
- D 1 - I - 0x007AB9 01:BAA9: F6        .byte $F6, $ED, $F6, $ED, $FD, $F7, $EB, $EC, $F7, $FB, $FB, $FC, $F7, $F6, $F7   ; 

- D 1 - I - 0x007AC8 01:BAB8: 10        .byte $10   ; 
- D 1 - I - 0x007AC9 01:BAB9: 00        .byte $00   ; 

- D 1 - I - 0x007ACA 01:BABA: 84        .byte $04 + $80   ; 
- D 1 - I - 0x007ACB 01:BABB: F6        .byte $F6, $F7, $F6, $F7   ; 

- D 1 - I - 0x007ACF 01:BABF: 03        .byte $03   ; 
- D 1 - I - 0x007AD0 01:BAC0: F6        .byte $F6   ; 

- D 1 - I - 0x007AD1 01:BAC1: C8        .byte $48 + $80   ; 
- D 1 - I - 0x007AD2 01:BAC2: FB        .byte $FB, $FC, $F6, $F7, $FD, $F7, $CB, $CC, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x007AE2 01:BAD2: CD        .byte $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CB, $CC, $F6, $ED   ; 
- D 1 - I - 0x007AF2 01:BAE2: F6        .byte $F6, $ED, $ED, $F6, $ED, $FD, $DB, $DC, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x007B02 01:BAF2: DD        .byte $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DB, $DC, $ED, $F6   ; 
- D 1 - I - 0x007B12 01:BB02: F7        .byte $F7, $F6, $F6, $EC, $EB, $F7, $C0, $C1   ; 

- D 1 - I - 0x007B1A 01:BB0A: 14        .byte $14   ; 
- D 1 - I - 0x007B1B 01:BB0B: 00        .byte $00   ; 

- D 1 - I - 0x007B1C 01:BB0C: AC        .byte $2C + $80   ; 
- D 1 - I - 0x007B1D 01:BB0D: C4        .byte $C4, $C5, $F6, $F7, $EB, $EC, $FB, $FC, $FB, $FC, $D0, $D1, $00, $50, $00, $51   ; 
- D 1 - I - 0x007B2D 01:BB1D: 00        .byte $00, $52, $00, $53, $00, $54, $00, $55, $00, $56, $00, $57, $00, $58, $00, $00   ; 
- D 1 - I - 0x007B3D 01:BB2D: D4        .byte $D4, $D5, $F7, $EB, $FB, $FC, $EB, $EC, $EB, $FC, $E0, $E1   ; 

- D 1 - I - 0x007B49 01:BB39: 14        .byte $14   ; 
- D 1 - I - 0x007B4A 01:BB3A: 00        .byte $00   ; 

- D 1 - I - 0x007B4B 01:BB3B: AC        .byte $2C + $80   ; 
- D 1 - I - 0x007B4C 01:BB3C: E4        .byte $E4, $E5, $EB, $EC, $EB, $F7, $FB, $FC, $FB, $F7, $F0, $F1, $00, $59, $00, $5A   ; 
- D 1 - I - 0x007B5C 01:BB4C: 00        .byte $00, $5B, $00, $5C, $00, $5D, $00, $5E, $00, $5F, $00, $60, $00, $61, $00, $00   ; 
- D 1 - I - 0x007B6C 01:BB5C: F4        .byte $F4, $F5, $FB, $FC, $FB, $FC, $EB, $EC, $EB, $F6, $C2, $C3   ; 

- D 1 - I - 0x007B78 01:BB68: 14        .byte $14   ; 
- D 1 - I - 0x007B79 01:BB69: 00        .byte $00   ; 

- D 1 - I - 0x007B7A 01:BB6A: AC        .byte $2C + $80   ; 
- D 1 - I - 0x007B7B 01:BB6B: C6        .byte $C6, $C7, $EB, $ED, $F6, $EC, $FB, $FC, $ED, $F7, $D2, $D3, $00, $62, $00, $63   ; 
- D 1 - I - 0x007B8B 01:BB7B: 00        .byte $00, $64, $00, $65, $00, $66, $00, $67, $00, $68, $00, $69, $00, $FE, $00, $00   ; 
- D 1 - I - 0x007B9B 01:BB8B: D6        .byte $D6, $D7, $FB, $FC, $FB, $FC, $EB, $EC, $EB, $EC, $E2, $E3   ; 

- D 1 - I - 0x007BA7 01:BB97: 14        .byte $14   ; 
- D 1 - I - 0x007BA8 01:BB98: 00        .byte $00   ; 

- D 1 - I - 0x007BA9 01:BB99: 92        .byte $12 + $80   ; 
- D 1 - I - 0x007BAA 01:BB9A: E6        .byte $E6, $E7, $FD, $F7, $EB, $ED, $F7, $FC, $ED, $FC, $F2, $F3, $00, $6A, $00, $6B   ; 
- D 1 - I - 0x007BBA 01:BBAA: 00        .byte $00, $4B   ; .

- D 1 - I - 0x007BBC 01:BBAC: 05        .byte $05   ; 
- D 1 - I - 0x007BBD 01:BBAD: 00        .byte $00   ; 

- D 1 - I - 0x007BBE 01:BBAE: 95        .byte $15 + $80   ; 
- D 1 - I - 0x007BBF 01:BBAF: CF        .byte $CF, $00, $DF, $00, $00, $EE, $EF, $00, $00, $F2, $F3, $F7, $FD, $FB, $FC, $EB   ; 
- D 1 - I - 0x007BCF 01:BBBF: ED        .byte $ED, $EB, $F7, $CB, $CC   ; 

- D 1 - I - 0x007BD4 01:BBC4: 14        .byte $14   ; 
- D 1 - I - 0x007BD5 01:BBC5: 00        .byte $00   ; 

- D 1 - I - 0x007BD6 01:BBC6: CC        .byte $4C + $80   ; 
- D 1 - I - 0x007BD7 01:BBC7: CB        .byte $CB, $CC, $EB, $ED, $EB, $EC, $FB, $FC, $FB, $FC, $DB, $DC, $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x007BE7 01:BBD7: CD        .byte $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x007BF7 01:BBE7: DB        .byte $DB, $DC, $FB, $FC, $FD, $FC, $F6, $EC, $EB, $F7, $CB, $CC, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x007C07 01:BBF7: DD        .byte $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x007C17 01:BC07: CB        .byte $CB, $CC, $EB, $F7, $EB, $EC, $FB, $FC, $FB, $FC, $DB, $DC   ; 

- D 1 - I - 0x007C23 01:BC13: 14        .byte $14   ; 
- D 1 - I - 0x007C24 01:BC14: F3        .byte $F3   ; 

- D 1 - I - 0x007C25 01:BC15: 90        .byte $10 + $80   ; 
- D 1 - I - 0x007C26 01:BC16: DB        .byte $DB, $DC, $FB, $FC, $FB, $FD, $EB, $EC, $EB, $F7, $F2, $F2, $F3, $F2, $F2, $F3   ; 

- D 1 - I - 0x007C36 01:BC26: 03        .byte $03   ; 
- D 1 - I - 0x007C37 01:BC27: F2        .byte $F2   ; 

- D 1 - I - 0x007C38 01:BC28: 82        .byte $02 + $80   ; 
- D 1 - I - 0x007C39 01:BC29: F3        .byte $F3, $F2   ; 

- D 1 - I - 0x007C3B 01:BC2B: 04        .byte $04   ; 
- D 1 - I - 0x007C3C 01:BC2C: F3        .byte $F3   ; 

- D 1 - I - 0x007C3D 01:BC2D: 04        .byte $04   ; 
- D 1 - I - 0x007C3E 01:BC2E: F2        .byte $F2   ; 

- D 1 - I - 0x007C3F 01:BC2F: B3        .byte $33 + $80   ; 
- D 1 - I - 0x007C40 01:BC30: F3        .byte $F3, $F2, $F2, $F3, $F2, $EB, $EC, $EB, $EC, $FB, $FC, $FB, $FD, $D4, $EB, $EC   ; 
- D 1 - I - 0x007C50 01:BC40: EB        .byte $EB, $EC, $EB, $F7, $EB, $F7, $FD, $ED, $F6, $F7, $FD, $F7, $F6, $F7, $FB, $FC   ; 
- D 1 - I - 0x007C60 01:BC50: EC        .byte $EC, $FB, $FC, $ED, $EB, $FB, $FC, $FB, $FC, $FF, $FF, $0F, $03, $00, $0F, $CF   ; 
- D 1 - I - 0x007C70 01:BC60: FF        .byte $FF, $FF, $F3   ; 

- D 1 - I - 0x007C73 01:BC63: 04        .byte $04   ; 
- D 1 - I - 0x007C74 01:BC64: 00        .byte $00   ; 

- D 1 - I - 0x007C75 01:BC65: 84        .byte $04 + $80   ; 
- D 1 - I - 0x007C76 01:BC66: FC        .byte $FC, $FF, $FF, $3F   ; 

- D 1 - I - 0x007C7A 01:BC6A: 04        .byte $04   ; 
- D 1 - I - 0x007C7B 01:BC6B: 00        .byte $00   ; 

- D 1 - I - 0x007C7C 01:BC6C: 84        .byte $04 + $80   ; 
- D 1 - I - 0x007C7D 01:BC6D: FC        .byte $FC, $FF, $FF, $0F   ; 

- D 1 - I - 0x007C81 01:BC71: 03        .byte $03   ; 
- D 1 - I - 0x007C82 01:BC72: 00        .byte $00   ; 

- D 1 - I - 0x007C83 01:BC73: 85        .byte $05 + $80   ; 
- D 1 - I - 0x007C84 01:BC74: 0C        .byte $0C, $0F, $FF, $FF, $22   ; 

- D 1 - I - 0x007C89 01:BC79: 04        .byte $04   ; 
- D 1 - I - 0x007C8A 01:BC7A: 00        .byte $00   ; 

- D 1 - I - 0x007C8B 01:BC7B: 84        .byte $04 + $80   ; 
- D 1 - I - 0x007C8C 01:BC7C: 88        .byte $88, $FF, $FF, $22   ; 

- D 1 - I - 0x007C90 01:BC80: 04        .byte $04   ; 
- D 1 - I - 0x007C91 01:BC81: 00        .byte $00   ; 

- D 1 - I - 0x007C92 01:BC82: 83        .byte $03 + $80   ; 
- D 1 - I - 0x007C93 01:BC83: 88        .byte $88, $FF, $FF   ; 

- D 1 - I - 0x007C96 01:BC86: 06        .byte $06   ; 
- D 1 - I - 0x007C97 01:BC87: 00        .byte $00   ; 

- D 1 - I - 0x007C98 01:BC88: 81        .byte $01 + $80   ; 
- D 1 - I - 0x007C99 01:BC89: FF        .byte $FF   ; 

- D 1 - I - 0x007C9A 01:BC8A: 08        .byte $08   ; 
- D 1 - I - 0x007C9B 01:BC8B: 0F        .byte $0F   ; 

- D 1 - I - 0x007C9C 01:BC8C: FF        .byte $FF   ; end token



sub_0x007C9D:
C - - - - - 0x007C9D 01:BC8D: BD 65 05  LDA ram_obj_state,X
; / 40
C - - - - - 0x007CA0 01:BC90: 4A        LSR
C - - - - - 0x007CA1 01:BC91: 4A        LSR
C - - - - - 0x007CA2 01:BC92: 4A        LSR
C - - - - - 0x007CA3 01:BC93: 4A        LSR
C - - - - - 0x007CA4 01:BC94: 4A        LSR
C - - - - - 0x007CA5 01:BC95: 4A        LSR
C - - - - - 0x007CA6 01:BC96: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x007CA9 01:BC99: 9F BC     .word ofs_022_BC9F_00
- D 1 - I - 0x007CAB 01:BC9B: A7 BC     .word ofs_022_BCA7_40
- D 1 - I - 0x007CAD 01:BC9D: BC BC     .word ofs_022_BCBC_80



ofs_022_BC9F_00:
C - - J - - 0x007CAF 01:BC9F: A9 80     LDA #$80
C - - - - - 0x007CB1 01:BCA1: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x007CB4 01:BCA4: 4C 8A FF  JMP loc_0x03FF9A



ofs_022_BCA7_40:
C - - J - - 0x007CB7 01:BCA7: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x007CBA 01:BCAA: D0 0F     BNE bra_BCBB_RTS
C - - - - - 0x007CBC 01:BCAC: A9 08     LDA #$08
C - - - - - 0x007CBE 01:BCAE: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x007CC1 01:BCB1: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x007CC4 01:BCB4: 29 BF     AND #$BF
C - - - - - 0x007CC6 01:BCB6: 09 80     ORA #$80
C - - - - - 0x007CC8 01:BCB8: 9D 65 05  STA ram_obj_state,X
bra_BCBB_RTS:
C - - - - - 0x007CCB 01:BCBB: 60        RTS



ofs_022_BCBC_80:
C - - J - - 0x007CCC 01:BCBC: A5 1A     LDA ram_frm_cnt
C - - - - - 0x007CCE 01:BCBE: 29 03     AND #$03
C - - - - - 0x007CD0 01:BCC0: D0 F9     BNE bra_BCBB_RTS
C - - - - - 0x007CD2 01:BCC2: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x007CD5 01:BCC5: C9 57     CMP #$57
C - - - - - 0x007CD7 01:BCC7: F0 27     BEQ bra_BCF0
C - - - - - 0x007CD9 01:BCC9: C9 5B     CMP #$5B
C - - - - - 0x007CDB 01:BCCB: F0 23     BEQ bra_BCF0
C - - - - - 0x007CDD 01:BCCD: BD 54 04  LDA ram_0454_obj,X
C - - - - - 0x007CE0 01:BCD0: 49 04     EOR #$04
C - - - - - 0x007CE2 01:BCD2: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x007CE5 01:BCD5: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x007CE8 01:BCD8: F0 05     BEQ bra_BCDF
C - - - - - 0x007CEA 01:BCDA: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x007CED 01:BCDD: D0 DC     BNE bra_BCBB_RTS
bra_BCDF:
C - - - - - 0x007CEF 01:BCDF: BD 54 04  LDA ram_0454_obj,X
C - - - - - 0x007CF2 01:BCE2: 29 FB     AND #$FB
C - - - - - 0x007CF4 01:BCE4: 9D 54 04  STA ram_0454_obj,X
loc_BCE7:
C D 1 - - - 0x007CF7 01:BCE7: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x007CFA 01:BCEA: 29 FD     AND #con_obj_flag_02 ^ $FF
C - - - - - 0x007CFC 01:BCEC: 9D 70 04  STA ram_obj_flags,X
bra_BCEF_RTS:
C - - - - - 0x007CFF 01:BCEF: 60        RTS
bra_BCF0:
C - - - - - 0x007D00 01:BCF0: BD 54 04  LDA ram_0454_obj,X
C - - - - - 0x007D03 01:BCF3: 29 04     AND #$04
C - - - - - 0x007D05 01:BCF5: D0 17     BNE bra_BD0E
C - - - - - 0x007D07 01:BCF7: A9 04     LDA #$04
bra_BCF9:
C - - - - - 0x007D09 01:BCF9: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x007D0C 01:BCFC: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x007D0F 01:BCFF: F0 05     BEQ bra_BD06
C - - - - - 0x007D11 01:BD01: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x007D14 01:BD04: D0 E9     BNE bra_BCEF_RTS
bra_BD06:
C - - - - - 0x007D16 01:BD06: A9 03     LDA #$03
C - - - - - 0x007D18 01:BD08: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x007D1B 01:BD0B: 4C E7 BC  JMP loc_BCE7
bra_BD0E:
C - - - - - 0x007D1E 01:BD0E: A9 03     LDA #$03
C - - - - - 0x007D20 01:BD10: D0 E7     BNE bra_BCF9    ; jmp



sub_0x007D22:
C - - - - - 0x007D22 01:BD12: BC 45 06  LDY ram_obj_0646,X
C - - - - - 0x007D25 01:BD15: B9 27 BD  LDA tbl_BD27_bits,Y
C - - - - - 0x007D28 01:BD18: 85 0F     STA ram_000F_t001
C - - - - - 0x007D2A 01:BD1A: B9 47 BD  LDA tbl_BD47_index,Y
C - - - - - 0x007D2D 01:BD1D: A8        TAY
C - - - - - 0x007D2E 01:BD1E: B9 F0 00  LDA ram_00F0,Y
C - - - - - 0x007D31 01:BD21: 05 0F     ORA ram_000F_t001
C - - - - - 0x007D33 01:BD23: 99 F0 00  STA ram_00F0,Y
C - - - - - 0x007D36 01:BD26: 60        RTS



tbl_BD27_bits:
- D 1 - - - 0x007D37 01:BD27: 01        .byte $01   ; 00 
- D 1 - - - 0x007D38 01:BD28: 02        .byte $02   ; 01 
- D 1 - - - 0x007D39 01:BD29: 04        .byte $04   ; 02 
- D 1 - - - 0x007D3A 01:BD2A: 08        .byte $08   ; 03 
- D 1 - - - 0x007D3B 01:BD2B: 10        .byte $10   ; 04 
- D 1 - - - 0x007D3C 01:BD2C: 20        .byte $20   ; 05 
- D 1 - - - 0x007D3D 01:BD2D: 40        .byte $40   ; 06 
- D 1 - - - 0x007D3E 01:BD2E: 80        .byte $80   ; 07 
- D 1 - - - 0x007D3F 01:BD2F: 01        .byte $01   ; 08 
- D 1 - - - 0x007D40 01:BD30: 02        .byte $02   ; 09 
- D 1 - - - 0x007D41 01:BD31: 04        .byte $04   ; 0A 
- D 1 - - - 0x007D42 01:BD32: 08        .byte $08   ; 0B 
- D 1 - - - 0x007D43 01:BD33: 10        .byte $10   ; 0C 
- D 1 - - - 0x007D44 01:BD34: 20        .byte $20   ; 0D 
- D 1 - - - 0x007D45 01:BD35: 40        .byte $40   ; 0E 
- D 1 - - - 0x007D46 01:BD36: 80        .byte $80   ; 0F 
- D 1 - - - 0x007D47 01:BD37: 01        .byte $01   ; 10 
- D 1 - - - 0x007D48 01:BD38: 02        .byte $02   ; 11 
- D 1 - - - 0x007D49 01:BD39: 04        .byte $04   ; 12 
- D 1 - - - 0x007D4A 01:BD3A: 08        .byte $08   ; 13 
- D 1 - - - 0x007D4B 01:BD3B: 10        .byte $10   ; 14 
- D 1 - - - 0x007D4C 01:BD3C: 20        .byte $20   ; 15 
- D 1 - - - 0x007D4D 01:BD3D: 40        .byte $40   ; 16 
- D 1 - - - 0x007D4E 01:BD3E: 80        .byte $80   ; 17 
- D 1 - - - 0x007D4F 01:BD3F: 01        .byte $01   ; 18 
- - - - - - 0x007D50 01:BD40: 02        .byte $02   ; 19 
- - - - - - 0x007D51 01:BD41: 04        .byte $04   ; 1A 
- - - - - - 0x007D52 01:BD42: 08        .byte $08   ; 1B 
- - - - - - 0x007D53 01:BD43: 10        .byte $10   ; 1C 
- - - - - - 0x007D54 01:BD44: 20        .byte $20   ; 1D 
- - - - - - 0x007D55 01:BD45: 40        .byte $40   ; 1E 
- - - - - - 0x007D56 01:BD46: 80        .byte $80   ; 1F 



tbl_BD47_index:
- D 1 - - - 0x007D57 01:BD47: 00        .byte $00   ; 00 
- D 1 - - - 0x007D58 01:BD48: 00        .byte $00   ; 01 
- D 1 - - - 0x007D59 01:BD49: 00        .byte $00   ; 02 
- D 1 - - - 0x007D5A 01:BD4A: 00        .byte $00   ; 03 
- D 1 - - - 0x007D5B 01:BD4B: 00        .byte $00   ; 04 
- D 1 - - - 0x007D5C 01:BD4C: 00        .byte $00   ; 05 
- D 1 - - - 0x007D5D 01:BD4D: 00        .byte $00   ; 06 
- D 1 - - - 0x007D5E 01:BD4E: 00        .byte $00   ; 07 
- D 1 - - - 0x007D5F 01:BD4F: 01        .byte $01   ; 08 
- D 1 - - - 0x007D60 01:BD50: 01        .byte $01   ; 09 
- D 1 - - - 0x007D61 01:BD51: 01        .byte $01   ; 0A 
- D 1 - - - 0x007D62 01:BD52: 01        .byte $01   ; 0B 
- D 1 - - - 0x007D63 01:BD53: 01        .byte $01   ; 0C 
- D 1 - - - 0x007D64 01:BD54: 01        .byte $01   ; 0D 
- D 1 - - - 0x007D65 01:BD55: 01        .byte $01   ; 0E 
- D 1 - - - 0x007D66 01:BD56: 01        .byte $01   ; 0F 
- D 1 - - - 0x007D67 01:BD57: 02        .byte $02   ; 10 
- D 1 - - - 0x007D68 01:BD58: 02        .byte $02   ; 11 
- D 1 - - - 0x007D69 01:BD59: 02        .byte $02   ; 12 
- D 1 - - - 0x007D6A 01:BD5A: 02        .byte $02   ; 13 
- D 1 - - - 0x007D6B 01:BD5B: 02        .byte $02   ; 14 
- D 1 - - - 0x007D6C 01:BD5C: 02        .byte $02   ; 15 
- D 1 - - - 0x007D6D 01:BD5D: 02        .byte $02   ; 16 
- D 1 - - - 0x007D6E 01:BD5E: 02        .byte $02   ; 17 
- D 1 - - - 0x007D6F 01:BD5F: 03        .byte $03   ; 18 
- - - - - - 0x007D70 01:BD60: 03        .byte $03   ; 19 
- - - - - - 0x007D71 01:BD61: 03        .byte $03   ; 1A 
- - - - - - 0x007D72 01:BD62: 03        .byte $03   ; 1B 
- - - - - - 0x007D73 01:BD63: 03        .byte $03   ; 1C 
- - - - - - 0x007D74 01:BD64: 03        .byte $03   ; 1D 
- - - - - - 0x007D75 01:BD65: 03        .byte $03   ; 1E 
- - - - - - 0x007D76 01:BD66: 03        .byte $03   ; 1F 


; bzk garbage
- - - - - - 0x007D77 01:BD67: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
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



.out .sprintf("Free bytes in bank 82: 0x%04X [%d]", ($C000 - *), ($C000 - *))



