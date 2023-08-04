; keep your global constant values inside this file

; MISC
; con_something                         = $00 ; 



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

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_ABSS                           = con_btn_A + con_btn_B + con_btn_Start + con_btn_Select    ; F0
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03



; for 0x000106
; need comments 0x00056A 0x000C3D
; con_C27F_00                           = $00 ; unused
con_C27F_01                             = $01 ; 
con_C27F_02                             = $02 ; 
con_C27F_03                             = $03 ; 
con_C27F_04                             = $04 ; 
con_C27F_05                             = $05 ; 
con_C27F_06                             = $06 ; 
con_C27F_07                             = $07 ; 
con_C27F_08                             = $08 ; 
con_C27F_09                             = $09 ; 
con_C27F_0A                             = $0A ; 
con_C27F_0B                             = $0B ; 
con_C27F_0C                             = $0C ; 
con_C27F_0D                             = $0D ; 
con_C27F_0E                             = $0E ; 
con_C27F_0F                             = $0F ; 
con_C27F_10                             = $10 ; 
con_C27F_11                             = $11 ; 
con_C27F_12                             = $12 ; 
con_C27F_13                             = $13 ; 
con_C27F_14                             = $14 ; 
con_C27F_15                             = $15 ; 
con_C27F_16                             = $16 ; 
con_C27F_17                             = $17 ; 
con_C27F_18                             = $18 ; 
con_C27F_19                             = $19 ; 
con_C27F_1A                             = $1A ; 
