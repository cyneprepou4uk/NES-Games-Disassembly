; keep your global constant values inside this file



; MISC
con_prg_bank                            = $00 ; 
con_mirroring_V                         = $0E ; vertical
con_mirroring_H                         = $0F ; horisontal



; ram_btn_press                         = $F8
; ram_btn_hold                          = $FA
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 
        
con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F



; ram_game_mode_main                    = $12
; needed comments at 0x014550   0x01459C   0x00A607
;                    0x0090D6   0x01F192
;                    0x01EB45 & 0x01E92E - rename offsets
con_GM_title_screen                     = $00 ; logo and manual
con_GM_slot_selection                   = $01 ; menu with 3 slots and 2 options
con_GM_02                               = $02 ; 
con_GM_03                               = $03 ; 
con_GM_04                               = $04 ; 
con_GM_05                               = $05 ; 
con_GM_06                               = $06 ; 
con_GM_07                               = $07 ; not found but defenitely was used, probably set by INC
con_GM_08                               = $08 ; 
con_GM_09                               = $09 ; 
con_GM_0A                               = $0A ; 
con_GM_0B                               = $0B ; 
con_GM_0C                               = $0C ; 
con_GM_0D                               = $0D ; 
con_GM_register                         = $0E ; register your name menu
con_GM_elimination                      = $0F ; eliminate slot menu
con_GM_10                               = $10 ; 
con_GM_death                            = $11 ; link is dead
con_GM_triforce_collected               = $12 ; collect a piece of triforce
con_GM_13                               = $13 ; 



; ram_direction                         = $98
con_dir_00                              = $00 ; 
con_dir_Right                           = $01 ; 
con_dir_Left                            = $02 ; 
con_dir__LR                             = $03 ; con_dir_Left + con_dir_Right
con_dir_Down                            = $04 ; 
con_dir_05                              = $05 ; 
con_dir_06                              = $06 ; 
con_dir_07                              = $07 ; unused?
con_dir_Up                              = $08 ; 
con_dir_09                              = $09 ; 
con_dir_0A                              = $0A ; 
con_dir_0B                              = $0B ; unused?
con_dir__UD                             = $0C ; con_dir_Up + con_dir_Down
con_dir_0D                              = $0D ; con_dir_Right + con_dir_Up + con_dir_Down ?



con_msg_00                              = $00 ; IT'S DANGEROUS TO GO ALONE! TAKE THIS.
con_msg_01                              = $01 ; MASTER USING IT AND YOU CAN HAVE THIS.
con_msg_02                              = $02 ; TAKE ANY ONE YOU WANT.
con_msg_03                              = $03 ; SECRET IS IN THE TREE AT THE DEAD-END.
con_msg_04                              = $04 ; LET'S PLAY MONEY MAKING GAME.
con_msg_05                              = $05 ; PAY ME FOR THE DOOR REPAIR CHARGE.
con_msg_06                              = $06 ; SHOW THIS TO THE OLD WOMAN.
con_msg_07                              = $07 ; MEET THE OLD MAN AT THE GRAVE.
con_msg_08                              = $08 ; BUY MEDICINE BEFORE YOU GO.
con_msg_09                              = $09 ; PAY ME AND I'LL TALK.
con_msg_0A                              = $0A ; THIS AIN'T ENOUGH TO TALK.
con_msg_0B                              = $0B ; GO UP,UP, THE MOUNTAIN AHEAD.
con_msg_0C                              = $0C ; GO NORTH,WEST,SOUTH,WEST TO THE FOREST OF MAZE.
con_msg_0D                              = $0D ; BOY, YOU'RE RICH!
con_msg_0E                              = $0E ; BUY SOMETHIN' WILL YA!
con_msg_0F                              = $0F ; BOY, THIS IS REALLY EXPENSIVE!
con_msg_10                              = $10 ; TAKE ANY ONE YOU WANT. (10)
con_msg_11                              = $11 ; IT'S A SECRET TO EVERYBODY.
con_msg_12                              = $12 ; GRUMBLE,GRUMBLE...
con_msg_13                              = $13 ; EASTMOST PENNINSULA IS THE SECRET.
con_msg_14                              = $14 ; DODONGO DISLIKES SMOKE.
con_msg_15                              = $15 ; DID YOU GET THE SWORD FROM THE OLD MAN ON TOP OF THE WATERFALL?
con_msg_16                              = $16 ; WALK INTO THE WATERFALL.
con_msg_17                              = $17 ; SECRET POWER IS SAID TO BE IN THE ARROW.
con_msg_18                              = $18 ; DIGDOGGER HATES CERTAIN KIND OF SOUND.
con_msg_19                              = $19 ; I BET YOU'D LIKE TO HAVE MORE BOMBS.
con_msg_1A                              = $1A ; IF YOU GO IN THE DIRECTION OF THE ARROW.
con_msg_1B                              = $1B ; LEAVE YOUR LIFE OR MONEY.
con_msg_1C                              = $1C ; THERE ARE SECRETS WHERE FAIRIES DON'T LIVE.
con_msg_1D                              = $1D ; AIM AT THE EYES OF GOHMA.
con_msg_1E                              = $1E ; SOUTH OF ARROW MARK HIDES A SECRET.
con_msg_1F                              = $1F ; THERE'S A SECRET IN THE TIP OF THE NOSE.
con_msg_20                              = $20 ; SPECTACLE ROCK IS AN ENTRANCE TO DEATH. (20)
con_msg_21                              = $21 ; 10TH ENEMY HAS THE BOMB.
con_msg_22                              = $22 ; ONES WHO DOES NOT HAVE TRIFORCE CAN'T GO IN.
con_msg_23                              = $23 ; PATRA HAS THE MAP.
con_msg_24                              = $24 ; GO TO THE NEXT ROOM.
con_msg_25                              = $25 ; EYES OF SKULL HAS A SECRET.



; ram_obj_id                            = $034F
; need comments at 0x01FBC4
con_obj_id_00                           = $00 ; 
con_obj_id_01                           = $01 ; Lynel
con_obj_id_02                           = $02 ; Lynel
con_obj_id_03                           = $03 ; Moblin
con_obj_id_04                           = $04 ; Moblin
con_obj_id_05                           = $05 ; Goriya
con_obj_id_06                           = $06 ; Goriya
con_obj_id_07                           = $07 ; Octorock
con_obj_id_08                           = $08 ; Octorock
con_obj_id_09                           = $09 ; Octorock
con_obj_id_0A                           = $0A ; Octorock
con_obj_id_0B                           = $0B ; Darknut
con_obj_id_0C                           = $0C ; Darknut
con_obj_id_0D                           = $0D ; TektiteOrBoulder
con_obj_id_0E                           = $0E ; TektiteOrBoulder
con_obj_id_0F                           = $0F ; BlueLeever
con_obj_id_10                           = $10 ; RedLeever
con_obj_id_11                           = $11 ; Zora
con_obj_id_12                           = $12 ; Vire
con_obj_id_13                           = $13 ; Zol
con_obj_id_14                           = $14 ; Gel
con_obj_id_15                           = $15 ; Gel
con_obj_id_16                           = $16 ; PolsVoice
con_obj_id_17                           = $17 ; LikeLike
con_obj_id_18                           = $18 ; Digdogger
con_obj_id_19                           = $19 ; unused?
con_obj_id_1A                           = $1A ; Peahat
con_obj_id_1B                           = $1B ; Keese
con_obj_id_1C                           = $1C ; Keese
con_obj_id_1D                           = $1D ; Keese
con_obj_id_1E                           = $1E ; Armos
con_obj_id_1F                           = $1F ; BoulderSet
con_obj_id_20                           = $20 ; TektiteOrBoulder
con_obj_id_21                           = $21 ; Ghini
con_obj_id_22                           = $22 ; FlyingGhini
con_obj_id_23                           = $23 ; BlueWizzrobe
con_obj_id_24                           = $24 ; RedWizzrobe
con_obj_id_25                           = $25 ; PatraChild
con_obj_id_26                           = $26 ; PatraChild
con_obj_id_27                           = $27 ; Wallmaster
con_obj_id_28                           = $28 ; Rope
con_obj_id_29                           = $29 ; unused?
con_obj_id_2A                           = $2A ; Stalfos
con_obj_id_2B                           = $2B ; Bubble
con_obj_id_2C                           = $2C ; Bubble
con_obj_id_2D                           = $2D ; Bubble
con_obj_id_2E                           = $2E ; Whirlwind
con_obj_id_2F                           = $2F ; PondFairy
con_obj_id_30                           = $30 ; Gibdo
con_obj_id_31                           = $31 ; Dodongo
con_obj_id_32                           = $32 ; Dodongo
con_obj_id_33                           = $33 ; Gohma
con_obj_id_34                           = $34 ; Gohma
con_obj_id_35                           = $35 ; RupeeStash
con_obj_id_36                           = $36 ; Grumble
con_obj_id_37                           = $37 ; Zelda
con_obj_id_38                           = $38 ; Digdogger
con_obj_id_39                           = $39 ; Digdogger
con_obj_id_3A                           = $3A ; Lamnola
con_obj_id_3B                           = $3B ; Lamnola
con_obj_id_3C                           = $3C ; Manhandla
con_obj_id_3D                           = $3D ; Aquamentus
con_obj_id_3E                           = $3E ; Ganon
con_obj_id_3F                           = $3F ; GuardFire
con_obj_id_40                           = $40 ; StandingFire
con_obj_id_41                           = $41 ; Moldorm
con_obj_id_42                           = $42 ; Gleeok
con_obj_id_43                           = $43 ; Gleeok
con_obj_id_44                           = $44 ; Gleeok
con_obj_id_45                           = $45 ; Gleeok
con_obj_id_46                           = $46 ; GleeokHead
con_obj_id_47                           = $47 ; Patra
con_obj_id_48                           = $48 ; Patra
con_obj_id_49                           = $49 ; Trap
con_obj_id_4A                           = $4A ; Trap
con_obj_id_4B                           = $4B ; UnderworldPerson
con_obj_id_4C                           = $4C ; UnderworldPerson
con_obj_id_4D                           = $4D ; UnderworldPerson
con_obj_id_4E                           = $4E ; UnderworldPerson
con_obj_id_4F                           = $4F ; UnderworldPerson
con_obj_id_50                           = $50 ; UnderworldPerson
con_obj_id_51                           = $51 ; UnderworldPersonLifeOrMoney
con_obj_id_52                           = $52 ; UnderworldPerson
con_obj_id_53                           = $53 ; MonsterShot
con_obj_id_54                           = $54 ; MonsterShot
con_obj_id_55                           = $55 ; Fireball
con_obj_id_56                           = $56 ; Fireball
con_obj_id_57                           = $57 ; MonsterShot
con_obj_id_58                           = $58 ; MonsterShot
con_obj_id_59                           = $59 ; MonsterShot
con_obj_id_5A                           = $5A ; MonsterShot
con_obj_id_5B                           = $5B ; MonsterArrow
con_obj_id_5C                           = $5C ; ArrowOrBoomerang
con_obj_id_5D                           = $5D ; DeadDummy
con_obj_id_5E                           = $5E ; FluteSecret
con_obj_id_5F                           = $5F ; unused?
con_obj_id_60                           = $60 ; Item
con_obj_id_61                           = $61 ; Dock
con_obj_id_62                           = $62 ; RockOrGravestone
con_obj_id_63                           = $63 ; RockWall
con_obj_id_64                           = $64 ; Tree
con_obj_id_65                           = $65 ; RockOrGravestone
con_obj_id_66                           = $66 ; RockOrGravestone
con_obj_id_67                           = $67 ; RockWall
con_obj_id_68                           = $68 ; Block
con_obj_id_69                           = $69 ; unused?
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



; ram_music                             = $0600
con_music_00                            = $00 ; bzk seems useless
con_music_overworld                     = $01 ; standart overworld theme
con_music_boss_killed                   = $02 ; 
con_music_triforce                      = $04 ; collect a piece of triforce
con_music_quest_complete                = $06 ; 
con_music_pick_up_item                  = $08 ; important items like sword/bow
con_music_credits                       = $10 ; 
con_music_final_dungeon                 = $20 ; 
con_music_dungeon                       = $40 ; standart dungeon theme
con_music_title                         = $80 ; title screen

; ram_sfx_1                             = $0601
con_sfx_1_01                            = $01 ; 
con_sfx_1_02                            = $02 ; 
con_sfx_1_door                          = $04 ; open/close door in dungeons
con_sfx_1_plr_hit                       = $08 ; link is hit by something and loses hp
con_sfx_1_10                            = $10 ; 
con_sfx_1_20                            = $20 ; 
con_sfx_1_40                            = $40 ; 
con_sfx_1_80                            = $80 ; 

; ram_sfx_2                             = $0602
con_sfx_2_00                            = $00 ; 
con_sfx_2_cursor_select                 = $01 ; in the menu with slots or pause menu
con_sfx_2_02                            = $02 ; 
con_sfx_2_secret_found                  = $04 ; 
con_sfx_2_pick_up_item                  = $08 ; bomb, compass, clock, sword, etc
con_sfx_2_flute                         = $10 ; using the flute item
con_sfx_2_enemy_killed                  = $20 ; 
con_sfx_2_40                            = $40 ; 
con_sfx_2_death                         = $80 ; link is dead music

; ram_sfx_3                             = $0603
con_sfx_3_00                            = $00 ; 
con_sfx_3_sword_swing                   = $01 ; regular swing with the sword
con_sfx_3_arrow_shoot                   = $02 ; shooting with an arrow
con_sfx_3_04                            = $04 ; 
con_sfx_3_walking                       = $08 ; walking in/out caves or something
con_sfx_3_10                            = $10 ; 
con_sfx_3_80                            = $80 ; 

; ram_sfx_4                             = $0604
con_sfx_4_00                            = $00 ; 
con_sfx_4_shield_block                  = $01 ; 
con_sfx_4_enemy_hit                     = $02 ; link hits an enemy
con_sfx_4_energy_wave                   = $04 ; wave by some ghosts
con_sfx_4_pick_up_item                  = $08 ; key, small heart
con_sfx_4_rupee                         = $10 ; rupee add/sbc, also when text is printing
con_sfx_4_plant_bomb                    = $20 ; bomb has been planted
con_sfx_4_low_health                    = $40 ; constant signals while health is low
con_sfx_4_80                            = $80 ; 



; ram_item_slot_index                   = $0656
; ram_items                             = $0657
; used as 0657,Y with Y checks
; needed comments at 0x014E2C
con_item_sword                          = $00 ; 0657
con_item_bomb                           = $01 ; 0658
con_item_arrow                          = $02 ; 0659
con_item_bow                            = $03 ; 065A
con_item_candle                         = $04 ; 065B
con_item_05                             = $05 ; 065C flute
con_item_06                             = $06 ; 065D meat
con_item_potion                         = $07 ; 065E
con_item_08                             = $08 ; 065F staff
con_item_09                             = $09 ; 0660
con_item_0A                             = $0A ; 0661
con_item_0B                             = $0B ; 0662
con_item_0C                             = $0C ; 0663
con_item_0D                             = $0D ; 0664
con_item_0E                             = $0E ; 0665
con_item_letter                         = $0F ; 0666
con_item_compass                        = $10 ; 0667 dungeon 1-8
con_item_map                            = $11 ; 0668 dungeon 1-8
con_item_d9_compass                     = $12 ; 0669 dungeon 9
con_item_d9_map                         = $13 ; 066A dungeon 9
con_item_14                             = $14 ; 066B
con_item_15                             = $15 ; 066C
con_item_16                             = $16 ; 066D
con_item_17                             = $17 ; 066E
con_item_18                             = $18 ; 066F
con_item_19                             = $19 ; 0670
con_item_1A                             = $1A ; 0671
con_item_1B                             = $1B ; 0672
con_item_1C                             = $1C ; 0673
con_item_1D                             = $1D ; 0674
con_item_1E                             = $1E ; 0675
con_item_1F                             = $1F ; 0676
con_item_20                             = $20 ; 0677
con_item_21                             = $21 ; 0678
con_item_22                             = $22 ; 0679
con_item_23                             = $23 ; 067A
con_item_24                             = $24 ; 067B
con_item_25                             = $25 ; 067C
con_item_rup_adc                        = $26 ; 067D
con_item_rup_sbc                        = $27 ; 067E