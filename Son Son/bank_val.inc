; keep your global constant values inside this file

; MISC
; con_something                         = $00 ; 



; ram_btn_p1
; ram_btn_p2
; ram_copy_btns
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
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03



; 0x00038C (need comments)
; con_837C_00                           = $00 ; 
con_837C_title_screen                   = $02 ; 
con_837C_cutscene                       = $04 ; after title screen
con_837C_06                             = $06 ; 
con_837C_08                             = $08 ; 
con_837C_0A                             = $0A ; 
con_837C_objects_handler                = $0C ; 
con_837C_0E                             = $0E ; 
con_837C_10                             = $10 ; 
con_837C_12                             = $12 ; 



; ram_object_id
; need comments at 0x004AEB 0x003C32 0x003727
con_obj_id_00                           = $00 ; 
con_obj_id_01                           = $01 ; 
con_obj_id_02                           = $02 ; 
con_obj_id_03                           = $03 ; 
con_obj_id_04                           = $04 ; 
con_obj_id_05                           = $05 ; 
con_obj_id_06                           = $06 ; 
con_obj_id_07                           = $07 ; 
con_obj_id_08                           = $08 ; 
con_obj_id_09                           = $09 ; 
con_obj_id_0A                           = $0A ; 
con_obj_id_0B                           = $0B ; 
con_obj_id_0C                           = $0C ; 
con_obj_id_0D                           = $0D ; 
con_obj_id_0E                           = $0E ; 
con_obj_id_0F                           = $0F ; 
con_obj_id_10                           = $10 ; 
con_obj_id_11                           = $11 ; 
con_obj_id_12                           = $12 ; 
con_obj_id_13                           = $13 ; 
con_obj_id_14                           = $14 ; 
con_obj_id_15                           = $15 ; 
con_obj_id_16                           = $16 ; 
con_obj_id_17                           = $17 ; 
con_obj_id_18                           = $18 ; 
con_obj_id_19                           = $19 ; 
con_obj_id_1A                           = $1A ; 
con_obj_id_1B                           = $1B ; 
con_obj_id_1C                           = $1C ; 
con_obj_id_1D                           = $1D ; 
con_obj_id_1E                           = $1E ; 
con_obj_id_1F                           = $1F ; 
con_obj_id_20                           = $20 ; 
