; keep your global constant values inside this file



; MISC
con_obj_limit                           = $22 ; object indexes are 00-21 including 00-01 for players



; ram_btn_p1
; ram_btn_p2
; ram_copy_btns
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03



; ram_function_id
; need comments 0x00038C 0x000378
; con_function_00                       = $00 ; unused
con_function_title_screen               = $02 ; 
con_function_cutscene                   = $04 ; after title screen
con_function_06                         = $06 ; 
con_function_player_1                   = $08 ; player handler
con_function_player_2                   = $0A ; player handler
con_function_objects_handler            = $0C ; 
con_function_0E                         = $0E ; 
con_function_10                         = $10 ; 
con_function_12                         = $12 ; 



; ram_function_flags
con_func_flag_off                       = $00 ; completely disabled
con_func_flag_temp_disable              = $01 ; temporary disable if set
; con_func_flag_02                      = $02 ; unused
; con_func_flag_04                      = $04 ; unused
; con_func_flag_08                      = $08 ; unused
; con_func_flag_10                      = $10 ; unused
; con_func_flag_20                      = $20 ; unused
con_func_flag_pause                     = $40 ; paused with a timer if set
con_func_flag_exist                     = $80 ; exists if set



; ram_obj_id
; need comments at 0x004AEB 0x003C32 0x003727 0x003B55
con_obj_id_projectile_bullet            = $00 ; projectile of player
con_obj_id_01                           = $01 ; ??? something to do with bullets
con_obj_id_projectile_spere             = $02 ; projectile of 05 object
con_obj_id_projectile_bomb              = $03 ; projectile of 0E object
con_obj_id_enemy_golem                  = $04 ; gray dude, first enemy
con_obj_id_enemy_duck                   = $05 ; duck shooting spears 02
con_obj_id_enemy_bat                    = $06 ; violet flying bat
con_obj_id_enemy_fish                   = $07 ; jumping green fish
con_obj_id_enemy_red_dragonfly          = $08 ; red dragonfly, flies foward, then pauses, then flies towards player
con_obj_id_enemy_violet_dragonfly       = $09 ; violet dragonfly, flies in circles
con_obj_id_enemy_fly                    = $0A ; violet fly, flies and pauses
con_obj_id_enemy_skull_coin             = $0B ; gray coin with skull face
con_obj_id_item_small                   = $0C ; small bonuses lying everywhere (fruits, flowers, etc, also yellow cactus growing from the ground)
con_obj_id_item_big                     = $0D ; bonus near blue tablet (cattot, french fries, lemon, POW), also enemies turning into 0D after picking up POW
con_obj_id_enemy_bomber                 = $0E ; green dude with red mustache, shooting bombs 03
con_obj_id_enemy_skull_block            = $0F ; gray block with skull face
con_obj_id_candy                        = $10 ; red rectangular thing in buddha's hand
con_obj_id_enemy_boss                   = $11 ; bearded big dude flying on a clowd with a skull shield, shooting axes 12
con_obj_id_projectile_axe               = $12 ; projectile of 11 object
con_obj_id_cutscene_player_1            = $13 ; during cutscene, player 1
con_obj_id_cutscene_player_2            = $14 ; during cutscene, player 2
con_obj_id_cutscene_friend_1            = $15 ; during cutscene, one of three kidnapped characters
con_obj_id_cutscene_friend_2            = $16 ; during cutscene, one of three kidnapped characters
con_obj_id_cutscene_friend_3            = $17 ; during cutscene, one of three kidnapped characters
con_obj_id_cutscene_enemy               = $18 ; during cutscene, bearded big dude flying on a clowd with a skull shield, kidnaps characters
con_obj_id_item_red_ball                = $19 ; red big ball with a shuriken inside it
con_obj_id_area_number_icon             = $1A ; white bubble on the highest platform displaying numbers
con_obj_id_invincibility_cloud          = $1B ; invincibility cloud under player when he respawns
con_obj_id_final_cutscene_friend_1      = $1C ; during congratulation screen, one of three rescued characters
con_obj_id_final_cutscene_friend_2      = $1D ; during congratulation screen, one of three rescued characters
con_obj_id_final_cutscene_friend_3      = $1E ; during congratulation screen, one of three rescued characters
con_obj_id_final_cutscene_candy         = $1F ; collcted candy 10
con_obj_id_game_over_blinking_text      = $20 ; game over text in the middle of the screen during demo



; ram_obj_flags
; need comments 0x0032E9 0x0032D6 0x000EA6 0x000E93
con_obj_flag_00                         = $00 ; 
con_obj_flag_dying                      = $01 ; death animation
con_obj_flag_02                         = $02 ; ??? (player is facing left if set)
con_obj_flag_04                         = $04 ; 
con_obj_flag_08                         = $08 ; 
con_obj_flag_10                         = $10 ; 
con_obj_flag_20                         = $20 ; 
con_obj_flag_40                         = $40 ; unused? 0x0031F3 0x003235
con_obj_flag_exists                     = $80 ; 



; sound engine control bytes 0x005863
con_se_cb_F0                            = $F0 ; 
; con_se_cb_F1                          = $F1 ; unused
con_se_cb_jmp                           = $F2 ; 
; con_se_cb_F3                          = $F3 ; unused
; con_se_cb_F4                          = $F4 ; unused
; con_se_cb_F5                          = $F5 ; unused
con_se_cb_F6                            = $F6 ; 
; con_se_cb_F7                          = $F7 ; unused
; con_se_cb_F8                          = $F8 ; unused
; con_se_cb_F9                          = $F9 ; unused
; con_se_cb_FA                          = $FA ; unused
; con_se_cb_FB                          = $FB ; unused
; con_se_cb_FC                          = $FC ; unused
; con_se_cb_FD                          = $FD ; unused
; con_se_cb_FE                          = $FE ; unused
con_se_cb_stop                          = $FF ; 
