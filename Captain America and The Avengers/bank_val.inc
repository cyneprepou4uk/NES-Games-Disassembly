; keep your global constant values inside this file



; MISC
con_prg_bank                            = $00 ; 
con_chr_bank_bg                         = $00 ; todo
con_chr_bank_spr                        = $00 ; todo



; ram_buttons
; ram_prev_buttons
; ram_demo_buttons
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



; ram_buffers_flags
con_buffer_ready_palette                = $01 ; ram_pal_buffer
con_buffer_ready_02                     = $02 ; 
con_buffer_ready_04                     = $04 ; ram_02C0_ppu_buffer
; con_buffer_ready_08                   = $08 ; unused
con_buffer_ready_10                     = $10 ; ram_0328_ppu_buffer
con_buffer_ready_20                     = $20 ; ram_0308_ppu_buffer
con_buffer_ready_40                     = $40 ; ram_0364_ppu_buffer
; con_buffer_ready_80                   = $80 ; unused



; ram_irq_data_index
con_irq_data_00                         = $00 ; 
con_irq_data_01                         = $01 ; 
con_irq_data_02                         = $02 ; 
con_irq_data_03                         = $03 ; 
con_irq_data_04                         = $04 ; 
con_irq_data_05                         = $05 ; 



; ram_irq_handler
; handlers at 0x01D7D3
con_irq_handler_off                     = $00 ; irq handler will basically do nothing
con_irq_handler_01                      = $01 ; 
con_irq_handler_02                      = $02 ; 
con_irq_handler_03                      = $03 ; 
con_irq_handler_04                      = $04 ; 
con_irq_handler_05                      = $05 ; 
con_irq_handler_06                      = $06 ; 
con_irq_handler_07                      = $07 ; 
con_irq_handler_08                      = $08 ; 



; ram_0067_t12_table_index
; index for 0x0058BF
con_0067_t12_00                         = $00 ; 
con_0067_t12_01                         = $01 ; 
con_0067_t12_02                         = $02 ; 
con_0067_t12_03                         = $03 ; 
; con_0067_t12_04                       = $04 ; unused
con_0067_t12_05                         = $05 ; 
; con_0067_t12_06                       = $06 ; unused



; ram_0067_t1C_table_index
; indexes for 0x0135B3 0x0135C3 0x0135D3 0x0135E3 0x0135F3 0x013603
;             0x013614 0x013636 0x008953
con_0067_t1C_00                         = $00 ; 
con_0067_t1C_01                         = $01 ; 
con_0067_t1C_02                         = $02 ; 
con_0067_t1C_03                         = $03 ; 
con_0067_t1C_04                         = $04 ; 
con_0067_t1C_05                         = $05 ; 
con_0067_t1C_06                         = $06 ; 
con_0067_t1C_07                         = $07 ; 
con_0067_t1C_08                         = $08 ; 
con_0067_t1C_09                         = $09 ; 
con_0067_t1C_0A                         = $0A ; 
con_0067_t1C_0B                         = $0B ; 
con_0067_t1C_0C                         = $0C ; 
con_0067_t1C_0D                         = $0D ; 
con_0067_t1C_0E                         = $0E ; 
con_0067_t1C_0F                         = $0F ; 
con_0067_t1C_10                         = $10 ; 
con_0067_t1C_11                         = $11 ; 
con_0067_t1C_12                         = $12 ; 



; ram_00AB_handler
; index for 0x016E29
con_00AB_00                             = $00 ; 
con_00AB_01                             = $01 ; 
con_00AB_02                             = $02 ; 
con_00AB_03                             = $03 ; 



; ram_player_state_1
; ram_prev_player_state_1
; need comments 0x01A609
; handlers at 0x0161CD (captain) / 0x017419 (hawk)
con_plr_state_idle                      = $00 ; 
con_plr_state_walk                      = $01 ; 
con_plr_state_jump                      = $02 ; 
con_plr_state_attack_up                 = $03 ; punch (captain)/shoot arrow up (hawk)
con_plr_state_grab                      = $04 ; (captain only)
con_plr_state_duck                      = $05 ; also dive in water
con_plr_state_attack_ducking            = $06 ; punch/shoot arrow while sitting
con_plr_state_07                        = $07 ; 
; con_plr_state_08                      = $08 ; unused
con_plr_state_09                        = $09 ; 
con_plr_state_land                      = $0A ; 
con_plr_state_look_up_hawk              = $0B ; (hawk only)
con_plr_state_0C                        = $0C ; 
con_plr_state_look_up_cap               = $0D ; (captain only)
con_plr_state_throw_shield              = $0E ; 
; con_plr_state_0F                      = $0F ; unused



; todo
; ram_player_state_2
; need comments 0x01C83E 0x01C83E 0x01612E 0x00A012
con_040E_plr_state_idle                 = $00 ; 
con_040E_plr_state_walk                 = $01 ; also in water
con_040E_plr_state_jump                 = $02 ; 
con_040E_plr_state_punch                = $03 ; 

    con_040E_plr_state_capt_kick            = $04 ; (captain only) during jump

con_040E_plr_state_duck_or_dive         = $05 ; also dive in water
con_040E_plr_state_ducking_punch        = $06 ; 
con_040E_plr_state_get_hit_and_lean     = $07 ; lean back after getting hit
con_040E_plr_state_get_hit_and_sit      = $08 ; sit after getting hit
con_040E_plr_state_dead                 = $09 ; 
con_040E_plr_state_land                 = $0A ; also in water

    con_040E_plr_state_capt_slide           = $0B ; double Dpad press and hold
    con_040E_plr_state_hawk_shoot_arrow_on_ground   = $0B ; 

con_040E_plr_state_look_up              = $0C ; 

    con_040E_plr_state_capt_throw_shield    = $0D ; (captain only)

    con_040E_plr_state_hawk_shoot_arrow_diagonal_on_ground   = $0E ; (hawk only)

    con_040E_plr_state_capt_somersault      = $0F ; 
    con_040E_plr_state_hawk_shoot_arrow_midair_foward   = $0F ; 

    con_040E_plr_state_capt_on_shield_change_dir    = $10 ; during 10 or 13 you face another direction
    con_040E_plr_state_hawk_shoot_arrow_midair_up   = $10 ; 

    con_040E_plr_state_capt_grab_rope       = $11 ; 
    con_040E_plr_state_hawk_shoot_arrow_midair_diagonal = $11 ; 

    con_040E_plr_state_capt_grab_jump       = $12 ; jump after grabbing rope 11
    con_040E_plr_state_hawk_shoot_arrow_ducking = $12 ; 

    con_040E_plr_state_capt_sit_on_shield   = $13 ; (captain only) during jumping or on the ground

    con_040E_plr_state_capt_water_sit_on_shield = $14 ; (captain only) sitting on the water



; ram_000D_spr_pal_index
; index for sprite palette 0x008814
con_000D_00                             = $00 ; 
con_000D_01                             = $01 ; 
con_000D_02                             = $02 ; 
con_000D_03                             = $03 ; 
con_000D_04                             = $04 ; 
con_000D_05                             = $05 ; 
con_000D_06                             = $06 ; 
con_000D_07                             = $07 ; 
con_000D_08                             = $08 ; 
con_000D_09                             = $09 ; 
con_000D_0A                             = $0A ; 
con_000D_0B                             = $0B ; 



; ram_004B_script
con_004B_00                             = $00 ; 
con_004B_01                             = $01 ; 
con_004B_02                             = $02 ; 
con_004B_03                             = $03 ; 
con_004B_04                             = $04 ; 
con_004B_05                             = $05 ; 
con_004B_06                             = $06 ; 
con_004B_07                             = $07 ; 
con_004B_08                             = $08 ; 



; ram_00AA_plr_flags
con_00AA_flag_00                        = $00 ; 
con_00AA_flag_jump                      = $01 ; sets while in jump
con_00AA_flag_duck_attack               = $02 ; sets while ducking attack



; ram_00DA_flags
; todo 0x01E5B5 0x017943
con_00DA_00                             = $00 ; 
con_00DA_10                             = $10 ; 
con_00DA_20                             = $20 ; 
con_00DA_40                             = $40 ; 
con_00DA_80                             = $80 ; 



; ram_script
con_script_00                           = $00 ; 
con_script_title_screen                 = $01 ; titie screen and cutscene
con_script_demo                         = $02 ; 
con_script_gameplay                     = $03 ; includes dialogue, map and gameplay
con_script_battle_mode                  = $04 ; pvp
con_script_05                           = $05 ; 
con_script_06                           = $06 ; dialogue?



; ram_03D5_script
; handler at 0x01EDAD
con_03D5_00                             = $00 ; 
con_03D5_gameplay                       = $01 ; 
con_03D5_pause_menu                     = $02 ; 
con_03D5_map                            = $03 ; 
con_03D5_04                             = $04 ; 



; ram_03D6_subscript
; handler at 0x01E434
con_03D6_00                             = $00 ; 
con_03D6_01                             = $01 ; 
con_03D6_02                             = $02 ; 
con_03D6_03                             = $03 ; 
con_03D6_04                             = $04 ; 
con_03D6_05                             = $05 ; 



; ram_03FD_t02_handler_index
; handler at 0x01D4C4
con_03FD_00                             = $00 ; 
con_03FD_01                             = $01 ; 
con_03FD_02                             = $02 ; 
con_03FD_03                             = $03 ; 
con_03FD_04                             = $04 ; 
con_03FD_05                             = $05 ; 
con_03FD_06                             = $06 ; 
con_03FD_07                             = $07 ; 
con_03FD_08                             = $08 ; 



; ram_0416_player_flags
con_0416_00                             = $00 ; 
con_0416_01                             = $01 ; 
con_0416_02                             = $02 ; 
con_0416_80                             = $80 ; 



; ram_041B_player_flags
con_041B_flag_00                        = $00 ; 
con_041B_flag_01                        = $01 ; sets when captain ducks (why?)/when player releases A button during jump
                                           ; before he would start dropping down because of gravity
con_041B_flag_shield_down               = $08 ; sets when captain holds shield under him while landing
con_041B_flag_useless_release_A         = $10 ; sets when player holds B button during jump (not checked anywhere)
con_041B_flag_20                        = $20 ; 
con_041B_flag_somersault                = $40 ; sets when captain performs somersault
con_041B_flag_release_B                 = $80 ; sets when player releases A button during jump



; ram_obj_drop_id
; ram_0070_t02_drop_id
con_drop_small_crystal_1                = $00 ; add 1 crystal (rarely used?)
con_drop_small_crystal_2                = $01 ; add 1 crystal
con_drop_big_crystal                    = $02 ; add 10 crystals
con_drop_exit                           = $03 ; enable city exit
con_drop_5_stars                        = $04 ; add 5 points
; con_drop_05                           = $05 ; unused
con_drop_small_heart                    = $06 ; restore 2 health
con_drop_big_heart                      = $07 ; restore 10 health
con_drop_continue                       = $08 ; add 1 continue
con_drop_resque                         = $09 ; resque another player



; todo
; ram_obj_id
; need comments 0x018583 0x0184D6 0x0181E4 0x01194E 0x0118F0
con_id_flag_80                          = $80 ; flag
; enemies
con_enemy_id_00                         = $00 ; unused?
con_enemy_id_01                         = $01 ; солдат в ambush (сначала стреляет из-за экрана?)
con_enemy_id_02                         = $02 ; unused?
con_enemy_id_03                         = $03 ; unused?
con_enemy_id_04                         = $04 ; unused?
con_enemy_id_05                         = $05 ; солдат сидящий и стреляющий 1 пулю (медленно)
con_enemy_id_06                         = $06 ; солдат сидящий и стреляющий 3 пули (медленно), также есть в red alert
con_enemy_id_07                         = $07 ; солдат приземлившийся после 15
con_enemy_id_08                         = $08 ; солдат в red alert (но не 06)
con_enemy_id_09                         = $09 ; солдат бегущий и прыгающий (быстрый)
con_enemy_id_0A                         = $0A ; unused?
con_enemy_id_0B                         = $0B ; солдат бегущий и прыгающий (медленный)
con_enemy_id_0C                         = $0C ; unused?
con_enemy_id_0D                         = $0D ; робот стреляющий ракетами (внутри здания)
con_enemy_id_0E                         = $0E ; робот стреляющий ракетами (в лесу/в городе)
con_enemy_id_0F                         = $0F ; робот стреляющий ракетами (внутри здания, медленные прямые ракеты, ходит туда сюда)
con_enemy_id_10                         = $10 ; робот стреляющий ракетами (в городе, ходит туда сюда и прыгает)
con_enemy_id_11                         = $11 ; робот стреляющий ракетами (стреляет быстрыми ракетами по прямой)
con_enemy_id_12                         = $12 ; unused?
con_enemy_id_13                         = $13 ; робот стреляющий ракетами в ambush (не стреляет ракетами)
con_enemy_id_14                         = $14 ; unused?
con_enemy_id_15                         = $15 ; солдат спавнится и прыгает в red alert
con_enemy_id_16                         = $16 ; unused?
con_enemy_id_17                         = $17 ; unused?
con_enemy_id_18                         = $18 ; unused?
con_enemy_id_19                         = $19 ; unused?
con_enemy_id_1A                         = $1A ; unused?
con_enemy_id_1B                         = $1B ; unused?
con_enemy_id_1C                         = $1C ; unused?
con_enemy_id_1D                         = $1D ; unused?
con_enemy_id_1E                         = $1E ; unused?
con_enemy_id_1F                         = $1F ; робот с джетпаком летающий по умолчанию (в лесу)
con_enemy_id_20                         = $20 ; робот с джетпаком летающий по умолчанию (в здании)
con_enemy_id_21                         = $21 ; unused?
con_enemy_id_22                         = $22 ; unused?
con_enemy_id_23                         = $23 ; робот с джетпаком крысящий в воде, очень быстрый (в лесу)
con_enemy_id_24                         = $24 ; unused?
con_enemy_id_25                         = $25 ; робот с джетпаком плаваюший и потом летающий (в лесу)
con_enemy_id_26                         = $26 ; робот с джетпаком плаваюший и потом летающий (в городе)
con_enemy_id_27                         = $27 ; летучая мышь (видимая)
con_enemy_id_28                         = $28 ; unused?
con_enemy_id_29                         = $29 ; летучая мышь (мимик)
con_enemy_id_2A                         = $2A ; босс с бочкой (фаза 1 кидает бочки и стреляет)
con_enemy_id_2B                         = $2B ; босс с бочкой (фаза 2 бежит и стреляет)
con_enemy_id_2C                         = $2C ; бочка босса 2A
con_enemy_id_2D                         = $2D ; босс с бочкой (фаза 3 стреляет огнем)
con_enemy_id_2E                         = $2E ; босс с бочкой (фаза 4 горит)
con_enemy_id_2F                         = $2F ; unused?
con_enemy_id_30                         = $30 ; пушка на потолке (3 пули)
con_enemy_id_31                         = $31 ; unused?
con_enemy_id_32                         = $32 ; пушка на стене смотрит вправо (3 пули)
con_enemy_id_33                         = $33 ; пушка на стене смотрит влево (3 пули)
con_enemy_id_34                         = $34 ; unused?
con_enemy_id_35                         = $35 ; unused?
con_enemy_id_36                         = $36 ; пушка на потолке (платформе?) (2 пули самонаводящиеся)
con_enemy_id_37                         = $37 ; пушка на потолке (2 пули самонаводящиеся)
con_enemy_id_38                         = $38 ; пушка на полу (2 пули самонаводящиеся)
con_enemy_id_39                         = $39 ; пушка на полу (2 пули самонаводящиеся)
con_enemy_id_3A                         = $3A ; солдат в окне
con_enemy_id_3B                         = $3B ; солдат на дереве
con_enemy_id_3C                         = $3C ; unused?
con_enemy_id_3D                         = $3D ; пушка неуязвимая смотрит вверх по умолчанию
con_enemy_id_3E                         = $3E ; пушка неуязвимая смотрит влево по умолчанию
con_enemy_id_3F                         = $3F ; пушка неуязвимая смотрит вниз по умолчанию
con_enemy_id_40                         = $40 ; пушка неуязвимая смотрит вправо по умолчанию
con_enemy_id_41                         = $41 ; электрическое поле возле двери, убивает сразу
con_enemy_id_42                         = $42 ; электрическое поле возле выхода, убивает сразу
con_enemy_id_43                         = $43 ; платформа движется горизонтально (медленно)
con_enemy_id_44                         = $44 ; платформа движется вертикально
con_enemy_id_45                         = $45 ; платформа которая начинает падать если стоять на ней
con_enemy_id_46                         = $46 ; платформа движется диагонально в правый верхний угол и назад в левый нижний угол
con_enemy_id_47                         = $47 ; платформа которая начинает раздвигаться после прыжка на нее
con_enemy_id_48                         = $48 ; платформа движется по часовой стрелке
con_enemy_id_49                         = $49 ; платформа исчезающаяся и появляющаяся
con_enemy_id_4A                         = $4A ; unused?
con_enemy_id_4B                         = $4B ; платформа движется горизонтально (быстро)
con_enemy_id_4C                         = $4C ; выключатель ON уничтожаемый
con_enemy_id_4D                         = $4D ; выключатель ON уничтожаемый
con_enemy_id_4E                         = $4E ; выключатель ON уничтожаемый
con_enemy_id_4F                         = $4F ; выключатель ON уничтожаемый
con_enemy_id_50                         = $50 ; босс фиолетовый летающий
con_enemy_id_51                         = $51 ; босс белый летающий
con_enemy_id_52                         = $52 ; босс с молниями
con_enemy_id_53                         = $53 ; босс качок обычный
con_enemy_id_54                         = $54 ; босс качок в ящике
con_enemy_id_55                         = $55 ; босс череп
con_enemy_id_56                         = $56 ; ??? какая-то движущаяся хрень вверх вних
con_enemy_id_57                         = $57 ; какой-то шар в комнате босса 54
con_enemy_id_58                         = $58 ; кристаллы босса 55
con_enemy_id_59                         = $59 ; какой-то самонаводящийся клубок пара в комнате босса 54
con_enemy_id_5A                         = $5A ; надпись help (босс 53)
con_enemy_id_5B                         = $5B ; unused?
con_enemy_id_5C                         = $5C ; unused?
con_enemy_id_5D                         = $5D ; unused?
con_enemy_id_5E                         = $5E ; unused?
con_enemy_id_5F                         = $5F ; unused?
; icons
con_icon_id_captain_idle                = $00 ; значок Captain на карте (не моргающий)
con_icon_id_captain_grey                = $01 ; значок Captain на карте (серый)
con_icon_id_hawk_idle                   = $02 ; значок Hawk на карте (не моргающий)
con_icon_id_hawk_grey                   = $03 ; значок Hawk на карте (серый)
con_icon_id_avengers                    = $04 ; значок Avengers на карте
con_icon_id_rocket_idle                 = $05 ; значок ракеты на карте (не моргающий)
con_icon_id_red_alert                   = $06 ; unused? значок red alert
con_icon_id_circle                      = $07 ; значок destination на карте
con_icon_id_captain_selected            = $08 ; значок Captain на карте (моргающий)
con_icon_id_hawk_selected               = $09 ; значок Hawk на карте (моргающий)
con_icon_id_rocket_selected             = $0A ; значок ракеты на карте (моргающи)
con_icon_id_rocked_big                  = $0B ; значок ракеты на карте (увеличиваюшаяся и взлетающая)
; shots
con_shot_id_00                          = $00 ; unused?
con_shot_id_01                          = $01 ; пуля солдата (летит горизонтально)
con_shot_id_02                          = $02 ; пуля пушки на потолке (каждая из 3х пуль)
con_shot_id_03                          = $03 ; пуля солдата на дереве (летит вниз, каждая из 3х пуль)
con_shot_id_04                          = $04 ; пуля солдата в окне (каждая из 3х пуль)
con_shot_id_05                          = $05 ; пуля солдата с 3 пулями (каждая из 3х пуль)
con_shot_id_06                          = $06 ; пуля неуязвимой пушки
con_shot_id_07                          = $07 ; ракета ходящего робота (строго горизонтальная)
con_shot_id_08                          = $08 ; ракета ходящего робота
con_shot_id_09                          = $09 ; ракета ходящего робота (строго горизонтальная, очень быстрая)
con_shot_id_0A                          = $0A ; unused?
con_shot_id_0B                          = $0B ; unused?
con_shot_id_0C                          = $0C ; unused?
con_shot_id_0D                          = $0D ; unused?
con_shot_id_0E                          = $0E ; ракета самонаводящаяся робота с джетпаком (медленная)
con_shot_id_0F                          = $0F ; самонаводящийся выстрел пушки на платформе (каждый из 2х выстрелов)
con_shot_id_10                          = $10 ; unused?
con_shot_id_11                          = $11 ; ракета самонаводящаяся робота с джетпаком (быстрая)
con_shot_id_12                          = $12 ; самонаводящийся выстрел пушки на потолке (каждый из 2х выстрелов)
con_shot_id_13                          = $13 ; unused?
con_shot_id_14                          = $14 ; unused?
con_shot_id_15                          = $15 ; огненный выстрел босса (горизонтальный)
con_shot_id_16                          = $16 ; огренный выстрел босса (диагональный вниз)
con_shot_id_17                          = $17 ; огренный выстрел босса (диагональный вверх)
con_shot_id_18                          = $18 ; unused?
con_shot_id_19                          = $19 ; выстрел босса с бочкой
con_shot_id_1A                          = $1A ; unused?
con_shot_id_1B                          = $1B ; unused?
con_shot_id_1C                          = $1C ; unused?
con_shot_id_1D                          = $1D ; unused?
con_shot_id_1E                          = $1E ; unused?
con_shot_id_1F                          = $1F ; unused?
con_shot_id_20                          = $20 ; молния бьющая по статуям
con_shot_id_21                          = $21 ; вылетающий из статуи босс
con_shot_id_22                          = $22 ; unused?
con_shot_id_23                          = $23 ; unused?
con_shot_id_24                          = $24 ; пуля фиолетового босса
con_shot_id_25                          = $25 ; белый выстрел фиолетового босса
con_shot_id_26                          = $26 ; удар рукой фиолетового босса
con_shot_id_27                          = $27 ; белый выстрел белого босса
con_shot_id_28                          = $28 ; выстрел молнией синего босса
con_shot_id_29                          = $29 ; фиолетовый выстрел синего босса
con_shot_id_2A                          = $2A ; белый выстрел синего босса
con_shot_id_2B                          = $2B ; выстрел волной синего босса
con_shot_id_2C                          = $2C ; падающий камень босса качка
con_shot_id_2D                          = $2D ; осколки камня 2C
con_shot_id_2E                          = $2E ; удар рукой босса качка
con_shot_id_2F                          = $2F ; выстрел молнией из шара босса качка
con_shot_id_30                          = $30 ; удар ногой босса качка
con_shot_id_31                          = $31 ; unused?
con_shot_id_32                          = $32 ; unused?
con_shot_id_33                          = $33 ; unused?
con_shot_id_34                          = $34 ; unused?
con_shot_id_35                          = $35 ; unused?
con_shot_id_36                          = $36 ; unused?
con_shot_id_37                          = $37 ; unused?
con_shot_id_38                          = $38 ; unused?
con_shot_id_39                          = $39 ; unused?
con_shot_id_3A                          = $3A ; unused?
con_shot_id_3B                          = $3B ; unused?
con_shot_id_3C                          = $3C ; unused?
con_shot_id_3D                          = $3D ; unused?
con_shot_id_3E                          = $3E ; unused?
con_shot_id_3F                          = $3F ; unused?



; ram_0534_t01_map_movement_handler_index
; index for 0x018354
con_0534_00                             = $00 ; 
con_0534_01                             = $01 ; 
con_0534_02                             = $02 ; 
con_0534_03                             = $03 ; 
con_0534_04                             = $04 ; 
con_0534_05                             = $05 ; 
con_0534_06                             = $06 ; 
con_0534_07                             = $07 ; 



; ram_05B5_player_flags
con_05B5_together                       = $01 ; sets if both players are in one city (A icon)
con_05B5_captured_hawk                  = $40 ; sets if hawk is captured
con_05B5_captured_captain               = $80 ; sets if captain is captured



; ram_05C2_handler
; handler at 0x01C527
con_05C2_00                             = $00 ; 
con_05C2_01                             = $01 ; 
con_05C2_02                             = $02 ; 
con_05C2_03                             = $03 ; 
con_05C2_04                             = $04 ; 
con_05C2_05                             = $05 ; 
con_05C2_06                             = $06 ; 



; ram_05ED_handler_index
; index for 0x019C9D
con_05ED_00                             = $00 ; 
con_05ED_01                             = $01 ; 
con_05ED_02                             = $02 ; 
con_05ED_03                             = $03 ; 
con_05ED_04                             = $04 ; 
con_05ED_05                             = $05 ; 
con_05ED_06                             = $06 ; 
con_05ED_07                             = $07 ; 
con_05ED_08                             = $08 ; 
con_05ED_09                             = $09 ; 



; ram_05EE_table_index
; indexes for 0x008C28 0x019DCB
; con_05EE_00                           = $00 ; unused
con_05EE_01                             = $01 ; 
con_05EE_02                             = $02 ; 
con_05EE_03                             = $03 ; 
con_05EE_04                             = $04 ; 
con_05EE_05                             = $05 ; 
con_05EE_06                             = $06 ; 
con_05EE_07                             = $07 ; 
con_05EE_08                             = $08 ; 
con_05EE_09                             = $09 ; 
con_05EE_0A                             = $0A ; 
con_05EE_0B                             = $0B ; 
con_05EE_0C                             = $0C ; 
con_05EE_0D                             = $0D ; 
con_05EE_0E                             = $0E ; 
con_05EE_0F                             = $0F ; 
con_05EE_10                             = $10 ; 
con_05EE_11                             = $11 ; 
con_05EE_12                             = $12 ; 
con_05EE_13                             = $13 ; 
; con_05EE_14                           = $14 ; unused



; ram_05D4_plr_flags
con_05D4_10                             = $10 ; 
con_05D4_20                             = $20 ; 
con_05D4_40                             = $40 ; 
con_05D4_80                             = $80 ; not captured if set?



; ram_05DC_flags
con_05DC_00                             = $00 ; 
con_05DC_player_index                   = $01 ; player index 00/01
con_05DC_20                             = $20 ; 
con_05DC_40                             = $40 ; 
con_05DC_has_player_index               = $80 ; address contains player index if set?



; ram_05E0_flags
con_05E0_00                             = $00 ; 
con_05E0_01                             = $01 ; 
con_05E0_02                             = $02 ; 
con_05E0_04                             = $04 ; 
con_05E0_80                             = $80 ; 



; ram_05E1_flags
con_05E1_00                             = $00 ; 
con_05E1_01                             = $01 ; 
con_05E1_02                             = $02 ; 
con_05E1_04                             = $04 ; 
con_05E1_08                             = $08 ; 
con_05E1_20                             = $20 ; 
con_05E1_80                             = $80 ; 



; ram_0626_se_flags
con_0626_40                             = $40 ; 
con_0626_80                             = $80 ; 



; ram_0660_se_flags
con_0660_00                             = $00 ; 
con_0660_10                             = $10 ; 
con_0660_20                             = $20 ; 
con_0660_40                             = $40 ; 
con_0660_80_unused                      = $80 ; bzk optimize, read but never set



; text control bytes 0x008F98
; con_8F88_E4                           = $E4 ; unused
; con_8F88_E5                           = $E4 ; unused
con_8F88_print_name                     = $FC ; 
con_8F88_pause                          = $FD ; blinking arrow
con_8F88_new_line                       = $FE ; 
con_8F88_stop                           = $FF ; 



; ram_0077_t03_sound_id
; ram_00F0_se_sound_id
; ram_0600_se_sound_id
; index for 0x00EAB4
; sound effects
; con_sfx_00                            = $00 ; unused
con_sfx_disable_se_1                    = $01 ; disable sound engine
con_sfx_disable_se_2                    = $02 ; disable sound engine
con_sfx_shoot_bullet                    = $03 ; 
con_sfx_shield_bounce                   = $04 ; bullet blocking/landing on shield
con_sfx_lightning                       = $05 ; 
con_sfx_shoot_laser                     = $06 ; 
con_sfx_attack                          = $07 ; punch/kick/rocket (enemy)
con_sfx_earthquake                      = $08 ; 
con_sfx_shoot_fire                      = $09 ; 
con_sfx_land_on_ground                  = $0A ; 
con_sfx_capsule_hit                     = $0B ; 
con_sfx_pick_up_drop                    = $0C ; 
con_sfx_shoot_arrow                     = $0D ; 
con_sfx_player_hit                      = $0E ; 
con_sfx_water_splash                    = $0F ; 
con_sfx_somersault                      = $10 ; 
con_sfx_restore_health                  = $11 ; 
con_sfx_exit_found                      = $12 ; pick up exit item
con_sfx_move_cursor                     = $13 ; select one of the options
con_sfx_dash                            = $14 ; captain
con_sfx_throw_shield                    = $15 ; 
con_sfx_toggle_switch                   = $16 ; on/off switch
con_sfx_open_door                       = $17 ; 
con_sfx_return                          = $18 ; select return in pause menu
con_sfx_game_pause                      = $19 ; 
con_sfx_option_selected                 = $1A ; confirm selected option
con_sfx_explosion                       = $1B ; 
; music
con_music_cutscene                      = $1C ; after title screen
con_music_credits                       = $1D ; 
con_music_game_over                     = $1E ; 
con_music_player_dead                   = $1F ; 
con_music_map                           = $20 ; also player select in PvP
con_music_ost_captain                   = $21 ; 
con_music_ost_hawk                      = $22 ; 
con_music_red_alert                     = $23 ; 
con_music_dialogue_1                    = $24 ; talk to Wasp
con_music_dialogue_2                    = $25 ; talk to Wasp after level complete?
con_music_boss_fight                    = $26 ; 
con_sfx_ambush                          = $27 ; 
con_music_pause_menu                    = $28 ; 
con_sfx_dive_under_water                = $29 ; 
con_music_ambush                        = $2A ; 
con_sfx_power_increase                  = $2B ; 
con_sfx_resque                          = $2C ; pick up resque item



; sound engine control bytes 0x00E6F7
; todo D0-DF и E0-E2 используют AND 0F управляющего байта
con_se_cb_90                            = $90 ; 
con_se_cb_91                            = $91 ; 
con_se_cb_92                            = $92 ; 
con_se_cb_93                            = $93 ; 
; con_se_cb_94                          = $94 ; unused
con_se_cb_95                            = $95 ; 
; con_se_cb_96                          = $96 ; unused
; con_se_cb_97                          = $97 ; unused
; con_se_cb_98                          = $98 ; unused
con_se_cb_99                            = $99 ; 
con_se_cb_9A                            = $9A ; 
con_se_cb_9B                            = $9B ; 
con_se_cb_9C                            = $9C ; 
; con_se_cb_9D                          = $9D ; unused
con_se_cb_9E                            = $9E ; 
; con_se_cb_9F                          = $9F ; unused
; con_se_cb_A0                          = $A0 ; unused
con_se_cb_A1_jmp1                       = $A1 ; 
con_se_cb_A2                            = $A2 ; rts?
con_se_cb_A3                            = $A3 ; 
con_se_cb_A4                            = $A4 ; 
con_se_cb_A5_jmp2                       = $A5 ; 
; con_se_cb_A6                          = $A6 ; unused
con_se_cb_A7                            = $A7 ; 
con_se_cb_A8                            = $A8 ; 
con_se_cb_A9                            = $A9 ; 
con_se_cb_AA                            = $AA ; 
con_se_cb_AB                            = $AB ; 
con_se_cb_AC                            = $AC ; 
con_se_cb_AD                            = $AD ; 
; con_se_cb_AE                          = $AE ; unused
; con_se_cb_AF                          = $AF ; unused
con_se_cb_B0                            = $B0 ; 
con_se_cb_B1                            = $B1 ; 
con_se_cb_B2                            = $B2 ; 
; con_se_cb_B3                          = $B3 ; unused
; con_se_cb_B4                          = $B4 ; unused
; con_se_cb_B5                          = $B5 ; unused
con_se_cb_B6_stop                       = $B6 ; 
con_se_cb_B7                            = $B7 ; 
con_se_cb_B8                            = $B8 ; 
; con_se_cb_B9                          = $B9 ; unused
; con_se_cb_BA                          = $BA ; unused
con_se_cb_BB                            = $BB ; 
con_se_cb_BC                            = $BC ; 
con_se_cb_BD                            = $BD ; 
con_se_cb_BE_jsr                        = $BE ; 
con_se_cb_BF_rts                        = $BF ; 
; con_se_cb_C0                          = $C0 ; unused
con_se_cb_C1                            = $C1 ; 
con_se_cb_C2                            = $C2 ; 
con_se_cb_C3                            = $C3 ; 
; con_se_cb_C4                          = $C4 ; unused
con_se_cb_C5                            = $C5 ; 
; con_se_cb_C6                          = $C6 ; unused
; con_se_cb_C7                          = $C7 ; unused
; con_se_cb_C8                          = $C8 ; unused
; con_se_cb_C9                          = $C9 ; unused
; con_se_cb_CA                          = $CA ; unused
; con_se_cb_CB                          = $CB ; unused
; con_se_cb_CC                          = $CC ; unused
; con_se_cb_CD                          = $CD ; unused
; con_se_cb_CE                          = $CE ; unused
; con_se_cb_CF                          = $CF ; unused
con_se_cb_D0                            = $D0 ; 
con_se_cb_D1                            = $D1 ; 
con_se_cb_D2                            = $D2 ; 
con_se_cb_D3                            = $D3 ; 
con_se_cb_D4                            = $D4 ; 
con_se_cb_D5                            = $D5 ; 
con_se_cb_D6                            = $D6 ; 
con_se_cb_D7                            = $D7 ; 
con_se_cb_D8                            = $D8 ; 
con_se_cb_D9                            = $D9 ; 
con_se_cb_DA                            = $DA ; 
con_se_cb_DB                            = $DB ; 
con_se_cb_DC                            = $DC ; 
con_se_cb_DD                            = $DD ; 
con_se_cb_DE                            = $DE ; 
con_se_cb_DF                            = $DF ; 
con_se_cb_E0                            = $E0 ; 
con_se_cb_E1                            = $E1 ; 
con_se_cb_E2                            = $E2 ; 



