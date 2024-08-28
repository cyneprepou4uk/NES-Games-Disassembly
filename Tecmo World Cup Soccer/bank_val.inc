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
con_se_cb_jmp                           = $E8 ; jmp
con_se_cb_jsr                           = $E9 ; jsr
con_se_cb_rts                           = $EA ; rts
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
