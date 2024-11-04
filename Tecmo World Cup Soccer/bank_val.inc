; MISC разное



; ram_btn_hold
; ram_btn_press
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C



; ram_0061_t01_player_data
con_plr_flags                           = $00 ; player state flags
con_plr_spr_A                           = $01 ; sprite attribute
con_plr_spd_X_fr_current                = $02 ; current speed while moving (fractional)
con_plr_pos_X_fr                        = $03 ; position (fractional)
con_plr_spd_X_lo_current                = $04 ; current speed while moving
con_plr_pos_X_lo                        = $05 ; position
con_plr_action_timer_1                  = $06 ; lots of stuff, like goal kick and corner kick autopass timer
con_plr_pos_X_hi                        = $07 ; position
con_plr_spd_Y_fr_current                = $08 ; current speed while moving (fractional)
con_plr_pos_Y_fr                        = $09 ; position
con_plr_spd_Y_lo_current                = $0A ; current speed while moving
con_plr_pos_Y_lo                        = $0B ; position
con_plr_action_timer_2                  = $0C ; lots of stuff, like throw-in autopass timer
con_plr_pos_Y_hi                        = $0D ; position
con_plr_unknown_0E                      = $0E ; don't know what this does yet
con_plr_anim_cnt_hi                     = $0F ; animation counter
con_plr_anim_cnt_lo                     = $10 ; animation counter
con_plr_anim_id                         = $11 ; animaton index
con_plr_state                           = $12 ; current behavior index, see con_state
con_plr_direction                       = $13 ; direction
con_plr_spd_fr_init                     = $14 ; base speed
con_plr_spd_lo_init                     = $15 ; base speed
con_plr_sub_hi                          = $16 ; player handler pointer
con_plr_sub_lo                          = $17 ; player handler pointer
con_plr_sub_timer                       = $18 ; player handler timer
con_plr_unknown_19                      = $19 ; don't know what this does yet
con_plr_aim_X_lo                        = $1A ; where player is running to, a copy of ram_ball_pos_X_lo
con_plr_aim_X_hi                        = $1B ; where player is running to, a copy of ram_ball_pos_X_hi
con_plr_aim_Y_lo                        = $1C ; where player is running to, a copy of ram_ball_pos_Y_lo
con_plr_aim_Y_hi                        = $1D ; where player is running to, a copy of ram_ball_pos_Y_hi
con_plr_tbl_lo                          = $1E ; cpu behavior table pointer
con_plr_tbl_hi                          = $1F ; cpu behavior table pointer



; player flags
con_plr_flag_01_unknown                 = $01 ; don't know what this does yet (acknowledge maybe?)
con_plr_flag_visible                    = $02 ; if on the screen
con_plr_flag_busy                       = $04 ; if has a task and can't be disturbed with a different task/be selected as controllable
con_plr_flag_08_unknown                 = $08 ; don't know what this does yet (player table was prepared maybe?)
; ball flags
con_ball_flag_inside_goal               = $10 ; 
con_ball_flag_in_pushing_animation      = $20 ; 
con_ball_flag_attached_to_player        = $40 ; 
con_ball_flag_was_shooted               = $80 ; 



; ram_field_flags
con_field_flag_gk_has_ball              = $40 ; when gk can move with the ball in his hands
con_field_flag_update_tactics           = $80 ; flag to update players tactics



; con_plr_state
; handlers at 0x00E6D2 0x00E53E
con_state_idle                          = $00 ; 
con_state_backup_follow_ball            = $01 ; 
con_state_with_ball                     = $02 ; 
con_state_follow_ball                   = $03 ; 
con_state_without_ball                  = $04 ; 
con_state_dead                          = $05 ; 
con_state_dodge                         = $06 ; 
con_state_shoot_fast                    = $07 ; 
con_state_shoot_volley                  = $08 ; 
; con_state_09                          = $09 ; 
con_state_shoot_header                  = $0A ; 
; con_state_0B                          = $0B ; 
con_state_throw_in                      = $0C ; 
con_state_goal_kick                     = $0D ; 
con_state_corner_kick                   = $0E ; 
con_state_run_to_area                   = $0F ; 
con_state_run_near_ball                 = $10 ; 
con_state_follow_enemy                  = $11 ; 
con_state_freeze                        = $12 ; 
con_state_kick_off                      = $13 ; 
con_state_run_to_defense                = $14 ; 
con_state_run_to_base                   = $15 ; 
con_state_gk_get_ball                   = $16 ; 
con_state_pk_player                     = $17 ; 
con_state_pk_gk                         = $18 ; 
con_state_pk_bench                      = $19 ; 



; 0x005676
; con_anim_00                           = $00 ; 
con_anim_01                             = $01 ; 
con_anim_02                             = $02 ; 
con_anim_run_player                     = $03 ; 
con_anim_run_gk                         = $04 ; 
con_anim_05                             = $05 ; 
con_anim_06                             = $06 ; 
con_anim_07                             = $07 ; 
con_anim_08                             = $08 ; 
con_anim_dead                           = $09 ; 
con_anim_dodge                          = $0A ; 
con_anim_shoot_normal                   = $0B ; 
con_anim_shoot_volley                   = $0C ; 
con_anim_shoot_head                     = $0D ; 
con_anim_0E                             = $0E ; 
con_anim_throw_in                       = $0F ; 
con_anim_10                             = $10 ; 
con_anim_11                             = $11 ; 
con_anim_12                             = $12 ; 
con_anim_13                             = $13 ; 
con_anim_14                             = $14 ; 
con_anim_15                             = $15 ; 
con_anim_16                             = $16 ; 



; 0x000F90
con_sfx_off                             = $01 ; выключить звук
con_sfx_dead                            = $02 ; игрок умер от мяча или подката, или его затоптали
con_sfx_shot                            = $03 ; обычный удар или навес
con_sfx_fast_shot                       = $04 ; удар в одно касание
con_sfx_receive                         = $05 ; принятие мяча на грудь
con_sfx_throw                           = $06 ; бросок мяча руками
con_sfx_catch                           = $07 ; кипер словил мяч
con_sfx_tackle                          = $08 ; подкат
; con_sfx_09                            = $09 ; unused, сигнал какой-то
con_sfx_time_low                        = $0A ; сигнал что время кончается
con_sfx_time_up                         = $0B ; сигнал когда время вышло
con_sfx_whistle_referee                 = $0C ; свисток на разводке или мяч вне игры
con_sfx_hit_goalspot                    = $0D ; удар о штангу или перекладину
con_sfx_fans                            = $0E ; шум зрителей
con_sfx_mode_select                     = $0F ; при выборе одной из опций в главном меню
con_music_field                         = $10 ; главная мелодия игры на поле
con_music_logo                          = $11 ; мелодия логотипа
con_music_goal                          = $12 ; мелодия гола
con_music_half_time                     = $13 ; мелодия в перерыве на эеране со счетом
con_music_game_number                   = $14 ; мелодия экрана с номером игры
con_music_credits                       = $15 ; финальная мелодия титров
con_music_team_select                   = $16 ; мелодия экрана выбора команд
con_music_penalty                       = $17 ; мелодия пенальти
con_sfx_select                          = $18 ; выбор команды/времени/пароля
; con_sfx_19                            = $19 ; unused
con_sfx_whistle_fans                    = $1A ; свисток после гола и шум зрителей
con_sfx_wrong_psw                       = $1B ; неправильный пароль
con_sfx_syndrom                         = $1C ; синдром давителя, когда кипер выпустил мяч из рук во время ловли
con_music_quiet                         = $20 ; постепенное уменьшение громкости музыки



; sound engine control bytes 0x000457
con_se_cb_E0                            = $E0 ; 
; con_se_cb_E1                          = $E1 ; unused
con_se_cb_E2                            = $E2 ; 
con_se_cb_E3                            = $E3 ; 
con_se_cb_E4                            = $E4 ; 
con_se_cb_E5                            = $E5 ; 
; con_se_cb_E6                          = $E6 ; unused
; con_se_cb_E7                          = $E7 ; unused
con_se_cb_jmp                           = $E8 ; 
con_se_cb_jsr                           = $E9 ; 
con_se_cb_rts                           = $EA ; 
con_se_cb_EB                            = $EB ; 
con_se_cb_EC                            = $EC ; 
con_se_cb_ED                            = $ED ; 
; con_se_cb_EE                          = $EE ; unused
con_se_cb_EF                            = $EF ; 
; con_se_cb_F0                          = $F0 ; unused
; con_se_cb_F1                          = $F1 ; unused
con_se_cb_F2                            = $F2 ; 
con_se_cb_F3                            = $F3 ; 
con_se_cb_F4                            = $F4 ; 
; con_se_cb_F5                          = $F5 ; unused
; con_se_cb_F6                          = $F6 ; unused
; con_se_cb_F7                          = $F7 ; unused
; con_se_cb_F8                          = $F8 ; unused
; con_se_cb_F9                          = $F9 ; unused
; con_se_cb_FA                          = $FA ; unused
con_se_cb_FB                            = $FB ; 
con_se_cb_FC                            = $FC ; 
; con_se_cb_FD                          = $FD ; unused
; con_se_cb_FE                          = $FE ; unused
con_se_cb_stop                          = $FF ; 
