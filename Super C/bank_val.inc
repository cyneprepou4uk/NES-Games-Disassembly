; keep your global constant values inside this file

; todo
    ; найти где количество спавна шариков в начале 4м уровня
    ; константа для ram_073A_obj_hitbox_index
    ; перебрать комменты nl файлов



; MISC
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; 
con_F97C_colors                         = $00 ; for 0x01F98C
con_mirroring_V                         = $00 ; vertical
con_mirroring_H                         = $01 ; horisontal
con__hp_F0                              = $F0 ; unkillable object
con__hp_F1                              = $F1 ; unkillable object
con_area                                = $00 ; 
con_max_index_bullets                   = $0F ; for player's bullets
con_max_index_enemies                   = $0D ; for enemies and their bullets
con_max_index_total                     = $17 ; for player's bullets + enemies and their bullets



; ram_btn_press
; ram_btn_hold
; ram_copy_btn_press
; ram_copy_btn_hold
; ram_00B0_copy_btn_hold
; ram_004C_plr_demo_buttons
; need comments 0x000243 0x000AD8
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
con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0



; ram_irq_handler_hi
con_irq_disable                         = $00 ; 
con_irq_area_1_boss                     = $01 ; 
con_irq_area_4_elevator                 = $02 ; both of the elevators
con_irq_credits                         = $03 ; 
; con_irq_04                            = $04 ; 
con_irq_area_4_boss                     = $05 ; 
con_irq_area_8_ceiling                  = $06 ; both of the falling ceilings
; con_irq_07                            = $07 ; 
con_irq_area_3_boss                     = $08 ; 
; con_irq_09                            = $09 ; 
con_irq_area_7_boss                     = $0A ; 
con_irq_area_5_boss                     = $0B ; 
con_irq_area_2_boss                     = $0C ; 
con_irq_area_8_boss                     = $0D ; 
con_irq_area_6_change_floor_color       = $0E ; when you're attacked by small red spiked balls and floor changes color
con_irq_area_6_boss                     = $0F ; 



; ram_weapon
con_weapon_default                      = $00 ; 
con_weapon_M                            = $01 ; 
con_weapon_S                            = $02 ; 
con_weapon_L                            = $03 ; 
con_weapon_F_normal                     = $04 ; 
con_weapon_F_charged                    = $05 ; 
; con_weapon_flamethrower               = $06 ; 
con_weapon_R                            = $80 ; 



; ram_plr_status
; need comments 0x0004C2
con_plr_status_permadeath               = $00 ; permanent death
con_plr_status_respawn                  = $01 ; respawning
con_plr_status_alive                    = $02 ; alive and playable
con_plr_status_death_init               = $03 ; death detected
con_plr_status_death_anim               = $04 ; knock back afrer death
con_plr_status_lying_on_ground          = $05 ; hit the ground after 04
con_plr_status_in_heli                  = $06 ; inside helicopter at area 1
con_plr_status_rappelling               = $07 ; rappelling at area 1 (written at 0x000596)
con_plr_status_arrived                  = $08 ; arrived into the passage to the next level



; ram_nmt_buffer
con_buf_mode_00                         = $00 ; buffer is closed and can't be read further
con_buf_mode_01                         = $01 ; write bytes until FF is found (in reality only used to change 2006 address)
; con_buf_mode_02                       = $02 ; unused
con_buf_mode_03                         = $03 ; 1st byte = counter, 2nd byte = fill tile (increase 2006 by 01)
; con_buf_mode_04                       = $04 ; unused
; con_buf_mode_05                       = $05 ; unused
con_buf_mode_06                         = $06 ; 1st byte = counter, then a list of bytes (increase 2006 by 01)
con_buf_mode_07                         = $07 ; 1st byte = counter, then a list of bytes (increase 2006 by 20)



; for 0x006C32 and con_0x006C32
con_0x006C32_00                         = $00 ; 
con_0x006C32_01                         = $01 ; 
; con_0x006C32_02                       = $02 ; index not found
con_0x006C32_03                         = $03 ; 
con_0x006C32_04                         = $04 ; 
con_0x006C32_05                         = $05 ; 
con_0x006C32_06                         = $06 ; 
con_0x006C32_07                         = $07 ; 
con_0x006C32_08                         = $08 ; 
con_0x006C32_09                         = $09 ; 
con_0x006C32_0A                         = $0A ; 
con_0x006C32_0B                         = $0B ; 
con_0x006C32_0C                         = $0C ; 
con_0x006C32_0D                         = $0D ; 
con_0x006C32_0E                         = $0E ; 
con_0x006C32_0F                         = $0F ; 
con_0x006C32_10                         = $10 ; 
con_0x006C32_11                         = $11 ; 
con_0x006C32_12                         = $12 ; 
con_0x006C32_13                         = $13 ; 
con_0x006C32_14                         = $14 ; 
con_0x006C32_15                         = $15 ; 
con_0x006C32_16                         = $16 ; 
con_0x006C32_17                         = $17 ; 
con_0x006C32_18                         = $18 ; 



; for 0x0017EA
con_0x0017EA_1_player                   = $00 ; 
con_0x0017EA_2_players                  = $01 ; 
con_0x0017EA_area                       = $02 ; 
con_0x0017EA_1p_score                   = $03 ; 
con_0x0017EA_2p_score                   = $04 ; 
con_0x0017EA_hi_score                   = $05 ; 
con_0x0017EA_rest_1p                    = $06 ; 
con_0x0017EA_rest_2p                    = $07 ; 
; con_0x0017EA_08                       = $08 ; unused (index not found)
con_0x0017EA_game_over                  = $09 ; 
con_0x0017EA_continue_end               = $0A ; 
; con_0x0017EA_0B                       = $0B ; unused (index not found)
con_0x0017EA__area_1                    = $0C ; 



; ram_obj_id
; see screenshots
; need comments 0x0065C4 0x009296
con_obj_id_00                           = $00 ; любой выпавший бонус из капсулы или коробки/вертолет из титров
con_obj_id_01                           = $01 ; летающая капсула с бонусом
con_obj_id_02                           = $02 ; пуля большинства мобов и пушек
con_obj_id_03                           = $03 ; обычный моб (зеленые и красные) на всех уровнях
con_obj_id_04                           = $04 ; коробка с бонусом на 5м уровне (открывается и закрывается)
con_obj_id_05                           = $05 ; чел который кидает гранаты на 1м уровне
con_obj_id_06                           = $06 ; летящая граната
con_obj_id_07                           = $07 ; лежачий стрелок на 1м и 3м уровне
; con_obj_id_08                         = $08 ; 
con_obj_id_09                           = $09 ; стрелок стоящий на месте на 1м уровне/на деревьях 3 уровень/5 уровень
con_obj_id_0A                           = $0A ; крутящаяся круглая пушка на 4м уровне/5м уровне
con_obj_id_0B                           = $0B ; пушка вылазит из под земли 5 уровень (в начале уровня)
con_obj_id_0C                           = $0C ; взрывы после убийства пушки 20/пушки вертолета 22/убийство босса/танкиста 2E
con_obj_id_0D                           = $0D ; стена перед боссом 2 уровень/перед боссом 6 уровень
con_obj_id_0E                           = $0E ; пуля 02, но с органиченной дальностью (пуля стрелка 5C/танкиста 2E/пушки 5B)
con_obj_id_0F                           = $0F ; точка спавна гранат на 1м уровне
con_obj_id_10                           = $10 ; точка спавна мобов на высоком доме на 1м уровне/на дереве 3 уровень
; con_obj_id_11                         = $11 ; 
; con_obj_id_12                         = $12 ; 
; con_obj_id_13                         = $13 ; 
; con_obj_id_14                         = $14 ; 
; con_obj_id_15                         = $15 ; 
; con_obj_id_16                         = $16 ; 
; con_obj_id_17                         = $17 ; 
; con_obj_id_18                         = $18 ; 
; con_obj_id_19                         = $19 ; 
; con_obj_id_1A                         = $1A ; 
; con_obj_id_1B                         = $1B ; 
; con_obj_id_1C                         = $1C ; 
; con_obj_id_1D                         = $1D ; 
; con_obj_id_1E                         = $1E ; 
; con_obj_id_1F                         = $1F ; 
con_obj_id_20                           = $20 ; пушка на 1м уровне которая вырастает из под земли
con_obj_id_21                           = $21 ; босс вертолет 1 уровень (также большой шар на вертолете после уничтожения пушек)
con_obj_id_22                           = $22 ; пушка на боссе вертолет 1 уровень
con_obj_id_23                           = $23 ; дверь босса вертолет 1 уровень
con_obj_id_24                           = $24 ; паук на 6м уровне
con_obj_id_25                           = $25 ; двигающаяся пушка на горизонтальной палке 4 уровень
con_obj_id_26                           = $26 ; стрелок прячется в деревьях на 3м уровне и иногда вылазит пострелять
con_obj_id_27                           = $27 ; пушка вылазит из под земли 3 уровень
con_obj_id_28                           = $28 ; пушка стреляет бомбами вверх 3 уровень
con_obj_id_29                           = $29 ; шары пушки 28
con_obj_id_2A                           = $2A ; летающий красный эмбрион на 8м уровне
con_obj_id_2B                           = $2B ; красный колючий шарик из глаза босса 8го уровня 6D
con_obj_id_2C                           = $2C ; точка спавна падающих платформ на 4м уровне
con_obj_id_2D                           = $2D ; падающая платформа из спавна 2C
con_obj_id_2E                           = $2E ; синий танкист на 2м уровне (одиночный)
con_obj_id_2F                           = $2F ; падающий и катящийся камень на 5м уровне
con_obj_id_30                           = $30 ; пуля танка 2E
con_obj_id_31                           = $31 ; самонаводящиеся красно-синие пузыри на 4м уровне
con_obj_id_32                           = $32 ; пушка из под земли на 5м уровне (там где контейнеры)
con_obj_id_33                           = $33 ; пуля пушки 32
con_obj_id_34                           = $34 ; летающий стрелок на 5м уровне
con_obj_id_35                           = $35 ; красный колючий шарик босса 5го уровня 59
con_obj_id_36                           = $36 ; выдвигающаяся электрическая хрень босс 2 уровень
con_obj_id_37                           = $37 ; синий колючий шарик босса 8го уровня
; con_obj_id_38                         = $38 ; 
con_obj_id_39                           = $39 ; движущийся лифт на 4м уровне
con_obj_id_3A                           = $3A ; пуля робота паука 4E
con_obj_id_3B                           = $3B ; фиолетовый мутант с двумя ртами на 7м уровне
con_obj_id_3C                           = $3C ; пуля врага 3B
con_obj_id_3D                           = $3D ; кокон из которого пауки спавнятся на 7м уровне
con_obj_id_3E                           = $3E ; паук из цветка 3D
con_obj_id_3F                           = $3F ; землетрясение на 3м уровне
con_obj_id_40                           = $40 ; крыталый петух из спавна 41
con_obj_id_41                           = $41 ; точка спавна крылатых петухов на 4м уровне
con_obj_id_42                           = $42 ; босс 4го уровня
con_obj_id_43                           = $43 ; пушка босса 4го уровня
con_obj_id_44                           = $44 ; выстрел босса 4го уровня
con_obj_id_45                           = $45 ; рот из которого красные колючие шарики спавнятся на 8м уровне
con_obj_id_46                           = $46 ; красный колючий шарик изо рта 45
con_obj_id_47                           = $47 ; пушка с зубами на 8м уровне
con_obj_id_48                           = $48 ; пуля из пушки 47
con_obj_id_49                           = $49 ; падающий потолок на 8м уровне
; con_obj_id_4A                         = $4A ; 
con_obj_id_4B                           = $4B ; центральный шар босс 3 уровень
; con_obj_id_4C                         = $4C ; 
; con_obj_id_4D                         = $4D ; 
con_obj_id_4E                           = $4E ; босс робот паук на 3м уровне
; con_obj_id_4F                         = $4F ; 
con_obj_id_50                           = $50 ; фиолетовый шарик босса 4B 3 уровень
con_obj_id_51                           = $51 ; рот босса 7го уровня
con_obj_id_52                           = $52 ; грудь босса 7го уровня
con_obj_id_53                           = $53 ; ухо босса 7го уровня
con_obj_id_54                           = $54 ; крутящийся огненный шар из груди босса 7го уровня 52
con_obj_id_55                           = $55 ; красный колючий шарик изо рта босса 7го уровня 51
con_obj_id_56                           = $56 ; слизняк из ушей босса 7го уровня 53
; con_obj_id_57                         = $57 ; 
con_obj_id_58                           = $58 ; точка спавна мобов из контейнера на 5м уровне
con_obj_id_59                           = $59 ; босс 5го уровня
con_obj_id_5A                           = $5A ; маленькая голова скелета босса 5го уровня 59
con_obj_id_5B                           = $5B ; пушка на 2м уровне
con_obj_id_5C                           = $5C ; красный стоячий/бегущий стрелок на 2м уровне
con_obj_id_5D                           = $5D ; гигантский рот из спавна 5E
con_obj_id_5E                           = $5E ; спавн гигантских ртов на 6м уровне
con_obj_id_5F                           = $5F ; красная большая башка на 6м уровне, крутится вокруг перса
con_obj_id_60                           = $60 ; большой красный колючий шарик на 6м уровне, спавнится из пещер
con_obj_id_61                           = $61 ; большой красный колючий шарик на 6м уровне из спавна 70
con_obj_id_62                           = $62 ; лопасти вертолета в начале 1 уровня
con_obj_id_63                           = $63 ; зеленый/красный моб на 2м уровне
con_obj_id_64                           = $64 ; босс 6 уровня (1я фаза)
con_obj_id_65                           = $65 ; босс 6 уровня (2я фаза)
con_obj_id_66                           = $66 ; часть змеи босса 6го уровня (2я фаза)
; con_obj_id_67                         = $67 ; 
con_obj_id_68                           = $68 ; пуля босса 6го уровня (2я фаза)
con_obj_id_69                           = $69 ; зеленый танкист босс 2 уровень
con_obj_id_6A                           = $6A ; красный танкист босс 2 уровень
con_obj_id_6B                           = $6B ; шарик из спавна 6C
con_obj_id_6C                           = $6C ; точка спавна шариков 4 уровень
con_obj_id_6D                           = $6D ; глаз босса 8го уровня откуда спавнится красные колючие шарики 2B
con_obj_id_6E                           = $6E ; падающий маленький камень во время спавна босса 8го уровня
con_obj_id_6F                           = $6F ; объект с молниями на фоне в 1м уровне
con_obj_id_70                           = $70 ; отверстие босса 6 уровня, откуда спавнятся красне шарики 61
con_obj_id_71                           = $71 ; некий объект на 6м уровне, который меняет банки тайлов перед боссом и чета еще
; con_obj_id_72                         = $72 ; 
; con_obj_id_73                         = $73 ; 
; con_obj_id_74                         = $74 ; 
; con_obj_id_75                         = $75 ; 
; con_obj_id_76                         = $76 ; 
; con_obj_id_77                         = $77 ; 
; con_obj_id_78                         = $78 ; 
; con_obj_id_79                         = $79 ; 
; con_obj_id_7A                         = $7A ; 
; con_obj_id_7B                         = $7B ; 
; con_obj_id_7C                         = $7C ; 
; con_obj_id_7D                         = $7D ; 
; con_obj_id_7E                         = $7E ; 
con_obj_id_7F                           = $7F ; null object



; need comments 0x009F4D
; con_sound_00                          = $00 ; 
con_sound_01                            = $01 ; 
con_sound_02                            = $02 ; 
con_sound_03                            = $03 ; 
con_sound_04                            = $04 ; 
con_sound_05                            = $05 ; 
con_sound_06                            = $06 ; SUTA (walking)
con_sound_07                            = $07 ; 
con_sound_08                            = $08 ; 
con_sound_09                            = $09 ; 
con_sound_0A                            = $0A ; THUNDER
con_sound_0B                            = $0B ; SHOT
con_sound_0C                            = $0C ; 
con_sound_0D                            = $0D ; LASER
con_sound_0E                            = $0E ; SPREAD
con_sound_0F                            = $0F ; FIRE
con_sound_10                            = $10 ; B SHOT
con_sound_11                            = $11 ; T DAMEGE
con_sound_12                            = $12 ; HARETSU (grenade explosion)
con_sound_13                            = $13 ; T OUT (normal mob death)
con_sound_14                            = $14 ; Z OUT (alien mob death)
con_sound_15                            = $15 ; A OUT
con_sound_16                            = $16 ; ROLL
con_sound_17                            = $17 ; 
con_sound_18                            = $18 ; APPEAR
con_sound_19                            = $19 ; POWER
con_sound_1A                            = $1A ; BOSS BK
con_sound_1B                            = $1B ; BAKUHA1
con_sound_1C                            = $1C ; BAKUHA2
con_sound_1D                            = $1D ; 
; con_sound_1E                          = $1E ; unused?
con_sound_1F                            = $1F ; ARUKU
con_sound_20                            = $20 ; JIWARE
con_sound_21                            = $21 ; SILEN
con_sound_22                            = $22 ; 
con_sound_23                            = $23 ; P 1UP
con_sound_24                            = $24 ; 
con_sound_25                            = $25 ; P OUT (player death)
con_sound_26                            = $26 ; B OUT
con_sound_27                            = $27 ; pause the game
con_sound_28                            = $28 ; BGM1
con_sound_29                            = $29 ; BGM4
con_sound_2A                            = $2A ; BGM3
con_sound_2B                            = $2B ; BGM2
con_sound_2C                            = $2C ; BGM5
con_sound_2D                            = $2D ; BGM6
con_sound_2E                            = $2E ; 
con_sound_2F                            = $2F ; BGM7
con_sound_30                            = $30 ; GREAT
con_sound_31                            = $31 ; BOSS BGM
con_sound_32                            = $32 ; BOSS2BGM
con_sound_33                            = $33 ; P CLEAR (area 1-7 complete)
con_sound_34                            = $34 ; A CLEAR (area 8 (final) complete)
con_sound_35                            = $35 ; OVER
con_sound_36                            = $36 ; ENDING
; special sounds
con_sound_37                            = $37 ; 
con_sound_38                            = $38 ; 
con_sound_39                            = $39 ; 
con_sound_3A                            = $3A ; 
con_sound_3B                            = $3B ; 
; not found yet, should be used after final boss defeated, before cutscene (at least one of these 4, probably)
; con_sound_3C                          = $3C ; 
; con_sound_3D                          = $3D ; 
; con_sound_3E                          = $3E ; 
; con_sound_3F                          = $3F ; 


