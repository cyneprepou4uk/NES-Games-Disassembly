; keep your global constant values inside this file



; MISC
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; 
con_damage                              = $00 ; 
con_8648                                = $00 ; for 0x018658
con_E2E6                                = $00 ; for 0x01E2F6
con_weapon_id                           = $12 ; weapons start from this value for ram_obj_id



; CONFIG
con_hair_grab_max_hit_counter           = $03 ; 
con_debug                               = $00 ; change bit5 and/or bit7 https://tcrf.net/Double_Dragon_II:_The_Revenge_(NES)#:~:text=Prerelease%20Info-,Debug%20Features,-There%20is%20a



; ram_btn_press
; ram_btn_hold
; ram_042E_plr_ab_buttons_copy
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



; ram_game_mode
con_gm_00                               = $00 ; 
con_gm_01                               = $01 ; 
con_gm_02                               = $02 ; 
con_gm_04                               = $04 ; 
con_gm_08                               = $08 ; 
con_gm_10                               = $10 ; 
con_gm_20                               = $20 ; 
con_gm_friendly_fire                    = $40 ; friendly fire if set
con_gm_2_players                        = $80 ; 2 players if set



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
; need comments at 0x0080DA 0x00BA42 0x0180B4
con_state_00                            = $00 ; 80 idle while standing
con_state_walk                          = $01 ; 81 walking in any direction
con_state_run                           = $02 ; 82 running (williams, ninja)
con_state_ladder_climb_up               = $03 ; 83 climbing up on ladder
con_state_ladder_climb_idle             = $04 ; 84 idle on ladder
con_state_ladder_climb_down             = $05 ; 85 climbing down on ladder
con_state_jump_up                       = $06 ; 86 jump up
con_state_fall_from_platform            = $07 ; 87 player/enemy drops down from a platform ald lands on his legs
con_state_jump_foward_player            = $08 ; 88 jumping foward (player)/jumping up (enemy)
con_state_jump_foward_enemy             = $09 ; 89 jumping foward (enemy)
; con_state_0A                          = $0A ; 8A 
con_state_ninja_jump_low                = $0B ; 8B ninja jump low
con_state_ninja_jump_high               = $0C ; 8C ninja high jump high + throw star
con_state_somersault_run                = $0D ; 8D somersault running (williams)
con_state_doppelganger_dispawn          = $0E ; 8E doppelganger is dispawning
con_state_doppelganger_invisible        = $0F ; 8F doppelganger is currently invisible
con_state_doppelganger_spawn            = $10 ; 90 doppelganger is spawning
con_state_11_pick_up_weapon             = $11 ; 91 player/enemy picks up weapon
con_state_land_after_jump               = $12 ; 92 landing after jump 06
con_state_13                            = $13 ; 93 dropping down after player performed jump kick/high jump kick/cyclone kick, and is not able to do anything else until he lands 
con_state_14                            = $14 ; 94 player/enemy is hit with one hand, but he is still ok
con_state_15                            = $15 ; 95 player/enemy is hit with another hand, but he is still ok
con_state_16                            = $16 ; 96 player/enemy is hit with one hand and he is about to collapse
con_state_17                            = $17 ; 97 player/enemy is hit with another hand and he is about to collapse
con_state_18                            = $18 ; 98 player/enemy is standing collapsed, waiting for a final kick
con_state_19                            = $19 ; 99 player/enemy is lying in the ground
con_state_1A                            = $1A ; 9A player/enemy is knocked down with a punch/kick/elbow, also while being mid-air or when hits a wall after 1E
con_state_1B                            = $1B ; 9B player/enemy was send flying by kick/jump kick/baton/ninja knife/ninja star
con_state_1C                            = $1C ; 9C getting hit by trector steam 73/fire 66/baton 77/burnov 55/grenade 6F/enemy jump + kick 38/abore shoulder attack 47
con_state_1D                            = $1D ; 9D getting hit by thrown baton/5D
con_state_1E                            = $1E ; 9E enemy is thrown by hair throw (after hair grab)
con_state_1F                            = $1F ; 9F player/enemy is punched by uppercut/enemy is thrown by upper kick (after hair grab)
con_state_20                            = $20 ; A0 player/enemy was send flying by high jump kick/ninja running punch/4C
con_state_21                            = $21 ; A1 player/enemy was send flying by sudden uppercut 3B
con_state_22                            = $22 ; A2 player/enemy was send flying by cyclone kick
con_state_23                            = $23 ; A3 falling from a gear (when he doesn't land on his feet)
con_state_24                            = $24 ; A4 player is posessed by doppelganger
con_state_25                            = $25 ; A5 
con_state_26                            = $26 ; A6 dead player/enemy is lying in the ground (after 19)
con_state_27                            = $27 ; A7 death by jumping into water
con_state_28                            = $28 ; A8 burnov dying animation
con_state_29                            = $29 ; A9 burnov is dead, only helmet remains
con_state_2A                            = $2A ; AA burnov is reviving after 29
con_state_2B                            = $2B ; AB getting hit by spikes on the ceiling
con_state_2C                            = $2C ; AC shadow warrior first spawn
con_state_2D                            = $2D ; AD player/enemy punch
con_state_2E                            = $2E ; AE ninja knife attack up close
con_state_2F                            = $2F ; AF uppercut after enemy is hurt
con_state_30                            = $30 ; B0 knee (while enemy gets up)/bolo kick
con_state_31                            = $31 ; B1 final back kick when enemy is collapsed/linda back kick/shadow warrior kick
con_state_32                            = $32 ; B2 high kick by right arm
con_state_33                            = $33 ; B3 player/enemy kick
con_state_34                            = $34 ; B4 chin taimei undercut
con_state_35                            = $35 ; B5 jump kick (player normal kick in mid-air)
con_state_36                            = $36 ; B6 shadow warrior spin punch on the ground
; con_state_37                          = $37 ; B7 
con_state_38                            = $38 ; B8 enemy jump + kick
con_state_39                            = $39 ; B9 cyclone kick (in mid-air)
con_state_3A                            = $3A ; BA high jump kick (player knee)
con_state_3B                            = $3B ; BB hyper uppercut after player ducks or gets up
con_state_3C                            = $3C ; BC linda elbow punch
con_state_3D                            = $3D ; BD strong punch (williams, abore)
con_state_3E                            = $3E ; BE chin taimei sword attack
con_state_3F                            = $3F ; BF doppelganger throws a fireball
con_state_40                            = $40 ; C0 doppelganger tries to posess a player
con_state_41                            = $41 ; C1 doppelganger succeeded in posessing a player
con_state_42                            = $42 ; C2 throw knife/grenade/fire grenade/boomerang
con_state_43                            = $43 ; C3 player/enemy swing with a baton
con_state_44                            = $44 ; C4 shadow warrior back flip
con_state_45                            = $45 ; C5 player/enemy swing with a club
con_state_46                            = $46 ; C6 chin taimei ??? unused finishing sword attack
con_state_47                            = $47 ; C7 abore shoulder attack
con_state_48                            = $48 ; C8 chin taimei jump attack
con_state_49                            = $49 ; C9 chin taimei jumping back after the hit 48 was delivered
con_state_4A                            = $4A ; CA ninja running punch
con_state_4B                            = $4B ; CB enemy ducks to avoid your attacks
con_state_4C                            = $4C ; CC shadow warrior kick while standing on hands
con_state_4D                            = $4D ; CD ninja throws knife
con_state_4E                            = $4E ; CE hair grabbing in process
con_state_4F                            = $4F ; CF knee smash (while hair grab)
con_state_50                            = $50 ; D0 hair throw (while hair grab)
con_state_51                            = $51 ; D1 upper kick (while hair grab)
con_state_52                            = $52 ; D2 elbow drop (while hair grab)
con_state_53                            = $53 ; D3 bolo throw
con_state_54                            = $54 ; D4 burnov grabs a player
con_state_55                            = $55 ; D5 burnov kicks a player while grabbing
con_state_56                            = $56 ; D6 standing inside elevator
con_state_57                            = $57 ; D7 hair grab completed (can be 5F later)
con_state_58                            = $58 ; D8 falling into helicopter door
con_state_59                            = $59 ; D9 enlarging II on the title screen
con_state_5A                            = $5A ; DA shadow warrior dissapears
con_state_5B                            = $5B ; DB right arm punch
con_state_5C                            = $5C ; DC throw baton
con_state_5D                            = $5D ; DD shadow warrior spin punch + jump
con_state_5E                            = $5E ; DE shadow warrior several punches in a row
con_state_5F                            = $5F ; DF failed hair grabif you can't grab enemy because he has a lot of hp
; con_state_60                          = $60 ; E0 
; con_state_61                          = $61 ; E1 
; con_state_62                          = $62 ; E2 
; con_state_63                          = $63 ; E3 
; con_state_64                          = $64 ; E4 
con_state_65                            = $65 ; E5 weapon is on the ground (after it was falling)
con_state_66                            = $66 ; E6 fire grenade explodes
con_state_67                            = $67 ; E7 dropping fire from torch explodes
con_state_68                            = $68 ; E8 ninja knife was thrown
con_state_69                            = $69 ; E9 flying spike was thrown (projectile)
con_state_6A                            = $6A ; EA weapon is falling 2
con_state_6B                            = $6B ; EB weapon is falling 3
con_state_6C                            = $6C ; EC weapon is falling 1
con_state_6D                            = $6D ; ED knife was thrown (projectile)
con_state_6E                            = $6E ; EE fire grenade was thrown
con_state_6F                            = $6F ; EF grenade explosion
con_state_70                            = $70 ; F0 fireball was thrown by doppelganger (projectile)
con_state_71                            = $71 ; F1 helicopter bullet (projectile)
con_state_72                            = $72 ; F2 dropping fire from torch was thrown (projectile)
con_state_73                            = $73 ; F3 tractor steam (projectile)
con_state_74                            = $74 ; F4 boomerang was thrown (projectile)
con_state_75                            = $75 ; F5 thrown boomerang explodes
con_state_76                            = $76 ; F6 esplosion of ninja thrown knife/ninja star/throwing knife/flying spike
con_state_77                            = $77 ; F7 baton was thrown (projectile)
con_state_78                            = $78 ; F8 ninja star was thrown (projectile)
; con_state_79                          = $79 ; F9 
; con_state_7A                          = $7A ; FA 
; con_state_7B                          = $7B ; FB 
; con_state_7C                          = $7C ; FC 
; con_state_7D                          = $7D ; FD 
con_state_7E                            = $7E ; FE something to do with weapon explosion
con_state_grabbed                       = $7F ; FF enemy is hair grabbed/player is grabbed by bolo or burnov/weapon is picked upenemy was grabbed by hair/weapon was picked up by player or enemy



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
; con_music_ctrl_FE                     = $FE ; unused?
con_music_ctrl_resume                   = $FF ; 



; ram_0036_enemy
con_0036_00                             = $00 ; 
con_0036_01                             = $01 ; 
con_0036_02                             = $02 ; 
; con_0036_04                           = $04 ; 
con_0036_08                             = $08 ; 
con_0036_10                             = $10 ; 
; con_0036_20                           = $20 ; 
; con_0036_40                           = $40 ; 
con_0036_80                             = $80 ; 



; ram_003C_obj
con_003C_00                             = $00 ; 
con_003C_01                             = $01 ; 
con_003C_02                             = $02 ; weapon/helicopter bullets
; con_003C_04                           = $04 ; 
; con_003C_08                           = $08 ; 
con_003C_invisible                      = $10 ; invisible (used for shadow warrior, but can be applied to any object)
con_003C_20                             = $20 ; hand cursor A0/enemy is spawned off screen and waiting for you A1/elevator A2
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



; index for 0x01885D 0x018F7D (ram_0424)
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



; for 0x00A49A
con_A48A_00                             = $00 ; 
con_A48A_01                             = $01 ; 
con_A48A_02                             = $02 ; 
con_A48A_03                             = $03 ; 
con_A48A_04                             = $04 ; 
con_A48A_05                             = $05 ; 
con_A48A_06                             = $06 ; 
con_A48A_07                             = $07 ; 
con_A48A_08                             = $08 ; 
con_A48A_09                             = $09 ; 
con_A48A_0A                             = $0A ; 
con_A48A_0B                             = $0B ; 
con_A48A_0C                             = $0C ; 
con_A48A_0D                             = $0D ; 
con_A48A_0E                             = $0E ; 
; con_A48A_0F                           = $0F ; unused, index not found
; con_A48A_10                           = $10 ; unused, index not found
con_A48A_11                             = $11 ; 
con_A48A_12                             = $12 ; 
con_A48A_13                             = $13 ; 
con_A48A_14                             = $14 ; 
con_A48A_15                             = $15 ; 
con_A48A_16                             = $16 ; 
con_A48A_17                             = $17 ; 
con_A48A_18                             = $18 ; 
con_A48A_19                             = $19 ; 
con_A48A_1A                             = $1A ; 
con_A48A_1B                             = $1B ; 
con_A48A_1C                             = $1C ; 
con_A48A_1D                             = $1D ; 
con_A48A_1E                             = $1E ; 
con_A48A_1F                             = $1F ; 
con_A48A_20                             = $20 ; 
con_A48A_21                             = $21 ; 
con_A48A_22                             = $22 ; 
con_A48A_23                             = $23 ; 
con_A48A_24                             = $24 ; 
con_A48A_25                             = $25 ; 
con_A48A_26                             = $26 ; 
con_A48A_27                             = $27 ; 
con_A48A_28                             = $28 ; 
con_A48A_29                             = $29 ; 
con_A48A_2A                             = $2A ; 
con_A48A_2B                             = $2B ; 
con_A48A_2C                             = $2C ; 
con_A48A_2D                             = $2D ; 
con_A48A_2E                             = $2E ; 
con_A48A_2F                             = $2F ; 
con_A48A_30                             = $30 ; 
con_A48A_31                             = $31 ; 
con_A48A_32                             = $32 ; 
con_A48A_33                             = $33 ; 
con_A48A_34                             = $34 ; 
con_A48A_35                             = $35 ; 
con_A48A_36                             = $36 ; 
con_A48A_37                             = $37 ; 
con_A48A_38                             = $38 ; 
con_A48A_39                             = $39 ; 
con_A48A_3A                             = $3A ; 
con_A48A_3B                             = $3B ; 
con_A48A_3C                             = $3C ; 
con_A48A_3D                             = $3D ; 
con_A48A_3E                             = $3E ; 
con_A48A_3F                             = $3F ; 



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
