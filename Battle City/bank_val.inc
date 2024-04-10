; keep your global constant values inside this file

; MISC
con_flag_demo                           = $02 ; stored in ram_2nd_loop_flag
con_not_game_over                       = $80 ; for ram_game_over_flag



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
con_004D_00                             = $00 ; 
con_004D_01                             = $01 ; 
con_004D_02                             = $02 ; 
con_004D_03                             = $03 ; 
con_004D_04                             = $04 ; 
con_004D_05                             = $05 ; 
con_004D_06                             = $06 ; 
con_004D_07                             = $07 ; 
con_004D_08                             = $08 ; 
con_004D_FF                             = $FF ; skip palette
