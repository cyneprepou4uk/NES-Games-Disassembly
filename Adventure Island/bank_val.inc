; keep your global constant values inside this file

; todo
    ; залогировать когда с феей завершаешь уровень чтобы дали 1 жизнь



; MISC
con_chr_bank                            = $00 ; 



; ram_buttons
; ram_000E
; ram_000F
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30



; static screen 0x003197
con_screen_title_screen                 = $00 ; title screen
con_screen_between_stages               = $01 ; stats between stages
con_screen_game_over                    = $02 ; game over
con_screen_scoring                      = $03 ; counting score between stages
con_screen_final_cutscene               = $04 ; final cutscene at the end of the game



; ram_0664_obj
con_item_id_00                          = $00 ; weapon hammer
con_item_id_01                          = $01 ; weapon rocks
con_item_id_02                          = $02 ; milk white
con_item_id_03                          = $03 ; milk black
con_item_id_04                          = $04 ; skateboard
con_item_id_05                          = $05 ; flower
con_item_id_06                          = $06 ; ring
con_item_id_07                          = $07 ; extra life
con_item_id_08                          = $08 ; hudson bee
con_item_id_09                          = $09 ; key



; for 0x00099E and 0x0009AE
con_add_score____10                     = $00 ; 
con_add_score____20                     = $01 ; 
con_add_score____50                     = $02 ; 
con_add_score___100                     = $03 ; 
con_add_score___200                     = $04 ; 
con_add_score___300                     = $05 ; 
con_add_score___400                     = $06 ; 
con_add_score___500                     = $07 ; 
con_add_score__1000                     = $08 ; 
con_add_score__2000                     = $09 ; 
; con_add_score__3000                   = $0A ; unused
; con_add_score__4000                   = $0B ; unused
con_add_score__5000                     = $0C ; 
; con_add_score_10000                   = $0D ; unused
; con_add_score_20000                   = $0E ; unused
; con_add_score_50000                   = $0F ; unused



; ram_obj_id
; ram_0087_obj_id
; need comments 0x0012B4 0x000DD5
; 0x00102E 0x000CC4 0x000CD4
; most of id's are compressed inside stage data and not used
; directly, although I'm 99% sure which ones are unused
; see screenshots folder
; con_obj_id_00                         = $00 ; 80 unused
con_obj_id_01                           = $01 ; 81 bonfire
con_obj_id_02                           = $02 ; 82 small rock lying on the ground
con_obj_id_03                           = $03 ; 83 snake
con_obj_id_04                           = $04 ; 84 big rolling rock (slow)
con_obj_id_05                           = $05 ; 85 big rolling rock (fast)
con_obj_id_06                           = $06 ; 86 white pig (slow) (медленная)
con_obj_id_07                           = $07 ; 87 black frog (facing left)
con_obj_id_08                           = $08 ; 88 black frog (facing right), same as 22
con_obj_id_09                           = $09 ; 89 crow (flying low)
con_obj_id_0A                           = $0A ; 8A crow (flying high)
con_obj_id_0B                           = $0B ; 8B bat
con_obj_id_0C                           = $0C ; 8C white pig (fast)
con_obj_id_0D                           = $0D ; 8D green frog
con_obj_id_0E                           = $0E ; 8E snail
con_obj_id_0F                           = $0F ; 8F burning skull
con_obj_id_10                           = $10 ; 90 banana (высокий)
con_obj_id_11                           = $11 ; 91 red apple (low)
con_obj_id_12                           = $12 ; 92 red apple (high)
con_obj_id_13                           = $13 ; 93 carrot
con_obj_id_14                           = $14 ; 94 pineapple
con_obj_id_15                           = $15 ; 95 inactive object, appears on several stages (for example 1-3, 2-1, 4-2, etc)
; con_obj_id_16                         = $16 ; 96 unused
con_obj_id_17                           = $17 ; 97 egg which gives you a flower
con_obj_id_18                           = $18 ; 98 hammer weapon which is hanging in the air, waiting to be picked up
con_obj_id_19                           = $19 ; 99 secret egg which gives you rocks weapon or black milk
con_obj_id_1A                           = $1A ; 9A secret egg which gives you a hudson bee
con_obj_id_1B                           = $1B ; 9B secret egg which gives you a key
con_obj_id_1C                           = $1C ; 9C normal egg, also an egg which you unlock by jumping (hammer, rocks, white milk, etc), also an item from an egg (except 47)
con_obj_id_1D                           = $1D ; 9D egg which gives you an eggplant
; con_obj_id_1E                         = $1E ; 9E unused
; con_obj_id_1F                         = $1F ; 9F unused
con_obj_id_20                           = $20 ; A0 a growing flower, which spawns a running raccoon with the same id
con_obj_id_21                           = $21 ; A1 same as 20, but flower is different color, and that raccoon jumps if you shoot your weapon
con_obj_id_22                           = $22 ; A2 black frog (facing right), same as 08
con_obj_id_23                           = $23 ; A3 red octopus (jumps low)
con_obj_id_24                           = $24 ; A4 jumping blue fish
con_obj_id_25                           = $25 ; A5 red octopus (jumps high)
con_obj_id_26                           = $26 ; A6 hanging icicle on the ceiling (same as 27)
con_obj_id_27                           = $27 ; A7 hanging icicle on the ceiling (same as 26)
con_obj_id_28                           = $28 ; A8 blue octopus (jumps low)
con_obj_id_29                           = $29 ; A9 blue octopus (jumps high)
con_obj_id_2A                           = $2A ; AA projectile of a snake 03
con_obj_id_2B                           = $2B ; AB points which fly up
con_obj_id_2C                           = $2C ; AC nes controller item
; con_obj_id_2D                         = $2D ; AD unused
; con_obj_id_2E                         = $2E ; AE unused
; con_obj_id_2F                         = $2F ; AF unused
con_obj_id_30                           = $30 ; B0 a bonus stage secret (your weapon dissapears if you shoot that area)
con_obj_id_31                           = $31 ; B1 small rock 02, which spawns pot 39 if you fearlessly run into it
con_obj_id_32                           = $32 ; B2 bonfire 01, which spawns pot 39 if you fearlessly run into it
con_obj_id_33                           = $33 ; B3 snail 0E, which spawns pot 39 if you fearlessly run into it
con_obj_id_34                           = $34 ; B4 pig 06, which spawns pot 39 if you fearlessly run into it
con_obj_id_35                           = $35 ; B5 snake 03, which spawns pot 39 if you fearlessly run into it
con_obj_id_36                           = $36 ; B6 spring (ready to bounce you off)
con_obj_id_37                           = $37 ; B7 spring (activated by default, stages 6-2 and 7-1 only)
con_obj_id_38                           = $38 ; B8 spider
con_obj_id_39                           = $39 ; B9 pot/goblet/cup/jar
con_obj_id_3A                           = $3A ; BA platform which is moving left and right
con_obj_id_3B                           = $3B ; BB regular platform (idle or moving), also bonus stage white platform
; con_obj_id_3C                         = $3C ; BC unused
; con_obj_id_3D                         = $3D ; BD unused
con_obj_id_3E                           = $3E ; BE platform which starts moving left and right if you position yourself above it
con_obj_id_3F                           = $3F ; BF platform which starts moving up and down if you position yourself above it. also platform during boss fight, also respawning up/down platforms (except multiple cloud platforms)
con_obj_id_40                           = $40 ; C0 player himself
con_obj_id_41                           = $41 ; C1 a sign with S, G and numbers (checkpoints)
con_obj_id_42                           = $42 ; C2 player projectile (hammer, rocks), also tina's heart during final cutscene
con_obj_id_43                           = $43 ; C3 body of the boss
con_obj_id_44                           = $44 ; C4 boss projectile
con_obj_id_45                           = $45 ; C5 explosion (for exmple if you run on your skateboard into a rock)
con_obj_id_46                           = $46 ; C6 head of the boss
con_obj_id_47                           = $47 ; C7 fairy/eggplant



; ram_music_id
con_music_off                           = $00 ; 
con_music_title                         = $01 ; title screen
con_music_ost_1                         = $02 ; soundtrack forest (day)
con_music_ost_2                         = $03 ; soundtrack forest (night)
con_music_ost_3                         = $04 ; soundtrack beach
con_music_ost_4                         = $05 ; soundtrack dungeon
con_music_ost_5                         = $06 ; soundtrack mountain
con_music_bonus                         = $07 ; going into bonus stage/fairy is protecting you
con_music_eggplant                      = $08 ; eggplant is eating your stamina 
con_music_death                         = $09 ; death
con_music_game_over                     = $0A ; game over
con_music_final_cutscene                = $0B ; final cutscene at the end of the game
con_music_boss_fight                    = $0C ; boss fight
con_music_boss_defeated                 = $0D ; boss defeated
con_music_stage_complete                = $0E ; stage complete



; ram_sound_id
con_sound_off                           = $00 ; 
con_sound_plr_jump_high                 = $01 ; jump high
con_sound_stumble                       = $02 ; trip over a stone
con_sound_pickup_fruit                  = $03 ; pick up fruit
con_sound_weapon_rebound                = $04 ; hit a rock with a hammer/hit a boss on a body
con_sound_rock_bounce                   = $05 ; rock bounce
con_sound_shoot_weapon                  = $06 ; shoot weapon
con_sound_ocropus_jump                  = $07 ; octopus jump
con_sound_plr_jump_spring               = $08 ; jump on spring
con_sound_frog_jump                     = $09 ; frog jump
con_sound_pickup_item                   = $0A ; pick up item
con_sound_boss_attack                   = $0B ; boss throws a fireball
con_sound_death                         = $0C ; player is death
con_sound_kill                          = $0D ; hit an enemy with a weapon and it dies 
con_sound_water_splash                  = $0E ; water splash
con_sound_explosion                     = $0F ; hit an enemy or rock with your body while invulnerable/boss head explodes/eggplant explodes at the end of the stage
con_sound_extra_life                    = $10 ; gain extra life (has a higher prioriry over music)
con_sound_pause                         = $11 ; pause
con_sound_scoring                       = $12 ; counting score between stages
con_sound_plr_jump_low                  = $13 ; jump low



; music control bytes 0x00496D
con_mcb_F2                              = $F2 ; ??? 
con_mcb_rts                             = $F3 ; return from F6
con_mcb_F4                              = $F4 ; ??? +1 following byte
con_mcb_F5                              = $F5 ; ??? +1 following byte
con_mcb_jsr                             = $F6 ; jump to a different pointer saving return address
con_mcb_set_custom_pointer              = $F7 ; set main loop pointer (otherise default is used)
con_mcb_F8                              = $F8 ; ??? +1 following byte
con_mcb_F9                              = $F9 ; ??? 
con_mcb_FA                              = $FA ; ??? +1 following byte
con_mcb_FB                              = $FB ; ??? +1 following byte
con_mcb_FC                              = $FC ; ??? 
con_mcb_FD                              = $FD ; +1 following byte
con_mcb_play_again                      = $FE ; jump to main loop pointer (F7)
con_mcb_exit                            = $FF ; 




