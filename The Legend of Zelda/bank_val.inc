; keep your global constant values inside this file



; MISC
con_prg_bank                    = $00 ; 
con_mirroring_V                 = $0E ; vertical
con_mirroring_H                 = $0F ; horisontal



; ram_btn_press                 = $F8
; ram_btn_hold                  = $FA
con_btn_Right                   = $01 ; 
con_btn_Left                    = $02 ; 
con_btn_Down                    = $04 ; 
con_btn_Up                      = $08 ; 
con_btn_Start                   = $10 ; 
con_btn_Select                  = $20 ; 
con_btn_B                       = $40 ; 
con_btn_A                       = $80 ; 

con_btns_Dpad                   = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F



; ram_game_mode_main            = $12
; needed comments at 0x014550   0x01459C   0x00A607
;                    0x0090D6   0x01F192
;                    0x01EB45 & 0x01E92E - rename offsets
con_GM_title_screen             = $00 ; logo and manual
con_GM_slot_selection           = $01 ; menu with 3 slots and 2 options
con_GM_02                       = $02 ; 
con_GM_03                       = $03 ; 
con_GM_04                       = $04 ; 
con_GM_05                       = $05 ; 
con_GM_06                       = $06 ; 
con_GM_07                       = $07 ; not found but defenitely was used, probably set by INC
con_GM_08                       = $08 ; 
con_GM_09                       = $09 ; 
con_GM_0A                       = $0A ; 
con_GM_0B                       = $0B ; 
con_GM_0C                       = $0C ; 
con_GM_0D                       = $0D ; 
con_GM_register                 = $0E ; register your name menu
con_GM_elimination              = $0F ; eliminate slot menu
con_GM_10                       = $10 ; 
con_GM_death                    = $11 ; link is dead
con_GM_triforce_collected       = $12 ; collect a piece of triforce
con_GM_13                       = $13 ; 



; ram_direction                 = $98
con_dir_00                      = $00 ; 
con_dir_Right                   = $01 ; 
con_dir_Left                    = $02 ; 
con_dir__LR                     = $03 ; con_dir_Left + con_dir_Right
con_dir_Down                    = $04 ; 
con_dir_05                      = $05 ; 
con_dir_06                      = $06 ; 
con_dir_07                      = $07 ; unused?
con_dir_Up                      = $08 ; 
con_dir_09                      = $09 ; 
con_dir_0A                      = $0A ; 
con_dir_0B                      = $0B ; unused?
con_dir__UD                     = $0C ; con_dir_Up + con_dir_Down
con_dir_0D                      = $0D ; con_dir_Right + con_dir_Up + con_dir_Down ?



; ram_music                     = $0600
con_music_00                    = $00 ; bzk seems useless
con_music_overworld             = $01 ; standart overworld theme
con_music_boss_killed           = $02 ; 
con_music_triforce              = $04 ; collect a piece of triforce
con_music_quest_complete        = $06 ; 
con_music_pick_up_item          = $08 ; important items like sword/bow
con_music_credits               = $10 ; 
con_music_final_dungeon         = $20 ; 
con_music_dungeon               = $40 ; standart dungeon theme
con_music_title                 = $80 ; title screen

; ram_sfx_1                     = $0601
con_sfx_1_01                    = $01 ; 
con_sfx_1_02                    = $02 ; 
con_sfx_1_door                  = $04 ; open/close door in dungeons
con_sfx_1_plr_hit               = $08 ; link is hit by something and loses hp
con_sfx_1_10                    = $10 ; 
con_sfx_1_20                    = $20 ; 
con_sfx_1_40                    = $40 ; 
con_sfx_1_80                    = $80 ; 

; ram_sfx_2                     = $0602
con_sfx_2_00                    = $00 ; 
con_sfx_2_cursor_select         = $01 ; in the menu with slots or pause menu
con_sfx_2_02                    = $02 ; 
con_sfx_2_secret_found          = $04 ; 
con_sfx_2_pick_up_item          = $08 ; bomb, compass, clock, sword, etc
con_sfx_2_flute                 = $10 ; using the flute item
con_sfx_2_enemy_killed          = $20 ; 
con_sfx_2_40                    = $40 ; 
con_sfx_2_death                 = $80 ; link is dead music

; ram_sfx_3                     = $0603
con_sfx_3_00                    = $00 ; 
con_sfx_3_sword_swing           = $01 ; regular swing with the sword
con_sfx_3_arrow_shoot           = $02 ; shooting with an arrow
con_sfx_3_04                    = $04 ; 
con_sfx_3_walking               = $08 ; walking in/out caves or something
con_sfx_3_10                    = $10 ; 
con_sfx_3_80                    = $80 ; 

; ram_sfx_4                     = $0604
con_sfx_4_00                    = $00 ; 
con_sfx_4_shield_block          = $01 ; 
con_sfx_4_enemy_hit             = $02 ; link hits an enemy
con_sfx_4_energy_wave           = $04 ; wave by some ghosts
con_sfx_4_pick_up_item          = $08 ; key, small heart
con_sfx_4_rupee                 = $10 ; rupee add/sbc, also when text is printing
con_sfx_4_plant_bomb            = $20 ; bomb has been planted
con_sfx_4_low_health            = $40 ; constant signals while health is low
con_sfx_4_80                    = $80 ; 



; ram_item_slot_index           = $0656
; ram_items                     = $0657
; used as 0657,Y with Y checks
; needed comments at 0x014E2C
con_item_sword                  = $00 ; 0657
con_item_bomb                   = $01 ; 0658
con_item_arrow                  = $02 ; 0659
con_item_bow                    = $03 ; 065A
con_item_candle                 = $04 ; 065B
con_item_05                     = $05 ; 065C flute
con_item_06                     = $06 ; 065D meat
con_item_potion                 = $07 ; 065E
con_item_08                     = $08 ; 065F staff
con_item_09                     = $09 ; 0660
con_item_0A                     = $0A ; 0661
con_item_0B                     = $0B ; 0662
con_item_0C                     = $0C ; 0663
con_item_0D                     = $0D ; 0664
con_item_0E                     = $0E ; 0665
con_item_letter                 = $0F ; 0666
con_item_compass                = $10 ; 0667 dungeon 1-8
con_item_map                    = $11 ; 0668 dungeon 1-8
con_item_d9_compass             = $12 ; 0669 dungeon 9
con_item_d9_map                 = $13 ; 066A dungeon 9
con_item_14                     = $14 ; 066B
con_item_15                     = $15 ; 066C
con_item_16                     = $16 ; 066D
con_item_17                     = $17 ; 066E
con_item_18                     = $18 ; 066F
con_item_19                     = $19 ; 0670
con_item_1A                     = $1A ; 0671
con_item_1B                     = $1B ; 0672
con_item_1C                     = $1C ; 0673
con_item_1D                     = $1D ; 0674
con_item_1E                     = $1E ; 0675
con_item_1F                     = $1F ; 0676
con_item_20                     = $20 ; 0677
con_item_21                     = $21 ; 0678
con_item_22                     = $22 ; 0679
con_item_23                     = $23 ; 067A
con_item_24                     = $24 ; 067B
con_item_25                     = $25 ; 067C
con_item_rup_adc                = $26 ; 067D
con_item_rup_sbc                = $27 ; 067E