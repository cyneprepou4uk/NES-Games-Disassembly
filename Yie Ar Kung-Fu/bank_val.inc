; keep your global constant values inside this file



; ram_btn_hold
; ram_btn_press
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 



; ram_player_state
con_state_idle                          = $00 ; 
con_state_move_right                    = $01 ; 
con_state_move_left                     = $02 ; 
con_state_duck                          = $04 ; 
con_state_jump                          = $08 ; 
con_state_kick                          = $10 ; 
con_state_punch                         = $20 ; 



; ram_enemy_type
con_enemy_wang                          = $00 ; WANG
con_enemy_tao                           = $01 ; TAO
con_enemy_chen                          = $02 ; CHEN
con_enemy_lang                          = $03 ; LANG
con_enemy_mu                            = $04 ; MU



; print stuff (for 0x003F90)
; con_FF80_00                           = $00 ; unused
; con_FF80_01                           = $01 ; unused
; con_FF80_02                           = $02 ; unused
con_FF80_03                             = $03 ; 
con_FF80_04                             = $04 ; 
; con_FF80_05                           = $05 ; unused
con_FF80_06                             = $06 ; 
con_FF80_07                             = $07 ; 
con_FF80_08                             = $08 ; 
; con_FF80_09                           = $09 ; unused
con_FF80_0A                             = $0A ; 
con_FF80_0B                             = $0B ; 
con_FF80_name_wang                      = $0C ; opponent name
con_FF80_name_tao                       = $0D ; opponent name
con_FF80_name_chen                      = $0E ; opponent name
con_FF80_name_lang                      = $0F ; opponent name
con_FF80_name_mu                        = $10 ; opponent name
con_FF80_11                             = $11 ; 
; con_FF80_12                           = $12 ; unused
con_FF80_13                             = $13 ; 
con_FF80_14                             = $14 ; 
con_FF80_15                             = $15 ; 
con_FF80_16                             = $16 ; 
con_FF80_17                             = $17 ; 
con_FF80_18                             = $18 ; 
con_FF80_19                             = $19 ; 
con_FF80_1A                             = $1A ; 
con_FF80_1B                             = $1B ; 
con_FF80_1C                             = $1C ; 
con_FF80_1D                             = $1D ; 
; con_FF80_1E                           = $1E ; unused
; con_FF80_1F                           = $1F ; unused
con_FF80_20                             = $20 ; 
; con_FF80_21                           = $21 ; unused
; con_FF80_22                           = $22 ; unused
; con_FF80_23                           = $23 ; unused
con_FF80_24                             = $24 ; 
con_FF80_25                             = $25 ; 
con_FF80_26                             = $26 ; 
con_FF80_27                             = $27 ; 
con_FF80_28                             = $28 ; 
con_FF80_29                             = $29 ; 
con_FF80_2A                             = $2A ; 
; con_FF80_2B                           = $2B ; unused
con_FF80_2C                             = $2C ; 
; con_FF80_2D                           = $2D ; unused
; con_FF80_2E                           = $2E ; unused
con_FF80_2F                             = $2F ; 


