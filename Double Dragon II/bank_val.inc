; keep your global constant values inside this file



; MISC
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; 
con_anim_id                             = $00 ; 
con_damage                              = $00 ; 
con_8648                                = $00 ; index for 0x018658
con_E2E6                                = $00 ; for 0x01E2F6
con_weapon_id                           = $12 ; weapons start from this index for ram_obj_id



; CONFIG
; max mission id 0x01990B 0x019503
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
con_gf1_00                              = $00 ; 
con_gf1_final_boss_defeated             = $01 ; final boss is defeated if set (if set during any mission, game ends immediately)
con_gf1_02                              = $02 ; 
con_gf1_04                              = $04 ; 
; con_gf1_08                            = $08 ; 
con_gf1_10                              = $10 ; 
con_gf1_20                              = $20 ; during main menu?
con_gf1_40                              = $40 ; enable continues if set (gets set at 0x018F1E when you lose all your lives, changed at continue screen during option select)
con_gf1_pause                           = $80 ; pause if set



; ram_game_flags_2
; con_gf2_00                            = $00 ; 
; con_gf2_01                            = $01 ; 
con_gf2_02                              = $02 ; not game over if set (or something to do with mission cutscenes maybe?)
; con_gf2_04                            = $04 ; 
; con_gf2_08                            = $08 ; 
; con_gf2_10                            = $10 ; 
con_gf2_heli_bg_sound                   = $20 ; constantly gets set during heli background sounds at 0x0140E2 (cleared at 0x01405D), affects sound engine
con_gf2_40                              = $40 ; 
con_gf2_80                              = $80 ; 



; ram_mission_id_hi
con_mission_Into_the_Turf               = $00 ; Into the Turf
con_mission_At_the_Heliport             = $01 ; At the Heliport
con_mission_Battle_in_the_Chopper       = $02 ; Battle in the Chopper
con_mission_Undersea_Base_pt1           = $03 ; Undersea Base, part 1
con_mission_Undersea_Base_pt2           = $04 ; Undersea Base, part 2
con_mission_Forest_of_Death             = $05 ; Forest of Death
con_mission_Mansion_of_Terror           = $06 ; Mansion of Terror
con_mission_Trap_Room_pt1               = $07 ; Trap Room, part 1
con_mission_Trap_Room_pt2               = $08 ; Trap Room, part 2
con_mission_Trap_Room_pt3               = $09 ; Trap Room, part 3
con_mission_Trap_Room_pt4               = $0A ; Trap Room, part 4
con_mission_Trap_Room_pt5               = $0B ; Trap Room, part 5
con_mission_The_Double_Illusion         = $0C ; The Double Illusion
con_mission_Final_Confrontation_pt1     = $0D ; Final Confrontation, part 1
con_mission_Final_Confrontation_pt2     = $0E ; Final Confrontation, part 2
con_mission_0F                          = $0F ; 


; 00 = _Into_the_Turf
; 01 = _At_the_Heliport
; 02 = _Battle_in_the_Chopper
; 03 = _Undersea_Base_pt1
; 04 = _Undersea_Base_pt2
; 05 = _Forest_of_Death
; 06 = _Mansion_of_Terror
; 07 = _Trap_Room_pt1
; 08 = _Trap_Room_pt2
; 09 = _Trap_Room_pt3
; 0A = _Trap_Room_pt4
; 0B = _Trap_Room_pt5
; 0C = _The_Double_Illusion
; 0D = _Final_Confrontation_pt1
; 0E = _Final_Confrontation_pt2
; 0F = 



; ram_enemy_ai_template
; need comments 0x01284E 0x01298E
con_006C_00                             = $00 ; 
con_006C_01                             = $01 ; 
con_006C_02                             = $02 ; 
con_006C_03                             = $03 ; 
con_006C_04                             = $04 ; go for a lying weapon and pick it up
con_006C_05                             = $05 ; 
con_006C_06                             = $06 ; 
con_006C_07                             = $07 ; 
con_006C_08                             = $08 ; 
; con_006C_09                           = $09 ; unused index 0x012774
con_006C_0A                             = $0A ; 



; ram_0359_obj
; ram_0381_obj
; need comments 0x01D185 0x018763 0x013EFC 0x0109EE 0x010513 0x0102DE
; 0x0102C4 0x01026B 0x0101DA 0x0101AC 0x010140
con_0359_00                             = $00 ; 
con_0359_01                             = $01 ; 
con_0359_02                             = $02 ; 
con_0359_03                             = $03 ; 
con_0359_04                             = $04 ; 
con_0359_05                             = $05 ; 
con_0359_06                             = $06 ; 
con_0359_07                             = $07 ; 
con_0359_08                             = $08 ; 
con_0359_09                             = $09 ; 
con_0359_0A                             = $0A ; 
; con_0359_0B                           = $0B ; 
con_0359_0C                             = $0C ; 
con_0359_0D                             = $0D ; 
con_0359_0E                             = $0E ; 
con_0359_0F                             = $0F ; 
con_0359_10                             = $10 ; 
con_0359_11                             = $11 ; 
; con_0359_12                           = $12 ; 
con_0359_13                             = $13 ; 
con_0359_14                             = $14 ; 
; con_0359_15                           = $15 ; 
; con_0359_16                           = $16 ; 
; con_0359_17                           = $17 ; 
con_0359_18                             = $18 ; 
con_0359_19                             = $19 ; 
con_0359_1A                             = $1A ; 
con_0359_1B                             = $1B ; 
con_0359_1C                             = $1C ; 
con_0359_1D                             = $1D ; 



; ram_0361_obj
; need comments 0x010AAB 0x010A35 0x0105CC
; 0x01055B 0x0102E3 0x010270 0x0101DF 0x0101B1 0x010145
con_0361_00                             = $00 ; 
con_0361_01                             = $01 ; falling into water?
con_0361_02                             = $02 ; 
con_0361_03                             = $03 ; 
con_0361_04                             = $04 ; 
con_0361_05                             = $05 ; 
con_0361_06                             = $06 ; 
con_0361_07                             = $07 ; 
con_0361_08                             = $08 ; 



; ram_063F_flags
con_063F_00                             = $00 ; 
con_063F_01                             = $01 ; 
con_063F_02                             = $02 ; 
con_063F_80                             = $80 ; 



; ram_0728_se_flags
con_0728_00                             = $00 ;
; con_0728_01                           = $01 ; unused
; con_0728_02                           = $02 ; unused
con_0728_04                             = $04 ; 
con_0728_08                             = $08 ; 
con_0728_10                             = $10 ; 
con_0728_20                             = $20 ; 
con_0728_40                             = $40 ; 
con_0728_80                             = $80 ; 



; ram_0730_se_flags
con_0730_00                             = $00 ;
con_0730_01                             = $01 ; 
con_0730_02                             = $02 ; 
con_0730_04                             = $04 ; 
con_0730_08                             = $08 ; 
con_0730_10                             = $10 ; 
; con_0730_20                           = $20 ; unused
; con_0730_40                           = $40 ; unused
con_0730_80                             = $80 ; 




; ram_state
; need comments at 0x0080DA 0x00BA42 0x0180B4
con_state_idle                          = $00 ; 80 idle while standing
con_state_walk                          = $01 ; 81 walking in any direction
con_state_run                           = $02 ; 82 running (williams, ninja)
con_state_ladder_climb_up               = $03 ; 83 climbing up on ladder
con_state_ladder_climb_idle             = $04 ; 84 idle on ladder
con_state_ladder_climb_down             = $05 ; 85 climbing down on ladder
con_state_jump_up                       = $06 ; 86 jump up
con_state_fall_from_platform            = $07 ; 87 player/enemy drops down from a platform ald lands on his legs
con_state_jump_foward_player            = $08 ; 88 jumping foward (player)/jumping up (enemy)
con_state_jump_foward_enemy             = $09 ; 89 jumping foward (enemy)
; con_state_0A                          = $0A ; 8A unused
con_state_ninja_jump_low                = $0B ; 8B ninja jump low
con_state_ninja_jump_high               = $0C ; 8C ninja high jump high + throw star
con_state_somersault_run                = $0D ; 8D somersault running (williams)
con_state_doppelganger_dispawn          = $0E ; 8E doppelganger is dispawning
con_state_doppelganger_invisible        = $0F ; 8F doppelganger is currently invisible
con_state_doppelganger_spawn            = $10 ; 90 doppelganger is spawning
con_state_pick_up_weapon                = $11 ; 91 player/enemy picks up weapon
con_state_land_after_jump               = $12 ; 92 landing after jump 06
con_state_fall_after_action             = $13 ; 93 dropping down after performing midair techique and is not able to do anything else until lands 
con_state_14                            = $14 ; 94 player/enemy is hit with one hand, but he is still ok
con_state_15                            = $15 ; 95 player/enemy is hit with another hand, but he is still ok
con_state_16                            = $16 ; 96 player/enemy is hit with one hand and he is about to collapse
con_state_17                            = $17 ; 97 player/enemy is hit with another hand and he is about to collapse
con_state_18                            = $18 ; 98 player/enemy is standing collapsed, waiting for a final kick
con_state_lie_on_the_ground             = $19 ; 99 player/enemy is lying on the ground after being knocked out
con_state_1A                            = $1A ; 9A player/enemy is knocked down with a punch/kick/elbow, also while being midair or when hits a wall after 1E
con_state_1B                            = $1B ; 9B player/enemy was send flying by kick/jump kick/baton/ninja knife/ninja star
con_state_1C                            = $1C ; 9C getting hit by trector steam 73/fire 66/baton 77/burnov 55/grenade 6F/enemy jump + kick 38/abore shoulder attack 47
con_state_1D                            = $1D ; 9D getting hit by thrown baton/5D
con_state_thrown_by_hair_throw          = $1E ; 9E enemy is thrown by hair throw (after hair grab)
con_state_1F                            = $1F ; 9F player/enemy is punched by uppercut/enemy is thrown by upper kick (after hair grab)
con_state_20                            = $20 ; A0 player/enemy was send flying by high jump kick/ninja running punch/4C
con_state_21                            = $21 ; A1 player/enemy was send flying by sudden uppercut 3B
con_state_22                            = $22 ; A2 player/enemy was send flying by cyclone kick
con_state_23                            = $23 ; A3 falling from a gear (when he doesn't land on his feet)
con_state_24                            = $24 ; A4 player is posessed by doppelganger
con_state_player_respawn                = $25 ; A5 player respawn
con_state_death_normal                  = $26 ; A6 dead player/enemy is lying in the ground (after 19)
con_state_death_water                   = $27 ; A7 death by jumping into water
con_state_death_burnov                  = $28 ; A8 burnov dying animation
con_state_burnov_helmet                 = $29 ; A9 burnov is dead, only helmet remains
con_state_burnov_revives                = $2A ; AA burnov is reviving after 29
con_state_hit_by_spikes_on_the_ceiling  = $2B ; AB getting hit by spikes on the ceiling
con_state_shadow_warrior_appears        = $2C ; AC shadow warrior first appearance
con_state_punch_normal                  = $2D ; AD player/enemy punch
con_state_ninja_knife                   = $2E ; AE ninja knife attack up close (in your face)
con_state_uppercut_normal               = $2F ; AF uppercut after enemy is hurt
con_state_30                            = $30 ; B0 knee (while enemy gets up)/bolo kick
con_state_31                            = $31 ; B1 final back kick when enemy is collapsed/linda back kick/shadow warrior kick
con_state_32                            = $32 ; B2 high kick by right arm
con_state_33                            = $33 ; B3 player/enemy kick
con_state_34                            = $34 ; B4 chin taimei undercut
con_state_35                            = $35 ; B5 jump kick (player normal kick in midair)
con_state_36                            = $36 ; B6 shadow warrior spin punch on the ground
; con_state_37                          = $37 ; B7 unused
con_state_38                            = $38 ; B8 enemy jump + kick
con_state_cyclone_kick                  = $39 ; B9 cyclone kick (in midair)
con_state_high_jump_kick                = $3A ; BA high jump kick (player knee)
con_state_uppercut_sudden               = $3B ; BB uppercut after player ducks or gets up (basically same as 2F)
con_state_elbow                         = $3C ; BC linda elbow punch
con_state_punch_strong                  = $3D ; BD strong punch (williams, abore)
con_state_chin_taimei_sword             = $3E ; BE chin taimei sword attack
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
con_state_bolo_throw                    = $53 ; D3 bolo throw
con_state_burnov_grab                   = $54 ; D4 burnov grabs a player by his head
con_state_burnov_kicks                  = $55 ; D5 burnov kicks a player while grabbing
con_state_using_elevator                = $56 ; D6 standing inside elevator
con_state_57                            = $57 ; D7 hair grab completed (can be 5F later)
con_state_58                            = $58 ; D8 falling into helicopter door
con_state_59                            = $59 ; D9 enlarging II on the title screen
con_state_5A                            = $5A ; DA shadow warrior dissapears
con_state_5B                            = $5B ; DB right arm punch
con_state_5C                            = $5C ; DC throw baton
con_state_5D                            = $5D ; DD shadow warrior spin punch + jump
con_state_5E                            = $5E ; DE shadow warrior several punches in a row
con_state_5F                            = $5F ; DF failed hair grabif you can't grab enemy because he has a lot of hp
; con_state_60                          = $60 ; E0 unused
; con_state_61                          = $61 ; E1 unused
; con_state_62                          = $62 ; E2 unused
; con_state_63                          = $63 ; E3 unused
; con_state_64                          = $64 ; E4 unused
con_state_weapon_on_the_ground          = $65 ; E5 weapon is on the ground (after it was falling)
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
; con_state_79                          = $79 ; F9 unused
; con_state_7A                          = $7A ; FA unused
; con_state_7B                          = $7B ; FB unused
; con_state_7C                          = $7C ; FC unused
; con_state_7D                          = $7D ; FD unused
con_state_7E                            = $7E ; FE something to do with weapon explosion
con_state_hair_grabbed                  = $7F ; FF enemy is hair grabbed/player is grabbed by bolo or burnov/weapon is picked upenemy was grabbed by hair/weapon was picked up by player or enemy



; ram_obj_id
; https://doubledragon.kontek.net/games/dd2/chardd2nes.html
; players, enemies and weapons
; need comments at 0x00B4E2 0x010722
    ; 0x00A3AA
; characters
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
; items
con_obj_knife                           = $12 ; knife used by williams
con_obj_13                              = $13 ; flames from tractor?
con_obj_grenade                         = $14 ; grenade
con_obj_chain_whip                      = $15 ; chain whip used by linda
con_obj_flame_grenades                  = $16 ; throwing fire things
con_obj_baton                           = $17 ; baton used by williams
con_obj_18                              = $18 ; falling flame from torch?
con_obj_19                              = $19 ; shuriken/throwing knife by ninja?
con_obj_boomerang                       = $1A ; throwing boomerang by roper
con_obj_jumping_spike                   = $1B ; jumping spikes?
con_obj_fireball                        = $1C ; fireball by clone
con_obj_1D                              = $1D ; helicopter bullets?
con_obj_symbol_II                       = $1E ; symbol II at logo animation



; ram_nmi_flag
con_nmi_0_irq_0                         = $00 ; NMI = 0, IRQ = 0
con_nmi_0_irq_1                         = $40 ; NMI = 0, IRQ = 1
con_nmi_1_irq_0                         = $80 ; NMI = 1, IRQ = 0
con_nmi_1_irq_1                         = $C0 ; NMI = 1, IRQ = 1



; ram_irq_handler
; index for 0x01EC74
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
; con_music_0B                          = $0B ; unused
con_music_mission_9                     = $0C ; mission 9 soundtrack (part 1)
con_music_boss_doppelganger             = $0D ; clone boss (mission 8)
con_music_mission_info                  = $0E ; mission text
con_music_mission_3                     = $0F ; mission 3
con_music_mission_4                     = $10 ; mission 4
con_music_boss_final                    = $11 ; mission 9 soundtrack (part 2)
con_music_game_over                     = $12 ; game over
con_music_final_cutscene                = $13 ; final cutscene (part 1)
con_music_credits                       = $14 ; final cutscene (part 2)
; con_music_15                          = $15 ; unused
; con_music_16                          = $16 ; unused
; con_music_17                          = $17 ; unused
; con_music_18                          = $18 ; unused
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
; con_sfx_25                            = $25 ; unused
con_sfx_26                              = $26 ; 
con_sfx_27                              = $27 ; 
; con_sfx_28                            = $28 ; unused
con_sfx_ninja_knife_hit                 = $29 ; 
; con_sfx_2A                            = $2A ; unused
; con_sfx_2B                            = $2B ; unused
; con_sfx_2C                            = $2C ; unused
con_sfx_2D                              = $2D ; 
con_sfx_2E                              = $2E ; 
; con_sfx_2F                            = $2F ; unused
; con_sfx_30                            = $30 ; unused
; con_sfx_31                            = $31 ; unused
; con_sfx_32                            = $32 ; unused
; con_sfx_33                            = $33 ; unused
; con_sfx_34                            = $34 ; unused
; con_sfx_35                            = $35 ; unused
; con_sfx_36                            = $36 ; unused
con_sfx_somersault                      = $37 ; used by williams
con_sfx_illusion                        = $38 ; when walking through your girlfriend
con_sfx_pause                           = $39 ; 
con_sfx_doppelganger_fireball           = $3A ; 
con_sfx_hit_by_fireball                 = $3B ; 
con_sfx_3C                              = $3C ; 
con_sfx_helicopter_1                    = $3D ; 
con_sfx_door                            = $3E ; 
con_sfx_elevator                        = $3F ; 
con_sfx_40                              = $40 ; 
; con_sfx_41                            = $41 ; unused
; con_sfx_42                            = $42 ; unused
con_sfx_fall_in_water                   = $43 ; 
; con_sfx_44                            = $44 ; unused
; con_sfx_45                            = $45 ; unused
con_sfx_fall_down                       = $46 ; 
con_sfx_hand_cursor                     = $47 ; white hand cursor
; con_sfx_48                            = $48 ; unused
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



; ram_003C_obj_flags
con_003C_flag_00                        = $00 ; 
con_003C_flag_01                        = $01 ; enemy flag?
con_003C_flag_02                        = $02 ; weapon/helicopter bullets
; con_003C_flag_04                      = $04 ; 
; con_003C_flag_08                      = $08 ; 
con_003C_flag_invisible                 = $10 ; invisible (used for shadow warrior, but can be applied to any object)
con_003C_flag_20                        = $20 ; white hand cursor A0/enemy is spawned off screen and waiting for you A1/elevator A2
con_003C_flag_40                        = $40 ; 
con_003C_flag_exist                     = $80 ; object exists



; for ram_004A_obj_flags
con_004A_flag_00                        = $00 ; 
con_004A_flag_01                        = $01 ; 
con_004A_flag_hair_grabbed              = $02 ; enemy is hair grabbed
con_004A_flag_04                        = $04 ; 
con_004A_flag_not_alive                 = $08 ; ? if 2nd player can't be spawned because 1p option was selected
; con_004A_flag_10                      = $10 ; 
con_004A_flag_20                        = $20 ; 
con_004A_flag_stunned                   = $40 ; player/enemy is stunned after hit
con_004A_flag_knocked_down              = $80 ; player/enemy is knocked down after hit



; ram_mission_script
; handlers at 0x01885D 0x018F7D
con_884D_script_00                      = $00 ; 
con_884D_script_hand_cursor             = $01 ; white hand cursor
con_884D_script_02                      = $02 ; 
con_884D_script_03                      = $03 ; 
con_884D_script_enter_door              = $04 ; 
con_884D_script_elevator_going_down     = $05 ; mission 03 only
con_884D_script_06                      = $06 ; 
con_884D_script_07                      = $07 ; 
con_884D_script_08                      = $08 ; 
con_884D_script_emeny_spawn_at_door     = $09 ; enemies spawn through the door
con_884D_script_0A                      = $0A ; 
con_884D_script_final_boss_defeated     = $0B ; final boss defeated? (mission 0E only)
con_884D_script_0C                      = $0C ; 
con_884D_script_0D                      = $0D ; 
con_884D_script_0E                      = $0E ; 
con_884D_script_0F                      = $0F ; 
con_884D_script_10                      = $10 ; 
con_884D_script_11                      = $11 ; 
con_884D_script_12                      = $12 ; 
con_884D_script_13                      = $13 ; 
con_884D_script_14                      = $14 ; 
con_884D_script_15                      = $15 ; 
con_884D_script_16                      = $16 ; 
con_884D_script_17                      = $17 ; 
con_884D_script_18                      = $18 ; 
con_884D_script_shadow_warrior          = $19 ; mission 0E only
con_884D_script_1A                      = $1A ; 
con_884D_script_1B                      = $1B ; 

; handler at 0x018FB5
con_884D_script_80                      = $80 ; 
con_884D_script_81                      = $81 ; 



; for 0x019869
con_9859_00                             = $00 ; mission 03
con_9859_01                             = $01 ; mission 03
con_9859_02                             = $02 ; mission 04
con_9859_03                             = $03 ; mission 06
con_9859_04                             = $04 ; mission 07
con_9859_05                             = $05 ; mission 08
con_9859_06                             = $06 ; mission 09
con_9859_07                             = $07 ; mission 0A
con_9859_08                             = $08 ; mission 0D



; for 0x00A49A
con_A48A_anim_00                        = $00 ; 
con_A48A_anim_01                        = $01 ; 
con_A48A_anim_02                        = $02 ; 
con_A48A_anim_03                        = $03 ; 
con_A48A_anim_04                        = $04 ; 
con_A48A_anim_05                        = $05 ; 
con_A48A_anim_06                        = $06 ; 
con_A48A_anim_07                        = $07 ; 
con_A48A_anim_08                        = $08 ; 
con_A48A_anim_09                        = $09 ; 
con_A48A_anim_0A                        = $0A ; 
con_A48A_anim_0B                        = $0B ; 
con_A48A_anim_0C                        = $0C ; 
con_A48A_anim_0D                        = $0D ; 
con_A48A_anim_0E                        = $0E ; 
; con_A48A_anim_0F                      = $0F ; unused
; con_A48A_anim_10                      = $10 ; unused
con_A48A_anim_11                        = $11 ; 
con_A48A_anim_12                        = $12 ; 
con_A48A_anim_13                        = $13 ; 
con_A48A_anim_14                        = $14 ; 
con_A48A_anim_15                        = $15 ; 
con_A48A_anim_16                        = $16 ; 
con_A48A_anim_17                        = $17 ; 
con_A48A_anim_18                        = $18 ; unused 0x008E57, state 37 is unused
con_A48A_anim_19                        = $19 ; 
con_A48A_anim_1A                        = $1A ; 
con_A48A_anim_1B                        = $1B ; 
con_A48A_anim_1C                        = $1C ; 
con_A48A_anim_1D                        = $1D ; 
con_A48A_anim_1E                        = $1E ; 
con_A48A_anim_1F                        = $1F ; 
con_A48A_anim_20                        = $20 ; 
con_A48A_anim_21                        = $21 ; 
con_A48A_anim_22                        = $22 ; 
con_A48A_anim_23                        = $23 ; 
con_A48A_anim_24                        = $24 ; 
con_A48A_anim_25                        = $25 ; 
con_A48A_anim_26                        = $26 ; 
con_A48A_anim_27                        = $27 ; 
con_A48A_anim_28                        = $28 ; 
con_A48A_anim_29                        = $29 ; 
con_A48A_anim_2A                        = $2A ; 
con_A48A_anim_2B                        = $2B ; 
con_A48A_anim_2C                        = $2C ; 
con_A48A_anim_2D                        = $2D ; 
con_A48A_anim_2E                        = $2E ; 
con_A48A_anim_2F                        = $2F ; 
con_A48A_anim_30                        = $30 ; 
con_A48A_anim_31                        = $31 ; 
con_A48A_anim_32                        = $32 ; 
con_A48A_anim_33                        = $33 ; 
con_A48A_anim_34                        = $34 ; 
con_A48A_anim_35                        = $35 ; 
con_A48A_anim_36                        = $36 ; 
con_A48A_anim_37                        = $37 ; 
con_A48A_anim_38                        = $38 ; 
con_A48A_anim_39                        = $39 ; 
con_A48A_anim_3A                        = $3A ; 
con_A48A_anim_3B                        = $3B ; 
con_A48A_anim_3C                        = $3C ; 
con_A48A_anim_3D                        = $3D ; 
con_A48A_anim_3E                        = $3E ; 
con_A48A_anim_3F                        = $3F ; 



; for 0x01C9E8
con_CD20_00                             = $00 ; helicopter room (mission 02)
con_CD20_01                             = $01 ; 
con_CD20_02                             = $02 ; 
con_CD20_03                             = $03 ; 
con_CD20_04                             = $04 ; 
con_CD20_05                             = $05 ; 
con_CD20_06                             = $06 ; 
con_CD20_07                             = $07 ; 
con_CD20_08                             = $08 ; 
con_CD20_09                             = $09 ; 
con_CD20_0A                             = $0A ; 
con_CD20_0B                             = $0B ; 
con_CD20_0C                             = $0C ; 
con_CD20_0D                             = $0D ; 
con_CD20_0E                             = $0E ; 
con_CD20_0F                             = $0F ; 
con_CD20_10                             = $10 ; 
con_CD20_11                             = $11 ; 
con_CD20_12                             = $12 ; 
con_CD20_13                             = $13 ; 
con_CD20_14                             = $14 ; 
con_CD20_15                             = $15 ; conveyor room with 2 doors (mission 04)
con_CD20_16                             = $16 ; 
con_CD20_17                             = $17 ; 
con_CD20_18                             = $18 ; 
con_CD20_19                             = $19 ; 
con_CD20_1A                             = $1A ; 
con_CD20_1B                             = $1B ; 
con_CD20_1C                             = $1C ; 
con_CD20_1D                             = $1D ; 
con_CD20_1E                             = $1E ; 
con_CD20_1F                             = $1F ; 
con_CD20_20                             = $20 ; 
con_CD20_21                             = $21 ; 
con_CD20_22                             = $22 ; 
con_CD20_23                             = $23 ; 
con_CD20_24                             = $24 ; conveyor room (mission 07)
con_CD20_25                             = $25 ; dissapearing floor (mission 08 and 0A)
con_CD20_26                             = $26 ; room with spikes (mission 09)
con_CD20_27                             = $27 ; boss room (mission 0B)
con_CD20_28                             = $28 ; 
con_CD20_29                             = $29 ; 
con_CD20_2A                             = $2A ; 
con_CD20_2B                             = $2B ; title screen
con_CD20_2C                             = $2C ; 
con_CD20_2D                             = $2D ; 
con_CD20_2E                             = $2E ; 
con_CD20_2F                             = $2F ; 
con_CD20_30                             = $30 ; 
con_CD20_31                             = $31 ; 
con_CD20_32                             = $32 ; 
con_CD20_33                             = $33 ; 
con_CD20_34                             = $34 ; 
con_CD20_35                             = $35 ; 
con_CD20_36                             = $36 ; 
con_CD20_37                             = $37 ; 
con_CD20_38                             = $38 ; 
con_CD20_39                             = $39 ; 
con_CD20_3A                             = $3A ; 
con_CD20_3B                             = $3B ; 
con_CD20_3C                             = $3C ; 
con_CD20_3D                             = $3D ; 
con_CD20_3E                             = $3E ; 
con_CD20_3F                             = $3F ; 
con_CD20_40                             = $40 ; 
con_CD20_41                             = $41 ; 
con_CD20_42                             = $42 ; 
con_CD20_43                             = $43 ; 
con_CD20_44                             = $44 ; 
con_CD20_45                             = $45 ; 
con_CD20_46                             = $46 ; final cutscene if both players are alive
con_CD20_47                             = $47 ; final cutscene if 2p is dead
con_CD20_48                             = $48 ; final cutscene if 1p is dead
con_CD20_49                             = $49 ; 
con_CD20_4A                             = $4A ; 
con_CD20_4B                             = $4B ; 
con_CD20_4C                             = $4C ; 
con_CD20_4D                             = $4D ; 
con_CD20_4E                             = $4E ; 
con_CD20_4F                             = $4F ; 
con_CD20_50                             = $50 ; 
con_CD20_51                             = $51 ; 
con_CD20_52                             = $52 ; 
con_CD20_53                             = $53 ; 



; draw bg objects 0x01A6D3
con_A6C3_draw_door_linda                = $00 ; door with linda (mission 00)
con_A6C3_draw_door_williams             = $01 ; door with williams (mission 00)
con_A6C3_draw_heli_blue_door            = $02 ; helicopter blue door (mission 02)
con_A6C3_draw_heli_green_door           = $03 ; helicopter green door (mission 02)
con_A6C3_draw_enter_elevator_door       = $04 ; entering elevator door (mission 03)
con_A6C3_draw_leave_elevator_door       = $05 ; leaving elevator door (mission 03)
con_A6C3_draw_final_door_03             = $06 ; final door (mission 03)
con_A6C3_draw_final_door_04             = $07 ; final door (mission 04)
con_A6C3_draw_wooden_house_door         = $08 ; wooden house door (mission 05)
con_A6C3_draw_final_door_08             = $09 ; final door (mission 08)
con_A6C3_draw_final_door_0A             = $0A ; final door (mission 0A)
con_A6C3_draw_big_eyes                  = $0B ; big eyes (mission 06)



; screens for 0x01F719
con_F709_screen_00                      = $00 ; 
con_F709_screen_01                      = $01 ; 
con_F709_screen_02                      = $02 ; 
; con_F709_screen_03                    = $03 ; unused
con_F709_screen_04                      = $04 ; 
; con_F709_screen_05                    = $05 ; unused
; con_F709_screen_06                    = $06 ; unused
; con_F709_screen_07                    = $07 ; unused
con_F709_screen_08                      = $08 ; 
con_F709_screen_09                      = $09 ; 
con_F709_screen_0A                      = $0A ; 
con_F709_screen_0B                      = $0B ; sample version



; sound engine control bytes 0x014327
con_se_cb_C0                            = $C0 ; 
con_se_cb_C1                            = $C1 ; 
con_se_cb_C2                            = $C2 ; 
con_se_cb_C3                            = $C3 ; 
con_se_cb_C4                            = $C4 ; 
con_se_cb_C5                            = $C5 ; 
; con_se_cb_C6                          = $C6 ; unused
con_se_cb_C7                            = $C7 ; 
; con_se_cb_C8                          = $C8 ; unused
con_se_cb_C9                            = $C9 ; 
con_se_cb_CA                            = $CA ; 
con_se_cb_CB                            = $CB ; 
con_se_cb_CC                            = $CC ; 
con_se_cb_CD                            = $CD ; 
con_se_cb_loop_1                        = $CE ; 
con_se_cb_loop_2                        = $CF ; 
con_se_cb_jmp                           = $D0 ; 
con_se_cb_jsr                           = $D1 ; 
con_se_cb_rts                           = $D2 ; 
con_se_cb_stop                          = $D3 ; 
con_se_cb_D4                            = $D4 ; 
; con_se_cb_D5                          = $D5 ; unused
con_se_cb_D6                            = $D6 ; 
con_se_cb_D7                            = $D7 ; 
con_se_cb_D8                            = $D8 ; 
; con_se_cb_D9                          = $D9 ; unused
con_se_cb_DA                            = $DA ; 
con_se_cb_DB                            = $DB ; 
con_se_cb_DC                            = $DC ; 
con_se_cb_DD                            = $DD ; 



