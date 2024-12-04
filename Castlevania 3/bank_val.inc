; keep your global constant values inside this file



; todo
    ; найти buffer mode 0x03ED2D
    ; переименовать музыку и звуки
    ; разобраться какой адрес для схр банков за что отвечает, и переименовать JSR на запись
    ; найти индексы объектов, в частности 0x013A4E 0x013A56
        ; видимо индекс не отвечает за поведение, а в основном за графику
        ; возможно есть другой адрес
    ; пометить все X для 0x03E8AA



; MISC
con_bzk_hack                            = $00 ; set to 01 before hacking
con_prg_bank                            = $00 ; 
con__chr_bank                           = $00 ; todo identify as bg/chr instead
con_chr_bank_bg                         = $00 ; 
con_chr_bank_spr                        = $00 ; 



; ram_btn_press
; ram_btn_hold
; ram_copy_btn_press
; ram_copy_btn_hold
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_UP                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C



; todo
; ram_partner
; ram_player
con_player_Trevor                       = $00 ; con_player_Trevor
con_player_Sypha                        = $01 ; con_player_Sypha
con_player_Grant                        = $02 ; con_player_Grant
con_player_Alucard                      = $03 ; con_player_Alucard
con_player_off                          = $FF ; con_player_off



; ram_subweapon_id
; handler at 0x03AEF0
; need comments 0x02E260
con_subweapon_none                      = $00 ; 
con_subweapon_axe                       = $01 ; Trevor only
con_subweapon_cross                     = $02 ; 
con_subweapon_knife                     = $03 ; Trevor only
con_subweapon_holy_water                = $04 ; 
con_subweapon_fireball                  = $05 ; 
con_subweapon_freeze                    = $06 ; 
con_subweapon_blue_balls                = $07 ; 
con_subweapon_g_knife                   = $08 ; Grant only
con_subweapon_g_axe                     = $09 ; Grant only
; con_subweapon_0A                      = $0A ; 
con_subweapon_stopwatch                 = $0B ; 



; todo
; ram_ppu_buffer
; each mode is followed by 2006 lo, then 2006 hi
; bzk optimize, modes 01 and 02 probably have to do something
; with Japanese leftovers. delete relevant codes
con_buf_mode_00                         = $00 ; buffer is closed and can't be read further
con_buf_mode_01                         = $01 ; = 02. not FF = write it, FF = read following byte and write FF if >= 0B, otherwise quit (2006 +32)
con_buf_mode_02                         = $02 ; = 01. not FF = write it, FF = read following byte and write FF if >= 0B, otherwise quit (2006 +32)
con_buf_mode_03                         = $03 ; 1st byte = counter, then a list of tiles (2006 +1)
con_buf_mode_04                         = $04 ; write 4 tiles 4 times (4x4). before each list of 4 tiles there is a ppu address (2006 +1)
con_buf_mode_05                         = $05 ; write 4 tiles 2 tiles (4x2). before each list of 4 tiles there is a ppu address (2006 +1)
con_buf_mode_06                         = $06 ; 32 tiles (2006 +1)
con_buf_mode_07                         = $07 ; 32 tiles, then ppu address, then 8 more tiles (2006 +1)
; con_buf_mode_08                       = $08 ; unused
; con_buf_mode_09                       = $09 ; unused
con_buf_mode_0A                         = $0A ; 1st byte = counter, 2nd byte = fill tile (2006 +1)



; ram_plr_state
; handlers at 0x03A5BE 0x03938B 0x039C0C 0x039C4B
con_plr_state_00                        = $00 ; 
con_plr_state_idle_on_ground            = $02 ; idle while standing on the ground
con_plr_state_move_on_ground            = $04 ; moving on the ground
con_plr_state_06                        = $06 ; 
con_plr_state_jump                      = $08 ; jumping
con_plr_state_duck                      = $0A ; ducking
con_plr_state_fall                      = $0C ; falling
con_plr_state_move_towards_stairs       = $0E ; moving towards the stairs (aiming to the stairs)
con_plr_state_attach_to_stairs          = $10 ; attaching player to the stairs
con_plr_state_idle_on_stairs            = $12 ; idle while standing on the stairs
con_plr_state_move_on_stairs            = $14 ; moving up/down while standing on the stairs
con_plr_state_16                        = $16 ; 
con_plr_state_normal_atk_on_ground      = $18 ; normal attack whine standing on the ground
con_plr_state_normal_atk_jump           = $1A ; normal attack while jumping
con_plr_state_normal_atk_duck           = $1C ; normal attack while ducking
con_plr_state_normal_atk_on_stairs      = $1E ; normal attack on the stairs
con_plr_state_subw_atk_on_ground        = $20 ; subweapon attack on the ground
con_plr_state_subw_atk_jump             = $22 ; subweapon attack while jumping
con_plr_state_subw_atk_on_stairs        = $24 ; subweapon attack on the stairs
con_plr_state_knockback                 = $26 ; knockback after getting hit
con_plr_state_28                        = $28 ; 
con_plr_state_2A                        = $2A ; 
con_plr_state_2C                        = $2C ; 
con_plr_state_death                     = $2E ; death
con_plr_state_30                        = $30 ; Grant/Alucard only (Alucard = bat form?)
con_plr_state_32                        = $32 ; Grant/Alucard only
con_plr_state_34                        = $34 ; Grant/Alucard only (Alucard = bat form?)
con_plr_state_36                        = $36 ; Grant/Alucard only
con_plr_state_38                        = $38 ; Grant/Alucard only (Alucard = bat form?)
con_plr_state_3A                        = $3A ; Grant/Alucard only (Alucard = bat form?)
con_plr_state_3C                        = $3C ; Grant/Alucard only (Alucard = transform from bat to human?)
con_plr_state_3E                        = $3E ; Grant/Alucard only
con_plr_state_40                        = $40 ; Grant/Alucard only
con_plr_state_42                        = $42 ; Grant/Alucard only
con_plr_state_44                        = $44 ; Grant only
con_plr_state_46                        = $46 ; Grant only
con_plr_state_48                        = $48 ; Grant only

con_plr_state_80                        = $80 ; some kind of flag?

; player state during path selection screen
; handler at 0x002A5C
con_path_sel_00                         = $00 ; 
con_path_sel_auto_walk_out_of_screen    = $02 ; auto walking out of the screen (when first appearing)
con_path_sel_idle_on_ground             = $04 ; idle while standing on the ground
con_path_sel_move_on_ground             = $06 ; moving while standing on the ground
con_path_sel_move_towards_stairs        = $08 ; moving towards the stairs (aiming to the stairs)
con_path_sel_attach_to_stairs           = $0A ; attaching player to the stairs
con_path_sel_idle_on_stairs             = $0C ; idle while standing on the stairs
con_path_sel_move_on_stairs             = $0E ; moving up/down while standing on the stairs
con_path_sel_auto_walk_to_exit          = $10 ; auto walking to the exit (when close to the exit)
con_path_sel_off_screen                 = $12 ; final state when player is off screen (after 10)



; ram_obj_type
; ram_plr_type
con_obj_type_00                         = $00 ; Trevor
con_obj_type_02                         = $02 ; Sypha
con_obj_type_04                         = $04 ; Grant
con_obj_type_06                         = $06 ; Alucard
con_obj_type_08                         = $08 ; 
con_obj_type_0A                         = $0A ; 
con_obj_type_0C                         = $0C ; 
con_obj_type_0E                         = $0E ; 
con_obj_type_10                         = $10 ; 
con_obj_type_12                         = $12 ; 
con_obj_type_14                         = $14 ; 
con_obj_type_16                         = $16 ; 
con_obj_type_18                         = $18 ; 
con_obj_type_1A                         = $1A ; 
con_obj_type_1C                         = $1C ; 



; ram_obj_flags
; ram_plr_flags
con_obj_flag_00                         = $00 ; 
con_obj_flag_01                         = $01 ; 
con_obj_flag_02                         = $02 ; 
con_obj_flag_04                         = $04 ; 
con_obj_flag_08                         = $08 ; 
con_obj_flag_10                         = $10 ; 
con_obj_flag_20                         = $20 ; 
con_obj_flag_40                         = $40 ; 
con_obj_flag_not_visible                = $80 ; not visible if set



; ram_006D_irq_handler
; ram_003F_copy_irq_handler
; handlers at 0x03E137
con_irq_00                              = $00 ; 
con_irq_01                              = $01 ; 
con_irq_02                              = $02 ; 
con_irq_03                              = $03 ; 
con_irq_04                              = $04 ; 
con_irq_05                              = $05 ; 
con_irq_06                              = $06 ; 
con_irq_07                              = $07 ; 
con_irq_08                              = $08 ; 
con_irq_09                              = $09 ; 
con_irq_0A                              = $0A ; 
con_irq_0B                              = $0B ; 
con_irq_0C                              = $0C ; 
con_irq_0D                              = $0D ; 
con_irq_0E                              = $0E ; 
con_irq_0F                              = $0F ; 
con_irq_10                              = $10 ; 
con_irq_11                              = $11 ; 
con_irq_12                              = $12 ; 
con_irq_13                              = $13 ; 
con_irq_14                              = $14 ; 
con_irq_15                              = $15 ; 
con_irq_16                              = $16 ; 
con_irq_17                              = $17 ; 
con_irq_18                              = $18 ; 
con_irq_19                              = $19 ; 
con_irq_1A                              = $1A ; 
con_irq_1B                              = $1B ; 
con_irq_1C                              = $1C ; 
con_irq_1D                              = $1D ; 
con_irq_1E                              = $1E ; 
con_irq_1F                              = $1F ; 
con_irq_20                              = $20 ; 
con_irq_21                              = $21 ; 
con_irq_22                              = $22 ; was not logged, but possible
con_irq_23                              = $23 ; 
con_irq_24                              = $24 ; 
con_irq_25                              = $25 ; 
con_irq_26                              = $26 ; 
con_irq_27                              = $27 ; 
con_irq_28                              = $28 ; 
con_irq_29                              = $29 ; 
con_irq_2A                              = $2A ; 
con_irq_2B                              = $2B ; 
con_irq_2C                              = $2C ; 
con_irq_2D                              = $2D ; 

con_irq_80                              = $80 ; 



; ram_main_script
; need comments 0x03E38D
con_0018_title_screen                   = $00 ; first cutscene and title screen
; con_0018_01                           = $01 ; unused
con_0018_enter_your_name                = $02 ; preparations for 0A handler
con_0018_03                             = $03 ; 
con_0018_gameplay                       = $04 ; 
con_0018_death                          = $05 ; 
con_0018_game_over                      = $06 ; 
; con_0018_07                           = $07 ; unused, index not found, manual activation only, see TCRF
con_0018_08                             = $08 ; 
con_0018_prayer                         = $09 ; 
con_0018_name_password                  = $0A ; (set via 02 handler) enter your name screen, and password if selected in main menu
con_0018_0B                             = $0B ; 
con_0018_0C                             = $0C ; 
con_0018_0D                             = $0D ; 
con_0018_0E                             = $0E ; 
con_0018_0F                             = $0F ; 



; ram_002A_script
; need comments 0x03F39C
con_002A_00                             = $00 ; 
con_002A_01                             = $01 ; 
con_002A_02                             = $02 ; 
con_002A_03                             = $03 ; 
con_002A_04                             = $04 ; 
con_002A_05                             = $05 ; 
con_002A_06                             = $06 ; 
con_002A_07                             = $07 ; 
con_002A_08                             = $08 ; 
con_002A_09                             = $09 ; 
con_002A_0A                             = $0A ; 
con_002A_swap_players_H                 = $0B ; during horisontal blk
con_002A_swap_players_V                 = $0C ; during vertical blk
; con_002A_0D                           = $0D ; unused
; con_002A_0E                           = $0E ; unused
con_002A_0F                             = $0F ; 
con_002A_10                             = $10 ; 
con_002A_11                             = $11 ; 
; con_002A_12                           = $12 ; unused
con_002A_13                             = $13 ; 
con_002A_14                             = $14 ; 
con_002A_15                             = $15 ; 
con_002A_16                             = $16 ; 
con_002A_17                             = $17 ; 
con_002A_18                             = $18 ; 
con_002A_19                             = $19 ; 
con_002A_1A                             = $1A ; 
con_002A_1B                             = $1B ; 
con_002A_1C                             = $1C ; 
con_002A_1D                             = $1D ; 
con_002A_1E                             = $1E ; 
con_002A_1F                             = $1F ; 




; ram_spawner_script
; handlers at 0x028537
; need comments 0x024521
con_spawner_00                          = $00 ; 
con_spawner_01                          = $01 ; 
con_spawner_02                          = $02 ; 
con_spawner_03                          = $03 ; 
con_spawner_04                          = $04 ; 
con_spawner_05                          = $05 ; 
con_spawner_06                          = $06 ; 
con_spawner_07                          = $07 ; 
con_spawner_08                          = $08 ; 
con_spawner_09                          = $09 ; 
con_spawner_0A                          = $0A ; 
con_spawner_0B                          = $0B ; 
con_spawner_0C                          = $0C ; 
con_spawner_0D                          = $0D ; 
con_spawner_0E                          = $0E ; 
con_spawner_0F                          = $0F ; 
con_spawner_10                          = $10 ; 
con_spawner_11                          = $11 ; 
con_spawner_12                          = $12 ; 
con_spawner_13                          = $13 ; 
con_spawner_14                          = $14 ; 
con_spawner_15                          = $15 ; 
con_spawner_16                          = $16 ; 
con_spawner_17                          = $17 ; 
con_spawner_18                          = $18 ; 
con_spawner_19                          = $19 ; 
con_spawner_1A                          = $1A ; 
con_spawner_1B                          = $1B ; 
con_spawner_1C                          = $1C ; 
con_spawner_1D                          = $1D ; 
con_spawner_1E                          = $1E ; 
con_spawner_1F                          = $1F ; 
con_spawner_20                          = $20 ; 
con_spawner_21                          = $21 ; 
; con_spawner_22                        = $22 ; index exists but never used
con_spawner_23                          = $23 ; 
con_spawner_24                          = $24 ; 
con_spawner_25                          = $25 ; 
con_spawner_26                          = $26 ; 
con_spawner_27                          = $27 ; 
con_spawner_28                          = $28 ; 
con_spawner_29                          = $29 ; 
con_spawner_2A                          = $2A ; 
con_spawner_2B                          = $2B ; 
con_spawner_2C                          = $2C ; 
con_spawner_2D                          = $2D ; 
con_spawner_2E                          = $2E ; 
; con_spawner_2F                        = $2F ; unused
; con_spawner_30                        = $30 ; unused
; con_spawner_31                        = $31 ; unused
con_spawner_32                          = $32 ; 
; con_spawner_33                        = $33 ; unused
; con_spawner_34                        = $34 ; unused
; con_spawner_35                        = $35 ; unused
con_spawner_36                          = $36 ; 
; con_spawner_37                        = $37 ; unused
; con_spawner_38                        = $38 ; unused
con_spawner_39                          = $39 ; 
con_spawner_3A                          = $3A ; 
con_spawner_3B                          = $3B ; 
con_spawner_swamp_frog                  = $3C ; 
con_spawner_3D                          = $3D ; 
con_spawner_3E                          = $3E ; 
con_spawner_3F                          = $3F ; 
con_spawner_40                          = $40 ; 
con_spawner_41                          = $41 ; 
con_spawner_42                          = $42 ; 
con_spawner_43                          = $43 ; 
con_spawner_44                          = $44 ; 
con_spawner_45                          = $45 ; 
con_spawner_46                          = $46 ; 
con_spawner_47                          = $47 ; 
con_spawner_48                          = $48 ; 
con_spawner_49                          = $49 ; 
con_spawner_4A                          = $4A ; 
con_spawner_4B                          = $4B ; 
con_spawner_4C                          = $4C ; 
con_spawner_4D                          = $4D ; 
con_spawner_4E                          = $4E ; 
con_spawner_4F                          = $4F ; 
con_spawner_50                          = $50 ; 
con_spawner_51                          = $51 ; 
con_spawner_52                          = $52 ; 



; index for 0x02B626
con_B616_update_bg_spr_palette          = $00 ; update background and sprite palette
con_B616_01                             = $01 ; 
con_B616_02                             = $02 ; 
con_B616_03                             = $03 ; 
con_B616_04                             = $04 ; 
con_B616_05                             = $05 ; 
con_B616_set_chr_banks                  = $06 ; 
con_B616_increase_brightness            = $07 ; 
con_B616_decrease_brightness            = $08 ; 



; index for 0x008287
con_8277_00                             = $00 ; 
con_8277_01                             = $01 ; 
con_8277_02                             = $02 ; 
con_8277_delete_object                  = $03 ; 
con_8277_04                             = $04 ; 
con_8277_05                             = $05 ; 
con_8277_06                             = $06 ; 
con_8277_07                             = $07 ; 
con_8277_08                             = $08 ; 
con_8277_09                             = $09 ; 
con_8277_0A                             = $0A ; 
con_8277_0B                             = $0B ; 
con_8277_0C                             = $0C ; 
con_8277_0D                             = $0D ; 
con_8277_0E                             = $0E ; 
con_8277_0F                             = $0F ; 
con_8277_10                             = $10 ; 
con_8277_11                             = $11 ; 
con_8277_12                             = $12 ; 
con_8277_13                             = $13 ; 
con_8277_14                             = $14 ; 
con_8277_15                             = $15 ; 
con_8277_play_sound                     = $16 ; 



; index for 0x004A36
con_8A26_Grant_intro_1                  = $00 ; 
con_8A26_Grant_intro_2                  = $02 ; 
con_8A26_what_will_you_do               = $04 ; 
con_8A26_Grant_take                     = $06 ; 
con_8A26_Grant_leave                    = $08 ; 
con_8A26_swap_partner                   = $0A ; 
con_8A26_Sypha_intro_1                  = $0C ; 
con_8A26_Sypha_intro_2                  = $0E ; 
con_8A26_Sypha_take                     = $10 ; 
con_8A26_Sypha_leave                    = $12 ; 
con_8A26_Alucard_intro_1                = $14 ; 
con_8A26_Alucard_intro_2                = $16 ; 
con_8A26_Alucard_take                   = $18 ; 
con_8A26_Alucard_leave                  = $1A ; 



; index for 0x024681
con_8671_00                             = $00 ; 
con_8671_01                             = $01 ; 
con_8671_02                             = $02 ; 
con_8671_03                             = $03 ; 
con_8671_04                             = $04 ; 
con_8671_05                             = $05 ; 
con_8671_06                             = $06 ; 
con_8671_07                             = $07 ; 
con_8671_08                             = $08 ; 
con_8671_09                             = $09 ; 
; con_8671_0A                           = $0A ; unused
con_8671_0B                             = $0B ; 
con_8671_0C                             = $0C ; 
con_8671_0D                             = $0D ; 
con_8671_0E                             = $0E ; 
con_8671_0F                             = $0F ; 
; con_8671_10                           = $10 ; unused
con_8671_11                             = $11 ; 
con_8671_12                             = $12 ; 
; con_8671_13                           = $13 ; unused
con_8671_14                             = $14 ; 
con_8671_15                             = $15 ; 
con_8671_16                             = $16 ; 
con_8671_17                             = $17 ; 
con_8671_18                             = $18 ; 
con_8671_19                             = $19 ; 
con_8671_1A                             = $1A ; 
; con_8671_1B                           = $1B ; unused
con_8671_1C                             = $1C ; 
con_8671_1D                             = $1D ; 
con_8671_1E                             = $1E ; 
con_8671_1F                             = $1F ; 
con_8671_20                             = $20 ; 
con_8671_21                             = $21 ; 
con_8671_22                             = $22 ; 
con_8671_23                             = $23 ; 
con_8671_24                             = $24 ; 
con_8671_25                             = $25 ; 
con_8671_26                             = $26 ; 
con_8671_27                             = $27 ; 
con_8671_28                             = $28 ; 
con_8671_clear_object_data              = $29 ; 
con_8671_2A                             = $2A ; 
con_8671_2B                             = $2B ; 
con_8671_2C                             = $2C ; 
con_8671_2D                             = $2D ; 
con_8671_2E                             = $2E ; 
con_8671_2F                             = $2F ; 
con_8671_30                             = $30 ; 
con_8671_31                             = $31 ; 
con_8671_32                             = $32 ; 
con_8671_move_object                    = $33 ; 
con_8671_34                             = $34 ; 
con_8671_35                             = $35 ; 
con_8671_36                             = $36 ; 
; con_8671_37                           = $37 ; unused
con_8671_38                             = $38 ; 
con_8671_39                             = $39 ; 
con_8671_play_sound                     = $3A ; 
con_8671_3B                             = $3B ; 
con_8671_3C                             = $3C ; 
con_8671_3D                             = $3D ; 
con_8671_3E                             = $3E ; 
con_8671_3F                             = $3F ; 
con_8671_40                             = $40 ; 
con_8671_41                             = $41 ; 
con_8671_42                             = $42 ; 
con_8671_43                             = $43 ; 
con_8671_44                             = $44 ; 
; con_8671_45                           = $45 ; unused
con_8671_46                             = $46 ; 
con_8671_47                             = $47 ; 
con_8671_48                             = $48 ; 
con_8671_increase_speed_Y               = $49 ; 
con_8671_4A                             = $4A ; 



; index for 0x0018F4
con_98E4_opening                        = $00 ; opening
; con_98E4_01                           = $01 ; unused
con_98E4_konami                         = $02 ; konami
con_98E4_game_over                      = $03 ; game over
con_98E4_3F00_0000                      = $04 ; pointer to 3F00 and 0000
con_98E4_05_bg_spr_pal                  = $05 ; background and sprite palette
; con_98E4_06                           = $06 ; unused
; con_98E4_07                           = $07 ; unused
; con_98E4_08                           = $08 ; unused
con_98E4_09_spr_pal                     = $09 ; sprite palette
con_98E4_Trevor_spr_pal                 = $0A ; trevor sprite palette
con_98E4_Sypha_spr_pal                  = $0B ; sypha sprite palette
con_98E4_Grant_spr_pal                  = $0C ; grant sprite palette
con_98E4_Alucard_spr_pal                = $0D ; alucard sprite palette
con_98E4_hud                            = $0E ; HUD
con_98E4_0F                             = $0F ; 
con_98E4_10                             = $10 ; 
con_98E4_11                             = $11 ; 
con_98E4_12                             = $12 ; 
; con_98E4_13                           = $13 ; unused
con_98E4_14_bg_pal                      = $14 ; background palette
con_98E4_15_bg_pal                      = $15 ; background palette
con_98E4_16_bg_pal                      = $16 ; background palette
con_98E4_17                             = $17 ; 
con_98E4_18_bg_pal                      = $18 ; background palette
con_98E4_19_bg_pal                      = $19 ; background palette
con_98E4_1A_bg_pal                      = $1A ; background palette
con_98E4_1B_bg_pal                      = $1B ; background palette
con_98E4_1C_bg_pal                      = $1C ; background palette
con_98E4_1D_bg_pal                      = $1D ; background palette
con_98E4_1E_bg_spr_pal                  = $1E ; background and sprite palette
con_98E4_1F_bg_spr_pal                  = $1F ; background and sprite palette
con_98E4_20_bg_pal                      = $20 ; background palette
; con_98E4_21                           = $21 ; unused
con_98E4_not_complete_try_again         = $22 ; 
con_98E4_23                             = $23 ; 
; con_98E4_24                           = $24 ; unused
; con_98E4_25                           = $25 ; unused
con_98E4_26_password                    = $26 ; password
con_98E4_continue                       = $27 ; continue
con_98E4_28_password                    = $28 ; password
con_98E4_custom_palette                 = $29 ; ram_07A0
con_98E4_2A_bg_pal                      = $2A ; background palette
con_98E4_2B_spr_pal                     = $2B ; sprite palette (in pair with 2F)
con_98E4_2C_spr_pal                     = $2C ; sprite palette (in pair with 30)
con_98E4_2D_spr_pal                     = $2D ; sprite palette (in pair with 31)
con_98E4_2E_bg_pal                      = $2E ; background palette
con_98E4_2F_spr_pal                     = $2F ; sprite palette (in pair with 2B)
con_98E4_30_spr_pal                     = $30 ; sprite palette (in pair with 2C)
con_98E4_31_spr_pal                     = $31 ; sprite palette (in pair with 2D)
con_98E4_32_credits                     = $32 ; credits vampite
con_98E4_33_credits                     = $33 ; credits acrobat
con_98E4_34_credits                     = $34 ; credits alucard
con_98E4_35_credits                     = $35 ; credits produced by
con_98E4_36_credits                     = $36 ; credits and starring
con_98E4_37_credits                     = $37 ; credits programmer character
con_98E4_38_credits                     = $38 ; credits sound
con_98E4_39                             = $39 ; final cutcene text
con_98E4_3A                             = $3A ; final cutcene text
con_98E4_3B                             = $3B ; final cutcene text
con_98E4_3C                             = $3C ; final cutcene text
con_98E4_3D                             = $3D ; final cutcene text
con_98E4_3E                             = $3E ; final cutcene text
con_98E4_3F                             = $3F ; final cutcene text
con_98E4_40                             = $40 ; final cutcene text
con_98E4_41                             = $41 ; final cutcene text
con_98E4_42                             = $42 ; final cutcene text
con_98E4_43                             = $43 ; final cutcene text
con_98E4_44                             = $44 ; final cutcene text
con_98E4_45                             = $45 ; final cutcene text
con_98E4_46                             = $46 ; final cutcene text
con_98E4_47                             = $47 ; 
con_98E4_48                             = $48 ; 
con_98E4_49                             = $49 ; 
con_98E4_4A_bg_pal                      = $4A ; background palette
con_98E4_4B_bg_pal                      = $4B ; background palette
con_98E4_4C_bg_pal                      = $4C ; background palette
con_98E4_4D                             = $4D ; final cutcene text
; con_98E4_4E                           = $4E ; unused
con_98E4_4F                             = $4F ; final cutcene text
con_98E4_50                             = $50 ; final cutcene text
con_98E4_51                             = $51 ; final cutcene text
con_98E4_52                             = $52 ; final cutcene text
con_98E4_53                             = $53 ; final cutcene text
con_98E4_54                             = $54 ; final cutcene text (empty lines)
con_98E4_55                             = $55 ; final cutcene text
con_98E4_56                             = $56 ; final cutcene text
con_98E4_57                             = $57 ; final cutcene text
con_98E4_58                             = $58 ; final cutcene text
con_98E4_59                             = $59 ; final cutcene text
con_98E4_5A                             = $5A ; final cutcene text
con_98E4_5B_credits                     = $5B ; credits thank you very much for playing
con_98E4_5C_credits                     = $5C ; credits presented by
con_98E4_5D_bg_pal                      = $5D ; background palette
con_98E4_5E_bg_pal                      = $5E ; background palette
con_98E4_5F_bg_pal                      = $5F ; background palette
con_98E4_60                             = $60 ; final cutcene text
con_98E4_61                             = $61 ; final cutcene text
con_98E4_62_bg_pal                      = $62 ; background palette
; con_98E4_63                           = $63 ; unused
; con_98E4_64                           = $64 ; unused
con_98E4_65_credits                     = $65 ; credits planner director
con_98E4_66_credits                     = $66 ; credits special thanks
con_98E4_67                             = $67 ; 



; index for 0x000789 (9 colors for background)
con_8779_00                             = $00 ; 
con_8779_01                             = $01 ; 
con_8779_02                             = $02 ; 
con_8779_03                             = $03 ; 
con_8779_04                             = $04 ; 
con_8779_05                             = $05 ; 
con_8779_06                             = $06 ; 
con_8779_07                             = $07 ; 
con_8779_08                             = $08 ; 
con_8779_09                             = $09 ; 
con_8779_0A                             = $0A ; 
con_8779_0B                             = $0B ; 
con_8779_0C                             = $0C ; 
con_8779_0D                             = $0D ; 
con_8779_0E                             = $0E ; 
con_8779_0F                             = $0F ; 
con_8779_10                             = $10 ; 
con_8779_11                             = $11 ; 
con_8779_12                             = $12 ; 
con_8779_13                             = $13 ; 
con_8779_14                             = $14 ; 
; con_8779_15                           = $15 ; unused
con_8779_16                             = $16 ; 
con_8779_17                             = $17 ; 
con_8779_18                             = $18 ; 
con_8779_19                             = $19 ; 
con_8779_1A                             = $1A ; 
con_8779_1B                             = $1B ; 
con_8779_1C                             = $1C ; 
con_8779_1D                             = $1D ; 
con_8779_1E                             = $1E ; 
con_8779_1F                             = $1F ; 
con_8779_20                             = $20 ; 
con_8779_21                             = $21 ; 
con_8779_22                             = $22 ; 
con_8779_23                             = $23 ; 
con_8779_24                             = $24 ; 
con_8779_25                             = $25 ; 
con_8779_26                             = $26 ; 
con_8779_27                             = $27 ; 
con_8779_28                             = $28 ; 
con_8779_29                             = $29 ; 
con_8779_2A                             = $2A ; 
con_8779_2B                             = $2B ; 



; index for 0x0009DE (3 colors for sprites)
con_89CE_00                             = $00 ; 
con_89CE_01                             = $01 ; 
con_89CE_02                             = $02 ; 
; con_89CE_03                           = $03 ; unused
con_89CE_04                             = $04 ; 
con_89CE_05                             = $05 ; 
con_89CE_06                             = $06 ; 
con_89CE_07                             = $07 ; 
con_89CE_08                             = $08 ; 
con_89CE_09                             = $09 ; 
con_89CE_0A                             = $0A ; 
con_89CE_0B                             = $0B ; 
con_89CE_0C                             = $0C ; 
con_89CE_0D                             = $0D ; 
con_89CE_0E                             = $0E ; 
con_89CE_0F                             = $0F ; 
con_89CE_10                             = $10 ; 
con_89CE_11                             = $11 ; 
; con_89CE_12                           = $12 ; unused
con_89CE_13                             = $13 ; 
; con_89CE_14                           = $14 ; unused
con_89CE_15                             = $15 ; 
con_89CE_16                             = $16 ; 
con_89CE_17                             = $17 ; 
; con_89CE_18                           = $18 ; unused
con_89CE_19                             = $19 ; 



; index for 0x00A05F
con_A04F_00                             = $00 ; 
con_A04F_01                             = $01 ; 
con_A04F_02                             = $02 ; 
con_A04F_03                             = $03 ; 
con_A04F_04                             = $04 ; 
con_A04F_05                             = $05 ; 
con_A04F_06                             = $06 ; 
con_A04F_07                             = $07 ; 
con_A04F_08                             = $08 ; 
con_A04F_09                             = $09 ; 
con_A04F_0A                             = $0A ; 
con_A04F_0B                             = $0B ; 
con_A04F_0C                             = $0C ; 
con_A04F_0D                             = $0D ; 
; con_A04F_0E                           = $0E ; unused
; con_A04F_0F                           = $0F ; unused
con_A04F_10                             = $10 ; 
con_A04F_11                             = $11 ; 



; index for 0x03EC87 (static screens)
con_EC77_clear                          = $00 ; clear 2000-2BFF
con_EC77_title                          = $02 ; 
; con_EC77_04                           = $04 ; unused
; con_EC77_06                           = $06 ; unused
; con_EC77_08                           = $08 ; unused
; con_EC77_0A                           = $0A ; unused
con_EC77_0C                             = $0C ; 
con_EC77_0E                             = $0E ; 
con_EC77_10                             = $10 ; 
con_EC77_12                             = $12 ; 
con_EC77_14                             = $14 ; 
con_EC77_16                             = $16 ; 
con_EC77_enter_your_name                = $18 ; 
con_EC77_password                       = $1A ; 
con_EC77_1C                             = $1C ; 
con_EC77_1E                             = $1E ; 
con_EC77_20                             = $20 ; 
con_EC77_credits_logo                   = $22 ; castlevania logo before actual credits begin
con_EC77_24                             = $24 ; 




; index for 0x0250B7
con_90A7_00                             = $00 ; 
con_90A7_01                             = $01 ; 
con_90A7_02                             = $02 ; 
con_90A7_03                             = $03 ; 
con_90A7_04                             = $04 ; 
con_90A7_05                             = $05 ; 
con_90A7_06                             = $06 ; 
con_90A7_07                             = $07 ; 
con_90A7_08                             = $08 ; 
con_90A7_09                             = $09 ; 
con_90A7_0A                             = $0A ; 
con_90A7_0B                             = $0B ; 
con_90A7_0C                             = $0C ; 
con_90A7_0D                             = $0D ; 
con_90A7_0E                             = $0E ; 
con_90A7_0F                             = $0F ; 
con_90A7_10                             = $10 ; 
con_90A7_11                             = $11 ; 
con_90A7_12                             = $12 ; 
con_90A7_13                             = $13 ; 
con_90A7_14                             = $14 ; 
con_90A7_15                             = $15 ; 
con_90A7_16                             = $16 ; 
con_90A7_17                             = $17 ; 
con_90A7_18                             = $18 ; 
con_90A7_19                             = $19 ; 
con_90A7_1A                             = $1A ; 
con_90A7_1B                             = $1B ; 
con_90A7_1C                             = $1C ; 
con_90A7_1D                             = $1D ; 
con_90A7_1E                             = $1E ; 
con_90A7_1F                             = $1F ; 
con_90A7_20                             = $20 ; 
con_90A7_21                             = $21 ; 
con_90A7_22                             = $22 ; 
con_90A7_23                             = $23 ; 
con_90A7_24                             = $24 ; 
con_90A7_25                             = $25 ; 
con_90A7_26                             = $26 ; 
con_90A7_27                             = $27 ; 
con_90A7_28                             = $28 ; 
con_90A7_29                             = $29 ; 
con_90A7_2A                             = $2A ; 
con_90A7_2B                             = $2B ; 
con_90A7_2C                             = $2C ; 
con_90A7_2D                             = $2D ; 
con_90A7_2E                             = $2E ; 
con_90A7_2F                             = $2F ; 
con_90A7_30                             = $30 ; 
con_90A7_31                             = $31 ; 
con_90A7_32                             = $32 ; 
con_90A7_33                             = $33 ; 
con_90A7_34                             = $34 ; 
con_90A7_35                             = $35 ; 
con_90A7_36                             = $36 ; 
con_90A7_37                             = $37 ; 
con_90A7_38                             = $38 ; 
con_90A7_39                             = $39 ; 
con_90A7_3A                             = $3A ; 
con_90A7_3B                             = $3B ; 
con_90A7_3C                             = $3C ; 
con_90A7_3D                             = $3D ; 
con_90A7_3E                             = $3E ; 
con_90A7_3F                             = $3F ; 
con_90A7_40                             = $40 ; 
con_90A7_41                             = $41 ; 
con_90A7_42                             = $42 ; 
con_90A7_43                             = $43 ; 
con_90A7_44                             = $44 ; 
con_90A7_45                             = $45 ; 
con_90A7_46                             = $46 ; 
con_90A7_47                             = $47 ; 
con_90A7_48                             = $48 ; 
con_90A7_49                             = $49 ; 
con_90A7_4A                             = $4A ; 
con_90A7_4B                             = $4B ; 
con_90A7_4C                             = $4C ; 
con_90A7_4D                             = $4D ; 
con_90A7_4E                             = $4E ; 
con_90A7_4F                             = $4F ; 
con_90A7_50                             = $50 ; 
con_90A7_51                             = $51 ; 
con_90A7_52                             = $52 ; 
con_90A7_53                             = $53 ; 
con_90A7_54                             = $54 ; 
con_90A7_55                             = $55 ; 
con_90A7_56                             = $56 ; 
con_90A7_57                             = $57 ; 
con_90A7_58                             = $58 ; 
con_90A7_59                             = $59 ; 
con_90A7_5A                             = $5A ; 
con_90A7_5B                             = $5B ; 
con_90A7_5C                             = $5C ; 
con_90A7_5D                             = $5D ; 
con_90A7_5E                             = $5E ; 
con_90A7_5F                             = $5F ; 
con_90A7_60                             = $60 ; 
con_90A7_61                             = $61 ; 
con_90A7_62                             = $62 ; 
con_90A7_63                             = $63 ; 
con_90A7_64                             = $64 ; 
con_90A7_65                             = $65 ; 
con_90A7_66                             = $66 ; 
con_90A7_67                             = $67 ; 
con_90A7_68                             = $68 ; 
; con_90A7_69                           = $69 ; unused
con_90A7_6A                             = $6A ; 
con_90A7_6B                             = $6B ; 
con_90A7_6C                             = $6C ; 
con_90A7_6D                             = $6D ; 
con_90A7_6E                             = $6E ; 
con_90A7_6F                             = $6F ; 
con_90A7_70                             = $70 ; 
con_90A7_71                             = $71 ; 
con_90A7_72                             = $72 ; 
con_90A7_73                             = $73 ; 
con_90A7_74                             = $74 ; 
con_90A7_75                             = $75 ; 
con_90A7_76                             = $76 ; 



; index for 0x032462
con_A452_00                             = $00 ; 
con_A452_01                             = $01 ; 
con_A452_02                             = $02 ; 
con_A452_03                             = $03 ; 
con_A452_04                             = $04 ; 
con_A452_05                             = $05 ; 
con_A452_06                             = $06 ; 
con_A452_07                             = $07 ; 
con_A452_deal_damage_to_boss            = $08 ; 



; index for 0x02FD5F
con_BD4F_00                             = $00 ; 
con_BD4F_01                             = $01 ; 
con_BD4F_02                             = $02 ; 
con_BD4F_03                             = $03 ; 
con_BD4F_04                             = $04 ; 
con_BD4F_05                             = $05 ; 
con_BD4F_06                             = $06 ; 
con_BD4F_07                             = $07 ; 
con_BD4F_08                             = $08 ; 
con_BD4F_09                             = $09 ; 
; con_BD4F_0A                           = $0A ; unused
con_BD4F_0B                             = $0B ; 
con_BD4F_comp_X_dist_to_plr             = $0C ; 
con_BD4F_0D                             = $0D ; 
con_BD4F_0E                             = $0E ; 
con_BD4F_0F                             = $0F ; 
con_BD4F_10                             = $10 ; 
con_BD4F_11                             = $11 ; 
con_BD4F_12                             = $12 ; 
con_BD4F_13                             = $13 ; 
con_BD4F_14                             = $14 ; 
con_BD4F_15                             = $15 ; 
con_BD4F_16                             = $16 ; 
con_BD4F_17                             = $17 ; 
con_BD4F_18                             = $18 ; 
con_BD4F_19                             = $19 ; 
con_BD4F_1A                             = $1A ; 
con_BD4F_1B                             = $1B ; 
con_BD4F_1C                             = $1C ; 
con_BD4F_1D                             = $1D ; 
con_BD4F_1E                             = $1E ; 
con_BD4F_set_timer                      = $1F ; 
con_BD4F_count_down_timer               = $20 ; 
con_BD4F_21                             = $21 ; 
con_BD4F_22                             = $22 ; 
con_BD4F_23                             = $23 ; 
; con_BD4F_24                           = $24 ; unused
con_BD4F_25                             = $25 ; 
con_BD4F_26                             = $26 ; 
con_BD4F_27                             = $27 ; 
con_BD4F_28                             = $28 ; 
con_BD4F_29                             = $29 ; 
con_BD4F_2A                             = $2A ; 
con_BD4F_invert_spd_X                   = $2B ; 
con_BD4F_2C                             = $2C ; 
con_BD4F_2D                             = $2D ; 
con_BD4F_2E                             = $2E ; 
con_BD4F_2F                             = $2F ; 
con_BD4F_30                             = $30 ; 
; con_BD4F_31                           = $31 ; unused
con_BD4F_32                             = $32 ; 
con_BD4F_33                             = $33 ; 
con_BD4F_34                             = $34 ; 
con_BD4F_35                             = $35 ; 
con_BD4F_36                             = $36 ; 
con_BD4F_37                             = $37 ; 
con_BD4F_38                             = $38 ; 
con_BD4F_39                             = $39 ; 
con_BD4F_3A                             = $3A ; 
con_BD4F_3B                             = $3B ; 
con_BD4F_3C                             = $3C ; 
con_BD4F_3D                             = $3D ; 
con_BD4F_3E                             = $3E ; 
con_BD4F_3F                             = $3F ; 
con_BD4F_40                             = $40 ; 
con_BD4F_41                             = $41 ; 
con_BD4F_42                             = $42 ; 
con_BD4F_43                             = $43 ; 
con_BD4F_44                             = $44 ; 
con_BD4F_water_splash                   = $45 ; 
con_BD4F_46                             = $46 ; 
con_BD4F_47                             = $47 ; 
con_BD4F_48                             = $48 ; 
con_BD4F_49                             = $49 ; 
; con_BD4F_4A                           = $4A ; unused
; con_BD4F_4B                           = $4B ; unused
; con_BD4F_4C                           = $4C ; unused
con_BD4F_comp_XY_dist_to_plr            = $4D ; 
con_BD4F_4E                             = $4E ; 
con_BD4F_4F                             = $4F ; 
con_BD4F_50                             = $50 ; 
con_BD4F_51                             = $51 ; 
con_BD4F_52                             = $52 ; 
con_BD4F_53                             = $53 ; 
con_BD4F_54                             = $54 ; 
con_BD4F_55                             = $55 ; 
con_BD4F_56                             = $56 ; 
con_BD4F_57                             = $57 ; 
con_BD4F_58                             = $58 ; 
con_BD4F_59                             = $59 ; 
con_BD4F_5A                             = $5A ; 
con_BD4F_5B                             = $5B ; 
con_BD4F_5C                             = $5C ; 
con_BD4F_5D                             = $5D ; 
con_BD4F_5E                             = $5E ; 
con_BD4F_5F                             = $5F ; 
con_BD4F_60                             = $60 ; 
con_BD4F_61                             = $61 ; 
con_BD4F_62                             = $62 ; 
con_BD4F_63                             = $63 ; 
con_BD4F_64                             = $64 ; 
con_BD4F_65                             = $65 ; 
con_BD4F_66                             = $66 ; 
con_BD4F_67                             = $67 ; 
con_BD4F_68                             = $68 ; 
con_BD4F_69                             = $69 ; 
con_BD4F_6A                             = $6A ; 
con_BD4F_6B                             = $6B ; 
con_BD4F_play_sound                     = $6C ; 
con_BD4F_6D                             = $6D ; 
con_BD4F_6E                             = $6E ; 
con_BD4F_6F                             = $6F ; 
con_BD4F_70                             = $70 ; 
; con_BD4F_71                           = $71 ; unused
; con_BD4F_72                           = $72 ; unused
con_BD4F_73                             = $73 ; 
con_BD4F_74                             = $74 ; 
con_BD4F_75                             = $75 ; 
con_BD4F_76                             = $76 ; 
con_BD4F_77                             = $77 ; 
con_BD4F_78                             = $78 ; 
con_BD4F_79                             = $79 ; 
con_BD4F_7A                             = $7A ; 
con_BD4F_7B                             = $7B ; 
con_BD4F_7C                             = $7C ; 
con_BD4F_7D                             = $7D ; 
con_BD4F_7E                             = $7E ; 
con_BD4F_7F                             = $7F ; 
con_BD4F_80                             = $80 ; 
con_BD4F_81                             = $81 ; 
con_BD4F_82                             = $82 ; 
con_BD4F_83                             = $83 ; 
con_BD4F_84                             = $84 ; 
con_BD4F_85                             = $85 ; 
con_BD4F_86                             = $86 ; 
con_BD4F_87                             = $87 ; 
con_BD4F_88                             = $88 ; 
con_BD4F_89                             = $89 ; 
con_BD4F_8A                             = $8A ; 
con_BD4F_8B                             = $8B ; 
con_BD4F_8C                             = $8C ; 
con_BD4F_8D                             = $8D ; 
con_BD4F_8E                             = $8E ; 
con_BD4F_8F                             = $8F ; 
con_BD4F_90                             = $90 ; 
con_BD4F_91                             = $91 ; 
con_BD4F_92_Harpy_drops_enemy           = $92 ; 
con_BD4F_93                             = $93 ; 
con_BD4F_94                             = $94 ; 
con_BD4F_95                             = $95 ; 
con_BD4F_96                             = $96 ; 
con_BD4F_97                             = $97 ; 
con_BD4F_98                             = $98 ; 
con_BD4F_99                             = $99 ; 
con_BD4F_9A                             = $9A ; 
con_BD4F_9B                             = $9B ; 
con_BD4F_9C                             = $9C ; 
con_BD4F_9D                             = $9D ; 
con_BD4F_9E                             = $9E ; 
con_BD4F_check_dist_Y_30_to_plr         = $9F ; 
con_BD4F_A0                             = $A0 ; 
con_BD4F_A1                             = $A1 ; 
con_BD4F_A2                             = $A2 ; 
con_BD4F_A3                             = $A3 ; 
con_BD4F_A4                             = $A4 ; 
con_BD4F_A5                             = $A5 ; 
con_BD4F_A6                             = $A6 ; 
con_BD4F_A7                             = $A7 ; 
con_BD4F_A8                             = $A8 ; 



; sounds
; need comments at 0x030F3E
con_sound_01                            = $01 ; 
con_sound_02                            = $02 ; 
con_sound_03                            = $03 ; 
con_sound_04                            = $04 ; 
con_sound_05                            = $05 ; 
con_sound_06                            = $06 ; 
con_sound_07                            = $07 ; 
con_sound_08                            = $08 ; 
con_sound_step                          = $09 ; walking during map screen
con_sound_0A                            = $0A ; 
con_sound_land                          = $0B ; after falling on the ground
con_sound_door                          = $0C ; open/close
con_sound_0D                            = $0D ; 
con_sound_0E                            = $0E ; 
con_sound_0F                            = $0F ; 
con_sound_10                            = $10 ; 
con_sound_block                         = $11 ; block has landed/block was crumbled/fast screen scroll
con_sound_12                            = $12 ; 
con_sound_throw_axe                     = $13 ; 
con_sound_throw_knife                   = $14 ; 
con_sound_15                            = $15 ; 
con_sound_16                            = $16 ; 
con_sound_17                            = $17 ; 
con_sound_pick_up_money                 = $18 ; 
con_sound_score_count                   = $19 ; after stage is completed
con_sound_heart_count                   = $1A ; after stage is completed, also cursor when entering name
con_sound_pick_up_heart                 = $1B ; alsh when selecting a letter during name entering
con_sound_pick_up_weapon                = $1C ; 
; con_sound_1D                          = $1D ; unused
con_sound_1E                            = $1E ; = 21
con_sound_Alucard_fireball              = $1F ; 
con_sound_20                            = $20 ; 
con_sound_21                            = $21 ; = 1E
con_sound_water_splash_1                = $22 ; 
con_sound_water_splash_2                = $23 ; 
con_sound_24                            = $24 ; 
con_sound_25                            = $25 ; 
con_sound_26                            = $26 ; 
con_sound_kill_enemy                    = $27 ; 
con_sound_28                            = $28 ; 
con_sound_hit_enemy                     = $29 ; 
con_sound_2A                            = $2A ; 
con_sound_2B                            = $2B ; 
con_sound_pick_up_meat                  = $2C ; also when restoring hp after stage is complete
con_sound_2D                            = $2D ; 
con_sound_thunder                       = $2E ; 
con_sound_2F                            = $2F ; 
con_sound_30                            = $30 ; 
con_sound_31                            = $31 ; 
con_sound_32                            = $32 ; 
con_sound_destroy_candle                = $33 ; 
con_sound_destroy_block                 = $34 ; 
con_sound_35                            = $35 ; 
con_sound_rotate_platform               = $36 ; it rotates when jumping on it 
con_sound_37                            = $37 ; = 39
con_sound_38                            = $38 ; 
con_sound_39                            = $39 ; = 37
con_sound_earthshake                    = $3A ; 
con_sound_3B                            = $3B ; 
con_sound_stopwatch_tick                = $3C ; subweapon
con_sound_3D                            = $3D ; 
con_sound_3E                            = $3E ; 
con_sound_3F                            = $3F ; 
con_sound_wrong_psw                     = $40 ; 
con_sound_boss_to_partner               = $41 ; defeated boss is transforming into partner
con_sound_42                            = $42 ; 
con_sound_43                            = $43 ; 
con_sound_44                            = $44 ; 
con_sound_45                            = $45 ; 
con_sound_swap_player                   = $46 ; 
con_sound_47                            = $47 ; 
con_sound_orb                           = $48 ; orb falls down when boss is defeated
con_sound_low_time                      = $49 ; 
con_sound_pick_up_cross                 = $4A ; 
con_sound_extra_life                    = $4B ; 
con_sound_handshake                     = $4C ; player agrees to take partner with him
con_sound_4D                            = $4D ; 

; music
con_music_death                         = $4E ; 
con_music_4F                            = $4F ; stage music
con_music_50                            = $50 ; stage music
con_music_51                            = $51 ; stage music
con_music_52                            = $52 ; stage music
con_music_53                            = $53 ; stage music
con_music_54                            = $54 ; stage music = 5A
con_music_55                            = $55 ; stage music
con_music_56                            = $56 ; stage music = 59
con_music_57                            = $57 ; stage music
con_music_58                            = $58 ; stage music
con_music_59                            = $59 ; stage music = 56
con_music_5A                            = $5A ; stage music = 54
con_music_5B                            = $5B ; stage music
con_music_5C                            = $5C ; stage music
con_music_5D                            = $5D ; stage music = 6A
con_music_5E                            = $5E ; stage music
con_music_5F                            = $5F ; 
con_music_60                            = $60 ; 
con_music_61                            = $61 ; 
con_music_enter_name_psw                = $62 ; 
con_music_stage_complete                = $63 ; 
con_music_64                            = $64 ; 
con_music_game_over                     = $65 ; 
con_music_title_screen                  = $66 ; title screen at the beginning
con_music_67                            = $67 ; 
con_music_68                            = $68 ; 
con_music_69                            = $69 ; 
con_music_6A                            = $6A ; = 5D
con_music_dialog                        = $6B ; partner is talking
con_music_6C                            = $6C ; 

; dmc
; need comments at 0x032160
con_dmc_6D                              = $6D ; 
con_dmc_6E                              = $6E ; 
con_dmc_6F                              = $6F ; 
con_dmc_70                              = $70 ; 
con_dmc_71                              = $71 ; 
con_dmc_whip                            = $72 ; also cursor
con_dmc_hit_Trevor                      = $73 ; 
con_dmc_hit_Grant                       = $74 ; 
con_dmc_hit_Sypha                       = $75 ; 
con_dmc_hit_Alucard                     = $76 ; 
con_dmc_77                              = $77 ; 
con_dmc_78                              = $78 ; 
con_dmc_79                              = $79 ; 
con_dmc_7A                              = $7A ; 
con_dmc_boss_death                      = $7B ; 
con_dmc_7C                              = $7C ; 



; sound engine control bytes 0x010713 (included bank)
con_se_cb_1_C0                          = $C0 ; C0-CF 0x01034A
con_se_cb_1_D0                          = $D0 ; D0-DF 0x010373
con_se_cb_1_E0                          = $E0 ; E0-E5 0x0103B7
con_se_cb_1_F0                          = $F0 ; F0-F7 0x0105C4

; 0x0103E4
con_se_cb_1_E6                          = $E6 ; 
con_se_cb_1_E7                          = $E7 ; 
con_se_cb_1_E8                          = $E8 ; 
con_se_cb_1_E9                          = $E9 ; todo доделать биты
con_se_cb_1_EA                          = $EA ; 
con_se_cb_1_EB                          = $EB ; 
con_se_cb_1_EC                          = $EC ; 
con_se_cb_1_ED                          = $ED ; 
con_se_cb_1_EE                          = $EE ; 
; con_se_cb_1_EF                        = $EF ; unused

; 0x0105B3
; con_se_cb_1_F8                        = $F8 ; unused
; con_se_cb_1_F9                        = $F9 ; unused
; con_se_cb_1_FA                        = $FA ; unused
con_se_cb_1_FB                          = $FB ; 0x0105D3
; con_se_cb_1_FC                        = $FC ; unused
con_se_cb_1_FD                          = $FD ; 0x01061F jmp/jsr/rts
con_se_cb_1_FE                          = $FE ; 0x010543
con_se_cb_1_FF                          = $FF ; 0x01065E



; sound engine control bytes 0x030DDA
con_se_cb_2_E6                          = $E6 ; 
con_se_cb_2_E7                          = $E7 ; 
con_se_cb_2_E8                          = $E8 ; 
; con_se_cb_2_E9                        = $E9 ; unused
con_se_cb_2_EA                          = $EA ; 
; con_se_cb_2_EB                        = $EB ; unused
; con_se_cb_2_EC                        = $EC ; unused
con_se_cb_2_ED                          = $ED ; 
; con_se_cb_2_EE                        = $EE ; unused
; con_se_cb_2_EF                        = $EF ; unused



; ram_0189_se
; index for 0x031E35
con_9E25_00                             = $00 ; 
con_9E25_01                             = $01 ; 
con_9E25_02                             = $02 ; lost of instances, but 0x031ED8 is still never used, probably because all indexes are +80
con_9E25_03                             = $03 ; 
con_9E25_04                             = $04 ; 
con_9E25_05                             = $05 ; 
con_9E25_06                             = $06 ; 
con_9E25_07                             = $07 ; 
con_9E25_08                             = $08 ; 
con_9E25_09                             = $09 ; 
con_9E25_0A                             = $0A ; 
con_9E25_0B                             = $0B ; 
con_9E25_0C                             = $0C ; 
; con_9E25_0D                           = $0D ; unused
; con_9E25_0E                           = $0E ; unused
; con_9E25_0F                           = $0F ; unused
con_9E25_10                             = $10 ; 
con_9E25_11                             = $11 ; 
con_9E25_12                             = $12 ; 
con_9E25_13                             = $13 ; 
con_9E25_14                             = $14 ; 
con_9E25_15                             = $15 ; 
con_9E25_16                             = $16 ; 
con_9E25_17                             = $17 ; 
con_9E25_18                             = $18 ; 
con_9E25_19                             = $19 ; 
con_9E25_1A                             = $1A ; 
con_9E25_1B                             = $1B ; 
con_9E25_1C                             = $1C ; 
con_9E25_1D                             = $1D ; 
con_9E25_1E                             = $1E ; 
con_9E25_1F                             = $1F ; 
con_9E25_20                             = $20 ; 
con_9E25_21                             = $21 ; 
con_9E25_22                             = $22 ; 
con_9E25_23                             = $23 ; 
con_9E25_24                             = $24 ; 
con_9E25_25                             = $25 ; 
con_9E25_26                             = $26 ; 
con_9E25_27                             = $27 ; 
con_9E25_28                             = $28 ; 
con_9E25_29                             = $29 ; 
con_9E25_2A                             = $2A ; 



; ram_06A3_se
; index for 0x031E8B
con_9E7B_50                             = $50 ; 
con_9E7B_51                             = $51 ; 
; con_9E7B_52                           = $52 ; unused
con_9E7B_53                             = $53 ; 
con_9E7B_54                             = $54 ; 
con_9E7B_55                             = $55 ; 
con_9E7B_56                             = $56 ; 
con_9E7B_57                             = $57 ; 
con_9E7B_58                             = $58 ; 
con_9E7B_59                             = $59 ; 
con_9E7B_5A                             = $5A ; 
con_9E7B_5B                             = $5B ; 
con_9E7B_5C                             = $5C ; 
con_9E7B_5D                             = $5D ; 
con_9E7B_5E                             = $5E ; 
con_9E7B_5F                             = $5F ; 
con_9E7B_60                             = $60 ; 
con_9E7B_61                             = $61 ; 
con_9E7B_62                             = $62 ; 
con_9E7B_63                             = $63 ; 
con_9E7B_64                             = $64 ; 
con_9E7B_65                             = $65 ; 
con_9E7B_66                             = $66 ; 
con_9E7B_67                             = $67 ; 
con_9E7B_68                             = $68 ; 
con_9E7B_69                             = $69 ; 
con_9E7B_6A                             = $6A ; 
con_9E7B_6B                             = $6B ; 
con_9E7B_6C                             = $6C ; 
con_9E7B_6D                             = $6D ; 
con_9E7B_6E                             = $6E ; 
; con_9E7B_6F                           = $6F ; unused



; todo
; ram_obj_ai_script ?
; index for 0x02FEB1
con_BEA1_00                             = $00 ; 
con_BEA1_01                             = $01 ; 
con_BEA1_02                             = $02 ; 
con_BEA1_03                             = $03 ; 
con_BEA1_04                             = $04 ; 
con_BEA1_05                             = $05 ; 
con_BEA1_06                             = $06 ; 
con_BEA1_07                             = $07 ; 
con_BEA1_08                             = $08 ; 
con_BEA1_09                             = $09 ; 
con_BEA1_0A                             = $0A ; 
con_BEA1_0B                             = $0B ; 
con_BEA1_0C                             = $0C ; 
con_BEA1_0D                             = $0D ; 
con_BEA1_0E                             = $0E ; 
con_BEA1_0F                             = $0F ; 
con_BEA1_10                             = $10 ; 
con_BEA1_11                             = $11 ; 
con_BEA1_12                             = $12 ; 
con_BEA1_13                             = $13 ; 
con_BEA1_14                             = $14 ; 
con_BEA1_15                             = $15 ; 
con_BEA1_16                             = $16 ; 
con_BEA1_17                             = $17 ; 
con_BEA1_18                             = $18 ; 
con_BEA1_19                             = $19 ; 
con_BEA1_1A                             = $1A ; 
con_BEA1_1B                             = $1B ; 
con_BEA1_1C                             = $1C ; 
con_BEA1_1D                             = $1D ; 
con_BEA1_1E                             = $1E ; 
con_BEA1_1F                             = $1F ; 
con_BEA1_20                             = $20 ; 
con_BEA1_21                             = $21 ; 
con_BEA1_22                             = $22 ; 
con_BEA1_23                             = $23 ; 
con_BEA1_24                             = $24 ; 
con_BEA1_25                             = $25 ; 
con_BEA1_swamp_frog                     = $26 ; 
con_BEA1_27                             = $27 ; 
con_BEA1_28                             = $28 ; 
con_BEA1_29                             = $29 ; 
con_BEA1_2A                             = $2A ; 
con_BEA1_2B                             = $2B ; 
con_BEA1_2C                             = $2C ; 
con_BEA1_2D                             = $2D ; 
con_BEA1_2E                             = $2E ; 
con_BEA1_2F                             = $2F ; 
con_BEA1_30                             = $30 ; 
con_BEA1_31                             = $31 ; 
con_BEA1_32                             = $32 ; 
con_BEA1_33                             = $33 ; 
con_BEA1_34                             = $34 ; 
con_BEA1_35                             = $35 ; 
con_BEA1_36                             = $36 ; 
con_BEA1_37                             = $37 ; 
con_BEA1_38                             = $38 ; 
con_BEA1_39                             = $39 ; 
con_BEA1_3A                             = $3A ; 
con_BEA1_3B                             = $3B ; 
con_BEA1_3C                             = $3C ; 
con_BEA1_3D                             = $3D ; 
con_BEA1_3E                             = $3E ; 
con_BEA1_3F                             = $3F ; 
con_BEA1_40                             = $40 ; 
con_BEA1_41                             = $41 ; 
con_BEA1_42                             = $42 ; 
con_BEA1_43                             = $43 ; 
con_BEA1_44                             = $44 ; 
con_BEA1_45                             = $45 ; 
con_BEA1_46                             = $46 ; 
con_BEA1_47                             = $47 ; 
con_BEA1_48                             = $48 ; 
con_BEA1_49                             = $49 ; 
con_BEA1_4A                             = $4A ; 
con_BEA1_4B                             = $4B ; 
con_BEA1_4C                             = $4C ; 
con_BEA1_4D                             = $4D ; 
con_BEA1_4E                             = $4E ; 
con_BEA1_4F                             = $4F ; 
con_BEA1_50                             = $50 ; 
con_BEA1_51                             = $51 ; 
con_BEA1_52                             = $52 ; 
con_BEA1_53                             = $53 ; 
con_BEA1_54                             = $54 ; 
con_BEA1_55                             = $55 ; 
con_BEA1_56                             = $56 ; 
con_BEA1_57                             = $57 ; 
con_BEA1_58                             = $58 ; 
con_BEA1_59                             = $59 ; projectile with boomerang properties
con_BEA1_5A                             = $5A ; 
con_BEA1_5B                             = $5B ; 
con_BEA1_5C                             = $5C ; 
con_BEA1_5D                             = $5D ; 
con_BEA1_5E                             = $5E ; 
con_BEA1_5F                             = $5F ; 
con_BEA1_60                             = $60 ; 
con_BEA1_61                             = $61 ; 
con_BEA1_62                             = $62 ; 
con_BEA1_63                             = $63 ; 
con_BEA1_64                             = $64 ; 
con_BEA1_65                             = $65 ; 
con_BEA1_66                             = $66 ; 
con_BEA1_67                             = $67 ; 
con_BEA1_68                             = $68 ; 
con_BEA1_69                             = $69 ; 
con_BEA1_6A                             = $6A ; 
con_BEA1_6B                             = $6B ; 
con_BEA1_6C                             = $6C ; 
con_BEA1_6D                             = $6D ; 
con_BEA1_6E                             = $6E ; 
con_BEA1_6F                             = $6F ; 
con_BEA1_70                             = $70 ; 
con_BEA1_71                             = $71 ; 
con_BEA1_72                             = $72 ; 



; index for 0x02A04F
con_A03F_00                             = $00 ; 
con_A03F_01                             = $01 ; 
con_A03F_02                             = $02 ; 
con_A03F_03                             = $03 ; 
con_A03F_04                             = $04 ; 
con_A03F_05                             = $05 ; 
con_A03F_06                             = $06 ; 
con_A03F_07                             = $07 ; 
con_A03F_08                             = $08 ; 
con_A03F_09                             = $09 ; 
con_A03F_0A                             = $0A ; 
con_A03F_0B                             = $0B ; 
; con_A03F_0C                           = $0C ; unused
; con_A03F_0D                           = $0D ; unused
con_A03F_0E                             = $0E ; 
con_A03F_0F                             = $0F ; 
con_A03F_10                             = $10 ; 
con_A03F_11                             = $11 ; 
; con_A03F_12                           = $12 ; unused
con_A03F_13                             = $13 ; 
con_A03F_14                             = $14 ; 
con_A03F_15                             = $15 ; 
con_A03F_16                             = $16 ; 
con_A03F_17                             = $17 ; 
; con_A03F_18                           = $18 ; unused
; con_A03F_19                           = $19 ; unused
; con_A03F_1A                           = $1A ; unused
con_A03F_1B                             = $1B ; 
con_A03F_1C                             = $1C ; 
con_A03F_1D                             = $1D ; 
con_A03F_1E                             = $1E ; 
con_A03F_1F                             = $1F ; 
con_A03F_20                             = $20 ; 
con_A03F_21                             = $21 ; 
con_A03F_22                             = $22 ; 
con_A03F_23                             = $23 ; 
con_A03F_24                             = $24 ; 
; con_A03F_25                           = $25 ; unused
con_A03F_26                             = $26 ; 
con_A03F_27                             = $27 ; 
; con_A03F_28                           = $28 ; unused
con_A03F_29                             = $29 ; 
; con_A03F_2A                           = $2A ; unused
con_A03F_2B                             = $2B ; 
con_A03F_2C                             = $2C ; 
con_A03F_2D                             = $2D ; 
con_A03F_2E                             = $2E ; 
con_A03F_2F                             = $2F ; 
con_A03F_30                             = $30 ; 
con_A03F_31                             = $31 ; 
con_A03F_32                             = $32 ; 
con_A03F_33                             = $33 ; 
con_A03F_34                             = $34 ; 
con_A03F_35                             = $35 ; 
con_A03F_36                             = $36 ; 
con_A03F_37                             = $37 ; 
con_A03F_38                             = $38 ; 
con_A03F_39                             = $39 ; 
con_A03F_3A                             = $3A ; 
con_A03F_3B                             = $3B ; 
con_A03F_3C                             = $3C ; 
con_A03F_3D                             = $3D ; 
con_A03F_3E                             = $3E ; 
con_A03F_3F                             = $3F ; 
con_A03F_40                             = $40 ; 
con_A03F_41                             = $41 ; 
; con_A03F_42                           = $42 ; unused
; con_A03F_43                           = $43 ; unused
con_A03F_44                             = $44 ; 
con_A03F_45                             = $45 ; 
con_A03F_46                             = $46 ; 
con_A03F_47                             = $47 ; 
con_A03F_48                             = $48 ; 
; con_A03F_49                           = $49 ; unused
con_A03F_4A                             = $4A ; 
con_A03F_4B                             = $4B ; 
; con_A03F_4C                           = $4C ; unused
; con_A03F_4D                           = $4D ; unused
con_A03F_4E                             = $4E ; 
con_A03F_4F                             = $4F ; 
con_A03F_50                             = $50 ; 
con_A03F_51                             = $51 ; 
; con_A03F_52                           = $52 ; unused
con_A03F_53                             = $53 ; 
con_A03F_54                             = $54 ; 
con_A03F_55                             = $55 ; 
con_A03F_56                             = $56 ; 
con_A03F_57                             = $57 ; 
con_A03F_58                             = $58 ; 
con_A03F_59                             = $59 ; 
con_A03F_5A                             = $5A ; 
; con_A03F_5B                           = $5B ; unused
con_A03F_5C                             = $5C ; 
con_A03F_5D                             = $5D ; 
con_A03F_5E                             = $5E ; 
con_A03F_5F                             = $5F ; 
con_A03F_60                             = $60 ; 
con_A03F_61                             = $61 ; 
con_A03F_62                             = $62 ; 
con_A03F_63                             = $63 ; 
con_A03F_64                             = $64 ; 
con_A03F_65                             = $65 ; 
con_A03F_66                             = $66 ; 
con_A03F_67                             = $67 ; 
con_A03F_68                             = $68 ; 
con_A03F_69                             = $69 ; 
con_A03F_6A                             = $6A ; 
con_A03F_6B                             = $6B ; 
con_A03F_swamp_frog                     = $6C ; 
; con_A03F_6D                           = $6D ; unused
con_A03F_6E                             = $6E ; 
con_A03F_6F                             = $6F ; 
con_A03F_70                             = $70 ; 
con_A03F_71                             = $71 ; 
con_A03F_72                             = $72 ; 
; con_A03F_73                           = $73 ; unused
con_A03F_74                             = $74 ; 
con_A03F_75                             = $75 ; 
; con_A03F_76                           = $76 ; unused
con_A03F_77                             = $77 ; 
con_A03F_78                             = $78 ; 
con_A03F_79                             = $79 ; 
con_A03F_7A                             = $7A ; 
; con_A03F_7B                           = $7B ; unused
con_A03F_7C                             = $7C ; 
con_A03F_7D                             = $7D ; 
con_A03F_7E                             = $7E ; 
con_A03F_7F                             = $7F ; 
con_A03F_80                             = $80 ; 
; con_A03F_81                           = $81 ; unused
con_A03F_82                             = $82 ; 
con_A03F_83                             = $83 ; 
; con_A03F_84                           = $84 ; unused
con_A03F_85                             = $85 ; 
con_A03F_86                             = $86 ; 
con_A03F_87                             = $87 ; 
con_A03F_88                             = $88 ; 
con_A03F_89                             = $89 ; 
con_A03F_8A                             = $8A ; 
con_A03F_8B                             = $8B ; 
con_A03F_8C                             = $8C ; 
con_A03F_8D                             = $8D ; 
con_A03F_8E                             = $8E ; 
con_A03F_8F                             = $8F ; 
con_A03F_90                             = $90 ; 
; con_A03F_91                           = $91 ; unused
con_A03F_92                             = $92 ; 
con_A03F_93                             = $93 ; 
con_A03F_94                             = $94 ; 
con_A03F_95                             = $95 ; 
con_A03F_96                             = $96 ; 
; con_A03F_97                           = $97 ; unused
con_A03F_98                             = $98 ; 
con_A03F_99                             = $99 ; 
con_A03F_9A                             = $9A ; 
con_A03F_9B                             = $9B ; 
con_A03F_9C                             = $9C ; 
con_A03F_9D                             = $9D ; 
; con_A03F_9E                           = $9E ; unused
con_A03F_9F                             = $9F ; 
con_A03F_A0                             = $A0 ; 
; con_A03F_A1                           = $A1 ; unused
con_A03F_A2                             = $A2 ; 
con_A03F_A3                             = $A3 ; 
con_A03F_A4                             = $A4 ; 
con_A03F_A5                             = $A5 ; 
con_A03F_A6                             = $A6 ; 
con_A03F_A7                             = $A7 ; 
con_A03F_A8                             = $A8 ; 
con_A03F_A9                             = $A9 ; 
con_A03F_AA                             = $AA ; 
con_A03F_AB                             = $AB ; 
con_A03F_AC                             = $AC ; 
con_A03F_AD                             = $AD ; 
con_A03F_AE                             = $AE ; 
con_A03F_AF                             = $AF ; 
con_A03F_B0                             = $B0 ; 
con_A03F_B1                             = $B1 ; 
con_A03F_B2                             = $B2 ; 
con_A03F_B3                             = $B3 ; 
; con_A03F_B4                           = $B4 ; unused
con_A03F_B5                             = $B5 ; 
con_A03F_B6                             = $B6 ; 
; con_A03F_B7                           = $B7 ; unused
; con_A03F_B8                           = $B8 ; unused
con_A03F_B9                             = $B9 ; 
con_A03F_BA                             = $BA ; 
con_A03F_BB                             = $BB ; 
con_A03F_BC                             = $BC ; 
con_A03F_BD                             = $BD ; 
con_A03F_BE                             = $BE ; 
con_A03F_BF                             = $BF ; 
con_A03F_C0                             = $C0 ; 
con_A03F_C1                             = $C1 ; 
con_A03F_C2                             = $C2 ; 
con_A03F_C3                             = $C3 ; 
con_A03F_C4                             = $C4 ; 
con_A03F_C5                             = $C5 ; 
con_A03F_C6                             = $C6 ; 
; con_A03F_C7                           = $C7 ; unused
; con_A03F_C8                           = $C8 ; unused
; con_A03F_C9                           = $C9 ; unused
; con_A03F_CA                           = $CA ; unused
; con_A03F_CB                           = $CB ; unused
; con_A03F_CC                           = $CC ; unused
; con_A03F_CD                           = $CD ; unused
; con_A03F_CE                           = $CE ; unused
; con_A03F_CF                           = $CF ; unused
con_A03F_D0                             = $D0 ; 
con_A03F_D1                             = $D1 ; 
con_A03F_D2                             = $D2 ; 
con_A03F_D3                             = $D3 ; 
con_A03F_D4                             = $D4 ; 
con_A03F_D5                             = $D5 ; 
con_A03F_D6                             = $D6 ; 
con_A03F_D7                             = $D7 ; 
con_A03F_D8                             = $D8 ; 
con_A03F_D9                             = $D9 ; 
con_A03F_DA                             = $DA ; 
con_A03F_DB                             = $DB ; 
con_A03F_DC                             = $DC ; 
; con_A03F_DD                           = $DD ; unused
con_A03F_DE                             = $DE ; 
; con_A03F_DF                           = $DF ; unused
con_A03F_E0                             = $E0 ; 
con_A03F_E1                             = $E1 ; 
con_A03F_E2                             = $E2 ; 
con_A03F_E3                             = $E3 ; 



; index for 0x02A654
con_A644_00                             = $00 ; 
; con_A644_01                           = $01 ; unused
con_A644_02                             = $02 ; 
; con_A644_03                           = $03 ; unused
; con_A644_04                           = $04 ; unused
con_A644_05                             = $05 ; 
; con_A644_06                           = $06 ; unused
con_A644_07                             = $07 ; 
con_A644_08                             = $08 ; 
; con_A644_09                           = $09 ; unused
con_A644_0A                             = $0A ; 
con_A644_0B                             = $0B ; 
con_A644_0C                             = $0C ; 
con_A644_0D                             = $0D ; 
; con_A644_0E                           = $0E ; unused
con_A644_0F                             = $0F ; 
con_A644_10                             = $10 ; 
con_A644_11                             = $11 ; 
con_A644_12                             = $12 ; 
con_A644_13                             = $13 ; 
; con_A644_14                           = $14 ; unused
con_A644_15                             = $15 ; 
con_A644_16                             = $16 ; 
con_A644_17                             = $17 ; 
; con_A644_18                           = $18 ; unused
con_A644_19                             = $19 ; 
con_A644_1A                             = $1A ; 
con_A644_1B                             = $1B ; 
con_A644_1C                             = $1C ; 
con_A644_1D                             = $1D ; 
con_A644_1E                             = $1E ; 
con_A644_1F                             = $1F ; 
con_A644_20                             = $20 ; 
con_A644_21                             = $21 ; 
con_A644_22                             = $22 ; 
con_A644_23                             = $23 ; 
con_A644_24                             = $24 ; 
con_A644_25                             = $25 ; 
con_A644_26                             = $26 ; 
con_A644_27                             = $27 ; 
; con_A644_28                           = $28 ; unused
con_A644_29                             = $29 ; 
; con_A644_2A                           = $2A ; unused
; con_A644_2B                           = $2B ; unused
con_A644_2C                             = $2C ; 
con_A644_2D                             = $2D ; 
con_A644_2E                             = $2E ; 
con_A644_2F                             = $2F ; 
con_A644_30                             = $30 ; 
con_A644_31                             = $31 ; 
con_A644_32                             = $32 ; 
con_A644_33                             = $33 ; 
con_A644_34                             = $34 ; 
con_A644_35                             = $35 ; 
; con_A644_36                           = $36 ; unused
con_A644_37                             = $37 ; 
con_A644_38                             = $38 ; 
con_A644_39                             = $39 ; 
con_A644_3A                             = $3A ; 
con_A644_3B                             = $3B ; 
con_A644_3C                             = $3C ; 
con_A644_3D                             = $3D ; 
con_A644_3E                             = $3E ; 
con_A644_3F                             = $3F ; 
; con_A644_40                           = $40 ; unused
con_A644_41                             = $41 ; 
con_A644_42                             = $42 ; 
con_A644_43                             = $43 ; 
; con_A644_44                           = $44 ; unused
con_A644_45                             = $45 ; 
con_A644_46                             = $46 ; 
con_A644_47                             = $47 ; 
con_A644_48                             = $48 ; 
con_A644_49                             = $49 ; 
; con_A644_4A                           = $4A ; unused
con_A644_4B                             = $4B ; 
con_A644_4C                             = $4C ; 
con_A644_4D                             = $4D ; 
; con_A644_4E                           = $4E ; unused
con_A644_4F                             = $4F ; 
con_A644_50                             = $50 ; 
con_A644_51                             = $51 ; 
; con_A644_52                           = $52 ; unused
con_A644_53                             = $53 ; 
con_A644_54                             = $54 ; 
; con_A644_55                           = $55 ; unused
; con_A644_56                           = $56 ; unused
con_A644_57                             = $57 ; 
con_A644_58                             = $58 ; 
con_A644_59                             = $59 ; 
con_A644_5A                             = $5A ; 
con_A644_5B                             = $5B ; 
con_A644_5C                             = $5C ; 
con_A644_5D                             = $5D ; 
con_A644_5E                             = $5E ; 
con_A644_5F                             = $5F ; 
con_A644_60                             = $60 ; 
con_A644_61                             = $61 ; 
con_A644_62                             = $62 ; 
con_A644_63                             = $63 ; 
con_A644_64                             = $64 ; 
con_A644_65                             = $65 ; 
con_A644_66                             = $66 ; 
con_A644_67                             = $67 ; 
con_A644_68                             = $68 ; 
con_A644_69                             = $69 ; 
con_A644_6A                             = $6A ; 
con_A644_6B                             = $6B ; 
con_A644_6C                             = $6C ; 
con_A644_6D                             = $6D ; 
con_A644_6E                             = $6E ; 
con_A644_6F                             = $6F ; 
; con_A644_70                           = $70 ; unused
con_A644_71                             = $71 ; 
con_A644_72                             = $72 ; 
con_A644_73                             = $73 ; 
con_A644_74                             = $74 ; 
con_A644_75                             = $75 ; 
con_A644_76                             = $76 ; 
con_A644_77                             = $77 ; 
con_A644_78                             = $78 ; 
con_A644_79                             = $79 ; 
con_A644_7A                             = $7A ; 
con_A644_7B                             = $7B ; 
con_A644_7C                             = $7C ; 
con_A644_7D                             = $7D ; 
con_A644_7E                             = $7E ; 
con_A644_7F                             = $7F ; 
; con_A644_80                           = $80 ; unused
con_A644_81                             = $81 ; 
con_A644_82                             = $82 ; 
; con_A644_83                           = $83 ; unused
con_A644_84                             = $84 ; 
; con_A644_85                           = $85 ; unused
con_A644_86                             = $86 ; 
con_A644_87                             = $87 ; 
con_A644_88                             = $88 ; 
con_A644_89                             = $89 ; 
con_A644_8A                             = $8A ; 
con_A644_8B                             = $8B ; 
con_A644_8C                             = $8C ; 
; con_A644_8D                           = $8D ; unused
con_A644_8E                             = $8E ; 
con_A644_8F                             = $8F ; 
con_A644_90                             = $90 ; 
con_A644_91                             = $91 ; 
con_A644_92                             = $92 ; 
con_A644_93                             = $93 ; 
con_A644_94                             = $94 ; 
con_A644_95                             = $95 ; 
con_A644_96                             = $96 ; 
con_A644_97                             = $97 ; 
con_A644_98                             = $98 ; 
con_A644_99                             = $99 ; 
con_A644_9A                             = $9A ; 
con_A644_9B                             = $9B ; 
con_A644_9C                             = $9C ; 
con_A644_9D                             = $9D ; 
con_A644_9E                             = $9E ; 
con_A644_9F                             = $9F ; 
con_A644_A0                             = $A0 ; 
con_A644_A1                             = $A1 ; 
con_A644_A2                             = $A2 ; 
con_A644_A3                             = $A3 ; 
; con_A644_A4                           = $A4 ; unused
con_A644_A5                             = $A5 ; 
; con_A644_A6                           = $A6 ; unused
con_A644_A7                             = $A7 ; 
con_A644_A8                             = $A8 ; 
con_A644_A9                             = $A9 ; 
con_A644_AA                             = $AA ; 
con_A644_AB                             = $AB ; 
con_A644_AC                             = $AC ; 
con_A644_AD                             = $AD ; 
con_A644_AE                             = $AE ; 
con_A644_AF                             = $AF ; 
con_A644_B0                             = $B0 ; 
con_A644_B1                             = $B1 ; 
con_A644_B2                             = $B2 ; 
con_A644_B3                             = $B3 ; 
con_A644_B4                             = $B4 ; 
con_A644_B5                             = $B5 ; 
con_A644_B6                             = $B6 ; 
con_A644_B7                             = $B7 ; 
con_A644_B8                             = $B8 ; 
; con_A644_B9                           = $B9 ; unused
; con_A644_BA                           = $BA ; unused
con_A644_BB                             = $BB ; 
con_A644_BC                             = $BC ; 
con_A644_BD                             = $BD ; 
con_A644_BE                             = $BE ; 
con_A644_BF                             = $BF ; 
con_A644_C0                             = $C0 ; 
con_A644_C1                             = $C1 ; 
con_A644_C2                             = $C2 ; 
con_A644_C3                             = $C3 ; 
con_A644_C4                             = $C4 ; 
; con_A644_C5                           = $C5 ; unused
con_A644_C6                             = $C6 ; 
con_A644_C7                             = $C7 ; 
con_A644_C8                             = $C8 ; 
con_A644_C9                             = $C9 ; 
con_A644_CA                             = $CA ; 
con_A644_CB                             = $CB ; 
con_A644_CC                             = $CC ; 
con_A644_CD                             = $CD ; 
con_A644_CE                             = $CE ; 
; con_A644_CF                           = $CF ; unused
con_A644_D0                             = $D0 ; 
con_A644_D1                             = $D1 ; 
con_A644_D2                             = $D2 ; 
; con_A644_D3                           = $D3 ; unused
con_A644_D4                             = $D4 ; 
con_A644_D5                             = $D5 ; 
; con_A644_D6                           = $D6 ; unused
con_A644_D7                             = $D7 ; 
con_A644_D8                             = $D8 ; 
con_A644_D9                             = $D9 ; 
con_A644_DA                             = $DA ; 
con_A644_DB                             = $DB ; 
con_A644_DC                             = $DC ; 
con_A644_DD                             = $DD ; 
con_A644_DE                             = $DE ; 
con_A644_DF                             = $DF ; 
con_A644_E0                             = $E0 ; 
con_A644_E1                             = $E1 ; 
con_A644_E2                             = $E2 ; 
con_A644_E3                             = $E3 ; 
con_A644_E4                             = $E4 ; 
; con_A644_E5                           = $E5 ; unused
con_A644_E6                             = $E6 ; 
con_A644_E7                             = $E7 ; 
con_A644_E8                             = $E8 ; 
con_A644_E9                             = $E9 ; 
con_A644_EA                             = $EA ; 
con_A644_EB                             = $EB ; 
con_A644_EC                             = $EC ; 
con_A644_ED                             = $ED ; 
con_A644_EE                             = $EE ; 
con_A644_EF                             = $EF ; 
; con_A644_F0                           = $F0 ; unused
con_A644_F1                             = $F1 ; 
con_A644_F2                             = $F2 ; 
con_A644_F3                             = $F3 ; 
; con_A644_F4                           = $F4 ; unused
con_A644_F5                             = $F5 ; 
con_A644_F6                             = $F6 ; 
con_A644_F7                             = $F7 ; 
con_A644_F8                             = $F8 ; 
con_A644_F9                             = $F9 ; 
con_A644_FA                             = $FA ; 
con_A644_FB                             = $FB ; 
con_A644_FC                             = $FC ; 
con_A644_FD                             = $FD ; 
