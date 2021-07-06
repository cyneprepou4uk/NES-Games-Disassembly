; keep your global constant values inside this file

; MISC разное
con_prg_bank                            = $00 ; 



; ram_btn_hold                          = $F5
; ram_btn_press                         = $F7
; ram_obj_input                         = $050B
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_LR                             = con_btn_Left + con_btn_Right          ; 03
con_btns_UD                             = con_btn_Up + con_btn_Down             ; 0C
con_btns_AB                             = con_btn_A + con_btn_B                 ; C0
con_btns_SS                             = con_btn_Start + con_btn_Select        ; 30
con_btns__ABS                           = con_btn_A + con_btn_B + con_btn_Start ; D0



; ram_item_id                           = $0615
con_item_bucket                         = $00 ; 
con_item_strongbox                      = $01 ; 
con_item_box                            = $02 ; 
con_item_vial                           = $03 ; 
con_item_glove                          = $04 ; 
con_item_10t                            = $05 ; 
con_item_sign_00                        = $06 ; no carrot sigh to access bonus levels
con_item_sign_01                        = $07 ; 
con_item_sign_02                        = $08 ; 
con_item_sign_03                        = $09 ; 


; ram_0044                              = $0044
con_music_title                         = $01 ; title screen
con_music_soundtrack_1                  = $02 ; bricks stage soundtrack
con_music_final                         = $03 ; final cutscene
con_music_04                            = $04 ; 
con_music_soundtrack_2                  = $05 ; concrete stage soundtrack
con_music_06                            = $06 ; 
con_music_07                            = $07 ; 
con_music_stage_complete_1              = $08 ; pipes stage
con_music_menu                          = $09 ; 
con_music_soundtrack_3                  = $0A ; pipes stage soundtrack
con_music_0B                            = $0B ; 
con_music_0C                            = $0C ; 
con_music_0D                            = $0D ; 
con_music_0E                            = $0E ; 
con_sound_player_death                  = $0F ; 
con_sound_pick_up_item                  = $10 ; 
con_sound_push_item                     = $11 ; 
con_sound_enemy_death                   = $12 ; 
con_sound_13                            = $13 ; 
con_sound_14                            = $14 ; 
con_music_stage_complete_2              = $15 ; bricks and concrete stage
con_music_game_over                     = $16 ; 
con_sound_throw_glove                   = $17 ; 



