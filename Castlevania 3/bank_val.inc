; keep your global constant values inside this file



; todo
    ; найти buffer mode 0x03ED2D
    ; переименовать музыку и звуки
    ; найти индексы объектов, в частности 0x013A4E 0x013A56
        ; видимо индекс не отвечает в основном за графику и интеллект,
        ; но нет какого-то привычного мне обработчика интеллектов для
        ; всех индексов. возможно есть и другой адрес



; MISC
con_bzk_hack                            = $00 ; set to 01 before hacking
con_prg_bank                            = $00 ; 
con__chr_bank                           = $00 ; todo identify as bg/chr instead
con_chr_bank_bg                         = $00 ; 
con_chr_bank_spr                        = $00 ; 
con_index_all_items                     = $93 ; start index for all objects
con_index_Sypha_items                   = $98 ; start index for Sypha drops
con_obj_index_weapon                    = $13 ; weapons 13-16
con_obj_index_18                        = $18 ; 
con_obj_index_19                        = $19 ; 
con_obj_index_1A                        = $1A ; 
con_obj_index_1B                        = $1B ; 
con_max_obj_enemy_index                 = $12 ; enemies 01-12



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
; todo possible 0A at 0x0324D3 and 0x03257E
con_subweapon_none                      = $00 ; 
con_subweapon_axe                       = $01 ; Trevor only
con_subweapon_boomerang                 = $02 ; 
con_subweapon_dagger                    = $03 ; Trevor only
con_subweapon_holy_water                = $04 ; 
con_subweapon_fire_magic                = $05 ; 
con_subweapon_ice_magic                 = $06 ; 
con_subweapon_lightning_magic           = $07 ; 
con_subweapon_g_dagger                  = $08 ; Grant only
con_subweapon_g_axe                     = $09 ; Grant only
; con_subweapon_ball_of_destruction     = $0A ; Alucard only (todo)
con_subweapon_stopwatch                 = $0B ; 



; todo
; ram_ppu_buffer
; each mode is followed by 2006 lo, then 2006 hi
; bzk optimize, modes 01 and 02 probably have to do something
; with Japanese leftovers, delete their relevant codes
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



; todo
; ram_obj_id
con_obj_id_00                           = $00 ; 
con_obj_id_01                           = $01 ; 
con_obj_id_02                           = $02 ; 
con_obj_id_03                           = $03 ; 
con_obj_id_04                           = $04 ; 
con_obj_id_05                           = $05 ; 
con_obj_id_06                           = $06 ; 
con_obj_id_07                           = $07 ; lightning magic ball
con_obj_id_08                           = $08 ; 
con_obj_id_09                           = $09 ; 
con_obj_id_0A                           = $0A ; 
con_obj_id_0B                           = $0B ; 
con_obj_id_0C                           = $0C ; 
con_obj_id_0D                           = $0D ; rubble (destroyed hidden block stone piece)
con_obj_id_0E                           = $0E ; mummy
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
con_obj_id_21                           = $21 ; 
con_obj_id_22                           = $22 ; 
con_obj_id_23                           = $23 ; 
con_obj_id_24                           = $24 ; 
con_obj_id_25                           = $25 ; 
con_obj_id_26                           = $26 ; 
con_obj_id_27                           = $27 ; mummy projectile
con_obj_id_28                           = $28 ; 
con_obj_id_29                           = $29 ; 
con_obj_id_2A                           = $2A ; 
con_obj_id_2B                           = $2B ; 
con_obj_id_2C                           = $2C ; 
con_obj_id_2D                           = $2D ; 
con_obj_id_2E                           = $2E ; 
con_obj_id_2F                           = $2F ; 
con_obj_id_30                           = $30 ; 
con_obj_id_31                           = $31 ; 
con_obj_id_32                           = $32 ; 
con_obj_id_33                           = $33 ; 
con_obj_id_34                           = $34 ; 
con_obj_id_35                           = $35 ; 
con_obj_id_36                           = $36 ; 
con_obj_id_37                           = $37 ; 
con_obj_id_38                           = $38 ; 
con_obj_id_39                           = $39 ; 
con_obj_id_3A                           = $3A ; 
con_obj_id_3B                           = $3B ; 
con_obj_id_3C                           = $3C ; 
con_obj_id_3D                           = $3D ; 
con_obj_id_3E                           = $3E ; 
con_obj_id_3F                           = $3F ; 
con_obj_id_40                           = $40 ; 
con_obj_id_41                           = $41 ; 
con_obj_id_42                           = $42 ; 
con_obj_id_43                           = $43 ; 
con_obj_id_44                           = $44 ; 
con_obj_id_45                           = $45 ; 
con_obj_id_46                           = $46 ; 
con_obj_id_47                           = $47 ; 
con_obj_id_48                           = $48 ; zombie
con_obj_id_49                           = $49 ; 
con_obj_id_4A                           = $4A ; bat
con_obj_id_4B                           = $4B ; 
con_obj_id_4C                           = $4C ; 
con_obj_id_4D                           = $4D ; 
con_obj_id_4E                           = $4E ; 
con_obj_id_4F                           = $4F ; 
con_obj_id_50                           = $50 ; 
con_obj_id_51                           = $51 ; 
con_obj_id_52                           = $52 ; 
con_obj_id_53                           = $53 ; 
con_obj_id_54                           = $54 ; 
con_obj_id_55                           = $55 ; 
con_obj_id_56                           = $56 ; 
con_obj_id_57                           = $57 ; 
con_obj_id_58                           = $58 ; 
con_obj_id_59                           = $59 ; 
con_obj_id_5A                           = $5A ; 
con_obj_id_5B                           = $5B ; 
con_obj_id_5C                           = $5C ; 
con_obj_id_5D                           = $5D ; 
con_obj_id_5E                           = $5E ; 
con_obj_id_5F                           = $5F ; 
con_obj_id_60                           = $60 ; 
con_obj_id_61                           = $61 ; swamp frog
con_obj_id_62                           = $62 ; 
con_obj_id_63                           = $63 ; 
con_obj_id_64                           = $64 ; 
con_obj_id_65                           = $65 ; 
con_obj_id_66                           = $66 ; 
con_obj_id_67                           = $67 ; 
con_obj_id_68                           = $68 ; 
con_obj_id_69                           = $69 ; 
con_obj_id_6A                           = $6A ; 
con_obj_id_6B                           = $6B ; 
con_obj_id_6C                           = $6C ; 
con_obj_id_6D                           = $6D ; 
con_obj_id_6E                           = $6E ; 
con_obj_id_6F                           = $6F ; 
con_obj_id_70                           = $70 ; 
con_obj_id_71                           = $71 ; 
con_obj_id_72                           = $72 ; 
con_obj_id_73                           = $73 ; 
con_obj_id_74                           = $74 ; 
con_obj_id_75                           = $75 ; 
con_obj_id_76                           = $76 ; 
con_obj_id_77                           = $77 ; 
con_obj_id_78                           = $78 ; 
con_obj_id_79                           = $79 ; 
con_obj_id_7A                           = $7A ; 
con_obj_id_7B                           = $7B ; 
con_obj_id_7C                           = $7C ; 
con_obj_id_7D                           = $7D ; 
con_obj_id_7E                           = $7E ; 
con_obj_id_7F                           = $7F ; 
con_obj_id_80                           = $80 ; 
con_obj_id_81                           = $81 ; 
con_obj_id_82                           = $82 ; 
con_obj_id_83                           = $83 ; falling block from the sky
con_obj_id_84                           = $84 ; 
con_obj_id_85                           = $85 ; 
con_obj_id_86                           = $86 ; 
con_obj_id_87                           = $87 ; 
con_obj_id_88                           = $88 ; 
con_obj_id_89                           = $89 ; 
con_obj_id_8A                           = $8A ; 
con_obj_id_8B                           = $8B ; 
con_obj_id_8C                           = $8C ; 
con_obj_id_8D                           = $8D ; 
con_obj_id_8E                           = $8E ; 
con_obj_id_8F                           = $8F ; 
con_obj_id_90                           = $90 ; 2 candles
con_obj_id_91                           = $91 ; bonfire (big torch on the ground)
con_obj_id_92                           = $92 ; torch

; items
con_obj_id_93                           = $93 ; axe
con_obj_id_94                           = $94 ; boomerang
con_obj_id_95                           = $95 ; dagger
con_obj_id_96                           = $96 ; holy water
con_obj_id_97                           = $97 ; stopwatch
con_obj_id_98                           = $98 ; fire magic
con_obj_id_99                           = $99 ; ice magic
con_obj_id_9A                           = $9A ; lightning magic
con_obj_id_9B                           = $9B ; Grant dagger
con_obj_id_9C                           = $9C ; Grant axe
con_obj_id_9D                           = $9D ; weapon upgrade 1
con_obj_id_9E                           = $9E ; weapon upgrade 2
; con_obj_id_9F                         = $9F ; unused?
; con_obj_id_A0                         = $A0 ; unused?
con_obj_id_A1                           = $A1 ; invincibility potion
con_obj_id_A2                           = $A2 ; rosary
con_obj_id_A3                           = $A3 ; money bag 100
con_obj_id_A4                           = $A4 ; money bag 200
con_obj_id_A5                           = $A5 ; money bag 400
con_obj_id_A6                           = $A6 ; money bag 700
con_obj_id_A7                           = $A7 ; money bag 1000
con_obj_id_A8                           = $A8 ; money bag 2000 (unused?)
con_obj_id_A9                           = $A9 ; money bag 4000 (unused?)
con_obj_id_AA                           = $AA ; money bag 7000
; con_obj_id_AB                         = $AB ; money bag 10 (unused?)
con_obj_id_AC                           = $AC ; extra life
con_obj_id_AD                           = $AD ; big heart
con_obj_id_AE                           = $AE ; small heart
con_obj_id_AF                           = $AF ; multiplier II
con_obj_id_B0                           = $B0 ; multiplier III

; 
con_obj_id_B1                           = $B1 ; 
con_obj_id_B2                           = $B2 ; 
con_obj_id_B3                           = $B3 ; 
con_obj_id_B4                           = $B4 ; 
con_obj_id_B5                           = $B5 ; 
con_obj_id_B6                           = $B6 ; 
con_obj_id_B7                           = $B7 ; 
con_obj_id_B8                           = $B8 ; 
con_obj_id_B9                           = $B9 ; 
con_obj_id_BA                           = $BA ; 
con_obj_id_BB                           = $BB ; 
con_obj_id_BC                           = $BC ; 
con_obj_id_BD                           = $BD ; 
con_obj_id_BE                           = $BE ; 
con_obj_id_BF                           = $BF ; 
con_obj_id_C0                           = $C0 ; 
con_obj_id_C1                           = $C1 ; 
con_obj_id_C2                           = $C2 ; 
con_obj_id_C3                           = $C3 ; 
con_obj_id_C4                           = $C4 ; 
con_obj_id_C5                           = $C5 ; 
con_obj_id_C6                           = $C6 ; 
con_obj_id_C7                           = $C7 ; 
con_obj_id_C8                           = $C8 ; 
con_obj_id_C9                           = $C9 ; 
con_obj_id_CA                           = $CA ; 
con_obj_id_CB                           = $CB ; 
con_obj_id_CC                           = $CC ; 
con_obj_id_CD                           = $CD ; 
con_obj_id_CE                           = $CE ; 
con_obj_id_CF                           = $CF ; 
con_obj_id_D0                           = $D0 ; 
con_obj_id_D1                           = $D1 ; 
con_obj_id_D2                           = $D2 ; 
con_obj_id_D3                           = $D3 ; 
con_obj_id_D4                           = $D4 ; 
con_obj_id_D5                           = $D5 ; 
con_obj_id_D6                           = $D6 ; 
con_obj_id_D7                           = $D7 ; 
con_obj_id_D8                           = $D8 ; 
con_obj_id_D9                           = $D9 ; 
con_obj_id_DA                           = $DA ; 
con_obj_id_DB                           = $DB ; 
con_obj_id_DC                           = $DC ; 
con_obj_id_DD                           = $DD ; 
con_obj_id_DE                           = $DE ; 
con_obj_id_DF                           = $DF ; 
con_obj_id_E0                           = $E0 ; 
con_obj_id_E1                           = $E1 ; 
con_obj_id_E2                           = $E2 ; 
con_obj_id_E3                           = $E3 ; 
con_obj_id_E4                           = $E4 ; 
con_obj_id_E5                           = $E5 ; 
con_obj_id_E6                           = $E6 ; 
con_obj_id_E7                           = $E7 ; 
con_obj_id_E8                           = $E8 ; 
con_obj_id_E9                           = $E9 ; 
con_obj_id_EA                           = $EA ; 
con_obj_id_EB                           = $EB ; 
con_obj_id_EC                           = $EC ; 
con_obj_id_ED                           = $ED ; 
con_obj_id_EE                           = $EE ; 
con_obj_id_EF                           = $EF ; 
con_obj_id_F0                           = $F0 ; 
con_obj_id_F1                           = $F1 ; 
con_obj_id_F2                           = $F2 ; 
con_obj_id_F3                           = $F3 ; 
con_obj_id_F4                           = $F4 ; 
con_obj_id_F5                           = $F5 ; 
con_obj_id_F6                           = $F6 ; 
con_obj_id_F7                           = $F7 ; 
con_obj_id_F8                           = $F8 ; 
con_obj_id_F9                           = $F9 ; 
con_obj_id_FA                           = $FA ; 
con_obj_id_FB                           = $FB ; 
con_obj_id_FC                           = $FC ; 
con_obj_id_FD                           = $FD ; 
con_obj_id_FE                           = $FE ; 
con_obj_id_FF                           = $FF ; 



; ram_irq_handler
; ram_next_irq_handler
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
con_002A_go_through_door                = $08 ; 
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



; index for 0x03D76A
con_D75A_D0                             = $D0 ; 
con_D75A_D1                             = $D1 ; 
; con_D75A_D2                           = $D2 ; unused
con_D75A_D3                             = $D3 ; 



; ram_spawner_script
; handlers at 0x028537
; need comments 0x024521
; sp en = spawner enemies
con_sp_en_00                            = $00 ; 
con_sp_en_01                            = $01 ; 
con_sp_en_02                            = $02 ; 
con_sp_en_03                            = $03 ; 
con_sp_en_04                            = $04 ; 
con_sp_en_05                            = $05 ; 
con_sp_en_06                            = $06 ; 
con_sp_en_07                            = $07 ; 
con_sp_en_08                            = $08 ; 
con_sp_en_09                            = $09 ; 
con_sp_en_0A                            = $0A ; 
con_sp_en_0B                            = $0B ; 
con_sp_en_0C                            = $0C ; 
con_sp_en_0D                            = $0D ; 
con_sp_en_0E                            = $0E ; 
con_sp_en_0F                            = $0F ; 
con_sp_en_10                            = $10 ; 
con_sp_en_11                            = $11 ; 
con_sp_en_12                            = $12 ; 
con_sp_en_13                            = $13 ; 
con_sp_en_14                            = $14 ; 
con_sp_en_15                            = $15 ; 
con_sp_en_16                            = $16 ; 
con_sp_en_17                            = $17 ; 
con_sp_en_18                            = $18 ; 
con_sp_en_19                            = $19 ; 
con_sp_en_1A                            = $1A ; 
con_sp_en_1B                            = $1B ; 
con_sp_en_1C                            = $1C ; 
con_sp_en_1D                            = $1D ; 
con_sp_en_1E                            = $1E ; 
con_sp_en_1F                            = $1F ; 
con_sp_en_20                            = $20 ; 
con_sp_en_21                            = $21 ; 
; con_sp_en_22                          = $22 ; index exists but never used
con_sp_en_23                            = $23 ; 
con_sp_en_24                            = $24 ; 
con_sp_en_25                            = $25 ; ghost which revives bosses?
con_sp_en_26                            = $26 ; 
con_sp_en_27                            = $27 ; 
con_sp_en_28                            = $28 ; 
con_sp_en_29                            = $29 ; 
con_sp_en_2A                            = $2A ; 
con_sp_en_2B                            = $2B ; 
con_sp_en_2C                            = $2C ; 
con_sp_en_2D                            = $2D ; 
con_sp_en_2E                            = $2E ; 
; con_sp_en_2F                          = $2F ; unused
; con_sp_en_30                          = $30 ; unused
; con_sp_en_31                          = $31 ; unused
con_sp_en_32                            = $32 ; 
; con_sp_en_33                          = $33 ; unused
; con_sp_en_34                          = $34 ; unused
; con_sp_en_35                          = $35 ; unused
con_sp_en_36                            = $36 ; 
; con_sp_en_37                          = $37 ; unused
; con_sp_en_38                          = $38 ; unused
con_sp_en_39                            = $39 ; 
con_sp_en_3A                            = $3A ; 
con_sp_en_3B                            = $3B ; 
con_sp_en_3C                            = $3C ; swamp frog
con_sp_en_3D                            = $3D ; 
con_sp_en_3E                            = $3E ; 
con_sp_en_3F                            = $3F ; 
con_sp_en_40                            = $40 ; 
con_sp_en_41                            = $41 ; 
con_sp_en_42                            = $42 ; 
con_sp_en_43                            = $43 ; 
con_sp_en_44                            = $44 ; 
con_sp_en_45                            = $45 ; 
con_sp_en_46                            = $46 ; 
con_sp_en_47                            = $47 ; 
con_sp_en_48                            = $48 ; 
con_sp_en_49                            = $49 ; 
con_sp_en_4A                            = $4A ; 
con_sp_en_4B                            = $4B ; 
con_sp_en_4C                            = $4C ; 
con_sp_en_4D                            = $4D ; 
con_sp_en_4E                            = $4E ; 
con_sp_en_4F                            = $4F ; 
con_sp_en_50                            = $50 ; 
con_sp_en_51                            = $51 ; 
con_sp_en_52                            = $52 ; 



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
con_8277_03_delete_object               = $03 ; 
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
con_8671_34_create_object               = $34 ; 
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



; index for 0x02F7CD
con_B7BD_00                             = $00 ; 
con_B7BD_01                             = $01 ; 
con_B7BD_02                             = $02 ; 
con_B7BD_03                             = $03 ; 
con_B7BD_04                             = $04 ; 
con_B7BD_05                             = $05 ; 
con_B7BD_06                             = $06 ; 
; con_B7BD_07                           = $07 ; unused
con_B7BD_08                             = $08 ; 
; con_B7BD_09                           = $09 ; unused
con_B7BD_0A                             = $0A ; 
con_B7BD_0B                             = $0B ; 
con_B7BD_0C                             = $0C ; 
con_B7BD_0D                             = $0D ; 
con_B7BD_0E                             = $0E ; 



; index for several tables at 0x02CE7F
; con_8E6F_00                           = $00 ; unused
con_8E6F_01                             = $01 ; throwing axe by knight
con_8E6F_02                             = $02 ; 
con_8E6F_03                             = $03 ; 
con_8E6F_04                             = $04 ; bone by skeleton
con_8E6F_05                             = $05 ; 
con_8E6F_06                             = $06 ; 
con_8E6F_07                             = $07 ; 



; index for 0x02FD5F
; ai subscr = ai subscript
con_ai_subscr_00                        = $00 ; 
con_ai_subscr_01                        = $01 ; 
con_ai_subscr_02                        = $02 ; 
con_ai_subscr_03_clear_obj_flag_08      = $03 ; 
con_ai_subscr_04                        = $04 ; 
con_ai_subscr_05                        = $05 ; 
con_ai_subscr_06                        = $06 ; 
con_ai_subscr_07                        = $07 ; 
con_ai_subscr_08                        = $08 ; 
con_ai_subscr_09                        = $09 ; 
; con_ai_subscr_0A                      = $0A ; unused
con_ai_subscr_set_obj_type_and_anim     = $0B ; 
con_ai_subscr_comp_X_dist_to_plr        = $0C ; 
con_ai_subscr_0D                        = $0D ; 
con_ai_subscr_0E                        = $0E ; 
con_ai_subscr_0F                        = $0F ; 
con_ai_subscr_10                        = $10 ; 
con_ai_subscr_11                        = $11 ; 
con_ai_subscr_12                        = $12 ; 
con_ai_subscr_13                        = $13 ; 
con_ai_subscr_14                        = $14 ; 
con_ai_subscr_15                        = $15 ; 
con_ai_subscr_16                        = $16 ; 
con_ai_subscr_17                        = $17 ; 
con_ai_subscr_18_repeat_from_beginning  = $18 ; 
con_ai_subscr_19                        = $19 ; index exists but never used?
con_ai_subscr_1A_set_timer              = $1A ; 
con_ai_subscr_1B_count_down_timer       = $1B ; 
con_ai_subscr_1C                        = $1C ; 
con_ai_subscr_1D                        = $1D ; 
con_ai_subscr_1E                        = $1E ; 
con_ai_subscr_1F_set_timer              = $1F ; 
con_ai_subscr_20_count_down_timer       = $20 ; 
con_ai_subscr_21                        = $21 ; 
con_ai_subscr_22                        = $22 ; 
con_ai_subscr_23                        = $23 ; 
; con_ai_subscr_24                      = $24 ; unused
con_ai_subscr_25                        = $25 ; 
con_ai_subscr_26                        = $26 ; 
con_ai_subscr_delete_object             = $27 ; 
con_ai_subscr_28                        = $28 ; 
con_ai_subscr_29                        = $29 ; 
con_ai_subscr_2A_set_obj_flag_40        = $2A ; 
con_ai_subscr_invert_spd_X              = $2B ; 
con_ai_subscr_2C                        = $2C ; 
con_ai_subscr_2D_clear_f40_set_f20      = $2D ; 
con_ai_subscr_2E                        = $2E ; 
con_ai_subscr_2F                        = $2F ; 
con_ai_subscr_30                        = $30 ; 
; con_ai_subscr_31                      = $31 ; unused
con_ai_subscr_32                        = $32 ; 
con_ai_subscr_33                        = $33 ; 
con_ai_subscr_34                        = $34 ; 
con_ai_subscr_35                        = $35 ; 
con_ai_subscr_36                        = $36 ; 
con_ai_subscr_37                        = $37 ; 
con_ai_subscr_38_item_waits_for_pickup  = $38 ; pick up item before timer runs out and item dissapears
con_ai_subscr_39                        = $39 ; 
con_ai_subscr_3A                        = $3A ; 
con_ai_subscr_3B                        = $3B ; 
con_ai_subscr_3C_conditional_branch     = $3C ; 
con_ai_subscr_3D_conditional_branch     = $3D ; 
con_ai_subscr_3E                        = $3E ; 
con_ai_subscr_3F                        = $3F ; 
con_ai_subscr_40                        = $40 ; 
con_ai_subscr_41                        = $41 ; 
con_ai_subscr_42                        = $42 ; 
con_ai_subscr_43                        = $43 ; 
con_ai_subscr_44_conditional_branch     = $44 ; 
con_ai_subscr_water_splash              = $45 ; 
con_ai_subscr_46                        = $46 ; 
con_ai_subscr_47                        = $47 ; 
con_ai_subscr_48                        = $48 ; 
con_ai_subscr_49                        = $49 ; 
; con_ai_subscr_4A                      = $4A ; unused
; con_ai_subscr_4B                      = $4B ; unused
; con_ai_subscr_4C                      = $4C ; unused
con_ai_subscr_comp_XY_dist_to_plr       = $4D ; 
con_ai_subscr_4E                        = $4E ; 
con_ai_subscr_4F_set_item_anim_data     = $4F ; 
con_ai_subscr_50                        = $50 ; 
con_ai_subscr_51                        = $51 ; 
con_ai_subscr_52                        = $52 ; 
con_ai_subscr_53_clear_obj_flag_10      = $53 ; 
con_ai_subscr_54_set_obj_flag_10        = $54 ; 
con_ai_subscr_55                        = $55 ; 
con_ai_subscr_56                        = $56 ; 
con_ai_subscr_57                        = $57 ; 
con_ai_subscr_58                        = $58 ; 
con_ai_subscr_59                        = $59 ; 
con_ai_subscr_5A                        = $5A ; 
con_ai_subscr_5B                        = $5B ; 
con_ai_subscr_5C                        = $5C ; 
con_ai_subscr_5D                        = $5D ; 
con_ai_subscr_5E                        = $5E ; 
con_ai_subscr_5F                        = $5F ; 
con_ai_subscr_60                        = $60 ; 
con_ai_subscr_61                        = $61 ; 
con_ai_subscr_62                        = $62 ; 
con_ai_subscr_63                        = $63 ; 
con_ai_subscr_64_conditional_branch     = $64 ; only if following byte = 03
con_ai_subscr_65                        = $65 ; 
con_ai_subscr_66                        = $66 ; 
con_ai_subscr_67                        = $67 ; 
con_ai_subscr_68                        = $68 ; 
con_ai_subscr_69                        = $69 ; 
con_ai_subscr_6A                        = $6A ; 
con_ai_subscr_6B                        = $6B ; 
con_ai_subscr_play_sound                = $6C ; 
con_ai_subscr_6D                        = $6D ; 
con_ai_subscr_6E                        = $6E ; 
con_ai_subscr_6F                        = $6F ; 
con_ai_subscr_70                        = $70 ; 
; con_ai_subscr_71                      = $71 ; unused
; con_ai_subscr_72                      = $72 ; unused
con_ai_subscr_73                        = $73 ; 
con_ai_subscr_74                        = $74 ; 
con_ai_subscr_75_infinte_loop           = $75 ; 
con_ai_subscr_76                        = $76 ; 
con_ai_subscr_77                        = $77 ; 
con_ai_subscr_78                        = $78 ; 
con_ai_subscr_79                        = $79 ; 
con_ai_subscr_7A                        = $7A ; 
con_ai_subscr_7B                        = $7B ; 
con_ai_subscr_7C_conditional_branch     = $7C ; 
con_ai_subscr_7D                        = $7D ; 
con_ai_subscr_7E                        = $7E ; 
con_ai_subscr_7F                        = $7F ; 
con_ai_subscr_80                        = $80 ; 
con_ai_subscr_81_dec_spd_Y_while_timer  = $81 ; 
con_ai_subscr_82                        = $82 ; 
con_ai_subscr_83                        = $83 ; 
con_ai_subscr_84                        = $84 ; 
con_ai_subscr_85                        = $85 ; 
con_ai_subscr_86                        = $86 ; 
con_ai_subscr_87                        = $87 ; 
con_ai_subscr_88                        = $88 ; 
con_ai_subscr_89                        = $89 ; 
con_ai_subscr_8A                        = $8A ; 
con_ai_subscr_8B                        = $8B ; 
con_ai_subscr_8C                        = $8C ; 
con_ai_subscr_8D                        = $8D ; 
con_ai_subscr_8E                        = $8E ; 
con_ai_subscr_8F                        = $8F ; 
con_ai_subscr_90                        = $90 ; 
con_ai_subscr_91                        = $91 ; 
con_ai_subscr_92_Harpy_drops_enemy      = $92 ; 
con_ai_subscr_93                        = $93 ; 
con_ai_subscr_94                        = $94 ; 
con_ai_subscr_95                        = $95 ; 
con_ai_subscr_96                        = $96 ; 
con_ai_subscr_97_clear_XY_speed         = $97 ; 
con_ai_subscr_98                        = $98 ; 
con_ai_subscr_99                        = $99 ; 
con_ai_subscr_9A                        = $9A ; 
con_ai_subscr_9B                        = $9B ; 
con_ai_subscr_9C                        = $9C ; 
con_ai_subscr_9D                        = $9D ; 
con_ai_subscr_9E                        = $9E ; 
con_ai_subscr_check_dist_Y_30_to_plr    = $9F ; 
con_ai_subscr_A0                        = $A0 ; 
con_ai_subscr_A1                        = $A1 ; 
con_ai_subscr_A2                        = $A2 ; 
con_ai_subscr_A3                        = $A3 ; 
con_ai_subscr_A4                        = $A4 ; 
con_ai_subscr_A5                        = $A5 ; 
con_ai_subscr_A6                        = $A6 ; 
con_ai_subscr_A7                        = $A7 ; 
con_ai_subscr_A8_delete_object          = $A8 ; 



; sounds
; need comments at 0x030F3E
con_sfx_01                              = $01 ; 
con_sfx_02                              = $02 ; 
con_sfx_03                              = $03 ; 
con_sfx_04                              = $04 ; 
con_sfx_05                              = $05 ; 
con_sfx_06                              = $06 ; 
con_sfx_07                              = $07 ; 
con_sfx_08                              = $08 ; 
con_sfx_step                            = $09 ; walking during map screen
con_sfx_0A                              = $0A ; 
con_sfx_land                            = $0B ; after falling on the ground
con_sfx_door                            = $0C ; open/close
con_sfx_0D                              = $0D ; 
con_sfx_0E                              = $0E ; 
con_sfx_0F                              = $0F ; 
con_sfx_10                              = $10 ; 
con_sfx_block                           = $11 ; block has landed/block was crumbled/fast screen scroll
con_sfx_12                              = $12 ; 
con_sfx_throw_axe                       = $13 ; 
con_sfx_throw_dagger                    = $14 ; 
con_sfx_15                              = $15 ; 
con_sfx_16                              = $16 ; 
con_sfx_invincibility                   = $17 ; pick up invincibility potion
con_sfx_pick_up_money                   = $18 ; 
con_sfx_score_count                     = $19 ; after stage is completed
con_sfx_heart_count                     = $1A ; after stage is completed, also cursor when entering name
con_sfx_pick_up_heart                   = $1B ; alsh when selecting a letter during name entering
con_sfx_pick_up_weapon                  = $1C ; 
; con_sfx_1D                            = $1D ; unused
con_sfx_1E                              = $1E ; = 21
con_sfx_ball_of_destruction             = $1F ; Alucard weapon
con_sfx_20                              = $20 ; 
con_sfx_21                              = $21 ; = 1E
con_sfx_water_splash_1                  = $22 ; 
con_sfx_water_splash_2                  = $23 ; 
con_sfx_24                              = $24 ; 
con_sfx_25                              = $25 ; 
con_sfx_26                              = $26 ; 
con_sfx_kill_enemy                      = $27 ; 
con_sfx_28                              = $28 ; 
con_sfx_hit_enemy                       = $29 ; 
con_sfx_2A                              = $2A ; 
con_sfx_2B                              = $2B ; 
con_sfx_pick_up_meat                    = $2C ; also when restoring hp after stage is complete
con_sfx_2D                              = $2D ; 
con_sfx_thunder                         = $2E ; 
con_sfx_2F                              = $2F ; 
con_sfx_30                              = $30 ; 
con_sfx_31                              = $31 ; 
con_sfx_32                              = $32 ; 
con_sfx_destroy_candle                  = $33 ; 
con_sfx_destroy_block                   = $34 ; 
con_sfx_35                              = $35 ; 
con_sfx_rotate_platform                 = $36 ; it rotates when jumping on it 
con_sfx_37                              = $37 ; = 39
con_sfx_38                              = $38 ; 
con_sfx_39                              = $39 ; = 37
con_sfx_earthshake                      = $3A ; 
con_sfx_3B                              = $3B ; 
con_sfx_stopwatch_tick                  = $3C ; subweapon
con_sfx_3D                              = $3D ; 
con_sfx_3E                              = $3E ; 
con_sfx_3F                              = $3F ; 
con_sfx_wrong_psw                       = $40 ; 
con_sfx_boss_to_partner                 = $41 ; defeated boss is transforming into partner
con_sfx_42                              = $42 ; 
con_sfx_43                              = $43 ; 
con_sfx_44                              = $44 ; 
con_sfx_45                              = $45 ; 
con_sfx_swap_player                     = $46 ; 
con_sfx_47                              = $47 ; 
con_sfx_orb                             = $48 ; orb falls down when boss is defeated
con_sfx_low_time                        = $49 ; 
con_sfx_pick_up_rosary                  = $4A ; 
con_sfx_extra_life                      = $4B ; 
con_sfx_handshake                       = $4C ; player agrees to take partner with him
con_sfx_4D                              = $4D ; 

; music
con_music_death                         = $4E ; 
con_music_beginning                     = $4F ; blk music
con_music_mad_forest                    = $50 ; blk music
con_music_stream                        = $51 ; blk music
con_music_dead_beat                     = $52 ; blk music
con_music_clockwork                     = $53 ; blk music
con_music_aquarius                      = $54 ; blk music = 5A
con_music_rising                        = $55 ; blk music
con_music_anxiety                       = $56 ; blk music = 59
con_music_nightmare                     = $57 ; blk music
con_music_demon_seed                    = $58 ; blk music
con_music_copy_anxiety                  = $59 ; blk music = 56
con_music_copy_aquarius                 = $5A ; blk music = 54
con_music_dejavu                        = $5B ; blk music
con_music_riddle                        = $5C ; blk music
con_music_copy_pressure                 = $5D ; blk music = 6A
con_music_overture                      = $5E ; blk music
con_music_boss_fight                    = $5F ; 
con_music_big_battle_1                  = $60 ; final boss, 2nd phase (brain head)
con_music_big_battle_2                  = $61 ; final boss, 3rd phase (giant dude)
con_music_epiraph                       = $62 ; enter name/password screen
con_music_blk_clear                     = $63 ; 
con_music_all_clear                     = $64 ; 
con_music_game_over                     = $65 ; 
con_music_prelude                       = $66 ; title screen at the beginning
con_music_prayer                        = $67 ; 
con_music_evergreen                     = $68 ; 
con_music_flash_back                    = $69 ; 
con_music_pressure                      = $6A ; = 5D
con_music_encounter                     = $6B ; partner is talking
con_music_destiny                       = $6C ; title screen

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
; is there a 80 value? see 0x02905C
con_ai_script_00                        = $00 ; 
con_ai_script_01                        = $01 ; 
con_ai_script_02                        = $02 ; 
con_ai_script_03                        = $03 ; 
con_ai_script_04                        = $04 ; 
con_ai_script_05                        = $05 ; 
con_ai_script_06                        = $06 ; 
con_ai_script_07                        = $07 ; 
con_ai_script_08                        = $08 ; 
con_ai_script_09                        = $09 ; 
con_ai_script_0A                        = $0A ; 
con_ai_script_0B                        = $0B ; 
con_ai_script_0C                        = $0C ; 
con_ai_script_0D                        = $0D ; 
con_ai_script_0E                        = $0E ; 
con_ai_script_0F                        = $0F ; 
con_ai_script_10                        = $10 ; 
con_ai_script_11                        = $11 ; 
con_ai_script_12                        = $12 ; 
con_ai_script_13                        = $13 ; 
con_ai_script_14                        = $14 ; 
con_ai_script_15                        = $15 ; 
con_ai_script_16                        = $16 ; 
con_ai_script_17                        = $17 ; 
con_ai_script_18                        = $18 ; 
con_ai_script_19                        = $19 ; 
con_ai_script_1A                        = $1A ; 
con_ai_script_1B                        = $1B ; 
con_ai_script_1C                        = $1C ; 
con_ai_script_1D                        = $1D ; 
con_ai_script_1E                        = $1E ; 
con_ai_script_1F                        = $1F ; 
con_ai_script_20                        = $20 ; 
con_ai_script_21                        = $21 ; 
con_ai_script_22                        = $22 ; 
con_ai_script_23                        = $23 ; 
con_ai_script_24                        = $24 ; 
con_ai_script_25                        = $25 ; 
con_ai_script_swamp_frog                = $26 ; 
con_ai_script_27                        = $27 ; 
con_ai_script_28                        = $28 ; 
con_ai_script_29                        = $29 ; 
con_ai_script_2A                        = $2A ; 
con_ai_script_2B                        = $2B ; 
con_ai_script_2C                        = $2C ; 
con_ai_script_2D                        = $2D ; 
con_ai_script_2E                        = $2E ; 
con_ai_script_2F                        = $2F ; 
con_ai_script_30                        = $30 ; 
con_ai_script_31                        = $31 ; 
con_ai_script_32                        = $32 ; 
con_ai_script_33                        = $33 ; 
con_ai_script_34                        = $34 ; 
con_ai_script_35                        = $35 ; 
con_ai_script_36                        = $36 ; 
con_ai_script_37                        = $37 ; 
con_ai_script_38                        = $38 ; 
con_ai_script_39                        = $39 ; 
con_ai_script_3A                        = $3A ; 
con_ai_script_3B                        = $3B ; 
con_ai_script_3C                        = $3C ; 
con_ai_script_3D                        = $3D ; 
con_ai_script_3E                        = $3E ; 
con_ai_script_3F                        = $3F ; 
con_ai_script_40                        = $40 ; 
con_ai_script_41                        = $41 ; 
con_ai_script_42                        = $42 ; 
con_ai_script_43                        = $43 ; 
con_ai_script_44                        = $44 ; 
con_ai_script_45                        = $45 ; 
con_ai_script_46                        = $46 ; 
con_ai_script_47                        = $47 ; 
con_ai_script_48                        = $48 ; 
con_ai_script_49                        = $49 ; 
con_ai_script_4A                        = $4A ; 
con_ai_script_4B                        = $4B ; 
con_ai_script_4C                        = $4C ; 
con_ai_script_4D                        = $4D ; 
con_ai_script_4E                        = $4E ; 
con_ai_script_4F                        = $4F ; 
con_ai_script_50                        = $50 ; 
con_ai_script_51                        = $51 ; 
con_ai_script_52                        = $52 ; 
con_ai_script_53                        = $53 ; 
con_ai_script_54                        = $54 ; 
con_ai_script_55                        = $55 ; 
con_ai_script_56                        = $56 ; 
con_ai_script_57                        = $57 ; 
con_ai_script_58                        = $58 ; 
con_ai_script_59                        = $59 ; projectile with boomerang properties
con_ai_script_5A                        = $5A ; 
con_ai_script_5B                        = $5B ; 
con_ai_script_5C                        = $5C ; 
con_ai_script_5D                        = $5D ; 
con_ai_script_5E                        = $5E ; 
con_ai_script_5F                        = $5F ; 
con_ai_script_60                        = $60 ; 
con_ai_script_61                        = $61 ; 
con_ai_script_62                        = $62 ; 
con_ai_script_63                        = $63 ; 
con_ai_script_64                        = $64 ; 
con_ai_script_65                        = $65 ; 
con_ai_script_66                        = $66 ; 
con_ai_script_67                        = $67 ; 
con_ai_script_68                        = $68 ; 
con_ai_script_69                        = $69 ; 
con_ai_script_6A                        = $6A ; 
con_ai_script_6B                        = $6B ; 
con_ai_script_6C                        = $6C ; 
con_ai_script_6D                        = $6D ; 
con_ai_script_6E                        = $6E ; 
con_ai_script_6F                        = $6F ; 
con_ai_script_70                        = $70 ; 
con_ai_script_71                        = $71 ; 
con_ai_script_72                        = $72 ; 



; index for 0x02A04F
; sp tpl = spawner template
con_sp_tpl_00                           = $00 ; 
con_sp_tpl_01                           = $01 ; 
con_sp_tpl_02                           = $02 ; 
con_sp_tpl_03                           = $03 ; 
con_sp_tpl_04                           = $04 ; 
con_sp_tpl_05                           = $05 ; 
con_sp_tpl_06                           = $06 ; 
con_sp_tpl_07                           = $07 ; 
con_sp_tpl_08                           = $08 ; 
con_sp_tpl_09                           = $09 ; 
con_sp_tpl_0A                           = $0A ; 
con_sp_tpl_0B                           = $0B ; 
; con_sp_tpl_0C                         = $0C ; unused
; con_sp_tpl_0D                         = $0D ; unused
con_sp_tpl_0E                           = $0E ; 
con_sp_tpl_0F                           = $0F ; 
con_sp_tpl_10                           = $10 ; 
con_sp_tpl_11                           = $11 ; 
; con_sp_tpl_12                         = $12 ; unused
con_sp_tpl_13                           = $13 ; 
con_sp_tpl_14                           = $14 ; 
con_sp_tpl_15                           = $15 ; 
con_sp_tpl_16                           = $16 ; 
con_sp_tpl_17                           = $17 ; 
; con_sp_tpl_18                         = $18 ; unused
; con_sp_tpl_19                         = $19 ; unused
; con_sp_tpl_1A                         = $1A ; unused
con_sp_tpl_1B                           = $1B ; 
con_sp_tpl_1C                           = $1C ; 
con_sp_tpl_1D                           = $1D ; 
con_sp_tpl_1E                           = $1E ; 
con_sp_tpl_1F                           = $1F ; 
con_sp_tpl_20                           = $20 ; 
con_sp_tpl_21                           = $21 ; 
con_sp_tpl_22                           = $22 ; 
con_sp_tpl_23                           = $23 ; 
con_sp_tpl_24                           = $24 ; 
; con_sp_tpl_25                         = $25 ; unused
con_sp_tpl_26                           = $26 ; 
con_sp_tpl_27                           = $27 ; 
; con_sp_tpl_28                         = $28 ; unused
con_sp_tpl_29                           = $29 ; 
; con_sp_tpl_2A                         = $2A ; unused
con_sp_tpl_2B                           = $2B ; 
con_sp_tpl_2C                           = $2C ; 
con_sp_tpl_2D                           = $2D ; 
con_sp_tpl_2E                           = $2E ; 
con_sp_tpl_2F                           = $2F ; 
con_sp_tpl_30                           = $30 ; 
con_sp_tpl_31                           = $31 ; 
con_sp_tpl_32                           = $32 ; 
con_sp_tpl_33                           = $33 ; 
con_sp_tpl_34                           = $34 ; 
con_sp_tpl_35                           = $35 ; 
con_sp_tpl_36                           = $36 ; 
con_sp_tpl_37                           = $37 ; 
con_sp_tpl_38                           = $38 ; 
con_sp_tpl_39                           = $39 ; 
con_sp_tpl_3A                           = $3A ; 
con_sp_tpl_3B                           = $3B ; 
con_sp_tpl_3C                           = $3C ; 
con_sp_tpl_3D                           = $3D ; 
con_sp_tpl_3E                           = $3E ; 
con_sp_tpl_3F                           = $3F ; 
con_sp_tpl_40                           = $40 ; 
con_sp_tpl_41                           = $41 ; 
; con_sp_tpl_42                         = $42 ; unused
; con_sp_tpl_43                         = $43 ; unused
con_sp_tpl_44                           = $44 ; 
con_sp_tpl_45                           = $45 ; 
con_sp_tpl_46                           = $46 ; 
con_sp_tpl_47                           = $47 ; 
con_sp_tpl_48                           = $48 ; 
; con_sp_tpl_49                         = $49 ; unused
con_sp_tpl_4A                           = $4A ; 
con_sp_tpl_4B                           = $4B ; 
; con_sp_tpl_4C                         = $4C ; unused
; con_sp_tpl_4D                         = $4D ; unused
con_sp_tpl_4E                           = $4E ; 
con_sp_tpl_4F                           = $4F ; 
con_sp_tpl_50                           = $50 ; 
con_sp_tpl_51                           = $51 ; 
; con_sp_tpl_52                         = $52 ; unused
con_sp_tpl_53                           = $53 ; 
con_sp_tpl_54                           = $54 ; 
con_sp_tpl_55                           = $55 ; 
con_sp_tpl_56                           = $56 ; 
con_sp_tpl_57                           = $57 ; 
con_sp_tpl_58                           = $58 ; 
con_sp_tpl_59                           = $59 ; 
con_sp_tpl_5A                           = $5A ; 
; con_sp_tpl_5B                         = $5B ; unused
con_sp_tpl_5C                           = $5C ; 
con_sp_tpl_5D                           = $5D ; 
con_sp_tpl_5E                           = $5E ; 
con_sp_tpl_5F                           = $5F ; 
con_sp_tpl_60                           = $60 ; 
con_sp_tpl_61                           = $61 ; 
con_sp_tpl_62                           = $62 ; 
con_sp_tpl_63                           = $63 ; 
con_sp_tpl_64                           = $64 ; 
con_sp_tpl_65                           = $65 ; 
con_sp_tpl_66                           = $66 ; 
con_sp_tpl_67                           = $67 ; 
con_sp_tpl_68                           = $68 ; 
con_sp_tpl_69                           = $69 ; 
con_sp_tpl_6A                           = $6A ; 
con_sp_tpl_6B                           = $6B ; 
con_sp_tpl_swamp_frog                   = $6C ; 
; con_sp_tpl_6D                         = $6D ; unused
con_sp_tpl_6E                           = $6E ; 
con_sp_tpl_6F                           = $6F ; 
con_sp_tpl_70                           = $70 ; 
con_sp_tpl_71                           = $71 ; 
con_sp_tpl_72                           = $72 ; 
; con_sp_tpl_73                         = $73 ; unused
con_sp_tpl_74                           = $74 ; 
con_sp_tpl_75                           = $75 ; 
; con_sp_tpl_76                         = $76 ; unused
con_sp_tpl_77                           = $77 ; 
con_sp_tpl_78                           = $78 ; 
con_sp_tpl_79                           = $79 ; 
con_sp_tpl_7A                           = $7A ; 
; con_sp_tpl_7B                         = $7B ; unused
con_sp_tpl_7C                           = $7C ; 
con_sp_tpl_7D                           = $7D ; 
con_sp_tpl_7E                           = $7E ; 
con_sp_tpl_7F                           = $7F ; 
con_sp_tpl_80                           = $80 ; 
; con_sp_tpl_81                         = $81 ; unused
con_sp_tpl_82                           = $82 ; 
con_sp_tpl_83                           = $83 ; 
; con_sp_tpl_84                         = $84 ; unused
con_sp_tpl_85                           = $85 ; 
con_sp_tpl_86                           = $86 ; 
con_sp_tpl_87                           = $87 ; 
con_sp_tpl_88                           = $88 ; 
con_sp_tpl_89                           = $89 ; 
con_sp_tpl_8A                           = $8A ; 
con_sp_tpl_8B                           = $8B ; 
con_sp_tpl_8C                           = $8C ; 
con_sp_tpl_8D                           = $8D ; 
con_sp_tpl_8E                           = $8E ; 
con_sp_tpl_8F                           = $8F ; 
con_sp_tpl_90                           = $90 ; 
; con_sp_tpl_91                         = $91 ; unused
con_sp_tpl_92                           = $92 ; 
con_sp_tpl_93                           = $93 ; 
con_sp_tpl_94                           = $94 ; 
con_sp_tpl_95                           = $95 ; 
con_sp_tpl_96                           = $96 ; 
; con_sp_tpl_97                         = $97 ; unused
con_sp_tpl_98                           = $98 ; 
con_sp_tpl_99                           = $99 ; 
con_sp_tpl_9A                           = $9A ; 
con_sp_tpl_9B                           = $9B ; 
con_sp_tpl_9C                           = $9C ; 
con_sp_tpl_9D                           = $9D ; 
; con_sp_tpl_9E                         = $9E ; unused
con_sp_tpl_9F                           = $9F ; 
con_sp_tpl_A0                           = $A0 ; 
; con_sp_tpl_A1                         = $A1 ; unused
con_sp_tpl_A2                           = $A2 ; 
con_sp_tpl_A3                           = $A3 ; 
con_sp_tpl_A4                           = $A4 ; 
con_sp_tpl_A5                           = $A5 ; 
con_sp_tpl_A6                           = $A6 ; 
con_sp_tpl_A7                           = $A7 ; 
con_sp_tpl_A8                           = $A8 ; 
con_sp_tpl_A9                           = $A9 ; 
con_sp_tpl_AA                           = $AA ; 
con_sp_tpl_AB                           = $AB ; 
con_sp_tpl_AC                           = $AC ; 
con_sp_tpl_AD                           = $AD ; 
con_sp_tpl_AE                           = $AE ; 
con_sp_tpl_AF                           = $AF ; 
con_sp_tpl_B0                           = $B0 ; 
con_sp_tpl_B1                           = $B1 ; 
con_sp_tpl_B2                           = $B2 ; 
con_sp_tpl_B3                           = $B3 ; 
; con_sp_tpl_B4                         = $B4 ; unused
con_sp_tpl_B5                           = $B5 ; 
con_sp_tpl_B6                           = $B6 ; 
; con_sp_tpl_B7                         = $B7 ; unused
; con_sp_tpl_B8                         = $B8 ; unused
con_sp_tpl_B9                           = $B9 ; 
con_sp_tpl_BA                           = $BA ; 
con_sp_tpl_BB                           = $BB ; 
con_sp_tpl_BC                           = $BC ; 
con_sp_tpl_BD                           = $BD ; 
con_sp_tpl_BE                           = $BE ; 
con_sp_tpl_BF                           = $BF ; 
con_sp_tpl_C0                           = $C0 ; 
con_sp_tpl_C1                           = $C1 ; 
con_sp_tpl_C2                           = $C2 ; 
con_sp_tpl_C3                           = $C3 ; 
con_sp_tpl_C4                           = $C4 ; 
con_sp_tpl_C5                           = $C5 ; 
con_sp_tpl_C6                           = $C6 ; 
; con_sp_tpl_C7                         = $C7 ; unused
; con_sp_tpl_C8                         = $C8 ; unused
; con_sp_tpl_C9                         = $C9 ; unused
; con_sp_tpl_CA                         = $CA ; unused
; con_sp_tpl_CB                         = $CB ; unused
; con_sp_tpl_CC                         = $CC ; unused
; con_sp_tpl_CD                         = $CD ; unused
; con_sp_tpl_CE                         = $CE ; unused
; con_sp_tpl_CF                         = $CF ; unused
con_sp_tpl_D0                           = $D0 ; 
con_sp_tpl_D1                           = $D1 ; 
con_sp_tpl_D2                           = $D2 ; 
con_sp_tpl_D3                           = $D3 ; 
con_sp_tpl_D4                           = $D4 ; 
con_sp_tpl_D5                           = $D5 ; 
con_sp_tpl_D6                           = $D6 ; 
con_sp_tpl_D7                           = $D7 ; 
con_sp_tpl_D8                           = $D8 ; 
con_sp_tpl_D9                           = $D9 ; 
con_sp_tpl_DA                           = $DA ; 
con_sp_tpl_DB                           = $DB ; 
con_sp_tpl_DC                           = $DC ; 
; con_sp_tpl_DD                         = $DD ; unused
con_sp_tpl_DE                           = $DE ; 
; con_sp_tpl_DF                         = $DF ; unused
con_sp_tpl_E0                           = $E0 ; 
con_sp_tpl_E1                           = $E1 ; 
con_sp_tpl_E2                           = $E2 ; 
con_sp_tpl_E3                           = $E3 ; 



; index for 0x02A654
; spawner candles
con_sp_cndl_00                          = $00 ; 
; con_sp_cndl_01                        = $01 ; unused
con_sp_cndl_02                          = $02 ; 
; con_sp_cndl_03                        = $03 ; unused
; con_sp_cndl_04                        = $04 ; unused
con_sp_cndl_05                          = $05 ; 
; con_sp_cndl_06                        = $06 ; unused
con_sp_cndl_07                          = $07 ; 
con_sp_cndl_08                          = $08 ; 
; con_sp_cndl_09                        = $09 ; unused
con_sp_cndl_0A                          = $0A ; 
con_sp_cndl_0B                          = $0B ; 
con_sp_cndl_0C                          = $0C ; 
con_sp_cndl_0D                          = $0D ; 
; con_sp_cndl_0E                        = $0E ; unused
con_sp_cndl_0F                          = $0F ; 
con_sp_cndl_10                          = $10 ; 
con_sp_cndl_11                          = $11 ; 
con_sp_cndl_12                          = $12 ; 
con_sp_cndl_13                          = $13 ; 
; con_sp_cndl_14                        = $14 ; unused
con_sp_cndl_15                          = $15 ; 
con_sp_cndl_16                          = $16 ; 
con_sp_cndl_17                          = $17 ; 
; con_sp_cndl_18                        = $18 ; unused
con_sp_cndl_19                          = $19 ; 
con_sp_cndl_1A                          = $1A ; 
con_sp_cndl_1B                          = $1B ; 
con_sp_cndl_1C                          = $1C ; 
con_sp_cndl_1D                          = $1D ; 
con_sp_cndl_1E                          = $1E ; 
con_sp_cndl_1F                          = $1F ; 
con_sp_cndl_20                          = $20 ; 
con_sp_cndl_21                          = $21 ; 
con_sp_cndl_22                          = $22 ; 
con_sp_cndl_23                          = $23 ; 
con_sp_cndl_24                          = $24 ; 
con_sp_cndl_25                          = $25 ; 
con_sp_cndl_26                          = $26 ; 
con_sp_cndl_27                          = $27 ; 
; con_sp_cndl_28                        = $28 ; unused
con_sp_cndl_29                          = $29 ; 
; con_sp_cndl_2A                        = $2A ; unused
; con_sp_cndl_2B                        = $2B ; unused
con_sp_cndl_2C                          = $2C ; 
con_sp_cndl_2D                          = $2D ; 
con_sp_cndl_2E                          = $2E ; 
con_sp_cndl_2F                          = $2F ; 
con_sp_cndl_30                          = $30 ; 
con_sp_cndl_31                          = $31 ; 
con_sp_cndl_32                          = $32 ; 
con_sp_cndl_33                          = $33 ; 
con_sp_cndl_34                          = $34 ; 
con_sp_cndl_35                          = $35 ; 
; con_sp_cndl_36                        = $36 ; unused
con_sp_cndl_37                          = $37 ; 
con_sp_cndl_38                          = $38 ; 
con_sp_cndl_39                          = $39 ; 
con_sp_cndl_3A                          = $3A ; 
con_sp_cndl_3B                          = $3B ; 
con_sp_cndl_3C                          = $3C ; 
con_sp_cndl_3D                          = $3D ; 
con_sp_cndl_3E                          = $3E ; 
con_sp_cndl_3F                          = $3F ; 
; con_sp_cndl_40                        = $40 ; unused
con_sp_cndl_41                          = $41 ; 
con_sp_cndl_42                          = $42 ; 
con_sp_cndl_43                          = $43 ; 
; con_sp_cndl_44                        = $44 ; unused
con_sp_cndl_45                          = $45 ; 
con_sp_cndl_46                          = $46 ; 
con_sp_cndl_47                          = $47 ; 
con_sp_cndl_48                          = $48 ; 
con_sp_cndl_49                          = $49 ; 
; con_sp_cndl_4A                        = $4A ; unused
con_sp_cndl_4B                          = $4B ; 
con_sp_cndl_4C                          = $4C ; 
con_sp_cndl_4D                          = $4D ; 
; con_sp_cndl_4E                        = $4E ; unused
con_sp_cndl_4F                          = $4F ; 
con_sp_cndl_50                          = $50 ; 
con_sp_cndl_51                          = $51 ; 
; con_sp_cndl_52                        = $52 ; unused
con_sp_cndl_53                          = $53 ; 
con_sp_cndl_54                          = $54 ; 
; con_sp_cndl_55                        = $55 ; unused
; con_sp_cndl_56                        = $56 ; unused
con_sp_cndl_57                          = $57 ; 
con_sp_cndl_58                          = $58 ; 
con_sp_cndl_59                          = $59 ; 
con_sp_cndl_5A                          = $5A ; 
con_sp_cndl_5B                          = $5B ; 
con_sp_cndl_5C                          = $5C ; 
con_sp_cndl_5D                          = $5D ; 
con_sp_cndl_5E                          = $5E ; 
con_sp_cndl_5F                          = $5F ; 
con_sp_cndl_60                          = $60 ; 
con_sp_cndl_61                          = $61 ; 
con_sp_cndl_62                          = $62 ; 
con_sp_cndl_63                          = $63 ; 
con_sp_cndl_64                          = $64 ; 
con_sp_cndl_65                          = $65 ; 
con_sp_cndl_66                          = $66 ; 
con_sp_cndl_67                          = $67 ; 
con_sp_cndl_68                          = $68 ; 
con_sp_cndl_69                          = $69 ; 
con_sp_cndl_6A                          = $6A ; 
con_sp_cndl_6B                          = $6B ; 
con_sp_cndl_6C                          = $6C ; 
con_sp_cndl_6D                          = $6D ; 
con_sp_cndl_6E                          = $6E ; 
con_sp_cndl_6F                          = $6F ; 
; con_sp_cndl_70                        = $70 ; unused
con_sp_cndl_71                          = $71 ; 
con_sp_cndl_72                          = $72 ; 
con_sp_cndl_73                          = $73 ; 
con_sp_cndl_74                          = $74 ; 
con_sp_cndl_75                          = $75 ; 
con_sp_cndl_76                          = $76 ; 
con_sp_cndl_77                          = $77 ; 
con_sp_cndl_78                          = $78 ; 
con_sp_cndl_79                          = $79 ; 
con_sp_cndl_7A                          = $7A ; 
con_sp_cndl_7B                          = $7B ; 
con_sp_cndl_7C                          = $7C ; 
con_sp_cndl_7D                          = $7D ; 
con_sp_cndl_7E                          = $7E ; 
con_sp_cndl_7F                          = $7F ; 
; con_sp_cndl_80                        = $80 ; unused
con_sp_cndl_81                          = $81 ; 
con_sp_cndl_82                          = $82 ; 
; con_sp_cndl_83                        = $83 ; unused
con_sp_cndl_84                          = $84 ; 
; con_sp_cndl_85                        = $85 ; unused
con_sp_cndl_86                          = $86 ; 
con_sp_cndl_87                          = $87 ; 
con_sp_cndl_88                          = $88 ; 
con_sp_cndl_89                          = $89 ; 
con_sp_cndl_8A                          = $8A ; 
con_sp_cndl_8B                          = $8B ; 
con_sp_cndl_8C                          = $8C ; 
; con_sp_cndl_8D                        = $8D ; unused
con_sp_cndl_8E                          = $8E ; 
con_sp_cndl_8F                          = $8F ; 
con_sp_cndl_90                          = $90 ; 
con_sp_cndl_91                          = $91 ; 
con_sp_cndl_92                          = $92 ; 
con_sp_cndl_93                          = $93 ; 
con_sp_cndl_94                          = $94 ; 
con_sp_cndl_95                          = $95 ; 
con_sp_cndl_96                          = $96 ; 
con_sp_cndl_97                          = $97 ; 
con_sp_cndl_98                          = $98 ; 
con_sp_cndl_99                          = $99 ; 
con_sp_cndl_9A                          = $9A ; 
con_sp_cndl_9B                          = $9B ; 
con_sp_cndl_9C                          = $9C ; 
con_sp_cndl_9D                          = $9D ; 
con_sp_cndl_9E                          = $9E ; 
con_sp_cndl_9F                          = $9F ; 
con_sp_cndl_A0                          = $A0 ; 
con_sp_cndl_A1                          = $A1 ; 
con_sp_cndl_A2                          = $A2 ; 
con_sp_cndl_A3                          = $A3 ; 
; con_sp_cndl_A4                        = $A4 ; unused
con_sp_cndl_A5                          = $A5 ; 
; con_sp_cndl_A6                        = $A6 ; unused
con_sp_cndl_A7                          = $A7 ; 
con_sp_cndl_A8                          = $A8 ; 
con_sp_cndl_A9                          = $A9 ; 
con_sp_cndl_AA                          = $AA ; 
con_sp_cndl_AB                          = $AB ; 
con_sp_cndl_AC                          = $AC ; 
con_sp_cndl_AD                          = $AD ; 
con_sp_cndl_AE                          = $AE ; 
con_sp_cndl_AF                          = $AF ; 
con_sp_cndl_B0                          = $B0 ; 
con_sp_cndl_B1                          = $B1 ; 
con_sp_cndl_B2                          = $B2 ; 
con_sp_cndl_B3                          = $B3 ; 
con_sp_cndl_B4                          = $B4 ; 
con_sp_cndl_B5                          = $B5 ; 
con_sp_cndl_B6                          = $B6 ; 
con_sp_cndl_B7                          = $B7 ; 
con_sp_cndl_B8                          = $B8 ; 
; con_sp_cndl_B9                        = $B9 ; unused
; con_sp_cndl_BA                        = $BA ; unused
con_sp_cndl_BB                          = $BB ; 
con_sp_cndl_BC                          = $BC ; 
con_sp_cndl_BD                          = $BD ; 
con_sp_cndl_BE                          = $BE ; 
con_sp_cndl_BF                          = $BF ; 
con_sp_cndl_C0                          = $C0 ; 
con_sp_cndl_C1                          = $C1 ; 
con_sp_cndl_C2                          = $C2 ; 
con_sp_cndl_C3                          = $C3 ; 
con_sp_cndl_C4                          = $C4 ; 
; con_sp_cndl_C5                        = $C5 ; unused
con_sp_cndl_C6                          = $C6 ; 
con_sp_cndl_C7                          = $C7 ; 
con_sp_cndl_C8                          = $C8 ; 
con_sp_cndl_C9                          = $C9 ; 
con_sp_cndl_CA                          = $CA ; 
con_sp_cndl_CB                          = $CB ; 
con_sp_cndl_CC                          = $CC ; 
con_sp_cndl_CD                          = $CD ; 
con_sp_cndl_CE                          = $CE ; 
; con_sp_cndl_CF                        = $CF ; unused
con_sp_cndl_D0                          = $D0 ; 
con_sp_cndl_D1                          = $D1 ; 
con_sp_cndl_D2                          = $D2 ; 
; con_sp_cndl_D3                        = $D3 ; unused
con_sp_cndl_D4                          = $D4 ; 
con_sp_cndl_D5                          = $D5 ; 
; con_sp_cndl_D6                        = $D6 ; unused
con_sp_cndl_D7                          = $D7 ; 
con_sp_cndl_D8                          = $D8 ; 
con_sp_cndl_D9                          = $D9 ; 
con_sp_cndl_DA                          = $DA ; 
con_sp_cndl_DB                          = $DB ; 
con_sp_cndl_DC                          = $DC ; 
con_sp_cndl_DD                          = $DD ; 
con_sp_cndl_DE                          = $DE ; 
con_sp_cndl_DF                          = $DF ; 
con_sp_cndl_E0                          = $E0 ; 
con_sp_cndl_E1                          = $E1 ; 
con_sp_cndl_E2                          = $E2 ; 
con_sp_cndl_E3                          = $E3 ; 
con_sp_cndl_E4                          = $E4 ; 
; con_sp_cndl_E5                        = $E5 ; unused
con_sp_cndl_E6                          = $E6 ; 
con_sp_cndl_E7                          = $E7 ; 
con_sp_cndl_E8                          = $E8 ; 
con_sp_cndl_E9                          = $E9 ; 
con_sp_cndl_EA                          = $EA ; 
con_sp_cndl_EB                          = $EB ; 
con_sp_cndl_EC                          = $EC ; 
con_sp_cndl_ED                          = $ED ; 
con_sp_cndl_EE                          = $EE ; 
con_sp_cndl_EF                          = $EF ; 
; con_sp_cndl_F0                        = $F0 ; unused
con_sp_cndl_F1                          = $F1 ; 
con_sp_cndl_F2                          = $F2 ; 
con_sp_cndl_F3                          = $F3 ; 
; con_sp_cndl_F4                        = $F4 ; unused
con_sp_cndl_F5                          = $F5 ; 
con_sp_cndl_F6                          = $F6 ; 
con_sp_cndl_F7                          = $F7 ; 
con_sp_cndl_F8                          = $F8 ; 
con_sp_cndl_F9                          = $F9 ; 
con_sp_cndl_FA                          = $FA ; 
con_sp_cndl_FB                          = $FB ; 
con_sp_cndl_FC                          = $FC ; 
con_sp_cndl_FD                          = $FD ; 



