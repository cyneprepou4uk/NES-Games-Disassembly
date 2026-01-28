; keep your global constant values inside this file



; MISC
con_bzk_hack                            = $00 ; set to 01 before hacking
con_prg_bank_jsr                        = $00 ; bank for bankswitching
con_prg_bank_rts                        = $00 ; bank for returning



; ram_btn_hold
; ram_btn_press
; ram_copy_btn_hold
; ram_copy_btn_press
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



; ram_prg_bank_pointer
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
; con_bsw_01_24                         = $24 ; unused, fuel consumption
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
con_bsw_03_09_print_state_name          = $09 ; 



; ram_0048_palette_id
; for 0x000FF1
con_0048_00                             = $00 ; 
con_0048_01                             = $01 ; 
con_0048_02                             = $02 ; 
con_0048_03                             = $03 ; 
con_0048_04                             = $04 ; 
con_0048_05                             = $05 ; 
con_0048_06                             = $06 ; 
con_0048_07                             = $07 ; 
con_0048_08                             = $08 ; 
con_0048_09                             = $09 ; 
con_0048_0A                             = $0A ; 
con_0048_0B                             = $0B ; 



; ram_005B
; for 0x0089EA
con_005B_00                             = $00 ; 
con_005B_02                             = $02 ; 
con_005B_04                             = $04 ; 
con_005B_06                             = $06 ; 
con_005B_08                             = $08 ; 
con_005B_0A                             = $0A ; 
con_005B_0C                             = $0C ; 
con_005B_0E                             = $0E ; 
con_005B_10                             = $10 ; 
con_005B_12                             = $12 ; 
con_005B_14                             = $14 ; 
con_005B_16                             = $16 ; 
con_005B_18                             = $18 ; 
con_005B_1A                             = $1A ; 
con_005B_1C                             = $1C ; 
con_005B_1E                             = $1E ; 



; todo
; ram_script_handler
; index for 0x0025CC
; need comments 0x00A353 0x008D69 0x006AFA 0x006AE9 0x006A85
;               0x006A0E 0x004402 0x0043E7 0x003D9B 0x003D44
con_00CC_script_00                      = $00 ; 
con_00CC_script_01                      = $01 ; 
con_00CC_script_02                      = $02 ; 
con_00CC_script_03                      = $03 ; 
con_00CC_script_04                      = $04 ; 
con_00CC_script_05                      = $05 ; 
con_00CC_script_06                      = $06 ; 
con_00CC_script_07                      = $07 ; 
con_00CC_script_08                      = $08 ; 
con_00CC_script_09                      = $09 ; 
con_00CC_script_0A                      = $0A ; 
con_00CC_script_0B                      = $0B ; 
con_00CC_script_0C                      = $0C ; 
con_00CC_script_0D                      = $0D ; 
con_00CC_script_0E                      = $0E ; 
con_00CC_script_0F                      = $0F ; 
con_00CC_script_10                      = $10 ; 
con_00CC_script_11                      = $11 ; 
con_00CC_script_12                      = $12 ; 
con_00CC_script_13                      = $13 ; 
con_00CC_script_14                      = $14 ; 
con_00CC_script_15                      = $15 ; 
con_00CC_script_16                      = $16 ; 
con_00CC_script_17                      = $17 ; 
con_00CC_script_18                      = $18 ; 
con_00CC_script_19                      = $19 ; 
con_00CC_script_1A                      = $1A ; 
con_00CC_script_1B                      = $1B ; 
con_00CC_script_1C                      = $1C ; 
con_00CC_script_1D                      = $1D ; 
con_00CC_script_1E                      = $1E ; 
con_00CC_script_1F                      = $1F ; 
con_00CC_script_20                      = $20 ; 
con_00CC_script_21                      = $21 ; 
con_00CC_script_22                      = $22 ; 
con_00CC_script_23                      = $23 ; 
con_00CC_script_24                      = $24 ; 
con_00CC_script_25                      = $25 ; 
con_00CC_script_26                      = $26 ; 
con_00CC_script_27                      = $27 ; 
con_00CC_script_28                      = $28 ; 
con_00CC_script_29                      = $29 ; 
con_00CC_script_2A                      = $2A ; 
con_00CC_script_2B                      = $2B ; 
con_00CC_script_2C                      = $2C ; 



; index for 0x0182A4
con_8294_00                             = $00 ; 
con_8294_02                             = $02 ; 
con_8294_04                             = $04 ; 
con_8294_06                             = $06 ; 
con_8294_08                             = $08 ; 
con_8294_0A                             = $0A ; 
; con_8294_0C                           = $0C ; unused
con_8294_0E                             = $0E ; 



; ram_music_id
con_music_00                            = $00 ; 
con_music_01                            = $01 ; 04 = ILLINOIS
con_music_02                            = $02 ; 07 = COLORADO
con_music_03                            = $03 ; 
con_music_04                            = $04 ; 06 = E. CANADA
con_music_05                            = $05 ; title screen
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



