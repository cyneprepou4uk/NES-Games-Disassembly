; keep your global constant values inside this file



; MISC
con_ppu_tile                            = $00 ; 2000-23BF tiles
con_ppu_color                           = $00 ; 3F00-3F1F palette
con_ppu_attr                            = $00 ; 23C0-23FF nametable attributs



; todo
con_obj_index_00                        = $00 ; 
con_obj_index_10                        = $10 ; 
con_obj_index_20                        = $20 ; player
con_obj_index_30                        = $30 ; spinning fireball
con_obj_index_40                        = $40 ; enemy/heart
con_obj_index_50                        = $50 ; enemy
con_obj_index_60                        = $60 ; 
con_obj_index_70                        = $70 ; help message
con_obj_index_80                        = $80 ; girl
con_obj_index_90                        = $90 ; 
con_obj_index_A0                        = $A0 ; 
con_obj_index_B0                        = $B0 ; 
con_obj_index_C0                        = $C0 ; 
con_obj_index_D0                        = $D0 ; 
con_obj_index_E0                        = $E0 ; 
con_obj_index_F0                        = $F0 ; 



; ram_btn_hold
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0



