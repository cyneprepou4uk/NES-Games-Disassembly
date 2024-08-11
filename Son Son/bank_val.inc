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
; con_837C_00                           = $00 ; unused
con_837C_title_screen                   = $02 ; 
con_837C_cutscene                       = $04 ; after title screen
con_837C_06                             = $06 ; 
con_837C_player_1                       = $08 ; player handler
con_837C_player_2                       = $0A ; player handler
con_837C_objects_handler                = $0C ; 
con_837C_0E                             = $0E ; 
con_837C_10                             = $10 ; 
con_837C_12                             = $12 ; 



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
; need comments at 0x004AEB 0x003C32 0x003727
con_obj_id_00                           = $00 ; 
con_obj_id_01                           = $01 ; 
con_obj_id_02                           = $02 ; 
con_obj_id_03                           = $03 ; 
con_obj_id_04                           = $04 ; 
con_obj_id_05                           = $05 ; 
con_obj_id_06                           = $06 ; 
con_obj_id_07                           = $07 ; 
con_obj_id_08                           = $08 ; 
con_obj_id_09                           = $09 ; 
con_obj_id_0A                           = $0A ; 
con_obj_id_0B                           = $0B ; 
con_obj_id_0C                           = $0C ; 
con_obj_id_0D                           = $0D ; 
con_obj_id_0E                           = $0E ; 
con_obj_id_0F                           = $0F ; 
con_obj_id_10                           = $10 ; 
con_obj_id_11                           = $11 ; 
con_obj_id_12                           = $12 ; 
con_obj_id_13                           = $13 ; 
con_obj_id_14                           = $14 ; 
con_obj_id_15                           = $15 ; 
con_obj_id_16                           = $16 ; 
con_obj_id_17                           = $17 ; 
con_obj_id_18                           = $18 ; 
con_obj_id_19                           = $19 ; 
con_obj_id_1A                           = $1A ; 
con_obj_id_1B                           = $1B ; 
con_obj_id_1C                           = $1C ; 
con_obj_id_1D                           = $1D ; 
con_obj_id_1E                           = $1E ; 
con_obj_id_1F                           = $1F ; 
con_obj_id_20                           = $20 ; 



; ram_obj_flags
; need comments 0x0032E9 0x0032D6 0x000EA6 0x000E93
con_obj_flag_00                         = $00 ; 
con_obj_flag_death                      = $01 ; death animation
con_obj_flag_facing_left                = $02 ; if not set, object is facing right
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
