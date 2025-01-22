.segment "BANK_01"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x008010-0x01000F

; !!! bzk don't move code up to 0x00803A



sub_8000_indirect_jump_0008:
C - - - - - 0x008010 02:8000: 6C 08 00  JMP (ram_prg_bank_pointer)

; 03
C - - J - - 0x008013 02:8003: 4C 83 80  JMP loc_8083

; 06
C - - J - - 0x008016 02:8006: 4C 4A 8D  JMP loc_8D4A

; 09
C - - J - - 0x008019 02:8009: 4C 42 8C  JMP loc_8C42

; 0C
C - - J - - 0x00801C 02:800C: 4C 2D 80  JMP loc_802D

; 0F
C - - J - - 0x00801F 02:800F: 4C 7E 96  JMP loc_967E

; 12
C - - J - - 0x008022 02:8012: 4C 45 88  JMP loc_8845

; 15
C - - J - - 0x008025 02:8015: 4C 34 97  JMP loc_9734

; 18
C - - J - - 0x008028 02:8018: 4C DB 98  JMP loc_98DB

; 1B
C - - J - - 0x00802B 02:801B: 4C AD A1  JMP loc_A1AD

; 1E
C - - J - - 0x00802E 02:801E: 4C 0A A2  JMP loc_A20A

; 21 unused, index doesn't exist
- - - - - - 0x008031 02:8021: 4C 2E 8E  JMP loc_8E2E

; 24 unused, index doesn't exist
- - - - - - 0x008034 02:8024: 4C B4 8E  JMP loc_8EB4_fuel_consumption

; 27
C - - J - - 0x008037 02:8027: 4C F5 A3  JMP loc_A3F5

; 2A
C - - J - - 0x00803A 02:802A: 4C 09 A4  JMP loc_A409



loc_802D:
; con_bsw_01_0C
C D 0 - - - 0x00803D 02:802D: A2 04     LDX #$04
C - - - - - 0x00803F 02:802F: A0 00     LDY #$00
bra_8031_loop:
C - - - - - 0x008041 02:8031: 84 21     STY ram_0021_temp
C - - - - - 0x008043 02:8033: B9 77 80  LDA tbl_8077_spr_X,Y
C - - - - - 0x008046 02:8036: 85 52     STA ram_0052_temp
C - - - - - 0x008048 02:8038: B9 7D 80  LDA tbl_807D_spr_Y,Y
C - - - - - 0x00804B 02:803B: 85 54     STA ram_0054
C - - - - - 0x00804D 02:803D: A5 21     LDA ram_0021_temp
C - - - - - 0x00804F 02:803F: 0A        ASL
C - - - - - 0x008050 02:8040: 65 21     ADC ram_0021_temp
C - - - - - 0x008052 02:8042: A8        TAY
C - - - - - 0x008053 02:8043: A9 03     LDA #$03
C - - - - - 0x008055 02:8045: 85 15     STA ram_0015_temp
bra_8047_loop:
C - - - - - 0x008057 02:8047: A5 54     LDA ram_0054
C - - - - - 0x008059 02:8049: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00805C 02:804C: B9 A0 07  LDA ram_ppu_buffer + $A0,Y
C - - - - - 0x00805F 02:804F: 18        CLC
C - - - - - 0x008060 02:8050: 69 D6     ADC #$D6
C - - - - - 0x008062 02:8052: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008065 02:8055: A9 01     LDA #$01
C - - - - - 0x008067 02:8057: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00806A 02:805A: A5 52     LDA ram_0052_temp
C - - - - - 0x00806C 02:805C: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00806F 02:805F: 18        CLC
C - - - - - 0x008070 02:8060: 69 05     ADC #$05
C - - - - - 0x008072 02:8062: 85 52     STA ram_0052_temp
C - - - - - 0x008074 02:8064: 8A        TXA
C - - - - - 0x008075 02:8065: 69 04     ADC #$04
C - - - - - 0x008077 02:8067: AA        TAX
C - - - - - 0x008078 02:8068: C8        INY
C - - - - - 0x008079 02:8069: C6 15     DEC ram_0015_temp
C - - - - - 0x00807B 02:806B: D0 DA     BNE bra_8047_loop
C - - - - - 0x00807D 02:806D: A4 21     LDY ram_0021_temp
C - - - - - 0x00807F 02:806F: C8        INY
C - - - - - 0x008080 02:8070: C0 06     CPY #$06
C - - - - - 0x008082 02:8072: D0 BD     BNE bra_8031_loop
C - - - - - 0x008084 02:8074: 4C F5 81  JMP loc_81F5



tbl_8077_spr_X:
- D 0 - - - 0x008087 02:8077: 70        .byte $70   ; 00 
- D 0 - - - 0x008088 02:8078: 50        .byte $50   ; 01 
- D 0 - - - 0x008089 02:8079: 90        .byte $90   ; 02 
- D 0 - - - 0x00808A 02:807A: 30        .byte $30   ; 03 
- D 0 - - - 0x00808B 02:807B: B0        .byte $B0   ; 04 
- D 0 - - - 0x00808C 02:807C: 84        .byte $84   ; 05 



tbl_807D_spr_Y:
- D 0 - - - 0x00808D 02:807D: B7        .byte $B7   ; 00 
- D 0 - - - 0x00808E 02:807E: C7        .byte $C7   ; 01 
- D 0 - - - 0x00808F 02:807F: C7        .byte $C7   ; 02 
- D 0 - - - 0x008090 02:8080: D7        .byte $D7   ; 03 
- D 0 - - - 0x008091 02:8081: D7        .byte $D7   ; 04 
- D 0 - - - 0x008092 02:8082: D0        .byte $D0   ; 05 



loc_8083:
; con_bsw_01_03
C D 0 - - - 0x008093 02:8083: A9 00     LDA #$00
C - - - - - 0x008095 02:8085: 85 F7     STA ram_00F7
C - - - - - 0x008097 02:8087: A2 04     LDX #$04
C - - - - - 0x008099 02:8089: AD B7 03  LDA ram_03B7_flag
C - - - - - 0x00809C 02:808C: F0 03     BEQ bra_8091
C - - - - - 0x00809E 02:808E: 4C F5 81  JMP loc_81F5
bra_8091:
C - - - - - 0x0080A1 02:8091: A2 0F     LDX #$0F
bra_8093_loop:
C - - - - - 0x0080A3 02:8093: BC 10 04  LDY ram_0410,X
C - - - - - 0x0080A6 02:8096: 84 15     STY ram_0015_temp
C - - - - - 0x0080A8 02:8098: B9 AA 04  LDA ram_04AA_car,Y
C - - - - - 0x0080AB 02:809B: BC 0F 04  LDY ram_040F,X
C - - - - - 0x0080AE 02:809E: D9 AA 04  CMP ram_04AA_car,Y
C - - - - - 0x0080B1 02:80A1: 90 0B     BCC bra_80AE
C - - - - - 0x0080B3 02:80A3: F0 09     BEQ bra_80AE
C - - - - - 0x0080B5 02:80A5: 98        TYA
C - - - - - 0x0080B6 02:80A6: 9D 10 04  STA ram_0410,X
C - - - - - 0x0080B9 02:80A9: A5 15     LDA ram_0015_temp
C - - - - - 0x0080BB 02:80AB: 9D 0F 04  STA ram_040F,X
bra_80AE:
C - - - - - 0x0080BE 02:80AE: CA        DEX
C - - - - - 0x0080BF 02:80AF: D0 E2     BNE bra_8093_loop
C - - - - - 0x0080C1 02:80B1: A2 04     LDX #$04
C - - - - - 0x0080C3 02:80B3: A4 DC     LDY ram_race
C - - - - - 0x0080C5 02:80B5: B9 C8 89  LDA tbl_89C8_spr_X_dude_with_a_flag,Y
C - - - - - 0x0080C8 02:80B8: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0080CB 02:80BB: B9 D1 89  LDA tbl_89D1_spr_Y_dude_with_a_flag,Y
C - - - - - 0x0080CE 02:80BE: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0080D1 02:80C1: A9 00     LDA #$00
C - - - - - 0x0080D3 02:80C3: C0 01     CPY #$01
C - - - - - 0x0080D5 02:80C5: D0 02     BNE bra_80C9
C - - - - - 0x0080D7 02:80C7: A9 40     LDA #$40
bra_80C9:
C - - - - - 0x0080D9 02:80C9: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0080DC 02:80CC: A4 5B     LDY ram_005B
C - - - - - 0x0080DE 02:80CE: B9 DA 89  LDA tbl_89DA_spr_T,Y
C - - - - - 0x0080E1 02:80D1: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0080E4 02:80D4: A2 08     LDX #$08
C - - - - - 0x0080E6 02:80D6: B9 DB 89  LDA tbl_89DA_spr_T + $01,Y
C - - - - - 0x0080E9 02:80D9: F0 19     BEQ bra_80F4
C - - - - - 0x0080EB 02:80DB: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0080EE 02:80DE: A9 00     LDA #$00
C - - - - - 0x0080F0 02:80E0: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0080F3 02:80E3: BD FF 01  LDA ram_01FF,X
C - - - - - 0x0080F6 02:80E6: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0080F9 02:80E9: BD FC 01  LDA ram_01FC,X
C - - - - - 0x0080FC 02:80EC: 38        SEC
C - - - - - 0x0080FD 02:80ED: E9 08     SBC #$08
C - - - - - 0x0080FF 02:80EF: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008102 02:80F2: A2 0C     LDX #$0C
bra_80F4:
C - - - - - 0x008104 02:80F4: A4 DC     LDY ram_race
C - - - - - 0x008106 02:80F6: B9 A3 89  LDA tbl_89A3_spr_Y,Y
C - - - - - 0x008109 02:80F9: 85 15     STA ram_0015_temp
C - - - - - 0x00810B 02:80FB: 18        CLC
C - - - - - 0x00810C 02:80FC: A5 5C     LDA ram_timer
C - - - - - 0x00810E 02:80FE: F0 1D     BEQ bra_811D
C - - - - - 0x008110 02:8100: 69 72     ADC #$72
C - - - - - 0x008112 02:8102: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008115 02:8105: A9 03     LDA #$03
C - - - - - 0x008117 02:8107: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00811A 02:810A: A5 15     LDA ram_0015_temp
C - - - - - 0x00811C 02:810C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00811F 02:810F: B9 7F 89  LDA tbl_897F_spr_X,Y
C - - - - - 0x008122 02:8112: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008125 02:8115: 8A        TXA
C - - - - - 0x008126 02:8116: 69 04     ADC #$04
C - - - - - 0x008128 02:8118: AA        TAX
C - - - - - 0x008129 02:8119: A5 5D     LDA ram_timer + $01
C - - - - - 0x00812B 02:811B: 10 04     BPL bra_8121
bra_811D:
C - - - - - 0x00812D 02:811D: A5 5D     LDA ram_timer + $01
C - - - - - 0x00812F 02:811F: F0 19     BEQ bra_813A
bra_8121:
C - - - - - 0x008131 02:8121: 69 72     ADC #$72
C - - - - - 0x008133 02:8123: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008136 02:8126: A9 03     LDA #$03
C - - - - - 0x008138 02:8128: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00813B 02:812B: A5 15     LDA ram_0015_temp
C - - - - - 0x00813D 02:812D: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008140 02:8130: B9 88 89  LDA tbl_8988_spr_X_timer_seconds___tens,Y
C - - - - - 0x008143 02:8133: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008146 02:8136: 8A        TXA
C - - - - - 0x008147 02:8137: 69 04     ADC #$04
C - - - - - 0x008149 02:8139: AA        TAX
bra_813A:
C - - - - - 0x00814A 02:813A: A5 5E     LDA ram_timer + $02
C - - - - - 0x00814C 02:813C: 69 72     ADC #$72
C - - - - - 0x00814E 02:813E: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008151 02:8141: A9 03     LDA #$03
C - - - - - 0x008153 02:8143: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x008156 02:8146: 9D 06 02  STA ram_spr_A + $04,X
C - - - - - 0x008159 02:8149: A5 15     LDA ram_0015_temp
C - - - - - 0x00815B 02:814B: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00815E 02:814E: 9D 04 02  STA ram_spr_Y + $04,X
C - - - - - 0x008161 02:8151: B9 91 89  LDA tbl_8991_spr_X_timer_seconds___ones,Y
C - - - - - 0x008164 02:8154: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008167 02:8157: B9 9A 89  LDA tbl_899A_spr_X_timer_miliseconds,Y
C - - - - - 0x00816A 02:815A: 9D 07 02  STA ram_spr_X + $04,X
C - - - - - 0x00816D 02:815D: A5 5F     LDA ram_timer + $03
C - - - - - 0x00816F 02:815F: 69 72     ADC #$72
C - - - - - 0x008171 02:8161: 9D 05 02  STA ram_spr_T + $04,X
C - - - - - 0x008174 02:8164: 8A        TXA
C - - - - - 0x008175 02:8165: 69 08     ADC #$08
C - - - - - 0x008177 02:8167: AA        TAX
C - - - - - 0x008178 02:8168: A4 DC     LDY ram_race
C - - - - - 0x00817A 02:816A: B9 AC 89  LDA tbl_89AC_spr_X_laps_default_pos,Y
C - - - - - 0x00817D 02:816D: 85 15     STA ram_0015_temp    ; default lap spr_X
C - - - - - 0x00817F 02:816F: B9 B5 89  LDA tbl_89B5_spr_Y_laps_default_pos,Y
C - - - - - 0x008182 02:8172: 85 16     STA ram_0016_temp    ; default lap spr_Y
C - - - - - 0x008184 02:8174: AD 97 06  LDA ram_0697
C - - - - - 0x008187 02:8177: F0 2E     BEQ bra_81A7
C - - - - - 0x008189 02:8179: C6 2E     DEC ram_frm_cnt
C - - - - - 0x00818B 02:817B: A9 FA     LDA #$FA
C - - - - - 0x00818D 02:817D: 85 17     STA ram_0017_temp
C - - - - - 0x00818F 02:817F: A0 04     LDY #$04
bra_8181_loop:
C - - - - - 0x008191 02:8181: A5 16     LDA ram_0016_temp    ; default lap spr_Y
C - - - - - 0x008193 02:8183: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008196 02:8186: A5 15     LDA ram_0015_temp    ; default lap spr_X
C - - - - - 0x008198 02:8188: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00819B 02:818B: A5 17     LDA ram_0017_temp
C - - - - - 0x00819D 02:818D: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0081A0 02:8190: A9 03     LDA #$03
C - - - - - 0x0081A2 02:8192: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0081A5 02:8195: E8        INX
C - - - - - 0x0081A6 02:8196: E8        INX
C - - - - - 0x0081A7 02:8197: E8        INX
C - - - - - 0x0081A8 02:8198: E8        INX
C - - - - - 0x0081A9 02:8199: 88        DEY
C - - - - - 0x0081AA 02:819A: 30 59     BMI bra_81F5
C - - - - - 0x0081AC 02:819C: E6 17     INC ram_0017_temp
C - - - - - 0x0081AE 02:819E: A5 16     LDA ram_0016_temp    ; default lap spr_Y
C - - - - - 0x0081B0 02:81A0: 18        CLC
C - - - - - 0x0081B1 02:81A1: 69 08     ADC #$08
C - - - - - 0x0081B3 02:81A3: 85 16     STA ram_0016_temp    ; default lap spr_Y
C - - - - - 0x0081B5 02:81A5: D0 DA     BNE bra_8181_loop
bra_81A7:
C - - - - - 0x0081B7 02:81A7: A0 00     LDY #$00
bra_81A9_loop:
C - - - - - 0x0081B9 02:81A9: 84 21     STY ram_0021_temp
C - - - - - 0x0081BB 02:81AB: B9 87 00  LDA ram_position,Y
C - - - - - 0x0081BE 02:81AE: A8        TAY
C - - - - - 0x0081BF 02:81AF: B9 87 05  LDA ram_0587_car_flags,Y
C - - - - - 0x0081C2 02:81B2: 29 02     AND #$02
C - - - - - 0x0081C4 02:81B4: F0 06     BEQ bra_81BC
; if car is going the wrong way
C - - - - - 0x0081C6 02:81B6: A5 2E     LDA ram_frm_cnt
C - - - - - 0x0081C8 02:81B8: 29 08     AND #$08
C - - - - - 0x0081CA 02:81BA: D0 2B     BNE bra_81E7_skip_displaying_plr_laps
bra_81BC:
C - - - - - 0x0081CC 02:81BC: B9 5A 05  LDA ram_plr_laps,Y
C - - - - - 0x0081CF 02:81BF: C5 61     CMP ram_laps
C - - - - - 0x0081D1 02:81C1: 90 08     BCC bra_81CB    ; if not final lap
C - - - - - 0x0081D3 02:81C3: D0 04     BNE bra_81C9    ; if more laps than needed (player has finished)
C - - - - - 0x0081D5 02:81C5: A9 0B     LDA #$0B    ; letter F (final lap)
C - - - - - 0x0081D7 02:81C7: D0 02     BNE bra_81CB    ; jmp
bra_81C9:
C - - - - - 0x0081D9 02:81C9: A9 0C     LDA #$0C    ; square tile tile
bra_81CB:
C - - - - - 0x0081DB 02:81CB: 18        CLC
C - - - - - 0x0081DC 02:81CC: 79 BE 89  ADC tbl_89BE_spr_T_laps,Y
C - - - - - 0x0081DF 02:81CF: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0081E2 02:81D2: B9 C3 89  LDA tbl_89C3_spr_A_laps,Y
C - - - - - 0x0081E5 02:81D5: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0081E8 02:81D8: A5 15     LDA ram_0015_temp    ; default lap spr_X
C - - - - - 0x0081EA 02:81DA: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0081ED 02:81DD: A5 16     LDA ram_0016_temp    ; default lap spr_Y
C - - - - - 0x0081EF 02:81DF: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0081F2 02:81E2: 8A        TXA
C - - - - - 0x0081F3 02:81E3: 18        CLC
C - - - - - 0x0081F4 02:81E4: 69 04     ADC #$04
C - - - - - 0x0081F6 02:81E6: AA        TAX
bra_81E7_skip_displaying_plr_laps:
C - - - - - 0x0081F7 02:81E7: A5 16     LDA ram_0016_temp    ; default lap spr_Y
C - - - - - 0x0081F9 02:81E9: 18        CLC
C - - - - - 0x0081FA 02:81EA: 69 08     ADC #$08
C - - - - - 0x0081FC 02:81EC: 85 16     STA ram_0016_temp    ; default lap spr_Y
C - - - - - 0x0081FE 02:81EE: A4 21     LDY ram_0021_temp
C - - - - - 0x008200 02:81F0: C8        INY
C - - - - - 0x008201 02:81F1: C0 05     CPY #$05
C - - - - - 0x008203 02:81F3: D0 B4     BNE bra_81A9_loop
bra_81F5:
loc_81F5:
C D 0 - - - 0x008205 02:81F5: A0 00     LDY #$00
bra_81F7_loop:
C - - - - - 0x008207 02:81F7: 84 21     STY ram_0021_temp
C - - - - - 0x008209 02:81F9: B9 10 04  LDA ram_0410,Y
C - - - - - 0x00820C 02:81FC: A8        TAY
C - - - - - 0x00820D 02:81FD: 84 59     STY ram_0059_car_index
; also
; ram_00D1_car
; ram_00D7
C - - - - - 0x00820F 02:81FF: B9 CC 00  LDA ram_script_handler,Y
C - - - - - 0x008212 02:8202: F0 2F     BEQ bra_8233
C - - - - - 0x008214 02:8204: B9 00 04  LDA ram_car_graphics,Y
C - - - - - 0x008217 02:8207: F0 2A     BEQ bra_8233
C - - - - - 0x008219 02:8209: AD B7 03  LDA ram_03B7_flag
C - - - - - 0x00821C 02:820C: D0 1B     BNE bra_8229
C - - - - - 0x00821E 02:820E: C0 0A     CPY #$0A
C - - - - - 0x008220 02:8210: B0 0A     BCS bra_821C
C - - - - - 0x008222 02:8212: C0 05     CPY #$05
C - - - - - 0x008224 02:8214: B0 2C     BCS bra_8242
C - - - - - 0x008226 02:8216: 20 A4 83  JSR sub_83A4
C - - - - - 0x008229 02:8219: 4C 33 82  JMP loc_8233
bra_821C:
C - - - - - 0x00822C 02:821C: B9 00 04  LDA ram_040B - $0B,Y
C - - - - - 0x00822F 02:821F: C9 32     CMP #$32
C - - - - - 0x008231 02:8221: 90 06     BCC bra_8229
C - - - - - 0x008233 02:8223: 20 33 83  JSR sub_8333
C - - - - - 0x008236 02:8226: 4C 33 82  JMP loc_8233
bra_8229:
C - - - - - 0x008239 02:8229: A9 00     LDA #$00
C - - - - - 0x00823B 02:822B: 85 15     STA ram_0015_temp
; also
; ram_0405
; ram_040B
C - - - - - 0x00823D 02:822D: B9 00 04  LDA ram_car_graphics,Y
C - - - - - 0x008240 02:8230: 20 D4 86  JSR sub_86D4
loc_8233:
bra_8233:
bra_8233_loop:
C D 0 - - - 0x008243 02:8233: A4 21     LDY ram_0021_temp
C - - - - - 0x008245 02:8235: C8        INY
C - - - - - 0x008246 02:8236: C0 0E     CPY #$0E
C - - - - - 0x008248 02:8238: D0 BD     BNE bra_81F7_loop
C - - - - - 0x00824A 02:823A: AD B7 03  LDA ram_03B7_flag
C - - - - - 0x00824D 02:823D: F0 5B     BEQ bra_829A
C - - - - - 0x00824F 02:823F: 4C 27 83  JMP loc_8327_hide_unused_sprites
bra_8242:
C - - - - - 0x008252 02:8242: B9 50 04  LDA ram_0455_car - $05,Y
C - - - - - 0x008255 02:8245: 85 52     STA ram_0052_temp
C - - - - - 0x008257 02:8247: B9 AA 04  LDA ram_04AF_car - $05,Y
C - - - - - 0x00825A 02:824A: 85 54     STA ram_0054
C - - - - - 0x00825C 02:824C: B9 20 04  LDA ram_0425_car - $05,Y
C - - - - - 0x00825F 02:824F: 85 13     STA ram_0013_t09_spr_A
C - - - - - 0x008261 02:8251: B9 00 04  LDA ram_0405 - $05,Y
C - - - - - 0x008264 02:8254: 0A        ASL
C - - - - - 0x008265 02:8255: A8        TAY
C - - - - - 0x008266 02:8256: B9 D4 8B  LDA tbl_8BD4_sprites_data,Y
C - - - - - 0x008269 02:8259: 85 11     STA ram_0011_t07_sprite_data
C - - - - - 0x00826B 02:825B: B9 D5 8B  LDA tbl_8BD4_sprites_data + $01,Y
C - - - - - 0x00826E 02:825E: 85 12     STA ram_0011_t07_sprite_data + $01
C - - - - - 0x008270 02:8260: A0 00     LDY #$00
C - - - - - 0x008272 02:8262: A5 52     LDA ram_0052_temp
C - - - - - 0x008274 02:8264: 38        SEC
C - - - - - 0x008275 02:8265: F1 11     SBC (ram_0011_t07_sprite_data),Y
C - - - - - 0x008277 02:8267: 85 52     STA ram_0052_temp
C - - - - - 0x008279 02:8269: C8        INY
C - - - - - 0x00827A 02:826A: A5 54     LDA ram_0054
C - - - - - 0x00827C 02:826C: 18        CLC
C - - - - - 0x00827D 02:826D: 71 11     ADC (ram_0011_t07_sprite_data),Y
C - - - - - 0x00827F 02:826F: 85 54     STA ram_0054
bra_8271_loop:
C - - - - - 0x008281 02:8271: C8        INY
C - - - - - 0x008282 02:8272: B1 11     LDA (ram_0011_t07_sprite_data),Y
C - - - - - 0x008284 02:8274: F0 BD     BEQ bra_8233_loop
C - - - - - 0x008286 02:8276: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008289 02:8279: C8        INY
C - - - - - 0x00828A 02:827A: A5 52     LDA ram_0052_temp
C - - - - - 0x00828C 02:827C: 18        CLC
C - - - - - 0x00828D 02:827D: 71 11     ADC (ram_0011_t07_sprite_data),Y
C - - - - - 0x00828F 02:827F: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008292 02:8282: C8        INY
C - - - - - 0x008293 02:8283: A5 54     LDA ram_0054
C - - - - - 0x008295 02:8285: 38        SEC
C - - - - - 0x008296 02:8286: F1 11     SBC (ram_0011_t07_sprite_data),Y
C - - - - - 0x008298 02:8288: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00829B 02:828B: C8        INY
C - - - - - 0x00829C 02:828C: B1 11     LDA (ram_0011_t07_sprite_data),Y
C - - - - - 0x00829E 02:828E: 05 13     ORA ram_0013_t09_spr_A
C - - - - - 0x0082A0 02:8290: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0082A3 02:8293: E8        INX
C - - - - - 0x0082A4 02:8294: E8        INX
C - - - - - 0x0082A5 02:8295: E8        INX
C - - - - - 0x0082A6 02:8296: E8        INX
C - - - - - 0x0082A7 02:8297: D0 D8     BNE bra_8271_loop
- - - - - - 0x0082A9 02:8299: 60        RTS
bra_829A:
C - - - - - 0x0082AA 02:829A: A0 00     LDY #$00
bra_829C_loop:
C - - - - - 0x0082AC 02:829C: B9 7D 05  LDA ram_057D_car,Y
C - - - - - 0x0082AF 02:829F: F0 52     BEQ bra_82F3
C - - - - - 0x0082B1 02:82A1: C9 03     CMP #$03
C - - - - - 0x0082B3 02:82A3: B0 29     BCS bra_82CE
C - - - - - 0x0082B5 02:82A5: A5 31     LDA ram_0031
C - - - - - 0x0082B7 02:82A7: D0 09     BNE bra_82B2
C - - - - - 0x0082B9 02:82A9: B9 82 05  LDA ram_0582_car,Y
C - - - - - 0x0082BC 02:82AC: 18        CLC
C - - - - - 0x0082BD 02:82AD: 69 01     ADC #$01
C - - - - - 0x0082BF 02:82AF: 99 82 05  STA ram_0582_car,Y
bra_82B2:
C - - - - - 0x0082C2 02:82B2: B9 82 05  LDA ram_0582_car,Y
C - - - - - 0x0082C5 02:82B5: C9 20     CMP #$20
C - - - - - 0x0082C7 02:82B7: 90 0E     BCC bra_82C7
C - - - - - 0x0082C9 02:82B9: B9 7D 05  LDA ram_057D_car,Y
C - - - - - 0x0082CC 02:82BC: C9 01     CMP #$01
C - - - - - 0x0082CE 02:82BE: D0 0E     BNE bra_82CE
- - - - - - 0x0082D0 02:82C0: A9 00     LDA #$00
- - - - - - 0x0082D2 02:82C2: 99 7D 05  STA ram_057D_car,Y
- - - - - - 0x0082D5 02:82C5: F0 2C     BEQ bra_82F3    ; jmp
bra_82C7:
C - - - - - 0x0082D7 02:82C7: 29 03     AND #$03
C - - - - - 0x0082D9 02:82C9: 18        CLC
C - - - - - 0x0082DA 02:82CA: 69 18     ADC #$18
C - - - - - 0x0082DC 02:82CC: D0 07     BNE bra_82D5    ; jmp?
bra_82CE:
C - - - - - 0x0082DE 02:82CE: A9 03     LDA #$03
C - - - - - 0x0082E0 02:82D0: 99 7D 05  STA ram_057D_car,Y
C - - - - - 0x0082E3 02:82D3: A9 1C     LDA #$1C
bra_82D5:
C - - - - - 0x0082E5 02:82D5: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0082E8 02:82D8: B9 F5 05  LDA ram_05F5_car,Y
C - - - - - 0x0082EB 02:82DB: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0082EE 02:82DE: B9 FA 05  LDA ram_05FA_car,Y
C - - - - - 0x0082F1 02:82E1: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0082F4 02:82E4: AD 09 06  LDA ram_0609
C - - - - - 0x0082F7 02:82E7: 4A        LSR
C - - - - - 0x0082F8 02:82E8: 09 03     ORA #$03
C - - - - - 0x0082FA 02:82EA: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0082FD 02:82ED: 8A        TXA
C - - - - - 0x0082FE 02:82EE: 69 04     ADC #$04
C - - - - - 0x008300 02:82F0: AA        TAX
C - - - - - 0x008301 02:82F1: F0 31     BEQ bra_8324
bra_82F3:
C - - - - - 0x008303 02:82F3: C8        INY
C - - - - - 0x008304 02:82F4: C0 05     CPY #$05
C - - - - - 0x008306 02:82F6: D0 A4     BNE bra_829C_loop
C - - - - - 0x008308 02:82F8: A0 03     LDY #$03
bra_82FA_loop:
C - - - - - 0x00830A 02:82FA: B9 C8 00  LDA ram_00C8,Y
C - - - - - 0x00830D 02:82FD: F0 22     BEQ bra_8321
C - - - - - 0x00830F 02:82FF: B9 AB 05  LDA ram_05AB,Y
C - - - - - 0x008312 02:8302: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008315 02:8305: B9 B3 05  LDA ram_05B3,Y
C - - - - - 0x008318 02:8308: 38        SEC
C - - - - - 0x008319 02:8309: F9 BB 05  SBC ram_05BB,Y
C - - - - - 0x00831C 02:830C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00831F 02:830F: B9 C7 05  LDA ram_05C7,Y
C - - - - - 0x008322 02:8312: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008325 02:8315: B9 CB 05  LDA ram_05CB,Y
C - - - - - 0x008328 02:8318: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00832B 02:831B: E8        INX
C - - - - - 0x00832C 02:831C: E8        INX
C - - - - - 0x00832D 02:831D: E8        INX
C - - - - - 0x00832E 02:831E: E8        INX
C - - - - - 0x00832F 02:831F: F0 03     BEQ bra_8324
bra_8321:
C - - - - - 0x008331 02:8321: 88        DEY
C - - - - - 0x008332 02:8322: 10 D6     BPL bra_82FA_loop
bra_8324:
C - - - - - 0x008334 02:8324: 86 F7     STX ram_00F7
C - - - - - 0x008336 02:8326: 60        RTS



loc_8327_hide_unused_sprites:
C D 0 - - - 0x008337 02:8327: A9 F8     LDA #$F8
bra_8329_loop:
C - - - - - 0x008339 02:8329: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00833C 02:832C: E8        INX
C - - - - - 0x00833D 02:832D: E8        INX
C - - - - - 0x00833E 02:832E: E8        INX
C - - - - - 0x00833F 02:832F: E8        INX
C - - - - - 0x008340 02:8330: D0 F7     BNE bra_8329_loop
C - - - - - 0x008342 02:8332: 60        RTS



sub_8333:
C - - - - - 0x008343 02:8333: 0A        ASL
C - - - - - 0x008344 02:8334: A8        TAY
C - - - - - 0x008345 02:8335: B9 D4 8B  LDA tbl_8BD4_sprites_data,Y
C - - - - - 0x008348 02:8338: 85 11     STA ram_0011_t08_sprite_data
C - - - - - 0x00834A 02:833A: B9 D5 8B  LDA tbl_8BD4_sprites_data + $01,Y
C - - - - - 0x00834D 02:833D: 85 12     STA ram_0011_t08_sprite_data + $01
C - - - - - 0x00834F 02:833F: A4 59     LDY ram_0059_car_index
C - - - - - 0x008351 02:8341: B9 50 04  LDA ram_045B - $0B,Y
C - - - - - 0x008354 02:8344: 85 52     STA ram_0052_temp
C - - - - - 0x008356 02:8346: B9 AA 04  LDA ram_04B5 - $0B,Y
C - - - - - 0x008359 02:8349: 85 54     STA ram_0054
C - - - - - 0x00835B 02:834B: B9 20 04  LDA ram_042B - $0B,Y
C - - - - - 0x00835E 02:834E: 85 15     STA ram_0015_temp
C - - - - - 0x008360 02:8350: A0 04     LDY #$04
C - - - - - 0x008362 02:8352: B1 11     LDA (ram_0011_t08_sprite_data),Y
C - - - - - 0x008364 02:8354: F0 4D     BEQ bra_83A3_RTS
C - - - - - 0x008366 02:8356: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008369 02:8359: C8        INY ; 05
C - - - - - 0x00836A 02:835A: B1 11     LDA (ram_0011_t08_sprite_data),Y
C - - - - - 0x00836C 02:835C: C8        INY ; 06
C - - - - - 0x00836D 02:835D: 18        CLC
C - - - - - 0x00836E 02:835E: 65 52     ADC ram_0052_temp
C - - - - - 0x008370 02:8360: B0 18     BCS bra_837A
C - - - - - 0x008372 02:8362: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008375 02:8365: A5 54     LDA ram_0054
C - - - - - 0x008377 02:8367: 38        SEC
C - - - - - 0x008378 02:8368: F1 11     SBC (ram_0011_t08_sprite_data),Y
C - - - - - 0x00837A 02:836A: 90 0E     BCC bra_837A
C - - - - - 0x00837C 02:836C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00837F 02:836F: A5 15     LDA ram_0015_temp
C - - - - - 0x008381 02:8371: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x008384 02:8374: 8A        TXA
C - - - - - 0x008385 02:8375: 69 03     ADC #$03
C - - - - - 0x008387 02:8377: AA        TAX
C - - - - - 0x008388 02:8378: F0 27     BEQ bra_83A1
bra_837A:
C - - - - - 0x00838A 02:837A: C8        INY ; 05/07
C - - - - - 0x00838B 02:837B: B1 11     LDA (ram_0011_t08_sprite_data),Y
C - - - - - 0x00838D 02:837D: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008390 02:8380: C8        INY ; 06/08
C - - - - - 0x008391 02:8381: B1 11     LDA (ram_0011_t08_sprite_data),Y
C - - - - - 0x008393 02:8383: C8        INY ; 07/09
C - - - - - 0x008394 02:8384: 18        CLC
C - - - - - 0x008395 02:8385: 65 52     ADC ram_0052_temp
C - - - - - 0x008397 02:8387: B0 1A     BCS bra_83A3_RTS
C - - - - - 0x008399 02:8389: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00839C 02:838C: A5 54     LDA ram_0054
C - - - - - 0x00839E 02:838E: 38        SEC
C - - - - - 0x00839F 02:838F: F1 11     SBC (ram_0011_t08_sprite_data),Y
C - - - - - 0x0083A1 02:8391: 90 10     BCC bra_83A3_RTS
C - - - - - 0x0083A3 02:8393: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0083A6 02:8396: A5 15     LDA ram_0015_temp
C - - - - - 0x0083A8 02:8398: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0083AB 02:839B: 8A        TXA
C - - - - - 0x0083AC 02:839C: 69 03     ADC #$03
C - - - - - 0x0083AE 02:839E: AA        TAX
C - - - - - 0x0083AF 02:839F: D0 02     BNE bra_83A3_RTS
bra_83A1:
- - - - - - 0x0083B1 02:83A1: 68        PLA
- - - - - - 0x0083B2 02:83A2: 68        PLA
bra_83A3_RTS:
C - - - - - 0x0083B3 02:83A3: 60        RTS



sub_83A4:
C - - - - - 0x0083B4 02:83A4: B9 6E 89  LDA tbl_896E_spr_T,Y
C - - - - - 0x0083B7 02:83A7: 85 57     STA ram_0057_t01_spr_T
C - - - - - 0x0083B9 02:83A9: B9 00 04  LDA ram_car_graphics,Y
C - - - - - 0x0083BC 02:83AC: 38        SEC
C - - - - - 0x0083BD 02:83AD: E9 01     SBC #$01
C - - - - - 0x0083BF 02:83AF: 85 15     STA ram_0015_temp
C - - - - - 0x0083C1 02:83B1: 0A        ASL
C - - - - - 0x0083C2 02:83B2: A8        TAY
C - - - - - 0x0083C3 02:83B3: B9 96 8B  LDA tbl_8B96,Y
C - - - - - 0x0083C6 02:83B6: 85 11     STA ram_0011_t10_data
C - - - - - 0x0083C8 02:83B8: B9 97 8B  LDA tbl_8B96 + $01,Y
C - - - - - 0x0083CB 02:83BB: 85 12     STA ram_0011_t10_data + $01
C - - - - - 0x0083CD 02:83BD: B9 AE 88  LDA tbl_88AE,Y
C - - - - - 0x0083D0 02:83C0: 85 67     STA ram_0067
C - - - - - 0x0083D2 02:83C2: B9 AF 88  LDA tbl_88AE + $01,Y
C - - - - - 0x0083D5 02:83C5: 85 68     STA ram_0068
C - - - - - 0x0083D7 02:83C7: B9 EE 88  LDA tbl_88EE,Y
C - - - - - 0x0083DA 02:83CA: 85 69     STA ram_0069
C - - - - - 0x0083DC 02:83CC: B9 EF 88  LDA tbl_88EE + $01,Y
C - - - - - 0x0083DF 02:83CF: 85 6A     STA ram_006A
C - - - - - 0x0083E1 02:83D1: B9 2E 89  LDA tbl_892E,Y
C - - - - - 0x0083E4 02:83D4: 85 6B     STA ram_006B
C - - - - - 0x0083E6 02:83D6: B9 2F 89  LDA tbl_892E + $01,Y
C - - - - - 0x0083E9 02:83D9: 85 6C     STA ram_006C
C - - - - - 0x0083EB 02:83DB: A4 59     LDY ram_0059_car_index
C - - - - - 0x0083ED 02:83DD: B9 78 05  LDA ram_0578_car,Y
C - - - - - 0x0083F0 02:83E0: 85 1D     STA ram_001D_temp
C - - - - - 0x0083F2 02:83E2: F0 19     BEQ bra_83FD
C - - - - - 0x0083F4 02:83E4: B9 87 05  LDA ram_0587_car_flags,Y
C - - - - - 0x0083F7 02:83E7: 29 01     AND #$01
C - - - - - 0x0083F9 02:83E9: A8        TAY
C - - - - - 0x0083FA 02:83EA: B9 FA 89  LDA tbl_89FA_sprite_data_lo,Y
C - - - - - 0x0083FD 02:83ED: 85 65     STA ram_0065_t01_sprite_data
C - - - - - 0x0083FF 02:83EF: B9 FC 89  LDA tbl_89FC_sprite_data_hi,Y
C - - - - - 0x008402 02:83F2: 85 66     STA ram_0065_t01_sprite_data + $01
C - - - - - 0x008404 02:83F4: A4 59     LDY ram_0059_car_index
C - - - - - 0x008406 02:83F6: A9 00     LDA #$00
C - - - - - 0x008408 02:83F8: 20 9C 85  JSR sub_859C
C - - - - - 0x00840B 02:83FB: A4 59     LDY ram_0059_car_index
bra_83FD:
C - - - - - 0x00840D 02:83FD: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x008410 02:8400: 85 53     STA ram_0053
C - - - - - 0x008412 02:8402: B9 70 04  LDA ram_pos_Y_hi,Y
C - - - - - 0x008415 02:8405: 38        SEC
C - - - - - 0x008416 02:8406: F9 90 04  SBC ram_0490_car,Y
C - - - - - 0x008419 02:8409: 85 55     STA ram_0055
C - - - - - 0x00841B 02:840B: B9 20 04  LDA ram_car_spr_A,Y
C - - - - - 0x00841E 02:840E: 29 23     AND #$23
C - - - - - 0x008420 02:8410: 85 5A     STA ram_005A_spr_A
C - - - - - 0x008422 02:8412: A0 00     LDY #$00
C - - - - - 0x008424 02:8414: A5 53     LDA ram_0053
C - - - - - 0x008426 02:8416: 38        SEC
C - - - - - 0x008427 02:8417: F1 11     SBC (ram_0011_t10_data),Y
C - - - - - 0x008429 02:8419: 85 52     STA ram_0052_temp
C - - - - - 0x00842B 02:841B: 08        PHP
C - - - - - 0x00842C 02:841C: 68        PLA
C - - - - - 0x00842D 02:841D: 29 01     AND #$01
C - - - - - 0x00842F 02:841F: 85 1E     STA ram_001E_temp
C - - - - - 0x008431 02:8421: C8        INY
C - - - - - 0x008432 02:8422: B1 11     LDA (ram_0011_t10_data),Y
C - - - - - 0x008434 02:8424: 18        CLC
C - - - - - 0x008435 02:8425: 65 55     ADC ram_0055
C - - - - - 0x008437 02:8427: 85 54     STA ram_0054
C - - - - - 0x008439 02:8429: A4 59     LDY ram_0059_car_index
C - - - - - 0x00843B 02:842B: B9 29 05  LDA ram_fuel_hi,Y
C - - - - - 0x00843E 02:842E: F0 03     BEQ bra_8433
bra_8430:
C - - - - - 0x008440 02:8430: 4C CD 84  JMP loc_84CD
bra_8433:
C - - - - - 0x008443 02:8433: A5 6B     LDA ram_006B
C - - - - - 0x008445 02:8435: 30 07     BMI bra_843E
C - - - - - 0x008447 02:8437: 18        CLC
C - - - - - 0x008448 02:8438: 65 53     ADC ram_0053
C - - - - - 0x00844A 02:843A: 90 07     BCC bra_8443
- - - - - - 0x00844C 02:843C: B0 F2     BCS bra_8430    ; jmp
bra_843E:
C - - - - - 0x00844E 02:843E: 18        CLC
C - - - - - 0x00844F 02:843F: 65 53     ADC ram_0053
C - - - - - 0x008451 02:8441: 90 ED     BCC bra_8430
bra_8443:
C - - - - - 0x008453 02:8443: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008456 02:8446: A5 6C     LDA ram_006C
C - - - - - 0x008458 02:8448: 18        CLC
C - - - - - 0x008459 02:8449: 65 55     ADC ram_0055
C - - - - - 0x00845B 02:844B: 69 04     ADC #$04
C - - - - - 0x00845D 02:844D: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008460 02:8450: A5 34     LDA ram_0034
C - - - - - 0x008462 02:8452: 29 03     AND #$03
C - - - - - 0x008464 02:8454: A8        TAY
C - - - - - 0x008465 02:8455: B9 7B 89  LDA tbl_897B_spr_T,Y
C - - - - - 0x008468 02:8458: F0 71     BEQ bra_84CB
C - - - - - 0x00846A 02:845A: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00846D 02:845D: A5 FB     LDA ram_00FB
C - - - - - 0x00846F 02:845F: F0 25     BEQ bra_8486
C - - - - - 0x008471 02:8461: BC 03 02  LDY ram_spr_X,X
C - - - - - 0x008474 02:8464: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x008477 02:8467: 38        SEC
C - - - - - 0x008478 02:8468: E9 07     SBC #$07
C - - - - - 0x00847A 02:846A: 4A        LSR
C - - - - - 0x00847B 02:846B: 48        PHA
C - - - - - 0x00847C 02:846C: 29 60     AND #$60
C - - - - - 0x00847E 02:846E: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x008481 02:8471: A8        TAY
C - - - - - 0x008482 02:8472: B9 A0 FA  LDA tbl_FAA0,Y
C - - - - - 0x008485 02:8475: 85 15     STA ram_0015_temp
C - - - - - 0x008487 02:8477: 68        PLA
C - - - - - 0x008488 02:8478: 4A        LSR
C - - - - - 0x008489 02:8479: 4A        LSR
C - - - - - 0x00848A 02:847A: 29 07     AND #$07
C - - - - - 0x00848C 02:847C: A8        TAY
C - - - - - 0x00848D 02:847D: A5 15     LDA ram_0015_temp
C - - - - - 0x00848F 02:847F: 39 73 89  AND tbl_8973,Y
C - - - - - 0x008492 02:8482: F0 38     BEQ bra_84BC
C - - - - - 0x008494 02:8484: D0 34     BNE bra_84BA    ; jmp
bra_8486:
C - - - - - 0x008496 02:8486: BC 03 02  LDY ram_spr_X,X
C - - - - - 0x008499 02:8489: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x00849C 02:848C: 69 04     ADC #$04
C - - - - - 0x00849E 02:848E: 0A        ASL
C - - - - - 0x00849F 02:848F: B0 1B     BCS bra_84AC
C - - - - - 0x0084A1 02:8491: 0A        ASL
C - - - - - 0x0084A2 02:8492: 29 E0     AND #$E0
C - - - - - 0x0084A4 02:8494: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x0084A7 02:8497: A8        TAY
C - - - - - 0x0084A8 02:8498: B0 09     BCS bra_84A3
C - - - - - 0x0084AA 02:849A: B9 00 FC  LDA tbl_FC00,Y
C - - - - - 0x0084AD 02:849D: 25 35     AND ram_0035_bit
C - - - - - 0x0084AF 02:849F: D0 19     BNE bra_84BA    ; jmp
C - - - - - 0x0084B1 02:84A1: F0 19     BEQ bra_84BC
bra_84A3:
C - - - - - 0x0084B3 02:84A3: B9 00 FD  LDA tbl_FD00,Y
C - - - - - 0x0084B6 02:84A6: 25 35     AND ram_0035_bit
C - - - - - 0x0084B8 02:84A8: D0 10     BNE bra_84BA
C - - - - - 0x0084BA 02:84AA: F0 10     BEQ bra_84BC    ; jmp
bra_84AC:
C - - - - - 0x0084BC 02:84AC: 0A        ASL
C - - - - - 0x0084BD 02:84AD: 29 E0     AND #$E0
C - - - - - 0x0084BF 02:84AF: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x0084C2 02:84B2: A8        TAY
C - - - - - 0x0084C3 02:84B3: B9 00 FE  LDA tbl_FE00,Y
C - - - - - 0x0084C6 02:84B6: 25 35     AND ram_0035_bit
C - - - - - 0x0084C8 02:84B8: F0 02     BEQ bra_84BC
bra_84BA:
C - - - - - 0x0084CA 02:84BA: A9 20     LDA #$20
bra_84BC:
C - - - - - 0x0084CC 02:84BC: 09 03     ORA #$03
C - - - - - 0x0084CE 02:84BE: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0084D1 02:84C1: 8A        TXA
C - - - - - 0x0084D2 02:84C2: 18        CLC
C - - - - - 0x0084D3 02:84C3: 69 04     ADC #$04
C - - - - - 0x0084D5 02:84C5: D0 03     BNE bra_84CA
- - - - - - 0x0084D7 02:84C7: 4C 74 85  JMP loc_8574
bra_84CA:
C - - - - - 0x0084DA 02:84CA: AA        TAX
bra_84CB:
C - - - - - 0x0084DB 02:84CB: A4 59     LDY ram_0059_car_index
loc_84CD:
C D 0 - - - 0x0084DD 02:84CD: B9 50 05  LDA ram_fire_type,Y
C - - - - - 0x0084E0 02:84D0: F0 21     BEQ bra_84F3
C - - - - - 0x0084E2 02:84D2: C9 01     CMP #$01
C - - - - - 0x0084E4 02:84D4: F0 0D     BEQ bra_84E3_hood_on_fire
C - - - - - 0x0084E6 02:84D6: C9 02     CMP #$02
C - - - - - 0x0084E8 02:84D8: F0 12     BEQ bra_84EC_trunk_on_fire
; if both hood and trunk on fire
C - - - - - 0x0084EA 02:84DA: A4 69     LDY ram_0069
C - - - - - 0x0084EC 02:84DC: A5 67     LDA ram_0067
C - - - - - 0x0084EE 02:84DE: 20 40 86  JSR sub_8640_on_fire
C - - - - - 0x0084F1 02:84E1: D0 09     BNE bra_84EC
bra_84E3_hood_on_fire:
C - - - - - 0x0084F3 02:84E3: A4 69     LDY ram_0069
C - - - - - 0x0084F5 02:84E5: A5 67     LDA ram_0067
C - - - - - 0x0084F7 02:84E7: 20 40 86  JSR sub_8640_on_fire
C - - - - - 0x0084FA 02:84EA: D0 07     BNE bra_84F3
bra_84EC_trunk_on_fire:
bra_84EC:
C - - - - - 0x0084FC 02:84EC: A4 6A     LDY ram_006A
C - - - - - 0x0084FE 02:84EE: A5 68     LDA ram_0068
C - - - - - 0x008500 02:84F0: 20 40 86  JSR sub_8640_on_fire
bra_84F3:
C - - - - - 0x008503 02:84F3: A0 02     LDY #$02
C - - - - - 0x008505 02:84F5: 18        CLC
bra_84F6_loop:
C - - - - - 0x008506 02:84F6: B1 11     LDA (ram_0011_t10_data),Y
C - - - - - 0x008508 02:84F8: 65 52     ADC ram_0052_temp
C - - - - - 0x00850A 02:84FA: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00850D 02:84FD: 2A        ROL
C - - - - - 0x00850E 02:84FE: 29 01     AND #$01
C - - - - - 0x008510 02:8500: C5 1E     CMP ram_001E_temp
C - - - - - 0x008512 02:8502: F0 6D     BEQ bra_8571
C - - - - - 0x008514 02:8504: C8        INY
C - - - - - 0x008515 02:8505: A5 54     LDA ram_0054
C - - - - - 0x008517 02:8507: 38        SEC
C - - - - - 0x008518 02:8508: F1 11     SBC (ram_0011_t10_data),Y
C - - - - - 0x00851A 02:850A: 90 52     BCC bra_855E
C - - - - - 0x00851C 02:850C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00851F 02:850F: A5 57     LDA ram_0057_t01_spr_T
C - - - - - 0x008521 02:8511: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008524 02:8514: 84 16     STY ram_0016_temp
C - - - - - 0x008526 02:8516: A5 FB     LDA ram_00FB
C - - - - - 0x008528 02:8518: D0 5D     BNE bra_8577
C - - - - - 0x00852A 02:851A: BC 03 02  LDY ram_spr_X,X
C - - - - - 0x00852D 02:851D: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x008530 02:8520: 69 03     ADC #$03
C - - - - - 0x008532 02:8522: 0A        ASL
C - - - - - 0x008533 02:8523: B0 1B     BCS bra_8540
C - - - - - 0x008535 02:8525: 0A        ASL
C - - - - - 0x008536 02:8526: 29 E0     AND #$E0
C - - - - - 0x008538 02:8528: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x00853B 02:852B: A8        TAY
C - - - - - 0x00853C 02:852C: B0 09     BCS bra_8537
C - - - - - 0x00853E 02:852E: B9 00 FC  LDA tbl_FC00,Y
C - - - - - 0x008541 02:8531: 25 35     AND ram_0035_bit
C - - - - - 0x008543 02:8533: D0 19     BNE bra_854E
C - - - - - 0x008545 02:8535: F0 19     BEQ bra_8550    ; jmp
bra_8537:
C - - - - - 0x008547 02:8537: B9 00 FD  LDA tbl_FD00,Y
C - - - - - 0x00854A 02:853A: 25 35     AND ram_0035_bit
C - - - - - 0x00854C 02:853C: D0 10     BNE bra_854E
C - - - - - 0x00854E 02:853E: F0 10     BEQ bra_8550    ; jmp
bra_8540:
C - - - - - 0x008550 02:8540: 0A        ASL
C - - - - - 0x008551 02:8541: 29 E0     AND #$E0
C - - - - - 0x008553 02:8543: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x008556 02:8546: A8        TAY
C - - - - - 0x008557 02:8547: B9 00 FE  LDA tbl_FE00,Y
C - - - - - 0x00855A 02:854A: 25 35     AND ram_0035_bit
C - - - - - 0x00855C 02:854C: F0 02     BEQ bra_8550
bra_854E:
C - - - - - 0x00855E 02:854E: A9 20     LDA #$20
bra_8550:
C - - - - - 0x008560 02:8550: 05 5A     ORA ram_005A_spr_A
C - - - - - 0x008562 02:8552: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x008565 02:8555: 8A        TXA
C - - - - - 0x008566 02:8556: 18        CLC
C - - - - - 0x008567 02:8557: 69 04     ADC #$04
C - - - - - 0x008569 02:8559: F0 19     BEQ bra_8574
C - - - - - 0x00856B 02:855B: AA        TAX
C - - - - - 0x00856C 02:855C: A4 16     LDY ram_0016_temp
bra_855E:
C - - - - - 0x00856E 02:855E: E6 57     INC ram_0057_t01_spr_T
C - - - - - 0x008570 02:8560: C8        INY
C - - - - - 0x008571 02:8561: C0 06     CPY #$06
C - - - - - 0x008573 02:8563: 90 91     BCC bra_84F6_loop
C - - - - - 0x008575 02:8565: A5 1D     LDA ram_001D_temp
C - - - - - 0x008577 02:8567: F0 07     BEQ bra_8570_RTS
C - - - - - 0x008579 02:8569: A4 62     LDY ram_0062_save_Y
C - - - - - 0x00857B 02:856B: A9 20     LDA #$20
C - - - - - 0x00857D 02:856D: 20 9C 85  JSR sub_859C
bra_8570_RTS:
C - - - - - 0x008580 02:8570: 60        RTS
bra_8571:
C - - - - - 0x008581 02:8571: C8        INY
C - - - - - 0x008582 02:8572: D0 EA     BNE bra_855E
bra_8574:
loc_8574:
- - - - - - 0x008584 02:8574: 68        PLA
- - - - - - 0x008585 02:8575: 68        PLA
- - - - - - 0x008586 02:8576: 60        RTS
bra_8577:
C - - - - - 0x008587 02:8577: BC 03 02  LDY ram_spr_X,X
C - - - - - 0x00858A 02:857A: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x00858D 02:857D: 38        SEC
C - - - - - 0x00858E 02:857E: E9 07     SBC #$07
C - - - - - 0x008590 02:8580: 4A        LSR
C - - - - - 0x008591 02:8581: 48        PHA
C - - - - - 0x008592 02:8582: 29 60     AND #$60
C - - - - - 0x008594 02:8584: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x008597 02:8587: A8        TAY
C - - - - - 0x008598 02:8588: B9 A0 FA  LDA tbl_FAA0,Y
C - - - - - 0x00859B 02:858B: 85 15     STA ram_0015_temp
C - - - - - 0x00859D 02:858D: 68        PLA
C - - - - - 0x00859E 02:858E: 4A        LSR
C - - - - - 0x00859F 02:858F: 4A        LSR
C - - - - - 0x0085A0 02:8590: 29 07     AND #$07
C - - - - - 0x0085A2 02:8592: A8        TAY
C - - - - - 0x0085A3 02:8593: A5 15     LDA ram_0015_temp
C - - - - - 0x0085A5 02:8595: 39 73 89  AND tbl_8973,Y
C - - - - - 0x0085A8 02:8598: D0 B4     BNE bra_854E
C - - - - - 0x0085AA 02:859A: F0 B4     BEQ bra_8550    ; jmp



sub_859C:
C - - - - - 0x0085AC 02:859C: 85 1C     STA ram_001C_temp
C - - - - - 0x0085AE 02:859E: D0 22     BNE bra_85C2
C - - - - - 0x0085B0 02:85A0: A9 03     LDA #$03
C - - - - - 0x0085B2 02:85A2: 85 1D     STA ram_001D_temp
C - - - - - 0x0085B4 02:85A4: B9 FF 05  LDA ram_05FF_car,Y
C - - - - - 0x0085B7 02:85A7: 85 63     STA ram_0063
C - - - - - 0x0085B9 02:85A9: B9 04 06  LDA ram_0604_car,Y
C - - - - - 0x0085BC 02:85AC: 85 64     STA ram_0064
C - - - - - 0x0085BE 02:85AE: B9 87 05  LDA ram_0587_car_flags,Y
C - - - - - 0x0085C1 02:85B1: 29 01     AND #$01
C - - - - - 0x0085C3 02:85B3: 4A        LSR
C - - - - - 0x0085C4 02:85B4: 6A        ROR
C - - - - - 0x0085C5 02:85B5: 85 18     STA ram_0018_temp
C - - - - - 0x0085C7 02:85B7: B9 78 05  LDA ram_0578_car,Y
; * 0C
C - - - - - 0x0085CA 02:85BA: 0A        ASL
C - - - - - 0x0085CB 02:85BB: 0A        ASL
C - - - - - 0x0085CC 02:85BC: 85 17     STA ram_0017_temp
C - - - - - 0x0085CE 02:85BE: 0A        ASL
C - - - - - 0x0085CF 02:85BF: 65 17     ADC ram_0017_temp
C - - - - - 0x0085D1 02:85C1: A8        TAY
bra_85C2:
C - - - - - 0x0085D2 02:85C2: AD 09 06  LDA ram_0609
C - - - - - 0x0085D5 02:85C5: C5 18     CMP ram_0018_temp
C - - - - - 0x0085D7 02:85C7: D0 3D     BNE bra_8606
bra_85C9_loop:
C - - - - - 0x0085D9 02:85C9: B1 65     LDA (ram_0065_t01_sprite_data),Y
C - - - - - 0x0085DB 02:85CB: 29 20     AND #$20
C - - - - - 0x0085DD 02:85CD: C5 1C     CMP ram_001C_temp
C - - - - - 0x0085DF 02:85CF: F0 03     BEQ bra_85D4
C - - - - - 0x0085E1 02:85D1: 84 62     STY ram_0062_save_Y
C - - - - - 0x0085E3 02:85D3: 60        RTS
bra_85D4:
C - - - - - 0x0085E4 02:85D4: B1 65     LDA (ram_0065_t01_sprite_data),Y
C - - - - - 0x0085E6 02:85D6: 29 40     AND #$40
C - - - - - 0x0085E8 02:85D8: 09 03     ORA #$03
C - - - - - 0x0085EA 02:85DA: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0085ED 02:85DD: C8        INY
C - - - - - 0x0085EE 02:85DE: B1 65     LDA (ram_0065_t01_sprite_data),Y
C - - - - - 0x0085F0 02:85E0: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0085F3 02:85E3: C8        INY
C - - - - - 0x0085F4 02:85E4: A5 63     LDA ram_0063
C - - - - - 0x0085F6 02:85E6: 18        CLC
C - - - - - 0x0085F7 02:85E7: 71 65     ADC (ram_0065_t01_sprite_data),Y
C - - - - - 0x0085F9 02:85E9: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0085FC 02:85EC: C8        INY
C - - - - - 0x0085FD 02:85ED: A5 64     LDA ram_0064
C - - - - - 0x0085FF 02:85EF: 38        SEC
C - - - - - 0x008600 02:85F0: F1 65     SBC (ram_0065_t01_sprite_data),Y
C - - - - - 0x008602 02:85F2: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008605 02:85F5: C8        INY
C - - - - - 0x008606 02:85F6: 8A        TXA
C - - - - - 0x008607 02:85F7: 69 03     ADC #$03
C - - - - - 0x008609 02:85F9: AA        TAX
C - - - - - 0x00860A 02:85FA: F0 05     BEQ bra_8601
C - - - - - 0x00860C 02:85FC: C6 1D     DEC ram_001D_temp
C - - - - - 0x00860E 02:85FE: D0 C9     BNE bra_85C9_loop
C - - - - - 0x008610 02:8600: 60        RTS
bra_8601:
- - - - - - 0x008611 02:8601: 68        PLA
- - - - - - 0x008612 02:8602: 68        PLA
- - - - - - 0x008613 02:8603: 68        PLA
- - - - - - 0x008614 02:8604: 68        PLA
- - - - - - 0x008615 02:8605: 60        RTS
bra_8606:
bra_8606_loop:
C - - - - - 0x008616 02:8606: B1 65     LDA (ram_0065_t01_sprite_data),Y
C - - - - - 0x008618 02:8608: 29 20     AND #$20
C - - - - - 0x00861A 02:860A: C5 1C     CMP ram_001C_temp
C - - - - - 0x00861C 02:860C: F0 03     BEQ bra_8611
C - - - - - 0x00861E 02:860E: 84 62     STY ram_0062_save_Y
C - - - - - 0x008620 02:8610: 60        RTS
bra_8611:
C - - - - - 0x008621 02:8611: B1 65     LDA (ram_0065_t01_sprite_data),Y
C - - - - - 0x008623 02:8613: 29 40     AND #$40
C - - - - - 0x008625 02:8615: 49 40     EOR #$40
C - - - - - 0x008627 02:8617: 09 03     ORA #$03
C - - - - - 0x008629 02:8619: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00862C 02:861C: C8        INY
C - - - - - 0x00862D 02:861D: B1 65     LDA (ram_0065_t01_sprite_data),Y
C - - - - - 0x00862F 02:861F: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008632 02:8622: C8        INY
C - - - - - 0x008633 02:8623: A5 63     LDA ram_0063
C - - - - - 0x008635 02:8625: 38        SEC
C - - - - - 0x008636 02:8626: F1 65     SBC (ram_0065_t01_sprite_data),Y
C - - - - - 0x008638 02:8628: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00863B 02:862B: C8        INY
C - - - - - 0x00863C 02:862C: A5 64     LDA ram_0064
C - - - - - 0x00863E 02:862E: 38        SEC
C - - - - - 0x00863F 02:862F: F1 65     SBC (ram_0065_t01_sprite_data),Y
C - - - - - 0x008641 02:8631: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008644 02:8634: C8        INY
C - - - - - 0x008645 02:8635: 8A        TXA
C - - - - - 0x008646 02:8636: 69 03     ADC #$03
C - - - - - 0x008648 02:8638: AA        TAX
C - - - - - 0x008649 02:8639: F0 C6     BEQ bra_8601
C - - - - - 0x00864B 02:863B: C6 1D     DEC ram_001D_temp
C - - - - - 0x00864D 02:863D: D0 C7     BNE bra_8606_loop
bra_863F_RTS:
C - - - - - 0x00864F 02:863F: 60        RTS



sub_8640_on_fire:
C - - - - - 0x008650 02:8640: 30 08     BMI bra_864A
C - - - - - 0x008652 02:8642: 18        CLC
C - - - - - 0x008653 02:8643: 65 53     ADC ram_0053
C - - - - - 0x008655 02:8645: 90 08     BCC bra_864F
C - - - - - 0x008657 02:8647: A9 01     LDA #$01
C - - - - - 0x008659 02:8649: 60        RTS
bra_864A:
C - - - - - 0x00865A 02:864A: 18        CLC
C - - - - - 0x00865B 02:864B: 65 53     ADC ram_0053
C - - - - - 0x00865D 02:864D: 90 F0     BCC bra_863F_RTS
bra_864F:
C - - - - - 0x00865F 02:864F: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008662 02:8652: 98        TYA
C - - - - - 0x008663 02:8653: 18        CLC
C - - - - - 0x008664 02:8654: 65 55     ADC ram_0055
C - - - - - 0x008666 02:8656: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x008669 02:8659: A5 FB     LDA ram_00FB
C - - - - - 0x00866B 02:865B: F0 25     BEQ bra_8682
C - - - - - 0x00866D 02:865D: BC 03 02  LDY ram_spr_X,X
C - - - - - 0x008670 02:8660: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x008673 02:8663: 38        SEC
C - - - - - 0x008674 02:8664: E9 07     SBC #$07
C - - - - - 0x008676 02:8666: 4A        LSR
C - - - - - 0x008677 02:8667: 48        PHA
C - - - - - 0x008678 02:8668: 29 60     AND #$60
C - - - - - 0x00867A 02:866A: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x00867D 02:866D: A8        TAY
C - - - - - 0x00867E 02:866E: B9 A0 FA  LDA tbl_FAA0,Y
C - - - - - 0x008681 02:8671: 85 15     STA ram_0015_temp
C - - - - - 0x008683 02:8673: 68        PLA
C - - - - - 0x008684 02:8674: 4A        LSR
C - - - - - 0x008685 02:8675: 4A        LSR
C - - - - - 0x008686 02:8676: 29 07     AND #$07
C - - - - - 0x008688 02:8678: A8        TAY
C - - - - - 0x008689 02:8679: A5 15     LDA ram_0015_temp
C - - - - - 0x00868B 02:867B: 39 73 89  AND tbl_8973,Y
C - - - - - 0x00868E 02:867E: F0 38     BEQ bra_86B8
C - - - - - 0x008690 02:8680: D0 34     BNE bra_86B6    ; jmp
bra_8682:
C - - - - - 0x008692 02:8682: BC 03 02  LDY ram_spr_X,X
C - - - - - 0x008695 02:8685: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x008698 02:8688: 69 04     ADC #$04
C - - - - - 0x00869A 02:868A: 0A        ASL
C - - - - - 0x00869B 02:868B: B0 1B     BCS bra_86A8
C - - - - - 0x00869D 02:868D: 0A        ASL
C - - - - - 0x00869E 02:868E: 29 E0     AND #$E0
C - - - - - 0x0086A0 02:8690: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x0086A3 02:8693: A8        TAY
C - - - - - 0x0086A4 02:8694: B0 09     BCS bra_869F
C - - - - - 0x0086A6 02:8696: B9 00 FC  LDA tbl_FC00,Y
C - - - - - 0x0086A9 02:8699: 25 35     AND ram_0035_bit
C - - - - - 0x0086AB 02:869B: D0 19     BNE bra_86B6
C - - - - - 0x0086AD 02:869D: F0 19     BEQ bra_86B8    ; jmp
bra_869F:
C - - - - - 0x0086AF 02:869F: B9 00 FD  LDA tbl_FD00,Y
C - - - - - 0x0086B2 02:86A2: 25 35     AND ram_0035_bit
C - - - - - 0x0086B4 02:86A4: D0 10     BNE bra_86B6
C - - - - - 0x0086B6 02:86A6: F0 10     BEQ bra_86B8    ; jmp
bra_86A8:
C - - - - - 0x0086B8 02:86A8: 0A        ASL
C - - - - - 0x0086B9 02:86A9: 29 E0     AND #$E0
C - - - - - 0x0086BB 02:86AB: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x0086BE 02:86AE: A8        TAY
C - - - - - 0x0086BF 02:86AF: B9 00 FE  LDA tbl_FE00,Y
C - - - - - 0x0086C2 02:86B2: 25 35     AND ram_0035_bit
C - - - - - 0x0086C4 02:86B4: F0 02     BEQ bra_86B8
bra_86B6:
C - - - - - 0x0086C6 02:86B6: A9 20     LDA #$20
bra_86B8:
C - - - - - 0x0086C8 02:86B8: 09 03     ORA #$03
C - - - - - 0x0086CA 02:86BA: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0086CD 02:86BD: A5 32     LDA ram_0032
C - - - - - 0x0086CF 02:86BF: 65 1F     ADC ram_001F_temp
C - - - - - 0x0086D1 02:86C1: 29 03     AND #$03
C - - - - - 0x0086D3 02:86C3: 18        CLC
C - - - - - 0x0086D4 02:86C4: 69 35     ADC #$35
C - - - - - 0x0086D6 02:86C6: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0086D9 02:86C9: 8A        TXA
C - - - - - 0x0086DA 02:86CA: 69 04     ADC #$04
C - - - - - 0x0086DC 02:86CC: AA        TAX
C - - - - - 0x0086DD 02:86CD: D0 04     BNE bra_86D3_RTS
- - - - - - 0x0086DF 02:86CF: 68        PLA
- - - - - - 0x0086E0 02:86D0: 68        PLA
- - - - - - 0x0086E1 02:86D1: 68        PLA
- - - - - - 0x0086E2 02:86D2: 68        PLA
bra_86D3_RTS:
C - - - - - 0x0086E3 02:86D3: 60        RTS



sub_86D4:
C - - - - - 0x0086E4 02:86D4: 0A        ASL
C - - - - - 0x0086E5 02:86D5: A8        TAY
C - - - - - 0x0086E6 02:86D6: B9 D4 8B  LDA tbl_8BD4_sprites_data,Y
C - - - - - 0x0086E9 02:86D9: 85 11     STA ram_0011_t09_sprite_data
C - - - - - 0x0086EB 02:86DB: B9 D5 8B  LDA tbl_8BD4_sprites_data + $01,Y
C - - - - - 0x0086EE 02:86DE: 85 12     STA ram_0011_t09_sprite_data + $01
C - - - - - 0x0086F0 02:86E0: A4 59     LDY ram_0059_car_index
; also
; ram_0455_car
; ram_045B
C - - - - - 0x0086F2 02:86E2: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x0086F5 02:86E5: 85 53     STA ram_0053
; also
; ram_04AF_car
; ram_04B5
C - - - - - 0x0086F7 02:86E7: B9 AA 04  LDA ram_04AA_car,Y
C - - - - - 0x0086FA 02:86EA: 85 54     STA ram_0054
; also
; ram_0425_car
; ram_042B,Y
C - - - - - 0x0086FC 02:86EC: B9 20 04  LDA ram_car_spr_A,Y
C - - - - - 0x0086FF 02:86EF: A0 00     LDY #$00
C - - - - - 0x008701 02:86F1: 29 63     AND #$63
C - - - - - 0x008703 02:86F3: 85 13     STA ram_0013_t10_spr_A
C - - - - - 0x008705 02:86F5: 29 40     AND #$40
C - - - - - 0x008707 02:86F7: 85 58     STA ram_0058_flag
C - - - - - 0x008709 02:86F9: F0 0B     BEQ bra_8706
C - - - - - 0x00870B 02:86FB: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x00870D 02:86FD: 18        CLC
C - - - - - 0x00870E 02:86FE: 65 53     ADC ram_0053
C - - - - - 0x008710 02:8700: 38        SEC
C - - - - - 0x008711 02:8701: E9 07     SBC #$07
C - - - - - 0x008713 02:8703: 4C 0B 87  JMP loc_870B
bra_8706:
C - - - - - 0x008716 02:8706: A5 53     LDA ram_0053
C - - - - - 0x008718 02:8708: 38        SEC
C - - - - - 0x008719 02:8709: F1 11     SBC (ram_0011_t09_sprite_data),Y
loc_870B:
C D 0 - - - 0x00871B 02:870B: 85 52     STA ram_0052_temp
C - - - - - 0x00871D 02:870D: 45 53     EOR ram_0053
C - - - - - 0x00871F 02:870F: 10 06     BPL bra_8717
C - - - - - 0x008721 02:8711: A5 53     LDA ram_0053
C - - - - - 0x008723 02:8713: E9 40     SBC #$40
C - - - - - 0x008725 02:8715: 30 BC     BMI bra_86D3_RTS
bra_8717:
C - - - - - 0x008727 02:8717: C8        INY
C - - - - - 0x008728 02:8718: A5 54     LDA ram_0054
C - - - - - 0x00872A 02:871A: 18        CLC
C - - - - - 0x00872B 02:871B: 71 11     ADC (ram_0011_t09_sprite_data),Y
C - - - - - 0x00872D 02:871D: B0 B4     BCS bra_86D3_RTS
C - - - - - 0x00872F 02:871F: 85 54     STA ram_0054
C - - - - - 0x008731 02:8721: C8        INY
C - - - - - 0x008732 02:8722: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x008734 02:8724: 45 13     EOR ram_0013_t10_spr_A
C - - - - - 0x008736 02:8726: 85 5A     STA ram_005A_spr_A
C - - - - - 0x008738 02:8728: C8        INY
bra_8729_loop:
loc_8729_loop:
C D 0 - - - 0x008739 02:8729: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x00873B 02:872B: F0 A6     BEQ bra_86D3_RTS
C - - - - - 0x00873D 02:872D: 30 03     BMI bra_8732
C - - - - - 0x00873F 02:872F: 4C C9 87  JMP loc_87C9
bra_8732:
C - - - - - 0x008742 02:8732: 29 7F     AND #$7F
C - - - - - 0x008744 02:8734: 85 56     STA ram_0056
C - - - - - 0x008746 02:8736: C8        INY
C - - - - - 0x008747 02:8737: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x008749 02:8739: 18        CLC
C - - - - - 0x00874A 02:873A: 65 15     ADC ram_0015_temp
C - - - - - 0x00874C 02:873C: 85 57     STA ram_0057_temp
C - - - - - 0x00874E 02:873E: A5 58     LDA ram_0058_flag
C - - - - - 0x008750 02:8740: D0 44     BNE bra_8786
bra_8742_loop:
C - - - - - 0x008752 02:8742: A5 57     LDA ram_0057_temp
C - - - - - 0x008754 02:8744: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x008757 02:8747: E6 57     INC ram_0057_temp
C - - - - - 0x008759 02:8749: C8        INY
C - - - - - 0x00875A 02:874A: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x00875C 02:874C: 18        CLC
C - - - - - 0x00875D 02:874D: 65 52     ADC ram_0052_temp
C - - - - - 0x00875F 02:874F: B0 2A     BCS bra_877B
C - - - - - 0x008761 02:8751: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x008764 02:8754: C8        INY
C - - - - - 0x008765 02:8755: A5 54     LDA ram_0054
C - - - - - 0x008767 02:8757: 38        SEC
C - - - - - 0x008768 02:8758: F1 11     SBC (ram_0011_t09_sprite_data),Y
C - - - - - 0x00876A 02:875A: 90 20     BCC bra_877C
C - - - - - 0x00876C 02:875C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00876F 02:875F: A5 5A     LDA ram_005A_spr_A
C - - - - - 0x008771 02:8761: 10 05     BPL bra_8768
C - - - - - 0x008773 02:8763: C8        INY
C - - - - - 0x008774 02:8764: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x008776 02:8766: 45 13     EOR ram_0013_t10_spr_A
bra_8768:
C - - - - - 0x008778 02:8768: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00877B 02:876B: 8A        TXA
C - - - - - 0x00877C 02:876C: 69 03     ADC #$03
C - - - - - 0x00877E 02:876E: AA        TAX
C - - - - - 0x00877F 02:876F: F0 12     BEQ bra_8783
bra_8771:
C - - - - - 0x008781 02:8771: C6 56     DEC ram_0056
C - - - - - 0x008783 02:8773: D0 CD     BNE bra_8742_loop
C - - - - - 0x008785 02:8775: C8        INY
C - - - - - 0x008786 02:8776: A5 15     LDA ram_0015_temp
C - - - - - 0x008788 02:8778: F0 AF     BEQ bra_8729_loop
- - - - - - 0x00878A 02:877A: 60        RTS
bra_877B:
- - - - - - 0x00878B 02:877B: C8        INY
bra_877C:
- - - - - - 0x00878C 02:877C: A5 5A     LDA ram_005A_spr_A
- - - - - - 0x00878E 02:877E: 10 F1     BPL bra_8771
- - - - - - 0x008790 02:8780: C8        INY
- - - - - - 0x008791 02:8781: D0 EE     BNE bra_8771
bra_8783:
loc_8783:
- - - - - - 0x008793 02:8783: 68        PLA
- - - - - - 0x008794 02:8784: 68        PLA
- - - - - - 0x008795 02:8785: 60        RTS
bra_8786:
bra_8786_loop:
C - - - - - 0x008796 02:8786: A5 57     LDA ram_0057_temp
C - - - - - 0x008798 02:8788: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00879B 02:878B: E6 57     INC ram_0057_temp
C - - - - - 0x00879D 02:878D: C8        INY
C - - - - - 0x00879E 02:878E: A5 52     LDA ram_0052_temp
C - - - - - 0x0087A0 02:8790: 38        SEC
C - - - - - 0x0087A1 02:8791: F1 11     SBC (ram_0011_t09_sprite_data),Y
C - - - - - 0x0087A3 02:8793: 90 2C     BCC bra_87C1
C - - - - - 0x0087A5 02:8795: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0087A8 02:8798: C8        INY
C - - - - - 0x0087A9 02:8799: A5 54     LDA ram_0054
C - - - - - 0x0087AB 02:879B: 38        SEC
C - - - - - 0x0087AC 02:879C: F1 11     SBC (ram_0011_t09_sprite_data),Y
C - - - - - 0x0087AE 02:879E: 90 22     BCC bra_87C2
C - - - - - 0x0087B0 02:87A0: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0087B3 02:87A3: A5 5A     LDA ram_005A_spr_A
C - - - - - 0x0087B5 02:87A5: 10 05     BPL bra_87AC
- - - - - - 0x0087B7 02:87A7: C8        INY
- - - - - - 0x0087B8 02:87A8: B1 11     LDA (ram_0011_t09_sprite_data),Y
- - - - - - 0x0087BA 02:87AA: 45 13     EOR ram_0013_t10_spr_A
bra_87AC:
C - - - - - 0x0087BC 02:87AC: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0087BF 02:87AF: 8A        TXA
C - - - - - 0x0087C0 02:87B0: 69 03     ADC #$03
C - - - - - 0x0087C2 02:87B2: AA        TAX
C - - - - - 0x0087C3 02:87B3: F0 CE     BEQ bra_8783
bra_87B5:
C - - - - - 0x0087C5 02:87B5: C6 56     DEC ram_0056
C - - - - - 0x0087C7 02:87B7: D0 CD     BNE bra_8786_loop
C - - - - - 0x0087C9 02:87B9: C8        INY
C - - - - - 0x0087CA 02:87BA: A5 15     LDA ram_0015_temp
C - - - - - 0x0087CC 02:87BC: D0 4B     BNE bra_8809_RTS
C - - - - - 0x0087CE 02:87BE: 4C 29 87  JMP loc_8729_loop
bra_87C1:
- - - - - - 0x0087D1 02:87C1: C8        INY
bra_87C2:
- - - - - - 0x0087D2 02:87C2: A5 5A     LDA ram_005A_spr_A
- - - - - - 0x0087D4 02:87C4: 10 EF     BPL bra_87B5
- - - - - - 0x0087D6 02:87C6: C8        INY
- - - - - - 0x0087D7 02:87C7: D0 EC     BNE bra_87B5    ; jmp?
loc_87C9:
C D 0 - - - 0x0087D9 02:87C9: A5 58     LDA ram_0058_flag
C - - - - - 0x0087DB 02:87CB: D0 3D     BNE bra_880A
bra_87CD_loop:
C - - - - - 0x0087DD 02:87CD: C8        INY
C - - - - - 0x0087DE 02:87CE: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x0087E0 02:87D0: F0 37     BEQ bra_8809_RTS
C - - - - - 0x0087E2 02:87D2: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0087E5 02:87D5: C8        INY
C - - - - - 0x0087E6 02:87D6: B1 11     LDA (ram_0011_t09_sprite_data),Y
C - - - - - 0x0087E8 02:87D8: 18        CLC
C - - - - - 0x0087E9 02:87D9: 65 52     ADC ram_0052_temp
C - - - - - 0x0087EB 02:87DB: B0 24     BCS bra_8801
C - - - - - 0x0087ED 02:87DD: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0087F0 02:87E0: C8        INY
C - - - - - 0x0087F1 02:87E1: A5 54     LDA ram_0054
C - - - - - 0x0087F3 02:87E3: 38        SEC
C - - - - - 0x0087F4 02:87E4: F1 11     SBC (ram_0011_t09_sprite_data),Y
C - - - - - 0x0087F6 02:87E6: 90 1A     BCC bra_8802
C - - - - - 0x0087F8 02:87E8: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0087FB 02:87EB: A5 5A     LDA ram_005A_spr_A
C - - - - - 0x0087FD 02:87ED: 10 05     BPL bra_87F4
- - - - - - 0x0087FF 02:87EF: C8        INY
- - - - - - 0x008800 02:87F0: B1 11     LDA (ram_0011_t09_sprite_data),Y
- - - - - - 0x008802 02:87F2: 45 13     EOR ram_0013_t10_spr_A
bra_87F4:
C - - - - - 0x008804 02:87F4: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x008807 02:87F7: 8A        TXA
C - - - - - 0x008808 02:87F8: 18        CLC
C - - - - - 0x008809 02:87F9: 69 04     ADC #$04
C - - - - - 0x00880B 02:87FB: AA        TAX
C - - - - - 0x00880C 02:87FC: D0 CF     BNE bra_87CD_loop
- - - - - - 0x00880E 02:87FE: 4C 83 87  JMP loc_8783
bra_8801:
- - - - - - 0x008811 02:8801: C8        INY
bra_8802:
- - - - - - 0x008812 02:8802: A5 5A     LDA ram_005A_spr_A
- - - - - - 0x008814 02:8804: 10 C7     BPL bra_87CD_loop
- - - - - - 0x008816 02:8806: C8        INY
- - - - - - 0x008817 02:8807: D0 C4     BNE bra_87CD_loop
bra_8809_RTS:
C - - - - - 0x008819 02:8809: 60        RTS
bra_880A:
bra_880A_loop:
- - - - - - 0x00881A 02:880A: C8        INY
- - - - - - 0x00881B 02:880B: B1 11     LDA (ram_0011_t09_sprite_data),Y
- - - - - - 0x00881D 02:880D: F0 FA     BEQ bra_8809_RTS
- - - - - - 0x00881F 02:880F: 9D 01 02  STA ram_spr_T,X
- - - - - - 0x008822 02:8812: C8        INY
- - - - - - 0x008823 02:8813: A5 52     LDA ram_0052_temp
- - - - - - 0x008825 02:8815: 38        SEC
- - - - - - 0x008826 02:8816: F1 11     SBC (ram_0011_t09_sprite_data),Y
- - - - - - 0x008828 02:8818: 90 23     BCC bra_883D
- - - - - - 0x00882A 02:881A: 9D 03 02  STA ram_spr_X,X
- - - - - - 0x00882D 02:881D: C8        INY
- - - - - - 0x00882E 02:881E: A5 54     LDA ram_0054
- - - - - - 0x008830 02:8820: 38        SEC
- - - - - - 0x008831 02:8821: F1 11     SBC (ram_0011_t09_sprite_data),Y
- - - - - - 0x008833 02:8823: 90 19     BCC bra_883E
- - - - - - 0x008835 02:8825: 9D 00 02  STA ram_spr_Y,X
- - - - - - 0x008838 02:8828: A5 5A     LDA ram_005A_spr_A
- - - - - - 0x00883A 02:882A: 10 05     BPL bra_8831
- - - - - - 0x00883C 02:882C: C8        INY
- - - - - - 0x00883D 02:882D: B1 11     LDA (ram_0011_t09_sprite_data),Y
- - - - - - 0x00883F 02:882F: 45 13     EOR ram_0013_t10_spr_A
bra_8831:
- - - - - - 0x008841 02:8831: 9D 02 02  STA ram_spr_A,X
- - - - - - 0x008844 02:8834: 8A        TXA
- - - - - - 0x008845 02:8835: 69 03     ADC #$03
- - - - - - 0x008847 02:8837: AA        TAX
- - - - - - 0x008848 02:8838: D0 D0     BNE bra_880A_loop
- - - - - - 0x00884A 02:883A: 4C 83 87  JMP loc_8783
bra_883D:
- - - - - - 0x00884D 02:883D: C8        INY
bra_883E:
- - - - - - 0x00884E 02:883E: A5 5A     LDA ram_005A_spr_A
- - - - - - 0x008850 02:8840: 10 C8     BPL bra_880A_loop
- - - - - - 0x008852 02:8842: C8        INY
- - - - - - 0x008853 02:8843: D0 C5     BNE bra_880A_loop   ; jmp



loc_8845:
; con_bsw_01_12
C D 0 - - - 0x008855 02:8845: A6 1C     LDX ram_001C_temp
C - - - - - 0x008857 02:8847: A5 FB     LDA ram_00FB
C - - - - - 0x008859 02:8849: F0 25     BEQ bra_8870
C - - - - - 0x00885B 02:884B: BC 50 04  LDY ram_pos_X_hi,X
C - - - - - 0x00885E 02:884E: BD 70 04  LDA ram_pos_Y_hi,X
C - - - - - 0x008861 02:8851: 38        SEC
C - - - - - 0x008862 02:8852: FD 90 04  SBC ram_0490_car,X
C - - - - - 0x008865 02:8855: 38        SEC
C - - - - - 0x008866 02:8856: E9 07     SBC #$07
C - - - - - 0x008868 02:8858: 4A        LSR
C - - - - - 0x008869 02:8859: 48        PHA
C - - - - - 0x00886A 02:885A: 29 60     AND #$60
C - - - - - 0x00886C 02:885C: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x00886F 02:885F: A8        TAY
C - - - - - 0x008870 02:8860: 68        PLA
C - - - - - 0x008871 02:8861: 4A        LSR
C - - - - - 0x008872 02:8862: 4A        LSR
C - - - - - 0x008873 02:8863: 29 07     AND #$07
C - - - - - 0x008875 02:8865: AA        TAX
C - - - - - 0x008876 02:8866: B9 A0 FA  LDA tbl_FAA0,Y
C - - - - - 0x008879 02:8869: 3D 73 89  AND tbl_8973,X
C - - - - - 0x00887C 02:886C: D0 3B     BNE bra_88A9
C - - - - - 0x00887E 02:886E: F0 3B     BEQ bra_88AB    ; jmp
bra_8870:
C - - - - - 0x008880 02:8870: BC 50 04  LDY ram_pos_X_hi,X
C - - - - - 0x008883 02:8873: BD 70 04  LDA ram_pos_Y_hi,X
C - - - - - 0x008886 02:8876: 38        SEC
C - - - - - 0x008887 02:8877: FD 90 04  SBC ram_0490_car,X
C - - - - - 0x00888A 02:887A: 18        CLC
C - - - - - 0x00888B 02:887B: 69 04     ADC #$04
C - - - - - 0x00888D 02:887D: 0A        ASL
C - - - - - 0x00888E 02:887E: B0 1B     BCS bra_889B
C - - - - - 0x008890 02:8880: 0A        ASL
C - - - - - 0x008891 02:8881: 29 E0     AND #$E0
C - - - - - 0x008893 02:8883: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x008896 02:8886: A8        TAY
C - - - - - 0x008897 02:8887: B0 09     BCS bra_8892
C - - - - - 0x008899 02:8889: B9 00 FC  LDA tbl_FC00,Y
C - - - - - 0x00889C 02:888C: 25 35     AND ram_0035_bit
C - - - - - 0x00889E 02:888E: D0 19     BNE bra_88A9
C - - - - - 0x0088A0 02:8890: F0 19     BEQ bra_88AB    ; jmp
bra_8892:
C - - - - - 0x0088A2 02:8892: B9 00 FD  LDA tbl_FD00,Y
C - - - - - 0x0088A5 02:8895: 25 35     AND ram_0035_bit
C - - - - - 0x0088A7 02:8897: D0 10     BNE bra_88A9
C - - - - - 0x0088A9 02:8899: F0 10     BEQ bra_88AB    ; jmp
bra_889B:
C - - - - - 0x0088AB 02:889B: 0A        ASL
C - - - - - 0x0088AC 02:889C: 29 E0     AND #$E0
C - - - - - 0x0088AE 02:889E: 19 00 FB  ORA tbl_FB00,Y
C - - - - - 0x0088B1 02:88A1: A8        TAY
C - - - - - 0x0088B2 02:88A2: B9 00 FE  LDA tbl_FE00,Y
C - - - - - 0x0088B5 02:88A5: 25 35     AND ram_0035_bit
C - - - - - 0x0088B7 02:88A7: F0 02     BEQ bra_88AB
bra_88A9:
C - - - - - 0x0088B9 02:88A9: A9 20     LDA #$20
bra_88AB:
C - - - - - 0x0088BB 02:88AB: 85 1C     STA ram_001C_temp
C - - - - - 0x0088BD 02:88AD: 60        RTS



tbl_88AE:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0088BE 02:88AE: F4        .byte $F4, $02   ; 01 
- D 0 - - - 0x0088C0 02:88B0: F4        .byte $F4, $03   ; 02 
- D 0 - - - 0x0088C2 02:88B2: F4        .byte $F4, $03   ; 03 
- D 0 - - - 0x0088C4 02:88B4: F6        .byte $F6, $04   ; 04 
- D 0 - - - 0x0088C6 02:88B6: F6        .byte $F6, $03   ; 05 
- D 0 - - - 0x0088C8 02:88B8: F5        .byte $F5, $02   ; 06 
- D 0 - - - 0x0088CA 02:88BA: F7        .byte $F7, $01   ; 07 
- D 0 - - - 0x0088CC 02:88BC: F8        .byte $F8, $FF   ; 08 
- D 0 - - - 0x0088CE 02:88BE: FA        .byte $FA, $FF   ; 09 
- D 0 - - - 0x0088D0 02:88C0: FB        .byte $FB, $FC   ; 0A 
- D 0 - - - 0x0088D2 02:88C2: FC        .byte $FC, $FA   ; 0B 
- D 0 - - - 0x0088D4 02:88C4: FD        .byte $FD, $FA   ; 0C 
- D 0 - - - 0x0088D6 02:88C6: FE        .byte $FE, $F7   ; 0D 
- D 0 - - - 0x0088D8 02:88C8: 00        .byte $00, $F5   ; 0E 
- D 0 - - - 0x0088DA 02:88CA: 00        .byte $00, $F5   ; 0F 
- D 0 - - - 0x0088DC 02:88CC: 02        .byte $02, $F5   ; 10 
- D 0 - - - 0x0088DE 02:88CE: 04        .byte $04, $F4   ; 11 
- D 0 - - - 0x0088E0 02:88D0: 04        .byte $04, $F4   ; 12 
- D 0 - - - 0x0088E2 02:88D2: 04        .byte $04, $F4   ; 13 
- D 0 - - - 0x0088E4 02:88D4: 05        .byte $05, $F6   ; 14 
- D 0 - - - 0x0088E6 02:88D6: 05        .byte $05, $F7   ; 15 
- D 0 - - - 0x0088E8 02:88D8: 06        .byte $06, $F8   ; 16 
- D 0 - - - 0x0088EA 02:88DA: 03        .byte $03, $F8   ; 17 
- D 0 - - - 0x0088EC 02:88DC: 02        .byte $02, $FA   ; 18 
- D 0 - - - 0x0088EE 02:88DE: 00        .byte $00, $FB   ; 19 
- D 0 - - - 0x0088F0 02:88E0: FD        .byte $FD, $FC   ; 1A 
- D 0 - - - 0x0088F2 02:88E2: FC        .byte $FC, $FD   ; 1B 
- D 0 - - - 0x0088F4 02:88E4: FA        .byte $FA, $00   ; 1C 
- D 0 - - - 0x0088F6 02:88E6: FA        .byte $FA, $FF   ; 1D 
- D 0 - - - 0x0088F8 02:88E8: F8        .byte $F8, $01   ; 1E 
- D 0 - - - 0x0088FA 02:88EA: F6        .byte $F6, $03   ; 1F 
- D 0 - - - 0x0088FC 02:88EC: F4        .byte $F4, $02   ; 20 



tbl_88EE:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0088FE 02:88EE: FE        .byte $FE, $00   ; 01 
- D 0 - - - 0x008900 02:88F0: FF        .byte $FF, $FE   ; 02 
- D 0 - - - 0x008902 02:88F2: 01        .byte $01, $FE   ; 03 
- D 0 - - - 0x008904 02:88F4: 02        .byte $02, $FD   ; 04 
- D 0 - - - 0x008906 02:88F6: 03        .byte $03, $FC   ; 05 
- D 0 - - - 0x008908 02:88F8: 03        .byte $03, $FB   ; 06 
- D 0 - - - 0x00890A 02:88FA: 03        .byte $03, $FA   ; 07 
- D 0 - - - 0x00890C 02:88FC: 03        .byte $03, $F9   ; 08 
- D 0 - - - 0x00890E 02:88FE: 04        .byte $04, $FA   ; 09 
- D 0 - - - 0x008910 02:8900: 04        .byte $04, $F9   ; 0A 
- D 0 - - - 0x008912 02:8902: 03        .byte $03, $F9   ; 0B 
- D 0 - - - 0x008914 02:8904: 04        .byte $04, $FB   ; 0C 
- D 0 - - - 0x008916 02:8906: 02        .byte $02, $FA   ; 0D 
- D 0 - - - 0x008918 02:8908: 02        .byte $02, $FB   ; 0E 
- D 0 - - - 0x00891A 02:890A: 02        .byte $02, $FC   ; 0F 
- D 0 - - - 0x00891C 02:890C: 01        .byte $01, $FD   ; 10 
- D 0 - - - 0x00891E 02:890E: 00        .byte $00, $FD   ; 11 
- D 0 - - - 0x008920 02:8910: FE        .byte $FE, $FF   ; 12 
- D 0 - - - 0x008922 02:8912: FC        .byte $FC, $00   ; 13 
- D 0 - - - 0x008924 02:8914: FC        .byte $FC, $01   ; 14 
- D 0 - - - 0x008926 02:8916: FA        .byte $FA, $01   ; 15 
- D 0 - - - 0x008928 02:8918: FA        .byte $FA, $02   ; 16 
- D 0 - - - 0x00892A 02:891A: F9        .byte $F9, $03   ; 17 
- D 0 - - - 0x00892C 02:891C: FA        .byte $FA, $00   ; 18 
- D 0 - - - 0x00892E 02:891E: F9        .byte $F9, $03   ; 19 
- D 0 - - - 0x008930 02:8920: FA        .byte $FA, $03   ; 1A 
- D 0 - - - 0x008932 02:8922: FA        .byte $FA, $03   ; 1B 
- D 0 - - - 0x008934 02:8924: FB        .byte $FB, $03   ; 1C 
- D 0 - - - 0x008936 02:8926: FA        .byte $FA, $03   ; 1D 
- D 0 - - - 0x008938 02:8928: FC        .byte $FC, $03   ; 1E 
- D 0 - - - 0x00893A 02:892A: FC        .byte $FC, $01   ; 1F 
- D 0 - - - 0x00893C 02:892C: FD        .byte $FD, $01   ; 20 



tbl_892E:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x00893E 02:892E: 04        .byte $04, $FE   ; 01 
- D 0 - - - 0x008940 02:8930: 05        .byte $05, $FC   ; 02 
- D 0 - - - 0x008942 02:8932: 06        .byte $06, $F9   ; 03 
- D 0 - - - 0x008944 02:8934: 05        .byte $05, $F9   ; 04 
- D 0 - - - 0x008946 02:8936: 04        .byte $04, $F8   ; 05 
- D 0 - - - 0x008948 02:8938: 03        .byte $03, $F7   ; 06 
- D 0 - - - 0x00894A 02:893A: 02        .byte $02, $F5   ; 07 
- D 0 - - - 0x00894C 02:893C: 00        .byte $00, $F4   ; 08 
- D 0 - - - 0x00894E 02:893E: FE        .byte $FE, $F5   ; 09 
- D 0 - - - 0x008950 02:8940: FC        .byte $FC, $F4   ; 0A 
- D 0 - - - 0x008952 02:8942: F8        .byte $F8, $F4   ; 0B 
- D 0 - - - 0x008954 02:8944: F7        .byte $F7, $F5   ; 0C 
- D 0 - - - 0x008956 02:8946: F7        .byte $F7, $F7   ; 0D 
- D 0 - - - 0x008958 02:8948: F6        .byte $F6, $F8   ; 0E 
- D 0 - - - 0x00895A 02:894A: F5        .byte $F5, $F9   ; 0F 
- D 0 - - - 0x00895C 02:894C: F2        .byte $F2, $FA   ; 10 
- D 0 - - - 0x00895E 02:894E: F1        .byte $F1, $FB   ; 11 
- D 0 - - - 0x008960 02:8950: F1        .byte $F1, $FE   ; 12 
- D 0 - - - 0x008962 02:8952: F1        .byte $F1, $FE   ; 13 
- D 0 - - - 0x008964 02:8954: F3        .byte $F3, $01   ; 14 
- D 0 - - - 0x008966 02:8956: F4        .byte $F4, $01   ; 15 
- D 0 - - - 0x008968 02:8958: F4        .byte $F4, $02   ; 16 
- D 0 - - - 0x00896A 02:895A: F7        .byte $F7, $03   ; 17 
- D 0 - - - 0x00896C 02:895C: F8        .byte $F8, $03   ; 18 
- D 0 - - - 0x00896E 02:895E: FA        .byte $FA, $03   ; 19 
- D 0 - - - 0x008970 02:8960: FB        .byte $FB, $03   ; 1A 
- D 0 - - - 0x008972 02:8962: FD        .byte $FD, $04   ; 1B 
- D 0 - - - 0x008974 02:8964: 00        .byte $00, $03   ; 1C 
- D 0 - - - 0x008976 02:8966: 00        .byte $00, $03   ; 1D 
- D 0 - - - 0x008978 02:8968: 01        .byte $01, $03   ; 1E 
- D 0 - - - 0x00897A 02:896A: 03        .byte $03, $01   ; 1F 
- D 0 - - - 0x00897C 02:896C: 03        .byte $03, $00   ; 20 



tbl_896E_spr_T:
- D 0 - - - 0x00897E 02:896E: F0        .byte $F0   ; 00 
- D 0 - - - 0x00897F 02:896F: F2        .byte $F2   ; 01 
- D 0 - - - 0x008980 02:8970: F4        .byte $F4   ; 02 
- D 0 - - - 0x008981 02:8971: F6        .byte $F6   ; 03 
- D 0 - - - 0x008982 02:8972: F8        .byte $F8   ; 04 



tbl_8973:
- D 0 - - - 0x008983 02:8973: 80        .byte $80   ; 00 
- D 0 - - - 0x008984 02:8974: 40        .byte $40   ; 01 
- D 0 - - - 0x008985 02:8975: 20        .byte $20   ; 02 
- D 0 - - - 0x008986 02:8976: 10        .byte $10   ; 03 
- D 0 - - - 0x008987 02:8977: 08        .byte $08   ; 04 
- D 0 - - - 0x008988 02:8978: 04        .byte $04   ; 05 
- D 0 - - - 0x008989 02:8979: 02        .byte $02   ; 06 
- D 0 - - - 0x00898A 02:897A: 01        .byte $01   ; 07 



tbl_897B_spr_T:
- D 0 - - - 0x00898B 02:897B: 00        .byte $00   ; 00 
- D 0 - - - 0x00898C 02:897C: 6A        .byte $6A   ; 01 
- D 0 - - - 0x00898D 02:897D: 6B        .byte $6B   ; 02 
- D 0 - - - 0x00898E 02:897E: 2A        .byte $2A   ; 03 



tbl_897F_spr_X:
- - - - - - 0x00898F 02:897F: A2        .byte $A2   ; 00 
- - - - - - 0x008990 02:8980: 22        .byte $22   ; 01 
- - - - - - 0x008991 02:8981: 42        .byte $42   ; 02 
- - - - - - 0x008992 02:8982: 52        .byte $52   ; 03 
- D 0 - - - 0x008993 02:8983: 72        .byte $72   ; 04 
- - - - - - 0x008994 02:8984: 62        .byte $62   ; 05 
- - - - - - 0x008995 02:8985: C2        .byte $C2   ; 06 
- - - - - - 0x008996 02:8986: 62        .byte $62   ; 07 
- D 0 - - - 0x008997 02:8987: 62        .byte $62   ; 08 



tbl_8988_spr_X_timer_seconds___tens:
- D 0 - - - 0x008998 02:8988: AA        .byte $AA   ; 00 
- D 0 - - - 0x008999 02:8989: 2A        .byte $2A   ; 01 
- D 0 - - - 0x00899A 02:898A: 4A        .byte $4A   ; 02 
- D 0 - - - 0x00899B 02:898B: 5A        .byte $5A   ; 03 
- D 0 - - - 0x00899C 02:898C: 7A        .byte $7A   ; 04 
- D 0 - - - 0x00899D 02:898D: 6A        .byte $6A   ; 05 
- D 0 - - - 0x00899E 02:898E: CA        .byte $CA   ; 06 
- D 0 - - - 0x00899F 02:898F: 6A        .byte $6A   ; 07 
- D 0 - - - 0x0089A0 02:8990: 6A        .byte $6A   ; 08 



tbl_8991_spr_X_timer_seconds___ones:
- D 0 - - - 0x0089A1 02:8991: B2        .byte $B2   ; 00 
- D 0 - - - 0x0089A2 02:8992: 32        .byte $32   ; 01 
- D 0 - - - 0x0089A3 02:8993: 52        .byte $52   ; 02 
- D 0 - - - 0x0089A4 02:8994: 62        .byte $62   ; 03 
- D 0 - - - 0x0089A5 02:8995: 82        .byte $82   ; 04 
- D 0 - - - 0x0089A6 02:8996: 72        .byte $72   ; 05 
- D 0 - - - 0x0089A7 02:8997: D2        .byte $D2   ; 06 
- D 0 - - - 0x0089A8 02:8998: 72        .byte $72   ; 07 
- D 0 - - - 0x0089A9 02:8999: 72        .byte $72   ; 08 



tbl_899A_spr_X_timer_miliseconds:
- D 0 - - - 0x0089AA 02:899A: BE        .byte $BE   ; 00 
- D 0 - - - 0x0089AB 02:899B: 3E        .byte $3E   ; 01 
- D 0 - - - 0x0089AC 02:899C: 5E        .byte $5E   ; 02 
- D 0 - - - 0x0089AD 02:899D: 6E        .byte $6E   ; 03 
- D 0 - - - 0x0089AE 02:899E: 8E        .byte $8E   ; 04 
- D 0 - - - 0x0089AF 02:899F: 7E        .byte $7E   ; 05 
- D 0 - - - 0x0089B0 02:89A0: DE        .byte $DE   ; 06 
- D 0 - - - 0x0089B1 02:89A1: 7E        .byte $7E   ; 07 
- D 0 - - - 0x0089B2 02:89A2: 7E        .byte $7E   ; 08 



tbl_89A3_spr_Y:
- D 0 - - - 0x0089B3 02:89A3: 4C        .byte $4C   ; 00 
- D 0 - - - 0x0089B4 02:89A4: 54        .byte $54   ; 01 
- D 0 - - - 0x0089B5 02:89A5: 64        .byte $64   ; 02 
- D 0 - - - 0x0089B6 02:89A6: 64        .byte $64   ; 03 
- D 0 - - - 0x0089B7 02:89A7: 74        .byte $74   ; 04 
- D 0 - - - 0x0089B8 02:89A8: 5C        .byte $5C   ; 05 
- D 0 - - - 0x0089B9 02:89A9: 44        .byte $44   ; 06 
- D 0 - - - 0x0089BA 02:89AA: 6C        .byte $6C   ; 07 
- D 0 - - - 0x0089BB 02:89AB: 64        .byte $64   ; 08 



tbl_89AC_spr_X_laps_default_pos:
- D 0 - - - 0x0089BC 02:89AC: B2        .byte $B2   ; 00 
- D 0 - - - 0x0089BD 02:89AD: 32        .byte $32   ; 01 
- D 0 - - - 0x0089BE 02:89AE: 52        .byte $52   ; 02 
- D 0 - - - 0x0089BF 02:89AF: 64        .byte $64   ; 03 
- D 0 - - - 0x0089C0 02:89B0: 83        .byte $83   ; 04 
- D 0 - - - 0x0089C1 02:89B1: 72        .byte $72   ; 05 
- D 0 - - - 0x0089C2 02:89B2: D2        .byte $D2   ; 06 
- D 0 - - - 0x0089C3 02:89B3: 72        .byte $72   ; 07 
- D 0 - - - 0x0089C4 02:89B4: 72        .byte $72   ; 08 



tbl_89B5_spr_Y_laps_default_pos:
- D 0 - - - 0x0089C5 02:89B5: 18        .byte $18   ; 00 
- D 0 - - - 0x0089C6 02:89B6: 20        .byte $20   ; 01 
- D 0 - - - 0x0089C7 02:89B7: 30        .byte $30   ; 02 
- D 0 - - - 0x0089C8 02:89B8: 34        .byte $34   ; 03 
- D 0 - - - 0x0089C9 02:89B9: 44        .byte $44   ; 04 
- D 0 - - - 0x0089CA 02:89BA: 28        .byte $28   ; 05 
- D 0 - - - 0x0089CB 02:89BB: 10        .byte $10   ; 06 
- D 0 - - - 0x0089CC 02:89BC: 38        .byte $38   ; 07 
- D 0 - - - 0x0089CD 02:89BD: 34        .byte $34   ; 08 



tbl_89BE_spr_T_laps:
- D 0 - - - 0x0089CE 02:89BE: 73        .byte $73   ; 00 
- D 0 - - - 0x0089CF 02:89BF: 73        .byte $73   ; 01 
- D 0 - - - 0x0089D0 02:89C0: 73        .byte $73   ; 02 
- D 0 - - - 0x0089D1 02:89C1: 73        .byte $73   ; 03 
- D 0 - - - 0x0089D2 02:89C2: 80        .byte $80   ; 04 



tbl_89C3_spr_A_laps:
- D 0 - - - 0x0089D3 02:89C3: 00        .byte $00   ; 00 
- D 0 - - - 0x0089D4 02:89C4: 01        .byte $01   ; 01 
- D 0 - - - 0x0089D5 02:89C5: 02        .byte $02   ; 02 
- D 0 - - - 0x0089D6 02:89C6: 03        .byte $03   ; 03 
- D 0 - - - 0x0089D7 02:89C7: 03        .byte $03   ; 04 



tbl_89C8_spr_X_dude_with_a_flag:
- D 0 - - - 0x0089D8 02:89C8: 92        .byte $92   ; 00 
- D 0 - - - 0x0089D9 02:89C9: 80        .byte $80   ; 01 
- D 0 - - - 0x0089DA 02:89CA: 39        .byte $39   ; 02 
- D 0 - - - 0x0089DB 02:89CB: 8E        .byte $8E   ; 03 
- D 0 - - - 0x0089DC 02:89CC: 9C        .byte $9C   ; 04 
- D 0 - - - 0x0089DD 02:89CD: 6E        .byte $6E   ; 05 
- D 0 - - - 0x0089DE 02:89CE: B8        .byte $B8   ; 06 
- D 0 - - - 0x0089DF 02:89CF: 34        .byte $34   ; 07 
- D 0 - - - 0x0089E0 02:89D0: 50        .byte $50   ; 08 



tbl_89D1_spr_Y_dude_with_a_flag:
- D 0 - - - 0x0089E1 02:89D1: 68        .byte $68   ; 00 
- D 0 - - - 0x0089E2 02:89D2: 4B        .byte $4B   ; 01 
- D 0 - - - 0x0089E3 02:89D3: AF        .byte $AF   ; 02 
- D 0 - - - 0x0089E4 02:89D4: B2        .byte $B2   ; 03 
- D 0 - - - 0x0089E5 02:89D5: A8        .byte $A8   ; 04 
- D 0 - - - 0x0089E6 02:89D6: 80        .byte $80   ; 05 
- D 0 - - - 0x0089E7 02:89D7: 60        .byte $60   ; 06 
- D 0 - - - 0x0089E8 02:89D8: 94        .byte $94   ; 07 
- D 0 - - - 0x0089E9 02:89D9: 96        .byte $96   ; 08 



tbl_89DA_spr_T:
; see con_005B
- D 0 - - - 0x0089EA 02:89DA: 54        .byte $54, $00   ; 00 
- D 0 - - - 0x0089EC 02:89DC: 55        .byte $55, $00   ; 02 
- - - - - - 0x0089EE 02:89DE: 56        .byte $56, $5C   ; 04 
- D 0 - - - 0x0089F0 02:89E0: 57        .byte $57, $5D   ; 06 
- D 0 - - - 0x0089F2 02:89E2: 58        .byte $58, $5E   ; 08 
- D 0 - - - 0x0089F4 02:89E4: 59        .byte $59, $5F   ; 0A 
- D 0 - - - 0x0089F6 02:89E6: 5A        .byte $5A, $60   ; 0C 
- D 0 - - - 0x0089F8 02:89E8: 5B        .byte $5B, $61   ; 0E 
- D 0 - - - 0x0089FA 02:89EA: 62        .byte $62, $00   ; 10 
- D 0 - - - 0x0089FC 02:89EC: 63        .byte $63, $00   ; 12 
- D 0 - - - 0x0089FE 02:89EE: 64        .byte $64, $00   ; 14 
- D 0 - - - 0x008A00 02:89F0: 65        .byte $65, $00   ; 16 
- D 0 - - - 0x008A02 02:89F2: 66        .byte $66, $00   ; 18 
- D 0 - - - 0x008A04 02:89F4: 67        .byte $67, $00   ; 1A 
- D 0 - - - 0x008A06 02:89F6: 68        .byte $68, $00   ; 1C 
- D 0 - - - 0x008A08 02:89F8: 69        .byte $69, $00   ; 1E 



tbl_89FA_sprite_data_lo:
- D 0 - - - 0x008A0A 02:89FA: F2        .byte < ( off_89FE_00 - $0C )   ; 
- D 0 - - - 0x008A0B 02:89FB: BE        .byte < ( off_8ACA_01 - $0C )   ; 



tbl_89FC_sprite_data_hi:
- D 0 - - - 0x008A0C 02:89FC: 89        .byte > ( off_89FE_00 - $0C )   ; 
- D 0 - - - 0x008A0D 02:89FD: 8A        .byte > ( off_8ACA_01 - $0C )   ; 



off_89FE_00:
;                                              +-------------------- spr_A
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_X
;                                              |    |    |    +----- spr_Y
;                                              |    |    |    |
; 01 
- D 0 - I - 0x008A0E 02:89FE: 20        .byte $20, $1D, $04, $12   ; 
- D 0 - I - 0x008A12 02:8A02: 20        .byte $20, $1D, $08, $12   ; 
- D 0 - I - 0x008A16 02:8A06: 20        .byte $20, $1D, $14, $12   ; 
; 02 
- D 0 - I - 0x008A1A 02:8A0A: 20        .byte $20, $1D, $04, $12   ; 
- D 0 - I - 0x008A1E 02:8A0E: 20        .byte $20, $1E, $08, $12   ; 
- D 0 - I - 0x008A22 02:8A12: 20        .byte $20, $1D, $14, $12   ; 
; 03 
- D 0 - I - 0x008A26 02:8A16: 20        .byte $20, $1E, $04, $12   ; 
- D 0 - I - 0x008A2A 02:8A1A: 20        .byte $20, $1F, $08, $12   ; 
- D 0 - I - 0x008A2E 02:8A1E: 20        .byte $20, $1E, $14, $12   ; 
; 04 
- D 0 - I - 0x008A32 02:8A22: 20        .byte $20, $24, $06, $0F   ; 
- D 0 - I - 0x008A36 02:8A26: 20        .byte $20, $23, $08, $0B   ; 
- D 0 - I - 0x008A3A 02:8A2A: 20        .byte $20, $1F, $16, $0F   ; 
; 05 
- D 0 - I - 0x008A3E 02:8A2E: 00        .byte $00, $23, $04, $02   ; 
- D 0 - I - 0x008A42 02:8A32: 60        .byte $60, $20, $02, $09   ; 
- D 0 - I - 0x008A46 02:8A36: 20        .byte $20, $1F, $18, $0A   ; 
; 06 
- D 0 - I - 0x008A4A 02:8A3A: 40        .byte $40, $22, $04, $05   ; 
- D 0 - I - 0x008A4E 02:8A3E: 00        .byte $00, $23, $0A, $02   ; 
- D 0 - I - 0x008A52 02:8A42: 00        .byte $00, $22, $19, $06   ; 
; 07 
- D 0 - I - 0x008A56 02:8A46: 40        .byte $40, $21, $04, $05   ; 
- D 0 - I - 0x008A5A 02:8A4A: 00        .byte $00, $21, $10, $02   ; 
- D 0 - I - 0x008A5E 02:8A4E: 00        .byte $00, $21, $19, $06   ; 
; 08 
- D 0 - I - 0x008A62 02:8A52: 00        .byte $00, $24, $03, $03   ; 
- D 0 - I - 0x008A66 02:8A56: 00        .byte $00, $22, $11, $02   ; 
- D 0 - I - 0x008A6A 02:8A5A: 40        .byte $40, $24, $17, $05   ; 
; 09 
- D 0 - I - 0x008A6E 02:8A5E: 40        .byte $40, $22, $04, $07   ; 
- D 0 - I - 0x008A72 02:8A62: 40        .byte $40, $22, $0C, $03   ; 
- D 0 - I - 0x008A76 02:8A66: 00        .byte $00, $22, $18, $04   ; 
; 0A 
- D 0 - I - 0x008A7A 02:8A6A: 40        .byte $40, $22, $01, $02   ; 
- D 0 - I - 0x008A7E 02:8A6E: 40        .byte $40, $21, $09, $00   ; 
- D 0 - I - 0x008A82 02:8A72: 00        .byte $00, $21, $16, $03   ; 
; 0B 
- D 0 - I - 0x008A86 02:8A76: 00        .byte $00, $24, $03, $05   ; 
- D 0 - I - 0x008A8A 02:8A7A: 00        .byte $00, $24, $09, $02   ; 
- D 0 - I - 0x008A8E 02:8A7E: 40        .byte $40, $24, $15, $04   ; 
; 0C 
- D 0 - I - 0x008A92 02:8A82: 40        .byte $40, $22, $02, $07   ; 
- D 0 - I - 0x008A96 02:8A86: 40        .byte $40, $22, $09, $02   ; 
- D 0 - I - 0x008A9A 02:8A8A: 00        .byte $00, $22, $14, $05   ; 
; 0D 
- D 0 - I - 0x008A9E 02:8A8E: 00        .byte $00, $24, $03, $08   ; 
- D 0 - I - 0x008AA2 02:8A92: 40        .byte $40, $21, $06, $00   ; 
- D 0 - I - 0x008AA6 02:8A96: 00        .byte $00, $21, $16, $04   ; 
; 0E 
- D 0 - I - 0x008AAA 02:8A9A: 40        .byte $40, $20, $01, $08   ; 
- D 0 - I - 0x008AAE 02:8A9E: 40        .byte $40, $1F, $03, $03   ; 
- D 0 - I - 0x008AB2 02:8AA2: 00        .byte $00, $20, $18, $07   ; 
; 0F 
- D 0 - I - 0x008AB6 02:8AA6: 40        .byte $40, $1F, $06, $08   ; 
- D 0 - I - 0x008ABA 02:8AAA: 20        .byte $20, $24, $02, $0C   ; 
- D 0 - I - 0x008ABE 02:8AAE: 20        .byte $20, $1F, $16, $0D   ; 
; 10 
- D 0 - I - 0x008AC2 02:8AB2: 20        .byte $20, $24, $02, $0E   ; 
- D 0 - I - 0x008AC6 02:8AB6: 60        .byte $60, $1F, $08, $0C   ; 
- D 0 - I - 0x008ACA 02:8ABA: 20        .byte $20, $1F, $16, $0F   ; 
; 11 
- D 0 - I - 0x008ACE 02:8ABE: 20        .byte $20, $1D, $00, $12   ; 
- D 0 - I - 0x008AD2 02:8AC2: 20        .byte $20, $1E, $08, $12   ; 
- D 0 - I - 0x008AD6 02:8AC6: 20        .byte $20, $1D, $14, $12   ; 



off_8ACA_01:
;                                              +-------------------- spr_A
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_X
;                                              |    |    |    +----- spr_Y
;                                              |    |    |    |
; 01 
- D 0 - I - 0x008ADA 02:8ACA: 00        .byte $00, $02, $01, $00   ; 
- D 0 - I - 0x008ADE 02:8ACE: 40        .byte $40, $02, $12, $00   ; 
- D 0 - I - 0x008AE2 02:8AD2: 40        .byte $40, $02, $1A, $00   ; 
; 02 
- D 0 - I - 0x008AE6 02:8AD6: 00        .byte $00, $03, $02, $03   ; 
- D 0 - I - 0x008AEA 02:8ADA: 40        .byte $40, $03, $11, $03   ; 
- D 0 - I - 0x008AEE 02:8ADE: 40        .byte $40, $03, $18, $03   ; 
; 03 
- D 0 - I - 0x008AF2 02:8AE2: 00        .byte $00, $04, $04, $04   ; 
- D 0 - I - 0x008AF6 02:8AE6: 40        .byte $40, $04, $0E, $05   ; 
- D 0 - I - 0x008AFA 02:8AEA: 40        .byte $40, $04, $16, $04   ; 
; 04 
- D 0 - I - 0x008AFE 02:8AEE: 00        .byte $00, $05, $04, $07   ; 
- D 0 - I - 0x008B02 02:8AF2: 00        .byte $00, $06, $0E, $08   ; 
- D 0 - I - 0x008B06 02:8AF6: 40        .byte $40, $05, $16, $07   ; 
; 05 
- D 0 - I - 0x008B0A 02:8AFA: 00        .byte $00, $07, $07, $04   ; 
- D 0 - I - 0x008B0E 02:8AFE: 40        .byte $40, $07, $0D, $04   ; 
- D 0 - I - 0x008B12 02:8B02: 40        .byte $40, $07, $13, $04   ; 
; 06 
- D 0 - I - 0x008B16 02:8B06: 00        .byte $00, $08, $03, $06   ; 
- D 0 - I - 0x008B1A 02:8B0A: 40        .byte $40, $08, $10, $06   ; 
- D 0 - I - 0x008B1E 02:8B0E: 20        .byte $20, $09, $18, $0B   ; 
; 07 
- D 0 - I - 0x008B22 02:8B12: 00        .byte $00, $0A, $01, $0A   ; 
- D 0 - I - 0x008B26 02:8B16: 40        .byte $40, $0A, $11, $08   ; 
- D 0 - I - 0x008B2A 02:8B1A: 20        .byte $20, $0B, $15, $10   ; 
; 08 
- D 0 - I - 0x008B2E 02:8B1E: 00        .byte $00, $08, $03, $09   ; 
- D 0 - I - 0x008B32 02:8B22: 40        .byte $40, $08, $0F, $07   ; 
- D 0 - I - 0x008B36 02:8B26: 20        .byte $20, $09, $12, $0F   ; 
; 09 
- D 0 - I - 0x008B3A 02:8B2A: 00        .byte $00, $0C, $02, $0A   ; 
- D 0 - I - 0x008B3E 02:8B2E: 40        .byte $40, $0C, $12, $08   ; 
- D 0 - I - 0x008B42 02:8B32: 20        .byte $20, $0B, $13, $10   ; 
; 0A 
- D 0 - I - 0x008B46 02:8B36: 00        .byte $00, $0A, $01, $0A   ; 
- D 0 - I - 0x008B4A 02:8B3A: 40        .byte $40, $0A, $14, $08   ; 
- D 0 - I - 0x008B4E 02:8B3E: 60        .byte $60, $0C, $10, $0F   ; 
; 0B 
- D 0 - I - 0x008B52 02:8B42: 00        .byte $00, $0C, $02, $0A   ; 
- D 0 - I - 0x008B56 02:8B46: 40        .byte $40, $08, $10, $07   ; 
- D 0 - I - 0x008B5A 02:8B4A: 20        .byte $20, $09, $0E, $0F   ; 
; 0C 
- D 0 - I - 0x008B5E 02:8B4E: 00        .byte $00, $08, $04, $07   ; 
- D 0 - I - 0x008B62 02:8B52: 40        .byte $40, $0A, $11, $09   ; 
- D 0 - I - 0x008B66 02:8B56: 20        .byte $20, $0B, $15, $10   ; 
; 0D 
- D 0 - I - 0x008B6A 02:8B5A: 00        .byte $00, $07, $07, $04   ; 
- D 0 - I - 0x008B6E 02:8B5E: 40        .byte $40, $07, $0D, $04   ; 
- D 0 - I - 0x008B72 02:8B62: 00        .byte $00, $09, $16, $0A   ; 
; 0E 
- D 0 - I - 0x008B76 02:8B66: 40        .byte $40, $06, $04, $07   ; 
- D 0 - I - 0x008B7A 02:8B6A: 00        .byte $00, $06, $0E, $08   ; 
- D 0 - I - 0x008B7E 02:8B6E: 40        .byte $40, $07, $13, $04   ; 
; 0F 
- D 0 - I - 0x008B82 02:8B72: 00        .byte $00, $04, $04, $04   ; 
- D 0 - I - 0x008B86 02:8B76: 40        .byte $40, $04, $0E, $05   ; 
- D 0 - I - 0x008B8A 02:8B7A: 40        .byte $40, $05, $16, $07   ; 
; 10 
- D 0 - I - 0x008B8E 02:8B7E: 00        .byte $00, $03, $02, $03   ; 
- D 0 - I - 0x008B92 02:8B82: 40        .byte $40, $03, $11, $03   ; 
- D 0 - I - 0x008B96 02:8B86: 40        .byte $40, $04, $17, $05   ; 
; 11 
- D 0 - I - 0x008B9A 02:8B8A: 00        .byte $00, $02, $01, $00   ; 
- D 0 - I - 0x008B9E 02:8B8E: 40        .byte $40, $02, $12, $00   ; 
- D 0 - I - 0x008BA2 02:8B92: 40        .byte $40, $02, $1A, $00   ; 



tbl_8B96:
- D 0 - - - 0x008BA6 02:8B96: F4 B9     .word _off009_B9F4_01
- D 0 - - - 0x008BA8 02:8B98: FA B9     .word _off009_B9FA_02
- D 0 - - - 0x008BAA 02:8B9A: 00 BA     .word _off009_BA00_03
- D 0 - - - 0x008BAC 02:8B9C: 06 BA     .word _off009_BA06_04
- D 0 - - - 0x008BAE 02:8B9E: 0C BA     .word _off009_BA0C_05
- D 0 - - - 0x008BB0 02:8BA0: 12 BA     .word _off009_BA12_06
- D 0 - - - 0x008BB2 02:8BA2: 18 BA     .word _off009_BA18_07
- D 0 - - - 0x008BB4 02:8BA4: 1E BA     .word _off009_BA1E_08
- D 0 - - - 0x008BB6 02:8BA6: 24 BA     .word _off009_BA24_09
- D 0 - - - 0x008BB8 02:8BA8: 2A BA     .word _off009_BA2A_0A
- D 0 - - - 0x008BBA 02:8BAA: 30 BA     .word _off009_BA30_0B
- D 0 - - - 0x008BBC 02:8BAC: 36 BA     .word _off009_BA36_0C
- D 0 - - - 0x008BBE 02:8BAE: 3C BA     .word _off009_BA3C_0D
- D 0 - - - 0x008BC0 02:8BB0: 42 BA     .word _off009_BA42_0E
- D 0 - - - 0x008BC2 02:8BB2: 48 BA     .word _off009_BA48_0F
- D 0 - - - 0x008BC4 02:8BB4: 4E BA     .word _off009_BA4E_10
- D 0 - - - 0x008BC6 02:8BB6: 54 BA     .word _off009_BA54_11
- D 0 - - - 0x008BC8 02:8BB8: 5A BA     .word _off009_BA5A_12
- D 0 - - - 0x008BCA 02:8BBA: 60 BA     .word _off009_BA60_13
- D 0 - - - 0x008BCC 02:8BBC: 66 BA     .word _off009_BA66_14
- D 0 - - - 0x008BCE 02:8BBE: 6C BA     .word _off009_BA6C_15
- D 0 - - - 0x008BD0 02:8BC0: 72 BA     .word _off009_BA72_16
- D 0 - - - 0x008BD2 02:8BC2: 78 BA     .word _off009_BA78_17
- D 0 - - - 0x008BD4 02:8BC4: 7E BA     .word _off009_BA7E_18
- D 0 - - - 0x008BD6 02:8BC6: 84 BA     .word _off009_BA84_19
- D 0 - - - 0x008BD8 02:8BC8: 8A BA     .word _off009_BA8A_1A
- D 0 - - - 0x008BDA 02:8BCA: 90 BA     .word _off009_BA90_1B
- D 0 - - - 0x008BDC 02:8BCC: 96 BA     .word _off009_BA96_1C
- D 0 - - - 0x008BDE 02:8BCE: 9C BA     .word _off009_BA9C_1D
- D 0 - - - 0x008BE0 02:8BD0: A2 BA     .word _off009_BAA2_1E
- D 0 - - - 0x008BE2 02:8BD2: A8 BA     .word _off009_BAA8_1F



tbl_8BD4_sprites_data:
- D 0 - - - 0x008BE4 02:8BD4: AE BA     .word _off010_BAAE_00
- D 0 - - - 0x008BE6 02:8BD6: B4 BA     .word _off010_BAB4_01
- D 0 - - - 0x008BE8 02:8BD8: D8 BA     .word _off010_BAD8_02
- D 0 - - - 0x008BEA 02:8BDA: E8 BA     .word _off010_BAE8_03
- D 0 - - - 0x008BEC 02:8BDC: FA BA     .word _off010_BAFA_04
- D 0 - - - 0x008BEE 02:8BDE: 0C BB     .word _off010_BB0C_05
- D 0 - - - 0x008BF0 02:8BE0: 1E BB     .word _off010_BB1E_06
- D 0 - - - 0x008BF2 02:8BE2: 30 BB     .word _off010_BB30_07
- D 0 - - - 0x008BF4 02:8BE4: 42 BB     .word _off010_BB42_08
- D 0 - - - 0x008BF6 02:8BE6: 54 BB     .word _off010_BB54_09
- D 0 - - - 0x008BF8 02:8BE8: 64 BB     .word _off010_BB64_0A
- D 0 - - - 0x008BFA 02:8BEA: CE BC     .word _off010_BCCE_0B
- D 0 - - - 0x008BFC 02:8BEC: D5 BC     .word _off010_BCD5_0C
- D 0 - - - 0x008BFE 02:8BEE: E0 BC     .word _off010_BCE0_0D
- D 0 - - - 0x008C00 02:8BF0: EB BC     .word _off010_BCEB_0E
- D 0 - - - 0x008C02 02:8BF2: FA BC     .word _off010_BCFA_0F
- D 0 - - - 0x008C04 02:8BF4: 0D BD     .word _off010_BD0D_10
- D 0 - - - 0x008C06 02:8BF6: 14 BD     .word _off010_BD14_11
- D 0 - - - 0x008C08 02:8BF8: 1F BD     .word _off010_BD1F_12
- D 0 - - - 0x008C0A 02:8BFA: 2A BD     .word _off010_BD2A_13
- D 0 - - - 0x008C0C 02:8BFC: 39 BD     .word _off010_BD39_14
- D 0 - - - 0x008C0E 02:8BFE: 76 BB     .word _off010_BB76_15
- D 0 - - - 0x008C10 02:8C00: 8C BB     .word _off010_BB8C_16
- D 0 - - - 0x008C12 02:8C02: 9E BB     .word _off010_BB9E_17
- D 0 - - - 0x008C14 02:8C04: BE BB     .word _off010_BBBE_18
- D 0 - - - 0x008C16 02:8C06: CC BB     .word _off010_BBCC_19
- D 0 - - - 0x008C18 02:8C08: DE BB     .word _off010_BBDE_1A
- D 0 - - - 0x008C1A 02:8C0A: F0 BB     .word _off010_BBF0_1B
- D 0 - - - 0x008C1C 02:8C0C: 02 BC     .word _off010_BC02_1C
- D 0 - - - 0x008C1E 02:8C0E: 10 BC     .word _off010_BC10_1D
- D 0 - - - 0x008C20 02:8C10: 1C BC     .word _off010_BC1C_1E
- D 0 - - - 0x008C22 02:8C12: 26 BC     .word _off010_BC26_1F
- D 0 - - - 0x008C24 02:8C14: 30 BC     .word _off010_BC30_20
- D 0 - - - 0x008C26 02:8C16: 40 BC     .word _off010_BC40_21
- D 0 - - - 0x008C28 02:8C18: 52 BC     .word _off010_BC52_22
- D 0 - - - 0x008C2A 02:8C1A: 64 BC     .word _off010_BC64_23
- - - - - - 0x008C2C 02:8C1C: 76 BC     .word _off010_BC76_24
- D 0 - - - 0x008C2E 02:8C1E: 88 BC     .word _off010_BC88_25
- - - - - - 0x008C30 02:8C20: 9A BC     .word _off010_BC9A_26
- D 0 - - - 0x008C32 02:8C22: AC BC     .word _off010_BCAC_27
- D 0 - - - 0x008C34 02:8C24: BC BC     .word _off010_BCBC_28
- D 0 - - - 0x008C36 02:8C26: 4C BD     .word _off010_BD4C_29
- D 0 - - - 0x008C38 02:8C28: 54 BD     .word _off010_BD54_2A
- D 0 - - - 0x008C3A 02:8C2A: 5C BD     .word _off010_BD5C_2B
- D 0 - - - 0x008C3C 02:8C2C: 64 BD     .word _off010_BD64_2C
- D 0 - - - 0x008C3E 02:8C2E: 6C BD     .word _off010_BD6C_2D
- D 0 - - - 0x008C40 02:8C30: 76 BD     .word _off010_BD76_2E
- D 0 - - - 0x008C42 02:8C32: 80 BD     .word _off010_BD80_2F
- D 0 - - - 0x008C44 02:8C34: 8A BD     .word _off010_BD8A_30
- D 0 - - - 0x008C46 02:8C36: 94 BD     .word _off010_BD94_31
- D 0 - - - 0x008C48 02:8C38: 0A 06     .word ram_060A   ; 32
- D 0 - - - 0x008C4A 02:8C3A: 15 06     .word ram_0615   ; 33
- D 0 - - - 0x008C4C 02:8C3C: 20 06     .word ram_0620   ; 34
- - - - - - 0x008C4E 02:8C3E: 2B 06     .word ram_062B   ; 35
- - - - - - 0x008C50 02:8C40: 36 06     .word ram_0636   ; 36



loc_8C42:
; con_bsw_01_09
C D 0 - - - 0x008C52 02:8C42: A9 07     LDA #$07    ; > 07xx
C - - - - - 0x008C54 02:8C44: 85 0E     STA ram_000D_t03_data + $01
C - - - - - 0x008C56 02:8C46: A2 20     LDX #$20
C - - - - - 0x008C58 02:8C48: A5 2F     LDA ram_002F_flag
C - - - - - 0x008C5A 02:8C4A: D0 7E     BNE bra_8CCA
C - - - - - 0x008C5C 02:8C4C: AD 00 04  LDA ram_car_graphics
C - - - - - 0x008C5F 02:8C4F: 20 67 8C  JSR sub_8C67
C - - - - - 0x008C62 02:8C52: AD 01 04  LDA ram_car_graphics + $01
C - - - - - 0x008C65 02:8C55: A2 40     LDX #$40
C - - - - - 0x008C67 02:8C57: 20 67 8C  JSR sub_8C67
C - - - - - 0x008C6A 02:8C5A: AD 02 04  LDA ram_car_graphics + $02
C - - - - - 0x008C6D 02:8C5D: A2 60     LDX #$60
C - - - - - 0x008C6F 02:8C5F: 20 67 8C  JSR sub_8C67
C - - - - - 0x008C72 02:8C62: AD 03 04  LDA ram_car_graphics + $03
C - - - - - 0x008C75 02:8C65: A2 80     LDX #$80
sub_8C67:
C - - - - - 0x008C77 02:8C67: 86 0D     STX ram_000D_t03_data
C - - - - - 0x008C79 02:8C69: 0A        ASL
C - - - - - 0x008C7A 02:8C6A: A8        TAY
C - - - - - 0x008C7B 02:8C6B: B9 D7 91  LDA tbl_91D9_car_ppu_graphics - $02,Y
C - - - - - 0x008C7E 02:8C6E: 85 11     STA ram_0011_t11_data
C - - - - - 0x008C80 02:8C70: B9 D8 91  LDA tbl_91D9_car_ppu_graphics - $01,Y
C - - - - - 0x008C83 02:8C73: 85 12     STA ram_0011_t11_data + $01
C - - - - - 0x008C85 02:8C75: A0 1F     LDY #$1F
bra_8C77_loop:
C - - - - - 0x008C87 02:8C77: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008C89 02:8C79: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008C8B 02:8C7B: 88        DEY
C - - - - - 0x008C8C 02:8C7C: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008C8E 02:8C7E: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008C90 02:8C80: 88        DEY
C - - - - - 0x008C91 02:8C81: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008C93 02:8C83: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008C95 02:8C85: 88        DEY
C - - - - - 0x008C96 02:8C86: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008C98 02:8C88: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008C9A 02:8C8A: 88        DEY
C - - - - - 0x008C9B 02:8C8B: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008C9D 02:8C8D: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008C9F 02:8C8F: 88        DEY
C - - - - - 0x008CA0 02:8C90: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CA2 02:8C92: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CA4 02:8C94: 88        DEY
C - - - - - 0x008CA5 02:8C95: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CA7 02:8C97: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CA9 02:8C99: 88        DEY
C - - - - - 0x008CAA 02:8C9A: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CAC 02:8C9C: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CAE 02:8C9E: 88        DEY
C - - - - - 0x008CAF 02:8C9F: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CB1 02:8CA1: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CB3 02:8CA3: 88        DEY
C - - - - - 0x008CB4 02:8CA4: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CB6 02:8CA6: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CB8 02:8CA8: 88        DEY
C - - - - - 0x008CB9 02:8CA9: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CBB 02:8CAB: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CBD 02:8CAD: 88        DEY
C - - - - - 0x008CBE 02:8CAE: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CC0 02:8CB0: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CC2 02:8CB2: 88        DEY
C - - - - - 0x008CC3 02:8CB3: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CC5 02:8CB5: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CC7 02:8CB7: 88        DEY
C - - - - - 0x008CC8 02:8CB8: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CCA 02:8CBA: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CCC 02:8CBC: 88        DEY
C - - - - - 0x008CCD 02:8CBD: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CCF 02:8CBF: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CD1 02:8CC1: 88        DEY
C - - - - - 0x008CD2 02:8CC2: B1 11     LDA (ram_0011_t11_data),Y
C - - - - - 0x008CD4 02:8CC4: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CD6 02:8CC6: 88        DEY
C - - - - - 0x008CD7 02:8CC7: 10 AE     BPL bra_8C77_loop
C - - - - - 0x008CD9 02:8CC9: 60        RTS
bra_8CCA:
C - - - - - 0x008CDA 02:8CCA: AD 04 04  LDA ram_car_graphics + $04
C - - - - - 0x008CDD 02:8CCD: 86 0D     STX ram_000D_t03_data
C - - - - - 0x008CDF 02:8CCF: 0A        ASL
C - - - - - 0x008CE0 02:8CD0: A8        TAY
C - - - - - 0x008CE1 02:8CD1: B9 D7 91  LDA tbl_91D9_car_ppu_graphics - $02,Y
C - - - - - 0x008CE4 02:8CD4: 85 11     STA ram_0011_t12_data
C - - - - - 0x008CE6 02:8CD6: 18        CLC
C - - - - - 0x008CE7 02:8CD7: 69 08     ADC #< $0008
C - - - - - 0x008CE9 02:8CD9: 85 13     STA ram_0013_t01_data
C - - - - - 0x008CEB 02:8CDB: B9 D8 91  LDA tbl_91D9_car_ppu_graphics - $01,Y
C - - - - - 0x008CEE 02:8CDE: 85 12     STA ram_0011_t12_data + $01
C - - - - - 0x008CF0 02:8CE0: 69 00     ADC #> $0008
C - - - - - 0x008CF2 02:8CE2: 85 14     STA ram_0013_t01_data + $01
C - - - - - 0x008CF4 02:8CE4: A0 00     LDY #$00
bra_8CE6_loop:
C - - - - - 0x008CF6 02:8CE6: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008CF8 02:8CE8: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008CFA 02:8CEA: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008CFC 02:8CEC: C8        INY
C - - - - - 0x008CFD 02:8CED: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008CFF 02:8CEF: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008D01 02:8CF1: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D03 02:8CF3: C8        INY
C - - - - - 0x008D04 02:8CF4: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D06 02:8CF6: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008D08 02:8CF8: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D0A 02:8CFA: C8        INY
C - - - - - 0x008D0B 02:8CFB: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D0D 02:8CFD: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008D0F 02:8CFF: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D11 02:8D01: C8        INY
C - - - - - 0x008D12 02:8D02: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D14 02:8D04: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008D16 02:8D06: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D18 02:8D08: C8        INY
C - - - - - 0x008D19 02:8D09: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D1B 02:8D0B: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008D1D 02:8D0D: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D1F 02:8D0F: C8        INY
C - - - - - 0x008D20 02:8D10: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D22 02:8D12: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008D24 02:8D14: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D26 02:8D16: C8        INY
C - - - - - 0x008D27 02:8D17: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D29 02:8D19: 51 13     EOR (ram_0013_t01_data),Y
C - - - - - 0x008D2B 02:8D1B: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D2D 02:8D1D: C8        INY
C - - - - - 0x008D2E 02:8D1E: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D30 02:8D20: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D32 02:8D22: C8        INY
C - - - - - 0x008D33 02:8D23: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D35 02:8D25: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D37 02:8D27: C8        INY
C - - - - - 0x008D38 02:8D28: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D3A 02:8D2A: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D3C 02:8D2C: C8        INY
C - - - - - 0x008D3D 02:8D2D: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D3F 02:8D2F: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D41 02:8D31: C8        INY
C - - - - - 0x008D42 02:8D32: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D44 02:8D34: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D46 02:8D36: C8        INY
C - - - - - 0x008D47 02:8D37: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D49 02:8D39: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D4B 02:8D3B: C8        INY
C - - - - - 0x008D4C 02:8D3C: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D4E 02:8D3E: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D50 02:8D40: C8        INY
C - - - - - 0x008D51 02:8D41: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x008D53 02:8D43: 91 0D     STA (ram_000D_t03_data),Y
C - - - - - 0x008D55 02:8D45: C8        INY
C - - - - - 0x008D56 02:8D46: C0 20     CPY #$20
C - - - - - 0x008D58 02:8D48: D0 9C     BNE bra_8CE6_loop
loc_8D4A:
; con_bsw_01_06
C D 0 - - - 0x008D5A 02:8D4A: A5 30     LDA ram_0030
C - - - - - 0x008D5C 02:8D4C: 29 03     AND #$03
C - - - - - 0x008D5E 02:8D4E: AA        TAX
C - - - - - 0x008D5F 02:8D4F: B5 DD     LDA ram_bot_flag,X
C - - - - - 0x008D61 02:8D51: F0 01     BEQ bra_8D54_human
; if bot
C - - - - - 0x008D63 02:8D53: 60        RTS
bra_8D54_human:
C - - - - - 0x008D64 02:8D54: 20 2E 8E  JSR sub_8E2E
C - - - - - 0x008D67 02:8D57: B5 CC     LDA ram_script_handler,X
C - - - - - 0x008D69 02:8D59: 29 03     AND #$03
C - - - - - 0x008D6B 02:8D5B: C9 02     CMP #$02
C - - - - - 0x008D6D 02:8D5D: B0 08     BCS bra_8D67
C - - - - - 0x008D6F 02:8D5F: AD 97 06  LDA ram_0697
C - - - - - 0x008D72 02:8D62: D0 03     BNE bra_8D67
C - - - - - 0x008D74 02:8D64: 20 B4 8E  JSR sub_8EB4_fuel_consumption
bra_8D67:
C - - - - - 0x008D77 02:8D67: BD 41 05  LDA ram_speedo_hi,X
C - - - - - 0x008D7A 02:8D6A: 0A        ASL
C - - - - - 0x008D7B 02:8D6B: A8        TAY
C - - - - - 0x008D7C 02:8D6C: B9 F3 8E  LDA tbl_8EF3_speedo_hi_tiles,Y
C - - - - - 0x008D7F 02:8D6F: 85 11     STA ram_0011_t13_data
C - - - - - 0x008D81 02:8D71: B9 F4 8E  LDA tbl_8EF3_speedo_hi_tiles + $01,Y
C - - - - - 0x008D84 02:8D74: 85 12     STA ram_0011_t13_data + $01
C - - - - - 0x008D86 02:8D76: BD 3D 05  LDA ram_speedo_lo,X
C - - - - - 0x008D89 02:8D79: 0A        ASL
C - - - - - 0x008D8A 02:8D7A: A8        TAY
C - - - - - 0x008D8B 02:8D7B: B9 B9 8F  LDA tbl_8FB9_speedo_lo_tiles,Y
C - - - - - 0x008D8E 02:8D7E: 85 0D     STA ram_000D_t03_data
C - - - - - 0x008D90 02:8D80: 38        SEC
C - - - - - 0x008D91 02:8D81: E9 08     SBC #< $0008
C - - - - - 0x008D93 02:8D83: 85 0F     STA ram_000F_t01_data
C - - - - - 0x008D95 02:8D85: B9 BA 8F  LDA tbl_8FB9_speedo_lo_tiles + $01,Y
C - - - - - 0x008D98 02:8D88: 85 0E     STA ram_000D_t03_data + $01
C - - - - - 0x008D9A 02:8D8A: E9 00     SBC #> $0008
C - - - - - 0x008D9C 02:8D8C: 85 10     STA ram_000F_t01_data + $01
C - - - - - 0x008D9E 02:8D8E: A0 00     LDY #$00
loc_8D90_loop:
C D 0 - - - 0x008DA0 02:8D90: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DA2 02:8D92: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DA4 02:8D94: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DA7 02:8D97: C8        INY
C - - - - - 0x008DA8 02:8D98: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DAA 02:8D9A: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DAC 02:8D9C: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DAF 02:8D9F: C8        INY
C - - - - - 0x008DB0 02:8DA0: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DB2 02:8DA2: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DB4 02:8DA4: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DB7 02:8DA7: C8        INY
C - - - - - 0x008DB8 02:8DA8: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DBA 02:8DAA: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DBC 02:8DAC: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DBF 02:8DAF: C8        INY
C - - - - - 0x008DC0 02:8DB0: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DC2 02:8DB2: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DC4 02:8DB4: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DC7 02:8DB7: C8        INY
C - - - - - 0x008DC8 02:8DB8: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DCA 02:8DBA: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DCC 02:8DBC: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DCF 02:8DBF: C8        INY
C - - - - - 0x008DD0 02:8DC0: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DD2 02:8DC2: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DD4 02:8DC4: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DD7 02:8DC7: C8        INY
C - - - - - 0x008DD8 02:8DC8: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DDA 02:8DCA: 11 0D     ORA (ram_000D_t03_data),Y
C - - - - - 0x008DDC 02:8DCC: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DDF 02:8DCF: C8        INY
C - - - - - 0x008DE0 02:8DD0: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DE2 02:8DD2: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008DE4 02:8DD4: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DE7 02:8DD7: C8        INY
C - - - - - 0x008DE8 02:8DD8: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DEA 02:8DDA: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008DEC 02:8DDC: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DEF 02:8DDF: C8        INY
C - - - - - 0x008DF0 02:8DE0: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DF2 02:8DE2: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008DF4 02:8DE4: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DF7 02:8DE7: C8        INY
C - - - - - 0x008DF8 02:8DE8: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008DFA 02:8DEA: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008DFC 02:8DEC: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008DFF 02:8DEF: C8        INY
C - - - - - 0x008E00 02:8DF0: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008E02 02:8DF2: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008E04 02:8DF4: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008E07 02:8DF7: C8        INY
C - - - - - 0x008E08 02:8DF8: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008E0A 02:8DFA: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008E0C 02:8DFC: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008E0F 02:8DFF: C8        INY
C - - - - - 0x008E10 02:8E00: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008E12 02:8E02: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008E14 02:8E04: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008E17 02:8E07: C8        INY
C - - - - - 0x008E18 02:8E08: B1 11     LDA (ram_0011_t13_data),Y
C - - - - - 0x008E1A 02:8E0A: 11 0F     ORA (ram_000F_t01_data),Y
C - - - - - 0x008E1C 02:8E0C: 99 A0 07  STA ram_ppu_buffer + $A0,Y
C - - - - - 0x008E1F 02:8E0F: A5 0D     LDA ram_000D_t03_data
C - - - - - 0x008E21 02:8E11: 38        SEC
C - - - - - 0x008E22 02:8E12: E9 08     SBC #$08
C - - - - - 0x008E24 02:8E14: 85 0D     STA ram_000D_t03_data
C - - - - - 0x008E26 02:8E16: B0 02     BCS bra_8E1A_not_underflow
C - - - - - 0x008E28 02:8E18: C6 0E     DEC ram_000D_t03_data + $01
bra_8E1A_not_underflow:
C - - - - - 0x008E2A 02:8E1A: A5 0F     LDA ram_000F_t01_data
C - - - - - 0x008E2C 02:8E1C: 38        SEC
C - - - - - 0x008E2D 02:8E1D: E9 08     SBC #$08
C - - - - - 0x008E2F 02:8E1F: 85 0F     STA ram_000F_t01_data
C - - - - - 0x008E31 02:8E21: B0 02     BCS bra_8E25_not_underflow
C - - - - - 0x008E33 02:8E23: C6 10     DEC ram_000F_t01_data + $01
bra_8E25_not_underflow:
C - - - - - 0x008E35 02:8E25: C8        INY
C - - - - - 0x008E36 02:8E26: C0 40     CPY #$40
C - - - - - 0x008E38 02:8E28: F0 03     BEQ bra_8E2D_RTS
C - - - - - 0x008E3A 02:8E2A: 4C 90 8D  JMP loc_8D90_loop
bra_8E2D_RTS:
C - - - - - 0x008E3D 02:8E2D: 60        RTS



loc_8E2E:
; con_bsw_01_21
sub_8E2E:
C - - - - - 0x008E3E 02:8E2E: BD 0D 05  LDA ram_upgrade_engine,X
C - - - - - 0x008E41 02:8E31: 0A        ASL
C - - - - - 0x008E42 02:8E32: 7D 0D 05  ADC ram_upgrade_engine,X
C - - - - - 0x008E45 02:8E35: 85 1C     STA ram_001C_temp
C - - - - - 0x008E47 02:8E37: 7D 41 05  ADC ram_speedo_hi,X
C - - - - - 0x008E4A 02:8E3A: A8        TAY
C - - - - - 0x008E4B 02:8E3B: B9 96 8E  LDA tbl_8E96,Y
C - - - - - 0x008E4E 02:8E3E: 85 15     STA ram_0015_temp
C - - - - - 0x008E50 02:8E40: B5 E3     LDA ram_rpm,X
C - - - - - 0x008E52 02:8E42: 18        CLC
C - - - - - 0x008E53 02:8E43: 75 ED     ADC ram_00ED_car,X
C - - - - - 0x008E55 02:8E45: 90 02     BCC bra_8E49_not_overflow
- - - - - - 0x008E57 02:8E47: A9 F8     LDA #$F8
bra_8E49_not_overflow:
C - - - - - 0x008E59 02:8E49: 85 16     STA ram_0016_temp
C - - - - - 0x008E5B 02:8E4B: 20 19 96  JSR sub_9619_multiply_2_values
C - - - - - 0x008E5E 02:8E4E: A5 15     LDA ram_0015_temp
C - - - - - 0x008E60 02:8E50: C9 05     CMP #$05
C - - - - - 0x008E62 02:8E52: 90 12     BCC bra_8E66
C - - - - - 0x008E64 02:8E54: C9 0A     CMP #$0A
C - - - - - 0x008E66 02:8E56: 90 32     BCC bra_8E8A
; 0A+
C - - - - - 0x008E68 02:8E58: BD 41 05  LDA ram_speedo_hi,X
C - - - - - 0x008E6B 02:8E5B: 18        CLC
C - - - - - 0x008E6C 02:8E5C: 69 01     ADC #$01
C - - - - - 0x008E6E 02:8E5E: C9 03     CMP #$03
C - - - - - 0x008E70 02:8E60: 90 0E     BCC bra_8E70
C - - - - - 0x008E72 02:8E62: A9 02     LDA #$02
C - - - - - 0x008E74 02:8E64: D0 0A     BNE bra_8E70    ; jmp
bra_8E66:
; 00-04
C - - - - - 0x008E76 02:8E66: BD 41 05  LDA ram_speedo_hi,X
C - - - - - 0x008E79 02:8E69: 38        SEC
C - - - - - 0x008E7A 02:8E6A: E9 01     SBC #$01
C - - - - - 0x008E7C 02:8E6C: B0 02     BCS bra_8E70    ; if not underflow
C - - - - - 0x008E7E 02:8E6E: A9 00     LDA #$00
bra_8E70:
C - - - - - 0x008E80 02:8E70: 9D 41 05  STA ram_speedo_hi,X
C - - - - - 0x008E83 02:8E73: 18        CLC
C - - - - - 0x008E84 02:8E74: 65 1C     ADC ram_001C_temp
C - - - - - 0x008E86 02:8E76: A8        TAY
C - - - - - 0x008E87 02:8E77: B9 96 8E  LDA tbl_8E96,Y
C - - - - - 0x008E8A 02:8E7A: 85 15     STA ram_0015_temp
C - - - - - 0x008E8C 02:8E7C: B5 E3     LDA ram_rpm,X
C - - - - - 0x008E8E 02:8E7E: 18        CLC
C - - - - - 0x008E8F 02:8E7F: 75 ED     ADC ram_00ED_car,X
C - - - - - 0x008E91 02:8E81: 90 02     BCC bra_8E85_not_overflow
- - - - - - 0x008E93 02:8E83: A9 F8     LDA #$F8
bra_8E85_not_overflow:
C - - - - - 0x008E95 02:8E85: 85 16     STA ram_0016_temp
C - - - - - 0x008E97 02:8E87: 20 19 96  JSR sub_9619_multiply_2_values
bra_8E8A:
; 05-09
C - - - - - 0x008E9A 02:8E8A: A5 15     LDA ram_0015_temp
C - - - - - 0x008E9C 02:8E8C: C9 10     CMP #$10
C - - - - - 0x008E9E 02:8E8E: 90 02     BCC bra_8E92_not_overflow
C - - - - - 0x008EA0 02:8E90: A9 0F     LDA #$0F
bra_8E92_not_overflow:
C - - - - - 0x008EA2 02:8E92: 9D 3D 05  STA ram_speedo_lo,X
C - - - - - 0x008EA5 02:8E95: 60        RTS



tbl_8E96:
;                                              +-------------- 
;                                              |    +--------- 
;                                              |    |    +---- 
;                                              |    |    |
- D 0 - - - 0x008EA6 02:8E96: 39        .byte $39, $21, $18   ; 00 
- - - - - - 0x008EA9 02:8E99: 38        .byte $38, $21, $17   ; 01 
- D 0 - - - 0x008EAC 02:8E9C: 36        .byte $36, $20, $16   ; 02 
- - - - - - 0x008EAF 02:8E9F: 35        .byte $35, $20, $15   ; 03 
- - - - - - 0x008EB2 02:8EA2: 34        .byte $34, $1F, $14   ; 04 
- - - - - - 0x008EB5 02:8EA5: 33        .byte $33, $1F, $13   ; 05 
- - - - - - 0x008EB8 02:8EA8: 32        .byte $32, $1E, $13   ; 06 
- - - - - - 0x008EBB 02:8EAB: 31        .byte $31, $1E, $12   ; 07 
- - - - - - 0x008EBE 02:8EAE: 30        .byte $30, $1D, $12   ; 08 
- D 0 - - - 0x008EC1 02:8EB1: 2F        .byte $2F, $1D, $11   ; 09 



loc_8EB4_fuel_consumption:
; con_bsw_01_24
sub_8EB4_fuel_consumption:
; bzk bug? it doesn't take speedo_hi into account
C - - - - - 0x008EC4 02:8EB4: BC 08 05  LDY ram_upgrade_mpg,X
C - - - - - 0x008EC7 02:8EB7: B9 E9 8E  LDA tbl_8EE9,Y
C - - - - - 0x008ECA 02:8EBA: 85 15     STA ram_0015_temp
C - - - - - 0x008ECC 02:8EBC: BD 3D 05  LDA ram_speedo_lo,X
C - - - - - 0x008ECF 02:8EBF: D0 02     BNE bra_8EC3
; 00
C - - - - - 0x008ED1 02:8EC1: A9 01     LDA #$01
bra_8EC3:
C - - - - - 0x008ED3 02:8EC3: 0A        ASL
C - - - - - 0x008ED4 02:8EC4: 0A        ASL
C - - - - - 0x008ED5 02:8EC5: 0A        ASL
C - - - - - 0x008ED6 02:8EC6: 85 16     STA ram_0016_temp
C - - - - - 0x008ED8 02:8EC8: 20 19 96  JSR sub_9619_multiply_2_values
C - - - - - 0x008EDB 02:8ECB: BD 1F 05  LDA ram_fuel_fr,X
C - - - - - 0x008EDE 02:8ECE: 38        SEC
C - - - - - 0x008EDF 02:8ECF: E5 16     SBC ram_0016_temp
C - - - - - 0x008EE1 02:8ED1: 9D 1F 05  STA ram_fuel_fr,X
C - - - - - 0x008EE4 02:8ED4: BD 24 05  LDA ram_fuel_lo,X
C - - - - - 0x008EE7 02:8ED7: E5 15     SBC ram_0015_temp
C - - - - - 0x008EE9 02:8ED9: 9D 24 05  STA ram_fuel_lo,X
C - - - - - 0x008EEC 02:8EDC: BD 29 05  LDA ram_fuel_hi,X
C - - - - - 0x008EEF 02:8EDF: E9 00     SBC #$00
C - - - - - 0x008EF1 02:8EE1: B0 02     BCS bra_8EE5_not_underflow
C - - - - - 0x008EF3 02:8EE3: A9 00     LDA #$00
bra_8EE5_not_underflow:
C - - - - - 0x008EF5 02:8EE5: 9D 29 05  STA ram_fuel_hi,X
C - - - - - 0x008EF8 02:8EE8: 60        RTS



tbl_8EE9:
- D 0 - - - 0x008EF9 02:8EE9: 97        .byte $97   ; 00 
- D 0 - - - 0x008EFA 02:8EEA: 8C        .byte $8C   ; 01 
- D 0 - - - 0x008EFB 02:8EEB: 82        .byte $82   ; 02 
- D 0 - - - 0x008EFC 02:8EEC: 7A        .byte $7A   ; 03 
- - - - - - 0x008EFD 02:8EED: 72        .byte $72   ; 04 
- - - - - - 0x008EFE 02:8EEE: 6C        .byte $6C   ; 05 
- - - - - - 0x008EFF 02:8EEF: 66        .byte $66   ; 06 
- - - - - - 0x008F00 02:8EF0: 61        .byte $61   ; 07 
- - - - - - 0x008F01 02:8EF1: 5C        .byte $5C   ; 08 
- D 0 - - - 0x008F02 02:8EF2: 56        .byte $56   ; 09 



tbl_8EF3_speedo_hi_tiles:
- D 0 - - - 0x008F03 02:8EF3: F9 8E     .word off_8EF9_00
- D 0 - - - 0x008F05 02:8EF5: 39 8F     .word off_8F39_01
- D 0 - - - 0x008F07 02:8EF7: 79 8F     .word off_8F79_02



off_8EF9_00:
- D 0 - I - 0x008F09 02:8EF9: 00        .byte $00, $80, $80, $80, $80, $80, $80, $80, $81, $43, $21, $01, $01, $01, $01, $01   ; 
- D 0 - I - 0x008F19 02:8F09: 00        .byte $00, $00, $00, $00, $00, $00, $02, $02, $81, $83, $85, $81, $81, $81, $85, $85   ; 
- D 0 - I - 0x008F29 02:8F19: 80        .byte $80, $80, $80, $80, $80, $99, $D5, $D9, $00, $60, $00, $00, $00, $19, $15, $19   ; 
- D 0 - I - 0x008F39 02:8F29: 02        .byte $02, $02, $02, $02, $00, $A8, $B8, $28, $05, $05, $05, $05, $01, $A9, $B9, $29   ; 



off_8F39_01:
- D 0 - I - 0x008F49 02:8F39: 00        .byte $00, $80, $80, $80, $80, $80, $80, $80, $83, $46, $20, $00, $01, $03, $06, $07   ; 
- D 0 - I - 0x008F59 02:8F49: 00        .byte $00, $00, $00, $00, $00, $00, $02, $02, $C1, $63, $65, $C1, $81, $01, $05, $E5   ; 
- D 0 - I - 0x008F69 02:8F59: 80        .byte $80, $80, $80, $80, $80, $99, $D5, $D9, $00, $60, $00, $00, $00, $19, $15, $19   ; 
- D 0 - I - 0x008F79 02:8F69: 02        .byte $02, $02, $02, $02, $00, $A8, $B8, $28, $05, $05, $05, $05, $01, $A9, $B9, $29   ; 



off_8F79_02:
- D 0 - I - 0x008F89 02:8F79: 00        .byte $00, $80, $80, $80, $80, $80, $80, $80, $83, $46, $20, $01, $00, $00, $06, $03   ; 
- D 0 - I - 0x008F99 02:8F89: 00        .byte $00, $00, $00, $00, $00, $00, $02, $02, $C1, $63, $65, $C1, $61, $61, $65, $C5   ; 
- D 0 - I - 0x008FA9 02:8F99: 80        .byte $80, $80, $80, $80, $80, $99, $D5, $D9, $00, $60, $00, $00, $00, $19, $15, $19   ; 
- D 0 - I - 0x008FB9 02:8FA9: 02        .byte $02, $02, $02, $02, $00, $A8, $B8, $28, $05, $05, $05, $05, $01, $A9, $B9, $29   ; 



tbl_8FB9_speedo_lo_tiles:
- D 0 - - - 0x008FC9 02:8FB9: D9 8F     .word _off017_8FD9_00
- D 0 - - - 0x008FCB 02:8FBB: F9 8F     .word _off017_8FF9_01
- D 0 - - - 0x008FCD 02:8FBD: 19 90     .word _off017_9019_02
- D 0 - - - 0x008FCF 02:8FBF: 39 90     .word _off017_9039_03
- D 0 - - - 0x008FD1 02:8FC1: 59 90     .word _off017_9059_04
- D 0 - - - 0x008FD3 02:8FC3: 79 90     .word _off017_9079_05
- D 0 - - - 0x008FD5 02:8FC5: 99 90     .word _off017_9099_06
- D 0 - - - 0x008FD7 02:8FC7: B9 90     .word _off017_90B9_07
- D 0 - - - 0x008FD9 02:8FC9: D9 90     .word _off017_90D9_08
- D 0 - - - 0x008FDB 02:8FCB: F9 90     .word _off017_90F9_09
- D 0 - - - 0x008FDD 02:8FCD: 19 91     .word _off017_9119_0A
- D 0 - - - 0x008FDF 02:8FCF: 39 91     .word _off017_9139_0B
- D 0 - - - 0x008FE1 02:8FD1: 59 91     .word _off017_9159_0C
- D 0 - - - 0x008FE3 02:8FD3: 79 91     .word _off017_9179_0D
- D 0 - - - 0x008FE5 02:8FD5: 99 91     .word _off017_9199_0E
- D 0 - - - 0x008FE7 02:8FD7: B9 91     .word _off017_91B9_0F



_off017_8FD9_00:
- D 0 - I - 0x008FE9 02:8FD9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x008FF1 02:8FE1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x008FF9 02:8FE9: 01        .byte $01, $03, $07, $0C, $18, $30, $00, $00   ; 
- D 0 - I - 0x009001 02:8FF1: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_8FF9_01:
- D 0 - I - 0x009009 02:8FF9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009011 02:9001: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009019 02:9009: 01        .byte $01, $07, $0E, $18, $20, $00, $00, $00   ; 
- D 0 - I - 0x009021 02:9011: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_9019_02:
- D 0 - I - 0x009029 02:9019: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009031 02:9021: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009039 02:9029: 03        .byte $03, $0F, $3C, $60, $00, $00, $00, $00   ; 
- D 0 - I - 0x009041 02:9031: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_9039_03:
- D 0 - I - 0x009049 02:9039: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009051 02:9041: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009059 02:9049: 0F        .byte $0F, $7F, $03, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009061 02:9051: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_9059_04:
- D 0 - I - 0x009069 02:9059: 00        .byte $00, $00, $00, $00, $00, $00, $00, $7C   ; 
- D 0 - I - 0x009071 02:9061: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009079 02:9069: 1F        .byte $1F, $03, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009081 02:9071: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_9079_05:
- D 0 - I - 0x009089 02:9079: 00        .byte $00, $00, $00, $00, $00, $60, $38, $1E   ; 
- D 0 - I - 0x009091 02:9081: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009099 02:9089: 07        .byte $07, $03, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0090A1 02:9091: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_9099_06:
- D 0 - I - 0x0090A9 02:9099: 00        .byte $00, $00, $00, $10, $08, $0C, $06, $03   ; 
- D 0 - I - 0x0090B1 02:90A1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0090B9 02:90A9: 03        .byte $03, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0090C1 02:90B1: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_90B9_07:
- D 0 - I - 0x0090C9 02:90B9: 00        .byte $00, $00, $02, $02, $02, $03, $03, $01   ; 
- D 0 - I - 0x0090D1 02:90C1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0090D9 02:90C9: 01        .byte $01, $01, $01, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0090E1 02:90D1: 80        .byte $80, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_90D9_08:
- D 0 - I - 0x0090E9 02:90D9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0090F1 02:90E1: 00        .byte $00, $00, $40, $40, $40, $C0, $C0, $80   ; 
- D 0 - I - 0x0090F9 02:90E9: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009101 02:90F1: 80        .byte $80, $80, $80, $00, $00, $00, $00, $00   ; 

_off017_90F9_09:
- D 0 - I - 0x009109 02:90F9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009111 02:9101: 00        .byte $00, $00, $00, $08, $10, $30, $60, $C0   ; 
- D 0 - I - 0x009119 02:9109: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009121 02:9111: C0        .byte $C0, $80, $00, $00, $00, $00, $00, $00   ; 

_off017_9119_0A:
- D 0 - I - 0x009129 02:9119: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009131 02:9121: 00        .byte $00, $00, $00, $00, $00, $06, $1C, $78   ; 
- D 0 - I - 0x009139 02:9129: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009141 02:9131: E0        .byte $E0, $C0, $00, $00, $00, $00, $00, $00   ; 

_off017_9139_0B:
- D 0 - I - 0x009149 02:9139: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009151 02:9141: 00        .byte $00, $00, $00, $00, $00, $00, $00, $3E   ; 
- D 0 - I - 0x009159 02:9149: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009161 02:9151: F8        .byte $F8, $C0, $00, $00, $00, $00, $00, $00   ; 

_off017_9159_0C:
- D 0 - I - 0x009169 02:9159: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009171 02:9161: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009179 02:9169: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009181 02:9171: F0        .byte $F0, $FE, $C0, $00, $00, $00, $00, $00   ; 

_off017_9179_0D:
- D 0 - I - 0x009189 02:9179: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009191 02:9181: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009199 02:9189: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0091A1 02:9191: C0        .byte $C0, $F0, $3C, $06, $00, $00, $00, $00   ; 

_off017_9199_0E:
- D 0 - I - 0x0091A9 02:9199: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0091B1 02:91A1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0091B9 02:91A9: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0091C1 02:91B1: 80        .byte $80, $E0, $70, $18, $04, $00, $00, $00   ; 

_off017_91B9_0F:
- D 0 - I - 0x0091C9 02:91B9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0091D1 02:91C1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0091D9 02:91C9: 01        .byte $01, $01, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0091E1 02:91D1: 80        .byte $80, $C0, $E0, $30, $18, $0C, $00, $00   ; 



tbl_91D9_car_ppu_graphics:
- D 0 - - - 0x0091E9 02:91D9: 19 92     .word _off018_9219_01
- D 0 - - - 0x0091EB 02:91DB: 39 92     .word _off018_9239_02
- D 0 - - - 0x0091ED 02:91DD: 59 92     .word _off018_9259_03
- D 0 - - - 0x0091EF 02:91DF: 79 92     .word _off018_9279_04
- D 0 - - - 0x0091F1 02:91E1: 99 92     .word _off018_9299_05
- D 0 - - - 0x0091F3 02:91E3: B9 92     .word _off018_92B9_06
- D 0 - - - 0x0091F5 02:91E5: D9 92     .word _off018_92D9_07
- D 0 - - - 0x0091F7 02:91E7: F9 92     .word _off018_92F9_08
- D 0 - - - 0x0091F9 02:91E9: 19 93     .word _off018_9319_09
- D 0 - - - 0x0091FB 02:91EB: 39 93     .word _off018_9339_0A
- D 0 - - - 0x0091FD 02:91ED: 59 93     .word _off018_9359_0B
- D 0 - - - 0x0091FF 02:91EF: 79 93     .word _off018_9379_0C
- D 0 - - - 0x009201 02:91F1: 99 93     .word _off018_9399_0D
- D 0 - - - 0x009203 02:91F3: B9 93     .word _off018_93B9_0E
- D 0 - - - 0x009205 02:91F5: D9 93     .word _off018_93D9_0F
- D 0 - - - 0x009207 02:91F7: F9 93     .word _off018_93F9_10
- D 0 - - - 0x009209 02:91F9: 19 94     .word _off018_9419_11
- D 0 - - - 0x00920B 02:91FB: 39 94     .word _off018_9439_12
- D 0 - - - 0x00920D 02:91FD: 59 94     .word _off018_9459_13
- D 0 - - - 0x00920F 02:91FF: 79 94     .word _off018_9479_14
- D 0 - - - 0x009211 02:9201: 99 94     .word _off018_9499_15
- D 0 - - - 0x009213 02:9203: B9 94     .word _off018_94B9_16
- D 0 - - - 0x009215 02:9205: D9 94     .word _off018_94D9_17
- D 0 - - - 0x009217 02:9207: F9 94     .word _off018_94F9_18
- D 0 - - - 0x009219 02:9209: 19 95     .word _off018_9519_19
- D 0 - - - 0x00921B 02:920B: 39 95     .word _off018_9539_1A
- D 0 - - - 0x00921D 02:920D: 59 95     .word _off018_9559_1B
- D 0 - - - 0x00921F 02:920F: 79 95     .word _off018_9579_1C
- D 0 - - - 0x009221 02:9211: 99 95     .word _off018_9599_1D
- D 0 - - - 0x009223 02:9213: B9 95     .word _off018_95B9_1E
- D 0 - - - 0x009225 02:9215: D9 95     .word _off018_95D9_1F
- D 0 - - - 0x009227 02:9217: F9 95     .word _off018_95F9_20



_off018_9219_01:
- D 0 - I - 0x009229 02:9219: 00        .byte $00, $0E, $1F, $02, $30, $7C, $FB, $30, $00, $00, $25, $7F, $4F, $83, $20, $00   ; 
- D 0 - I - 0x009239 02:9229: 0D        .byte $0D, $11, $C2, $04, $34, $78, $F8, $70, $03, $0F, $FE, $FC, $CC, $80, $20, $00   ; 

_off018_9239_02:
- D 0 - I - 0x009249 02:9239: 00        .byte $00, $1D, $3A, $00, $18, $3C, $7F, $18, $00, $01, $4F, $7F, $E7, $C3, $90, $00   ; 
- D 0 - I - 0x009259 02:9249: 19        .byte $19, $31, $C2, $02, $1A, $3C, $7C, $DC, $03, $0F, $FE, $FE, $E6, $C0, $88, $00   ; 

_off018_9259_03:
- D 0 - I - 0x009269 02:9259: 00        .byte $00, $3B, $78, $60, $00, $1F, $3C, $18, $00, $03, $17, $9F, $FF, $60, $48, $00   ; 
- D 0 - I - 0x009279 02:9269: 3A        .byte $3A, $3A, $C1, $01, $0D, $1E, $3E, $EE, $06, $16, $FF, $FF, $F3, $E0, $C4, $00   ; 

_off018_9279_04:
- D 0 - I - 0x009289 02:9279: 03        .byte $03, $34, $70, $C0, $08, $1F, $3C, $1C, $03, $07, $2F, $3F, $F7, $E0, $48, $00   ; 
- D 0 - I - 0x009299 02:9289: 34        .byte $34, $72, $82, $02, $0C, $1C, $3C, $D8, $0C, $2E, $FE, $FE, $F0, $E0, $C8, $00   ; 

_off018_9299_05:
- D 0 - I - 0x0092A9 02:9299: 01        .byte $01, $02, $34, $70, $60, $0F, $1E, $1E, $01, $03, $07, $2F, $9F, $F0, $64, $20   ; 
- D 0 - I - 0x0092B9 02:92A9: 34        .byte $34, $72, $41, $82, $0E, $0E, $1E, $70, $0C, $2E, $3F, $FE, $F0, $F4, $E0, $80   ; 

_off018_92B9_06:
- D 0 - I - 0x0092C9 02:92B9: 02        .byte $02, $04, $38, $70, $61, $0F, $0E, $0E, $03, $07, $0F, $2F, $9E, $F0, $74, $20   ; 
- D 0 - I - 0x0092D9 02:92C9: 04        .byte $04, $72, $61, $C0, $07, $0F, $0F, $18, $0C, $0E, $3F, $FE, $F8, $F2, $F0, $E0   ; 

_off018_92D9_07:
- D 0 - I - 0x0092E9 02:92D9: 04        .byte $04, $08, $70, $E0, $C7, $8F, $07, $00, $07, $0F, $0F, $5F, $38, $72, $F8, $70   ; 
- D 0 - I - 0x0092F9 02:92E9: 18        .byte $18, $66, $E1, $80, $87, $07, $0F, $16, $18, $1E, $5F, $7C, $F8, $FA, $F0, $E0   ; 

_off018_92F9_08:
- D 0 - I - 0x009309 02:92F9: 02        .byte $02, $04, $00, $E0, $E3, $07, $07, $03, $07, $0F, $0F, $1F, $5C, $F8, $79, $1C   ; 
- D 0 - I - 0x009319 02:9309: 38        .byte $38, $67, $C0, $A3, $C7, $47, $8E, $08, $38, $1F, $7E, $7C, $78, $FA, $F0, $F0   ; 

_off018_9319_09:
- D 0 - I - 0x009329 02:9319: 28        .byte $28, $28, $11, $41, $C3, $CF, $8F, $06, $1F, $1F, $3E, $3E, $3C, $B2, $70, $F8   ; 
- D 0 - I - 0x009339 02:9329: 3E        .byte $3E, $00, $83, $A7, $47, $46, $8C, $08, $3E, $3E, $7C, $7A, $F8, $F8, $F0, $F0   ; 

_off018_9339_0A:
- D 0 - I - 0x009349 02:9339: D1        .byte $D1, $A1, $22, $23, $C7, $C3, $83, $00, $3E, $7E, $7C, $7C, $39, $BC, $7C, $F0   ; 
- D 0 - I - 0x009359 02:9349: 3C        .byte $3C, $00, $83, $A3, $A3, $42, $44, $46, $3C, $F8, $7C, $FD, $7C, $FC, $F8, $F8   ; 

_off018_9359_0B:
- D 0 - I - 0x009369 02:9359: 22        .byte $22, $20, $12, $17, $45, $C1, $86, $80, $FC, $FC, $FC, $78, $3E, $3E, $F8, $60   ; 
- D 0 - I - 0x009379 02:9369: 3C        .byte $3C, $C6, $43, $91, $91, $90, $09, $0B, $3C, $F8, $3C, $7E, $7E, $7E, $7E, $3C   ; 

_off018_9379_0C:
- D 0 - I - 0x009389 02:9379: 10        .byte $10, $08, $8B, $C3, $60, $F0, $C0, $C0, $FC, $FC, $7C, $3D, $1F, $0F, $7C, $30   ; 
- D 0 - I - 0x009399 02:9389: 1E        .byte $1E, $63, $09, $09, $C4, $C2, $E2, $30, $1E, $7C, $FE, $3E, $3F, $7F, $1F, $0F   ; 

_off018_9399_0D:
- D 0 - I - 0x0093A9 02:9399: 28        .byte $28, $10, $07, $03, $C0, $70, $60, $60, $F0, $F8, $FC, $FD, $3F, $0F, $5C, $18   ; 
- D 0 - I - 0x0093B9 02:93A9: 1C        .byte $1C, $66, $0B, $65, $C2, $C0, $E0, $38, $1E, $78, $FC, $1E, $3F, $BF, $1F, $07   ; 

_off018_93B9_0E:
- D 0 - I - 0x0093C9 02:93B9: 70        .byte $70, $30, $13, $0E, $00, $E1, $C0, $E8, $C0, $E0, $F0, $FB, $FF, $1E, $BC, $10   ; 
- D 0 - I - 0x0093D9 02:93C9: 06        .byte $06, $1A, $61, $01, $20, $60, $70, $7C, $06, $1C, $7E, $FF, $1F, $1F, $4F, $03   ; 

_off018_93D9_0F:
- D 0 - I - 0x0093E9 02:93D9: 62        .byte $62, $17, $0E, $00, $20, $F0, $70, $30, $E0, $F2, $F9, $FF, $DE, $0C, $28, $00   ; 
- D 0 - I - 0x0093F9 02:93E9: 08        .byte $08, $36, $47, $81, $00, $E0, $F0, $6C, $08, $38, $7C, $FF, $7F, $1F, $4F, $03   ; 

_off018_93F9_10:
- D 0 - I - 0x009409 02:93F9: 00        .byte $00, $8C, $7C, $10, $00, $E0, $F0, $70, $00, $80, $EA, $FE, $FC, $1C, $48, $00   ; 
- D 0 - I - 0x009419 02:9409: 10        .byte $10, $20, $47, $80, $40, $F0, $FC, $73, $30, $70, $FF, $BF, $3F, $0F, $43, $00   ; 

_off018_9419_11:
- D 0 - I - 0x009429 02:9419: 1C        .byte $1C, $2F, $20, $40, $10, $3E, $3F, $1C, $30, $79, $7F, $FF, $0F, $01, $10, $00   ; 
- D 0 - I - 0x009439 02:9429: 00        .byte $00, $C6, $3C, $00, $00, $38, $FE, $3C, $00, $C0, $F6, $FF, $FF, $C7, $10, $00   ; 

_off018_9439_12:
- D 0 - I - 0x009449 02:9439: 73        .byte $73, $5C, $40, $40, $F0, $3F, $3C, $18, $43, $E7, $FF, $FF, $0F, $00, $10, $00   ; 
- D 0 - I - 0x009459 02:9449: 18        .byte $18, $FC, $38, $00, $0C, $3F, $FE, $1C, $00, $C3, $FF, $FF, $F3, $C0, $08, $00   ; 

_off018_9459_13:
- D 0 - I - 0x009469 02:9459: 1D        .byte $1D, $5A, $40, $40, $58, $3F, $3C, $18, $01, $CF, $FF, $FF, $C7, $00, $08, $00   ; 
- D 0 - I - 0x009479 02:9469: 0C        .byte $0C, $1C, $E0, $00, $0C, $1F, $2C, $C0, $00, $0B, $FF, $FF, $F3, $E4, $C0, $00   ; 

_off018_9479_14:
- D 0 - I - 0x009489 02:9479: 1B        .byte $1B, $7C, $40, $20, $24, $3F, $1E, $1C, $03, $CF, $FF, $FF, $7B, $60, $08, $00   ; 
- D 0 - I - 0x009499 02:9489: 70        .byte $70, $E0, $80, $0C, $1F, $3C, $CC, $00, $0C, $3E, $FF, $F3, $E0, $C8, $00, $00   ; 

_off018_9499_15:
- D 0 - I - 0x0094A9 02:9499: 03        .byte $03, $6C, $40, $20, $0C, $1F, $1E, $0C, $03, $0F, $FF, $FF, $73, $20, $04, $00   ; 
- D 0 - I - 0x0094B9 02:94A9: 20        .byte $20, $70, $C0, $04, $1E, $1C, $38, $C0, $08, $2C, $FE, $FB, $E0, $E8, $C0, $00   ; 

_off018_94B9_16:
- D 0 - I - 0x0094C9 02:94B9: 00        .byte $00, $03, $1C, $60, $20, $13, $0F, $07, $00, $03, $07, $DF, $FF, $7C, $31, $00   ; 
- D 0 - I - 0x0094D9 02:94C9: 20        .byte $20, $70, $C0, $07, $0F, $1E, $20, $C0, $1C, $2F, $FF, $F8, $F2, $E0, $C0, $00   ; 

_off018_94D9_17:
- D 0 - I - 0x0094E9 02:94D9: 01        .byte $01, $06, $68, $D0, $40, $37, $07, $0E, $03, $0F, $1F, $3F, $FF, $F8, $7A, $10   ; 
- D 0 - I - 0x0094F9 02:94E9: 00        .byte $00, $40, $E0, $47, $87, $0E, $10, $20, $18, $3E, $5F, $F8, $FA, $F0, $E0, $C0   ; 

_off018_94F9_18:
- D 0 - I - 0x009509 02:94F9: 06        .byte $06, $04, $08, $70, $C0, $7B, $07, $63, $03, $0F, $1F, $1F, $3F, $FC, $79, $00   ; 
- D 0 - I - 0x009519 02:9509: 00        .byte $00, $60, $C3, $87, $0E, $08, $10, $70, $3C, $1F, $7C, $FA, $F0, $F0, $E0, $80   ; 

_off018_9519_19:
- D 0 - I - 0x009529 02:9519: 1C        .byte $1C, $14, $08, $28, $41, $FF, $83, $C3, $07, $0F, $1F, $1F, $3E, $7C, $7D, $00   ; 
- D 0 - I - 0x009539 02:9529: 00        .byte $00, $C3, $C7, $4E, $88, $88, $10, $F8, $7C, $3C, $7A, $F0, $F0, $F0, $E0, $C0   ; 

_off018_9539_1A:
- D 0 - I - 0x009549 02:9539: 73        .byte $73, $53, $21, $A0, $83, $7B, $03, $83, $1C, $3C, $3E, $7E, $7C, $FD, $FC, $00   ; 
- D 0 - I - 0x009559 02:9549: 00        .byte $00, $93, $E7, $A7, $42, $40, $06, $F6, $3C, $7C, $39, $78, $7C, $FC, $F8, $FA   ; 

_off018_9559_1B:
- D 0 - I - 0x009569 02:9559: A4        .byte $A4, $A0, $20, $23, $07, $9F, $A0, $C0, $F8, $78, $F8, $FC, $FE, $78, $60, $00   ; 
- D 0 - I - 0x009579 02:9569: 02        .byte $02, $07, $D7, $D2, $50, $10, $11, $03, $0C, $7A, $38, $7C, $3C, $7C, $7E, $7F   ; 

_off018_9579_1C:
- D 0 - I - 0x009589 02:9579: 5C        .byte $5C, $24, $10, $13, $01, $C7, $98, $C0, $E0, $F8, $FC, $FC, $7F, $3E, $F8, $00   ; 
- D 0 - I - 0x009599 02:9589: 02        .byte $02, $17, $C9, $C4, $44, $00, $71, $66, $1C, $F8, $3E, $7F, $3F, $1F, $0F, $3E   ; 

_off018_9599_1D:
- D 0 - I - 0x0095A9 02:9599: 10        .byte $10, $09, $84, $C1, $66, $C8, $E0, $40, $FC, $FE, $7F, $3F, $1E, $38, $40, $00   ; 
- D 0 - I - 0x0095B9 02:95A9: 04        .byte $04, $06, $08, $C4, $C2, $E1, $30, $19, $0C, $38, $FE, $3F, $BF, $1F, $0F, $07   ; 

_off018_95B9_1E:
- D 0 - I - 0x0095C9 02:95B9: 80        .byte $80, $60, $11, $03, $8E, $C8, $F0, $60, $E0, $F8, $FF, $FE, $7C, $30, $40, $00   ; 
- D 0 - I - 0x0095D9 02:95C9: 04        .byte $04, $0E, $08, $C6, $E1, $60, $18, $0C, $08, $34, $FE, $3F, $5F, $1F, $07, $03   ; 

_off018_95D9_1F:
- D 0 - I - 0x0095E9 02:95D9: 00        .byte $00, $C8, $23, $06, $0C, $98, $E0, $E0, $00, $F6, $FE, $FC, $F8, $60, $00, $40   ; 
- D 0 - I - 0x0095F9 02:95E9: 04        .byte $04, $0E, $03, $60, $F0, $6C, $03, $01, $18, $34, $7F, $9F, $4F, $03, $00, $00   ; 

_off018_95F9_20:
- D 0 - I - 0x009609 02:95F9: 04        .byte $04, $E9, $13, $06, $08, $F8, $78, $18, $02, $FF, $FE, $FC, $F8, $00, $10, $00   ; 
- D 0 - I - 0x009619 02:9609: 0C        .byte $0C, $1E, $03, $00, $70, $FC, $33, $00, $10, $34, $3F, $7F, $8F, $23, $00, $00   ; 



sub_9619_multiply_2_values:
; multiply 0015 and 0016
; result is 0015 hi and 0016 lo
C - - - - - 0x009629 02:9619: A9 00     LDA #$00
C - - - - - 0x00962B 02:961B: 0A        ASL
C - - - - - 0x00962C 02:961C: 26 15     ROL ram_0015_temp
C - - - - - 0x00962E 02:961E: 90 07     BCC bra_9627
C - - - - - 0x009630 02:9620: 18        CLC
C - - - - - 0x009631 02:9621: 65 16     ADC ram_0016_temp
C - - - - - 0x009633 02:9623: 90 02     BCC bra_9627
- - - - - - 0x009635 02:9625: E6 15     INC ram_0015_temp
bra_9627:
C - - - - - 0x009637 02:9627: 0A        ASL
C - - - - - 0x009638 02:9628: 26 15     ROL ram_0015_temp
C - - - - - 0x00963A 02:962A: 90 07     BCC bra_9633
C - - - - - 0x00963C 02:962C: 18        CLC
C - - - - - 0x00963D 02:962D: 65 16     ADC ram_0016_temp
C - - - - - 0x00963F 02:962F: 90 02     BCC bra_9633
- - - - - - 0x009641 02:9631: E6 15     INC ram_0015_temp
bra_9633:
C - - - - - 0x009643 02:9633: 0A        ASL
C - - - - - 0x009644 02:9634: 26 15     ROL ram_0015_temp
C - - - - - 0x009646 02:9636: 90 07     BCC bra_963F
C - - - - - 0x009648 02:9638: 18        CLC
C - - - - - 0x009649 02:9639: 65 16     ADC ram_0016_temp
C - - - - - 0x00964B 02:963B: 90 02     BCC bra_963F
- - - - - - 0x00964D 02:963D: E6 15     INC ram_0015_temp
bra_963F:
C - - - - - 0x00964F 02:963F: 0A        ASL
C - - - - - 0x009650 02:9640: 26 15     ROL ram_0015_temp
C - - - - - 0x009652 02:9642: 90 07     BCC bra_964B
C - - - - - 0x009654 02:9644: 18        CLC
C - - - - - 0x009655 02:9645: 65 16     ADC ram_0016_temp
C - - - - - 0x009657 02:9647: 90 02     BCC bra_964B
C - - - - - 0x009659 02:9649: E6 15     INC ram_0015_temp
bra_964B:
C - - - - - 0x00965B 02:964B: 0A        ASL
C - - - - - 0x00965C 02:964C: 26 15     ROL ram_0015_temp
C - - - - - 0x00965E 02:964E: 90 07     BCC bra_9657
C - - - - - 0x009660 02:9650: 18        CLC
C - - - - - 0x009661 02:9651: 65 16     ADC ram_0016_temp
C - - - - - 0x009663 02:9653: 90 02     BCC bra_9657
C - - - - - 0x009665 02:9655: E6 15     INC ram_0015_temp
bra_9657:
C - - - - - 0x009667 02:9657: 0A        ASL
C - - - - - 0x009668 02:9658: 26 15     ROL ram_0015_temp
C - - - - - 0x00966A 02:965A: 90 07     BCC bra_9663
C - - - - - 0x00966C 02:965C: 18        CLC
C - - - - - 0x00966D 02:965D: 65 16     ADC ram_0016_temp
C - - - - - 0x00966F 02:965F: 90 02     BCC bra_9663
C - - - - - 0x009671 02:9661: E6 15     INC ram_0015_temp
bra_9663:
C - - - - - 0x009673 02:9663: 0A        ASL
C - - - - - 0x009674 02:9664: 26 15     ROL ram_0015_temp
C - - - - - 0x009676 02:9666: 90 07     BCC bra_966F
C - - - - - 0x009678 02:9668: 18        CLC
C - - - - - 0x009679 02:9669: 65 16     ADC ram_0016_temp
C - - - - - 0x00967B 02:966B: 90 02     BCC bra_966F
C - - - - - 0x00967D 02:966D: E6 15     INC ram_0015_temp
bra_966F:
C - - - - - 0x00967F 02:966F: 0A        ASL
C - - - - - 0x009680 02:9670: 26 15     ROL ram_0015_temp
C - - - - - 0x009682 02:9672: 90 07     BCC bra_967B
C - - - - - 0x009684 02:9674: 18        CLC
C - - - - - 0x009685 02:9675: 65 16     ADC ram_0016_temp
C - - - - - 0x009687 02:9677: 90 02     BCC bra_967B
C - - - - - 0x009689 02:9679: E6 15     INC ram_0015_temp
bra_967B:
C - - - - - 0x00968B 02:967B: 85 16     STA ram_0016_temp
C - - - - - 0x00968D 02:967D: 60        RTS



loc_967E:
; con_bsw_01_0F
C D 0 - - - 0x00968E 02:967E: AD 02 20  LDA $2002
C - - - - - 0x009691 02:9681: A5 15     LDA ram_0015_temp
C - - - - - 0x009693 02:9683: 0A        ASL
C - - - - - 0x009694 02:9684: AA        TAX
C - - - - - 0x009695 02:9685: BD 0A 97  LDA tbl_970A,X
C - - - - - 0x009698 02:9688: 85 11     STA ram_0011_t14_data
C - - - - - 0x00969A 02:968A: BD 0B 97  LDA tbl_970A + $01,X
C - - - - - 0x00969D 02:968D: 85 12     STA ram_0011_t14_data + $01
loc_968F_reading_data_loop:
C D 0 - - - 0x00969F 02:968F: A0 00     LDY #$00
C - - - - - 0x0096A1 02:9691: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0096A3 02:9693: D0 01     BNE bra_9696
C - - - - - 0x0096A5 02:9695: 60        RTS
bra_9696:
C - - - - - 0x0096A6 02:9696: 85 15     STA ram_0015_temp    ; main loop counter
C - - - - - 0x0096A8 02:9698: C8        INY
C - - - - - 0x0096A9 02:9699: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0096AB 02:969B: 85 13     STA ram_0013_t02_data
C - - - - - 0x0096AD 02:969D: C8        INY
C - - - - - 0x0096AE 02:969E: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0096B0 02:96A0: 85 14     STA ram_0013_t02_data + $01
C - - - - - 0x0096B2 02:96A2: C8        INY
C - - - - - 0x0096B3 02:96A3: C8        INY
C - - - - - 0x0096B4 02:96A4: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0096B6 02:96A6: 8D 06 20  STA $2006
C - - - - - 0x0096B9 02:96A9: 88        DEY
C - - - - - 0x0096BA 02:96AA: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0096BC 02:96AC: 8D 06 20  STA $2006
C - - - - - 0x0096BF 02:96AF: A9 05     LDA #$05
C - - - - - 0x0096C1 02:96B1: 18        CLC
C - - - - - 0x0096C2 02:96B2: 65 11     ADC ram_0011_t14_data
C - - - - - 0x0096C4 02:96B4: 85 11     STA ram_0011_t14_data
C - - - - - 0x0096C6 02:96B6: 90 02     BCC bra_96BA_not_overflow
- - - - - - 0x0096C8 02:96B8: E6 12     INC ram_0011_t14_data + $01
bra_96BA_not_overflow:
C - - - - - 0x0096CA 02:96BA: A0 00     LDY #$00
C - - - - - 0x0096CC 02:96BC: B1 13     LDA (ram_0013_t02_data),Y
C - - - - - 0x0096CE 02:96BE: 85 16     STA ram_0016_temp    ; control byte for 00
C - - - - - 0x0096D0 02:96C0: C8        INY ; 01
C - - - - - 0x0096D1 02:96C1: B1 13     LDA (ram_0013_t02_data),Y
C - - - - - 0x0096D3 02:96C3: 85 17     STA ram_0017_temp    ; control byte for FF
C - - - - - 0x0096D5 02:96C5: C8        INY ; 02
bra_96C6_loop:
C - - - - - 0x0096D6 02:96C6: A2 0F     LDX #$0F
bra_96C8_loop:
C - - - - - 0x0096D8 02:96C8: B1 13     LDA (ram_0013_t02_data),Y
C - - - - - 0x0096DA 02:96CA: C8        INY
C - - - - - 0x0096DB 02:96CB: D0 02     BNE bra_96CF_not_overflow
C - - - - - 0x0096DD 02:96CD: E6 14     INC ram_0013_t02_data + $01
bra_96CF_not_overflow:
C - - - - - 0x0096DF 02:96CF: C5 16     CMP ram_0016_temp    ; control byte for 00
C - - - - - 0x0096E1 02:96D1: F0 11     BEQ bra_96E4
C - - - - - 0x0096E3 02:96D3: C5 17     CMP ram_0017_temp    ; control byte for FF
C - - - - - 0x0096E5 02:96D5: F0 11     BEQ bra_96E8
; write actual byte
C - - - - - 0x0096E7 02:96D7: 8D 07 20  STA $2007
C - - - - - 0x0096EA 02:96DA: CA        DEX
C - - - - - 0x0096EB 02:96DB: 10 EB     BPL bra_96C8_loop
C - - - - - 0x0096ED 02:96DD: C6 15     DEC ram_0015_temp    ; main loop counter
C - - - - - 0x0096EF 02:96DF: D0 E5     BNE bra_96C6_loop
C - - - - - 0x0096F1 02:96E1: 4C 8F 96  JMP loc_968F_reading_data_loop
bra_96E4:
C - - - - - 0x0096F4 02:96E4: A9 00     LDA #$00
C - - - - - 0x0096F6 02:96E6: F0 02     BEQ bra_96EA    ; jmp
bra_96E8:
C - - - - - 0x0096F8 02:96E8: A9 FF     LDA #$FF
bra_96EA:
C - - - - - 0x0096FA 02:96EA: 48        PHA
C - - - - - 0x0096FB 02:96EB: B1 13     LDA (ram_0013_t02_data),Y
C - - - - - 0x0096FD 02:96ED: 85 18     STA ram_0018_temp    ; counter for 00/FF bytes
C - - - - - 0x0096FF 02:96EF: 68        PLA
C - - - - - 0x009700 02:96F0: C8        INY
C - - - - - 0x009701 02:96F1: D0 02     BNE bra_96F5_not_overflow
C - - - - - 0x009703 02:96F3: E6 14     INC ram_0013_t02_data + $01
bra_96F5_not_overflow:
bra_96F5_loop:
C - - - - - 0x009705 02:96F5: 8D 07 20  STA $2007
C - - - - - 0x009708 02:96F8: CA        DEX
C - - - - - 0x009709 02:96F9: 30 06     BMI bra_9701
bra_96FB_loop:
C - - - - - 0x00970B 02:96FB: C6 18     DEC ram_0018_temp    ; counter for 00/FF bytes
C - - - - - 0x00970D 02:96FD: D0 F6     BNE bra_96F5_loop
C - - - - - 0x00970F 02:96FF: F0 C7     BEQ bra_96C8_loop    ; jmp
bra_9701:
C - - - - - 0x009711 02:9701: A2 0F     LDX #$0F
C - - - - - 0x009713 02:9703: C6 15     DEC ram_0015_temp    ; main loop counter
C - - - - - 0x009715 02:9705: D0 F4     BNE bra_96FB_loop
C - - - - - 0x009717 02:9707: 4C 8F 96  JMP loc_968F_reading_data_loop



tbl_970A:
- D 0 - - - 0x00971A 02:970A: 12 97     .word off_9712_00
- D 0 - - - 0x00971C 02:970C: 18 97     .word off_9718_01
- D 0 - - - 0x00971E 02:970E: 1E 97     .word off_971E_02
- D 0 - - - 0x009720 02:9710: 24 97     .word off_9724_03



off_9712_00:
- D 0 - I - 0x009722 02:9712: 74        .byte $74   ; counter
- D 0 - I - 0x009723 02:9713: C4 BD     .word off_BDC4
- D 0 - I - 0x009725 02:9715: C0 14     .word $14C0 ; ppu address

- D 0 - I - 0x009727 02:9717: 00        .byte $00   ; end token



off_9718_01:
- D 0 - I - 0x009728 02:9718: A0        .byte $A0   ; counter
- D 0 - I - 0x009729 02:9719: 2D C4     .word off_C42D
- D 0 - I - 0x00972B 02:971B: C0 14     .word $14C0 ; ppu address

- D 0 - I - 0x00972D 02:971D: 00        .byte $00   ; end token



off_971E_02:
- D 0 - I - 0x00972E 02:971E: FB        .byte $FB   ; counter
- D 0 - I - 0x00972F 02:971F: 5D CC     .word off_CC5D
- D 0 - I - 0x009731 02:9721: 00 10     .word $1000 ; ppu address

- D 0 - I - 0x009733 02:9723: 00        .byte $00   ; end token



off_9724_03:
- D 0 - I - 0x009734 02:9724: 51        .byte $51   ; counter
- D 0 - I - 0x009735 02:9725: A9 D9     .word off_D9A9
- D 0 - I - 0x009737 02:9727: 00 10     .word $1000 ; ppu address

- D 0 - I - 0x009739 02:9729: 6C        .byte $6C   ; 
- D 0 - I - 0x00973A 02:972A: 9E DD     .word off_DD9E
- D 0 - I - 0x00973C 02:972C: 00 00     .word $0000 ; ppu address

- D 0 - I - 0x00973E 02:972E: 15        .byte $15   ; 
- D 0 - I - 0x00973F 02:972F: AA E2     .word off_E2AA
- D 0 - I - 0x009741 02:9731: C0 06     .word $06C0 ; ppu address

- D 0 - I - 0x009743 02:9733: 00        .byte $00   ; end token



loc_9734:
; con_bsw_01_15
C D 0 - - - 0x009744 02:9734: A9 01     LDA #$01
C - - - - - 0x009746 02:9736: AE 92 05  LDX ram_finished_race_flag
C - - - - - 0x009749 02:9739: F0 02     BEQ bra_973D
C - - - - - 0x00974B 02:973B: A9 7F     LDA #$7F
bra_973D:
C - - - - - 0x00974D 02:973D: 85 8C     STA ram_008C
C - - - - - 0x00974F 02:973F: A2 00     LDX #$00
bra_9741_loop:
C - - - - - 0x009751 02:9741: 86 1F     STX ram_001F_temp
C - - - - - 0x009753 02:9743: B4 87     LDY ram_position,X
C - - - - - 0x009755 02:9745: B5 88     LDA ram_position + $01,X
C - - - - - 0x009757 02:9747: AA        TAX
C - - - - - 0x009758 02:9748: B9 5A 05  LDA ram_plr_laps,Y
C - - - - - 0x00975B 02:974B: DD 5A 05  CMP ram_plr_laps,X
C - - - - - 0x00975E 02:974E: F0 04     BEQ bra_9754
C - - - - - 0x009760 02:9750: 90 39     BCC bra_978B
C - - - - - 0x009762 02:9752: B0 3F     BCS bra_9793    ; jmp
bra_9754:
C - - - - - 0x009764 02:9754: B9 87 05  LDA ram_0587_car_flags,Y
C - - - - - 0x009767 02:9757: 29 04     AND #$04
C - - - - - 0x009769 02:9759: D0 21     BNE bra_977C
C - - - - - 0x00976B 02:975B: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00976E 02:975E: 29 04     AND #$04
C - - - - - 0x009770 02:9760: D0 31     BNE bra_9793
C - - - - - 0x009772 02:9762: B9 5F 05  LDA ram_pos_area_1,Y
C - - - - - 0x009775 02:9765: DD 5F 05  CMP ram_pos_area_1,X
C - - - - - 0x009778 02:9768: F0 04     BEQ bra_976E
C - - - - - 0x00977A 02:976A: 90 1F     BCC bra_978B
C - - - - - 0x00977C 02:976C: B0 25     BCS bra_9793    ; jmp
bra_976E:
C - - - - - 0x00977E 02:976E: C6 8C     DEC ram_008C
C - - - - - 0x009780 02:9770: 30 21     BMI bra_9793
C - - - - - 0x009782 02:9772: B9 5F 05  LDA ram_pos_area_1,Y
C - - - - - 0x009785 02:9775: 20 9B 97  JSR sub_979B
C - - - - - 0x009788 02:9778: 90 11     BCC bra_978B
C - - - - - 0x00978A 02:977A: B0 17     BCS bra_9793    ; jmp
bra_977C:
C - - - - - 0x00978C 02:977C: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00978F 02:977F: 29 04     AND #$04
C - - - - - 0x009791 02:9781: F0 08     BEQ bra_978B
C - - - - - 0x009793 02:9783: B9 64 05  LDA ram_pos_area_2,Y
C - - - - - 0x009796 02:9786: DD 64 05  CMP ram_pos_area_2,X
C - - - - - 0x009799 02:9789: B0 08     BCS bra_9793
bra_978B:
C - - - - - 0x00979B 02:978B: 8A        TXA
C - - - - - 0x00979C 02:978C: A6 1F     LDX ram_001F_temp
C - - - - - 0x00979E 02:978E: 95 87     STA ram_position,X
C - - - - - 0x0097A0 02:9790: 98        TYA
C - - - - - 0x0097A1 02:9791: 95 88     STA ram_position + $01,X
bra_9793:
C - - - - - 0x0097A3 02:9793: A6 1F     LDX ram_001F_temp
C - - - - - 0x0097A5 02:9795: E8        INX
C - - - - - 0x0097A6 02:9796: E0 04     CPX #$04
C - - - - - 0x0097A8 02:9798: D0 A7     BNE bra_9741_loop
C - - - - - 0x0097AA 02:979A: 60        RTS



sub_979B:
C - - - - - 0x0097AB 02:979B: 84 1C     STY ram_001C_temp
C - - - - - 0x0097AD 02:979D: 85 1D     STA ram_001D_temp
C - - - - - 0x0097AF 02:979F: 0A        ASL
C - - - - - 0x0097B0 02:97A0: 65 1D     ADC ram_001D_temp
C - - - - - 0x0097B2 02:97A2: A8        TAY
C - - - - - 0x0097B3 02:97A3: B1 81     LDA (ram_0081),Y
C - - - - - 0x0097B5 02:97A5: 30 08     BMI bra_97AF
C - - - - - 0x0097B7 02:97A7: A5 81     LDA ram_0081
C - - - - - 0x0097B9 02:97A9: 85 11     STA ram_0011_t15_data
C - - - - - 0x0097BB 02:97AB: A5 82     LDA ram_0082
C - - - - - 0x0097BD 02:97AD: D0 0A     BNE bra_97B9
bra_97AF:
C - - - - - 0x0097BF 02:97AF: C8        INY
C - - - - - 0x0097C0 02:97B0: B1 81     LDA (ram_0081),Y
C - - - - - 0x0097C2 02:97B2: 85 11     STA ram_0011_t15_data
C - - - - - 0x0097C4 02:97B4: C8        INY
C - - - - - 0x0097C5 02:97B5: B1 81     LDA (ram_0081),Y
C - - - - - 0x0097C7 02:97B7: A0 00     LDY #$00
bra_97B9:
C - - - - - 0x0097C9 02:97B9: 85 12     STA ram_0011_t15_data + $01
C - - - - - 0x0097CB 02:97BB: B1 11     LDA (ram_0011_t15_data),Y
C - - - - - 0x0097CD 02:97BD: 29 1F     AND #$1F
C - - - - - 0x0097CF 02:97BF: 0A        ASL
C - - - - - 0x0097D0 02:97C0: A8        TAY
C - - - - - 0x0097D1 02:97C1: B9 D1 97  LDA tbl_97D1,Y
C - - - - - 0x0097D4 02:97C4: 85 0D     STA ram_000D_t07_jmp
C - - - - - 0x0097D6 02:97C6: B9 D2 97  LDA tbl_97D1 + $01,Y
C - - - - - 0x0097D9 02:97C9: 85 0E     STA ram_000D_t07_jmp + $01
C - - - - - 0x0097DB 02:97CB: A4 1C     LDY ram_001C_temp
C - - - - - 0x0097DD 02:97CD: B8        CLV
sub_97CE_indirect_jump_000D:
C - - - - - 0x0097DE 02:97CE: 6C 0D 00  JMP (ram_000D_t07_jmp)



tbl_97D1:
- D 0 - - - 0x0097E1 02:97D1: 11 98     .word ofs_005_9811_00
- D 0 - - - 0x0097E3 02:97D3: 18 98     .word ofs_005_9818_01
- D 0 - - - 0x0097E5 02:97D5: 28 98     .word ofs_005_9828_02
- D 0 - - - 0x0097E7 02:97D7: 42 98     .word ofs_005_9842_03
- D 0 - - - 0x0097E9 02:97D9: 5B 98     .word ofs_005_985B_04
- D 0 - - - 0x0097EB 02:97DB: 62 98     .word ofs_005_9862_05
- D 0 - - - 0x0097ED 02:97DD: 7B 98     .word ofs_005_987B_06
- D 0 - - - 0x0097EF 02:97DF: 97 98     .word ofs_005_9897_07
- D 0 - - - 0x0097F1 02:97E1: A7 98     .word ofs_005_98A7_08
- D 0 - - - 0x0097F3 02:97E3: B5 98     .word ofs_005_98B5_09
- D 0 - - - 0x0097F5 02:97E5: BA 98     .word ofs_005_98BA_0A
- D 0 - - - 0x0097F7 02:97E7: BF 98     .word ofs_005_98BF_0B
- D 0 - - - 0x0097F9 02:97E9: C4 98     .word ofs_005_98C4_0C
- D 0 - - - 0x0097FB 02:97EB: CC 98     .word ofs_005_98CC_0D
- D 0 - - - 0x0097FD 02:97ED: D1 98     .word ofs_005_98D1_0E
- D 0 - - - 0x0097FF 02:97EF: D6 98     .word ofs_005_98D6_0F
- D 0 - - - 0x009801 02:97F1: A7 98     .word ofs_005_98A7_10
- D 0 - - - 0x009803 02:97F3: B5 98     .word ofs_005_98B5_11
- D 0 - - - 0x009805 02:97F5: BA 98     .word ofs_005_98BA_12
- D 0 - - - 0x009807 02:97F7: BF 98     .word ofs_005_98BF_13
- D 0 - - - 0x009809 02:97F9: C4 98     .word ofs_005_98C4_14
- D 0 - - - 0x00980B 02:97FB: CC 98     .word ofs_005_98CC_15
- D 0 - - - 0x00980D 02:97FD: D1 98     .word ofs_005_98D1_16
- D 0 - - - 0x00980F 02:97FF: D6 98     .word ofs_005_98D6_17
- D 0 - - - 0x009811 02:9801: 11 98     .word ofs_005_9811_18
- D 0 - - - 0x009813 02:9803: 18 98     .word ofs_005_9818_19
- D 0 - - - 0x009815 02:9805: 28 98     .word ofs_005_9828_1A
- D 0 - - - 0x009817 02:9807: 42 98     .word ofs_005_9842_1B
- D 0 - - - 0x009819 02:9809: 5B 98     .word ofs_005_985B_1C
- D 0 - - - 0x00981B 02:980B: 62 98     .word ofs_005_9862_1D
- - - - - - 0x00981D 02:980D: 7B 98     .word ofs_005_987B_1E
- D 0 - - - 0x00981F 02:980F: 97 98     .word ofs_005_9897_1F



ofs_005_9811_00:
ofs_005_9811_18:
C - - J - - 0x009821 02:9811: B9 70 04  LDA ram_pos_Y_hi,Y
C - - - - - 0x009824 02:9814: DD 70 04  CMP ram_pos_Y_hi,X
C - - - - - 0x009827 02:9817: 60        RTS



ofs_005_9818_01:
ofs_005_9818_19:
sub_9818:
C - - - - - 0x009828 02:9818: BD 50 04  LDA ram_pos_X_hi,X
C - - - - - 0x00982B 02:981B: 4A        LSR
C - - - - - 0x00982C 02:981C: 85 15     STA ram_0015_temp
C - - - - - 0x00982E 02:981E: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x009831 02:9821: 4A        LSR
C - - - - - 0x009832 02:9822: 38        SEC
C - - - - - 0x009833 02:9823: E5 15     SBC ram_0015_temp
C - - - - - 0x009835 02:9825: 4C 2F 98  JMP loc_982F



sub_9828:
ofs_005_9828_02:
ofs_005_9828_1A:
C - - J - - 0x009838 02:9828: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x00983B 02:982B: 38        SEC
C - - - - - 0x00983C 02:982C: FD 50 04  SBC ram_pos_X_hi,X
loc_982F:
C D 0 - - - 0x00983F 02:982F: 85 15     STA ram_0015_temp
C - - - - - 0x009841 02:9831: B9 70 04  LDA ram_pos_Y_hi,Y
C - - - - - 0x009844 02:9834: 38        SEC
C - - - - - 0x009845 02:9835: FD 70 04  SBC ram_pos_Y_hi,X
loc_9838:
C D 0 - - - 0x009848 02:9838: 18        CLC
C - - - - - 0x009849 02:9839: 65 15     ADC ram_0015_temp
C - - - - - 0x00984B 02:983B: B8        CLV
C - - - - - 0x00984C 02:983C: 10 02     BPL bra_9840
C - - - - - 0x00984E 02:983E: 18        CLC
C - - - - - 0x00984F 02:983F: 60        RTS
bra_9840:
C - - - - - 0x009850 02:9840: 38        SEC
C - - - - - 0x009851 02:9841: 60        RTS



sub_9842:
ofs_005_9842_03:
ofs_005_9842_1B:
C - - J - - 0x009852 02:9842: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x009855 02:9845: 38        SEC
C - - - - - 0x009856 02:9846: FD 50 04  SBC ram_pos_X_hi,X
C - - - - - 0x009859 02:9849: 85 15     STA ram_0015_temp
C - - - - - 0x00985B 02:984B: BD 70 04  LDA ram_pos_Y_hi,X
C - - - - - 0x00985E 02:984E: 4A        LSR
C - - - - - 0x00985F 02:984F: 85 16     STA ram_0016_temp
C - - - - - 0x009861 02:9851: B9 70 04  LDA ram_pos_Y_hi,Y
C - - - - - 0x009864 02:9854: 4A        LSR
C - - - - - 0x009865 02:9855: 38        SEC
C - - - - - 0x009866 02:9856: E5 16     SBC ram_0016_temp
C - - - - - 0x009868 02:9858: 4C 38 98  JMP loc_9838



ofs_005_985B_04:
ofs_005_985B_1C:
C - - J - - 0x00986B 02:985B: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x00986E 02:985E: DD 50 04  CMP ram_pos_X_hi,X
C - - - - - 0x009871 02:9861: 60        RTS



sub_9862:
ofs_005_9862_05:
ofs_005_9862_1D:
C - - J - - 0x009872 02:9862: BD 50 04  LDA ram_pos_X_hi,X
C - - - - - 0x009875 02:9865: 38        SEC
C - - - - - 0x009876 02:9866: F9 50 04  SBC ram_pos_X_hi,Y
C - - - - - 0x009879 02:9869: 85 15     STA ram_0015_temp
C - - - - - 0x00987B 02:986B: BD 70 04  LDA ram_pos_Y_hi,X
C - - - - - 0x00987E 02:986E: 4A        LSR
C - - - - - 0x00987F 02:986F: 85 16     STA ram_0016_temp
C - - - - - 0x009881 02:9871: B9 70 04  LDA ram_pos_Y_hi,Y
C - - - - - 0x009884 02:9874: 4A        LSR
C - - - - - 0x009885 02:9875: 38        SEC
C - - - - - 0x009886 02:9876: E5 16     SBC ram_0016_temp
C - - - - - 0x009888 02:9878: 4C 8B 98  JMP loc_988B



sub_987B:
ofs_005_987B_06:
ofs_005_987B_1E:
C - - J - - 0x00988B 02:987B: BD 50 04  LDA ram_pos_X_hi,X
C - - - - - 0x00988E 02:987E: 38        SEC
C - - - - - 0x00988F 02:987F: F9 50 04  SBC ram_pos_X_hi,Y
loc_9882:
C D 0 - - - 0x009892 02:9882: 85 15     STA ram_0015_temp
C - - - - - 0x009894 02:9884: B9 70 04  LDA ram_pos_Y_hi,Y
C - - - - - 0x009897 02:9887: 38        SEC
C - - - - - 0x009898 02:9888: FD 70 04  SBC ram_pos_Y_hi,X
loc_988B:
C D 0 - - - 0x00989B 02:988B: 18        CLC
C - - - - - 0x00989C 02:988C: 65 15     ADC ram_0015_temp
C - - - - - 0x00989E 02:988E: B8        CLV
C - - - - - 0x00989F 02:988F: F0 04     BEQ bra_9895
C - - - - - 0x0098A1 02:9891: 30 02     BMI bra_9895
C - - - - - 0x0098A3 02:9893: 18        CLC
C - - - - - 0x0098A4 02:9894: 60        RTS
bra_9895:
C - - - - - 0x0098A5 02:9895: 38        SEC
C - - - - - 0x0098A6 02:9896: 60        RTS



sub_9897:
ofs_005_9897_07:
ofs_005_9897_1F:
C - - - - - 0x0098A7 02:9897: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x0098AA 02:989A: 4A        LSR
C - - - - - 0x0098AB 02:989B: 85 15     STA ram_0015_temp
C - - - - - 0x0098AD 02:989D: BD 50 04  LDA ram_pos_X_hi,X
C - - - - - 0x0098B0 02:98A0: 4A        LSR
C - - - - - 0x0098B1 02:98A1: 38        SEC
C - - - - - 0x0098B2 02:98A2: E5 15     SBC ram_0015_temp
C - - - - - 0x0098B4 02:98A4: 4C 82 98  JMP loc_9882



ofs_005_98A7_08:
ofs_005_98A7_10:
C - - J - - 0x0098B7 02:98A7: B9 70 04  LDA ram_pos_Y_hi,Y
C - - - - - 0x0098BA 02:98AA: DD 70 04  CMP ram_pos_Y_hi,X
bra_98AD:
C - - - - - 0x0098BD 02:98AD: F0 04     BEQ bra_98B3
C - - - - - 0x0098BF 02:98AF: 90 02     BCC bra_98B3
C - - - - - 0x0098C1 02:98B1: 18        CLC
C - - - - - 0x0098C2 02:98B2: 60        RTS
bra_98B3:
C - - - - - 0x0098C3 02:98B3: 38        SEC
C - - - - - 0x0098C4 02:98B4: 60        RTS



ofs_005_98B5_09:
ofs_005_98B5_11:
C - - J - - 0x0098C5 02:98B5: 20 18 98  JSR sub_9818
C - - - - - 0x0098C8 02:98B8: 50 F3     BVC bra_98AD    ; jmp



ofs_005_98BA_0A:
ofs_005_98BA_12:
C - - J - - 0x0098CA 02:98BA: 20 28 98  JSR sub_9828
C - - - - - 0x0098CD 02:98BD: 50 EE     BVC bra_98AD    ; jmp



ofs_005_98BF_0B:
ofs_005_98BF_13:
C - - J - - 0x0098CF 02:98BF: 20 42 98  JSR sub_9842
C - - - - - 0x0098D2 02:98C2: 50 E9     BVC bra_98AD    ; jmp



ofs_005_98C4_0C:
ofs_005_98C4_14:
C - - J - - 0x0098D4 02:98C4: B9 50 04  LDA ram_pos_X_hi,Y
C - - - - - 0x0098D7 02:98C7: DD 50 04  CMP ram_pos_X_hi,X
C - - - - - 0x0098DA 02:98CA: 50 E1     BVC bra_98AD    ; jmp



ofs_005_98CC_0D:
ofs_005_98CC_15:
C - - J - - 0x0098DC 02:98CC: 20 62 98  JSR sub_9862
C - - - - - 0x0098DF 02:98CF: 50 DC     BVC bra_98AD    ; jmp



ofs_005_98D1_0E:
ofs_005_98D1_16:
C - - J - - 0x0098E1 02:98D1: 20 7B 98  JSR sub_987B
C - - - - - 0x0098E4 02:98D4: 50 D7     BVC bra_98AD    ; jmp



ofs_005_98D6_0F:
ofs_005_98D6_17:
C - - J - - 0x0098E6 02:98D6: 20 97 98  JSR sub_9897
C - - - - - 0x0098E9 02:98D9: 50 D2     BVC bra_98AD    ; jmp



loc_98DB:
; con_bsw_01_18
C D 0 - - - 0x0098EB 02:98DB: A6 1F     LDX ram_001F_temp
C - - - - - 0x0098ED 02:98DD: BD 69 05  LDA ram_0569_car,X
C - - - - - 0x0098F0 02:98E0: F0 61     BEQ bra_9943
C - - - - - 0x0098F2 02:98E2: 0A        ASL
C - - - - - 0x0098F3 02:98E3: 0A        ASL
C - - - - - 0x0098F4 02:98E4: 18        CLC
C - - - - - 0x0098F5 02:98E5: 7D 69 05  ADC ram_0569_car,X
C - - - - - 0x0098F8 02:98E8: A8        TAY
C - - - - - 0x0098F9 02:98E9: 84 21     STY ram_0021_temp
C - - - - - 0x0098FB 02:98EB: A5 83     LDA ram_0083
C - - - - - 0x0098FD 02:98ED: 85 13     STA ram_0013_t03_data
C - - - - - 0x0098FF 02:98EF: A5 84     LDA ram_0084
C - - - - - 0x009901 02:98F1: 85 14     STA ram_0013_t03_data + $01
C - - - - - 0x009903 02:98F3: A9 00     LDA #$00
C - - - - - 0x009905 02:98F5: 85 1D     STA ram_001D_temp
C - - - - - 0x009907 02:98F7: 20 EF 9A  JSR sub_9AEF
C - - - - - 0x00990A 02:98FA: 90 14     BCC bra_9910
C - - - - - 0x00990C 02:98FC: A4 19     LDY ram_0019_temp
C - - - - - 0x00990E 02:98FE: B1 13     LDA (ram_0013_t03_data),Y
C - - - - - 0x009910 02:9900: D0 36     BNE bra_9938
C - - - - - 0x009912 02:9902: 9D 69 05  STA ram_0569_car,X
bra_9905:
C - - - - - 0x009915 02:9905: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009918 02:9908: 29 DF     AND #$DF
C - - - - - 0x00991A 02:990A: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x00991D 02:990D: 4C D6 99  JMP loc_99D6
bra_9910:
C - - - - - 0x009920 02:9910: A5 21     LDA ram_0021_temp
C - - - - - 0x009922 02:9912: 38        SEC
C - - - - - 0x009923 02:9913: E9 05     SBC #$05
C - - - - - 0x009925 02:9915: A8        TAY
C - - - - - 0x009926 02:9916: A9 10     LDA #$10
C - - - - - 0x009928 02:9918: 85 1D     STA ram_001D_temp
C - - - - - 0x00992A 02:991A: 20 EF 9A  JSR sub_9AEF
C - - - - - 0x00992D 02:991D: 90 23     BCC bra_9942_RTS
C - - - - - 0x00992F 02:991F: A5 1C     LDA ram_001C_temp
C - - - - - 0x009931 02:9921: 49 FF     EOR #$FF
C - - - - - 0x009933 02:9923: 18        CLC
C - - - - - 0x009934 02:9924: 69 01     ADC #$01
C - - - - - 0x009936 02:9926: 85 1C     STA ram_001C_temp
C - - - - - 0x009938 02:9928: A4 19     LDY ram_0019_temp
C - - - - - 0x00993A 02:992A: B1 13     LDA (ram_0013_t03_data),Y
C - - - - - 0x00993C 02:992C: D0 05     BNE bra_9933
C - - - - - 0x00993E 02:992E: 9D 69 05  STA ram_0569_car,X
C - - - - - 0x009941 02:9931: F0 D2     BEQ bra_9905    ; jmp
bra_9933:
C - - - - - 0x009943 02:9933: 49 FF     EOR #$FF
C - - - - - 0x009945 02:9935: 18        CLC
C - - - - - 0x009946 02:9936: 69 01     ADC #$01
bra_9938:
C - - - - - 0x009948 02:9938: 18        CLC
C - - - - - 0x009949 02:9939: 7D 69 05  ADC ram_0569_car,X
C - - - - - 0x00994C 02:993C: 9D 69 05  STA ram_0569_car,X
C - - - - - 0x00994F 02:993F: 4C D6 99  JMP loc_99D6
bra_9942_RTS:
C - - - - - 0x009952 02:9942: 60        RTS
bra_9943:
C - - - - - 0x009953 02:9943: BD 64 05  LDA ram_pos_area_2,X
C - - - - - 0x009956 02:9946: 0A        ASL
C - - - - - 0x009957 02:9947: 18        CLC
C - - - - - 0x009958 02:9948: 7D 64 05  ADC ram_pos_area_2,X
C - - - - - 0x00995B 02:994B: A8        TAY
C - - - - - 0x00995C 02:994C: 84 21     STY ram_0021_temp
C - - - - - 0x00995E 02:994E: B1 81     LDA (ram_0081),Y
C - - - - - 0x009960 02:9950: C9 FF     CMP #$FF
C - - - - - 0x009962 02:9952: D0 24     BNE bra_9978
; FF
C - - - - - 0x009964 02:9954: C8        INY
C - - - - - 0x009965 02:9955: A9 00     LDA #$00
C - - - - - 0x009967 02:9957: A2 00     LDX #$00
C - - - - - 0x009969 02:9959: 20 D4 9A  JSR sub_9AD4
C - - - - - 0x00996C 02:995C: B0 78     BCS bra_99D6
C - - - - - 0x00996E 02:995E: A0 04     LDY #$04
C - - - - - 0x009970 02:9960: 20 EF 9A  JSR sub_9AEF
C - - - - - 0x009973 02:9963: 90 2B     BCC bra_9990
C - - - - - 0x009975 02:9965: A5 15     LDA ram_0015_temp
C - - - - - 0x009977 02:9967: 29 20     AND #$20
C - - - - - 0x009979 02:9969: 1D 87 05  ORA ram_0587_car_flags,X
C - - - - - 0x00997C 02:996C: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x00997F 02:996F: A0 08     LDY #$08
C - - - - - 0x009981 02:9971: B1 13     LDA (ram_0013_t03_data),Y
C - - - - - 0x009983 02:9973: 9D 69 05  STA ram_0569_car,X
C - - - - - 0x009986 02:9976: D0 5E     BNE bra_99D6    ; jmp
bra_9978:
; 00-0F
C - - - - - 0x009988 02:9978: 85 15     STA ram_0015_temp
C - - - - - 0x00998A 02:997A: C8        INY
C - - - - - 0x00998B 02:997B: B1 81     LDA (ram_0081),Y
C - - - - - 0x00998D 02:997D: 85 16     STA ram_0016_temp    ; pos_X
C - - - - - 0x00998F 02:997F: C8        INY
C - - - - - 0x009990 02:9980: B1 81     LDA (ram_0081),Y
C - - - - - 0x009992 02:9982: 85 17     STA ram_0017_temp    ; pos_Y
C - - - - - 0x009994 02:9984: 20 04 9B  JSR sub_9B04
C - - - - - 0x009997 02:9987: 90 07     BCC bra_9990
C - - - - - 0x009999 02:9989: A9 01     LDA #$01
C - - - - - 0x00999B 02:998B: 85 1C     STA ram_001C_temp
C - - - - - 0x00999D 02:998D: 4C 19 9A  JMP loc_9A19
bra_9990:
C - - - - - 0x0099A0 02:9990: A5 21     LDA ram_0021_temp
C - - - - - 0x0099A2 02:9992: 38        SEC
C - - - - - 0x0099A3 02:9993: E9 03     SBC #$03
C - - - - - 0x0099A5 02:9995: B0 09     BCS bra_99A0
C - - - - - 0x0099A7 02:9997: A5 85     LDA ram_max_area
C - - - - - 0x0099A9 02:9999: 0A        ASL
C - - - - - 0x0099AA 02:999A: 18        CLC
C - - - - - 0x0099AB 02:999B: 65 85     ADC ram_max_area
C - - - - - 0x0099AD 02:999D: 38        SEC
C - - - - - 0x0099AE 02:999E: E9 03     SBC #$03
bra_99A0:
C - - - - - 0x0099B0 02:99A0: A8        TAY
C - - - - - 0x0099B1 02:99A1: 84 21     STY ram_0021_temp
C - - - - - 0x0099B3 02:99A3: B1 81     LDA (ram_0081),Y
C - - - - - 0x0099B5 02:99A5: C9 FF     CMP #$FF
C - - - - - 0x0099B7 02:99A7: D0 0B     BNE bra_99B4
; FF
C - - - - - 0x0099B9 02:99A9: C8        INY
C - - - - - 0x0099BA 02:99AA: A9 10     LDA #$10
C - - - - - 0x0099BC 02:99AC: A2 00     LDX #$00
C - - - - - 0x0099BE 02:99AE: 20 D4 9A  JSR sub_9AD4
C - - - - - 0x0099C1 02:99B1: B0 1A     BCS bra_99CD
C - - - - - 0x0099C3 02:99B3: 60        RTS
bra_99B4:
C - - - - - 0x0099C4 02:99B4: 49 10     EOR #$10
C - - - - - 0x0099C6 02:99B6: 85 15     STA ram_0015_temp
C - - - - - 0x0099C8 02:99B8: C8        INY
C - - - - - 0x0099C9 02:99B9: B1 81     LDA (ram_0081),Y
C - - - - - 0x0099CB 02:99BB: 85 16     STA ram_0016_temp    ; pos_X
C - - - - - 0x0099CD 02:99BD: C8        INY
C - - - - - 0x0099CE 02:99BE: B1 81     LDA (ram_0081),Y
C - - - - - 0x0099D0 02:99C0: 85 17     STA ram_0017_temp    ; pos_Y
C - - - - - 0x0099D2 02:99C2: 20 04 9B  JSR sub_9B04
C - - - - - 0x0099D5 02:99C5: 90 51     BCC bra_9A18_RTS
C - - - - - 0x0099D7 02:99C7: A9 FF     LDA #$FF
C - - - - - 0x0099D9 02:99C9: 85 1C     STA ram_001C_temp
C - - - - - 0x0099DB 02:99CB: D0 0D     BNE bra_99DA    ; jmp
bra_99CD:
C - - - - - 0x0099DD 02:99CD: A5 1C     LDA ram_001C_temp
C - - - - - 0x0099DF 02:99CF: 49 FF     EOR #$FF
C - - - - - 0x0099E1 02:99D1: 18        CLC
C - - - - - 0x0099E2 02:99D2: 69 01     ADC #$01
C - - - - - 0x0099E4 02:99D4: 85 1C     STA ram_001C_temp
bra_99D6:
loc_99D6:
C D 0 - - - 0x0099E6 02:99D6: A5 1C     LDA ram_001C_temp
C - - - - - 0x0099E8 02:99D8: 10 3F     BPL bra_9A19
bra_99DA:
C - - - - - 0x0099EA 02:99DA: AD 91 05  LDA ram_0591
C - - - - - 0x0099ED 02:99DD: F0 08     BEQ bra_99E7
C - - - - - 0x0099EF 02:99DF: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x0099F2 02:99E2: 09 02     ORA #$02
C - - - - - 0x0099F4 02:99E4: 9D 87 05  STA ram_0587_car_flags,X
bra_99E7:
C - - - - - 0x0099F7 02:99E7: BD 64 05  LDA ram_pos_area_2,X
C - - - - - 0x0099FA 02:99EA: 18        CLC
C - - - - - 0x0099FB 02:99EB: 65 1C     ADC ram_001C_temp
C - - - - - 0x0099FD 02:99ED: 10 05     BPL bra_99F4
C - - - - - 0x0099FF 02:99EF: A5 85     LDA ram_max_area
C - - - - - 0x009A01 02:99F1: 38        SEC
C - - - - - 0x009A02 02:99F2: E9 01     SBC #$01
bra_99F4:
C - - - - - 0x009A04 02:99F4: 9D 64 05  STA ram_pos_area_2,X
C - - - - - 0x009A07 02:99F7: BD 5F 05  LDA ram_pos_area_1,X
C - - - - - 0x009A0A 02:99FA: 18        CLC
C - - - - - 0x009A0B 02:99FB: 65 1C     ADC ram_001C_temp
C - - - - - 0x009A0D 02:99FD: 30 0C     BMI bra_9A0B
C - - - - - 0x009A0F 02:99FF: 9D 5F 05  STA ram_pos_area_1,X
C - - - - - 0x009A12 02:9A02: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009A15 02:9A05: 29 FB     AND #$FB
C - - - - - 0x009A17 02:9A07: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x009A1A 02:9A0A: 60        RTS
bra_9A0B:
C - - - - - 0x009A1B 02:9A0B: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009A1E 02:9A0E: 09 04     ORA #$04
C - - - - - 0x009A20 02:9A10: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x009A23 02:9A13: A9 00     LDA #$00
C - - - - - 0x009A25 02:9A15: 9D 5F 05  STA ram_pos_area_1,X
bra_9A18_RTS:
C - - - - - 0x009A28 02:9A18: 60        RTS
bra_9A19:
loc_9A19:
C D 0 - - - 0x009A29 02:9A19: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009A2C 02:9A1C: 29 04     AND #$04
C - - - - - 0x009A2E 02:9A1E: D0 08     BNE bra_9A28
C - - - - - 0x009A30 02:9A20: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009A33 02:9A23: 29 FD     AND #$FD
C - - - - - 0x009A35 02:9A25: 9D 87 05  STA ram_0587_car_flags,X
bra_9A28:
C - - - - - 0x009A38 02:9A28: BD 64 05  LDA ram_pos_area_2,X
C - - - - - 0x009A3B 02:9A2B: 18        CLC
C - - - - - 0x009A3C 02:9A2C: 65 1C     ADC ram_001C_temp
C - - - - - 0x009A3E 02:9A2E: C5 85     CMP ram_max_area
C - - - - - 0x009A40 02:9A30: 90 11     BCC bra_9A43
C - - - - - 0x009A42 02:9A32: A9 00     LDA #$00
C - - - - - 0x009A44 02:9A34: 9D 64 05  STA ram_pos_area_2,X
C - - - - - 0x009A47 02:9A37: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009A4A 02:9A3A: 29 FB     AND #$FB
C - - - - - 0x009A4C 02:9A3C: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x009A4F 02:9A3F: A5 85     LDA ram_max_area
C - - - - - 0x009A51 02:9A41: D0 03     BNE bra_9A46    ; jmp (0085 always > 00)
bra_9A43:
C - - - - - 0x009A53 02:9A43: 9D 64 05  STA ram_pos_area_2,X
bra_9A46:
C - - - - - 0x009A56 02:9A46: 38        SEC
C - - - - - 0x009A57 02:9A47: FD 5F 05  SBC ram_pos_area_1,X
C - - - - - 0x009A5A 02:9A4A: 90 49     BCC bra_9A95_RTS
C - - - - - 0x009A5C 02:9A4C: C5 1C     CMP ram_001C_temp
C - - - - - 0x009A5E 02:9A4E: D0 45     BNE bra_9A95_RTS
C - - - - - 0x009A60 02:9A50: BD 5F 05  LDA ram_pos_area_1,X
C - - - - - 0x009A63 02:9A53: 18        CLC
C - - - - - 0x009A64 02:9A54: 65 1C     ADC ram_001C_temp
C - - - - - 0x009A66 02:9A56: 9D 5F 05  STA ram_pos_area_1,X
C - - - - - 0x009A69 02:9A59: 48        PHA
C - - - - - 0x009A6A 02:9A5A: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009A6D 02:9A5D: 29 FB     AND #$FB
C - - - - - 0x009A6F 02:9A5F: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x009A72 02:9A62: 68        PLA
C - - - - - 0x009A73 02:9A63: C5 85     CMP ram_max_area
C - - - - - 0x009A75 02:9A65: 90 2E     BCC bra_9A95_RTS
C - - - - - 0x009A77 02:9A67: BD 81 06  LDA ram_bot_advantage,X
C - - - - - 0x009A7A 02:9A6A: C9 04     CMP #$04
C - - - - - 0x009A7C 02:9A6C: B0 05     BCS bra_9A73_not_underflow
C - - - - - 0x009A7E 02:9A6E: A9 04     LDA #$04
C - - - - - 0x009A80 02:9A70: 9D 81 06  STA ram_bot_advantage,X
bra_9A73_not_underflow:
C - - - - - 0x009A83 02:9A73: A9 00     LDA #$00
C - - - - - 0x009A85 02:9A75: 9D 5F 05  STA ram_pos_area_1,X
C - - - - - 0x009A88 02:9A78: FE 5A 05  INC ram_plr_laps,X
C - - - - - 0x009A8B 02:9A7B: BD 5A 05  LDA ram_plr_laps,X
C - - - - - 0x009A8E 02:9A7E: C5 61     CMP ram_laps
C - - - - - 0x009A90 02:9A80: 90 13     BCC bra_9A95_RTS    ; if not enough laps
C - - - - - 0x009A92 02:9A82: D0 12     BNE bra_9A96    ; if car finished the race
; if final lap
C - - - - - 0x009A94 02:9A84: A9 16     LDA #$16
C - - - - - 0x009A96 02:9A86: 8D B1 03  STA ram_sound_id
C - - - - - 0x009A99 02:9A89: A9 1A     LDA #$1A
C - - - - - 0x009A9B 02:9A8B: 85 D6     STA ram_00D6
C - - - - - 0x009A9D 02:9A8D: A9 00     LDA #$00
C - - - - - 0x009A9F 02:9A8F: 8D C4 04  STA ram_04C4
C - - - - - 0x009AA2 02:9A92: 8D D4 04  STA ram_04D4
bra_9A95_RTS:
C - - - - - 0x009AA5 02:9A95: 60        RTS
bra_9A96:
C - - - - - 0x009AA6 02:9A96: AD 92 05  LDA ram_finished_race_flag
C - - - - - 0x009AA9 02:9A99: F0 0D     BEQ bra_9AA8
; if another car finishes at the same time?
- - - - - - 0x009AAB 02:9A9B: DE 5A 05  DEC ram_plr_laps,X
- - - - - - 0x009AAE 02:9A9E: A5 85     LDA ram_max_area
- - - - - - 0x009AB0 02:9AA0: 9D 64 05  STA ram_pos_area_2,X
- - - - - - 0x009AB3 02:9AA3: 9D 5F 05  STA ram_pos_area_1,X
- - - - - - 0x009AB6 02:9AA6: D0 ED     BNE bra_9A95_RTS    ; jmp (0085 always > 00)
bra_9AA8:
C - - - - - 0x009AB8 02:9AA8: EE 92 05  INC ram_finished_race_flag
C - - - - - 0x009ABB 02:9AAB: A9 1B     LDA #$1B
C - - - - - 0x009ABD 02:9AAD: 85 D6     STA ram_00D6
C - - - - - 0x009ABF 02:9AAF: A9 00     LDA #$00
C - - - - - 0x009AC1 02:9AB1: 8D 91 05  STA ram_0591
C - - - - - 0x009AC4 02:9AB4: 8D C4 04  STA ram_04C4
C - - - - - 0x009AC7 02:9AB7: 8D D4 04  STA ram_04D4
C - - - - - 0x009ACA 02:9ABA: A2 05     LDX #$05
bra_9ABC_loop:
C - - - - - 0x009ACC 02:9ABC: A9 24     LDA #$24
C - - - - - 0x009ACE 02:9ABE: 95 CC     STA ram_script_handler,X
C - - - - - 0x009AD0 02:9AC0: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x009AD3 02:9AC3: 29 FD     AND #$FD
C - - - - - 0x009AD5 02:9AC5: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x009AD8 02:9AC8: CA        DEX
C - - - - - 0x009AD9 02:9AC9: 10 F1     BPL bra_9ABC_loop
C - - - - - 0x009ADB 02:9ACB: E8        INX ; 00
C - - - - - 0x009ADC 02:9ACC: 8E 91 05  STX ram_0591
C - - - - - 0x009ADF 02:9ACF: A9 0E     LDA #$0E
C - - - - - 0x009AE1 02:9AD1: 85 CC     STA ram_script_handler
C - - - - - 0x009AE3 02:9AD3: 60        RTS



sub_9AD4:
C - - - - - 0x009AE4 02:9AD4: 85 1D     STA ram_001D_temp
C - - - - - 0x009AE6 02:9AD6: B1 81     LDA (ram_0081),Y
C - - - - - 0x009AE8 02:9AD8: 85 13     STA ram_0013_t03_data
C - - - - - 0x009AEA 02:9ADA: C8        INY
C - - - - - 0x009AEB 02:9ADB: B1 81     LDA (ram_0081),Y
C - - - - - 0x009AED 02:9ADD: 85 14     STA ram_0013_t03_data + $01
C - - - - - 0x009AEF 02:9ADF: 8A        TXA
C - - - - - 0x009AF0 02:9AE0: A8        TAY
C - - - - - 0x009AF1 02:9AE1: A6 1F     LDX ram_001F_temp
C - - - - - 0x009AF3 02:9AE3: 10 0A     BPL bra_9AEF
- - - - - - 0x009AF5 02:9AE5: 85 1D     STA ram_001D_temp
- - - - - - 0x009AF7 02:9AE7: A5 81     LDA ram_0081
- - - - - - 0x009AF9 02:9AE9: 85 13     STA ram_0013_t03_data
- - - - - - 0x009AFB 02:9AEB: A5 82     LDA ram_0082
- - - - - - 0x009AFD 02:9AED: 85 14     STA ram_0013_t03_data + $01
bra_9AEF:
sub_9AEF:
C - - - - - 0x009AFF 02:9AEF: B1 13     LDA (ram_0013_t03_data),Y
C - - - - - 0x009B01 02:9AF1: 45 1D     EOR ram_001D_temp
C - - - - - 0x009B03 02:9AF3: 85 15     STA ram_0015_temp
C - - - - - 0x009B05 02:9AF5: C8        INY
C - - - - - 0x009B06 02:9AF6: B1 13     LDA (ram_0013_t03_data),Y
C - - - - - 0x009B08 02:9AF8: 85 16     STA ram_0016_temp    ; pos_X
C - - - - - 0x009B0A 02:9AFA: C8        INY
C - - - - - 0x009B0B 02:9AFB: B1 13     LDA (ram_0013_t03_data),Y
C - - - - - 0x009B0D 02:9AFD: 85 17     STA ram_0017_temp    ; pos_Y
C - - - - - 0x009B0F 02:9AFF: C8        INY
C - - - - - 0x009B10 02:9B00: B1 13     LDA (ram_0013_t03_data),Y
C - - - - - 0x009B12 02:9B02: 85 1C     STA ram_001C_temp
sub_9B04:
C - - - - - 0x009B14 02:9B04: C8        INY
C - - - - - 0x009B15 02:9B05: 84 19     STY ram_0019_temp
C - - - - - 0x009B17 02:9B07: A5 15     LDA ram_0015_temp
C - - - - - 0x009B19 02:9B09: 29 0F     AND #$0F
C - - - - - 0x009B1B 02:9B0B: A8        TAY
C - - - - - 0x009B1C 02:9B0C: B9 2B 9B  LDA tbl_9B2B_lo,Y
C - - - - - 0x009B1F 02:9B0F: 85 0D     STA ram_000D_t07_jmp
C - - - - - 0x009B21 02:9B11: B9 3B 9B  LDA tbl_9B3B_hi,Y
C - - - - - 0x009B24 02:9B14: 85 0E     STA ram_000D_t07_jmp + $01
C - - - - - 0x009B26 02:9B16: 20 CE 97  JSR sub_97CE_indirect_jump_000D
C - - - - - 0x009B29 02:9B19: 08        PHP
C - - - - - 0x009B2A 02:9B1A: A5 15     LDA ram_0015_temp
C - - - - - 0x009B2C 02:9B1C: 29 1F     AND #$1F
C - - - - - 0x009B2E 02:9B1E: C9 10     CMP #$10
C - - - - - 0x009B30 02:9B20: 90 07     BCC bra_9B29
C - - - - - 0x009B32 02:9B22: 28        PLP
C - - - - - 0x009B33 02:9B23: 90 02     BCC bra_9B27
C - - - - - 0x009B35 02:9B25: 18        CLC
C - - - - - 0x009B36 02:9B26: 60        RTS
bra_9B27:
C - - - - - 0x009B37 02:9B27: 38        SEC
C - - - - - 0x009B38 02:9B28: 60        RTS
bra_9B29:
C - - - - - 0x009B39 02:9B29: 28        PLP
C - - - - - 0x009B3A 02:9B2A: 60        RTS



tbl_9B2B_lo:
- D 0 - - - 0x009B3B 02:9B2B: 4B        .byte < ofs_006_9B4B_00   ; 
- D 0 - - - 0x009B3C 02:9B2C: D7        .byte < ofs_006_9BD7_01   ; 
- D 0 - - - 0x009B3D 02:9B2D: 83        .byte < ofs_006_9B83_02   ; 
- D 0 - - - 0x009B3E 02:9B2E: 33        .byte < ofs_006_9C33_03   ; 
- D 0 - - - 0x009B3F 02:9B2F: 56        .byte < ofs_006_9B56_04   ; 
- D 0 - - - 0x009B40 02:9B30: 4A        .byte < ofs_006_9C4A_05   ; 
- D 0 - - - 0x009B41 02:9B31: 99        .byte < ofs_006_9B99_06   ; 
- D 0 - - - 0x009B42 02:9B32: EE        .byte < ofs_006_9BEE_07   ; 
- D 0 - - - 0x009B43 02:9B33: 61        .byte < ofs_006_9B61_08   ; 
- D 0 - - - 0x009B44 02:9B34: 02        .byte < ofs_006_9C02_09   ; 
- D 0 - - - 0x009B45 02:9B35: AC        .byte < ofs_006_9BAC_0A   ; 
- D 0 - - - 0x009B46 02:9B36: 5E        .byte < ofs_006_9C5E_0B   ; 
- D 0 - - - 0x009B47 02:9B37: 71        .byte < ofs_006_9B71_0C   ; 
- D 0 - - - 0x009B48 02:9B38: 77        .byte < ofs_006_9C77_0D   ; 
- D 0 - - - 0x009B49 02:9B39: C4        .byte < ofs_006_9BC4_0E   ; 
- D 0 - - - 0x009B4A 02:9B3A: 1F        .byte < ofs_006_9C1F_0F   ; 



tbl_9B3B_hi:
- D 0 - - - 0x009B4B 02:9B3B: 9B        .byte > ofs_006_9B4B_00   ; 
- D 0 - - - 0x009B4C 02:9B3C: 9B        .byte > ofs_006_9BD7_01   ; 
- D 0 - - - 0x009B4D 02:9B3D: 9B        .byte > ofs_006_9B83_02   ; 
- D 0 - - - 0x009B4E 02:9B3E: 9C        .byte > ofs_006_9C33_03   ; 
- D 0 - - - 0x009B4F 02:9B3F: 9B        .byte > ofs_006_9B56_04   ; 
- D 0 - - - 0x009B50 02:9B40: 9C        .byte > ofs_006_9C4A_05   ; 
- D 0 - - - 0x009B51 02:9B41: 9B        .byte > ofs_006_9B99_06   ; 
- D 0 - - - 0x009B52 02:9B42: 9B        .byte > ofs_006_9BEE_07   ; 
- D 0 - - - 0x009B53 02:9B43: 9B        .byte > ofs_006_9B61_08   ; 
- D 0 - - - 0x009B54 02:9B44: 9C        .byte > ofs_006_9C02_09   ; 
- D 0 - - - 0x009B55 02:9B45: 9B        .byte > ofs_006_9BAC_0A   ; 
- D 0 - - - 0x009B56 02:9B46: 9C        .byte > ofs_006_9C5E_0B   ; 
- D 0 - - - 0x009B57 02:9B47: 9B        .byte > ofs_006_9B71_0C   ; 
- D 0 - - - 0x009B58 02:9B48: 9C        .byte > ofs_006_9C77_0D   ; 
- D 0 - - - 0x009B59 02:9B49: 9B        .byte > ofs_006_9BC4_0E   ; 
- D 0 - - - 0x009B5A 02:9B4A: 9C        .byte > ofs_006_9C1F_0F   ; 



ofs_006_9B4B_00:
C - - J - - 0x009B5B 02:9B4B: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009B5D 02:9B4D: C5 16     CMP ram_0016_temp
C - - - - - 0x009B5F 02:9B4F: 90 2E     BCC bra_9B7F
C - - - - - 0x009B61 02:9B51: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009B63 02:9B53: C5 17     CMP ram_0017_temp
C - - - - - 0x009B65 02:9B55: 60        RTS



ofs_006_9B56_04:
C - - J - - 0x009B66 02:9B56: A5 17     LDA ram_0017_temp
C - - - - - 0x009B68 02:9B58: C5 74     CMP ram_0074    ; car pos_Y_hi
C - - - - - 0x009B6A 02:9B5A: 90 23     BCC bra_9B7F
C - - - - - 0x009B6C 02:9B5C: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009B6E 02:9B5E: C5 16     CMP ram_0016_temp
C - - - - - 0x009B70 02:9B60: 60        RTS



ofs_006_9B61_08:
C - - J - - 0x009B71 02:9B61: A5 16     LDA ram_0016_temp
C - - - - - 0x009B73 02:9B63: C5 71     CMP ram_0071    ; car pos_X_hi
C - - - - - 0x009B75 02:9B65: 90 18     BCC bra_9B7F
C - - - - - 0x009B77 02:9B67: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009B79 02:9B69: C5 17     CMP ram_0017_temp
C - - - - - 0x009B7B 02:9B6B: 90 02     BCC bra_9B6F
bra_9B6D:
C - - - - - 0x009B7D 02:9B6D: 18        CLC
C - - - - - 0x009B7E 02:9B6E: 60        RTS
bra_9B6F:
C - - - - - 0x009B7F 02:9B6F: 38        SEC
C - - - - - 0x009B80 02:9B70: 60        RTS



ofs_006_9B71_0C:
C - - J - - 0x009B81 02:9B71: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009B83 02:9B73: C5 17     CMP ram_0017_temp
C - - - - - 0x009B85 02:9B75: 90 08     BCC bra_9B7F
C - - - - - 0x009B87 02:9B77: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009B89 02:9B79: C5 16     CMP ram_0016_temp
C - - - - - 0x009B8B 02:9B7B: 90 F2     BCC bra_9B6F
C - - - - - 0x009B8D 02:9B7D: 18        CLC
bra_9B7E_RTS:
C - - - - - 0x009B8E 02:9B7E: 60        RTS
bra_9B7F:
C - - - - - 0x009B8F 02:9B7F: 68        PLA
C - - - - - 0x009B90 02:9B80: 68        PLA
C - - - - - 0x009B91 02:9B81: 18        CLC
C - - - - - 0x009B92 02:9B82: 60        RTS



ofs_006_9B83_02:
C - - J - - 0x009B93 02:9B83: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009B95 02:9B85: 38        SEC
C - - - - - 0x009B96 02:9B86: E5 16     SBC ram_0016_temp
C - - - - - 0x009B98 02:9B88: 90 F5     BCC bra_9B7F
C - - - - - 0x009B9A 02:9B8A: 85 18     STA ram_0018_temp
C - - - - - 0x009B9C 02:9B8C: A5 17     LDA ram_0017_temp
C - - - - - 0x009B9E 02:9B8E: 38        SEC
C - - - - - 0x009B9F 02:9B8F: E5 74     SBC ram_0074    ; car pos_Y_hi
C - - - - - 0x009BA1 02:9B91: 90 DC     BCC bra_9B6F
C - - - - - 0x009BA3 02:9B93: C5 18     CMP ram_0018_temp
C - - - - - 0x009BA5 02:9B95: 90 D8     BCC bra_9B6F
C - - - - - 0x009BA7 02:9B97: 18        CLC
C - - - - - 0x009BA8 02:9B98: 60        RTS



ofs_006_9B99_06:
C - - J - - 0x009BA9 02:9B99: A5 16     LDA ram_0016_temp
C - - - - - 0x009BAB 02:9B9B: 38        SEC
C - - - - - 0x009BAC 02:9B9C: E5 71     SBC ram_0071    ; car pos_X_hi
C - - - - - 0x009BAE 02:9B9E: 90 DF     BCC bra_9B7F
C - - - - - 0x009BB0 02:9BA0: 85 18     STA ram_0018_temp
C - - - - - 0x009BB2 02:9BA2: A5 17     LDA ram_0017_temp
C - - - - - 0x009BB4 02:9BA4: 38        SEC
C - - - - - 0x009BB5 02:9BA5: E5 74     SBC ram_0074    ; car pos_Y_hi
C - - - - - 0x009BB7 02:9BA7: 90 D5     BCC bra_9B7E_RTS
C - - - - - 0x009BB9 02:9BA9: C5 18     CMP ram_0018_temp
C - - - - - 0x009BBB 02:9BAB: 60        RTS



ofs_006_9BAC_0A:
C - - J - - 0x009BBC 02:9BAC: A5 16     LDA ram_0016_temp
C - - - - - 0x009BBE 02:9BAE: 38        SEC
C - - - - - 0x009BBF 02:9BAF: E5 71     SBC ram_0071    ; car pos_X_hi
C - - - - - 0x009BC1 02:9BB1: 90 CC     BCC bra_9B7F
C - - - - - 0x009BC3 02:9BB3: 85 18     STA ram_0018_temp
C - - - - - 0x009BC5 02:9BB5: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009BC7 02:9BB7: 38        SEC
C - - - - - 0x009BC8 02:9BB8: E5 17     SBC ram_0017_temp
C - - - - - 0x009BCA 02:9BBA: 90 B3     BCC bra_9B6F
C - - - - - 0x009BCC 02:9BBC: C5 18     CMP ram_0018_temp
C - - - - - 0x009BCE 02:9BBE: F0 03     BEQ bra_9BC3_RTS
C - - - - - 0x009BD0 02:9BC0: B0 AB     BCS bra_9B6D
C - - - - - 0x009BD2 02:9BC2: 38        SEC
bra_9BC3_RTS:
C - - - - - 0x009BD3 02:9BC3: 60        RTS



ofs_006_9BC4_0E:
C - - J - - 0x009BD4 02:9BC4: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009BD6 02:9BC6: 38        SEC
C - - - - - 0x009BD7 02:9BC7: E5 16     SBC ram_0016_temp
C - - - - - 0x009BD9 02:9BC9: 90 B4     BCC bra_9B7F
C - - - - - 0x009BDB 02:9BCB: 85 18     STA ram_0018_temp
C - - - - - 0x009BDD 02:9BCD: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009BDF 02:9BCF: 38        SEC
C - - - - - 0x009BE0 02:9BD0: E5 17     SBC ram_0017_temp
C - - - - - 0x009BE2 02:9BD2: 90 AA     BCC bra_9B7E_RTS
C - - - - - 0x009BE4 02:9BD4: C5 18     CMP ram_0018_temp
C - - - - - 0x009BE6 02:9BD6: 60        RTS



ofs_006_9BD7_01:
C - - J - - 0x009BE7 02:9BD7: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009BE9 02:9BD9: 38        SEC
C - - - - - 0x009BEA 02:9BDA: E5 16     SBC ram_0016_temp
C - - - - - 0x009BEC 02:9BDC: 90 3D     BCC bra_9C1B
C - - - - - 0x009BEE 02:9BDE: 4A        LSR
C - - - - - 0x009BEF 02:9BDF: 85 18     STA ram_0018_temp
C - - - - - 0x009BF1 02:9BE1: A5 17     LDA ram_0017_temp
C - - - - - 0x009BF3 02:9BE3: 38        SEC
C - - - - - 0x009BF4 02:9BE4: E5 74     SBC ram_0074    ; car pos_Y_hi
C - - - - - 0x009BF6 02:9BE6: 90 31     BCC bra_9C19
C - - - - - 0x009BF8 02:9BE8: C5 18     CMP ram_0018_temp
C - - - - - 0x009BFA 02:9BEA: 90 2D     BCC bra_9C19
C - - - - - 0x009BFC 02:9BEC: 18        CLC
C - - - - - 0x009BFD 02:9BED: 60        RTS



ofs_006_9BEE_07:
C - - J - - 0x009BFE 02:9BEE: A5 16     LDA ram_0016_temp
C - - - - - 0x009C00 02:9BF0: 38        SEC
C - - - - - 0x009C01 02:9BF1: E5 71     SBC ram_0071    ; car pos_X_hi
C - - - - - 0x009C03 02:9BF3: 90 26     BCC bra_9C1B
C - - - - - 0x009C05 02:9BF5: 4A        LSR
C - - - - - 0x009C06 02:9BF6: 85 18     STA ram_0018_temp
C - - - - - 0x009C08 02:9BF8: A5 17     LDA ram_0017_temp
C - - - - - 0x009C0A 02:9BFA: 38        SEC
C - - - - - 0x009C0B 02:9BFB: E5 74     SBC ram_0074    ; car pos_Y_hi
C - - - - - 0x009C0D 02:9BFD: 90 1B     BCC bra_9C1A_RTS
C - - - - - 0x009C0F 02:9BFF: C5 18     CMP ram_0018_temp
C - - - - - 0x009C11 02:9C01: 60        RTS



ofs_006_9C02_09:
C - - J - - 0x009C12 02:9C02: A5 16     LDA ram_0016_temp
C - - - - - 0x009C14 02:9C04: 38        SEC
C - - - - - 0x009C15 02:9C05: E5 71     SBC ram_0071    ; car pos_X_hi
C - - - - - 0x009C17 02:9C07: 90 12     BCC bra_9C1B
C - - - - - 0x009C19 02:9C09: 4A        LSR
C - - - - - 0x009C1A 02:9C0A: 85 18     STA ram_0018_temp
C - - - - - 0x009C1C 02:9C0C: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009C1E 02:9C0E: 38        SEC
C - - - - - 0x009C1F 02:9C0F: E5 17     SBC ram_0017_temp
C - - - - - 0x009C21 02:9C11: 90 06     BCC bra_9C19
C - - - - - 0x009C23 02:9C13: C5 18     CMP ram_0018_temp
C - - - - - 0x009C25 02:9C15: F0 07     BEQ bra_9C1E_RTS
C - - - - - 0x009C27 02:9C17: B0 04     BCS bra_9C1D
bra_9C19:
C - - - - - 0x009C29 02:9C19: 38        SEC
bra_9C1A_RTS:
C - - - - - 0x009C2A 02:9C1A: 60        RTS
bra_9C1B:
C - - - - - 0x009C2B 02:9C1B: 68        PLA
C - - - - - 0x009C2C 02:9C1C: 68        PLA
bra_9C1D:
C - - - - - 0x009C2D 02:9C1D: 18        CLC
bra_9C1E_RTS:
C - - - - - 0x009C2E 02:9C1E: 60        RTS



ofs_006_9C1F_0F:
C - - J - - 0x009C2F 02:9C1F: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009C31 02:9C21: 38        SEC
C - - - - - 0x009C32 02:9C22: E5 16     SBC ram_0016_temp
C - - - - - 0x009C34 02:9C24: 90 F5     BCC bra_9C1B
C - - - - - 0x009C36 02:9C26: 4A        LSR
C - - - - - 0x009C37 02:9C27: 85 18     STA ram_0018_temp
C - - - - - 0x009C39 02:9C29: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009C3B 02:9C2B: 38        SEC
C - - - - - 0x009C3C 02:9C2C: E5 17     SBC ram_0017_temp
C - - - - - 0x009C3E 02:9C2E: 90 EA     BCC bra_9C1A_RTS
C - - - - - 0x009C40 02:9C30: C5 18     CMP ram_0018_temp
C - - - - - 0x009C42 02:9C32: 60        RTS



ofs_006_9C33_03:
C - - J - - 0x009C43 02:9C33: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009C45 02:9C35: 38        SEC
C - - - - - 0x009C46 02:9C36: E5 16     SBC ram_0016_temp
C - - - - - 0x009C48 02:9C38: 90 E1     BCC bra_9C1B
C - - - - - 0x009C4A 02:9C3A: 85 18     STA ram_0018_temp
C - - - - - 0x009C4C 02:9C3C: A5 17     LDA ram_0017_temp
C - - - - - 0x009C4E 02:9C3E: 38        SEC
C - - - - - 0x009C4F 02:9C3F: E5 74     SBC ram_0074    ; car pos_Y_hi
C - - - - - 0x009C51 02:9C41: 90 D6     BCC bra_9C19
C - - - - - 0x009C53 02:9C43: 4A        LSR
C - - - - - 0x009C54 02:9C44: C5 18     CMP ram_0018_temp
C - - - - - 0x009C56 02:9C46: 90 D1     BCC bra_9C19
C - - - - - 0x009C58 02:9C48: 18        CLC
C - - - - - 0x009C59 02:9C49: 60        RTS



ofs_006_9C4A_05:
C - - J - - 0x009C5A 02:9C4A: A5 16     LDA ram_0016_temp
C - - - - - 0x009C5C 02:9C4C: 38        SEC
C - - - - - 0x009C5D 02:9C4D: E5 71     SBC ram_0071    ; car pos_X_hi
C - - - - - 0x009C5F 02:9C4F: 90 CA     BCC bra_9C1B
C - - - - - 0x009C61 02:9C51: 85 18     STA ram_0018_temp
C - - - - - 0x009C63 02:9C53: A5 17     LDA ram_0017_temp
C - - - - - 0x009C65 02:9C55: 38        SEC
C - - - - - 0x009C66 02:9C56: E5 74     SBC ram_0074    ; car pos_Y_hi
C - - - - - 0x009C68 02:9C58: 90 C0     BCC bra_9C1A_RTS
C - - - - - 0x009C6A 02:9C5A: 4A        LSR
C - - - - - 0x009C6B 02:9C5B: C5 18     CMP ram_0018_temp
C - - - - - 0x009C6D 02:9C5D: 60        RTS



ofs_006_9C5E_0B:
C - - J - - 0x009C6E 02:9C5E: A5 16     LDA ram_0016_temp
C - - - - - 0x009C70 02:9C60: 38        SEC
C - - - - - 0x009C71 02:9C61: E5 71     SBC ram_0071    ; car pos_X_hi
C - - - - - 0x009C73 02:9C63: 90 11     BCC bra_9C76_RTS
C - - - - - 0x009C75 02:9C65: 85 18     STA ram_0018_temp
C - - - - - 0x009C77 02:9C67: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009C79 02:9C69: 38        SEC
C - - - - - 0x009C7A 02:9C6A: E5 17     SBC ram_0017_temp
C - - - - - 0x009C7C 02:9C6C: 90 AB     BCC bra_9C19
C - - - - - 0x009C7E 02:9C6E: 4A        LSR
C - - - - - 0x009C7F 02:9C6F: C5 18     CMP ram_0018_temp
C - - - - - 0x009C81 02:9C71: F0 AB     BEQ bra_9C1E_RTS
C - - - - - 0x009C83 02:9C73: B0 A8     BCS bra_9C1D
C - - - - - 0x009C85 02:9C75: 38        SEC
bra_9C76_RTS:
C - - - - - 0x009C86 02:9C76: 60        RTS



ofs_006_9C77_0D:
C - - J - - 0x009C87 02:9C77: A5 71     LDA ram_0071    ; car pos_X_hi
C - - - - - 0x009C89 02:9C79: 38        SEC
C - - - - - 0x009C8A 02:9C7A: E5 16     SBC ram_0016_temp
C - - - - - 0x009C8C 02:9C7C: 90 9D     BCC bra_9C1B
C - - - - - 0x009C8E 02:9C7E: 85 18     STA ram_0018_temp
C - - - - - 0x009C90 02:9C80: A5 74     LDA ram_0074    ; car pos_Y_hi
C - - - - - 0x009C92 02:9C82: 38        SEC
C - - - - - 0x009C93 02:9C83: E5 17     SBC ram_0017_temp
C - - - - - 0x009C95 02:9C85: 90 93     BCC bra_9C1A_RTS
C - - - - - 0x009C97 02:9C87: 4A        LSR
C - - - - - 0x009C98 02:9C88: C5 18     CMP ram_0018_temp
C - - - - - 0x009C9A 02:9C8A: 60        RTS



tbl_9C8B_laps:
- D 0 - - - 0x009C9B 02:9C8B: 04        .byte $04   ; 00 
- D 0 - - - 0x009C9C 02:9C8C: 04        .byte $04   ; 01 
- D 0 - - - 0x009C9D 02:9C8D: 04        .byte $04   ; 02 
- D 0 - - - 0x009C9E 02:9C8E: 04        .byte $04   ; 03 
- D 0 - - - 0x009C9F 02:9C8F: 07        .byte $07   ; 04 
- D 0 - - - 0x009CA0 02:9C90: 04        .byte $04   ; 05 
- D 0 - - - 0x009CA1 02:9C91: 04        .byte $04   ; 06 
- D 0 - - - 0x009CA2 02:9C92: 04        .byte $04   ; 07 
- D 0 - - - 0x009CA3 02:9C93: 0B        .byte $0B   ; 08 



tbl_9C94_lo:
- D 0 - - - 0x009CA4 02:9C94: B8        .byte < _off019_9CB8_00
- D 0 - - - 0x009CA5 02:9C95: 2D        .byte < _off019_9D2D_01
- D 0 - - - 0x009CA6 02:9C96: 9D        .byte < _off019_9D9D_02
- D 0 - - - 0x009CA7 02:9C97: 41        .byte < _off019_9E41_03
- D 0 - - - 0x009CA8 02:9C98: D8        .byte < _off019_9ED8_04
- D 0 - - - 0x009CA9 02:9C99: 6A        .byte < _off019_9F6A_05
- D 0 - - - 0x009CAA 02:9C9A: F6        .byte < _off019_9FF6_06
- D 0 - - - 0x009CAB 02:9C9B: 92        .byte < _off019_A092_07
- D 0 - - - 0x009CAC 02:9C9C: 16        .byte < _off019_A116_08



tbl_9C9D_hi:
- D 0 - - - 0x009CAD 02:9C9D: 9C        .byte > _off019_9CB8_00
- D 0 - - - 0x009CAE 02:9C9E: 9D        .byte > _off019_9D2D_01
- D 0 - - - 0x009CAF 02:9C9F: 9D        .byte > _off019_9D9D_02
- D 0 - - - 0x009CB0 02:9CA0: 9E        .byte > _off019_9E41_03
- D 0 - - - 0x009CB1 02:9CA1: 9E        .byte > _off019_9ED8_04
- D 0 - - - 0x009CB2 02:9CA2: 9F        .byte > _off019_9F6A_05
- D 0 - - - 0x009CB3 02:9CA3: 9F        .byte > _off019_9FF6_06
- D 0 - - - 0x009CB4 02:9CA4: A0        .byte > _off019_A092_07
- D 0 - - - 0x009CB5 02:9CA5: A1        .byte > _off019_A116_08



tbl_9CA6_lo:
- D 0 - - - 0x009CB6 02:9CA6: 1E        .byte < _off020_9D1E_00
- D 0 - - - 0x009CB7 02:9CA7: 84        .byte < _off020_9D84_01
- D 0 - - - 0x009CB8 02:9CA8: 0F        .byte < _off020_9E0F_02
- D 0 - - - 0x009CB9 02:9CA9: B0        .byte < _off020_9EB0_03
- D 0 - - - 0x009CBA 02:9CAA: 38        .byte < _off020_9F38_04
- D 0 - - - 0x009CBB 02:9CAB: D3        .byte < _off020_9FD3_05
- D 0 - - - 0x009CBC 02:9CAC: 74        .byte < _off020_A074_06
- D 0 - - - 0x009CBD 02:9CAD: F8        .byte < _off020_A0F8_07
- D 0 - - - 0x009CBE 02:9CAE: 7C        .byte < _off020_A17C_08



tbl_9CAF_hi:
- D 0 - - - 0x009CBF 02:9CAF: 9D        .byte > _off020_9D1E_00
- D 0 - - - 0x009CC0 02:9CB0: 9D        .byte > _off020_9D84_01
- D 0 - - - 0x009CC1 02:9CB1: 9E        .byte > _off020_9E0F_02
- D 0 - - - 0x009CC2 02:9CB2: 9E        .byte > _off020_9EB0_03
- D 0 - - - 0x009CC3 02:9CB3: 9F        .byte > _off020_9F38_04
- D 0 - - - 0x009CC4 02:9CB4: 9F        .byte > _off020_9FD3_05
- D 0 - - - 0x009CC5 02:9CB5: A0        .byte > _off020_A074_06
- D 0 - - - 0x009CC6 02:9CB6: A0        .byte > _off020_A0F8_07
- D 0 - - - 0x009CC7 02:9CB7: A1        .byte > _off020_A17C_08



_off019_9CB8_00:
; area handler, pos_X, pos_Y
- D 0 - I - 0x009CC8 02:9CB8: 0C        .byte $0C, $82, $4F   ; 00 
- D 0 - I - 0x009CCB 02:9CBB: 18        .byte $18, $81, $6E   ; 01 
- D 0 - I - 0x009CCE 02:9CBE: FF        .byte $FF   ; 02 
- D 0 - I - 0x009CCF 02:9CBF: 15 9D     .word off_FF_9D15
- D 0 - I - 0x009CD1 02:9CC1: 0F        .byte $0F, $2D, $A5   ; 03 
- D 0 - I - 0x009CD4 02:9CC4: 0C        .byte $0C, $27, $9A   ; 04 
- D 0 - I - 0x009CD7 02:9CC7: 08        .byte $08, $22, $9E   ; 05 
- D 0 - I - 0x009CDA 02:9CCA: 06        .byte $06, $37, $9D   ; 06 
- D 0 - I - 0x009CDD 02:9CCD: 06        .byte $06, $41, $85   ; 07 
- D 0 - I - 0x009CE0 02:9CD0: 08        .byte $08, $53, $5D   ; 08 
- D 0 - I - 0x009CE3 02:9CD3: 08        .byte $08, $53, $4B   ; 09 
- D 0 - I - 0x009CE6 02:9CD6: 05        .byte $05, $54, $4F   ; 0A 
- D 0 - I - 0x009CE9 02:9CD9: 05        .byte $05, $6D, $3E   ; 0B 
- D 0 - I - 0x009CEC 02:9CDC: 04        .byte $04, $80, $3F   ; 0C 
- D 0 - I - 0x009CEF 02:9CDF: 05        .byte $05, $A3, $3A   ; 0D 
- D 0 - I - 0x009CF2 02:9CE2: 06        .byte $06, $BD, $20   ; 0E 
- D 0 - I - 0x009CF5 02:9CE5: 03        .byte $03, $C3, $24   ; 0F 
- D 0 - I - 0x009CF8 02:9CE8: 02        .byte $02, $E3, $26   ; 10 
- D 0 - I - 0x009CFB 02:9CEB: 00        .byte $00, $E5, $26   ; 11 
- D 0 - I - 0x009CFE 02:9CEE: 00        .byte $00, $E1, $36   ; 12 
- D 0 - I - 0x009D01 02:9CF1: 00        .byte $00, $DF, $42   ; 13 
- D 0 - I - 0x009D04 02:9CF4: 00        .byte $00, $DA, $52   ; 14 
- D 0 - I - 0x009D07 02:9CF7: 00        .byte $00, $D9, $62   ; 15 
- D 0 - I - 0x009D0A 02:9CFA: 00        .byte $00, $D4, $72   ; 16 
- D 0 - I - 0x009D0D 02:9CFD: 0D        .byte $0D, $D6, $88   ; 17 
- D 0 - I - 0x009D10 02:9D00: 09        .byte $09, $D3, $87   ; 18 
- D 0 - I - 0x009D13 02:9D03: FF        .byte $FF   ; 19 
- D 0 - I - 0x009D14 02:9D04: 0C 9D     .word off_FF_9D0C
- D 0 - I - 0x009D16 02:9D06: 14        .byte $14, $AF, $70   ; 1A 
- D 0 - I - 0x009D19 02:9D09: 0B        .byte $0B, $A6, $4E   ; 1B 



off_FF_9D0C:
- D 0 - I - 0x009D1C 02:9D0C: 10        .byte $10, $AB, $6D   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009D1F 02:9D0F: 01        .byte $01, $2C, $AF   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009D22 02:9D12: 70        .byte $70, $02   ; pos_X, pos_Y

- D 0 - I - 0x009D24 02:9D14: 01        .byte $01   ; 



off_FF_9D15:
- D 0 - I - 0x009D25 02:9D15: 0F        .byte $0F, $45, $87   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009D28 02:9D18: 01        .byte $01, $3B, $7F   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009D2B 02:9D1B: 72        .byte $72, $FE   ; pos_X, pos_Y

- D 0 - I - 0x009D2D 02:9D1D: 02        .byte $02   ; 



_off020_9D1E_00:
- D 0 - I - 0x009D2E 02:9D1E: 0C        .byte $0C   ; 
- D 0 - I - 0x009D2F 02:9D1F: AF        .byte $AF   ; 
- D 0 - I - 0x009D30 02:9D20: 70        .byte $70   ; 
- D 0 - I - 0x009D31 02:9D21: 02        .byte $02   ; 
- - - - - - 0x009D32 02:9D22: 00        .byte $00   ; 
- D 0 - I - 0x009D33 02:9D23: 0B        .byte $0B   ; 
- D 0 - I - 0x009D34 02:9D24: A6        .byte $A6   ; 
- D 0 - I - 0x009D35 02:9D25: 4E        .byte $4E   ; 
- D 0 - I - 0x009D36 02:9D26: 01        .byte $01   ; 
- D 0 - I - 0x009D37 02:9D27: 01        .byte $01   ; 
- D 0 - I - 0x009D38 02:9D28: 0B        .byte $0B   ; 
- D 0 - I - 0x009D39 02:9D29: 7F        .byte $7F   ; 
- D 0 - I - 0x009D3A 02:9D2A: 72        .byte $72   ; 
- D 0 - I - 0x009D3B 02:9D2B: 02        .byte $02   ; 
- D 0 - I - 0x009D3C 02:9D2C: 00        .byte $00   ; 



_off019_9D2D_01:
; area handler, pos_X, pos_Y
- D 0 - I - 0x009D3D 02:9D2D: 03        .byte $03, $A6, $7B   ; 00 
- D 0 - I - 0x009D40 02:9D30: 00        .byte $00, $A6, $7E   ; 01 
- D 0 - I - 0x009D43 02:9D33: FF        .byte $FF   ; 02 
- D 0 - I - 0x009D44 02:9D34: 72 9D     .word off_FF_9D72
- D 0 - I - 0x009D46 02:9D36: 1C        .byte $1C, $D5, $8E   ; 03 
- D 0 - I - 0x009D49 02:9D39: 1F        .byte $1F, $DA, $80   ; 04 
- D 0 - I - 0x009D4C 02:9D3C: 10        .byte $10, $DA, $6A   ; 05 
- D 0 - I - 0x009D4F 02:9D3F: 10        .byte $10, $C3, $4B   ; 06 
- D 0 - I - 0x009D52 02:9D42: 11        .byte $11, $D3, $2C   ; 07 
- D 0 - I - 0x009D55 02:9D45: 14        .byte $14, $D6, $28   ; 08 
- D 0 - I - 0x009D58 02:9D48: 15        .byte $15, $CC, $31   ; 09 
- D 0 - I - 0x009D5B 02:9D4B: 14        .byte $14, $9F, $34   ; 0A 
- D 0 - I - 0x009D5E 02:9D4E: 14        .byte $14, $80, $3E   ; 0B 
- D 0 - I - 0x009D61 02:9D51: 14        .byte $14, $75, $3C   ; 0C 
- D 0 - I - 0x009D64 02:9D54: 14        .byte $14, $61, $3B   ; 0D 
- D 0 - I - 0x009D67 02:9D57: 15        .byte $15, $4D, $43   ; 0E 
- D 0 - I - 0x009D6A 02:9D5A: 14        .byte $14, $1F, $44   ; 0F 
- D 0 - I - 0x009D6D 02:9D5D: 18        .byte $18, $1F, $3E   ; 10 
- D 0 - I - 0x009D70 02:9D60: 18        .byte $18, $1E, $58   ; 11 
- D 0 - I - 0x009D73 02:9D63: 1A        .byte $1A, $2C, $60   ; 12 
- D 0 - I - 0x009D76 02:9D66: 1C        .byte $1C, $3E, $5C   ; 13 
- D 0 - I - 0x009D79 02:9D69: FF        .byte $FF   ; 14 
- D 0 - I - 0x009D7A 02:9D6A: 7B 9D     .word off_FF_9D7B
- D 0 - I - 0x009D7C 02:9D6C: 1B        .byte $1B, $7C, $54   ; 15 
- D 0 - I - 0x009D7F 02:9D6F: 1B        .byte $1B, $9A, $58   ; 16 



off_FF_9D72:
- D 0 - I - 0x009D82 02:9D72: 19        .byte $19, $C5, $8D   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009D85 02:9D75: 01        .byte $01, $2B, $AE   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009D88 02:9D78: 79        .byte $79, $FE   ; pos_X, pos_Y

- D 0 - I - 0x009D8A 02:9D7A: 04        .byte $04   ; 



off_FF_9D7B:
- D 0 - I - 0x009D8B 02:9D7B: 1D        .byte $1D, $54, $57   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009D8E 02:9D7E: 01        .byte $01, $38, $6D   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009D91 02:9D81: 7E        .byte $7E, $00   ; pos_X, pos_Y

- D 0 - I - 0x009D93 02:9D83: 01        .byte $01   ; 



_off020_9D84_01:
- D 0 - I - 0x009D94 02:9D84: 18        .byte $18   ; 
- D 0 - I - 0x009D95 02:9D85: 6D        .byte $6D   ; 
- D 0 - I - 0x009D96 02:9D86: 7E        .byte $7E   ; 
- D 0 - I - 0x009D97 02:9D87: 00        .byte $00   ; 
- - - - - - 0x009D98 02:9D88: 00        .byte $00   ; 
- D 0 - I - 0x009D99 02:9D89: 3B        .byte $3B   ; 
- D 0 - I - 0x009D9A 02:9D8A: 6D        .byte $6D   ; 
- D 0 - I - 0x009D9B 02:9D8B: 77        .byte $77   ; 
- D 0 - I - 0x009D9C 02:9D8C: 01        .byte $01   ; 
- D 0 - I - 0x009D9D 02:9D8D: 01        .byte $01   ; 
- D 0 - I - 0x009D9E 02:9D8E: 3B        .byte $3B   ; 
- D 0 - I - 0x009D9F 02:9D8F: 7C        .byte $7C   ; 
- D 0 - I - 0x009DA0 02:9D90: 54        .byte $54   ; 
- D 0 - I - 0x009DA1 02:9D91: 01        .byte $01   ; 
- D 0 - I - 0x009DA2 02:9D92: 01        .byte $01   ; 
- D 0 - I - 0x009DA3 02:9D93: 3B        .byte $3B   ; 
- D 0 - I - 0x009DA4 02:9D94: 9A        .byte $9A   ; 
- D 0 - I - 0x009DA5 02:9D95: 58        .byte $58   ; 
- D 0 - I - 0x009DA6 02:9D96: 01        .byte $01   ; 
- D 0 - I - 0x009DA7 02:9D97: 01        .byte $01   ; 
- D 0 - I - 0x009DA8 02:9D98: 1B        .byte $1B   ; 
- D 0 - I - 0x009DA9 02:9D99: AC        .byte $AC   ; 
- D 0 - I - 0x009DAA 02:9D9A: 79        .byte $79   ; 
- D 0 - I - 0x009DAB 02:9D9B: 02        .byte $02   ; 
- D 0 - I - 0x009DAC 02:9D9C: 00        .byte $00   ; 



_off019_9D9D_02:
; area handler, pos_X, pos_Y
- D 0 - I - 0x009DAD 02:9D9D: 0A        .byte $0A, $3D, $9B   ; 00 
- D 0 - I - 0x009DB0 02:9DA0: 08        .byte $08, $22, $90   ; 01 
- D 0 - I - 0x009DB3 02:9DA3: FF        .byte $FF   ; 02 
- D 0 - I - 0x009DB4 02:9DA4: EB 9D     .word off_FF_9DEB
- D 0 - I - 0x009DB6 02:9DA6: 07        .byte $07, $3C, $5A   ; 03 
- D 0 - I - 0x009DB9 02:9DA9: 08        .byte $08, $41, $3F   ; 04 
- D 0 - I - 0x009DBC 02:9DAC: 08        .byte $08, $41, $2E   ; 05 
- D 0 - I - 0x009DBF 02:9DAF: 05        .byte $05, $43, $28   ; 06 
- D 0 - I - 0x009DC2 02:9DB2: 02        .byte $02, $3B, $2D   ; 07 
- D 0 - I - 0x009DC5 02:9DB5: 04        .byte $04, $6B, $2C   ; 08 
- D 0 - I - 0x009DC8 02:9DB8: FF        .byte $FF   ; 09 
- D 0 - I - 0x009DC9 02:9DB9: FD 9D     .word off_FF_9DFD
- D 0 - I - 0x009DCB 02:9DBB: FF        .byte $FF   ; 0A 
- D 0 - I - 0x009DCC 02:9DBC: 06 9E     .word off_FF_9E06
- D 0 - I - 0x009DCE 02:9DBE: 02        .byte $02, $81, $5D   ; 0B 
- D 0 - I - 0x009DD1 02:9DC1: 06        .byte $06, $C9, $4D   ; 0C 
- D 0 - I - 0x009DD4 02:9DC4: 06        .byte $06, $E0, $44   ; 0D 
- D 0 - I - 0x009DD7 02:9DC7: 01        .byte $01, $CF, $3B   ; 0E 
- D 0 - I - 0x009DDA 02:9DCA: 02        .byte $02, $E6, $4C   ; 0F 
- D 0 - I - 0x009DDD 02:9DCD: 0E        .byte $0E, $E5, $44   ; 10 
- D 0 - I - 0x009DE0 02:9DD0: 0E        .byte $0E, $C9, $4E   ; 11 
- D 0 - I - 0x009DE3 02:9DD3: 0E        .byte $0E, $B3, $5F   ; 12 
- D 0 - I - 0x009DE6 02:9DD6: 03        .byte $03, $C0, $98   ; 13 
- D 0 - I - 0x009DE9 02:9DD9: 00        .byte $00, $CD, $97   ; 14 
- D 0 - I - 0x009DEC 02:9DDC: 0E        .byte $0E, $CC, $96   ; 15 
- D 0 - I - 0x009DEF 02:9DDF: 0C        .byte $0C, $B6, $96   ; 16 
- D 0 - I - 0x009DF2 02:9DE2: FF        .byte $FF   ; 17 
- D 0 - I - 0x009DF3 02:9DE3: F4 9D     .word off_FF_9DF4
- D 0 - I - 0x009DF5 02:9DE5: 0B        .byte $0B, $67, $A0   ; 18 
- D 0 - I - 0x009DF8 02:9DE8: 0B        .byte $0B, $69, $73   ; 19 



off_FF_9DEB:
- D 0 - I - 0x009DFB 02:9DEB: 08        .byte $08, $28, $66   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009DFE 02:9DEE: 01        .byte $01, $3C, $28   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009E01 02:9DF1: 62        .byte $62, $FF   ; pos_X, pos_Y

- D 0 - I - 0x009E03 02:9DF3: 05        .byte $05   ; 



off_FF_9DF4:
- D 0 - I - 0x009E04 02:9DF4: 0B        .byte $0B, $8B, $9A   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009E07 02:9DF7: 01        .byte $01, $30, $87   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009E0A 02:9DFA: 9D        .byte $9D, $00   ; pos_X, pos_Y

- D 0 - I - 0x009E0C 02:9DFC: 01        .byte $01   ; 



off_FF_9DFD:
- D 0 - I - 0x009E0D 02:9DFD: 00        .byte $00, $71, $23   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009E10 02:9E00: 01        .byte $01, $1E, $70   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009E13 02:9E03: 04        .byte $04, $00   ; pos_X, pos_Y

- D 0 - I - 0x009E15 02:9E05: 07        .byte $07   ; 



off_FF_9E06:
- D 0 - I - 0x009E16 02:9E06: 00        .byte $00, $68, $38   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009E19 02:9E09: 01        .byte $01, $1C, $94   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009E1C 02:9E0C: 1F        .byte $1F, $01   ; pos_X, pos_Y

- - - - - - 0x009E1E 02:9E0E: 09        .byte $09   ; 



_off020_9E0F_02:
- D 0 - I - 0x009E1F 02:9E0F: 10        .byte $10   ; 
- D 0 - I - 0x009E20 02:9E10: 87        .byte $87   ; 
- D 0 - I - 0x009E21 02:9E11: 9D        .byte $9D   ; 
- D 0 - I - 0x009E22 02:9E12: 00        .byte $00   ; 
- - - - - - 0x009E23 02:9E13: 00        .byte $00   ; 
- D 0 - I - 0x009E24 02:9E14: 0C        .byte $0C   ; 
- D 0 - I - 0x009E25 02:9E15: 87        .byte $87   ; 
- D 0 - I - 0x009E26 02:9E16: 70        .byte $70   ; 
- D 0 - I - 0x009E27 02:9E17: 01        .byte $01   ; 
- D 0 - I - 0x009E28 02:9E18: 01        .byte $01   ; 
- D 0 - I - 0x009E29 02:9E19: 0B        .byte $0B   ; 
- D 0 - I - 0x009E2A 02:9E1A: 7C        .byte $7C   ; 
- D 0 - I - 0x009E2B 02:9E1B: 74        .byte $74   ; 
- D 0 - I - 0x009E2C 02:9E1C: 01        .byte $01   ; 
- D 0 - I - 0x009E2D 02:9E1D: 01        .byte $01   ; 
- D 0 - I - 0x009E2E 02:9E1E: 0B        .byte $0B   ; 
- D 0 - I - 0x009E2F 02:9E1F: 69        .byte $69   ; 
- D 0 - I - 0x009E30 02:9E20: 73        .byte $73   ; 
- D 0 - I - 0x009E31 02:9E21: 01        .byte $01   ; 
- D 0 - I - 0x009E32 02:9E22: 01        .byte $01   ; 
- D 0 - I - 0x009E33 02:9E23: 0D        .byte $0D   ; 
- D 0 - I - 0x009E34 02:9E24: 38        .byte $38   ; 
- D 0 - I - 0x009E35 02:9E25: 6C        .byte $6C   ; 
- D 0 - I - 0x009E36 02:9E26: 01        .byte $01   ; 
- D 0 - I - 0x009E37 02:9E27: 01        .byte $01   ; 
- D 0 - I - 0x009E38 02:9E28: 0C        .byte $0C   ; 
- D 0 - I - 0x009E39 02:9E29: 28        .byte $28   ; 
- D 0 - I - 0x009E3A 02:9E2A: 62        .byte $62   ; 
- D 0 - I - 0x009E3B 02:9E2B: 01        .byte $01   ; 
- D 0 - I - 0x009E3C 02:9E2C: 00        .byte $00   ; 
- D 0 - I - 0x009E3D 02:9E2D: 1E        .byte $1E   ; 
- D 0 - I - 0x009E3E 02:9E2E: 70        .byte $70   ; 
- D 0 - I - 0x009E3F 02:9E2F: 04        .byte $04   ; 
- D 0 - I - 0x009E40 02:9E30: 00        .byte $00   ; 
- D 0 - I - 0x009E41 02:9E31: 00        .byte $00   ; 
- D 0 - I - 0x009E42 02:9E32: 03        .byte $03   ; 
- D 0 - I - 0x009E43 02:9E33: 96        .byte $96   ; 
- D 0 - I - 0x009E44 02:9E34: 18        .byte $18   ; 
- D 0 - I - 0x009E45 02:9E35: 00        .byte $00   ; 
- - - - - - 0x009E46 02:9E36: 01        .byte $01   ; 
- - - - - - 0x009E47 02:9E37: 01        .byte $01   ; 
- - - - - - 0x009E48 02:9E38: 9C        .byte $9C   ; 
- - - - - - 0x009E49 02:9E39: 19        .byte $19   ; 
- - - - - - 0x009E4A 02:9E3A: 01        .byte $01   ; 
- - - - - - 0x009E4B 02:9E3B: 01        .byte $01   ; 
- - - - - - 0x009E4C 02:9E3C: 0C        .byte $0C   ; 
- - - - - - 0x009E4D 02:9E3D: 94        .byte $94   ; 
- - - - - - 0x009E4E 02:9E3E: 1F        .byte $1F   ; 
- - - - - - 0x009E4F 02:9E3F: 00        .byte $00   ; 
- - - - - - 0x009E50 02:9E40: 00        .byte $00   ; 



_off019_9E41_03:
; area handler, pos_X, pos_Y
- D 0 - I - 0x009E51 02:9E41: FF        .byte $FF   ; 00 
- D 0 - I - 0x009E52 02:9E42: 95 9E     .word off_FF_9E95
- D 0 - I - 0x009E54 02:9E44: 1D        .byte $1D, $DD, $97   ; 01 
- D 0 - I - 0x009E57 02:9E47: 10        .byte $10, $E6, $8E   ; 02 
- D 0 - I - 0x009E5A 02:9E4A: 12        .byte $12, $E6, $87   ; 03 
- D 0 - I - 0x009E5D 02:9E4D: 13        .byte $13, $D6, $71   ; 04 
- D 0 - I - 0x009E60 02:9E50: 12        .byte $12, $A0, $6C   ; 05 
- D 0 - I - 0x009E63 02:9E53: 1F        .byte $1F, $97, $3C   ; 06 
- D 0 - I - 0x009E66 02:9E56: 10        .byte $10, $C3, $2D   ; 07 
- D 0 - I - 0x009E69 02:9E59: 11        .byte $11, $CA, $21   ; 08 
- D 0 - I - 0x009E6C 02:9E5C: 14        .byte $14, $D0, $1F   ; 09 
- D 0 - I - 0x009E6F 02:9E5F: 14        .byte $14, $B7, $25   ; 0A 
- D 0 - I - 0x009E72 02:9E62: FF        .byte $FF   ; 0B 
- D 0 - I - 0x009E73 02:9E63: 9E 9E     .word off_FF_9E9E
- D 0 - I - 0x009E75 02:9E65: 0C        .byte $0C, $77, $1B   ; 0C 
- D 0 - I - 0x009E78 02:9E68: FF        .byte $FF   ; 0D 
- D 0 - I - 0x009E79 02:9E69: A7 9E     .word off_FF_9EA7
- D 0 - I - 0x009E7B 02:9E6B: 14        .byte $14, $26, $40   ; 0E 
- D 0 - I - 0x009E7E 02:9E6E: 18        .byte $18, $2D, $42   ; 0F 
- D 0 - I - 0x009E81 02:9E71: 19        .byte $19, $38, $43   ; 10 
- D 0 - I - 0x009E84 02:9E74: 19        .byte $19, $4F, $58   ; 11 
- D 0 - I - 0x009E87 02:9E77: 17        .byte $17, $43, $84   ; 12 
- D 0 - I - 0x009E8A 02:9E7A: 18        .byte $18, $2E, $8D   ; 13 
- D 0 - I - 0x009E8D 02:9E7D: 1A        .byte $1A, $37, $8A   ; 14 
- D 0 - I - 0x009E90 02:9E80: 1C        .byte $1C, $38, $94   ; 15 
- D 0 - I - 0x009E93 02:9E83: FF        .byte $FF   ; 16 
- D 0 - I - 0x009E94 02:9E84: 8C 9E     .word off_FF_9E8C
- D 0 - I - 0x009E96 02:9E86: 1C        .byte $1C, $81, $9D   ; 17 
- D 0 - I - 0x009E99 02:9E89: 1B        .byte $1B, $A8, $9B   ; 18 



off_FF_9E8C:
- D 0 - I - 0x009E9C 02:9E8C: 1C        .byte $1C, $68, $9D   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009E9F 02:9E8F: 01        .byte $01, $30, $3E   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009EA2 02:9E92: 9A        .byte $9A, $00   ; pos_X, pos_Y

- D 0 - I - 0x009EA4 02:9E94: 01        .byte $01   ; 



off_FF_9E95:
- D 0 - I - 0x009EA5 02:9E95: 1C        .byte $1C, $D7, $99   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009EA8 02:9E98: 01        .byte $01, $30, $AC   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009EAB 02:9E9B: 9A        .byte $9A, $00   ; pos_X, pos_Y

- D 0 - I - 0x009EAD 02:9E9D: 04        .byte $04   ; 



off_FF_9E9E:
- D 0 - I - 0x009EAE 02:9E9E: 0C        .byte $0C, $96, $1C   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009EB1 02:9EA1: 01        .byte $01, $14, $96   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009EB4 02:9EA4: 1B        .byte $1B, $01   ; pos_X, pos_Y

- - - - - - 0x009EB6 02:9EA6: 06        .byte $06   ; 



off_FF_9EA7:
- D 0 - I - 0x009EB7 02:9EA7: 14        .byte $14, $50, $3C   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009EBA 02:9EAA: 01        .byte $01, $08, $79   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009EBD 02:9EAD: 1D        .byte $1D, $00   ; pos_X, pos_Y

- D 0 - I - 0x009EBF 02:9EAF: 07        .byte $07   ; 



_off020_9EB0_03:
- D 0 - I - 0x009EC0 02:9EB0: 10        .byte $10   ; 
- D 0 - I - 0x009EC1 02:9EB1: 3E        .byte $3E   ; 
- D 0 - I - 0x009EC2 02:9EB2: 9A        .byte $9A   ; 
- D 0 - I - 0x009EC3 02:9EB3: 00        .byte $00   ; 
- - - - - - 0x009EC4 02:9EB4: 00        .byte $00   ; 
- D 0 - I - 0x009EC5 02:9EB5: 04        .byte $04   ; 
- D 0 - I - 0x009EC6 02:9EB6: 68        .byte $68   ; 
- D 0 - I - 0x009EC7 02:9EB7: 9A        .byte $9A   ; 
- D 0 - I - 0x009EC8 02:9EB8: 01        .byte $01   ; 
- D 0 - I - 0x009EC9 02:9EB9: 01        .byte $01   ; 
- D 0 - I - 0x009ECA 02:9EBA: 04        .byte $04   ; 
- D 0 - I - 0x009ECB 02:9EBB: 81        .byte $81   ; 
- D 0 - I - 0x009ECC 02:9EBC: 9A        .byte $9A   ; 
- D 0 - I - 0x009ECD 02:9EBD: 01        .byte $01   ; 
- D 0 - I - 0x009ECE 02:9EBE: 01        .byte $01   ; 
- D 0 - I - 0x009ECF 02:9EBF: 1B        .byte $1B   ; 
- D 0 - I - 0x009ED0 02:9EC0: B4        .byte $B4   ; 
- D 0 - I - 0x009ED1 02:9EC1: 76        .byte $76   ; 
- D 0 - I - 0x009ED2 02:9EC2: 01        .byte $01   ; 
- D 0 - I - 0x009ED3 02:9EC3: 01        .byte $01   ; 
- D 0 - I - 0x009ED4 02:9EC4: 00        .byte $00   ; 
- D 0 - I - 0x009ED5 02:9EC5: AC        .byte $AC   ; 
- D 0 - I - 0x009ED6 02:9EC6: 9A        .byte $9A   ; 
- D 0 - I - 0x009ED7 02:9EC7: 00        .byte $00   ; 
- D 0 - I - 0x009ED8 02:9EC8: 00        .byte $00   ; 
- - - - - - 0x009ED9 02:9EC9: 14        .byte $14   ; 
- - - - - - 0x009EDA 02:9ECA: 96        .byte $96   ; 
- - - - - - 0x009EDB 02:9ECB: 1B        .byte $1B   ; 
- - - - - - 0x009EDC 02:9ECC: 01        .byte $01   ; 
- - - - - - 0x009EDD 02:9ECD: 00        .byte $00   ; 
- D 0 - I - 0x009EDE 02:9ECE: 14        .byte $14   ; 
- D 0 - I - 0x009EDF 02:9ECF: 77        .byte $77   ; 
- D 0 - I - 0x009EE0 02:9ED0: 1A        .byte $1A   ; 
- D 0 - I - 0x009EE1 02:9ED1: 01        .byte $01   ; 
- - - - - - 0x009EE2 02:9ED2: 01        .byte $01   ; 
- D 0 - I - 0x009EE3 02:9ED3: 18        .byte $18   ; 
- D 0 - I - 0x009EE4 02:9ED4: 79        .byte $79   ; 
- D 0 - I - 0x009EE5 02:9ED5: 1D        .byte $1D   ; 
- D 0 - I - 0x009EE6 02:9ED6: 00        .byte $00   ; 
- - - - - - 0x009EE7 02:9ED7: 00        .byte $00   ; 



_off019_9ED8_04:
; area handler, pos_X, pos_Y
- D 0 - I - 0x009EE8 02:9ED8: 1C        .byte $1C, $AE, $95   ; 00 
- D 0 - I - 0x009EEB 02:9EDB: FF        .byte $FF   ; 01 
- D 0 - I - 0x009EEC 02:9EDC: 1D 9F     .word off_FF_9F1D
- D 0 - I - 0x009EEE 02:9EDE: 11        .byte $11, $C5, $79   ; 02 
- D 0 - I - 0x009EF1 02:9EE1: 11        .byte $11, $B5, $69   ; 03 
- D 0 - I - 0x009EF4 02:9EE4: 11        .byte $11, $A5, $59   ; 04 
- D 0 - I - 0x009EF7 02:9EE7: 11        .byte $11, $94, $4C   ; 05 
- D 0 - I - 0x009EFA 02:9EEA: FF        .byte $FF   ; 06 
- D 0 - I - 0x009EFB 02:9EEB: 26 9F     .word off_FF_9F26
- D 0 - I - 0x009EFD 02:9EED: 14        .byte $14, $84, $36   ; 07 
- D 0 - I - 0x009F00 02:9EF0: 16        .byte $16, $7F, $33   ; 08 
- D 0 - I - 0x009F03 02:9EF3: FF        .byte $FF   ; 09 
- D 0 - I - 0x009F04 02:9EF4: 2F 9F     .word off_FF_9F2F
- D 0 - I - 0x009F06 02:9EF6: 16        .byte $16, $64, $56   ; 0A 
- D 0 - I - 0x009F09 02:9EF9: 16        .byte $16, $54, $66   ; 0B 
- D 0 - I - 0x009F0C 02:9EFC: 16        .byte $16, $3F, $7B   ; 0C 
- D 0 - I - 0x009F0F 02:9EFF: 19        .byte $19, $44, $7A   ; 0D 
- D 0 - I - 0x009F12 02:9F02: FF        .byte $FF   ; 0E 
- D 0 - I - 0x009F13 02:9F03: 14 9F     .word off_FF_9F14
- D 0 - I - 0x009F15 02:9F05: 1B        .byte $1B, $60, $90   ; 0F 
- D 0 - I - 0x009F18 02:9F08: 1B        .byte $1B, $70, $90   ; 10 
- D 0 - I - 0x009F1B 02:9F0B: 1B        .byte $1B, $80, $90   ; 11 
- D 0 - I - 0x009F1E 02:9F0E: 1B        .byte $1B, $90, $90   ; 12 
- D 0 - I - 0x009F21 02:9F11: 1B        .byte $1B, $9E, $7C   ; 13 



off_FF_9F14:
- D 0 - I - 0x009F24 02:9F14: 1A        .byte $1A, $50, $90   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009F27 02:9F17: 01        .byte $01, $24, $50   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009F2A 02:9F1A: 90        .byte $90, $01   ; pos_X, pos_Y

- D 0 - I - 0x009F2C 02:9F1C: 01        .byte $01   ; 



off_FF_9F1D:
- D 0 - I - 0x009F2D 02:9F1D: 1D        .byte $1D, $C5, $78   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009F30 02:9F20: 01        .byte $01, $33, $AC   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009F33 02:9F23: 94        .byte $94, $FF   ; pos_X, pos_Y

- D 0 - I - 0x009F35 02:9F25: 06        .byte $06   ; 



off_FF_9F26:
- D 0 - I - 0x009F36 02:9F26: 11        .byte $11, $89, $2E   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009F39 02:9F29: 01        .byte $01, $16, $9F   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009F3C 02:9F2C: 45        .byte $45, $01   ; pos_X, pos_Y

- D 0 - I - 0x009F3E 02:9F2E: 08        .byte $08   ; 



off_FF_9F2F:
- D 0 - I - 0x009F3F 02:9F2F: 16        .byte $16, $70, $4D   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009F42 02:9F32: 01        .byte $01, $02, $65   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009F45 02:9F35: 49        .byte $49, $FF   ; pos_X, pos_Y

- - - - - - 0x009F47 02:9F37: 09        .byte $09   ; 



_off020_9F38_04:
- D 0 - I - 0x009F48 02:9F38: 04        .byte $04   ; 
- D 0 - I - 0x009F49 02:9F39: 50        .byte $50   ; 
- D 0 - I - 0x009F4A 02:9F3A: 90        .byte $90   ; 
- D 0 - I - 0x009F4B 02:9F3B: 01        .byte $01   ; 
- - - - - - 0x009F4C 02:9F3C: 00        .byte $00   ; 
- D 0 - I - 0x009F4D 02:9F3D: 1B        .byte $1B   ; 
- D 0 - I - 0x009F4E 02:9F3E: 6A        .byte $6A   ; 
- D 0 - I - 0x009F4F 02:9F3F: 7C        .byte $7C   ; 
- D 0 - I - 0x009F50 02:9F40: 01        .byte $01   ; 
- D 0 - I - 0x009F51 02:9F41: 01        .byte $01   ; 
- D 0 - I - 0x009F52 02:9F42: 1B        .byte $1B   ; 
- D 0 - I - 0x009F53 02:9F43: 7A        .byte $7A   ; 
- D 0 - I - 0x009F54 02:9F44: 7C        .byte $7C   ; 
- D 0 - I - 0x009F55 02:9F45: 01        .byte $01   ; 
- D 0 - I - 0x009F56 02:9F46: 01        .byte $01   ; 
- D 0 - I - 0x009F57 02:9F47: 1B        .byte $1B   ; 
- D 0 - I - 0x009F58 02:9F48: 8A        .byte $8A   ; 
- D 0 - I - 0x009F59 02:9F49: 7C        .byte $7C   ; 
- D 0 - I - 0x009F5A 02:9F4A: 01        .byte $01   ; 
- D 0 - I - 0x009F5B 02:9F4B: 01        .byte $01   ; 
- D 0 - I - 0x009F5C 02:9F4C: 1B        .byte $1B   ; 
- D 0 - I - 0x009F5D 02:9F4D: 9A        .byte $9A   ; 
- D 0 - I - 0x009F5E 02:9F4E: 7C        .byte $7C   ; 
- D 0 - I - 0x009F5F 02:9F4F: 01        .byte $01   ; 
- D 0 - I - 0x009F60 02:9F50: 01        .byte $01   ; 
- D 0 - I - 0x009F61 02:9F51: 1B        .byte $1B   ; 
- D 0 - I - 0x009F62 02:9F52: 9E        .byte $9E   ; 
- D 0 - I - 0x009F63 02:9F53: 7C        .byte $7C   ; 
- D 0 - I - 0x009F64 02:9F54: 01        .byte $01   ; 
- D 0 - I - 0x009F65 02:9F55: 01        .byte $01   ; 
- D 0 - I - 0x009F66 02:9F56: 03        .byte $03   ; 
- D 0 - I - 0x009F67 02:9F57: AC        .byte $AC   ; 
- D 0 - I - 0x009F68 02:9F58: 94        .byte $94   ; 
- D 0 - I - 0x009F69 02:9F59: 01        .byte $01   ; 
- D 0 - I - 0x009F6A 02:9F5A: 00        .byte $00   ; 
- D 0 - I - 0x009F6B 02:9F5B: 16        .byte $16   ; 
- D 0 - I - 0x009F6C 02:9F5C: 9F        .byte $9F   ; 
- D 0 - I - 0x009F6D 02:9F5D: 45        .byte $45   ; 
- D 0 - I - 0x009F6E 02:9F5E: 01        .byte $01   ; 
- - - - - - 0x009F6F 02:9F5F: 00        .byte $00   ; 
- D 0 - I - 0x009F70 02:9F60: 14        .byte $14   ; 
- D 0 - I - 0x009F71 02:9F61: 84        .byte $84   ; 
- D 0 - I - 0x009F72 02:9F62: 4F        .byte $4F   ; 
- D 0 - I - 0x009F73 02:9F63: 01        .byte $01   ; 
- D 0 - I - 0x009F74 02:9F64: 01        .byte $01   ; 
- D 0 - I - 0x009F75 02:9F65: 12        .byte $12   ; 
- D 0 - I - 0x009F76 02:9F66: 65        .byte $65   ; 
- D 0 - I - 0x009F77 02:9F67: 49        .byte $49   ; 
- D 0 - I - 0x009F78 02:9F68: 01        .byte $01   ; 
- D 0 - I - 0x009F79 02:9F69: 00        .byte $00   ; 



_off019_9F6A_05:
; area handler, pos_X, pos_Y
- D 0 - I - 0x009F7A 02:9F6A: 14        .byte $14, $5B, $8B   ; 00 
- D 0 - I - 0x009F7D 02:9F6D: 18        .byte $18, $59, $88   ; 01 
- D 0 - I - 0x009F80 02:9F70: FF        .byte $FF   ; 02 
- D 0 - I - 0x009F81 02:9F71: B8 9F     .word off_FF_9FB8
- D 0 - I - 0x009F83 02:9F73: 08        .byte $08, $1E, $87   ; 03 
- D 0 - I - 0x009F86 02:9F76: 06        .byte $06, $1E, $78   ; 04 
- D 0 - I - 0x009F89 02:9F79: 05        .byte $05, $33, $66   ; 05 
- D 0 - I - 0x009F8C 02:9F7C: 05        .byte $05, $4E, $56   ; 06 
- D 0 - I - 0x009F8F 02:9F7F: 05        .byte $05, $64, $4B   ; 07 
- D 0 - I - 0x009F92 02:9F82: 05        .byte $05, $78, $46   ; 08 
- D 0 - I - 0x009F95 02:9F85: 03        .byte $03, $7E, $44   ; 09 
- D 0 - I - 0x009F98 02:9F88: FF        .byte $FF   ; 0A 
- D 0 - I - 0x009F99 02:9F89: C1 9F     .word off_FF_9FC1
- D 0 - I - 0x009F9B 02:9F8B: 1C        .byte $1C, $C4, $36   ; 0B 
- D 0 - I - 0x009F9E 02:9F8E: 1F        .byte $1F, $C6, $34   ; 0C 
- D 0 - I - 0x009FA1 02:9F91: FF        .byte $FF   ; 0D 
- D 0 - I - 0x009FA2 02:9F92: CA 9F     .word off_FF_9FCA
- D 0 - I - 0x009FA4 02:9F94: 00        .byte $00, $E0, $3F   ; 0E 
- D 0 - I - 0x009FA7 02:9F97: 00        .byte $00, $E0, $53   ; 0F 
- D 0 - I - 0x009FAA 02:9F9A: 00        .byte $00, $D3, $6F   ; 10 
- D 0 - I - 0x009FAD 02:9F9D: 0F        .byte $0F, $D1, $82   ; 11 
- D 0 - I - 0x009FB0 02:9FA0: 0C        .byte $0C, $C5, $84   ; 12 
- D 0 - I - 0x009FB3 02:9FA3: FF        .byte $FF   ; 13 
- D 0 - I - 0x009FB4 02:9FA4: AF 9F     .word off_FF_9FAF
- D 0 - I - 0x009FB6 02:9FA6: 14        .byte $14, $9D, $8A   ; 14 
- D 0 - I - 0x009FB9 02:9FA9: 14        .byte $14, $8D, $8A   ; 15 
- D 0 - I - 0x009FBC 02:9FAC: 0B        .byte $0B, $88, $68   ; 16 



off_FF_9FAF:
- D 0 - I - 0x009FBF 02:9FAF: 10        .byte $10, $9B, $86   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009FC2 02:9FB2: 01        .byte $01, $2C, $9D   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009FC5 02:9FB5: 8A        .byte $8A, $02   ; pos_X, pos_Y

- D 0 - I - 0x009FC7 02:9FB7: 01        .byte $01   ; 



off_FF_9FB8:
- D 0 - I - 0x009FC8 02:9FB8: 0C        .byte $0C, $26, $82   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009FCB 02:9FBB: 01        .byte $01, $3B, $55   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009FCE 02:9FBE: 8A        .byte $8A, $FE   ; pos_X, pos_Y

- D 0 - I - 0x009FD0 02:9FC0: 03        .byte $03   ; 



off_FF_9FC1:
- D 0 - I - 0x009FD1 02:9FC1: 1B        .byte $1B, $B3, $39   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009FD4 02:9FC4: 01        .byte $01, $04, $B0   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009FD7 02:9FC7: 30        .byte $30, $01   ; pos_X, pos_Y

- D 0 - I - 0x009FD9 02:9FC9: 05        .byte $05   ; 



off_FF_9FCA:
- D 0 - I - 0x009FDA 02:9FCA: 04        .byte $04, $DE, $3D   ; area handler, pos_X, pos_Y
- D 0 - I - 0x009FDD 02:9FCD: 01        .byte $01, $14, $C8   ; area handler, pos_X, pos_Y

- D 0 - I - 0x009FE0 02:9FD0: 30        .byte $30, $FF   ; pos_X, pos_Y

- D 0 - I - 0x009FE2 02:9FD2: 06        .byte $06   ; 



_off020_9FD3_05:
- D 0 - I - 0x009FE3 02:9FD3: 0C        .byte $0C   ; 
- D 0 - I - 0x009FE4 02:9FD4: 9D        .byte $9D   ; 
- D 0 - I - 0x009FE5 02:9FD5: 8A        .byte $8A   ; 
- D 0 - I - 0x009FE6 02:9FD6: 02        .byte $02   ; 
- D 0 - I - 0x009FE7 02:9FD7: 00        .byte $00   ; 
- D 0 - I - 0x009FE8 02:9FD8: 0C        .byte $0C   ; 
- D 0 - I - 0x009FE9 02:9FD9: 8D        .byte $8D   ; 
- D 0 - I - 0x009FEA 02:9FDA: 8A        .byte $8A   ; 
- D 0 - I - 0x009FEB 02:9FDB: 01        .byte $01   ; 
- D 0 - I - 0x009FEC 02:9FDC: 01        .byte $01   ; 
- D 0 - I - 0x009FED 02:9FDD: 0B        .byte $0B   ; 
- D 0 - I - 0x009FEE 02:9FDE: 88        .byte $88   ; 
- D 0 - I - 0x009FEF 02:9FDF: 68        .byte $68   ; 
- D 0 - I - 0x009FF0 02:9FE0: 01        .byte $01   ; 
- D 0 - I - 0x009FF1 02:9FE1: 01        .byte $01   ; 
- D 0 - I - 0x009FF2 02:9FE2: 0B        .byte $0B   ; 
- D 0 - I - 0x009FF3 02:9FE3: 55        .byte $55   ; 
- D 0 - I - 0x009FF4 02:9FE4: 8A        .byte $8A   ; 
- D 0 - I - 0x009FF5 02:9FE5: 02        .byte $02   ; 
- D 0 - I - 0x009FF6 02:9FE6: 00        .byte $00   ; 
- D 0 - I - 0x009FF7 02:9FE7: 04        .byte $04   ; 
- D 0 - I - 0x009FF8 02:9FE8: B0        .byte $B0   ; 
- D 0 - I - 0x009FF9 02:9FE9: 30        .byte $30   ; 
- D 0 - I - 0x009FFA 02:9FEA: 01        .byte $01   ; 
- D 0 - I - 0x009FFB 02:9FEB: 00        .byte $00   ; 
- D 0 - I - 0x009FFC 02:9FEC: 04        .byte $04   ; 
- D 0 - I - 0x009FFD 02:9FED: BC        .byte $BC   ; 
- D 0 - I - 0x009FFE 02:9FEE: 30        .byte $30   ; 
- D 0 - I - 0x009FFF 02:9FEF: 01        .byte $01   ; 
- D 0 - I - 0x00A000 02:9FF0: 01        .byte $01   ; 
- D 0 - I - 0x00A001 02:9FF1: 04        .byte $04   ; 
- D 0 - I - 0x00A002 02:9FF2: C8        .byte $C8   ; 
- D 0 - I - 0x00A003 02:9FF3: 30        .byte $30   ; 
- D 0 - I - 0x00A004 02:9FF4: 01        .byte $01   ; 
- D 0 - I - 0x00A005 02:9FF5: 00        .byte $00   ; 



_off019_9FF6_06:
; area handler, pos_X, pos_Y
- D 0 - I - 0x00A006 02:9FF6: 04        .byte $04, $DB, $6C   ; 00 
- D 0 - I - 0x00A009 02:9FF9: 00        .byte $00, $D5, $6D   ; 01 
- D 0 - I - 0x00A00C 02:9FFC: FF        .byte $FF   ; 02 
- D 0 - I - 0x00A00D 02:9FFD: 50 A0     .word off_FF_A050
- D 0 - I - 0x00A00F 02:9FFF: 0D        .byte $0D, $C2, $98   ; 03 
- D 1 - I - 0x00A012 02:A002: 0C        .byte $0C, $B2, $98   ; 04 
- D 1 - I - 0x00A015 02:A005: 0C        .byte $0C, $A2, $98   ; 05 
- D 1 - I - 0x00A018 02:A008: 0C        .byte $0C, $92, $98   ; 06 
- D 1 - I - 0x00A01B 02:A00B: 0C        .byte $0C, $82, $98   ; 07 
- D 1 - I - 0x00A01E 02:A00E: 0C        .byte $0C, $72, $98   ; 08 
- D 1 - I - 0x00A021 02:A011: 0C        .byte $0C, $62, $98   ; 09 
- D 1 - I - 0x00A024 02:A014: 0C        .byte $0C, $50, $98   ; 0A 
- D 1 - I - 0x00A027 02:A017: FF        .byte $FF   ; 0B 
- D 1 - I - 0x00A028 02:A018: 62 A0     .word off_FF_A062
- D 1 - I - 0x00A02A 02:A01A: 09        .byte $09, $22, $98   ; 0C 
- D 1 - I - 0x00A02D 02:A01D: 08        .byte $08, $25, $88   ; 0D 
- D 1 - I - 0x00A030 02:A020: FF        .byte $FF   ; 0E 
- D 1 - I - 0x00A031 02:A021: 6B A0     .word off_FF_A06B
- D 1 - I - 0x00A033 02:A023: 08        .byte $08, $51, $6B   ; 0F 
- D 1 - I - 0x00A036 02:A026: 09        .byte $09, $62, $42   ; 10 
- D 1 - I - 0x00A039 02:A029: 0B        .byte $0B, $29, $43   ; 11 
- D 1 - I - 0x00A03C 02:A02C: 09        .byte $09, $29, $33   ; 12 
- D 1 - I - 0x00A03F 02:A02F: 08        .byte $08, $2F, $2D   ; 13 
- D 1 - I - 0x00A042 02:A032: 05        .byte $05, $32, $22   ; 14 
- D 1 - I - 0x00A045 02:A035: 04        .byte $04, $45, $1F   ; 15 
- D 1 - I - 0x00A048 02:A038: 04        .byte $04, $60, $1F   ; 16 
- D 1 - I - 0x00A04B 02:A03B: 01        .byte $01, $6B, $1C   ; 17 
- D 1 - I - 0x00A04E 02:A03E: 00        .byte $00, $6E, $1F   ; 18 
- D 1 - I - 0x00A051 02:A041: 01        .byte $01, $68, $36   ; 19 
- D 1 - I - 0x00A054 02:A044: 01        .byte $01, $8C, $3D   ; 1A 
- D 1 - I - 0x00A057 02:A047: 00        .byte $00, $88, $47   ; 1B 
- D 1 - I - 0x00A05A 02:A04A: FF        .byte $FF   ; 1C 
- D 1 - I - 0x00A05B 02:A04B: 59 A0     .word off_FF_A059
- D 1 - I - 0x00A05D 02:A04D: 1B        .byte $1B, $D0, $47   ; 1D 



off_FF_A050:
- D 1 - I - 0x00A060 02:A050: 00        .byte $00, $C7, $90   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A063 02:A053: 01        .byte $01, $2B, $DC   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A066 02:A056: 69        .byte $69, $FE   ; pos_X, pos_Y

- - - - - - 0x00A068 02:A058: 03        .byte $03   ; 



off_FF_A059:
- D 1 - I - 0x00A069 02:A059: 02        .byte $02, $9D, $65   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A06C 02:A05C: 01        .byte $01, $38, $A3   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A06F 02:A05F: 67        .byte $67, $00   ; pos_X, pos_Y

- D 1 - I - 0x00A071 02:A061: 01        .byte $01   ; 



off_FF_A062:
- D 1 - I - 0x00A072 02:A062: 0C        .byte $0C, $28, $98   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A075 02:A065: 01        .byte $01, $10, $28   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A078 02:A068: 9D        .byte $9D, $02   ; pos_X, pos_Y

- D 1 - I - 0x00A07A 02:A06A: 05        .byte $05   ; 



off_FF_A06B:
- D 1 - I - 0x00A07B 02:A06B: 08        .byte $08, $45, $7B   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A07E 02:A06E: 01        .byte $01, $01, $22   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A081 02:A071: 92        .byte $92, $FF   ; pos_X, pos_Y

- - - - - - 0x00A083 02:A073: 05        .byte $05   ; 



_off020_A074_06:
- D 1 - I - 0x00A084 02:A074: 18        .byte $18   ; 
- D 1 - I - 0x00A085 02:A075: A3        .byte $A3   ; 
- D 1 - I - 0x00A086 02:A076: 67        .byte $67   ; 
- D 1 - I - 0x00A087 02:A077: 00        .byte $00   ; 
- - - - - - 0x00A088 02:A078: 00        .byte $00   ; 
- D 1 - I - 0x00A089 02:A079: 19        .byte $19   ; 
- D 1 - I - 0x00A08A 02:A07A: A1        .byte $A1   ; 
- D 1 - I - 0x00A08B 02:A07B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A08C 02:A07C: 01        .byte $01   ; 
- D 1 - I - 0x00A08D 02:A07D: 01        .byte $01   ; 
- D 1 - I - 0x00A08E 02:A07E: 1B        .byte $1B   ; 
- D 1 - I - 0x00A08F 02:A07F: D0        .byte $D0   ; 
- D 1 - I - 0x00A090 02:A080: 47        .byte $47   ; 
- D 1 - I - 0x00A091 02:A081: 01        .byte $01   ; 
- D 1 - I - 0x00A092 02:A082: 01        .byte $01   ; 
- D 1 - I - 0x00A093 02:A083: 1B        .byte $1B   ; 
- D 1 - I - 0x00A094 02:A084: DC        .byte $DC   ; 
- D 1 - I - 0x00A095 02:A085: 69        .byte $69   ; 
- D 1 - I - 0x00A096 02:A086: 02        .byte $02   ; 
- D 1 - I - 0x00A097 02:A087: 00        .byte $00   ; 
- D 1 - I - 0x00A098 02:A088: 10        .byte $10   ; 
- D 1 - I - 0x00A099 02:A089: 28        .byte $28   ; 
- D 1 - I - 0x00A09A 02:A08A: 9D        .byte $9D   ; 
- D 1 - I - 0x00A09B 02:A08B: 02        .byte $02   ; 
- - - - - - 0x00A09C 02:A08C: 00        .byte $00   ; 
- D 1 - I - 0x00A09D 02:A08D: 11        .byte $11   ; 
- D 1 - I - 0x00A09E 02:A08E: 22        .byte $22   ; 
- D 1 - I - 0x00A09F 02:A08F: 92        .byte $92   ; 
- D 1 - I - 0x00A0A0 02:A090: 01        .byte $01   ; 
- D 1 - I - 0x00A0A1 02:A091: 00        .byte $00   ; 



_off019_A092_07:
; area handler, pos_X, pos_Y
- D 1 - I - 0x00A0A2 02:A092: 14        .byte $14, $32, $9C   ; 00 
- D 1 - I - 0x00A0A5 02:A095: FF        .byte $FF   ; 01 
- D 1 - I - 0x00A0A6 02:A096: EF A0     .word off_FF_A0EF
- D 1 - I - 0x00A0A8 02:A098: 09        .byte $09, $3A, $68   ; 02 
- D 1 - I - 0x00A0AB 02:A09B: 09        .byte $09, $38, $59   ; 03 
- D 1 - I - 0x00A0AE 02:A09E: 09        .byte $09, $37, $49   ; 04 
- D 1 - I - 0x00A0B1 02:A0A1: 09        .byte $09, $34, $39   ; 05 
- D 1 - I - 0x00A0B4 02:A0A4: 09        .byte $09, $32, $29   ; 06 
- D 1 - I - 0x00A0B7 02:A0A7: 07        .byte $07, $34, $28   ; 07 
- D 1 - I - 0x00A0BA 02:A0AA: 02        .byte $02, $2A, $29   ; 08 
- D 1 - I - 0x00A0BD 02:A0AD: 01        .byte $01, $2E, $2C   ; 09 
- D 1 - I - 0x00A0C0 02:A0B0: 01        .byte $01, $30, $3B   ; 0A 
- D 1 - I - 0x00A0C3 02:A0B3: 01        .byte $01, $35, $4A   ; 0B 
- D 1 - I - 0x00A0C6 02:A0B6: 04        .byte $04, $58, $5B   ; 0C 
- D 1 - I - 0x00A0C9 02:A0B9: 05        .byte $05, $78, $57   ; 0D 
- D 1 - I - 0x00A0CC 02:A0BC: 05        .byte $05, $88, $52   ; 0E 
- D 1 - I - 0x00A0CF 02:A0BF: 03        .byte $03, $8E, $4E   ; 0F 
- D 1 - I - 0x00A0D2 02:A0C2: 01        .byte $01, $8F, $55   ; 10 
- D 1 - I - 0x00A0D5 02:A0C5: 03        .byte $03, $A7, $7C   ; 11 
- D 1 - I - 0x00A0D8 02:A0C8: 05        .byte $05, $D3, $76   ; 12 
- D 1 - I - 0x00A0DB 02:A0CB: 01        .byte $01, $CE, $70   ; 13 
- D 1 - I - 0x00A0DE 02:A0CE: 00        .byte $00, $CC, $87   ; 14 
- D 1 - I - 0x00A0E1 02:A0D1: 0E        .byte $0E, $C6, $8F   ; 15 
- D 1 - I - 0x00A0E4 02:A0D4: 0C        .byte $0C, $B0, $91   ; 16 
- D 1 - I - 0x00A0E7 02:A0D7: FF        .byte $FF   ; 17 
- D 1 - I - 0x00A0E8 02:A0D8: E6 A0     .word off_FF_A0E6
- D 1 - I - 0x00A0EA 02:A0DA: 13        .byte $13, $85, $9B   ; 18 
- D 1 - I - 0x00A0ED 02:A0DD: 0C        .byte $0C, $69, $77   ; 19 
- D 1 - I - 0x00A0F0 02:A0E0: 0C        .byte $0C, $59, $77   ; 1A 
- D 1 - I - 0x00A0F3 02:A0E3: 0B        .byte $0B, $53, $7B   ; 1B 



off_FF_A0E6:
- D 1 - I - 0x00A0F6 02:A0E6: 10        .byte $10, $80, $99   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A0F9 02:A0E9: 01        .byte $01, $2E, $83   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A0FC 02:A0EC: 9B        .byte $9B, $02   ; pos_X, pos_Y

- D 1 - I - 0x00A0FE 02:A0EE: 01        .byte $01   ; 



off_FF_A0EF:
- D 1 - I - 0x00A0FF 02:A0EF: 09        .byte $09, $3E, $78   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A102 02:A0F2: 01        .byte $01, $38, $37   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A105 02:A0F5: 9E        .byte $9E, $00   ; pos_X, pos_Y

- - - - - - 0x00A107 02:A0F7: 05        .byte $05   ; 



_off020_A0F8_07:
- D 1 - I - 0x00A108 02:A0F8: 0E        .byte $0E   ; 
- D 1 - I - 0x00A109 02:A0F9: 83        .byte $83   ; 
- D 1 - I - 0x00A10A 02:A0FA: 9B        .byte $9B   ; 
- D 1 - I - 0x00A10B 02:A0FB: 02        .byte $02   ; 
- - - - - - 0x00A10C 02:A0FC: 00        .byte $00   ; 
- D 1 - I - 0x00A10D 02:A0FD: 0C        .byte $0C   ; 
- D 1 - I - 0x00A10E 02:A0FE: 69        .byte $69   ; 
- D 1 - I - 0x00A10F 02:A0FF: 77        .byte $77   ; 
- D 1 - I - 0x00A110 02:A100: 01        .byte $01   ; 
- D 1 - I - 0x00A111 02:A101: 01        .byte $01   ; 
- D 1 - I - 0x00A112 02:A102: 0C        .byte $0C   ; 
- D 1 - I - 0x00A113 02:A103: 59        .byte $59   ; 
- D 1 - I - 0x00A114 02:A104: 77        .byte $77   ; 
- D 1 - I - 0x00A115 02:A105: 01        .byte $01   ; 
- D 1 - I - 0x00A116 02:A106: 01        .byte $01   ; 
- D 1 - I - 0x00A117 02:A107: 0B        .byte $0B   ; 
- D 1 - I - 0x00A118 02:A108: 53        .byte $53   ; 
- D 1 - I - 0x00A119 02:A109: 7B        .byte $7B   ; 
- D 1 - I - 0x00A11A 02:A10A: 01        .byte $01   ; 
- D 1 - I - 0x00A11B 02:A10B: 01        .byte $01   ; 
- D 1 - I - 0x00A11C 02:A10C: 0C        .byte $0C   ; 
- D 1 - I - 0x00A11D 02:A10D: 32        .byte $32   ; 
- D 1 - I - 0x00A11E 02:A10E: 9C        .byte $9C   ; 
- D 1 - I - 0x00A11F 02:A10F: 01        .byte $01   ; 
- D 1 - I - 0x00A120 02:A110: 01        .byte $01   ; 
- D 1 - I - 0x00A121 02:A111: 08        .byte $08   ; 
- D 1 - I - 0x00A122 02:A112: 37        .byte $37   ; 
- D 1 - I - 0x00A123 02:A113: 9E        .byte $9E   ; 
- D 1 - I - 0x00A124 02:A114: 00        .byte $00   ; 
- D 1 - I - 0x00A125 02:A115: 00        .byte $00   ; 



_off019_A116_08:
; area handler, pos_X, pos_Y
- D 1 - I - 0x00A126 02:A116: 1C        .byte $1C, $87, $82   ; 00 
- D 1 - I - 0x00A129 02:A119: 1C        .byte $1C, $93, $82   ; 01 
- D 1 - I - 0x00A12C 02:A11C: 1C        .byte $1C, $AF, $82   ; 02 
- D 1 - I - 0x00A12F 02:A11F: FF        .byte $FF   ; 03 
- D 1 - I - 0x00A130 02:A120: 73 A1     .word off_FF_A173
- D 1 - I - 0x00A132 02:A122: 1F        .byte $1F, $C1, $59   ; 04 
- D 1 - I - 0x00A135 02:A125: 1F        .byte $1F, $CE, $4D   ; 05 
- D 1 - I - 0x00A138 02:A128: 1F        .byte $1F, $D1, $45   ; 06 
- D 1 - I - 0x00A13B 02:A12B: 10        .byte $10, $D7, $3D   ; 07 
- D 1 - I - 0x00A13E 02:A12E: 14        .byte $14, $D8, $3C   ; 08 
- D 1 - I - 0x00A141 02:A131: 14        .byte $14, $C8, $3C   ; 09 
- D 1 - I - 0x00A144 02:A134: 14        .byte $14, $B8, $3C   ; 0A 
- D 1 - I - 0x00A147 02:A137: 14        .byte $14, $A8, $3C   ; 0B 
- D 1 - I - 0x00A14A 02:A13A: 14        .byte $14, $98, $3C   ; 0C 
- D 1 - I - 0x00A14D 02:A13D: 14        .byte $14, $88, $3C   ; 0D 
- D 1 - I - 0x00A150 02:A140: 14        .byte $14, $78, $3A   ; 0E 
- D 1 - I - 0x00A153 02:A143: 14        .byte $14, $68, $3C   ; 0F 
- D 1 - I - 0x00A156 02:A146: 14        .byte $14, $58, $3B   ; 10 
- D 1 - I - 0x00A159 02:A149: 15        .byte $15, $45, $3E   ; 11 
- D 1 - I - 0x00A15C 02:A14C: 17        .byte $17, $42, $3E   ; 12 
- D 1 - I - 0x00A15F 02:A14F: 17        .byte $17, $3A, $47   ; 13 
- D 1 - I - 0x00A162 02:A152: 17        .byte $17, $36, $57   ; 14 
- D 1 - I - 0x00A165 02:A155: 18        .byte $18, $2E, $69   ; 15 
- D 1 - I - 0x00A168 02:A158: 1B        .byte $1B, $29, $65   ; 16 
- D 1 - I - 0x00A16B 02:A15B: FF        .byte $FF   ; 17 
- D 1 - I - 0x00A16C 02:A15C: 6A A1     .word off_FF_A16A
- D 1 - I - 0x00A16E 02:A15E: 1B        .byte $1B, $3D, $89   ; 18 
- D 1 - I - 0x00A171 02:A161: 1B        .byte $1B, $4D, $89   ; 19 
- D 1 - I - 0x00A174 02:A164: 1B        .byte $1B, $5D, $89   ; 1A 
- D 1 - I - 0x00A177 02:A167: 1B        .byte $1B, $7B, $69   ; 1B 



off_FF_A16A:
- D 1 - I - 0x00A17A 02:A16A: 1C        .byte $1C, $30, $8E   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A17D 02:A16D: 01        .byte $01, $24, $30   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A180 02:A170: 8A        .byte $8A, $01   ; pos_X, pos_Y

- D 1 - I - 0x00A182 02:A172: 01        .byte $01   ; 



off_FF_A173:
- D 1 - I - 0x00A183 02:A173: 1F        .byte $1F, $B9, $69   ; area handler, pos_X, pos_Y
- D 1 - I - 0x00A186 02:A176: 01        .byte $01, $33, $AF   ; area handler, pos_X, pos_Y

- D 1 - I - 0x00A189 02:A179: 8A        .byte $8A, $FF   ; pos_X, pos_Y

- D 1 - I - 0x00A18B 02:A17B: 07        .byte $07   ; 



_off020_A17C_08:
- D 1 - I - 0x00A18C 02:A17C: 04        .byte $04   ; 
- D 1 - I - 0x00A18D 02:A17D: 30        .byte $30   ; 
- D 1 - I - 0x00A18E 02:A17E: 8A        .byte $8A   ; 
- D 1 - I - 0x00A18F 02:A17F: 01        .byte $01   ; 
- - - - - - 0x00A190 02:A180: 00        .byte $00   ; 
- D 1 - I - 0x00A191 02:A181: 03        .byte $03   ; 
- D 1 - I - 0x00A192 02:A182: 3D        .byte $3D   ; 
- D 1 - I - 0x00A193 02:A183: 8A        .byte $8A   ; 
- D 1 - I - 0x00A194 02:A184: 01        .byte $01   ; 
- D 1 - I - 0x00A195 02:A185: 01        .byte $01   ; 
- D 1 - I - 0x00A196 02:A186: 03        .byte $03   ; 
- D 1 - I - 0x00A197 02:A187: 4D        .byte $4D   ; 
- D 1 - I - 0x00A198 02:A188: 8A        .byte $8A   ; 
- D 1 - I - 0x00A199 02:A189: 01        .byte $01   ; 
- D 1 - I - 0x00A19A 02:A18A: 01        .byte $01   ; 
- D 1 - I - 0x00A19B 02:A18B: 03        .byte $03   ; 
- D 1 - I - 0x00A19C 02:A18C: 5D        .byte $5D   ; 
- D 1 - I - 0x00A19D 02:A18D: 8A        .byte $8A   ; 
- D 1 - I - 0x00A19E 02:A18E: 01        .byte $01   ; 
- D 1 - I - 0x00A19F 02:A18F: 01        .byte $01   ; 
- D 1 - I - 0x00A1A0 02:A190: 1B        .byte $1B   ; 
- D 1 - I - 0x00A1A1 02:A191: 7B        .byte $7B   ; 
- D 1 - I - 0x00A1A2 02:A192: 69        .byte $69   ; 
- D 1 - I - 0x00A1A3 02:A193: 01        .byte $01   ; 
- D 1 - I - 0x00A1A4 02:A194: 01        .byte $01   ; 
- D 1 - I - 0x00A1A5 02:A195: 03        .byte $03   ; 
- D 1 - I - 0x00A1A6 02:A196: 87        .byte $87   ; 
- D 1 - I - 0x00A1A7 02:A197: 8A        .byte $8A   ; 
- D 1 - I - 0x00A1A8 02:A198: 01        .byte $01   ; 
- D 1 - I - 0x00A1A9 02:A199: 01        .byte $01   ; 
- D 1 - I - 0x00A1AA 02:A19A: 03        .byte $03   ; 
- D 1 - I - 0x00A1AB 02:A19B: 93        .byte $93   ; 
- D 1 - I - 0x00A1AC 02:A19C: 8A        .byte $8A   ; 
- D 1 - I - 0x00A1AD 02:A19D: 01        .byte $01   ; 
- D 1 - I - 0x00A1AE 02:A19E: 01        .byte $01   ; 
- D 1 - I - 0x00A1AF 02:A19F: 03        .byte $03   ; 
- D 1 - I - 0x00A1B0 02:A1A0: AF        .byte $AF   ; 
- D 1 - I - 0x00A1B1 02:A1A1: 8A        .byte $8A   ; 
- D 1 - I - 0x00A1B2 02:A1A2: 01        .byte $01   ; 
- D 1 - I - 0x00A1B3 02:A1A3: 00        .byte $00   ; 



tbl_A1A4:
- D 1 - - - 0x00A1B4 02:A1A4: 1C        .byte $1C   ; 00 
- D 1 - - - 0x00A1B5 02:A1A5: 17        .byte $17   ; 01 
- D 1 - - - 0x00A1B6 02:A1A6: 1A        .byte $1A   ; 02 
- D 1 - - - 0x00A1B7 02:A1A7: 19        .byte $19   ; 03 
- D 1 - - - 0x00A1B8 02:A1A8: 14        .byte $14   ; 04 
- D 1 - - - 0x00A1B9 02:A1A9: 17        .byte $17   ; 05 
- D 1 - - - 0x00A1BA 02:A1AA: 1E        .byte $1E   ; 06 
- D 1 - - - 0x00A1BB 02:A1AB: 1C        .byte $1C   ; 07 
- D 1 - - - 0x00A1BC 02:A1AC: 1C        .byte $1C   ; 08 



loc_A1AD:
; con_bsw_01_1B
C D 1 - - - 0x00A1BD 02:A1AD: A6 DC     LDX ram_race
C - - - - - 0x00A1BF 02:A1AF: BD A4 A1  LDA tbl_A1A4,X
C - - - - - 0x00A1C2 02:A1B2: 85 85     STA ram_max_area
C - - - - - 0x00A1C4 02:A1B4: BD 8B 9C  LDA tbl_9C8B_laps,X
C - - - - - 0x00A1C7 02:A1B7: 85 61     STA ram_laps
C - - - - - 0x00A1C9 02:A1B9: BD EB B9  LDA tbl_B9EB,X
C - - - - - 0x00A1CC 02:A1BC: 85 95     STA ram_0095
C - - - - - 0x00A1CE 02:A1BE: BD 94 9C  LDA tbl_9C94_lo,X
C - - - - - 0x00A1D1 02:A1C1: 85 81     STA ram_0081
C - - - - - 0x00A1D3 02:A1C3: BD 9D 9C  LDA tbl_9C9D_hi,X
C - - - - - 0x00A1D6 02:A1C6: 85 82     STA ram_0082
C - - - - - 0x00A1D8 02:A1C8: BD A6 9C  LDA tbl_9CA6_lo,X
C - - - - - 0x00A1DB 02:A1CB: 85 83     STA ram_0083
C - - - - - 0x00A1DD 02:A1CD: BD AF 9C  LDA tbl_9CAF_hi,X
C - - - - - 0x00A1E0 02:A1D0: 85 84     STA ram_0084
C - - - - - 0x00A1E2 02:A1D2: BD 01 A2  LDA tbl_A201,X
C - - - - - 0x00A1E5 02:A1D5: 85 86     STA ram_0086
; bzk optimize, TXA instead of LDA
C - - - - - 0x00A1E7 02:A1D7: A5 DC     LDA ram_race
C - - - - - 0x00A1E9 02:A1D9: 0A        ASL
C - - - - - 0x00A1EA 02:A1DA: AA        TAX
C - - - - - 0x00A1EB 02:A1DB: BD C2 A9  LDA tbl_A9C2,X
C - - - - - 0x00A1EE 02:A1DE: 85 91     STA ram_0091
C - - - - - 0x00A1F0 02:A1E0: BD C3 A9  LDA tbl_A9C2 + $01,X
C - - - - - 0x00A1F3 02:A1E3: 85 92     STA ram_0092
C - - - - - 0x00A1F5 02:A1E5: A0 0A     LDY #$0A    ; 05 * 02
C - - - - - 0x00A1F7 02:A1E7: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A1F9 02:A1E9: 85 93     STA ram_0093
C - - - - - 0x00A1FB 02:A1EB: C8        INY
C - - - - - 0x00A1FC 02:A1EC: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A1FE 02:A1EE: 85 94     STA ram_0094
C - - - - - 0x00A200 02:A1F0: C8        INY
C - - - - - 0x00A201 02:A1F1: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A203 02:A1F3: 8D 71 06  STA ram_0671
C - - - - - 0x00A206 02:A1F6: A9 00     LDA #$00
C - - - - - 0x00A208 02:A1F8: 85 96     STA ram_0096
C - - - - - 0x00A20A 02:A1FA: 85 97     STA ram_0097
C - - - - - 0x00A20C 02:A1FC: 85 98     STA ram_0098
C - - - - - 0x00A20E 02:A1FE: 85 99     STA ram_0099
C - - - - - 0x00A210 02:A200: 60        RTS



tbl_A201:
- D 1 - - - 0x00A211 02:A201: 09        .byte $09   ; 00 
- D 1 - - - 0x00A212 02:A202: 0B        .byte $0B   ; 01 
- D 1 - - - 0x00A213 02:A203: 09        .byte $09   ; 02 
- D 1 - - - 0x00A214 02:A204: 0A        .byte $0A   ; 03 
- D 1 - - - 0x00A215 02:A205: 0C        .byte $0C   ; 04 
- D 1 - - - 0x00A216 02:A206: 0B        .byte $0B   ; 05 
- D 1 - - - 0x00A217 02:A207: 08        .byte $08   ; 06 
- D 1 - - - 0x00A218 02:A208: 09        .byte $09   ; 07 
- D 1 - - - 0x00A219 02:A209: 09        .byte $09   ; 08 



loc_A20A:
; con_bsw_01_1E
C D 1 - - - 0x00A21A 02:A20A: A6 1F     LDX ram_001F_temp
C - - - - - 0x00A21C 02:A20C: BC 4C 06  LDY ram_064C_car,X
C - - - - - 0x00A21F 02:A20F: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A221 02:A211: 85 8F     STA ram_008F
C - - - - - 0x00A223 02:A213: C8        INY
C - - - - - 0x00A224 02:A214: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A226 02:A216: 85 90     STA ram_0090
C - - - - - 0x00A228 02:A218: C0 01     CPY #$01
C - - - - - 0x00A22A 02:A21A: D0 62     BNE bra_A27E
C - - - - - 0x00A22C 02:A21C: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00A22F 02:A21F: 29 20     AND #$20
C - - - - - 0x00A231 02:A221: F0 03     BEQ bra_A226
bra_A223:
C - - - - - 0x00A233 02:A223: 4C C2 A2  JMP loc_A2C2
bra_A226:
C - - - - - 0x00A236 02:A226: BD 64 05  LDA ram_pos_area_2,X
C - - - - - 0x00A239 02:A229: CD 71 06  CMP ram_0671
C - - - - - 0x00A23C 02:A22C: F0 F5     BEQ bra_A223
C - - - - - 0x00A23E 02:A22E: B0 10     BCS bra_A240
C - - - - - 0x00A240 02:A230: C9 06     CMP #$06
C - - - - - 0x00A242 02:A232: 90 EF     BCC bra_A223
C - - - - - 0x00A244 02:A234: BD 65 06  LDA ram_0665,X
C - - - - - 0x00A247 02:A237: 9D 4C 06  STA ram_064C_car,X
C - - - - - 0x00A24A 02:A23A: BD 6A 06  LDA ram_066A,X
C - - - - - 0x00A24D 02:A23D: 4C B0 A2  JMP loc_A2B0
bra_A240:
C - - - - - 0x00A250 02:A240: A4 DC     LDY ram_race
C - - - - - 0x00A252 02:A242: C0 02     CPY #$02
C - - - - - 0x00A254 02:A244: D0 06     BNE bra_A24C
C - - - - - 0x00A256 02:A246: C9 18     CMP #$18
C - - - - - 0x00A258 02:A248: 90 78     BCC bra_A2C2
- - - - - - 0x00A25A 02:A24A: B0 27     BCS bra_A273    ; jmp
bra_A24C:
C - - - - - 0x00A25C 02:A24C: C0 08     CPY #$08
C - - - - - 0x00A25E 02:A24E: D0 09     BNE bra_A259
C - - - - - 0x00A260 02:A250: BD 70 04  LDA ram_pos_Y_hi,X
C - - - - - 0x00A263 02:A253: C9 8A     CMP #$8A
C - - - - - 0x00A265 02:A255: 90 6B     BCC bra_A2C2
- - - - - - 0x00A267 02:A257: B0 1A     BCS bra_A273    ; jmp
bra_A259:
C - - - - - 0x00A269 02:A259: C0 04     CPY #$04
C - - - - - 0x00A26B 02:A25B: D0 16     BNE bra_A273
C - - - - - 0x00A26D 02:A25D: C9 0E     CMP #$0E
C - - - - - 0x00A26F 02:A25F: 90 61     BCC bra_A2C2
C - - - - - 0x00A271 02:A261: F0 02     BEQ bra_A265
- - - - - - 0x00A273 02:A263: B0 0E     BCS bra_A273    ; jmp
bra_A265:
C - - - - - 0x00A275 02:A265: BD 70 04  LDA ram_pos_Y_hi,X
C - - - - - 0x00A278 02:A268: C9 94     CMP #$94
C - - - - - 0x00A27A 02:A26A: 90 56     BCC bra_A2C2
C - - - - - 0x00A27C 02:A26C: BD 50 04  LDA ram_pos_X_hi,X
C - - - - - 0x00A27F 02:A26F: C9 26     CMP #$26
C - - - - - 0x00A281 02:A271: 90 4F     BCC bra_A2C2
bra_A273:
C - - - - - 0x00A283 02:A273: BD 65 06  LDA ram_0665,X
C - - - - - 0x00A286 02:A276: 9D 4C 06  STA ram_064C_car,X
C - - - - - 0x00A289 02:A279: A9 00     LDA #$00
C - - - - - 0x00A28B 02:A27B: 4C B0 A2  JMP loc_A2B0
bra_A27E:
C - - - - - 0x00A28E 02:A27E: BD 38 05  LDA ram_0538_car,X
C - - - - - 0x00A291 02:A281: F0 3F     BEQ bra_A2C2
C - - - - - 0x00A293 02:A283: BD 5A 05  LDA ram_plr_laps,X
C - - - - - 0x00A296 02:A286: C5 61     CMP ram_laps
C - - - - - 0x00A298 02:A288: F0 38     BEQ bra_A2C2
C - - - - - 0x00A29A 02:A28A: BD 64 05  LDA ram_pos_area_2,X
C - - - - - 0x00A29D 02:A28D: CD 71 06  CMP ram_0671
C - - - - - 0x00A2A0 02:A290: D0 30     BNE bra_A2C2
C - - - - - 0x00A2A2 02:A292: A4 DC     LDY ram_race
C - - - - - 0x00A2A4 02:A294: C0 04     CPY #$04
C - - - - - 0x00A2A6 02:A296: D0 07     BNE bra_A29F
C - - - - - 0x00A2A8 02:A298: BD 70 04  LDA ram_pos_Y_hi,X
C - - - - - 0x00A2AB 02:A29B: C9 80     CMP #$80
C - - - - - 0x00A2AD 02:A29D: 90 23     BCC bra_A2C2
bra_A29F:
C - - - - - 0x00A2AF 02:A29F: BD 4C 06  LDA ram_064C_car,X
C - - - - - 0x00A2B2 02:A2A2: 9D 65 06  STA ram_0665,X
C - - - - - 0x00A2B5 02:A2A5: BD 5B 06  LDA ram_065B,X
C - - - - - 0x00A2B8 02:A2A8: 9D 6A 06  STA ram_066A,X
C - - - - - 0x00A2BB 02:A2AB: A9 00     LDA #$00
C - - - - - 0x00A2BD 02:A2AD: 9D 4C 06  STA ram_064C_car,X
loc_A2B0:
C D 1 - - - 0x00A2C0 02:A2B0: 9D 5B 06  STA ram_065B,X
C - - - - - 0x00A2C3 02:A2B3: 20 79 A3  JSR sub_A379
C - - - - - 0x00A2C6 02:A2B6: 9D 30 04  STA ram_0430_precise_angle,X
C - - - - - 0x00A2C9 02:A2B9: 9D 2E 05  STA ram_turbos_car,X
C - - - - - 0x00A2CC 02:A2BC: 20 C2 A3  JSR sub_A3C2
C - - - - - 0x00A2CF 02:A2BF: 4C F0 A2  JMP loc_A2F0
bra_A2C2:
loc_A2C2:
C D 1 - - - 0x00A2D2 02:A2C2: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00A2D5 02:A2C5: 29 40     AND #$40
C - - - - - 0x00A2D7 02:A2C7: F0 27     BEQ bra_A2F0
C - - - - - 0x00A2D9 02:A2C9: 20 25 A4  JSR sub_A425
C - - - - - 0x00A2DC 02:A2CC: 20 E4 A3  JSR sub_A3E4
C - - - - - 0x00A2DF 02:A2CF: 90 27     BCC bra_A2F8
C - - - - - 0x00A2E1 02:A2D1: 20 79 A3  JSR sub_A379
C - - - - - 0x00A2E4 02:A2D4: 85 15     STA ram_0015_temp
C - - - - - 0x00A2E6 02:A2D6: 38        SEC
C - - - - - 0x00A2E7 02:A2D7: FD 2E 05  SBC ram_turbos_car,X
C - - - - - 0x00A2EA 02:A2DA: 10 05     BPL bra_A2E1
C - - - - - 0x00A2EC 02:A2DC: 49 FF     EOR #$FF
C - - - - - 0x00A2EE 02:A2DE: 18        CLC
C - - - - - 0x00A2EF 02:A2DF: 69 01     ADC #$01
bra_A2E1:
C - - - - - 0x00A2F1 02:A2E1: C9 18     CMP #$18
C - - - - - 0x00A2F3 02:A2E3: B0 1D     BCS bra_A302
C - - - - - 0x00A2F5 02:A2E5: A5 15     LDA ram_0015_temp
C - - - - - 0x00A2F7 02:A2E7: 9D 30 04  STA ram_0430_precise_angle,X
C - - - - - 0x00A2FA 02:A2EA: 20 C2 A3  JSR sub_A3C2
C - - - - - 0x00A2FD 02:A2ED: 4C 43 A3  JMP loc_A343
bra_A2F0:
loc_A2F0:
C D 1 - - - 0x00A300 02:A2F0: 20 25 A4  JSR sub_A425
C - - - - - 0x00A303 02:A2F3: 20 E4 A3  JSR sub_A3E4
C - - - - - 0x00A306 02:A2F6: B0 43     BCS bra_A33B
bra_A2F8:
C - - - - - 0x00A308 02:A2F8: BD 4C 06  LDA ram_064C_car,X
C - - - - - 0x00A30B 02:A2FB: F0 05     BEQ bra_A302
C - - - - - 0x00A30D 02:A2FD: 20 91 A4  JSR sub_A491
C - - - - - 0x00A310 02:A300: 90 2D     BCC bra_A32F
bra_A302:
C - - - - - 0x00A312 02:A302: BD 8C 05  LDA ram_058C_car,X
C - - - - - 0x00A315 02:A305: 29 FB     AND #$FB
C - - - - - 0x00A317 02:A307: 9D 8C 05  STA ram_058C_car,X
C - - - - - 0x00A31A 02:A30A: BC 5B 06  LDY ram_065B,X
C - - - - - 0x00A31D 02:A30D: C8        INY
C - - - - - 0x00A31E 02:A30E: C8        INY
C - - - - - 0x00A31F 02:A30F: B1 8F     LDA (ram_008F),Y
C - - - - - 0x00A321 02:A311: D0 18     BNE bra_A32B
C - - - - - 0x00A323 02:A313: BD 4C 06  LDA ram_064C_car,X
C - - - - - 0x00A326 02:A316: D0 11     BNE bra_A329
C - - - - - 0x00A328 02:A318: 84 15     STY ram_0015_temp
C - - - - - 0x00A32A 02:A31A: BD 65 06  LDA ram_0665,X
C - - - - - 0x00A32D 02:A31D: 9D 4C 06  STA ram_064C_car,X
C - - - - - 0x00A330 02:A320: 4A        LSR
C - - - - - 0x00A331 02:A321: 18        CLC
C - - - - - 0x00A332 02:A322: 65 15     ADC ram_0015_temp
C - - - - - 0x00A334 02:A324: A8        TAY
C - - - - - 0x00A335 02:A325: B1 8F     LDA (ram_008F),Y
C - - - - - 0x00A337 02:A327: D0 03     BNE bra_A32C
bra_A329:
C - - - - - 0x00A339 02:A329: A0 00     LDY #$00
bra_A32B:
C - - - - - 0x00A33B 02:A32B: 98        TYA
bra_A32C:
C - - - - - 0x00A33C 02:A32C: 9D 5B 06  STA ram_065B,X
bra_A32F:
C - - - - - 0x00A33F 02:A32F: 20 79 A3  JSR sub_A379
C - - - - - 0x00A342 02:A332: 9D 30 04  STA ram_0430_precise_angle,X
C - - - - - 0x00A345 02:A335: 9D 2E 05  STA ram_turbos_car,X
C - - - - - 0x00A348 02:A338: 20 C2 A3  JSR sub_A3C2
bra_A33B:
C - - - - - 0x00A34B 02:A33B: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00A34E 02:A33E: 29 BF     AND #$BF
C - - - - - 0x00A350 02:A340: 9D 87 05  STA ram_0587_car_flags,X
loc_A343:
C D 1 - - - 0x00A353 02:A343: B5 CC     LDA ram_script_handler,X
C - - - - - 0x00A355 02:A345: 29 03     AND #$03
C - - - - - 0x00A357 02:A347: D0 2F     BNE bra_A378_RTS
C - - - - - 0x00A359 02:A349: BD 30 04  LDA ram_0430_precise_angle,X
C - - - - - 0x00A35C 02:A34C: 38        SEC
C - - - - - 0x00A35D 02:A34D: FD 60 06  SBC ram_0660_car,X
C - - - - - 0x00A360 02:A350: F0 26     BEQ bra_A378_RTS
C - - - - - 0x00A362 02:A352: 30 0B     BMI bra_A35F
C - - - - - 0x00A364 02:A354: C9 05     CMP #$05
C - - - - - 0x00A366 02:A356: 90 19     BCC bra_A371
C - - - - - 0x00A368 02:A358: 4A        LSR
C - - - - - 0x00A369 02:A359: 4A        LSR
C - - - - - 0x00A36A 02:A35A: 18        CLC
C - - - - - 0x00A36B 02:A35B: 69 04     ADC #$04
C - - - - - 0x00A36D 02:A35D: D0 12     BNE bra_A371
bra_A35F:
C - - - - - 0x00A36F 02:A35F: C9 FC     CMP #$FC
C - - - - - 0x00A371 02:A361: B0 0E     BCS bra_A371
C - - - - - 0x00A373 02:A363: 49 FF     EOR #$FF
C - - - - - 0x00A375 02:A365: 18        CLC
C - - - - - 0x00A376 02:A366: 69 01     ADC #$01
C - - - - - 0x00A378 02:A368: 4A        LSR
C - - - - - 0x00A379 02:A369: 4A        LSR
C - - - - - 0x00A37A 02:A36A: 85 15     STA ram_0015_temp
C - - - - - 0x00A37C 02:A36C: A9 FC     LDA #$FC
C - - - - - 0x00A37E 02:A36E: 38        SEC
C - - - - - 0x00A37F 02:A36F: E5 15     SBC ram_0015_temp
bra_A371:
C - - - - - 0x00A381 02:A371: 18        CLC
C - - - - - 0x00A382 02:A372: 7D 60 06  ADC ram_0660_car,X
C - - - - - 0x00A385 02:A375: 9D 60 06  STA ram_0660_car,X
bra_A378_RTS:
C - - - - - 0x00A388 02:A378: 60        RTS



sub_A379:
C - - - - - 0x00A389 02:A379: BC 4C 06  LDY ram_064C_car,X
C - - - - - 0x00A38C 02:A37C: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A38E 02:A37E: 85 8F     STA ram_008F
C - - - - - 0x00A390 02:A380: C8        INY
C - - - - - 0x00A391 02:A381: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A393 02:A383: 85 90     STA ram_0090
C - - - - - 0x00A395 02:A385: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00A398 02:A388: 29 BF     AND #$BF
C - - - - - 0x00A39A 02:A38A: 9D 87 05  STA ram_0587_car_flags,X
sub_A38D:
C - - - - - 0x00A39D 02:A38D: BC 5B 06  LDY ram_065B,X
C - - - - - 0x00A3A0 02:A390: B1 8F     LDA (ram_008F),Y
C - - - - - 0x00A3A2 02:A392: 9D 51 06  STA ram_0651,X
C - - - - - 0x00A3A5 02:A395: C8        INY
C - - - - - 0x00A3A6 02:A396: B1 8F     LDA (ram_008F),Y
C - - - - - 0x00A3A8 02:A398: 9D 56 06  STA ram_0656,X
C - - - - - 0x00A3AB 02:A39B: 20 25 A4  JSR sub_A425
C - - - - - 0x00A3AE 02:A39E: 20 53 A4  JSR sub_A453
C - - - - - 0x00A3B1 02:A3A1: 4A        LSR
C - - - - - 0x00A3B2 02:A3A2: AC 70 06  LDY ram_0670
C - - - - - 0x00A3B5 02:A3A5: 59 BE A3  EOR tbl_A3BE,Y
C - - - - - 0x00A3B8 02:A3A8: 19 B6 A3  ORA tbl_A3B6,Y
C - - - - - 0x00A3BB 02:A3AB: A8        TAY
C - - - - - 0x00A3BC 02:A3AC: B9 42 A9  LDA tbl_A942,Y
C - - - - - 0x00A3BF 02:A3AF: AC 70 06  LDY ram_0670
C - - - - - 0x00A3C2 02:A3B2: 59 BA A3  EOR tbl_A3BA,Y
C - - - - - 0x00A3C5 02:A3B5: 60        RTS



tbl_A3B6:
- D 1 - - - 0x00A3C6 02:A3B6: 40        .byte $40   ; 00 
- D 1 - - - 0x00A3C7 02:A3B7: 00        .byte $00   ; 01 
- D 1 - - - 0x00A3C8 02:A3B8: 00        .byte $00   ; 02 
- D 1 - - - 0x00A3C9 02:A3B9: 40        .byte $40   ; 03 



tbl_A3BA:
- D 1 - - - 0x00A3CA 02:A3BA: 00        .byte $00   ; 00 
- D 1 - - - 0x00A3CB 02:A3BB: 80        .byte $80   ; 01 
- D 1 - - - 0x00A3CC 02:A3BC: 00        .byte $00   ; 02 
- D 1 - - - 0x00A3CD 02:A3BD: 80        .byte $80   ; 03 



tbl_A3BE:
- D 1 - - - 0x00A3CE 02:A3BE: 3F        .byte $3F   ; 00 
- D 1 - - - 0x00A3CF 02:A3BF: 00        .byte $00   ; 01 
- D 1 - - - 0x00A3D0 02:A3C0: 00        .byte $00   ; 02 
- D 1 - - - 0x00A3D1 02:A3C1: 3F        .byte $3F   ; 03 


sub_A3C2:
loc_A3C2:
C D 1 - - - 0x00A3D2 02:A3C2: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00A3D5 02:A3C5: BC 30 04  LDY ram_0430_precise_angle,X
C - - - - - 0x00A3D8 02:A3C8: C0 E0     CPY #$E0
C - - - - - 0x00A3DA 02:A3CA: B0 0C     BCS bra_A3D8
C - - - - - 0x00A3DC 02:A3CC: C0 A1     CPY #$A1
C - - - - - 0x00A3DE 02:A3CE: B0 0E     BCS bra_A3DE
C - - - - - 0x00A3E0 02:A3D0: C0 60     CPY #$60
C - - - - - 0x00A3E2 02:A3D2: B0 04     BCS bra_A3D8
C - - - - - 0x00A3E4 02:A3D4: C0 21     CPY #$21
C - - - - - 0x00A3E6 02:A3D6: B0 06     BCS bra_A3DE
bra_A3D8:
C - - - - - 0x00A3E8 02:A3D8: 29 7F     AND #$7F
C - - - - - 0x00A3EA 02:A3DA: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x00A3ED 02:A3DD: 60        RTS
bra_A3DE:
C - - - - - 0x00A3EE 02:A3DE: 09 80     ORA #$80
C - - - - - 0x00A3F0 02:A3E0: 9D 87 05  STA ram_0587_car_flags,X
C - - - - - 0x00A3F3 02:A3E3: 60        RTS



sub_A3E4:
C - - - - - 0x00A3F4 02:A3E4: BD 87 05  LDA ram_0587_car_flags,X
C - - - - - 0x00A3F7 02:A3E7: 29 80     AND #$80
C - - - - - 0x00A3F9 02:A3E9: D0 05     BNE bra_A3F0
C - - - - - 0x00A3FB 02:A3EB: A5 C6     LDA ram_00C6
C - - - - - 0x00A3FD 02:A3ED: C9 04     CMP #$04
C - - - - - 0x00A3FF 02:A3EF: 60        RTS
bra_A3F0:
C - - - - - 0x00A400 02:A3F0: A5 C7     LDA ram_00C7
C - - - - - 0x00A402 02:A3F2: C9 04     CMP #$04
bra_A3F4_RTS:
C - - - - - 0x00A404 02:A3F4: 60        RTS



loc_A3F5:
; con_bsw_01_27
C D 1 - - - 0x00A405 02:A3F5: A6 1F     LDX ram_001F_temp
C - - - - - 0x00A407 02:A3F7: B5 DD     LDA ram_bot_flag,X
C - - - - - 0x00A409 02:A3F9: F0 F9     BEQ bra_A3F4_RTS    ; if human
; if bot
C - - - - - 0x00A40B 02:A3FB: A9 00     LDA #$00
C - - - - - 0x00A40D 02:A3FD: 9D 5B 06  STA ram_065B,X
C - - - - - 0x00A410 02:A400: 20 79 A3  JSR sub_A379
C - - - - - 0x00A413 02:A403: 9D 30 04  STA ram_0430_precise_angle,X
C - - - - - 0x00A416 02:A406: 4C C2 A3  JMP loc_A3C2



loc_A409:
; con_bsw_01_2A
C D 1 - - - 0x00A419 02:A409: A6 1F     LDX ram_001F_temp
C - - - - - 0x00A41B 02:A40B: A0 00     LDY #$00
C - - - - - 0x00A41D 02:A40D: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A41F 02:A40F: 85 8F     STA ram_008F
C - - - - - 0x00A421 02:A411: C8        INY
C - - - - - 0x00A422 02:A412: B1 91     LDA (ram_0091),Y
C - - - - - 0x00A424 02:A414: 85 90     STA ram_0090
C - - - - - 0x00A426 02:A416: 20 8D A3  JSR sub_A38D
C - - - - - 0x00A429 02:A419: 9D 30 04  STA ram_0430_precise_angle,X
C - - - - - 0x00A42C 02:A41C: 9D 2E 05  STA ram_turbos_car,X
C - - - - - 0x00A42F 02:A41F: 9D 60 06  STA ram_0660_car,X
C - - - - - 0x00A432 02:A422: 4C C2 A3  JMP loc_A3C2



sub_A425:
C - - - - - 0x00A435 02:A425: A9 00     LDA #$00
C - - - - - 0x00A437 02:A427: 8D 70 06  STA ram_0670
C - - - - - 0x00A43A 02:A42A: BD 51 06  LDA ram_0651,X
C - - - - - 0x00A43D 02:A42D: 38        SEC
C - - - - - 0x00A43E 02:A42E: FD 50 04  SBC ram_pos_X_hi,X
C - - - - - 0x00A441 02:A431: B0 06     BCS bra_A439
C - - - - - 0x00A443 02:A433: 49 FF     EOR #$FF
C - - - - - 0x00A445 02:A435: 18        CLC
C - - - - - 0x00A446 02:A436: 69 01     ADC #$01
C - - - - - 0x00A448 02:A438: 18        CLC
bra_A439:
C - - - - - 0x00A449 02:A439: 85 C6     STA ram_00C6
C - - - - - 0x00A44B 02:A43B: 2E 70 06  ROL ram_0670
C - - - - - 0x00A44E 02:A43E: BD 56 06  LDA ram_0656,X
C - - - - - 0x00A451 02:A441: 38        SEC
C - - - - - 0x00A452 02:A442: FD 70 04  SBC ram_pos_Y_hi,X
C - - - - - 0x00A455 02:A445: B0 06     BCS bra_A44D
C - - - - - 0x00A457 02:A447: 49 FF     EOR #$FF
C - - - - - 0x00A459 02:A449: 18        CLC
C - - - - - 0x00A45A 02:A44A: 69 01     ADC #$01
C - - - - - 0x00A45C 02:A44C: 18        CLC
bra_A44D:
C - - - - - 0x00A45D 02:A44D: 85 C7     STA ram_00C7
C - - - - - 0x00A45F 02:A44F: 2E 70 06  ROL ram_0670
C - - - - - 0x00A462 02:A452: 60        RTS



sub_A453:
C - - - - - 0x00A463 02:A453: A4 C6     LDY ram_00C6
C - - - - - 0x00A465 02:A455: B9 42 A6  LDA tbl_A642,Y
C - - - - - 0x00A468 02:A458: A4 C7     LDY ram_00C7
C - - - - - 0x00A46A 02:A45A: 18        CLC
C - - - - - 0x00A46B 02:A45B: 79 42 A6  ADC tbl_A642,Y
C - - - - - 0x00A46E 02:A45E: 4A        LSR
C - - - - - 0x00A46F 02:A45F: 85 17     STA ram_0017_temp
C - - - - - 0x00A471 02:A461: A5 C7     LDA ram_00C7
C - - - - - 0x00A473 02:A463: C5 C6     CMP ram_00C6
C - - - - - 0x00A475 02:A465: F0 27     BEQ bra_A48E
C - - - - - 0x00A477 02:A467: B0 11     BCS bra_A47A
C - - - - - 0x00A479 02:A469: A4 C6     LDY ram_00C6
C - - - - - 0x00A47B 02:A46B: B9 42 A7  LDA tbl_A742,Y
C - - - - - 0x00A47E 02:A46E: A4 C7     LDY ram_00C7
C - - - - - 0x00A480 02:A470: 38        SEC
C - - - - - 0x00A481 02:A471: F9 42 A7  SBC tbl_A742,Y
C - - - - - 0x00A484 02:A474: A8        TAY
C - - - - - 0x00A485 02:A475: B9 42 A8  LDA tbl_A842,Y
C - - - - - 0x00A488 02:A478: 4A        LSR
C - - - - - 0x00A489 02:A479: 60        RTS
bra_A47A:
C - - - - - 0x00A48A 02:A47A: A4 C7     LDY ram_00C7
C - - - - - 0x00A48C 02:A47C: B9 42 A7  LDA tbl_A742,Y
C - - - - - 0x00A48F 02:A47F: A4 C6     LDY ram_00C6
C - - - - - 0x00A491 02:A481: 38        SEC
C - - - - - 0x00A492 02:A482: F9 42 A7  SBC tbl_A742,Y
C - - - - - 0x00A495 02:A485: A8        TAY
C - - - - - 0x00A496 02:A486: A9 00     LDA #$00
C - - - - - 0x00A498 02:A488: 38        SEC
C - - - - - 0x00A499 02:A489: F9 42 A8  SBC tbl_A842,Y
C - - - - - 0x00A49C 02:A48C: 6A        ROR
C - - - - - 0x00A49D 02:A48D: 60        RTS
bra_A48E:
C - - - - - 0x00A49E 02:A48E: A9 40     LDA #$40
C - - - - - 0x00A4A0 02:A490: 60        RTS



sub_A491:
C - - - - - 0x00A4A1 02:A491: BD 8C 05  LDA ram_058C_car,X
C - - - - - 0x00A4A4 02:A494: 29 03     AND #$03
C - - - - - 0x00A4A6 02:A496: D0 02     BNE bra_A49A
C - - - - - 0x00A4A8 02:A498: 38        SEC
C - - - - - 0x00A4A9 02:A499: 60        RTS
bra_A49A:
C - - - - - 0x00A4AA 02:A49A: C9 02     CMP #$02
C - - - - - 0x00A4AC 02:A49C: 90 19     BCC bra_A4B7
C - - - - - 0x00A4AE 02:A49E: BD 4C 06  LDA ram_064C_car,X
C - - - - - 0x00A4B1 02:A4A1: 4A        LSR
C - - - - - 0x00A4B2 02:A4A2: A8        TAY
C - - - - - 0x00A4B3 02:A4A3: B9 3D A5  LDA tbl_A53E - $01,Y
C - - - - - 0x00A4B6 02:A4A6: F0 73     BEQ bra_A51B
C - - - - - 0x00A4B8 02:A4A8: 85 15     STA ram_0015_temp
C - - - - - 0x00A4BA 02:A4AA: 20 25 A5  JSR sub_A525
C - - - - - 0x00A4BD 02:A4AD: 29 F0     AND #$F0
C - - - - - 0x00A4BF 02:A4AF: F0 72     BEQ bra_A523
C - - - - - 0x00A4C1 02:A4B1: 4A        LSR
C - - - - - 0x00A4C2 02:A4B2: 4A        LSR
C - - - - - 0x00A4C3 02:A4B3: 4A        LSR
C - - - - - 0x00A4C4 02:A4B4: 4A        LSR
C - - - - - 0x00A4C5 02:A4B5: D0 13     BNE bra_A4CA
bra_A4B7:
C - - - - - 0x00A4C7 02:A4B7: BD 4C 06  LDA ram_064C_car,X
C - - - - - 0x00A4CA 02:A4BA: 4A        LSR
C - - - - - 0x00A4CB 02:A4BB: A8        TAY
C - - - - - 0x00A4CC 02:A4BC: B9 39 A5  LDA tbl_A53A - $01,Y
C - - - - - 0x00A4CF 02:A4BF: F0 5A     BEQ bra_A51B
C - - - - - 0x00A4D1 02:A4C1: 85 15     STA ram_0015_temp
C - - - - - 0x00A4D3 02:A4C3: 20 25 A5  JSR sub_A525
C - - - - - 0x00A4D6 02:A4C6: 29 0F     AND #$0F
C - - - - - 0x00A4D8 02:A4C8: F0 59     BEQ bra_A523
bra_A4CA:
C - - - - - 0x00A4DA 02:A4CA: C9 08     CMP #$08
C - - - - - 0x00A4DC 02:A4CC: F0 23     BEQ bra_A4F1
C - - - - - 0x00A4DE 02:A4CE: 90 11     BCC bra_A4E1
- - - - - - 0x00A4E0 02:A4D0: 0A        ASL
- - - - - - 0x00A4E1 02:A4D1: 29 0E     AND #$0E
- - - - - - 0x00A4E3 02:A4D3: 85 16     STA ram_0016_temp
- - - - - - 0x00A4E5 02:A4D5: BD 5B 06  LDA ram_065B,X
- - - - - - 0x00A4E8 02:A4D8: 38        SEC
- - - - - - 0x00A4E9 02:A4D9: E5 16     SBC ram_0016_temp
- - - - - - 0x00A4EB 02:A4DB: B0 11     BCS bra_A4EE
- - - - - - 0x00A4ED 02:A4DD: 65 95     ADC ram_0095
- - - - - - 0x00A4EF 02:A4DF: D0 0D     BNE bra_A4EE
bra_A4E1:
C - - - - - 0x00A4F1 02:A4E1: 0A        ASL
C - - - - - 0x00A4F2 02:A4E2: 18        CLC
C - - - - - 0x00A4F3 02:A4E3: 7D 5B 06  ADC ram_065B,X
C - - - - - 0x00A4F6 02:A4E6: C5 95     CMP ram_0095
C - - - - - 0x00A4F8 02:A4E8: 90 04     BCC bra_A4EE
C - - - - - 0x00A4FA 02:A4EA: F0 02     BEQ bra_A4EE
C - - - - - 0x00A4FC 02:A4EC: E5 95     SBC ram_0095
bra_A4EE:
C - - - - - 0x00A4FE 02:A4EE: 9D 5B 06  STA ram_065B,X
bra_A4F1:
C - - - - - 0x00A501 02:A4F1: BD 4C 06  LDA ram_064C_car,X
C - - - - - 0x00A504 02:A4F4: 4A        LSR
C - - - - - 0x00A505 02:A4F5: A8        TAY
C - - - - - 0x00A506 02:A4F6: B9 95 00  LDA ram_0095,Y
C - - - - - 0x00A509 02:A4F9: 38        SEC
C - - - - - 0x00A50A 02:A4FA: E9 01     SBC #$01
C - - - - - 0x00A50C 02:A4FC: 99 95 00  STA ram_0095,Y
C - - - - - 0x00A50F 02:A4FF: A5 15     LDA ram_0015_temp
C - - - - - 0x00A511 02:A501: 9D 4C 06  STA ram_064C_car,X
C - - - - - 0x00A514 02:A504: 4A        LSR
C - - - - - 0x00A515 02:A505: A8        TAY
C - - - - - 0x00A516 02:A506: B9 95 00  LDA ram_0095,Y
C - - - - - 0x00A519 02:A509: 18        CLC
C - - - - - 0x00A51A 02:A50A: 69 01     ADC #$01
C - - - - - 0x00A51C 02:A50C: 99 95 00  STA ram_0095,Y
C - - - - - 0x00A51F 02:A50F: BD 8C 05  LDA ram_058C_car,X
C - - - - - 0x00A522 02:A512: 29 FC     AND #$FC
C - - - - - 0x00A524 02:A514: 09 04     ORA #$04
C - - - - - 0x00A526 02:A516: 9D 8C 05  STA ram_058C_car,X
C - - - - - 0x00A529 02:A519: 18        CLC
C - - - - - 0x00A52A 02:A51A: 60        RTS
bra_A51B:
C - - - - - 0x00A52B 02:A51B: BD 8C 05  LDA ram_058C_car,X
C - - - - - 0x00A52E 02:A51E: 29 FC     AND #$FC
C - - - - - 0x00A530 02:A520: 9D 8C 05  STA ram_058C_car,X
bra_A523:
C - - - - - 0x00A533 02:A523: 38        SEC
C - - - - - 0x00A534 02:A524: 60        RTS



sub_A525:
C - - - - - 0x00A535 02:A525: BD 5B 06  LDA ram_065B,X
C - - - - - 0x00A538 02:A528: 4A        LSR
C - - - - - 0x00A539 02:A529: 85 16     STA ram_0016_temp
C - - - - - 0x00A53B 02:A52B: 0A        ASL
C - - - - - 0x00A53C 02:A52C: 18        CLC
C - - - - - 0x00A53D 02:A52D: 65 16     ADC ram_0016_temp
C - - - - - 0x00A53F 02:A52F: 79 35 A5  ADC tbl_A536 - $01,Y
C - - - - - 0x00A542 02:A532: A8        TAY
C - - - - - 0x00A543 02:A533: B1 93     LDA (ram_0093),Y
C - - - - - 0x00A545 02:A535: 60        RTS



tbl_A536:
- D 1 - - - 0x00A546 02:A536: 00        .byte $00   ; 01
- D 1 - - - 0x00A547 02:A537: 00        .byte $00   ; 02
- D 1 - - - 0x00A548 02:A538: 01        .byte $01   ; 03
- D 1 - - - 0x00A549 02:A539: 02        .byte $02   ; 04



tbl_A53A:
- D 1 - - - 0x00A54A 02:A53A: 00        .byte $00   ; 01
- D 1 - - - 0x00A54B 02:A53B: 06        .byte $06   ; 02
- D 1 - - - 0x00A54C 02:A53C: 08        .byte $08   ; 03
- D 1 - - - 0x00A54D 02:A53D: 02        .byte $02   ; 04



tbl_A53E:
- D 1 - - - 0x00A54E 02:A53E: 08        .byte $08   ; 01
- D 1 - - - 0x00A54F 02:A53F: 00        .byte $00   ; 02
- D 1 - - - 0x00A550 02:A540: 04        .byte $04   ; 03
- D 1 - - - 0x00A551 02:A541: 06        .byte $06   ; 04



; bzk garbage
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- - - - - - 0x00A552 02:A542: 00        .byte $00, $01, $04, $09, $10, $19, $24, $31, $40, $51, $64, $79, $90, $A9, $C4, $E1   ; 00 
- - - - - - 0x00A562 02:A552: 00        .byte $00, $21, $44, $69, $90, $B9, $E4, $11, $40, $71, $A4, $D9, $10, $49, $84, $C1   ; 10 
- - - - - - 0x00A572 02:A562: 00        .byte $00, $41, $84, $C9, $10, $59, $A4, $F1, $40, $91, $E4, $39, $90, $E9, $44, $A1   ; 20 
- - - - - - 0x00A582 02:A572: 00        .byte $00, $61, $C4, $29, $90, $F9, $64, $D1, $40, $B1, $24, $99, $10, $89, $04, $81   ; 30 
- - - - - - 0x00A592 02:A582: 00        .byte $00, $81, $04, $89, $10, $99, $24, $B1, $40, $D1, $64, $F9, $90, $29, $C4, $61   ; 40 
- - - - - - 0x00A5A2 02:A592: 00        .byte $00, $A1, $44, $E9, $90, $39, $E4, $91, $40, $F1, $A4, $59, $10, $C9, $84, $41   ; 50 
- - - - - - 0x00A5B2 02:A5A2: 00        .byte $00, $C1, $84, $49, $10, $D9, $A4, $71, $40, $11, $E4, $B9, $90, $69, $44, $21   ; 60 
- - - - - - 0x00A5C2 02:A5B2: 00        .byte $00, $E1, $C4, $A9, $90, $79, $64, $51, $40, $31, $24, $19, $10, $09, $04, $01   ; 70 
- - - - - - 0x00A5D2 02:A5C2: 00        .byte $00, $01, $04, $09, $10, $19, $24, $31, $40, $51, $64, $79, $90, $A9, $C4, $E1   ; 80 
- - - - - - 0x00A5E2 02:A5D2: 00        .byte $00, $21, $44, $69, $90, $B9, $E4, $11, $40, $71, $A4, $D9, $10, $49, $84, $C1   ; 90 
- - - - - - 0x00A5F2 02:A5E2: 00        .byte $00, $41, $84, $C9, $10, $59, $A4, $F1, $40, $91, $E4, $39, $90, $E9, $44, $A1   ; A0 
- - - - - - 0x00A602 02:A5F2: 00        .byte $00, $61, $C4, $29, $90, $F9, $64, $D1, $40, $B1, $24, $99, $10, $89, $04, $81   ; B0 
- - - - - - 0x00A612 02:A602: 00        .byte $00, $81, $04, $89, $10, $99, $24, $B1, $40, $D1, $64, $F9, $90, $29, $C4, $61   ; C0 
- - - - - - 0x00A622 02:A612: 00        .byte $00, $A1, $44, $E9, $90, $39, $E4, $91, $40, $F1, $A4, $59, $10, $C9, $84, $41   ; D0 
- - - - - - 0x00A632 02:A622: 00        .byte $00, $C1, $84, $49, $10, $D9, $A4, $71, $40, $11, $E4, $B9, $90, $69, $44, $21   ; E0 
- - - - - - 0x00A642 02:A632: 00        .byte $00, $E1, $C4, $A9, $90, $79, $64, $51, $40, $31, $24, $19, $10, $09, $04, $01   ; F0 



tbl_A642:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - - - 0x00A652 02:A642: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - - - 0x00A662 02:A652: 01        .byte $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $03, $03, $03, $03   ; 10 
- D 1 - - - 0x00A672 02:A662: 04        .byte $04, $04, $04, $04, $05, $05, $05, $05, $06, $06, $06, $07, $07, $07, $08, $08   ; 20 
- D 1 - - - 0x00A682 02:A672: 09        .byte $09, $09, $09, $0A, $0A, $0A, $0B, $0B, $0C, $0C, $0D, $0D, $0E, $0E, $0F, $0F   ; 30 
- D 1 - - - 0x00A692 02:A682: 10        .byte $10, $10, $11, $11, $12, $12, $13, $13, $14, $14, $15, $15, $16, $17, $17, $18   ; 40 
- D 1 - - - 0x00A6A2 02:A692: 19        .byte $19, $19, $1A, $1A, $1B, $1C, $1C, $1D, $1E, $1E, $1F, $20, $21, $21, $22, $23   ; 50 
- - - - - - 0x00A6B2 02:A6A2: 24        .byte $24, $24, $25, $26, $27, $27, $28, $29, $2A, $2B, $2B, $2C, $2D, $2E, $2F, $30   ; 60 
- D 1 - - - 0x00A6C2 02:A6B2: 31        .byte $31, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, $3F   ; 70 
- - - - - - 0x00A6D2 02:A6C2: 40        .byte $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F   ; 80 
- - - - - - 0x00A6E2 02:A6D2: 51        .byte $51, $52, $53, $54, $55, $56, $57, $59, $5A, $5B, $5C, $5D, $5F, $60, $61, $62   ; 90 
- - - - - - 0x00A6F2 02:A6E2: 64        .byte $64, $65, $66, $67, $69, $6A, $6B, $6C, $6E, $6F, $70, $72, $73, $74, $76, $77   ; A0 
- - - - - - 0x00A702 02:A6F2: 79        .byte $79, $7A, $7B, $7D, $7E, $7F, $81, $82, $84, $85, $87, $88, $8A, $8B, $8D, $8E   ; B0 
- - - - - - 0x00A712 02:A702: 90        .byte $90, $91, $93, $94, $96, $97, $99, $9A, $9C, $9D, $9F, $A0, $A2, $A4, $A5, $A7   ; C0 
- - - - - - 0x00A722 02:A712: A9        .byte $A9, $AA, $AC, $AD, $AF, $B1, $B2, $B4, $B6, $B7, $B9, $BB, $BD, $BE, $C0, $C2   ; D0 
- - - - - - 0x00A732 02:A722: C4        .byte $C4, $C5, $C7, $C9, $CB, $CC, $CE, $D0, $D2, $D4, $D5, $D7, $D9, $DB, $DD, $DF   ; E0 
- - - - - - 0x00A742 02:A732: E1        .byte $E1, $E2, $E4, $E6, $E8, $EA, $EC, $EE, $F0, $F2, $F4, $F6, $F8, $FA, $FC, $FE   ; F0 



tbl_A742:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - - - 0x00A752 02:A742: 00        .byte $00, $00, $1F, $32, $3F, $4A, $52, $59, $5F, $65, $6A, $6E, $72, $76, $79, $7D   ; 00 
- D 1 - - - 0x00A762 02:A752: 7F        .byte $7F, $82, $85, $87, $8A, $8C, $8E, $90, $92, $94, $96, $98, $99, $9B, $9D, $9E   ; 10 
- D 1 - - - 0x00A772 02:A762: 9F        .byte $9F, $A1, $A2, $A4, $A5, $A6, $A7, $A9, $AA, $AB, $AC, $AD, $AE, $AF, $B0, $B1   ; 20 
- D 1 - - - 0x00A782 02:A772: B2        .byte $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BA, $BB, $BC, $BD, $BD, $BE, $BF   ; 30 
- D 1 - - - 0x00A792 02:A782: BF        .byte $BF, $C0, $C1, $C2, $C2, $C3, $C4, $C4, $C5, $C6, $C6, $C7, $C7, $C8, $C9, $C9   ; 40 
- D 1 - - - 0x00A7A2 02:A792: CA        .byte $CA, $CA, $CB, $CC, $CC, $CD, $CD, $CE, $CE, $CF, $D0, $D0, $D1, $D1, $D1, $D2   ; 50 
- - - - - - 0x00A7B2 02:A7A2: D2        .byte $D2, $D3, $D3, $D4, $D4, $D5, $D5, $D5, $D6, $D6, $D7, $D7, $D8, $D8, $D9, $D9   ; 60 
- D 1 - - - 0x00A7C2 02:A7B2: D9        .byte $D9, $DA, $DA, $DB, $DB, $DB, $DC, $DC, $DD, $DD, $DD, $DE, $DE, $DE, $DF, $DF   ; 70 
- - - - - - 0x00A7D2 02:A7C2: DF        .byte $DF, $E0, $E0, $E1, $E1, $E1, $E2, $E2, $E2, $E3, $E3, $E3, $E4, $E4, $E4, $E5   ; 80 
- - - - - - 0x00A7E2 02:A7D2: E5        .byte $E5, $E5, $E6, $E6, $E6, $E7, $E7, $E7, $E7, $E8, $E8, $E8, $E9, $E9, $E9, $EA   ; 90 
- - - - - - 0x00A7F2 02:A7E2: EA        .byte $EA, $EA, $EA, $EB, $EB, $EB, $EC, $EC, $EC, $EC, $ED, $ED, $ED, $ED, $EE, $EE   ; A0 
- - - - - - 0x00A802 02:A7F2: EE        .byte $EE, $EE, $EF, $EF, $EF, $EF, $F0, $F0, $F0, $F1, $F1, $F1, $F1, $F1, $F2, $F2   ; B0 
- - - - - - 0x00A812 02:A802: F2        .byte $F2, $F2, $F3, $F3, $F3, $F3, $F4, $F4, $F4, $F4, $F5, $F5, $F5, $F5, $F5, $F6   ; C0 
- - - - - - 0x00A822 02:A812: F6        .byte $F6, $F6, $F6, $F7, $F7, $F7, $F7, $F7, $F8, $F8, $F8, $F8, $F9, $F9, $F9, $F9   ; D0 
- - - - - - 0x00A832 02:A822: F9        .byte $F9, $FA, $FA, $FA, $FA, $FA, $FB, $FB, $FB, $FB, $FB, $FC, $FC, $FC, $FC, $FC   ; E0 
- - - - - - 0x00A842 02:A832: FD        .byte $FD, $FD, $FD, $FD, $FD, $FD, $FE, $FE, $FE, $FE, $FF, $FF, $FF, $FF, $FF, $FF   ; F0 



tbl_A842:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- - - - - - 0x00A852 02:A842: 7F        .byte $7F, $7E, $7C, $7A, $78, $77, $75, $73, $71, $70, $6E, $6C, $6B, $69, $67, $65   ; 00 
- D 1 - - - 0x00A862 02:A852: 64        .byte $64, $62, $61, $5F, $5D, $5C, $5A, $58, $57, $55, $54, $52, $51, $4F, $4E, $4C   ; 10 
- D 1 - - - 0x00A872 02:A862: 4B        .byte $4B, $4A, $48, $47, $46, $44, $43, $42, $40, $3F, $3E, $3D, $3B, $3A, $39, $38   ; 20 
- D 1 - - - 0x00A882 02:A872: 37        .byte $37, $36, $35, $34, $33, $32, $31, $30, $2F, $2E, $2D, $2C, $2B, $2A, $29, $28   ; 30 
- D 1 - - - 0x00A892 02:A882: 27        .byte $27, $27, $26, $25, $24, $23, $23, $22, $21, $21, $20, $1F, $1F, $1E, $1D, $1D   ; 40 
- D 1 - - - 0x00A8A2 02:A892: 1C        .byte $1C, $1B, $1B, $1A, $1A, $19, $19, $18, $18, $17, $17, $16, $16, $15, $15, $14   ; 50 
- D 1 - - - 0x00A8B2 02:A8A2: 14        .byte $14, $13, $13, $13, $12, $12, $11, $11, $11, $10, $10, $10, $0F, $0F, $0F, $0E   ; 60 
- D 1 - - - 0x00A8C2 02:A8B2: 0E        .byte $0E, $0E, $0D, $0D, $0D, $0C, $0C, $0C, $0C, $0B, $0B, $0B, $0B, $0A, $0A, $0A   ; 70 
- D 1 - - - 0x00A8D2 02:A8C2: 0A        .byte $0A, $09, $09, $09, $09, $09, $08, $08, $08, $08, $08, $08, $07, $07, $07, $07   ; 80 
- D 1 - - - 0x00A8E2 02:A8D2: 07        .byte $07, $07, $06, $06, $06, $06, $06, $06, $06, $05, $05, $05, $05, $05, $05, $05   ; 90 
- - - - - - 0x00A8F2 02:A8E2: 05        .byte $05, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $03, $03, $03, $03   ; A0 
- D 1 - - - 0x00A902 02:A8F2: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $02, $02, $02, $02   ; B0 
- - - - - - 0x00A912 02:A902: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01   ; C0 
- - - - - - 0x00A922 02:A912: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01   ; D0 
- - - - - - 0x00A932 02:A922: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00   ; E0 
- - - - - - 0x00A942 02:A932: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; F0 



tbl_A942:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - - - 0x00A952 02:A942: 00        .byte $00, $02, $03, $04, $06, $07, $08, $0A, $0B, $0C, $0E, $0F, $10, $12, $13, $14   ; 00 
- D 1 - - - 0x00A962 02:A952: 16        .byte $16, $17, $18, $1A, $1B, $1C, $1E, $1F, $20, $22, $23, $24, $26, $27, $28, $2A   ; 10 
- D 1 - - - 0x00A972 02:A962: 2B        .byte $2B, $2C, $2E, $2F, $30, $32, $33, $34, $36, $37, $38, $3A, $3B, $3C, $3E, $3F   ; 20 
- D 1 - - - 0x00A982 02:A972: 40        .byte $40, $41, $41, $42, $43, $43, $44, $45, $46, $47, $47, $48, $49, $4A, $4B, $4B   ; 30 
- - - - - - 0x00A992 02:A982: 4C        .byte $4C, $4D, $4E, $4F, $4F, $50, $51, $52, $53, $53, $54, $55, $56, $57, $57, $58   ; 40 
- D 1 - - - 0x00A9A2 02:A992: 59        .byte $59, $5A, $5B, $5B, $5C, $5D, $5E, $5F, $5F, $60, $61, $62, $63, $63, $64, $65   ; 50 
- D 1 - - - 0x00A9B2 02:A9A2: 66        .byte $66, $67, $67, $68, $69, $6A, $6B, $6B, $6C, $6D, $6E, $6F, $6F, $70, $71, $72   ; 60 
- D 1 - - - 0x00A9C2 02:A9B2: 73        .byte $73, $73, $74, $75, $76, $77, $77, $78, $79, $7A, $7B, $7B, $7C, $7D, $7E, $80   ; 70 



tbl_A9C2:
- D 1 - - - 0x00A9D2 02:A9C2: D4 A9     .word _off006_A9D4_00
- D 1 - - - 0x00A9D4 02:A9C4: B9 AB     .word _off006_ABB9_01
- D 1 - - - 0x00A9D6 02:A9C6: E4 AD     .word _off006_ADE4_02
- D 1 - - - 0x00A9D8 02:A9C8: EB AF     .word _off006_AFEB_03
- D 1 - - - 0x00A9DA 02:A9CA: EE B1     .word _off006_B1EE_04
- D 1 - - - 0x00A9DC 02:A9CC: 47 B3     .word _off006_B347_05
- D 1 - - - 0x00A9DE 02:A9CE: D8 B4     .word _off006_B4D8_06
- D 1 - - - 0x00A9E0 02:A9D0: AB B6     .word _off006_B6AB_07
- D 1 - - - 0x00A9E2 02:A9D2: A3 B8     .word _off006_B8A3_08



_off006_A9D4_00:
- D 1 - I - 0x00A9E4 02:A9D4: E1 A9     .word _off007_00_A9E1_00
- D 1 - I - 0x00A9E6 02:A9D6: F2 A9     .word _off007_00_A9F2_02
- D 1 - I - 0x00A9E8 02:A9D8: 45 AA     .word _off007_00_AA45_04
- D 1 - I - 0x00A9EA 02:A9DA: 98 AA     .word _off007_00_AA98_06
- D 1 - I - 0x00A9EC 02:A9DC: EB AA     .word _off007_00_AAEB_08
- D 1 - I - 0x00A9EE 02:A9DE: 3E AB     .word _off007_00_AB3E_0A
- D 1 - I - 0x00A9F0 02:A9E0: 19        .byte $19   ; 



_off007_00_A9E1_00:
- D 1 - I - 0x00A9F1 02:A9E1: B5        .byte $B5, $88   ; 
- D 1 - I - 0x00A9F3 02:A9E3: AD        .byte $AD, $83   ; 
- D 1 - I - 0x00A9F5 02:A9E5: 9B        .byte $9B, $83   ; 
- D 1 - I - 0x00A9F7 02:A9E7: 8B        .byte $8B, $83   ; 
- D 1 - I - 0x00A9F9 02:A9E9: 7D        .byte $7D, $83   ; 
- D 1 - I - 0x00A9FB 02:A9EB: 6F        .byte $6F, $83   ; 

- D 1 - I - 0x00A9FD 02:A9ED: 00        .byte $00   ; end token

- D 1 - I - 0x00A9FE 02:A9EE: 08        .byte $08   ; ??? 0x00A335
- D 1 - I - 0x00A9FF 02:A9EF: 08        .byte $08   ; 
- D 1 - I - 0x00AA00 02:A9F0: 06        .byte $06   ; 
- D 1 - I - 0x00AA01 02:A9F1: 06        .byte $06   ; 



_off007_00_A9F2_02:
- D 1 - I - 0x00AA02 02:A9F2: 8C        .byte $8C, $64   ; 
- D 1 - I - 0x00AA04 02:A9F4: 7D        .byte $7D, $65   ; 
- D 1 - I - 0x00AA06 02:A9F6: 70        .byte $70, $7A   ; 
- D 1 - I - 0x00AA08 02:A9F8: 61        .byte $61, $90   ; 
- D 1 - I - 0x00AA0A 02:A9FA: 56        .byte $56, $A4   ; 
- D 1 - I - 0x00AA0C 02:A9FC: 4B        .byte $4B, $AD   ; 
- D 1 - I - 0x00AA0E 02:A9FE: 2F        .byte $2F, $AF   ; 
- D 1 - I - 0x00AA10 02:AA00: 14        .byte $14, $AD   ; 
- D 1 - I - 0x00AA12 02:AA02: 05        .byte $05, $9C   ; 
- D 1 - I - 0x00AA14 02:AA04: 12        .byte $12, $8D   ; 
- D 1 - I - 0x00AA16 02:AA06: 1F        .byte $1F, $7F   ; 
- D 1 - I - 0x00AA18 02:AA08: 31        .byte $31, $70   ; 
- D 1 - I - 0x00AA1A 02:AA0A: 2E        .byte $2E, $4A   ; 
- D 1 - I - 0x00AA1C 02:AA0C: 43        .byte $43, $34   ; 
- D 1 - I - 0x00AA1E 02:AA0E: 57        .byte $57, $29   ; 
- D 1 - I - 0x00AA20 02:AA10: 69        .byte $69, $24   ; 
- D 1 - I - 0x00AA22 02:AA12: 85        .byte $85, $23   ; 
- D 1 - I - 0x00AA24 02:AA14: 96        .byte $96, $19   ; 
- D 1 - I - 0x00AA26 02:AA16: A1        .byte $A1, $0E   ; 
- D 1 - I - 0x00AA28 02:AA18: B4        .byte $B4, $0B   ; 
- D 1 - I - 0x00AA2A 02:AA1A: CB        .byte $CB, $0B   ; 
- D 1 - I - 0x00AA2C 02:AA1C: D7        .byte $D7, $15   ; 
- D 1 - I - 0x00AA2E 02:AA1E: E4        .byte $E4, $16   ; 
- D 1 - I - 0x00AA30 02:AA20: F3        .byte $F3, $18   ; 
- D 1 - I - 0x00AA32 02:AA22: FA        .byte $FA, $24   ; 
- D 1 - I - 0x00AA34 02:AA24: FB        .byte $FB, $31   ; 
- D 1 - I - 0x00AA36 02:AA26: FA        .byte $FA, $42   ; 
- D 1 - I - 0x00AA38 02:AA28: F6        .byte $F6, $54   ; 
- D 1 - I - 0x00AA3A 02:AA2A: F3        .byte $F3, $60   ; 
- D 1 - I - 0x00AA3C 02:AA2C: EF        .byte $EF, $73   ; 
- D 1 - I - 0x00AA3E 02:AA2E: EA        .byte $EA, $85   ; 
- D 1 - I - 0x00AA40 02:AA30: E3        .byte $E3, $A0   ; 
- D 1 - I - 0x00AA42 02:AA32: D9        .byte $D9, $A2   ; 
- D 1 - I - 0x00AA44 02:AA34: CC        .byte $CC, $A2   ; 
- D 1 - I - 0x00AA46 02:AA36: C1        .byte $C1, $98   ; 
- D 1 - I - 0x00AA48 02:AA38: B9        .byte $B9, $8E   ; 
- D 1 - I - 0x00AA4A 02:AA3A: BC        .byte $BC, $7C   ; 
- D 1 - I - 0x00AA4C 02:AA3C: BD        .byte $BD, $6C   ; 
- D 1 - I - 0x00AA4E 02:AA3E: B2        .byte $B2, $64   ; 
- D 1 - I - 0x00AA50 02:AA40: A9        .byte $A9, $63   ; 
- D 1 - I - 0x00AA52 02:AA42: 9D        .byte $9D, $63   ; 

- D 1 - I - 0x00AA54 02:AA44: 00        .byte $00   ; end token



_off007_00_AA45_04:
- D 1 - I - 0x00AA55 02:AA45: 97        .byte $97, $59   ; 
- D 1 - I - 0x00AA57 02:AA47: 81        .byte $81, $59   ; 
- D 1 - I - 0x00AA59 02:AA49: 6F        .byte $6F, $6D   ; 
- D 1 - I - 0x00AA5B 02:AA4B: 5C        .byte $5C, $80   ; 
- D 1 - I - 0x00AA5D 02:AA4D: 4C        .byte $4C, $90   ; 
- D 1 - I - 0x00AA5F 02:AA4F: 3D        .byte $3D, $A0   ; 
- D 1 - I - 0x00AA61 02:AA51: 32        .byte $32, $AE   ; 
- D 1 - I - 0x00AA63 02:AA53: 1E        .byte $1E, $AA   ; 
- D 1 - I - 0x00AA65 02:AA55: 1A        .byte $1A, $9D   ; 
- D 1 - I - 0x00AA67 02:AA57: 21        .byte $21, $91   ; 
- D 1 - I - 0x00AA69 02:AA59: 36        .byte $36, $7F   ; 
- D 1 - I - 0x00AA6B 02:AA5B: 42        .byte $42, $67   ; 
- D 1 - I - 0x00AA6D 02:AA5D: 43        .byte $43, $4E   ; 
- D 1 - I - 0x00AA6F 02:AA5F: 53        .byte $53, $3C   ; 
- D 1 - I - 0x00AA71 02:AA61: 62        .byte $62, $2D   ; 
- D 1 - I - 0x00AA73 02:AA63: 7E        .byte $7E, $2E   ; 
- D 1 - I - 0x00AA75 02:AA65: 9C        .byte $9C, $2C   ; 
- D 1 - I - 0x00AA77 02:AA67: A9        .byte $A9, $22   ; 
- D 1 - I - 0x00AA79 02:AA69: B1        .byte $B1, $18   ; 
- D 1 - I - 0x00AA7B 02:AA6B: B7        .byte $B7, $13   ; 
- D 1 - I - 0x00AA7D 02:AA6D: C8        .byte $C8, $15   ; 
- D 1 - I - 0x00AA7F 02:AA6F: D7        .byte $D7, $1C   ; 
- D 1 - I - 0x00AA81 02:AA71: EB        .byte $EB, $1C   ; 
- D 1 - I - 0x00AA83 02:AA73: F1        .byte $F1, $25   ; 
- D 1 - I - 0x00AA85 02:AA75: F3        .byte $F3, $30   ; 
- D 1 - I - 0x00AA87 02:AA77: F2        .byte $F2, $37   ; 
- D 1 - I - 0x00AA89 02:AA79: F2        .byte $F2, $3D   ; 
- D 1 - I - 0x00AA8B 02:AA7B: EF        .byte $EF, $4D   ; 
- D 1 - I - 0x00AA8D 02:AA7D: E9        .byte $E9, $60   ; 
- D 1 - I - 0x00AA8F 02:AA7F: E4        .byte $E4, $73   ; 
- D 1 - I - 0x00AA91 02:AA81: DF        .byte $DF, $85   ; 
- D 1 - I - 0x00AA93 02:AA83: DA        .byte $DA, $95   ; 
- D 1 - I - 0x00AA95 02:AA85: D3        .byte $D3, $98   ; 
- D 1 - I - 0x00AA97 02:AA87: C7        .byte $C7, $96   ; 
- D 1 - I - 0x00AA99 02:AA89: C2        .byte $C2, $8E   ; 
- D 1 - I - 0x00AA9B 02:AA8B: C5        .byte $C5, $86   ; 
- D 1 - I - 0x00AA9D 02:AA8D: C7        .byte $C7, $7C   ; 
- D 1 - I - 0x00AA9F 02:AA8F: C8        .byte $C8, $6C   ; 
- D 1 - I - 0x00AAA1 02:AA91: C1        .byte $C1, $63   ; 
- D 1 - I - 0x00AAA3 02:AA93: B8        .byte $B8, $5D   ; 
- D 1 - I - 0x00AAA5 02:AA95: A8        .byte $A8, $59   ; 

- D 1 - I - 0x00AAA7 02:AA97: 00        .byte $00   ; end token



_off007_00_AA98_06:
- D 1 - I - 0x00AAA8 02:AA98: 93        .byte $93, $5F   ; 
- D 1 - I - 0x00AAAA 02:AA9A: 80        .byte $80, $60   ; 
- D 1 - I - 0x00AAAC 02:AA9C: 6F        .byte $6F, $72   ; 
- D 1 - I - 0x00AAAE 02:AA9E: 5C        .byte $5C, $8C   ; 
- D 1 - I - 0x00AAB0 02:AAA0: 4C        .byte $4C, $9E   ; 
- D 1 - I - 0x00AAB2 02:AAA2: 40        .byte $40, $A6   ; 
- D 1 - I - 0x00AAB4 02:AAA4: 2B        .byte $2B, $AE   ; 
- D 1 - I - 0x00AAB6 02:AAA6: 14        .byte $14, $A3   ; 
- D 1 - I - 0x00AAB8 02:AAA8: 14        .byte $14, $98   ; 
- D 1 - I - 0x00AABA 02:AAAA: 1D        .byte $1D, $8A   ; 
- D 1 - I - 0x00AABC 02:AAAC: 2A        .byte $2A, $7F   ; 
- D 1 - I - 0x00AABE 02:AAAE: 33        .byte $33, $70   ; 
- D 1 - I - 0x00AAC0 02:AAB0: 36        .byte $36, $5D   ; 
- D 1 - I - 0x00AAC2 02:AAB2: 39        .byte $39, $49   ; 
- D 1 - I - 0x00AAC4 02:AAB4: 43        .byte $43, $3B   ; 
- D 1 - I - 0x00AAC6 02:AAB6: 59        .byte $59, $2D   ; 
- D 1 - I - 0x00AAC8 02:AAB8: 73        .byte $73, $2A   ; 
- D 1 - I - 0x00AACA 02:AABA: 90        .byte $90, $25   ; 
- D 1 - I - 0x00AACC 02:AABC: 9E        .byte $9E, $1A   ; 
- D 1 - I - 0x00AACE 02:AABE: A9        .byte $A9, $14   ; 
- D 1 - I - 0x00AAD0 02:AAC0: BA        .byte $BA, $10   ; 
- D 1 - I - 0x00AAD2 02:AAC2: CD        .byte $CD, $12   ; 
- D 1 - I - 0x00AAD4 02:AAC4: DA        .byte $DA, $16   ; 
- D 1 - I - 0x00AAD6 02:AAC6: E5        .byte $E5, $18   ; 
- D 1 - I - 0x00AAD8 02:AAC8: F5        .byte $F5, $1C   ; 
- D 1 - I - 0x00AADA 02:AACA: F6        .byte $F6, $2C   ; 
- D 1 - I - 0x00AADC 02:AACC: F5        .byte $F5, $3D   ; 
- D 1 - I - 0x00AADE 02:AACE: F2        .byte $F2, $4D   ; 
- D 1 - I - 0x00AAE0 02:AAD0: EE        .byte $EE, $60   ; 
- D 1 - I - 0x00AAE2 02:AAD2: E9        .byte $E9, $73   ; 
- D 1 - I - 0x00AAE4 02:AAD4: E4        .byte $E4, $85   ; 
- D 1 - I - 0x00AAE6 02:AAD6: DD        .byte $DD, $9A   ; 
- D 1 - I - 0x00AAE8 02:AAD8: D2        .byte $D2, $9C   ; 
- D 1 - I - 0x00AAEA 02:AADA: C7        .byte $C7, $99   ; 
- D 1 - I - 0x00AAEC 02:AADC: BF        .byte $BF, $8F   ; 
- D 1 - I - 0x00AAEE 02:AADE: BF        .byte $BF, $85   ; 
- D 1 - I - 0x00AAF0 02:AAE0: C1        .byte $C1, $77   ; 
- D 1 - I - 0x00AAF2 02:AAE2: C0        .byte $C0, $69   ; 
- D 1 - I - 0x00AAF4 02:AAE4: B6        .byte $B6, $61   ; 
- D 1 - I - 0x00AAF6 02:AAE6: A9        .byte $A9, $5E   ; 
- D 1 - I - 0x00AAF8 02:AAE8: 9D        .byte $9D, $5E   ; 

- D 1 - I - 0x00AAFA 02:AAEA: 00        .byte $00   ; end token



_off007_00_AAEB_08:
- D 1 - I - 0x00AAFB 02:AAEB: 8F        .byte $8F, $5B   ; 
- D 1 - I - 0x00AAFD 02:AAED: 7A        .byte $7A, $63   ; 
- D 1 - I - 0x00AAFF 02:AAEF: 6D        .byte $6D, $72   ; 
- D 1 - I - 0x00AB01 02:AAF1: 59        .byte $59, $8C   ; 
- D 1 - I - 0x00AB03 02:AAF3: 4C        .byte $4C, $99   ; 
- D 1 - I - 0x00AB05 02:AAF5: 3B        .byte $3B, $AB   ; 
- D 1 - I - 0x00AB07 02:AAF7: 26        .byte $26, $AC   ; 
- D 1 - I - 0x00AB09 02:AAF9: 18        .byte $18, $A7   ; 
- D 1 - I - 0x00AB0B 02:AAFB: 19        .byte $19, $96   ; 
- D 1 - I - 0x00AB0D 02:AAFD: 26        .byte $26, $88   ; 
- D 1 - I - 0x00AB0F 02:AAFF: 33        .byte $33, $7A   ; 
- D 1 - I - 0x00AB11 02:AB01: 3B        .byte $3B, $69   ; 
- D 1 - I - 0x00AB13 02:AB03: 3D        .byte $3D, $56   ; 
- D 1 - I - 0x00AB15 02:AB05: 3F        .byte $3F, $49   ; 
- D 1 - I - 0x00AB17 02:AB07: 4A        .byte $4A, $3B   ; 
- D 1 - I - 0x00AB19 02:AB09: 5D        .byte $5D, $2D   ; 
- D 1 - I - 0x00AB1B 02:AB0B: 73        .byte $73, $2A   ; 
- D 1 - I - 0x00AB1D 02:AB0D: 90        .byte $90, $29   ; 
- D 1 - I - 0x00AB1F 02:AB0F: A1        .byte $A1, $21   ; 
- D 1 - I - 0x00AB21 02:AB11: AD        .byte $AD, $14   ; 
- D 1 - I - 0x00AB23 02:AB13: BF        .byte $BF, $11   ; 
- D 1 - I - 0x00AB25 02:AB15: CD        .byte $CD, $17   ; 
- D 1 - I - 0x00AB27 02:AB17: DD        .byte $DD, $1C   ; 
- D 1 - I - 0x00AB29 02:AB19: ED        .byte $ED, $1E   ; 
- D 1 - I - 0x00AB2B 02:AB1B: F5        .byte $F5, $28   ; 
- D 1 - I - 0x00AB2D 02:AB1D: F5        .byte $F5, $32   ; 
- D 1 - I - 0x00AB2F 02:AB1F: F4        .byte $F4, $3D   ; 
- D 1 - I - 0x00AB31 02:AB21: F1        .byte $F1, $4D   ; 
- D 1 - I - 0x00AB33 02:AB23: ED        .byte $ED, $60   ; 
- D 1 - I - 0x00AB35 02:AB25: E7        .byte $E7, $73   ; 
- D 1 - I - 0x00AB37 02:AB27: E4        .byte $E4, $85   ; 
- D 1 - I - 0x00AB39 02:AB29: DC        .byte $DC, $9B   ; 
- D 1 - I - 0x00AB3B 02:AB2B: CC        .byte $CC, $9C   ; 
- D 1 - I - 0x00AB3D 02:AB2D: C0        .byte $C0, $91   ; 
- D 1 - I - 0x00AB3F 02:AB2F: BF        .byte $BF, $86   ; 
- D 1 - I - 0x00AB41 02:AB31: C3        .byte $C3, $7C   ; 
- D 1 - I - 0x00AB43 02:AB33: C5        .byte $C5, $71   ; 
- D 1 - I - 0x00AB45 02:AB35: C2        .byte $C2, $69   ; 
- D 1 - I - 0x00AB47 02:AB37: BC        .byte $BC, $61   ; 
- D 1 - I - 0x00AB49 02:AB39: AF        .byte $AF, $5E   ; 
- D 1 - I - 0x00AB4B 02:AB3B: 9F        .byte $9F, $5C   ; 

- D 1 - I - 0x00AB4D 02:AB3D: 00        .byte $00   ; end token



_off007_00_AB3E_0A:
- D 1 - I - 0x00AB4E 02:AB3E: 11        .byte $11   ; 
- D 1 - I - 0x00AB4F 02:AB3F: 21        .byte $21   ; 
- - - - - - 0x00AB50 02:AB40: 11        .byte $11   ; 
- D 1 - I - 0x00AB51 02:AB41: 11        .byte $11   ; 
- D 1 - I - 0x00AB52 02:AB42: 11        .byte $11   ; 
- - - - - - 0x00AB53 02:AB43: 11        .byte $11   ; 
- - - - - - 0x00AB54 02:AB44: 11        .byte $11   ; 
- D 1 - I - 0x00AB55 02:AB45: 11        .byte $11   ; 
- - - - - - 0x00AB56 02:AB46: 11        .byte $11   ; 
- D 1 - I - 0x00AB57 02:AB47: 11        .byte $11   ; 
- - - - - - 0x00AB58 02:AB48: 11        .byte $11   ; 
- - - - - - 0x00AB59 02:AB49: 11        .byte $11   ; 
- D 1 - I - 0x00AB5A 02:AB4A: 11        .byte $11   ; 
- - - - - - 0x00AB5B 02:AB4B: 11        .byte $11   ; 
- - - - - - 0x00AB5C 02:AB4C: 11        .byte $11   ; 
- - - - - - 0x00AB5D 02:AB4D: 11        .byte $11   ; 
- - - - - - 0x00AB5E 02:AB4E: 21        .byte $21   ; 
- - - - - - 0x00AB5F 02:AB4F: 11        .byte $11   ; 
- - - - - - 0x00AB60 02:AB50: 11        .byte $11   ; 
- D 1 - I - 0x00AB61 02:AB51: 11        .byte $11   ; 
- - - - - - 0x00AB62 02:AB52: 11        .byte $11   ; 
- D 1 - I - 0x00AB63 02:AB53: 11        .byte $11   ; 
- D 1 - I - 0x00AB64 02:AB54: 21        .byte $21   ; 
- - - - - - 0x00AB65 02:AB55: 11        .byte $11   ; 
- - - - - - 0x00AB66 02:AB56: 11        .byte $11   ; 
- D 1 - I - 0x00AB67 02:AB57: 11        .byte $11   ; 
- - - - - - 0x00AB68 02:AB58: 11        .byte $11   ; 
- - - - - - 0x00AB69 02:AB59: 11        .byte $11   ; 
- - - - - - 0x00AB6A 02:AB5A: 11        .byte $11   ; 
- - - - - - 0x00AB6B 02:AB5B: 11        .byte $11   ; 
- D 1 - I - 0x00AB6C 02:AB5C: 11        .byte $11   ; 
- - - - - - 0x00AB6D 02:AB5D: 11        .byte $11   ; 
- - - - - - 0x00AB6E 02:AB5E: 11        .byte $11   ; 
- - - - - - 0x00AB6F 02:AB5F: 11        .byte $11   ; 
- - - - - - 0x00AB70 02:AB60: 11        .byte $11   ; 
- - - - - - 0x00AB71 02:AB61: 11        .byte $11   ; 
- D 1 - I - 0x00AB72 02:AB62: 22        .byte $22   ; 
- - - - - - 0x00AB73 02:AB63: 81        .byte $81   ; 
- - - - - - 0x00AB74 02:AB64: 11        .byte $11   ; 
- - - - - - 0x00AB75 02:AB65: 22        .byte $22   ; 
- - - - - - 0x00AB76 02:AB66: 81        .byte $81   ; 
- - - - - - 0x00AB77 02:AB67: 18        .byte $18   ; 
- - - - - - 0x00AB78 02:AB68: 23        .byte $23   ; 
- - - - - - 0x00AB79 02:AB69: 81        .byte $81   ; 
- - - - - - 0x00AB7A 02:AB6A: 18        .byte $18   ; 
- - - - - - 0x00AB7B 02:AB6B: 22        .byte $22   ; 
- - - - - - 0x00AB7C 02:AB6C: 81        .byte $81   ; 
- - - - - - 0x00AB7D 02:AB6D: 18        .byte $18   ; 
- - - - - - 0x00AB7E 02:AB6E: 22        .byte $22   ; 
- - - - - - 0x00AB7F 02:AB6F: 81        .byte $81   ; 
- - - - - - 0x00AB80 02:AB70: 18        .byte $18   ; 
- - - - - - 0x00AB81 02:AB71: 23        .byte $23   ; 
- - - - - - 0x00AB82 02:AB72: 81        .byte $81   ; 
- - - - - - 0x00AB83 02:AB73: 18        .byte $18   ; 
- - - - - - 0x00AB84 02:AB74: 23        .byte $23   ; 
- - - - - - 0x00AB85 02:AB75: 81        .byte $81   ; 
- - - - - - 0x00AB86 02:AB76: 11        .byte $11   ; 
- - - - - - 0x00AB87 02:AB77: 22        .byte $22   ; 
- - - - - - 0x00AB88 02:AB78: 11        .byte $11   ; 
- - - - - - 0x00AB89 02:AB79: 11        .byte $11   ; 
- - - - - - 0x00AB8A 02:AB7A: 22        .byte $22   ; 
- - - - - - 0x00AB8B 02:AB7B: 81        .byte $81   ; 
- - - - - - 0x00AB8C 02:AB7C: 08        .byte $08   ; 
- - - - - - 0x00AB8D 02:AB7D: 22        .byte $22   ; 
- - - - - - 0x00AB8E 02:AB7E: 81        .byte $81   ; 
- - - - - - 0x00AB8F 02:AB7F: 11        .byte $11   ; 
- - - - - - 0x00AB90 02:AB80: 23        .byte $23   ; 
- - - - - - 0x00AB91 02:AB81: 81        .byte $81   ; 
- - - - - - 0x00AB92 02:AB82: 11        .byte $11   ; 
- - - - - - 0x00AB93 02:AB83: 13        .byte $13   ; 
- - - - - - 0x00AB94 02:AB84: 81        .byte $81   ; 
- - - - - - 0x00AB95 02:AB85: 11        .byte $11   ; 
- - - - - - 0x00AB96 02:AB86: 12        .byte $12   ; 
- - - - - - 0x00AB97 02:AB87: 81        .byte $81   ; 
- - - - - - 0x00AB98 02:AB88: 21        .byte $21   ; 
- - - - - - 0x00AB99 02:AB89: 12        .byte $12   ; 
- - - - - - 0x00AB9A 02:AB8A: 11        .byte $11   ; 
- - - - - - 0x00AB9B 02:AB8B: 11        .byte $11   ; 
- - - - - - 0x00AB9C 02:AB8C: 11        .byte $11   ; 
- D 1 - I - 0x00AB9D 02:AB8D: 11        .byte $11   ; 
- - - - - - 0x00AB9E 02:AB8E: 11        .byte $11   ; 
- - - - - - 0x00AB9F 02:AB8F: 11        .byte $11   ; 
- - - - - - 0x00ABA0 02:AB90: 11        .byte $11   ; 
- - - - - - 0x00ABA1 02:AB91: 11        .byte $11   ; 
- D 1 - I - 0x00ABA2 02:AB92: 11        .byte $11   ; 
- - - - - - 0x00ABA3 02:AB93: 11        .byte $11   ; 
- - - - - - 0x00ABA4 02:AB94: 11        .byte $11   ; 
- - - - - - 0x00ABA5 02:AB95: 11        .byte $11   ; 
- D 1 - I - 0x00ABA6 02:AB96: 11        .byte $11   ; 
- - - - - - 0x00ABA7 02:AB97: 11        .byte $11   ; 
- - - - - - 0x00ABA8 02:AB98: 11        .byte $11   ; 
- D 1 - I - 0x00ABA9 02:AB99: 11        .byte $11   ; 
- - - - - - 0x00ABAA 02:AB9A: 11        .byte $11   ; 
- - - - - - 0x00ABAB 02:AB9B: 12        .byte $12   ; 
- - - - - - 0x00ABAC 02:AB9C: 21        .byte $21   ; 
- D 1 - I - 0x00ABAD 02:AB9D: 22        .byte $22   ; 
- - - - - - 0x00ABAE 02:AB9E: 12        .byte $12   ; 
- - - - - - 0x00ABAF 02:AB9F: 11        .byte $11   ; 
- - - - - - 0x00ABB0 02:ABA0: 22        .byte $22   ; 
- - - - - - 0x00ABB1 02:ABA1: 82        .byte $82   ; 
- - - - - - 0x00ABB2 02:ABA2: 11        .byte $11   ; 
- - - - - - 0x00ABB3 02:ABA3: 23        .byte $23   ; 
- - - - - - 0x00ABB4 02:ABA4: 82        .byte $82   ; 
- - - - - - 0x00ABB5 02:ABA5: 11        .byte $11   ; 
- - - - - - 0x00ABB6 02:ABA6: 22        .byte $22   ; 
- - - - - - 0x00ABB7 02:ABA7: 81        .byte $81   ; 
- - - - - - 0x00ABB8 02:ABA8: 11        .byte $11   ; 
- - - - - - 0x00ABB9 02:ABA9: 22        .byte $22   ; 
- - - - - - 0x00ABBA 02:ABAA: 11        .byte $11   ; 
- - - - - - 0x00ABBB 02:ABAB: 11        .byte $11   ; 
- - - - - - 0x00ABBC 02:ABAC: 12        .byte $12   ; 
- - - - - - 0x00ABBD 02:ABAD: 21        .byte $21   ; 
- - - - - - 0x00ABBE 02:ABAE: 21        .byte $21   ; 
- - - - - - 0x00ABBF 02:ABAF: 11        .byte $11   ; 
- - - - - - 0x00ABC0 02:ABB0: 21        .byte $21   ; 
- - - - - - 0x00ABC1 02:ABB1: 22        .byte $22   ; 
- - - - - - 0x00ABC2 02:ABB2: 11        .byte $11   ; 
- - - - - - 0x00ABC3 02:ABB3: 11        .byte $11   ; 
- - - - - - 0x00ABC4 02:ABB4: 11        .byte $11   ; 
- - - - - - 0x00ABC5 02:ABB5: 11        .byte $11   ; 
- D 1 - I - 0x00ABC6 02:ABB6: 11        .byte $11   ; 
- - - - - - 0x00ABC7 02:ABB7: 11        .byte $11   ; 
- - - - - - 0x00ABC8 02:ABB8: 11        .byte $11   ; 



_off006_ABB9_01:
- D 1 - I - 0x00ABC9 02:ABB9: C6 AB     .word _off007_01_ABC6_00
- D 1 - I - 0x00ABCB 02:ABBB: DB AB     .word _off007_01_ABDB_02
- D 1 - I - 0x00ABCD 02:ABBD: 3A AC     .word _off007_01_AC3A_04
- D 1 - I - 0x00ABCF 02:ABBF: 99 AC     .word _off007_01_AC99_06
- D 1 - I - 0x00ABD1 02:ABC1: F8 AC     .word _off007_01_ACF8_08
- D 1 - I - 0x00ABD3 02:ABC3: 57 AD     .word _off007_01_AD57_0A
- D 1 - I - 0x00ABD5 02:ABC5: 14        .byte $14   ; 



_off007_01_ABC6_00:
- D 1 - I - 0x00ABD6 02:ABC6: 4F        .byte $4F, $78   ; 
- D 1 - I - 0x00ABD8 02:ABC8: 56        .byte $56, $82   ; 
- D 1 - I - 0x00ABDA 02:ABCA: 60        .byte $60, $8A   ; 
- D 1 - I - 0x00ABDC 02:ABCC: 6D        .byte $6D, $8B   ; 
- D 1 - I - 0x00ABDE 02:ABCE: 7D        .byte $7D, $8B   ; 
- D 1 - I - 0x00ABE0 02:ABD0: 90        .byte $90, $8B   ; 
- D 1 - I - 0x00ABE2 02:ABD2: A0        .byte $A0, $8C   ; 
- D 1 - I - 0x00ABE4 02:ABD4: AB        .byte $AB, $94   ; 

- D 1 - I - 0x00ABE6 02:ABD6: 00        .byte $00   ; end token

- D 1 - I - 0x00ABE7 02:ABD7: 08        .byte $08   ; ??? 0x00A335
- D 1 - I - 0x00ABE8 02:ABD8: 08        .byte $08   ; 
- D 1 - I - 0x00ABE9 02:ABD9: 08        .byte $08   ; 
- D 1 - I - 0x00ABEA 02:ABDA: 08        .byte $08   ; 



_off007_01_ABDB_02:
- D 1 - I - 0x00ABEB 02:ABDB: A2        .byte $A2, $6E   ; 
- D 1 - I - 0x00ABED 02:ABDD: B0        .byte $B0, $6F   ; 
- D 1 - I - 0x00ABEF 02:ABDF: B2        .byte $B2, $7A   ; 
- D 1 - I - 0x00ABF1 02:ABE1: B0        .byte $B0, $88   ; 
- D 1 - I - 0x00ABF3 02:ABE3: B0        .byte $B0, $92   ; 
- D 1 - I - 0x00ABF5 02:ABE5: B0        .byte $B0, $A0   ; 
- D 1 - I - 0x00ABF7 02:ABE7: B5        .byte $B5, $AC   ; 
- D 1 - I - 0x00ABF9 02:ABE9: CE        .byte $CE, $AB   ; 
- D 1 - I - 0x00ABFB 02:ABEB: E0        .byte $E0, $A4   ; 
- D 1 - I - 0x00ABFD 02:ABED: ED        .byte $ED, $97   ; 
- D 1 - I - 0x00ABFF 02:ABEF: F0        .byte $F0, $89   ; 
- D 1 - I - 0x00AC01 02:ABF1: F1        .byte $F1, $77   ; 
- D 1 - I - 0x00AC03 02:ABF3: F1        .byte $F1, $6B   ; 
- D 1 - I - 0x00AC05 02:ABF5: EE        .byte $EE, $5E   ; 
- D 1 - I - 0x00AC07 02:ABF7: E3        .byte $E3, $54   ; 
- D 1 - I - 0x00AC09 02:ABF9: DD        .byte $DD, $4C   ; 
- D 1 - I - 0x00AC0B 02:ABFB: DC        .byte $DC, $3F   ; 
- D 1 - I - 0x00AC0D 02:ABFD: E1        .byte $E1, $33   ; 
- D 1 - I - 0x00AC0F 02:ABFF: E7        .byte $E7, $28   ; 
- D 1 - I - 0x00AC11 02:AC01: EB        .byte $EB, $1B   ; 
- D 1 - I - 0x00AC13 02:AC03: EA        .byte $EA, $11   ; 
- D 1 - I - 0x00AC15 02:AC05: E5        .byte $E5, $0B   ; 
- D 1 - I - 0x00AC17 02:AC07: D4        .byte $D4, $0A   ; 
- D 1 - I - 0x00AC19 02:AC09: CC        .byte $CC, $13   ; 
- D 1 - I - 0x00AC1B 02:AC0B: C4        .byte $C4, $1C   ; 
- D 1 - I - 0x00AC1D 02:AC0D: AC        .byte $AC, $1B   ; 
- D 1 - I - 0x00AC1F 02:AC0F: 95        .byte $95, $1B   ; 
- D 1 - I - 0x00AC21 02:AC11: 87        .byte $87, $21   ; 
- D 1 - I - 0x00AC23 02:AC13: 75        .byte $75, $24   ; 
- D 1 - I - 0x00AC25 02:AC15: 68        .byte $68, $1D   ; 
- D 1 - I - 0x00AC27 02:AC17: 58        .byte $58, $1F   ; 
- D 1 - I - 0x00AC29 02:AC19: 4E        .byte $4E, $27   ; 
- D 1 - I - 0x00AC2B 02:AC1B: 40        .byte $40, $2C   ; 
- D 1 - I - 0x00AC2D 02:AC1D: 25        .byte $25, $2C   ; 
- D 1 - I - 0x00AC2F 02:AC1F: 0F        .byte $0F, $35   ; 
- D 1 - I - 0x00AC31 02:AC21: 05        .byte $05, $42   ; 
- D 1 - I - 0x00AC33 02:AC23: 05        .byte $05, $4E   ; 
- D 1 - I - 0x00AC35 02:AC25: 05        .byte $05, $5E   ; 
- D 1 - I - 0x00AC37 02:AC27: 0C        .byte $0C, $65   ; 
- D 1 - I - 0x00AC39 02:AC29: 14        .byte $14, $6D   ; 
- D 1 - I - 0x00AC3B 02:AC2B: 21        .byte $21, $75   ; 
- D 1 - I - 0x00AC3D 02:AC2D: 31        .byte $31, $76   ; 
- D 1 - I - 0x00AC3F 02:AC2F: 45        .byte $45, $71   ; 
- D 1 - I - 0x00AC41 02:AC31: 58        .byte $58, $6F   ; 
- D 1 - I - 0x00AC43 02:AC33: 69        .byte $69, $6E   ; 
- D 1 - I - 0x00AC45 02:AC35: 7D        .byte $7D, $6D   ; 
- D 1 - I - 0x00AC47 02:AC37: 8F        .byte $8F, $6D   ; 

- D 1 - I - 0x00AC49 02:AC39: 00        .byte $00   ; end token



_off007_01_AC3A_04:
- D 1 - I - 0x00AC4A 02:AC3A: A2        .byte $A2, $61   ; 
- D 1 - I - 0x00AC4C 02:AC3C: B2        .byte $B2, $62   ; 
- D 1 - I - 0x00AC4E 02:AC3E: BF        .byte $BF, $6A   ; 
- D 1 - I - 0x00AC50 02:AC40: BE        .byte $BE, $7C   ; 
- D 1 - I - 0x00AC52 02:AC42: B6        .byte $B6, $8F   ; 
- D 1 - I - 0x00AC54 02:AC44: BC        .byte $BC, $99   ; 
- D 1 - I - 0x00AC56 02:AC46: C9        .byte $C9, $9B   ; 
- D 1 - I - 0x00AC58 02:AC48: DB        .byte $DB, $9B   ; 
- D 1 - I - 0x00AC5A 02:AC4A: E3        .byte $E3, $91   ; 
- D 1 - I - 0x00AC5C 02:AC4C: EB        .byte $EB, $89   ; 
- D 1 - I - 0x00AC5E 02:AC4E: EB        .byte $EB, $7F   ; 
- D 1 - I - 0x00AC60 02:AC50: EA        .byte $EA, $73   ; 
- D 1 - I - 0x00AC62 02:AC52: E9        .byte $E9, $67   ; 
- D 1 - I - 0x00AC64 02:AC54: DE        .byte $DE, $5E   ; 
- D 1 - I - 0x00AC66 02:AC56: D4        .byte $D4, $54   ; 
- D 1 - I - 0x00AC68 02:AC58: CE        .byte $CE, $49   ; 
- D 1 - I - 0x00AC6A 02:AC5A: D3        .byte $D3, $3F   ; 
- D 1 - I - 0x00AC6C 02:AC5C: D8        .byte $D8, $33   ; 
- D 1 - I - 0x00AC6E 02:AC5E: E1        .byte $E1, $22   ; 
- D 1 - I - 0x00AC70 02:AC60: DC        .byte $DC, $1D   ; 
- D 1 - I - 0x00AC72 02:AC62: D4        .byte $D4, $1D   ; 
- D 1 - I - 0x00AC74 02:AC64: CA        .byte $CA, $24   ; 
- D 1 - I - 0x00AC76 02:AC66: C1        .byte $C1, $24   ; 
- D 1 - I - 0x00AC78 02:AC68: B9        .byte $B9, $25   ; 
- D 1 - I - 0x00AC7A 02:AC6A: AA        .byte $AA, $26   ; 
- D 1 - I - 0x00AC7C 02:AC6C: 9A        .byte $9A, $25   ; 
- D 1 - I - 0x00AC7E 02:AC6E: 92        .byte $92, $2B   ; 
- D 1 - I - 0x00AC80 02:AC70: 87        .byte $87, $32   ; 
- D 1 - I - 0x00AC82 02:AC72: 72        .byte $72, $34   ; 
- D 1 - I - 0x00AC84 02:AC74: 62        .byte $62, $2D   ; 
- D 1 - I - 0x00AC86 02:AC76: 52        .byte $52, $2E   ; 
- D 1 - I - 0x00AC88 02:AC78: 45        .byte $45, $35   ; 
- D 1 - I - 0x00AC8A 02:AC7A: 39        .byte $39, $36   ; 
- D 1 - I - 0x00AC8C 02:AC7C: 25        .byte $25, $36   ; 
- D 1 - I - 0x00AC8E 02:AC7E: 17        .byte $17, $35   ; 
- D 1 - I - 0x00AC90 02:AC80: 0F        .byte $0F, $42   ; 
- D 1 - I - 0x00AC92 02:AC82: 12        .byte $12, $4E   ; 
- D 1 - I - 0x00AC94 02:AC84: 15        .byte $15, $5E   ; 
- D 1 - I - 0x00AC96 02:AC86: 22        .byte $22, $6A   ; 
- D 1 - I - 0x00AC98 02:AC88: 2D        .byte $2D, $6A   ; 
- D 1 - I - 0x00AC9A 02:AC8A: 3E        .byte $3E, $69   ; 
- D 1 - I - 0x00AC9C 02:AC8C: 4A        .byte $4A, $6A   ; 
- D 1 - I - 0x00AC9E 02:AC8E: 58        .byte $58, $6A   ; 
- D 1 - I - 0x00ACA0 02:AC90: 64        .byte $64, $66   ; 
- D 1 - I - 0x00ACA2 02:AC92: 6D        .byte $6D, $60   ; 
- D 1 - I - 0x00ACA4 02:AC94: 7E        .byte $7E, $61   ; 
- D 1 - I - 0x00ACA6 02:AC96: 8C        .byte $8C, $61   ; 

- D 1 - I - 0x00ACA8 02:AC98: 00        .byte $00   ; end token



_off007_01_AC99_06:
- D 1 - I - 0x00ACA9 02:AC99: A2        .byte $A2, $68   ; 
- D 1 - I - 0x00ACAB 02:AC9B: B2        .byte $B2, $6C   ; 
- D 1 - I - 0x00ACAD 02:AC9D: BB        .byte $BB, $77   ; 
- D 1 - I - 0x00ACAF 02:AC9F: B8        .byte $B8, $85   ; 
- D 1 - I - 0x00ACB1 02:ACA1: B4        .byte $B4, $99   ; 
- D 1 - I - 0x00ACB3 02:ACA3: B9        .byte $B9, $A6   ; 
- D 1 - I - 0x00ACB5 02:ACA5: D3        .byte $D3, $A4   ; 
- D 1 - I - 0x00ACB7 02:ACA7: E3        .byte $E3, $9B   ; 
- D 1 - I - 0x00ACB9 02:ACA9: EC        .byte $EC, $91   ; 
- D 1 - I - 0x00ACBB 02:ACAB: EF        .byte $EF, $84   ; 
- D 1 - I - 0x00ACBD 02:ACAD: EF        .byte $EF, $77   ; 
- D 1 - I - 0x00ACBF 02:ACAF: F0        .byte $F0, $6C   ; 
- D 1 - I - 0x00ACC1 02:ACB1: E9        .byte $E9, $5F   ; 
- D 1 - I - 0x00ACC3 02:ACB3: DE        .byte $DE, $54   ; 
- D 1 - I - 0x00ACC5 02:ACB5: D5        .byte $D5, $48   ; 
- D 1 - I - 0x00ACC7 02:ACB7: DB        .byte $DB, $3B   ; 
- D 1 - I - 0x00ACC9 02:ACB9: E1        .byte $E1, $2E   ; 
- D 1 - I - 0x00ACCB 02:ACBB: E5        .byte $E5, $25   ; 
- D 1 - I - 0x00ACCD 02:ACBD: E9        .byte $E9, $19   ; 
- D 1 - I - 0x00ACCF 02:ACBF: E3        .byte $E3, $0F   ; 
- D 1 - I - 0x00ACD1 02:ACC1: D6        .byte $D6, $0E   ; 
- D 1 - I - 0x00ACD3 02:ACC3: CF        .byte $CF, $18   ; 
- D 1 - I - 0x00ACD5 02:ACC5: C6        .byte $C6, $1F   ; 
- D 1 - I - 0x00ACD7 02:ACC7: B9        .byte $B9, $20   ; 
- D 1 - I - 0x00ACD9 02:ACC9: AA        .byte $AA, $20   ; 
- D 1 - I - 0x00ACDB 02:ACCB: 9A        .byte $9A, $20   ; 
- D 1 - I - 0x00ACDD 02:ACCD: 88        .byte $88, $28   ; 
- D 1 - I - 0x00ACDF 02:ACCF: 7A        .byte $7A, $2C   ; 
- D 1 - I - 0x00ACE1 02:ACD1: 6D        .byte $6D, $27   ; 
- D 1 - I - 0x00ACE3 02:ACD3: 5D        .byte $5D, $24   ; 
- D 1 - I - 0x00ACE5 02:ACD5: 4F        .byte $4F, $2B   ; 
- D 1 - I - 0x00ACE7 02:ACD7: 40        .byte $40, $30   ; 
- D 1 - I - 0x00ACE9 02:ACD9: 30        .byte $30, $30   ; 
- D 1 - I - 0x00ACEB 02:ACDB: 20        .byte $20, $30   ; 
- D 1 - I - 0x00ACED 02:ACDD: 0F        .byte $0F, $3A   ; 
- D 1 - I - 0x00ACEF 02:ACDF: 0D        .byte $0D, $4A   ; 
- D 1 - I - 0x00ACF1 02:ACE1: 0C        .byte $0C, $56   ; 
- D 1 - I - 0x00ACF3 02:ACE3: 13        .byte $13, $64   ; 
- D 1 - I - 0x00ACF5 02:ACE5: 22        .byte $22, $70   ; 
- D 1 - I - 0x00ACF7 02:ACE7: 31        .byte $31, $70   ; 
- D 1 - I - 0x00ACF9 02:ACE9: 41        .byte $41, $70   ; 
- D 1 - I - 0x00ACFB 02:ACEB: 50        .byte $50, $6F   ; 
- D 1 - I - 0x00ACFD 02:ACED: 5E        .byte $5E, $6C   ; 
- D 1 - I - 0x00ACFF 02:ACEF: 6C        .byte $6C, $69   ; 
- D 1 - I - 0x00AD01 02:ACF1: 78        .byte $78, $68   ; 
- D 1 - I - 0x00AD03 02:ACF3: 84        .byte $84, $67   ; 
- D 1 - I - 0x00AD05 02:ACF5: 94        .byte $94, $67   ; 

- D 1 - I - 0x00AD07 02:ACF7: 00        .byte $00   ; end token



_off007_01_ACF8_08:
- D 1 - I - 0x00AD08 02:ACF8: A2        .byte $A2, $6B   ; 
- D 1 - I - 0x00AD0A 02:ACFA: B4        .byte $B4, $6E   ; 
- D 1 - I - 0x00AD0C 02:ACFC: B4        .byte $B4, $7B   ; 
- D 1 - I - 0x00AD0E 02:ACFE: B1        .byte $B1, $86   ; 
- D 1 - I - 0x00AD10 02:AD00: B0        .byte $B0, $94   ; 
- D 1 - I - 0x00AD12 02:AD02: B4        .byte $B4, $A6   ; 
- D 1 - I - 0x00AD14 02:AD04: CB        .byte $CB, $A8   ; 
- D 1 - I - 0x00AD16 02:AD06: E7        .byte $E7, $9B   ; 
- D 1 - I - 0x00AD18 02:AD08: EE        .byte $EE, $8A   ; 
- D 1 - I - 0x00AD1A 02:AD0A: EF        .byte $EF, $7D   ; 
- D 1 - I - 0x00AD1C 02:AD0C: EF        .byte $EF, $72   ; 
- D 1 - I - 0x00AD1E 02:AD0E: EF        .byte $EF, $64   ; 
- D 1 - I - 0x00AD20 02:AD10: E7        .byte $E7, $5A   ; 
- D 1 - I - 0x00AD22 02:AD12: DE        .byte $DE, $50   ; 
- D 1 - I - 0x00AD24 02:AD14: D9        .byte $D9, $48   ; 
- D 1 - I - 0x00AD26 02:AD16: DD        .byte $DD, $37   ; 
- D 1 - I - 0x00AD28 02:AD18: E1        .byte $E1, $2E   ; 
- D 1 - I - 0x00AD2A 02:AD1A: E3        .byte $E3, $23   ; 
- D 1 - I - 0x00AD2C 02:AD1C: EA        .byte $EA, $19   ; 
- D 1 - I - 0x00AD2E 02:AD1E: E3        .byte $E3, $0D   ; 
- D 1 - I - 0x00AD30 02:AD20: D4        .byte $D4, $0B   ; 
- D 1 - I - 0x00AD32 02:AD22: CB        .byte $CB, $15   ; 
- D 1 - I - 0x00AD34 02:AD24: C1        .byte $C1, $1F   ; 
- D 1 - I - 0x00AD36 02:AD26: B4        .byte $B4, $1F   ; 
- D 1 - I - 0x00AD38 02:AD28: A6        .byte $A6, $1E   ; 
- D 1 - I - 0x00AD3A 02:AD2A: 92        .byte $92, $1F   ; 
- D 1 - I - 0x00AD3C 02:AD2C: 83        .byte $83, $25   ; 
- D 1 - I - 0x00AD3E 02:AD2E: 77        .byte $77, $28   ; 
- D 1 - I - 0x00AD40 02:AD30: 6B        .byte $6B, $22   ; 
- D 1 - I - 0x00AD42 02:AD32: 59        .byte $59, $20   ; 
- D 1 - I - 0x00AD44 02:AD34: 4A        .byte $4A, $2B   ; 
- D 1 - I - 0x00AD46 02:AD36: 39        .byte $39, $2D   ; 
- D 1 - I - 0x00AD48 02:AD38: 2C        .byte $2C, $2D   ; 
- D 1 - I - 0x00AD4A 02:AD3A: 1B        .byte $1B, $30   ; 
- D 1 - I - 0x00AD4C 02:AD3C: 09        .byte $09, $3D   ; 
- D 1 - I - 0x00AD4E 02:AD3E: 08        .byte $08, $4A   ; 
- D 1 - I - 0x00AD50 02:AD40: 08        .byte $08, $56   ; 
- D 1 - I - 0x00AD52 02:AD42: 0E        .byte $0E, $64   ; 
- D 1 - I - 0x00AD54 02:AD44: 1D        .byte $1D, $70   ; 
- D 1 - I - 0x00AD56 02:AD46: 31        .byte $31, $73   ; 
- D 1 - I - 0x00AD58 02:AD48: 41        .byte $41, $74   ; 
- D 1 - I - 0x00AD5A 02:AD4A: 50        .byte $50, $72   ; 
- D 1 - I - 0x00AD5C 02:AD4C: 5E        .byte $5E, $6E   ; 
- D 1 - I - 0x00AD5E 02:AD4E: 6C        .byte $6C, $6B   ; 
- D 1 - I - 0x00AD60 02:AD50: 78        .byte $78, $6C   ; 
- D 1 - I - 0x00AD62 02:AD52: 84        .byte $84, $6A   ; 
- D 1 - I - 0x00AD64 02:AD54: 94        .byte $94, $6A   ; 

- D 1 - I - 0x00AD66 02:AD56: 00        .byte $00   ; end token



_off007_01_AD57_0A:
- D 1 - I - 0x00AD67 02:AD57: 11        .byte $11   ; 
- - - - - - 0x00AD68 02:AD58: 11        .byte $11   ; 
- - - - - - 0x00AD69 02:AD59: 11        .byte $11   ; 
- D 1 - I - 0x00AD6A 02:AD5A: 11        .byte $11   ; 
- - - - - - 0x00AD6B 02:AD5B: 21        .byte $21   ; 
- - - - - - 0x00AD6C 02:AD5C: 11        .byte $11   ; 
- D 1 - I - 0x00AD6D 02:AD5D: 18        .byte $18   ; 
- - - - - - 0x00AD6E 02:AD5E: 21        .byte $21   ; 
- - - - - - 0x00AD6F 02:AD5F: 11        .byte $11   ; 
- - - - - - 0x00AD70 02:AD60: 18        .byte $18   ; 
- - - - - - 0x00AD71 02:AD61: 21        .byte $21   ; 
- - - - - - 0x00AD72 02:AD62: 11        .byte $11   ; 
- - - - - - 0x00AD73 02:AD63: 11        .byte $11   ; 
- - - - - - 0x00AD74 02:AD64: 21        .byte $21   ; 
- - - - - - 0x00AD75 02:AD65: 11        .byte $11   ; 
- - - - - - 0x00AD76 02:AD66: 11        .byte $11   ; 
- - - - - - 0x00AD77 02:AD67: 11        .byte $11   ; 
- - - - - - 0x00AD78 02:AD68: 11        .byte $11   ; 
- - - - - - 0x00AD79 02:AD69: 81        .byte $81   ; 
- - - - - - 0x00AD7A 02:AD6A: 11        .byte $11   ; 
- - - - - - 0x00AD7B 02:AD6B: 12        .byte $12   ; 
- D 1 - I - 0x00AD7C 02:AD6C: 81        .byte $81   ; 
- - - - - - 0x00AD7D 02:AD6D: 11        .byte $11   ; 
- - - - - - 0x00AD7E 02:AD6E: 13        .byte $13   ; 
- - - - - - 0x00AD7F 02:AD6F: 81        .byte $81   ; 
- - - - - - 0x00AD80 02:AD70: 11        .byte $11   ; 
- - - - - - 0x00AD81 02:AD71: 23        .byte $23   ; 
- - - - - - 0x00AD82 02:AD72: 81        .byte $81   ; 
- - - - - - 0x00AD83 02:AD73: 21        .byte $21   ; 
- - - - - - 0x00AD84 02:AD74: 23        .byte $23   ; 
- - - - - - 0x00AD85 02:AD75: 91        .byte $91   ; 
- - - - - - 0x00AD86 02:AD76: 21        .byte $21   ; 
- - - - - - 0x00AD87 02:AD77: 13        .byte $13   ; 
- - - - - - 0x00AD88 02:AD78: 81        .byte $81   ; 
- - - - - - 0x00AD89 02:AD79: 11        .byte $11   ; 
- - - - - - 0x00AD8A 02:AD7A: 13        .byte $13   ; 
- - - - - - 0x00AD8B 02:AD7B: 81        .byte $81   ; 
- - - - - - 0x00AD8C 02:AD7C: 21        .byte $21   ; 
- D 1 - I - 0x00AD8D 02:AD7D: 13        .byte $13   ; 
- - - - - - 0x00AD8E 02:AD7E: 88        .byte $88   ; 
- - - - - - 0x00AD8F 02:AD7F: 21        .byte $21   ; 
- - - - - - 0x00AD90 02:AD80: 13        .byte $13   ; 
- - - - - - 0x00AD91 02:AD81: 88        .byte $88   ; 
- - - - - - 0x00AD92 02:AD82: 21        .byte $21   ; 
- - - - - - 0x00AD93 02:AD83: 13        .byte $13   ; 
- - - - - - 0x00AD94 02:AD84: 88        .byte $88   ; 
- - - - - - 0x00AD95 02:AD85: 21        .byte $21   ; 
- - - - - - 0x00AD96 02:AD86: 13        .byte $13   ; 
- D 1 - I - 0x00AD97 02:AD87: 88        .byte $88   ; 
- - - - - - 0x00AD98 02:AD88: 22        .byte $22   ; 
- - - - - - 0x00AD99 02:AD89: 13        .byte $13   ; 
- - - - - - 0x00AD9A 02:AD8A: 88        .byte $88   ; 
- - - - - - 0x00AD9B 02:AD8B: 21        .byte $21   ; 
- - - - - - 0x00AD9C 02:AD8C: 12        .byte $12   ; 
- - - - - - 0x00AD9D 02:AD8D: 83        .byte $83   ; 
- - - - - - 0x00AD9E 02:AD8E: 13        .byte $13   ; 
- D 1 - I - 0x00AD9F 02:AD8F: 23        .byte $23   ; 
- - - - - - 0x00ADA0 02:AD90: 12        .byte $12   ; 
- - - - - - 0x00ADA1 02:AD91: 12        .byte $12   ; 
- - - - - - 0x00ADA2 02:AD92: 13        .byte $13   ; 
- - - - - - 0x00ADA3 02:AD93: 12        .byte $12   ; 
- - - - - - 0x00ADA4 02:AD94: 11        .byte $11   ; 
- - - - - - 0x00ADA5 02:AD95: 13        .byte $13   ; 
- - - - - - 0x00ADA6 02:AD96: 82        .byte $82   ; 
- - - - - - 0x00ADA7 02:AD97: 11        .byte $11   ; 
- - - - - - 0x00ADA8 02:AD98: 13        .byte $13   ; 
- - - - - - 0x00ADA9 02:AD99: 92        .byte $92   ; 
- - - - - - 0x00ADAA 02:AD9A: 11        .byte $11   ; 
- - - - - - 0x00ADAB 02:AD9B: 13        .byte $13   ; 
- - - - - - 0x00ADAC 02:AD9C: 91        .byte $91   ; 
- - - - - - 0x00ADAD 02:AD9D: 11        .byte $11   ; 
- - - - - - 0x00ADAE 02:AD9E: 13        .byte $13   ; 
- - - - - - 0x00ADAF 02:AD9F: 91        .byte $91   ; 
- - - - - - 0x00ADB0 02:ADA0: 11        .byte $11   ; 
- - - - - - 0x00ADB1 02:ADA1: 12        .byte $12   ; 
- - - - - - 0x00ADB2 02:ADA2: 81        .byte $81   ; 
- - - - - - 0x00ADB3 02:ADA3: 11        .byte $11   ; 
- - - - - - 0x00ADB4 02:ADA4: 12        .byte $12   ; 
- - - - - - 0x00ADB5 02:ADA5: 81        .byte $81   ; 
- - - - - - 0x00ADB6 02:ADA6: 11        .byte $11   ; 
- - - - - - 0x00ADB7 02:ADA7: 12        .byte $12   ; 
- - - - - - 0x00ADB8 02:ADA8: 81        .byte $81   ; 
- - - - - - 0x00ADB9 02:ADA9: 21        .byte $21   ; 
- - - - - - 0x00ADBA 02:ADAA: 12        .byte $12   ; 
- - - - - - 0x00ADBB 02:ADAB: 11        .byte $11   ; 
- - - - - - 0x00ADBC 02:ADAC: 11        .byte $11   ; 
- - - - - - 0x00ADBD 02:ADAD: 12        .byte $12   ; 
- - - - - - 0x00ADBE 02:ADAE: 81        .byte $81   ; 
- - - - - - 0x00ADBF 02:ADAF: 11        .byte $11   ; 
- - - - - - 0x00ADC0 02:ADB0: 12        .byte $12   ; 
- - - - - - 0x00ADC1 02:ADB1: 81        .byte $81   ; 
- - - - - - 0x00ADC2 02:ADB2: 11        .byte $11   ; 
- - - - - - 0x00ADC3 02:ADB3: 12        .byte $12   ; 
- - - - - - 0x00ADC4 02:ADB4: 11        .byte $11   ; 
- - - - - - 0x00ADC5 02:ADB5: 11        .byte $11   ; 
- - - - - - 0x00ADC6 02:ADB6: 22        .byte $22   ; 
- - - - - - 0x00ADC7 02:ADB7: 81        .byte $81   ; 
- - - - - - 0x00ADC8 02:ADB8: 11        .byte $11   ; 
- - - - - - 0x00ADC9 02:ADB9: 12        .byte $12   ; 
- - - - - - 0x00ADCA 02:ADBA: 11        .byte $11   ; 
- - - - - - 0x00ADCB 02:ADBB: 11        .byte $11   ; 
- - - - - - 0x00ADCC 02:ADBC: 11        .byte $11   ; 
- - - - - - 0x00ADCD 02:ADBD: 11        .byte $11   ; 
- - - - - - 0x00ADCE 02:ADBE: 21        .byte $21   ; 
- - - - - - 0x00ADCF 02:ADBF: 12        .byte $12   ; 
- - - - - - 0x00ADD0 02:ADC0: 11        .byte $11   ; 
- - - - - - 0x00ADD1 02:ADC1: 21        .byte $21   ; 
- - - - - - 0x00ADD2 02:ADC2: 12        .byte $12   ; 
- - - - - - 0x00ADD3 02:ADC3: 11        .byte $11   ; 
- - - - - - 0x00ADD4 02:ADC4: 11        .byte $11   ; 
- - - - - - 0x00ADD5 02:ADC5: 12        .byte $12   ; 
- - - - - - 0x00ADD6 02:ADC6: 11        .byte $11   ; 
- - - - - - 0x00ADD7 02:ADC7: 11        .byte $11   ; 
- - - - - - 0x00ADD8 02:ADC8: 12        .byte $12   ; 
- - - - - - 0x00ADD9 02:ADC9: 81        .byte $81   ; 
- - - - - - 0x00ADDA 02:ADCA: 11        .byte $11   ; 
- - - - - - 0x00ADDB 02:ADCB: 12        .byte $12   ; 
- - - - - - 0x00ADDC 02:ADCC: 81        .byte $81   ; 
- - - - - - 0x00ADDD 02:ADCD: 11        .byte $11   ; 
- - - - - - 0x00ADDE 02:ADCE: 12        .byte $12   ; 
- - - - - - 0x00ADDF 02:ADCF: 91        .byte $91   ; 
- - - - - - 0x00ADE0 02:ADD0: 11        .byte $11   ; 
- - - - - - 0x00ADE1 02:ADD1: 12        .byte $12   ; 
- - - - - - 0x00ADE2 02:ADD2: 91        .byte $91   ; 
- - - - - - 0x00ADE3 02:ADD3: 11        .byte $11   ; 
- - - - - - 0x00ADE4 02:ADD4: 12        .byte $12   ; 
- - - - - - 0x00ADE5 02:ADD5: 81        .byte $81   ; 
- - - - - - 0x00ADE6 02:ADD6: 11        .byte $11   ; 
- - - - - - 0x00ADE7 02:ADD7: 12        .byte $12   ; 
- - - - - - 0x00ADE8 02:ADD8: 11        .byte $11   ; 
- - - - - - 0x00ADE9 02:ADD9: 21        .byte $21   ; 
- - - - - - 0x00ADEA 02:ADDA: 12        .byte $12   ; 
- D 1 - I - 0x00ADEB 02:ADDB: 81        .byte $81   ; 
- D 1 - I - 0x00ADEC 02:ADDC: 21        .byte $21   ; 
- - - - - - 0x00ADED 02:ADDD: 12        .byte $12   ; 
- - - - - - 0x00ADEE 02:ADDE: 11        .byte $11   ; 
- - - - - - 0x00ADEF 02:ADDF: 11        .byte $11   ; 
- - - - - - 0x00ADF0 02:ADE0: 11        .byte $11   ; 
- - - - - - 0x00ADF1 02:ADE1: 11        .byte $11   ; 
- D 1 - I - 0x00ADF2 02:ADE2: 11        .byte $11   ; 
- - - - - - 0x00ADF3 02:ADE3: 11        .byte $11   ; 



_off006_ADE4_02:
- D 1 - I - 0x00ADF4 02:ADE4: F1 AD     .word _off007_02_ADF1_00
- D 1 - I - 0x00ADF6 02:ADE6: 0E AE     .word _off007_02_AE0E_02
- D 1 - I - 0x00ADF8 02:ADE8: 65 AE     .word _off007_02_AE65_04
- D 1 - I - 0x00ADFA 02:ADEA: BC AE     .word _off007_02_AEBC_06
- D 1 - I - 0x00ADFC 02:ADEC: 13 AF     .word _off007_02_AF13_08
- D 1 - I - 0x00ADFE 02:ADEE: 6A AF     .word _off007_02_AF6A_0A
- D 1 - I - 0x00AE00 02:ADF0: 16        .byte $16   ; 



_off007_02_ADF1_00:
- D 1 - I - 0x00AE01 02:ADF1: C5        .byte $C5, $A1   ; 
- D 1 - I - 0x00AE03 02:ADF3: AE        .byte $AE, $A4   ; 
- D 1 - I - 0x00AE05 02:ADF5: A0        .byte $A0, $9D   ; 
- D 1 - I - 0x00AE07 02:ADF7: 98        .byte $98, $92   ; 
- D 1 - I - 0x00AE09 02:ADF9: 8C        .byte $8C, $84   ; 
- D 1 - I - 0x00AE0B 02:ADFB: 7E        .byte $7E, $84   ; 
- D 1 - I - 0x00AE0D 02:ADFD: 72        .byte $72, $84   ; 
- D 1 - I - 0x00AE0F 02:ADFF: 61        .byte $61, $84   ; 
- D 1 - I - 0x00AE11 02:AE01: 4D        .byte $4D, $84   ; 
- D 1 - I - 0x00AE13 02:AE03: 36        .byte $36, $82   ; 
- D 1 - I - 0x00AE15 02:AE05: 2B        .byte $2B, $77   ; 
- D 1 - I - 0x00AE17 02:AE07: 1F        .byte $1F, $6D   ; 

- D 1 - I - 0x00AE19 02:AE09: 00        .byte $00   ; end token

- - - - - - 0x00AE1A 02:AE0A: 0A        .byte $0A   ; ??? 0x00A335
- D 1 - I - 0x00AE1B 02:AE0B: 0A        .byte $0A   ; 
- D 1 - I - 0x00AE1C 02:AE0C: 0A        .byte $0A   ; 
- D 1 - I - 0x00AE1D 02:AE0D: 0A        .byte $0A   ; 



_off007_02_AE0E_02:
- D 1 - I - 0x00AE1E 02:AE0E: 33        .byte $33, $AD   ; 
- D 1 - I - 0x00AE20 02:AE10: 16        .byte $16, $A4   ; 
- - - - - - 0x00AE22 02:AE12: 06        .byte $06, $97   ; 
- - - - - - 0x00AE24 02:AE14: 06        .byte $06, $88   ; 
- - - - - - 0x00AE26 02:AE16: 06        .byte $06, $76   ; 
- - - - - - 0x00AE28 02:AE18: 06        .byte $06, $61   ; 
- - - - - - 0x00AE2A 02:AE1A: 0B        .byte $0B, $53   ; 
- - - - - - 0x00AE2C 02:AE1C: 17        .byte $17, $4C   ; 
- - - - - - 0x00AE2E 02:AE1E: 23        .byte $23, $41   ; 
- - - - - - 0x00AE30 02:AE20: 20        .byte $20, $36   ; 
- - - - - - 0x00AE32 02:AE22: 1F        .byte $1F, $28   ; 
- - - - - - 0x00AE34 02:AE24: 1F        .byte $1F, $1A   ; 
- - - - - - 0x00AE36 02:AE26: 2E        .byte $2E, $0E   ; 
- - - - - - 0x00AE38 02:AE28: 47        .byte $47, $0D   ; 
- - - - - - 0x00AE3A 02:AE2A: 59        .byte $59, $16   ; 
- - - - - - 0x00AE3C 02:AE2C: 70        .byte $70, $12   ; 
- - - - - - 0x00AE3E 02:AE2E: 80        .byte $80, $09   ; 
- - - - - - 0x00AE40 02:AE30: 94        .byte $94, $09   ; 
- - - - - - 0x00AE42 02:AE32: AC        .byte $AC, $0A   ; 
- - - - - - 0x00AE44 02:AE34: B1        .byte $B1, $18   ; 
- - - - - - 0x00AE46 02:AE36: A6        .byte $A6, $23   ; 
- - - - - - 0x00AE48 02:AE38: 8C        .byte $8C, $30   ; 
- - - - - - 0x00AE4A 02:AE3A: 8C        .byte $8C, $3F   ; 
- - - - - - 0x00AE4C 02:AE3C: 9D        .byte $9D, $43   ; 
- - - - - - 0x00AE4E 02:AE3E: AC        .byte $AC, $3D   ; 
- - - - - - 0x00AE50 02:AE40: BE        .byte $BE, $33   ; 
- - - - - - 0x00AE52 02:AE42: D1        .byte $D1, $2E   ; 
- - - - - - 0x00AE54 02:AE44: EB        .byte $EB, $2E   ; 
- - - - - - 0x00AE56 02:AE46: F7        .byte $F7, $38   ; 
- - - - - - 0x00AE58 02:AE48: F9        .byte $F9, $4E   ; 
- - - - - - 0x00AE5A 02:AE4A: F0        .byte $F0, $5C   ; 
- - - - - - 0x00AE5C 02:AE4C: E0        .byte $E0, $65   ; 
- - - - - - 0x00AE5E 02:AE4E: CD        .byte $CD, $6E   ; 
- - - - - - 0x00AE60 02:AE50: BF        .byte $BF, $78   ; 
- - - - - - 0x00AE62 02:AE52: CA        .byte $CA, $82   ; 
- - - - - - 0x00AE64 02:AE54: D7        .byte $D7, $88   ; 
- - - - - - 0x00AE66 02:AE56: ED        .byte $ED, $96   ; 
- D 1 - I - 0x00AE68 02:AE58: F3        .byte $F3, $A4   ; 
- D 1 - I - 0x00AE6A 02:AE5A: E6        .byte $E6, $AC   ; 
- D 1 - I - 0x00AE6C 02:AE5C: C6        .byte $C6, $AD   ; 
- D 1 - I - 0x00AE6E 02:AE5E: A1        .byte $A1, $AD   ; 
- D 1 - I - 0x00AE70 02:AE60: 84        .byte $84, $AD   ; 
- D 1 - I - 0x00AE72 02:AE62: 5A        .byte $5A, $AD   ; 

- D 1 - I - 0x00AE74 02:AE64: 00        .byte $00   ; end token



_off007_02_AE65_04:
- D 1 - I - 0x00AE75 02:AE65: 33        .byte $33, $A3   ; 
- D 1 - I - 0x00AE77 02:AE67: 1B        .byte $1B, $98   ; 
- D 1 - I - 0x00AE79 02:AE69: 14        .byte $14, $8E   ; 
- D 1 - I - 0x00AE7B 02:AE6B: 13        .byte $13, $80   ; 
- D 1 - I - 0x00AE7D 02:AE6D: 15        .byte $15, $73   ; 
- D 1 - I - 0x00AE7F 02:AE6F: 16        .byte $16, $66   ; 
- D 1 - I - 0x00AE81 02:AE71: 1D        .byte $1D, $56   ; 
- D 1 - I - 0x00AE83 02:AE73: 29        .byte $29, $4C   ; 
- D 1 - I - 0x00AE85 02:AE75: 34        .byte $34, $44   ; 
- D 1 - I - 0x00AE87 02:AE77: 2B        .byte $2B, $36   ; 
- D 1 - I - 0x00AE89 02:AE79: 2E        .byte $2E, $28   ; 
- D 1 - I - 0x00AE8B 02:AE7B: 39        .byte $39, $1C   ; 
- D 1 - I - 0x00AE8D 02:AE7D: 4C        .byte $4C, $1A   ; 
- D 1 - I - 0x00AE8F 02:AE7F: 57        .byte $57, $21   ; 
- D 1 - I - 0x00AE91 02:AE81: 67        .byte $67, $22   ; 
- D 1 - I - 0x00AE93 02:AE83: 6D        .byte $6D, $18   ; 
- D 1 - I - 0x00AE95 02:AE85: 7A        .byte $7A, $1F   ; 
- D 1 - I - 0x00AE97 02:AE87: 7D        .byte $7D, $2B   ; 
- D 1 - I - 0x00AE99 02:AE89: 75        .byte $75, $37   ; 
- D 1 - I - 0x00AE9B 02:AE8B: 7B        .byte $7B, $40   ; 
- D 1 - I - 0x00AE9D 02:AE8D: 84        .byte $84, $4B   ; 
- D 1 - I - 0x00AE9F 02:AE8F: 92        .byte $92, $4F   ; 
- D 1 - I - 0x00AEA1 02:AE91: 9E        .byte $9E, $4B   ; 
- D 1 - I - 0x00AEA3 02:AE93: A7        .byte $A7, $47   ; 
- D 1 - I - 0x00AEA5 02:AE95: B1        .byte $B1, $42   ; 
- D 1 - I - 0x00AEA7 02:AE97: C3        .byte $C3, $39   ; 
- D 1 - I - 0x00AEA9 02:AE99: D9        .byte $D9, $2D   ; 
- D 1 - I - 0x00AEAB 02:AE9B: E3        .byte $E3, $34   ; 
- D 1 - I - 0x00AEAD 02:AE9D: EE        .byte $EE, $3F   ; 
- D 1 - I - 0x00AEAF 02:AE9F: F5        .byte $F5, $51   ; 
- D 1 - I - 0x00AEB1 02:AEA1: E6        .byte $E6, $55   ; 
- D 1 - I - 0x00AEB3 02:AEA3: D5        .byte $D5, $5E   ; 
- D 1 - I - 0x00AEB5 02:AEA5: C5        .byte $C5, $65   ; 
- D 1 - I - 0x00AEB7 02:AEA7: B6        .byte $B6, $6F   ; 
- D 1 - I - 0x00AEB9 02:AEA9: BB        .byte $BB, $7D   ; 
- D 1 - I - 0x00AEBB 02:AEAB: D0        .byte $D0, $8C   ; 
- D 1 - I - 0x00AEBD 02:AEAD: DB        .byte $DB, $96   ; 
- D 1 - I - 0x00AEBF 02:AEAF: D9        .byte $D9, $A2   ; 
- D 1 - I - 0x00AEC1 02:AEB1: CD        .byte $CD, $A4   ; 
- D 1 - I - 0x00AEC3 02:AEB3: B8        .byte $B8, $A4   ; 
- D 1 - I - 0x00AEC5 02:AEB5: A1        .byte $A1, $A5   ; 
- D 1 - I - 0x00AEC7 02:AEB7: 84        .byte $84, $A5   ; 
- D 1 - I - 0x00AEC9 02:AEB9: 5A        .byte $5A, $A4   ; 

- D 1 - I - 0x00AECB 02:AEBB: 00        .byte $00   ; end token



_off007_02_AEBC_06:
- D 1 - I - 0x00AECC 02:AEBC: 33        .byte $33, $A6   ; 
- D 1 - I - 0x00AECE 02:AEBE: 1B        .byte $1B, $9E   ; 
- D 1 - I - 0x00AED0 02:AEC0: 0E        .byte $0E, $94   ; 
- D 1 - I - 0x00AED2 02:AEC2: 0E        .byte $0E, $88   ; 
- D 1 - I - 0x00AED4 02:AEC4: 0D        .byte $0D, $76   ; 
- D 1 - I - 0x00AED6 02:AEC6: 10        .byte $10, $66   ; 
- D 1 - I - 0x00AED8 02:AEC8: 17        .byte $17, $56   ; 
- D 1 - I - 0x00AEDA 02:AECA: 20        .byte $20, $4C   ; 
- D 1 - I - 0x00AEDC 02:AECC: 28        .byte $28, $41   ; 
- D 1 - I - 0x00AEDE 02:AECE: 27        .byte $27, $36   ; 
- D 1 - I - 0x00AEE0 02:AED0: 25        .byte $25, $28   ; 
- D 1 - I - 0x00AEE2 02:AED2: 2B        .byte $2B, $1A   ; 
- D 1 - I - 0x00AEE4 02:AED4: 38        .byte $38, $14   ; 
- D 1 - I - 0x00AEE6 02:AED6: 47        .byte $47, $12   ; 
- D 1 - I - 0x00AEE8 02:AED8: 59        .byte $59, $19   ; 
- D 1 - I - 0x00AEEA 02:AEDA: 6D        .byte $6D, $19   ; 
- D 1 - I - 0x00AEEC 02:AEDC: 7F        .byte $7F, $1F   ; 
- D 1 - I - 0x00AEEE 02:AEDE: 7F        .byte $7F, $2B   ; 
- D 1 - I - 0x00AEF0 02:AEE0: 7D        .byte $7D, $37   ; 
- D 1 - I - 0x00AEF2 02:AEE2: 84        .byte $84, $3F   ; 
- D 1 - I - 0x00AEF4 02:AEE4: 8A        .byte $8A, $46   ; 
- D 1 - I - 0x00AEF6 02:AEE6: 93        .byte $93, $48   ; 
- D 1 - I - 0x00AEF8 02:AEE8: 9B        .byte $9B, $48   ; 
- D 1 - I - 0x00AEFA 02:AEEA: A3        .byte $A3, $45   ; 
- D 1 - I - 0x00AEFC 02:AEEC: AC        .byte $AC, $42   ; 
- D 1 - I - 0x00AEFE 02:AEEE: BE        .byte $BE, $39   ; 
- D 1 - I - 0x00AF00 02:AEF0: D1        .byte $D1, $30   ; 
- D 1 - I - 0x00AF02 02:AEF2: E6        .byte $E6, $34   ; 
- D 1 - I - 0x00AF04 02:AEF4: F2        .byte $F2, $3F   ; 
- D 1 - I - 0x00AF06 02:AEF6: F4        .byte $F4, $4E   ; 
- D 1 - I - 0x00AF08 02:AEF8: EA        .byte $EA, $58   ; 
- D 1 - I - 0x00AF0A 02:AEFA: DB        .byte $DB, $60   ; 
- D 1 - I - 0x00AF0C 02:AEFC: C8        .byte $C8, $6B   ; 
- D 1 - I - 0x00AF0E 02:AEFE: BD        .byte $BD, $75   ; 
- D 1 - I - 0x00AF10 02:AF00: C3        .byte $C3, $82   ; 
- D 1 - I - 0x00AF12 02:AF02: D2        .byte $D2, $8C   ; 
- D 1 - I - 0x00AF14 02:AF04: E1        .byte $E1, $96   ; 
- D 1 - I - 0x00AF16 02:AF06: E6        .byte $E6, $A2   ; 
- D 1 - I - 0x00AF18 02:AF08: D9        .byte $D9, $A9   ; 
- D 1 - I - 0x00AF1A 02:AF0A: C6        .byte $C6, $A9   ; 
- D 1 - I - 0x00AF1C 02:AF0C: A1        .byte $A1, $A9   ; 
- D 1 - I - 0x00AF1E 02:AF0E: 84        .byte $84, $AA   ; 
- D 1 - I - 0x00AF20 02:AF10: 5A        .byte $5A, $A9   ; 

- D 1 - I - 0x00AF22 02:AF12: 00        .byte $00   ; end token



_off007_02_AF13_08:
- D 1 - I - 0x00AF23 02:AF13: 2F        .byte $2F, $AA   ; 
- D 1 - I - 0x00AF25 02:AF15: 16        .byte $16, $9F   ; 
- D 1 - I - 0x00AF27 02:AF17: 0C        .byte $0C, $94   ; 
- D 1 - I - 0x00AF29 02:AF19: 0A        .byte $0A, $85   ; 
- D 1 - I - 0x00AF2B 02:AF1B: 0A        .byte $0A, $76   ; 
- D 1 - I - 0x00AF2D 02:AF1D: 0A        .byte $0A, $63   ; 
- D 1 - I - 0x00AF2F 02:AF1F: 0F        .byte $0F, $56   ; 
- D 1 - I - 0x00AF31 02:AF21: 1B        .byte $1B, $4C   ; 
- D 1 - I - 0x00AF33 02:AF23: 24        .byte $24, $41   ; 
- D 1 - I - 0x00AF35 02:AF25: 22        .byte $22, $34   ; 
- D 1 - I - 0x00AF37 02:AF27: 21        .byte $21, $23   ; 
- D 1 - I - 0x00AF39 02:AF29: 26        .byte $26, $16   ; 
- D 1 - I - 0x00AF3B 02:AF2B: 34        .byte $34, $0E   ; 
- D 1 - I - 0x00AF3D 02:AF2D: 47        .byte $47, $0F   ; 
- D 1 - I - 0x00AF3F 02:AF2F: 59        .byte $59, $16   ; 
- D 1 - I - 0x00AF41 02:AF31: 6D        .byte $6D, $15   ; 
- D 1 - I - 0x00AF43 02:AF33: 7D        .byte $7D, $18   ; 
- D 1 - I - 0x00AF45 02:AF35: 87        .byte $87, $25   ; 
- D 1 - I - 0x00AF47 02:AF37: 87        .byte $87, $33   ; 
- D 1 - I - 0x00AF49 02:AF39: 90        .byte $90, $3F   ; 
- D 1 - I - 0x00AF4B 02:AF3B: A1        .byte $A1, $44   ; 
- D 1 - I - 0x00AF4D 02:AF3D: AE        .byte $AE, $3C   ; 
- D 1 - I - 0x00AF4F 02:AF3F: B6        .byte $B6, $38   ; 
- D 1 - I - 0x00AF51 02:AF41: C0        .byte $C0, $34   ; 
- D 1 - I - 0x00AF53 02:AF43: C6        .byte $C6, $30   ; 
- D 1 - I - 0x00AF55 02:AF45: D1        .byte $D1, $2E   ; 
- D 1 - I - 0x00AF57 02:AF47: E2        .byte $E2, $2D   ; 
- D 1 - I - 0x00AF59 02:AF49: EC        .byte $EC, $34   ; 
- D 1 - I - 0x00AF5B 02:AF4B: F6        .byte $F6, $3F   ; 
- D 1 - I - 0x00AF5D 02:AF4D: F7        .byte $F7, $4E   ; 
- D 1 - I - 0x00AF5F 02:AF4F: EF        .byte $EF, $58   ; 
- D 1 - I - 0x00AF61 02:AF51: E0        .byte $E0, $60   ; 
- D 1 - I - 0x00AF63 02:AF53: CD        .byte $CD, $6B   ; 
- D 1 - I - 0x00AF65 02:AF55: C0        .byte $C0, $75   ; 
- D 1 - I - 0x00AF67 02:AF57: C7        .byte $C7, $82   ; 
- D 1 - I - 0x00AF69 02:AF59: D9        .byte $D9, $8C   ; 
- D 1 - I - 0x00AF6B 02:AF5B: E8        .byte $E8, $96   ; 
- D 1 - I - 0x00AF6D 02:AF5D: EE        .byte $EE, $A2   ; 
- D 1 - I - 0x00AF6F 02:AF5F: E3        .byte $E3, $A9   ; 
- D 1 - I - 0x00AF71 02:AF61: CA        .byte $CA, $AC   ; 
- D 1 - I - 0x00AF73 02:AF63: A5        .byte $A5, $AC   ; 
- D 1 - I - 0x00AF75 02:AF65: 84        .byte $84, $AC   ; 
- D 1 - I - 0x00AF77 02:AF67: 58        .byte $58, $AC   ; 

- D 1 - I - 0x00AF79 02:AF69: 00        .byte $00   ; end token



_off007_02_AF6A_0A:
- - - - - - 0x00AF7A 02:AF6A: 11        .byte $11   ; 
- D 1 - I - 0x00AF7B 02:AF6B: 11        .byte $11   ; 
- - - - - - 0x00AF7C 02:AF6C: 11        .byte $11   ; 
- D 1 - I - 0x00AF7D 02:AF6D: 11        .byte $11   ; 
- D 1 - I - 0x00AF7E 02:AF6E: 11        .byte $11   ; 
- - - - - - 0x00AF7F 02:AF6F: 11        .byte $11   ; 
- - - - - - 0x00AF80 02:AF70: 11        .byte $11   ; 
- - - - - - 0x00AF81 02:AF71: 11        .byte $11   ; 
- - - - - - 0x00AF82 02:AF72: 11        .byte $11   ; 
- - - - - - 0x00AF83 02:AF73: 11        .byte $11   ; 
- - - - - - 0x00AF84 02:AF74: 11        .byte $11   ; 
- - - - - - 0x00AF85 02:AF75: 11        .byte $11   ; 
- - - - - - 0x00AF86 02:AF76: 11        .byte $11   ; 
- - - - - - 0x00AF87 02:AF77: 11        .byte $11   ; 
- - - - - - 0x00AF88 02:AF78: 11        .byte $11   ; 
- - - - - - 0x00AF89 02:AF79: 11        .byte $11   ; 
- - - - - - 0x00AF8A 02:AF7A: 11        .byte $11   ; 
- - - - - - 0x00AF8B 02:AF7B: 11        .byte $11   ; 
- - - - - - 0x00AF8C 02:AF7C: 11        .byte $11   ; 
- - - - - - 0x00AF8D 02:AF7D: 11        .byte $11   ; 
- - - - - - 0x00AF8E 02:AF7E: 11        .byte $11   ; 
- - - - - - 0x00AF8F 02:AF7F: 11        .byte $11   ; 
- - - - - - 0x00AF90 02:AF80: 11        .byte $11   ; 
- - - - - - 0x00AF91 02:AF81: 11        .byte $11   ; 
- - - - - - 0x00AF92 02:AF82: 11        .byte $11   ; 
- - - - - - 0x00AF93 02:AF83: 11        .byte $11   ; 
- - - - - - 0x00AF94 02:AF84: 11        .byte $11   ; 
- - - - - - 0x00AF95 02:AF85: 11        .byte $11   ; 
- - - - - - 0x00AF96 02:AF86: 11        .byte $11   ; 
- - - - - - 0x00AF97 02:AF87: 11        .byte $11   ; 
- - - - - - 0x00AF98 02:AF88: 11        .byte $11   ; 
- - - - - - 0x00AF99 02:AF89: 11        .byte $11   ; 
- - - - - - 0x00AF9A 02:AF8A: 11        .byte $11   ; 
- - - - - - 0x00AF9B 02:AF8B: 12        .byte $12   ; 
- - - - - - 0x00AF9C 02:AF8C: 11        .byte $11   ; 
- - - - - - 0x00AF9D 02:AF8D: 11        .byte $11   ; 
- - - - - - 0x00AF9E 02:AF8E: 12        .byte $12   ; 
- - - - - - 0x00AF9F 02:AF8F: 81        .byte $81   ; 
- - - - - - 0x00AFA0 02:AF90: 11        .byte $11   ; 
- - - - - - 0x00AFA1 02:AF91: 12        .byte $12   ; 
- - - - - - 0x00AFA2 02:AF92: 81        .byte $81   ; 
- - - - - - 0x00AFA3 02:AF93: 11        .byte $11   ; 
- - - - - - 0x00AFA4 02:AF94: 11        .byte $11   ; 
- - - - - - 0x00AFA5 02:AF95: 11        .byte $11   ; 
- - - - - - 0x00AFA6 02:AF96: 11        .byte $11   ; 
- - - - - - 0x00AFA7 02:AF97: 11        .byte $11   ; 
- - - - - - 0x00AFA8 02:AF98: 11        .byte $11   ; 
- - - - - - 0x00AFA9 02:AF99: 11        .byte $11   ; 
- - - - - - 0x00AFAA 02:AF9A: 01        .byte $01   ; 
- - - - - - 0x00AFAB 02:AF9B: 11        .byte $11   ; 
- - - - - - 0x00AFAC 02:AF9C: 10        .byte $10   ; 
- - - - - - 0x00AFAD 02:AF9D: 01        .byte $01   ; 
- - - - - - 0x00AFAE 02:AF9E: 11        .byte $11   ; 
- - - - - - 0x00AFAF 02:AF9F: 10        .byte $10   ; 
- - - - - - 0x00AFB0 02:AFA0: 01        .byte $01   ; 
- - - - - - 0x00AFB1 02:AFA1: 11        .byte $11   ; 
- - - - - - 0x00AFB2 02:AFA2: 14        .byte $14   ; 
- - - - - - 0x00AFB3 02:AFA3: 01        .byte $01   ; 
- - - - - - 0x00AFB4 02:AFA4: 11        .byte $11   ; 
- - - - - - 0x00AFB5 02:AFA5: 44        .byte $44   ; 
- - - - - - 0x00AFB6 02:AFA6: 01        .byte $01   ; 
- - - - - - 0x00AFB7 02:AFA7: 18        .byte $18   ; 
- - - - - - 0x00AFB8 02:AFA8: 44        .byte $44   ; 
- - - - - - 0x00AFB9 02:AFA9: A1        .byte $A1   ; 
- - - - - - 0x00AFBA 02:AFAA: 09        .byte $09   ; 
- - - - - - 0x00AFBB 02:AFAB: 44        .byte $44   ; 
- - - - - - 0x00AFBC 02:AFAC: A1        .byte $A1   ; 
- - - - - - 0x00AFBD 02:AFAD: 09        .byte $09   ; 
- - - - - - 0x00AFBE 02:AFAE: 43        .byte $43   ; 
- - - - - - 0x00AFBF 02:AFAF: A1        .byte $A1   ; 
- - - - - - 0x00AFC0 02:AFB0: 09        .byte $09   ; 
- - - - - - 0x00AFC1 02:AFB1: 33        .byte $33   ; 
- - - - - - 0x00AFC2 02:AFB2: 91        .byte $91   ; 
- - - - - - 0x00AFC3 02:AFB3: 09        .byte $09   ; 
- - - - - - 0x00AFC4 02:AFB4: 22        .byte $22   ; 
- - - - - - 0x00AFC5 02:AFB5: 81        .byte $81   ; 
- - - - - - 0x00AFC6 02:AFB6: 09        .byte $09   ; 
- - - - - - 0x00AFC7 02:AFB7: 22        .byte $22   ; 
- - - - - - 0x00AFC8 02:AFB8: 81        .byte $81   ; 
- - - - - - 0x00AFC9 02:AFB9: 08        .byte $08   ; 
- - - - - - 0x00AFCA 02:AFBA: 22        .byte $22   ; 
- - - - - - 0x00AFCB 02:AFBB: 11        .byte $11   ; 
- - - - - - 0x00AFCC 02:AFBC: 11        .byte $11   ; 
- - - - - - 0x00AFCD 02:AFBD: 11        .byte $11   ; 
- - - - - - 0x00AFCE 02:AFBE: 11        .byte $11   ; 
- - - - - - 0x00AFCF 02:AFBF: 11        .byte $11   ; 
- - - - - - 0x00AFD0 02:AFC0: 11        .byte $11   ; 
- - - - - - 0x00AFD1 02:AFC1: 11        .byte $11   ; 
- - - - - - 0x00AFD2 02:AFC2: 11        .byte $11   ; 
- - - - - - 0x00AFD3 02:AFC3: 11        .byte $11   ; 
- - - - - - 0x00AFD4 02:AFC4: 11        .byte $11   ; 
- - - - - - 0x00AFD5 02:AFC5: 11        .byte $11   ; 
- - - - - - 0x00AFD6 02:AFC6: 11        .byte $11   ; 
- - - - - - 0x00AFD7 02:AFC7: 11        .byte $11   ; 
- - - - - - 0x00AFD8 02:AFC8: 11        .byte $11   ; 
- - - - - - 0x00AFD9 02:AFC9: 11        .byte $11   ; 
- - - - - - 0x00AFDA 02:AFCA: 11        .byte $11   ; 
- - - - - - 0x00AFDB 02:AFCB: 11        .byte $11   ; 
- - - - - - 0x00AFDC 02:AFCC: 11        .byte $11   ; 
- - - - - - 0x00AFDD 02:AFCD: 11        .byte $11   ; 
- - - - - - 0x00AFDE 02:AFCE: 11        .byte $11   ; 
- - - - - - 0x00AFDF 02:AFCF: 11        .byte $11   ; 
- - - - - - 0x00AFE0 02:AFD0: 11        .byte $11   ; 
- - - - - - 0x00AFE1 02:AFD1: 11        .byte $11   ; 
- - - - - - 0x00AFE2 02:AFD2: 11        .byte $11   ; 
- - - - - - 0x00AFE3 02:AFD3: 11        .byte $11   ; 
- - - - - - 0x00AFE4 02:AFD4: 11        .byte $11   ; 
- - - - - - 0x00AFE5 02:AFD5: 11        .byte $11   ; 
- - - - - - 0x00AFE6 02:AFD6: 21        .byte $21   ; 
- - - - - - 0x00AFE7 02:AFD7: 12        .byte $12   ; 
- D 1 - I - 0x00AFE8 02:AFD8: 11        .byte $11   ; 
- - - - - - 0x00AFE9 02:AFD9: 12        .byte $12   ; 
- - - - - - 0x00AFEA 02:AFDA: 12        .byte $12   ; 
- - - - - - 0x00AFEB 02:AFDB: 11        .byte $11   ; 
- - - - - - 0x00AFEC 02:AFDC: 11        .byte $11   ; 
- - - - - - 0x00AFED 02:AFDD: 11        .byte $11   ; 
- - - - - - 0x00AFEE 02:AFDE: 11        .byte $11   ; 
- - - - - - 0x00AFEF 02:AFDF: 11        .byte $11   ; 
- - - - - - 0x00AFF0 02:AFE0: 11        .byte $11   ; 
- - - - - - 0x00AFF1 02:AFE1: 11        .byte $11   ; 
- - - - - - 0x00AFF2 02:AFE2: 11        .byte $11   ; 
- - - - - - 0x00AFF3 02:AFE3: 11        .byte $11   ; 
- - - - - - 0x00AFF4 02:AFE4: 11        .byte $11   ; 
- - - - - - 0x00AFF5 02:AFE5: 11        .byte $11   ; 
- - - - - - 0x00AFF6 02:AFE6: 11        .byte $11   ; 
- - - - - - 0x00AFF7 02:AFE7: 11        .byte $11   ; 
- D 1 - I - 0x00AFF8 02:AFE8: 11        .byte $11   ; 
- D 1 - I - 0x00AFF9 02:AFE9: 11        .byte $11   ; 
- D 1 - I - 0x00AFFA 02:AFEA: 11        .byte $11   ; 



_off006_AFEB_03:
- D 1 - I - 0x00AFFB 02:AFEB: F8 AF     .word _off007_03_AFF8_00
- D 1 - I - 0x00AFFD 02:AFED: 11 B0     .word _off007_03_B011_02
- D 1 - I - 0x00AFFF 02:AFEF: 68 B0     .word _off007_03_B068_04
- D 1 - I - 0x00B001 02:AFF1: BF B0     .word _off007_03_B0BF_06
- D 1 - I - 0x00B003 02:AFF3: 16 B1     .word _off007_03_B116_08
- D 1 - I - 0x00B005 02:AFF5: 6D B1     .word _off007_03_B16D_0A
- D 1 - I - 0x00B007 02:AFF7: 16        .byte $16   ; 



_off007_03_AFF8_00:
- D 1 - I - 0x00B008 02:AFF8: 52        .byte $52, $98   ; 
- D 1 - I - 0x00B00A 02:AFFA: 5E        .byte $5E, $8B   ; 
- D 1 - I - 0x00B00C 02:AFFC: 69        .byte $69, $84   ; 
- D 1 - I - 0x00B00E 02:AFFE: 78        .byte $78, $82   ; 
- D 1 - I - 0x00B010 02:B000: 8A        .byte $8A, $82   ; 
- D 1 - I - 0x00B012 02:B002: 98        .byte $98, $82   ; 
- D 1 - I - 0x00B014 02:B004: A6        .byte $A6, $82   ; 
- D 1 - I - 0x00B016 02:B006: B4        .byte $B4, $86   ; 
- D 1 - I - 0x00B018 02:B008: BC        .byte $BC, $8D   ; 
- D 1 - I - 0x00B01A 02:B00A: C4        .byte $C4, $95   ; 

- D 1 - I - 0x00B01C 02:B00C: 00        .byte $00   ; end token

- - - - - - 0x00B01D 02:B00D: 04        .byte $04   ; ??? 0x00A335
- D 1 - I - 0x00B01E 02:B00E: 02        .byte $02   ; 
- D 1 - I - 0x00B01F 02:B00F: 04        .byte $04   ; 
- D 1 - I - 0x00B020 02:B010: 04        .byte $04   ; 



_off007_03_B011_02:
- - - - - - 0x00B021 02:B011: AD        .byte $AD, $AE   ; 
- - - - - - 0x00B023 02:B013: CC        .byte $CC, $AE   ; 
- - - - - - 0x00B025 02:B015: E6        .byte $E6, $AB   ; 
- - - - - - 0x00B027 02:B017: F8        .byte $F8, $9E   ; 
- - - - - - 0x00B029 02:B019: FB        .byte $FB, $87   ; 
- - - - - - 0x00B02B 02:B01B: FA        .byte $FA, $72   ; 
- - - - - - 0x00B02D 02:B01D: F0        .byte $F0, $63   ; 
- - - - - - 0x00B02F 02:B01F: E2        .byte $E2, $5B   ; 
- - - - - - 0x00B031 02:B021: B9        .byte $B9, $5A   ; 
- - - - - - 0x00B033 02:B023: AC        .byte $AC, $53   ; 
- - - - - - 0x00B035 02:B025: AD        .byte $AD, $48   ; 
- - - - - - 0x00B037 02:B027: BD        .byte $BD, $3F   ; 
- - - - - - 0x00B039 02:B029: CD        .byte $CD, $37   ; 
- - - - - - 0x00B03B 02:B02B: D9        .byte $D9, $31   ; 
- - - - - - 0x00B03D 02:B02D: EE        .byte $EE, $25   ; 
- - - - - - 0x00B03F 02:B02F: EF        .byte $EF, $15   ; 
- - - - - - 0x00B041 02:B031: E2        .byte $E2, $0D   ; 
- - - - - - 0x00B043 02:B033: C0        .byte $C0, $0C   ; 
- - - - - - 0x00B045 02:B035: A5        .byte $A5, $0C   ; 
- - - - - - 0x00B047 02:B037: 8C        .byte $8C, $0C   ; 
- - - - - - 0x00B049 02:B039: 75        .byte $75, $0C   ; 
- - - - - - 0x00B04B 02:B03B: 66        .byte $66, $13   ; 
- - - - - - 0x00B04D 02:B03D: 5C        .byte $5C, $20   ; 
- - - - - - 0x00B04F 02:B03F: 4B        .byte $4B, $23   ; 
- - - - - - 0x00B051 02:B041: 2F        .byte $2F, $23   ; 
- - - - - - 0x00B053 02:B043: 18        .byte $18, $27   ; 
- - - - - - 0x00B055 02:B045: 0C        .byte $0C, $2F   ; 
- - - - - - 0x00B057 02:B047: 0C        .byte $0C, $3C   ; 
- - - - - - 0x00B059 02:B049: 16        .byte $16, $46   ; 
- - - - - - 0x00B05B 02:B04B: 21        .byte $21, $51   ; 
- - - - - - 0x00B05D 02:B04D: 2A        .byte $2A, $5A   ; 
- - - - - - 0x00B05F 02:B04F: 38        .byte $38, $68   ; 
- D 1 - I - 0x00B061 02:B051: 32        .byte $32, $6F   ; 
- D 1 - I - 0x00B063 02:B053: 27        .byte $27, $76   ; 
- D 1 - I - 0x00B065 02:B055: 1C        .byte $1C, $82   ; 
- D 1 - I - 0x00B067 02:B057: 11        .byte $11, $8E   ; 
- D 1 - I - 0x00B069 02:B059: 14        .byte $14, $9A   ; 
- D 1 - I - 0x00B06B 02:B05B: 21        .byte $21, $9F   ; 
- D 1 - I - 0x00B06D 02:B05D: 2E        .byte $2E, $AB   ; 
- D 1 - I - 0x00B06F 02:B05F: 42        .byte $42, $AE   ; 
- D 1 - I - 0x00B071 02:B061: 5A        .byte $5A, $AE   ; 
- D 1 - I - 0x00B073 02:B063: 74        .byte $74, $AE   ; 
- D 1 - I - 0x00B075 02:B065: 91        .byte $91, $AE   ; 

- - - - - - 0x00B077 02:B067: 00        .byte $00   ; end token



_off007_03_B068_04:
- D 1 - I - 0x00B078 02:B068: AD        .byte $AD, $A2   ; 
- D 1 - I - 0x00B07A 02:B06A: CC        .byte $CC, $A3   ; 
- D 1 - I - 0x00B07C 02:B06C: E8        .byte $E8, $A2   ; 
- D 1 - I - 0x00B07E 02:B06E: F6        .byte $F6, $92   ; 
- D 1 - I - 0x00B080 02:B070: F5        .byte $F5, $84   ; 
- D 1 - I - 0x00B082 02:B072: F3        .byte $F3, $77   ; 
- D 1 - I - 0x00B084 02:B074: E5        .byte $E5, $6D   ; 
- D 1 - I - 0x00B086 02:B076: D6        .byte $D6, $61   ; 
- D 1 - I - 0x00B088 02:B078: A6        .byte $A6, $62   ; 
- D 1 - I - 0x00B08A 02:B07A: 9E        .byte $9E, $53   ; 
- D 1 - I - 0x00B08C 02:B07C: A1        .byte $A1, $45   ; 
- D 1 - I - 0x00B08E 02:B07E: AE        .byte $AE, $3C   ; 
- D 1 - I - 0x00B090 02:B080: C4        .byte $C4, $32   ; 
- D 1 - I - 0x00B092 02:B082: D2        .byte $D2, $29   ; 
- D 1 - I - 0x00B094 02:B084: D9        .byte $D9, $1E   ; 
- D 1 - I - 0x00B096 02:B086: D3        .byte $D3, $15   ; 
- D 1 - I - 0x00B098 02:B088: C3        .byte $C3, $13   ; 
- D 1 - I - 0x00B09A 02:B08A: B0        .byte $B0, $15   ; 
- D 1 - I - 0x00B09C 02:B08C: A5        .byte $A5, $22   ; 
- D 1 - I - 0x00B09E 02:B08E: 9B        .byte $9B, $2B   ; 
- D 1 - I - 0x00B0A0 02:B090: 82        .byte $82, $2C   ; 
- D 1 - I - 0x00B0A2 02:B092: 6E        .byte $6E, $2E   ; 
- D 1 - I - 0x00B0A4 02:B094: 5C        .byte $5C, $2D   ; 
- D 1 - I - 0x00B0A6 02:B096: 4B        .byte $4B, $2D   ; 
- D 1 - I - 0x00B0A8 02:B098: 2F        .byte $2F, $2E   ; 
- D 1 - I - 0x00B0AA 02:B09A: 1B        .byte $1B, $2E   ; 
- D 1 - I - 0x00B0AC 02:B09C: 1A        .byte $1A, $3A   ; 
- D 1 - I - 0x00B0AE 02:B09E: 24        .byte $24, $43   ; 
- D 1 - I - 0x00B0B0 02:B0A0: 2E        .byte $2E, $4D   ; 
- D 1 - I - 0x00B0B2 02:B0A2: 39        .byte $39, $57   ; 
- D 1 - I - 0x00B0B4 02:B0A4: 44        .byte $44, $60   ; 
- D 1 - I - 0x00B0B6 02:B0A6: 43        .byte $43, $6C   ; 
- D 1 - I - 0x00B0B8 02:B0A8: 38        .byte $38, $78   ; 
- D 1 - I - 0x00B0BA 02:B0AA: 30        .byte $30, $7F   ; 
- D 1 - I - 0x00B0BC 02:B0AC: 22        .byte $22, $89   ; 
- D 1 - I - 0x00B0BE 02:B0AE: 22        .byte $22, $94   ; 
- D 1 - I - 0x00B0C0 02:B0B0: 30        .byte $30, $A1   ; 
- D 1 - I - 0x00B0C2 02:B0B2: 39        .byte $39, $A6   ; 
- D 1 - I - 0x00B0C4 02:B0B4: 4C        .byte $4C, $A3   ; 
- D 1 - I - 0x00B0C6 02:B0B6: 59        .byte $59, $A3   ; 
- D 1 - I - 0x00B0C8 02:B0B8: 67        .byte $67, $A3   ; 
- D 1 - I - 0x00B0CA 02:B0BA: 78        .byte $78, $A3   ; 
- D 1 - I - 0x00B0CC 02:B0BC: 91        .byte $91, $A2   ; 

- D 1 - I - 0x00B0CE 02:B0BE: 00        .byte $00   ; end token



_off007_03_B0BF_06:
- D 1 - I - 0x00B0CF 02:B0BF: AD        .byte $AD, $A8   ; 
- D 1 - I - 0x00B0D1 02:B0C1: CC        .byte $CC, $A8   ; 
- D 1 - I - 0x00B0D3 02:B0C3: E9        .byte $E9, $A5   ; 
- D 1 - I - 0x00B0D5 02:B0C5: FA        .byte $FA, $92   ; 
- D 1 - I - 0x00B0D7 02:B0C7: FA        .byte $FA, $87   ; 
- D 1 - I - 0x00B0D9 02:B0C9: FA        .byte $FA, $7A   ; 
- D 1 - I - 0x00B0DB 02:B0CB: F1        .byte $F1, $6D   ; 
- D 1 - I - 0x00B0DD 02:B0CD: E1        .byte $E1, $60   ; 
- D 1 - I - 0x00B0DF 02:B0CF: B2        .byte $B2, $5F   ; 
- D 1 - I - 0x00B0E1 02:B0D1: A6        .byte $A6, $53   ; 
- D 1 - I - 0x00B0E3 02:B0D3: AB        .byte $AB, $45   ; 
- D 1 - I - 0x00B0E5 02:B0D5: C4        .byte $C4, $37   ; 
- D 1 - I - 0x00B0E7 02:B0D7: DA        .byte $DA, $2B   ; 
- D 1 - I - 0x00B0E9 02:B0D9: E6        .byte $E6, $22   ; 
- D 1 - I - 0x00B0EB 02:B0DB: E8        .byte $E8, $16   ; 
- D 1 - I - 0x00B0ED 02:B0DD: D8        .byte $D8, $0F   ; 
- D 1 - I - 0x00B0EF 02:B0DF: BD        .byte $BD, $0E   ; 
- D 1 - I - 0x00B0F1 02:B0E1: B0        .byte $B0, $14   ; 
- D 1 - I - 0x00B0F3 02:B0E3: A7        .byte $A7, $1D   ; 
- D 1 - I - 0x00B0F5 02:B0E5: 9A        .byte $9A, $27   ; 
- D 1 - I - 0x00B0F7 02:B0E7: 88        .byte $88, $27   ; 
- D 1 - I - 0x00B0F9 02:B0E9: 70        .byte $70, $26   ; 
- D 1 - I - 0x00B0FB 02:B0EB: 58        .byte $58, $27   ; 
- D 1 - I - 0x00B0FD 02:B0ED: 46        .byte $46, $26   ; 
- D 1 - I - 0x00B0FF 02:B0EF: 2F        .byte $2F, $27   ; 
- D 1 - I - 0x00B101 02:B0F1: 19        .byte $19, $26   ; 
- D 1 - I - 0x00B103 02:B0F3: 0B        .byte $0B, $35   ; 
- D 1 - I - 0x00B105 02:B0F5: 18        .byte $18, $43   ; 
- D 1 - I - 0x00B107 02:B0F7: 24        .byte $24, $4D   ; 
- D 1 - I - 0x00B109 02:B0F9: 30        .byte $30, $5B   ; 
- D 1 - I - 0x00B10B 02:B0FB: 3B        .byte $3B, $69   ; 
- D 1 - I - 0x00B10D 02:B0FD: 32        .byte $32, $71   ; 
- D 1 - I - 0x00B10F 02:B0FF: 2A        .byte $2A, $7C   ; 
- D 1 - I - 0x00B111 02:B101: 20        .byte $20, $86   ; 
- D 1 - I - 0x00B113 02:B103: 1D        .byte $1D, $94   ; 
- D 1 - I - 0x00B115 02:B105: 2A        .byte $2A, $A1   ; 
- D 1 - I - 0x00B117 02:B107: 39        .byte $39, $A7   ; 
- D 1 - I - 0x00B119 02:B109: 47        .byte $47, $A7   ; 
- D 1 - I - 0x00B11B 02:B10B: 54        .byte $54, $A6   ; 
- D 1 - I - 0x00B11D 02:B10D: 62        .byte $62, $A8   ; 
- D 1 - I - 0x00B11F 02:B10F: 73        .byte $73, $A8   ; 
- D 1 - I - 0x00B121 02:B111: 87        .byte $87, $A7   ; 
- D 1 - I - 0x00B123 02:B113: 9D        .byte $9D, $A7   ; 

- D 1 - I - 0x00B125 02:B115: 00        .byte $00   ; end token



_off007_03_B116_08:
- D 1 - I - 0x00B126 02:B116: AD        .byte $AD, $AB   ; 
- D 1 - I - 0x00B128 02:B118: CC        .byte $CC, $AA   ; 
- D 1 - I - 0x00B12A 02:B11A: EC        .byte $EC, $A6   ; 
- D 1 - I - 0x00B12C 02:B11C: FB        .byte $FB, $97   ; 
- D 1 - I - 0x00B12E 02:B11E: FA        .byte $FA, $87   ; 
- D 1 - I - 0x00B130 02:B120: F5        .byte $F5, $72   ; 
- D 1 - I - 0x00B132 02:B122: E9        .byte $E9, $61   ; 
- D 1 - I - 0x00B134 02:B124: D4        .byte $D4, $5D   ; 
- D 1 - I - 0x00B136 02:B126: B0        .byte $B0, $5A   ; 
- D 1 - I - 0x00B138 02:B128: AC        .byte $AC, $50   ; 
- D 1 - I - 0x00B13A 02:B12A: B6        .byte $B6, $41   ; 
- D 1 - I - 0x00B13C 02:B12C: D0        .byte $D0, $35   ; 
- D 1 - I - 0x00B13E 02:B12E: E0        .byte $E0, $2D   ; 
- D 1 - I - 0x00B140 02:B130: EB        .byte $EB, $23   ; 
- D 1 - I - 0x00B142 02:B132: EC        .byte $EC, $15   ; 
- D 1 - I - 0x00B144 02:B134: E2        .byte $E2, $0A   ; 
- D 1 - I - 0x00B146 02:B136: C3        .byte $C3, $0A   ; 
- D 1 - I - 0x00B148 02:B138: AF        .byte $AF, $0D   ; 
- D 1 - I - 0x00B14A 02:B13A: AA        .byte $AA, $17   ; 
- D 1 - I - 0x00B14C 02:B13C: 9E        .byte $9E, $27   ; 
- D 1 - I - 0x00B14E 02:B13E: 88        .byte $88, $25   ; 
- D 1 - I - 0x00B150 02:B140: 77        .byte $77, $24   ; 
- D 1 - I - 0x00B152 02:B142: 5C        .byte $5C, $23   ; 
- D 1 - I - 0x00B154 02:B144: 43        .byte $43, $25   ; 
- D 1 - I - 0x00B156 02:B146: 2C        .byte $2C, $26   ; 
- D 1 - I - 0x00B158 02:B148: 1C        .byte $1C, $27   ; 
- D 1 - I - 0x00B15A 02:B14A: 12        .byte $12, $36   ; 
- D 1 - I - 0x00B15C 02:B14C: 18        .byte $18, $40   ; 
- D 1 - I - 0x00B15E 02:B14E: 1E        .byte $1E, $49   ; 
- D 1 - I - 0x00B160 02:B150: 27        .byte $27, $51   ; 
- D 1 - I - 0x00B162 02:B152: 30        .byte $30, $5A   ; 
- D 1 - I - 0x00B164 02:B154: 38        .byte $38, $68   ; 
- D 1 - I - 0x00B166 02:B156: 32        .byte $32, $6F   ; 
- D 1 - I - 0x00B168 02:B158: 27        .byte $27, $76   ; 
- D 1 - I - 0x00B16A 02:B15A: 1F        .byte $1F, $82   ; 
- D 1 - I - 0x00B16C 02:B15C: 19        .byte $19, $8E   ; 
- D 1 - I - 0x00B16E 02:B15E: 1B        .byte $1B, $9A   ; 
- D 1 - I - 0x00B170 02:B160: 26        .byte $26, $A4   ; 
- D 1 - I - 0x00B172 02:B162: 34        .byte $34, $A8   ; 
- D 1 - I - 0x00B174 02:B164: 42        .byte $42, $AA   ; 
- D 1 - I - 0x00B176 02:B166: 5A        .byte $5A, $AB   ; 
- D 1 - I - 0x00B178 02:B168: 74        .byte $74, $AB   ; 
- D 1 - I - 0x00B17A 02:B16A: 91        .byte $91, $AA   ; 

- D 1 - I - 0x00B17C 02:B16C: 00        .byte $00   ; end token



_off007_03_B16D_0A:
- D 1 - I - 0x00B17D 02:B16D: 11        .byte $11   ; 
- D 1 - I - 0x00B17E 02:B16E: 11        .byte $11   ; 
- D 1 - I - 0x00B17F 02:B16F: 11        .byte $11   ; 
- - - - - - 0x00B180 02:B170: 11        .byte $11   ; 
- - - - - - 0x00B181 02:B171: 11        .byte $11   ; 
- - - - - - 0x00B182 02:B172: 11        .byte $11   ; 
- - - - - - 0x00B183 02:B173: 11        .byte $11   ; 
- - - - - - 0x00B184 02:B174: 11        .byte $11   ; 
- - - - - - 0x00B185 02:B175: 11        .byte $11   ; 
- - - - - - 0x00B186 02:B176: 11        .byte $11   ; 
- - - - - - 0x00B187 02:B177: 11        .byte $11   ; 
- - - - - - 0x00B188 02:B178: 11        .byte $11   ; 
- - - - - - 0x00B189 02:B179: 11        .byte $11   ; 
- - - - - - 0x00B18A 02:B17A: 11        .byte $11   ; 
- - - - - - 0x00B18B 02:B17B: 11        .byte $11   ; 
- - - - - - 0x00B18C 02:B17C: 11        .byte $11   ; 
- - - - - - 0x00B18D 02:B17D: 11        .byte $11   ; 
- - - - - - 0x00B18E 02:B17E: 21        .byte $21   ; 
- - - - - - 0x00B18F 02:B17F: 11        .byte $11   ; 
- - - - - - 0x00B190 02:B180: 11        .byte $11   ; 
- - - - - - 0x00B191 02:B181: 21        .byte $21   ; 
- - - - - - 0x00B192 02:B182: 11        .byte $11   ; 
- - - - - - 0x00B193 02:B183: 11        .byte $11   ; 
- - - - - - 0x00B194 02:B184: 11        .byte $11   ; 
- D 1 - I - 0x00B195 02:B185: 11        .byte $11   ; 
- - - - - - 0x00B196 02:B186: 11        .byte $11   ; 
- - - - - - 0x00B197 02:B187: 11        .byte $11   ; 
- - - - - - 0x00B198 02:B188: 11        .byte $11   ; 
- - - - - - 0x00B199 02:B189: 11        .byte $11   ; 
- - - - - - 0x00B19A 02:B18A: 12        .byte $12   ; 
- - - - - - 0x00B19B 02:B18B: 11        .byte $11   ; 
- - - - - - 0x00B19C 02:B18C: 11        .byte $11   ; 
- - - - - - 0x00B19D 02:B18D: 12        .byte $12   ; 
- - - - - - 0x00B19E 02:B18E: 11        .byte $11   ; 
- - - - - - 0x00B19F 02:B18F: 21        .byte $21   ; 
- - - - - - 0x00B1A0 02:B190: 12        .byte $12   ; 
- - - - - - 0x00B1A1 02:B191: 11        .byte $11   ; 
- - - - - - 0x00B1A2 02:B192: 21        .byte $21   ; 
- - - - - - 0x00B1A3 02:B193: 12        .byte $12   ; 
- - - - - - 0x00B1A4 02:B194: 12        .byte $12   ; 
- - - - - - 0x00B1A5 02:B195: 21        .byte $21   ; 
- - - - - - 0x00B1A6 02:B196: 12        .byte $12   ; 
- - - - - - 0x00B1A7 02:B197: 11        .byte $11   ; 
- - - - - - 0x00B1A8 02:B198: 11        .byte $11   ; 
- - - - - - 0x00B1A9 02:B199: 12        .byte $12   ; 
- - - - - - 0x00B1AA 02:B19A: 11        .byte $11   ; 
- - - - - - 0x00B1AB 02:B19B: 11        .byte $11   ; 
- - - - - - 0x00B1AC 02:B19C: 12        .byte $12   ; 
- - - - - - 0x00B1AD 02:B19D: 11        .byte $11   ; 
- - - - - - 0x00B1AE 02:B19E: 11        .byte $11   ; 
- - - - - - 0x00B1AF 02:B19F: 12        .byte $12   ; 
- - - - - - 0x00B1B0 02:B1A0: 11        .byte $11   ; 
- - - - - - 0x00B1B1 02:B1A1: 12        .byte $12   ; 
- - - - - - 0x00B1B2 02:B1A2: 12        .byte $12   ; 
- - - - - - 0x00B1B3 02:B1A3: 01        .byte $01   ; 
- - - - - - 0x00B1B4 02:B1A4: 11        .byte $11   ; 
- - - - - - 0x00B1B5 02:B1A5: 10        .byte $10   ; 
- - - - - - 0x00B1B6 02:B1A6: 01        .byte $01   ; 
- - - - - - 0x00B1B7 02:B1A7: 11        .byte $11   ; 
- - - - - - 0x00B1B8 02:B1A8: 10        .byte $10   ; 
- - - - - - 0x00B1B9 02:B1A9: 01        .byte $01   ; 
- D 1 - I - 0x00B1BA 02:B1AA: 11        .byte $11   ; 
- - - - - - 0x00B1BB 02:B1AB: 10        .byte $10   ; 
- - - - - - 0x00B1BC 02:B1AC: 01        .byte $01   ; 
- - - - - - 0x00B1BD 02:B1AD: 11        .byte $11   ; 
- - - - - - 0x00B1BE 02:B1AE: 10        .byte $10   ; 
- - - - - - 0x00B1BF 02:B1AF: 11        .byte $11   ; 
- - - - - - 0x00B1C0 02:B1B0: 11        .byte $11   ; 
- - - - - - 0x00B1C1 02:B1B1: 11        .byte $11   ; 
- - - - - - 0x00B1C2 02:B1B2: 11        .byte $11   ; 
- - - - - - 0x00B1C3 02:B1B3: 11        .byte $11   ; 
- - - - - - 0x00B1C4 02:B1B4: 11        .byte $11   ; 
- - - - - - 0x00B1C5 02:B1B5: 11        .byte $11   ; 
- - - - - - 0x00B1C6 02:B1B6: 11        .byte $11   ; 
- - - - - - 0x00B1C7 02:B1B7: 11        .byte $11   ; 
- - - - - - 0x00B1C8 02:B1B8: 11        .byte $11   ; 
- - - - - - 0x00B1C9 02:B1B9: 11        .byte $11   ; 
- - - - - - 0x00B1CA 02:B1BA: 11        .byte $11   ; 
- - - - - - 0x00B1CB 02:B1BB: 11        .byte $11   ; 
- - - - - - 0x00B1CC 02:B1BC: 81        .byte $81   ; 
- - - - - - 0x00B1CD 02:B1BD: 11        .byte $11   ; 
- - - - - - 0x00B1CE 02:B1BE: 11        .byte $11   ; 
- - - - - - 0x00B1CF 02:B1BF: 12        .byte $12   ; 
- - - - - - 0x00B1D0 02:B1C0: 11        .byte $11   ; 
- - - - - - 0x00B1D1 02:B1C1: 11        .byte $11   ; 
- - - - - - 0x00B1D2 02:B1C2: 12        .byte $12   ; 
- - - - - - 0x00B1D3 02:B1C3: 11        .byte $11   ; 
- - - - - - 0x00B1D4 02:B1C4: 11        .byte $11   ; 
- - - - - - 0x00B1D5 02:B1C5: 12        .byte $12   ; 
- - - - - - 0x00B1D6 02:B1C6: 11        .byte $11   ; 
- - - - - - 0x00B1D7 02:B1C7: 18        .byte $18   ; 
- - - - - - 0x00B1D8 02:B1C8: 22        .byte $22   ; 
- - - - - - 0x00B1D9 02:B1C9: 11        .byte $11   ; 
- - - - - - 0x00B1DA 02:B1CA: 18        .byte $18   ; 
- D 1 - I - 0x00B1DB 02:B1CB: 22        .byte $22   ; 
- D 1 - I - 0x00B1DC 02:B1CC: 11        .byte $11   ; 
- - - - - - 0x00B1DD 02:B1CD: 18        .byte $18   ; 
- - - - - - 0x00B1DE 02:B1CE: 22        .byte $22   ; 
- - - - - - 0x00B1DF 02:B1CF: 81        .byte $81   ; 
- - - - - - 0x00B1E0 02:B1D0: 18        .byte $18   ; 
- D 1 - I - 0x00B1E1 02:B1D1: 22        .byte $22   ; 
- - - - - - 0x00B1E2 02:B1D2: 81        .byte $81   ; 
- - - - - - 0x00B1E3 02:B1D3: 18        .byte $18   ; 
- - - - - - 0x00B1E4 02:B1D4: 23        .byte $23   ; 
- D 1 - I - 0x00B1E5 02:B1D5: 81        .byte $81   ; 
- - - - - - 0x00B1E6 02:B1D6: 18        .byte $18   ; 
- - - - - - 0x00B1E7 02:B1D7: 23        .byte $23   ; 
- - - - - - 0x00B1E8 02:B1D8: 82        .byte $82   ; 
- - - - - - 0x00B1E9 02:B1D9: 18        .byte $18   ; 
- - - - - - 0x00B1EA 02:B1DA: 24        .byte $24   ; 
- - - - - - 0x00B1EB 02:B1DB: 82        .byte $82   ; 
- - - - - - 0x00B1EC 02:B1DC: 18        .byte $18   ; 
- - - - - - 0x00B1ED 02:B1DD: 23        .byte $23   ; 
- - - - - - 0x00B1EE 02:B1DE: 91        .byte $91   ; 
- - - - - - 0x00B1EF 02:B1DF: 11        .byte $11   ; 
- - - - - - 0x00B1F0 02:B1E0: 23        .byte $23   ; 
- - - - - - 0x00B1F1 02:B1E1: 91        .byte $91   ; 
- - - - - - 0x00B1F2 02:B1E2: 11        .byte $11   ; 
- - - - - - 0x00B1F3 02:B1E3: 22        .byte $22   ; 
- - - - - - 0x00B1F4 02:B1E4: 91        .byte $91   ; 
- - - - - - 0x00B1F5 02:B1E5: 11        .byte $11   ; 
- - - - - - 0x00B1F6 02:B1E6: 22        .byte $22   ; 
- - - - - - 0x00B1F7 02:B1E7: 91        .byte $91   ; 
- D 1 - I - 0x00B1F8 02:B1E8: 11        .byte $11   ; 
- - - - - - 0x00B1F9 02:B1E9: 11        .byte $11   ; 
- - - - - - 0x00B1FA 02:B1EA: 81        .byte $81   ; 
- D 1 - I - 0x00B1FB 02:B1EB: 11        .byte $11   ; 
- D 1 - I - 0x00B1FC 02:B1EC: 01        .byte $01   ; 
- D 1 - I - 0x00B1FD 02:B1ED: 11        .byte $11   ; 



_off006_B1EE_04:
- D 1 - I - 0x00B1FE 02:B1EE: FB B1     .word _off007_04_B1FB_00
- D 1 - I - 0x00B200 02:B1F0: 1A B2     .word _off007_04_B21A_02
- D 1 - I - 0x00B202 02:B1F2: 51 B2     .word _off007_04_B251_04
- D 1 - I - 0x00B204 02:B1F4: 88 B2     .word _off007_04_B288_06
- D 1 - I - 0x00B206 02:B1F6: BF B2     .word _off007_04_B2BF_08
- D 1 - I - 0x00B208 02:B1F8: F6 B2     .word _off007_04_B2F6_0A
- D 1 - I - 0x00B20A 02:B1FA: 0D        .byte $0D   ; 



_off007_04_B1FB_00:
- D 1 - I - 0x00B20B 02:B1FB: 39        .byte $39, $8B   ; 
- D 1 - I - 0x00B20D 02:B1FD: 49        .byte $49, $8B   ; 
- D 1 - I - 0x00B20F 02:B1FF: 5A        .byte $5A, $8B   ; 
- D 1 - I - 0x00B211 02:B201: 66        .byte $66, $8B   ; 
- D 1 - I - 0x00B213 02:B203: 76        .byte $76, $8B   ; 
- D 1 - I - 0x00B215 02:B205: 82        .byte $82, $8B   ; 
- D 1 - I - 0x00B217 02:B207: 8C        .byte $8C, $8B   ; 
- D 1 - I - 0x00B219 02:B209: 97        .byte $97, $8B   ; 
- D 1 - I - 0x00B21B 02:B20B: A4        .byte $A4, $8B   ; 
- D 1 - I - 0x00B21D 02:B20D: B3        .byte $B3, $8B   ; 
- D 1 - I - 0x00B21F 02:B20F: BF        .byte $BF, $8B   ; 
- D 1 - I - 0x00B221 02:B211: CB        .byte $CB, $8B   ; 
- D 1 - I - 0x00B223 02:B213: DB        .byte $DB, $86   ; 

- D 1 - I - 0x00B225 02:B215: 00        .byte $00   ; end token

- D 1 - I - 0x00B226 02:B216: 0C        .byte $0C   ; ??? 0x00A335
- D 1 - I - 0x00B227 02:B217: 08        .byte $08   ; 
- D 1 - I - 0x00B228 02:B218: 0A        .byte $0A   ; 
- D 1 - I - 0x00B229 02:B219: 08        .byte $08   ; 



_off007_04_B21A_02:
- D 1 - I - 0x00B22A 02:B21A: 9D        .byte $9D, $AA   ; 
- D 1 - I - 0x00B22C 02:B21C: BF        .byte $BF, $A2   ; 
- D 1 - I - 0x00B22E 02:B21E: D5        .byte $D5, $98   ; 
- D 1 - I - 0x00B230 02:B220: E6        .byte $E6, $90   ; 
- D 1 - I - 0x00B232 02:B222: F1        .byte $F1, $82   ; 
- D 1 - I - 0x00B234 02:B224: F1        .byte $F1, $70   ; 
- D 1 - I - 0x00B236 02:B226: E0        .byte $E0, $5E   ; 
- D 1 - I - 0x00B238 02:B228: CC        .byte $CC, $48   ; 
- D 1 - I - 0x00B23A 02:B22A: B8        .byte $B8, $35   ; 
- D 1 - I - 0x00B23C 02:B22C: A8        .byte $A8, $25   ; 
- D 1 - I - 0x00B23E 02:B22E: 9A        .byte $9A, $17   ; 
- D 1 - I - 0x00B240 02:B230: 8C        .byte $8C, $0D   ; 
- D 1 - I - 0x00B242 02:B232: 79        .byte $79, $0F   ; 
- D 1 - I - 0x00B244 02:B234: 68        .byte $68, $1C   ; 
- D 1 - I - 0x00B246 02:B236: 58        .byte $58, $2C   ; 
- D 1 - I - 0x00B248 02:B238: 49        .byte $49, $3C   ; 
- D 1 - I - 0x00B24A 02:B23A: 3A        .byte $3A, $4B   ; 
- D 1 - I - 0x00B24C 02:B23C: 2A        .byte $2A, $5C   ; 
- D 1 - I - 0x00B24E 02:B23E: 19        .byte $19, $6C   ; 
- D 1 - I - 0x00B250 02:B240: 0F        .byte $0F, $80   ; 
- D 1 - I - 0x00B252 02:B242: 12        .byte $12, $90   ; 
- D 1 - I - 0x00B254 02:B244: 1C        .byte $1C, $9C   ; 
- D 1 - I - 0x00B256 02:B246: 2D        .byte $2D, $A7   ; 
- D 1 - I - 0x00B258 02:B248: 46        .byte $46, $A9   ; 
- D 1 - I - 0x00B25A 02:B24A: 5B        .byte $5B, $A9   ; 
- D 1 - I - 0x00B25C 02:B24C: 6F        .byte $6F, $A9   ; 
- D 1 - I - 0x00B25E 02:B24E: 86        .byte $86, $A9   ; 

- D 1 - I - 0x00B260 02:B250: 00        .byte $00   ; end token



_off007_04_B251_04:
- D 1 - I - 0x00B261 02:B251: 9D        .byte $9D, $9D   ; 
- D 1 - I - 0x00B263 02:B253: BC        .byte $BC, $9B   ; 
- D 1 - I - 0x00B265 02:B255: D7        .byte $D7, $93   ; 
- D 1 - I - 0x00B267 02:B257: E2        .byte $E2, $81   ; 
- D 1 - I - 0x00B269 02:B259: DD        .byte $DD, $72   ; 
- D 1 - I - 0x00B26B 02:B25B: D1        .byte $D1, $66   ; 
- D 1 - I - 0x00B26D 02:B25D: C1        .byte $C1, $55   ; 
- D 1 - I - 0x00B26F 02:B25F: B3        .byte $B3, $48   ; 
- D 1 - I - 0x00B271 02:B261: A1        .byte $A1, $35   ; 
- D 1 - I - 0x00B273 02:B263: 91        .byte $91, $25   ; 
- D 1 - I - 0x00B275 02:B265: 86        .byte $86, $1C   ; 
- D 1 - I - 0x00B277 02:B267: 7A        .byte $7A, $20   ; 
- D 1 - I - 0x00B279 02:B269: 71        .byte $71, $2A   ; 
- D 1 - I - 0x00B27B 02:B26B: 65        .byte $65, $36   ; 
- D 1 - I - 0x00B27D 02:B26D: 5B        .byte $5B, $41   ; 
- D 1 - I - 0x00B27F 02:B26F: 50        .byte $50, $4B   ; 
- D 1 - I - 0x00B281 02:B271: 40        .byte $40, $5B   ; 
- D 1 - I - 0x00B283 02:B273: 33        .byte $33, $68   ; 
- D 1 - I - 0x00B285 02:B275: 28        .byte $28, $74   ; 
- D 1 - I - 0x00B287 02:B277: 1D        .byte $1D, $80   ; 
- D 1 - I - 0x00B289 02:B279: 23        .byte $23, $90   ; 
- D 1 - I - 0x00B28B 02:B27B: 32        .byte $32, $97   ; 
- D 1 - I - 0x00B28D 02:B27D: 47        .byte $47, $9D   ; 
- D 1 - I - 0x00B28F 02:B27F: 58        .byte $58, $9D   ; 
- D 1 - I - 0x00B291 02:B281: 67        .byte $67, $9D   ; 
- D 1 - I - 0x00B293 02:B283: 7A        .byte $7A, $9D   ; 
- D 1 - I - 0x00B295 02:B285: 8B        .byte $8B, $9D   ; 

- D 1 - I - 0x00B297 02:B287: 00        .byte $00   ; end token



_off007_04_B288_06:
- D 1 - I - 0x00B298 02:B288: 9D        .byte $9D, $A4   ; 
- D 1 - I - 0x00B29A 02:B28A: BF        .byte $BF, $9E   ; 
- D 1 - I - 0x00B29C 02:B28C: D4        .byte $D4, $92   ; 
- D 1 - I - 0x00B29E 02:B28E: E3        .byte $E3, $89   ; 
- D 1 - I - 0x00B2A0 02:B290: E8        .byte $E8, $78   ; 
- D 1 - I - 0x00B2A2 02:B292: DF        .byte $DF, $6B   ; 
- D 1 - I - 0x00B2A4 02:B294: D1        .byte $D1, $5A   ; 
- D 1 - I - 0x00B2A6 02:B296: BE        .byte $BE, $45   ; 
- D 1 - I - 0x00B2A8 02:B298: AD        .byte $AD, $33   ; 
- D 1 - I - 0x00B2AA 02:B29A: 9B        .byte $9B, $22   ; 
- D 1 - I - 0x00B2AC 02:B29C: 8B        .byte $8B, $14   ; 
- D 1 - I - 0x00B2AE 02:B29E: 7C        .byte $7C, $15   ; 
- D 1 - I - 0x00B2B0 02:B2A0: 6E        .byte $6E, $1F   ; 
- D 1 - I - 0x00B2B2 02:B2A2: 63        .byte $63, $29   ; 
- D 1 - I - 0x00B2B4 02:B2A4: 57        .byte $57, $37   ; 
- D 1 - I - 0x00B2B6 02:B2A6: 49        .byte $49, $43   ; 
- D 1 - I - 0x00B2B8 02:B2A8: 3F        .byte $3F, $4F   ; 
- D 1 - I - 0x00B2BA 02:B2AA: 31        .byte $31, $5E   ; 
- D 1 - I - 0x00B2BC 02:B2AC: 24        .byte $24, $6C   ; 
- D 1 - I - 0x00B2BE 02:B2AE: 1A        .byte $1A, $7E   ; 
- D 1 - I - 0x00B2C0 02:B2B0: 1D        .byte $1D, $90   ; 
- D 1 - I - 0x00B2C2 02:B2B2: 2A        .byte $2A, $9C   ; 
- D 1 - I - 0x00B2C4 02:B2B4: 3D        .byte $3D, $A2   ; 
- D 1 - I - 0x00B2C6 02:B2B6: 50        .byte $50, $A4   ; 
- D 1 - I - 0x00B2C8 02:B2B8: 5E        .byte $5E, $A3   ; 
- D 1 - I - 0x00B2CA 02:B2BA: 6F        .byte $6F, $A2   ; 
- D 1 - I - 0x00B2CC 02:B2BC: 86        .byte $86, $A3   ; 

- D 1 - I - 0x00B2CE 02:B2BE: 00        .byte $00   ; end token



_off007_04_B2BF_08:
- D 1 - I - 0x00B2CF 02:B2BF: 9D        .byte $9D, $A6   ; 
- D 1 - I - 0x00B2D1 02:B2C1: BB        .byte $BB, $A1   ; 
- D 1 - I - 0x00B2D3 02:B2C3: D3        .byte $D3, $9A   ; 
- D 1 - I - 0x00B2D5 02:B2C5: E7        .byte $E7, $8C   ; 
- D 1 - I - 0x00B2D7 02:B2C7: ED        .byte $ED, $7D   ; 
- D 1 - I - 0x00B2D9 02:B2C9: E5        .byte $E5, $6B   ; 
- D 1 - I - 0x00B2DB 02:B2CB: D6        .byte $D6, $5A   ; 
- D 1 - I - 0x00B2DD 02:B2CD: C2        .byte $C2, $45   ; 
- D 1 - I - 0x00B2DF 02:B2CF: B1        .byte $B1, $33   ; 
- D 1 - I - 0x00B2E1 02:B2D1: 9E        .byte $9E, $22   ; 
- D 1 - I - 0x00B2E3 02:B2D3: 8F        .byte $8F, $11   ; 
- D 1 - I - 0x00B2E5 02:B2D5: 7C        .byte $7C, $12   ; 
- D 1 - I - 0x00B2E7 02:B2D7: 69        .byte $69, $1F   ; 
- D 1 - I - 0x00B2E9 02:B2D9: 60        .byte $60, $29   ; 
- D 1 - I - 0x00B2EB 02:B2DB: 53        .byte $53, $37   ; 
- D 1 - I - 0x00B2ED 02:B2DD: 45        .byte $45, $43   ; 
- D 1 - I - 0x00B2EF 02:B2DF: 3B        .byte $3B, $4F   ; 
- D 1 - I - 0x00B2F1 02:B2E1: 2C        .byte $2C, $5E   ; 
- D 1 - I - 0x00B2F3 02:B2E3: 1D        .byte $1D, $6C   ; 
- D 1 - I - 0x00B2F5 02:B2E5: 13        .byte $13, $7E   ; 
- D 1 - I - 0x00B2F7 02:B2E7: 16        .byte $16, $90   ; 
- D 1 - I - 0x00B2F9 02:B2E9: 24        .byte $24, $9C   ; 
- D 1 - I - 0x00B2FB 02:B2EB: 3D        .byte $3D, $A4   ; 
- D 1 - I - 0x00B2FD 02:B2ED: 50        .byte $50, $A7   ; 
- D 1 - I - 0x00B2FF 02:B2EF: 5E        .byte $5E, $A7   ; 
- D 1 - I - 0x00B301 02:B2F1: 6F        .byte $6F, $A7   ; 
- D 1 - I - 0x00B303 02:B2F3: 86        .byte $86, $A7   ; 

- D 1 - I - 0x00B305 02:B2F5: 00        .byte $00   ; end token



_off007_04_B2F6_0A:
- D 1 - I - 0x00B306 02:B2F6: 11        .byte $11   ; 
- - - - - - 0x00B307 02:B2F7: 11        .byte $11   ; 
- - - - - - 0x00B308 02:B2F8: 11        .byte $11   ; 
- - - - - - 0x00B309 02:B2F9: 11        .byte $11   ; 
- - - - - - 0x00B30A 02:B2FA: 11        .byte $11   ; 
- D 1 - I - 0x00B30B 02:B2FB: 11        .byte $11   ; 
- - - - - - 0x00B30C 02:B2FC: 11        .byte $11   ; 
- - - - - - 0x00B30D 02:B2FD: 11        .byte $11   ; 
- - - - - - 0x00B30E 02:B2FE: 12        .byte $12   ; 
- D 1 - I - 0x00B30F 02:B2FF: 11        .byte $11   ; 
- - - - - - 0x00B310 02:B300: 12        .byte $12   ; 
- - - - - - 0x00B311 02:B301: 11        .byte $11   ; 
- - - - - - 0x00B312 02:B302: 81        .byte $81   ; 
- - - - - - 0x00B313 02:B303: 12        .byte $12   ; 
- - - - - - 0x00B314 02:B304: 12        .byte $12   ; 
- - - - - - 0x00B315 02:B305: 81        .byte $81   ; 
- - - - - - 0x00B316 02:B306: 12        .byte $12   ; 
- - - - - - 0x00B317 02:B307: 11        .byte $11   ; 
- - - - - - 0x00B318 02:B308: 81        .byte $81   ; 
- - - - - - 0x00B319 02:B309: 11        .byte $11   ; 
- - - - - - 0x00B31A 02:B30A: 11        .byte $11   ; 
- - - - - - 0x00B31B 02:B30B: 81        .byte $81   ; 
- - - - - - 0x00B31C 02:B30C: 11        .byte $11   ; 
- - - - - - 0x00B31D 02:B30D: 11        .byte $11   ; 
- - - - - - 0x00B31E 02:B30E: 81        .byte $81   ; 
- - - - - - 0x00B31F 02:B30F: 81        .byte $81   ; 
- - - - - - 0x00B320 02:B310: 11        .byte $11   ; 
- - - - - - 0x00B321 02:B311: 81        .byte $81   ; 
- - - - - - 0x00B322 02:B312: 11        .byte $11   ; 
- - - - - - 0x00B323 02:B313: 11        .byte $11   ; 
- - - - - - 0x00B324 02:B314: 81        .byte $81   ; 
- - - - - - 0x00B325 02:B315: 11        .byte $11   ; 
- D 1 - I - 0x00B326 02:B316: 12        .byte $12   ; 
- - - - - - 0x00B327 02:B317: 82        .byte $82   ; 
- - - - - - 0x00B328 02:B318: 11        .byte $11   ; 
- - - - - - 0x00B329 02:B319: 12        .byte $12   ; 
- D 1 - I - 0x00B32A 02:B31A: 82        .byte $82   ; 
- D 1 - I - 0x00B32B 02:B31B: 11        .byte $11   ; 
- - - - - - 0x00B32C 02:B31C: 12        .byte $12   ; 
- - - - - - 0x00B32D 02:B31D: 81        .byte $81   ; 
- - - - - - 0x00B32E 02:B31E: 11        .byte $11   ; 
- - - - - - 0x00B32F 02:B31F: 11        .byte $11   ; 
- D 1 - I - 0x00B330 02:B320: 81        .byte $81   ; 
- D 1 - I - 0x00B331 02:B321: 11        .byte $11   ; 
- - - - - - 0x00B332 02:B322: 11        .byte $11   ; 
- - - - - - 0x00B333 02:B323: 11        .byte $11   ; 
- - - - - - 0x00B334 02:B324: 11        .byte $11   ; 
- - - - - - 0x00B335 02:B325: 11        .byte $11   ; 
- D 1 - I - 0x00B336 02:B326: 11        .byte $11   ; 
- - - - - - 0x00B337 02:B327: 11        .byte $11   ; 
- - - - - - 0x00B338 02:B328: 11        .byte $11   ; 
- - - - - - 0x00B339 02:B329: 11        .byte $11   ; 
- D 1 - I - 0x00B33A 02:B32A: 11        .byte $11   ; 
- - - - - - 0x00B33B 02:B32B: 11        .byte $11   ; 
- - - - - - 0x00B33C 02:B32C: 11        .byte $11   ; 
- D 1 - I - 0x00B33D 02:B32D: 11        .byte $11   ; 
- - - - - - 0x00B33E 02:B32E: 11        .byte $11   ; 
- D 1 - I - 0x00B33F 02:B32F: 11        .byte $11   ; 
- D 1 - I - 0x00B340 02:B330: 11        .byte $11   ; 
- - - - - - 0x00B341 02:B331: 11        .byte $11   ; 
- - - - - - 0x00B342 02:B332: 11        .byte $11   ; 
- D 1 - I - 0x00B343 02:B333: 22        .byte $22   ; 
- D 1 - I - 0x00B344 02:B334: 11        .byte $11   ; 
- - - - - - 0x00B345 02:B335: 11        .byte $11   ; 
- - - - - - 0x00B346 02:B336: 12        .byte $12   ; 
- - - - - - 0x00B347 02:B337: 11        .byte $11   ; 
- D 1 - I - 0x00B348 02:B338: 81        .byte $81   ; 
- - - - - - 0x00B349 02:B339: 12        .byte $12   ; 
- - - - - - 0x00B34A 02:B33A: 12        .byte $12   ; 
- - - - - - 0x00B34B 02:B33B: 11        .byte $11   ; 
- - - - - - 0x00B34C 02:B33C: 12        .byte $12   ; 
- D 1 - I - 0x00B34D 02:B33D: 21        .byte $21   ; 
- D 1 - I - 0x00B34E 02:B33E: 11        .byte $11   ; 
- - - - - - 0x00B34F 02:B33F: 12        .byte $12   ; 
- - - - - - 0x00B350 02:B340: 11        .byte $11   ; 
- - - - - - 0x00B351 02:B341: 11        .byte $11   ; 
- - - - - - 0x00B352 02:B342: 11        .byte $11   ; 
- - - - - - 0x00B353 02:B343: 11        .byte $11   ; 
- - - - - - 0x00B354 02:B344: 11        .byte $11   ; 
- D 1 - I - 0x00B355 02:B345: 11        .byte $11   ; 
- - - - - - 0x00B356 02:B346: 11        .byte $11   ; 



_off006_B347_05:
- D 1 - I - 0x00B357 02:B347: 54 B3     .word _off007_05_B354_00
- D 1 - I - 0x00B359 02:B349: 69 B3     .word _off007_05_B369_02
- D 1 - I - 0x00B35B 02:B34B: AC B3     .word _off007_05_B3AC_04
- D 1 - I - 0x00B35D 02:B34D: EF B3     .word _off007_05_B3EF_06
- D 1 - I - 0x00B35F 02:B34F: 32 B4     .word _off007_05_B432_08
- D 1 - I - 0x00B361 02:B351: 75 B4     .word _off007_05_B475_0A
- D 1 - I - 0x00B363 02:B353: 13        .byte $13   ; 



_off007_05_B354_00:
- D 1 - I - 0x00B364 02:B354: A4        .byte $A4, $9D   ; 
- D 1 - I - 0x00B366 02:B356: 9A        .byte $9A, $9D   ; 
- D 1 - I - 0x00B368 02:B358: 8D        .byte $8D, $9D   ; 
- D 1 - I - 0x00B36A 02:B35A: 81        .byte $81, $9D   ; 
- D 1 - I - 0x00B36C 02:B35C: 76        .byte $76, $9D   ; 
- D 1 - I - 0x00B36E 02:B35E: 65        .byte $65, $9D   ; 
- D 1 - I - 0x00B370 02:B360: 57        .byte $57, $9D   ; 
- D 1 - I - 0x00B372 02:B362: 47        .byte $47, $9D   ; 

- D 1 - I - 0x00B374 02:B364: 00        .byte $00   ; end token


- - - - - - 0x00B375 02:B365: 06        .byte $06   ; ??? 0x00A335
- D 1 - I - 0x00B376 02:B366: 06        .byte $06   ; 
- D 1 - I - 0x00B377 02:B367: 06        .byte $06   ; 
- D 1 - I - 0x00B378 02:B368: 06        .byte $06   ; 



_off007_05_B369_02:
- D 1 - I - 0x00B379 02:B369: 5E        .byte $5E, $7D   ; 
- D 1 - I - 0x00B37B 02:B36B: 4E        .byte $4E, $82   ; 
- D 1 - I - 0x00B37D 02:B36D: 43        .byte $43, $94   ; 
- D 1 - I - 0x00B37F 02:B36F: 32        .byte $32, $A1   ; 
- D 1 - I - 0x00B381 02:B371: 0E        .byte $0E, $A3   ; 
- D 1 - I - 0x00B383 02:B373: 03        .byte $03, $93   ; 
- D 1 - I - 0x00B385 02:B375: 04        .byte $04, $78   ; 
- D 1 - I - 0x00B387 02:B377: 04        .byte $04, $67   ; 
- D 1 - I - 0x00B389 02:B379: 09        .byte $09, $58   ; 
- D 1 - I - 0x00B38B 02:B37B: 15        .byte $15, $4C   ; 
- D 1 - I - 0x00B38D 02:B37D: 23        .byte $23, $3F   ; 
- D 1 - I - 0x00B38F 02:B37F: 39        .byte $39, $34   ; 
- D 1 - I - 0x00B391 02:B381: 51        .byte $51, $29   ; 
- D 1 - I - 0x00B393 02:B383: 63        .byte $63, $20   ; 
- D 1 - I - 0x00B395 02:B385: 77        .byte $77, $1C   ; 
- D 1 - I - 0x00B397 02:B387: 95        .byte $95, $1C   ; 
- D 1 - I - 0x00B399 02:B389: B2        .byte $B2, $1C   ; 
- D 1 - I - 0x00B39B 02:B38B: CE        .byte $CE, $1C   ; 
- D 1 - I - 0x00B39D 02:B38D: EB        .byte $EB, $20   ; 
- D 1 - I - 0x00B39F 02:B38F: F7        .byte $F7, $2E   ; 
- D 1 - I - 0x00B3A1 02:B391: FA        .byte $FA, $44   ; 
- D 1 - I - 0x00B3A3 02:B393: FA        .byte $FA, $58   ; 
- D 1 - I - 0x00B3A5 02:B395: F8        .byte $F8, $6D   ; 
- D 1 - I - 0x00B3A7 02:B397: F8        .byte $F8, $7E   ; 
- D 1 - I - 0x00B3A9 02:B399: F3        .byte $F3, $90   ; 
- D 1 - I - 0x00B3AB 02:B39B: E8        .byte $E8, $9D   ; 
- D 1 - I - 0x00B3AD 02:B39D: CA        .byte $CA, $A2   ; 
- D 1 - I - 0x00B3AF 02:B39F: B9        .byte $B9, $9F   ; 
- D 1 - I - 0x00B3B1 02:B3A1: AB        .byte $AB, $8F   ; 
- D 1 - I - 0x00B3B3 02:B3A3: AA        .byte $AA, $83   ; 
- D 1 - I - 0x00B3B5 02:B3A5: 9E        .byte $9E, $7B   ; 
- D 1 - I - 0x00B3B7 02:B3A7: 84        .byte $84, $7D   ; 
- D 1 - I - 0x00B3B9 02:B3A9: 70        .byte $70, $7D   ; 

- D 1 - I - 0x00B3BB 02:B3AB: 00        .byte $00   ; end token



_off007_05_B3AC_04:
- D 1 - I - 0x00B3BC 02:B3AC: 5E        .byte $5E, $71   ; 
- D 1 - I - 0x00B3BE 02:B3AE: 50        .byte $50, $75   ; 
- D 1 - I - 0x00B3C0 02:B3B0: 3A        .byte $3A, $81   ; 
- D 1 - I - 0x00B3C2 02:B3B2: 27        .byte $27, $93   ; 
- D 1 - I - 0x00B3C4 02:B3B4: 0E        .byte $0E, $8D   ; 
- D 1 - I - 0x00B3C6 02:B3B6: 0F        .byte $0F, $7D   ; 
- D 1 - I - 0x00B3C8 02:B3B8: 1F        .byte $1F, $69   ; 
- D 1 - I - 0x00B3CA 02:B3BA: 2E        .byte $2E, $5E   ; 
- D 1 - I - 0x00B3CC 02:B3BC: 3F        .byte $3F, $55   ; 
- D 1 - I - 0x00B3CE 02:B3BE: 4F        .byte $4F, $4C   ; 
- D 1 - I - 0x00B3D0 02:B3C0: 5D        .byte $5D, $46   ; 
- D 1 - I - 0x00B3D2 02:B3C2: 6B        .byte $6B, $3F   ; 
- D 1 - I - 0x00B3D4 02:B3C4: 79        .byte $79, $38   ; 
- D 1 - I - 0x00B3D6 02:B3C6: 88        .byte $88, $39   ; 
- D 1 - I - 0x00B3D8 02:B3C8: 93        .byte $93, $47   ; 
- D 1 - I - 0x00B3DA 02:B3CA: A4        .byte $A4, $57   ; 
- D 1 - I - 0x00B3DC 02:B3CC: BF        .byte $BF, $57   ; 
- D 1 - I - 0x00B3DE 02:B3CE: C9        .byte $C9, $41   ; 
- D 1 - I - 0x00B3E0 02:B3D0: DB        .byte $DB, $2F   ; 
- D 1 - I - 0x00B3E2 02:B3D2: ED        .byte $ED, $35   ; 
- D 1 - I - 0x00B3E4 02:B3D4: EF        .byte $EF, $45   ; 
- D 1 - I - 0x00B3E6 02:B3D6: EE        .byte $EE, $55   ; 
- D 1 - I - 0x00B3E8 02:B3D8: EA        .byte $EA, $62   ; 
- D 1 - I - 0x00B3EA 02:B3DA: E3        .byte $E3, $7B   ; 
- D 1 - I - 0x00B3EC 02:B3DC: DC        .byte $DC, $8F   ; 
- D 1 - I - 0x00B3EE 02:B3DE: C2        .byte $C2, $90   ; 
- D 1 - I - 0x00B3F0 02:B3E0: B5        .byte $B5, $87   ; 
- D 1 - I - 0x00B3F2 02:B3E2: B2        .byte $B2, $79   ; 
- D 1 - I - 0x00B3F4 02:B3E4: A6        .byte $A6, $72   ; 
- D 1 - I - 0x00B3F6 02:B3E6: 95        .byte $95, $72   ; 
- D 1 - I - 0x00B3F8 02:B3E8: 86        .byte $86, $71   ; 
- D 1 - I - 0x00B3FA 02:B3EA: 78        .byte $78, $71   ; 
- D 1 - I - 0x00B3FC 02:B3EC: 6C        .byte $6C, $71   ; 

- D 1 - I - 0x00B3FE 02:B3EE: 00        .byte $00   ; end token



_off007_05_B3EF_06:
- D 1 - I - 0x00B3FF 02:B3EF: 5E        .byte $5E, $78   ; 
- D 1 - I - 0x00B401 02:B3F1: 4D        .byte $4D, $7F   ; 
- D 1 - I - 0x00B403 02:B3F3: 3B        .byte $3B, $90   ; 
- D 1 - I - 0x00B405 02:B3F5: 20        .byte $20, $96   ; 
- D 1 - I - 0x00B407 02:B3F7: 0C        .byte $0C, $90   ; 
- D 1 - I - 0x00B409 02:B3F9: 09        .byte $09, $7F   ; 
- D 1 - I - 0x00B40B 02:B3FB: 0D        .byte $0D, $6F   ; 
- D 1 - I - 0x00B40D 02:B3FD: 1B        .byte $1B, $5B   ; 
- D 1 - I - 0x00B40F 02:B3FF: 30        .byte $30, $4E   ; 
- D 1 - I - 0x00B411 02:B401: 46        .byte $46, $42   ; 
- D 1 - I - 0x00B413 02:B403: 57        .byte $57, $3A   ; 
- D 1 - I - 0x00B415 02:B405: 66        .byte $66, $32   ; 
- D 1 - I - 0x00B417 02:B407: 79        .byte $79, $2A   ; 
- D 1 - I - 0x00B419 02:B409: 88        .byte $88, $2C   ; 
- D 1 - I - 0x00B41B 02:B40B: 95        .byte $95, $34   ; 
- D 1 - I - 0x00B41D 02:B40D: 9C        .byte $9C, $44   ; 
- D 1 - I - 0x00B41F 02:B40F: AD        .byte $AD, $52   ; 
- D 1 - I - 0x00B421 02:B411: C4        .byte $C4, $4C   ; 
- D 1 - I - 0x00B423 02:B413: D1        .byte $D1, $3B   ; 
- D 1 - I - 0x00B425 02:B415: DD        .byte $DD, $2C   ; 
- D 1 - I - 0x00B427 02:B417: EB        .byte $EB, $30   ; 
- D 1 - I - 0x00B429 02:B419: F0        .byte $F0, $3C   ; 
- D 1 - I - 0x00B42B 02:B41B: F5        .byte $F5, $55   ; 
- D 1 - I - 0x00B42D 02:B41D: F1        .byte $F1, $6B   ; 
- D 1 - I - 0x00B42F 02:B41F: ED        .byte $ED, $82   ; 
- D 1 - I - 0x00B431 02:B421: E3        .byte $E3, $93   ; 
- D 1 - I - 0x00B433 02:B423: CF        .byte $CF, $99   ; 
- D 1 - I - 0x00B435 02:B425: B6        .byte $B6, $96   ; 
- D 1 - I - 0x00B437 02:B427: AF        .byte $AF, $85   ; 
- D 1 - I - 0x00B439 02:B429: A1        .byte $A1, $79   ; 
- D 1 - I - 0x00B43B 02:B42B: 8E        .byte $8E, $78   ; 
- D 1 - I - 0x00B43D 02:B42D: 7D        .byte $7D, $77   ; 
- D 1 - I - 0x00B43F 02:B42F: 6E        .byte $6E, $77   ; 

- D 1 - I - 0x00B441 02:B431: 00        .byte $00   ; end token



_off007_05_B432_08:
- D 1 - I - 0x00B442 02:B432: 52        .byte $52, $7C   ; 
- D 1 - I - 0x00B444 02:B434: 4A        .byte $4A, $88   ; 
- D 1 - I - 0x00B446 02:B436: 37        .byte $37, $95   ; 
- D 1 - I - 0x00B448 02:B438: 1A        .byte $1A, $99   ; 
- D 1 - I - 0x00B44A 02:B43A: 06        .byte $06, $94   ; 
- D 1 - I - 0x00B44C 02:B43C: 06        .byte $06, $79   ; 
- D 1 - I - 0x00B44E 02:B43E: 09        .byte $09, $69   ; 
- D 1 - I - 0x00B450 02:B440: 1B        .byte $1B, $56   ; 
- D 1 - I - 0x00B452 02:B442: 29        .byte $29, $44   ; 
- D 1 - I - 0x00B454 02:B444: 3D        .byte $3D, $3E   ; 
- D 1 - I - 0x00B456 02:B446: 50        .byte $50, $35   ; 
- D 1 - I - 0x00B458 02:B448: 5F        .byte $5F, $2D   ; 
- D 1 - I - 0x00B45A 02:B44A: 7D        .byte $7D, $22   ; 
- D 1 - I - 0x00B45C 02:B44C: 91        .byte $91, $27   ; 
- D 1 - I - 0x00B45E 02:B44E: A1        .byte $A1, $34   ; 
- D 1 - I - 0x00B460 02:B450: A6        .byte $A6, $44   ; 
- D 1 - I - 0x00B462 02:B452: B9        .byte $B9, $46   ; 
- D 1 - I - 0x00B464 02:B454: CA        .byte $CA, $3D   ; 
- D 1 - I - 0x00B466 02:B456: D4        .byte $D4, $31   ; 
- D 1 - I - 0x00B468 02:B458: DD        .byte $DD, $27   ; 
- D 1 - I - 0x00B46A 02:B45A: F1        .byte $F1, $29   ; 
- D 1 - I - 0x00B46C 02:B45C: F9        .byte $F9, $3B   ; 
- D 1 - I - 0x00B46E 02:B45E: F9        .byte $F9, $4B   ; 
- D 1 - I - 0x00B470 02:B460: F9        .byte $F9, $64   ; 
- D 1 - I - 0x00B472 02:B462: F7        .byte $F7, $82   ; 
- D 1 - I - 0x00B474 02:B464: ED        .byte $ED, $95   ; 
- D 1 - I - 0x00B476 02:B466: D9        .byte $D9, $A1   ; 
- D 1 - I - 0x00B478 02:B468: BD        .byte $BD, $9C   ; 
- D 1 - I - 0x00B47A 02:B46A: AB        .byte $AB, $8A   ; 
- D 1 - I - 0x00B47C 02:B46C: A3        .byte $A3, $7D   ; 
- D 1 - I - 0x00B47E 02:B46E: 8E        .byte $8E, $7B   ; 
- D 1 - I - 0x00B480 02:B470: 7D        .byte $7D, $7C   ; 
- D 1 - I - 0x00B482 02:B472: 6A        .byte $6A, $7C   ; 

- D 1 - I - 0x00B484 02:B474: 00        .byte $00   ; end token



_off007_05_B475_0A:
- - - - - - 0x00B485 02:B475: 81        .byte $81   ; 
- - - - - - 0x00B486 02:B476: 18        .byte $18   ; 
- D 1 - I - 0x00B487 02:B477: 22        .byte $22   ; 
- - - - - - 0x00B488 02:B478: 11        .byte $11   ; 
- - - - - - 0x00B489 02:B479: 11        .byte $11   ; 
- D 1 - I - 0x00B48A 02:B47A: 11        .byte $11   ; 
- - - - - - 0x00B48B 02:B47B: 11        .byte $11   ; 
- - - - - - 0x00B48C 02:B47C: 11        .byte $11   ; 
- - - - - - 0x00B48D 02:B47D: 11        .byte $11   ; 
- D 1 - I - 0x00B48E 02:B47E: 81        .byte $81   ; 
- - - - - - 0x00B48F 02:B47F: 11        .byte $11   ; 
- - - - - - 0x00B490 02:B480: 12        .byte $12   ; 
- - - - - - 0x00B491 02:B481: 81        .byte $81   ; 
- - - - - - 0x00B492 02:B482: 11        .byte $11   ; 
- - - - - - 0x00B493 02:B483: 12        .byte $12   ; 
- - - - - - 0x00B494 02:B484: 81        .byte $81   ; 
- - - - - - 0x00B495 02:B485: 11        .byte $11   ; 
- - - - - - 0x00B496 02:B486: 12        .byte $12   ; 
- D 1 - I - 0x00B497 02:B487: 81        .byte $81   ; 
- - - - - - 0x00B498 02:B488: 11        .byte $11   ; 
- - - - - - 0x00B499 02:B489: 12        .byte $12   ; 
- - - - - - 0x00B49A 02:B48A: 81        .byte $81   ; 
- - - - - - 0x00B49B 02:B48B: 11        .byte $11   ; 
- - - - - - 0x00B49C 02:B48C: 13        .byte $13   ; 
- - - - - - 0x00B49D 02:B48D: 91        .byte $91   ; 
- - - - - - 0x00B49E 02:B48E: 11        .byte $11   ; 
- - - - - - 0x00B49F 02:B48F: 13        .byte $13   ; 
- - - - - - 0x00B4A0 02:B490: 91        .byte $91   ; 
- - - - - - 0x00B4A1 02:B491: 11        .byte $11   ; 
- - - - - - 0x00B4A2 02:B492: 13        .byte $13   ; 
- - - - - - 0x00B4A3 02:B493: 91        .byte $91   ; 
- - - - - - 0x00B4A4 02:B494: 11        .byte $11   ; 
- - - - - - 0x00B4A5 02:B495: 13        .byte $13   ; 
- - - - - - 0x00B4A6 02:B496: 81        .byte $81   ; 
- D 1 - I - 0x00B4A7 02:B497: 11        .byte $11   ; 
- - - - - - 0x00B4A8 02:B498: 13        .byte $13   ; 
- - - - - - 0x00B4A9 02:B499: 81        .byte $81   ; 
- - - - - - 0x00B4AA 02:B49A: 11        .byte $11   ; 
- - - - - - 0x00B4AB 02:B49B: 13        .byte $13   ; 
- - - - - - 0x00B4AC 02:B49C: 92        .byte $92   ; 
- - - - - - 0x00B4AD 02:B49D: 11        .byte $11   ; 
- - - - - - 0x00B4AE 02:B49E: 13        .byte $13   ; 
- - - - - - 0x00B4AF 02:B49F: 92        .byte $92   ; 
- - - - - - 0x00B4B0 02:B4A0: 81        .byte $81   ; 
- - - - - - 0x00B4B1 02:B4A1: 10        .byte $10   ; 
- - - - - - 0x00B4B2 02:B4A2: 02        .byte $02   ; 
- - - - - - 0x00B4B3 02:B4A3: 81        .byte $81   ; 
- - - - - - 0x00B4B4 02:B4A4: 10        .byte $10   ; 
- - - - - - 0x00B4B5 02:B4A5: 01        .byte $01   ; 
- - - - - - 0x00B4B6 02:B4A6: 88        .byte $88   ; 
- - - - - - 0x00B4B7 02:B4A7: 20        .byte $20   ; 
- - - - - - 0x00B4B8 02:B4A8: 01        .byte $01   ; 
- - - - - - 0x00B4B9 02:B4A9: 88        .byte $88   ; 
- - - - - - 0x00B4BA 02:B4AA: 20        .byte $20   ; 
- - - - - - 0x00B4BB 02:B4AB: 22        .byte $22   ; 
- - - - - - 0x00B4BC 02:B4AC: 88        .byte $88   ; 
- - - - - - 0x00B4BD 02:B4AD: 21        .byte $21   ; 
- - - - - - 0x00B4BE 02:B4AE: 23        .byte $23   ; 
- - - - - - 0x00B4BF 02:B4AF: 81        .byte $81   ; 
- - - - - - 0x00B4C0 02:B4B0: 18        .byte $18   ; 
- - - - - - 0x00B4C1 02:B4B1: 32        .byte $32   ; 
- - - - - - 0x00B4C2 02:B4B2: 81        .byte $81   ; 
- - - - - - 0x00B4C3 02:B4B3: 18        .byte $18   ; 
- - - - - - 0x00B4C4 02:B4B4: 32        .byte $32   ; 
- - - - - - 0x00B4C5 02:B4B5: 81        .byte $81   ; 
- - - - - - 0x00B4C6 02:B4B6: 18        .byte $18   ; 
- - - - - - 0x00B4C7 02:B4B7: 22        .byte $22   ; 
- - - - - - 0x00B4C8 02:B4B8: 81        .byte $81   ; 
- - - - - - 0x00B4C9 02:B4B9: 18        .byte $18   ; 
- - - - - - 0x00B4CA 02:B4BA: 22        .byte $22   ; 
- D 1 - I - 0x00B4CB 02:B4BB: 81        .byte $81   ; 
- - - - - - 0x00B4CC 02:B4BC: 18        .byte $18   ; 
- - - - - - 0x00B4CD 02:B4BD: 22        .byte $22   ; 
- - - - - - 0x00B4CE 02:B4BE: 81        .byte $81   ; 
- - - - - - 0x00B4CF 02:B4BF: 18        .byte $18   ; 
- - - - - - 0x00B4D0 02:B4C0: 13        .byte $13   ; 
- - - - - - 0x00B4D1 02:B4C1: 81        .byte $81   ; 
- - - - - - 0x00B4D2 02:B4C2: 18        .byte $18   ; 
- - - - - - 0x00B4D3 02:B4C3: 13        .byte $13   ; 
- - - - - - 0x00B4D4 02:B4C4: 91        .byte $91   ; 
- - - - - - 0x00B4D5 02:B4C5: 18        .byte $18   ; 
- D 1 - I - 0x00B4D6 02:B4C6: 12        .byte $12   ; 
- - - - - - 0x00B4D7 02:B4C7: 91        .byte $91   ; 
- - - - - - 0x00B4D8 02:B4C8: 11        .byte $11   ; 
- D 1 - I - 0x00B4D9 02:B4C9: 12        .byte $12   ; 
- - - - - - 0x00B4DA 02:B4CA: 81        .byte $81   ; 
- - - - - - 0x00B4DB 02:B4CB: 12        .byte $12   ; 
- - - - - - 0x00B4DC 02:B4CC: 12        .byte $12   ; 
- - - - - - 0x00B4DD 02:B4CD: 81        .byte $81   ; 
- - - - - - 0x00B4DE 02:B4CE: 12        .byte $12   ; 
- - - - - - 0x00B4DF 02:B4CF: 12        .byte $12   ; 
- D 1 - I - 0x00B4E0 02:B4D0: 81        .byte $81   ; 
- D 1 - I - 0x00B4E1 02:B4D1: 11        .byte $11   ; 
- - - - - - 0x00B4E2 02:B4D2: 11        .byte $11   ; 
- D 1 - I - 0x00B4E3 02:B4D3: 11        .byte $11   ; 
- - - - - - 0x00B4E4 02:B4D4: 11        .byte $11   ; 
- - - - - - 0x00B4E5 02:B4D5: 81        .byte $81   ; 
- - - - - - 0x00B4E6 02:B4D6: 81        .byte $81   ; 
- - - - - - 0x00B4E7 02:B4D7: 11        .byte $11   ; 



_off006_B4D8_06:
- D 1 - I - 0x00B4E8 02:B4D8: E5 B4     .word _off007_06_B4E5_00
- D 1 - I - 0x00B4EA 02:B4DA: FA B4     .word _off007_06_B4FA_02
- D 1 - I - 0x00B4EC 02:B4DC: 49 B5     .word _off007_06_B549_04
- D 1 - I - 0x00B4EE 02:B4DE: 98 B5     .word _off007_06_B598_06
- D 1 - I - 0x00B4F0 02:B4E0: E7 B5     .word _off007_06_B5E7_08
- D 1 - I - 0x00B4F2 02:B4E2: 36 B6     .word _off007_06_B636_0A
- D 1 - I - 0x00B4F4 02:B4E4: 1C        .byte $1C   ; 



_off007_06_B4E5_00:
- D 1 - I - 0x00B4F5 02:B4E5: 8F        .byte $8F, $5E   ; 
- D 1 - I - 0x00B4F7 02:B4E7: 88        .byte $88, $6D   ; 
- D 1 - I - 0x00B4F9 02:B4E9: 8B        .byte $8B, $78   ; 
- D 1 - I - 0x00B4FB 02:B4EB: 9E        .byte $9E, $7A   ; 
- D 1 - I - 0x00B4FD 02:B4ED: AA        .byte $AA, $7A   ; 
- D 1 - I - 0x00B4FF 02:B4EF: B8        .byte $B8, $7A   ; 
- D 1 - I - 0x00B501 02:B4F1: C3        .byte $C3, $7A   ; 
- D 1 - I - 0x00B503 02:B4F3: CE        .byte $CE, $7D   ; 

- D 1 - I - 0x00B505 02:B4F5: 00        .byte $00   ; end token

- D 1 - I - 0x00B506 02:B4F6: 08        .byte $08   ; ??? 0x00A335
- D 1 - I - 0x00B507 02:B4F7: 08        .byte $08   ; 
- D 1 - I - 0x00B508 02:B4F8: 08        .byte $08   ; 
- D 1 - I - 0x00B509 02:B4F9: 08        .byte $08   ; 



_off007_06_B4FA_02:
- D 1 - I - 0x00B50A 02:B4FA: DE        .byte $DE, $52   ; 
- D 1 - I - 0x00B50C 02:B4FC: F1        .byte $F1, $55   ; 
- D 1 - I - 0x00B50E 02:B4FE: F1        .byte $F1, $69   ; 
- D 1 - I - 0x00B510 02:B500: EE        .byte $EE, $78   ; 
- D 1 - I - 0x00B512 02:B502: E4        .byte $E4, $8C   ; 
- D 1 - I - 0x00B514 02:B504: DD        .byte $DD, $9B   ; 
- D 1 - I - 0x00B516 02:B506: CC        .byte $CC, $B4   ; 
- D 1 - I - 0x00B518 02:B508: B7        .byte $B7, $B4   ; 
- D 1 - I - 0x00B51A 02:B50A: 9F        .byte $9F, $B4   ; 
- D 1 - I - 0x00B51C 02:B50C: 84        .byte $84, $B4   ; 
- D 1 - I - 0x00B51E 02:B50E: 6A        .byte $6A, $B4   ; 
- D 1 - I - 0x00B520 02:B510: 4E        .byte $4E, $B4   ; 
- D 1 - I - 0x00B522 02:B512: 2E        .byte $2E, $B4   ; 
- D 1 - I - 0x00B524 02:B514: 11        .byte $11, $A9   ; 
- D 1 - I - 0x00B526 02:B516: 0C        .byte $0C, $9C   ; 
- D 1 - I - 0x00B528 02:B518: 12        .byte $12, $8B   ; 
- D 1 - I - 0x00B52A 02:B51A: 21        .byte $21, $78   ; 
- D 1 - I - 0x00B52C 02:B51C: 32        .byte $32, $6F   ; 
- D 1 - I - 0x00B52E 02:B51E: 3D        .byte $3D, $58   ; 
- D 1 - I - 0x00B530 02:B520: 27        .byte $27, $53   ; 
- D 1 - I - 0x00B532 02:B522: 08        .byte $08, $50   ; 
- D 1 - I - 0x00B534 02:B524: 0A        .byte $0A, $46   ; 
- D 1 - I - 0x00B536 02:B526: 13        .byte $13, $2E   ; 
- D 1 - I - 0x00B538 02:B528: 1F        .byte $1F, $15   ; 
- D 1 - I - 0x00B53A 02:B52A: 2D        .byte $2D, $09   ; 
- D 1 - I - 0x00B53C 02:B52C: 40        .byte $40, $07   ; 
- D 1 - I - 0x00B53E 02:B52E: 52        .byte $52, $07   ; 
- D 1 - I - 0x00B540 02:B530: 70        .byte $70, $07   ; 
- D 1 - I - 0x00B542 02:B532: 83        .byte $83, $08   ; 
- D 1 - I - 0x00B544 02:B534: 85        .byte $85, $13   ; 
- D 1 - I - 0x00B546 02:B536: 81        .byte $81, $26   ; 
- D 1 - I - 0x00B548 02:B538: 8D        .byte $8D, $28   ; 
- D 1 - I - 0x00B54A 02:B53A: 9C        .byte $9C, $28   ; 
- D 1 - I - 0x00B54C 02:B53C: B0        .byte $B0, $29   ; 
- D 1 - I - 0x00B54E 02:B53E: AC        .byte $AC, $34   ; 
- D 1 - I - 0x00B550 02:B540: A8        .byte $A8, $3F   ; 
- D 1 - I - 0x00B552 02:B542: AA        .byte $AA, $4C   ; 
- D 1 - I - 0x00B554 02:B544: B8        .byte $B8, $55   ; 
- D 1 - I - 0x00B556 02:B546: C7        .byte $C7, $52   ; 

- D 1 - I - 0x00B558 02:B548: 00        .byte $00   ; end token



_off007_06_B549_04:
- D 1 - I - 0x00B559 02:B549: D9        .byte $D9, $5F   ; 
- D 1 - I - 0x00B55B 02:B54B: E3        .byte $E3, $65   ; 
- D 1 - I - 0x00B55D 02:B54D: DF        .byte $DF, $74   ; 
- D 1 - I - 0x00B55F 02:B54F: D8        .byte $D8, $81   ; 
- D 1 - I - 0x00B561 02:B551: D4        .byte $D4, $8C   ; 
- D 1 - I - 0x00B563 02:B553: CC        .byte $CC, $9B   ; 
- D 1 - I - 0x00B565 02:B555: C5        .byte $C5, $AD   ; 
- D 1 - I - 0x00B567 02:B557: B7        .byte $B7, $AB   ; 
- D 1 - I - 0x00B569 02:B559: 9F        .byte $9F, $AB   ; 
- D 1 - I - 0x00B56B 02:B55B: 84        .byte $84, $AB   ; 
- D 1 - I - 0x00B56D 02:B55D: 6A        .byte $6A, $AB   ; 
- D 1 - I - 0x00B56F 02:B55F: 4E        .byte $4E, $AB   ; 
- D 1 - I - 0x00B571 02:B561: 2E        .byte $2E, $A8   ; 
- D 1 - I - 0x00B573 02:B563: 0D        .byte $0D, $A4   ; 
- D 1 - I - 0x00B575 02:B565: 16        .byte $16, $8F   ; 
- D 1 - I - 0x00B577 02:B567: 21        .byte $21, $7F   ; 
- D 1 - I - 0x00B579 02:B569: 32        .byte $32, $78   ; 
- D 1 - I - 0x00B57B 02:B56B: 41        .byte $41, $6B   ; 
- D 1 - I - 0x00B57D 02:B56D: 44        .byte $44, $56   ; 
- D 1 - I - 0x00B57F 02:B56F: 35        .byte $35, $4A   ; 
- D 1 - I - 0x00B581 02:B571: 18        .byte $18, $46   ; 
- D 1 - I - 0x00B583 02:B573: 1E        .byte $1E, $35   ; 
- D 1 - I - 0x00B585 02:B575: 25        .byte $25, $23   ; 
- D 1 - I - 0x00B587 02:B577: 2E        .byte $2E, $10   ; 
- D 1 - I - 0x00B589 02:B579: 3F        .byte $3F, $11   ; 
- D 1 - I - 0x00B58B 02:B57B: 52        .byte $52, $11   ; 
- D 1 - I - 0x00B58D 02:B57D: 65        .byte $65, $10   ; 
- D 1 - I - 0x00B58F 02:B57F: 79        .byte $79, $16   ; 
- D 1 - I - 0x00B591 02:B581: 7B        .byte $7B, $20   ; 
- D 1 - I - 0x00B593 02:B583: 75        .byte $75, $2C   ; 
- D 1 - I - 0x00B595 02:B585: 7E        .byte $7E, $35   ; 
- D 1 - I - 0x00B597 02:B587: 8D        .byte $8D, $36   ; 
- D 1 - I - 0x00B599 02:B589: 9C        .byte $9C, $38   ; 
- D 1 - I - 0x00B59B 02:B58B: 99        .byte $99, $46   ; 
- D 1 - I - 0x00B59D 02:B58D: 9E        .byte $9E, $53   ; 
- D 1 - I - 0x00B59F 02:B58F: A8        .byte $A8, $59   ; 
- D 1 - I - 0x00B5A1 02:B591: B4        .byte $B4, $5A   ; 
- D 1 - I - 0x00B5A3 02:B593: C2        .byte $C2, $5B   ; 
- D 1 - I - 0x00B5A5 02:B595: CF        .byte $CF, $5C   ; 

- D 1 - I - 0x00B5A7 02:B597: 00        .byte $00   ; end token



_off007_06_B598_06:
- D 1 - I - 0x00B5A8 02:B598: DD        .byte $DD, $5C   ; 
- D 1 - I - 0x00B5AA 02:B59A: E4        .byte $E4, $64   ; 
- D 1 - I - 0x00B5AC 02:B59C: E1        .byte $E1, $70   ; 
- D 1 - I - 0x00B5AE 02:B59E: DB        .byte $DB, $7E   ; 
- D 1 - I - 0x00B5B0 02:B5A0: D5        .byte $D5, $8C   ; 
- D 1 - I - 0x00B5B2 02:B5A2: CE        .byte $CE, $9B   ; 
- D 1 - I - 0x00B5B4 02:B5A4: C6        .byte $C6, $A8   ; 
- D 1 - I - 0x00B5B6 02:B5A6: B7        .byte $B7, $A4   ; 
- D 1 - I - 0x00B5B8 02:B5A8: A5        .byte $A5, $A3   ; 
- D 1 - I - 0x00B5BA 02:B5AA: 90        .byte $90, $A3   ; 
- D 1 - I - 0x00B5BC 02:B5AC: 76        .byte $76, $A3   ; 
- D 1 - I - 0x00B5BE 02:B5AE: 5E        .byte $5E, $A3   ; 
- D 1 - I - 0x00B5C0 02:B5B0: 44        .byte $44, $A3   ; 
- D 1 - I - 0x00B5C2 02:B5B2: 3C        .byte $3C, $99   ; 
- D 1 - I - 0x00B5C4 02:B5B4: 36        .byte $36, $8E   ; 
- D 1 - I - 0x00B5C6 02:B5B6: 35        .byte $35, $83   ; 
- D 1 - I - 0x00B5C8 02:B5B8: 38        .byte $38, $78   ; 
- D 1 - I - 0x00B5CA 02:B5BA: 3F        .byte $3F, $6B   ; 
- D 1 - I - 0x00B5CC 02:B5BC: 46        .byte $46, $5D   ; 
- D 1 - I - 0x00B5CE 02:B5BE: 45        .byte $45, $4F   ; 
- D 1 - I - 0x00B5D0 02:B5C0: 34        .byte $34, $4D   ; 
- D 1 - I - 0x00B5D2 02:B5C2: 1E        .byte $1E, $4C   ; 
- D 1 - I - 0x00B5D4 02:B5C4: 18        .byte $18, $41   ; 
- D 1 - I - 0x00B5D6 02:B5C6: 1E        .byte $1E, $30   ; 
- D 1 - I - 0x00B5D8 02:B5C8: 27        .byte $27, $1E   ; 
- D 1 - I - 0x00B5DA 02:B5CA: 2E        .byte $2E, $10   ; 
- D 1 - I - 0x00B5DC 02:B5CC: 4D        .byte $4D, $10   ; 
- D 1 - I - 0x00B5DE 02:B5CE: 6C        .byte $6C, $11   ; 
- D 1 - I - 0x00B5E0 02:B5D0: 7A        .byte $7A, $18   ; 
- D 1 - I - 0x00B5E2 02:B5D2: 7D        .byte $7D, $27   ; 
- D 1 - I - 0x00B5E4 02:B5D4: 7E        .byte $7E, $33   ; 
- D 1 - I - 0x00B5E6 02:B5D6: 95        .byte $95, $34   ; 
- D 1 - I - 0x00B5E8 02:B5D8: 9B        .byte $9B, $40   ; 
- D 1 - I - 0x00B5EA 02:B5DA: 9C        .byte $9C, $51   ; 
- D 1 - I - 0x00B5EC 02:B5DC: A4        .byte $A4, $5A   ; 
- D 1 - I - 0x00B5EE 02:B5DE: B0        .byte $B0, $5B   ; 
- D 1 - I - 0x00B5F0 02:B5E0: BE        .byte $BE, $5C   ; 
- D 1 - I - 0x00B5F2 02:B5E2: C8        .byte $C8, $5C   ; 
- D 1 - I - 0x00B5F4 02:B5E4: D0        .byte $D0, $5C   ; 

- D 1 - I - 0x00B5F6 02:B5E6: 00        .byte $00   ; end token



_off007_06_B5E7_08:
- D 1 - I - 0x00B5F7 02:B5E7: D9        .byte $D9, $57   ; 
- D 1 - I - 0x00B5F9 02:B5E9: E9        .byte $E9, $5D   ; 
- D 1 - I - 0x00B5FB 02:B5EB: E7        .byte $E7, $6C   ; 
- D 1 - I - 0x00B5FD 02:B5ED: E0        .byte $E0, $7E   ; 
- D 1 - I - 0x00B5FF 02:B5EF: DB        .byte $DB, $8C   ; 
- D 1 - I - 0x00B601 02:B5F1: D4        .byte $D4, $9B   ; 
- D 1 - I - 0x00B603 02:B5F3: CA        .byte $CA, $AB   ; 
- D 1 - I - 0x00B605 02:B5F5: B7        .byte $B7, $AB   ; 
- D 1 - I - 0x00B607 02:B5F7: 9F        .byte $9F, $AB   ; 
- D 1 - I - 0x00B609 02:B5F9: 84        .byte $84, $AB   ; 
- D 1 - I - 0x00B60B 02:B5FB: 6A        .byte $6A, $AB   ; 
- D 1 - I - 0x00B60D 02:B5FD: 4E        .byte $4E, $AA   ; 
- D 1 - I - 0x00B60F 02:B5FF: 2E        .byte $2E, $AA   ; 
- D 1 - I - 0x00B611 02:B601: 14        .byte $14, $A4   ; 
- D 1 - I - 0x00B613 02:B603: 0F        .byte $0F, $94   ; 
- D 1 - I - 0x00B615 02:B605: 19        .byte $19, $83   ; 
- D 1 - I - 0x00B617 02:B607: 28        .byte $28, $78   ; 
- D 1 - I - 0x00B619 02:B609: 3A        .byte $3A, $6B   ; 
- D 1 - I - 0x00B61B 02:B60B: 43        .byte $43, $57   ; 
- D 1 - I - 0x00B61D 02:B60D: 2C        .byte $2C, $4F   ; 
- D 1 - I - 0x00B61F 02:B60F: 11        .byte $11, $48   ; 
- D 1 - I - 0x00B621 02:B611: 18        .byte $18, $35   ; 
- D 1 - I - 0x00B623 02:B613: 1E        .byte $1E, $23   ; 
- D 1 - I - 0x00B625 02:B615: 26        .byte $26, $13   ; 
- D 1 - I - 0x00B627 02:B617: 3F        .byte $3F, $0D   ; 
- D 1 - I - 0x00B629 02:B619: 52        .byte $52, $0C   ; 
- D 1 - I - 0x00B62B 02:B61B: 6B        .byte $6B, $0D   ; 
- D 1 - I - 0x00B62D 02:B61D: 7F        .byte $7F, $15   ; 
- D 1 - I - 0x00B62F 02:B61F: 7E        .byte $7E, $23   ; 
- D 1 - I - 0x00B631 02:B621: 83        .byte $83, $2E   ; 
- D 1 - I - 0x00B633 02:B623: 94        .byte $94, $2F   ; 
- D 1 - I - 0x00B635 02:B625: A0        .byte $A0, $36   ; 
- D 1 - I - 0x00B637 02:B627: 9F        .byte $9F, $40   ; 
- D 1 - I - 0x00B639 02:B629: A1        .byte $A1, $4B   ; 
- D 1 - I - 0x00B63B 02:B62B: A8        .byte $A8, $53   ; 
- D 1 - I - 0x00B63D 02:B62D: B4        .byte $B4, $53   ; 
- D 1 - I - 0x00B63F 02:B62F: BE        .byte $BE, $54   ; 
- D 1 - I - 0x00B641 02:B631: C8        .byte $C8, $55   ; 
- D 1 - I - 0x00B643 02:B633: CF        .byte $CF, $57   ; 

- D 1 - I - 0x00B645 02:B635: 00        .byte $00   ; end token



_off007_06_B636_0A:
- D 1 - I - 0x00B646 02:B636: 11        .byte $11   ; 
- - - - - - 0x00B647 02:B637: 12        .byte $12   ; 
- - - - - - 0x00B648 02:B638: 12        .byte $12   ; 
- - - - - - 0x00B649 02:B639: 11        .byte $11   ; 
- - - - - - 0x00B64A 02:B63A: 11        .byte $11   ; 
- - - - - - 0x00B64B 02:B63B: 11        .byte $11   ; 
- - - - - - 0x00B64C 02:B63C: 11        .byte $11   ; 
- - - - - - 0x00B64D 02:B63D: 11        .byte $11   ; 
- - - - - - 0x00B64E 02:B63E: 11        .byte $11   ; 
- - - - - - 0x00B64F 02:B63F: 11        .byte $11   ; 
- - - - - - 0x00B650 02:B640: 11        .byte $11   ; 
- - - - - - 0x00B651 02:B641: 11        .byte $11   ; 
- - - - - - 0x00B652 02:B642: 11        .byte $11   ; 
- - - - - - 0x00B653 02:B643: 11        .byte $11   ; 
- - - - - - 0x00B654 02:B644: 11        .byte $11   ; 
- - - - - - 0x00B655 02:B645: 11        .byte $11   ; 
- - - - - - 0x00B656 02:B646: 11        .byte $11   ; 
- - - - - - 0x00B657 02:B647: 11        .byte $11   ; 
- - - - - - 0x00B658 02:B648: 11        .byte $11   ; 
- - - - - - 0x00B659 02:B649: 11        .byte $11   ; 
- - - - - - 0x00B65A 02:B64A: 11        .byte $11   ; 
- - - - - - 0x00B65B 02:B64B: 11        .byte $11   ; 
- - - - - - 0x00B65C 02:B64C: 11        .byte $11   ; 
- - - - - - 0x00B65D 02:B64D: 11        .byte $11   ; 
- - - - - - 0x00B65E 02:B64E: 11        .byte $11   ; 
- - - - - - 0x00B65F 02:B64F: 11        .byte $11   ; 
- - - - - - 0x00B660 02:B650: 11        .byte $11   ; 
- - - - - - 0x00B661 02:B651: 11        .byte $11   ; 
- - - - - - 0x00B662 02:B652: 11        .byte $11   ; 
- - - - - - 0x00B663 02:B653: 11        .byte $11   ; 
- - - - - - 0x00B664 02:B654: 11        .byte $11   ; 
- - - - - - 0x00B665 02:B655: 11        .byte $11   ; 
- - - - - - 0x00B666 02:B656: 11        .byte $11   ; 
- - - - - - 0x00B667 02:B657: 11        .byte $11   ; 
- - - - - - 0x00B668 02:B658: 11        .byte $11   ; 
- - - - - - 0x00B669 02:B659: 11        .byte $11   ; 
- - - - - - 0x00B66A 02:B65A: 10        .byte $10   ; 
- - - - - - 0x00B66B 02:B65B: 11        .byte $11   ; 
- - - - - - 0x00B66C 02:B65C: 01        .byte $01   ; 
- - - - - - 0x00B66D 02:B65D: 10        .byte $10   ; 
- - - - - - 0x00B66E 02:B65E: 00        .byte $00   ; 
- - - - - - 0x00B66F 02:B65F: 01        .byte $01   ; 
- - - - - - 0x00B670 02:B660: 10        .byte $10   ; 
- - - - - - 0x00B671 02:B661: 00        .byte $00   ; 
- - - - - - 0x00B672 02:B662: 01        .byte $01   ; 
- - - - - - 0x00B673 02:B663: 11        .byte $11   ; 
- - - - - - 0x00B674 02:B664: 10        .byte $10   ; 
- - - - - - 0x00B675 02:B665: 01        .byte $01   ; 
- - - - - - 0x00B676 02:B666: 11        .byte $11   ; 
- - - - - - 0x00B677 02:B667: 11        .byte $11   ; 
- - - - - - 0x00B678 02:B668: 11        .byte $11   ; 
- - - - - - 0x00B679 02:B669: 11        .byte $11   ; 
- - - - - - 0x00B67A 02:B66A: 11        .byte $11   ; 
- - - - - - 0x00B67B 02:B66B: 11        .byte $11   ; 
- - - - - - 0x00B67C 02:B66C: 12        .byte $12   ; 
- - - - - - 0x00B67D 02:B66D: 81        .byte $81   ; 
- - - - - - 0x00B67E 02:B66E: 21        .byte $21   ; 
- - - - - - 0x00B67F 02:B66F: 12        .byte $12   ; 
- - - - - - 0x00B680 02:B670: 88        .byte $88   ; 
- - - - - - 0x00B681 02:B671: 21        .byte $21   ; 
- - - - - - 0x00B682 02:B672: 13        .byte $13   ; 
- - - - - - 0x00B683 02:B673: 88        .byte $88   ; 
- - - - - - 0x00B684 02:B674: 22        .byte $22   ; 
- - - - - - 0x00B685 02:B675: 83        .byte $83   ; 
- - - - - - 0x00B686 02:B676: 88        .byte $88   ; 
- - - - - - 0x00B687 02:B677: 31        .byte $31   ; 
- - - - - - 0x00B688 02:B678: 83        .byte $83   ; 
- - - - - - 0x00B689 02:B679: 89        .byte $89   ; 
- - - - - - 0x00B68A 02:B67A: 21        .byte $21   ; 
- - - - - - 0x00B68B 02:B67B: 13        .byte $13   ; 
- - - - - - 0x00B68C 02:B67C: 89        .byte $89   ; 
- - - - - - 0x00B68D 02:B67D: 21        .byte $21   ; 
- - - - - - 0x00B68E 02:B67E: 82        .byte $82   ; 
- - - - - - 0x00B68F 02:B67F: 89        .byte $89   ; 
- - - - - - 0x00B690 02:B680: 22        .byte $22   ; 
- - - - - - 0x00B691 02:B681: 82        .byte $82   ; 
- - - - - - 0x00B692 02:B682: 89        .byte $89   ; 
- - - - - - 0x00B693 02:B683: 22        .byte $22   ; 
- - - - - - 0x00B694 02:B684: 82        .byte $82   ; 
- - - - - - 0x00B695 02:B685: 88        .byte $88   ; 
- - - - - - 0x00B696 02:B686: 22        .byte $22   ; 
- - - - - - 0x00B697 02:B687: 82        .byte $82   ; 
- - - - - - 0x00B698 02:B688: 88        .byte $88   ; 
- - - - - - 0x00B699 02:B689: 23        .byte $23   ; 
- - - - - - 0x00B69A 02:B68A: 82        .byte $82   ; 
- - - - - - 0x00B69B 02:B68B: 18        .byte $18   ; 
- - - - - - 0x00B69C 02:B68C: 33        .byte $33   ; 
- - - - - - 0x00B69D 02:B68D: 92        .byte $92   ; 
- - - - - - 0x00B69E 02:B68E: 21        .byte $21   ; 
- - - - - - 0x00B69F 02:B68F: 22        .byte $22   ; 
- - - - - - 0x00B6A0 02:B690: 81        .byte $81   ; 
- - - - - - 0x00B6A1 02:B691: 18        .byte $18   ; 
- - - - - - 0x00B6A2 02:B692: 25        .byte $25   ; 
- - - - - - 0x00B6A3 02:B693: 88        .byte $88   ; 
- - - - - - 0x00B6A4 02:B694: 11        .byte $11   ; 
- - - - - - 0x00B6A5 02:B695: 25        .byte $25   ; 
- - - - - - 0x00B6A6 02:B696: 91        .byte $91   ; 
- - - - - - 0x00B6A7 02:B697: 21        .byte $21   ; 
- - - - - - 0x00B6A8 02:B698: 24        .byte $24   ; 
- - - - - - 0x00B6A9 02:B699: 91        .byte $91   ; 
- - - - - - 0x00B6AA 02:B69A: 21        .byte $21   ; 
- - - - - - 0x00B6AB 02:B69B: 24        .byte $24   ; 
- - - - - - 0x00B6AC 02:B69C: 91        .byte $91   ; 
- - - - - - 0x00B6AD 02:B69D: 21        .byte $21   ; 
- - - - - - 0x00B6AE 02:B69E: 23        .byte $23   ; 
- - - - - - 0x00B6AF 02:B69F: 91        .byte $91   ; 
- - - - - - 0x00B6B0 02:B6A0: 21        .byte $21   ; 
- - - - - - 0x00B6B1 02:B6A1: 23        .byte $23   ; 
- - - - - - 0x00B6B2 02:B6A2: 91        .byte $91   ; 
- - - - - - 0x00B6B3 02:B6A3: 21        .byte $21   ; 
- - - - - - 0x00B6B4 02:B6A4: 22        .byte $22   ; 
- - - - - - 0x00B6B5 02:B6A5: 11        .byte $11   ; 
- - - - - - 0x00B6B6 02:B6A6: 21        .byte $21   ; 
- - - - - - 0x00B6B7 02:B6A7: 11        .byte $11   ; 
- - - - - - 0x00B6B8 02:B6A8: 11        .byte $11   ; 
- - - - - - 0x00B6B9 02:B6A9: 11        .byte $11   ; 
- - - - - - 0x00B6BA 02:B6AA: 01        .byte $01   ; 



_off006_B6AB_07:
- D 1 - I - 0x00B6BB 02:B6AB: B8 B6     .word _off007_07_B6B8_00
- D 1 - I - 0x00B6BD 02:B6AD: D1 B6     .word _off007_07_B6D1_02
- D 1 - I - 0x00B6BF 02:B6AF: 26 B7     .word _off007_07_B726_04
- D 1 - I - 0x00B6C1 02:B6B1: 7B B7     .word _off007_07_B77B_06
- D 1 - I - 0x00B6C3 02:B6B3: D0 B7     .word _off007_07_B7D0_08
- D 1 - I - 0x00B6C5 02:B6B5: 25 B8     .word _off007_07_B825_0A
- D 1 - I - 0x00B6C7 02:B6B7: 17        .byte $17   ; 



_off007_07_B6B8_00:
- D 1 - I - 0x00B6C8 02:B6B8: 91        .byte $91, $AC   ; 
- D 1 - I - 0x00B6CA 02:B6BA: 83        .byte $83, $AC   ; 
- D 1 - I - 0x00B6CC 02:B6BC: 75        .byte $75, $AC   ; 
- D 1 - I - 0x00B6CE 02:B6BE: 67        .byte $67, $AC   ; 
- D 1 - I - 0x00B6D0 02:B6C0: 5A        .byte $5A, $AC   ; 
- D 1 - I - 0x00B6D2 02:B6C2: 50        .byte $50, $AC   ; 
- D 1 - I - 0x00B6D4 02:B6C4: 43        .byte $43, $AC   ; 
- D 1 - I - 0x00B6D6 02:B6C6: 35        .byte $35, $AC   ; 
- D 1 - I - 0x00B6D8 02:B6C8: 2A        .byte $2A, $A7   ; 
- D 1 - I - 0x00B6DA 02:B6CA: 22        .byte $22, $A0   ; 

- D 1 - I - 0x00B6DC 02:B6CC: 00        .byte $00   ; end token

- D 1 - I - 0x00B6DD 02:B6CD: 02        .byte $02   ; ??? 0x00A335
- D 1 - I - 0x00B6DE 02:B6CE: 02        .byte $02   ; 
- D 1 - I - 0x00B6DF 02:B6CF: 02        .byte $02   ; 
- D 1 - I - 0x00B6E0 02:B6D0: 02        .byte $02   ; 



_off007_07_B6D1_02:
- D 1 - I - 0x00B6E1 02:B6D1: 3C        .byte $3C, $91   ; 
- D 1 - I - 0x00B6E3 02:B6D3: 23        .byte $23, $8F   ; 
- D 1 - I - 0x00B6E5 02:B6D5: 1B        .byte $1B, $87   ; 
- D 1 - I - 0x00B6E7 02:B6D7: 19        .byte $19, $77   ; 
- D 1 - I - 0x00B6E9 02:B6D9: 17        .byte $17, $67   ; 
- D 1 - I - 0x00B6EB 02:B6DB: 15        .byte $15, $57   ; 
- D 1 - I - 0x00B6ED 02:B6DD: 13        .byte $13, $47   ; 
- D 1 - I - 0x00B6EF 02:B6DF: 11        .byte $11, $37   ; 
- D 1 - I - 0x00B6F1 02:B6E1: 0F        .byte $0F, $27   ; 
- D 1 - I - 0x00B6F3 02:B6E3: 12        .byte $12, $1E   ; 
- D 1 - I - 0x00B6F5 02:B6E5: 1C        .byte $1C, $18   ; 
- D 1 - I - 0x00B6F7 02:B6E7: 28        .byte $28, $15   ; 
- D 1 - I - 0x00B6F9 02:B6E9: 35        .byte $35, $11   ; 
- D 1 - I - 0x00B6FB 02:B6EB: 40        .byte $40, $13   ; 
- D 1 - I - 0x00B6FD 02:B6ED: 48        .byte $48, $18   ; 
- D 1 - I - 0x00B6FF 02:B6EF: 4A        .byte $4A, $26   ; 
- D 1 - I - 0x00B701 02:B6F1: 4D        .byte $4D, $34   ; 
- D 1 - I - 0x00B703 02:B6F3: 50        .byte $50, $40   ; 
- D 1 - I - 0x00B705 02:B6F5: 61        .byte $61, $3E   ; 
- D 1 - I - 0x00B707 02:B6F7: 73        .byte $73, $37   ; 
- D 1 - I - 0x00B709 02:B6F9: 87        .byte $87, $32   ; 
- D 1 - I - 0x00B70B 02:B6FB: 9A        .byte $9A, $2F   ; 
- D 1 - I - 0x00B70D 02:B6FD: A6        .byte $A6, $3C   ; 
- D 1 - I - 0x00B70F 02:B6FF: AB        .byte $AB, $4A   ; 
- D 1 - I - 0x00B711 02:B701: AF        .byte $AF, $57   ; 
- D 1 - I - 0x00B713 02:B703: B8        .byte $B8, $62   ; 
- D 1 - I - 0x00B715 02:B705: C9        .byte $C9, $5D   ; 
- D 1 - I - 0x00B717 02:B707: D7        .byte $D7, $59   ; 
- D 1 - I - 0x00B719 02:B709: E4        .byte $E4, $55   ; 
- D 1 - I - 0x00B71B 02:B70B: F2        .byte $F2, $59   ; 
- D 1 - I - 0x00B71D 02:B70D: F3        .byte $F3, $67   ; 
- D 1 - I - 0x00B71F 02:B70F: EE        .byte $EE, $79   ; 
- D 1 - I - 0x00B721 02:B711: EB        .byte $EB, $89   ; 
- D 1 - I - 0x00B723 02:B713: E6        .byte $E6, $98   ; 
- D 1 - I - 0x00B725 02:B715: E2        .byte $E2, $A3   ; 
- D 1 - I - 0x00B727 02:B717: D8        .byte $D8, $A8   ; 
- D 1 - I - 0x00B729 02:B719: C4        .byte $C4, $AA   ; 
- D 1 - I - 0x00B72B 02:B71B: AD        .byte $AD, $A6   ; 
- D 1 - I - 0x00B72D 02:B71D: 9C        .byte $9C, $9D   ; 
- D 1 - I - 0x00B72F 02:B71F: 8E        .byte $8E, $91   ; 
- D 1 - I - 0x00B731 02:B721: 76        .byte $76, $8F   ; 
- D 1 - I - 0x00B733 02:B723: 5B        .byte $5B, $8F   ; 

- D 1 - I - 0x00B735 02:B725: 00        .byte $00   ; end token



_off007_07_B726_04:
- D 1 - I - 0x00B736 02:B726: 3C        .byte $3C, $86   ; 
- D 1 - I - 0x00B738 02:B728: 28        .byte $28, $86   ; 
- D 1 - I - 0x00B73A 02:B72A: 2A        .byte $2A, $70   ; 
- D 1 - I - 0x00B73C 02:B72C: 2A        .byte $2A, $60   ; 
- D 1 - I - 0x00B73E 02:B72E: 28        .byte $28, $56   ; 
- D 1 - I - 0x00B740 02:B730: 27        .byte $27, $4F   ; 
- D 1 - I - 0x00B742 02:B732: 26        .byte $26, $43   ; 
- D 1 - I - 0x00B744 02:B734: 22        .byte $22, $31   ; 
- D 1 - I - 0x00B746 02:B736: 20        .byte $20, $27   ; 
- D 1 - I - 0x00B748 02:B738: 22        .byte $22, $1D   ; 
- D 1 - I - 0x00B74A 02:B73A: 2E        .byte $2E, $1C   ; 
- D 1 - I - 0x00B74C 02:B73C: 39        .byte $39, $20   ; 
- D 1 - I - 0x00B74E 02:B73E: 3E        .byte $3E, $27   ; 
- D 1 - I - 0x00B750 02:B740: 3F        .byte $3F, $37   ; 
- D 1 - I - 0x00B752 02:B742: 40        .byte $40, $45   ; 
- D 1 - I - 0x00B754 02:B744: 41        .byte $41, $55   ; 
- D 1 - I - 0x00B756 02:B746: 4D        .byte $4D, $51   ; 
- D 1 - I - 0x00B758 02:B748: 57        .byte $57, $4F   ; 
- D 1 - I - 0x00B75A 02:B74A: 63        .byte $63, $4D   ; 
- D 1 - I - 0x00B75C 02:B74C: 72        .byte $72, $48   ; 
- D 1 - I - 0x00B75E 02:B74E: 87        .byte $87, $40   ; 
- D 1 - I - 0x00B760 02:B750: 95        .byte $95, $3D   ; 
- D 1 - I - 0x00B762 02:B752: 9A        .byte $9A, $48   ; 
- D 1 - I - 0x00B764 02:B754: 9E        .byte $9E, $51   ; 
- D 1 - I - 0x00B766 02:B756: A2        .byte $A2, $5D   ; 
- D 1 - I - 0x00B768 02:B758: A6        .byte $A6, $69   ; 
- D 1 - I - 0x00B76A 02:B75A: AA        .byte $AA, $72   ; 
- D 1 - I - 0x00B76C 02:B75C: C1        .byte $C1, $6C   ; 
- D 1 - I - 0x00B76E 02:B75E: DC        .byte $DC, $65   ; 
- D 1 - I - 0x00B770 02:B760: DE        .byte $DE, $72   ; 
- D 1 - I - 0x00B772 02:B762: DB        .byte $DB, $7D   ; 
- D 1 - I - 0x00B774 02:B764: D9        .byte $D9, $87   ; 
- D 1 - I - 0x00B776 02:B766: D7        .byte $D7, $93   ; 
- D 1 - I - 0x00B778 02:B768: D5        .byte $D5, $9D   ; 
- D 1 - I - 0x00B77A 02:B76A: C7        .byte $C7, $A0   ; 
- D 1 - I - 0x00B77C 02:B76C: B8        .byte $B8, $9E   ; 
- D 1 - I - 0x00B77E 02:B76E: A7        .byte $A7, $9E   ; 
- D 1 - I - 0x00B780 02:B770: 9E        .byte $9E, $92   ; 
- D 1 - I - 0x00B782 02:B772: 95        .byte $95, $89   ; 
- D 1 - I - 0x00B784 02:B774: 86        .byte $86, $82   ; 
- D 1 - I - 0x00B786 02:B776: 76        .byte $76, $84   ; 
- D 1 - I - 0x00B788 02:B778: 62        .byte $62, $87   ; 

- D 1 - I - 0x00B78A 02:B77A: 00        .byte $00   ; end token



_off007_07_B77B_06:
- D 1 - I - 0x00B78B 02:B77B: 3C        .byte $3C, $89   ; 
- D 1 - I - 0x00B78D 02:B77D: 23        .byte $23, $84   ; 
- D 1 - I - 0x00B78F 02:B77F: 25        .byte $25, $76   ; 
- D 1 - I - 0x00B791 02:B781: 24        .byte $24, $69   ; 
- D 1 - I - 0x00B793 02:B783: 23        .byte $23, $5D   ; 
- D 1 - I - 0x00B795 02:B785: 20        .byte $20, $50   ; 
- D 1 - I - 0x00B797 02:B787: 1E        .byte $1E, $40   ; 
- D 1 - I - 0x00B799 02:B789: 1D        .byte $1D, $32   ; 
- D 1 - I - 0x00B79B 02:B78B: 1C        .byte $1C, $27   ; 
- D 1 - I - 0x00B79D 02:B78D: 21        .byte $21, $1E   ; 
- D 1 - I - 0x00B79F 02:B78F: 2A        .byte $2A, $1B   ; 
- D 1 - I - 0x00B7A1 02:B791: 37        .byte $37, $18   ; 
- D 1 - I - 0x00B7A3 02:B793: 3D        .byte $3D, $1F   ; 
- D 1 - I - 0x00B7A5 02:B795: 40        .byte $40, $28   ; 
- D 1 - I - 0x00B7A7 02:B797: 41        .byte $41, $30   ; 
- D 1 - I - 0x00B7A9 02:B799: 42        .byte $42, $3C   ; 
- D 1 - I - 0x00B7AB 02:B79B: 45        .byte $45, $4C   ; 
- D 1 - I - 0x00B7AD 02:B79D: 5A        .byte $5A, $49   ; 
- D 1 - I - 0x00B7AF 02:B79F: 67        .byte $67, $45   ; 
- D 1 - I - 0x00B7B1 02:B7A1: 76        .byte $76, $41   ; 
- D 1 - I - 0x00B7B3 02:B7A3: 89        .byte $89, $3D   ; 
- D 1 - I - 0x00B7B5 02:B7A5: 99        .byte $99, $3E   ; 
- D 1 - I - 0x00B7B7 02:B7A7: 9D        .byte $9D, $49   ; 
- D 1 - I - 0x00B7B9 02:B7A9: A1        .byte $A1, $55   ; 
- D 1 - I - 0x00B7BB 02:B7AB: A6        .byte $A6, $5E   ; 
- D 1 - I - 0x00B7BD 02:B7AD: AA        .byte $AA, $69   ; 
- D 1 - I - 0x00B7BF 02:B7AF: BC        .byte $BC, $68   ; 
- D 1 - I - 0x00B7C1 02:B7B1: D1        .byte $D1, $64   ; 
- D 1 - I - 0x00B7C3 02:B7B3: DF        .byte $DF, $67   ; 
- D 1 - I - 0x00B7C5 02:B7B5: E4        .byte $E4, $71   ; 
- D 1 - I - 0x00B7C7 02:B7B7: E2        .byte $E2, $7C   ; 
- D 1 - I - 0x00B7C9 02:B7B9: DF        .byte $DF, $84   ; 
- D 1 - I - 0x00B7CB 02:B7BB: DB        .byte $DB, $8E   ; 
- D 1 - I - 0x00B7CD 02:B7BD: D7        .byte $D7, $98   ; 
- D 1 - I - 0x00B7CF 02:B7BF: D4        .byte $D4, $A3   ; 
- D 1 - I - 0x00B7D1 02:B7C1: C3        .byte $C3, $A1   ; 
- D 1 - I - 0x00B7D3 02:B7C3: B3        .byte $B3, $9E   ; 
- D 1 - I - 0x00B7D5 02:B7C5: A6        .byte $A6, $9E   ; 
- D 1 - I - 0x00B7D7 02:B7C7: 9C        .byte $9C, $95   ; 
- D 1 - I - 0x00B7D9 02:B7C9: 8C        .byte $8C, $88   ; 
- D 1 - I - 0x00B7DB 02:B7CB: 7B        .byte $7B, $87   ; 
- D 1 - I - 0x00B7DD 02:B7CD: 5B        .byte $5B, $88   ; 

- D 1 - I - 0x00B7DF 02:B7CF: 00        .byte $00   ; end token



_off007_07_B7D0_08:
- - - - - - 0x00B7E0 02:B7D0: 3C        .byte $3C, $8D   ; 
- D 1 - I - 0x00B7E2 02:B7D2: 23        .byte $23, $8A   ; 
- D 1 - I - 0x00B7E4 02:B7D4: 1F        .byte $1F, $76   ; 
- D 1 - I - 0x00B7E6 02:B7D6: 1E        .byte $1E, $69   ; 
- D 1 - I - 0x00B7E8 02:B7D8: 1D        .byte $1D, $5D   ; 
- D 1 - I - 0x00B7EA 02:B7DA: 1B        .byte $1B, $50   ; 
- D 1 - I - 0x00B7EC 02:B7DC: 18        .byte $18, $40   ; 
- D 1 - I - 0x00B7EE 02:B7DE: 16        .byte $16, $32   ; 
- D 1 - I - 0x00B7F0 02:B7E0: 17        .byte $17, $27   ; 
- D 1 - I - 0x00B7F2 02:B7E2: 1C        .byte $1C, $1B   ; 
- D 1 - I - 0x00B7F4 02:B7E4: 2A        .byte $2A, $17   ; 
- D 1 - I - 0x00B7F6 02:B7E6: 3A        .byte $3A, $16   ; 
- D 1 - I - 0x00B7F8 02:B7E8: 42        .byte $42, $1F   ; 
- D 1 - I - 0x00B7FA 02:B7EA: 45        .byte $45, $28   ; 
- D 1 - I - 0x00B7FC 02:B7EC: 46        .byte $46, $32   ; 
- D 1 - I - 0x00B7FE 02:B7EE: 49        .byte $49, $3C   ; 
- D 1 - I - 0x00B800 02:B7F0: 55        .byte $55, $43   ; 
- D 1 - I - 0x00B802 02:B7F2: 60        .byte $60, $42   ; 
- D 1 - I - 0x00B804 02:B7F4: 69        .byte $69, $40   ; 
- D 1 - I - 0x00B806 02:B7F6: 76        .byte $76, $3B   ; 
- D 1 - I - 0x00B808 02:B7F8: 89        .byte $89, $37   ; 
- D 1 - I - 0x00B80A 02:B7FA: 9C        .byte $9C, $38   ; 
- D 1 - I - 0x00B80C 02:B7FC: A3        .byte $A3, $44   ; 
- D 1 - I - 0x00B80E 02:B7FE: A8        .byte $A8, $55   ; 
- D 1 - I - 0x00B810 02:B800: AE        .byte $AE, $5E   ; 
- D 1 - I - 0x00B812 02:B802: B7        .byte $B7, $65   ; 
- D 1 - I - 0x00B814 02:B804: C3        .byte $C3, $62   ; 
- D 1 - I - 0x00B816 02:B806: D1        .byte $D1, $5E   ; 
- D 1 - I - 0x00B818 02:B808: DF        .byte $DF, $5E   ; 
- D 1 - I - 0x00B81A 02:B80A: EA        .byte $EA, $68   ; 
- D 1 - I - 0x00B81C 02:B80C: E8        .byte $E8, $78   ; 
- D 1 - I - 0x00B81E 02:B80E: E6        .byte $E6, $84   ; 
- D 1 - I - 0x00B820 02:B810: E3        .byte $E3, $8E   ; 
- D 1 - I - 0x00B822 02:B812: DF        .byte $DF, $98   ; 
- D 1 - I - 0x00B824 02:B814: D8        .byte $D8, $A7   ; 
- D 1 - I - 0x00B826 02:B816: C3        .byte $C3, $A6   ; 
- D 1 - I - 0x00B828 02:B818: B3        .byte $B3, $A6   ; 
- D 1 - I - 0x00B82A 02:B81A: A2        .byte $A2, $A3   ; 
- - - - - - 0x00B82C 02:B81C: 92        .byte $92, $95   ; 
- - - - - - 0x00B82E 02:B81E: 82        .byte $82, $8C   ; 
- - - - - - 0x00B830 02:B820: 72        .byte $72, $8D   ; 
- - - - - - 0x00B832 02:B822: 5B        .byte $5B, $8D   ; 

- - - - - - 0x00B834 02:B824: 00        .byte $00   ; end token



_off007_07_B825_0A:
- - - - - - 0x00B835 02:B825: 11        .byte $11   ; 
- D 1 - I - 0x00B836 02:B826: 11        .byte $11   ; 
- - - - - - 0x00B837 02:B827: 11        .byte $11   ; 
- - - - - - 0x00B838 02:B828: 11        .byte $11   ; 
- - - - - - 0x00B839 02:B829: 11        .byte $11   ; 
- - - - - - 0x00B83A 02:B82A: 12        .byte $12   ; 
- - - - - - 0x00B83B 02:B82B: 81        .byte $81   ; 
- - - - - - 0x00B83C 02:B82C: 11        .byte $11   ; 
- - - - - - 0x00B83D 02:B82D: 12        .byte $12   ; 
- D 1 - I - 0x00B83E 02:B82E: 82        .byte $82   ; 
- D 1 - I - 0x00B83F 02:B82F: 11        .byte $11   ; 
- - - - - - 0x00B840 02:B830: 12        .byte $12   ; 
- D 1 - I - 0x00B841 02:B831: 82        .byte $82   ; 
- - - - - - 0x00B842 02:B832: 11        .byte $11   ; 
- - - - - - 0x00B843 02:B833: 12        .byte $12   ; 
- - - - - - 0x00B844 02:B834: 11        .byte $11   ; 
- - - - - - 0x00B845 02:B835: 11        .byte $11   ; 
- - - - - - 0x00B846 02:B836: 12        .byte $12   ; 
- - - - - - 0x00B847 02:B837: 11        .byte $11   ; 
- - - - - - 0x00B848 02:B838: 11        .byte $11   ; 
- - - - - - 0x00B849 02:B839: 11        .byte $11   ; 
- - - - - - 0x00B84A 02:B83A: 11        .byte $11   ; 
- - - - - - 0x00B84B 02:B83B: 11        .byte $11   ; 
- - - - - - 0x00B84C 02:B83C: 11        .byte $11   ; 
- - - - - - 0x00B84D 02:B83D: 11        .byte $11   ; 
- - - - - - 0x00B84E 02:B83E: 11        .byte $11   ; 
- - - - - - 0x00B84F 02:B83F: 12        .byte $12   ; 
- - - - - - 0x00B850 02:B840: 82        .byte $82   ; 
- - - - - - 0x00B851 02:B841: 11        .byte $11   ; 
- - - - - - 0x00B852 02:B842: 12        .byte $12   ; 
- - - - - - 0x00B853 02:B843: 82        .byte $82   ; 
- - - - - - 0x00B854 02:B844: 11        .byte $11   ; 
- - - - - - 0x00B855 02:B845: 12        .byte $12   ; 
- - - - - - 0x00B856 02:B846: 82        .byte $82   ; 
- - - - - - 0x00B857 02:B847: 11        .byte $11   ; 
- - - - - - 0x00B858 02:B848: 13        .byte $13   ; 
- - - - - - 0x00B859 02:B849: 82        .byte $82   ; 
- - - - - - 0x00B85A 02:B84A: 11        .byte $11   ; 
- - - - - - 0x00B85B 02:B84B: 13        .byte $13   ; 
- - - - - - 0x00B85C 02:B84C: 93        .byte $93   ; 
- - - - - - 0x00B85D 02:B84D: 11        .byte $11   ; 
- - - - - - 0x00B85E 02:B84E: 23        .byte $23   ; 
- - - - - - 0x00B85F 02:B84F: 93        .byte $93   ; 
- - - - - - 0x00B860 02:B850: 21        .byte $21   ; 
- - - - - - 0x00B861 02:B851: 23        .byte $23   ; 
- - - - - - 0x00B862 02:B852: 92        .byte $92   ; 
- - - - - - 0x00B863 02:B853: 11        .byte $11   ; 
- - - - - - 0x00B864 02:B854: 22        .byte $22   ; 
- - - - - - 0x00B865 02:B855: 81        .byte $81   ; 
- - - - - - 0x00B866 02:B856: 18        .byte $18   ; 
- - - - - - 0x00B867 02:B857: 22        .byte $22   ; 
- - - - - - 0x00B868 02:B858: 81        .byte $81   ; 
- - - - - - 0x00B869 02:B859: 11        .byte $11   ; 
- - - - - - 0x00B86A 02:B85A: 22        .byte $22   ; 
- - - - - - 0x00B86B 02:B85B: 11        .byte $11   ; 
- - - - - - 0x00B86C 02:B85C: 11        .byte $11   ; 
- - - - - - 0x00B86D 02:B85D: 22        .byte $22   ; 
- - - - - - 0x00B86E 02:B85E: 11        .byte $11   ; 
- - - - - - 0x00B86F 02:B85F: 11        .byte $11   ; 
- - - - - - 0x00B870 02:B860: 12        .byte $12   ; 
- - - - - - 0x00B871 02:B861: 11        .byte $11   ; 
- - - - - - 0x00B872 02:B862: 11        .byte $11   ; 
- - - - - - 0x00B873 02:B863: 12        .byte $12   ; 
- - - - - - 0x00B874 02:B864: 11        .byte $11   ; 
- - - - - - 0x00B875 02:B865: 11        .byte $11   ; 
- - - - - - 0x00B876 02:B866: 12        .byte $12   ; 
- - - - - - 0x00B877 02:B867: 11        .byte $11   ; 
- - - - - - 0x00B878 02:B868: 21        .byte $21   ; 
- - - - - - 0x00B879 02:B869: 12        .byte $12   ; 
- - - - - - 0x00B87A 02:B86A: 11        .byte $11   ; 
- - - - - - 0x00B87B 02:B86B: 21        .byte $21   ; 
- - - - - - 0x00B87C 02:B86C: 12        .byte $12   ; 
- - - - - - 0x00B87D 02:B86D: 11        .byte $11   ; 
- - - - - - 0x00B87E 02:B86E: 11        .byte $11   ; 
- - - - - - 0x00B87F 02:B86F: 22        .byte $22   ; 
- - - - - - 0x00B880 02:B870: 21        .byte $21   ; 
- - - - - - 0x00B881 02:B871: 21        .byte $21   ; 
- - - - - - 0x00B882 02:B872: 21        .byte $21   ; 
- - - - - - 0x00B883 02:B873: 28        .byte $28   ; 
- - - - - - 0x00B884 02:B874: 21        .byte $21   ; 
- - - - - - 0x00B885 02:B875: 11        .byte $11   ; 
- - - - - - 0x00B886 02:B876: 28        .byte $28   ; 
- - - - - - 0x00B887 02:B877: 11        .byte $11   ; 
- - - - - - 0x00B888 02:B878: 11        .byte $11   ; 
- - - - - - 0x00B889 02:B879: 11        .byte $11   ; 
- - - - - - 0x00B88A 02:B87A: 12        .byte $12   ; 
- - - - - - 0x00B88B 02:B87B: 12        .byte $12   ; 
- - - - - - 0x00B88C 02:B87C: 82        .byte $82   ; 
- - - - - - 0x00B88D 02:B87D: 12        .byte $12   ; 
- - - - - - 0x00B88E 02:B87E: 12        .byte $12   ; 
- D 1 - I - 0x00B88F 02:B87F: 82        .byte $82   ; 
- - - - - - 0x00B890 02:B880: 11        .byte $11   ; 
- - - - - - 0x00B891 02:B881: 12        .byte $12   ; 
- - - - - - 0x00B892 02:B882: 82        .byte $82   ; 
- - - - - - 0x00B893 02:B883: 11        .byte $11   ; 
- - - - - - 0x00B894 02:B884: 12        .byte $12   ; 
- - - - - - 0x00B895 02:B885: 12        .byte $12   ; 
- - - - - - 0x00B896 02:B886: 11        .byte $11   ; 
- - - - - - 0x00B897 02:B887: 12        .byte $12   ; 
- - - - - - 0x00B898 02:B888: 12        .byte $12   ; 
- - - - - - 0x00B899 02:B889: 11        .byte $11   ; 
- - - - - - 0x00B89A 02:B88A: 12        .byte $12   ; 
- - - - - - 0x00B89B 02:B88B: 12        .byte $12   ; 
- - - - - - 0x00B89C 02:B88C: 11        .byte $11   ; 
- - - - - - 0x00B89D 02:B88D: 12        .byte $12   ; 
- D 1 - I - 0x00B89E 02:B88E: 82        .byte $82   ; 
- - - - - - 0x00B89F 02:B88F: 11        .byte $11   ; 
- - - - - - 0x00B8A0 02:B890: 12        .byte $12   ; 
- - - - - - 0x00B8A1 02:B891: 12        .byte $12   ; 
- - - - - - 0x00B8A2 02:B892: 11        .byte $11   ; 
- - - - - - 0x00B8A3 02:B893: 12        .byte $12   ; 
- - - - - - 0x00B8A4 02:B894: 12        .byte $12   ; 
- - - - - - 0x00B8A5 02:B895: 11        .byte $11   ; 
- - - - - - 0x00B8A6 02:B896: 12        .byte $12   ; 
- - - - - - 0x00B8A7 02:B897: 12        .byte $12   ; 
- - - - - - 0x00B8A8 02:B898: 11        .byte $11   ; 
- - - - - - 0x00B8A9 02:B899: 12        .byte $12   ; 
- - - - - - 0x00B8AA 02:B89A: 11        .byte $11   ; 
- - - - - - 0x00B8AB 02:B89B: 11        .byte $11   ; 
- - - - - - 0x00B8AC 02:B89C: 11        .byte $11   ; 
- - - - - - 0x00B8AD 02:B89D: 11        .byte $11   ; 
- - - - - - 0x00B8AE 02:B89E: 11        .byte $11   ; 
- - - - - - 0x00B8AF 02:B89F: 11        .byte $11   ; 
- - - - - - 0x00B8B0 02:B8A0: 11        .byte $11   ; 
- - - - - - 0x00B8B1 02:B8A1: 11        .byte $11   ; 
- - - - - - 0x00B8B2 02:B8A2: 11        .byte $11   ; 



_off006_B8A3_08:
- D 1 - I - 0x00B8B3 02:B8A3: B0 B8     .word _off007_08_B8B0_00
- D 1 - I - 0x00B8B5 02:B8A5: C9 B8     .word _off007_08_B8C9_02
- D 1 - I - 0x00B8B7 02:B8A7: FE B8     .word _off007_08_B8FE_04
- D 1 - I - 0x00B8B9 02:B8A9: 33 B9     .word _off007_08_B933_06
- D 1 - I - 0x00B8BB 02:B8AB: 68 B9     .word _off007_08_B968_08
- D 1 - I - 0x00B8BD 02:B8AD: 9D B9     .word _off007_08_B99D_0A
- D 1 - I - 0x00B8BF 02:B8AF: 16        .byte $16   ; 



_off007_08_B8B0_00:
- D 1 - I - 0x00B8C0 02:B8B0: 20        .byte $20, $7C   ; 
- D 1 - I - 0x00B8C2 02:B8B2: 42        .byte $42, $7C   ; 
- D 1 - I - 0x00B8C4 02:B8B4: 52        .byte $52, $7C   ; 
- D 1 - I - 0x00B8C6 02:B8B6: 62        .byte $62, $7C   ; 
- D 1 - I - 0x00B8C8 02:B8B8: 72        .byte $72, $7C   ; 
- D 1 - I - 0x00B8CA 02:B8BA: 82        .byte $82, $7C   ; 
- D 1 - I - 0x00B8CC 02:B8BC: 92        .byte $92, $7C   ; 
- D 1 - I - 0x00B8CE 02:B8BE: A2        .byte $A2, $7C   ; 
- D 1 - I - 0x00B8D0 02:B8C0: B2        .byte $B2, $7C   ; 
- D 1 - I - 0x00B8D2 02:B8C2: C2        .byte $C2, $7A   ; 

- D 1 - I - 0x00B8D4 02:B8C4: 00        .byte $00   ; end token

- D 1 - I - 0x00B8D5 02:B8C5: 0A        .byte $0A   ; ??? 0x00A335
- D 1 - I - 0x00B8D6 02:B8C6: 0A        .byte $0A   ; 
- D 1 - I - 0x00B8D7 02:B8C7: 0A        .byte $0A   ; 
- D 1 - I - 0x00B8D8 02:B8C8: 0A        .byte $0A   ; 



_off007_08_B8C9_02:
- D 1 - I - 0x00B8D9 02:B8C9: 79        .byte $79, $9E   ; 
- D 1 - I - 0x00B8DB 02:B8CB: 96        .byte $96, $9E   ; 
- D 1 - I - 0x00B8DD 02:B8CD: B9        .byte $B9, $9C   ; 
- D 1 - I - 0x00B8DF 02:B8CF: D1        .byte $D1, $90   ; 
- D 1 - I - 0x00B8E1 02:B8D1: DF        .byte $DF, $78   ; 
- D 1 - I - 0x00B8E3 02:B8D3: EC        .byte $EC, $5F   ; 
- D 1 - I - 0x00B8E5 02:B8D5: F6        .byte $F6, $4D   ; 
- D 1 - I - 0x00B8E7 02:B8D7: FA        .byte $FA, $3F   ; 
- D 1 - I - 0x00B8E9 02:B8D9: FA        .byte $FA, $2B   ; 
- D 1 - I - 0x00B8EB 02:B8DB: E9        .byte $E9, $23   ; 
- D 1 - I - 0x00B8ED 02:B8DD: CC        .byte $CC, $21   ; 
- D 1 - I - 0x00B8EF 02:B8DF: A0        .byte $A0, $21   ; 
- D 1 - I - 0x00B8F1 02:B8E1: 7C        .byte $7C, $21   ; 
- D 1 - I - 0x00B8F3 02:B8E3: 55        .byte $55, $22   ; 
- D 1 - I - 0x00B8F5 02:B8E5: 31        .byte $31, $22   ; 
- D 1 - I - 0x00B8F7 02:B8E7: 25        .byte $25, $2D   ; 
- D 1 - I - 0x00B8F9 02:B8E9: 1C        .byte $1C, $3C   ; 
- D 1 - I - 0x00B8FB 02:B8EB: 12        .byte $12, $50   ; 
- D 1 - I - 0x00B8FD 02:B8ED: 0A        .byte $0A, $61   ; 
- D 1 - I - 0x00B8FF 02:B8EF: 05        .byte $05, $73   ; 
- D 1 - I - 0x00B901 02:B8F1: 06        .byte $06, $84   ; 
- D 1 - I - 0x00B903 02:B8F3: 12        .byte $12, $91   ; 
- D 1 - I - 0x00B905 02:B8F5: 23        .byte $23, $9D   ; 
- D 1 - I - 0x00B907 02:B8F7: 3E        .byte $3E, $9E   ; 
- D 1 - I - 0x00B909 02:B8F9: 59        .byte $59, $9E   ; 
- D 1 - I - 0x00B90B 02:B8FB: 67        .byte $67, $9E   ; 

- D 1 - I - 0x00B90D 02:B8FD: 00        .byte $00   ; end token



_off007_08_B8FE_04:
- D 1 - I - 0x00B90E 02:B8FE: 7F        .byte $7F, $93   ; 
- D 1 - I - 0x00B910 02:B900: 97        .byte $97, $93   ; 
- D 1 - I - 0x00B912 02:B902: B6        .byte $B6, $90   ; 
- D 1 - I - 0x00B914 02:B904: C7        .byte $C7, $84   ; 
- D 1 - I - 0x00B916 02:B906: D4        .byte $D4, $75   ; 
- D 1 - I - 0x00B918 02:B908: DA        .byte $DA, $66   ; 
- D 1 - I - 0x00B91A 02:B90A: E3        .byte $E3, $54   ; 
- D 1 - I - 0x00B91C 02:B90C: ED        .byte $ED, $3C   ; 
- D 1 - I - 0x00B91E 02:B90E: E8        .byte $E8, $2E   ; 
- D 1 - I - 0x00B920 02:B910: D3        .byte $D3, $2D   ; 
- D 1 - I - 0x00B922 02:B912: B4        .byte $B4, $2D   ; 
- D 1 - I - 0x00B924 02:B914: 97        .byte $97, $2D   ; 
- D 1 - I - 0x00B926 02:B916: 7C        .byte $7C, $2D   ; 
- D 1 - I - 0x00B928 02:B918: 55        .byte $55, $2E   ; 
- D 1 - I - 0x00B92A 02:B91A: 37        .byte $37, $2D   ; 
- D 1 - I - 0x00B92C 02:B91C: 2E        .byte $2E, $3A   ; 
- D 1 - I - 0x00B92E 02:B91E: 29        .byte $29, $46   ; 
- D 1 - I - 0x00B930 02:B920: 23        .byte $23, $52   ; 
- D 1 - I - 0x00B932 02:B922: 1B        .byte $1B, $61   ; 
- D 1 - I - 0x00B934 02:B924: 16        .byte $16, $76   ; 
- D 1 - I - 0x00B936 02:B926: 1A        .byte $1A, $88   ; 
- D 1 - I - 0x00B938 02:B928: 26        .byte $26, $95   ; 
- D 1 - I - 0x00B93A 02:B92A: 35        .byte $35, $95   ; 
- D 1 - I - 0x00B93C 02:B92C: 47        .byte $47, $95   ; 
- D 1 - I - 0x00B93E 02:B92E: 59        .byte $59, $95   ; 
- D 1 - I - 0x00B940 02:B930: 6B        .byte $6B, $94   ; 

- D 1 - I - 0x00B942 02:B932: 00        .byte $00   ; end token



_off007_08_B933_06:
- D 1 - I - 0x00B943 02:B933: 74        .byte $74, $95   ; 
- D 1 - I - 0x00B945 02:B935: 8D        .byte $8D, $94   ; 
- D 1 - I - 0x00B947 02:B937: AD        .byte $AD, $94   ; 
- D 1 - I - 0x00B949 02:B939: C5        .byte $C5, $8B   ; 
- D 1 - I - 0x00B94B 02:B93B: D7        .byte $D7, $78   ; 
- D 1 - I - 0x00B94D 02:B93D: E4        .byte $E4, $5F   ; 
- D 1 - I - 0x00B94F 02:B93F: ED        .byte $ED, $4D   ; 
- D 1 - I - 0x00B951 02:B941: F1        .byte $F1, $3C   ; 
- D 1 - I - 0x00B953 02:B943: EC        .byte $EC, $30   ; 
- D 1 - I - 0x00B955 02:B945: D6        .byte $D6, $2B   ; 
- D 1 - I - 0x00B957 02:B947: BE        .byte $BE, $2A   ; 
- D 1 - I - 0x00B959 02:B949: A0        .byte $A0, $2A   ; 
- D 1 - I - 0x00B95B 02:B94B: 7C        .byte $7C, $2A   ; 
- D 1 - I - 0x00B95D 02:B94D: 55        .byte $55, $2A   ; 
- D 1 - I - 0x00B95F 02:B94F: 3A        .byte $3A, $2B   ; 
- D 1 - I - 0x00B961 02:B951: 2C        .byte $2C, $34   ; 
- D 1 - I - 0x00B963 02:B953: 22        .byte $22, $43   ; 
- D 1 - I - 0x00B965 02:B955: 1C        .byte $1C, $54   ; 
- D 1 - I - 0x00B967 02:B957: 13        .byte $13, $65   ; 
- D 1 - I - 0x00B969 02:B959: 11        .byte $11, $73   ; 
- D 1 - I - 0x00B96B 02:B95B: 15        .byte $15, $83   ; 
- D 1 - I - 0x00B96D 02:B95D: 1F        .byte $1F, $91   ; 
- D 1 - I - 0x00B96F 02:B95F: 2D        .byte $2D, $94   ; 
- D 1 - I - 0x00B971 02:B961: 39        .byte $39, $95   ; 
- D 1 - I - 0x00B973 02:B963: 4A        .byte $4A, $95   ; 
- D 1 - I - 0x00B975 02:B965: 5E        .byte $5E, $95   ; 

- D 1 - I - 0x00B977 02:B967: 00        .byte $00   ; end token



_off007_08_B968_08:
- D 1 - I - 0x00B978 02:B968: 74        .byte $74, $98   ; 
- D 1 - I - 0x00B97A 02:B96A: 8D        .byte $8D, $98   ; 
- D 1 - I - 0x00B97C 02:B96C: AD        .byte $AD, $98   ; 
- D 1 - I - 0x00B97E 02:B96E: CA        .byte $CA, $8F   ; 
- D 1 - I - 0x00B980 02:B970: D8        .byte $D8, $78   ; 
- D 1 - I - 0x00B982 02:B972: E3        .byte $E3, $5F   ; 
- D 1 - I - 0x00B984 02:B974: EE        .byte $EE, $4D   ; 
- D 1 - I - 0x00B986 02:B976: F3        .byte $F3, $37   ; 
- D 1 - I - 0x00B988 02:B978: EE        .byte $EE, $2B   ; 
- D 1 - I - 0x00B98A 02:B97A: DE        .byte $DE, $27   ; 
- D 1 - I - 0x00B98C 02:B97C: C4        .byte $C4, $25   ; 
- D 1 - I - 0x00B98E 02:B97E: A0        .byte $A0, $25   ; 
- D 1 - I - 0x00B990 02:B980: 7C        .byte $7C, $25   ; 
- D 1 - I - 0x00B992 02:B982: 55        .byte $55, $25   ; 
- D 1 - I - 0x00B994 02:B984: 3A        .byte $3A, $26   ; 
- D 1 - I - 0x00B996 02:B986: 2C        .byte $2C, $2D   ; 
- D 1 - I - 0x00B998 02:B988: 22        .byte $22, $3C   ; 
- D 1 - I - 0x00B99A 02:B98A: 19        .byte $19, $50   ; 
- D 1 - I - 0x00B99C 02:B98C: 10        .byte $10, $61   ; 
- D 1 - I - 0x00B99E 02:B98E: 0C        .byte $0C, $73   ; 
- D 1 - I - 0x00B9A0 02:B990: 0E        .byte $0E, $83   ; 
- D 1 - I - 0x00B9A2 02:B992: 17        .byte $17, $91   ; 
- D 1 - I - 0x00B9A4 02:B994: 24        .byte $24, $98   ; 
- D 1 - I - 0x00B9A6 02:B996: 36        .byte $36, $99   ; 
- D 1 - I - 0x00B9A8 02:B998: 4A        .byte $4A, $99   ; 
- D 1 - I - 0x00B9AA 02:B99A: 5E        .byte $5E, $98   ; 

- D 1 - I - 0x00B9AC 02:B99C: 00        .byte $00   ; end token



_off007_08_B99D_0A:
- - - - - - 0x00B9AD 02:B99D: 12        .byte $12   ; 
- D 1 - I - 0x00B9AE 02:B99E: 11        .byte $11   ; 
- - - - - - 0x00B9AF 02:B99F: 11        .byte $11   ; 
- D 1 - I - 0x00B9B0 02:B9A0: 11        .byte $11   ; 
- - - - - - 0x00B9B1 02:B9A1: 11        .byte $11   ; 
- - - - - - 0x00B9B2 02:B9A2: 11        .byte $11   ; 
- - - - - - 0x00B9B3 02:B9A3: 12        .byte $12   ; 
- - - - - - 0x00B9B4 02:B9A4: 11        .byte $11   ; 
- - - - - - 0x00B9B5 02:B9A5: 11        .byte $11   ; 
- - - - - - 0x00B9B6 02:B9A6: 11        .byte $11   ; 
- - - - - - 0x00B9B7 02:B9A7: 11        .byte $11   ; 
- - - - - - 0x00B9B8 02:B9A8: 11        .byte $11   ; 
- - - - - - 0x00B9B9 02:B9A9: 11        .byte $11   ; 
- - - - - - 0x00B9BA 02:B9AA: 11        .byte $11   ; 
- - - - - - 0x00B9BB 02:B9AB: 11        .byte $11   ; 
- D 1 - I - 0x00B9BC 02:B9AC: 11        .byte $11   ; 
- - - - - - 0x00B9BD 02:B9AD: 11        .byte $11   ; 
- - - - - - 0x00B9BE 02:B9AE: 11        .byte $11   ; 
- - - - - - 0x00B9BF 02:B9AF: 11        .byte $11   ; 
- - - - - - 0x00B9C0 02:B9B0: 11        .byte $11   ; 
- - - - - - 0x00B9C1 02:B9B1: 11        .byte $11   ; 
- - - - - - 0x00B9C2 02:B9B2: 11        .byte $11   ; 
- D 1 - I - 0x00B9C3 02:B9B3: 11        .byte $11   ; 
- - - - - - 0x00B9C4 02:B9B4: 12        .byte $12   ; 
- - - - - - 0x00B9C5 02:B9B5: 11        .byte $11   ; 
- D 1 - I - 0x00B9C6 02:B9B6: 11        .byte $11   ; 
- - - - - - 0x00B9C7 02:B9B7: 12        .byte $12   ; 
- - - - - - 0x00B9C8 02:B9B8: 11        .byte $11   ; 
- - - - - - 0x00B9C9 02:B9B9: 11        .byte $11   ; 
- - - - - - 0x00B9CA 02:B9BA: 11        .byte $11   ; 
- D 1 - I - 0x00B9CB 02:B9BB: 11        .byte $11   ; 
- D 1 - I - 0x00B9CC 02:B9BC: 11        .byte $11   ; 
- - - - - - 0x00B9CD 02:B9BD: 11        .byte $11   ; 
- - - - - - 0x00B9CE 02:B9BE: 11        .byte $11   ; 
- - - - - - 0x00B9CF 02:B9BF: 11        .byte $11   ; 
- D 1 - I - 0x00B9D0 02:B9C0: 11        .byte $11   ; 
- D 1 - I - 0x00B9D1 02:B9C1: 11        .byte $11   ; 
- D 1 - I - 0x00B9D2 02:B9C2: 11        .byte $11   ; 
- - - - - - 0x00B9D3 02:B9C3: 11        .byte $11   ; 
- - - - - - 0x00B9D4 02:B9C4: 11        .byte $11   ; 
- - - - - - 0x00B9D5 02:B9C5: 11        .byte $11   ; 
- D 1 - I - 0x00B9D6 02:B9C6: 11        .byte $11   ; 
- - - - - - 0x00B9D7 02:B9C7: 12        .byte $12   ; 
- - - - - - 0x00B9D8 02:B9C8: 12        .byte $12   ; 
- - - - - - 0x00B9D9 02:B9C9: 11        .byte $11   ; 
- - - - - - 0x00B9DA 02:B9CA: 11        .byte $11   ; 
- - - - - - 0x00B9DB 02:B9CB: 12        .byte $12   ; 
- D 1 - I - 0x00B9DC 02:B9CC: 11        .byte $11   ; 
- - - - - - 0x00B9DD 02:B9CD: 11        .byte $11   ; 
- - - - - - 0x00B9DE 02:B9CE: 12        .byte $12   ; 
- - - - - - 0x00B9DF 02:B9CF: 11        .byte $11   ; 
- D 1 - I - 0x00B9E0 02:B9D0: 11        .byte $11   ; 
- - - - - - 0x00B9E1 02:B9D1: 12        .byte $12   ; 
- - - - - - 0x00B9E2 02:B9D2: 11        .byte $11   ; 
- - - - - - 0x00B9E3 02:B9D3: 11        .byte $11   ; 
- - - - - - 0x00B9E4 02:B9D4: 12        .byte $12   ; 
- - - - - - 0x00B9E5 02:B9D5: 11        .byte $11   ; 
- - - - - - 0x00B9E6 02:B9D6: 12        .byte $12   ; 
- D 1 - I - 0x00B9E7 02:B9D7: 12        .byte $12   ; 
- - - - - - 0x00B9E8 02:B9D8: 11        .byte $11   ; 
- - - - - - 0x00B9E9 02:B9D9: 12        .byte $12   ; 
- - - - - - 0x00B9EA 02:B9DA: 12        .byte $12   ; 
- - - - - - 0x00B9EB 02:B9DB: 11        .byte $11   ; 
- - - - - - 0x00B9EC 02:B9DC: 12        .byte $12   ; 
- - - - - - 0x00B9ED 02:B9DD: 12        .byte $12   ; 
- - - - - - 0x00B9EE 02:B9DE: 11        .byte $11   ; 
- - - - - - 0x00B9EF 02:B9DF: 12        .byte $12   ; 
- - - - - - 0x00B9F0 02:B9E0: 12        .byte $12   ; 
- - - - - - 0x00B9F1 02:B9E1: 11        .byte $11   ; 
- D 1 - I - 0x00B9F2 02:B9E2: 22        .byte $22   ; 
- - - - - - 0x00B9F3 02:B9E3: 12        .byte $12   ; 
- - - - - - 0x00B9F4 02:B9E4: 11        .byte $11   ; 
- - - - - - 0x00B9F5 02:B9E5: 11        .byte $11   ; 
- - - - - - 0x00B9F6 02:B9E6: 11        .byte $11   ; 
- - - - - - 0x00B9F7 02:B9E7: 11        .byte $11   ; 
- D 1 - I - 0x00B9F8 02:B9E8: 11        .byte $11   ; 
- D 1 - I - 0x00B9F9 02:B9E9: 11        .byte $11   ; 
- - - - - - 0x00B9FA 02:B9EA: 11        .byte $11   ; 



tbl_B9EB:
- D 1 - - - 0x00B9FB 02:B9EB: 50        .byte $50   ; 00 
- D 1 - - - 0x00B9FC 02:B9EC: 5C        .byte $5C   ; 01 
- D 1 - - - 0x00B9FD 02:B9ED: 54        .byte $54   ; 02 
- D 1 - - - 0x00B9FE 02:B9EE: 54        .byte $54   ; 03 
- D 1 - - - 0x00B9FF 02:B9EF: 34        .byte $34   ; 04 
- D 1 - - - 0x00BA00 02:B9F0: 40        .byte $40   ; 05 
- D 1 - - - 0x00BA01 02:B9F1: 4C        .byte $4C   ; 06 
- D 1 - - - 0x00BA02 02:B9F2: 52        .byte $52   ; 07 
- D 1 - - - 0x00BA03 02:B9F3: 32        .byte $32   ; 08 



_off009_B9F4_01:
- D 1 - I - 0x00BA04 02:B9F4: 08        .byte $08   ; 0x008427
- D 1 - I - 0x00BA05 02:B9F5: 02        .byte $02   ; 0x008432
- D 1 - I - 0x00BA06 02:B9F6: 00        .byte $00   ; 0x008506
- D 1 - I - 0x00BA07 02:B9F7: 00        .byte $00   ; 0x008518
- D 1 - I - 0x00BA08 02:B9F8: 08        .byte $08   ; 0x008506
- D 1 - I - 0x00BA09 02:B9F9: 00        .byte $00   ; 0x008518

_off009_B9FA_02:
- D 1 - I - 0x00BA0A 02:B9FA: 08        .byte $08   ; 
- D 1 - I - 0x00BA0B 02:B9FB: 02        .byte $02   ; 
- D 1 - I - 0x00BA0C 02:B9FC: 00        .byte $00   ; 
- D 1 - I - 0x00BA0D 02:B9FD: 00        .byte $00   ; 
- D 1 - I - 0x00BA0E 02:B9FE: 08        .byte $08   ; 
- D 1 - I - 0x00BA0F 02:B9FF: 01        .byte $01   ; 

_off009_BA00_03:
- D 1 - I - 0x00BA10 02:BA00: 08        .byte $08   ; 
- D 1 - I - 0x00BA11 02:BA01: 03        .byte $03   ; 
- D 1 - I - 0x00BA12 02:BA02: 00        .byte $00   ; 
- D 1 - I - 0x00BA13 02:BA03: 00        .byte $00   ; 
- D 1 - I - 0x00BA14 02:BA04: 08        .byte $08   ; 
- D 1 - I - 0x00BA15 02:BA05: 02        .byte $02   ; 

_off009_BA06_04:
- D 1 - I - 0x00BA16 02:BA06: 07        .byte $07   ; 
- D 1 - I - 0x00BA17 02:BA07: 04        .byte $04   ; 
- D 1 - I - 0x00BA18 02:BA08: 00        .byte $00   ; 
- D 1 - I - 0x00BA19 02:BA09: 00        .byte $00   ; 
- D 1 - I - 0x00BA1A 02:BA0A: 08        .byte $08   ; 
- D 1 - I - 0x00BA1B 02:BA0B: 03        .byte $03   ; 

_off009_BA0C_05:
- D 1 - I - 0x00BA1C 02:BA0C: 08        .byte $08   ; 
- D 1 - I - 0x00BA1D 02:BA0D: 04        .byte $04   ; 
- D 1 - I - 0x00BA1E 02:BA0E: 00        .byte $00   ; 
- D 1 - I - 0x00BA1F 02:BA0F: 00        .byte $00   ; 
- D 1 - I - 0x00BA20 02:BA10: 08        .byte $08   ; 
- D 1 - I - 0x00BA21 02:BA11: 03        .byte $03   ; 

_off009_BA12_06:
- D 1 - I - 0x00BA22 02:BA12: 08        .byte $08   ; 
- D 1 - I - 0x00BA23 02:BA13: 04        .byte $04   ; 
- D 1 - I - 0x00BA24 02:BA14: 00        .byte $00   ; 
- D 1 - I - 0x00BA25 02:BA15: 00        .byte $00   ; 
- D 1 - I - 0x00BA26 02:BA16: 07        .byte $07   ; 
- D 1 - I - 0x00BA27 02:BA17: 04        .byte $04   ; 

_off009_BA18_07:
- D 1 - I - 0x00BA28 02:BA18: 07        .byte $07   ; 
- D 1 - I - 0x00BA29 02:BA19: 04        .byte $04   ; 
- D 1 - I - 0x00BA2A 02:BA1A: 00        .byte $00   ; 
- D 1 - I - 0x00BA2B 02:BA1B: 00        .byte $00   ; 
- D 1 - I - 0x00BA2C 02:BA1C: 06        .byte $06   ; 
- D 1 - I - 0x00BA2D 02:BA1D: 05        .byte $05   ; 

_off009_BA1E_08:
- D 1 - I - 0x00BA2E 02:BA1E: 07        .byte $07   ; 
- D 1 - I - 0x00BA2F 02:BA1F: 04        .byte $04   ; 
- D 1 - I - 0x00BA30 02:BA20: 00        .byte $00   ; 
- D 1 - I - 0x00BA31 02:BA21: 00        .byte $00   ; 
- D 1 - I - 0x00BA32 02:BA22: 05        .byte $05   ; 
- D 1 - I - 0x00BA33 02:BA23: 05        .byte $05   ; 

_off009_BA24_09:
- D 1 - I - 0x00BA34 02:BA24: 05        .byte $05   ; 
- D 1 - I - 0x00BA35 02:BA25: 04        .byte $04   ; 
- D 1 - I - 0x00BA36 02:BA26: 00        .byte $00   ; 
- D 1 - I - 0x00BA37 02:BA27: 00        .byte $00   ; 
- D 1 - I - 0x00BA38 02:BA28: 03        .byte $03   ; 
- D 1 - I - 0x00BA39 02:BA29: 04        .byte $04   ; 

_off009_BA2A_0A:
- D 1 - I - 0x00BA3A 02:BA2A: 04        .byte $04   ; 
- D 1 - I - 0x00BA3B 02:BA2B: 04        .byte $04   ; 
- D 1 - I - 0x00BA3C 02:BA2C: 00        .byte $00   ; 
- D 1 - I - 0x00BA3D 02:BA2D: 00        .byte $00   ; 
- D 1 - I - 0x00BA3E 02:BA2E: 01        .byte $01   ; 
- D 1 - I - 0x00BA3F 02:BA2F: 04        .byte $04   ; 

_off009_BA30_0B:
- D 1 - I - 0x00BA40 02:BA30: 05        .byte $05   ; 
- D 1 - I - 0x00BA41 02:BA31: 04        .byte $04   ; 
- D 1 - I - 0x00BA42 02:BA32: 01        .byte $01   ; 
- D 1 - I - 0x00BA43 02:BA33: 00        .byte $00   ; 
- D 1 - I - 0x00BA44 02:BA34: 00        .byte $00   ; 
- D 1 - I - 0x00BA45 02:BA35: 04        .byte $04   ; 

_off009_BA36_0C:
- D 1 - I - 0x00BA46 02:BA36: 06        .byte $06   ; 
- D 1 - I - 0x00BA47 02:BA37: 04        .byte $04   ; 
- D 1 - I - 0x00BA48 02:BA38: 02        .byte $02   ; 
- D 1 - I - 0x00BA49 02:BA39: 00        .byte $00   ; 
- D 1 - I - 0x00BA4A 02:BA3A: 00        .byte $00   ; 
- D 1 - I - 0x00BA4B 02:BA3B: 04        .byte $04   ; 

_off009_BA3C_0D:
- D 1 - I - 0x00BA4C 02:BA3C: 07        .byte $07   ; 
- D 1 - I - 0x00BA4D 02:BA3D: 03        .byte $03   ; 
- D 1 - I - 0x00BA4E 02:BA3E: 03        .byte $03   ; 
- D 1 - I - 0x00BA4F 02:BA3F: 00        .byte $00   ; 
- D 1 - I - 0x00BA50 02:BA40: 00        .byte $00   ; 
- D 1 - I - 0x00BA51 02:BA41: 03        .byte $03   ; 

_off009_BA42_0E:
- D 1 - I - 0x00BA52 02:BA42: 08        .byte $08   ; 
- D 1 - I - 0x00BA53 02:BA43: 03        .byte $03   ; 
- D 1 - I - 0x00BA54 02:BA44: 06        .byte $06   ; 
- D 1 - I - 0x00BA55 02:BA45: 00        .byte $00   ; 
- D 1 - I - 0x00BA56 02:BA46: 00        .byte $00   ; 
- D 1 - I - 0x00BA57 02:BA47: 03        .byte $03   ; 

_off009_BA48_0F:
- D 1 - I - 0x00BA58 02:BA48: 08        .byte $08   ; 
- D 1 - I - 0x00BA59 02:BA49: 04        .byte $04   ; 
- D 1 - I - 0x00BA5A 02:BA4A: 06        .byte $06   ; 
- D 1 - I - 0x00BA5B 02:BA4B: 00        .byte $00   ; 
- D 1 - I - 0x00BA5C 02:BA4C: 00        .byte $00   ; 
- D 1 - I - 0x00BA5D 02:BA4D: 03        .byte $03   ; 

_off009_BA4E_10:
- D 1 - I - 0x00BA5E 02:BA4E: 08        .byte $08   ; 
- D 1 - I - 0x00BA5F 02:BA4F: 03        .byte $03   ; 
- D 1 - I - 0x00BA60 02:BA50: 08        .byte $08   ; 
- D 1 - I - 0x00BA61 02:BA51: 00        .byte $00   ; 
- D 1 - I - 0x00BA62 02:BA52: 00        .byte $00   ; 
- D 1 - I - 0x00BA63 02:BA53: 01        .byte $01   ; 

_off009_BA54_11:
- D 1 - I - 0x00BA64 02:BA54: 09        .byte $09   ; 
- D 1 - I - 0x00BA65 02:BA55: 02        .byte $02   ; 
- D 1 - I - 0x00BA66 02:BA56: 00        .byte $00   ; 
- D 1 - I - 0x00BA67 02:BA57: 00        .byte $00   ; 
- D 1 - I - 0x00BA68 02:BA58: 08        .byte $08   ; 
- D 1 - I - 0x00BA69 02:BA59: 00        .byte $00   ; 

_off009_BA5A_12:
- D 1 - I - 0x00BA6A 02:BA5A: 08        .byte $08   ; 
- D 1 - I - 0x00BA6B 02:BA5B: 03        .byte $03   ; 
- D 1 - I - 0x00BA6C 02:BA5C: 00        .byte $00   ; 
- D 1 - I - 0x00BA6D 02:BA5D: 00        .byte $00   ; 
- D 1 - I - 0x00BA6E 02:BA5E: 08        .byte $08   ; 
- D 1 - I - 0x00BA6F 02:BA5F: 01        .byte $01   ; 

_off009_BA60_13:
- D 1 - I - 0x00BA70 02:BA60: 08        .byte $08   ; 
- D 1 - I - 0x00BA71 02:BA61: 03        .byte $03   ; 
- D 1 - I - 0x00BA72 02:BA62: 00        .byte $00   ; 
- D 1 - I - 0x00BA73 02:BA63: 00        .byte $00   ; 
- D 1 - I - 0x00BA74 02:BA64: 08        .byte $08   ; 
- D 1 - I - 0x00BA75 02:BA65: 02        .byte $02   ; 

_off009_BA66_14:
- D 1 - I - 0x00BA76 02:BA66: 07        .byte $07   ; 
- D 1 - I - 0x00BA77 02:BA67: 03        .byte $03   ; 
- D 1 - I - 0x00BA78 02:BA68: 00        .byte $00   ; 
- D 1 - I - 0x00BA79 02:BA69: 00        .byte $00   ; 
- D 1 - I - 0x00BA7A 02:BA6A: 08        .byte $08   ; 
- D 1 - I - 0x00BA7B 02:BA6B: 02        .byte $02   ; 

_off009_BA6C_15:
- D 1 - I - 0x00BA7C 02:BA6C: 07        .byte $07   ; 
- D 1 - I - 0x00BA7D 02:BA6D: 03        .byte $03   ; 
- D 1 - I - 0x00BA7E 02:BA6E: 00        .byte $00   ; 
- D 1 - I - 0x00BA7F 02:BA6F: 00        .byte $00   ; 
- D 1 - I - 0x00BA80 02:BA70: 08        .byte $08   ; 
- D 1 - I - 0x00BA81 02:BA71: 03        .byte $03   ; 

_off009_BA72_16:
- D 1 - I - 0x00BA82 02:BA72: 07        .byte $07   ; 
- D 1 - I - 0x00BA83 02:BA73: 03        .byte $03   ; 
- D 1 - I - 0x00BA84 02:BA74: 00        .byte $00   ; 
- D 1 - I - 0x00BA85 02:BA75: 00        .byte $00   ; 
- D 1 - I - 0x00BA86 02:BA76: 08        .byte $08   ; 
- D 1 - I - 0x00BA87 02:BA77: 02        .byte $02   ; 

_off009_BA78_17:
- D 1 - I - 0x00BA88 02:BA78: 06        .byte $06   ; 
- D 1 - I - 0x00BA89 02:BA79: 03        .byte $03   ; 
- D 1 - I - 0x00BA8A 02:BA7A: 00        .byte $00   ; 
- D 1 - I - 0x00BA8B 02:BA7B: 00        .byte $00   ; 
- D 1 - I - 0x00BA8C 02:BA7C: 06        .byte $06   ; 
- D 1 - I - 0x00BA8D 02:BA7D: 03        .byte $03   ; 

_off009_BA7E_18:
- D 1 - I - 0x00BA8E 02:BA7E: 06        .byte $06   ; 
- D 1 - I - 0x00BA8F 02:BA7F: 03        .byte $03   ; 
- D 1 - I - 0x00BA90 02:BA80: 00        .byte $00   ; 
- D 1 - I - 0x00BA91 02:BA81: 00        .byte $00   ; 
- D 1 - I - 0x00BA92 02:BA82: 05        .byte $05   ; 
- D 1 - I - 0x00BA93 02:BA83: 02        .byte $02   ; 

_off009_BA84_19:
- D 1 - I - 0x00BA94 02:BA84: 05        .byte $05   ; 
- D 1 - I - 0x00BA95 02:BA85: 03        .byte $03   ; 
- D 1 - I - 0x00BA96 02:BA86: 00        .byte $00   ; 
- D 1 - I - 0x00BA97 02:BA87: 00        .byte $00   ; 
- D 1 - I - 0x00BA98 02:BA88: 04        .byte $04   ; 
- D 1 - I - 0x00BA99 02:BA89: 02        .byte $02   ; 

_off009_BA8A_1A:
- D 1 - I - 0x00BA9A 02:BA8A: 04        .byte $04   ; 
- D 1 - I - 0x00BA9B 02:BA8B: 03        .byte $03   ; 
- D 1 - I - 0x00BA9C 02:BA8C: 00        .byte $00   ; 
- D 1 - I - 0x00BA9D 02:BA8D: 00        .byte $00   ; 
- D 1 - I - 0x00BA9E 02:BA8E: 01        .byte $01   ; 
- D 1 - I - 0x00BA9F 02:BA8F: 02        .byte $02   ; 

_off009_BA90_1B:
- D 1 - I - 0x00BAA0 02:BA90: 04        .byte $04   ; 
- D 1 - I - 0x00BAA1 02:BA91: 04        .byte $04   ; 
- D 1 - I - 0x00BAA2 02:BA92: 01        .byte $01   ; 
- D 1 - I - 0x00BAA3 02:BA93: 00        .byte $00   ; 
- D 1 - I - 0x00BAA4 02:BA94: 00        .byte $00   ; 
- D 1 - I - 0x00BAA5 02:BA95: 03        .byte $03   ; 

_off009_BA96_1C:
- D 1 - I - 0x00BAA6 02:BA96: 04        .byte $04   ; 
- D 1 - I - 0x00BAA7 02:BA97: 03        .byte $03   ; 
- D 1 - I - 0x00BAA8 02:BA98: 02        .byte $02   ; 
- D 1 - I - 0x00BAA9 02:BA99: 00        .byte $00   ; 
- D 1 - I - 0x00BAAA 02:BA9A: 00        .byte $00   ; 
- D 1 - I - 0x00BAAB 02:BA9B: 01        .byte $01   ; 

_off009_BA9C_1D:
- D 1 - I - 0x00BAAC 02:BA9C: 05        .byte $05   ; 
- D 1 - I - 0x00BAAD 02:BA9D: 04        .byte $04   ; 
- D 1 - I - 0x00BAAE 02:BA9E: 02        .byte $02   ; 
- D 1 - I - 0x00BAAF 02:BA9F: 00        .byte $00   ; 
- D 1 - I - 0x00BAB0 02:BAA0: 00        .byte $00   ; 
- D 1 - I - 0x00BAB1 02:BAA1: 03        .byte $03   ; 

_off009_BAA2_1E:
- D 1 - I - 0x00BAB2 02:BAA2: 06        .byte $06   ; 
- D 1 - I - 0x00BAB3 02:BAA3: 04        .byte $04   ; 
- D 1 - I - 0x00BAB4 02:BAA4: 04        .byte $04   ; 
- D 1 - I - 0x00BAB5 02:BAA5: 00        .byte $00   ; 
- D 1 - I - 0x00BAB6 02:BAA6: 00        .byte $00   ; 
- D 1 - I - 0x00BAB7 02:BAA7: 02        .byte $02   ; 

_off009_BAA8_1F:
- D 1 - I - 0x00BAB8 02:BAA8: 07        .byte $07   ; 
- D 1 - I - 0x00BAB9 02:BAA9: 03        .byte $03   ; 
- D 1 - I - 0x00BABA 02:BAAA: 07        .byte $07   ; 
- D 1 - I - 0x00BABB 02:BAAB: 00        .byte $00   ; 
- D 1 - I - 0x00BABC 02:BAAC: 00        .byte $00   ; 
- D 1 - I - 0x00BABD 02:BAAD: 01        .byte $01   ; 



_off010_BAAE_00:
- D 1 - I - 0x00BABE 02:BAAE: 08        .byte $08, $03   ; X, Y

- D 1 - I - 0x00BAC0 02:BAB0: 07        .byte $07, $00   ; spr_X, spr_Y
- D 1 - I - 0x00BAC2 02:BAB2: 00        .byte $00, $01   ; 



_off010_BAB4_01:
- D 1 - I - 0x00BAC4 02:BAB4: 00        .byte $00, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BAC7 02:BAB7: 8F        .byte $80 + $0F   ; ??? + counter
- D 1 - I - 0x00BAC8 02:BAB8: E5        .byte $E5   ; spr_T

- D 1 - I - 0x00BAC9 02:BAB9: 0C        .byte $0C, $22   ; spr_X, spr_Y
- D 1 - I - 0x00BACB 02:BABB: 13        .byte $13, $22   ; 
- D 1 - I - 0x00BACD 02:BABD: 15        .byte $15, $1A   ; 
- D 1 - I - 0x00BACF 02:BABF: 0D        .byte $0D, $1A   ; 
- D 1 - I - 0x00BAD1 02:BAC1: 07        .byte $07, $1A   ; 
- D 1 - I - 0x00BAD3 02:BAC3: 11        .byte $11, $12   ; 
- D 1 - I - 0x00BAD5 02:BAC5: 09        .byte $09, $12   ; 
- D 1 - I - 0x00BAD7 02:BAC7: 02        .byte $02, $12   ; 
- D 1 - I - 0x00BAD9 02:BAC9: 0B        .byte $0B, $0A   ; 
- D 1 - I - 0x00BADB 02:BACB: 03        .byte $03, $0A   ; 
- D 1 - I - 0x00BADD 02:BACD: 00        .byte $00, $0A   ; 
- D 1 - I - 0x00BADF 02:BACF: 00        .byte $00, $02   ; 
- D 1 - I - 0x00BAE1 02:BAD1: 08        .byte $08, $02   ; 
- D 1 - I - 0x00BAE3 02:BAD3: 10        .byte $10, $02   ; 
- D 1 - I - 0x00BAE5 02:BAD5: 14        .byte $14, $00   ; 

- D 1 - I - 0x00BAE7 02:BAD7: 00        .byte $00   ; end token



_off010_BAD8_02:
- D 1 - I - 0x00BAE8 02:BAD8: 00        .byte $00, $01, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BAEB 02:BADB: 85        .byte $80 + $05   ; ??? + counter
- D 1 - I - 0x00BAEC 02:BADC: B5        .byte $B5   ; spr_T

- D 1 - I - 0x00BAED 02:BADD: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BAEF 02:BADF: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BAF1 02:BAE1: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BAF3 02:BAE3: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BAF5 02:BAE5: 00        .byte $00, $00   ; 

- D 1 - I - 0x00BAF7 02:BAE7: 00        .byte $00   ; end token



_off010_BAE8_03:
- D 1 - I - 0x00BAF8 02:BAE8: 02        .byte $02, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BAFB 02:BAEB: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BAFC 02:BAEC: BA        .byte $BA   ; spr_T

- D 1 - I - 0x00BAFD 02:BAED: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BAFF 02:BAEF: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB01 02:BAF1: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB03 02:BAF3: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB05 02:BAF5: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BB07 02:BAF7: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BB09 02:BAF9: 00        .byte $00   ; end token



_off010_BAFA_04:
- D 1 - I - 0x00BB0A 02:BAFA: 01        .byte $01, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB0D 02:BAFD: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BB0E 02:BAFE: C0        .byte $C0   ; spr_T

- D 1 - I - 0x00BB0F 02:BAFF: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BB11 02:BB01: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB13 02:BB03: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB15 02:BB05: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB17 02:BB07: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BB19 02:BB09: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BB1B 02:BB0B: 00        .byte $00   ; end token



_off010_BB0C_05:
- D 1 - I - 0x00BB1C 02:BB0C: 02        .byte $02, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB1F 02:BB0F: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BB20 02:BB10: CC        .byte $CC   ; spr_T

- D 1 - I - 0x00BB21 02:BB11: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BB23 02:BB13: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB25 02:BB15: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB27 02:BB17: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB29 02:BB19: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BB2B 02:BB1B: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BB2D 02:BB1D: 00        .byte $00   ; end token



_off010_BB1E_06:
- D 1 - I - 0x00BB2E 02:BB1E: 02        .byte $02, $01, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB31 02:BB21: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BB32 02:BB22: D2        .byte $D2   ; spr_T

- D 1 - I - 0x00BB33 02:BB23: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BB35 02:BB25: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB37 02:BB27: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB39 02:BB29: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB3B 02:BB2B: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BB3D 02:BB2D: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BB3F 02:BB2F: 00        .byte $00   ; end token



_off010_BB30_07:
- D 1 - I - 0x00BB40 02:BB30: 03        .byte $03, $01, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB43 02:BB33: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BB44 02:BB34: D8        .byte $D8   ; spr_T

- D 1 - I - 0x00BB45 02:BB35: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BB47 02:BB37: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB49 02:BB39: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB4B 02:BB3B: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB4D 02:BB3D: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BB4F 02:BB3F: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BB51 02:BB41: 00        .byte $00   ; end token



_off010_BB42_08:
- D 1 - I - 0x00BB52 02:BB42: 03        .byte $03, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB55 02:BB45: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BB56 02:BB46: DE        .byte $DE   ; spr_T

- D 1 - I - 0x00BB57 02:BB47: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BB59 02:BB49: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB5B 02:BB4B: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB5D 02:BB4D: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB5F 02:BB4F: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BB61 02:BB51: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BB63 02:BB53: 00        .byte $00   ; end token



_off010_BB54_09:
- D 1 - I - 0x00BB64 02:BB54: 00        .byte $00, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB67 02:BB57: 85        .byte $80 + $05   ; ??? + counter
- D 1 - I - 0x00BB68 02:BB58: B0        .byte $B0   ; spr_T

- D 1 - I - 0x00BB69 02:BB59: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BB6B 02:BB5B: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB6D 02:BB5D: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB6F 02:BB5F: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB71 02:BB61: 00        .byte $00, $00   ; 

- D 1 - I - 0x00BB73 02:BB63: 00        .byte $00   ; end token



_off010_BB64_0A:
- D 1 - I - 0x00BB74 02:BB64: 02        .byte $02, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB77 02:BB67: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BB78 02:BB68: C6        .byte $C6   ; spr_T

- D 1 - I - 0x00BB79 02:BB69: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BB7B 02:BB6B: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BB7D 02:BB6D: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BB7F 02:BB6F: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BB81 02:BB71: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BB83 02:BB73: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BB85 02:BB75: 00        .byte $00   ; end token



_off010_BB76_15:
- D 1 - I - 0x00BB86 02:BB76: 00        .byte $00, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB89 02:BB79: 88        .byte $80 + $08   ; ??? + counter
- D 1 - I - 0x00BB8A 02:BB7A: 5D        .byte $5D   ; spr_T

- D 1 - I - 0x00BB8B 02:BB7B: 0D        .byte $0D, $28   ; spr_X, spr_Y
- D 1 - I - 0x00BB8D 02:BB7D: 0D        .byte $0D, $20   ; 
- D 1 - I - 0x00BB8F 02:BB7F: 10        .byte $10, $20   ; 
- D 1 - I - 0x00BB91 02:BB81: 00        .byte $00, $10   ; 
- D 1 - I - 0x00BB93 02:BB83: 05        .byte $05, $10   ; 
- D 1 - I - 0x00BB95 02:BB85: 04        .byte $04, $08   ; 
- D 1 - I - 0x00BB97 02:BB87: 0C        .byte $0C, $08   ; 
- D 1 - I - 0x00BB99 02:BB89: 04        .byte $04, $00   ; 

- D 1 - I - 0x00BB9B 02:BB8B: 00        .byte $00   ; end token



_off010_BB8C_16:
- D 1 - I - 0x00BB9C 02:BB8C: 00        .byte $00, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BB9F 02:BB8F: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BBA0 02:BB90: 65        .byte $65   ; spr_T

- D 1 - I - 0x00BBA1 02:BB91: 0D        .byte $0D, $08   ; spr_X, spr_Y
- D 1 - I - 0x00BBA3 02:BB93: 00        .byte $00, $03   ; 
- D 1 - I - 0x00BBA5 02:BB95: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BBA7 02:BB97: 08        .byte $08, $00   ; 
- D 1 - I - 0x00BBA9 02:BB99: 10        .byte $10, $00   ; 
- D 1 - I - 0x00BBAB 02:BB9B: 13        .byte $13, $00   ; 

- D 1 - I - 0x00BBAD 02:BB9D: 00        .byte $00   ; end token



_off010_BB9E_17:
- D 1 - I - 0x00BBAE 02:BB9E: 00        .byte $00, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BBB1 02:BBA1: 09        .byte $00 + $09   ; ??? + counter

- D 1 - I - 0x00BBB2 02:BBA2: 84        .byte $84, $06, $22   ; spr_T, spr_X, spr_Y
- D 1 - I - 0x00BBB5 02:BBA5: 84        .byte $84, $26, $30   ; 
- D 1 - I - 0x00BBB8 02:BBA8: 84        .byte $84, $06, $54   ; 
- D 1 - I - 0x00BBBB 02:BBAB: 84        .byte $84, $53, $3C   ; 
- D 1 - I - 0x00BBBE 02:BBAE: 84        .byte $84, $5C, $3F   ; 
- D 1 - I - 0x00BBC1 02:BBB1: 84        .byte $84, $62, $3A   ; 
- D 1 - I - 0x00BBC4 02:BBB4: 84        .byte $84, $3E, $10   ; 
- D 1 - I - 0x00BBC7 02:BBB7: 84        .byte $84, $74, $3E   ; 
- D 1 - I - 0x00BBCA 02:BBBA: 84        .byte $84, $65, $45   ; 

- D 1 - I - 0x00BBCD 02:BBBD: 00        .byte $00   ; end token



_off010_BBBE_18:
- D 1 - I - 0x00BBCE 02:BBBE: 00        .byte $00, $00, $01   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BBD1 02:BBC1: 84        .byte $80 + $04   ; ??? + counter
- D 1 - I - 0x00BBD2 02:BBC2: 85        .byte $85   ; spr_T

- D 1 - I - 0x00BBD3 02:BBC3: 00        .byte $00, $08   ; spr_X, spr_Y
- D 1 - I - 0x00BBD5 02:BBC5: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BBD7 02:BBC7: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BBD9 02:BBC9: 04        .byte $04, $00   ; 

- D 1 - I - 0x00BBDB 02:BBCB: 00        .byte $00   ; end token



_off010_BBCC_19:
- D 1 - I - 0x00BBDC 02:BBCC: 00        .byte $00, $00, $FF   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BBDF 02:BBCF: 84        .byte $80 + $04   ; ??? + counter
- D 1 - I - 0x00BBE0 02:BBD0: 85        .byte $85   ; spr_T

- D 1 - I - 0x00BBE1 02:BBD1: 00        .byte $00, $00, $81   ; spr_X, spr_Y, spr_A
- D 1 - I - 0x00BBE4 02:BBD4: 08        .byte $08, $00, $81   ; 
- D 1 - I - 0x00BBE7 02:BBD7: 00        .byte $00, $08, $81   ; 
- D 1 - I - 0x00BBEA 02:BBDA: 04        .byte $04, $08, $81   ; 

- D 1 - I - 0x00BBED 02:BBDD: 00        .byte $00   ; end token



_off010_BBDE_1A:
- D 1 - I - 0x00BBEE 02:BBDE: 00        .byte $00, $00, $FF   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BBF1 02:BBE1: 84        .byte $80 + $04   ; ??? + counter
- D 1 - I - 0x00BBF2 02:BBE2: 85        .byte $85   ; spr_T

- D 1 - I - 0x00BBF3 02:BBE3: 08        .byte $08, $00, $C1   ; spr_X, spr_Y, spr_A
- D 1 - I - 0x00BBF6 02:BBE6: 00        .byte $00, $00, $C1   ; 
- D 1 - I - 0x00BBF9 02:BBE9: 08        .byte $08, $08, $C1   ; 
- D 1 - I - 0x00BBFC 02:BBEC: 04        .byte $04, $08, $C1   ; 

- D 1 - I - 0x00BBFF 02:BBEF: 00        .byte $00   ; end token



_off010_BBF0_1B:
- D 1 - I - 0x00BC00 02:BBF0: 00        .byte $00, $00, $FF   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC03 02:BBF3: 84        .byte $80 + $04   ; ??? + counter
- D 1 - I - 0x00BC04 02:BBF4: 85        .byte $85   ; spr_T

- D 1 - I - 0x00BC05 02:BBF5: 08        .byte $08, $08, $41   ; spr_X, spr_Y, spr_A
- D 1 - I - 0x00BC08 02:BBF8: 00        .byte $00, $08, $41   ; 
- D 1 - I - 0x00BC0B 02:BBFB: 08        .byte $08, $00, $41   ; 
- D 1 - I - 0x00BC0E 02:BBFE: 04        .byte $04, $00, $41   ; 

- D 1 - I - 0x00BC11 02:BC01: 00        .byte $00   ; end token



_off010_BC02_1C:
- D 1 - I - 0x00BC12 02:BC02: 00        .byte $00, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC15 02:BC05: 84        .byte $80 + $04   ; ??? + counter
- D 1 - I - 0x00BC16 02:BC06: C1        .byte $C1   ; spr_T

- D 1 - I - 0x00BC17 02:BC07: 00        .byte $00, $08   ; spr_X, spr_Y
- D 1 - I - 0x00BC19 02:BC09: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BC1B 02:BC0B: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BC1D 02:BC0D: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BC1F 02:BC0F: 00        .byte $00   ; end token



_off010_BC10_1D:
- D 1 - I - 0x00BC20 02:BC10: 00        .byte $00, $00, $01   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC23 02:BC13: 83        .byte $80 + $03   ; ??? + counter
- D 1 - I - 0x00BC24 02:BC14: C5        .byte $C5   ; spr_T

- D 1 - I - 0x00BC25 02:BC15: 00        .byte $00, $08   ; spr_X, spr_Y
- D 1 - I - 0x00BC27 02:BC17: 02        .byte $02, $08   ; 
- D 1 - I - 0x00BC29 02:BC19: 01        .byte $01, $00   ; 

- D 1 - I - 0x00BC2B 02:BC1B: 00        .byte $00   ; end token



_off010_BC1C_1E:
- D 1 - I - 0x00BC2C 02:BC1C: 00        .byte $00, $00, $02   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC2F 02:BC1F: 82        .byte $80 + $02   ; ??? + counter
- D 1 - I - 0x00BC30 02:BC20: C8        .byte $C8   ; spr_T

- D 1 - I - 0x00BC31 02:BC21: 00        .byte $00, $08   ; spr_X, spr_Y
- D 1 - I - 0x00BC33 02:BC23: 00        .byte $00, $00   ; 

- D 1 - I - 0x00BC35 02:BC25: 00        .byte $00   ; end token



_off010_BC26_1F:
- D 1 - I - 0x00BC36 02:BC26: 00        .byte $00, $00, $01   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC39 02:BC29: 82        .byte $80 + $02   ; ??? + counter
- D 1 - I - 0x00BC3A 02:BC2A: CA        .byte $CA   ; spr_T

- D 1 - I - 0x00BC3B 02:BC2B: 00        .byte $00, $00   ; spr_X, spr_Y
- D 1 - I - 0x00BC3D 02:BC2D: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BC3F 02:BC2F: 00        .byte $00   ; end token



_off010_BC30_20:
- D 1 - I - 0x00BC40 02:BC30: 00        .byte $00, $01, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC43 02:BC33: 85        .byte $80 + $05   ; ??? + counter
- D 1 - I - 0x00BC44 02:BC34: D1        .byte $D1   ; spr_T

- D 1 - I - 0x00BC45 02:BC35: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BC47 02:BC37: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BC49 02:BC39: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BC4B 02:BC3B: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BC4D 02:BC3D: 00        .byte $00, $00   ; 

- D 1 - I - 0x00BC4F 02:BC3F: 00        .byte $00   ; end token



_off010_BC40_21:
- D 1 - I - 0x00BC50 02:BC40: 02        .byte $02, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC53 02:BC43: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BC54 02:BC44: D6        .byte $D6   ; spr_T

- D 1 - I - 0x00BC55 02:BC45: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BC57 02:BC47: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BC59 02:BC49: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BC5B 02:BC4B: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BC5D 02:BC4D: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BC5F 02:BC4F: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BC61 02:BC51: 00        .byte $00   ; end token



_off010_BC52_22:
- D 1 - I - 0x00BC62 02:BC52: 01        .byte $01, $00, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC65 02:BC55: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BC66 02:BC56: DC        .byte $DC   ; spr_T

- D 1 - I - 0x00BC67 02:BC57: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BC69 02:BC59: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BC6B 02:BC5B: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BC6D 02:BC5D: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BC6F 02:BC5F: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BC71 02:BC61: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BC73 02:BC63: 00        .byte $00   ; end token



_off010_BC64_23:
- D 1 - I - 0x00BC74 02:BC64: 02        .byte $02, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC77 02:BC67: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BC78 02:BC68: E8        .byte $E8   ; spr_T

- D 1 - I - 0x00BC79 02:BC69: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BC7B 02:BC6B: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BC7D 02:BC6D: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BC7F 02:BC6F: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BC81 02:BC71: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BC83 02:BC73: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BC85 02:BC75: 00        .byte $00   ; end token



_off010_BC76_24:
- - - - - - 0x00BC86 02:BC76: 02        .byte $02, $01, $00   ; spr_X, spr_Y, spr_A

- - - - - - 0x00BC89 02:BC79: 86        .byte $80 + $06   ; ??? + counter
- - - - - - 0x00BC8A 02:BC7A: EE        .byte $EE   ; spr_T

- - - - - - 0x00BC8B 02:BC7B: 00        .byte $00, $10   ; spr_X, spr_Y
- - - - - - 0x00BC8D 02:BC7D: 08        .byte $08, $10   ; 
- - - - - - 0x00BC8F 02:BC7F: 00        .byte $00, $08   ; 
- - - - - - 0x00BC91 02:BC81: 08        .byte $08, $08   ; 
- - - - - - 0x00BC93 02:BC83: 00        .byte $00, $00   ; 
- - - - - - 0x00BC95 02:BC85: 08        .byte $08, $00   ; 

- - - - - - 0x00BC97 02:BC87: 00        .byte $00   ; end token



_off010_BC88_25:
- D 1 - I - 0x00BC98 02:BC88: 03        .byte $03, $01, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BC9B 02:BC8B: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BC9C 02:BC8C: F4        .byte $F4   ; spr_T

- D 1 - I - 0x00BC9D 02:BC8D: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BC9F 02:BC8F: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BCA1 02:BC91: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BCA3 02:BC93: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BCA5 02:BC95: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BCA7 02:BC97: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BCA9 02:BC99: 00        .byte $00   ; end token



_off010_BC9A_26:
- - - - - - 0x00BCAA 02:BC9A: 03        .byte $03, $00, $00   ; spr_X, spr_Y, spr_A

- - - - - - 0x00BCAD 02:BC9D: 86        .byte $80 + $06   ; ??? + counter
- - - - - - 0x00BCAE 02:BC9E: FA        .byte $FA   ; spr_T

- - - - - - 0x00BCAF 02:BC9F: 00        .byte $00, $10   ; spr_X, spr_Y
- - - - - - 0x00BCB1 02:BCA1: 08        .byte $08, $10   ; 
- - - - - - 0x00BCB3 02:BCA3: 00        .byte $00, $08   ; 
- - - - - - 0x00BCB5 02:BCA5: 08        .byte $08, $08   ; 
- - - - - - 0x00BCB7 02:BCA7: 00        .byte $00, $00   ; 
- - - - - - 0x00BCB9 02:BCA9: 08        .byte $08, $00   ; 

- - - - - - 0x00BCBB 02:BCAB: 00        .byte $00   ; end token



_off010_BCAC_27:
- D 1 - I - 0x00BCBC 02:BCAC: 00        .byte $00, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BCBF 02:BCAF: 85        .byte $80 + $05   ; ??? + counter
- D 1 - I - 0x00BCC0 02:BCB0: CC        .byte $CC   ; spr_T

- D 1 - I - 0x00BCC1 02:BCB1: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BCC3 02:BCB3: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BCC5 02:BCB5: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BCC7 02:BCB7: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BCC9 02:BCB9: 00        .byte $00, $00   ; 

- D 1 - I - 0x00BCCB 02:BCBB: 00        .byte $00   ; end token



_off010_BCBC_28:
- D 1 - I - 0x00BCCC 02:BCBC: 02        .byte $02, $02, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BCCF 02:BCBF: 86        .byte $80 + $06   ; ??? + counter
- D 1 - I - 0x00BCD0 02:BCC0: E2        .byte $E2   ; spr_T

- D 1 - I - 0x00BCD1 02:BCC1: 00        .byte $00, $10   ; spr_X, spr_Y
- D 1 - I - 0x00BCD3 02:BCC3: 08        .byte $08, $10   ; 
- D 1 - I - 0x00BCD5 02:BCC5: 00        .byte $00, $08   ; 
- D 1 - I - 0x00BCD7 02:BCC7: 08        .byte $08, $08   ; 
- D 1 - I - 0x00BCD9 02:BCC9: 00        .byte $00, $00   ; 
- D 1 - I - 0x00BCDB 02:BCCB: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BCDD 02:BCCD: 00        .byte $00   ; end token



_off010_BCCE_0B:
- D 1 - I - 0x00BCDE 02:BCCE: 04        .byte $04, $04   ; X, Y

- D 1 - I - 0x00BCE0 02:BCD0: 40        .byte $40, $00, $00, $00   ; spr_T, spr_X, spr_Y, spr_A

- D 1 - I - 0x00BCE4 02:BCD4: 00        .byte $00   ; end token


_off010_BCD5_0C:
- D 1 - I - 0x00BCE5 02:BCD5: 05        .byte $05, $04   ; X, Y

- D 1 - I - 0x00BCE7 02:BCD7: 41        .byte $41, $00, $00, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BCEB 02:BCDB: 41        .byte $41, $02, $00, $40   ; 

- D 1 - I - 0x00BCEF 02:BCDF: 00        .byte $00   ; end token


_off010_BCE0_0D:
- D 1 - I - 0x00BCF0 02:BCE0: 06        .byte $06, $02   ; X, Y

- D 1 - I - 0x00BCF2 02:BCE2: 42        .byte $42, $00, $00, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BCF6 02:BCE6: 42        .byte $42, $03, $00, $40   ; 

- D 1 - I - 0x00BCFA 02:BCEA: 00        .byte $00   ; end token



_off010_BCEB_0E:
- D 1 - I - 0x00BCFB 02:BCEB: 06        .byte $06, $05   ; X, Y

- D 1 - I - 0x00BCFD 02:BCED: 43        .byte $43, $00, $08, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BD01 02:BCF1: 44        .byte $44, $04, $08, $00   ; 
- D 1 - I - 0x00BD05 02:BCF5: 45        .byte $45, $02, $00, $00   ; 

- D 1 - I - 0x00BD09 02:BCF9: 00        .byte $00   ; end token



_off010_BCFA_0F:
- D 1 - I - 0x00BD0A 02:BCFA: 06        .byte $06, $08   ; X, Y

- D 1 - I - 0x00BD0C 02:BCFC: 46        .byte $46, $00, $10, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BD10 02:BD00: 47        .byte $47, $04, $10, $00   ; 
- D 1 - I - 0x00BD14 02:BD04: 48        .byte $48, $02, $08, $00   ; 
- D 1 - I - 0x00BD18 02:BD08: 49        .byte $49, $02, $00, $00   ; 

- D 1 - I - 0x00BD1C 02:BD0C: 00        .byte $00   ; end token



_off010_BD0D_10:
- D 1 - I - 0x00BD1D 02:BD0D: 04        .byte $04, $04   ; X, Y

- D 1 - I - 0x00BD1F 02:BD0F: 4A        .byte $4A, $00, $00, $00   ; spr_T, spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD23 02:BD13: 00        .byte $00   ; end token



_off010_BD14_11:
- D 1 - I - 0x00BD24 02:BD14: 05        .byte $05, $04   ; X, Y

- D 1 - I - 0x00BD26 02:BD16: 4B        .byte $4B, $00, $00, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BD2A 02:BD1A: 4B        .byte $4B, $02, $00, $40   ; 

- D 1 - I - 0x00BD2E 02:BD1E: 00        .byte $00   ; end token



_off010_BD1F_12:
- D 1 - I - 0x00BD2F 02:BD1F: 06        .byte $06, $02   ; X, Y

- D 1 - I - 0x00BD31 02:BD21: 4C        .byte $4C, $00, $00, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BD35 02:BD25: 4C        .byte $4C, $03, $00, $40   ; 

- D 1 - I - 0x00BD39 02:BD29: 00        .byte $00   ; end token



_off010_BD2A_13:
- D 1 - I - 0x00BD3A 02:BD2A: 06        .byte $06, $05   ; X, Y

- D 1 - I - 0x00BD3C 02:BD2C: 4D        .byte $4D, $00, $08, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BD40 02:BD30: 4E        .byte $4E, $04, $08, $00   ; 
- D 1 - I - 0x00BD44 02:BD34: 4F        .byte $4F, $02, $00, $00   ; 

- D 1 - I - 0x00BD48 02:BD38: 00        .byte $00   ; end token



_off010_BD39_14:
- D 1 - I - 0x00BD49 02:BD39: 06        .byte $06, $08   ; X, Y

- D 1 - I - 0x00BD4B 02:BD3B: 50        .byte $50, $00, $10, $00   ; spr_T, spr_X, spr_Y, spr_A
- D 1 - I - 0x00BD4F 02:BD3F: 51        .byte $51, $04, $10, $00   ; 
- D 1 - I - 0x00BD53 02:BD43: 52        .byte $52, $02, $08, $00   ; 
- D 1 - I - 0x00BD57 02:BD47: 53        .byte $53, $02, $00, $00   ; 

- D 1 - I - 0x00BD5B 02:BD4B: 00        .byte $00   ; end token



_off010_BD4C_29:
- D 1 - I - 0x00BD5C 02:BD4C: 04        .byte $04, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD5F 02:BD4F: 81        .byte $80 + $01   ; ??? + counter
- D 1 - I - 0x00BD60 02:BD50: 29        .byte $29   ; spr_T

- D 1 - I - 0x00BD61 02:BD51: 00        .byte $00, $00   ; spr_X, spr_Y

- D 1 - I - 0x00BD63 02:BD53: 00        .byte $00   ; end token



_off010_BD54_2A:
- D 1 - I - 0x00BD64 02:BD54: 04        .byte $04, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD67 02:BD57: 81        .byte $80 + $01   ; ??? + counter
- D 1 - I - 0x00BD68 02:BD58: 2A        .byte $2A   ; spr_T

- D 1 - I - 0x00BD69 02:BD59: 00        .byte $00, $00   ; spr_X, spr_Y

- D 1 - I - 0x00BD6B 02:BD5B: 00        .byte $00   ; end token



_off010_BD5C_2B:
- D 1 - I - 0x00BD6C 02:BD5C: 04        .byte $04, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD6F 02:BD5F: 81        .byte $80 + $01   ; ??? + counter
- D 1 - I - 0x00BD70 02:BD60: 2B        .byte $2B   ; spr_T

- D 1 - I - 0x00BD71 02:BD61: 00        .byte $00, $00   ; spr_X, spr_Y

- D 1 - I - 0x00BD73 02:BD63: 00        .byte $00   ; end token



_off010_BD64_2C:
- D 1 - I - 0x00BD74 02:BD64: 04        .byte $04, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD77 02:BD67: 81        .byte $80 + $01   ; ??? + counter
- D 1 - I - 0x00BD78 02:BD68: 2C        .byte $2C   ; spr_T

- D 1 - I - 0x00BD79 02:BD69: 00        .byte $00, $00   ; spr_X, spr_Y

- D 1 - I - 0x00BD7B 02:BD6B: 00        .byte $00   ; end token



_off010_BD6C_2D:
- D 1 - I - 0x00BD7C 02:BD6C: 05        .byte $05, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD7F 02:BD6F: 82        .byte $80 + $02   ; ??? + counter
- D 1 - I - 0x00BD80 02:BD70: 2D        .byte $2D   ; spr_T

- D 1 - I - 0x00BD81 02:BD71: 00        .byte $00, $00   ; spr_X, spr_Y
- D 1 - I - 0x00BD83 02:BD73: 04        .byte $04, $00   ; 

- D 1 - I - 0x00BD85 02:BD75: 00        .byte $00   ; end token



_off010_BD76_2E:
- D 1 - I - 0x00BD86 02:BD76: 08        .byte $08, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD89 02:BD79: 82        .byte $80 + $02   ; ??? + counter
- D 1 - I - 0x00BD8A 02:BD7A: 2F        .byte $2F   ; spr_T

- D 1 - I - 0x00BD8B 02:BD7B: 00        .byte $00, $00   ; spr_X, spr_Y
- D 1 - I - 0x00BD8D 02:BD7D: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BD8F 02:BD7F: 00        .byte $00   ; end token



_off010_BD80_2F:
- D 1 - I - 0x00BD90 02:BD80: 08        .byte $08, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD93 02:BD83: 82        .byte $80 + $02   ; ??? + counter
- D 1 - I - 0x00BD94 02:BD84: 31        .byte $31   ; spr_T

- D 1 - I - 0x00BD95 02:BD85: 00        .byte $00, $00   ; spr_X, spr_Y
- D 1 - I - 0x00BD97 02:BD87: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BD99 02:BD89: 00        .byte $00   ; end token



_off010_BD8A_30:
- D 1 - I - 0x00BD9A 02:BD8A: 08        .byte $08, $04, $03   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BD9D 02:BD8D: 82        .byte $80 + $02   ; ??? + counter
- D 1 - I - 0x00BD9E 02:BD8E: 33        .byte $33   ; spr_T

- D 1 - I - 0x00BD9F 02:BD8F: 00        .byte $00, $00   ; spr_X, spr_Y
- D 1 - I - 0x00BDA1 02:BD91: 08        .byte $08, $00   ; 

- D 1 - I - 0x00BDA3 02:BD93: 00        .byte $00   ; end token



_off010_BD94_31:
- D 1 - I - 0x00BDA4 02:BD94: 00        .byte $00, $04, $00   ; spr_X, spr_Y, spr_A

- D 1 - I - 0x00BDA7 02:BD97: 95        .byte $80 + $15   ; ??? + counter
- D 1 - I - 0x00BDA8 02:BD98: 6C        .byte $6C   ; spr_T

- D 1 - I - 0x00BDA9 02:BD99: 00        .byte $00, $14   ; spr_X, spr_Y
- D 1 - I - 0x00BDAB 02:BD9B: 08        .byte $08, $17   ; 
- D 1 - I - 0x00BDAD 02:BD9D: 10        .byte $10, $18   ; 
- D 1 - I - 0x00BDAF 02:BD9F: 18        .byte $18, $19   ; 
- D 1 - I - 0x00BDB1 02:BDA1: 20        .byte $20, $19   ; 
- D 1 - I - 0x00BDB3 02:BDA3: 28        .byte $28, $18   ; 
- D 1 - I - 0x00BDB5 02:BDA5: 00        .byte $00, $0C   ; 
- D 1 - I - 0x00BDB7 02:BDA7: 08        .byte $08, $0F   ; 
- D 1 - I - 0x00BDB9 02:BDA9: 10        .byte $10, $10   ; 
- D 1 - I - 0x00BDBB 02:BDAB: 18        .byte $18, $11   ; 
- D 1 - I - 0x00BDBD 02:BDAD: 20        .byte $20, $11   ; 
- D 1 - I - 0x00BDBF 02:BDAF: 28        .byte $28, $10   ; 
- D 1 - I - 0x00BDC1 02:BDB1: 01        .byte $01, $04   ; 
- D 1 - I - 0x00BDC3 02:BDB3: 08        .byte $08, $07   ; 
- D 1 - I - 0x00BDC5 02:BDB5: 10        .byte $10, $08   ; 
- D 1 - I - 0x00BDC7 02:BDB7: 09        .byte $09, $00   ; 
- D 1 - I - 0x00BDC9 02:BDB9: 1C        .byte $1C, $09   ; 
- D 1 - I - 0x00BDCB 02:BDBB: 24        .byte $24, $09   ; 
- D 1 - I - 0x00BDCD 02:BDBD: 28        .byte $28, $08   ; 
- D 1 - I - 0x00BDCF 02:BDBF: 2C        .byte $2C, $13   ; 
- D 1 - I - 0x00BDD1 02:BDC1: 24        .byte $24, $01   ; 

- D 1 - I - 0x00BDD3 02:BDC3: 00        .byte $00   ; end token



off_BDC4:
- D 1 - I - 0x00BDD4 02:BDC4: 15        .byte $15   ; prepare control byte for 00
- D 1 - I - 0x00BDD5 02:BDC5: 17        .byte $17   ; prepare control byte for FF

- D 1 - I - 0x00BDD6 02:BDC6: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BDD8 02:BDC8: 88        .byte $88   ; normal byte

- D 1 - I - 0x00BDD9 02:BDC9: 17        .byte $17, $03   ; control byte for FF + counter

- D 1 - I - 0x00BDDB 02:BDCB: 88        .byte $88   ; 

- D 1 - I - 0x00BDDC 02:BDCC: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BDDE 02:BDCE: 88        .byte $88, $88   ; normal bytes

- D 1 - I - 0x00BDE0 02:BDD0: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BDE2 02:BDD2: 88        .byte $88, $88   ; 

- D 1 - I - 0x00BDE4 02:BDD4: 17        .byte $17, $03   ; control byte for FF + counter

- D 1 - I - 0x00BDE6 02:BDD6: 8F        .byte $8F   ; 

- D 1 - I - 0x00BDE7 02:BDD7: 17        .byte $17, $03   ; control byte for FF + counter

- D 1 - I - 0x00BDE9 02:BDD9: 8F        .byte $8F   ; 

- D 1 - I - 0x00BDEA 02:BDDA: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BDEC 02:BDDC: 8F        .byte $8F, $8F   ; 

- D 1 - I - 0x00BDEE 02:BDDE: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BDF0 02:BDE0: 8F        .byte $8F, $8F, $FF   ; 

- D 1 - I - 0x00BDF3 02:BDE3: 15        .byte $15, $08   ; control byte for 00 + counter

- D 1 - I - 0x00BDF5 02:BDE5: 10        .byte $10, $82, $24, $11, $44, $0A, $A8, $41, $18, $2E, $5B, $35, $6B, $3E, $08, $08   ; 
- D 1 - I - 0x00BE05 02:BDF5: 18        .byte $18, $2E, $5B, $35, $2A, $14   ; 

- D 1 - I - 0x00BE0B 02:BDFB: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BE0D 02:BDFD: 0E        .byte $0E, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $10, $80, $20, $10, $40, $00, $A0, $40   ; 
- D 1 - I - 0x00BE1D 02:BE0D: FE        .byte $FE, $FE, $8E, $FC, $FC, $FC, $88, $F8, $FE, $8E, $8E, $FC, $FC, $8C, $88, $F8   ; 
- D 1 - I - 0x00BE2D 02:BE1D: 0F        .byte $0F, $0F, $0F, $0F, $0F, $0F, $07, $03, $00, $80, $20, $10, $40, $00, $A8, $40   ; 
- D 1 - I - 0x00BE3D 02:BE2D: 00        .byte $00, $20, $1E, $40, $80, $80, $78, $00, $1E, $0B, $00, $3C, $2E, $16, $04   ; 

- D 1 - I - 0x00BE4C 02:BE3C: 15        .byte $15, $03   ; control byte for 00 + counter

- D 1 - I - 0x00BE4E 02:BE3E: 12        .byte $12, $0C   ; 

- D 1 - I - 0x00BE50 02:BE40: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BE52 02:BE42: 44        .byte $44, $38, $00, $0C, $04, $40, $00, $39, $08   ; 

- D 1 - I - 0x00BE5B 02:BE4B: 15        .byte $15, $0A   ; control byte for 00 + counter

- D 1 - I - 0x00BE5D 02:BE4D: 80        .byte $80, $20, $10, $40, $0A, $A8, $41   ; 

- D 1 - I - 0x00BE64 02:BE54: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BE66 02:BE56: 01        .byte $01, $01, $03, $03, $07, $07, $01, $01, $03, $03, $07, $06, $0E, $0C, $06, $F5   ; 
- D 1 - I - 0x00BE76 02:BE66: EE        .byte $EE, $EF, $DB, $DF, $BB, $B4, $FE, $8E, $9F, $1F, $3B, $3B, $71, $70   ; 

- D 1 - I - 0x00BE84 02:BE74: 15        .byte $15, $04   ; control byte for 00 + counter

- D 1 - I - 0x00BE86 02:BE76: 80        .byte $80, $C0, $E0, $F0, $09, $04, $00, $02, $C0, $E0, $E0, $F0   ; 

- D 1 - I - 0x00BE92 02:BE82: 15        .byte $15, $06   ; control byte for 00 + counter

- D 1 - I - 0x00BE94 02:BE84: 10        .byte $10, $90   ; 

- D 1 - I - 0x00BE96 02:BE86: 15        .byte $15, $03   ; control byte for 00 + counter

- D 1 - I - 0x00BE98 02:BE88: 80        .byte $80, $C0, $E0, $E0, $60, $01, $02, $04, $08, $10, $20, $40, $80, $01, $02, $04   ; 
- D 1 - I - 0x00BEA8 02:BE98: 08        .byte $08, $10, $20, $40, $80, $02, $02, $02, $06, $06, $06, $06, $FE, $7E, $7E, $7E   ; 
- D 1 - I - 0x00BEB8 02:BEA8: FE        .byte $FE, $FE, $FE, $FE, $FE, $FF   ; 

- D 1 - I - 0x00BEBE 02:BEAE: 15        .byte $15, $07   ; control byte for 00 + counter

- D 1 - I - 0x00BEC0 02:BEB0: FF        .byte $FF   ; 

- D 1 - I - 0x00BEC1 02:BEB1: 15        .byte $15, $07   ; control byte for 00 + counter

- D 1 - I - 0x00BEC3 02:BEB3: 80        .byte $80, $40, $20, $10, $08, $04, $02, $01, $80, $40, $20, $10, $08, $04, $02, $01   ; 
- D 1 - I - 0x00BED3 02:BEC3: 0F        .byte $0F, $0F, $5E, $5E, $BD, $BD, $7B, $7B, $1C, $18, $B9, $B1, $73, $63, $E7, $C7   ; 
- D 1 - I - 0x00BEE3 02:BED3: 6A        .byte $6A, $75, $EA, $F4, $E8, $D4, $FF, $50, $E0, $E0, $D5, $CB, $97, $AB   ; 

- D 1 - I - 0x00BEF1 02:BEE1: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BEF3 02:BEE3: FE        .byte $FE, $FE, $FE, $FE, $FE   ; 

- D 1 - I - 0x00BEF8 02:BEE8: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BEFA 02:BEEA: FE        .byte $FE, $AE, $AE, $AF, $FF, $AF, $AE, $AE, $FE, $06, $F7, $EE, $ED, $DA, $DD, $BA   ; 
- D 1 - I - 0x00BF0A 02:BEFA: B5        .byte $B5, $FE, $8E, $9C, $1C, $38, $38, $70, $70, $A0, $50, $A0, $40, $80, $40, $80   ; 

- D 1 - I - 0x00BF1A 02:BF0A: 15        .byte $15, $11   ; control byte for 00 + counter

- D 1 - I - 0x00BF1C 02:BF0C: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 1 - I - 0x00BF22 02:BF12: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BF24 02:BF14: 08        .byte $08, $08, $18, $18, $38, $38, $78, $78, $F8, $F8, $F8, $F8, $F8, $F8, $F8, $F8   ; 
- D 1 - I - 0x00BF34 02:BF24: 07        .byte $07, $1C, $78, $70, $F0, $F8, $FF, $7F, $07, $1F, $7F, $7F, $F7, $F3, $F0, $78   ; 
- D 1 - I - 0x00BF44 02:BF34: E0        .byte $E0, $38, $1E, $0E, $0F, $1F, $FF, $FE, $E0, $F8, $FE, $FE, $EF, $CF, $0F, $1E   ; 
- D 1 - I - 0x00BF54 02:BF44: 07        .byte $07, $07, $07, $07, $07, $03, $03, $01, $10, $80, $20, $10, $40, $08, $A8, $40   ; 
- D 1 - I - 0x00BF64 02:BF54: FE        .byte $FE, $FC, $FC, $FC, $FC, $F8, $F8, $F8, $AE, $AC, $AC, $FC, $AC, $A8, $A8, $F8   ; 

- D 1 - I - 0x00BF74 02:BF64: 15        .byte $15, $04   ; control byte for 00 + counter

- D 1 - I - 0x00BF76 02:BF66: 03        .byte $03, $0C, $30   ; 

- D 1 - I - 0x00BF79 02:BF69: 15        .byte $15, $05   ; control byte for 00 + counter

- D 1 - I - 0x00BF7B 02:BF6B: 03        .byte $03, $0C, $30   ; 

- D 1 - I - 0x00BF7E 02:BF6E: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BF80 02:BF70: 0C        .byte $0C, $30, $C0   ; 

- D 1 - I - 0x00BF83 02:BF73: 15        .byte $15, $05   ; control byte for 00 + counter

- D 1 - I - 0x00BF85 02:BF75: 0C        .byte $0C, $30, $C0   ; 

- D 1 - I - 0x00BF88 02:BF78: 15        .byte $15, $04   ; control byte for 00 + counter

- D 1 - I - 0x00BF8A 02:BF7A: 0F        .byte $0F, $0F, $1E, $1E, $3D, $3D, $7B, $7B, $1C, $18, $39, $31, $73, $63, $E7, $C7   ; 
- D 1 - I - 0x00BF9A 02:BF8A: 6A        .byte $6A, $75, $EA, $D4, $A8, $D4, $A8, $50, $E0, $E0, $C0, $C0, $80, $80   ; 

- D 1 - I - 0x00BFA8 02:BF98: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BFAA 02:BF9A: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BFAC 02:BF9C: B6        .byte $B6, $B6   ; 

- D 1 - I - 0x00BFAE 02:BF9E: 17        .byte $17, $02   ; control byte for FF + counter

- D 1 - I - 0x00BFB0 02:BFA0: B6        .byte $B6, $B6, $FF, $92, $DB, $DB, $FF, $92, $DB, $DB, $F8, $F8, $F8, $F8, $F8, $F8   ; 
- D 1 - I - 0x00BFC0 02:BFB0: F8        .byte $F8, $F8, $F8, $78, $78, $78, $F8, $78, $78, $78, $FC, $DF, $B7, $AF, $94, $9F   ; 
- D 1 - I - 0x00BFD0 02:BFC0: 9F        .byte $9F, $9F, $7C, $9F, $C7, $E0, $C0, $C0, $C0, $C0, $3F, $FA, $EC, $F0, $AA, $FC   ; 
- D 1 - I - 0x00BFE0 02:BFD0: FA        .byte $FA, $FC, $3E, $F9, $E3, $0F, $B7, $07, $0F, $07   ; 

- D 1 - I - 0x00BFEA 02:BFDA: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BFEC 02:BFDC: 01        .byte $01, $01, $02, $FF, $FC, $07   ; 

- D 1 - I - 0x00BFF2 02:BFE2: 15        .byte $15, $02   ; control byte for 00 + counter

- D 1 - I - 0x00BFF4 02:BFE4: 17        .byte $17, $03   ; control byte for FF + counter

- D 1 - I - 0x00BFF6 02:BFE6: 03        .byte $03, $07, $06, $FB, $FB, $03, $F7, $07, $F7, $0F, $EF, $C6, $86, $FE, $8E, $FE   ; 
- D 1 - I - 0x00C006 02:BFF6: 0E        .byte $0E, $FE, $1C, $A0, $50, $80, $80, $80   ; 

- D 1 - I - 0x00C00E 02:BFFE: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C010 03:C000: 15        .byte $15, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C012 03:C002: 7F        .byte $7F, $7F, $7F   ; 

- D 2 - I - 0x00C015 03:C005: 15        .byte $15, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C017 03:C007: 40        .byte $40, $40, $80, $80   ; 

- D 2 - I - 0x00C01B 03:C00B: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C01D 03:C00D: 1F        .byte $1F, $1F, $BF, $BF, $7F, $7F   ; 

- D 2 - I - 0x00C023 03:C013: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C025 03:C015: F0        .byte $F0, $F0, $F0, $E0, $E0, $E0, $C0, $C0, $FF, $7F, $7F, $7F, $FF, $7F, $7F, $7F   ; 
- D 2 - I - 0x00C035 03:C025: 9F        .byte $9F, $DF, $BF, $AF, $9F, $9F, $9F, $9F, $40, $80, $C0, $E0, $C0, $C0, $C0, $C0   ; 
- D 2 - I - 0x00C045 03:C035: FB        .byte $FB, $FE, $FC, $F0, $FA, $FC, $FA, $FC, $0E, $05, $03, $0F, $0F, $07, $0F, $07   ; 

- D 2 - I - 0x00C055 03:C045: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C057 03:C047: 10        .byte $10, $30, $04, $4C, $C0, $00, $80, $12, $10, $04, $44, $40, $11, $00, $FE, $FE   ; 
- D 2 - I - 0x00C067 03:C057: FC        .byte $FC, $FC, $FC, $F8, $F8, $FF, $AF, $AF, $AF, $FF, $AF, $AF, $AF, $FF, $01, $01   ; 
- D 2 - I - 0x00C077 03:C067: 03        .byte $03, $03, $03, $07, $07   ; 

- D 2 - I - 0x00C07C 03:C06C: 17        .byte $17, $09   ; control byte for FF + counter

- D 2 - I - 0x00C07E 03:C06E: 00        .byte $00, $F8, $07   ; 

- D 2 - I - 0x00C081 03:C071: 15        .byte $15, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C083 03:C073: 01        .byte $01   ; 

- D 2 - I - 0x00C084 03:C074: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C086 03:C076: F8        .byte $F8   ; 

- D 2 - I - 0x00C087 03:C077: 17        .byte $17, $04   ; control byte for FF + counter

- D 2 - I - 0x00C089 03:C079: FE        .byte $FE   ; 

- D 2 - I - 0x00C08A 03:C07A: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C08C 03:C07C: 80        .byte $80, $60, $38, $46, $81   ; 

- D 2 - I - 0x00C091 03:C081: 15        .byte $15, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C093 03:C083: 80        .byte $80, $C0, $B8, $7E, $FF, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $AE, $AE, $AE   ; 
- D 2 - I - 0x00C0A3 03:C093: FE        .byte $FE, $AE, $AE, $AE, $FE, $9E, $DE, $BE, $AF, $94, $9E, $9E, $9E, $40, $80, $C0   ; 
- D 2 - I - 0x00C0B3 03:C0A3: E0        .byte $E0, $C0, $C0, $C0, $C0, $5B, $4E, $5C, $F0, $AA, $4C, $5A, $4C, $1E, $0D, $13   ; 
- D 2 - I - 0x00C0C3 03:C0B3: 0F        .byte $0F, $BF, $0F, $1F, $0F   ; 

- D 2 - I - 0x00C0C8 03:C0B8: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C0CA 03:C0BA: 03        .byte $03, $0C, $31, $C1, $03, $03, $3F, $FF, $FC, $F0, $C4, $00, $08, $20, $30, $E0   ; 
- D 2 - I - 0x00C0DA 03:C0CA: 40        .byte $40, $C0, $80, $80   ; 

- D 2 - I - 0x00C0DE 03:C0CE: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C0E0 03:C0D0: CF        .byte $CF, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x00C0E6 03:C0D6: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C0E8 03:C0D8: 03        .byte $03, $07, $07, $0F, $0F, $1F, $1F, $07, $FC, $F8, $F8, $F0, $F0, $E0, $E0, $F8   ; 

- D 2 - I - 0x00C0F8 03:C0E8: 17        .byte $17, $08   ; control byte for FF + counter

- D 2 - I - 0x00C0FA 03:C0EA: AA        .byte $AA, $AA, $AA, $FF, $AA, $AA, $AA   ; 

- D 2 - I - 0x00C101 03:C0F1: 17        .byte $17, $09   ; control byte for FF + counter

- D 2 - I - 0x00C103 03:C0F3: AF        .byte $AF, $AF, $AF, $FF, $AF, $AF, $AE, $FE   ; 

- D 2 - I - 0x00C10B 03:C0FB: 15        .byte $15, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C10D 03:C0FD: 80        .byte $80   ; 

- D 2 - I - 0x00C10E 03:C0FE: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C110 03:C100: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x00C116 03:C106: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C118 03:C108: 01        .byte $01, $01, $01, $01, $03, $03, $03, $03   ; 

- D 2 - I - 0x00C120 03:C110: 17        .byte $17, $08   ; control byte for FF + counter

- D 2 - I - 0x00C122 03:C112: 02        .byte $02, $04, $08, $10, $20, $40, $80, $FF, $FD, $FB, $F7, $EF, $DF, $BF, $7F   ; 

- D 2 - I - 0x00C131 03:C121: 15        .byte $15, $08   ; control byte for 00 + counter


- D 2 - I - 0x00C133 03:C123: 17        .byte $17, $08   ; control byte for FF + counter

- D 2 - I - 0x00C135 03:C125: 00        .byte $00, $40, $20, $10, $08, $04, $02, $01, $FF, $80, $C0, $E0, $F0, $F8, $FC, $FE   ; 
- D 2 - I - 0x00C145 03:C135: 00        .byte $00, $9F, $9C, $F8, $F0, $F0, $F8, $FF, $7F, $C7, $DF   ; 

- D 2 - I - 0x00C150 03:C140: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C152 03:C142: F7        .byte $F7, $F3, $F0, $78, $FE, $3C, $1E, $0E, $0F, $1F, $FF, $FE, $E7, $FB   ; 

- D 2 - I - 0x00C160 03:C150: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C162 03:C152: EF        .byte $EF, $CF, $0F, $1E   ; 

- D 2 - I - 0x00C166 03:C156: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C168 03:C158: 8F        .byte $8F   ; 

- D 2 - I - 0x00C169 03:C159: 17        .byte $17, $03   ; control byte for FF + counter

- D 2 - I - 0x00C16B 03:C15B: 89        .byte $89, $F9, $F8, $88, $88, $F8, $F8, $8C, $88, $F8   ; 

- D 2 - I - 0x00C175 03:C165: 17        .byte $17, $07   ; control byte for FF + counter

- D 2 - I - 0x00C177 03:C167: FD        .byte $FD, $AC, $AC, $AC, $F8, $A8, $A8, $AC, $FC   ; 

- D 2 - I - 0x00C180 03:C170: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C182 03:C172: 17        .byte $17, $08   ; control byte for FF + counter

- D 2 - I - 0x00C184 03:C174: 15        .byte $15, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C186 03:C176: 01        .byte $01, $01, $FB, $F5, $E9, $D1, $A1, $41, $FE, $FE, $04, $0A, $16, $2E, $5E, $BE   ; 

- D 2 - I - 0x00C196 03:C186: 15        .byte $15, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C198 03:C188: 80        .byte $80   ; 

- D 2 - I - 0x00C199 03:C189: 15        .byte $15, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C19B 03:C18B: 80        .byte $80, $C0, $E0, $F0, $78, $9F, $9F, $1F, $9F, $1F   ; 

- D 2 - I - 0x00C1A5 03:C195: 17        .byte $17, $03   ; control byte for FF + counter

- D 2 - I - 0x00C1A7 03:C197: C0        .byte $C0, $C0, $C0, $40, $C0   ; 

- D 2 - I - 0x00C1AC 03:C19C: 15        .byte $15, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C1AE 03:C19E: F6        .byte $F6, $FA, $F4, $F9, $F0   ; 

- D 2 - I - 0x00C1B3 03:C1A3: 17        .byte $17, $03   ; control byte for FF + counter

- D 2 - I - 0x00C1B5 03:C1A5: 0F        .byte $0F, $07, $0F, $07, $0F   ; 

- D 2 - I - 0x00C1BA 03:C1AA: 15        .byte $15, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C1BC 03:C1AC: 17        .byte $17, $04   ; control byte for FF + counter

- D 2 - I - 0x00C1BE 03:C1AE: F8        .byte $F8, $07, $F8   ; 

- D 2 - I - 0x00C1C1 03:C1B1: 15        .byte $15, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C1C3 03:C1B3: 07        .byte $07, $F8, $07, $FF, $FE, $F9, $E7, $99, $61, $81, $01, $01, $01, $06, $18, $66   ; 
- D 2 - I - 0x00C1D3 03:C1C3: 9E        .byte $9E, $7E, $FE, $FE, $81, $01, $01, $01, $01, $01, $01, $01, $7E, $FE, $FE, $FE   ; 
- D 2 - I - 0x00C1E3 03:C1D3: FE        .byte $FE, $FE, $FE, $FE   ; 

- D 2 - I - 0x00C1E7 03:C1D7: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C1E9 03:C1D9: FD        .byte $FD, $F9, $F1, $E1, $C1, $81, $00, $FC, $FA, $F6, $EE, $DE, $BE, $7E, $01, $01   ; 
- D 2 - I - 0x00C1F9 03:C1E9: 03        .byte $03, $83, $03, $07, $07, $FF, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x00C203 03:C1F3: 17        .byte $17, $04   ; control byte for FF + counter

- D 2 - I - 0x00C205 03:C1F5: C3        .byte $C3, $DF, $C7, $FB, $C7   ; 

- D 2 - I - 0x00C20A 03:C1FA: 17        .byte $17, $03   ; control byte for FF + counter

- D 2 - I - 0x00C20C 03:C1FC: 3C        .byte $3C, $20, $38, $04, $38   ; 

- D 2 - I - 0x00C211 03:C201: 15        .byte $15, $0B   ; control byte for 00 + counter

- D 2 - I - 0x00C213 03:C203: 17        .byte $17, $08   ; control byte for FF + counter

- D 2 - I - 0x00C215 03:C205: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE   ; 
- D 2 - I - 0x00C225 03:C215: 00        .byte $00, $FB, $00   ; 

- D 2 - I - 0x00C228 03:C218: 17        .byte $17, $06   ; control byte for FF + counter

- D 2 - I - 0x00C22A 03:C21A: 04        .byte $04   ; 

- D 2 - I - 0x00C22B 03:C21B: 17        .byte $17, $05   ; control byte for FF + counter

- D 2 - I - 0x00C22D 03:C21D: 15        .byte $15, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C22F 03:C21F: 07        .byte $07   ; 

- D 2 - I - 0x00C230 03:C220: 17        .byte $17, $07   ; control byte for FF + counter

- D 2 - I - 0x00C232 03:C222: F8        .byte $F8, $07   ; 

- D 2 - I - 0x00C234 03:C224: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C236 03:C226: 03        .byte $03, $0F, $3D, $F9, $F1, $E1, $C1, $81, $FC, $F0, $CA, $36, $EE, $DE, $BE, $7E   ; 

- D 2 - I - 0x00C246 03:C236: 15        .byte $15, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C248 03:C238: FE        .byte $FE, $FE, $FC, $F9, $F4, $EA, $E8, $C1, $7B, $4E, $44, $51, $5B, $55, $51, $71   ; 
- D 2 - I - 0x00C258 03:C248: 00        .byte $00, $31, $3B, $2E, $24, $20, $20, $00, $FF, $46, $6D, $6D, $6D, $6D, $46, $FF   ; 
- D 2 - I - 0x00C268 03:C258: 00        .byte $00, $B9, $92, $92, $92, $92, $B9, $00, $FE, $1A, $EA, $3B, $38, $EB, $1A, $FE   ; 
- D 2 - I - 0x00C278 03:C268: 00        .byte $00, $E4, $14, $04, $07, $14, $E4, $00, $7F, $51, $5B, $DB, $1B, $DB, $51, $7F   ; 
- D 2 - I - 0x00C288 03:C278: 00        .byte $00, $2E, $24, $24, $E4, $24, $2E, $00, $FD, $87, $7A, $5E, $52, $7A, $86, $FF   ; 
- D 2 - I - 0x00C298 03:C288: 00        .byte $00, $78, $85, $81, $8D, $85, $79, $00, $FB, $0E, $F6, $F6, $06, $F6, $96, $9F   ; 
- D 2 - I - 0x00C2A8 03:C298: 00        .byte $00, $F1, $09, $09, $F9, $09, $09, $00, $9C, $54, $34, $94, $C4, $A4, $94, $9C   ; 
- D 2 - I - 0x00C2B8 03:C2A8: 00        .byte $00, $88, $C8, $68, $38, $18, $08, $00   ; 

- D 2 - I - 0x00C2C0 03:C2B0: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C2C2 03:C2B2: FD        .byte $FD, $F9, $F1, $E1, $C1, $81, $FE, $FC, $FA, $F6, $EE, $DE, $BE, $7E, $FE, $FD   ; 
- D 2 - I - 0x00C2D2 03:C2C2: FA        .byte $FA, $F5, $EA, $D5, $AA, $55   ; 

- D 2 - I - 0x00C2D8 03:C2C8: 15        .byte $15, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C2DA 03:C2CA: AA        .byte $AA, $55, $AA, $55, $AA, $55, $AB, $57   ; 

- D 2 - I - 0x00C2E2 03:C2D2: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C2E4 03:C2D4: 01        .byte $01, $02, $05, $0A, $14, $28, $AE, $5D, $BA, $75, $EA, $D5, $AA, $55, $50, $A0   ; 
- D 2 - I - 0x00C2F4 03:C2E4: 40        .byte $40, $80   ; 

- D 2 - I - 0x00C2F6 03:C2E6: 15        .byte $15, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C2F8 03:C2E8: AA        .byte $AA, $55, $AA, $55, $AA, $55, $AA, $55   ; 

- D 2 - I - 0x00C300 03:C2F0: 15        .byte $15, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C302 03:C2F2: AA        .byte $AA, $55, $AA, $55, $AA, $55, $A3, $43   ; 

- D 2 - I - 0x00C30A 03:C2FA: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C30C 03:C2FC: 01        .byte $01, $02, $05, $0A, $1C, $3C   ; 

- D 2 - I - 0x00C312 03:C302: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C314 03:C304: 81        .byte $81, $FF, $81, $81, $FF, $81, $00, $81, $7E   ; 

- D 2 - I - 0x00C31D 03:C30D: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C31F 03:C30F: 7E        .byte $7E   ; 

- D 2 - I - 0x00C320 03:C310: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C322 03:C312: 01        .byte $01, $02, $07, $0C, $1D, $22, $56, $AA, $08, $C1, $13, $45, $0A, $96, $1D, $62   ; 
- D 2 - I - 0x00C332 03:C322: 80        .byte $80, $C0, $60, $50, $A8, $7C, $46, $ED, $08, $96, $C0, $24, $91, $A8, $6C, $B6   ; 
- D 2 - I - 0x00C342 03:C332: 00        .byte $00, $2C, $7A, $6D, $3A, $44, $22   ; 

- D 2 - I - 0x00C349 03:C339: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C34B 03:C33B: 2C        .byte $2C, $7A, $6D, $3A, $44, $22, $00, $01, $03, $05, $0A, $05, $82, $C1, $E0, $00   ; 
- D 2 - I - 0x00C35B 03:C34B: 01        .byte $01, $02, $8D, $C4, $62, $31, $18, $B2, $AC, $53, $D4, $8D, $72, $C6, $BA, $D9   ; 
- D 2 - I - 0x00C36B 03:C35B: 34        .byte $34, $C5, $B5, $9A, $A6, $55, $D2, $B2, $AC, $53, $54, $8D, $72, $C6, $BA, $D9   ; 
- D 2 - I - 0x00C37B 03:C36B: 34        .byte $34, $C5, $35, $9A, $A6, $55, $D2, $55, $32, $1D, $0A, $06, $83, $C1, $E0, $77   ; 
- D 2 - I - 0x00C38B 03:C37B: 2A        .byte $2A, $1B, $8E, $C5, $62, $31, $18, $CB, $27, $DF, $5E, $BC, $70, $C0, $80, $98   ; 
- D 2 - I - 0x00C39B 03:C38B: A8        .byte $A8, $B0, $C0, $00, $80   ; 

- D 2 - I - 0x00C3A0 03:C390: 15        .byte $15, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C3A2 03:C392: 01        .byte $01, $03, $06, $0D, $1B, $37, $6F, $91, $23, $06, $4D, $1B, $37, $6F, $DF, $49   ; 
- D 2 - I - 0x00C3B2 03:C3A2: 2E        .byte $2E, $14, $08, $00, $80, $80, $80, $5C, $24, $18, $88, $C0, $60, $60, $70, $DF   ; 
- D 2 - I - 0x00C3C2 03:C3B2: BF        .byte $BF, $7E   ; 

- D 2 - I - 0x00C3C4 03:C3B4: 17        .byte $17, $05   ; control byte for FF + counter

- D 2 - I - 0x00C3C6 03:C3B6: BE        .byte $BE, $7C, $F8, $F0, $E0, $C0, $80, $00, $94, $14, $14, $14, $94, $D4, $E4, $C8   ; 
- D 2 - I - 0x00C3D6 03:C3C6: 08        .byte $08, $08, $08, $08, $08, $08, $18, $30, $3F, $1F, $0E, $05, $01, $00, $01, $02   ; 

- D 2 - I - 0x00C3E6 03:C3D6: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C3E8 03:C3D8: 01        .byte $01, $02, $06, $0F, $1E, $3C, $B0, $55, $AA, $55, $EA, $D5, $AA, $00, $40, $A0   ; 
- D 2 - I - 0x00C3F8 03:C3E8: 40        .byte $40, $80   ; 

- D 2 - I - 0x00C3FA 03:C3EA: 15        .byte $15, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C3FC 03:C3EC: 55        .byte $55, $AA, $55, $AA, $55, $AA   ; 

- D 2 - I - 0x00C402 03:C3F2: 15        .byte $15, $09   ; control byte for 00 + counter

- D 2 - I - 0x00C404 03:C3F4: 0C        .byte $0C, $0C, $06, $06, $03, $03, $01, $00, $03, $03, $01, $01   ; 

- D 2 - I - 0x00C410 03:C400: 15        .byte $15, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C412 03:C402: 07        .byte $07, $05, $0D, $09, $1F   ; 

- D 2 - I - 0x00C417 03:C407: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C419 03:C409: 1F        .byte $1F, $00, $02, $F2, $F6, $E0, $0D, $0C, $0D   ; 

- D 2 - I - 0x00C422 03:C412: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C424 03:C414: FD        .byte $FD, $FD, $F9, $F9, $F9, $F9, $00, $F0, $E2, $C2, $06, $B6, $36, $B6   ; 

- D 2 - I - 0x00C432 03:C422: 15        .byte $15, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C434 03:C424: 17        .byte $17, $02   ; control byte for FF + counter

- D 2 - I - 0x00C436 03:C426: 10        .byte $10   ; 

- D 2 - I - 0x00C437 03:C427: 15        .byte $15, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C439 03:C429: 17        .byte $17, $03   ; control byte for FF + counter

- D 2 - I - 0x00C43B 03:C42B: 15        .byte $15, $03   ; control byte for 00 + counter



off_C42D:
- D 2 - I - 0x00C43D 03:C42D: 13        .byte $13   ; prepare control byte for 00
- D 2 - I - 0x00C43E 03:C42E: 15        .byte $15   ; prepare control byte for FF

- D 2 - I - 0x00C43F 03:C42F: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C441 03:C431: AA        .byte $AA, $55, $AA   ; normal bytes

- D 2 - I - 0x00C444 03:C434: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C446 03:C436: 9E        .byte $9E, $1F, $EE, $00, $47, $8F, $77, $00, $66, $EE   ; 

- D 2 - I - 0x00C450 03:C440: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C452 03:C442: 33        .byte $33, $77   ; 

- D 2 - I - 0x00C454 03:C444: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C456 03:C446: 9E        .byte $9E, $1F, $EE, $00, $44, $88, $77, $00, $66, $EE   ; 

- D 2 - I - 0x00C460 03:C450: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C462 03:C452: 33        .byte $33, $77   ; 

- D 2 - I - 0x00C464 03:C454: 13        .byte $13, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00C466 03:C456: 0C        .byte $0C, $19, $33, $66, $FC, $F8   ; 

- D 2 - I - 0x00C46C 03:C45C: 13        .byte $13, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00C46E 03:C45E: F8        .byte $F8, $FC, $18, $30, $60, $C0   ; 

- D 2 - I - 0x00C474 03:C464: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C476 03:C466: 9E        .byte $9E, $1F, $EE, $00, $47, $8F, $77, $03, $66, $EE   ; 

- D 2 - I - 0x00C480 03:C470: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C482 03:C472: 33        .byte $33, $77, $01, $03, $00, $3F, $7F   ; 

- D 2 - I - 0x00C489 03:C479: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C48B 03:C47B: FE        .byte $FE, $F9, $F7, $00, $3F, $7F   ; 

- D 2 - I - 0x00C491 03:C481: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00C493 03:C483: FE        .byte $FE, $FD, $00, $D0, $D0, $B0, $B0, $70, $70, $70, $00, $F0, $F0, $D0, $D0, $90   ; 
- D 2 - I - 0x00C4A3 03:C493: 90        .byte $90, $90   ; 

- D 2 - I - 0x00C4A5 03:C495: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C4A7 03:C497: 0E        .byte $0E, $1F, $33, $66, $CC   ; 

- D 2 - I - 0x00C4AC 03:C49C: 13        .byte $13, $0B   ; control byte for 00 + counter

- D 2 - I - 0x00C4AE 03:C49E: B8        .byte $B8, $FC, $98, $30, $60, $C0   ; 

- D 2 - I - 0x00C4B4 03:C4A4: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C4B6 03:C4A6: 90        .byte $90, $48, $20, $00, $0B, $7C, $00, $D0, $68, $34, $1F, $3F, $F4, $03, $FF, $02   ; 

- D 2 - I - 0x00C4C6 03:C4B6: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C4C8 03:C4B8: 01        .byte $01, $80, $1F, $FF, $FE, $60, $73, $FF, $FE, $7F, $E0   ; 

- D 2 - I - 0x00C4D3 03:C4C3: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C4D5 03:C4C5: 70        .byte $70, $3C, $00, $E8, $88, $E0   ; 

- D 2 - I - 0x00C4DB 03:C4CB: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C4DD 03:C4CD: 80        .byte $80, $C0, $FF   ; 

- D 2 - I - 0x00C4E0 03:C4D0: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C4E2 03:C4D2: 04        .byte $04   ; 

- D 2 - I - 0x00C4E3 03:C4D3: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C4E5 03:C4D5: 03        .byte $03, $07, $0C, $18, $31, $63, $FE, $FC   ; 

- D 2 - I - 0x00C4ED 03:C4DD: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C4EF 03:C4DF: F1        .byte $F1, $F3, $66, $CF, $9F, $31, $63, $C6   ; 

- D 2 - I - 0x00C4F7 03:C4E7: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C4F9 03:C4E9: 8C        .byte $8C, $19, $33, $E6, $CC, $99, $33, $63   ; 

- D 2 - I - 0x00C501 03:C4F1: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C503 03:C4F3: CF        .byte $CF, $9F, $31, $63, $C6, $8C, $F8, $F0   ; 

- D 2 - I - 0x00C50B 03:C4FB: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C50D 03:C4FD: C0        .byte $C0, $C0, $80   ; 

- D 2 - I - 0x00C510 03:C500: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C512 03:C502: 03        .byte $03, $07, $07, $0F, $0F, $1F, $1F, $3F, $03, $07, $07, $0F, $0F, $1F, $1F, $3F   ; 
- D 2 - I - 0x00C522 03:C512: F7        .byte $F7, $EF, $EF, $DF, $DF, $BF, $B8, $78, $FA, $FD, $FA, $FD, $FA, $F8, $F0, $F0   ; 
- D 2 - I - 0x00C532 03:C522: 70        .byte $70, $70, $70, $6C, $EC, $DB, $7B, $76, $90, $B0, $B8, $F4, $F6, $6D, $4D, $5B   ; 

- D 2 - I - 0x00C542 03:C532: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C544 03:C534: C0        .byte $C0   ; 

- D 2 - I - 0x00C545 03:C535: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C547 03:C537: 80        .byte $80, $40   ; 

- D 2 - I - 0x00C549 03:C539: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C54B 03:C53B: 0E        .byte $0E, $1F, $33, $63, $C3, $01   ; 

- D 2 - I - 0x00C551 03:C541: 13        .byte $13, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00C553 03:C543: 0E        .byte $0E, $1C, $38, $70, $E0, $C0   ; 

- D 2 - I - 0x00C559 03:C549: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C55B 03:C54B: 40        .byte $40, $3F, $07   ; 

- D 2 - I - 0x00C55E 03:C54E: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C560 03:C550: 3F        .byte $3F   ; 

- D 2 - I - 0x00C561 03:C551: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C563 03:C553: 3E        .byte $3E, $F8, $E0   ; 

- D 2 - I - 0x00C566 03:C556: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C568 03:C558: E0        .byte $E0   ; 

- D 2 - I - 0x00C569 03:C559: 13        .byte $13, $09   ; control byte for 00 + counter

- D 2 - I - 0x00C56B 03:C55B: 20        .byte $20, $20, $20   ; 

- D 2 - I - 0x00C56E 03:C55E: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C570 03:C560: 03        .byte $03   ; 

- D 2 - I - 0x00C571 03:C561: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C573 03:C563: DF        .byte $DF, $DF, $DF, $01, $01, $03, $3F, $7E, $7E, $FD, $FD, $FB, $FB, $F7, $3F, $7F   ; 

- D 2 - I - 0x00C583 03:C573: 15        .byte $15, $06   ; control byte for FF + counter

- D 2 - I - 0x00C585 03:C575: 70        .byte $70, $F0, $F6, $EA, $D4   ; 

- D 2 - I - 0x00C58A 03:C57A: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C58C 03:C57C: D0        .byte $D0, $E0, $E0, $C9, $D5, $AB, $80   ; 

- D 2 - I - 0x00C593 03:C583: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C595 03:C585: 7E        .byte $7E, $6D, $10, $10, $10   ; 

- D 2 - I - 0x00C59A 03:C58A: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C59C 03:C58C: 00        .byte $00, $43, $46, $EF, $EF, $EF   ; 

- D 2 - I - 0x00C5A2 03:C592: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C5A4 03:C594: C0        .byte $C0, $A0   ; 

- D 2 - I - 0x00C5A6 03:C596: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C5A8 03:C598: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C5AA 03:C59A: 00        .byte $00, $60, $C0   ; 

- D 2 - I - 0x00C5AD 03:C59D: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00C5AF 03:C59F: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C5B1 03:C5A1: 99        .byte $99, $99, $99, $33, $33, $33, $99, $33, $99, $99, $99, $33, $33, $33   ; 

- D 2 - I - 0x00C5BF 03:C5AF: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C5C1 03:C5B1: C0        .byte $C0, $38, $88, $60, $90, $E0, $1E, $E0, $DC, $38, $8C, $64, $9C, $00, $0E, $00   ; 
- D 2 - I - 0x00C5D1 03:C5C1: 71        .byte $71, $07, $8E, $F8, $70, $0E, $11, $71, $8E, $88, $70   ; 

- D 2 - I - 0x00C5DC 03:C5CC: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C5DE 03:C5CE: 01        .byte $01, $02   ; 

- D 2 - I - 0x00C5E0 03:C5D0: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00C5E2 03:C5D2: 05        .byte $05, $03, $37, $0F, $3F, $7F, $7F, $FF, $00, $01, $03, $07, $0F, $3F, $7F   ; 

- D 2 - I - 0x00C5F1 03:C5E1: 15        .byte $15, $09   ; control byte for FF + counter

- D 2 - I - 0x00C5F3 03:C5E3: 51        .byte $51, $AA, $DD, $F7, $FF, $EF, $FD, $FF, $FE, $FE, $FE   ; 

- D 2 - I - 0x00C5FE 03:C5EE: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00C600 03:C5F0: FE        .byte $FE, $02, $D4, $60, $D1, $E8, $D5, $E1, $D2, $F7, $EF, $EE, $DF, $DE, $BD, $BA   ; 
- D 2 - I - 0x00C610 03:C600: 7D        .byte $7D, $FE, $FE, $FC, $FC, $F8, $F8, $F0, $F0, $A0, $50, $A0, $40, $80, $40, $80   ; 

- D 2 - I - 0x00C620 03:C610: 13        .byte $13, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00C622 03:C612: 01        .byte $01, $03, $0B, $07, $07, $2F, $0F   ; 

- D 2 - I - 0x00C629 03:C619: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C62B 03:C61B: 01        .byte $01, $01, $02, $03, $07, $07, $66, $66, $FF, $7F, $7F, $7F, $70, $40, $66, $66   ; 

- D 2 - I - 0x00C63B 03:C62B: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C63D 03:C62D: 80        .byte $80, $80, $80, $80, $40, $20, $C0, $40   ; 

- D 2 - I - 0x00C645 03:C635: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C647 03:C637: 4C        .byte $4C, $3C, $18, $38, $B0, $B0, $A0, $20, $02, $04, $03, $10, $09, $52, $44, $18   ; 
- D 2 - I - 0x00C657 03:C647: 00        .byte $00, $04, $05, $11, $18, $06, $45, $50, $12, $24, $53, $50, $89, $52, $44, $18   ; 
- D 2 - I - 0x00C667 03:C657: 58        .byte $58, $24, $C5, $11, $98, $06, $45, $50   ; 

- D 2 - I - 0x00C66F 03:C65F: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00C671 03:C661: EF        .byte $EF, $FF, $BD, $F7, $FF, $CF, $FD, $FF, $FE, $FE, $FC, $F8, $F8, $F0, $E0, $C0   ; 
- D 2 - I - 0x00C681 03:C671: A0        .byte $A0, $D2, $A4, $C0, $88, $50, $00, $40, $00, $0F, $0F, $1F, $1F, $20, $3F, $3F   ; 
- D 2 - I - 0x00C691 03:C681: 00        .byte $00, $07, $07, $0F, $0F, $1F, $1F, $1F, $3F, $FE, $FE, $FD, $FD, $03, $FB, $FB   ; 
- D 2 - I - 0x00C6A1 03:C691: 3F        .byte $3F   ; 

- D 2 - I - 0x00C6A2 03:C692: 15        .byte $15, $07   ; control byte for FF + counter

- D 2 - I - 0x00C6A4 03:C694: 7A        .byte $7A, $F5, $EA, $F4, $E8, $D4, $A8, $D0, $E0, $E0, $C0, $C0, $80, $80   ; 

- D 2 - I - 0x00C6B2 03:C6A2: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C6B4 03:C6A4: 1F        .byte $1F, $1F, $5F, $3F, $FF, $7F   ; 

- D 2 - I - 0x00C6BA 03:C6AA: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C6BC 03:C6AC: 0F        .byte $0F, $0F, $0F, $1F, $3F, $3F, $5F, $7F   ; 

- D 2 - I - 0x00C6C4 03:C6B4: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C6C6 03:C6B6: 03        .byte $03, $0F, $3C, $F0, $AA, $55, $AA, $00, $03, $0F, $3C, $F0   ; 

- D 2 - I - 0x00C6D2 03:C6C2: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C6D4 03:C6C4: 0F        .byte $0F, $7F, $F0   ; 

- D 2 - I - 0x00C6D7 03:C6C7: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C6D9 03:C6C9: AA        .byte $AA, $50, $8F, $7F, $F0   ; 

- D 2 - I - 0x00C6DE 03:C6CE: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C6E0 03:C6D0: 07        .byte $07, $FF, $F8   ; 

- D 2 - I - 0x00C6E3 03:C6D3: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C6E5 03:C6D5: 07        .byte $07, $FF, $F8   ; 

- D 2 - I - 0x00C6E8 03:C6D8: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C6EA 03:C6DA: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C6EC 03:C6DC: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C6EE 03:C6DE: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C6F0 03:C6E0: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C6F2 03:C6E2: E0        .byte $E0, $FF, $3F   ; 

- D 2 - I - 0x00C6F5 03:C6E5: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C6F7 03:C6E7: E0        .byte $E0, $FF, $3F   ; 

- D 2 - I - 0x00C6FA 03:C6EA: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C6FC 03:C6EC: F0        .byte $F0, $FE, $0F, $01   ; 

- D 2 - I - 0x00C700 03:C6F0: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C702 03:C6F2: AA        .byte $AA, $05, $F0, $FE, $0F, $01   ; 

- D 2 - I - 0x00C708 03:C6F8: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C70A 03:C6FA: C0        .byte $C0, $F0, $3C, $0F, $AA, $55, $AA, $00, $C0, $F0, $3C, $0F   ; 

- D 2 - I - 0x00C716 03:C706: 13        .byte $13, $0B   ; control byte for 00 + counter

- D 2 - I - 0x00C718 03:C708: 01        .byte $01, $01, $03, $03, $07, $3F, $3F, $3F, $3F, $3F, $3F, $FF, $64, $1F, $1F, $1F   ; 

- D 2 - I - 0x00C728 03:C718: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00C72A 03:C71A: 60        .byte $60, $E4, $FB, $FB, $FA, $FA, $F8, $FB, $FD, $2E, $FE, $FE, $FD, $FD, $FF, $FC   ; 
- D 2 - I - 0x00C73A 03:C72A: 04        .byte $04, $04, $A0, $D0, $80, $80, $80, $FC, $C0, $80, $80, $80   ; 

- D 2 - I - 0x00C746 03:C736: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00C748 03:C738: 83        .byte $83, $83, $87, $12, $25, $53, $54, $A8, $50, $60, $00, $58, $24, $C5, $14, $B8   ; 
- D 2 - I - 0x00C758 03:C748: 00        .byte $00, $60, $40   ; 

- D 2 - I - 0x00C75B 03:C74B: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C75D 03:C74D: 03        .byte $03, $0F, $3C, $F0   ; 

- D 2 - I - 0x00C761 03:C751: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C763 03:C753: 03        .byte $03, $0F, $3C, $F0, $03, $0F, $3C, $F0, $C0   ; 

- D 2 - I - 0x00C76C 03:C75C: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C76E 03:C75E: 03        .byte $03, $0F, $3C, $F0, $C0   ; 

- D 2 - I - 0x00C773 03:C763: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C775 03:C765: C0        .byte $C0   ; 

- D 2 - I - 0x00C776 03:C766: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C778 03:C768: C0        .byte $C0   ; 

- D 2 - I - 0x00C779 03:C769: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C77B 03:C76B: 03        .byte $03, $01   ; 

- D 2 - I - 0x00C77D 03:C76D: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C77F 03:C76F: 03        .byte $03, $01   ; 

- D 2 - I - 0x00C781 03:C771: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C783 03:C773: 80        .byte $80, $80, $C0, $C0, $60, $60, $30, $30, $80, $80, $C0, $C0, $60, $60, $30, $30   ; 
- D 2 - I - 0x00C793 03:C783: 01        .byte $01, $01, $02, $03, $05, $07, $0F, $0C, $06, $0E, $0D, $1D, $1B, $3A, $32, $70   ; 
- D 2 - I - 0x00C7A3 03:C793: F5        .byte $F5, $EE, $F5, $EE, $F5, $AA, $75, $AA, $E4, $A4, $A4, $24, $20, $20, $20, $20   ; 
- D 2 - I - 0x00C7B3 03:C7A3: 55        .byte $55, $AE, $55, $AE, $55, $AE, $54, $AC, $04, $04, $04, $04, $04, $04, $04, $04   ; 
- D 2 - I - 0x00C7C3 03:C7B3: C1        .byte $C1, $81, $82, $82, $04, $04, $08, $08, $86, $8E, $8C, $9C, $18, $38, $30, $70   ; 

- D 2 - I - 0x00C7D3 03:C7C3: 13        .byte $13, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00C7D5 03:C7C5: AA        .byte $AA, $55, $AA, $55   ; 

- D 2 - I - 0x00C7D9 03:C7C9: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C7DB 03:C7CB: 03        .byte $03, $0F, $3C, $F0   ; 

- D 2 - I - 0x00C7DF 03:C7CF: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C7E1 03:C7D1: AA        .byte $AA, $55, $AB, $5F, $3C, $F0, $03, $0F, $3C, $F0, $C0   ; 

- D 2 - I - 0x00C7EC 03:C7DC: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C7EE 03:C7DE: 03        .byte $03, $0F, $BE, $F5, $EA, $55   ; 

- D 2 - I - 0x00C7F4 03:C7E4: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C7F6 03:C7E6: C0        .byte $C0   ; 

- D 2 - I - 0x00C7F7 03:C7E7: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C7F9 03:C7E9: C0        .byte $C0, $00, $AA, $55, $AA, $55   ; 

- D 2 - I - 0x00C7FF 03:C7EF: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C801 03:C7F1: 07        .byte $07, $3F, $F8   ; 

- D 2 - I - 0x00C804 03:C7F4: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C806 03:C7F6: 07        .byte $07, $3F, $F8   ; 

- D 2 - I - 0x00C809 03:C7F9: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C80B 03:C7FB: F0        .byte $F0, $FE, $0F   ; 

- D 2 - I - 0x00C80E 03:C7FE: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C810 03:C800: F0        .byte $F0, $FE, $0F   ; 

- D 2 - I - 0x00C813 03:C803: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C815 03:C805: 80        .byte $80   ; 

- D 2 - I - 0x00C816 03:C806: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C818 03:C808: 80        .byte $80, $18, $18, $0C, $0C, $06, $06, $03, $03, $18, $18, $AE, $5D, $AE, $57, $03   ; 
- D 2 - I - 0x00C828 03:C818: 03        .byte $03, $18, $18, $20, $20, $20, $FF, $7F, $00, $60, $E0, $DF, $DF, $DF   ; 

- D 2 - I - 0x00C836 03:C826: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C838 03:C828: 10        .byte $10, $10, $20, $20, $40, $C0   ; 

- D 2 - I - 0x00C83E 03:C82E: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C840 03:C830: 60        .byte $60, $E0, $D5, $CA, $95, $2A   ; 

- D 2 - I - 0x00C846 03:C836: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C848 03:C838: 02        .byte $02, $02, $7A, $9A, $9A   ; 

- D 2 - I - 0x00C84D 03:C83D: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C84F 03:C83F: F8        .byte $F8, $FD, $FC, $85, $04, $04, $C0   ; 

- D 2 - I - 0x00C856 03:C846: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C858 03:C848: C0        .byte $C0   ; 

- D 2 - I - 0x00C859 03:C849: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C85B 03:C84B: 03        .byte $03, $0F, $C0, $60, $30, $18, $0C, $06, $03, $01, $C0, $60, $30, $18, $0C, $06   ; 
- D 2 - I - 0x00C86B 03:C85B: 03        .byte $03, $01, $01   ; 

- D 2 - I - 0x00C86E 03:C85E: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C870 03:C860: 01        .byte $01   ; 

- D 2 - I - 0x00C871 03:C861: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C873 03:C863: 80        .byte $80, $C0, $60, $30, $18, $0C, $06, $03, $80, $C0, $60, $30, $18, $0C, $06, $03   ; 
- D 2 - I - 0x00C883 03:C873: 01        .byte $01, $03, $06, $0C, $18, $30, $60, $C0, $01, $03, $06, $0C, $18, $30, $60, $C0   ; 
- D 2 - I - 0x00C893 03:C883: 80        .byte $80   ; 

- D 2 - I - 0x00C894 03:C884: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C896 03:C886: 80        .byte $80   ; 

- D 2 - I - 0x00C897 03:C887: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C899 03:C889: 1A        .byte $1A, $19, $1B, $16, $2D, $5B, $B7, $6F, $05, $07, $06, $0D, $1B, $37, $6F, $DF   ; 
- D 2 - I - 0x00C8A9 03:C899: 00        .byte $00   ; 

- D 2 - I - 0x00C8AA 03:C89A: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C8AC 03:C89C: 00        .byte $00   ; 

- D 2 - I - 0x00C8AD 03:C89D: 15        .byte $15, $06   ; control byte for FF + counter

- D 2 - I - 0x00C8AF 03:C89F: 00        .byte $00   ; 

- D 2 - I - 0x00C8B0 03:C8A0: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00C8B2 03:C8A2: 00        .byte $00, $C3, $DF, $C7, $FB, $C7   ; 

- D 2 - I - 0x00C8B8 03:C8A8: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00C8BA 03:C8AA: 3C        .byte $3C, $20, $38, $04, $38   ; 

- D 2 - I - 0x00C8BF 03:C8AF: 13        .byte $13, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00C8C1 03:C8B1: 01        .byte $01   ; 

- D 2 - I - 0x00C8C2 03:C8B2: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C8C4 03:C8B4: 01        .byte $01, $DF, $BE, $7C, $F8, $F8, $FC, $F4, $FA, $BE, $7C, $F8, $F0, $E0, $C0, $80   ; 

- D 2 - I - 0x00C8D4 03:C8C4: 13        .byte $13, $0E   ; control byte for 00 + counter

- D 2 - I - 0x00C8D6 03:C8C6: 55        .byte $55, $AA, $55, $01, $03, $06, $0C, $18, $30, $60, $C0, $01, $03, $06, $0C, $18   ; 
- D 2 - I - 0x00C8E6 03:C8D6: 75        .byte $75, $EA, $D5, $80   ; 

- D 2 - I - 0x00C8EA 03:C8DA: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C8EC 03:C8DC: 80        .byte $80   ; 

- D 2 - I - 0x00C8ED 03:C8DD: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C8EF 03:C8DF: 55        .byte $55, $AA, $55, $00, $3C, $3C, $42, $7C, $72, $7E, $3C, $3C, $42, $42, $3C, $02   ; 
- D 2 - I - 0x00C8FF 03:C8EF: 0C        .byte $0C   ; 

- D 2 - I - 0x00C900 03:C8F0: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C902 03:C8F2: E0        .byte $E0, $38, $0F, $03   ; 

- D 2 - I - 0x00C906 03:C8F6: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C908 03:C8F8: E0        .byte $E0, $38, $0F, $03   ; 

- D 2 - I - 0x00C90C 03:C8FC: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C90E 03:C8FE: F0        .byte $F0, $7F, $0F   ; 

- D 2 - I - 0x00C911 03:C901: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C913 03:C903: F0        .byte $F0, $7F, $0F   ; 

- D 2 - I - 0x00C916 03:C906: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C918 03:C908: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C91A 03:C90A: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00C91C 03:C90C: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C91E 03:C90E: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C920 03:C910: 0F        .byte $0F, $FE, $F0   ; 

- D 2 - I - 0x00C923 03:C913: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00C925 03:C915: 0F        .byte $0F, $FE, $F0   ; 

- D 2 - I - 0x00C928 03:C918: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C92A 03:C91A: 07        .byte $07, $1C, $F0, $C0   ; 

- D 2 - I - 0x00C92E 03:C91E: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C930 03:C920: 07        .byte $07, $1C, $F0, $C0   ; 

- D 2 - I - 0x00C934 03:C924: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C936 03:C926: 95        .byte $95, $1A, $35, $2A, $45, $C2, $01, $00, $60, $E0, $C0, $C0, $80   ; 

- D 2 - I - 0x00C943 03:C933: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C945 03:C935: 55        .byte $55, $AA, $55, $AA, $55, $AA, $55, $AA   ; 

- D 2 - I - 0x00C94D 03:C93D: 13        .byte $13, $0B   ; control byte for 00 + counter

- D 2 - I - 0x00C94F 03:C93F: 18        .byte $18, $19, $E0, $F6, $07, $00, $03, $FF, $E7, $E6, $1F, $09   ; 

- D 2 - I - 0x00C95B 03:C94B: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00C95D 03:C94D: 24        .byte $24, $74, $23, $1B, $FC, $00, $FC, $FF, $FB, $FB, $FC, $E4   ; 

- D 2 - I - 0x00C969 03:C959: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C96B 03:C95B: 22        .byte $22, $FF, $22   ; 

- D 2 - I - 0x00C96E 03:C95E: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00C970 03:C960: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C972 03:C962: 22        .byte $22, $BB, $22, $BB, $22   ; 

- D 2 - I - 0x00C977 03:C967: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C979 03:C969: 01        .byte $01, $02, $22, $24, $24, $FC, $F8, $00, $0E, $1C, $DC, $D8, $D8   ; 

- D 2 - I - 0x00C986 03:C976: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00C988 03:C978: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03   ; 

- D 2 - I - 0x00C998 03:C988: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C99A 03:C98A: 20        .byte $20, $50, $50, $90, $90, $90   ; 

- D 2 - I - 0x00C9A0 03:C990: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C9A2 03:C992: C0        .byte $C0, $A0, $A0, $60, $60, $60, $00, $6C, $5F, $76, $7C, $7C, $1C, $81   ; 

- D 2 - I - 0x00C9B0 03:C9A0: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00C9B2 03:C9A2: 20        .byte $20, $68, $70, $0A, $E7, $7E   ; 

- D 2 - I - 0x00C9B8 03:C9A8: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00C9BA 03:C9AA: 09        .byte $09, $00, $01, $01, $03, $03, $07, $07, $06, $06, $06, $06, $06, $0C, $0C, $0C   ; 
- D 2 - I - 0x00C9CA 03:C9BA: 18        .byte $18, $06, $06, $06, $06, $0C, $0C, $0C, $18, $00, $80, $C0, $60, $B0, $D8, $EC   ; 
- D 2 - I - 0x00C9DA 03:C9CA: F6        .byte $F6, $80, $C0, $60, $B0, $D8, $EC, $F6, $FB, $90, $91, $A0, $9E, $C6, $FF, $E1   ; 
- D 2 - I - 0x00C9EA 03:C9DA: 87        .byte $87, $60, $61, $5E, $61, $21, $1E, $00, $78, $E7, $BE, $B6, $92, $B6, $B6, $B6   ; 
- D 2 - I - 0x00C9FA 03:C9EA: 92        .byte $92, $18, $65, $49, $49, $6D, $49, $49, $49, $09, $09, $09, $F1, $31, $F9, $09   ; 
- D 2 - I - 0x00CA0A 03:C9FA: C3        .byte $C3, $06, $06, $F6, $0E, $0E, $F6, $06, $3C, $18, $18, $30, $30, $60, $60, $C0   ; 
- D 2 - I - 0x00CA1A 03:CA0A: C0        .byte $C0, $BA, $5D, $BA, $30, $60, $60, $C0, $C0, $01, $01, $03, $03, $06, $06, $0C   ; 
- D 2 - I - 0x00CA2A 03:CA1A: 0C        .byte $0C, $AB, $55, $AB, $03, $06, $06, $0C, $0C   ; 

- D 2 - I - 0x00CA33 03:CA23: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CA35 03:CA25: 01        .byte $01, $01, $03, $03, $06, $07, $03, $03, $06, $06, $0C, $0C, $18, $18, $FB, $FD   ; 
- D 2 - I - 0x00CA45 03:CA35: BE        .byte $BE, $9F, $2F, $57, $AB, $55, $7D, $3E, $1F, $0F, $07, $03, $01   ; 

- D 2 - I - 0x00CA52 03:CA42: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CA54 03:CA44: 80        .byte $80, $C0, $7F, $80, $FE, $FC, $F8, $80, $C0, $7F, $BE   ; 

- D 2 - I - 0x00CA5F 03:CA4F: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00CA61 03:CA51: 07        .byte $07, $80, $00, $20, $00, $08, $00, $02   ; 

- D 2 - I - 0x00CA69 03:CA59: 13        .byte $13, $09   ; control byte for 00 + counter

- D 2 - I - 0x00CA6B 03:CA5B: 7A        .byte $7A, $18, $FC, $85, $C1, $BD, $0C, $7E, $84, $84, $78, $00, $3C, $42, $42, $3C   ; 
- D 2 - I - 0x00CA7B 03:CA6B: 92        .byte $92, $B6, $B6, $B6, $F6, $F6, $F5, $3D, $49, $49, $49, $49, $08, $08, $08, $00   ; 
- D 2 - I - 0x00CA8B 03:CA7B: BD        .byte $BD, $8D, $82, $C0, $BC, $8C, $C2, $C2, $42, $42, $7C, $3C, $42, $42, $3C, $00   ; 
- D 2 - I - 0x00CA9B 03:CA8B: 01        .byte $01, $01, $03, $03, $06, $06, $0C, $0C, $01, $01, $03, $03, $06, $06, $0C, $0C   ; 
- D 2 - I - 0x00CAAB 03:CA9B: 80        .byte $80, $80   ; 

- D 2 - I - 0x00CAAD 03:CA9D: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00CAAF 03:CA9F: 80        .byte $80, $80   ; 

- D 2 - I - 0x00CAB1 03:CAA1: 13        .byte $13, $06   ; control byte for 00 + counter

- D 2 - I - 0x00CAB3 03:CAA3: 18        .byte $18, $18, $30, $30, $60, $60, $C0, $C0, $18, $18, $30, $30, $60, $60, $C0, $C0   ; 
- D 2 - I - 0x00CAC3 03:CAB3: 4E        .byte $4E, $8D, $1A, $9D, $20, $20, $20, $FF, $30, $30, $60, $60, $DF, $DF, $DF, $00   ; 
- D 2 - I - 0x00CAD3 03:CAC3: AA        .byte $AA, $54, $AC, $58, $40, $40, $40, $FF   ; 

- D 2 - I - 0x00CADB 03:CACB: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CADD 03:CACD: BF        .byte $BF, $BF, $BF, $00, $01, $02, $04, $08, $90, $A0, $C0, $80, $0E, $1C, $38, $70   ; 
- D 2 - I - 0x00CAED 03:CADD: 60        .byte $60, $40   ; 

- D 2 - I - 0x00CAEF 03:CADF: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CAF1 03:CAE1: 07        .byte $07, $27, $67, $47   ; 

- D 2 - I - 0x00CAF5 03:CAE5: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00CAF7 03:CAE7: 0F        .byte $0F, $0F, $DF, $9F, $B8, $3B, $78, $7B, $00, $FC, $F9, $F9, $F1, $F1, $F3, $F0   ; 
- D 2 - I - 0x00CB07 03:CAF7: FE        .byte $FE, $F2, $E6, $E6, $0E, $7E, $7C, $7C, $80, $C0, $40, $60, $20, $30, $10, $18   ; 
- D 2 - I - 0x00CB17 03:CB07: 80        .byte $80, $C0, $40, $60, $20, $30, $10, $18, $40, $6F, $23, $3F, $10, $1F, $0F, $00   ; 
- D 2 - I - 0x00CB27 03:CB17: 0F        .byte $0F, $10, $10, $0F   ; 

- D 2 - I - 0x00CB2B 03:CB1B: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CB2D 03:CB1D: 03        .byte $03, $02, $3C, $8D, $FF, $C3, $7F, $3E, $00, $BD, $C3, $42, $3C   ; 

- D 2 - I - 0x00CB3A 03:CB2A: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CB3C 03:CB2C: 04        .byte $04, $F0, $30, $08, $08, $F0   ; 

- D 2 - I - 0x00CB42 03:CB32: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CB44 03:CB34: F0        .byte $F0, $08, $08, $F0   ; 

- D 2 - I - 0x00CB48 03:CB38: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CB4A 03:CB3A: C0        .byte $C0, $60, $30, $18, $0C, $06, $03, $00, $C0, $60, $30, $18, $0C, $06, $03   ; 

- D 2 - I - 0x00CB59 03:CB49: 13        .byte $13, $05   ; control byte for 00 + counter

- D 2 - I - 0x00CB5B 03:CB4B: 03        .byte $03, $0F, $FC, $E0   ; 

- D 2 - I - 0x00CB5F 03:CB4F: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CB61 03:CB51: 03        .byte $03, $0F, $FC, $E0, $80   ; 

- D 2 - I - 0x00CB66 03:CB56: 13        .byte $13, $07   ; control byte for 00 + counter

- D 2 - I - 0x00CB68 03:CB58: 80        .byte $80, $00, $AA, $55, $AA, $55   ; 

- D 2 - I - 0x00CB6E 03:CB5E: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CB70 03:CB60: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00CB72 03:CB62: 01        .byte $01, $01, $01   ; 

- D 2 - I - 0x00CB75 03:CB65: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00CB77 03:CB67: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CB79 03:CB69: FE        .byte $FE, $FE, $FE   ; 

- D 2 - I - 0x00CB7C 03:CB6C: 13        .byte $13, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CB7E 03:CB6E: F4        .byte $F4, $F8, $10, $1F, $1C, $FB, $FB, $00, $0B, $07, $EF, $EF, $EF, $0C, $0C, $00   ; 
- D 2 - I - 0x00CB8E 03:CB7E: 08        .byte $08, $0C, $04, $06, $02, $03, $01, $01, $08, $0C, $AE, $57, $AA, $57, $01, $01   ; 
- D 2 - I - 0x00CB9E 03:CB8E: 03        .byte $03, $07, $3F, $70   ; 

- D 2 - I - 0x00CBA2 03:CB92: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CBA4 03:CB94: 03        .byte $03, $07, $3F, $70   ; 

- D 2 - I - 0x00CBA8 03:CB98: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CBAA 03:CB9A: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80   ; 

- D 2 - I - 0x00CBB2 03:CBA2: 13        .byte $13, $08   ; control byte for 00 + counter

- D 2 - I - 0x00CBB4 03:CBA4: 08        .byte $08, $0C, $04, $06, $02, $03, $01, $01, $08, $0C, $04, $06, $02, $03, $01, $01   ; 
- D 2 - I - 0x00CBC4 03:CBB4: 00        .byte $00, $01, $07, $0F, $3F, $7F, $43, $27   ; 

- D 2 - I - 0x00CBCC 03:CBBC: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CBCE 03:CBBE: 01        .byte $01, $07, $0F, $3F, $20, $10, $80, $80, $C0, $C1, $E2, $FE, $24, $6C, $00, $E0   ; 
- D 2 - I - 0x00CBDE 03:CBCE: FC        .byte $FC, $FE, $FC, $F8, $18, $10   ; 

- D 2 - I - 0x00CBE4 03:CBD4: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CBE6 03:CBD6: C0        .byte $C0, $F8, $3F, $07   ; 

- D 2 - I - 0x00CBEA 03:CBDA: 13        .byte $13, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CBEC 03:CBDC: C0        .byte $C0, $F8, $3F, $07   ; 

- D 2 - I - 0x00CBF0 03:CBE0: 13        .byte $13, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CBF2 03:CBE2: 2F        .byte $2F, $1F, $1F, $1F, $1B, $1B, $18, $1F, $10, $00, $1F, $1F, $1C, $1C, $1F, $1F   ; 
- D 2 - I - 0x00CC02 03:CBF2: C8        .byte $C8, $D0, $E0, $C0, $C0, $C0, $C0, $C0, $34, $2C, $DC, $FC, $FC, $FC, $FC, $FC   ; 
- D 2 - I - 0x00CC12 03:CC02: 1F        .byte $1F, $1B, $1B, $18, $1F   ; 

- D 2 - I - 0x00CC17 03:CC07: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00CC19 03:CC09: 1F        .byte $1F, $1F, $1C, $FC   ; 

- D 2 - I - 0x00CC1D 03:CC0D: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00CC1F 03:CC0F: 1F        .byte $1F, $1F, $1F, $C0, $C0, $C0, $C0, $C0, $C3, $C3, $C0, $FC, $FC   ; 

- D 2 - I - 0x00CC2C 03:CC1C: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00CC2E 03:CC1E: FC        .byte $FC, $FC, $FC   ; 

- D 2 - I - 0x00CC31 03:CC21: 15        .byte $15, $10   ; control byte for FF + counter

- D 2 - I - 0x00CC33 03:CC23: AA        .byte $AA, $55, $AA, $55, $AA, $55, $AA, $55   ; 

- D 2 - I - 0x00CC3B 03:CC2B: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00CC3D 03:CC2D: 98        .byte $98, $44, $80, $00, $80, $04, $0E, $0E, $E4, $F8, $FC, $FE, $FE, $FB, $F1, $F1   ; 
- D 2 - I - 0x00CC4D 03:CC3D: FF        .byte $FF, $24, $53, $50, $89, $52, $44, $18, $00, $24, $C5, $11, $98, $06, $45, $50   ; 
- D 2 - I - 0x00CC5D 03:CC4D: FF        .byte $FF, $25, $52, $52, $8A, $54, $44, $18, $00, $24, $C5, $11, $99, $03, $43, $57   ; 



off_CC5D:
- D 2 - I - 0x00CC6D 03:CC5D: 1A        .byte $1A   ; prepare control byte for 00
- D 2 - I - 0x00CC6E 03:CC5E: 26        .byte $26   ; prepare control byte for FF

- D 2 - I - 0x00CC6F 03:CC5F: 1A        .byte $1A, $10   ; control byte for 00 + counter

- D 2 - I - 0x00CC71 03:CC61: 38        .byte $38, $7C, $7E, $FE   ; normal bytes

- D 2 - I - 0x00CC75 03:CC65: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00CC77 03:CC67: 18        .byte $18, $3C, $2E, $5E, $7F, $AF, $7F, $5F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F   ; 

- D 2 - I - 0x00CC87 03:CC77: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00CC89 03:CC79: F3        .byte $F3, $9F, $FF, $FE, $F3, $9F, $FF, $FE, $9F, $FE, $F2, $93, $9F, $FE, $F2, $93   ; 
- D 2 - I - 0x00CC99 03:CC89: FE        .byte $FE, $F8, $CE, $7E, $FE, $F8, $CE, $7E, $C9, $4F, $7F, $F9, $C9, $4F, $7F, $F9   ; 

- D 2 - I - 0x00CCA9 03:CC99: 26        .byte $26, $08   ; control byte for FF + counter

- D 2 - I - 0x00CCAB 03:CC9B: 15        .byte $15, $1F, $15, $1F, $15, $1F, $15, $1F   ; 

- D 2 - I - 0x00CCB3 03:CCA3: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00CCB5 03:CCA5: 7F        .byte $7F, $7F, $3F, $3F, $15, $1F, $15, $1F, $15, $1F, $15, $1F, $FF, $FE, $7E, $7C   ; 
- D 2 - I - 0x00CCC5 03:CCB5: 38        .byte $38, $18, $7E, $3C, $AF, $3E, $1E, $2C, $08   ; 

- D 2 - I - 0x00CCCE 03:CCBE: 1A        .byte $1A, $12   ; control byte for 00 + counter

- D 2 - I - 0x00CCD0 03:CCC0: 07        .byte $07   ; 

- D 2 - I - 0x00CCD1 03:CCC1: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00CCD3 03:CCC3: 03        .byte $03, $1F, $FC   ; 

- D 2 - I - 0x00CCD6 03:CCC6: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CCD8 03:CCC8: 03        .byte $03, $1C, $E0, $03   ; 

- D 2 - I - 0x00CCDC 03:CCCC: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CCDE 03:CCCE: 01        .byte $01, $0F, $7E, $F0, $80   ; 

- D 2 - I - 0x00CCE3 03:CCD3: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CCE5 03:CCD5: 01        .byte $01, $0E, $70, $81, $0F, $7F, $FF, $07, $3F, $F8, $C0   ; 

- D 2 - I - 0x00CCF0 03:CCE0: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CCF2 03:CCE2: 07        .byte $07, $38, $C0, $07, $3F   ; 

- D 2 - I - 0x00CCF7 03:CCE7: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00CCF9 03:CCE9: F8        .byte $F8, $C7, $C0, $F0, $38, $0C, $06, $06, $03, $83, $30, $0C, $C6, $F2, $F9, $F9   ; 
- D 2 - I - 0x00CD09 03:CCF9: 7C        .byte $7C, $BC   ; 

- D 2 - I - 0x00CD0B 03:CCFB: 1A        .byte $1A, $0E   ; control byte for 00 + counter

- D 2 - I - 0x00CD0D 03:CCFD: 80        .byte $80, $80, $F3, $9F, $FF, $FE, $F3, $9F, $FC, $E0, $9F, $FE, $F2, $93, $9F, $FC   ; 
- D 2 - I - 0x00CD1D 03:CD0D: E0        .byte $E0, $00, $FE, $F8, $CE, $7E, $F0, $80   ; 

- D 2 - I - 0x00CD25 03:CD15: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CD27 03:CD17: C9        .byte $C9, $4F, $7F, $F0, $80   ; 

- D 2 - I - 0x00CD2C 03:CD1C: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CD2E 03:CD1E: 0F        .byte $0F, $0F, $07, $07, $03, $03, $01   ; 

- D 2 - I - 0x00CD35 03:CD25: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00CD37 03:CD27: E0        .byte $E0   ; 

- D 2 - I - 0x00CD38 03:CD28: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CD3A 03:CD2A: 03        .byte $03, $1C, $E0, $00, $1F   ; 

- D 2 - I - 0x00CD3F 03:CD2F: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00CD41 03:CD31: FC        .byte $FC, $E3, $1C, $E0   ; 

- D 2 - I - 0x00CD45 03:CD35: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CD47 03:CD37: 01        .byte $01, $0E, $70, $80   ; 

- D 2 - I - 0x00CD4B 03:CD3B: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CD4D 03:CD3D: FE        .byte $FE, $F1, $8E, $70, $80   ; 

- D 2 - I - 0x00CD52 03:CD42: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CD54 03:CD44: 38        .byte $38, $C0   ; 

- D 2 - I - 0x00CD56 03:CD46: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00CD58 03:CD48: 38        .byte $38, $C0   ; 

- D 2 - I - 0x00CD5A 03:CD4A: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00CD5C 03:CD4C: 41        .byte $41, $41, $41, $41, $41, $41, $41, $41, $5E, $5E, $5E, $5E, $5E, $5E, $5E, $5E   ; 
- D 2 - I - 0x00CD6C 03:CD5C: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80, $40, $40, $40, $40, $40, $40, $40, $40   ; 

- D 2 - I - 0x00CD7C 03:CD6C: 1A        .byte $1A, $0D   ; control byte for 00 + counter

- D 2 - I - 0x00CD7E 03:CD6E: 03        .byte $03, $1C, $E0   ; 

- D 2 - I - 0x00CD81 03:CD71: 1A        .byte $1A, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00CD83 03:CD73: 01        .byte $01, $0E, $70, $80   ; 

- D 2 - I - 0x00CD87 03:CD77: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00CD89 03:CD79: 0E        .byte $0E, $7F, $FF, $7E, $20, $07, $38, $C0, $0E, $67, $7C, $0D, $10   ; 

- D 2 - I - 0x00CD96 03:CD86: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00CD98 03:CD88: 01        .byte $01, $01, $03   ; 

- D 2 - I - 0x00CD9B 03:CD8B: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CD9D 03:CD8D: 01        .byte $01, $02, $02, $04, $20, $20, $20, $20, $20, $20, $20, $20, $2F, $2F, $2F, $2F   ; 
- D 2 - I - 0x00CDAD 03:CD9D: 2F        .byte $2F, $2F, $2F, $2F, $C0, $C6, $C0, $C0, $C4, $C0, $CC, $C0, $22, $20, $20, $20   ; 
- D 2 - I - 0x00CDBD 03:CDAD: 24        .byte $24, $24, $20, $20, $0A, $08, $18, $18, $18, $18, $18, $18, $05, $05, $05, $05   ; 
- D 2 - I - 0x00CDCD 03:CDBD: 05        .byte $05, $05, $05, $05   ; 

- D 2 - I - 0x00CDD1 03:CDC1: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CDD3 03:CDC3: 03        .byte $03, $1C, $10, $10, $10, $10, $FF, $FC, $E3, $DC, $D0, $D0, $D0, $D0, $10, $10   ; 
- D 2 - I - 0x00CDE3 03:CDD3: 10        .byte $10, $10, $10, $10, $10, $10, $17, $17, $17, $17, $17, $17, $17, $17, $60, $60   ; 
- D 2 - I - 0x00CDF3 03:CDE3: 62        .byte $62, $60, $66, $60, $60, $60, $90, $90, $92, $92, $90, $90, $90, $90   ; 

- D 2 - I - 0x00CE01 03:CDF1: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CE03 03:CDF3: 02        .byte $02, $11, $95, $A8, $69, $00, $03, $0E, $38, $D5, $80, $08, $42   ; 

- D 2 - I - 0x00CE10 03:CE00: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00CE12 03:CE02: 07        .byte $07, $38, $C0   ; 

- D 2 - I - 0x00CE15 03:CE05: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00CE17 03:CE07: 0E        .byte $0E, $7F, $FF, $7E, $20   ; 

- D 2 - I - 0x00CE1C 03:CE0C: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CE1E 03:CE0E: 0E        .byte $0E, $67, $7C, $0D, $10   ; 

- D 2 - I - 0x00CE23 03:CE13: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00CE25 03:CE15: 08        .byte $08, $08   ; 

- D 2 - I - 0x00CE27 03:CE17: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00CE29 03:CE19: 03        .byte $03, $0F, $07, $07   ; 

- D 2 - I - 0x00CE2D 03:CE1D: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00CE2F 03:CE1F: 03        .byte $03, $1F, $7F   ; 

- D 2 - I - 0x00CE32 03:CE22: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00CE34 03:CE24: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00CE36 03:CE26: 70        .byte $70, $F0, $F8, $F8, $FC, $FC, $FE, $FE, $0C, $0C, $0C, $0C, $2C, $0C, $6C, $0C   ; 
- D 2 - I - 0x00CE46 03:CE36: 02        .byte $02, $02, $02, $02, $22, $22, $02, $02, $08, $08, $08, $08, $08, $08, $08, $08   ; 
- D 2 - I - 0x00CE56 03:CE46: E8        .byte $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $00, $01, $02, $04, $08, $10, $10, $10   ; 
- D 2 - I - 0x00CE66 03:CE56: 00        .byte $00, $01, $02, $05, $0B, $17, $17, $17, $3F, $C0   ; 

- D 2 - I - 0x00CE70 03:CE60: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CE72 03:CE62: 27        .byte $27, $60, $42, $3F, $C0, $3F, $FF, $E0, $D8, $90, $B2, $FC, $03   ; 

- D 2 - I - 0x00CE7F 03:CE6F: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CE81 03:CE71: E0        .byte $E0, $70, $10, $FC, $03, $FC, $FF, $0F, $17, $0B, $0B   ; 

- D 2 - I - 0x00CE8C 03:CE7C: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CE8E 03:CE7E: 80        .byte $80, $40, $20, $20, $20, $10   ; 

- D 2 - I - 0x00CE94 03:CE84: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CE96 03:CE86: 80        .byte $80, $40, $A0, $A0, $A0, $D0, $08, $08, $08, $08, $08, $08, $08, $08, $0B, $0B   ; 
- D 2 - I - 0x00CEA6 03:CE96: 0B        .byte $0B, $0B, $0B, $0B, $0B, $0B, $30, $30, $30, $30, $30, $30, $30, $30, $C8, $C8   ; 
- D 2 - I - 0x00CEB6 03:CEA6: C8        .byte $C8, $C8, $C8, $C8, $C8, $C8, $48, $45, $34, $A2, $51, $95, $A8, $69, $40, $14   ; 
- D 2 - I - 0x00CEC6 03:CEB6: A2        .byte $A2, $48, $15, $80, $08, $42   ; 

- D 2 - I - 0x00CECC 03:CEBC: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CECE 03:CEBE: E0        .byte $E0, $F0, $18, $0C, $06, $06, $00, $F0, $18, $0C, $E6, $F2, $F9, $F9, $0C, $0C   ; 
- D 2 - I - 0x00CEDE 03:CECE: 0E        .byte $0E, $0E, $0F, $0F, $0F, $0F, $03, $03, $01, $01   ; 

- D 2 - I - 0x00CEE8 03:CED8: 1A        .byte $1A, $07   ; control byte for 00 + counter

- D 2 - I - 0x00CEEA 03:CEDA: 01        .byte $01, $0F, $7F, $FF, $FE   ; 

- D 2 - I - 0x00CEEF 03:CEDF: 26        .byte $26, $05   ; control byte for FF + counter

- D 2 - I - 0x00CEF1 03:CEE1: FE        .byte $FE, $F2, $93, $00, $06, $3E, $FE, $FE, $F8, $CE, $7E   ; 

- D 2 - I - 0x00CEFC 03:CEEC: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00CEFE 03:CEEE: F9        .byte $F9, $C9, $4F, $7F, $F9, $06, $16, $06, $36, $06, $06, $06, $06, $01, $11, $11   ; 
- D 2 - I - 0x00CF0E 03:CEFE: 01        .byte $01, $01, $01, $01, $01, $04, $04, $04, $04, $04, $04, $04, $04, $74, $74, $74   ; 
- D 2 - I - 0x00CF1E 03:CF0E: 74        .byte $74, $74, $74, $74, $74, $18, $18, $58, $18, $D8, $18, $18, $18, $05, $05, $45   ; 
- D 2 - I - 0x00CF2E 03:CF1E: 45        .byte $45, $05, $05, $05, $05, $10, $10, $10, $10, $10, $10, $10, $10, $D0, $D0, $D0   ; 
- D 2 - I - 0x00CF3E 03:CF2E: D0        .byte $D0, $D0, $D0, $D0, $D0, $04, $04, $04, $04, $04, $04, $04, $04, $05, $05, $05   ; 
- D 2 - I - 0x00CF4E 03:CF3E: 05        .byte $05, $05, $05, $05, $05, $18, $18, $18, $19, $18, $1B, $18, $18, $E4, $E4, $E4   ; 
- D 2 - I - 0x00CF5E 03:CF4E: E5        .byte $E5, $E5, $E4, $E4, $E4, $48, $45, $34, $A2, $4E, $3E, $B2, $82, $40, $14, $A3   ; 
- D 2 - I - 0x00CF6E 03:CF5E: 4D        .byte $4D, $31, $C1, $41, $41, $1F, $3F, $7F, $FF, $00   ; 

- D 2 - I - 0x00CF78 03:CF68: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00CF7A 03:CF6A: 00        .byte $00, $1F, $3F, $7F, $FF   ; 

- D 2 - I - 0x00CF7F 03:CF6F: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CF81 03:CF71: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00CF83 03:CF73: 07        .byte $07, $F7, $F7, $F7, $00, $FE, $FE, $FE, $FE, $0E, $0E, $0E, $03, $C3, $43, $21   ; 
- D 2 - I - 0x00CF93 03:CF83: 21        .byte $21, $21, $10, $10, $3C, $DC, $5C, $2E, $2E, $2C, $13, $17   ; 

- D 2 - I - 0x00CF9F 03:CF8F: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CFA1 03:CF91: 80        .byte $80, $80, $80, $C0, $C0, $80, $80, $80, $40, $40, $40, $20, $20, $00, $0E, $7F   ; 
- D 2 - I - 0x00CFB1 03:CFA1: FF        .byte $FF, $7E, $20   ; 

- D 2 - I - 0x00CFB4 03:CFA4: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00CFB6 03:CFA6: 0E        .byte $0E, $67, $7C, $0D, $10   ; 

- D 2 - I - 0x00CFBB 03:CFAB: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CFBD 03:CFAD: 03        .byte $03, $23, $03, $63, $13, $03, $33, $03, $00, $20, $20, $00, $10, $10   ; 

- D 2 - I - 0x00CFCB 03:CFBB: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00CFCD 03:CFBD: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA   ; 
- D 2 - I - 0x00CFDD 03:CFCD: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02   ; 
- D 2 - I - 0x00CFED 03:CFDD: 0C        .byte $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $F2, $F2, $F2, $F2, $F2, $F2, $F2, $F2   ; 

- D 2 - I - 0x00CFFD 03:CFED: 26        .byte $26, $08   ; control byte for FF + counter

- D 2 - I - 0x00CFFF 03:CFEF: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D001 03:CFF1: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E   ; 
- D 2 - I - 0x00D011 03:D001: 10        .byte $10, $08, $08, $08, $04, $04, $04, $02, $17, $0B, $0B, $0B, $05, $04, $05, $02   ; 
- D 2 - I - 0x00D021 03:D011: C0        .byte $C0, $60, $60, $60, $30, $30, $30, $18, $20, $90, $90, $90, $08, $C8, $C8, $E4   ; 

- D 2 - I - 0x00D031 03:D021: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D033 03:D023: 03        .byte $03, $0F, $0F, $0F, $0F   ; 

- D 2 - I - 0x00D038 03:D028: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D03A 03:D02A: 03        .byte $03, $0F, $03, $01, $01, $00, $3E   ; 

- D 2 - I - 0x00D041 03:D031: 26        .byte $26, $06   ; control byte for FF + counter

- D 2 - I - 0x00D043 03:D033: 00        .byte $00, $30, $F0, $F8, $F8, $FC, $FC, $FE   ; 

- D 2 - I - 0x00D04B 03:D03B: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D04D 03:D03D: C0        .byte $C0, $F0, $F0, $F8, $F8, $FC   ; 

- D 2 - I - 0x00D053 03:D043: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D055 03:D045: 01        .byte $01, $05, $01, $0D, $11, $01, $31, $01, $00, $04, $04, $00, $10, $10   ; 

- D 2 - I - 0x00D063 03:D053: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D065 03:D055: 81        .byte $81, $81, $81, $81, $81, $81, $81, $81, $5D, $5D, $5D, $5D, $5D, $5D, $5D, $5D   ; 
- D 2 - I - 0x00D075 03:D065: 30        .byte $30, $31, $30, $33, $30, $30, $30, $30, $C8, $C9, $C9, $C8, $C8, $C8, $C8, $C8   ; 
- D 2 - I - 0x00D085 03:D075: 01        .byte $01, $01, $01   ; 

- D 2 - I - 0x00D088 03:D078: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D08A 03:D07A: 01        .byte $01, $01, $01   ; 

- D 2 - I - 0x00D08D 03:D07D: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D08F 03:D07F: 0E        .byte $0E, $07, $03, $81, $80, $40, $60, $30, $71, $78, $7C, $BE, $BF, $5F, $6F, $33   ; 

- D 2 - I - 0x00D09F 03:D08F: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D0A1 03:D091: 01        .byte $01, $0E, $70   ; 

- D 2 - I - 0x00D0A4 03:D094: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D0A6 03:D096: 01        .byte $01, $0E, $71   ; 

- D 2 - I - 0x00D0A9 03:D099: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D0AB 03:D09B: E0        .byte $E0, $10, $08   ; 

- D 2 - I - 0x00D0AE 03:D09E: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D0B0 03:D0A0: E0        .byte $E0, $10, $C8, $02, $02, $01, $01, $01   ; 

- D 2 - I - 0x00D0B8 03:D0A8: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D0BA 03:D0AA: 02        .byte $02, $02, $01, $01, $01   ; 

- D 2 - I - 0x00D0BF 03:D0AF: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D0C1 03:D0B1: 18        .byte $18, $18, $0C, $0C, $0C, $86, $86, $86, $E4, $E4, $72, $62, $12, $B9, $B9, $B9   ; 
- D 2 - I - 0x00D0D1 03:D0C1: 0F        .byte $0F, $0F, $0F, $0F, $0F, $07, $07, $03   ; 

- D 2 - I - 0x00D0D9 03:D0C9: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D0DB 03:D0CB: 26        .byte $26, $08   ; control byte for FF + counter

- D 2 - I - 0x00D0DD 03:D0CD: FE        .byte $FE, $FF, $7F, $7F, $3F, $3F, $1F, $1F, $FC, $FE   ; 

- D 2 - I - 0x00D0E7 03:D0D7: 26        .byte $26, $06   ; control byte for FF + counter

- D 2 - I - 0x00D0E9 03:D0D9: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D0EB 03:D0DB: 80        .byte $80, $81, $DF, $DF, $BF, $01, $1F   ; 

- D 2 - I - 0x00D0F2 03:D0E2: 26        .byte $26, $06   ; control byte for FF + counter

- D 2 - I - 0x00D0F4 03:D0E4: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D0F6 03:D0E6: 01        .byte $01, $1F, $FF, $D7, $81, $57, $E0, $F8, $F8, $FC, $FC, $FE, $FE, $FF, $00, $18   ; 
- D 2 - I - 0x00D106 03:D0F6: F8        .byte $F8, $FC, $FC, $FE, $FE, $FF, $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0, $2E, $2E   ; 
- D 2 - I - 0x00D116 03:D106: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80   ; 
- D 2 - I - 0x00D126 03:D116: 80        .byte $80, $80, $80, $80, $80, $80, $1C, $07   ; 

- D 2 - I - 0x00D12E 03:D11E: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00D130 03:D120: 1C        .byte $1C, $07   ; 

- D 2 - I - 0x00D132 03:D122: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00D134 03:D124: 03        .byte $03, $1C, $E0   ; 

- D 2 - I - 0x00D137 03:D127: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D139 03:D129: 03        .byte $03, $1F, $03, $1C, $E3, $1F, $FC, $E3, $1C, $E0, $80   ; 

- D 2 - I - 0x00D144 03:D134: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D146 03:D136: 0E        .byte $0E, $7E, $F6, $86, $8F, $7F, $F1, $8E, $70, $81, $01, $01, $08, $08, $04, $04   ; 
- D 2 - I - 0x00D156 03:D146: 04        .byte $04, $02, $02, $02, $E8, $E8, $F4, $C4, $14, $7A, $7A, $7A, $43, $43, $43, $21   ; 
- D 2 - I - 0x00D166 03:D156: 21        .byte $21, $21, $10, $10, $5C, $5C, $5C, $2E, $2E, $2C, $13, $17, $03, $01, $01, $80   ; 
- D 2 - I - 0x00D176 03:D166: 80        .byte $80, $80, $C0, $C0, $80, $80, $80, $40, $40, $40, $20, $20   ; 

- D 2 - I - 0x00D182 03:D172: 26        .byte $26, $05   ; control byte for FF + counter

- D 2 - I - 0x00D184 03:D174: 7F        .byte $7F, $7F, $3F, $0F, $0F, $07, $07, $03, $02, $00, $01   ; 

- D 2 - I - 0x00D18F 03:D17F: 26        .byte $26, $06   ; control byte for FF + counter

- D 2 - I - 0x00D191 03:D181: FC        .byte $FC, $E0, $BF, $BF, $7F, $7F, $7F, $FF, $FC, $E0   ; 

- D 2 - I - 0x00D19B 03:D18B: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D19D 03:D18D: F8        .byte $F8, $81, $09, $48, $83, $D5, $03, $D7, $F8, $80   ; 

- D 2 - I - 0x00D1A7 03:D197: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D1A9 03:D199: FF        .byte $FF, $F9, $E1, $05, $25, $21, $01, $01, $FF, $F8, $E0   ; 

- D 2 - I - 0x00D1B4 03:D1A4: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D1B6 03:D1A6: FB        .byte $FB, $FB, $FB, $FB, $00   ; 

- D 2 - I - 0x00D1BB 03:D1AB: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D1BD 03:D1AD: 00        .byte $00, $04   ; 

- D 2 - I - 0x00D1BF 03:D1AF: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D1C1 03:D1B1: 04        .byte $04   ; 

- D 2 - I - 0x00D1C2 03:D1B2: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D1C4 03:D1B4: 00        .byte $00, $FB, $FB, $FB, $FB, $00   ; 

- D 2 - I - 0x00D1CA 03:D1BA: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D1CC 03:D1BC: 30        .byte $30, $04   ; 

- D 2 - I - 0x00D1CE 03:D1BE: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D1D0 03:D1C0: 04        .byte $04   ; 

- D 2 - I - 0x00D1D1 03:D1C1: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D1D3 03:D1C3: 0B        .byte $0B, $FB, $FB, $FB, $FB, $00   ; 

- D 2 - I - 0x00D1D9 03:D1C9: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D1DB 03:D1CB: 20        .byte $20, $04   ; 

- D 2 - I - 0x00D1DD 03:D1CD: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D1DF 03:D1CF: 04        .byte $04   ; 

- D 2 - I - 0x00D1E0 03:D1D0: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D1E2 03:D1D2: A0        .byte $A0, $8C, $CC, $AC, $DC, $6C, $B4, $DA, $ED, $72, $B2, $D2, $62, $B2, $DA, $EC   ; 
- D 2 - I - 0x00D1F2 03:D1E2: F6        .byte $F6   ; 

- D 2 - I - 0x00D1F3 03:D1E3: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D1F5 03:D1E5: 07        .byte $07, $38, $C0   ; 

- D 2 - I - 0x00D1F8 03:D1E8: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D1FA 03:D1EA: 07        .byte $07, $38, $C7, $3F, $F8, $FC, $E0   ; 

- D 2 - I - 0x00D201 03:D1F1: 1A        .byte $1A, $0E   ; control byte for 00 + counter

- D 2 - I - 0x00D203 03:D1F3: 01        .byte $01, $01, $01, $80, $80, $80, $C0, $C0, $BD, $BD, $B1, $46, $5E, $5E, $2F, $2F   ; 

- D 2 - I - 0x00D213 03:D203: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D215 03:D205: 80        .byte $80, $80, $80, $40, $40   ; 

- D 2 - I - 0x00D21A 03:D20A: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D21C 03:D20C: 80        .byte $80, $80, $80, $40, $40, $3F, $1F, $1F, $0F, $0F, $07, $07, $03   ; 

- D 2 - I - 0x00D229 03:D219: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D22B 03:D21B: 02        .byte $02, $12, $10   ; 

- D 2 - I - 0x00D22E 03:D21E: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D230 03:D220: 03        .byte $03, $1C, $E0   ; 

- D 2 - I - 0x00D233 03:D223: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D235 03:D225: 40        .byte $40, $00, $01, $0E, $70, $80   ; 

- D 2 - I - 0x00D23B 03:D22B: 1A        .byte $1A, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00D23D 03:D22D: 07        .byte $07, $38, $C0   ; 

- D 2 - I - 0x00D240 03:D230: 1A        .byte $1A, $0C   ; control byte for 00 + counter

- D 2 - I - 0x00D242 03:D232: 07        .byte $07   ; 

- D 2 - I - 0x00D243 03:D233: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D245 03:D235: 80        .byte $80, $F0, $7E, $0F, $01   ; 

- D 2 - I - 0x00D24A 03:D23A: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D24C 03:D23C: 80        .byte $80, $70, $0E, $81, $F0, $FE, $FF   ; 

- D 2 - I - 0x00D253 03:D243: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D255 03:D245: C0        .byte $C0, $F8, $3F   ; 

- D 2 - I - 0x00D258 03:D248: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D25A 03:D24A: C0        .byte $C0, $38, $07, $C0   ; 

- D 2 - I - 0x00D25E 03:D24E: 1A        .byte $1A, $0F   ; control byte for 00 + counter

- D 2 - I - 0x00D260 03:D250: E0        .byte $E0   ; 

- D 2 - I - 0x00D261 03:D251: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D263 03:D253: AA        .byte $AA, $55, $AA, $55, $AA   ; 

- D 2 - I - 0x00D268 03:D258: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D26A 03:D25A: 30        .byte $30, $30, $30, $BA, $75, $BA, $75, $BA, $0B, $0B, $0B, $01, $0A, $01, $0A, $05   ; 
- D 2 - I - 0x00D27A 03:D26A: 20        .byte $20, $20, $20, $AA, $75, $AA, $75, $AA, $A0, $A0, $A0, $00, $A0, $00, $A0   ; 

- D 2 - I - 0x00D289 03:D279: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D28B 03:D27B: 01        .byte $01, $01, $AB, $55, $AB, $55, $AB, $00, $01, $01, $01, $00, $01, $00, $01, $76   ; 
- D 2 - I - 0x00D29B 03:D28B: 3B        .byte $3B, $1D, $AE, $57, $AF, $57, $A6, $7B, $7D, $7E, $5F, $2F, $53, $29, $59, $C0   ; 
- D 2 - I - 0x00D2AB 03:D29B: C0        .byte $C0, $C0, $C0, $C0, $C0, $C0, $60, $2E, $2E, $2E, $2E, $2E, $2E, $37, $17, $80   ; 
- D 2 - I - 0x00D2BB 03:D2AB: 80        .byte $80, $80, $80, $80, $C1, $4E, $70, $80, $80, $80, $80, $80, $C1, $4E, $71, $80   ; 

- D 2 - I - 0x00D2CB 03:D2BB: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D2CD 03:D2BD: 01        .byte $01, $0F, $7E, $F0, $80, $8F, $7E, $F1, $8E, $70, $80   ; 

- D 2 - I - 0x00D2D8 03:D2C8: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D2DA 03:D2CA: 07        .byte $07, $3F, $F8, $C0   ; 

- D 2 - I - 0x00D2DE 03:D2CE: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D2E0 03:D2D0: C7        .byte $C7, $38, $C0   ; 

- D 2 - I - 0x00D2E3 03:D2D3: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D2E5 03:D2D5: C0        .byte $C0, $60, $60, $60, $30, $30, $30, $18, $2F, $17, $16, $14, $0B, $0B, $0B, $05   ; 
- D 2 - I - 0x00D2F5 03:D2E5: 40        .byte $40, $20, $20, $20, $10, $10, $10, $08, $40, $A0, $20, $A0, $D0, $D0, $D0, $E8   ; 
- D 2 - I - 0x00D305 03:D2F5: 00        .byte $00, $80, $70, $0E, $01   ; 

- D 2 - I - 0x00D30A 03:D2FA: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D30C 03:D2FC: 7F        .byte $7F, $8F, $71, $0E, $01   ; 

- D 2 - I - 0x00D311 03:D301: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D313 03:D303: 07        .byte $07   ; 

- D 2 - I - 0x00D314 03:D304: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D316 03:D306: C0        .byte $C0, $38, $06, $02, $F8   ; 

- D 2 - I - 0x00D31B 03:D30B: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D31D 03:D30D: 3F        .byte $3F, $C7, $38, $06, $02, $E0, $FC, $1E, $06, $06, $06, $06, $06, $1C, $03, $E1   ; 
- D 2 - I - 0x00D32D 03:D31D: F9        .byte $F9, $F9, $F9, $19, $E1, $83, $83, $83, $83, $83, $83, $83, $83, $BC, $BC, $BC   ; 
- D 2 - I - 0x00D33D 03:D32D: BC        .byte $BC, $BC, $BC, $BC, $BC   ; 

- D 2 - I - 0x00D342 03:D332: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D344 03:D334: 80        .byte $80, $80, $00, $80, $80, $80, $80, $80, $60, $70, $30, $38, $1C, $0E, $07, $00   ; 
- D 2 - I - 0x00D354 03:D344: 17        .byte $17, $0B, $0B, $05, $02, $01   ; 

- D 2 - I - 0x00D35A 03:D34A: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D35C 03:D34C: 01        .byte $01, $0F, $7E, $F0, $00, $8F, $FE, $F1, $8E, $70, $80   ; 

- D 2 - I - 0x00D367 03:D357: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D369 03:D359: 1F        .byte $1F, $3F, $7F, $FF, $00, $FF   ; 

- D 2 - I - 0x00D36F 03:D35F: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D371 03:D361: 3F        .byte $3F, $7F   ; 

- D 2 - I - 0x00D373 03:D363: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D375 03:D365: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D377 03:D367: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D379 03:D369: 00        .byte $00, $FF   ; 

- D 2 - I - 0x00D37B 03:D36B: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D37D 03:D36D: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D37F 03:D36F: 00        .byte $00, $F7, $F7, $F7, $F7, $F7, $F7, $F0, $FF, $0E, $0E, $0E, $0F, $0F, $0F, $0F   ; 

- D 2 - I - 0x00D38F 03:D37F: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D391 03:D381: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D393 03:D383: 07        .byte $07, $F7   ; 

- D 2 - I - 0x00D395 03:D385: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D397 03:D387: FE        .byte $FE, $FE, $FE, $FE, $0E, $18, $18, $0C, $0C, $0C, $06, $06, $06, $05, $05, $02   ; 
- D 2 - I - 0x00D3A7 03:D397: 02        .byte $02, $02, $01, $01, $01, $86, $43, $43, $41, $20, $20, $10, $08, $B9, $5C, $5C   ; 
- D 2 - I - 0x00D3B7 03:D3A7: 4E        .byte $4E, $2F, $2F, $17, $09, $06, $06, $06, $06, $06, $06, $06, $06, $F1, $F1, $F1   ; 
- D 2 - I - 0x00D3C7 03:D3B7: F1        .byte $F1, $F1, $F1, $F1, $F1   ; 

- D 2 - I - 0x00D3CC 03:D3BC: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D3CE 03:D3BE: 01        .byte $01, $01, $00, $01, $01, $01, $01, $02, $03, $02, $04, $06, $C3, $DF, $C7, $FB   ; 
- D 2 - I - 0x00D3DE 03:D3CE: C7        .byte $C7   ; 

- D 2 - I - 0x00D3DF 03:D3CF: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D3E1 03:D3D1: 3C        .byte $3C, $20, $38, $04, $38   ; 

- D 2 - I - 0x00D3E6 03:D3D6: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D3E8 03:D3D8: F7        .byte $F7, $F7, $F7, $F7, $F1   ; 

- D 2 - I - 0x00D3ED 03:D3DD: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D3EF 03:D3DF: 08        .byte $08, $08, $08, $08, $0E   ; 

- D 2 - I - 0x00D3F4 03:D3E4: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D3F6 03:D3E6: 98        .byte $98, $6B, $6B, $08, $6B   ; 

- D 2 - I - 0x00D3FB 03:D3EB: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D3FD 03:D3ED: 67        .byte $67, $94, $94, $F7, $94   ; 

- D 2 - I - 0x00D402 03:D3F2: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D404 03:D3F4: C3        .byte $C3, $5F, $67, $FB, $C7   ; 

- D 2 - I - 0x00D409 03:D3F9: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D40B 03:D3FB: 3C        .byte $3C, $A0, $98, $04, $38   ; 

- D 2 - I - 0x00D410 03:D400: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D412 03:D402: 03        .byte $03, $03, $03, $01, $01, $01   ; 

- D 2 - I - 0x00D418 03:D408: 1A        .byte $1A, $0A   ; control byte for 00 + counter

- D 2 - I - 0x00D41A 03:D40A: 06        .byte $06, $01   ; 

- D 2 - I - 0x00D41C 03:D40C: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00D41E 03:D40E: 06        .byte $06, $01   ; 

- D 2 - I - 0x00D420 03:D410: 1A        .byte $1A, $07   ; control byte for 00 + counter

- D 2 - I - 0x00D422 03:D412: 05        .byte $05, $04, $02, $01, $05, $08, $09, $04, $0C, $0A, $08, $15, $10, $18, $22   ; 

- D 2 - I - 0x00D431 03:D421: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D433 03:D423: E7        .byte $E7, $E7   ; 

- D 2 - I - 0x00D435 03:D425: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D437 03:D427: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D439 03:D429: 18        .byte $18, $18   ; 

- D 2 - I - 0x00D43B 03:D42B: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D43D 03:D42D: F7        .byte $F7, $F7, $F7, $F7, $F7, $F6, $F4, $F0, $0E, $0E, $0E, $0E, $0E, $0E, $0C, $08   ; 
- D 2 - I - 0x00D44D 03:D43D: 00        .byte $00, $01, $01, $01, $03, $03, $03, $FF, $3F, $3F, $7F, $7F, $7F   ; 

- D 2 - I - 0x00D45A 03:D44A: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D45C 03:D44C: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D45E 03:D44E: FF        .byte $FF, $FE, $FE, $FF, $00, $FB, $F7, $EF, $00, $01, $01, $E0, $18, $04, $02, $02   ; 
- D 2 - I - 0x00D46E 03:D45E: 02        .byte $02, $42, $42, $E0, $18, $E4, $F2, $FA, $FA, $BA, $82, $02, $04, $04, $04, $08   ; 
- D 2 - I - 0x00D47E 03:D46E: 08        .byte $08, $08, $10, $02, $05, $04, $05, $0B, $0B, $0B, $17, $06, $0C, $0C, $0C, $18   ; 
- D 2 - I - 0x00D48E 03:D47E: 18        .byte $18, $18, $30, $F1, $E2, $62, $22, $C4, $C4, $C4, $88, $08, $05, $34, $22, $11   ; 
- D 2 - I - 0x00D49E 03:D48E: 15        .byte $15, $28, $69, $20, $34, $62, $48, $55, $80, $88, $C2, $48, $44, $34, $A2, $52   ; 
- D 2 - I - 0x00D4AE 03:D49E: 96        .byte $96, $A6, $6C, $41, $17, $A3, $4D, $15, $89, $08, $50, $08, $08, $04, $04, $04   ; 
- D 2 - I - 0x00D4BE 03:D4AE: 03        .byte $03   ; 

- D 2 - I - 0x00D4BF 03:D4AF: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D4C1 03:D4B1: E8        .byte $E8, $E8, $F4, $C4, $14, $7B, $7C, $7F, $AB, $FF, $AB, $FF, $AB, $FF, $AB, $FF   ; 
- D 2 - I - 0x00D4D1 03:D4C1: D7        .byte $D7, $FF, $D7, $FF, $D7, $FF, $D7, $FF   ; 

- D 2 - I - 0x00D4D9 03:D4C9: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00D4DB 03:D4CB: 01        .byte $01, $01, $01, $01, $03, $03, $03, $03, $06, $06, $42, $42, $C2, $84, $84, $84   ; 
- D 2 - I - 0x00D4EB 03:D4DB: 08        .byte $08, $08, $BA, $BA, $3A, $74, $74, $34, $C8, $E8, $10, $10, $20, $20, $20, $40   ; 
- D 2 - I - 0x00D4FB 03:D4EB: 40        .byte $40, $40, $17, $17, $2F, $23, $28, $5E, $5E, $5E, $30, $30, $60, $60, $60, $C0   ; 
- D 2 - I - 0x00D50B 03:D4FB: C0        .byte $C0, $C0, $88, $88, $10, $10, $10, $20, $20, $20, $08, $08, $08, $08, $08, $04   ; 
- D 2 - I - 0x00D51B 03:D50B: 04        .byte $04, $04, $0B, $0B, $0B, $0B, $0B, $07, $05, $05, $30, $30, $30, $30, $30, $30   ; 
- D 2 - I - 0x00D52B 03:D51B: 38        .byte $38, $1F, $C8, $C8, $C8, $C8, $C8, $CC, $C7, $E0, $00, $88, $FF, $88, $FF, $88   ; 
- D 2 - I - 0x00D53B 03:D52B: 00        .byte $00, $FF, $00, $88, $FF, $88, $FF, $88, $FF   ; 

- D 2 - I - 0x00D544 03:D534: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D546 03:D536: 41        .byte $41, $FF, $41, $FF, $41, $00, $FF, $00, $41, $FF, $41, $FF, $41, $FF, $00, $E0   ; 
- D 2 - I - 0x00D556 03:D546: FC        .byte $FC, $1F, $03   ; 

- D 2 - I - 0x00D559 03:D549: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D55B 03:D54B: E0        .byte $E0, $1C, $03, $E0, $FC   ; 

- D 2 - I - 0x00D560 03:D550: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D562 03:D552: 1F        .byte $1F, $E3, $03, $03, $03, $01   ; 

- D 2 - I - 0x00D568 03:D558: 1A        .byte $1A, $0E   ; control byte for 00 + counter

- D 2 - I - 0x00D56A 03:D55A: 80        .byte $80, $C1, $FF, $7E   ; 

- D 2 - I - 0x00D56E 03:D55E: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D570 03:D560: BF        .byte $BF, $BE, $41, $3E   ; 

- D 2 - I - 0x00D574 03:D564: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D576 03:D566: 01        .byte $01, $02, $02, $02, $04, $04, $04, $08, $06, $0D, $0D, $0D, $18, $1B, $1B, $37   ; 
- D 2 - I - 0x00D586 03:D576: 08        .byte $08, $10, $10, $10, $20, $20, $20, $40, $E8, $D0, $D0, $D0, $A0, $20, $A0, $40   ; 

- D 2 - I - 0x00D596 03:D586: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D598 03:D588: 01        .byte $01, $01, $01, $02, $02   ; 

- D 2 - I - 0x00D59D 03:D58D: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D59F 03:D58F: 01        .byte $01, $01, $01, $02, $02, $81, $81, $81, $03, $03, $03, $06, $06, $BC, $BC, $8C   ; 
- D 2 - I - 0x00D5AF 03:D59F: 60        .byte $60, $78, $78, $F1, $F1, $80, $80, $80   ; 

- D 2 - I - 0x00D5B7 03:D5A7: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D5B9 03:D5A9: 40        .byte $40, $40, $40, $80, $80, $80   ; 

- D 2 - I - 0x00D5BF 03:D5AF: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D5C1 03:D5B1: 02        .byte $02, $02, $03, $01   ; 

- D 2 - I - 0x00D5C5 03:D5B5: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D5C7 03:D5B7: 02        .byte $02, $02, $03, $01   ; 

- D 2 - I - 0x00D5CB 03:D5BB: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D5CD 03:D5BD: 0F        .byte $0F   ; 

- D 2 - I - 0x00D5CE 03:D5BE: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D5D0 03:D5C0: 80        .byte $80, $E0, $38, $07, $00, $F0, $FF, $7F, $9F, $E7, $38, $07, $00, $FF   ; 

- D 2 - I - 0x00D5DE 03:D5CE: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D5E0 03:D5D0: FF        .byte $FF   ; 

- D 2 - I - 0x00D5E1 03:D5D1: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D5E3 03:D5D3: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D5E5 03:D5D5: 00        .byte $00, $FF, $00, $1C, $03   ; 

- D 2 - I - 0x00D5EA 03:D5DA: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00D5EC 03:D5DC: 1C        .byte $1C, $03   ; 

- D 2 - I - 0x00D5EE 03:D5DE: 1A        .byte $1A, $06   ; control byte for 00 + counter

- D 2 - I - 0x00D5F0 03:D5E0: 07        .byte $07   ; 

- D 2 - I - 0x00D5F1 03:D5E1: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D5F3 03:D5E3: C0        .byte $C0, $38, $07, $00, $F8   ; 

- D 2 - I - 0x00D5F8 03:D5E8: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D5FA 03:D5EA: 3F        .byte $3F, $C7, $38, $07, $00, $80, $C0, $60, $30, $18, $0C, $06, $83, $40, $20, $90   ; 
- D 2 - I - 0x00D60A 03:D5FA: C8        .byte $C8, $E4, $F2, $79, $BC   ; 

- D 2 - I - 0x00D60F 03:D5FF: 1A        .byte $1A, $0F   ; control byte for 00 + counter

- D 2 - I - 0x00D611 03:D601: 80        .byte $80, $AB, $FF, $AB, $FF, $AA, $FE, $AA, $FC, $D7, $FF, $D7, $FF, $D6, $FE, $D6   ; 
- D 2 - I - 0x00D621 03:D611: FC        .byte $FC, $08, $08, $10, $10, $10, $21, $21, $21, $37, $37, $6E, $66, $68, $DD, $DD   ; 
- D 2 - I - 0x00D631 03:D621: DD        .byte $DD, $40, $40, $80, $80, $80   ; 

- D 2 - I - 0x00D637 03:D627: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D639 03:D629: 40        .byte $40, $40, $80, $80, $80   ; 

- D 2 - I - 0x00D63E 03:D62E: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D640 03:D630: 60        .byte $60, $60, $60, $60, $60, $60, $60, $60, $17, $17, $17, $17, $17, $17, $17, $17   ; 
- D 2 - I - 0x00D650 03:D640: 40        .byte $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40   ; 
- D 2 - I - 0x00D660 03:D650: 05        .byte $05, $0A, $14, $0A, $14, $28, $50, $28, $0A, $05, $0A, $14, $28, $14, $28, $50   ; 

- D 2 - I - 0x00D670 03:D660: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D672 03:D662: 1E        .byte $1E, $31, $70, $60, $E0, $C4, $78   ; 

- D 2 - I - 0x00D679 03:D669: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D67B 03:D66B: 1E        .byte $1E, $33, $73, $66, $E6, $CC, $78   ; 

- D 2 - I - 0x00D682 03:D672: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D684 03:D674: 0C        .byte $0C, $18, $18, $30, $30, $60, $7E   ; 

- D 2 - I - 0x00D68B 03:D67B: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D68D 03:D67D: 1E        .byte $1E, $33, $33, $7E, $6C, $CE, $C6   ; 

- D 2 - I - 0x00D694 03:D684: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D696 03:D686: 1E        .byte $1E, $33, $33, $7E, $66, $CC, $CC   ; 

- D 2 - I - 0x00D69D 03:D68D: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D69F 03:D68F: 3E        .byte $3E, $33, $33, $63, $66, $C6, $FC, $41, $20, $10, $08, $04, $02, $01, $00, $5E   ; 
- D 2 - I - 0x00D6AF 03:D69F: 2F        .byte $2F, $17, $0B, $05, $02, $01   ; 

- D 2 - I - 0x00D6B5 03:D6A5: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D6B7 03:D6A7: 01        .byte $01, $03, $03, $07, $07, $0F, $0F   ; 

- D 2 - I - 0x00D6BE 03:D6AE: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D6C0 03:D6B0: 01        .byte $01, $01, $03, $03, $07, $06, $00, $80, $E8, $F8, $FC, $D4, $B6, $BA, $00, $F8   ; 
- D 2 - I - 0x00D6D0 03:D6C0: 9C        .byte $9C, $8C, $86, $3A, $7B, $7D, $30, $30, $30, $30, $30, $30, $30, $30, $0B, $0B   ; 
- D 2 - I - 0x00D6E0 03:D6D0: 0B        .byte $0B, $0B, $0B, $0B, $0B, $0B, $20, $20, $20, $20, $20, $20, $20, $20, $A0, $A0   ; 
- D 2 - I - 0x00D6F0 03:D6E0: A0        .byte $A0, $A0, $A0, $A0, $A0, $A0   ; 

- D 2 - I - 0x00D6F6 03:D6E6: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D6F8 03:D6E8: 0F        .byte $0F, $0F, $0F, $0F   ; 

- D 2 - I - 0x00D6FC 03:D6EC: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D6FE 03:D6EE: 1F        .byte $1F, $1F, $3F, $3F, $7F, $00, $01, $00, $01, $FC, $F9, $F8, $F1   ; 

- D 2 - I - 0x00D70B 03:D6FB: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D70D 03:D6FD: 01        .byte $01, $FE, $F3, $E6, $E7, $CE, $50, $A0, $40, $A0, $40, $80, $00, $80, $A0, $50   ; 
- D 2 - I - 0x00D71D 03:D70D: A0        .byte $A0, $40, $80, $40, $80, $00, $80, $C0, $60, $30, $18, $0C, $06, $83, $40, $20   ; 
- D 2 - I - 0x00D72D 03:D71D: 90        .byte $90, $C8, $E4, $F3, $78, $BC   ; 

- D 2 - I - 0x00D733 03:D723: 1A        .byte $1A, $07   ; control byte for 00 + counter

- D 2 - I - 0x00D735 03:D725: FF        .byte $FF   ; 

- D 2 - I - 0x00D736 03:D726: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D738 03:D728: FF        .byte $FF   ; 

- D 2 - I - 0x00D739 03:D729: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D73B 03:D72B: 1F        .byte $1F, $1F, $3E, $3E, $7D, $7D, $FB, $FB, $0E, $0C, $1D, $19, $3B, $B3, $77, $67   ; 
- D 2 - I - 0x00D74B 03:D73B: 7B        .byte $7B, $7D, $FD, $FA, $C1, $C0, $80, $FF, $FD, $F6, $E6, $E3, $C1, $FF, $80, $80   ; 
- D 2 - I - 0x00D75B 03:D74B: 01        .byte $01, $02, $82, $84, $4C, $18, $30, $C0, $8E, $8D, $DD, $5B, $B3, $E7, $0F, $3F   ; 
- D 2 - I - 0x00D76B 03:D75B: 08        .byte $08, $10, $10, $10, $20, $20, $20, $40, $E8, $D0, $D0, $D0, $A0, $A0, $A0, $40   ; 
- D 2 - I - 0x00D77B 03:D76B: 0F        .byte $0F, $09, $7F, $7F, $7F, $7F, $0F, $09, $7F, $F6, $F6, $F0, $F6, $F0, $86, $F6   ; 
- D 2 - I - 0x00D78B 03:D77B: F0        .byte $F0, $03, $E3, $E0, $E0, $EF, $0F, $00, $8F, $FC, $FC, $FC, $FF, $F0, $10, $FF   ; 
- D 2 - I - 0x00D79B 03:D78B: 00        .byte $00   ; 

- D 2 - I - 0x00D79C 03:D78C: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D79E 03:D78E: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D7A0 03:D790: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D7A2 03:D792: 00        .byte $00, $FF   ; 

- D 2 - I - 0x00D7A4 03:D794: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D7A6 03:D796: FF        .byte $FF   ; 

- D 2 - I - 0x00D7A7 03:D797: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D7A9 03:D799: FF        .byte $FF, $01, $83, $03, $FF, $FC   ; 

- D 2 - I - 0x00D7AF 03:D79F: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D7B1 03:D7A1: 00        .byte $00, $FF, $7F   ; 

- D 2 - I - 0x00D7B4 03:D7A4: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D7B6 03:D7A6: CF        .byte $CF, $84, $84   ; 

- D 2 - I - 0x00D7B9 03:D7A9: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D7BB 03:D7AB: FC        .byte $FC, $FE, $04, $00, $FE, $FC, $00, $FC, $02, $00, $02, $FE, $00, $02, $FC, $80   ; 
- D 2 - I - 0x00D7CB 03:D7BB: 40        .byte $40, $20, $10, $08, $04, $02, $01, $80, $40, $A0, $D0, $E8, $F4, $FA, $7D, $40   ; 
- D 2 - I - 0x00D7DB 03:D7CB: 20        .byte $20, $10, $08, $04, $03   ; 

- D 2 - I - 0x00D7E0 03:D7D0: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D7E2 03:D7D2: 5F        .byte $5F, $2F, $17, $0B, $04, $03   ; 

- D 2 - I - 0x00D7E8 03:D7D8: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D7EA 03:D7DA: 01        .byte $01, $01, $03, $03, $07, $FF, $0F, $0F, $FE, $FE, $FD, $FD, $03, $FB, $07, $06   ; 
- D 2 - I - 0x00D7FA 03:D7EA: 07        .byte $07, $F7, $EF, $EE, $DD, $DF, $BD, $BA, $FF, $CF, $DE, $9F, $BC, $3D, $78, $78   ; 
- D 2 - I - 0x00D80A 03:D7FA: 50        .byte $50, $A0, $40, $A0, $40, $FF, $00, $80, $AF, $5F, $BF, $5F, $00, $7F   ; 

- D 2 - I - 0x00D818 03:D808: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D81A 03:D80A: 01        .byte $01, $02, $0C, $30, $C0   ; 

- D 2 - I - 0x00D81F 03:D80F: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D821 03:D811: FE        .byte $FE, $FD, $F2, $CC, $30, $C0   ; 

- D 2 - I - 0x00D827 03:D817: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D829 03:D819: 80        .byte $80   ; 

- D 2 - I - 0x00D82A 03:D81A: 1A        .byte $1A, $07   ; control byte for 00 + counter

- D 2 - I - 0x00D82C 03:D81C: 80        .byte $80   ; 

- D 2 - I - 0x00D82D 03:D81D: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D82F 03:D81F: 01        .byte $01, $00, $01, $02, $05, $02   ; 

- D 2 - I - 0x00D835 03:D825: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D837 03:D827: 01        .byte $01, $02, $01, $02, $05, $0F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x00D842 03:D832: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D844 03:D834: 0F        .byte $0F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x00D84A 03:D83A: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D84C 03:D83C: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8   ; 

- D 2 - I - 0x00D852 03:D842: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D854 03:D844: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8   ; 

- D 2 - I - 0x00D85A 03:D84A: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D85C 03:D84C: 3E        .byte $3E, $1F, $0F, $07, $03, $01   ; 

- D 2 - I - 0x00D862 03:D852: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D864 03:D854: 1F        .byte $1F, $1F, $3E, $3E, $7D, $7D, $FB, $FB, $0E, $0C, $1D, $19, $3B, $33, $77, $67   ; 
- D 2 - I - 0x00D874 03:D864: 75        .byte $75, $7A, $F4, $EA, $D4, $E8, $D0, $A8, $F0, $F0, $E0, $E0, $C0, $C0, $80, $80   ; 
- D 2 - I - 0x00D884 03:D874: 10        .byte $10, $10, $20, $20, $20, $40, $40, $41, $17, $1F, $23, $29, $3E, $5E, $5E, $7C   ; 
- D 2 - I - 0x00D894 03:D884: 30        .byte $30, $60, $60, $60, $C0, $C0, $C0, $80, $88, $10, $10, $10, $20, $20, $20, $40   ; 

- D 2 - I - 0x00D8A4 03:D894: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D8A6 03:D896: 1F        .byte $1F, $1F, $3F, $3F   ; 

- D 2 - I - 0x00D8AA 03:D89A: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D8AC 03:D89C: 1F        .byte $1F, $1F, $3F, $3F   ; 

- D 2 - I - 0x00D8B0 03:D8A0: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D8B2 03:D8A2: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D8B4 03:D8A4: FE        .byte $FE, $FE   ; 

- D 2 - I - 0x00D8B6 03:D8A6: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D8B8 03:D8A8: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D8BA 03:D8AA: FE        .byte $FE, $FE   ; 

- D 2 - I - 0x00D8BC 03:D8AC: 1A        .byte $1A, $0C   ; control byte for 00 + counter

- D 2 - I - 0x00D8BE 03:D8AE: 1F        .byte $1F, $1F, $3F, $3F   ; 

- D 2 - I - 0x00D8C2 03:D8B2: 1A        .byte $1A, $0C   ; control byte for 00 + counter

- D 2 - I - 0x00D8C4 03:D8B4: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D8C6 03:D8B6: FE        .byte $FE, $FE, $01, $01, $03, $03, $07, $07, $0F, $0F   ; 

- D 2 - I - 0x00D8D0 03:D8C0: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D8D2 03:D8C2: 01        .byte $01, $01, $03, $03, $07, $06, $07, $F7, $EF, $EE, $DD, $DE, $BD, $BA, $FF, $CF   ; 
- D 2 - I - 0x00D8E2 03:D8D2: DE        .byte $DE, $9E, $BC, $3C, $78, $78, $50, $A0, $40, $A0, $40, $80, $00, $80   ; 

- D 2 - I - 0x00D8F0 03:D8E0: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D8F2 03:D8E2: 06        .byte $06, $06, $07, $07, $03, $01   ; 

- D 2 - I - 0x00D8F8 03:D8E8: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D8FA 03:D8EA: 01        .byte $01, $01   ; 

- D 2 - I - 0x00D8FC 03:D8EC: 1A        .byte $1A, $09   ; control byte for 00 + counter

- D 2 - I - 0x00D8FE 03:D8EE: 80        .byte $80, $E0   ; 

- D 2 - I - 0x00D900 03:D8F0: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x00D902 03:D8F2: 3F        .byte $3F, $7F, $7F, $9F, $60, $1F   ; 

- D 2 - I - 0x00D908 03:D8F8: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D90A 03:D8FA: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D90C 03:D8FC: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D90E 03:D8FE: FF        .byte $FF   ; 

- D 2 - I - 0x00D90F 03:D8FF: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D911 03:D901: 01        .byte $01   ; 

- D 2 - I - 0x00D912 03:D902: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D914 03:D904: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D916 03:D906: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D918 03:D908: 01        .byte $01, $FF   ; 

- D 2 - I - 0x00D91A 03:D90A: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D91C 03:D90C: 50        .byte $50, $A0, $40, $A0, $00   ; 

- D 2 - I - 0x00D921 03:D911: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D923 03:D913: A0        .byte $A0, $50, $A0, $40, $FF   ; 

- D 2 - I - 0x00D928 03:D918: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D92A 03:D91A: 7F        .byte $7F, $7F, $FF, $00, $FE   ; 

- D 2 - I - 0x00D92F 03:D91F: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D931 03:D921: 7F        .byte $7F, $7F, $FF, $00, $FD, $FC, $0C, $0C, $FC, $FC, $F8   ; 

- D 2 - I - 0x00D93C 03:D92C: 1A        .byte $1A, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D93E 03:D92E: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D940 03:D930: FC        .byte $FC, $FC, $F8, $00, $FF   ; 

- D 2 - I - 0x00D945 03:D935: 1A        .byte $1A, $07   ; control byte for 00 + counter

- D 2 - I - 0x00D947 03:D937: 02        .byte $02, $03, $F3, $F3, $7F, $7F, $FF, $00, $FD, $FC, $0C, $0C   ; 

- D 2 - I - 0x00D953 03:D943: 1A        .byte $1A, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D955 03:D945: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D957 03:D947: FC        .byte $FC, $FC, $F8, $00, $FF   ; 

- D 2 - I - 0x00D95C 03:D94C: 1A        .byte $1A, $08   ; control byte for 00 + counter

- D 2 - I - 0x00D95E 03:D94E: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D960 03:D950: 3E        .byte $3E, $1F, $0F, $07, $FF   ; 

- D 2 - I - 0x00D965 03:D955: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D967 03:D957: FF        .byte $FF, $1F, $3E, $3E, $7D, $FD, $FB, $FB, $EE, $0C, $DD, $D9, $BB, $33, $77, $67   ; 
- D 2 - I - 0x00D977 03:D967: 7F        .byte $7F, $7A, $F4, $EA, $D4   ; 

- D 2 - I - 0x00D97C 03:D96C: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D97E 03:D96E: FA        .byte $FA, $F0, $EB, $F5, $EB, $C0, $80, $80, $FF   ; 

- D 2 - I - 0x00D987 03:D977: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D989 03:D979: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D98B 03:D97B: 00        .byte $00, $FB, $F7, $EF   ; 

- D 2 - I - 0x00D98F 03:D97F: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D991 03:D981: FF        .byte $FF   ; 

- D 2 - I - 0x00D992 03:D982: 1A        .byte $1A, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D994 03:D984: 26        .byte $26, $04   ; control byte for FF + counter

- D 2 - I - 0x00D996 03:D986: 00        .byte $00   ; 

- D 2 - I - 0x00D997 03:D987: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D999 03:D989: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D99B 03:D98B: FD        .byte $FD, $01, $02, $02, $03   ; 

- D 2 - I - 0x00D9A0 03:D990: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x00D9A2 03:D992: FC        .byte $FC, $00, $DD, $BC, $7C   ; 

- D 2 - I - 0x00D9A7 03:D997: 1A        .byte $1A, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D9A9 03:D999: 0E        .byte $0E, $0C, $1C, $78, $F0, $E0, $C0, $00, $F1, $E2, $82, $04, $08, $10, $20, $C0   ; 



off_D9A9:
- D 2 - I - 0x00D9B9 03:D9A9: 11        .byte $11   ; prepare control byte for 00
- D 2 - I - 0x00D9BA 03:D9AA: 15        .byte $15   ; prepare control byte for FF

- D 2 - I - 0x00D9BB 03:D9AB: 11        .byte $11, $1E   ; control byte for 00 + counter

- D 2 - I - 0x00D9BD 03:D9AD: 01        .byte $01, $03   ; normal bytes

- D 2 - I - 0x00D9BF 03:D9AF: 11        .byte $11, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D9C1 03:D9B1: 0C        .byte $0C, $1A, $2D   ; 

- D 2 - I - 0x00D9C4 03:D9B4: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D9C6 03:D9B6: 0F        .byte $0F, $3F, $73, $E5, $D2   ; 

- D 2 - I - 0x00D9CB 03:D9BB: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D9CD 03:D9BD: FF        .byte $FF, $01, $9E, $60, $9A   ; 

- D 2 - I - 0x00D9D2 03:D9C2: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D9D4 03:D9C4: FF        .byte $FF, $00, $FE, $61, $9F, $65   ; 

- D 2 - I - 0x00D9DA 03:D9CA: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00D9DC 03:D9CC: 80        .byte $80, $FA, $73, $0C, $F1   ; 

- D 2 - I - 0x00D9E1 03:D9D1: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00D9E3 03:D9D3: 80        .byte $80, $7F, $05, $8C, $F3, $0E   ; 

- D 2 - I - 0x00D9E9 03:D9D9: 11        .byte $11, $05   ; control byte for 00 + counter

- D 2 - I - 0x00D9EB 03:D9DB: 40        .byte $40, $30, $C8   ; 

- D 2 - I - 0x00D9EE 03:D9DE: 11        .byte $11, $04   ; control byte for 00 + counter

- D 2 - I - 0x00D9F0 03:D9E0: C0        .byte $C0, $B0, $CC, $36   ; 

- D 2 - I - 0x00D9F4 03:D9E4: 11        .byte $11, $0E   ; control byte for 00 + counter

- D 2 - I - 0x00D9F6 03:D9E6: 01        .byte $01, $01, $00, $01, $06, $05, $1B, $13, $48, $93, $07, $0E, $19, $3A, $E4, $EC   ; 
- D 2 - I - 0x00DA06 03:D9F6: B7        .byte $B7, $6C, $04, $52, $FF, $78, $C8, $BF, $C7, $39, $FB, $AD, $00, $87, $37, $40   ; 
- D 2 - I - 0x00DA16 03:DA06: 38        .byte $38, $C6, $E0, $8F, $79, $C8, $07, $9F, $63, $9F, $1F, $70, $86, $37, $F8, $60   ; 
- D 2 - I - 0x00DA26 03:DA16: 9C        .byte $9C, $60, $1E, $E0, $87, $08, $5B, $9B, $E0, $C3, $E1, $1F, $78, $F7, $A4, $64   ; 
- D 2 - I - 0x00DA36 03:DA26: 1F        .byte $1F, $3C   ; 

- D 2 - I - 0x00DA38 03:DA28: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DA3A 03:DA2A: 80        .byte $80, $60, $F0, $88, $E8, $00, $80, $C0, $60, $90, $08, $74, $14   ; 

- D 2 - I - 0x00DA47 03:DA37: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DA49 03:DA39: 01        .byte $01, $02, $03, $06, $0F, $0F, $03, $03, $06, $0D, $0C, $19, $10, $30, $74, $EF   ; 
- D 2 - I - 0x00DA59 03:DA49: 9F        .byte $9F, $D7, $39, $EF, $FE, $FF, $8B, $10, $60, $28, $C6, $10, $01, $00, $27, $7E   ; 
- D 2 - I - 0x00DA69 03:DA59: FC        .byte $FC, $E1, $CB, $23, $88, $5B, $D8, $81, $03, $1E, $34, $DC, $77, $A4, $E7, $8F   ; 
- D 2 - I - 0x00DA79 03:DA69: 7F        .byte $7F, $CD, $F0, $E8, $D0, $B0, $18, $70, $80, $32, $0F, $17, $2F, $4F, $FC, $F7   ; 
- D 2 - I - 0x00DA89 03:DA79: FF        .byte $FF, $1F   ; 

- D 2 - I - 0x00DA8B 03:DA7B: 11        .byte $11, $04   ; control byte for 00 + counter

- D 2 - I - 0x00DA8D 03:DA7D: 03        .byte $03, $08, $00, $E0   ; 

- D 2 - I - 0x00DA91 03:DA81: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00DA93 03:DA83: 27        .byte $27, $79, $FF, $E7, $FF, $3F, $1F, $0F, $D8, $86, $00, $18, $00, $C0, $E0, $F0   ; 
- D 2 - I - 0x00DAA3 03:DA93: C4        .byte $C4, $E8, $F0, $F8, $FC, $FE, $BF, $DC, $3A, $16, $0F, $07, $03, $01, $40, $23   ; 

- D 2 - I - 0x00DAB3 03:DAA3: 11        .byte $11, $0D   ; control byte for 00 + counter

- D 2 - I - 0x00DAB5 03:DAA5: 80        .byte $80, $C0, $C0, $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x00DABE 03:DAAE: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DAC0 03:DAB0: 20        .byte $20, $60, $40, $40, $80, $80   ; 

- D 2 - I - 0x00DAC6 03:DAB6: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DAC8 03:DAB8: FE        .byte $FE   ; 

- D 2 - I - 0x00DAC9 03:DAB9: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DACB 03:DABB: FB        .byte $FB, $F8, $FC, $FB, $F9, $01   ; 

- D 2 - I - 0x00DAD1 03:DAC1: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DAD3 03:DAC3: 04        .byte $04, $07, $03, $04, $06, $AC   ; 

- D 2 - I - 0x00DAD9 03:DAC9: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00DADB 03:DACB: 7E        .byte $7E, $ED   ; 

- D 2 - I - 0x00DADD 03:DACD: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DADF 03:DACF: 53        .byte $53   ; 

- D 2 - I - 0x00DAE0 03:DAD0: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DAE2 03:DAD2: 81        .byte $81, $12   ; 

- D 2 - I - 0x00DAE4 03:DAD4: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DAE6 03:DAD6: 23        .byte $23, $7F, $FD, $E0, $EF, $9F, $FF, $FE, $DC, $80, $02, $1F, $10, $60, $00, $01   ; 
- D 2 - I - 0x00DAF6 03:DAE6: A0        .byte $A0, $A0, $E0, $F1, $E1, $83, $07, $0F, $5F, $5F, $1F, $0F, $1F, $7F   ; 

- D 2 - I - 0x00DB04 03:DAF4: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DB06 03:DAF6: 1C        .byte $1C, $7F   ; 

- D 2 - I - 0x00DB08 03:DAF8: 15        .byte $15, $0E   ; control byte for FF + counter

- D 2 - I - 0x00DB0A 03:DAFA: 03        .byte $03, $01, $03, $83, $C3, $C1, $80, $80, $FC, $FE, $FC, $FC, $FC, $FE   ; 

- D 2 - I - 0x00DB18 03:DB08: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DB1A 03:DB0A: F6        .byte $F6   ; 

- D 2 - I - 0x00DB1B 03:DB0B: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DB1D 03:DB0D: 7F        .byte $7F, $FF, $9F, $7B, $F7, $09   ; 

- D 2 - I - 0x00DB23 03:DB13: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DB25 03:DB15: 80        .byte $80, $00, $60, $84, $08, $00, $80, $80, $C0, $C0, $E0, $C0, $C0, $C0, $40, $60   ; 
- D 2 - I - 0x00DB35 03:DB25: 20        .byte $20, $20, $00, $20, $20   ; 

- D 2 - I - 0x00DB3A 03:DB2A: 11        .byte $11, $06   ; control byte for 00 + counter

- D 2 - I - 0x00DB3C 03:DB2C: 01        .byte $01, $00, $01, $01, $01, $01, $01, $01, $02, $03, $7F, $7F   ; 

- D 2 - I - 0x00DB48 03:DB38: 15        .byte $15, $06   ; control byte for FF + counter

- D 2 - I - 0x00DB4A 03:DB3A: 80        .byte $80, $80   ; 

- D 2 - I - 0x00DB4C 03:DB3C: 11        .byte $11, $06   ; control byte for 00 + counter

- D 2 - I - 0x00DB4E 03:DB3E: F5        .byte $F5, $FD, $FD, $FB, $FF, $F7, $76, $DC, $0A, $02, $02, $04, $00, $08, $89, $23   ; 
- D 2 - I - 0x00DB5E 03:DB4E: F8        .byte $F8, $C0, $80, $80   ; 

- D 2 - I - 0x00DB62 03:DB52: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DB64 03:DB54: 03        .byte $03, $07, $3F, $7F, $7F   ; 

- D 2 - I - 0x00DB69 03:DB59: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00DB6B 03:DB5B: F8        .byte $F8   ; 

- D 2 - I - 0x00DB6C 03:DB5C: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DB6E 03:DB5E: 01        .byte $01, $0F, $1F, $7F, $FF, $07   ; 

- D 2 - I - 0x00DB74 03:DB64: 15        .byte $15, $07   ; control byte for FF + counter

- D 2 - I - 0x00DB76 03:DB66: 1F        .byte $1F, $3F, $7F   ; 

- D 2 - I - 0x00DB79 03:DB69: 15        .byte $15, $1D   ; control byte for FF + counter

- D 2 - I - 0x00DB7B 03:DB6B: 80        .byte $80, $C1, $C0, $E0, $E0, $F0, $F0, $F0, $FF, $FE   ; 

- D 2 - I - 0x00DB85 03:DB75: 15        .byte $15, $06   ; control byte for FF + counter

- D 2 - I - 0x00DB87 03:DB77: 7B        .byte $7B   ; 

- D 2 - I - 0x00DB88 03:DB78: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DB8A 03:DB7A: 7F        .byte $7F, $5E, $3F, $3F, $3B, $84   ; 

- D 2 - I - 0x00DB90 03:DB80: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DB92 03:DB82: 80        .byte $80, $A1, $C0, $C0, $C4, $C0, $A0, $80, $00, $40, $C0, $80, $60, $20, $40, $60   ; 
- D 2 - I - 0x00DBA2 03:DB92: E0        .byte $E0, $A0, $20, $70, $90, $01, $00, $01, $01, $01, $01, $01, $00, $02, $03, $02   ; 
- D 2 - I - 0x00DBB2 03:DBA2: 02        .byte $02, $02, $02, $02, $03   ; 

- D 2 - I - 0x00DBB7 03:DBA7: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DBB9 03:DBA9: 11        .byte $11, $08   ; control byte for 00 + counter

- D 2 - I - 0x00DBBB 03:DBAB: BC        .byte $BC, $B8, $7C, $F8, $F8, $F8, $F8, $F0, $43, $47, $83, $07, $07, $07, $07, $0F   ; 
- D 2 - I - 0x00DBCB 03:DBBB: 07        .byte $07, $1F, $3F, $1F, $1F, $0F, $1F, $1F   ; 

- D 2 - I - 0x00DBD3 03:DBC3: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DBD5 03:DBC5: F0        .byte $F0, $F0, $F8, $F8, $F8, $F8, $FC, $FC   ; 

- D 2 - I - 0x00DBDD 03:DBCD: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DBDF 03:DBCF: 3E        .byte $3E, $2F, $5E, $7E, $7D, $5F, $3F, $3E, $C1, $D0, $A1, $81, $82, $A0, $C0, $C1   ; 
- D 2 - I - 0x00DBEF 03:DBDF: 20        .byte $20, $E0, $E0, $F0, $F0, $E0, $40, $E0, $D0, $10, $10, $08, $08, $18, $B8, $18   ; 
- D 2 - I - 0x00DBFF 03:DBEF: 00        .byte $00, $01, $01, $01   ; 

- D 2 - I - 0x00DC03 03:DBF3: 11        .byte $11, $04   ; control byte for 00 + counter

- D 2 - I - 0x00DC05 03:DBF5: 03        .byte $03, $02, $02, $02, $01, $01, $01, $01   ; 

- D 2 - I - 0x00DC0D 03:DBFD: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DC0F 03:DBFF: FD        .byte $FD, $FF, $FE, $FB, $7F, $7F   ; 

- D 2 - I - 0x00DC15 03:DC05: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DC17 03:DC07: 02        .byte $02, $00, $01, $04, $80, $80, $F0, $E0, $E0, $C0, $C0, $C0, $81, $83, $0F, $1F   ; 
- D 2 - I - 0x00DC27 03:DC17: 1F        .byte $1F, $3F, $3F, $3F, $7E, $7C, $3F, $7F, $FF, $7E, $00, $3E   ; 

- D 2 - I - 0x00DC33 03:DC23: 15        .byte $15, $07   ; control byte for FF + counter

- D 2 - I - 0x00DC35 03:DC25: C1        .byte $C1   ; 

- D 2 - I - 0x00DC36 03:DC26: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DC38 03:DC28: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00DC3A 03:DC2A: 7F        .byte $7F, $3F, $9F, $8F   ; 

- D 2 - I - 0x00DC3E 03:DC2E: 15        .byte $15, $06   ; control byte for FF + counter

- D 2 - I - 0x00DC40 03:DC30: 7F        .byte $7F, $7F   ; 

- D 2 - I - 0x00DC42 03:DC32: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00DC44 03:DC34: FC        .byte $FC, $F0, $E4, $F6, $F3   ; 

- D 2 - I - 0x00DC49 03:DC39: 15        .byte $15, $0A   ; control byte for FF + counter

- D 2 - I - 0x00DC4B 03:DC3B: C0        .byte $C0, $0F, $3F, $F0, $CF, $1E   ; 

- D 2 - I - 0x00DC51 03:DC41: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00DC53 03:DC43: F0        .byte $F0, $C0, $0F, $3F, $E1, $FC, $FE, $FE, $3E, $BE, $1E, $CC, $F6   ; 

- D 2 - I - 0x00DC60 03:DC50: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00DC62 03:DC52: 7F        .byte $7F   ; 

- D 2 - I - 0x00DC63 03:DC53: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00DC65 03:DC55: 67        .byte $67, $6B, $3A, $75, $73, $77, $3F, $3B, $98, $94, $C5, $8A, $8C, $88, $C0, $C4   ; 
- D 2 - I - 0x00DC75 03:DC65: 20        .byte $20, $70, $D0, $E8, $F8, $78, $90, $78, $D8, $88, $28, $10, $00, $80, $68, $80   ; 

- D 2 - I - 0x00DC85 03:DC75: 11        .byte $11, $08   ; control byte for 00 + counter

- D 2 - I - 0x00DC87 03:DC77: 01        .byte $01, $01, $01, $01, $01   ; 

- D 2 - I - 0x00DC8C 03:DC7C: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DC8E 03:DC7E: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00DC90 03:DC80: 76        .byte $76, $7A, $7E, $7C, $7C   ; 

- D 2 - I - 0x00DC95 03:DC85: 11        .byte $11, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DC97 03:DC87: 89        .byte $89, $85, $81, $83, $83, $86, $01, $17, $1E, $1C, $38, $1C, $0D, $79   ; 

- D 2 - I - 0x00DCA5 03:DC95: 15        .byte $15, $07   ; control byte for FF + counter

- D 2 - I - 0x00DCA7 03:DC97: 03        .byte $03, $FC, $5B, $7C, $03, $0F   ; 

- D 2 - I - 0x00DCAD 03:DC9D: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DCAF 03:DC9F: FC        .byte $FC, $C3, $80, $83   ; 

- D 2 - I - 0x00DCB3 03:DCA3: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00DCB5 03:DCA5: 07        .byte $07, $03, $43, $C1, $E3, $E1, $E1, $E1   ; 

- D 2 - I - 0x00DCBD 03:DCAD: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DCBF 03:DCAF: C9        .byte $C9, $86, $80, $C1, $C0, $C0, $C8, $CE   ; 

- D 2 - I - 0x00DCC7 03:DCB7: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DCC9 03:DCB9: AD        .byte $AD, $1E, $C0   ; 

- D 2 - I - 0x00DCCC 03:DCBC: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DCCE 03:DCBE: 3F        .byte $3F, $0F, $1F, $C0, $E1   ; 

- D 2 - I - 0x00DCD3 03:DCC3: 15        .byte $15, $06   ; control byte for FF + counter

- D 2 - I - 0x00DCD5 03:DCC5: 7E        .byte $7E, $1F, $8F, $EF   ; 

- D 2 - I - 0x00DCD9 03:DCC9: 15        .byte $15, $0C   ; control byte for FF + counter

- D 2 - I - 0x00DCDB 03:DCCB: 36        .byte $36, $9B, $DF, $CF, $E6, $ED, $EF, $EF, $C9, $E4, $E0, $F0, $F9, $F2, $F0, $F0   ; 
- D 2 - I - 0x00DCEB 03:DCDB: E8        .byte $E8, $B8, $38, $10, $E0, $F0, $F8, $98, $10, $40, $C0, $E0, $10, $08, $00, $60   ; 
- D 2 - I - 0x00DCFB 03:DCEB: FE        .byte $FE, $E6, $73, $73, $33, $37, $35, $1D, $01, $19, $0C, $0C, $4C, $0C, $0E, $2E   ; 
- D 2 - I - 0x00DD0B 03:DCFB: 0F        .byte $0F, $0F, $07, $07, $03, $03, $03, $87   ; 

- D 2 - I - 0x00DD13 03:DD03: 15        .byte $15, $07   ; control byte for FF + counter

- D 2 - I - 0x00DD15 03:DD05: 7F        .byte $7F, $E1, $E1, $E3, $E3, $E3, $E3, $C3, $C3   ; 

- D 2 - I - 0x00DD1E 03:DD0E: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DD20 03:DD10: E7        .byte $E7, $E7, $F1, $F9, $FC, $FC   ; 

- D 2 - I - 0x00DD26 03:DD16: 15        .byte $15, $0C   ; control byte for FF + counter

- D 2 - I - 0x00DD28 03:DD18: 3F        .byte $3F   ; 

- D 2 - I - 0x00DD29 03:DD19: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DD2B 03:DD1B: CF        .byte $CF, $1F, $7F   ; 

- D 2 - I - 0x00DD2E 03:DD1E: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DD30 03:DD20: F7        .byte $F7, $F3, $FC, $FC, $FC, $FE, $FE, $FE, $F8, $FC   ; 

- D 2 - I - 0x00DD3A 03:DD2A: 15        .byte $15, $06   ; control byte for FF + counter

- D 2 - I - 0x00DD3C 03:DD2C: 08        .byte $08, $20, $F0, $F0, $70, $F0, $60, $E0, $F0, $F8, $78, $78, $B8, $38, $B8, $70   ; 
- D 2 - I - 0x00DD4C 03:DD3C: 1D        .byte $1D, $0E, $0A, $04, $05, $01, $01, $01, $26, $17, $17, $0B, $0B, $07, $07, $03   ; 
- D 2 - I - 0x00DD5C 03:DD4C: C7        .byte $C7, $87, $81, $80, $C0, $80, $40, $00, $3F, $7F, $7F, $7F, $3F, $7F, $BF, $FF   ; 
- D 2 - I - 0x00DD6C 03:DD5C: C3        .byte $C3, $C3, $87, $87, $C3, $41, $60, $38   ; 

- D 2 - I - 0x00DD74 03:DD64: 15        .byte $15, $04   ; control byte for FF + counter

- D 2 - I - 0x00DD76 03:DD66: BF        .byte $BF, $BF, $9F, $C7   ; 

- D 2 - I - 0x00DD7A 03:DD6A: 15        .byte $15, $03   ; control byte for FF + counter

- D 2 - I - 0x00DD7C 03:DD6C: F7        .byte $F7, $C1, $84, $0E, $0E   ; 

- D 2 - I - 0x00DD81 03:DD71: 15        .byte $15, $08   ; control byte for FF + counter

- D 2 - I - 0x00DD83 03:DD73: F7        .byte $F7, $FB, $F9, $FE   ; 

- D 2 - I - 0x00DD87 03:DD77: 15        .byte $15, $02   ; control byte for FF + counter

- D 2 - I - 0x00DD89 03:DD79: 3F        .byte $3F, $0F   ; 

- D 2 - I - 0x00DD8B 03:DD7B: 15        .byte $15, $09   ; control byte for FF + counter

- D 2 - I - 0x00DD8D 03:DD7D: FE        .byte $FE, $FC, $03, $0F, $8F, $C7, $E7   ; 

- D 2 - I - 0x00DD94 03:DD84: 15        .byte $15, $0D   ; control byte for FF + counter

- D 2 - I - 0x00DD96 03:DD86: FE        .byte $FE, $FC, $FD, $FE, $FE   ; 

- D 2 - I - 0x00DD9B 03:DD8B: 15        .byte $15, $05   ; control byte for FF + counter

- D 2 - I - 0x00DD9D 03:DD8D: FE        .byte $FE, $C0, $C0, $80   ; 

- D 2 - I - 0x00DDA1 03:DD91: 11        .byte $11, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DDA3 03:DD93: 40        .byte $40, $C0, $80, $F0, $F0, $E0, $C0, $C0, $80, $00, $40   ; 



off_DD9E:
- D 2 - I - 0x00DDAE 03:DD9E: 29        .byte $29   ; prepare control byte for 00
- D 2 - I - 0x00DDAF 03:DD9F: 2A        .byte $2A   ; prepare control byte for FF

- D 2 - I - 0x00DDB0 03:DDA0: 29        .byte $29, $18   ; control byte for 00 + counter

- D 2 - I - 0x00DDB2 03:DDA2: 03        .byte $03, $01, $01   ; normal bytes

- D 2 - I - 0x00DDB5 03:DDA5: 29        .byte $29, $05   ; control byte for 00 + counter

- D 2 - I - 0x00DDB7 03:DDA7: C0        .byte $C0, $C0   ; 

- D 2 - I - 0x00DDB9 03:DDA9: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DDBB 03:DDAB: 81        .byte $81, $41, $41, $60, $BF, $BF   ; 

- D 2 - I - 0x00DDC1 03:DDB1: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DDC2 03:DDB2: 02        .byte $02   ; 

- D 2 - I - 0x00DDC3 03:DDB3: 7F        .byte $7F, $3F, $3F, $1F, $7F, $7F, $FE, $FE, $FE, $FE, $FC, $FC   ; 

- D 2 - I - 0x00DDCF 03:DDBF: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DDD0 03:DDC0: 08        .byte $08   ; 

- D 2 - I - 0x00DDD1 03:DDC1: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DDD3 03:DDC3: 07        .byte $07, $03, $1F, $60, $CF, $3F   ; 

- D 2 - I - 0x00DDD9 03:DDC9: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DDDA 03:DDCA: 06        .byte $06   ; 

- D 2 - I - 0x00DDDB 03:DDCB: F0        .byte $F0, $C0, $3F   ; 

- D 2 - I - 0x00DDDE 03:DDCE: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DDDF 03:DDCF: 03        .byte $03   ; 

- D 2 - I - 0x00DDE0 03:DDD0: C0        .byte $C0, $3F   ; 

- D 2 - I - 0x00DDE2 03:DDD2: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DDE3 03:DDD3: 07        .byte $07   ; 

- D 2 - I - 0x00DDE4 03:DDD4: C0        .byte $C0   ; 

- D 2 - I - 0x00DDE5 03:DDD5: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DDE7 03:DDD7: 03        .byte $03, $01, $81, $80, $03, $87, $C7, $CF   ; 

- D 2 - I - 0x00DDEF 03:DDDF: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DDF0 03:DDE0: 05        .byte $05   ; 

- D 2 - I - 0x00DDF1 03:DDE1: 7F        .byte $7F, $3F, $3F, $E7, $E7, $F1, $F9, $FC, $FC   ; 

- D 2 - I - 0x00DDFA 03:DDEA: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DDFB 03:DDEB: 0C        .byte $0C   ; 

- D 2 - I - 0x00DDFC 03:DDEC: FE        .byte $FE, $FE, $FE, $FC, $FE, $FE, $FC, $FC, $FD, $FD, $FD, $FF, $FD, $FD, $80   ; 

- D 2 - I - 0x00DE0B 03:DDFB: 29        .byte $29, $07   ; control byte for 00 + counter

- D 2 - I - 0x00DE0D 03:DDFD: 40        .byte $40, $80, $80, $80   ; 

- D 2 - I - 0x00DE11 03:DE01: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x00DE13 03:DE03: 21        .byte $21, $21, $31, $10, $18, $08, $0C, $04, $1F, $1F, $0F, $0F, $07, $07, $03, $03   ; 
- D 2 - I - 0x00DE23 03:DE13: FE        .byte $FE, $FC   ; 

- D 2 - I - 0x00DE25 03:DE15: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE26 03:DE16: 02        .byte $02   ; 

- D 2 - I - 0x00DE27 03:DE17: F9        .byte $F9, $7E, $7E, $3F   ; 

- D 2 - I - 0x00DE2B 03:DE1B: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE2C 03:DE1C: 08        .byte $08   ; 

- D 2 - I - 0x00DE2D 03:DE1D: 3F        .byte $3F, $1F, $07, $00, $C0, $39, $1F, $1F, $C0, $E0, $F8   ; 

- D 2 - I - 0x00DE38 03:DE28: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE39 03:DE29: 07        .byte $07   ; 

- D 2 - I - 0x00DE3A 03:DE2A: FC        .byte $FC, $E1, $07   ; 

- D 2 - I - 0x00DE3D 03:DE2D: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE3E 03:DE2E: 03        .byte $03   ; 

- D 2 - I - 0x00DE3F 03:DE2F: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DE41 03:DE31: 03        .byte $03, $1F   ; 

- D 2 - I - 0x00DE43 03:DE33: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE44 03:DE34: 04        .byte $04   ; 

- D 2 - I - 0x00DE45 03:DE35: 9F        .byte $9F, $3F, $7F   ; 

- D 2 - I - 0x00DE48 03:DE38: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE49 03:DE39: 02        .byte $02   ; 

- D 2 - I - 0x00DE4A 03:DE3A: FE        .byte $FE, $FC, $F9, $7F   ; 

- D 2 - I - 0x00DE4E 03:DE3E: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE4F 03:DE3F: 07        .byte $07   ; 

- D 2 - I - 0x00DE50 03:DE40: E7        .byte $E7, $C7, $CF, $8F, $9F, $3F, $BF, $9F   ; 

- D 2 - I - 0x00DE58 03:DE48: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE59 03:DE49: 08        .byte $08   ; 

- D 2 - I - 0x00DE5A 03:DE4A: FE        .byte $FE, $FE, $F6, $F6, $F7, $EF, $EF, $DF, $F8, $F8, $F8, $F8, $F8, $F0, $F0, $E0   ; 
- D 2 - I - 0x00DE6A 03:DE5A: 04        .byte $04, $04, $00, $02, $00, $01   ; 

- D 2 - I - 0x00DE70 03:DE60: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DE72 03:DE62: 07        .byte $07, $07, $03, $03, $01, $01   ; 

- D 2 - I - 0x00DE78 03:DE68: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DE7A 03:DE6A: 1F        .byte $1F, $1F, $0F, $07, $03, $01, $80, $C0   ; 

- D 2 - I - 0x00DE82 03:DE72: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE83 03:DE73: 08        .byte $08   ; 

- D 2 - I - 0x00DE84 03:DE74: 8F        .byte $8F, $E1, $FC   ; 

- D 2 - I - 0x00DE87 03:DE77: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE88 03:DE78: 03        .byte $03   ; 

- D 2 - I - 0x00DE89 03:DE79: 7F        .byte $7F, $18   ; 

- D 2 - I - 0x00DE8B 03:DE7B: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE8C 03:DE7C: 0A        .byte $0A   ; 

- D 2 - I - 0x00DE8D 03:DE7D: 3F        .byte $3F   ; 

- D 2 - I - 0x00DE8E 03:DE7E: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE8F 03:DE7F: 02        .byte $02   ; 

- D 2 - I - 0x00DE90 03:DE80: CF        .byte $CF, $1F, $7F   ; 

- D 2 - I - 0x00DE93 03:DE83: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE94 03:DE84: 18        .byte $18   ; 

- D 2 - I - 0x00DE95 03:DE85: 9F        .byte $9F, $3F, $9F, $BF, $FE, $FC, $F9, $F3   ; 

- D 2 - I - 0x00DE9D 03:DE8D: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DE9E 03:DE8E: 06        .byte $06   ; 

- D 2 - I - 0x00DE9F 03:DE8F: FE        .byte $FE, $FC, $FF, $FE, $FE, $FC, $FC, $F8, $F9, $F0, $C0, $C1, $81, $83, $03, $07   ; 
- D 2 - I - 0x00DEAF 03:DE9F: 06        .byte $06, $0F, $E0, $18, $48, $0C, $9A, $1A, $39, $30, $00, $E0, $B0, $F0, $64, $E4   ; 
- D 2 - I - 0x00DEBF 03:DEAF: C6        .byte $C6, $CF   ; 

- D 2 - I - 0x00DEC1 03:DEB1: 29        .byte $29, $07   ; control byte for 00 + counter

- D 2 - I - 0x00DEC3 03:DEB3: 80        .byte $80   ; 

- D 2 - I - 0x00DEC4 03:DEB4: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x00DEC6 03:DEB6: 40        .byte $40, $20, $30, $18, $0C, $0E, $0F, $0F, $7F, $3F, $3F, $1F, $0F, $07, $03   ; 

- D 2 - I - 0x00DED5 03:DEC5: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x00DED7 03:DEC7: 01        .byte $01, $01, $01   ; 

- D 2 - I - 0x00DEDA 03:DECA: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DEDC 03:DECC: C0        .byte $C0   ; 

- D 2 - I - 0x00DEDD 03:DECD: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DEDE 03:DECE: 0C        .byte $0C   ; 

- D 2 - I - 0x00DEDF 03:DECF: FE        .byte $FE, $78, $00, $01   ; 

- D 2 - I - 0x00DEE3 03:DED3: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DEE4 03:DED4: 07        .byte $07   ; 

- D 2 - I - 0x00DEE5 03:DED5: FE        .byte $FE   ; 

- D 2 - I - 0x00DEE6 03:DED6: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DEE7 03:DED7: 03        .byte $03   ; 

- D 2 - I - 0x00DEE8 03:DED8: 7E        .byte $7E, $38, $03, $1F   ; 

- D 2 - I - 0x00DEEC 03:DEDC: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DEED 03:DEDD: 06        .byte $06   ; 

- D 2 - I - 0x00DEEE 03:DEDE: FC        .byte $FC, $E0, $00, $E3, $E7, $8F, $3F   ; 

- D 2 - I - 0x00DEF5 03:DEE5: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DEF6 03:DEE6: 04        .byte $04   ; 

- D 2 - I - 0x00DEF7 03:DEE7: FC        .byte $FC, $F8, $F0, $C0   ; 

- D 2 - I - 0x00DEFB 03:DEEB: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DEFD 03:DEED: 20        .byte $20, $F2, $E0, $E4, $C4, $C0, $84, $84, $09, $0D, $1F, $1B, $3B, $3F, $7B, $7B   ; 
- D 2 - I - 0x00DF0D 03:DEFD: F6        .byte $F6, $70, $72, $F0, $62, $E5, $C2, $C5, $C5, $8F, $8D, $0F, $9D, $1A, $3D, $3A   ; 
- D 2 - I - 0x00DF1D 03:DF0D: 3A        .byte $3A, $40, $40, $20, $A0, $90, $50, $48, $A8, $80, $80, $C0, $C0, $E0, $E0, $F0   ; 
- D 2 - I - 0x00DF2D 03:DF1D: F0        .byte $F0, $0F, $0F, $0F, $0F, $0F, $0F, $17, $17   ; 

- D 2 - I - 0x00DF36 03:DF26: 29        .byte $29, $06   ; control byte for 00 + counter

- D 2 - I - 0x00DF38 03:DF28: 08        .byte $08, $08, $E6   ; 

- D 2 - I - 0x00DF3B 03:DF2B: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DF3C 03:DF2C: 07        .byte $07   ; 

- D 2 - I - 0x00DF3D 03:DF2D: 79        .byte $79, $38, $1E, $07, $01   ; 

- D 2 - I - 0x00DF42 03:DF32: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x00DF44 03:DF34: 07        .byte $07, $9F   ; 

- D 2 - I - 0x00DF46 03:DF36: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DF47 03:DF37: 06        .byte $06   ; 

- D 2 - I - 0x00DF48 03:DF38: F8        .byte $F8, $60, $00, $0F, $F8, $00, $01, $0F   ; 

- D 2 - I - 0x00DF50 03:DF40: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DF51 03:DF41: 06        .byte $06   ; 

- D 2 - I - 0x00DF52 03:DF42: FE        .byte $FE, $FE, $00, $01, $C7, $1F, $3E, $7C, $F9, $F9, $FC, $F8, $F0, $E6, $8C, $19   ; 
- D 2 - I - 0x00DF62 03:DF52: 32        .byte $32, $61, $E3, $C7, $8F, $19, $73, $E6, $CD, $9E, $0B, $13, $33, $67, $CE, $8E   ; 
- D 2 - I - 0x00DF72 03:DF62: 1F        .byte $1F, $9F, $F4, $EC, $CC, $98, $31, $71, $E1, $62, $9F, $3F, $7F, $7F, $7F   ; 

- D 2 - I - 0x00DF81 03:DF71: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DF82 03:DF72: 02        .byte $02   ; 

- D 2 - I - 0x00DF83 03:DF73: FD        .byte $FD, $74, $E8, $D1, $C7, $8F, $9F, $3F, $7F, $F4, $FC, $FE, $FE, $FB, $E1, $83   ; 
- D 2 - I - 0x00DF93 03:DF83: 04        .byte $04, $78, $38, $1C, $FC, $FE   ; 

- D 2 - I - 0x00DF99 03:DF89: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DF9A 03:DF8A: 03        .byte $03   ; 

- D 2 - I - 0x00DF9B 03:DF8B: 29        .byte $29, $05   ; control byte for 00 + counter

- D 2 - I - 0x00DF9D 03:DF8D: 80        .byte $80, $C0, $60   ; 

- D 2 - I - 0x00DFA0 03:DF90: 29        .byte $29, $06   ; control byte for 00 + counter

- D 2 - I - 0x00DFA2 03:DF92: 80        .byte $80, $C0, $23, $23, $2B, $0B, $01, $25, $21, $21, $1C, $1C, $14, $34, $3E, $1A   ; 
- D 2 - I - 0x00DFB2 03:DFA2: 1E        .byte $1E, $1E   ; 

- D 2 - I - 0x00DFB4 03:DFA4: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DFB5 03:DFA5: 08        .byte $08   ; 

- D 2 - I - 0x00DFB6 03:DFA6: 00        .byte $00, $01, $01, $03, $07, $07, $07, $03   ; 

- D 2 - I - 0x00DFBE 03:DFAE: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DFBF 03:DFAF: 0D        .byte $0D   ; 

- D 2 - I - 0x00DFC0 03:DFB0: FE        .byte $FE, $FC, $F8, $FC, $F8, $F1, $E6, $CC, $99, $33, $06, $F3, $E7, $CE, $99, $33   ; 
- D 2 - I - 0x00DFD0 03:DFC0: 66        .byte $66, $CC, $F9, $C3, $86, $0D, $18, $B3, $A7, $0F, $1F, $3C, $79, $F2, $E7, $4C   ; 
- D 2 - I - 0x00DFE0 03:DFD0: 58        .byte $58, $F0, $E0, $3F, $7B, $F7, $EF, $FF, $FE, $FF, $FE, $C5, $8F, $1F, $3F, $2F   ; 
- D 2 - I - 0x00DFF0 03:DFE0: 4F        .byte $4F, $9F, $BF, $DA, $B6, $E4, $E8, $B9, $41, $21, $01   ; 

- D 2 - I - 0x00DFFB 03:DFEB: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00DFFC 03:DFEC: 08        .byte $08   ; 

- D 2 - I - 0x00DFFD 03:DFED: 10        .byte $10, $30, $26, $CF, $FF, $8F, $BF, $7F   ; 

- D 2 - I - 0x00E005 03:DFF5: 2A        .byte $2A   ;  control byte for FF + counter
- D 2 - I - 0x00E006 03:DFF6: 08        .byte $08   ; 

- D 2 - I - 0x00E007 03:DFF7: 18        .byte $18, $06, $03, $F4, $FE, $FF, $E7, $1D, $E0, $F8, $FE   ; 

- D 3 - I - 0x00E012 03:E002: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E013 03:E003: 05        .byte $05   ; 

- D 3 - I - 0x00E014 03:E004: 29        .byte $29, $02   ; control byte for 00 + counter

- D 3 - I - 0x00E016 03:E006: 80        .byte $80, $C0, $30, $8E, $F1, $C0   ; 

- D 3 - I - 0x00E01C 03:E00C: 29        .byte $29, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E01E 03:E00E: 80        .byte $80, $C0, $F0, $FE, $FF   ; 

- D 3 - I - 0x00E023 03:E013: 29        .byte $29, $06   ; control byte for 00 + counter

- D 3 - I - 0x00E025 03:E015: 80        .byte $80, $40   ; 

- D 3 - I - 0x00E027 03:E017: 29        .byte $29, $07   ; control byte for 00 + counter

- D 3 - I - 0x00E029 03:E019: 80        .byte $80, $30, $12, $10, $11, $10, $20, $26, $22, $0F, $0D, $0F, $0E, $0F, $1F, $19   ; 
- D 3 - I - 0x00E039 03:E029: 1D        .byte $1D   ; 

- D 3 - I - 0x00E03A 03:E02A: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E03B 03:E02B: 06        .byte $06   ; 

- D 3 - I - 0x00E03C 03:E02C: FC        .byte $FC, $79, $03, $01   ; 

- D 3 - I - 0x00E040 03:E030: 29        .byte $29, $04   ; control byte for 00 + counter

- D 3 - I - 0x00E042 03:E032: 03        .byte $03, $86, $FC, $FB, $E6, $9C, $30, $61, $C3, $8C, $F3, $C4, $19, $63, $CF, $9E   ; 
- D 3 - I - 0x00E052 03:E042: 3C        .byte $3C, $73, $0C, $10, $30, $41, $C3, $07, $0F, $1F, $F3, $EF, $CF, $BE, $3C, $F8   ; 
- D 3 - I - 0x00E062 03:E052: F0        .byte $F0, $E0, $3F, $7F   ; 

- D 3 - I - 0x00E066 03:E056: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E067 03:E057: 04        .byte $04   ; 

- D 3 - I - 0x00E068 03:E058: FC        .byte $FC, $FA, $C1, $83, $07, $0F, $1F, $3F, $7F, $FF, $FE, $FC, $F8, $E0, $C0, $10   ; 

- D 3 - I - 0x00E078 03:E068: 29        .byte $29, $02   ; control byte for 00 + counter

- D 3 - I - 0x00E07A 03:E06A: 7F        .byte $7F   ; 

- D 3 - I - 0x00E07B 03:E06B: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E07C 03:E06C: 07        .byte $07   ; 

- D 3 - I - 0x00E07D 03:E06D: 22        .byte $22, $12, $61, $04, $06, $02, $03, $03   ; 

- D 3 - I - 0x00E085 03:E075: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E086 03:E076: 08        .byte $08   ; 

- D 3 - I - 0x00E087 03:E077: 00        .byte $00, $FF, $03, $00, $08, $10, $F0, $E0, $FF, $F0   ; 

- D 3 - I - 0x00E091 03:E081: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E092 03:E082: 06        .byte $06   ; 

- D 3 - I - 0x00E093 03:E083: C3        .byte $C3, $E0, $FF, $1F, $0F, $27, $79, $F9, $FF, $3F, $00, $E0   ; 

- D 3 - I - 0x00E09F 03:E08F: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E0A0 03:E090: 04        .byte $04   ; 

- D 3 - I - 0x00E0A1 03:E091: 3E        .byte $3E, $0F, $C4, $FE   ; 

- D 3 - I - 0x00E0A5 03:E095: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E0A6 03:E096: 07        .byte $07   ; 

- D 3 - I - 0x00E0A7 03:E097: 1F        .byte $1F, $07, $C1, $F0, $F0   ; 

- D 3 - I - 0x00E0AC 03:E09C: 29        .byte $29, $02   ; control byte for 00 + counter

- D 3 - I - 0x00E0AE 03:E09E: C0        .byte $C0, $F0, $3C, $06, $0F, $3F   ; 

- D 3 - I - 0x00E0B4 03:E0A4: 29        .byte $29, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E0B6 03:E0A6: C0        .byte $C0, $F0, $FC, $F6, $CF   ; 

- D 3 - I - 0x00E0BB 03:E0AB: 29        .byte $29, $06   ; control byte for 00 + counter

- D 3 - I - 0x00E0BD 03:E0AD: 80        .byte $80, $E0   ; 

- D 3 - I - 0x00E0BF 03:E0AF: 29        .byte $29, $07   ; control byte for 00 + counter

- D 3 - I - 0x00E0C1 03:E0B1: 80        .byte $80   ; 

- D 3 - I - 0x00E0C2 03:E0B2: 29        .byte $29, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E0C4 03:E0B4: 01        .byte $01, $03, $07, $0F, $3F   ; 

- D 3 - I - 0x00E0C9 03:E0B9: 29        .byte $29, $05   ; control byte for 00 + counter

- D 3 - I - 0x00E0CB 03:E0BB: 01        .byte $01, $03, $06, $33, $31, $78, $FD, $FC, $FC, $FE, $FF, $0C, $0E, $07, $02, $63   ; 
- D 3 - I - 0x00E0DB 03:E0CB: C3        .byte $C3, $11, $F0, $02, $86, $FC, $00, $C1, $63, $3E, $08, $FD, $79, $03, $FF, $3E   ; 
- D 3 - I - 0x00E0EB 03:E0DB: 9C        .byte $9C, $C1, $F7, $18, $70, $40, $01, $83, $07, $0F, $1F, $E7, $8F, $BF, $FE, $7C   ; 
- D 3 - I - 0x00E0FB 03:E0EB: F8        .byte $F8, $F0, $E0, $1F, $7F, $FE, $FD, $F9, $FB   ; 

- D 3 - I - 0x00E104 03:E0F4: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E105 03:E0F5: 02        .byte $02   ; 

- D 3 - I - 0x00E106 03:E0F6: E0        .byte $E0, $81, $07, $0F, $1F, $3F, $6E, $DC, $F8, $C7, $31, $66, $D8, $20, $C1, $C4   ; 
- D 3 - I - 0x00E116 03:E106: BF        .byte $BF, $7F   ; 

- D 3 - I - 0x00E118 03:E108: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E119 03:E109: 06        .byte $06   ; 

- D 3 - I - 0x00E11A 03:E10A: 29        .byte $29, $08   ; control byte for 00 + counter

- D 3 - I - 0x00E11C 03:E10C: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E11D 03:E10D: 08        .byte $08   ; 

- D 3 - I - 0x00E11E 03:E10E: 03        .byte $03, $15, $2D, $2E, $66, $6C, $6D, $D0   ; 

- D 3 - I - 0x00E126 03:E116: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E127 03:E117: 08        .byte $08   ; 

- D 3 - I - 0x00E128 03:E118: C7        .byte $C7, $CF, $1F, $3F, $3F   ; 

- D 3 - I - 0x00E12D 03:E11D: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E12E 03:E11E: 0B        .byte $0B   ; 

- D 3 - I - 0x00E12F 03:E11F: FC        .byte $FC, $FE   ; 

- D 3 - I - 0x00E131 03:E121: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E132 03:E122: 10        .byte $10   ; 

- D 3 - I - 0x00E133 03:E123: 7F        .byte $7F, $7F, $7F, $7E, $7A, $FD, $FC, $FE   ; 

- D 3 - I - 0x00E13B 03:E12B: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E13C 03:E12C: 06        .byte $06   ; 

- D 3 - I - 0x00E13D 03:E12D: E0        .byte $E0, $F1, $FF, $B6, $6C, $53, $87, $0C, $7F, $3F, $E3   ; 

- D 3 - I - 0x00E148 03:E138: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E149 03:E139: 05        .byte $05   ; 

- D 3 - I - 0x00E14A 03:E13A: F8        .byte $F8, $C6, $FF, $1D, $0D, $C4, $04, $C0, $E0, $F8, $FE   ; 

- D 3 - I - 0x00E155 03:E145: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E156 03:E146: 05        .byte $05   ; 

- D 3 - I - 0x00E157 03:E147: 29        .byte $29, $02   ; control byte for 00 + counter

- D 3 - I - 0x00E159 03:E149: 80        .byte $80, $C0, $F0, $F8, $7C, $3A   ; 

- D 3 - I - 0x00E15F 03:E14F: 29        .byte $29, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E161 03:E151: 80        .byte $80, $C0, $F0, $F8, $FC   ; 

- D 3 - I - 0x00E166 03:E156: 29        .byte $29, $02   ; control byte for 00 + counter

- D 3 - I - 0x00E168 03:E158: 01        .byte $01, $06, $0D, $1F, $3B, $7F   ; 

- D 3 - I - 0x00E16E 03:E15E: 29        .byte $29, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E170 03:E160: 01        .byte $01, $03, $07, $0E, $1D, $7F, $E3, $87, $FF, $E6, $EC, $98, $98, $1F, $3F, $7E   ; 
- D 3 - I - 0x00E180 03:E170: F8        .byte $F8, $9D, $3F   ; 

- D 3 - I - 0x00E183 03:E173: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E184 03:E174: 05        .byte $05   ; 

- D 3 - I - 0x00E185 03:E175: 8F        .byte $8F, $1F, $3F, $3F, $79, $E0, $C0, $08, $FC, $F2, $F0, $E3, $CF, $00, $91, $CF   ; 

- D 3 - I - 0x00E195 03:E185: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E196 03:E186: 06        .byte $06   ; 

- D 3 - I - 0x00E197 03:E187: 6E        .byte $6E, $30   ; 

- D 3 - I - 0x00E199 03:E189: 29        .byte $29, $02   ; control byte for 00 + counter

- D 3 - I - 0x00E19B 03:E18B: 8F        .byte $8F, $F8, $3F, $7F   ; 

- D 3 - I - 0x00E19F 03:E18F: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E1A0 03:E190: 04        .byte $04   ; 

- D 3 - I - 0x00E1A1 03:E191: FE        .byte $FE, $FC, $F8, $81, $03, $0F, $38, $F9, $93, $CF, $1F   ; 

- D 3 - I - 0x00E1AC 03:E19C: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E1AD 03:E19D: 05        .byte $05   ; 

- D 3 - I - 0x00E1AE 03:E19E: 7F        .byte $7F, $3F, $0F, $38, $E0, $86, $7E, $FE   ; 

- D 3 - I - 0x00E1B6 03:E1A6: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E1B7 03:E1A7: 03        .byte $03   ; 

- D 3 - I - 0x00E1B8 03:E1A8: 60        .byte $60, $A0, $A0, $A0, $E0, $F0, $D0, $E8, $FF, $7F, $7F, $7F, $3F, $3F, $3F, $9F   ; 
- D 3 - I - 0x00E1C8 03:E1B8: 00        .byte $00, $01, $01, $07, $0F, $0B, $36, $CC   ; 

- D 3 - I - 0x00E1D0 03:E1C0: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E1D1 03:E1C1: 03        .byte $03   ; 

- D 3 - I - 0x00E1D2 03:E1C2: FE        .byte $FE, $FC, $FD, $F9, $F3, $C3, $CF, $EF   ; 

- D 3 - I - 0x00E1DA 03:E1CA: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E1DB 03:E1CB: 02        .byte $02   ; 

- D 3 - I - 0x00E1DC 03:E1CC: DF        .byte $DF, $7F, $FF, $BF, $BF, $1F, $0F, $E7, $F1, $F8, $FE   ; 

- D 3 - I - 0x00E1E7 03:E1D7: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E1E8 03:E1D8: 0E        .byte $0E   ; 

- D 3 - I - 0x00E1E9 03:E1D9: 00        .byte $00, $01, $FF, $FE, $F8, $E7, $DF, $F7, $E7, $E7   ; 

- D 3 - I - 0x00E1F3 03:E1E3: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E1F4 03:E1E4: 03        .byte $03   ; 

- D 3 - I - 0x00E1F5 03:E1E5: FB        .byte $FB, $E7, $8F, $3F, $FF, $F8, $F8, $72, $BE, $2E, $4D, $59, $72   ; 

- D 3 - I - 0x00E202 03:E1F2: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E203 03:E1F3: 08        .byte $08   ; 

- D 3 - I - 0x00E204 03:E1F4: 19        .byte $19, $11, $24, $D0, $90, $90, $10, $10   ; 

- D 3 - I - 0x00E20C 03:E1FC: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E20D 03:E1FD: 08        .byte $08   ; 

- D 3 - I - 0x00E20E 03:E1FE: CA        .byte $CA, $C0, $C0, $C6, $C0, $C0, $60, $40   ; 

- D 3 - I - 0x00E216 03:E206: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E217 03:E207: 08        .byte $08   ; 

- D 3 - I - 0x00E218 03:E208: 3A        .byte $3A, $1D, $18, $0A, $8A, $42, $64, $22, $FC, $FE   ; 

- D 3 - I - 0x00E222 03:E212: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E223 03:E213: 06        .byte $06   ; 

- D 3 - I - 0x00E224 03:E214: 29        .byte $29, $02   ; control byte for 00 + counter

- D 3 - I - 0x00E226 03:E216: 80        .byte $80, $40, $40, $20, $20, $30   ; 

- D 3 - I - 0x00E22C 03:E21C: 29        .byte $29, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E22E 03:E21E: 80        .byte $80, $80, $C0, $C0, $E0, $FF, $86, $7E, $FD, $EA, $9E, $9C, $30, $3B, $7F   ; 

- D 3 - I - 0x00E23D 03:E22D: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E23E 03:E22E: 02        .byte $02   ; 

- D 3 - I - 0x00E23F 03:E22F: 3F        .byte $3F   ; 

- D 3 - I - 0x00E240 03:E230: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E241 03:E231: 03        .byte $03   ; 

- D 3 - I - 0x00E242 03:E232: 38        .byte $38, $1A, $3C, $3E, $FD, $F9, $FA, $FA   ; 

- D 3 - I - 0x00E24A 03:E23A: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E24B 03:E23B: 09        .byte $09   ; 

- D 3 - I - 0x00E24C 03:E23C: 7F        .byte $7F, $7F, $3E, $3C, $3E, $5C, $FD, $F4, $9E, $C9, $E3   ; 

- D 3 - I - 0x00E257 03:E247: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E258 03:E248: 04        .byte $04   ; 

- D 3 - I - 0x00E259 03:E249: F0        .byte $F0, $E4, $E0, $C4, $38, $23, $CD, $9B, $2F, $DF   ; 

- D 3 - I - 0x00E263 03:E253: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E264 03:E254: 06        .byte $06   ; 

- D 3 - I - 0x00E265 03:E255: 07        .byte $07, $07, $0F, $17, $E2, $C5, $C8, $80   ; 

- D 3 - I - 0x00E26D 03:E25D: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E26E 03:E25E: 08        .byte $08   ; 

- D 3 - I - 0x00E26F 03:E25F: F7        .byte $F7, $F8, $BF, $6F, $87, $0F, $1E, $16, $8F, $C7, $E0, $F8   ; 

- D 3 - I - 0x00E27B 03:E26B: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E27C 03:E26C: 04        .byte $04   ; 

- D 3 - I - 0x00E27D 03:E26D: 3F        .byte $3F, $F5, $E6, $CE, $3D, $28, $5B, $FF, $C7, $0F, $3F, $7F   ; 

- D 3 - I - 0x00E289 03:E279: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E28A 03:E27A: 04        .byte $04   ; 

- D 3 - I - 0x00E28B 03:E27B: 7F        .byte $7F, $1C, $3E, $3D, $F8, $F8, $FC, $F8   ; 

- D 3 - I - 0x00E293 03:E283: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E294 03:E284: 09        .byte $09   ; 

- D 3 - I - 0x00E295 03:E285: BD        .byte $BD, $46, $26, $05, $00, $03, $07   ; 

- D 3 - I - 0x00E29C 03:E28C: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E29D 03:E28D: 08        .byte $08   ; 

- D 3 - I - 0x00E29E 03:E28E: F2        .byte $F2, $FD, $FE, $FE, $FD, $F8, $FB   ; 

- D 3 - I - 0x00E2A5 03:E295: 2A        .byte $2A   ;  control byte for FF + counter
- D 3 - I - 0x00E2A6 03:E296: 09        .byte $09   ; 

- D 3 - I - 0x00E2A7 03:E297: 10        .byte $10, $98, $58, $C8, $4C, $8E, $86, $03, $E0, $F0, $F0, $F0, $F8, $FC, $FC, $FE   ; 

- D 3 - I - 0x00E2B7 03:E2A7: 29        .byte $29, $0F   ; control byte for 00 + counter

- D 3 - I - 0x00E2B9 03:E2A9: 01        .byte $01   ; 



off_E2AA:
- D 3 - I - 0x00E2BA 03:E2AA: 05        .byte $05   ; prepare control byte for 00
- D 3 - I - 0x00E2BB 03:E2AB: 06        .byte $06   ; prepare control byte for FF

- D 3 - I - 0x00E2BC 03:E2AC: 03        .byte $03, $04, $09, $13, $20, $40, $40, $80, $00, $03, $07, $0F, $1F, $3F, $3F, $7F   ; normal bytes
- D 3 - I - 0x00E2CC 03:E2BC: 01        .byte $01, $1F, $F0, $07, $71, $80   ; 

- D 3 - I - 0x00E2D2 03:E2C2: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x00E2D4 03:E2C4: 0F        .byte $0F   ; 

- D 3 - I - 0x00E2D5 03:E2C5: 06        .byte $06, $05   ; control byte for FF + counter

- D 3 - I - 0x00E2D7 03:E2C7: 0F        .byte $0F, $F8, $80, $C0, $31, $8B, $CE, $64   ; 

- D 3 - I - 0x00E2DF 03:E2CF: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x00E2E1 03:E2D1: C0        .byte $C0, $F0, $F0, $F8, $01, $FE, $04, $09, $1A, $D0, $F0, $30, $00, $01, $03, $07   ; 
- D 3 - I - 0x00E2F1 03:E2E1: 07        .byte $07, $0F, $0F, $0F, $FF, $00, $67, $81   ; 

- D 3 - I - 0x00E2F9 03:E2E9: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x00E2FB 03:E2EB: 06        .byte $06, $07   ; control byte for FF + counter

- D 3 - I - 0x00E2FD 03:E2ED: C0        .byte $C0, $30, $C8, $74, $3A, $39, $1D, $0E, $00, $C0, $F0, $F8, $FC, $FE, $FE, $FF   ; 
- D 3 - I - 0x00E30D 03:E2FD: 80        .byte $80, $80, $80, $80, $80, $88, $C2, $CC, $7F, $7F, $7F, $7F, $7F, $77, $3D, $33   ; 

- D 3 - I - 0x00E31D 03:E30D: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x00E31F 03:E30F: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x00E321 03:E311: 34        .byte $34, $34, $34, $34, $34, $24, $24, $68, $F8, $F8, $F8, $F8, $F8, $F8, $F8, $F0   ; 
- D 3 - I - 0x00E331 03:E321: 10        .byte $10, $13, $11, $11, $11, $10, $18, $08, $0F, $0C, $0E, $0E, $0E, $0F, $07, $07   ; 
- D 3 - I - 0x00E341 03:E331: 00        .byte $00, $66, $EF, $FF, $3F, $7F, $FF, $5F, $FF, $99, $10, $00, $C0, $80, $00, $A0   ; 
- D 3 - I - 0x00E351 03:E341: 86        .byte $86, $C7, $43, $F3, $EB, $FE, $7E, $FE, $7F, $3F, $BF, $0F, $17, $07, $87, $07   ; 
- D 3 - I - 0x00E361 03:E351: 8F        .byte $8F, $CF, $E7, $77, $3F, $1F, $07, $00, $70, $30, $18, $08   ; 

- D 3 - I - 0x00E36D 03:E35D: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x00E36F 03:E35F: 96        .byte $96, $7F, $FE, $FF, $FE   ; 

- D 3 - I - 0x00E374 03:E364: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x00E376 03:E366: 69        .byte $69, $80, $01, $00, $01   ; 

- D 3 - I - 0x00E37B 03:E36B: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E37D 03:E36D: 48        .byte $48, $08, $50, $50, $20, $20, $40, $80, $F0, $F0, $E0, $A0, $C0, $C0, $80, $00   ; 
- D 3 - I - 0x00E38D 03:E37D: FF        .byte $FF, $FC, $F0   ; 

- D 3 - I - 0x00E390 03:E380: 05        .byte $05, $0D   ; control byte for 00 + counter

- D 3 - I - 0x00E392 03:E382: 8E        .byte $8E, $D9, $63, $23, $13, $1F, $0F, $03, $71, $26, $1C, $1C, $0C   ; 

- D 3 - I - 0x00E39F 03:E38F: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x00E3A1 03:E391: 6F        .byte $6F, $F7, $77, $EF, $F3, $FF, $FC, $FD, $90, $08, $88, $10, $0C, $00, $03, $02   ; 
- D 3 - I - 0x00E3B1 03:E3A1: 7D        .byte $7D, $79, $FA, $3A, $F4, $C0, $D8, $E0, $86, $86, $04, $C4, $08, $38, $20, $00   ; 
- D 3 - I - 0x00E3C1 03:E3B1: 91        .byte $91, $D1, $EB, $66, $74, $38, $38, $B8, $E0, $E0, $F0, $F8, $F8, $F0, $F0, $70   ; 
- D 3 - I - 0x00E3D1 03:E3C1: FE        .byte $FE   ; 

- D 3 - I - 0x00E3D2 03:E3C2: 05        .byte $05, $0F   ; control byte for 00 + counter



vec_E3C4_NMI:
C - - - - - 0x00E3D4 03:E3C4: 85 02     STA ram_0002_t03_save_A
C - - - - - 0x00E3D6 03:E3C6: 86 03     STX ram_0003_t03_save_X
C - - - - - 0x00E3D8 03:E3C8: 84 04     STY ram_0004_t03_save_Y
C - - - - - 0x00E3DA 03:E3CA: A5 06     LDA ram_prg_bank_rts
C - - - - - 0x00E3DC 03:E3CC: 85 07     STA ram_copy_prg_bank_rts
C - - - - - 0x00E3DE 03:E3CE: A5 08     LDA ram_prg_bank_pointer
C - - - - - 0x00E3E0 03:E3D0: 85 0A     STA ram_copy_prg_bank_pointer
C - - - - - 0x00E3E2 03:E3D2: A2 02     LDX #con_prg_bank_jsr + $02
C - - - - - 0x00E3E4 03:E3D4: A0 01     LDY #con_prg_bank_rts + $01
C - - - - - 0x00E3E6 03:E3D6: A9 03     LDA #con_bsw_02_03
C - - - - - 0x00E3E8 03:E3D8: 20 D2 FF  JSR sub_FFD2_prg_bankswitch
C - - - - - 0x00E3EB 03:E3DB: A5 0A     LDA ram_copy_prg_bank_pointer
C - - - - - 0x00E3ED 03:E3DD: 85 08     STA ram_prg_bank_pointer
C - - - - - 0x00E3EF 03:E3DF: A5 07     LDA ram_copy_prg_bank_rts
C - - - - - 0x00E3F1 03:E3E1: 85 06     STA ram_prg_bank_rts
C - - - - - 0x00E3F3 03:E3E3: A5 02     LDA ram_0002_t03_save_A
C - - - - - 0x00E3F5 03:E3E5: A6 03     LDX ram_0003_t03_save_X
C - - - - - 0x00E3F7 03:E3E7: A4 04     LDY ram_0004_t03_save_Y
vec_E3E9_IRQ:
C - - - - - 0x00E3F9 03:E3E9: 40        RTI


; bzk garbage
- - - - - - 0x00E3FA 03:E3EA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E400 03:E3F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E410 03:E400: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E420 03:E410: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E430 03:E420: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E440 03:E430: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E450 03:E440: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E460 03:E450: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E470 03:E460: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E480 03:E470: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E490 03:E480: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E4A0 03:E490: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E4B0 03:E4A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E4C0 03:E4B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E4D0 03:E4C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E4E0 03:E4D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E4F0 03:E4E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E500 03:E4F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E510 03:E500: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E520 03:E510: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E530 03:E520: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E540 03:E530: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E550 03:E540: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E560 03:E550: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E570 03:E560: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E580 03:E570: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E590 03:E580: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E5A0 03:E590: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E5B0 03:E5A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E5C0 03:E5B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E5D0 03:E5C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E5E0 03:E5D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E5F0 03:E5E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E600 03:E5F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E610 03:E600: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E620 03:E610: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E630 03:E620: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E640 03:E630: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E650 03:E640: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E660 03:E650: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E670 03:E660: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E680 03:E670: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E690 03:E680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E6A0 03:E690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E6B0 03:E6A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E6C0 03:E6B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E6D0 03:E6C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E6E0 03:E6D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E6F0 03:E6E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E700 03:E6F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E710 03:E700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E720 03:E710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E730 03:E720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E740 03:E730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E750 03:E740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E760 03:E750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E770 03:E760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E780 03:E770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E790 03:E780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E7A0 03:E790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E7B0 03:E7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E7C0 03:E7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E7D0 03:E7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E7E0 03:E7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E7F0 03:E7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E800 03:E7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E810 03:E800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E820 03:E810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E830 03:E820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E840 03:E830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E850 03:E840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E860 03:E850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E870 03:E860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E880 03:E870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E890 03:E880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E8A0 03:E890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E8B0 03:E8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E8C0 03:E8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E8D0 03:E8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E8E0 03:E8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E8F0 03:E8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E900 03:E8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E910 03:E900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E920 03:E910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E930 03:E920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E940 03:E930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E950 03:E940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E960 03:E950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E970 03:E960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E980 03:E970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E990 03:E980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E9A0 03:E990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E9B0 03:E9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E9C0 03:E9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E9D0 03:E9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E9E0 03:E9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00E9F0 03:E9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA00 03:E9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA10 03:EA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA20 03:EA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA30 03:EA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA40 03:EA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA50 03:EA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA60 03:EA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA70 03:EA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA80 03:EA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EA90 03:EA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EAA0 03:EA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EAB0 03:EAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EAC0 03:EAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EAD0 03:EAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EAE0 03:EAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EAF0 03:EAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB00 03:EAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB10 03:EB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB20 03:EB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB30 03:EB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB40 03:EB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB50 03:EB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB60 03:EB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB70 03:EB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB80 03:EB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB90 03:EB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBA0 03:EB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBB0 03:EBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBC0 03:EBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBD0 03:EBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBE0 03:EBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBF0 03:EBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC00 03:EBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC10 03:EC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC20 03:EC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC30 03:EC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC40 03:EC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC50 03:EC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC60 03:EC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC70 03:EC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC80 03:EC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC90 03:EC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ECA0 03:EC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ECB0 03:ECA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ECC0 03:ECB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ECD0 03:ECC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ECE0 03:ECD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ECF0 03:ECE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED00 03:ECF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED10 03:ED00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED20 03:ED10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED30 03:ED20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED40 03:ED30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED50 03:ED40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED60 03:ED50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED70 03:ED60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED80 03:ED70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00ED90 03:ED80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EDA0 03:ED90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EDB0 03:EDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EDC0 03:EDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EDD0 03:EDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EDE0 03:EDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EDF0 03:EDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE00 03:EDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE10 03:EE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE20 03:EE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE30 03:EE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE40 03:EE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE50 03:EE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE60 03:EE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE70 03:EE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE80 03:EE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EE90 03:EE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EEA0 03:EE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EEB0 03:EEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EEC0 03:EEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EED0 03:EEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EEE0 03:EED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EEF0 03:EEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF00 03:EEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF10 03:EF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF20 03:EF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF30 03:EF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF40 03:EF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF50 03:EF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF60 03:EF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF70 03:EF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF80 03:EF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EF90 03:EF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EFA0 03:EF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EFB0 03:EFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EFC0 03:EFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EFD0 03:EFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EFE0 03:EFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EFF0 03:EFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F000 03:EFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F010 03:F000: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F020 03:F010: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F030 03:F020: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F040 03:F030: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F050 03:F040: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F060 03:F050: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F070 03:F060: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F080 03:F070: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F090 03:F080: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F0A0 03:F090: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F0B0 03:F0A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F0C0 03:F0B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F0D0 03:F0C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F0E0 03:F0D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F0F0 03:F0E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F100 03:F0F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F110 03:F100: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F120 03:F110: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F130 03:F120: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F140 03:F130: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F150 03:F140: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F160 03:F150: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F170 03:F160: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F180 03:F170: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F190 03:F180: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F1A0 03:F190: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F1B0 03:F1A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F1C0 03:F1B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F1D0 03:F1C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F1E0 03:F1D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F1F0 03:F1E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F200 03:F1F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F210 03:F200: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F220 03:F210: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F230 03:F220: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F240 03:F230: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F250 03:F240: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F260 03:F250: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F270 03:F260: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F280 03:F270: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F290 03:F280: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F2A0 03:F290: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F2B0 03:F2A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F2C0 03:F2B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F2D0 03:F2C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F2E0 03:F2D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F2F0 03:F2E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F300 03:F2F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F310 03:F300: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F320 03:F310: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F330 03:F320: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F340 03:F330: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F350 03:F340: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F360 03:F350: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F370 03:F360: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F380 03:F370: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F390 03:F380: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F3A0 03:F390: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F3B0 03:F3A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F3C0 03:F3B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F3D0 03:F3C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F3E0 03:F3D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F3F0 03:F3E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F400 03:F3F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F410 03:F400: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F420 03:F410: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F430 03:F420: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F440 03:F430: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F450 03:F440: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F460 03:F450: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F470 03:F460: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F480 03:F470: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F490 03:F480: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F4A0 03:F490: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F4B0 03:F4A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F4C0 03:F4B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F4D0 03:F4C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F4E0 03:F4D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F4F0 03:F4E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F500 03:F4F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F510 03:F500: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F520 03:F510: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F530 03:F520: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F540 03:F530: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F550 03:F540: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F560 03:F550: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F570 03:F560: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F580 03:F570: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F590 03:F580: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F5A0 03:F590: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F5B0 03:F5A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F5C0 03:F5B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F5D0 03:F5C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F5E0 03:F5D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F5F0 03:F5E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F600 03:F5F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F610 03:F600: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F620 03:F610: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F630 03:F620: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F640 03:F630: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F650 03:F640: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F660 03:F650: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F670 03:F660: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F680 03:F670: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F690 03:F680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F6A0 03:F690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F6B0 03:F6A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F6C0 03:F6B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F6D0 03:F6C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F6E0 03:F6D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F6F0 03:F6E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F700 03:F6F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F710 03:F700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F720 03:F710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F730 03:F720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F740 03:F730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F750 03:F740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F760 03:F750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F770 03:F760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F780 03:F770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F790 03:F780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F7A0 03:F790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F7B0 03:F7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F7C0 03:F7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F7D0 03:F7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F7E0 03:F7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F7F0 03:F7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F800 03:F7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F810 03:F800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F820 03:F810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F830 03:F820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F840 03:F830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F850 03:F840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F860 03:F850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F870 03:F860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F880 03:F870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F890 03:F880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F8A0 03:F890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F8B0 03:F8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F8C0 03:F8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F8D0 03:F8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F8E0 03:F8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F8F0 03:F8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F900 03:F8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F910 03:F900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F920 03:F910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F930 03:F920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F940 03:F930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F950 03:F940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F960 03:F950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F970 03:F960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F980 03:F970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F990 03:F980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F9A0 03:F990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F9B0 03:F9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F9C0 03:F9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F9D0 03:F9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F9E0 03:F9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F9F0 03:F9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA00 03:F9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA10 03:FA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA20 03:FA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA30 03:FA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA40 03:FA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA50 03:FA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA60 03:FA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA70 03:FA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA80 03:FA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA90 03:FA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAA0 03:FA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_FAA0:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x00FAB0 03:FAA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E   ; 00 
- D 3 - - - 0x00FAC0 03:FAB0: 0E        .byte $0E, $0E, $0E, $0E, $0D, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $00, $00, $00, $05   ; 10 
- D 3 - - - 0x00FAD0 03:FAC0: 01        .byte $01, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $01   ; 20 
- D 3 - - - 0x00FAE0 03:FAD0: 01        .byte $01, $01, $01, $01, $F1, $01, $01, $00, $00, $00, $01, $03, $0F, $3F, $FF, $FF   ; 30 
- D 3 - - - 0x00FAF0 03:FAE0: FE        .byte $FE, $FE, $FE, $7E, $3E, $BE, $BE, $BE, $BE, $BE, $BE, $BE, $8E, $9E, $BE, $BE   ; 40 
- D 3 - - - 0x00FB00 03:FAF0: BE        .byte $BE, $BE, $BE, $BE, $BE, $BE, $BE, $3E, $7E, $7E, $FE, $FE, $FE, $FE, $FE, $FE   ; 50 



tbl_FB00:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x00FB10 03:FB00: 00        .byte $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02   ; 00 
- D 3 - - - 0x00FB20 03:FB10: 02        .byte $02, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $04   ; 10 
- D 3 - - - 0x00FB30 03:FB20: 04        .byte $04, $04, $04, $04, $05, $05, $05, $05, $05, $05, $05, $05, $06, $06, $06, $06   ; 20 
- D 3 - - - 0x00FB40 03:FB30: 06        .byte $06, $06, $06, $06, $07, $07, $07, $07, $07, $07, $07, $07, $08, $08, $08, $08   ; 30 
- D 3 - - - 0x00FB50 03:FB40: 08        .byte $08, $08, $08, $08, $09, $09, $09, $09, $09, $09, $09, $09, $0A, $0A, $0A, $0A   ; 40 
- D 3 - - - 0x00FB60 03:FB50: 0A        .byte $0A, $0A, $0A, $0A, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0C, $0C, $0C, $0C   ; 50 
- D 3 - - - 0x00FB70 03:FB60: 0C        .byte $0C, $0C, $0C, $0C, $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0E, $0E, $0E, $0E   ; 60 
- D 3 - - - 0x00FB80 03:FB70: 0E        .byte $0E, $0E, $0E, $0E, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $10, $10, $10, $10   ; 70 
- D 3 - - - 0x00FB90 03:FB80: 10        .byte $10, $10, $10, $10, $11, $11, $11, $11, $11, $11, $11, $11, $12, $12, $12, $12   ; 80 
- D 3 - - - 0x00FBA0 03:FB90: 12        .byte $12, $12, $12, $12, $13, $13, $13, $13, $13, $13, $13, $13, $14, $14, $14, $14   ; 90 
- D 3 - - - 0x00FBB0 03:FBA0: 14        .byte $14, $14, $14, $14, $15, $15, $15, $15, $15, $15, $15, $15, $16, $16, $16, $16   ; A0 
- D 3 - - - 0x00FBC0 03:FBB0: 16        .byte $16, $16, $16, $16, $17, $17, $17, $17, $17, $17, $17, $17, $18, $18, $18, $18   ; B0 
- D 3 - - - 0x00FBD0 03:FBC0: 18        .byte $18, $18, $18, $18, $19, $19, $19, $19, $19, $19, $19, $19, $1A, $1A, $1A, $1A   ; C0 
- D 3 - - - 0x00FBE0 03:FBD0: 1A        .byte $1A, $1A, $1A, $1A, $1B, $1B, $1B, $1B, $1B, $1B, $1B, $1B, $1C, $1C, $1C, $1C   ; D0 
- D 3 - - - 0x00FBF0 03:FBE0: 1C        .byte $1C, $1C, $1C, $1C, $1D, $1D, $1D, $1D, $1D, $1D, $1D, $1D, $1E, $1E, $1E, $1E   ; E0 
- D 3 - - - 0x00FC00 03:FBF0: 1E        .byte $1E, $1E, $1E, $1E, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $00, $00, $00, $00   ; F0 



tbl_FC00:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- - - - - - 0x00FC10 03:FC00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00FC20 03:FC10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 10 
- - - - - - 0x00FC30 03:FC20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 20 
- D 3 - - - 0x00FC40 03:FC30: 00        .byte $00, $00, $80, $A2, $A0, $80, $00, $00, $04, $04, $06, $02, $00, $00, $00, $00   ; 30 
- D 3 - - - 0x00FC50 03:FC40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $00   ; 40 
- D 3 - - - 0x00FC60 03:FC50: 00        .byte $00, $02, $A2, $A2, $A0, $80, $80, $80, $04, $04, $06, $06, $00, $00, $00, $00   ; 50 
- D 3 - - - 0x00FC70 03:FC60: 00        .byte $00, $00, $00, $00, $00, $00, $42, $52, $12, $12, $02, $02, $02, $02, $10, $10   ; 60 
- D 3 - - - 0x00FC80 03:FC70: 10        .byte $10, $32, $B2, $B0, $80, $80, $80, $80, $94, $A4, $02, $02, $00, $00, $40, $00   ; 70 
- D 3 - - - 0x00FC90 03:FC80: 00        .byte $00, $00, $00, $02, $02, $02, $42, $52, $12, $02, $22, $32, $32, $32, $26, $06   ; 80 
- D 3 - - - 0x00FCA0 03:FC90: 40        .byte $40, $62, $C2, $C0, $C0, $90, $B4, $B4, $B4, $B4, $92, $82, $80, $40, $40, $00   ; 90 
- D 3 - - - 0x00FCB0 03:FCA0: 02        .byte $02, $02, $02, $02, $02, $12, $72, $70, $30, $20, $30, $30, $30, $30, $25, $05   ; A0 
- D 3 - - - 0x00FCC0 03:FCB0: 40        .byte $40, $40, $C0, $C0, $F0, $F0, $F4, $C4, $D6, $C4, $C2, $82, $A0, $E0, $E0, $80   ; B0 
- D 3 - - - 0x00FCD0 03:FCC0: 02        .byte $02, $02, $02, $02, $02, $12, $72, $70, $10, $30, $B0, $B0, $30, $90, $97, $97   ; C0 
- D 3 - - - 0x00FCE0 03:FCD0: 92        .byte $92, $D0, $F0, $F0, $F0, $D4, $C6, $C6, $46, $60, $A2, $A2, $F0, $F0, $F0, $90   ; D0 
- D 3 - - - 0x00FCF0 03:FCE0: 00        .byte $00, $00, $20, $60, $52, $52, $50, $50, $50, $50, $F0, $F0, $D0, $D0, $D7, $D7   ; E0 
- D 3 - - - 0x00FD00 03:FCF0: D2        .byte $D2, $D2, $F2, $92, $82, $A2, $82, $A2, $02, $22, $A2, $B6, $F2, $F2, $B0, $80   ; F0 



tbl_FD00:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x00FD10 03:FD00: 10        .byte $10, $10, $30, $60, $42, $42, $40, $40, $40, $40, $E0, $A0, $F0, $F2, $E7, $C7   ; 00 
- D 3 - - - 0x00FD20 03:FD10: 4A        .byte $4A, $4A, $02, $02, $A2, $A2, $A2, $A2, $B2, $B2, $32, $36, $62, $E2, $A0, $80   ; 10 
- D 3 - - - 0x00FD30 03:FD20: 11        .byte $11, $10, $11, $01, $41, $40, $60, $60, $60, $40, $A0, $A0, $90, $B4, $AD, $AD   ; 20 
- D 3 - - - 0x00FD40 03:FD30: 28        .byte $28, $28, $2A, $02, $A2, $A2, $A2, $B2, $B2, $92, $16, $16, $46, $86, $84, $84   ; 30 
- D 3 - - - 0x00FD50 03:FD40: 93        .byte $93, $93, $13, $03, $43, $62, $62, $60, $E0, $C0, $A0, $A6, $96, $94, $A5, $A5   ; 40 
- D 3 - - - 0x00FD60 03:FD50: 2C        .byte $2C, $2C, $20, $20, $A0, $A0, $B0, $B0, $A0, $80, $04, $04, $04, $04, $04, $04   ; 50 
- D 3 - - - 0x00FD70 03:FD60: 93        .byte $93, $93, $93, $13, $63, $63, $62, $60, $E0, $E6, $36, $36, $34, $34, $35, $35   ; 60 
- D 3 - - - 0x00FD80 03:FD70: 2C        .byte $2C, $2C, $24, $20, $20, $20, $20, $20, $20, $24, $04, $04, $00, $04, $26, $26   ; 70 
- D 3 - - - 0x00FD90 03:FD80: D2        .byte $D2, $92, $92, $92, $B2, $B2, $12, $14, $E4, $F6, $32, $30, $35, $35, $35, $35   ; 80 
- D 3 - - - 0x00FDA0 03:FD90: 2D        .byte $2D, $2D, $24, $24, $02, $02, $02, $02, $00, $24, $26, $20, $24, $24, $26, $66   ; 90 
- D 3 - - - 0x00FDB0 03:FDA0: 50        .byte $50, $12, $12, $92, $90, $90, $90, $10, $F0, $F2, $32, $30, $31, $31, $39, $39   ; A0 
- D 3 - - - 0x00FDC0 03:FDB0: 29        .byte $29, $29, $38, $1E, $16, $16, $16, $16, $37, $37, $B2, $22, $20, $20, $22, $62   ; B0 
- D 3 - - - 0x00FDD0 03:FDC0: 10        .byte $10, $50, $50, $C0, $C0, $90, $D0, $D0, $D2, $D2, $00, $00, $01, $01, $09, $89   ; C0 
- D 3 - - - 0x00FDE0 03:FDD0: 89        .byte $89, $89, $88, $98, $90, $90, $91, $10, $11, $B1, $B0, $30, $20, $20, $02, $42   ; D0 
- D 3 - - - 0x00FDF0 03:FDE0: 4C        .byte $4C, $4C, $4C, $44, $84, $90, $D0, $D0, $D2, $D2, $00, $00, $40, $60, $68, $48   ; E0 
- D 3 - - - 0x00FE00 03:FDF0: 48        .byte $48, $48, $48, $48, $40, $40, $01, $00, $01, $A1, $A0, $30, $30, $02, $0A, $4A   ; F0 



tbl_FE00:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x00FE10 03:FE00: 0C        .byte $0C, $8C, $8C, $44, $C4, $E4, $D0, $D0, $D2, $C2, $80, $00, $00, $20, $20, $00   ; 00 
- D 3 - - - 0x00FE20 03:FE10: 00        .byte $00, $00, $00, $00, $00, $00, $01, $00, $01, $81, $80, $00, $38, $1A, $1A, $58   ; 10 
- D 3 - - - 0x00FE30 03:FE20: 0C        .byte $0C, $0C, $8C, $A2, $A2, $B2, $B0, $B0, $C0, $40, $86, $86, $A6, $24, $04, $06   ; 20 
- D 3 - - - 0x00FE40 03:FE30: 06        .byte $06, $06, $06, $04, $04, $00, $01, $00, $01, $81, $00, $00, $1A, $1A, $1A, $58   ; 30 
- D 3 - - - 0x00FE50 03:FE40: 08        .byte $08, $08, $88, $8A, $82, $B2, $B0, $80, $80, $48, $CA, $CA, $AA, $AA, $0A, $0A   ; 40 
- D 3 - - - 0x00FE60 03:FE50: 0A        .byte $0A, $0A, $0A, $0A, $0A, $0A, $0B, $03, $03, $C2, $40, $00, $1A, $0A, $18, $58   ; 50 
- D 3 - - - 0x00FE70 03:FE60: 28        .byte $28, $08, $8E, $8E, $88, $80, $81, $A1, $A1, $A3, $E3, $E3, $F3, $B1, $B1, $B1   ; 60 
- D 3 - - - 0x00FE80 03:FE70: B1        .byte $B1, $B0, $90, $90, $90, $90, $90, $81, $80, $C0, $C0, $8A, $8A, $1A, $1C, $5C   ; 70 
- D 3 - - - 0x00FE90 03:FE80: BA        .byte $BA, $3A, $1C, $0C, $88, $88, $88, $88, $88, $82, $82, $A0, $E0, $C0, $40, $40   ; 80 
- D 3 - - - 0x00FEA0 03:FE90: 40        .byte $40, $40, $40, $40, $40, $00, $89, $A9, $E8, $C8, $C8, $8A, $8A, $0C, $4C, $5C   ; 90 
- D 3 - - - 0x00FEB0 03:FEA0: AA        .byte $AA, $BE, $3C, $3C, $1C, $8C, $8C, $8E, $8E, $8E, $AA, $AA, $A8, $28, $08, $0C   ; A0 
- D 3 - - - 0x00FEC0 03:FEB0: 0C        .byte $0C, $04, $04, $0C, $4C, $2D, $2D, $EC, $EC, $CD, $8E, $CE, $CE, $54, $74, $30   ; B0 
- - - - - - 0x00FED0 03:FEC0: 86        .byte $86, $AE, $AE, $BE, $BE, $AE, $BE, $BE, $9E, $9E, $BE, $BE, $3E, $3E, $3E, $3E   ; C0 
- D 3 - - - 0x00FEE0 03:FED0: 3E        .byte $3E, $3E, $3E, $2E, $6E, $7F, $7F, $7E, $FE, $FF, $FE, $FE, $F4, $74, $30, $30   ; D0 
- - - - - - 0x00FEF0 03:FEE0: 8A        .byte $8A, $8A, $AA, $AB, $AB, $BB, $BB, $BB, $BB, $BB, $BB, $3B, $3B, $3B, $3B, $3B   ; E0 
- D 3 - - - 0x00FF00 03:FEF0: 3B        .byte $3B, $3B, $3B, $3B, $7B, $7A, $7A, $73, $73, $73, $73, $73, $70, $30, $30, $30   ; F0 


; bzk garbage
- - - - - - 0x00FF10 03:FF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF20 03:FF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF30 03:FF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF40 03:FF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF50 03:FF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF60 03:FF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF70 03:FF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF80 03:FF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF90 03:FF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFA0 03:FF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFB0 03:FFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFC0 03:FFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFD0 03:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 00: 0x%04X [%d]", ($FFD0 - *), ($FFD0 - *))



.segment "BSW_01"   ; !!! bzk bankswitch must be at the same address in all banks and contain the same code
.org $FFD0
- - - - - - 0x00FFE0 03:FFD0: 86 0B     STX ram_prg_bank_jsr
sub_FFD2_prg_bankswitch:
C - - - - - 0x00FFE2 03:FFD2: 85 08     STA ram_prg_bank_pointer
C - - - - - 0x00FFE4 03:FFD4: 84 06     STY ram_prg_bank_rts
C - - - - - 0x00FFE6 03:FFD6: BD E8 FF  LDA tbl_FFE8,X
C - - - - - 0x00FFE9 03:FFD9: 9D E8 FF  STA tbl_FFE8,X
C - - - - - 0x00FFEC 03:FFDC: 20 00 80  JSR sub_8000_indirect_jump_0008
C - - - - - 0x00FFEF 03:FFDF: A6 06     LDX ram_prg_bank_rts
C - - - - - 0x00FFF1 03:FFE1: BD E8 FF  LDA tbl_FFE8,X
C - - - - - 0x00FFF4 03:FFE4: 9D E8 FF  STA tbl_FFE8,X
C - - - - - 0x00FFF7 03:FFE7: 60        RTS



tbl_FFE8:
- - - - - - 0x00FFF8 03:FFE8: 00        .byte $00, $01, $02, $03   ; 


; bzk garbage
- - - - - - 0x00FFFC 03:FFEC: 10        .byte $10, $11, $12, $13   ; 



vec_FFF0_RESET:
loc_FFF0_infinite_loop:
- - - - - - 0x010000 03:FFF0: 78        SEI
- - - - - - 0x010001 03:FFF1: A9 00     LDA #$00
- - - - - - 0x010003 03:FFF3: 8D E8 FF  STA tbl_FFE8
- - - - - - 0x010006 03:FFF6: 4C F0 FF  JMP loc_FFF0_infinite_loop


; bzk garbage
- - - - - - 0x010009 03:FFF9: FF        .byte $FF   ; 



.segment "VECTORS_01"
- D 3 - - - 0x01000A 03:FFFA: C4 E3     .word vec_E3C4_NMI
- - - - - - 0x01000C 03:FFFC: F0 FF     .word vec_FFF0_RESET
- - - - - - 0x01000E 03:FFFE: E9 E3     .word vec_E3E9_IRQ



