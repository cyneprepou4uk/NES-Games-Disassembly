; keep your global constant values inside this file



; MISC
con_ppu_tile                    = $00 ; 2000-23BF tiles
con_ppu_color                   = $00 ; 3F00-3F1F palette
con_ppu_attr                    = $00 ; 23C0-23FF nametable attributs



; ram_btn_hold                  = $1A
con_btn_Right                   = $01 ; 
con_btn_Left                    = $02 ; 
con_btn_Down                    = $04 ; 
con_btn_Up                      = $08 ; 
con_btn_Start                   = $10 ; 
con_btn_Select                  = $20 ; 
con_btn_B                       = $40 ; 
con_btn_A                       = $80 ; 

con_btns_Dpad                   = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_AB                     = con_btn_A + con_btn_B                                     ; C0
