; keep your global constant values inside this file

; MISC
con_prg_bank                            = $00 ; 



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

con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_SSAB                           = con_btn_Start + con_btn_Select + con_btn_A + con_btn_B    ; F0



; ram_ariel_status
; handlers at 0x01C9FC
con_ariel_default                       = $00 ; idle/moving/holding weapon
con_ariel_turning                       = $01 ; turning around
con_ariel_jumping_out_of_water          = $02 ; jumping out of water
con_ariel_attacking                     = $03 ; shooting bubble/throwing object
con_ariel_coming_to_ice                 = $04 ; after 02, activated once until 06
con_ariel_coming_to_surface             = $05 ; after 02, activated once until 06
con_ariel_diving                        = $06 ; diving into water after 02, 04 or 05
con_ariel_damaged                       = $07 ; getting hit by something
con_ariel_waiting_for_boss              = $08 ; waiting for boss, can't move
con_ariel_spawning                      = $09 ; when level starts, she drops down



; ram_obj_id
; need coments at 0x01D4FC 0x019A1B 0x019AAB 0x018379
; see screenshots inside misc folder
con_obj_id_00                           = $00 ; 
con_obj_id_projectile_player            = $01 ; projectile made by a player (enemy in bubble 02 or shell 30)
con_obj_id_enemy_inside_bubble          = $02 ; any enemy after it was trapped in a bubble
con_obj_id_piranha_stupid               = $03 ; piranha fish, swims with zig-zag movements, accelerates straight foward when notices a player
con_obj_id_sand_splashes_player         = $04 ; caused by player's tail
con_obj_id_seahorse                     = $05 ; normal enemy, not boss
con_obj_id_piranha_ghost                = $06 ; transforms into 03 when sheet is thrown off
con_obj_id_ghost_sheet                  = $07 ; the thing you throw off from 06
con_obj_id_shooting_fish                = $08 ; floats on the surface of the water
con_obj_id_projectile_shooting_fish     = $09 ; projectile made by a shooting fish 08 (spit)
con_obj_id_octopus                      = $0A ; moves up and down, shoots 2 0A
con_obj_id_projectile_octopus           = $0B ; projectile made by octopus 0A (purple small rocks)
con_obj_id_boss_shark_1                 = $0C ; stage 1 boss when he spawns minions
con_obj_id_boss_shark_2                 = $0D ; stage 1 boss boss when accelerates straight foward
con_obj_id_piranha_minion_shark         = $0E ; piranha fish during stage 1 boss fight, swims straight foward
con_obj_id_cannon                       = $0F ; sinked ship cannon during stage 4 boss fight
con_obj_id_sea_urchin_1                 = $10 ; created by a spawner 11
con_obj_id_spawner_sea_urchin           = $11 ; object constantly spawns sea urchins 10
con_obj_id_piranha_smart                = $12 ; piranha fish, swims back and forth, accelerates towards player position when notices
con_obj_id_sea_urchin_2                 = $13 ; created by projectile 48
con_obj_id_starfish_3                   = $14 ; created by projectile 48
con_obj_id_crab_naked                   = $15 ; crab without a white helmet
con_obj_id_mini_fish_1                  = $16 ; a couple of times tries to follow a player, then give ups and keeps swimming away
; con_obj_id_17                         = $17 ; unused but exists 0x013C1B
; con_obj_id_18                         = $18 ; unused
; con_obj_id_19                         = $19 ; unused
; con_obj_id_1A                         = $1A ; unused
; con_obj_id_1B                         = $1B ; unused
con_obj_id_sleeping_fish                = $1C ; spawns 3 1D
con_obj_id_mini_fish_2                  = $1D ; spawns from 1C and goes back to its mouth, transforms into 16 if player is close enough
con_obj_id_mother_fish                  = $1E ; spawns 4 1F 1-2 times while swimming
con_obj_id_mini_fish_3                  = $1F ; spawns from 1E, swims diagonally in 1 of 4 directions, transforms into 16 if player is close enough
con_obj_id_shrimp                       = $20 ; quickly swims to player position if close enough
con_obj_id_green_snake                  = $21 ; green snake with a big head at the room before final boss
con_obj_id_spawner_starfish             = $22 ; object constantly spawns starfishes 23
con_obj_id_starfish_1                   = $23 ; spawns from 22
con_obj_id_ice_cube_fish                = $24 ; drops down from heavens, transforms into 03 after landing
con_obj_id_crab_helmet                  = $25 ; crab with a white helmet
con_obj_id_weapon_power_00              = $26 ; player weapon power 0 (default)
con_obj_id_weapon_power_01              = $27 ; player weapon power 1
con_obj_id_weapon_power_02              = $28 ; player weapon power 2
con_obj_id_weapon_power_03              = $29 ; player weapon power 3
con_obj_id_boss_walrus                  = $2A ; stage 3 boss
con_obj_id_weapon_walrus                = $2B ; spawns 24 or 30 but with 2B index, changes index to normal when stops sliding
con_obj_id_boss_eel_1                   = $2C ; stage 2 boss, 1st eel
con_obj_id_boss_eel_2                   = $2D ; stage 2 boss, 2nd eel
con_obj_id_boss_seahorse                = $2E ; stage 4 boss
con_obj_id_piranha_cannon               = $2F ; spawns from 0F, transforms into 12 later
con_obj_id_shell                        = $30 ; shell weapon (can be hidden in sand)
con_obj_id_rock_small                   = $31 ; can be moved with 28 or 29
con_obj_id_rock_big                     = $32 ; can be moved with 29
con_obj_id_barrel                       = $33 ; can be moved with 27, 28 or 29
con_obj_id_heart_big                    = $34 ; hidden item heart big
con_obj_id_heart_small                  = $35 ; hidden item heart small
con_obj_id_extra_life                   = $36 ; extra life
con_obj_id_jar                          = $37 ; jar from defeated boss
con_obj_id_chest_pearl_purple           = $38 ; pearl purple
con_obj_id_chest_pearl_green            = $39 ; pearl green
con_obj_id_item_fork                    = $3A ; hidden item fork
con_obj_id_item_pipe                    = $3B ; hidden item pipe
con_obj_id_spawner_volcano_bottom       = $3C ; object constantly spawns 3 44
con_obj_id_dead_boss                    = $3D ; flying off the screen dead boss at stages 1-4
con_obj_id_boss_ursula_small_dead       = $3E ; replaces 47 when defeated
; con_obj_id_3F                         = $3F ; unused but exists 0x013C37
con_obj_id_chest_empty                  = $40 ; 
con_obj_id_spawner_mini_fish            = $41 ; object constantly spawns mini fishes 4B
con_obj_id_dead_enemy                   = $42 ; corpses of any enemy (not bosses)
con_obj_id_spawner_volcano_top          = $43 ; object constantly spawns 3 44
con_obj_id_projectile_volcano           = $44 ; spawns from 3C and 43
con_obj_id_sand_fish                    = $45 ; hides inside sand, moves when player is close enough
con_obj_id_sand_splashes_fish           = $46 ; caused by 45
con_obj_id_boss_ursula_small_top        = $47 ; stage 5 boss, upper half of the body (hurtbox and actual spawner of 48 and 49)
con_obj_id_projectile_ursula_fake       = $48 ; stage 5 boss projectile, transorms into 03, 05, 12, 13 or 14
con_obj_id_projectile_ursula_real       = $49 ; stage 5 boss projectile, looks like 48 but doesn't transform, just drops down
con_obj_id_boss_ursula_small_bottom     = $4A ; stage 5 boss, lower half of the body (lights up when spawner is activated)
con_obj_id_mini_fish_4                  = $4B ; newborn mini fish from 41, transforms into 16 later
con_obj_id_bubble_burst                 = $4C ; bubble projectile with trapped enemy when it expires or hits something
con_obj_id_secret_heart_sand            = $4D ; hidden small/big heart in a sand
con_obj_id_secret_heart_left            = $4E ; hidden small/big heart left side, moves right when unlocked
con_obj_id_secret_heart_right           = $4F ; hidden small/big heart right side, moves left when unlocked
con_obj_id_secret_heart_down            = $50 ; hidden small/big heart down side, moves up when unlocked
con_obj_id_secret_heart_up              = $51 ; hidden small/big heart up side, moves down when unlocked
con_obj_id_secret_item_sand             = $52 ; hidden fork/pipe in a sand
con_obj_id_secret_item_left             = $53 ; hidden fork/pipe left side, moves right when unlocked
; con_obj_id_secret_item_right          = $54 ; hidden fork/pipe right side, moves left when unlocked (unused but working)
con_obj_id_secret_item_down             = $55 ; hidden fork/pipe down side, moves up when unlocked
con_obj_id_secret_item_up               = $56 ; hidden fork/pipe up side, moves down when unlocked
con_obj_id_boss_ursula_big_alive        = $57 ; stage 6 boss while alive (hurtbox)
con_obj_id_piranha_minion_ursula        = $58 ; piranha fish during stage 6 boss fight, swims at the bottom
con_obj_id_boss_ursula_big_dead         = $59 ; stage 6 boss when dead, she begins to dissapear
con_obj_id_spawner_crabs                = $5A ; object constantly spawns crabs 15
con_obj_id_starfish_2                   = $5B ; spawns from 0F, transforms into 10 later
con_obj_id_half_trapped_enemy           = $5C ; half-bubbled with default weapon, drawing on top of the enemy
con_obj_id_swimming_bubbles             = $5D ; bubbles during stage 6 boss fight, swim at the bottom
con_obj_id_teleport                     = $5E ; one specific teleport at stage 5
; con_obj_id_5F                         = $5F ; unused



; ram_music_id
; ram_sfx_queue
; music, melody
; need commments at 0x014A53
con_music_title_screen                  = $00 ; logo
con_music_cutscene_1                    = $01 ; cutscene music 1
con_music_stage_00                      = $02 ; stage 1
con_music_stage_01                      = $03 ; stage 2
con_music_stage_02                      = $04 ; stage 3
con_music_stage_03                      = $05 ; stage 4
con_music_stage_04                      = $06 ; stage 5
con_music_stage_complete                = $07 ; stage complete
con_music_boss_fight                    = $08 ; normal boss fight
con_music_stage_05                      = $09 ; stage 6 final boss fight
con_music_cutscene_2                    = $0A ; cutscene 2
con_music_game_over                     = $0B ; game over
con_music_stage_preview                 = $0C ; stage preview (name and number)
; con_music_0D                          = $0D ; 
; con_music_0E                          = $0E ; 
; con_music_0F                          = $0F ; 
; con_music_10                          = $10 ; 

; sound effects
; need commments at 0x014A53
con_sfx_11                              = $11 ; 
con_sfx_shoot                           = $12 ; shoot with
con_sfx_bubble_hit                      = $13 ; bubble projectile hit an enemy
con_sfx_bubble_burst                    = $14 ; bubble projectile expired or hit a wall
con_sfx_15                              = $15 ; 
con_sfx_16                              = $16 ; 
con_sfx_17                              = $17 ; 
con_sfx_18                              = $18 ; 
con_sfx_item_pickup                     = $19 ; picking up forks, pipes, hearts, lives
con_sfx_1A                              = $1A ; 
con_sfx_enemy_killed                    = $1B ; 
con_sfx_pause_menu                      = $1C ; going in and out
con_sfx_get_hit                         = $1D ; player or boss is taking damage
con_sfx_option_select                   = $1E ; select option in menus
con_sfx_1F                              = $1F ; 
; con_sfx_20                            = $20 ; 
con_sfx_sand                            = $21 ; 
con_sfx_22                              = $22 ; 
con_sfx_23                              = $23 ; 

; 
con_se_cb_88                            = $88 ; 

; sound engine control bytes
; need commments at 0x0141C5
con_se_cb__F0                           = $F0 ; 
; con_se_cb__F1                         = $F1 ; 
con_se_cb__F2                           = $F2 ; 
con_se_cb__pause                        = $F3 ; 
con_se_cb__resume                       = $F4 ; 
; con_se_cb__F5                         = $F5 ; 
; con_se_cb__F6                         = $F6 ; 
; con_se_cb__F7                         = $F7 ; 



; 0x01C2D4
con_C2C4_00                             = $00 ; 
con_C2C4_01                             = $01 ; 
con_C2C4_02                             = $02 ; 
con_C2C4_03                             = $03 ; 
con_C2C4_04                             = $04 ; 
con_C2C4_05                             = $05 ; 
; con_C2C4_06                           = $06 ; unused
con_C2C4_07                             = $07 ; 
con_C2C4_08                             = $08 ; 
con_C2C4_09                             = $09 ; 
con_C2C4_0A                             = $0A ; 
con_C2C4_0B                             = $0B ; 
con_C2C4_0C                             = $0C ; 
con_C2C4_0D                             = $0D ; 
con_C2C4_0E                             = $0E ; 
con_C2C4_0F                             = $0F ; 
con_C2C4_10                             = $10 ; 
con_C2C4_11                             = $11 ; 
con_C2C4_12                             = $12 ; 
con_C2C4_13                             = $13 ; 
con_C2C4_14                             = $14 ; 
con_C2C4_15                             = $15 ; was used but I can't find it
con_C2C4_16                             = $16 ; 
con_C2C4_17                             = $17 ; 
con_C2C4_18                             = $18 ; 
con_C2C4_19                             = $19 ; 
con_C2C4_1A                             = $1A ; 
con_C2C4_1B                             = $1B ; 
con_C2C4_1C                             = $1C ; 
con_C2C4_1D                             = $1D ; 
; con_C2C4_1E                           = $1E ; unused?
; con_C2C4_1F                           = $1F ; unused



; sound engine control bytes 0x0144B7
con_se_cb_00                            = $00 ; 
con_se_cb_01                            = $01 ; 
con_se_cb_02                            = $02 ; 
con_se_cb_03                            = $03 ; 
con_se_cb_04                            = $04 ; 
con_se_cb_05                            = $05 ; 
con_se_cb_06                            = $06 ; 
con_se_cb_07                            = $07 ; 
con_se_cb_08                            = $08 ; 
con_se_cb_09                            = $09 ; 
con_se_cb_0A                            = $0A ; 
; con_se_cb_0B                          = $0B ; unused
con_se_cb_0C                            = $0C ; 
; con_se_cb_0D                          = $0D ; unused
con_se_cb_0E                            = $0E ; loop?
con_se_cb_0F                            = $0F ; loop?
con_se_cb_10                            = $10 ; loop?
; con_se_cb_11                          = $11 ; unused
con_se_cb_12                            = $12 ; jmp/jsr? in pair with 0E?
con_se_cb_13                            = $13 ; jmp/jsr? in pair with 0F?
; con_se_cb_14                          = $14 ; unused
; con_se_cb_15                          = $15 ; unused
con_se_cb_jmp                           = $16 ; 
con_se_cb_stop                          = $17 ; 
con_se_cb_18                            = $18 ; 



