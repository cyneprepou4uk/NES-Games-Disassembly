; keep your global constant values inside this file



; MISC
con_prg_bank                    = $00



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
con_GM_07                       = $07 ; 
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
con_dir_01                      = $01 ; 
con_dir_02                      = $02 ; 
con_dir_03                      = $03 ; 
con_dir_04                      = $04 ; 
con_dir_05                      = $05 ; 
con_dir_06                      = $06 ; 
con_dir_07                      = $07 ; 
con_dir_08                      = $08 ; 
con_dir_09                      = $09 ; 
con_dir_0A                      = $0A ; 
