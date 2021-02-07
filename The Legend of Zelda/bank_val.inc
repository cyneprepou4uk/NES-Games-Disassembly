; keep your global constant values inside this file



; MISC
con_prg_bank                    = $00
con_mirroring_vertical          = $0E
con_mirroring_horisontal        = $0F



; ram_btn_press                 = $F8
; ram_btn_hold                  = $FA
con_btn_Right                   = $01 ; 
con_btn_Left                    = $02 ; 
con_btn_Down                    = $04 ; 
con_btn_Up                      = $08 ; 
con_btn_Start                   = $10 ; 
con_btn_Select                  = $20 ; 
con_btn_B                       = $40 ; 
con_btn_A                       = $80 ; 

con_btns_Dpad                   = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F



; ram_game_mode_main            = $12
; needed comments at 0x014550   0x01459C   0x00A607
;                    0x0090D6   0x01F192
;                    0x01EB45 & 0x01E92E - rename offsets
con_GM_title_screen             = $00 ; logo and manual
con_GM_slot_selection           = $01 ; menu with 3 slots and 2 options
con_GM_02                       = $02 ; 
con_GM_03                       = $03 ; 
con_GM_04                       = $04 ; 
con_GM_05                       = $05 ; 
con_GM_06                       = $06 ; 
con_GM_07                       = $07 ; not found but defenitely was used, probably set by INC
con_GM_08                       = $08 ; 
con_GM_09                       = $09 ; 
con_GM_0A                       = $0A ; 
con_GM_0B                       = $0B ; 
con_GM_0C                       = $0C ; 
con_GM_0D                       = $0D ; 
con_GM_register                 = $0E ; register your name menu
con_GM_elimination              = $0F ; eliminate slot menu
con_GM_10                       = $10 ; 
con_GM_11                       = $11 ; 
con_GM_12                       = $12 ; 
con_GM_13                       = $13 ; 



; ram_direction                 = $98
con_dir_00                      = $00 ; 
con_dir_Right                   = $01 ; 
con_dir_Left                    = $02 ; 
con_dir__LR                     = $03 ; con_dir_Left + con_dir_Right
con_dir_Down                    = $04 ; 
con_dir_05                      = $05 ; 
con_dir_06                      = $06 ; 
con_dir_07                      = $07 ; unused?
con_dir_Up                      = $08 ; 
con_dir_09                      = $09 ; 
con_dir_0A                      = $0A ; 
con_dir_0B                      = $0B ; unused?
con_dir__UD                     = $0C ; con_dir_Up + con_dir_Down
con_dir_0D                      = $0D ; con_dir_Right + con_dir_Up + con_dir_Down ?



; ram_music                     = $0600
con_music_00                    = $00 ; 
con_music_01                    = $01 ; 
con_music_02                    = $02 ; 
con_music_04                    = $04 ; 
con_music_06                    = $06 ; 
con_music_08                    = $08 ; 
con_music_10                    = $10 ; 
con_music_20                    = $20 ; 
con_music_40                    = $40 ; 
con_music_title                 = $80 ; title screen

; ram_sfx_1                     = $0601
con_sfx_1_01                    = $01 ; 
con_sfx_1_02                    = $02 ; 
con_sfx_1_08                    = $08 ; 
con_sfx_1_10                    = $10 ; 
con_sfx_1_20                    = $20 ; 
con_sfx_1_40                    = $40 ; 
con_sfx_1_80                    = $80 ; 

; ram_sfx_2                     = $0602
con_sfx_2_00                    = $00 ; 
con_sfx_2_01                    = $01 ; 
con_sfx_2_02                    = $02 ; 
con_sfx_2_04                    = $04 ; 
con_sfx_2_08                    = $08 ; 
con_sfx_2_10                    = $10 ; 
con_sfx_2_20                    = $20 ; 
con_sfx_2_40                    = $40 ; 
con_sfx_2_80                    = $80 ; 

; ram_sfx_3                     = $0603
con_sfx_3_00                    = $00 ; 
con_sfx_3_08                    = $08 ; 
con_sfx_3_80                    = $80 ; 

; ram_sfx_4                     = $0604
con_sfx_4_00                    = $00 ; 
con_sfx_4_01                    = $01 ; 
con_sfx_4_02                    = $02 ; 
con_sfx_4_04                    = $04 ; 
con_sfx_4_08                    = $08 ; 
con_sfx_4_10                    = $10 ; 
con_sfx_4_20                    = $20 ; 
con_sfx_4_40                    = $40 ; 
con_sfx_4_80                    = $80 ; 
