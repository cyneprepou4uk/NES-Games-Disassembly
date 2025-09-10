; keep your global constant values inside this file



; MISC
con_flag_demo                           = $02 ; stored in ram_2nd_loop_flag
con_not_game_over                       = $80 ; for ram_game_over_flag
con_ppu_offset_2000                     = $1C ; 
con_ppu_offset_2800                     = $24 ; 



; ram_btn_hold
; ram_btn_press
con_btn_Right                           = $80 ; 
con_btn_Left                            = $40 ; 
con_btn_Down                            = $20 ; 
con_btn_Up                              = $10 ; 
con_btn_Start                           = $08 ; 
con_btn_Select                          = $04 ; 
con_btn_B                               = $02 ; 
con_btn_A                               = $01 ; 

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; F0
con_btns_AB                             = con_btn_A + con_btn_B                                     ; 03
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 0C



; ram_bg_palette_id
; index for 0x001575
con_bg_pal_00                           = $00 ; 
con_bg_pal_01                           = $01 ; 
con_bg_pal_02                           = $02 ; 
con_bg_pal_03                           = $03 ; 
con_bg_pal_04                           = $04 ; 
con_bg_pal_05                           = $05 ; 
con_bg_pal_06                           = $06 ; 
con_bg_pal_07                           = $07 ; 
con_bg_pal_08                           = $08 ; 
con_bg_pal_FF                           = $FF ; skip palette



; ram_tank_flags
; need comments 0x0024A8 0x0024C8
con_tank_flag_explosion                 = $70 ; 
con_tank_flag_80                        = $80 ; 
con_tank_flag_90                        = $90 ; 
con_tank_flag_A0                        = $A0 ; 
con_tank_flag_follow_HQ                 = $B0 ; 
con_tank_flag_follow_p2                 = $C0 ; 
con_tank_flag_follow_p1                 = $D0 ; 
con_tank_flag_E0                        = $E0 ; 
con_tank_flag_respawn                   = $F0 ; 



; ram_se_data
con_se_index_00                         = $00 ; 
con_se_index_01                         = $01 ; for 4000/4004/4008/400C
con_se_index_02                         = $02 ; for 4001/4005/4009/400D
con_se_index_03                         = $03 ; for 4002/4006/400A/400E
con_se_index_04                         = $04 ; for 4003/4007/400B/400F
con_se_index_05                         = $05 ; 
con_se_index_06                         = $06 ; 
con_se_index_07                         = $07 ; 



