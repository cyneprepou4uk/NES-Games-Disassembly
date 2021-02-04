; RAM
ram_0000                        = $00 ; 51   
ram_0001                        = $01 ; 4   
ram_0002                        = $02 ; 7   
ram_0003                        = $03 ; 4   
ram_0004                        = $04 ; 22   
ram_0005                        = $05 ; 13   

ram_btn_hold                    = $06 ; 15      1p see bank_val.inc
    ram_0007                        = $07 ; 2   2p

ram_btn_press                   = $08 ; 23      1p see bank_val.inc
    ram_0009                        = $09 ; 3   2p

ram_frame_cnt_hi                = $0A ; 15   
ram_frame_cnt_lo                = $0B ; 34   
ram_buffer_index                = $0C ; 28   index for 0180+
ram_000D                        = $0D ; 5   
ram_000E                        = $0E ; 5   
ram_000F                        = $0F ; 4   
ram_0010                        = $10 ; 2   
ram_0011                        = $11 ; 125   ($indirect) <7>   ($indirect),Y <27>   
ram_0012                        = $12 ; 91   
ram_0013                        = $13 ; 14   ($indirect),Y <4>   
ram_0014                        = $14 ; 10   

ram_p1_score                    = $15 ; 4           millions
    ram_0016                        = $16 ; N/A     hundreds of thousands
    ram_0017                        = $17 ; 1       tens of thousands (checked for bonus life for 20.000)
    ram_0018                        = $18 ; N/A     thousands
    ram_0019                        = $19 ; N/A     hundreds
    ram_001A                        = $1A ; N/A     tens
    ram_001B                        = $1B ; N/A     ones
    ram_001C                        = $1C ; N/A     end token (FF)

ram_p2_score                    = $1D ; 1           millions
    ram_001E                        = $1E ; N/A     hundreds of thousands
    ram_001F                        = $1F ; 1       tens of thousands (checked for bonus life for 20.000)
    ram_0020                        = $20 ; N/A     thousands
    ram_0021                        = $21 ; N/A     hundreds
    ram_0022                        = $22 ; N/A     tens
    ram_0023                        = $23 ; N/A     ones
    ram_0024                        = $24 ; N/A     end token (FF)

ram_p1_tmp_score                = $25 ; N/A         millions
    ram_0026                        = $26 ; N/A     hundreds of thousands
    ram_0027                        = $27 ; N/A     tens of thousands
    ram_0028                        = $28 ; N/A     thousands
    ram_0029                        = $29 ; N/A     hundreds
    ram_002A                        = $2A ; N/A     tens
    ram_002B                        = $2B ; N/A     ones
    ram_002C                        = $2C ; N/A     end token (FF)

ram_p2_tmp_score                = $2D ; N/A         millions
    ram_002E                        = $2E ; N/A     hundreds of thousands
    ram_002F                        = $2F ; N/A     tens of thousands
    ram_0030                        = $30 ; N/A     thousands
    ram_0031                        = $31 ; N/A     hundreds
    ram_0032                        = $32 ; N/A     tens
    ram_0033                        = $33 ; N/A     ones
    ram_0034                        = $34 ; N/A     end token (FF)

ram_com_dec_number              = $35 ; 1           millions, common decimal number
    ram_0036                        = $36 ; N/A     hundreds of thousands
    ram_0037                        = $37 ; N/A     tens of thousands
    ram_com_dec_num_thousands       = $38 ; 1       thousands
    ram_com_dec_num_hundreds        = $39 ; 1       hundreds
    ram_com_dec_num_tens            = $3A ; 2       tens
    ram_com_dec_num_ones            = $3B ; 1       ones
    ram_003C                        = $3C ; N/A     end token (FF)

ram_hi_score                    = $3D ; 3           millions
    ram_003E                        = $3E ; N/A     hundreds of thousands
    ram_003F                        = $3F ; 1       tens of thousands (default 20.000)
    ram_0040                        = $40 ; N/A     thousands
    ram_0041                        = $41 ; N/A     hundreds
    ram_0042                        = $42 ; N/A     tens
    ram_0043                        = $43 ; N/A     ones
    ram_0044                        = $44 ; N/A     end token (FF)

ram_shovel_timer                = $45 ; 5    shovel bonus
ram_2nd_loop_flag               = $46 ; 13   00 = stages 01-35, 01 = stages 36-70, 02 = demo flag (bonus pickup sound not playing)
ram_0047                        = $47 ; 13   
ram_0048                        = $48 ; 10   
ram_0049                        = $49 ; 5   
ram_hidden_cutscene_cnt         = $4A ; 5    counts correct actions need to activate hidden cutscene https://tcrf.net/Battle_City_(NES)
ram_constr_usage_cnt            = $4B ; 8    how many times you entered construction screen
ram_004C                        = $4C ; 3   
ram_bg_palette_id               = $4D ; 15   00-08 (id) or FF (palette was already set)
ram_004E                        = $4E ; N/A
ram_scroll_pos_Y                = $4F ; 13   
ram_base_nmt                    = $50 ; 12   base nametable 00 (2000) or 02 (2800), used as ORA with byte for 2000 register

ram_lives                       = $51 ; 10      1p
    ram_0052                        = $52 ; 9   2p

ram_0053                        = $53 ; 27   
ram_0054                        = $54 ; 5   
ram_0055                        = $55 ; 5   
ram_0056                        = $56 ; 26   
ram_0057                        = $57 ; 35   
ram_0058                        = $58 ; 5   
ram_0059                        = $59 ; 5   
ram_obj_loop_cnt                = $5A ; 107   objects loop counter, used as counter and/or index for tank/bullet related code handlers
ram_005B                        = $5B ; 20   
ram_005C                        = $5C ; 8   
ram_005D                        = $5D ; 9   
ram_005E                        = $5E ; 7   
ram_005F                        = $5F ; 3   
ram_0060                        = $60 ; 17   
ram_0061                        = $61 ; N/A
ram_0062                        = $62 ; 8   
ram_0063                        = $63 ; 3   
ram_0064                        = $64 ; 8   
ram_0065                        = $65 ; 5   
ram_p1_extra_life               = $66 ; 3    for 20.000 score, 00 = default, 01 = life was given already
ram_p2_extra_life               = $67 ; 3    for 20.000 score, 00 = default, 01 = life was given already
ram_game_over_flag              = $68 ; 13   80 = not game over, 27-01 - timer before game over text appear, 00 - game over flag
ram_0069                        = $69 ; 3   
ram_enemy_spawn_pos             = $6A ; 5    00 = left, 01 = center, 02 = right
ram_006B                        = $6B ; 6   
ram_enemy_limit                 = $6C ; 4    max enemy tanks on the screen at once (05 for 1p mode and 07 for 2p mode)
ram_pause_flag                  = $6D ; 8    00 = not paused, 01 = paused
ram_006E                        = $6E ; 18   

ram_stun_timer                  = $6F ; 9       1p when hit by 2p
    ram_0070                        = $70 ; 3   2p when hit by 1p

ram_0071                        = $71 ; 8       enemy destination X?
ram_0072                        = $72 ; 8       enemy destination Y?

ram_p1_enemy_type_kill_cnt      = $73 ; 5       enemy type 100, how many tanks of this type were killed by 1p
    ram_0074                        = $74 ; 1   enemy type 200
    ram_0075                        = $75 ; 1   enemy type 300
    ram_0076                        = $76 ; 1   enemy type 400

ram_p2_enemy_type_kill_cnt      = $77 ; 4       enemy type 100, how many tanks of this type were killed by 2p
    ram_0078                        = $78 ; 1   enemy type 200
    ram_0079                        = $79 ; 1   enemy type 300
    ram_007A                        = $7A ; 1   enemy type 400

ram_007B                        = $7B ; 5   
ram_007C                        = $7C ; 4   
ram_007D                        = $7D ; 4   
ram_007E                        = $7E ; 4   
ram_enemy_spawn_cnt             = $7F ; 5   
ram_enemies_left_cnt            = $80 ; 3   
ram_0081                        = $81 ; 6   
ram_enemy_timer_before_spawn    = $82 ; 4   
ram_game_mode                   = $83 ; 17   00 = 1p mode, 01 = 2p mode, 02 = construction
ram_enemy_spawn_interval        = $84 ; 5   
ram_stage                       = $85 ; 19   starts from 01
ram_bonus_pos_X                 = $86 ; 10   bonus is technically always active, the game moves it off screen to hide
ram_bonus_pos_Y                 = $87 ; 4   
ram_bonus_id                    = $88 ; 5   
ram_helmet_timer                = $89 ; 7           1p, also invincibility after respawn
    ram_008A                        = $8A ; 1       2p

ram_enemy_type_stage_cnt        = $8B ; 3           enemy type 100, how many tanks of this type spawn on the level
    ram_008C                        = $8C ; 1       enemy type 200
    ram_008D                        = $8D ; 1       enemy type 300
    ram_008E                        = $8E ; 1       enemy type 400

ram_enemy_type_offset           = $8F ; 4       index for reading 008B+

ram_tank_pos_X                  = $90 ; 35          1p
    ram_0091                        = $91 ; 1       2p
    ram_0092                        = $92 ; 1       enemy 6
    ram_0093                        = $93 ; 1       enemy 5
    ram_0094                        = $94 ; 1       enemy 4
    ram_0095                        = $95 ; N/A     enemy 3
    ram_0096                        = $96 ; N/A     enemy 2
    ram_0097                        = $97 ; N/A     enemy 1

ram_tank_pos_Y                  = $98 ; 36          1p
    ram_0099                        = $99 ; 1       2p
    ram_009A                        = $9A ; 1       enemy 6
    ram_009B                        = $9B ; 1       enemy 5
    ram_009C                        = $9C ; 1       enemy 4
    ram_009D                        = $9D ; N/A     enemy 3
    ram_009E                        = $9E ; N/A     enemy 2
    ram_009F                        = $9F ; N/A     enemy 1

ram_tank_status                 = $A0 ; 57          1p
    ram_00A1                        = $A1 ; 1       2p
    ram_00A2                        = $A2 ; 1       enemy 6
    ram_00A3                        = $A3 ; 1       enemy 5
    ram_00A4                        = $A4 ; 1       enemy 4
    ram_00A5                        = $A5 ; N/A     enemy 3
    ram_00A6                        = $A6 ; N/A     enemy 2
    ram_00A7                        = $A7 ; N/A     enemy 1

ram_tank_type                   = $A8 ; 23          1p, xxxx .... = tank model, .... xxxx = ???, line 620 at russian disassembly 
    ram_00A9                        = $A9 ; N/A     2p
    ram_00AA                        = $AA ; N/A     enemy 6
    ram_00AB                        = $AB ; N/A     enemy 5
    ram_00AC                        = $AC ; N/A     enemy 4
    ram_00AD                        = $AD ; N/A     enemy 3
    ram_00AE                        = $AE ; N/A     enemy 2
    ram_00AF                        = $AF ; N/A     enemy 1

ram_tank_wheels                 = $B0 ; 10          1p, constantly changed to 00/04 while moving
    ram_00B1                        = $B1 ; N/A     2p
    ram_00B2                        = $B2 ; N/A     enemy 6
    ram_00B3                        = $B3 ; N/A     enemy 5
    ram_00B4                        = $B4 ; N/A     enemy 4
    ram_00B5                        = $B5 ; N/A     enemy 3
    ram_00B6                        = $B6 ; N/A     enemy 2
    ram_00B7                        = $B7 ; N/A     enemy 1

ram_bullet_pos_X                = $B8 ; 15          1p 1st bullet
    ram_00B9                        = $B9 ; N/A     2p 1st bullet
    ram_00BA                        = $BA ; N/A     enemy 6
    ram_00BB                        = $BB ; N/A     enemy 5
    ram_00BC                        = $BC ; N/A     enemy 4
    ram_00BD                        = $BD ; N/A     enemy 3
    ram_00BE                        = $BE ; N/A     enemy 2
    ram_00BF                        = $BF ; N/A     enemy 1

ram_2nd_bullet_pos_X            = $C0 ; 1           1p 2nd bullet
    ram_00C1                        = $C1 ; N/A     2p 2nd bullet

ram_bullet_pos_Y                = $C2 ; 15          1p 1st bullet
    ram_00C3                        = $C3 ; N/A     2p 1st bullet
    ram_00C4                        = $C4 ; N/A     enemy 6
    ram_00C5                        = $C5 ; N/A     enemy 5
    ram_00C6                        = $C6 ; N/A     enemy 4
    ram_00C7                        = $C7 ; N/A     enemy 3
    ram_00C8                        = $C8 ; N/A     enemy 2
    ram_00C9                        = $C9 ; N/A     enemy 1

ram_2nd_bullet_pos_Y            = $CA ; 1           1p 2nd bullet
    ram_00CB                        = $CB ; N/A     2p 2nd bullet

ram_bullet_status               = $CC ; 31          1p 1st bullet, line 711 at russian disassembly 
    ram_00CD                        = $CD ; N/A     2p 1st bullet
    ram_00CE                        = $CE ; N/A     enemy 6
    ram_00CF                        = $CF ; N/A     enemy 5
    ram_00D0                        = $D0 ; N/A     enemy 4
    ram_00D1                        = $D1 ; N/A     enemy 3
    ram_00D2                        = $D2 ; N/A     enemy 2
    ram_00D3                        = $D3 ; N/A     enemy 1

ram_2nd_bullet_status           = $D4 ; 2           1p 2nd bullet
    ram_00D5                        = $D5 ; N/A     2p 2nd bullet

ram_bullet_property             = $D6 ; 7           1p 1st bullet, line 711 at russian disassembly 
    ram_00D7                        = $D7 ; N/A     2p 1st bullet
    ram_00D8                        = $D8 ; N/A     enemy 6
    ram_00D9                        = $D9 ; N/A     enemy 5
    ram_00DA                        = $DA ; N/A     enemy 4
    ram_00DB                        = $DB ; N/A     enemy 3
    ram_00DC                        = $DC ; N/A     enemy 2
    ram_00DD                        = $DD ; N/A     enemy 1

ram_2nd_bullet_property         = $DE ; 1           1p 2nd bullet, .... ...x = speed, .... ..x. = piercing
    ram_00DF                        = $DF ; N/A     2p 2nd bullet

ram_tank_stage_pos_lo           = $E0 ; 2           1p, ??? something related to position inside 0400-07BF (hi maybe?)
    ram_00E1                        = $E1 ; N/A     2p
    ram_00E2                        = $E2 ; N/A     enemy 6
    ram_00E3                        = $E3 ; N/A     enemy 5
    ram_00E4                        = $E4 ; N/A     enemy 4
    ram_00E5                        = $E5 ; N/A     enemy 3
    ram_00E6                        = $E6 ; N/A     enemy 2
    ram_00E7                        = $E7 ; N/A     enemy 1

ram_tank_stage_pos_hi           = $E8 ; 8           1p, ??? something related to position inside 0400-07BF (lo maybe?)
    ram_00E9                        = $E9 ; N/A     2p
    ram_00EA                        = $EA ; N/A     enemy 6
    ram_00EB                        = $EB ; N/A     enemy 5
    ram_00EC                        = $EC ; N/A     enemy 4
    ram_00ED                        = $ED ; N/A     enemy 3
    ram_00EE                        = $EE ; N/A     enemy 2
    ram_00EF                        = $EF ; N/A     enemy 1

ram_00F0                        = $F0 ; 41   ($indirect),Y <32>   
ram_00F1                        = $F1 ; 3   
ram_00F2                        = $F2 ; 2   ($indirect),Y <1>   
ram_00F3                        = $F3 ; 1   
ram_sfx_check_index             = $F4 ; 11   index for reading 0300+
ram_sfx_check_limit             = $F5 ; 4    limit for checking, 01 = 0300 only (pause), 1C = 0300-031B range
ram_00F6                        = $F6 ; 4   
ram_00F7                        = $F7 ; N/A
ram_00F8                        = $F8 ; N/A
ram_00F9                        = $F9 ; 5   
ram_00FA                        = $FA ; N/A
ram_00FB                        = $FB ; N/A
ram_00FC                        = $FC ; N/A
ram_00FD                        = $FD ; 14   ($indirect) <1>   ($indirect),Y <2>   
ram_00FE                        = $FE ; 5   
ram_00FF                        = $FF ; N/A
ram_clock_timer                 = $0100 ; 6    clock bonus

ram_tank_upgrade                = $0101 ; 5         1p, collect star bonus to upgrade
    ram_0102                        = $0102 ; 1     2p

ram_0103                        = $0103 ; 10        1p, ???
    ram_0104                        = $0104 ; N/A   2p

; game over message
ram_go_msg_pos_X                = $0105 ; 7     start position
ram_go_msg_pos_Y                = $0106 ; 7     start position
ram_go_msg_mov_type             = $0107 ; 4     movement type, 00 = up, 01 = left, 02 = down, 03 = right
ram_go_msg_timer                = $0108 ; 7     for how long msg will be displayed, decreases each 16 frames. if => 0A msg moves

ram_debug_address_index         = $0109 ; 5     index for 0000+

ram_010A                        = $010A ; N/A   ??? unused, but cleared at 0x002423 because get's in a middle by clearing together with other addresses

; unused
ram_010B                        = $010B ; N/A
ram_010C                        = $010C ; N/A
ram_010D                        = $010D ; N/A
ram_010E                        = $010E ; N/A
ram_010F                        = $010F ; N/A

; 0110-011F
ram_copyrights                  = $0110 ; 2    used as an indicator of the game first launch and valid RAM

; 0180-01FF?
ram_ppu_buffer                  = $0180 ; 51   

; OAM sprites
ram_spr_Y                       = $0200 ; 2    Y pos
ram_spr_T                       = $0201 ; 1    tile
ram_spr_A                       = $0202 ; 1    attribute
ram_spr_X                       = $0203 ; 1    X pos

; sound effects
ram_sounds                      = $0300 ; 6     label for 0300,X
    ram_sfx_pause                   = $0300 ; 6     
    ram_sfx_stage_load_1            = $0301 ; 1   when loading a stage
    ram_sfx_stage_load_2            = $0302 ; 1   
    ram_sfx_stage_load_3            = $0303 ; 1   
    ram_sfx_gain_life_1             = $0304 ; 2   
    ram_sfx_gain_life_2             = $0305 ; 2   
    ram_sfx_bonus_pickup            = $0306 ; 1   
    ram_sfx_explosion_player        = $0307 ; 2   
    ram_0308                        = $0308 ; N/A   unused
    ram_sfx_bonus_appear            = $0309 ; 1   
    ram_sfx_explosion_enemy         = $030A ; 2   
    ram_sfx_explosion_hq            = $030B ; 1   
    ram_sfx_bullet_hit_brick        = $030C ; 2   
    ram_sfx_bullet_hit_wall         = $030D ; 1   
    ram_sfx_bullet_hit_tank         = $030E ; 1   
    ram_sfx_shot                    = $030F ; 1   
    ram_sfx_movement_ice            = $0310 ; 1   
    ram_sfx_movement_player         = $0311 ; 4   
    ram_sfx_movement_enemy          = $0312 ; 2   
    ram_sfx_score_count_1           = $0313 ; 2   during score count after stage
    ram_sfx_score_count_2           = $0314 ; 2   
    ram_sfx_hiscore_1               = $0315 ; 2   after game over
    ram_sfx_hiscore_2               = $0316 ; 1   
    ram_sfx_hiscore_3               = $0317 ; 1   
    ram_sfx_game_over_1             = $0318 ; 2   
    ram_sfx_game_over_2             = $0319 ; 1   
    ram_sfx_game_over_3             = $031A ; 1   
    ram_sfx_bonus_1000              = $031B ; 2     if you killed more enemies than your teammate

; addresses used by the sound driver start here, probably up to 03FF
ram_sfx_ind_data                = $031C ; 2   label used as indirect lo/hi address
    ram_031D                        = $031D ; 2   

; stage RAM 0400-07BF
ram_stage_data_page_0           = $0400 ; 2   
ram_stage_data_page_1           = $0500 ; 2   
ram_stage_data_page_2           = $0600 ; 2   
ram_stage_data_page_3           = $0700 ; 3   

; used for score count screen and some other codes
ram_07C0                        = $07C0 ; 5   
ram_07C1                        = $07C1 ; 1   
ram_07C2                        = $07C2 ; 1   
ram_07C3                        = $07C3 ; 1   
ram_07C4                        = $07C4 ; 1   
ram_07C5                        = $07C5 ; 1   
ram_07C6                        = $07C6 ; 1   
ram_07C7                        = $07C7 ; 1   
ram_07C8                        = $07C8 ; 1   
ram_07C9                        = $07C9 ; 1   
ram_07CA                        = $07CA ; 1   
ram_07CB                        = $07CB ; N/A
ram_07CC                        = $07CC ; N/A
ram_07CD                        = $07CD ; 1   
ram_07CE                        = $07CE ; 1   
ram_07CF                        = $07CF ; 1   
ram_07D0                        = $07D0 ; 1   
ram_07D1                        = $07D1 ; 1   
ram_07D2                        = $07D2 ; 1   
ram_07D3                        = $07D3 ; N/A
ram_07D4                        = $07D4 ; N/A
ram_07D5                        = $07D5 ; 1   
ram_07D6                        = $07D6 ; 1   
ram_07D7                        = $07D7 ; 1   
ram_07D8                        = $07D8 ; N/A
ram_07D9                        = $07D9 ; N/A
ram_07DA                        = $07DA ; N/A
ram_07DB                        = $07DB ; N/A
ram_07DC                        = $07DC ; N/A
ram_07DD                        = $07DD ; N/A
ram_07DE                        = $07DE ; N/A
ram_07DF                        = $07DF ; N/A
ram_07E0                        = $07E0 ; N/A
ram_07E1                        = $07E1 ; N/A
ram_07E2                        = $07E2 ; N/A
ram_07E3                        = $07E3 ; N/A
ram_07E4                        = $07E4 ; N/A
ram_07E5                        = $07E5 ; N/A
ram_07E6                        = $07E6 ; N/A
ram_07E7                        = $07E7 ; N/A
ram_07E8                        = $07E8 ; N/A
ram_07E9                        = $07E9 ; N/A
ram_07EA                        = $07EA ; N/A
ram_07EB                        = $07EB ; N/A
ram_07EC                        = $07EC ; N/A
ram_07ED                        = $07ED ; N/A
ram_07EE                        = $07EE ; N/A
ram_07EF                        = $07EF ; N/A
ram_07F0                        = $07F0 ; 1   
ram_07F1                        = $07F1 ; 1   
ram_07F2                        = $07F2 ; 1   
ram_07F3                        = $07F3 ; 4   
ram_07F4                        = $07F4 ; 4   
ram_07F5                        = $07F5 ; 1   
ram_07F6                        = $07F6 ; 1   
ram_07F7                        = $07F7 ; 1   
ram_07F8                        = $07F8 ; N/A
ram_07F9                        = $07F9 ; N/A
ram_07FA                        = $07FA ; N/A
ram_07FB                        = $07FB ; N/A
ram_07FC                        = $07FC ; N/A
ram_07FD                        = $07FD ; N/A
ram_07FE                        = $07FE ; N/A
ram_07FF                        = $07FF ; N/A
