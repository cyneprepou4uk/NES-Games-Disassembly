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



; ram_0045
; for 0x000106
; need comments 0x00056A 0x000C3D
; con_0045_00                           = $00 ; default value, unused directly, 00 is written at 0x0002A6 and also when RAM is cleared
con_0045_01                             = $01 ; 
con_0045_02                             = $02 ; blue background
con_0045_03                             = $03 ; 
con_0045_04                             = $04 ; 
con_0045_05                             = $05 ; 
con_0045_06                             = $06 ; 
con_0045_07                             = $07 ; 
con_0045_08                             = $08 ; 
con_0045_09                             = $09 ; 
con_0045_0A                             = $0A ; 
con_0045_0B                             = $0B ; 
con_0045_0C                             = $0C ; 
con_0045_0D                             = $0D ; 
con_0045_0E                             = $0E ; 
con_0045_0F                             = $0F ; 
con_0045_10                             = $10 ; 
con_0045_11                             = $11 ; 
con_0045_12                             = $12 ; 
con_0045_13                             = $13 ; 
con_0045_14                             = $14 ; 
con_0045_15                             = $15 ; 
con_0045_16                             = $16 ; 
con_0045_17                             = $17 ; 
con_0045_18                             = $18 ; title screen
con_0045_19                             = $19 ; 
con_0045_1A                             = $1A ; 



