; keep your global constant values inside this file



 ; ram_btn_hold                         = $0014
 ; ram_btn_press                        = $0015
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
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03



; ram_music_1                           = $00FB
; ram_music_2                           = $00F3
con_music_00                            = $00 ; 
con_music_mountain_preview              = $01 ; when a bird is flying up through the whole mountain
con_music_background                    = $02 ; background stage music
con_music_logo                          = $04 ; logo music starting from the beginning, no loop
con_music_08                            = $08 ; logo music starting from the middle, yes loop
con_music_mountain_complete             = $10 ; when you grab the bird
con_music_pause                         = $20 ; set pause
con_music_unpause                       = $40 ; unset pause
con_music_off                           = $80 ; turn off current music

; ram_sfx_1                             = $00FE
con_sfx_1_00                            = $00 ; 
con_sfx_1_01                            = $01 ; 
con_sfx_1_02                            = $02 ; 
con_sfx_1_04                            = $04 ; 
con_sfx_1_08                            = $08 ; 
con_sfx_1_10                            = $10 ; 

; ram_sfx_2                             = $00FF
con_sfx_2_00                            = $00 ; 
con_sfx_2_01                            = $01 ; death
con_sfx_2_02                            = $02 ; bear jump
con_sfx_2_04                            = $04 ; player jump
con_sfx_2_08                            = $08 ; hit seal or ice piece with hammer



