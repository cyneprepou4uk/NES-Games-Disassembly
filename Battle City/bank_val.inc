; keep your global constant values inside this file

; MISC
con_flag_demo                   = $02 ; stored in   ram_2nd_loop_flag = $46



; ram_btn_hold                  = $06
; ram_btn_press                 = $08
con_btn_Right                   = $80 ; 
con_btn_Left                    = $40 ; 
con_btn_Down                    = $20 ; 
con_btn_Up                      = $10 ; 
con_btn_Start                   = $08 ; 
con_btn_Select                  = $04 ; 
con_btn_B                       = $02 ; 
con_btn_A                       = $01 ; 

con_btns_Dpad                   = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; F0
con_btns_AB                     = con_btn_A + con_btn_B                                     ; 03
con_btns_SS                     = con_btn_Start + con_btn_Select                            ; 0C
