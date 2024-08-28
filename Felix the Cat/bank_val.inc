; keep your global constant values inside this file
; чит для яркости AOUGSOEN

; todo
    ; найти очки и очки за победу над боссом
    ; найти индексы объектов (молоко, сердце, 1 up)
    ; con для 0x010304 (а может и нет)
    ; индекс для 0x0100F5
    ; найти все ram_main_script, особенно INC
    ; найти код врагов, который проверяет что у них перед мордой, чтоб они могли упираться в стены.
        ; некоторые враги падают с платформ, некоторые доходят до края и поворачиват назад.
        ; дерево старается двигаться в сторону игрока. есть 2 вида дерева,
        ; может у них особый флаг, либо это 2 разных индекса врага.
    ; найти где хп у врагов, и сколько хп снимает каждое оружие.
    ; найти хп боссов
    ; выяснить когда заканчивается демка (явно не по таблице с кнопками)
    ; найти по какому принципу конвертируется оружие между уровнями
    ; найти смещение на 1 пиксель во время полета на башке у птицы
    ; найти удержание кнопки для высоты выстрела танка/с воздушного шара
    ; найти хитбоксы
    ; где дается жизнь за 50000 очков
    ; разгон, который позволяет прыгать на 8 пикселей выше
    ; чекпоинты (на уровне таблички со стрелками)
    ; дистанция/таймер выстрела для прожектайлов феликса
    ; иногда и молоко и сердца не выпадают, предположительно когда в одной сумке ты нашел 2 рожи с молоком сразу
    ; iframes у босса
    ; не все враги переворачиваются после убийства, например рыба 1E и снежный шар 16 взрываются

; 00 = 1-1    B92F, сумка BD95
; 01 = 1-2    BB2F, сумка BDB5
; 02 = 1-3    BD2F, сумка BDD5, босс BEEF, после босса BF0F
; 03 = 2-1    A6E2, сумка BDF5, чекпоинт A862
; 04 = 2-2    A8E2, сумка BE15, чекпоинт A962
; 05 = 2-3    AAE2, сумка BE35, босс ACA2, после босса ACC2
; 06 = 3-1    A00F, сумка BE55
; 07 = 3-2    A20F, сумка BE75
; 08 = 3-3    A40F, сумка BD95, босс A6CF, после босса A6EF
; 09 = 4-1    95CD, сумка BDB5
; 0A = 4-2    97CD+
; 0B = 4-3    9BCD, сумка BDF5, босс 9D8D, после босса 9DAD
; 0C = 5-1    95C0, сумка BE15
; 0D = 5-2    97C0+, сумка BDB5
; 0E = 5-3    9BC0, сумка BE55, босс 9D80, после босса 9DA0
; 0F = 6-1    B8FA+, сумка BDF5
; 10 = 6-2    BCFA, сумка BD95, босс BEBA, после босса BEDA
; 11 = 7-1    B906+, сумка BE35
; 12 = 7-2    BD06, сумка BDD5, босс BEC6, после босса BEE6
; 13 = 8-1    B6B7
; 14 = 9-1    B5E9
; 15 = 9-2    B7E9
; 16 = 9-3    B9E9, сумка1 BD95, сумка2 BDB5, сумка3 BDD5, босс BB69, после босса BBC9
; 17 =        BBC9



; MISC
con_bzk_hack                            = $00 ; set to 01 before hacking
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; todo



; ram_002D_btn
; ram_002E_btn
; ram_002F_btn
; ram_btn_demo
; !!! 0x008011 добавить кнопки
con_btn_Right                           = $80 ; 
con_btn_Left                            = $40 ; 
con_btn_Down                            = $20 ; 
con_btn_Up                              = $10 ; 
con_btn_Start                           = $08 ; 
con_btn_Select                          = $04 ; 
con_btn_B                               = $02 ; 
con_btn_A                               = $01 ; 

con_btns_LR                             = con_btn_Left + con_btn_Right                              ; C0
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 30
con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; F0
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 0B
con_btns_AB                             = con_btn_A + con_btn_B                                     ; 03



; ram_03BF_weapon_upgrade
; need comments 0x01CC70
; con_weapon_00                         = $00 ; unused
con_weapon_boxing_glove                 = $01 ; boxing glove
con_weapon_magic_stars                  = $02 ; magic stars
con_weapon_motorbike                    = $03 ; motorbike
con_weapon_tank                         = $04 ; tank
con_weapon_balloon                      = $05 ; balloon
con_weapon_umbrella                     = $06 ; umbrella
con_weapon_airplane                     = $07 ; airplane
con_weapon_space_ship                   = $08 ; spaceship
con_weapon_snorkel                      = $09 ; snorkel
con_weapon_dolphin                      = $0A ; dolphin
con_weapon_turtle                       = $0B ; turtle
con_weapon_boat                         = $0C ; boat
con_weapon_submarine                    = $0D ; submarine



; ram_main_script
; need tomments 0x01C267
con_0028_00                             = $00 ; 
con_0028_01                             = $01 ; 
; con_0028_02                           = $02 ; unused
; con_0028_03                           = $03 ; unused
con_0028_04                             = $04 ; 
con_0028_05                             = $05 ; 
con_0028_06                             = $06 ; felix laughing/"the end" screen
con_0028_07                             = $07 ; 
con_0028_08                             = $08 ; 
con_0028_09                             = $09 ; писалось перед загрузкой экрана felix world 3-1



; ram_0041_palette
; index for 0x01046E
con_0041_pal_00                         = $00 ; 
con_0041_pal_01                         = $01 ; 
con_0041_pal_02                         = $02 ; 
con_0041_pal_03                         = $03 ; 
con_0041_pal_04                         = $04 ; 
con_0041_pal_05                         = $05 ; 
con_0041_pal_06                         = $06 ; 
con_0041_pal_07                         = $07 ; 
con_0041_pal_08                         = $08 ; 
con_0041_pal_09                         = $09 ; 
; con_0041_pal_0A                       = $0A ; unused, index not found
con_0041_pal_0B                         = $0B ; 
con_0041_pal_0C                         = $0C ; 
con_0041_pal_0D                         = $0D ; 
con_0041_pal_0E                         = $0E ; 
con_0041_pal_0F                         = $0F ; 
con_0041_pal_10                         = $10 ; 
con_0041_pal_11                         = $11 ; 
con_0041_pal_12                         = $12 ; 
con_0041_pal_13                         = $13 ; 



; ram_0708_obj_flags
; need comments 0x018E8B 0x018DE5 0x01A066
con_0708_00                             = $00 ; 
con_0708_01                             = $01 ; 
con_0708_02                             = $02 ; 
; con_0708_04                           = $04 ; 
con_0708_08                             = $08 ; 
con_0708_10                             = $10 ; 
con_0708_20                             = $20 ; 
con_0708_40                             = $40 ; dead?
con_0708_80                             = $80 ; 



; ram_0776_obj_flags
; need comments 0x01A74B 0x01A2EB 0x01E092
con_0776_spr_A                          = $00 ; .... ..xx
con_0776_04                             = $04 ; 1 check found 0x00407F
con_0776_08                             = $08 ; several checks found
; con_0776_10                           = $10 ; unused
; con_0776_20                           = $20 ; unused, 0x0040A9 0x0040DA (was supposed to be sprite priority over background?)
con_0776_flip_H                         = $40 ; flip horisontally if set
con_0776_flip_V                         = $80 ; flip vertically if set

con_0776_HV_flip                        = con_0776_flip_H + con_0776_flip_V ; C0



; ram_0600_obj_id
; ram_7900_round_obj_id
; need comments 0x01E166 (handler), 0x0041E8 (animations)
; 0x019FBE 0x018BAC
; see screenshots folder
con_obj_id_00                           = $00 ; felix
con_obj_id_01                           = $01 ; various objects (phohe call screen objects (professor, kitty, felix, bag, TV?), laughing felix, felix at the continue/game over screen, spaceship at "the end" screen)
con_obj_id_02                           = $02 ; bag at the title screen
con_obj_id_03                           = $03 ; felix at felix world screen in between rounds
con_obj_id_04                           = $04 ; bag at the continue screen
; con_obj_id_05                         = $05 ; unused
; con_obj_id_06                         = $06 ; unused
; con_obj_id_07                         = $07 ; unused
con_obj_id_08                           = $08 ; any enemy/boss (except four-eyes nerd which spawns objects 16) projectile, including crab bubbles, also explosion from boss, also kitty hearts
; con_obj_id_09                         = $09 ; unused
; con_obj_id_0A                         = $0A ; unused
con_obj_id_0B                           = $0B ; water splash/snow while sliding in snow rounds
con_obj_id_0C                           = $0C ; any felix weapon
con_obj_id_0D                           = $0D ; milk which restores your weapon timer, also score from picking it up?
con_obj_id_0E                           = $0E ; heart (weapon upgrade)/1 up from object 24 (supposedly any object which can bounce of platforms), also score from picking it up?
con_obj_id_0F                           = $0F ; small cloud which appears after you pick up felix faces or destroy platforms when walking over them
con_obj_id_10                           = $10 ; spring which you cn bounce off
con_obj_id_11                           = $11 ; rabbit/black dude with a hat/any enemy which walks left and right and can't fall of the platforms (also walking jumping bird at round 4-4, also walking shooting bird at round 5-2)
con_obj_id_12                           = $12 ; winged turtle (or whatever)/any enemy which can jump off a platform, and do a high jump when falling into a pit
con_obj_id_13                           = $13 ; fish/skeleton head/any enemy which constantly jumps vertically from the bottom of the screen
con_obj_id_14                           = $14 ; dog/professor head attached to the wall facing left, sliding up and down, and shooting from time to time
con_obj_id_15                           = $15 ; dog/professor head attached to the wall facing right, sliding up and down, and shooting from time to time
con_obj_id_16                           = $16 ; big jumping snowball from snow rounds
; con_obj_id_17                         = $17 ; unused
con_obj_id_18                           = $18 ; flying bird which you can stand on (except aerial rounds when it hits you instead)
con_obj_id_19                           = $19 ; small and fast meteorite from space rounds
con_obj_id_1A                           = $1A ; big and slow meteorite from space rounds
con_obj_id_1B                           = $1B ; rescued kitty after final boss
con_obj_id_1C                           = $1C ; big green fish from underwater rounds
con_obj_id_1D                           = $1D ; jellyfish from underwater rounds
con_obj_id_1E                           = $1E ; big fish which swims above water and shoots diagonally
con_obj_id_1F                           = $1F ; bat which sits still and goes down in a circle when you get close to it
con_obj_id_20                           = $20 ; alien spaceship
con_obj_id_21                           = $21 ; crab from underwater rounds
con_obj_id_22                           = $22 ; trees and dinosaurs (a walking and shooting enemy which dies in 2 hits from not-maxed weapon)
; con_obj_id_23                         = $23 ; unused
con_obj_id_24                           = $24 ; cloud with professor face (beat it to get 1up)
con_obj_id_25                           = $25 ; cloud with kitty face (touch it to get 500 points)
con_obj_id_26                           = $26 ; a bag from which you spawn inside boss room, it dissapears when you press any button
con_obj_id_27                           = $27 ; bosses from all rounds (also score from defeating boss?)
con_obj_id_28                           = $28 ; a platform moving vertically up and down
con_obj_id_29                           = $29 ; a platform moving horisontally left and right
con_obj_id_2A                           = $2A ; big jumping rock at last rounds
; con_obj_id_2B                         = $2B ; unused
con_obj_id_2C                           = $2C ; cannon facing up + left, shooting diagonally
con_obj_id_2D                           = $2D ; cannon facing up + right, shooting diagonally
con_obj_id_2E                           = $2E ; cannon facing left and right, shooting horisontally both ways
; con_obj_id_2F                         = $2F ; unused



; con_add_score index for 0x01DE86
; con_add_score_10p                     = $00  ; unused
con_add_score_20p                       = $01  ; 
; con_add_score_30p                     = $02  ; unused
con_add_score_50p                       = $03  ; 
con_add_score_100p                      = $04  ; 
con_add_score_150p                      = $05  ; 
con_add_score_200p                      = $06  ; 
; con_add_score_250p                    = $07  ; unused
con_add_score_300p                      = $08  ; 
; con_add_score_400p                    = $09  ; unused
con_add_score_500p                      = $0A  ; 
; con_add_score_600p                    = $0B  ; unused
; con_add_score_700p                    = $0C  ; unused
; con_add_score_800p                    = $0D  ; unused
; con_add_score_900p                    = $0E  ; unused
; con_add_score_1000p                   = $0F  ; unused
; con_add_score_2000p                   = $10  ; unused



; ram_sfx
; ram_0439_sfx
; ram_043C_music_config
; need comments 0x0012FF
con_sfx_00                              = $00 ; 
con_sfx_01                              = $01 ; 
con_sfx_02                              = $02 ; felix laughing
con_sfx_03                              = $03 ; score counting?
; con_sfx_04                            = $04 ; 
con_sfx_05                              = $05 ; hit object with weapon
con_sfx_06                              = $06 ; 
con_sfx_07                              = $07 ; motorbike weapon
con_sfx_08                              = $08 ; magic stars weapon
con_sfx_09                              = $09 ; felix is hit
con_sfx_0A                              = $0A ; balloon weapon
con_sfx_0B                              = $0B ; airplane weapon
con_sfx_0C                              = $0C ; weapon upgrade
con_sfx_0D                              = $0D ; several weapons (see 0x01CF83)
; con_sfx_0E                            = $0E ; 
con_sfx_0F                              = $0F ; submarine weapon
con_sfx_10                              = $10 ; explosion
con_sfx_11                              = $11 ; 
con_sfx_pause_off                       = $12 ; unpause
con_sfx_pause_on                        = $13 ; pause
con_sfx_14                              = $14 ; collect face
con_sfx_15                              = $15 ; extra life?
con_sfx_16                              = $16 ; collect milk
con_sfx_17                              = $17 ; dolphin weapon
con_sfx_18                              = $18 ; bubbles
con_sfx_19                              = $19 ; felix is dead 1
con_sfx_1A                              = $1A ; felix jumping/enemy shooting
con_sfx_1B                              = $1B ; felix is dead 2
con_sfx_1C                              = $1C ; entering bag
con_sfx_1D                              = $1D ; 
con_sfx_1E                              = $1E ; 
con_sfx_1F                              = $1F ; 



; ram_music
; need comments 0x002026
con_music_disable                       = $20 ; turn music off
con_music_title_screen                  = $21 ; title screen/felix world screen
con_music_ost_1                         = $22 ; round sountrack
con_music_ost_8                         = $23 ; round sountrack
con_music_ost_5                         = $24 ; round sountrack
con_music_ost_4                         = $25 ; round sountrack
con_music_ost_7                         = $26 ; round sountrack
con_music_phone_call                    = $27 ; professor calling music
con_music_ost_3                         = $28 ; round sountrack
con_music_ost_6                         = $29 ; round sountrack
con_music_the_end                       = $2A ; final screen
; con_sfx_2B                          = $2B ; unused, same as 21 (was planned to be a different felix world music?)
con_music_ost_2                         = $2C ; round sountrack
con_music_game_over                     = $2D ; 
con_music_round_complete                = $2E ; after entering exit
con_music_boss_fight                    = $2F ; 



; ram_music
; ram_043C_music_config
; need comments 0x000CB5
con_mus_cfg_80                          = $80 ; 
; con_mus_cfg_81                        = $81 ; 
; con_mus_cfg_82                        = $82 ; 
con_mus_cfg_83                          = $83 ; volume down on/off (pause, close to boss bag)
; con_mus_cfg_84                        = $84 ; 
; con_mus_cfg_85                        = $85 ; 
con_mus_cfg_86                          = $86 ; 
con_mus_cfg_87                          = $87 ; 
; con_mus_cfg_88                        = $88 ; 
; con_mus_cfg_89                        = $89 ; 
; con_mus_cfg_8A                        = $8A ; 
; con_mus_cfg_8B                        = $8B ; 
; con_mus_cfg_8C                        = $8C ; 



; music control bytes
; need comments 0x000EA3
con_mcb_stop                            = $D0 ; 
con_mcb_D1                              = $D1 ; 
con_mcb_D2                              = $D2 ; 
con_mcb_D3                              = $D3 ; 
con_mcb_D4                              = $D4 ; 
; con_mcb_D5                            = $D5 ; 
con_mcb_D6                              = $D6 ; 
con_mcb_D7                              = $D7 ; 
con_mcb_D8                              = $D8 ; 
; con_mcb_D9                            = $D9 ; 
con_mcb_DA                              = $DA ; 
con_mcb_DB                              = $DB ; 
con_mcb_DC                              = $DC ; 
; con_mcb_DD                            = $DD ; 
; con_mcb_DE                            = $DE ; 
con_mcb_jsr                             = $DF ; 
con_mcb_rts                             = $E0 ; 
; con_mcb_E1                            = $E1 ; 
; con_mcb_E2                            = $E2 ; 
con_mcb_E3                              = $E3 ; 
con_mcb_E4                              = $E4 ; 
con_mcb_E5                              = $E5 ; 
con_mcb_E6                              = $E6 ; 
; con_mcb_E7                            = $E7 ; 
con_mcb_E8                              = $E8 ; 
con_mcb_E9                              = $E9 ; 
con_mcb_EA                              = $EA ; 
; con_mcb_EB                            = $EB ; 
