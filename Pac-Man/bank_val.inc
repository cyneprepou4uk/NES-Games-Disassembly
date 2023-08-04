; keep your global constant values inside this file



; MISC
con_tile                                = $00 ; 



; ram_btn_1p
; ram_btn_2p
; ram_btn_total
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



; ram_script
con_script_00                           = $00 ; 
con_script_02                           = $02 ; 
con_script_04                           = $04 ; 
con_script_freeze                       = $06 ; you eat a ghost and the game pauses
con_script_08                           = $08 ; 
con_script_0A                           = $0A ; 
con_script_stage_clear                  = $0C ; all pellets were eaten
con_script_0E                           = $0E ; 
con_script_10                           = $10 ; 
