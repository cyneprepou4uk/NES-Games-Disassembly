; keep your global constant values inside this file



; MISC
con_prg_bank                            = $00 ; 
con_prg_pair                            = $00 ; see pairs at 0x01F3A3
con_chr_bank                            = $00 ; 
con_chr_pair                            = $00 ; see pairs at 0x01F465



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

con_btns_UL                             = con_btn_Up + con_btn_Left                                 ; 0A
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_ABSS                           = con_btn_A + con_btn_B + con_btn_Start + con_btn_Select    ; F0



; ram_irq_handler
; for 0x01F78B
; need comments 0x0177FC
con_irq_00                              = $00 ; 
con_irq_01                              = $01 ; 
con_irq_02                              = $02 ; 
con_irq_03                              = $03 ; 
con_irq_04                              = $04 ; 
con_irq_05                              = $05 ; 
con_irq_06                              = $06 ; 
con_irq_07                              = $07 ; 
con_irq_08                              = $08 ; 



; 0x008F67 ppu data
con_8F57_00                             = $00 ; 
con_8F57_04                             = $04 ; 
con_8F57_08                             = $08 ; 
con_8F57_0C                             = $0C ; 
con_8F57_10                             = $10 ; 
con_8F57_14                             = $14 ; 
con_8F57_18                             = $18 ; 
con_8F57_1C                             = $1C ; 
con_8F57_20                             = $20 ; 
con_8F57_24                             = $24 ; 
con_8F57_28                             = $28 ; 
con_8F57_2C                             = $2C ; 
con_8F57_30                             = $30 ; 
con_8F57_34                             = $34 ; 
con_8F57_38                             = $38 ; 
con_8F57_3C                             = $3C ; 
con_8F57_40                             = $40 ; 
con_8F57_44                             = $44 ; 
con_8F57_48                             = $48 ; 
con_8F57_4C                             = $4C ; 
con_8F57_50                             = $50 ; 
con_8F57_54                             = $54 ; 
con_8F57_58                             = $58 ; 



; 0x00E37F
; todo найти записи в 000A 0x00E36F
con_A36F_00                             = $00 ; 
con_A36F_01                             = $01 ; 
con_A36F_02                             = $02 ; 
con_A36F_03                             = $03 ; 
con_A36F_04                             = $04 ; 
con_A36F_05                             = $05 ; 
con_A36F_06                             = $06 ; 
con_A36F_07                             = $07 ; 
con_A36F_08                             = $08 ; 
con_A36F_09                             = $09 ; 
con_A36F_0A                             = $0A ; 
con_A36F_0B                             = $0B ; 
con_A36F_0C                             = $0C ; 
con_A36F_0D                             = $0D ; 
con_A36F_0E                             = $0E ; 
con_A36F_0F                             = $0F ; 
con_A36F_10                             = $10 ; 
con_A36F_11                             = $11 ; 
con_A36F_12                             = $12 ; 
con_A36F_13                             = $13 ; 
con_A36F_14                             = $14 ; 
con_A36F_15                             = $15 ; 
con_A36F_16                             = $16 ; 
con_A36F_17                             = $17 ; 
con_A36F_18                             = $18 ; 
con_A36F_19                             = $19 ; 
con_A36F_1A                             = $1A ; 
con_A36F_1B                             = $1B ; 
con_A36F_1C                             = $1C ; 
con_A36F_1D                             = $1D ; 
con_A36F_1E                             = $1E ; 
con_A36F_1F                             = $1F ; 
con_A36F_20                             = $20 ; 
con_A36F_21                             = $21 ; 
con_A36F_22                             = $22 ; 
con_A36F_23                             = $23 ; 
con_A36F_24                             = $24 ; 
con_A36F_25                             = $25 ; 
con_A36F_26                             = $26 ; 
con_A36F_27                             = $27 ; 
con_A36F_28                             = $28 ; 
con_A36F_29                             = $29 ; 
con_A36F_2A                             = $2A ; 
con_A36F_2B                             = $2B ; 
con_A36F_2C                             = $2C ; 
con_A36F_2D                             = $2D ; 
con_A36F_2E                             = $2E ; 
con_A36F_2F                             = $2F ; 
con_A36F_30                             = $30 ; 
con_A36F_31                             = $31 ; 
con_A36F_32                             = $32 ; 
con_A36F_33                             = $33 ; 
con_A36F_34                             = $34 ; 
con_A36F_35                             = $35 ; 
con_A36F_36                             = $36 ; 
con_A36F_37                             = $37 ; 
con_A36F_38                             = $38 ; 
con_A36F_39                             = $39 ; 
con_A36F_3A                             = $3A ; 
con_A36F_3B                             = $3B ; 
con_A36F_3C                             = $3C ; 
con_A36F_3D                             = $3D ; 
con_A36F_3E                             = $3E ; 
con_A36F_3F                             = $3F ; 
con_A36F_40                             = $40 ; 
con_A36F_41                             = $41 ; 
con_A36F_42                             = $42 ; 



; 0x01D23A static screens
con_D22A_clear_nametables               = $00 ; 
; con_D22A_02                           = $02 ; 
con_D22A_title_screen                   = $04 ; 
; con_D22A_06                           = $06 ; 
con_D22A_cutscene_phone                 = $08 ; 
con_D22A_cutscene_crime                 = $0A ; fox is dead
con_D22A_pause                          = $0C ; 
con_D22A_player_select                  = $0E ; 
con_D22A_credits                        = $10 ; 



; 0x01D290 menu text
con_D280_push_start_button              = $00 ; 
con_D280_game_over                      = $14 ; 
con_D280_continue                       = $21 ; 
con_D280_end                            = $2C ; 
con_D280_konami_1                       = $32 ; after credits
con_D280_konami_2                       = $41 ; after credits



; 0x01DAAD
con_DA9D_00                             = $00 ; 
con_DA9D_01                             = $01 ; 
con_DA9D_02                             = $02 ; 
con_DA9D_03                             = $03 ; 
con_DA9D_04                             = $04 ; 
con_DA9D_05                             = $05 ; 
con_DA9D_06                             = $06 ; 
con_DA9D_07                             = $07 ; 
con_DA9D_08                             = $08 ; 
con_DA9D_09                             = $09 ; 
; con_DA9D_0A                           = $0A ; 
con_DA9D_0B                             = $0B ; 
; con_DA9D_0C                           = $0C ; 
con_DA9D_0D                             = $0D ; 
con_DA9D_0E                             = $0E ; 
con_DA9D_0F                             = $0F ; 
con_DA9D_10                             = $10 ; 
con_DA9D_11                             = $11 ; 



; 0x01F3E6 bankswitch routines
con_F3D6_00                             = $00 ; 
con_F3D6_01                             = $01 ; 
; con_F3D6_02                           = $02 ; 
; con_F3D6_03                           = $03 ; 
con_F3D6_04                             = $04 ; 
con_F3D6_05                             = $05 ; 
con_F3D6_06                             = $06 ; 
; con_F3D6_07                           = $07 ; 
con_F3D6_08                             = $08 ; 
con_F3D6_09                             = $09 ; 
; con_F3D6_0A                           = $0A ; 
con_F3D6_0B                             = $0B ; 
con_F3D6_0C                             = $0C ; 
con_F3D6_0D                             = $0D ; 
con_F3D6_0E                             = $0E ; 
con_F3D6_0F                             = $0F ; 
; con_F3D6_10                           = $10 ; 
; con_F3D6_11                           = $11 ; 
con_F3D6_12                             = $12 ; 
con_F3D6_13                             = $13 ; 
con_F3D6_14                             = $14 ; 
con_F3D6_15                             = $15 ; 
con_F3D6_16                             = $16 ; 
con_F3D6_17                             = $17 ; 
con_F3D6_18                             = $18 ; 
con_F3D6_19                             = $19 ; 
con_F3D6_1A                             = $1A ; 
con_F3D6_1B                             = $1B ; 
con_F3D6_1C                             = $1C ; 
con_F3D6_1D                             = $1D ; 
con_F3D6_1E                             = $1E ; 
con_F3D6_1F                             = $1F ; 
con_F3D6_20                             = $20 ; 
con_F3D6_21                             = $21 ; 
con_F3D6_22                             = $22 ; 
con_F3D6_23                             = $23 ; 
con_F3D6_24                             = $24 ; 
con_F3D6_25                             = $25 ; 



; need comments at 0x0086FA
; 0x010259
con_music_01                            = $01 ; 
con_music_02                            = $02 ; 
con_music_03                            = $03 ; 
con_music_04                            = $04 ; steps
con_music_06                            = $06 ; 
con_music_08                            = $08 ; 
con_music_0A                            = $0A ; 
con_music_0C                            = $0C ; 
con_music_0E                            = $0E ; 
con_music_10                            = $10 ; 
con_music_12                            = $12 ; 
con_music_14                            = $14 ; 
con_music_16                            = $16 ; 
con_music_18                            = $18 ; 
con_music_1A                            = $1A ; 
con_music_1C                            = $1C ; 
con_music_1E                            = $1E ; 
con_music_20                            = $20 ; 
con_music_22                            = $22 ; 
con_music_24                            = $24 ; 
con_music_26                            = $26 ; 
con_music_28                            = $28 ; 
con_music_2A                            = $2A ; 
con_music_2C                            = $2C ; 
con_music_2E                            = $2E ; 
con_music_30                            = $30 ; 
con_music_32                            = $32 ; 
con_music_34                            = $34 ; breaking glass at stage 5
con_music_36                            = $36 ; 
con_music_38                            = $38 ; 
con_music_3A                            = $3A ; 
con_music_3C                            = $3C ; 
con_music_3E                            = $3E ; 
con_music_40                            = $40 ; 
con_music_42                            = $42 ; 
con_music_44                            = $44 ; 
con_music_46                            = $46 ; 
con_music_48                            = $48 ; 
con_music_4A                            = $4A ; 
con_music_4C                            = $4C ; 
con_music_4E                            = $4E ; select new weapon
con_music_50                            = $50 ; 
con_music_53                            = $53 ; 
con_music_55                            = $55 ; 
con_music_58                            = $58 ; parachute
con_music_59                            = $59 ; 
con_music_5B                            = $5B ; falling into the water
con_music_5D                            = $5D ; player was killed
con_music_5F                            = $5F ; falling into a pit
con_music_61                            = $61 ; 
con_music_62                            = $62 ; 
con_music_63                            = $63 ; 
con_music_64                            = $64 ; shot after "press start"
con_music_67                            = $67 ; going into pause menu + pause menu music
con_music_6B                            = $6B ; 
con_music_70                            = $70 ; pause menu/player select menu music
con_music_74                            = $74 ; stage 1 soundtrack
con_music_78                            = $78 ; 
con_music_7C                            = $7C ; stage 2 soundtrack
con_music_80                            = $80 ; stage 3 soundtrack
con_music_84                            = $84 ; stage 4 soundtrack
con_music_88                            = $88 ; stage 5 soundtrack
con_music_8C                            = $8C ; 
con_music_90                            = $90 ; 
; con_music_94                          = $94 ; unused?
con_music_98                            = $98 ; 
con_music_9C                            = $9C ; stage clear
con_music_A0                            = $A0 ; dialog after stages
con_music_A4                            = $A4 ; game over
con_music_A8                            = $A8 ; 



; sound engine control bytes (for sfx 0x010076 and music 0x010028)
con_se_cb_E0                            = $E0 ; 
con_se_cb_E1                            = $E1 ; 
con_se_cb_E2                            = $E2 ; 
con_se_cb_E3                            = $E3 ; 
con_se_cb_E4                            = $E4 ; 
con_se_cb_E5                            = $E5 ; 
con_se_cb_E6                            = $E6 ; 
con_se_cb_E7                            = $E7 ; 
con_se_cb_E8                            = $E8 ; 
con_se_cb_E9                            = $E9 ; 
con_se_cb_EA                            = $EA ; 
con_se_cb_EB                            = $EB ; 
con_se_cb_EC                            = $EC ; 
con_se_cb_ED                            = $ED ; 
; con_se_cb_EE                          = $EE ; 
; con_se_cb_EF                          = $EF ; 
con_se_cb_F0                            = $F0 ; 
con_se_cb_F1                            = $F1 ; 
con_se_cb_F2                            = $F2 ; 
con_se_cb_F3                            = $F3 ; 
con_se_cb_F4                            = $F4 ; 
; con_se_cb_F5                          = $F5 ; 
; con_se_cb_F6                          = $F6 ; 
; con_se_cb_F7                          = $F7 ; 
; con_se_cb_F8                          = $F8 ; 
; con_se_cb_F9                          = $F9 ; 
; con_se_cb_FA                          = $FA ; 
con_se_cb_FB                            = $FB ; 
con_se_cb_FC                            = $FC ; 
con_se_cb_FD                            = $FD ; 
con_se_cb_FE                            = $FE ; 
con_se_cb_FF                            = $FF ; 0x012AA1
