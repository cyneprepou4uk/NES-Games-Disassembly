; keep your global constant values inside this file



; MISC
con_prg_bank_jsr                        = $00 ; 
con_prg_bank_rts                        = $00 ; 



; ram_btn_hold                          = $0024
; ram_btn_press                         = $0025
; ram_copy_btn_hold                     = $002C
; ram_copy_btn_press                    = $002D
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 
        
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_SAB                            = con_btn_Start + con_btn_A + con_btn_B                     ; D0
con_btns_SSAB                           = con_btn_Start + con_btn_Select + con_btn_A + con_btn_B    ; F0
con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F



; ram_prg_bank_pointer                  = $0008
; baankswitch, indirect jumps within banks
; 1st number is bank to jump to, 2nd number is index
; bank 01
con_bsw_01_03                           = $03 ; 
con_bsw_01_06                           = $06 ; 
con_bsw_01_09                           = $09 ; 
con_bsw_01_0C                           = $0C ; 
con_bsw_01_0F                           = $0F ; 
con_bsw_01_12                           = $12 ; 
con_bsw_01_15                           = $15 ; 
con_bsw_01_18                           = $18 ; 
con_bsw_01_1B                           = $1B ; 
con_bsw_01_1E                           = $1E ; 
; con_bsw_01_21                         = $21 ; unused
; con_bsw_01_24                         = $24 ; unused
con_bsw_01_27                           = $27 ; 
con_bsw_01_2A                           = $2A ; 

; bank 02
con_bsw_02_03                           = $03 ; 
con_bsw_02_06                           = $06 ; 
con_bsw_02_09                           = $09 ; 
con_bsw_02_0C                           = $0C ; 
con_bsw_02_0F                           = $0F ; 
con_bsw_02_12                           = $12 ; 
con_bsw_02_15                           = $15 ; 
con_bsw_02_18                           = $18 ; 
con_bsw_02_1B                           = $1B ; 
con_bsw_02_1E                           = $1E ; 
con_bsw_02_21                           = $21 ; 
con_bsw_02_24                           = $24 ; 
con_bsw_02_27                           = $27 ; 
con_bsw_02_2A                           = $2A ; 
con_bsw_02_2D                           = $2D ; 
con_bsw_02_30                           = $30 ; 
con_bsw_02_33                           = $33 ; 
con_bsw_02_36                           = $36 ; 

; bank 03
con_bsw_03_03                           = $03 ; 
con_bsw_03_06                           = $06 ; 
con_bsw_03_09                           = $09 ; 



; ram_music_id                          = $03B0
con_music_00                            = $00 ; 
con_music_01                            = $01 ; 04 = ILLINOIS
con_music_02                            = $02 ; 07 = COLORADO
con_music_03                            = $03 ; 
con_music_04                            = $04 ; 06 = E. CANADA
con_music_05                            = $05 ; 
con_music_06                            = $06 ; 
con_music_07                            = $07 ; 00 = W. CANADA
con_music_08                            = $08 ; 05 = OHIO
con_music_09                            = $09 ; 03 = MICHIGAN
con_music_0A                            = $0A ; 01 = NEW JERSEY
con_music_0B                            = $0B ; 02 = S. CALIFORNIA
; con_music_0C                          = $0C ; some working melody, but unused?
con_music_0D                            = $0D ; 08 = TRADEWEST SPEEDBOWL
con_music_0E                            = $0E ; 
con_music_FF                            = $FF ; 