; keep your global constant values inside this file

; MISC разное
con_prg_bank                            = $00 ; 



; ram_btn_hold
; ram_btn_press
; ram_obj_input
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
con_btns_SAB                            = con_btn_Start + con_btn_A + con_btn_B ; D0



; ram_0018
con_0018_01                             = $01 ; 
con_0018_02                             = $02 ; 
con_0018_04                             = $04 ; 
con_0018_08                             = $08 ; 
con_0018_10                             = $10 ; 
con_0018_20                             = $20 ; 
con_0018_40                             = $40 ; 
; con_0018_80                           = $80 ; unused



; ram_obj_state
con_obj_state_null                      = $00 ; doesn't exist
con_obj_state_01                        = $01 ; 
con_obj_state_02                        = $02 ; 
con_obj_state_04                        = $04 ; 
con_obj_state_08                        = $08 ; 
con_obj_state_10                        = $10 ; 
con_obj_state_20                        = $20 ; 
con_obj_state_40                        = $40 ; 
con_obj_state_exists                    = $80 ; 



; ram_item_state
con_item_state_null                     = $00 ; doesn't exist
con_item_state_01                       = $01 ; 
con_item_state_02                       = $02 ; 
con_item_state_04                       = $04 ; 
con_item_state_08                       = $08 ; 
con_item_state_10                       = $10 ; 
con_item_state_20                       = $20 ; 
con_item_state_40                       = $40 ; 
con_item_state_exists                   = $80 ; 



; ram_item_id
con_item_id_bucket                      = $00 ; 
con_item_id_safe                        = $01 ; 
con_item_id_box                         = $02 ; 
con_item_id_potion                      = $03 ; invulnerability
con_item_id_glove                       = $04 ; 
con_item_id_10t                         = $05 ; 
con_item_id_sign_00                     = $06 ; "no carrot" sign to access bonus level
con_item_id_sign_01                     = $07 ; "no carrot" sign to access bonus level
con_item_id_sign_02                     = $08 ; "no carrot" sign to access bonus level
con_item_id_sign_03                     = $09 ; "no carrot" sign to access bonus level


; ram_0044
; need comments at 0x009E10
con_music_title                         = $01 ; title screen
con_music_soundtrack_1                  = $02 ; bricks stage soundtrack
con_music_final                         = $03 ; final cutscene
; con_music_04                          = $04 ; unused, same as 15
con_music_soundtrack_2                  = $05 ; concrete stage soundtrack
; con_music_06                          = $06 ; unused, same as 15
con_music_07                            = $07 ; 
con_music_stage_complete_1              = $08 ; pipes stage
con_music_menu                          = $09 ; 
con_music_soundtrack_3                  = $0A ; pipes stage soundtrack
; con_music_0B                          = $0B ; unused, same as 15
; con_music_0C                          = $0C ; unused, same as 15
; con_music_0D                          = $0D ; unused, same as 15
; con_music_0E                          = $0E ; unused, same as 15
con_sound_player_death                  = $0F ; 
con_sound_pick_up_item                  = $10 ; 
con_sound_push_item                     = $11 ; 
con_sound_enemy_death                   = $12 ; 
; con_sound_13                          = $13 ; unused
con_sound_14                            = $14 ; 
con_music_stage_complete_2              = $15 ; bricks and concrete stage
con_music_game_over                     = $16 ; 
con_sound_throw_glove                   = $17 ; 



