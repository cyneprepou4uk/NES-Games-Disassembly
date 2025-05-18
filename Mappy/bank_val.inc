; keep your global constant values inside this file



; MISC
con_ofs_obj                             = $00 ; object offset, for easier searching



; ram_obj_1_data
; ram_obj_2_data
; ram_obj_3_data
con_obj_pos_X_fr                        = $00 ; fractional
con_obj_pos_X_lo                        = $01 ; 
con_obj_pos_Y_fr                        = $02 ; fractional
con_obj_pos_Y_lo                        = $03 ; 
con_obj_animation                       = $04 ; 
con_obj_type                            = $05 ; 
con_obj_direction                       = $06 ; 
con_obj_timer                           = $07 ; 
; only for ram_obj_1_data
con_obj_08                              = $08 ; 
con_obj_09                              = $09 ; 
con_obj_jump_pos                        = $0A ; 
con_obj_0B                              = $0B ; 
con_obj_0C                              = $0C ; 
con_obj_movement                        = $0D ; 
con_obj_AB                              = $0E ; 
con_obj_state                           = $0F ; 



; ram_obj_1_state
; need comments 0x001A45 0x001A2F 0x002FB0 0x002E94
; normal stages
con_state_00                            = $00 ; no state (object is visible, but freezes and can't do anything)
con_state_02                            = $02 ; standing/moving on platform
con_state_04                            = $04 ; jump off platform/hit wall after 0E
con_state_06                            = $06 ; falling down after 0C
con_state_08                            = $08 ; enemy cat touched player
con_state_0A                            = $0A ; jumping off spring
con_state_0C                            = $0C ; flying up after 0A
con_state_0E                            = $0E ; move sideways after 0A
con_state_10                            = $10 ; 
con_state_12                            = $12 ; 
con_state_14                            = $14 ; 
con_state_16                            = $16 ; caught up in sound wave
con_state_18                            = $18 ; ? flying score points after 16
con_state_1A                            = $1A ; ? waiting for respawn after 18
con_state_1C                            = $1C ; 
con_state_1E                            = $1E ; 
con_state_20                            = $20 ; 
con_state_22                            = $22 ; 
con_state_24                            = $24 ; 
con_state_26                            = $26 ; 
con_state_28                            = $28 ; 
con_state_2A                            = $2A ; right before 2C
con_state_2C                            = $2C ; player death animation
; bonus stages
con_bonus_state_02                      = $02 ; falling down after 08 0A 0C
con_bonus_state_04                      = $04 ; end bonus stage (touch blue balloon/fall through floor)
con_bonus_state_06                      = $06 ; jumping off spring
con_bonus_state_08                      = $08 ; flying up after 06
con_bonus_state_0A                      = $0A ; move sideways after 08
con_bonus_state_0C                      = $0C ; hit wall after 0A
con_bonus_state_0E                      = $0E ; blue balloon with fat cat inside
; con_bonus_state_10                    = $10 ; unused
con_bonus_state_12                      = $12 ; fat cat released from balloon



; ram_obj_1_animation
; ram_obj_2_animation
; need comments 0x000366
con_anim_id_00                          = $00 ; no animation (object doesn't esixt?)
con_anim_id_02                          = $02 ; 
con_anim_id_jump                        = $04 ; jumping
con_anim_id_fall                        = $06 ; falling down
con_anim_id_sound_wave                  = $08 ; sound wave
con_anim_id_bell                        = $0A ; bell
con_anim_id_stunned                     = $0C ; cat was stunned by opened door
con_anim_id_0E                          = $0E ; 
con_anim_id_10                          = $10 ; 
con_anim_id_fat_cat_hide                = $12 ; fat cat is hiding inside item
con_anim_id_fat_cat_1000                = $14 ; fat cat is showing 1000 points sign
con_anim_id_16                          = $16 ; 
con_anim_id_18                          = $18 ; 
; con_anim_id_1A                        = $1A ; unused
con_anim_id_1C                          = $1C ; 
con_anim_id_1E                          = $1E ; 
con_anim_id_20                          = $20 ; 
con_anim_id_22                          = $22 ; 
con_anim_id_24                          = $24 ; 



; for 0x001546
con_D536_00                             = $00 ; 
con_D536_02                             = $02 ; 
con_D536_04                             = $04 ; 
con_D536_06                             = $06 ; 
con_D536_08                             = $08 ; 
con_D536_0A                             = $0A ; 
con_D536_0C                             = $0C ; 



; for 0x001650
con_D640_00                             = $00 ; 
; con_D640_02                           = $02 ; unused
con_D640_04                             = $04 ; 
; con_D640_06                           = $06 ; unused
con_D640_08                             = $08 ; 
con_D640_0A                             = $0A ; 
con_D640_0C                             = $0C ; 
con_D640_0E                             = $0E ; 
con_D640_10                             = $10 ; 
con_D640_12                             = $12 ; 
con_D640_14                             = $14 ; 
con_D640_16                             = $16 ; 



; sound engine control bytes 0x0036BC
con_se_cb_E8                            = $E8 ; 
con_se_cb_E9                            = $E9 ; 
con_se_cb_EA                            = $EA ; 
; con_se_cb_EB                          = $EB ; unused
; con_se_cb_EC                          = $EC ; unused
; con_se_cb_ED                          = $ED ; unused
con_se_cb_EE                            = $EE ; 
con_se_cb_EF                            = $EF ; 
con_se_cb_F0                            = $F0 ; 
con_se_cb_F1                            = $F1 ; 
con_se_cb_F2                            = $F2 ; 
con_se_cb_F3                            = $F3 ; 
con_se_cb_F4                            = $F4 ; 
con_se_cb_F5                            = $F5 ; 
con_se_cb_F6                            = $F6 ; 
con_se_cb_F7                            = $F7 ; 
con_se_cb_F8                            = $F8 ; 
con_se_cb_F9                            = $F9 ; 



