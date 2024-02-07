; keep your global constant values inside this file



; enable ability to make changes in sertain banks without consequences
con_bzk_hack                            = $00 ; set to 01



; MISC
con_tile                                = $00 ; 
con_palette                             = $00 ; for ram_palette



; ram_btn_press
; ram_btn_hold
; ram_plr_btn_press
; ram_plr_btn_hold
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_SSAB                           = con_btn_Select + con_btn_Start + con_btn_A + con_btn_B    ; F0



; ram_06F5_music
con_music_00                            = $00 ; 
con_music_01                            = $01 ; 
con_music_02                            = $02 ; 
con_music_03                            = $03 ; 
con_music_04                            = $04 ; 
con_music_05                            = $05 ; 
con_music_06                            = $06 ; 
con_music_07                            = $07 ; 
con_music_08                            = $08 ; 
con_music_09                            = $09 ; 
con_music_0A                            = $0A ; 
con_music_0B                            = $0B ; 
con_music_0C                            = $0C ; 
; con_music_0D                          = $0D ; unused



; ram_sfx_0
; need comments 0x005210 0x005220
; con_sfx_0_01                          = $01 ; unused
con_sfx_0_02                            = $02 ; 
con_sfx_0_03                            = $03 ; 
con_sfx_0_04                            = $04 ; 
con_sfx_0_05                            = $05 ; 
con_sfx_0_06                            = $06 ; 
con_sfx_0_07                            = $07 ; 
; con_sfx_0_08                          = $08 ; unused



; ram_sfx_1
; need comments 0x005230 0x005246
con_sfx_1_01                            = $01 ; 
con_sfx_1_02                            = $02 ; 
con_sfx_1_03                            = $03 ; 
con_sfx_1_04                            = $04 ; 
con_sfx_1_05                            = $05 ; 
con_sfx_1_increase_speed                = $06 ; after every 10d pills
con_sfx_1_07                            = $07 ; 
; con_sfx_1_08                          = $08 ; unused
con_sfx_1_09                            = $09 ; 
; con_sfx_1_0A                          = $0A ; unused
; con_sfx_1_0B                          = $0B ; unused



; ram_sfx_2
; need comments 0x005278
; con_sfx_2_01                          = $01 ; unused
; con_sfx_2_02                          = $02 ; unused
; con_sfx_2_03                          = $03 ; unused



; ram_sfx_3
; need comments 0x00525C 0x005264
con_sfx_3_01                            = $01 ; 
; con_sfx_3_02                          = $02 ; unused
con_sfx_3_03                            = $03 ; 
con_sfx_3_04                            = $04 ; 



; ram_sfx_4
; need comments 0x00526C 0x005272 0x001C09
; con_sfx_4_01                          = $01 ; unused
con_sfx_4_02                            = $02 ; 
con_sfx_4_03                            = $03 ; 




