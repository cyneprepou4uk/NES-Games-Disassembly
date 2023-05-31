; keep your global constant values inside this file



; MISC разное
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; 
con_damage                              = $00 ; 
con_E2E6                                = $00 ; for 0x01E2F6
con_debug                               = $00 ; change bit5 and/or bit7 https://tcrf.net/Double_Dragon_II:_The_Revenge_(NES)#:~:text=Prerelease%20Info-,Debug%20Features,-There%20is%20a
con_weapon_id                           = $12 ; weapons start from this value for ram_obj_id



; ram_game_mode
con_gm_00                               = $00 ; 
con_gm_01                               = $01 ; 
con_gm_02                               = $02 ; 
con_gm_04                               = $04 ; 
con_gm_08                               = $08 ; 
con_gm_10                               = $10 ; 
con_gm_20                               = $20 ; 
con_gm_40                               = $40 ; friendly fire if set
con_gm_80                               = $80 ; 2 players if set



; ram_game_flags_1
con_gf1_00                               = $00 ; 
con_gf1_01                               = $01 ; final boss is defeated if set
con_gf1_02                               = $02 ; 
con_gf1_04                               = $04 ; 
; con_gf1_08                             = $08 ; 
con_gf1_10                               = $10 ; 
con_gf1_20                               = $20 ; 
con_gf1_40                               = $40 ; enable continues if set
con_gf1_80                               = $80 ; pause if set



; ram_game_flags_2
; con_gf2_00                             = $00 ; 
; con_gf2_01                             = $01 ; 
con_gf2_02                               = $02 ; not game over if set
; con_gf2_04                             = $04 ; 
; con_gf2_08                             = $08 ; 
; con_gf2_10                             = $10 ; 
con_gf2_20                               = $20 ; 
con_gf2_40                               = $40 ; 
con_gf2_80                               = $80 ; 



; ram_state
; need comments at 0x0180B4 0x00BA42 0x0080DA
con_state_00                            = $00 ; 80 
con_state_01                            = $01 ; 81 
con_state_02                            = $02 ; 82 
con_state_03                            = $03 ; 83 
con_state_04                            = $04 ; 84 
con_state_05                            = $05 ; 85 
con_state_jump                          = $06 ; 86 
con_state_07                            = $07 ; 87 
con_state_08                            = $08 ; 88 
con_state_09                            = $09 ; 89 
con_state_0A                            = $0A ; 8A 
con_state_0B                            = $0B ; 8B 
con_state_0C                            = $0C ; 8C 
con_state_0D                            = $0D ; 8D 
con_state_0E                            = $0E ; 8E 
con_state_0F                            = $0F ; 8F 
con_state_10                            = $10 ; 90 
con_state_11                            = $11 ; 91 
con_state_land                          = $12 ; 92 landing after jump 06
con_state_13                            = $13 ; 93 
con_state_14                            = $14 ; 94 
con_state_15                            = $15 ; 95 
con_state_16                            = $16 ; 96 
con_state_17                            = $17 ; 97 
con_state_18                            = $18 ; 98 
con_state_19                            = $19 ; 99 
con_state_1A                            = $1A ; 9A 
con_state_1B                            = $1B ; 9B 
con_state_1C                            = $1C ; 9C 
con_state_1D                            = $1D ; 9D 
con_state_1E                            = $1E ; 9E 
con_state_1F                            = $1F ; 9F 
con_state_20                            = $20 ; A0 
con_state_21                            = $21 ; A1 
con_state_22                            = $22 ; A2 
con_state_23                            = $23 ; A3 
con_state_24                            = $24 ; A4 
con_state_25                            = $25 ; A5 
con_state_26                            = $26 ; A6 
con_state_27                            = $27 ; A7 
con_state_28                            = $28 ; A8 
con_state_29                            = $29 ; A9 
con_state_2A                            = $2A ; AA 
con_state_2B                            = $2B ; AB 
con_state_2C                            = $2C ; AC 
con_state_2D                            = $2D ; AD 
con_state_2E                            = $2E ; AE 
con_state_2F                            = $2F ; AF 
con_state_30                            = $30 ; B0 
con_state_31                            = $31 ; B1 
con_state_32                            = $32 ; B2 
con_state_33                            = $33 ; B3 
con_state_34                            = $34 ; B4 
con_state_35                            = $35 ; B5 
con_state_36                            = $36 ; B6 
con_state_37                            = $37 ; B7 
con_state_38                            = $38 ; B8 
con_state_39                            = $39 ; B9 
con_state_3A                            = $3A ; BA 
con_state_3B                            = $3B ; BB 
con_state_3C                            = $3C ; BC 
con_state_3D                            = $3D ; BD 
con_state_3E                            = $3E ; BE 
con_state_3F                            = $3F ; BF 
con_state_40                            = $40 ; C0 
con_state_41                            = $41 ; C1 
con_state_42                            = $42 ; C2 
con_state_43                            = $43 ; C3 
con_state_44                            = $44 ; C4 
con_state_45                            = $45 ; C5 
con_state_46                            = $46 ; C6 
con_state_47                            = $47 ; C7 
con_state_48                            = $48 ; C8 
con_state_49                            = $49 ; C9 
con_state_4A                            = $4A ; CA 
con_state_4B                            = $4B ; CB 
con_state_4C                            = $4C ; CC 
con_state_4D                            = $4D ; CD 
con_state_4E                            = $4E ; CE 
con_state_4F                            = $4F ; CF 
con_state_50                            = $50 ; D0 
con_state_51                            = $51 ; D1 
con_state_52                            = $52 ; D2 
con_state_53                            = $53 ; D3 
con_state_54                            = $54 ; D4 
con_state_55                            = $55 ; D5 
con_state_56                            = $56 ; D6 
con_state_57                            = $57 ; D7 
con_state_58                            = $58 ; D8 
con_state_59                            = $59 ; D9 
con_state_5A                            = $5A ; DA 
con_state_5B                            = $5B ; DB 
con_state_5C                            = $5C ; DC 
con_state_5D                            = $5D ; DD 
con_state_5E                            = $5E ; DE 
con_state_5F                            = $5F ; DF if you can't grab enemy because he has a lot of hp
con_state_60                            = $60 ; E0 
con_state_61                            = $61 ; E1 
con_state_62                            = $62 ; E2 
con_state_63                            = $63 ; E3 
con_state_64                            = $64 ; E4 
con_state_65                            = $65 ; E5 
con_state_66                            = $66 ; E6 
con_state_67                            = $67 ; E7 
con_state_68                            = $68 ; E8 
con_state_69                            = $69 ; E9 
con_state_6A                            = $6A ; EA 
con_state_6B                            = $6B ; EB 
con_state_6C                            = $6C ; EC 
con_state_6D                            = $6D ; ED 
con_state_6E                            = $6E ; EE 
con_state_6F                            = $6F ; EF 
con_state_70                            = $70 ; F0 
con_state_71                            = $71 ; F1 
con_state_72                            = $72 ; F2 
con_state_73                            = $73 ; F3 
con_state_74                            = $74 ; F4 
con_state_75                            = $75 ; F5 
con_state_76                            = $76 ; F6 
con_state_77                            = $77 ; F7 
con_state_78                            = $78 ; F8 
con_state_79                            = $79 ; F9 
con_state_7A                            = $7A ; FA 
con_state_7B                            = $7B ; FB 
con_state_7C                            = $7C ; FC 
con_state_7D                            = $7D ; FD 
con_state_7E                            = $7E ; FE 
con_state_7F                            = $7F ; FF 



; ram_obj_id
; https://doubledragon.kontek.net/games/dd2/chardd2nes.html
; players, enemies and weapons
; need comments at 0x00B4E2 0x010722
    ; 0x00A3AA
con_obj_billy                           = $00 ; Billy
con_obj_jimmy                           = $01 ; Jimmy
con_obj_williams                        = $02 ; punk with knives/batons
con_obj_roper                           = $03 ; goth with flames/boomerangs
con_obj_linda                           = $04 ; girl with chain whips/grenades
; con_obj_05                            = $05 ; unused
con_obj_bolo                            = $06 ; black skinned boss
con_obj_burnov                          = $07 ; masked boss dissapears
con_obj_abore                           = $08 ; yellow terminator boss
con_obj_chin_taimei                     = $09 ; green ninja with 2 swords
con_obj_right_arm                       = $0A ; blue dude with black gloves
; con_obj_0B                            = $0B ; unused
con_obj_doppelganger                    = $0C ; clone boss
; con_obj_0D                            = $0D ; unused
; con_obj_0E                            = $0E ; unused
con_obj_ninja                           = $0F ; blue ninja with shurikens
; con_obj_10                            = $10 ; unused
con_obj_shadow_warrior                  = $11 ; final boss (also falling flame from torch maybe?)
; things
con_obj_knife                           = $12 ; knife used by williams
con_obj_13                              = $13 ; flames from tractor?
con_obj_grenade                         = $14 ; grenade
con_obj_chain_whip                      = $15 ; chain whip used by linda
con_obj_flame_grenades                  = $16 ; throwing fire things
con_obj_baton                           = $17 ; baton used by williams
con_obj_18                              = $18 ; falling flame from torch?
con_obj_19                              = $19 ; shuriken/throwing knife by ninja?
con_obj_1A                              = $1A ; hit by knife/grenade animation? throwing boomerang by roper?
con_obj_jumping_spike                   = $1B ; jumping spikes?
con_obj_fireball                        = $1C ; fireball by clone
con_obj_1D                              = $1D ; helicopter bullets?
con_obj_1E                              = $1E ; logo animation (maybe jumping spikes also, girl statue, white cursor hand, elevator?)



; ram_btn_press
; ram_btn_hold
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
con_btns_SAB                            = con_btn_Start + con_btn_A + con_btn_B                     ; D0



; ram_nmi_flag
con_nmi_0_irq_0                         = $00 ; NMI = 0, IRQ = 0
con_nmi_0_irq_1                         = $40 ; NMI = 0, IRQ = 1
con_nmi_1_irq_0                         = $80 ; NMI = 1, IRQ = 0
con_nmi_1_irq_1                         = $C0 ; NMI = 1, IRQ = 1



; ram_irq_handler
con_irq_default                         = $00 ; normal HUD
con_irq_blue_heli                       = $01 ; blue helicopter, mission 2
con_irq_green_heli                      = $02 ; green helicopter takes off, mission 2
con_irq_tractor                         = $03 ; tractor (or whatever it is), mission 5



; ram_sound_id
; need comments at 0x014A10, 0x00B0A6, 0x019260
con_music_off                           = $00 ; disable
con_music_menu                          = $01 ; logo and menu
con_music_mission_2                     = $02 ; mission 2 soundtrack
con_music_mission_1                     = $03 ; mission 1 soundtrack
con_music_mission_5                     = $04 ; mission 5 soundtrack
con_music_mission_8                     = $05 ; mission 8 soundtrack
con_music_mission_7                     = $06 ; mission 7 soundtrack
con_music_mission_6                     = $07 ; mission 6 soundtrack
con_music_boss_normal                   = $08 ; normal boss (mission 1-4)
con_music_boss_tractor                  = $09 ; tractor boss (mission 5)
con_music_mission_complete              = $0A ; mission complete
con_music_0B                            = $0B ; unused = 13
con_music_mission_9                     = $0C ; mission 9 soundtrack (part 1)
con_music_boss_clone                    = $0D ; clone boss (mission 8)
con_music_mission_info                  = $0E ; mission text
con_music_mission_3                     = $0F ; mission 3
con_music_mission_4                     = $10 ; mission 4
con_music_boss_final                    = $11 ; mission 9 soundtrack (part 2)
con_music_game_over                     = $12 ; game over
con_music_final_cutscene                = $13 ; final cutscene (part 1)
con_music_credits                       = $14 ; final cutscene (part 2)
con_music_15                            = $15 ; unused
con_music_16                            = $16 ; unused
con_music_17                            = $17 ; unused
con_music_18                            = $18 ; unused
; sound effects
con_sfx_hit                             = $19 ; 
con_sfx_1A                              = $1A ; final hit
con_sfx_1B                              = $1B ; hit with a cyclone or jump kick
con_sfx_cyclone_kick                    = $1C ; spinning in the air
con_sfx_jump                            = $1D ; 
con_sfx_high_jump_kick                  = $1E ; overpowered knee
con_sfx_throw_knife                     = $1F ; 
con_sfx_knife_fall                      = $20 ; when hit a wall
con_sfx_21                              = $21 ; 
con_sfx_22                              = $22 ; 
con_sfx_23                              = $23 ; 
con_sfx_fire                            = $24 ; 
con_sfx_25                              = $25 ; 
con_sfx_26                              = $26 ; 
con_sfx_27                              = $27 ; 
con_sfx_28                              = $28 ; 
con_sfx_ninja_knife_hit                 = $29 ; 
con_sfx_2A                              = $2A ; 
con_sfx_2B                              = $2B ; 
con_sfx_2C                              = $2C ; 
con_sfx_2D                              = $2D ; 
con_sfx_2E                              = $2E ; 
con_sfx_2F                              = $2F ; 
con_sfx_30                              = $30 ; 
con_sfx_31                              = $31 ; fall in water?
con_sfx_32                              = $32 ; 
con_sfx_33                              = $33 ; 
con_sfx_34                              = $34 ; 
con_sfx_35                              = $35 ; 
con_sfx_36                              = $36 ; 
con_sfx_somersault                      = $37 ; used by williams
con_sfx_illusion                        = $38 ; when walking through your girlfriend
con_sfx_pause                           = $39 ; 
con_sfx_clone_fireball                  = $3A ; 
con_sfx_hit_by_fireball                 = $3B ; 
con_sfx_3C                              = $3C ; 
con_sfx_helicopter_1                    = $3D ; 
con_sfx_door                            = $3E ; 
con_sfx_elevator                        = $3F ; 
con_sfx_40                              = $40 ; 
con_sfx_41                              = $41 ; 
con_sfx_42                              = $42 ; 
con_sfx_fall_in_water                   = $43 ; 
con_sfx_44                              = $44 ; 
con_sfx_45                              = $45 ; 
con_sfx_fall_down                       = $46 ; 
con_sfx_hand_cursor                     = $47 ; 
con_sfx_48                              = $48 ; 
con_sfx_move_cursor                     = $49 ; 
con_sfx_dissappear                      = $4A ; 
con_sfx_reappear                        = $4B ; 
con_sfx_punch                           = $4C ; 
con_sfx_kick                            = $4D ; 
con_sfx_tractor                         = $4E ; 
con_sfx_4F                              = $4F ; 
con_sfx_helicopter_2                    = $50 ; 
con_sfx_helicopter_3                    = $51 ; 
con_sfx_final_boss_hit                  = $52 ; 
con_sfx_final_death                     = $53 ; 
; control bytes
con_music_ctrl_FB                       = $FB ; 
con_music_ctrl_FC                       = $FC ; 
con_music_ctrl_pause                    = $FD ; 
con_music_ctrl_FE                       = $FE ; unused?
con_music_ctrl_resume                   = $FF ; 



; for ram_003C_obj
con_003C_00                             = $00 ; 
con_003C_01                             = $01 ; 
con_003C_02                             = $02 ; weapon/helicopter bullets
; con_003C_04                           = $04 ; 
; con_003C_08                           = $08 ; 
con_003C_10                             = $10 ; invisible (shadow warrior)
con_003C_20                             = $20 ; hand cursor (A0) / also when enemy is spawned off screen and waiting for you (A1) / also elevator (A2)
con_003C_40                             = $40 ; 
con_003C_80                             = $80 ; 



; for ram_004A_obj
con_004A_00                             = $00 ; 
con_004A_01                             = $01 ; 
con_004A_02                             = $02 ; 
con_004A_04                             = $04 ; 
con_004A_08                             = $08 ; 
; con_004A_10                           = $10 ; 
con_004A_20                             = $20 ; 
con_004A_40                             = $40 ; 
con_004A_80                             = $80 ; 



; index for 0x01885D (ram_0424)
con_884D_00                             = $00 ; 
con_884D_white_hand_cursor              = $01 ; 
con_884D_02                             = $02 ; 
con_884D_03                             = $03 ; 
con_884D_04                             = $04 ; 
con_884D_05                             = $05 ; 
con_884D_06                             = $06 ; 
con_884D_07                             = $07 ; 
con_884D_08                             = $08 ; 
con_884D_09                             = $09 ; 
con_884D_0A                             = $0A ; 
con_884D_0B                             = $0B ; 
con_884D_0C                             = $0C ; 
con_884D_0D                             = $0D ; 
con_884D_0E                             = $0E ; 
con_884D_0F                             = $0F ; 
con_884D_10                             = $10 ; 
con_884D_11                             = $11 ; 
con_884D_12                             = $12 ; 
con_884D_13                             = $13 ; 
con_884D_14                             = $14 ; 
con_884D_15                             = $15 ; 
con_884D_16                             = $16 ; 
con_884D_17                             = $17 ; 
con_884D_18                             = $18 ; 
con_884D_19                             = $19 ; 
con_884D_1A                             = $1A ; 
con_884D_1B                             = $1B ; 
con_884D_80                             = $80 ; 
con_884D_81                             = $81 ; 



; screens for 0x01F719
con_F709_00                             = $00 ; 
con_F709_01                             = $01 ; 
con_F709_02                             = $02 ; 
; con_F709_03                           = $03 ; unused, index not found
con_F709_04                             = $04 ; 
; con_F709_05                           = $05 ; unused, index not found
; con_F709_06                           = $06 ; unused, index not found
; con_F709_07                           = $07 ; unused, index not found
con_F709_08                             = $08 ; 
con_F709_09                             = $09 ; 
con_F709_0A                             = $0A ; 
con_F709_0B                             = $0B ; sample version
