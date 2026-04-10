; keep your global constant values inside this file



; MISC
con_max_floor_09                        = $09 ; 



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
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03



; ram_music_1
; ram_music_2
con_music_00                            = $00 ; 
con_music_mountain_preview              = $01 ; when a bird is flying up through the whole mountain
con_music_background                    = $02 ; background stage music
con_music_logo                          = $04 ; logo music starting from the beginning, no loop
con_music_08                            = $08 ; logo music starting from the middle, yes loop
con_music_mountain_complete             = $10 ; when you grab the bird
con_music_pause                         = $20 ; set pause
con_music_unpause                       = $40 ; unset pause
con_music_off                           = $80 ; turn off current music


; ram_sfx_1
con_sfx_1_00                            = $00 ; 
con_sfx_1_plr_game_over                 = $01 ; 
con_sfx_1_block_placed_or_destroyed     = $02 ; 
con_sfx_1_04                            = $04 ; 

; ram_sfx_2
con_sfx_2_00                            = $00 ; 
con_sfx_2_kill_bird                     = $01 ; 
con_sfx_2_02                            = $02 ; 
con_sfx_2_04                            = $04 ; 
con_sfx_2_08                            = $08 ; 
con_sfx_2_collect_fruit                 = $10 ; 

; ram_sfx_3
con_sfx_3_00                            = $00 ; 
con_sfx_3_plr_deadh                     = $01 ; 
con_sfx_3_bear_jump                     = $02 ; 
con_sfx_3_plr_jump                      = $04 ; 
con_sfx_3_kill_seal_or_ice              = $08 ; hit seal or ice piece with hammer



; buffer modes
con_buf_00                              = $00 ; horisontally write ?? tiles
con_buf_40                              = $40 ; horisontally write a tile ?? times
con_buf_80                              = $80 ; vertically write ?? tiles
con_buf_C0                              = $C0 ; vertically write a tile ?? times




; ram_plr_handler
; handlers at 0x000D30
; need comments 0x000EE2 0x001244 0x001279 0x001395 0x00217F 0x0034B9
con_plr_sub_00                          = $00 ; 
con_plr_sub_on_ground                   = $01 ; idle/walking
con_plr_sub_fall_from_platform          = $02 ; when you walk off it
con_plr_sub_stop_after_walking          = $03 ; stop after walking
con_plr_sub_jump                        = $04 ; jump
con_plr_sub_attack                      = $05 ; swing with hammer
con_plr_sub_block_break_1               = $06 ; break block while jumping 1
con_plr_sub_death                       = $07 ; death
con_plr_sub_block_break_2               = $08 ; break block while jumping 2
con_plr_sub_09                          = $09 ; unused but refered



