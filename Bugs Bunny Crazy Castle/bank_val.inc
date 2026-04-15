; keep your global constant values inside this file



; MISC
con_prg_bank                            = $00 ; 
con_se_offset                           = $18 ; sound engine offset for RAM addresses



; ram_btn_hold
; ram_btn_press
; ram_obj_btn
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



; handlers at 0x008010
con_script_logo_and_title               = $00 ; 
con_script_final_cutscene               = $01 ; 
con_script_load_stage                   = $02 ; 
con_script_stage_complete               = $03 ; 
con_script_messages                     = $04 ; 
con_script_game_over                    = $05 ; 
con_script_menu                         = $06 ; 
con_script_generate_password            = $07 ; 



; ram_ppu_update_flags
con_ppu_uptate_2001                     = $01 ; update 2001 register (enable NMI?)
con_ppu_02_useless                      = $02 ; bzk optimize, never used
con_ppu_black_screen                    = $04 ; all 32 black colors (0F)
con_ppu_copy_buffer                     = $08 ; ram_ppu_buffer
con_ppu_copy_attr_2                     = $10 ; ram_nmt_attr_buffer_2
con_ppu_copy_attr_1                     = $20 ; ram_nmt_attr_buffer_1
con_ppu_copy_palette                    = $40 ; ram_pal_buffer
; con_ppu_80                            = $80 ; unused



; ram_00F0_flag
con_00F0_00                             = $00 ; 
; con_00F0_01                           = $01 ; 
con_00F0_nmi                            = $02 ; cleared at the end of NMI
con_00F0_04                             = $04 ; something to do with sound engine
con_00F0_08_bsw_in_progress             = $08 ; prg bankswitch is in progress if set
; con_00F0_10                           = $10 ; 
; con_00F0_20                           = $20 ; 
con_00F0_40_useless                     = $40 ; bzk optimize, never set
con_00F0_se_not_updated                 = $80 ; if set, sound engine could not be updated during previous frame



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



; index for 0x00F816
con_F806_00                             = $00 ; 
con_F806_01                             = $01 ; 
; con_F806_02                           = $02 ; 
con_F806_03                             = $03 ; 
; con_F806_04                           = $04 ; 



; ram_se_0700_flags
con_0700_00                             = $00 ; 
; con_0700_01                           = $01 ; unused
; con_0700_02                           = $02 ; unused
; con_0700_04                           = $04 ; unused
; con_0700_08                           = $08 ; unused
; con_0700_10                           = $10 ; unused
con_0700_channel_disabled               = $20 ; if set, don't enable channel bit in 4015?
con_0700_update_channel                 = $40 ; if not set, skip writing to 4001x/4002x/4003x ?
con_0700_channel_enabled                = $80 ; if not set, skip writing to 4000x ?



; ram_0044_se_t03
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
