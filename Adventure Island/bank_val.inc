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
con_screen_logo                         = $00 ; title screen
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



; todo
; for 0x004311
; need comments 0x000C3B 0x00094E 0x002F20
con_C301_00                             = $00 ; 
con_C301_01                             = $01 ; 
con_C301_02                             = $02 ; 
con_C301_03                             = $03 ; 
con_C301_04                             = $04 ; 
con_C301_05                             = $05 ; 
con_C301_06                             = $06 ; 
con_C301_07                             = $07 ; 
con_C301_08                             = $08 ; 
con_C301_09                             = $09 ; 
con_C301_0A                             = $0A ; 
con_C301_0B                             = $0B ; 
con_C301_0C                             = $0C ; 
con_C301_0D                             = $0D ; 
con_C301_0E                             = $0E ; 
con_C301_0F                             = $0F ; 
con_C301_10                             = $10 ; 
con_C301_11                             = $11 ; 
con_C301_12                             = $12 ; 
con_C301_13                             = $13 ; 
con_C301_14                             = $14 ; 
con_C301_15                             = $15 ; 
con_C301_16                             = $16 ; 
con_C301_17                             = $17 ; 
con_C301_18                             = $18 ; 

con_C301_20                             = $20 ; 
con_C301_21                             = $21 ; 
con_C301_22                             = $22 ; 
con_C301_23                             = $23 ; 
con_C301_24                             = $24 ; 
con_C301_25                             = $25 ; 
con_C301_26                             = $26 ; 
con_C301_27                             = $27 ; 
con_C301_28                             = $28 ; 
con_C301_29                             = $29 ; 
con_C301_2A                             = $2A ; 
con_C301_2B                             = $2B ; 
con_C301_2C                             = $2C ; 
con_C301_2D                             = $2D ; 
con_C301_2E                             = $2E ; 
con_C301_2F                             = $2F ; 
con_C301_30                             = $30 ; 
con_C301_31                             = $31 ; 
con_C301_32                             = $32 ; 
con_C301_33                             = $33 ; 
con_C301_34                             = $34 ; 
con_C301_35                             = $35 ; 
con_C301_36                             = $36 ; 
con_C301_37                             = $37 ; 
con_C301_38                             = $38 ; 
con_C301_39                             = $39 ; 
con_C301_3A                             = $3A ; 
con_C301_3B                             = $3B ; 
con_C301_3C                             = $3C ; 
con_C301_3D                             = $3D ; 
con_C301_3E                             = $3E ; 
con_C301_3F                             = $3F ; 
con_C301_40                             = $40 ; 
con_C301_41                             = $41 ; 
con_C301_42                             = $42 ; 
con_C301_43                             = $43 ; 
con_C301_44                             = $44 ; 
con_C301_45                             = $45 ; 
con_C301_46                             = $46 ; 
con_C301_47                             = $47 ; 
con_C301_48                             = $48 ; 
con_C301_49                             = $49 ; 
con_C301_4A                             = $4A ; 
con_C301_4B                             = $4B ; 
con_C301_4C                             = $4C ; 
con_C301_4D                             = $4D ; 
con_C301_4E                             = $4E ; 
con_C301_4F                             = $4F ; 
con_C301_50                             = $50 ; 
con_C301_51                             = $51 ; 
con_C301_52                             = $52 ; 
con_C301_53                             = $53 ; 
con_C301_54                             = $54 ; 
con_C301_55                             = $55 ; 
con_C301_56                             = $56 ; 
con_C301_57                             = $57 ; 
con_C301_58                             = $58 ; 
con_C301_59                             = $59 ; 
con_C301_5A                             = $5A ; 
con_C301_5B                             = $5B ; 
con_C301_5C                             = $5C ; 
con_C301_5D                             = $5D ; 
con_C301_5E                             = $5E ; 
con_C301_5F                             = $5F ; 

con_C301_60                             = $60 ; 
con_C301_61                             = $61 ; 
con_C301_62                             = $62 ; 
con_C301_63                             = $63 ; 
con_C301_64                             = $64 ; 
con_C301_65                             = $65 ; 
con_C301_66                             = $66 ; 
con_C301_67                             = $67 ; 
con_C301_68                             = $68 ; 
con_C301_69                             = $69 ; 
con_C301_6A                             = $6A ; 
con_C301_6B                             = $6B ; 
con_C301_6C                             = $6C ; 
con_C301_6D                             = $6D ; 
con_C301_6E                             = $6E ; 
con_C301_6F                             = $6F ; 
con_C301_70                             = $70 ; 
con_C301_71                             = $71 ; 
con_C301_72                             = $72 ; 
con_C301_73                             = $73 ; 
con_C301_74                             = $74 ; 
con_C301_75                             = $75 ; 
con_C301_76                             = $76 ; 
con_C301_77                             = $77 ; 
con_C301_78                             = $78 ; 
con_C301_79                             = $79 ; 
con_C301_7A                             = $7A ; 
con_C301_7B                             = $7B ; 
con_C301_7C                             = $7C ; 
con_C301_7D                             = $7D ; 
con_C301_7E                             = $7E ; 
con_C301_7F                             = $7F ; 
con_C301_80                             = $80 ; 
con_C301_81                             = $81 ; 
con_C301_82                             = $82 ; 
con_C301_83                             = $83 ; 

con_C301_90                             = $90 ; 
con_C301_91                             = $91 ; 
con_C301_92                             = $92 ; 
con_C301_93                             = $93 ; 
con_C301_94                             = $94 ; 
con_C301_95                             = $95 ; 
con_C301_96                             = $96 ; 
con_C301_97                             = $97 ; 
con_C301_98                             = $98 ; 
con_C301_99                             = $99 ; 
con_C301_9A                             = $9A ; 
con_C301_9B                             = $9B ; 
con_C301_9C                             = $9C ; 
con_C301_9D                             = $9D ; 
con_C301_9E                             = $9E ; 
con_C301_9F                             = $9F ; 
con_C301_A0                             = $A0 ; 
con_C301_A1                             = $A1 ; 
con_C301_A2                             = $A2 ; 
con_C301_A3                             = $A3 ; 
con_C301_A4                             = $A4 ; 
con_C301_A5                             = $A5 ; 
con_C301_A6                             = $A6 ; 
con_C301_A7                             = $A7 ; 
con_C301_A8                             = $A8 ; 

con_C301_B0                             = $B0 ; 
con_C301_B1                             = $B1 ; 
con_C301_B2                             = $B2 ; 
con_C301_B3                             = $B3 ; 
con_C301_B4                             = $B4 ; 
con_C301_B5                             = $B5 ; 
con_C301_B6                             = $B6 ; 
con_C301_B7                             = $B7 ; 
con_C301_B8                             = $B8 ; 
con_C301_B9                             = $B9 ; 
con_C301_BA                             = $BA ; 
con_C301_BB                             = $BB ; 
con_C301_BC                             = $BC ; 
con_C301_BD                             = $BD ; 
con_C301_BE                             = $BE ; 
con_C301_BF                             = $BF ; 
con_C301_C0                             = $C0 ; 
con_C301_C1                             = $C1 ; 
con_C301_C2                             = $C2 ; 
con_C301_C3                             = $C3 ; 
con_C301_C4                             = $C4 ; 
con_C301_C5                             = $C5 ; 
con_C301_C6                             = $C6 ; 
con_C301_C7                             = $C7 ; 
con_C301_C8                             = $C8 ; 
con_C301_C9                             = $C9 ; 
con_C301_CA                             = $CA ; 
con_C301_CB                             = $CB ; 
con_C301_CC                             = $CC ; 
con_C301_CD                             = $CD ; 
con_C301_CE                             = $CE ; 
con_C301_CF                             = $CF ; 
con_C301_D0                             = $D0 ; 

con_C301_D8                             = $D8 ; 
con_C301_D9                             = $D9 ; 
con_C301_DA                             = $DA ; 
con_C301_DB                             = $DB ; 
con_C301_DC                             = $DC ; 
con_C301_DD                             = $DD ; 
con_C301_DE                             = $DE ; 
con_C301_DF                             = $DF ; 
con_C301_E0                             = $E0 ; 
con_C301_E1                             = $E1 ; 
con_C301_E2                             = $E2 ; 
con_C301_E3                             = $E3 ; 
con_C301_E4                             = $E4 ; 
con_C301_E5                             = $E5 ; 
con_C301_E6                             = $E6 ; 
con_C301_E7                             = $E7 ; 
con_C301_E8                             = $E8 ; 
con_C301_E9                             = $E9 ; 
con_C301_EA                             = $EA ; 
con_C301_EB                             = $EB ; 
con_C301_EC                             = $EC ; 
con_C301_ED                             = $ED ; 
con_C301_EE                             = $EE ; 
con_C301_EF                             = $EF ; 
con_C301_F0                             = $F0 ; 
con_C301_F1                             = $F1 ; 
con_C301_F2                             = $F2 ; 
con_C301_F3                             = $F3 ; 
con_C301_F4                             = $F4 ; 
con_C301_F5                             = $F5 ; 
con_C301_F6                             = $F6 ; 
con_C301_F7                             = $F7 ; 
con_C301_F8                             = $F8 ; 




