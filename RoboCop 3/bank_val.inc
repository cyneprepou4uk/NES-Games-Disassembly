; keep your global constant values inside this file

; todo найти очки и имя рекордов



; MISC
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; 



; ram_buttons
; ram_prev_buttons
; 0x01D352 0x01D44A
con_btn1_Right                          = $01 ; 
con_btn1_Left                           = $02 ; 
con_btn1_Down                           = $04 ; 
con_btn1_Up                             = $08 ; 
con_btn1_Start                          = $10 ; 
con_btn1_Select                         = $20 ; 
con_btn1_B                              = $40 ; 
con_btn1_A                              = $80 ; 

con_btns1_LR                            = con_btn1_Left + con_btn1_Right                                ; 03
con_btns1_Dpad                          = con_btn1_Right + con_btn1_Left + con_btn1_Down + con_btn1_Up  ; 0F



; ram_menu_buttons
; 0x01498C 0x014609 0x014688
con_btn2_Right                          = $80 ; 
con_btn2_Left                           = $40 ; 
con_btn2_Down                           = $20 ; 
con_btn2_Up                             = $10 ; 
con_btn2_Start                          = $08 ; 
con_btn2_Select                         = $04 ; 
con_btn2_B                              = $02 ; 
con_btn2_A                              = $01 ; 

con_btns2_LR                            = con_btn2_Left + con_btn2_Right                                ; 30
con_btns2_Dpad                          = con_btn2_Right + con_btn2_Left + con_btn2_Down + con_btn2_Up  ; F0



; for 0x01785C
; control bytes while printing text
con_B84C_condition                      = $F9 ; accept/reallocate repairs
con_B84C_exit                           = $FA ; end token
con_B84C_clear_buffer                   = $FB ; clear ppu buffer
con_B84C_scroll                         = $FC ; scroll up 1 line
con_B84C_FD                             = $FD ; ?
con_B84C_new_line                       = $FE ; new line



; ram_message
; text is at 0x01C99C
; need comments 0x01C2E8
con_msg_protect_the_innocent            = $00 ; PROTECT THE INNOCENT.
con_msg_uphold_the_law                  = $01 ; UPHOLD THE LAW.
; con_msg_come_and_get_it_scum          = $02 ; COME AND GET IT SCUM.
con_msg_serve_the_public_trust          = $03 ; SERVE THE PUBLIC TRUST.
con_msg_efficiency_increased            = $04 ; EFFICIENCY INCREASED.
con_msg_system_damage_alert             = $05 ; SYSTEMS DAMAGE ALERT.
con_msg_fire_power_upgraded             = $06 ; FIRE POWER UPGRADED.
con_msg_missiles_upgraded               = $07 ; MISSILES UPGRADED.
con_msg_repair_item_obtained            = $08 ; REPAIR ITEM OBTAINED.
con_msg_system_failure                  = $09 ; SYSTEM FAILURE.
con_msg_missile_jammed                  = $0A ; MISSILE JAMMED.
con_msg_passcode_accepted               = $0B ; PASSCODE ACCEPTED.
con_msg_otomo_destruct_initiated        = $0C ; OTOMO DESTRUCT INITIATED.
con_msg_smart_bomb_initiated            = $0D ; SMART BOMB INITIATED.
con_msg_smart_bomb_deployed             = $0E ; SMART BOMB DEPLOYED.
con_msg_warning_head_unit_damaged       = $0F ; WARNING HEAD UNIT DAMAGED.
con_msg_warning_body_unit_damaged       = $10 ; WARNING BODY UNIT DAMAGED.
con_msg_warning_arm_units_damaged       = $11 ; WARNING ARM UNITS DAMAGED.
con_msg_warning_leg_units_damaged       = $12 ; WARNING LEG UNITS DAMAGED.
con_msg_warning_jetpack_fuel_low        = $13 ; WARNING JETPACK FUEL LOW.
con_msg_maximum_fuel                    = $14 ; MAXIMUM FUEL.
con_msg_tank_weapons_disabled           = $15 ; TANK WEAPONS DISABLED.
con_msg_head_unit_mailfunction          = $16 ; HEAD UNIT MALFUNCTION.
con_msg_body_unit_mailfunction          = $17 ; BODY UNIT MALFUNCTION.
con_msg_arm_units_mailfunction          = $18 ; ARM UNITS MALFUNCTION.
con_msg_leg_units_mailfunction          = $19 ; LEG UNITS MALFUNCTION.
con_msg_out_of_time                     = $1A ; OUT OF TIME.



; ram_obj_id
; need comments 0x01DFF3
; see screenshots
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
; items
con_obj_id_21                           = $21 ; jetpack fuel
con_obj_id_22                           = $22 ; smart bomb?
con_obj_id_23                           = $23 ; repair item (blinking P)
con_obj_id_24                           = $24 ; замечено в 00C2
con_obj_id_25                           = $25 ; upgrade fire
con_obj_id_26                           = $26 ; health (white P)
con_obj_id_27                           = $27 ; upgrade missile



; ram_sound
con_sound_00                            = $00 ; 
con_sound_01                            = $01 ; 
con_sound_02                            = $02 ; 
con_sound_03                            = $03 ; 
con_sound_04                            = $04 ; 
con_sound_05                            = $05 ; 
con_sound_06                            = $06 ; 
con_sound_07                            = $07 ; 
con_sound_08                            = $08 ; 
con_sound_09                            = $09 ; 
con_sound_0A                            = $0A ; 
con_sound_0B                            = $0B ; 
con_sound_0C                            = $0C ; 
con_sound_0D                            = $0D ; 
con_sound_0E                            = $0E ; 
con_sound_0F                            = $0F ; 
con_sound_10                            = $10 ; 
con_sound_11                            = $11 ; 
; con_sound_12                          = $12 ; unused
con_sound_13                            = $13 ; 
con_sound_14                            = $14 ; 
con_sound_15                            = $15 ; 
con_sound_16                            = $16 ; 
con_sound_17                            = $17 ; 
con_sound_18                            = $18 ; 
con_sound_19                            = $19 ; 
con_sound_1A                            = $1A ; 
con_sound_1B                            = $1B ; 
con_sound_1C                            = $1C ; 
con_sound_1D                            = $1D ; 
con_sound_1E                            = $1E ; 
con_sound_1F                            = $1F ; 
con_sound_20                            = $20 ; 
con_sound_21                            = $21 ; 
con_sound_22                            = $22 ; ost mission 1
con_sound_23                            = $23 ; ost mission 2
con_sound_24                            = $24 ; ost mission 3
con_sound_25                            = $25 ; ost mission 4
con_sound_26                            = $26 ; ost mission 5
con_sound_FF                            = $FF ; if no sound needs to be player (default)



