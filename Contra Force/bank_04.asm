.segment "BANK_04"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x008010-0x00A00F



.export sub_0x008011
.export ofs_006_0x00801F_21
.export loc_0x008093
.export sub_0x008093
.export sub_0x0080C6
.export sub_0x008142
.export ofs_006_0x008142_17
.export loc_0x0081C6
.export loc_0x0081CC
.export sub_0x00842B_000A_ASL_TAY
.export sub_0x00846C
.export sub_0x008494
.export sub_0x0084A4
.export ofs_006_0x0084A4_1D
.export sub_0x0084B1
.export sub_0x00854E
.export sub_0x0086F6
.export loc_0x0087A2
.export sub_0x0087A2
.export sub_0x008872
.export sub_0x0088F9
.export loc_0x0088F9
.export loc_0x008967
.export sub_0x008969
.export loc_0x0089B1
.export sub_0x0089B1
.export loc_0x008A8B
.export loc_0x008A92
.export loc_0x008AAF
.export sub_0x008B77
.export sub_0x008BD9
.export sub_0x008BE0
.export sub_0x008BE3
.export loc_0x008C20
.export loc_0x008C23
.export sub_0x008D91
.export sub_0x008DD9_009F_AND_7F_TAY_DEY
.export sub_0x008DE0
.export loc_0x008E20
.export sub_0x008E20
.export sub_0x008E29
.export sub_0x008F47
.export loc_0x008F47
.export sub_0x008FC9
.export sub_0x008FCC
.export loc_0x008FCC
.export sub_0x008FD0
.export loc_0x008FD0
.export sub_0x008FF3
.export sub_0x009003
.export sub_0x009013
.export sub_0x00901C
.export sub_0x00905B
.export sub_0x009080
.export sub_0x009095
.export sub_0x0090AA
.export sub_0x0090B3
.export loc_0x0090B3
.export sub_0x0090D8_0600x_write_08
.export loc_0x0090D8_0600x_write_08
.export sub_0x0090DE_0600x_ORA_08
.export sub_0x0090E6_0600x_AND_F0
.export sub_0x0090EC
.export sub_0x0090F2
.export sub_0x0090FE
.export sub_0x009101
.export sub_0x00912E
.export sub_0x009151_0682x_and_0F
.export sub_0x009164_copy_position
.export sub_0x009182_06B2x_AND_0F
.export sub_0x009188_stage_AND_01
.export sub_0x00918D_06B2x_AND_F0
.export sub_0x009193_0782x_AND_7F
.export sub_0x009199_0095_clear_bit7
.export sub_0x0091A0_0095_set_bit7
.export sub_0x0091A6
.export sub_0x0091C1
.export sub_0x0091D5
.export sub_0x0091DD
.export ofs_020_0x0091DD_02
.export ofs_020_0x0091DD_10
.export ofs_020_0x0091DD_18
.export loc_0x0091EF
.export sub_0x0091F2
.export sub_0x0091F8
.export sub_0x009205
.export ofs_006_0x009219_1F
.export sub_0x009382
.export sub_0x0093C1_06B2x_LSRx4_TAY
.export sub_0x0093C4_LSRx4_TAY
.export sub_0x0093C4_LSRx3_TAY
.export sub_0x0093CA
.export loc_0x0093CA
.export sub_0x0093E8
.export sub_0x0093F3
.export sub_0x00943E
.export sub_0x0094A9
.export sub_0x0094D5
.export sub_0x009504
.export sub_0x00950E
.export sub_0x009517_EOR_FF_CLC_ADC_01
.export sub_0x00951D
.export tbl_0x009574_sfx
.export tbl_0x009583_sfx
.export sub_0x009592
.export loc_0x0095E8_play_music
.export sub_0x0095E8_play_music
.export sub_0x0095ED
.export loc_0x0095F9_06B2x_EOR_80
.export loc_0x0095FE_sta_06B2x
.export sub_0x009602
.export sub_0x00961A
.export loc_0x00962E
.export sub_0x00962E
.export loc_0x009657
.export sub_0x009657
.export loc_0x009672
.export sub_0x00968C
.export sub_0x0096CA
.export sub_0x009710
.export sub_0x00972F
.export loc_0x009747
.export loc_0x00974A
.export sub_0x009768
.export sub_0x009772
.export loc_0x009772
.export ofs_006_0x009782_16
.export ofs_006_0x009793_24
.export loc_0x009848
.export sub_0x0098C2
.export tbl_0x009950_bits
.export sub_0x00998A
.export sub_0x0099D8
.export sub_0x0099E5
.export loc_0x009A27
.export sub_0x009A27
.export sub_0x009A57
.export loc_0x009A57
.export sub_0x009A5C
.export sub_0x009A62
.export loc_0x009A62
.export ofs_020_0x009A62_06
.export ofs_020_0x009A62_0A
.export ofs_020_0x009A62_0C
.export ofs_020_0x009A62_12
.export ofs_020_0x009A62_16
.export sub_0x009A88_drop_a_box_with_powerup
.export sub_0x009E15
.export loc_0x009E15
.export loc_0x009E25
.export sub_0x009E25
.export sub_0x009E65
.export sub_0x009E75
.export sub_0x009E87
.export sub_0x009EE3
.export tbl_0x009F60
.export sub_0x009F62



; bzk garbage, unused bank id
- D 0 - - - 0x008010 02:8000: 04        .byte con_prg_bank + $04   ; 



sub_0x008011:
C D 0 - - - 0x008011 02:8001: A9 00     LDA #$00
C - - - - - 0x008013 02:8003: 8D 40 03  STA ram_0340
C - - - - - 0x008016 02:8006: 85 8C     STA ram_008C
C - - - - - 0x008018 02:8008: 85 8D     STA ram_008D
C - - - - - 0x00801A 02:800A: 85 9E     STA ram_009E
C - - - - - 0x00801C 02:800C: 20 01 A0  JSR sub_0x00A011
ofs_006_0x00801F_21:
C - - - - - 0x00801F 02:800F: A2 02     LDX #$02
bra_8011_loop:
C - - - - - 0x008021 02:8011: 20 13 9A  JSR sub_9A13
C - - - - - 0x008024 02:8014: E8        INX
C - - - - - 0x008025 02:8015: E0 16     CPX #$16
C - - - - - 0x008027 02:8017: 90 F8     BCC bra_8011_loop
bra_8019_RTS:
C - - - - - 0x008029 02:8019: 60        RTS



sub_801A:
C - - - - - 0x00802A 02:801A: A4 75     LDY ram_stage
C - - - - - 0x00802C 02:801C: 88        DEY
C - - - - - 0x00802D 02:801D: F0 0E     BEQ bra_802D
C - - - - - 0x00802F 02:801F: 88        DEY
C - - - - - 0x008030 02:8020: D0 F7     BNE bra_8019_RTS
C - - - - - 0x008032 02:8022: A5 23     LDA ram_0023
C - - - - - 0x008034 02:8024: 29 03     AND #$03
C - - - - - 0x008036 02:8026: D0 2B     BNE bra_8053_RTS
C - - - - - 0x008038 02:8028: A9 0B     LDA #con_F3D6_0B
C - - - - - 0x00803A 02:802A: 4C B3 F3  JMP loc_0x01F3C3
bra_802D:
C - - - - - 0x00803D 02:802D: E0 0A     CPX #$0A
C - - - - - 0x00803F 02:802F: 90 E8     BCC bra_8019_RTS
C - - - - - 0x008041 02:8031: 20 BA 96  JSR sub_96BA
C - - - - - 0x008044 02:8034: A5 60     LDA ram_0060
C - - - - - 0x008046 02:8036: C9 04     CMP #$04
C - - - - - 0x008048 02:8038: 90 21     BCC bra_805B
C - - - - - 0x00804A 02:803A: A0 01     LDY #$01
C - - - - - 0x00804C 02:803C: 84 91     STY ram_0091
bra_803E_loop:
C - - - - - 0x00804E 02:803E: 20 6F 80  JSR sub_806F
C - - - - - 0x008051 02:8041: B0 11     BCS bra_8054
C - - - - - 0x008053 02:8043: E6 91     INC ram_0091
C - - - - - 0x008055 02:8045: A4 91     LDY ram_0091
C - - - - - 0x008057 02:8047: C0 05     CPY #$05
C - - - - - 0x008059 02:8049: 90 F3     BCC bra_803E_loop
C - - - - - 0x00805B 02:804B: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00805E 02:804E: 29 7F     AND #$7F
bra_8050:
loc_8050:
C - - - - - 0x008060 02:8050: 9D 34 06  STA ram_obj_animation_hi,X
bra_8053_RTS:
C - - - - - 0x008063 02:8053: 60        RTS
bra_8054:
C - - - - - 0x008064 02:8054: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x008067 02:8057: 09 80     ORA #$80
C - - - - - 0x008069 02:8059: D0 F5     BNE bra_8050    ; jmp
bra_805B:
C - - - - - 0x00806B 02:805B: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00806E 02:805E: 10 F3     BPL bra_8053_RTS
C - - - - - 0x008070 02:8060: A9 00     LDA #$00
C - - - - - 0x008072 02:8062: 20 71 80  JSR sub_8071
C - - - - - 0x008075 02:8065: B0 EC     BCS bra_8053_RTS
- - - - - - 0x008077 02:8067: BD 34 06  LDA ram_obj_animation_hi,X
- - - - - - 0x00807A 02:806A: 49 80     EOR #$80
- - - - - - 0x00807C 02:806C: 4C 50 80  JMP loc_8050



sub_806F:
C - - - - - 0x00807F 02:806F: A5 91     LDA ram_0091
sub_8071:
C - - - - - 0x008081 02:8071: 0A        ASL
C - - - - - 0x008082 02:8072: 0A        ASL
C - - - - - 0x008083 02:8073: A8        TAY
C - - - - - 0x008084 02:8074: A2 00     LDX #$00
bra_8076_loop:
C - - - - - 0x008086 02:8076: B9 9D 80  LDA tbl_809D,Y
C - - - - - 0x008089 02:8079: 95 08     STA ram_0008,X
C - - - - - 0x00808B 02:807B: C8        INY
C - - - - - 0x00808C 02:807C: E8        INX
C - - - - - 0x00808D 02:807D: E0 04     CPX #$04
C - - - - - 0x00808F 02:807F: 90 F5     BCC bra_8076_loop
C - - - - - 0x008091 02:8081: A6 53     LDX ram_0053
loc_0x008093:
sub_0x008093:
C D 0 - - - 0x008093 02:8083: A5 01     LDA ram_0001
C - - - - - 0x008095 02:8085: C5 09     CMP ram_0009
C - - - - - 0x008097 02:8087: F0 03     BEQ bra_808C
C - - - - - 0x008099 02:8089: B0 07     BCS bra_8092
C - - - - - 0x00809B 02:808B: 60        RTS
bra_808C:
C - - - - - 0x00809C 02:808C: A5 00     LDA ram_0000
C - - - - - 0x00809E 02:808E: C5 08     CMP ram_0008
C - - - - - 0x0080A0 02:8090: 90 0A     BCC bra_809C_RTS
bra_8092:
C - - - - - 0x0080A2 02:8092: A5 0B     LDA ram_000B
C - - - - - 0x0080A4 02:8094: C5 01     CMP ram_0001
C - - - - - 0x0080A6 02:8096: D0 04     BNE bra_809C_RTS
C - - - - - 0x0080A8 02:8098: A5 0A     LDA ram_000A
C - - - - - 0x0080AA 02:809A: C5 00     CMP ram_0000
bra_809C_RTS:
C - - - - - 0x0080AC 02:809C: 60        RTS



tbl_809D:
; 00 
- D 0 - - - 0x0080AD 02:809D: 18        .byte $18   ; 
- D 0 - - - 0x0080AE 02:809E: 06        .byte $06   ; 
- D 0 - - - 0x0080AF 02:809F: 50        .byte $50   ; 
- D 0 - - - 0x0080B0 02:80A0: 07        .byte $07   ; 
; 01 
- D 0 - - - 0x0080B1 02:80A1: C8        .byte $C8   ; 
- D 0 - - - 0x0080B2 02:80A2: 02        .byte $02   ; 
- D 0 - - - 0x0080B3 02:80A3: F0        .byte $F0   ; 
- D 0 - - - 0x0080B4 02:80A4: 02        .byte $02   ; 
; 02 
- D 0 - - - 0x0080B5 02:80A5: D5        .byte $D5   ; 
- D 0 - - - 0x0080B6 02:80A6: 01        .byte $01   ; 
- D 0 - - - 0x0080B7 02:80A7: FF        .byte $FF   ; 
- D 0 - - - 0x0080B8 02:80A8: 01        .byte $01   ; 
; 03 
- D 0 - - - 0x0080B9 02:80A9: 48        .byte $48   ; 
- D 0 - - - 0x0080BA 02:80AA: 01        .byte $01   ; 
- D 0 - - - 0x0080BB 02:80AB: 68        .byte $68   ; 
- D 0 - - - 0x0080BC 02:80AC: 01        .byte $01   ; 
; 04 
- D 0 - - - 0x0080BD 02:80AD: D8        .byte $D8   ; 
- D 0 - - - 0x0080BE 02:80AE: 00        .byte $00   ; 
- D 0 - - - 0x0080BF 02:80AF: E8        .byte $E8   ; 
- D 0 - - - 0x0080C0 02:80B0: 00        .byte $00   ; 



bra_80B1:   ; A = 00
C - - - - - 0x0080C1 02:80B1: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x0080C4 02:80B4: F0 25     BEQ bra_80DB    ; jmp



sub_0x0080C6:
C - - - - - 0x0080C6 02:80B6: 20 48 A0  JSR sub_0x00A058
C - - - - - 0x0080C9 02:80B9: A2 00     LDX #$00
bra_80BB_loop:
C - - - - - 0x0080CB 02:80BB: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0080CE 02:80BE: F0 F1     BEQ bra_80B1
C - - - - - 0x0080D0 02:80C0: 86 53     STX ram_0053
C - - - - - 0x0080D2 02:80C2: A5 60     LDA ram_0060
C - - - - - 0x0080D4 02:80C4: C9 04     CMP #$04
C - - - - - 0x0080D6 02:80C6: 90 08     BCC bra_80D0
C - - - - - 0x0080D8 02:80C8: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0080DB 02:80CB: 29 FE     AND #$FE
C - - - - - 0x0080DD 02:80CD: 9D 00 06  STA ram_0600_obj,X
bra_80D0:
C - - - - - 0x0080E0 02:80D0: 20 FF 80  JSR sub_80FF
C - - - - - 0x0080E3 02:80D3: 20 F9 80  JSR sub_80F9
C - - - - - 0x0080E6 02:80D6: 20 72 97  JSR sub_9772
C - - - - - 0x0080E9 02:80D9: A6 53     LDX ram_0053
bra_80DB:
C - - - - - 0x0080EB 02:80DB: E8        INX
C - - - - - 0x0080EC 02:80DC: E0 02     CPX #$02
C - - - - - 0x0080EE 02:80DE: 90 DB     BCC bra_80BB_loop
C - - - - - 0x0080F0 02:80E0: A9 00     LDA #$00
C - - - - - 0x0080F2 02:80E2: 85 9A     STA ram_009A
C - - - - - 0x0080F4 02:80E4: A2 02     LDX #$02
bra_80E6_loop:
C - - - - - 0x0080F6 02:80E6: 20 83 91  JSR sub_9183_0782x_AND_7F
C - - - - - 0x0080F9 02:80E9: F0 08     BEQ bra_80F3
C - - - - - 0x0080FB 02:80EB: 86 53     STX ram_0053
C - - - - - 0x0080FD 02:80ED: 20 61 81  JSR sub_8161
C - - - - - 0x008100 02:80F0: 20 58 81  JSR sub_8158
bra_80F3:
C - - - - - 0x008103 02:80F3: E8        INX
C - - - - - 0x008104 02:80F4: E0 0A     CPX #$0A
C - - - - - 0x008106 02:80F6: 90 EE     BCC bra_80E6_loop
bra_80F8_RTS:
C - - - - - 0x008108 02:80F8: 60        RTS



sub_80F9:
C - - - - - 0x008109 02:80F9: 20 63 A0  JSR sub_0x00A073
C - - - - - 0x00810C 02:80FC: 4C 38 A5  JMP loc_0x00A548



sub_80FF:
C - - - - - 0x00810F 02:80FF: A5 75     LDA ram_stage
C - - - - - 0x008111 02:8101: C9 01     CMP #$01
C - - - - - 0x008113 02:8103: D0 F3     BNE bra_80F8_RTS
C - - - - - 0x008115 02:8105: A5 95     LDA ram_0095
C - - - - - 0x008117 02:8107: D0 EF     BNE bra_80F8_RTS
C - - - - - 0x008119 02:8109: 20 B9 8F  JSR sub_8FB9
C - - - - - 0x00811C 02:810C: 90 EA     BCC bra_80F8_RTS
C - - - - - 0x00811E 02:810E: A4 9E     LDY ram_009E
C - - - - - 0x008120 02:8110: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x008123 02:8113: C9 A3     CMP #$A3
C - - - - - 0x008125 02:8115: D0 E1     BNE bra_80F8_RTS
- - - - - - 0x008127 02:8117: 20 F4 94  JSR sub_94F4
- - - - - - 0x00812A 02:811A: C9 08     CMP #$08
- - - - - - 0x00812C 02:811C: B0 DA     BCS bra_80F8_RTS
- - - - - - 0x00812E 02:811E: 20 FE 94  JSR sub_94FE
- - - - - - 0x008131 02:8121: C9 20     CMP #$20
- - - - - - 0x008133 02:8123: B0 D3     BCS bra_80F8_RTS
- - - - - - 0x008135 02:8125: A9 06     LDA #$06
- - - - - - 0x008137 02:8127: 9D 20 07  STA ram_0720_obj,X
- - - - - - 0x00813A 02:812A: BD 00 06  LDA ram_0600_obj,X
- - - - - - 0x00813D 02:812D: 09 01     ORA #$01
- - - - - - 0x00813F 02:812F: 4C CA 90  JMP loc_90CA



sub_0x008142:
ofs_006_0x008142_17:
C - - - - - 0x008142 02:8132: A9 0D     LDA #con_prg_pair + $0D
C - - - - - 0x008144 02:8134: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x008147 02:8137: A2 0A     LDX #$0A
bra_8139_loop:
C - - - - - 0x008149 02:8139: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00814C 02:813C: F0 10     BEQ bra_814E
C - - - - - 0x00814E 02:813E: 86 53     STX ram_0053
C - - - - - 0x008150 02:8140: 20 05 B3  JSR sub_0x003315
C - - - - - 0x008153 02:8143: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x008156 02:8146: F0 06     BEQ bra_814E
C - - - - - 0x008158 02:8148: 20 B0 B7  JSR sub_0x0037C0
C - - - - - 0x00815B 02:814B: 20 58 81  JSR sub_8158
bra_814E:
C - - - - - 0x00815E 02:814E: E8        INX
C - - - - - 0x00815F 02:814F: E0 16     CPX #$16
C - - - - - 0x008161 02:8151: 90 E6     BCC bra_8139_loop
sub_8153:
C - - - - - 0x008163 02:8153: A9 02     LDA #con_prg_pair + $02
C - - - - - 0x008165 02:8155: 4C 4C F3  JMP loc_0x01F35C_prg_bankswitch



sub_8158:
C - - - - - 0x008168 02:8158: 20 72 97  JSR sub_9772
C - - - - - 0x00816B 02:815B: 20 1A 80  JSR sub_801A
C - - - - - 0x00816E 02:815E: A6 53     LDX ram_0053
C - - - - - 0x008170 02:8160: 60        RTS



sub_8161:
C - - - - - 0x008171 02:8161: 20 83 91  JSR sub_9183_0782x_AND_7F
C - - - - - 0x008174 02:8164: A8        TAY
C - - - - - 0x008175 02:8165: B9 C8 81  LDA tbl_81C9 - $01,Y
C - - - - - 0x008178 02:8168: F0 28     BEQ bra_8192
C - - - - - 0x00817A 02:816A: 30 42     BMI bra_81AE
; 01-7F
C - - - - - 0x00817C 02:816C: 0A        ASL
C - - - - - 0x00817D 02:816D: A8        TAY
C - - - - - 0x00817E 02:816E: B9 04 82  LDA tbl_8204,Y
C - - - - - 0x008181 02:8171: 85 18     STA ram_0018
C - - - - - 0x008183 02:8173: B9 05 82  LDA tbl_8204 + $01,Y
C - - - - - 0x008186 02:8176: 85 19     STA ram_0019
C - - - - - 0x008188 02:8178: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00818B 02:817B: D0 05     BNE bra_8182
C - - - - - 0x00818D 02:817D: A9 03     LDA #$03
C - - - - - 0x00818F 02:817F: 9D 82 06  STA ram_0682_obj,X
bra_8182:
C - - - - - 0x008192 02:8182: 98        TYA
C - - - - - 0x008193 02:8183: 4A        LSR
C - - - - - 0x008194 02:8184: A8        TAY
C - - - - - 0x008195 02:8185: B9 51 82  LDA tbl_8252 - $01,Y
C - - - - - 0x008198 02:8188: C5 36     CMP ram_prg_banks_pair
C - - - - - 0x00819A 02:818A: F0 03     BEQ bra_818F
C - - - - - 0x00819C 02:818C: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
bra_818F:
C - - - - - 0x00819F 02:818F: 6C 18 00  JMP (ram_0018)
bra_8192:
C - - - - - 0x0081A2 02:8192: 20 53 81  JSR sub_8153
C - - - - - 0x0081A5 02:8195: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0081A8 02:8198: F0 28     BEQ bra_81C2
C - - - - - 0x0081AA 02:819A: 20 26 B6  JSR sub_0x00B636
C - - - - - 0x0081AD 02:819D: 20 78 82  JSR sub_8278
C - - - - - 0x0081B0 02:81A0: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0081B3 02:81A3: F0 23     BEQ bra_81C8_RTS
C - - - - - 0x0081B5 02:81A5: 20 F2 B3  JSR sub_0x00B402
C - - - - - 0x0081B8 02:81A8: 20 10 8E  JSR sub_8E10
C - - - - - 0x0081BB 02:81AB: 4C C0 B6  JMP loc_0x00B6D0
bra_81AE:
C - - - - - 0x0081BE 02:81AE: 20 53 81  JSR sub_8153
C - - - - - 0x0081C1 02:81B1: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0081C4 02:81B4: F0 0C     BEQ bra_81C2
loc_0x0081C6:
C D 0 - - - 0x0081C6 02:81B6: 20 78 82  JSR sub_8278
C - - - - - 0x0081C9 02:81B9: 4C 10 8E  JMP loc_8E10



loc_0x0081CC:
C D 0 - - - 0x0081CC 02:81BC: 20 92 82  JSR sub_8292
C - - - - - 0x0081CF 02:81BF: 4C 10 8E  JMP loc_8E10



bra_81C2:
C - - - - - 0x0081D2 02:81C2: 4C 78 82  JMP loc_8278


; bzk garbage
- - - - - - 0x0081D5 02:81C5: 4C 92 82  JMP loc_8292



bra_81C8_RTS:
ofs_016_81C8_02_RTS:
ofs_016_81C8_14_RTS:
ofs_016_81C8_23_RTS:
ofs_016_81C8_25_RTS:
C - - - - - 0x0081D8 02:81C8: 60        RTS



tbl_81C9:
- D 0 - - - 0x0081D9 02:81C9: 01        .byte $01   ; 01 
- D 0 - - - 0x0081DA 02:81CA: 00        .byte $00   ; 02 
- D 0 - - - 0x0081DB 02:81CB: 00        .byte $00   ; 03 
- D 0 - - - 0x0081DC 02:81CC: 00        .byte $00   ; 04 
- D 0 - - - 0x0081DD 02:81CD: 00        .byte $00   ; 05 
- D 0 - - - 0x0081DE 02:81CE: 00        .byte $00   ; 06 
- D 0 - - - 0x0081DF 02:81CF: 00        .byte $00   ; 07 
- - - - - - 0x0081E0 02:81D0: FF        .byte $FF   ; 08 
- D 0 - - - 0x0081E1 02:81D1: FF        .byte $FF   ; 09 
- D 0 - - - 0x0081E2 02:81D2: 24        .byte $24   ; 0A 
- D 0 - - - 0x0081E3 02:81D3: 03        .byte $03   ; 0B 
- D 0 - - - 0x0081E4 02:81D4: 03        .byte $03   ; 0C 
- - - - - - 0x0081E5 02:81D5: FF        .byte $FF   ; 0D 
- - - - - - 0x0081E6 02:81D6: FF        .byte $FF   ; 0E 
- D 0 - - - 0x0081E7 02:81D7: 1F        .byte $1F   ; 0F 
- D 0 - - - 0x0081E8 02:81D8: 20        .byte $20   ; 10 
- D 0 - - - 0x0081E9 02:81D9: 21        .byte $21   ; 11 
- D 0 - - - 0x0081EA 02:81DA: 22        .byte $22   ; 12 
- D 0 - - - 0x0081EB 02:81DB: 04        .byte $04   ; 13 
- D 0 - - - 0x0081EC 02:81DC: 05        .byte $05   ; 14 
- D 0 - - - 0x0081ED 02:81DD: 18        .byte $18   ; 15 
- - - - - - 0x0081EE 02:81DE: FF        .byte $FF   ; 16 
- D 0 - - - 0x0081EF 02:81DF: 06        .byte $06   ; 17 
- D 0 - - - 0x0081F0 02:81E0: 07        .byte $07   ; 18 
- D 0 - - - 0x0081F1 02:81E1: 08        .byte $08   ; 19 
- D 0 - - - 0x0081F2 02:81E2: 09        .byte $09   ; 1A 
- D 0 - - - 0x0081F3 02:81E3: 19        .byte $19   ; 1B 
- D 0 - - - 0x0081F4 02:81E4: FF        .byte $FF   ; 1C 
- - - - - - 0x0081F5 02:81E5: FF        .byte $FF   ; 1D 
- D 0 - - - 0x0081F6 02:81E6: 0A        .byte $0A   ; 1E 
- D 0 - - - 0x0081F7 02:81E7: 1C        .byte $1C   ; 1F 
- D 0 - - - 0x0081F8 02:81E8: 0B        .byte $0B   ; 20 
- D 0 - - - 0x0081F9 02:81E9: 1D        .byte $1D   ; 21 
- D 0 - - - 0x0081FA 02:81EA: 0C        .byte $0C   ; 22 
- D 0 - - - 0x0081FB 02:81EB: 0D        .byte $0D   ; 23 
- D 0 - - - 0x0081FC 02:81EC: 0E        .byte $0E   ; 24 
- D 0 - - - 0x0081FD 02:81ED: FF        .byte $FF   ; 25 
- D 0 - - - 0x0081FE 02:81EE: 0F        .byte $0F   ; 26 
- D 0 - - - 0x0081FF 02:81EF: 10        .byte $10   ; 27 
- D 0 - - - 0x008200 02:81F0: 11        .byte $11   ; 28 
- - - - - - 0x008201 02:81F1: FF        .byte $FF   ; 29 
- D 0 - - - 0x008202 02:81F2: 10        .byte $10   ; 2A 
- D 0 - - - 0x008203 02:81F3: 1A        .byte $1A   ; 2B 
- D 0 - - - 0x008204 02:81F4: FF        .byte $FF   ; 2C 
- D 0 - - - 0x008205 02:81F5: 12        .byte $12   ; 2D 
- - - - - - 0x008206 02:81F6: FF        .byte $FF   ; 2E 
- - - - - - 0x008207 02:81F7: FF        .byte $FF   ; 2F 
- D 0 - - - 0x008208 02:81F8: 13        .byte $13   ; 30 
- D 0 - - - 0x008209 02:81F9: FF        .byte $FF   ; 31 
- D 0 - - - 0x00820A 02:81FA: 18        .byte $18   ; 32 
- D 0 - - - 0x00820B 02:81FB: 1E        .byte $1E   ; 33 
- D 0 - - - 0x00820C 02:81FC: 26        .byte $26   ; 34 
- - - - - - 0x00820D 02:81FD: 14        .byte $14   ; 35 
- - - - - - 0x00820E 02:81FE: 15        .byte $15   ; 36 
- D 0 - - - 0x00820F 02:81FF: 1B        .byte $1B   ; 37 
- D 0 - - - 0x008210 02:8200: FF        .byte $FF   ; 38 
- D 0 - - - 0x008211 02:8201: 16        .byte $16   ; 39 
- D 0 - - - 0x008212 02:8202: 17        .byte $17   ; 3A 
- D 0 - - - 0x008213 02:8203: 23        .byte $23   ; 3B 



tbl_8204:
- - - - - - 0x008214 02:8204: FF FF     .word $FFFF ; 00
- D 0 - - - 0x008216 02:8206: E1 B5     .word ofs_016_0x00F5F1_01
- - - - - - 0x008218 02:8208: C8 81     .word ofs_016_81C8_02_RTS
- D 0 - - - 0x00821A 02:820A: 45 BA     .word ofs_016_0x00FA55_03
- D 0 - - - 0x00821C 02:820C: B2 B3     .word ofs_016_0x00F3C2_04
- D 0 - - - 0x00821E 02:820E: 27 B9     .word ofs_016_0x00B937_05
- D 0 - - - 0x008220 02:8210: 9A B8     .word ofs_016_0x00F8AA_06
- D 0 - - - 0x008222 02:8212: 9F BB     .word ofs_016_0x00FBAF_07
- D 0 - - - 0x008224 02:8214: F1 B9     .word ofs_016_0x00BA01_08
- D 0 - - - 0x008226 02:8216: 3F B8     .word ofs_016_0x00B84F_09
- D 0 - - - 0x008228 02:8218: 23 BC     .word ofs_016_0x00FC33_0A
- D 0 - - - 0x00822A 02:821A: CE B1     .word ofs_016_0x00D1DE_0B
- D 0 - - - 0x00822C 02:821C: 7D BD     .word ofs_016_0x005D8D_0C
- D 0 - - - 0x00822E 02:821E: D3 AF     .word ofs_016_0x00CFE3_0D
- D 0 - - - 0x008230 02:8220: 85 BF     .word ofs_016_0x005F95_0E
- D 0 - - - 0x008232 02:8222: 49 8E     .word ofs_016_8E49_0F
- D 0 - - - 0x008234 02:8224: 21 AF     .word ofs_016_0x00CF31_10
- D 0 - - - 0x008236 02:8226: 55 A0     .word ofs_016_0x00E065_11
- D 0 - - - 0x008238 02:8228: 75 BE     .word ofs_016_0x005E85_12
- D 0 - - - 0x00823A 02:822A: 97 BB     .word ofs_016_0x005BA7_13
- - - - - - 0x00823C 02:822C: C8 81     .word ofs_016_81C8_14_RTS
- - - - - - 0x00823E 02:822E: CA BC     .word ofs_016_0x00FCDA_15
- D 0 - - - 0x008240 02:8230: D2 B9     .word ofs_016_0x00F9E2_16
- D 0 - - - 0x008242 02:8232: 3C BB     .word ofs_016_0x00FB4C_17
- D 0 - - - 0x008244 02:8234: 9F B3     .word ofs_016_0x00F3AF_18
- D 0 - - - 0x008246 02:8236: 52 8E     .word ofs_016_8E52_19
- D 0 - - - 0x008248 02:8238: 38 B2     .word ofs_016_0x00D248_1A
- D 0 - - - 0x00824A 02:823A: EA 8D     .word ofs_016_8DEA_1B
- D 0 - - - 0x00824C 02:823C: D2 B6     .word ofs_016_0x00F6E2_1C
- D 0 - - - 0x00824E 02:823E: 1D BF     .word ofs_016_0x005F2D_1D
- D 0 - - - 0x008250 02:8240: 01 A0     .word ofs_016_0x00E011_1E
- D 0 - - - 0x008252 02:8242: 1B A0     .word ofs_016_0x00E02B_1F
- D 0 - - - 0x008254 02:8244: 2D A0     .word ofs_016_0x00E03D_20
- D 0 - - - 0x008256 02:8246: 36 A0     .word ofs_016_0x00E046_21
- D 0 - - - 0x008258 02:8248: 3F A0     .word ofs_016_0x00E04F_22
- D 0 - - - 0x00825A 02:824A: C8 81     .word ofs_016_81C8_23_RTS
- D 0 - - - 0x00825C 02:824C: 24 A0     .word ofs_016_0x00E034_24
- - - - - - 0x00825E 02:824E: C8 81     .word ofs_016_81C8_25_RTS
- D 0 - - - 0x008260 02:8250: 1A B7     .word ofs_016_0x00F72A_26



tbl_8252:
- D 0 - - - 0x008262 02:8252: 06        .byte con_prg_pair + $06   ; 01 
- - - - - - 0x008263 02:8253: 06        .byte con_prg_pair + $06   ; 02 
- D 0 - - - 0x008264 02:8254: 06        .byte con_prg_pair + $06   ; 03 
- D 0 - - - 0x008265 02:8255: 06        .byte con_prg_pair + $06   ; 04 
- D 0 - - - 0x008266 02:8256: 02        .byte con_prg_pair + $02   ; 05 
- D 0 - - - 0x008267 02:8257: 06        .byte con_prg_pair + $06   ; 06 
- D 0 - - - 0x008268 02:8258: 06        .byte con_prg_pair + $06   ; 07 
- D 0 - - - 0x008269 02:8259: 02        .byte con_prg_pair + $02   ; 08 
- D 0 - - - 0x00826A 02:825A: 02        .byte con_prg_pair + $02   ; 09 
- D 0 - - - 0x00826B 02:825B: 06        .byte con_prg_pair + $06   ; 0A 
- D 0 - - - 0x00826C 02:825C: 05        .byte con_prg_pair + $05   ; 0B 
- D 0 - - - 0x00826D 02:825D: 0E        .byte con_prg_pair + $0E   ; 0C 
- D 0 - - - 0x00826E 02:825E: 05        .byte con_prg_pair + $05   ; 0D 
- D 0 - - - 0x00826F 02:825F: 0E        .byte con_prg_pair + $0E   ; 0E 
- D 0 - - - 0x008270 02:8260: 02        .byte con_prg_pair + $02   ; 0F 
- D 0 - - - 0x008271 02:8261: 05        .byte con_prg_pair + $05   ; 10 
- D 0 - - - 0x008272 02:8262: 06        .byte con_prg_pair + $06   ; 11 
- D 0 - - - 0x008273 02:8263: 0E        .byte con_prg_pair + $0E   ; 12 
- D 0 - - - 0x008274 02:8264: 0E        .byte con_prg_pair + $0E   ; 13 
- - - - - - 0x008275 02:8265: 06        .byte con_prg_pair + $06   ; 14 
- - - - - - 0x008276 02:8266: 06        .byte con_prg_pair + $06   ; 15 
- D 0 - - - 0x008277 02:8267: 06        .byte con_prg_pair + $06   ; 16 
- D 0 - - - 0x008278 02:8268: 06        .byte con_prg_pair + $06   ; 17 
- D 0 - - - 0x008279 02:8269: 06        .byte con_prg_pair + $06   ; 18 
- D 0 - - - 0x00827A 02:826A: 0E        .byte con_prg_pair + $0E   ; 19 
- D 0 - - - 0x00827B 02:826B: 05        .byte con_prg_pair + $05   ; 1A 
- D 0 - - - 0x00827C 02:826C: 02        .byte con_prg_pair + $02   ; 1B 
- D 0 - - - 0x00827D 02:826D: 06        .byte con_prg_pair + $06   ; 1C 
- D 0 - - - 0x00827E 02:826E: 0E        .byte con_prg_pair + $0E   ; 1D 
- D 0 - - - 0x00827F 02:826F: 06        .byte con_prg_pair + $06   ; 1E 
- D 0 - - - 0x008280 02:8270: 06        .byte con_prg_pair + $06   ; 1F 
- D 0 - - - 0x008281 02:8271: 06        .byte con_prg_pair + $06   ; 20 
- D 0 - - - 0x008282 02:8272: 06        .byte con_prg_pair + $06   ; 21 
- D 0 - - - 0x008283 02:8273: 06        .byte con_prg_pair + $06   ; 22 
- D 0 - - - 0x008284 02:8274: 02        .byte con_prg_pair + $02   ; 23 
- D 0 - - - 0x008285 02:8275: 06        .byte con_prg_pair + $06   ; 24 
- - - - - - 0x008286 02:8276: 06        .byte con_prg_pair + $06   ; 25 
- D 0 - - - 0x008287 02:8277: 06        .byte con_prg_pair + $06   ; 26 



sub_8278:
loc_8278:
bra_8278_loop:
C D 0 - - - 0x008288 02:8278: A5 36     LDA ram_prg_banks_pair
C - - - - - 0x00828A 02:827A: C9 02     CMP #con_prg_pair + $02
C - - - - - 0x00828C 02:827C: F0 03     BEQ bra_8281
C - - - - - 0x00828E 02:827E: 20 53 81  JSR sub_8153
bra_8281:
C - - - - - 0x008291 02:8281: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x008294 02:8284: F0 3F     BEQ bra_82C5_RTS
C - - - - - 0x008296 02:8286: 0A        ASL
C - - - - - 0x008297 02:8287: A8        TAY
C - - - - - 0x008298 02:8288: B9 11 BC  LDA tbl_0x00BC23 - $02,Y
C - - - - - 0x00829B 02:828B: 85 00     STA ram_0000
C - - - - - 0x00829D 02:828D: B9 12 BC  LDA tbl_0x00BC23 - $01,Y
C - - - - - 0x0082A0 02:8290: 85 01     STA ram_0001
sub_8292:
loc_8292:
C - - - - - 0x0082A2 02:8292: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0082A5 02:8295: 0A        ASL
C - - - - - 0x0082A6 02:8296: 90 11     BCC bra_82A9
C - - - - - 0x0082A8 02:8298: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x0082AB 02:829B: 29 7F     AND #$7F
C - - - - - 0x0082AD 02:829D: C9 42     CMP #$42
C - - - - - 0x0082AF 02:829F: F0 04     BEQ bra_82A5
C - - - - - 0x0082B1 02:82A1: C9 08     CMP #$08
C - - - - - 0x0082B3 02:82A3: D0 29     BNE bra_82CE
bra_82A5:
C - - - - - 0x0082B5 02:82A5: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0082B8 02:82A8: 0A        ASL
bra_82A9:
C - - - - - 0x0082B9 02:82A9: A8        TAY
C - - - - - 0x0082BA 02:82AA: B1 00     LDA (ram_0000),Y
C - - - - - 0x0082BC 02:82AC: C9 FE     CMP #$FE
C - - - - - 0x0082BE 02:82AE: F0 15     BEQ bra_82C5_RTS
C - - - - - 0x0082C0 02:82B0: C9 FF     CMP #$FF
C - - - - - 0x0082C2 02:82B2: D0 12     BNE bra_82C6
- - - - - - 0x0082C4 02:82B4: A9 01     LDA #$01
- - - - - - 0x0082C6 02:82B6: 9D 78 07  STA ram_0778_unk,X
- - - - - - 0x0082C9 02:82B9: A0 02     LDY #$02
- - - - - - 0x0082CB 02:82BB: B1 00     LDA (ram_0000),Y
- - - - - - 0x0082CD 02:82BD: 20 C6 82  JSR sub_82C6
- - - - - - 0x0082D0 02:82C0: BD 82 06  LDA ram_0682_obj,X
- - - - - - 0x0082D3 02:82C3: 30 B3     BMI bra_8278_loop
bra_82C5_RTS:
C - - - - - 0x0082D5 02:82C5: 60        RTS
bra_82C6:
sub_82C6:
C - - - - - 0x0082D6 02:82C6: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x0082D9 02:82C9: C8        INY
C - - - - - 0x0082DA 02:82CA: B1 00     LDA (ram_0000),Y
C - - - - - 0x0082DC 02:82CC: 85 0A     STA ram_000A
bra_82CE:
C - - - - - 0x0082DE 02:82CE: 20 E7 82  JSR sub_82E7_handlers
C - - - - - 0x0082E1 02:82D1: B0 07     BCS bra_82DA
C - - - - - 0x0082E3 02:82D3: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0082E6 02:82D6: 09 80     ORA #$80
C - - - - - 0x0082E8 02:82D8: D0 08     BNE bra_82E2    ; jmp
bra_82DA:
C - - - - - 0x0082EA 02:82DA: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0082ED 02:82DD: 18        CLC
C - - - - - 0x0082EE 02:82DE: 69 01     ADC #$01
C - - - - - 0x0082F0 02:82E0: 29 7F     AND #$7F
bra_82E2:
C - - - - - 0x0082F2 02:82E2: 9D 78 07  STA ram_0778_unk,X
ofs_017_82E5_00:
C - - - - - 0x0082F5 02:82E5: 18        CLC
C - - - - - 0x0082F6 02:82E6: 60        RTS



sub_82E7_handlers:
C - - - - - 0x0082F7 02:82E7: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x0082FA 02:82EA: 0A        ASL
C - - - - - 0x0082FB 02:82EB: A8        TAY
C - - - - - 0x0082FC 02:82EC: B9 F9 82  LDA tbl_82F9,Y
C - - - - - 0x0082FF 02:82EF: 85 02     STA ram_0002
C - - - - - 0x008301 02:82F1: B9 FA 82  LDA tbl_82F9 + $01,Y
C - - - - - 0x008304 02:82F4: 85 03     STA ram_0003
C - - - - - 0x008306 02:82F6: 6C 02 00  JMP (ram_0002)



tbl_82F9:
- - - - - - 0x008309 02:82F9: E5 82     .word ofs_017_82E5_00
- D 0 - - - 0x00830B 02:82FB: BF 83     .word ofs_017_83BF_01
- D 0 - - - 0x00830D 02:82FD: 17 9A     .word ofs_017_9A17_02
- D 0 - - - 0x00830F 02:82FF: EB 83     .word ofs_017_83EB_03
- D 0 - - - 0x008311 02:8301: 68 84     .word ofs_017_8468_04
- D 0 - - - 0x008313 02:8303: 3C 85     .word ofs_017_853C_05
- D 0 - - - 0x008315 02:8305: 61 85     .word ofs_017_8561_06
- D 0 - - - 0x008317 02:8307: 7E 85     .word ofs_017_857E_07
- D 0 - - - 0x008319 02:8309: D0 85     .word ofs_017_85D0_08
- D 0 - - - 0x00831B 02:830B: AB 86     .word ofs_017_86AB_09
- D 0 - - - 0x00831D 02:830D: E1 86     .word ofs_017_86E1_0A
- D 0 - - - 0x00831F 02:830F: EA 86     .word ofs_017_86EA_0B_play_music
- D 0 - - - 0x008321 02:8311: F2 86     .word ofs_017_86F2_0C
- D 0 - - - 0x008323 02:8313: 46 87     .word ofs_017_8746_0D
- D 0 - - - 0x008325 02:8315: 91 85     .word ofs_017_8591_0E
- D 0 - - - 0x008327 02:8317: BD 87     .word ofs_017_87BD_0F
- D 0 - - - 0x008329 02:8319: B9 AE     .word ofs_017_0x00EEC9_10
- D 0 - - - 0x00832B 02:831B: F4 87     .word ofs_017_87F4_11
- D 0 - - - 0x00832D 02:831D: 0C 88     .word ofs_017_880C_12
- D 0 - - - 0x00832F 02:831F: 11 88     .word ofs_017_8811_13
- D 0 - - - 0x008331 02:8321: 5B 88     .word ofs_017_885B_14
- D 0 - - - 0x008333 02:8323: 6D 88     .word ofs_017_886D_15
- D 0 - - - 0x008335 02:8325: EB A2     .word ofs_017_0x00E2FB_16
- D 0 - - - 0x008337 02:8327: 2D A3     .word ofs_017_0x00E33D_17
- D 0 - - - 0x008339 02:8329: 5F A3     .word ofs_017_0x00E36F_18
- D 0 - - - 0x00833B 02:832B: F5 A3     .word ofs_017_0x00E405_19
- D 0 - - - 0x00833D 02:832D: 37 A4     .word ofs_017_0x00E447_1A
- D 0 - - - 0x00833F 02:832F: 5A A4     .word ofs_017_0x00E46A_1B
- D 0 - - - 0x008341 02:8331: 76 A4     .word ofs_017_0x00E486_1C
- D 0 - - - 0x008343 02:8333: 46 84     .word ofs_017_8446_1D
- D 0 - - - 0x008345 02:8335: 8B A4     .word ofs_017_0x00E49B_1E
- D 0 - - - 0x008347 02:8337: A1 A4     .word ofs_017_0x00E4B1_1F
- D 0 - - - 0x008349 02:8339: 9A 89     .word ofs_017_899A_20
- D 0 - - - 0x00834B 02:833B: C2 A4     .word ofs_017_0x00E4D2_21
- D 0 - - - 0x00834D 02:833D: 9F 89     .word ofs_017_899F_22
- D 0 - - - 0x00834F 02:833F: D7 A4     .word ofs_017_0x00E4E7_23
- D 0 - - - 0x008351 02:8341: F8 A4     .word ofs_017_0x00E508_24
- D 0 - - - 0x008353 02:8343: 55 A5     .word ofs_017_0x00E565_25
- D 0 - - - 0x008355 02:8345: 75 A5     .word ofs_017_0x00E585_26
- D 0 - - - 0x008357 02:8347: 8C A5     .word ofs_017_0x00E59C_27
- D 0 - - - 0x008359 02:8349: B5 A5     .word ofs_017_0x00E5C5_28
- D 0 - - - 0x00835B 02:834B: E1 A5     .word ofs_017_0x00E5F1_29
- D 0 - - - 0x00835D 02:834D: AC 88     .word ofs_017_88AC_2A
- D 0 - - - 0x00835F 02:834F: E7 88     .word ofs_017_88E7_2B
- D 0 - - - 0x008361 02:8351: 57 89     .word ofs_017_8957_2C
- D 0 - - - 0x008363 02:8353: 08 A6     .word ofs_017_0x00E618_2D
- D 0 - - - 0x008365 02:8355: 22 A6     .word ofs_017_0x00E632_2E
- D 0 - - - 0x008367 02:8357: 60 A6     .word ofs_017_0x00E670_2F
- D 0 - - - 0x008369 02:8359: 02 8C     .word ofs_017_8C02_30
- D 0 - - - 0x00836B 02:835B: 25 8C     .word ofs_017_8C25_31
- D 0 - - - 0x00836D 02:835D: 67 8C     .word ofs_017_8C67_32
- D 0 - - - 0x00836F 02:835F: F5 8C     .word ofs_017_8CF5_33
- D 0 - - - 0x008371 02:8361: 86 A6     .word ofs_017_0x00E696_34
- D 0 - - - 0x008373 02:8363: A6 A6     .word ofs_017_0x00E6B6_35
- - - - - - 0x008375 02:8365: EA A6     .word ofs_017_0x00E6FA_36
- D 0 - - - 0x008377 02:8367: FC A6     .word ofs_017_0x00E70C_37
- D 0 - - - 0x008379 02:8369: 0C A7     .word ofs_017_0x00E71C_38
- - - - - - 0x00837B 02:836B: 21 A7     .word ofs_017_0x00E731_39
- D 0 - - - 0x00837D 02:836D: 2E A7     .word ofs_017_0x00E73E_3A
- D 0 - - - 0x00837F 02:836F: 38 A7     .word ofs_017_0x00E748_3B
- - - - - - 0x008381 02:8371: 45 A7     .word ofs_017_0x00E755_3C
- D 0 - - - 0x008383 02:8373: 45 A7     .word ofs_017_0x00E755_3D
- D 0 - - - 0x008385 02:8375: E1 A2     .word ofs_017_0x00E2F1_3E
- D 0 - - - 0x008387 02:8377: 55 9E     .word ofs_017_9E55_3F
- D 0 - - - 0x008389 02:8379: CA A7     .word ofs_017_0x00E7DA_40
- D 0 - - - 0x00838B 02:837B: 16 8D     .word ofs_017_8D16_41
- D 0 - - - 0x00838D 02:837D: 49 8A     .word ofs_017_8A49_42
- D 0 - - - 0x00838F 02:837F: F5 A7     .word ofs_017_0x00E805_43
- D 0 - - - 0x008391 02:8381: 0C A8     .word ofs_017_0x00E81C_44
- D 0 - - - 0x008393 02:8383: 1B A8     .word ofs_017_0x00E82B_45
- D 0 - - - 0x008395 02:8385: 29 A8     .word ofs_017_0x00E839_46
- D 0 - - - 0x008397 02:8387: 4F A8     .word ofs_017_0x00E85F_47
- D 0 - - - 0x008399 02:8389: DA A8     .word ofs_017_0x00E8EA_48
- D 0 - - - 0x00839B 02:838B: 86 A9     .word ofs_017_0x00E996_49
- D 0 - - - 0x00839D 02:838D: FB AA     .word ofs_017_0x00EB0B_4A
- D 0 - - - 0x00839F 02:838F: 09 AB     .word ofs_017_0x00EB19_4B
- D 0 - - - 0x0083A1 02:8391: B9 AA     .word ofs_017_0x00EAC9_4C
- D 0 - - - 0x0083A3 02:8393: 31 AB     .word ofs_017_0x00EB41_4D
- D 0 - - - 0x0083A5 02:8395: 50 AB     .word ofs_017_0x00EB60_4E
- D 0 - - - 0x0083A7 02:8397: 9A 89     .word ofs_017_899A_4F
- D 0 - - - 0x0083A9 02:8399: 56 AB     .word ofs_017_0x00EB66_50
- - - - - - 0x0083AB 02:839B: 23 AD     .word ofs_017_0x00ED33_51
- D 0 - - - 0x0083AD 02:839D: 23 AD     .word ofs_017_0x00ED33_52
- D 0 - - - 0x0083AF 02:839F: AE AB     .word ofs_017_0x00EBBE_53
- D 0 - - - 0x0083B1 02:83A1: F1 AC     .word ofs_017_0x00ED01_54
- - - - - - 0x0083B3 02:83A3: 23 AD     .word ofs_017_0x00ED33_55
- D 0 - - - 0x0083B5 02:83A5: A0 AE     .word ofs_017_0x00EEB0_56
- D 0 - - - 0x0083B7 02:83A7: E3 8F     .word ofs_017_8FE3_57
- D 0 - - - 0x0083B9 02:83A9: 2D AE     .word ofs_017_0x00EE3D_58
- D 0 - - - 0x0083BB 02:83AB: B9 AD     .word ofs_017_0x00EDC9_59
- D 0 - - - 0x0083BD 02:83AD: C7 AD     .word ofs_017_0x00EDD7_5A
- D 0 - - - 0x0083BF 02:83AF: 20 8D     .word ofs_017_8D20_5B
- D 0 - - - 0x0083C1 02:83B1: D5 AD     .word ofs_017_0x00EDE5_5C
- D 0 - - - 0x0083C3 02:83B3: 05 AE     .word ofs_017_0x00EE15_5D
- - - - - - 0x0083C5 02:83B5: 39 AE     .word ofs_017_0x00EE49_5E
- - - - - - 0x0083C7 02:83B7: 13 A9     .word ofs_017_0x00E923_5F
- - - - - - 0x0083C9 02:83B9: 67 AE     .word ofs_017_0x00EE77_60
- D 0 - - - 0x0083CB 02:83BB: 3C A5     .word ofs_017_0x00E54C_61
- D 0 - - - 0x0083CD 02:83BD: 72 AE     .word ofs_017_0x00EE82_62



ofs_017_83BF_01:
C - - J - - 0x0083CF 02:83BF: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0083D2 02:83C2: 30 1E     BMI bra_83E2
C - - - - - 0x0083D4 02:83C4: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0083D7 02:83C7: 30 11     BMI bra_83DA
C - - - - - 0x0083D9 02:83C9: 20 78 91  JSR sub_9178_stage_AND_01
C - - - - - 0x0083DC 02:83CC: D0 0C     BNE bra_83DA
C - - - - - 0x0083DE 02:83CE: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x0083E1 02:83D1: 29 08     AND #$08
C - - - - - 0x0083E3 02:83D3: D0 05     BNE bra_83DA
C - - - - - 0x0083E5 02:83D5: A9 05     LDA #$05
C - - - - - 0x0083E7 02:83D7: 20 BB 90  JSR sub_90BB
bra_83DA:
C - - - - - 0x0083EA 02:83DA: 20 F2 95  JSR sub_95F2
C - - - - - 0x0083ED 02:83DD: A5 0A     LDA ram_000A
C - - - - - 0x0083EF 02:83DF: 9D 9C 06  STA ram_069C_obj,X
bra_83E2:
loc_83E2:
C D 0 - - - 0x0083F2 02:83E2: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x0083F5 02:83E5: F0 02     BEQ bra_83E9
C - - - - - 0x0083F7 02:83E7: 18        CLC
C - - - - - 0x0083F8 02:83E8: 60        RTS
bra_83E9:
C - - - - - 0x0083F9 02:83E9: 38        SEC
C - - - - - 0x0083FA 02:83EA: 60        RTS



ofs_017_83EB_03:
C - - J - - 0x0083FB 02:83EB: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0083FE 02:83EE: 30 28     BMI bra_8418
C - - - - - 0x008400 02:83F0: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x008403 02:83F3: 30 0C     BMI bra_8401
C - - - - - 0x008405 02:83F5: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x008408 02:83F8: 29 08     AND #$08
C - - - - - 0x00840A 02:83FA: D0 05     BNE bra_8401
C - - - - - 0x00840C 02:83FC: A9 01     LDA #$01
C - - - - - 0x00840E 02:83FE: 20 BB 90  JSR sub_90BB
bra_8401:
C - - - - - 0x008411 02:8401: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x008414 02:8404: B9 20 84  LDA tbl_8420,Y
C - - - - - 0x008417 02:8407: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00841A 02:840A: B9 21 84  LDA tbl_8420 + $01,Y
C - - - - - 0x00841D 02:840D: F0 09     BEQ bra_8418
C - - - - - 0x00841F 02:840F: 20 7D 91  JSR sub_917D_06B2x_AND_F0
C - - - - - 0x008422 02:8412: 19 21 84  ORA tbl_8420 + $01,Y
C - - - - - 0x008425 02:8415: 9D B2 06  STA ram_06B2_obj,X
bra_8418:
C - - - - - 0x008428 02:8418: 4C E2 83  JMP loc_83E2



sub_841B_000A_ASL_TAY:
sub_0x00842B_000A_ASL_TAY:
C - - - - - 0x00842B 02:841B: A5 0A     LDA ram_000A
C - - - - - 0x00842D 02:841D: 0A        ASL
C - - - - - 0x00842E 02:841E: A8        TAY
C - - - - - 0x00842F 02:841F: 60        RTS



tbl_8420:
- D 0 - - - 0x008430 02:8420: 18        .byte $18, $00   ; 00 
- D 0 - - - 0x008432 02:8422: 10        .byte $10, $03   ; 01 
- D 0 - - - 0x008434 02:8424: 23        .byte $23, $02   ; 02 
- D 0 - - - 0x008436 02:8426: 28        .byte $28, $00   ; 03 
- D 0 - - - 0x008438 02:8428: 10        .byte $10, $02   ; 04 
- D 0 - - - 0x00843A 02:842A: 1C        .byte $1C, $04   ; 05 
- - - - - - 0x00843C 02:842C: 08        .byte $08, $02   ; 06 
- - - - - - 0x00843E 02:842E: 08        .byte $08, $04   ; 07 
- D 0 - - - 0x008440 02:8430: 18        .byte $18, $02   ; 08 
- D 0 - - - 0x008442 02:8432: 18        .byte $18, $03   ; 09 
- - - - - - 0x008444 02:8434: FF        .byte $FF, $03   ; 0A 
- D 0 - - - 0x008446 02:8436: FF        .byte $FF, $02   ; 0B 
- D 0 - - - 0x008448 02:8438: 50        .byte $50, $02   ; 0C 
- - - - - - 0x00844A 02:843A: 40        .byte $40, $04   ; 0D 
- D 0 - - - 0x00844C 02:843C: 30        .byte $30, $03   ; 0E 
- - - - - - 0x00844E 02:843E: 18        .byte $18, $04   ; 0F 
- D 0 - - - 0x008450 02:8440: 10        .byte $10, $04   ; 10 
- - - - - - 0x008452 02:8442: 20        .byte $20, $03   ; 11 
- D 0 - - - 0x008454 02:8444: 10        .byte $10, $09   ; 12 



ofs_017_8446_1D:
C - - J - - 0x008456 02:8446: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008459 02:8449: 30 31     BMI bra_847C
C - - - - - 0x00845B 02:844B: A0 00     LDY #$00
C - - - - - 0x00845D 02:844D: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x008460 02:8450: 29 F0     AND #$F0
C - - - - - 0x008462 02:8452: C9 10     CMP #$10
C - - - - - 0x008464 02:8454: D0 02     BNE bra_8458
C - - - - - 0x008466 02:8456: A0 08     LDY #$08
bra_8458:
C - - - - - 0x008468 02:8458: 98        TYA
C - - - - - 0x008469 02:8459: 4C 79 84  JMP loc_8479



sub_0x00846C:
C - - - - - 0x00846C 02:845C: A5 0B     LDA ram_000B
C - - - - - 0x00846E 02:845E: 0A        ASL
C - - - - - 0x00846F 02:845F: 0A        ASL
C - - - - - 0x008470 02:8460: 0A        ASL
C - - - - - 0x008471 02:8461: 0A        ASL
C - - - - - 0x008472 02:8462: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x008475 02:8465: 4C 94 84  JMP loc_8494



ofs_017_8468_04:
C - - J - - 0x008478 02:8468: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00847B 02:846B: 30 0F     BMI bra_847C
C - - - - - 0x00847D 02:846D: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x008480 02:8470: B9 35 85  LDA tbl_8534 + $01,Y
C - - - - - 0x008483 02:8473: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x008486 02:8476: B9 34 85  LDA tbl_8534,Y
loc_8479:
C D 0 - - - 0x008489 02:8479: 9D 9C 06  STA ram_069C_obj,X
bra_847C:
C - - - - - 0x00848C 02:847C: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00848F 02:847F: F0 13     BEQ bra_8494
C - - - - - 0x008491 02:8481: DE 9C 06  DEC ram_069C_obj,X
sub_0x008494:
C - - - - - 0x008494 02:8484: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x008497 02:8487: F0 09     BEQ bra_8492
C - - - - - 0x008499 02:8489: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00849C 02:848C: C9 FE     CMP #$FE
C - - - - - 0x00849E 02:848E: F0 02     BEQ bra_8492
C - - - - - 0x0084A0 02:8490: 18        CLC
C - - - - - 0x0084A1 02:8491: 60        RTS
bra_8492:
C - - - - - 0x0084A2 02:8492: 38        SEC
C - - - - - 0x0084A3 02:8493: 60        RTS
bra_8494:
loc_8494:
sub_8494:
sub_0x0084A4:
ofs_006_0x0084A4_1D:
C D 0 - - - 0x0084A4 02:8494: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x0084A7 02:8497: 29 0F     AND #$0F
C - - - - - 0x0084A9 02:8499: 20 72 93  JSR sub_9372
C - - - - - 0x0084AC 02:849C: 90 03     BCC bra_84A1
bra_849E:
C - - - - - 0x0084AE 02:849E: 4C 23 85  JMP loc_8523
bra_84A1:
sub_84A1:
sub_0x0084B1:
C - - - - - 0x0084B1 02:84A1: 20 D6 90  JSR sub_90D6_0600x_AND_F0
C - - - - - 0x0084B4 02:84A4: D0 F8     BNE bra_849E
C - - - - - 0x0084B6 02:84A6: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0084B9 02:84A9: 29 F2     AND #$F2
C - - - - - 0x0084BB 02:84AB: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x0084BE 02:84AE: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0084C1 02:84B1: 29 FC     AND #$FC
C - - - - - 0x0084C3 02:84B3: 99 34 06  STA ram_obj_animation_hi,Y
C - - - - - 0x0084C6 02:84B6: 20 47 91  JSR sub_9147_copy_speed
C - - - - - 0x0084C9 02:84B9: 20 54 91  JSR sub_9154_copy_position
C - - - - - 0x0084CC 02:84BC: 20 61 91  JSR sub_9161
C - - - - - 0x0084CF 02:84BF: 99 F4 06  STA ram_06F4_obj,Y
C - - - - - 0x0084D2 02:84C2: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x0084D5 02:84C5: 29 02     AND #$02
C - - - - - 0x0084D7 02:84C7: D0 3D     BNE bra_8506
C - - - - - 0x0084D9 02:84C9: E0 02     CPX #$02
C - - - - - 0x0084DB 02:84CB: B0 02     BCS bra_84CF
C - - - - - 0x0084DD 02:84CD: F6 83     INC ram_bullet_counter,X
bra_84CF:
C - - - - - 0x0084DF 02:84CF: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0084E2 02:84D2: C9 3B     CMP #$3B
C - - - - - 0x0084E4 02:84D4: D0 0F     BNE bra_84E5
C - - - - - 0x0084E6 02:84D6: AD 8A 07  LDA ram_0782_unk + $08
C - - - - - 0x0084E9 02:84D9: D0 05     BNE bra_84E0
C - - - - - 0x0084EB 02:84DB: 20 BA 93  JSR sub_93BA
C - - - - - 0x0084EE 02:84DE: 90 05     BCC bra_84E5
bra_84E0:
C - - - - - 0x0084F0 02:84E0: A9 01     LDA #$01
C - - - - - 0x0084F2 02:84E2: 85 1E     STA ram_001E
C - - - - - 0x0084F4 02:84E4: 60        RTS
bra_84E5:
C - - - - - 0x0084F5 02:84E5: 8A        TXA
C - - - - - 0x0084F6 02:84E6: 99 F4 06  STA ram_06F4_obj,Y
C - - - - - 0x0084F9 02:84E9: 20 FB 84  JSR sub_84FB
C - - - - - 0x0084FC 02:84EC: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x0084FF 02:84EF: C9 0A     CMP #$0A
C - - - - - 0x008501 02:84F1: D0 26     BNE bra_8519
C - - - - - 0x008503 02:84F3: A9 00     LDA #$00
C - - - - - 0x008505 02:84F5: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x008508 02:84F8: 4C 27 85  JMP loc_8527



sub_84FB:
C - - - - - 0x00850B 02:84FB: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x00850E 02:84FE: 4A        LSR
C - - - - - 0x00850F 02:84FF: 4A        LSR
C - - - - - 0x008510 02:8500: 4A        LSR
C - - - - - 0x008511 02:8501: 4A        LSR
C - - - - - 0x008512 02:8502: 18        CLC
C - - - - - 0x008513 02:8503: 69 01     ADC #$01
C - - - - - 0x008515 02:8505: 60        RTS



bra_8506:
C - - - - - 0x008516 02:8506: A9 03     LDA #$03
C - - - - - 0x008518 02:8508: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x00851B 02:850B: 20 FB 84  JSR sub_84FB
C - - - - - 0x00851E 02:850E: 19 82 07  ORA ram_0782_unk,Y
C - - - - - 0x008521 02:8511: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x008524 02:8514: A9 00     LDA #$00
C - - - - - 0x008526 02:8516: 99 78 07  STA ram_0778_unk,Y
bra_8519:
C - - - - - 0x008529 02:8519: 20 7D 91  JSR sub_917D_06B2x_AND_F0
C - - - - - 0x00852C 02:851C: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00852F 02:851F: A9 00     LDA #$00
C - - - - - 0x008531 02:8521: F0 02     BEQ bra_8525    ; jmp



loc_8523:
C D 0 - - - 0x008533 02:8523: A9 01     LDA #$01
bra_8525:
C - - - - - 0x008535 02:8525: 85 1E     STA ram_001E
loc_8527:
C D 0 - - - 0x008537 02:8527: 84 1F     STY ram_001F
C - - - - - 0x008539 02:8529: E0 02     CPX #$02
C - - - - - 0x00853B 02:852B: 90 05     BCC bra_8532
C - - - - - 0x00853D 02:852D: A9 FF     LDA #$FF
C - - - - - 0x00853F 02:852F: 9D 9C 06  STA ram_069C_obj,X
bra_8532:
C - - - - - 0x008542 02:8532: 18        CLC
C - - - - - 0x008543 02:8533: 60        RTS



tbl_8534:
- - - - - - 0x008544 02:8534: 04        .byte $04, $D1   ; 00 
- - - - - - 0x008546 02:8536: 04        .byte $04, $91   ; 01 
- - - - - - 0x008548 02:8538: 04        .byte $04, $11   ; 02 
- D 0 - - - 0x00854A 02:853A: 00        .byte $00, $D1   ; 03 



ofs_017_853C_05:
C - - J - - 0x00854C 02:853C: A4 0A     LDY ram_000A
sub_853E:
sub_0x00854E:
C - - - - - 0x00854E 02:853E: B9 50 85  LDA tbl_8550,Y
C - - - - - 0x008551 02:8541: 85 02     STA ram_0002
C - - - - - 0x008553 02:8543: B9 51 85  LDA tbl_8550 + $01,Y
C - - - - - 0x008556 02:8546: 85 01     STA ram_0001
C - - - - - 0x008558 02:8548: 20 3E 94  JSR sub_943E
loc_854B:
C D 0 - - - 0x00855B 02:854B: A6 53     LDX ram_0053
C - - - - - 0x00855D 02:854D: 38        SEC
C - - - - - 0x00855E 02:854E: 60        RTS


; bzk garbage
- - - - - - 0x00855F 02:854F: 00        .byte $00   ; 



tbl_8550:
; 00 
- - - - - - 0x008560 02:8550: 00        .byte $00   ; 
- - - - - - 0x008561 02:8551: 00        .byte $00   ; 
- - - - - - 0x008562 02:8552: 00        .byte $00   ; placeholder?
; 03 
- D 0 - - - 0x008563 02:8553: 00        .byte $00   ; 
- D 0 - - - 0x008564 02:8554: 01        .byte $01   ; 
- - - - - - 0x008565 02:8555: 00        .byte $00   ; placeholder?
; 06 
- D 0 - - - 0x008566 02:8556: 00        .byte $00   ; 
- D 0 - - - 0x008567 02:8557: 05        .byte $05   ; 
- - - - - - 0x008568 02:8558: 00        .byte $00   ; placeholder?
; 09 
- D 0 - - - 0x008569 02:8559: 00        .byte $00   ; 
- D 0 - - - 0x00856A 02:855A: 10        .byte $10   ; 
- - - - - - 0x00856B 02:855B: 00        .byte $00   ; placeholder?
; 0C 
- D 0 - - - 0x00856C 02:855C: 00        .byte $00   ; 
- D 0 - - - 0x00856D 02:855D: 50        .byte $50   ; 
- - - - - - 0x00856E 02:855E: 00        .byte $00   ; placeholder?
; 0F 
- D 0 - - - 0x00856F 02:855F: 10        .byte $10   ; 
- D 0 - - - 0x008570 02:8560: 00        .byte $00   ; 



ofs_017_8561_06:
C - - J - - 0x008571 02:8561: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008574 02:8564: 30 11     BMI bra_8577
C - - - - - 0x008576 02:8566: 20 E9 95  JSR sub_95E9_06B2x_EOR_80
C - - - - - 0x008579 02:8569: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x00857C 02:856C: B9 7A 85  LDA tbl_857A,Y
C - - - - - 0x00857F 02:856F: F0 06     BEQ bra_8577
C - - - - - 0x008581 02:8571: B9 7B 85  LDA tbl_857A + $01,Y
C - - - - - 0x008584 02:8574: 9D 9C 06  STA ram_069C_obj,X
bra_8577:
C - - - - - 0x008587 02:8577: 4C E2 83  JMP loc_83E2



tbl_857A:
- D 0 - - - 0x00858A 02:857A: 01        .byte $01, $01   ; 00 
- - - - - - 0x00858C 02:857C: 00        .byte $00, $00   ; 01 



ofs_017_857E_07:
C - - J - - 0x00858E 02:857E: A5 0A     LDA ram_000A
C - - - - - 0x008590 02:8580: 30 03     BMI bra_8585
C - - - - - 0x008592 02:8582: 4C 10 8C  JMP loc_8C10
bra_8585:
C - - - - - 0x008595 02:8585: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x008598 02:8588: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00859B 02:858B: A8        TAY
C - - - - - 0x00859C 02:858C: B9 C8 85  LDA tbl_85C8,Y
C - - - - - 0x00859F 02:858F: 85 0A     STA ram_000A
ofs_017_8591_0E:
C - - J - - 0x0085A1 02:8591: A9 01     LDA #$01
C - - - - - 0x0085A3 02:8593: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x0085A6 02:8596: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x0085A9 02:8599: B9 AE 85  LDA tbl_85AE,Y
C - - - - - 0x0085AC 02:859C: 85 00     STA ram_0000
C - - - - - 0x0085AE 02:859E: B9 AF 85  LDA tbl_85AE + $01,Y
C - - - - - 0x0085B1 02:85A1: 85 01     STA ram_0001
C - - - - - 0x0085B3 02:85A3: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x0085B6 02:85A6: 29 7F     AND #$7F
C - - - - - 0x0085B8 02:85A8: A8        TAY
C - - - - - 0x0085B9 02:85A9: B1 00     LDA (ram_0000),Y
C - - - - - 0x0085BB 02:85AB: 4C 10 8C  JMP loc_8C10



tbl_85AE:
- D 0 - - - 0x0085BE 02:85AE: B6 85     .word off_85B6_00
- D 0 - - - 0x0085C0 02:85B0: B9 85     .word off_85B9_01
- D 0 - - - 0x0085C2 02:85B2: BC 85     .word off_85BC_02
- D 0 - - - 0x0085C4 02:85B4: C2 85     .word off_85C2_03



off_85B6_00:
- D 0 - I - 0x0085C6 02:85B6: 01        .byte $01   ; 
- D 0 - I - 0x0085C7 02:85B7: 01        .byte $01   ; 
- D 0 - I - 0x0085C8 02:85B8: 0F        .byte $0F   ; 

off_85B9_01:
- D 0 - I - 0x0085C9 02:85B9: 01        .byte $01   ; 
- D 0 - I - 0x0085CA 02:85BA: 0E        .byte $0E   ; 
- - - - - - 0x0085CB 02:85BB: 1C        .byte $1C   ; 

off_85BC_02:
- D 0 - I - 0x0085CC 02:85BC: 01        .byte $01   ; 
- D 0 - I - 0x0085CD 02:85BD: 0B        .byte $0B   ; 
- D 0 - I - 0x0085CE 02:85BE: 18        .byte $18   ; 
- D 0 - I - 0x0085CF 02:85BF: 29        .byte $29   ; 
- D 0 - I - 0x0085D0 02:85C0: 3A        .byte $3A   ; 
- D 0 - I - 0x0085D1 02:85C1: 47        .byte $47   ; 

off_85C2_03:
- D 0 - I - 0x0085D2 02:85C2: 01        .byte $01   ; 
- D 0 - I - 0x0085D3 02:85C3: 11        .byte $11   ; 
- D 0 - I - 0x0085D4 02:85C4: 24        .byte $24   ; 
- - - - - - 0x0085D5 02:85C5: 38        .byte $38   ; 
- D 0 - I - 0x0085D6 02:85C6: 4C        .byte $4C   ; 
- D 0 - I - 0x0085D7 02:85C7: 54        .byte $54   ; 



tbl_85C8:
- - - - - - 0x0085D8 02:85C8: 00        .byte $00   ; 00 
- - - - - - 0x0085D9 02:85C9: 00        .byte $00   ; 01 
- D 0 - - - 0x0085DA 02:85CA: 00        .byte $00   ; 02 
- D 0 - - - 0x0085DB 02:85CB: 01        .byte $01   ; 03 
- - - - - - 0x0085DC 02:85CC: 00        .byte $00   ; 04 
- D 0 - - - 0x0085DD 02:85CD: 02        .byte $02   ; 05 
- D 0 - - - 0x0085DE 02:85CE: 03        .byte $03   ; 06 
- - - - - - 0x0085DF 02:85CF: 02        .byte $02   ; 07 



ofs_017_85D0_08:
C - - J - - 0x0085E0 02:85D0: A5 0A     LDA ram_000A
C - - - - - 0x0085E2 02:85D2: 85 3C     STA ram_003C
C - - - - - 0x0085E4 02:85D4: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0085E7 02:85D7: 30 5F     BMI bra_8638
C - - - - - 0x0085E9 02:85D9: A5 0A     LDA ram_000A
C - - - - - 0x0085EB 02:85DB: C9 01     CMP #$01
C - - - - - 0x0085ED 02:85DD: D0 0A     BNE bra_85E9
C - - - - - 0x0085EF 02:85DF: A9 13     LDA #$13
C - - - - - 0x0085F1 02:85E1: 20 BB 90  JSR sub_90BB
C - - - - - 0x0085F4 02:85E4: A9 06     LDA #$06
C - - - - - 0x0085F6 02:85E6: 9D B4 07  STA ram_07B4_unk,X
bra_85E9:
C - - - - - 0x0085F9 02:85E9: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x0085FC 02:85EC: 84 3A     STY ram_003A
C - - - - - 0x0085FE 02:85EE: A9 40     LDA #$40
C - - - - - 0x008600 02:85F0: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x008603 02:85F3: B9 9F 86  LDA tbl_869F,Y
C - - - - - 0x008606 02:85F6: 29 0F     AND #$0F
C - - - - - 0x008608 02:85F8: 85 0B     STA ram_000B
C - - - - - 0x00860A 02:85FA: 20 7D 91  JSR sub_917D_06B2x_AND_F0
C - - - - - 0x00860D 02:85FD: 05 0B     ORA ram_000B
C - - - - - 0x00860F 02:85FF: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008612 02:8602: B9 9F 86  LDA tbl_869F,Y
C - - - - - 0x008615 02:8605: 10 07     BPL bra_860E
- - - - - - 0x008617 02:8607: 20 72 91  JSR sub_9172_06B2x_AND_0F
- - - - - - 0x00861A 02:860A: 09 C0     ORA #$C0
- - - - - - 0x00861C 02:860C: D0 22     BNE bra_8630    ; jmp
bra_860E:
C - - - - - 0x00861E 02:860E: 84 0B     STY ram_000B
C - - - - - 0x008620 02:8610: B9 A0 86  LDA tbl_869F + $01,Y
C - - - - - 0x008623 02:8613: 6A        ROR
C - - - - - 0x008624 02:8614: 6A        ROR
C - - - - - 0x008625 02:8615: 29 30     AND #$30
C - - - - - 0x008627 02:8617: 85 0A     STA ram_000A
C - - - - - 0x008629 02:8619: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x00862C 02:861C: 38        SEC
C - - - - - 0x00862D 02:861D: E9 04     SBC #$04
C - - - - - 0x00862F 02:861F: C9 08     CMP #$08
C - - - - - 0x008631 02:8621: B0 07     BCS bra_862A
C - - - - - 0x008633 02:8623: A5 0A     LDA ram_000A
C - - - - - 0x008635 02:8625: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
C - - - - - 0x008638 02:8628: 85 0A     STA ram_000A
bra_862A:
C - - - - - 0x00863A 02:862A: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00863D 02:862D: 18        CLC
C - - - - - 0x00863E 02:862E: 65 0A     ADC ram_000A
bra_8630:
C - - - - - 0x008640 02:8630: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008643 02:8633: A4 3A     LDY ram_003A
C - - - - - 0x008645 02:8635: 4C 5E 86  JMP loc_865E
bra_8638:
C - - - - - 0x008648 02:8638: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x00864B 02:863B: A5 3C     LDA ram_003C
C - - - - - 0x00864D 02:863D: C9 01     CMP #$01
C - - - - - 0x00864F 02:863F: D0 1D     BNE bra_865E
C - - - - - 0x008651 02:8641: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x008654 02:8644: F0 18     BEQ bra_865E
C - - - - - 0x008656 02:8646: 20 F2 95  JSR sub_95F2
C - - - - - 0x008659 02:8649: DE B4 07  DEC ram_07B4_unk,X
C - - - - - 0x00865C 02:864C: D0 10     BNE bra_865E
C - - - - - 0x00865E 02:864E: A9 03     LDA #$03
C - - - - - 0x008660 02:8650: 20 BB 90  JSR sub_90BB
C - - - - - 0x008663 02:8653: B9 9F 86  LDA tbl_869F,Y
C - - - - - 0x008666 02:8656: 29 0F     AND #$0F
C - - - - - 0x008668 02:8658: 1D B2 06  ORA ram_06B2_obj,X
C - - - - - 0x00866B 02:865B: 9D B2 06  STA ram_06B2_obj,X
bra_865E:
loc_865E:
C D 0 - - - 0x00866E 02:865E: B9 A0 86  LDA tbl_869F + $01,Y
C - - - - - 0x008671 02:8661: 09 C0     ORA #$C0
C - - - - - 0x008673 02:8663: 85 0C     STA ram_000C
C - - - - - 0x008675 02:8665: A9 01     LDA #$01
C - - - - - 0x008677 02:8667: 85 0B     STA ram_000B
C - - - - - 0x008679 02:8669: 20 70 8A  JSR sub_8A70
C - - - - - 0x00867C 02:866C: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00867F 02:866F: 29 40     AND #$40
C - - - - - 0x008681 02:8671: D0 2A     BNE bra_869D
C - - - - - 0x008683 02:8673: A0 0E     LDY #$0E
C - - - - - 0x008685 02:8675: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x008688 02:8678: 29 08     AND #$08
C - - - - - 0x00868A 02:867A: D0 02     BNE bra_867E
C - - - - - 0x00868C 02:867C: A0 02     LDY #$02
bra_867E:
C - - - - - 0x00868E 02:867E: 98        TYA
C - - - - - 0x00868F 02:867F: 20 BB 90  JSR sub_90BB
C - - - - - 0x008692 02:8682: A4 3C     LDY ram_003C
C - - - - - 0x008694 02:8684: B9 A5 86  LDA tbl_86A5,Y
C - - - - - 0x008697 02:8687: F0 14     BEQ bra_869D
C - - - - - 0x008699 02:8689: A0 08     LDY #$08
C - - - - - 0x00869B 02:868B: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00869E 02:868E: C9 12     CMP #$12
C - - - - - 0x0086A0 02:8690: D0 02     BNE bra_8694
C - - - - - 0x0086A2 02:8692: A0 18     LDY #$18
bra_8694:
C - - - - - 0x0086A4 02:8694: A9 00     LDA #$00
C - - - - - 0x0086A6 02:8696: 20 BC 8F  JSR sub_8FBC
C - - - - - 0x0086A9 02:8699: B0 02     BCS bra_869D
C - - - - - 0x0086AB 02:869B: 38        SEC
C - - - - - 0x0086AC 02:869C: 60        RTS
bra_869D:
C - - - - - 0x0086AD 02:869D: 18        CLC
C - - - - - 0x0086AE 02:869E: 60        RTS



tbl_869F:
- D 0 - - - 0x0086AF 02:869F: 04        .byte $04, $33   ; 00 
- D 0 - - - 0x0086B1 02:86A1: 02        .byte $02, $89   ; 01 
- D 0 - - - 0x0086B3 02:86A3: 03        .byte $03, $09   ; 02 



tbl_86A5:
- D 0 - - - 0x0086B5 02:86A5: 00        .byte $00   ; 00 
- D 0 - - - 0x0086B6 02:86A6: 00        .byte $00   ; 01 
- D 0 - - - 0x0086B7 02:86A7: 01        .byte $01   ; 02 
- - - - - - 0x0086B8 02:86A8: 01        .byte $01   ; 03 
- - - - - - 0x0086B9 02:86A9: 01        .byte $01   ; 04 
- - - - - - 0x0086BA 02:86AA: 00        .byte $00   ; 05 



ofs_017_86AB_09:
C - - J - - 0x0086BB 02:86AB: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0086BE 02:86AE: 30 0F     BMI bra_86BF
C - - - - - 0x0086C0 02:86B0: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x0086C3 02:86B3: B9 DF 86  LDA tbl_86DF,Y
C - - - - - 0x0086C6 02:86B6: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0086C9 02:86B9: B9 E0 86  LDA tbl_86E0,Y
C - - - - - 0x0086CC 02:86BC: 9D B2 06  STA ram_06B2_obj,X
bra_86BF:
C - - - - - 0x0086CF 02:86BF: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0086D2 02:86C2: 29 03     AND #$03
C - - - - - 0x0086D4 02:86C4: D0 16     BNE bra_86DC
C - - - - - 0x0086D6 02:86C6: 20 72 91  JSR sub_9172_06B2x_AND_0F
C - - - - - 0x0086D9 02:86C9: 18        CLC
C - - - - - 0x0086DA 02:86CA: 69 01     ADC #$01
C - - - - - 0x0086DC 02:86CC: C9 09     CMP #$09
C - - - - - 0x0086DE 02:86CE: B0 02     BCS bra_86D2
C - - - - - 0x0086E0 02:86D0: A9 08     LDA #$08
bra_86D2:
C - - - - - 0x0086E2 02:86D2: 85 0A     STA ram_000A
C - - - - - 0x0086E4 02:86D4: 20 7D 91  JSR sub_917D_06B2x_AND_F0
C - - - - - 0x0086E7 02:86D7: 05 0A     ORA ram_000A
C - - - - - 0x0086E9 02:86D9: 9D B2 06  STA ram_06B2_obj,X
bra_86DC:
C - - - - - 0x0086EC 02:86DC: 4C E2 83  JMP loc_83E2


; bzk optimize
tbl_86DF:
- D 0 - - - 0x0086EF 02:86DF: F3        .byte $F3   ; 
tbl_86E0:
- D 0 - - - 0x0086F0 02:86E0: 41        .byte $41   ; 



ofs_017_86E1_0A:
C - - J - - 0x0086F1 02:86E1: 20 4C 9A  JSR sub_9A4C
C - - - - - 0x0086F4 02:86E4: A5 0A     LDA ram_000A
sub_0x0086F6:
C - - - - - 0x0086F6 02:86E6: 85 7B     STA ram_chr_bank + $04
C - - - - - 0x0086F8 02:86E8: 38        SEC
C - - - - - 0x0086F9 02:86E9: 60        RTS



loc_86EA_play_music:
ofs_017_86EA_0B_play_music:
C D 0 - - - 0x0086FA 02:86EA: A5 0A     LDA ram_000A
C - - - - - 0x0086FC 02:86EC: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x0086FF 02:86EF: 4C 4B 85  JMP loc_854B



ofs_017_86F2_0C:
C - - J - - 0x008702 02:86F2: A5 0A     LDA ram_000A
C - - - - - 0x008704 02:86F4: 0A        ASL
C - - - - - 0x008705 02:86F5: 0A        ASL
C - - - - - 0x008706 02:86F6: A8        TAY
C - - - - - 0x008707 02:86F7: B9 0E 87  LDA tbl_870E,Y
C - - - - - 0x00870A 02:86FA: 85 0D     STA ram_000D
C - - - - - 0x00870C 02:86FC: B9 0F 87  LDA tbl_870E + $01,Y
C - - - - - 0x00870F 02:86FF: 85 0E     STA ram_000E
C - - - - - 0x008711 02:8701: B9 10 87  LDA tbl_870E + $02,Y
C - - - - - 0x008714 02:8704: 85 0B     STA ram_000B
C - - - - - 0x008716 02:8706: 8A        TXA
C - - - - - 0x008717 02:8707: A8        TAY
C - - - - - 0x008718 02:8708: A5 0B     LDA ram_000B
C - - - - - 0x00871A 02:870A: 91 0D     STA (ram_000D),Y
C - - - - - 0x00871C 02:870C: 38        SEC
C - - - - - 0x00871D 02:870D: 60        RTS



tbl_870E:
; 00 
- D 0 - - - 0x00871E 02:870E: 20 07     .word ram_0720_obj
- D 0 - - - 0x008720 02:8710: 06        .byte $06   ; 
- - - - - - 0x008721 02:8711: 00        .byte $00   ; placeholder
; 01 
- D 0 - - - 0x008722 02:8712: 20 07     .word ram_0720_obj
- D 0 - - - 0x008724 02:8714: 00        .byte $00   ; 
- - - - - - 0x008725 02:8715: 00        .byte $00   ; placeholder
; 02 
- D 0 - - - 0x008726 02:8716: 0A 07     .word ram_070A_obj
- D 0 - - - 0x008728 02:8718: 00        .byte $00   ; 
- - - - - - 0x008729 02:8719: 00        .byte $00   ; placeholder
; 03 
- D 0 - - - 0x00872A 02:871A: 1A 06     .word ram_obj_animation_lo
- D 0 - - - 0x00872C 02:871C: 00        .byte $00   ; 
- - - - - - 0x00872D 02:871D: 00        .byte $00   ; placeholder
; 04 
- - - - - - 0x00872E 02:871E: AA 07     .word ram_07AA_unk
- - - - - - 0x008730 02:8720: 01        .byte $01   ; 
- - - - - - 0x008731 02:8721: 00        .byte $00   ; placeholder
; 05 
- D 0 - - - 0x008732 02:8722: 00 06     .word ram_0600_obj
- D 0 - - - 0x008734 02:8724: 08        .byte $08   ; 
- - - - - - 0x008735 02:8725: 00        .byte $00   ; placeholder
; 06 
- D 0 - - - 0x008736 02:8726: 20 07     .word ram_0720_obj
- D 0 - - - 0x008738 02:8728: 1B        .byte $1B   ; 
- - - - - - 0x008739 02:8729: 00        .byte $00   ; placeholder
; 07 
- D 0 - - - 0x00873A 02:872A: AA 07     .word ram_07AA_unk
- D 0 - - - 0x00873C 02:872C: 00        .byte $00   ; 
- - - - - - 0x00873D 02:872D: 00        .byte $00   ; placeholder
; 08 
- D 0 - - - 0x00873E 02:872E: 20 07     .word ram_0720_obj
- D 0 - - - 0x008740 02:8730: 16        .byte $16   ; 
- - - - - - 0x008741 02:8731: 00        .byte $00   ; placeholder
; 09 
- D 0 - - - 0x008742 02:8732: 20 07     .word ram_0720_obj
- D 0 - - - 0x008744 02:8734: 06        .byte $06   ; 
- - - - - - 0x008745 02:8735: 00        .byte $00   ; placeholder
; 0A 
- D 0 - - - 0x008746 02:8736: 20 07     .word ram_0720_obj
- D 0 - - - 0x008748 02:8738: 03        .byte $03   ; 
- - - - - - 0x008749 02:8739: 00        .byte $00   ; placeholder
; 0B 
- D 0 - - - 0x00874A 02:873A: 20 07     .word ram_0720_obj
- D 0 - - - 0x00874C 02:873C: 07        .byte $07   ; 
- - - - - - 0x00874D 02:873D: 00        .byte $00   ; placeholder
; 0C 
- D 0 - - - 0x00874E 02:873E: 20 07     .word ram_0720_obj
- D 0 - - - 0x008750 02:8740: 08        .byte $08   ; 
- - - - - - 0x008751 02:8741: 00        .byte $00   ; placeholder
; 0D 
- D 0 - - - 0x008752 02:8742: AA 07     .word ram_07AA_unk
- D 0 - - - 0x008754 02:8744: 0C        .byte $0C   ; 
- - - - - - 0x008755 02:8745: 00        .byte $00   ; placeholder



ofs_017_8746_0D:
C - - J - - 0x008756 02:8746: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008759 02:8749: 30 0D     BMI bra_8758
C - - - - - 0x00875B 02:874B: A5 0A     LDA ram_000A
C - - - - - 0x00875D 02:874D: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x008760 02:8750: A5 0B     LDA ram_000B
C - - - - - 0x008762 02:8752: 85 06     STA ram_0006
C - - - - - 0x008764 02:8754: A5 0C     LDA ram_000C
C - - - - - 0x008766 02:8756: 85 07     STA ram_0007
bra_8758:
C - - - - - 0x008768 02:8758: 20 62 87  JSR sub_8762
C - - - - - 0x00876B 02:875B: B0 03     BCS bra_8760
C - - - - - 0x00876D 02:875D: DE 78 07  DEC ram_0778_unk,X
bra_8760:
C - - - - - 0x008770 02:8760: 38        SEC
C - - - - - 0x008771 02:8761: 60        RTS



sub_8762:
loc_8762:
C - - - - - 0x008772 02:8762: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x008775 02:8765: 0A        ASL
C - - - - - 0x008776 02:8766: 0A        ASL
C - - - - - 0x008777 02:8767: A8        TAY
C - - - - - 0x008778 02:8768: B9 AE 87  LDA tbl_87AD + $01,Y
C - - - - - 0x00877B 02:876B: 84 0C     STY ram_000C
C - - - - - 0x00877D 02:876D: F0 03     BEQ bra_8772
C - - - - - 0x00877F 02:876F: 20 10 8E  JSR sub_8E10
bra_8772:
C - - - - - 0x008782 02:8772: 20 BA 93  JSR sub_93BA
C - - - - - 0x008785 02:8775: B0 2C     BCS bra_87A3
C - - - - - 0x008787 02:8777: A4 0C     LDY ram_000C
C - - - - - 0x008789 02:8779: B9 AF 87  LDA tbl_87AD + $02,Y
C - - - - - 0x00878C 02:877C: 85 06     STA ram_0006
C - - - - - 0x00878E 02:877E: B9 B0 87  LDA tbl_87AD + $03,Y
C - - - - - 0x008791 02:8781: 85 07     STA ram_0007
C - - - - - 0x008793 02:8783: B9 AD 87  LDA tbl_87AD,Y
C - - - - - 0x008796 02:8786: 0A        ASL
C - - - - - 0x008797 02:8787: A8        TAY
C - - - - - 0x008798 02:8788: B9 A5 87  LDA tbl_87A5,Y
C - - - - - 0x00879B 02:878B: 85 02     STA ram_0002
C - - - - - 0x00879D 02:878D: B9 A6 87  LDA tbl_87A5 + $01,Y
C - - - - - 0x0087A0 02:8790: 85 03     STA ram_0003
sub_8792:
loc_0x0087A2:
sub_0x0087A2:
C D 0 - - - 0x0087A2 02:8792: A9 06     LDA #con_DA9D_06
C - - - - - 0x0087A4 02:8794: 85 1F     STA ram_001F
C - - - - - 0x0087A6 02:8796: A9 01     LDA #$01
C - - - - - 0x0087A8 02:8798: 8D 56 03  STA ram_0356
C - - - - - 0x0087AB 02:879B: A9 1C     LDA #con_F3D6_1C
C - - - - - 0x0087AD 02:879D: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0087B0 02:87A0: 4C 4B 85  JMP loc_854B
bra_87A3:
C - - - - - 0x0087B3 02:87A3: 18        CLC
C - - - - - 0x0087B4 02:87A4: 60        RTS



tbl_87A5:
- D 0 - - - 0x0087B5 02:87A5: C8 AA     .word _off025_0x016AD8_00
- D 0 - - - 0x0087B7 02:87A7: DA AA     .word _off025_0x016AEA_01
- D 0 - - - 0x0087B9 02:87A9: EC AA     .word _off025_0x016AFC_02
- D 0 - - - 0x0087BB 02:87AB: FE AA     .word _off025_0x016B0E_03



tbl_87AD:
; bzk optimize
; 00 
- D 0 - - - 0x0087BD 02:87AD: 00        .byte $00   ; index
- D 0 - - - 0x0087BE 02:87AE: 01        .byte $01   ; 
- D 0 - - - 0x0087BF 02:87AF: 9C 22     .word $229C ; 
; 01 
- D 0 - - - 0x0087C1 02:87B1: 01        .byte $01   ; index
- D 0 - - - 0x0087C2 02:87B2: 01        .byte $01   ; 
- D 0 - - - 0x0087C3 02:87B3: 9C 22     .word $229C ; 
; 02 
- D 0 - - - 0x0087C5 02:87B5: 02        .byte $02   ; index
- D 0 - - - 0x0087C6 02:87B6: 01        .byte $01   ; 
- D 0 - - - 0x0087C7 02:87B7: 9C 22     .word $229C ; 
; 03 
- D 0 - - - 0x0087C9 02:87B9: 03        .byte $03   ; index
- D 0 - - - 0x0087CA 02:87BA: 01        .byte $01   ; 
- D 0 - - - 0x0087CB 02:87BB: 9C 22     .word $229C ; 



ofs_017_87BD_0F:
C - - J - - 0x0087CD 02:87BD: 20 2E 94  JSR sub_942E
C - - - - - 0x0087D0 02:87C0: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x0087D3 02:87C3: A5 0A     LDA ram_000A
C - - - - - 0x0087D5 02:87C5: 29 0F     AND #$0F
C - - - - - 0x0087D7 02:87C7: 0A        ASL
C - - - - - 0x0087D8 02:87C8: A8        TAY
C - - - - - 0x0087D9 02:87C9: 84 0C     STY ram_000C
C - - - - - 0x0087DB 02:87CB: B9 F0 87  LDA tbl_87F0,Y
C - - - - - 0x0087DE 02:87CE: 48        PHA
C - - - - - 0x0087DF 02:87CF: B9 F1 87  LDA tbl_87F0 + $01,Y
C - - - - - 0x0087E2 02:87D2: A8        TAY
C - - - - - 0x0087E3 02:87D3: 68        PLA
C - - - - - 0x0087E4 02:87D4: 20 0D 95  JSR sub_950D
C - - - - - 0x0087E7 02:87D7: B0 15     BCS bra_87EE
C - - - - - 0x0087E9 02:87D9: A5 29     LDA ram_0029
C - - - - - 0x0087EB 02:87DB: A4 0C     LDY ram_000C
C - - - - - 0x0087ED 02:87DD: C9 80     CMP #$80
C - - - - - 0x0087EF 02:87DF: B0 0D     BCS bra_87EE
- - - - - - 0x0087F1 02:87E1: A5 0A     LDA ram_000A
- - - - - - 0x0087F3 02:87E3: 4A        LSR
- - - - - - 0x0087F4 02:87E4: 4A        LSR
- - - - - - 0x0087F5 02:87E5: 4A        LSR
- - - - - - 0x0087F6 02:87E6: 4A        LSR
- - - - - - 0x0087F7 02:87E7: 18        CLC
- - - - - - 0x0087F8 02:87E8: 7D 78 07  ADC ram_0778_unk,X
- - - - - - 0x0087FB 02:87EB: 9D 78 07  STA ram_0778_unk,X
bra_87EE:
C - - - - - 0x0087FE 02:87EE: 38        SEC
C - - - - - 0x0087FF 02:87EF: 60        RTS



tbl_87F0:
- - - - - - 0x008800 02:87F0: 58        .byte $58, $20   ; 00 
- D 0 - - - 0x008802 02:87F2: 50        .byte $50, $10   ; 01 



ofs_017_87F4_11:
C - - J - - 0x008804 02:87F4: A9 00     LDA #$00
C - - - - - 0x008806 02:87F6: 85 6D     STA ram_006D
C - - - - - 0x008808 02:87F8: 20 2E 94  JSR sub_942E
C - - - - - 0x00880B 02:87FB: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00880E 02:87FE: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x008811 02:8801: 90 04     BCC bra_8807
C - - - - - 0x008813 02:8803: A9 80     LDA #$80
C - - - - - 0x008815 02:8805: 85 6D     STA ram_006D
bra_8807:
C - - - - - 0x008817 02:8807: 20 01 92  JSR sub_9201
C - - - - - 0x00881A 02:880A: 38        SEC
C - - - - - 0x00881B 02:880B: 60        RTS



ofs_017_880C_12:
C - - J - - 0x00881C 02:880C: 20 E8 91  JSR sub_91E8
C - - - - - 0x00881F 02:880F: 38        SEC
C - - - - - 0x008820 02:8810: 60        RTS



ofs_017_8811_13:
C - - J - - 0x008821 02:8811: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x008824 02:8814: 29 40     AND #$40
C - - - - - 0x008826 02:8816: D0 28     BNE bra_8840
C - - - - - 0x008828 02:8818: 20 2E 94  JSR sub_942E
C - - - - - 0x00882B 02:881B: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00882E 02:881E: 29 80     AND #$80
C - - - - - 0x008830 02:8820: D0 15     BNE bra_8837
C - - - - - 0x008832 02:8822: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008835 02:8825: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x008838 02:8828: 90 09     BCC bra_8833
bra_882A:
C - - - - - 0x00883A 02:882A: A9 C0     LDA #$C0
bra_882C:
C - - - - - 0x00883C 02:882C: 18        CLC
C - - - - - 0x00883D 02:882D: 7D B2 06  ADC ram_06B2_obj,X
C - - - - - 0x008840 02:8830: 4C F0 8C  JMP loc_8CF0
bra_8833:
C - - - - - 0x008843 02:8833: A9 40     LDA #$40
C - - - - - 0x008845 02:8835: D0 F5     BNE bra_882C    ; jmp
bra_8837:
C - - - - - 0x008847 02:8837: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00884A 02:883A: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x00884D 02:883D: 4C 4E 88  JMP loc_884E
bra_8840:
C - - - - - 0x008850 02:8840: 20 2E 94  JSR sub_942E
C - - - - - 0x008853 02:8843: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x008856 02:8846: 30 0A     BMI bra_8852
C - - - - - 0x008858 02:8848: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00885B 02:884B: D9 4E 06  CMP ram_obj_pos_X,Y
loc_884E:
C D 0 - - - 0x00885E 02:884E: B0 E3     BCS bra_8833
C - - - - - 0x008860 02:8850: 90 D8     BCC bra_882A    ; jmp
bra_8852:
C - - - - - 0x008862 02:8852: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x008865 02:8855: DD 4E 06  CMP ram_obj_pos_X,X
C - - - - - 0x008868 02:8858: 4C 4E 88  JMP loc_884E



ofs_017_885B_14:
C - - J - - 0x00886B 02:885B: A9 05     LDA #$05
C - - - - - 0x00886D 02:885D: 20 BB 90  JSR sub_90BB
C - - - - - 0x008870 02:8860: A5 0A     LDA ram_000A
sub_0x008872:
C - - - - - 0x008872 02:8862: 85 01     STA ram_0001
C - - - - - 0x008874 02:8864: A9 00     LDA #$00
C - - - - - 0x008876 02:8866: 85 00     STA ram_0000
C - - - - - 0x008878 02:8868: 20 B2 98  JSR sub_98B2
C - - - - - 0x00887B 02:886B: 38        SEC
C - - - - - 0x00887C 02:886C: 60        RTS



ofs_017_886D_15:
C - - J - - 0x00887D 02:886D: A9 00     LDA #$00
C - - - - - 0x00887F 02:886F: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x008882 02:8872: A9 0F     LDA #$0F
C - - - - - 0x008884 02:8874: 20 BB 90  JSR sub_90BB
C - - - - - 0x008887 02:8877: 20 99 94  JSR sub_9499
C - - - - - 0x00888A 02:887A: 90 2E     BCC bra_88AA
C - - - - - 0x00888C 02:887C: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x00888F 02:887F: 29 0F     AND #$0F
C - - - - - 0x008891 02:8881: C9 0D     CMP #$0D
C - - - - - 0x008893 02:8883: F0 25     BEQ bra_88AA
C - - - - - 0x008895 02:8885: B9 B2 06  LDA ram_06B2_obj,Y
C - - - - - 0x008898 02:8888: 85 0A     STA ram_000A
C - - - - - 0x00889A 02:888A: 20 78 91  JSR sub_9178_stage_AND_01
C - - - - - 0x00889D 02:888D: D0 06     BNE bra_8895
C - - - - - 0x00889F 02:888F: A5 0A     LDA ram_000A
C - - - - - 0x0088A1 02:8891: 29 80     AND #$80
C - - - - - 0x0088A3 02:8893: 85 0A     STA ram_000A
bra_8895:
C - - - - - 0x0088A5 02:8895: A5 0A     LDA ram_000A
C - - - - - 0x0088A7 02:8897: 29 F0     AND #$F0
C - - - - - 0x0088A9 02:8899: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x0088AC 02:889C: A0 00     LDY #$00
C - - - - - 0x0088AE 02:889E: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x0088B1 02:88A1: 29 3C     AND #$3C
C - - - - - 0x0088B3 02:88A3: D0 01     BNE bra_88A6
C - - - - - 0x0088B5 02:88A5: C8        INY
bra_88A6:
C - - - - - 0x0088B6 02:88A6: 98        TYA
C - - - - - 0x0088B7 02:88A7: 9D B4 07  STA ram_07B4_unk,X
bra_88AA:
C - - - - - 0x0088BA 02:88AA: 38        SEC
C - - - - - 0x0088BB 02:88AB: 60        RTS



ofs_017_88AC_2A:
C - - J - - 0x0088BC 02:88AC: A5 0A     LDA ram_000A
C - - - - - 0x0088BE 02:88AE: 30 0B     BMI bra_88BB
C - - - - - 0x0088C0 02:88B0: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x0088C3 02:88B3: 4A        LSR
C - - - - - 0x0088C4 02:88B4: 18        CLC
C - - - - - 0x0088C5 02:88B5: 65 0A     ADC ram_000A
C - - - - - 0x0088C7 02:88B7: 85 3C     STA ram_003C
C - - - - - 0x0088C9 02:88B9: 38        SEC
C - - - - - 0x0088CA 02:88BA: 60        RTS
bra_88BB:
C - - - - - 0x0088CB 02:88BB: 29 7F     AND #$7F
C - - - - - 0x0088CD 02:88BD: 85 3C     STA ram_003C
C - - - - - 0x0088CF 02:88BF: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0088D2 02:88C2: C9 04     CMP #$04
C - - - - - 0x0088D4 02:88C4: D0 18     BNE bra_88DE
C - - - - - 0x0088D6 02:88C6: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0088D9 02:88C9: C9 11     CMP #$11
C - - - - - 0x0088DB 02:88CB: D0 08     BNE bra_88D5
C - - - - - 0x0088DD 02:88CD: A9 06     LDA #$06
C - - - - - 0x0088DF 02:88CF: 20 BB 90  JSR sub_90BB
C - - - - - 0x0088E2 02:88D2: 4C DE 88  JMP loc_88DE
bra_88D5:
C - - - - - 0x0088E5 02:88D5: C9 16     CMP #$16
C - - - - - 0x0088E7 02:88D7: D0 05     BNE bra_88DE
C - - - - - 0x0088E9 02:88D9: A9 05     LDA #$05
C - - - - - 0x0088EB 02:88DB: 20 BB 90  JSR sub_90BB
bra_88DE:
loc_88DE:
C D 0 - - - 0x0088EE 02:88DE: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x0088F1 02:88E1: 10 02     BPL bra_88E5
C - - - - - 0x0088F3 02:88E3: E6 3C     INC ram_003C
bra_88E5:
C - - - - - 0x0088F5 02:88E5: 38        SEC
C - - - - - 0x0088F6 02:88E6: 60        RTS
ofs_017_88E7_2B:
C - - J - - 0x0088F7 02:88E7: A5 0A     LDA ram_000A
sub_0x0088F9:
loc_0x0088F9:
C D 0 - - - 0x0088F9 02:88E9: 85 00     STA ram_0000
C - - - - - 0x0088FB 02:88EB: 0A        ASL
C - - - - - 0x0088FC 02:88EC: A8        TAY
C - - - - - 0x0088FD 02:88ED: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x008900 02:88F0: 30 01     BMI bra_88F3
C - - - - - 0x008902 02:88F2: C8        INY
bra_88F3:
C - - - - - 0x008903 02:88F3: B9 1F 89  LDA tbl_891F,Y
C - - - - - 0x008906 02:88F6: 48        PHA
C - - - - - 0x008907 02:88F7: A4 00     LDY ram_0000
C - - - - - 0x008909 02:88F9: B9 03 89  LDA tbl_8903,Y
C - - - - - 0x00890C 02:88FC: A8        TAY
C - - - - - 0x00890D 02:88FD: 68        PLA
loc_88FE:
C D 0 - - - 0x00890E 02:88FE: 20 62 97  JSR sub_9762
C - - - - - 0x008911 02:8901: 38        SEC
C - - - - - 0x008912 02:8902: 60        RTS



tbl_8903:
- D 0 - - - 0x008913 02:8903: 06        .byte $06   ; 00 
- D 0 - - - 0x008914 02:8904: 06        .byte $06   ; 01 
- D 0 - - - 0x008915 02:8905: 06        .byte $06   ; 02 
- D 0 - - - 0x008916 02:8906: 06        .byte $06   ; 03 
- D 0 - - - 0x008917 02:8907: 06        .byte $06   ; 04 
- D 0 - - - 0x008918 02:8908: 06        .byte $06   ; 05 
- D 0 - - - 0x008919 02:8909: 06        .byte $06   ; 06 
- D 0 - - - 0x00891A 02:890A: 06        .byte $06   ; 07 
- D 0 - - - 0x00891B 02:890B: 06        .byte $06   ; 08 
- D 0 - - - 0x00891C 02:890C: 03        .byte $03   ; 09 
- D 0 - - - 0x00891D 02:890D: 03        .byte $03   ; 0A 
- D 0 - - - 0x00891E 02:890E: 03        .byte $03   ; 0B 
- D 0 - - - 0x00891F 02:890F: 03        .byte $03   ; 0C 
- D 0 - - - 0x008920 02:8910: 03        .byte $03   ; 0D 
- D 0 - - - 0x008921 02:8911: 03        .byte $03   ; 0E 
- - - - - - 0x008922 02:8912: 0C        .byte $0C   ; 0F 
- D 0 - - - 0x008923 02:8913: 0C        .byte $0C   ; 10 
- D 0 - - - 0x008924 02:8914: 0C        .byte $0C   ; 11 
- D 0 - - - 0x008925 02:8915: 0C        .byte $0C   ; 12 
- D 0 - - - 0x008926 02:8916: 0C        .byte $0C   ; 13 
- D 0 - - - 0x008927 02:8917: 0B        .byte $0B   ; 14 
- D 0 - - - 0x008928 02:8918: 0A        .byte $0A   ; 15 
- D 0 - - - 0x008929 02:8919: 0A        .byte $0A   ; 16 
- - - - - - 0x00892A 02:891A: 0B        .byte $0B   ; 17 
- D 0 - - - 0x00892B 02:891B: 0B        .byte $0B   ; 18 
- - - - - - 0x00892C 02:891C: 0A        .byte $0A   ; 19 
- D 0 - - - 0x00892D 02:891D: 0A        .byte $0A   ; 1A 
- D 0 - - - 0x00892E 02:891E: 0A        .byte $0A   ; 1B 



tbl_891F:
- D 0 - - - 0x00892F 02:891F: 01        .byte $01, $02   ; 00 
- D 0 - - - 0x008931 02:8921: 03        .byte $03, $04   ; 01 
- D 0 - - - 0x008933 02:8923: 08        .byte $08, $06   ; 02 
- D 0 - - - 0x008935 02:8925: 09        .byte $09, $07   ; 03 
- D 0 - - - 0x008937 02:8927: 0C        .byte $0C, $0B   ; 04 
- D 0 - - - 0x008939 02:8929: 0D        .byte $0D, $0E   ; 05 
- D 0 - - - 0x00893B 02:892B: 07        .byte $07, $09   ; 06 
- D 0 - - - 0x00893D 02:892D: 0B        .byte $0B, $0C   ; 07 
- D 0 - - - 0x00893F 02:892F: 0F        .byte $0F, $10   ; 08 
- D 0 - - - 0x008941 02:8931: 54        .byte $54, $55   ; 09 
- D 0 - - - 0x008943 02:8933: 12        .byte $12, $16   ; 0A 
- D 0 - - - 0x008945 02:8935: 13        .byte $13, $17   ; 0B 
- D 0 - - - 0x008947 02:8937: 14        .byte $14, $18   ; 0C 
- D 0 - - - 0x008949 02:8939: 56        .byte $56, $57   ; 0D 
- D 0 - - - 0x00894B 02:893B: 15        .byte $15, $19   ; 0E 
- - - - - - 0x00894D 02:893D: 09        .byte $09, $0A   ; 0F 
- D 0 - - - 0x00894F 02:893F: 04        .byte $04, $05   ; 10 
- D 0 - - - 0x008951 02:8941: 0C        .byte $0C, $0D   ; 11 
- D 0 - - - 0x008953 02:8943: 02        .byte $02, $03   ; 12 
- D 0 - - - 0x008955 02:8945: 06        .byte $06, $07   ; 13 
- D 0 - - - 0x008957 02:8947: 07        .byte $07, $06   ; 14 
- D 0 - - - 0x008959 02:8949: 08        .byte $08, $0A   ; 15 
- D 0 - - - 0x00895B 02:894B: 0D        .byte $0D, $0E   ; 16 
- - - - - - 0x00895D 02:894D: 0A        .byte $0A, $0B   ; 17 
- D 0 - - - 0x00895F 02:894F: 08        .byte $08, $09   ; 18 
- - - - - - 0x008961 02:8951: 03        .byte $03, $04   ; 19 
- D 0 - - - 0x008963 02:8953: 05        .byte $05, $06   ; 1A 
- D 0 - - - 0x008965 02:8955: 07        .byte $07, $09   ; 1B 



loc_0x008967:
ofs_017_8957_2C:
C D 0 - - - 0x008967 02:8957: A5 0A     LDA ram_000A
sub_0x008969:
C - - - - - 0x008969 02:8959: 85 0B     STA ram_000B
C - - - - - 0x00896B 02:895B: 0A        ASL
C - - - - - 0x00896C 02:895C: 0A        ASL
C - - - - - 0x00896D 02:895D: 0A        ASL
C - - - - - 0x00896E 02:895E: 85 0C     STA ram_000C
C - - - - - 0x008970 02:8960: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x008973 02:8963: 4A        LSR
C - - - - - 0x008974 02:8964: 18        CLC
C - - - - - 0x008975 02:8965: 65 0C     ADC ram_000C
C - - - - - 0x008977 02:8967: A8        TAY
C - - - - - 0x008978 02:8968: B9 76 89  LDA tbl_8976,Y
C - - - - - 0x00897B 02:896B: 48        PHA
C - - - - - 0x00897C 02:896C: A4 0B     LDY ram_000B
C - - - - - 0x00897E 02:896E: B9 96 89  LDA tbl_8996,Y
C - - - - - 0x008981 02:8971: A8        TAY
C - - - - - 0x008982 02:8972: 68        PLA
C - - - - - 0x008983 02:8973: 4C FE 88  JMP loc_88FE



tbl_8976:
; 00 
- D 0 - - - 0x008986 02:8976: 08        .byte $08   ; 
- D 0 - - - 0x008987 02:8977: 07        .byte $07   ; 
- D 0 - - - 0x008988 02:8978: 06        .byte $06   ; 
- D 0 - - - 0x008989 02:8979: 05        .byte $05   ; 
- D 0 - - - 0x00898A 02:897A: 04        .byte $04   ; 
- - - - - - 0x00898B 02:897B: 0B        .byte $0B   ; 
- D 0 - - - 0x00898C 02:897C: 0A        .byte $0A   ; 
- D 0 - - - 0x00898D 02:897D: 09        .byte $09   ; 
; 01 
- D 0 - - - 0x00898E 02:897E: 0D        .byte $0D   ; 
- D 0 - - - 0x00898F 02:897F: 14        .byte $14   ; 
- D 0 - - - 0x008990 02:8980: 13        .byte $13   ; 
- D 0 - - - 0x008991 02:8981: 12        .byte $12   ; 
- D 0 - - - 0x008992 02:8982: 11        .byte $11   ; 
- D 0 - - - 0x008993 02:8983: 10        .byte $10   ; 
- D 0 - - - 0x008994 02:8984: 0F        .byte $0F   ; 
- D 0 - - - 0x008995 02:8985: 0E        .byte $0E   ; 
; 02 
- D 0 - - - 0x008996 02:8986: 05        .byte $05   ; 
- D 0 - - - 0x008997 02:8987: 0C        .byte $0C   ; 
- D 0 - - - 0x008998 02:8988: 0B        .byte $0B   ; 
- D 0 - - - 0x008999 02:8989: 0A        .byte $0A   ; 
- D 0 - - - 0x00899A 02:898A: 09        .byte $09   ; 
- D 0 - - - 0x00899B 02:898B: 08        .byte $08   ; 
- D 0 - - - 0x00899C 02:898C: 07        .byte $07   ; 
- D 0 - - - 0x00899D 02:898D: 06        .byte $06   ; 
; 03 
- D 0 - - - 0x00899E 02:898E: 15        .byte $15   ; 
- D 0 - - - 0x00899F 02:898F: 17        .byte $17   ; 
- D 0 - - - 0x0089A0 02:8990: 18        .byte $18   ; 
- D 0 - - - 0x0089A1 02:8991: 16        .byte $16   ; 
- D 0 - - - 0x0089A2 02:8992: 15        .byte $15   ; 
- D 0 - - - 0x0089A3 02:8993: 17        .byte $17   ; 
- D 0 - - - 0x0089A4 02:8994: 18        .byte $18   ; 
- D 0 - - - 0x0089A5 02:8995: 16        .byte $16   ; 



tbl_8996:
- D 0 - - - 0x0089A6 02:8996: 08        .byte $08   ; 00 
- D 0 - - - 0x0089A7 02:8997: 07        .byte $07   ; 01 
- D 0 - - - 0x0089A8 02:8998: 07        .byte $07   ; 02 
- D 0 - - - 0x0089A9 02:8999: 07        .byte $07   ; 03 



ofs_017_899A_20:
ofs_017_899A_4F:
C - - J - - 0x0089AA 02:899A: A5 0A     LDA ram_000A
C - - - - - 0x0089AC 02:899C: 4C F0 8C  JMP loc_8CF0
ofs_017_899F_22:
C - - J - - 0x0089AF 02:899F: A5 0A     LDA ram_000A
sub_89A1:
loc_0x0089B1:
sub_0x0089B1:
C D 0 - - - 0x0089B1 02:89A1: 0A        ASL
C - - - - - 0x0089B2 02:89A2: A8        TAY
C - - - - - 0x0089B3 02:89A3: B9 D0 89  LDA tbl_89CF + $01,Y
C - - - - - 0x0089B6 02:89A6: 30 1B     BMI bra_89C3
C - - - - - 0x0089B8 02:89A8: 0A        ASL
C - - - - - 0x0089B9 02:89A9: 0A        ASL
C - - - - - 0x0089BA 02:89AA: 85 0A     STA ram_000A
C - - - - - 0x0089BC 02:89AC: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0089BF 02:89AF: 29 C3     AND #$C3
C - - - - - 0x0089C1 02:89B1: 05 0A     ORA ram_000A
C - - - - - 0x0089C3 02:89B3: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x0089C6 02:89B6: B9 CF 89  LDA tbl_89CF,Y
C - - - - - 0x0089C9 02:89B9: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x0089CC 02:89BC: A9 00     LDA #$00
C - - - - - 0x0089CE 02:89BE: 9D 0A 07  STA ram_070A_obj,X
C - - - - - 0x0089D1 02:89C1: 38        SEC
C - - - - - 0x0089D2 02:89C2: 60        RTS
bra_89C3:
C - - - - - 0x0089D3 02:89C3: 29 7F     AND #$7F
C - - - - - 0x0089D5 02:89C5: 85 00     STA ram_0000
C - - - - - 0x0089D7 02:89C7: B9 CF 89  LDA tbl_89CF,Y
C - - - - - 0x0089DA 02:89CA: A4 00     LDY ram_0000
C - - - - - 0x0089DC 02:89CC: 4C FE 88  JMP loc_88FE



tbl_89CF:
;                                              +---------------- 
;                                              |    +----------- 
;                                              |    |     +----- 
;                                              |    |     |
- D 0 - - - 0x0089DF 02:89CF: 01        .byte $01, $00 + $09   ; 00 
- D 0 - - - 0x0089E1 02:89D1: 1F        .byte $1F, $00 + $06   ; 01 
- D 0 - - - 0x0089E3 02:89D3: 14        .byte $14, $00 + $05   ; 02 
- D 0 - - - 0x0089E5 02:89D5: 0A        .byte $0A, $00 + $05   ; 03 
- D 0 - - - 0x0089E7 02:89D7: 3C        .byte $3C, $00 + $08   ; 04 
- D 0 - - - 0x0089E9 02:89D9: 2A        .byte $2A, $00 + $09   ; 05 
- D 0 - - - 0x0089EB 02:89DB: 11        .byte $11, $00 + $09   ; 06 
- D 0 - - - 0x0089ED 02:89DD: 02        .byte $02, $00 + $05   ; 07 
- D 0 - - - 0x0089EF 02:89DF: 05        .byte $05, $00 + $0C   ; 08 
- - - - - - 0x0089F1 02:89E1: 1C        .byte $1C, $00 + $05   ; 09 
- D 0 - - - 0x0089F3 02:89E3: 08        .byte $08, $00 + $07   ; 0A 
- D 0 - - - 0x0089F5 02:89E5: 0B        .byte $0B, $00 + $05   ; 0B 
- D 0 - - - 0x0089F7 02:89E7: 03        .byte $03, $00 + $05   ; 0C 
- D 0 - - - 0x0089F9 02:89E9: 07        .byte $07, $00 + $05   ; 0D 
- D 0 - - - 0x0089FB 02:89EB: 08        .byte $08, $00 + $05   ; 0E 
- D 0 - - - 0x0089FD 02:89ED: 01        .byte $01, $00 + $05   ; 0F 
- - - - - - 0x0089FF 02:89EF: 05        .byte $05, $00 + $0A   ; 10 
- D 0 - - - 0x008A01 02:89F1: 05        .byte $05, $80 + $06   ; 11 
- D 0 - - - 0x008A03 02:89F3: 0A        .byte $0A, $80 + $06   ; 12 
- D 0 - - - 0x008A05 02:89F5: 01        .byte $01, $80 + $07   ; 13 
- D 0 - - - 0x008A07 02:89F7: 04        .byte $04, $80 + $05   ; 14 
- D 0 - - - 0x008A09 02:89F9: 0D        .byte $0D, $80 + $08   ; 15 
- D 0 - - - 0x008A0B 02:89FB: 0E        .byte $0E, $80 + $08   ; 16 
- D 0 - - - 0x008A0D 02:89FD: 01        .byte $01, $80 + $09   ; 17 
- D 0 - - - 0x008A0F 02:89FF: 02        .byte $02, $80 + $09   ; 18 
- D 0 - - - 0x008A11 02:8A01: 03        .byte $03, $80 + $09   ; 19 
- D 0 - - - 0x008A13 02:8A03: 04        .byte $04, $80 + $09   ; 1A 
- D 0 - - - 0x008A15 02:8A05: 07        .byte $07, $80 + $09   ; 1B 
- D 0 - - - 0x008A17 02:8A07: 0C        .byte $0C, $80 + $09   ; 1C 
- D 0 - - - 0x008A19 02:8A09: 0D        .byte $0D, $80 + $09   ; 1D 
- D 0 - - - 0x008A1B 02:8A0B: 08        .byte $08, $80 + $09   ; 1E 
- D 0 - - - 0x008A1D 02:8A0D: 09        .byte $09, $80 + $09   ; 1F 
- D 0 - - - 0x008A1F 02:8A0F: 05        .byte $05, $80 + $09   ; 20 
- D 0 - - - 0x008A21 02:8A11: 06        .byte $06, $80 + $09   ; 21 
- D 0 - - - 0x008A23 02:8A13: 0A        .byte $0A, $80 + $09   ; 22 
- D 0 - - - 0x008A25 02:8A15: 01        .byte $01, $80 + $0B   ; 23 
- D 0 - - - 0x008A27 02:8A17: 02        .byte $02, $80 + $0B   ; 24 
- D 0 - - - 0x008A29 02:8A19: 03        .byte $03, $80 + $0B   ; 25 
- D 0 - - - 0x008A2B 02:8A1B: 04        .byte $04, $80 + $0B   ; 26 
- D 0 - - - 0x008A2D 02:8A1D: 0B        .byte $0B, $80 + $0C   ; 27 
- D 0 - - - 0x008A2F 02:8A1F: 01        .byte $01, $80 + $0C   ; 28 
- D 0 - - - 0x008A31 02:8A21: 01        .byte $01, $80 + $0D   ; 29 
- D 0 - - - 0x008A33 02:8A23: 02        .byte $02, $80 + $0D   ; 2A 
- D 0 - - - 0x008A35 02:8A25: 05        .byte $05, $80 + $0B   ; 2B 
- D 0 - - - 0x008A37 02:8A27: 0B        .byte $0B, $80 + $0A   ; 2C 
- D 0 - - - 0x008A39 02:8A29: 0C        .byte $0C, $80 + $0A   ; 2D 
- D 0 - - - 0x008A3B 02:8A2B: 01        .byte $01, $80 + $0A   ; 2E 
- D 0 - - - 0x008A3D 02:8A2D: 02        .byte $02, $80 + $0A   ; 2F 
- D 0 - - - 0x008A3F 02:8A2F: 0F        .byte $0F, $80 + $08   ; 30 
- D 0 - - - 0x008A41 02:8A31: 01        .byte $01, $80 + $05   ; 31 
- D 0 - - - 0x008A43 02:8A33: 1C        .byte $1C, $80 + $07   ; 32 
- D 0 - - - 0x008A45 02:8A35: 02        .byte $02, $80 + $07   ; 33 
- D 0 - - - 0x008A47 02:8A37: 03        .byte $03, $80 + $07   ; 34 
- D 0 - - - 0x008A49 02:8A39: 1D        .byte $1D, $80 + $07   ; 35 
- D 0 - - - 0x008A4B 02:8A3B: 1E        .byte $1E, $80 + $07   ; 36 
- D 0 - - - 0x008A4D 02:8A3D: 21        .byte $21, $80 + $07   ; 37 
- - - - - - 0x008A4F 02:8A3F: 03        .byte $03, $80 + $05   ; 38 
- D 0 - - - 0x008A51 02:8A41: 1F        .byte $1F, $80 + $07   ; 39 
- D 0 - - - 0x008A53 02:8A43: 04        .byte $04, $80 + $07   ; 3A 
- D 0 - - - 0x008A55 02:8A45: 20        .byte $20, $80 + $07   ; 3B 
- D 0 - - - 0x008A57 02:8A47: 15        .byte $15, $00 + $05   ; 3C 



ofs_017_8A49_42:
C - - J - - 0x008A59 02:8A49: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008A5C 02:8A4C: 30 1A     BMI bra_8A68
C - - - - - 0x008A5E 02:8A4E: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x008A61 02:8A51: B9 C7 8B  LDA tbl_8BC7,Y
C - - - - - 0x008A64 02:8A54: 29 40     AND #$40
C - - - - - 0x008A66 02:8A56: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x008A69 02:8A59: B9 C7 8B  LDA tbl_8BC7,Y
C - - - - - 0x008A6C 02:8A5C: 29 0F     AND #$0F
C - - - - - 0x008A6E 02:8A5E: 85 0B     STA ram_000B
C - - - - - 0x008A70 02:8A60: 20 7D 91  JSR sub_917D_06B2x_AND_F0
C - - - - - 0x008A73 02:8A63: 05 0B     ORA ram_000B
C - - - - - 0x008A75 02:8A65: 9D B2 06  STA ram_06B2_obj,X
bra_8A68:
C - - - - - 0x008A78 02:8A68: 20 1B 84  JSR sub_841B_000A_ASL_TAY
C - - - - - 0x008A7B 02:8A6B: B9 C8 8B  LDA tbl_8BC8,Y
C - - - - - 0x008A7E 02:8A6E: 85 0C     STA ram_000C
sub_8A70:
C - - - - - 0x008A80 02:8A70: 20 52 9F  JSR sub_9F52
C - - - - - 0x008A83 02:8A73: 20 67 8B  JSR sub_8B67
C - - - - - 0x008A86 02:8A76: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008A89 02:8A79: 10 07     BPL bra_8A82
loc_0x008A8B:
C D 0 - - - 0x008A8B 02:8A7B: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008A8E 02:8A7E: 29 3F     AND #$3F
C - - - - - 0x008A90 02:8A80: F0 22     BEQ bra_8AA4
bra_8A82:
loc_0x008A92:
C D 0 - - - 0x008A92 02:8A82: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008A95 02:8A85: 29 40     AND #$40
C - - - - - 0x008A97 02:8A87: F0 0B     BEQ bra_8A94
C - - - - - 0x008A99 02:8A89: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008A9C 02:8A8C: 38        SEC
C - - - - - 0x008A9D 02:8A8D: E9 01     SBC #$01
C - - - - - 0x008A9F 02:8A8F: 09 40     ORA #$40
C - - - - - 0x008AA1 02:8A91: 4C 9C 8A  JMP loc_8A9C
bra_8A94:
C - - - - - 0x008AA4 02:8A94: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008AA7 02:8A97: 18        CLC
C - - - - - 0x008AA8 02:8A98: 69 01     ADC #$01
C - - - - - 0x008AAA 02:8A9A: 29 BF     AND #$BF
loc_8A9C:
C D 0 - - - 0x008AAC 02:8A9C: 9D 9C 06  STA ram_069C_obj,X
loc_0x008AAF:
C D 0 - - - 0x008AAF 02:8A9F: 20 98 98  JSR sub_9898
C - - - - - 0x008AB2 02:8AA2: 18        CLC
C - - - - - 0x008AB3 02:8AA3: 60        RTS
bra_8AA4:
C - - - - - 0x008AB4 02:8AA4: A5 0C     LDA ram_000C
C - - - - - 0x008AB6 02:8AA6: 29 40     AND #$40
C - - - - - 0x008AB8 02:8AA8: F0 0D     BEQ bra_8AB7
C - - - - - 0x008ABA 02:8AAA: 20 78 91  JSR sub_9178_stage_AND_01
C - - - - - 0x008ABD 02:8AAD: D0 08     BNE bra_8AB7
C - - - - - 0x008ABF 02:8AAF: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008AC2 02:8AB2: 29 C0     AND #$C0
C - - - - - 0x008AC4 02:8AB4: 4C 9C 8A  JMP loc_8A9C
bra_8AB7:
C - - - - - 0x008AC7 02:8AB7: 20 98 98  JSR sub_9898
C - - - - - 0x008ACA 02:8ABA: 38        SEC
C - - - - - 0x008ACB 02:8ABB: 60        RTS



sub_8ABC:
C - - - - - 0x008ACC 02:8ABC: 4A        LSR
C - - - - - 0x008ACD 02:8ABD: 4A        LSR
C - - - - - 0x008ACE 02:8ABE: 29 0E     AND #$0E
C - - - - - 0x008AD0 02:8AC0: A8        TAY
C - - - - - 0x008AD1 02:8AC1: B9 B7 8B  LDA tbl_8BB7,Y
C - - - - - 0x008AD4 02:8AC4: 85 13     STA ram_0013
C - - - - - 0x008AD6 02:8AC6: B9 B8 8B  LDA tbl_8BB7 + $01,Y
C - - - - - 0x008AD9 02:8AC9: 85 14     STA ram_0014
C - - - - - 0x008ADB 02:8ACB: 60        RTS



sub_8ACC:
C - - - - - 0x008ADC 02:8ACC: 29 07     AND #$07
C - - - - - 0x008ADE 02:8ACE: 85 11     STA ram_0011
C - - - - - 0x008AE0 02:8AD0: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008AE3 02:8AD3: 29 3F     AND #$3F
C - - - - - 0x008AE5 02:8AD5: C9 20     CMP #$20
C - - - - - 0x008AE7 02:8AD7: 90 05     BCC bra_8ADE
C - - - - - 0x008AE9 02:8AD9: 09 C0     ORA #$C0
C - - - - - 0x008AEB 02:8ADB: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
bra_8ADE:
C - - - - - 0x008AEE 02:8ADE: 85 0E     STA ram_000E
C - - - - - 0x008AF0 02:8AE0: A9 00     LDA #$00
C - - - - - 0x008AF2 02:8AE2: 85 0F     STA ram_000F
C - - - - - 0x008AF4 02:8AE4: 20 1C 8B  JSR sub_8B1C
C - - - - - 0x008AF7 02:8AE7: 20 22 8B  JSR sub_8B22
C - - - - - 0x008AFA 02:8AEA: 20 FB 8A  JSR sub_8AFB
C - - - - - 0x008AFD 02:8AED: A5 13     LDA ram_0013
C - - - - - 0x008AFF 02:8AEF: 38        SEC
C - - - - - 0x008B00 02:8AF0: E5 0E     SBC ram_000E
C - - - - - 0x008B02 02:8AF2: 85 13     STA ram_0013
C - - - - - 0x008B04 02:8AF4: A5 14     LDA ram_0014
C - - - - - 0x008B06 02:8AF6: E5 0F     SBC ram_000F
C - - - - - 0x008B08 02:8AF8: 85 14     STA ram_0014
C - - - - - 0x008B0A 02:8AFA: 60        RTS



sub_8AFB:
C - - - - - 0x008B0B 02:8AFB: A5 11     LDA ram_0011
C - - - - - 0x008B0D 02:8AFD: 0A        ASL
C - - - - - 0x008B0E 02:8AFE: A8        TAY
C - - - - - 0x008B0F 02:8AFF: B9 0C 8B  LDA tbl_8B0C,Y
C - - - - - 0x008B12 02:8B02: 85 11     STA ram_0011
C - - - - - 0x008B14 02:8B04: B9 0D 8B  LDA tbl_8B0C + $01,Y
C - - - - - 0x008B17 02:8B07: 85 12     STA ram_0012
C - - - - - 0x008B19 02:8B09: 6C 11 00  JMP (ram_0011)



tbl_8B0C:
- - - - - - 0x008B1C 02:8B0C: 22 8B     .word ofs_018_8B22_00
- D 0 - - - 0x008B1E 02:8B0E: 1F 8B     .word ofs_018_8B1F_01
- - - - - - 0x008B20 02:8B10: 27 8B     .word ofs_018_8B27_02
- D 0 - - - 0x008B22 02:8B12: 1C 8B     .word ofs_018_8B1C_03
- - - - - - 0x008B24 02:8B14: 3E 8B     .word ofs_018_8B3E_04
- - - - - - 0x008B26 02:8B16: 4A 8B     .word ofs_018_8B4A_05
- - - - - - 0x008B28 02:8B18: 50 8B     .word ofs_018_8B50_06
- - - - - - 0x008B2A 02:8B1A: 26 8B     .word ofs_018_8B26_07_RTS



sub_8B1C:
ofs_018_8B1C_03:
C - - - - - 0x008B2C 02:8B1C: 20 22 8B  JSR sub_8B22
sub_8B1F:
ofs_018_8B1F_01:
C - - - - - 0x008B2F 02:8B1F: 20 22 8B  JSR sub_8B22
sub_8B22:
ofs_018_8B22_00:
C - - - - - 0x008B32 02:8B22: 06 0E     ASL ram_000E
C - - - - - 0x008B34 02:8B24: 26 0F     ROL ram_000F
ofs_018_8B26_07_RTS:
C - - - - - 0x008B36 02:8B26: 60        RTS



sub_8B27:
ofs_018_8B27_02:
- - - - - - 0x008B37 02:8B27: 20 22 8B  JSR sub_8B22
loc_8B2A:
- - - - - - 0x008B3A 02:8B2A: 20 5E 8B  JSR sub_8B5E
- - - - - - 0x008B3D 02:8B2D: 20 22 8B  JSR sub_8B22
loc_8B30:
- - - - - - 0x008B40 02:8B30: A5 0E     LDA ram_000E
- - - - - - 0x008B42 02:8B32: 18        CLC
- - - - - - 0x008B43 02:8B33: 65 11     ADC ram_0011
- - - - - - 0x008B45 02:8B35: 85 0E     STA ram_000E
- - - - - - 0x008B47 02:8B37: A5 0F     LDA ram_000F
- - - - - - 0x008B49 02:8B39: 65 12     ADC ram_0012
- - - - - - 0x008B4B 02:8B3B: 85 0F     STA ram_000F
- - - - - - 0x008B4D 02:8B3D: 60        RTS



ofs_018_8B3E_04:
- - - - - - 0x008B4E 02:8B3E: 20 22 8B  JSR sub_8B22
- - - - - - 0x008B51 02:8B41: 20 5E 8B  JSR sub_8B5E
- - - - - - 0x008B54 02:8B44: 20 1F 8B  JSR sub_8B1F
- - - - - - 0x008B57 02:8B47: 4C 30 8B  JMP loc_8B30



ofs_018_8B4A_05:
- - - - - - 0x008B5A 02:8B4A: 20 1F 8B  JSR sub_8B1F
- - - - - - 0x008B5D 02:8B4D: 4C 2A 8B  JMP loc_8B2A



ofs_018_8B50_06:
- - - - - - 0x008B60 02:8B50: 20 27 8B  JSR sub_8B27
- - - - - - 0x008B63 02:8B53: 06 11     ASL ram_0011
- - - - - - 0x008B65 02:8B55: 26 12     ROL ram_0012
- - - - - - 0x008B67 02:8B57: 06 11     ASL ram_0011
- - - - - - 0x008B69 02:8B59: 26 12     ROL ram_0012
- - - - - - 0x008B6B 02:8B5B: 4C 30 8B  JMP loc_8B30



sub_8B5E:
- - - - - - 0x008B6E 02:8B5E: A5 0E     LDA ram_000E
- - - - - - 0x008B70 02:8B60: 85 11     STA ram_0011
- - - - - - 0x008B72 02:8B62: A5 0F     LDA ram_000F
- - - - - - 0x008B74 02:8B64: 85 12     STA ram_0012
- - - - - - 0x008B76 02:8B66: 60        RTS



sub_8B67:
sub_0x008B77:
C - - - - - 0x008B77 02:8B67: A5 0C     LDA ram_000C
C - - - - - 0x008B79 02:8B69: 20 BC 8A  JSR sub_8ABC
C - - - - - 0x008B7C 02:8B6C: A5 0C     LDA ram_000C
C - - - - - 0x008B7E 02:8B6E: 20 CC 8A  JSR sub_8ACC
C - - - - - 0x008B81 02:8B71: A5 13     LDA ram_0013
C - - - - - 0x008B83 02:8B73: 05 14     ORA ram_0014
C - - - - - 0x008B85 02:8B75: D0 08     BNE bra_8B7F
C - - - - - 0x008B87 02:8B77: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008B8A 02:8B7A: 49 40     EOR #$40
C - - - - - 0x008B8C 02:8B7C: 9D 9C 06  STA ram_069C_obj,X
bra_8B7F:
C - - - - - 0x008B8F 02:8B7F: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008B92 02:8B82: 29 40     AND #$40
C - - - - - 0x008B94 02:8B84: F0 03     BEQ bra_8B89
C - - - - - 0x008B96 02:8B86: 20 A5 8B  JSR sub_8BA5
bra_8B89:
C - - - - - 0x008B99 02:8B89: 20 78 91  JSR sub_9178_stage_AND_01
C - - - - - 0x008B9C 02:8B8C: F0 0E     BEQ bra_8B9C
C - - - - - 0x008B9E 02:8B8E: A5 92     LDA ram_0092
C - - - - - 0x008BA0 02:8B90: 18        CLC
C - - - - - 0x008BA1 02:8B91: 65 13     ADC ram_0013
C - - - - - 0x008BA3 02:8B93: 85 92     STA ram_0092
C - - - - - 0x008BA5 02:8B95: A5 93     LDA ram_0093
C - - - - - 0x008BA7 02:8B97: 65 14     ADC ram_0014
C - - - - - 0x008BA9 02:8B99: 85 93     STA ram_0093
C - - - - - 0x008BAB 02:8B9B: 60        RTS
bra_8B9C:
C - - - - - 0x008BAC 02:8B9C: A5 13     LDA ram_0013
C - - - - - 0x008BAE 02:8B9E: 85 92     STA ram_0092
C - - - - - 0x008BB0 02:8BA0: A5 14     LDA ram_0014
C - - - - - 0x008BB2 02:8BA2: 85 93     STA ram_0093
C - - - - - 0x008BB4 02:8BA4: 60        RTS



sub_8BA5:
C - - - - - 0x008BB5 02:8BA5: A5 14     LDA ram_0014
C - - - - - 0x008BB7 02:8BA7: 49 FF     EOR #$FF
C - - - - - 0x008BB9 02:8BA9: 85 14     STA ram_0014
C - - - - - 0x008BBB 02:8BAB: A5 13     LDA ram_0013
C - - - - - 0x008BBD 02:8BAD: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
C - - - - - 0x008BC0 02:8BB0: 85 13     STA ram_0013
C - - - - - 0x008BC2 02:8BB2: 90 02     BCC bra_8BB6_RTS
C - - - - - 0x008BC4 02:8BB4: E6 14     INC ram_0014
bra_8BB6_RTS:
C - - - - - 0x008BC6 02:8BB6: 60        RTS



tbl_8BB7:
- - - - - - 0x008BC7 02:8BB7: 00        .byte $00, $00   ; 
- D 0 - - - 0x008BC9 02:8BB9: 00        .byte $00, $05   ; 
- - - - - - 0x008BCB 02:8BBB: 00        .byte $00, $01   ; 
- - - - - - 0x008BCD 02:8BBD: 80        .byte $80, $01   ; 
- - - - - - 0x008BCF 02:8BBF: 00        .byte $00, $02   ; 
- D 0 - - - 0x008BD1 02:8BC1: 80        .byte $80, $02   ; 
- D 0 - - - 0x008BD3 02:8BC3: 00        .byte $00, $03   ; 
- - - - - - 0x008BD5 02:8BC5: 80        .byte $80, $03   ; 


; bzk optimize
tbl_8BC7:
- D 0 - - - 0x008BD7 02:8BC7: 41        .byte $41   ; 
tbl_8BC8:
- D 0 - - - 0x008BD8 02:8BC8: E9        .byte $E9   ; 



sub_0x008BD9:
C - - - - - 0x008BD9 02:8BC9: A4 0B     LDY ram_000B
loc_8BCB:
C D 0 - - - 0x008BDB 02:8BCB: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x008BDE 02:8BCE: D0 46     BNE bra_8C16
sub_0x008BE0:
C - - - - - 0x008BE0 02:8BD0: 20 54 91  JSR sub_9154_copy_position
sub_0x008BE3:
C - - - - - 0x008BE3 02:8BD3: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x008BE6 02:8BD6: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x008BE9 02:8BD9: 20 47 91  JSR sub_9147_copy_speed
C - - - - - 0x008BEC 02:8BDC: 20 61 91  JSR sub_9161
C - - - - - 0x008BEF 02:8BDF: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x008BF2 02:8BE2: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x008BF5 02:8BE5: 99 B4 07  STA ram_07B4_unk,Y
C - - - - - 0x008BF8 02:8BE8: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x008BFB 02:8BEB: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x008BFE 02:8BEE: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x008C01 02:8BF1: A5 0A     LDA ram_000A
C - - - - - 0x008C03 02:8BF3: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x008C06 02:8BF6: 20 7D 91  JSR sub_917D_06B2x_AND_F0
C - - - - - 0x008C09 02:8BF9: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x008C0C 02:8BFC: 20 E3 93  JSR sub_93E3
C - - - - - 0x008C0F 02:8BFF: 4C 84 9B  JMP loc_9B84



ofs_017_8C02_30:
C - - J - - 0x008C12 02:8C02: A5 0A     LDA ram_000A
C - - - - - 0x008C14 02:8C04: 0A        ASL
C - - - - - 0x008C15 02:8C05: BC D2 07  LDY ram_07D2_unk,X
C - - - - - 0x008C18 02:8C08: 18        CLC
C - - - - - 0x008C19 02:8C09: 79 18 8C  ADC tbl_8C18,Y
C - - - - - 0x008C1C 02:8C0C: A8        TAY
C - - - - - 0x008C1D 02:8C0D: B9 21 8C  LDA tbl_8C21,Y
loc_8C10:
loc_0x008C20:
C D 0 - - - 0x008C20 02:8C10: 38        SEC
C - - - - - 0x008C21 02:8C11: E9 01     SBC #$01
loc_8C13:
loc_0x008C23:
C D 0 - - - 0x008C23 02:8C13: 9D 78 07  STA ram_0778_unk,X
bra_8C16:
C - - - - - 0x008C26 02:8C16: 38        SEC
C - - - - - 0x008C27 02:8C17: 60        RTS



tbl_8C18:
- D 0 - - - 0x008C28 02:8C18: 00        .byte $00   ; 00 
- D 0 - - - 0x008C29 02:8C19: 00        .byte $00   ; 01 
- D 0 - - - 0x008C2A 02:8C1A: 01        .byte $01   ; 02 
- D 0 - - - 0x008C2B 02:8C1B: 00        .byte $00   ; 03 
- D 0 - - - 0x008C2C 02:8C1C: 00        .byte $00   ; 04 
- D 0 - - - 0x008C2D 02:8C1D: 00        .byte $00   ; 05 
- D 0 - - - 0x008C2E 02:8C1E: 01        .byte $01   ; 06 
- D 0 - - - 0x008C2F 02:8C1F: 00        .byte $00   ; 07 
- D 0 - - - 0x008C30 02:8C20: 00        .byte $00   ; 08 



tbl_8C21:
- D 0 - - - 0x008C31 02:8C21: 02        .byte $02   ; 00 
- D 0 - - - 0x008C32 02:8C22: 0B        .byte $0B   ; 01 
- D 0 - - - 0x008C33 02:8C23: 02        .byte $02   ; 02 
- D 0 - - - 0x008C34 02:8C24: 0A        .byte $0A   ; 03 



ofs_017_8C25_31:
C - - J - - 0x008C35 02:8C25: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x008C38 02:8C28: 29 7F     AND #$7F
C - - - - - 0x008C3A 02:8C2A: A8        TAY
C - - - - - 0x008C3B 02:8C2B: B9 61 8C  LDA tbl_8C61,Y
C - - - - - 0x008C3E 02:8C2E: F0 2C     BEQ bra_8C5C
C - - - - - 0x008C40 02:8C30: A0 08     LDY #$08
C - - - - - 0x008C42 02:8C32: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x008C45 02:8C35: 29 C0     AND #$C0
C - - - - - 0x008C47 02:8C37: F0 06     BEQ bra_8C3F
C - - - - - 0x008C49 02:8C39: C9 C0     CMP #$C0
C - - - - - 0x008C4B 02:8C3B: F0 02     BEQ bra_8C3F
C - - - - - 0x008C4D 02:8C3D: A0 F8     LDY #$F8
bra_8C3F:
C - - - - - 0x008C4F 02:8C3F: 98        TYA
C - - - - - 0x008C50 02:8C40: 18        CLC
C - - - - - 0x008C51 02:8C41: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x008C54 02:8C44: 85 00     STA ram_0000
C - - - - - 0x008C56 02:8C46: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008C59 02:8C49: 38        SEC
C - - - - - 0x008C5A 02:8C4A: E9 20     SBC #$20
C - - - - - 0x008C5C 02:8C4C: 85 01     STA ram_0001
C - - - - - 0x008C5E 02:8C4E: A9 00     LDA #con_F3D6_00
C - - - - - 0x008C60 02:8C50: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x008C63 02:8C53: A5 01     LDA ram_0001
C - - - - - 0x008C65 02:8C55: F0 05     BEQ bra_8C5C
; bzk optimize, load 1D and jump to 0x008C23 instead
C - - - - - 0x008C67 02:8C57: A9 1E     LDA #$1E
C - - - - - 0x008C69 02:8C59: 4C 10 8C  JMP loc_8C10
bra_8C5C:
; bzk optimize, load 21 and jump to 0x008C23 instead
C - - - - - 0x008C6C 02:8C5C: A9 22     LDA #$22
C - - - - - 0x008C6E 02:8C5E: 4C 10 8C  JMP loc_8C10



tbl_8C61:
- D 0 - - - 0x008C71 02:8C61: 00        .byte $00   ; 00 
- D 0 - - - 0x008C72 02:8C62: 01        .byte $01   ; 01 
- D 0 - - - 0x008C73 02:8C63: 00        .byte $00   ; 02 
- - - - - - 0x008C74 02:8C64: 00        .byte $00   ; 03 
- - - - - - 0x008C75 02:8C65: 01        .byte $01   ; 04 
- - - - - - 0x008C76 02:8C66: 00        .byte $00   ; 05 



ofs_017_8C67_32:
C - - J - - 0x008C77 02:8C67: 20 72 91  JSR sub_9172_06B2x_AND_0F
C - - - - - 0x008C7A 02:8C6A: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008C7D 02:8C6D: 20 2E 94  JSR sub_942E
C - - - - - 0x008C80 02:8C70: A9 00     LDA #$00
C - - - - - 0x008C82 02:8C72: 85 00     STA ram_0000
C - - - - - 0x008C84 02:8C74: 85 01     STA ram_0001
C - - - - - 0x008C86 02:8C76: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008C89 02:8C79: 38        SEC
C - - - - - 0x008C8A 02:8C7A: F9 4E 06  SBC ram_obj_pos_X,Y
C - - - - - 0x008C8D 02:8C7D: B0 04     BCS bra_8C83
C - - - - - 0x008C8F 02:8C7F: 49 FF     EOR #$FF
C - - - - - 0x008C91 02:8C81: E6 00     INC ram_0000
bra_8C83:
C - - - - - 0x008C93 02:8C83: C9 30     CMP #$30
C - - - - - 0x008C95 02:8C85: B0 02     BCS bra_8C89
C - - - - - 0x008C97 02:8C87: E6 01     INC ram_0001
bra_8C89:
C - - - - - 0x008C99 02:8C89: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008C9C 02:8C8C: 38        SEC
C - - - - - 0x008C9D 02:8C8D: F9 68 06  SBC ram_obj_pos_Y,Y
C - - - - - 0x008CA0 02:8C90: B0 06     BCS bra_8C98
C - - - - - 0x008CA2 02:8C92: 49 FF     EOR #$FF
C - - - - - 0x008CA4 02:8C94: E6 00     INC ram_0000
C - - - - - 0x008CA6 02:8C96: E6 00     INC ram_0000
bra_8C98:
C - - - - - 0x008CA8 02:8C98: C9 30     CMP #$30
C - - - - - 0x008CAA 02:8C9A: B0 04     BCS bra_8CA0
C - - - - - 0x008CAC 02:8C9C: E6 01     INC ram_0001
C - - - - - 0x008CAE 02:8C9E: E6 01     INC ram_0001
bra_8CA0:
C - - - - - 0x008CB0 02:8CA0: A5 01     LDA ram_0001
C - - - - - 0x008CB2 02:8CA2: 29 02     AND #$02
C - - - - - 0x008CB4 02:8CA4: F0 21     BEQ bra_8CC7
C - - - - - 0x008CB6 02:8CA6: A0 04     LDY #$04
C - - - - - 0x008CB8 02:8CA8: A5 00     LDA ram_0000
C - - - - - 0x008CBA 02:8CAA: 29 02     AND #$02
C - - - - - 0x008CBC 02:8CAC: F0 08     BEQ bra_8CB6
C - - - - - 0x008CBE 02:8CAE: A0 0C     LDY #$0C
C - - - - - 0x008CC0 02:8CB0: A5 00     LDA ram_0000
C - - - - - 0x008CC2 02:8CB2: 49 01     EOR #$01
C - - - - - 0x008CC4 02:8CB4: 85 00     STA ram_0000
bra_8CB6:
C - - - - - 0x008CC6 02:8CB6: A5 01     LDA ram_0001
C - - - - - 0x008CC8 02:8CB8: 29 01     AND #$01
C - - - - - 0x008CCA 02:8CBA: F0 19     BEQ bra_8CD5
- - - - - - 0x008CCC 02:8CBC: C8        INY
- - - - - - 0x008CCD 02:8CBD: A5 00     LDA ram_0000
- - - - - - 0x008CCF 02:8CBF: 29 01     AND #$01
- - - - - - 0x008CD1 02:8CC1: F0 12     BEQ bra_8CD5
- - - - - - 0x008CD3 02:8CC3: 88        DEY
- - - - - - 0x008CD4 02:8CC4: 88        DEY
- - - - - - 0x008CD5 02:8CC5: D0 0E     BNE bra_8CD5
bra_8CC7:
C - - - - - 0x008CD7 02:8CC7: A5 01     LDA ram_0001
C - - - - - 0x008CD9 02:8CC9: F0 1E     BEQ bra_8CE9
C - - - - - 0x008CDB 02:8CCB: A0 00     LDY #$00
C - - - - - 0x008CDD 02:8CCD: A5 00     LDA ram_0000
C - - - - - 0x008CDF 02:8CCF: 29 01     AND #$01
C - - - - - 0x008CE1 02:8CD1: F0 02     BEQ bra_8CD5
- - - - - - 0x008CE3 02:8CD3: A0 08     LDY #$08
bra_8CD5:
C - - - - - 0x008CE5 02:8CD5: 98        TYA
C - - - - - 0x008CE6 02:8CD6: 0A        ASL
C - - - - - 0x008CE7 02:8CD7: 0A        ASL
C - - - - - 0x008CE8 02:8CD8: 0A        ASL
C - - - - - 0x008CE9 02:8CD9: 0A        ASL
C - - - - - 0x008CEA 02:8CDA: 1D B2 06  ORA ram_06B2_obj,X
C - - - - - 0x008CED 02:8CDD: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008CF0 02:8CE0: A5 0A     LDA ram_000A
C - - - - - 0x008CF2 02:8CE2: 18        CLC
C - - - - - 0x008CF3 02:8CE3: 7D 78 07  ADC ram_0778_unk,X
C - - - - - 0x008CF6 02:8CE6: 4C 13 8C  JMP loc_8C13
bra_8CE9:
C - - - - - 0x008CF9 02:8CE9: A5 29     LDA ram_0029
C - - - - - 0x008CFB 02:8CEB: 29 70     AND #$70
C - - - - - 0x008CFD 02:8CED: 1D B2 06  ORA ram_06B2_obj,X
loc_8CF0:
C D 0 - - - 0x008D00 02:8CF0: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008D03 02:8CF3: 38        SEC
C - - - - - 0x008D04 02:8CF4: 60        RTS



ofs_017_8CF5_33:
C - - J - - 0x008D05 02:8CF5: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008D08 02:8CF8: 30 0A     BMI bra_8D04
C - - - - - 0x008D0A 02:8CFA: 09 80     ORA #$80
C - - - - - 0x008D0C 02:8CFC: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x008D0F 02:8CFF: A5 0A     LDA ram_000A
C - - - - - 0x008D11 02:8D01: 9D 9C 06  STA ram_069C_obj,X
bra_8D04:
C - - - - - 0x008D14 02:8D04: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x008D17 02:8D07: F0 15     BEQ bra_8D1E
C - - - - - 0x008D19 02:8D09: A9 00     LDA #$00
C - - - - - 0x008D1B 02:8D0B: 85 01     STA ram_0001
C - - - - - 0x008D1D 02:8D0D: A9 40     LDA #$40
C - - - - - 0x008D1F 02:8D0F: 85 00     STA ram_0000
C - - - - - 0x008D21 02:8D11: 20 7A 99  JSR sub_997A
C - - - - - 0x008D24 02:8D14: 18        CLC
C - - - - - 0x008D25 02:8D15: 60        RTS



ofs_017_8D16_41:
C - - J - - 0x008D26 02:8D16: 20 F2 95  JSR sub_95F2
C - - - - - 0x008D29 02:8D19: A9 07     LDA #$07
C - - - - - 0x008D2B 02:8D1B: 20 BB 90  JSR sub_90BB
bra_8D1E:
C - - - - - 0x008D2E 02:8D1E: 38        SEC
C - - - - - 0x008D2F 02:8D1F: 60        RTS



ofs_017_8D20_5B:
C - - J - - 0x008D30 02:8D20: A5 60     LDA ram_0060
C - - - - - 0x008D32 02:8D22: C9 02     CMP #$02
C - - - - - 0x008D34 02:8D24: D0 06     BNE bra_8D2C
C - - - - - 0x008D36 02:8D26: A5 61     LDA ram_0061
C - - - - - 0x008D38 02:8D28: C9 C0     CMP #$C0
C - - - - - 0x008D3A 02:8D2A: 90 28     BCC bra_8D54
bra_8D2C:
C - - - - - 0x008D3C 02:8D2C: 20 64 8D  JSR sub_8D64
C - - - - - 0x008D3F 02:8D2F: B0 23     BCS bra_8D54
C - - - - - 0x008D41 02:8D31: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x008D44 02:8D34: 29 03     AND #$03
C - - - - - 0x008D46 02:8D36: A8        TAY
C - - - - - 0x008D47 02:8D37: B9 7D 8D  LDA tbl_8D7D,Y
C - - - - - 0x008D4A 02:8D3A: 18        CLC
C - - - - - 0x008D4B 02:8D3B: 7D 8C 07  ADC ram_078C_unk,X
C - - - - - 0x008D4E 02:8D3E: 85 00     STA ram_0000
C - - - - - 0x008D50 02:8D40: 6A        ROR
C - - - - - 0x008D51 02:8D41: 59 7D 8D  EOR tbl_8D7D,Y
C - - - - - 0x008D54 02:8D44: 5D B4 07  EOR ram_07B4_unk,X
C - - - - - 0x008D57 02:8D47: 2A        ROL
C - - - - - 0x008D58 02:8D48: B0 0F     BCS bra_8D59
C - - - - - 0x008D5A 02:8D4A: A5 00     LDA ram_0000
C - - - - - 0x008D5C 02:8D4C: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008D5F 02:8D4F: 20 59 8D  JSR sub_8D59
C - - - - - 0x008D62 02:8D52: 38        SEC
C - - - - - 0x008D63 02:8D53: 60        RTS
bra_8D54:
C - - - - - 0x008D64 02:8D54: 20 17 9A  JSR sub_9A17
C - - - - - 0x008D67 02:8D57: 38        SEC
C - - - - - 0x008D68 02:8D58: 60        RTS
bra_8D59:
sub_8D59:
C - - - - - 0x008D69 02:8D59: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x008D6C 02:8D5C: 18        CLC
C - - - - - 0x008D6D 02:8D5D: 69 01     ADC #$01
C - - - - - 0x008D6F 02:8D5F: 29 03     AND #$03
C - - - - - 0x008D71 02:8D61: 4C C4 8D  JMP loc_8DC4



sub_8D64:
C - - - - - 0x008D74 02:8D64: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x008D77 02:8D67: 29 0F     AND #$0F
C - - - - - 0x008D79 02:8D69: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x008D7C 02:8D6C: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008D7F 02:8D6F: 48        PHA
C - - - - - 0x008D80 02:8D70: 20 81 8D  JSR sub_8D81
C - - - - - 0x008D83 02:8D73: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008D86 02:8D76: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x008D89 02:8D79: 68        PLA
C - - - - - 0x008D8A 02:8D7A: 4C 2C 8F  JMP loc_8F2C



tbl_8D7D:
- D 0 - - - 0x008D8D 02:8D7D: C0        .byte $C0   ; 00 
- D 0 - - - 0x008D8E 02:8D7E: 00        .byte $00   ; 01 
- D 0 - - - 0x008D8F 02:8D7F: 40        .byte $40   ; 02 
- D 0 - - - 0x008D90 02:8D80: 7F        .byte $7F   ; 03 



sub_8D81:
sub_0x008D91:
C - - - - - 0x008D91 02:8D81: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x008D94 02:8D84: 38        SEC
C - - - - - 0x008D95 02:8D85: E5 64     SBC ram_0064
C - - - - - 0x008D97 02:8D87: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x008D9A 02:8D8A: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x008D9D 02:8D8D: E5 63     SBC ram_0063
C - - - - - 0x008D9F 02:8D8F: F0 17     BEQ bra_8DA8
C - - - - - 0x008DA1 02:8D91: BD 68 06  LDA ram_obj_pos_Y,X
loc_8D94:
C D 0 - - - 0x008DA4 02:8D94: 18        CLC
C - - - - - 0x008DA5 02:8D95: 69 08     ADC #$08
C - - - - - 0x008DA7 02:8D97: C9 10     CMP #$10
C - - - - - 0x008DA9 02:8D99: B0 06     BCS bra_8DA1_RTS
C - - - - - 0x008DAB 02:8D9B: A9 88     LDA #$88
C - - - - - 0x008DAD 02:8D9D: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x008DB0 02:8DA0: 18        CLC
bra_8DA1_RTS:
C - - - - - 0x008DB1 02:8DA1: 60        RTS
bra_8DA2:
C - - - - - 0x008DB2 02:8DA2: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008DB5 02:8DA5: 4C 94 8D  JMP loc_8D94
bra_8DA8:
C - - - - - 0x008DB8 02:8DA8: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x008DBB 02:8DAB: 38        SEC
C - - - - - 0x008DBC 02:8DAC: E5 61     SBC ram_0061
C - - - - - 0x008DBE 02:8DAE: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008DC1 02:8DB1: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x008DC4 02:8DB4: E5 60     SBC ram_0060
C - - - - - 0x008DC6 02:8DB6: F0 0F     BEQ bra_8DC7
C - - - - - 0x008DC8 02:8DB8: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x008DCB 02:8DBB: C9 25     CMP #$25
C - - - - - 0x008DCD 02:8DBD: D0 E3     BNE bra_8DA2
C - - - - - 0x008DCF 02:8DBF: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x008DD2 02:8DC2: 09 80     ORA #$80
loc_8DC4:
C D 0 - - - 0x008DD4 02:8DC4: 9D B4 07  STA ram_07B4_unk,X
bra_8DC7:
C - - - - - 0x008DD7 02:8DC7: 18        CLC
C - - - - - 0x008DD8 02:8DC8: 60        RTS



sub_0x008DD9_009F_AND_7F_TAY_DEY:
C - - - - - 0x008DD9 02:8DC9: A5 9F     LDA ram_009F
C - - - - - 0x008DDB 02:8DCB: 29 7F     AND #$7F
C - - - - - 0x008DDD 02:8DCD: A8        TAY
C - - - - - 0x008DDE 02:8DCE: 88        DEY
bra_8DCF_RTS:
C - - - - - 0x008DDF 02:8DCF: 60        RTS



sub_0x008DE0:
C - - - - - 0x008DE0 02:8DD0: A9 00     LDA #$00
C - - - - - 0x008DE2 02:8DD2: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x008DE5 02:8DD5: 84 91     STY ram_0091
C - - - - - 0x008DE7 02:8DD7: 20 DC 90  JSR sub_90DC
C - - - - - 0x008DEA 02:8DDA: 48        PHA
C - - - - - 0x008DEB 02:8DDB: A5 02     LDA ram_0002
C - - - - - 0x008DED 02:8DDD: 48        PHA
C - - - - - 0x008DEE 02:8DDE: A9 00     LDA #$00
C - - - - - 0x008DF0 02:8DE0: 20 0E FC  JSR sub_0x01FC1E
C - - - - - 0x008DF3 02:8DE3: 68        PLA
C - - - - - 0x008DF4 02:8DE4: A8        TAY
C - - - - - 0x008DF5 02:8DE5: 68        PLA
C - - - - - 0x008DF6 02:8DE6: 99 00 04  STA ram_0400,Y
bra_8DE9_RTS:
C - - - - - 0x008DF9 02:8DE9: 60        RTS



ofs_016_8DEA_1B:
C - - J - - 0x008DFA 02:8DEA: 20 1F 8E  JSR sub_8E1F
C - - - - - 0x008DFD 02:8DED: A5 D0     LDA ram_00D0
C - - - - - 0x008DFF 02:8DEF: C9 08     CMP #$08
C - - - - - 0x008E01 02:8DF1: D0 1D     BNE bra_8E10
C - - - - - 0x008E03 02:8DF3: A5 A4     LDA ram_00A4
C - - - - - 0x008E05 02:8DF5: C9 F0     CMP #$F0
C - - - - - 0x008E07 02:8DF7: D0 08     BNE bra_8E01
C - - - - - 0x008E09 02:8DF9: A5 B0     LDA ram_00B0
C - - - - - 0x008E0B 02:8DFB: D0 13     BNE bra_8E10
C - - - - - 0x008E0D 02:8DFD: A9 FF     LDA #$FF
C - - - - - 0x008E0F 02:8DFF: D0 06     BNE bra_8E07    ; jmp
bra_8E01:
C - - - - - 0x008E11 02:8E01: C9 FE     CMP #$FE
C - - - - - 0x008E13 02:8E03: D0 0B     BNE bra_8E10
C - - - - - 0x008E15 02:8E05: A9 FD     LDA #$FD
bra_8E07:
C - - - - - 0x008E17 02:8E07: 85 01     STA ram_0001
C - - - - - 0x008E19 02:8E09: A9 00     LDA #$00
C - - - - - 0x008E1B 02:8E0B: 85 00     STA ram_0000
C - - - - - 0x008E1D 02:8E0D: 20 B2 98  JSR sub_98B2
bra_8E10:
sub_8E10:
loc_8E10:
loc_0x008E20:
sub_0x008E20:
C D 0 - - - 0x008E20 02:8E10: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x008E23 02:8E13: 29 7F     AND #$7F
C - - - - - 0x008E25 02:8E15: C9 08     CMP #$08
C - - - - - 0x008E27 02:8E17: F0 D0     BEQ bra_8DE9_RTS
sub_0x008E29:
C - - - - - 0x008E29 02:8E19: 20 52 9F  JSR sub_9F52
C - - - - - 0x008E2C 02:8E1C: 4C 98 98  JMP loc_9898



sub_8E1F:
C - - - - - 0x008E2F 02:8E1F: A9 06     LDA #$06
C - - - - - 0x008E31 02:8E21: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x008E34 02:8E24: A9 3C     LDA #$3C
C - - - - - 0x008E36 02:8E26: 20 A1 89  JSR sub_89A1
C - - - - - 0x008E39 02:8E29: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008E3C 02:8E2C: C9 40     CMP #$40
C - - - - - 0x008E3E 02:8E2E: B0 04     BCS bra_8E34
C - - - - - 0x008E40 02:8E30: A4 D0     LDY ram_00D0
C - - - - - 0x008E42 02:8E32: F0 12     BEQ bra_8E46
bra_8E34:
C - - - - - 0x008E44 02:8E34: A9 10     LDA #$10
C - - - - - 0x008E46 02:8E36: A8        TAY
C - - - - - 0x008E47 02:8E37: 20 4B 90  JSR sub_904B
C - - - - - 0x008E4A 02:8E3A: B0 93     BCS bra_8DCF_RTS
C - - - - - 0x008E4C 02:8E3C: A5 D0     LDA ram_00D0
C - - - - - 0x008E4E 02:8E3E: C9 06     CMP #$06
C - - - - - 0x008E50 02:8E40: 90 8D     BCC bra_8DCF_RTS
C - - - - - 0x008E52 02:8E42: 09 80     ORA #$80
C - - - - - 0x008E54 02:8E44: 85 D0     STA ram_00D0
bra_8E46:
C - - - - - 0x008E56 02:8E46: 4C 3A 97  JMP loc_973A



ofs_016_8E49_0F:
C - - J - - 0x008E59 02:8E49: 20 A4 B2  JSR sub_0x00B2B4
C - - - - - 0x008E5C 02:8E4C: 4C 10 8E  JMP loc_8E10



bra_8E4F:
C - - - - - 0x008E5F 02:8E4F: 4C 67 BD  JMP loc_0x005D77



ofs_016_8E52_19:
C - - J - - 0x008E62 02:8E52: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008E65 02:8E55: D0 11     BNE bra_8E68
C - - - - - 0x008E67 02:8E57: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008E6A 02:8E5A: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x008E6D 02:8E5D: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x008E70 02:8E60: 20 C8 90  JSR sub_90C8_0600x_write_08
C - - - - - 0x008E73 02:8E63: A9 11     LDA #$11
C - - - - - 0x008E75 02:8E65: 9D 20 07  STA ram_0720_obj,X
bra_8E68:
C - - - - - 0x008E78 02:8E68: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x008E7B 02:8E6B: D0 E2     BNE bra_8E4F
C - - - - - 0x008E7D 02:8E6D: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x008E80 02:8E70: 29 20     AND #$20
C - - - - - 0x008E82 02:8E72: F0 0E     BEQ bra_8E82
C - - - - - 0x008E84 02:8E74: 20 BA 93  JSR sub_93BA
C - - - - - 0x008E87 02:8E77: B0 08     BCS bra_8E81_RTS
C - - - - - 0x008E89 02:8E79: A0 01     LDY #$01
C - - - - - 0x008E8B 02:8E7B: 20 33 8F  JSR sub_8F33
C - - - - - 0x008E8E 02:8E7E: 4C 17 9A  JMP loc_9A17
bra_8E81_RTS:
C - - - - - 0x008E91 02:8E81: 60        RTS
bra_8E82:
C - - - - - 0x008E92 02:8E82: 20 33 BD  JSR sub_0x005D43
C - - - - - 0x008E95 02:8E85: 98        TYA
C - - - - - 0x008E96 02:8E86: C5 9B     CMP ram_009B
C - - - - - 0x008E98 02:8E88: F0 05     BEQ bra_8E8F
C - - - - - 0x008E9A 02:8E8A: A9 00     LDA #$00
C - - - - - 0x008E9C 02:8E8C: 9D 68 06  STA ram_obj_pos_Y,X
bra_8E8F:
C - - - - - 0x008E9F 02:8E8F: 84 9B     STY ram_009B
C - - - - - 0x008EA1 02:8E91: 98        TYA
C - - - - - 0x008EA2 02:8E92: 49 01     EOR #$01
C - - - - - 0x008EA4 02:8E94: A8        TAY
C - - - - - 0x008EA5 02:8E95: 84 91     STY ram_0091
C - - - - - 0x008EA7 02:8E97: A0 00     LDY #$00
C - - - - - 0x008EA9 02:8E99: 20 D6 90  JSR sub_90D6_0600x_AND_F0
C - - - - - 0x008EAC 02:8E9C: F0 02     BEQ bra_8EA0
- - - - - - 0x008EAE 02:8E9E: A0 80     LDY #$80
bra_8EA0:
C - - - - - 0x008EB0 02:8EA0: 84 0C     STY ram_000C
C - - - - - 0x008EB2 02:8EA2: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x008EB5 02:8EA5: A4 91     LDY ram_0091
C - - - - - 0x008EB7 02:8EA7: 18        CLC
C - - - - - 0x008EB8 02:8EA8: 79 B3 8F  ADC tbl_8FB3,Y
C - - - - - 0x008EBB 02:8EAB: 6A        ROR
C - - - - - 0x008EBC 02:8EAC: 45 0C     EOR ram_000C
C - - - - - 0x008EBE 02:8EAE: 2A        ROL
C - - - - - 0x008EBF 02:8EAF: B0 05     BCS bra_8EB6
C - - - - - 0x008EC1 02:8EB1: A4 91     LDY ram_0091
C - - - - - 0x008EC3 02:8EB3: 20 33 8F  JSR sub_8F33
bra_8EB6:
C - - - - - 0x008EC6 02:8EB6: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008EC9 02:8EB9: 85 91     STA ram_0091
C - - - - - 0x008ECB 02:8EBB: A4 9B     LDY ram_009B
C - - - - - 0x008ECD 02:8EBD: B9 B3 8F  LDA tbl_8FB3,Y
C - - - - - 0x008ED0 02:8EC0: 18        CLC
C - - - - - 0x008ED1 02:8EC1: 7D BE 07  ADC ram_07BE_unk,X
C - - - - - 0x008ED4 02:8EC4: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008ED7 02:8EC7: B0 4A     BCS bra_8F13
C - - - - - 0x008ED9 02:8EC9: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008EDC 02:8ECC: F0 05     BEQ bra_8ED3
C - - - - - 0x008EDE 02:8ECE: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x008EE1 02:8ED1: D0 40     BNE bra_8F13
bra_8ED3:
C - - - - - 0x008EE3 02:8ED3: A9 00     LDA #$00
C - - - - - 0x008EE5 02:8ED5: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x008EE8 02:8ED8: 20 BA 93  JSR sub_93BA
C - - - - - 0x008EEB 02:8EDB: B0 36     BCS bra_8F13
C - - - - - 0x008EED 02:8EDD: A9 40     LDA #$40
C - - - - - 0x008EEF 02:8EDF: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x008EF2 02:8EE2: A9 81     LDA #$81
C - - - - - 0x008EF4 02:8EE4: A0 06     LDY #$06
C - - - - - 0x008EF6 02:8EE6: 20 D8 93  JSR sub_93D8
C - - - - - 0x008EF9 02:8EE9: B0 11     BCS bra_8EFC
C - - - - - 0x008EFB 02:8EEB: A9 00     LDA #$00
C - - - - - 0x008EFD 02:8EED: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x008F00 02:8EF0: A5 9B     LDA ram_009B
C - - - - - 0x008F02 02:8EF2: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x008F05 02:8EF5: 20 31 8F  JSR sub_8F31
C - - - - - 0x008F08 02:8EF8: A9 00     LDA #$00
C - - - - - 0x008F0A 02:8EFA: 85 91     STA ram_0091
bra_8EFC:
C - - - - - 0x008F0C 02:8EFC: A0 06     LDY #$06
C - - - - - 0x008F0E 02:8EFE: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x008F11 02:8F01: C9 B8     CMP #$B8
C - - - - - 0x008F13 02:8F03: 90 0E     BCC bra_8F13
C - - - - - 0x008F15 02:8F05: B9 A0 07  LDA ram_07A0_unk,Y
C - - - - - 0x008F18 02:8F08: A8        TAY
C - - - - - 0x008F19 02:8F09: B9 B5 8F  LDA tbl_8FB5,Y
C - - - - - 0x008F1C 02:8F0C: 20 36 8F  JSR sub_8F36
C - - - - - 0x008F1F 02:8F0F: A9 92     LDA #$92
C - - - - - 0x008F21 02:8F11: 85 91     STA ram_0091
bra_8F13:
C - - - - - 0x008F23 02:8F13: A5 91     LDA ram_0091
C - - - - - 0x008F25 02:8F15: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x008F28 02:8F18: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008F2B 02:8F1B: 48        PHA
C - - - - - 0x008F2C 02:8F1C: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x008F2F 02:8F1F: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008F32 02:8F22: 20 10 8E  JSR sub_8E10
C - - - - - 0x008F35 02:8F25: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008F38 02:8F28: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x008F3B 02:8F2B: 68        PLA
loc_8F2C:
C D 0 - - - 0x008F3C 02:8F2C: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008F3F 02:8F2F: 18        CLC
C - - - - - 0x008F40 02:8F30: 60        RTS



sub_8F31:
C - - - - - 0x008F41 02:8F31: A4 9B     LDY ram_009B
sub_8F33:
C - - - - - 0x008F43 02:8F33: B9 B7 8F  LDA tbl_8FB7_index,Y
sub_8F36:
C - - - - - 0x008F46 02:8F36: A8        TAY
sub_0x008F47:
loc_0x008F47:
C D 0 - - - 0x008F47 02:8F37: B9 57 8F  LDA tbl_8F57,Y
C - - - - - 0x008F4A 02:8F3A: 85 02     STA ram_0002
C - - - - - 0x008F4C 02:8F3C: C8        INY
C - - - - - 0x008F4D 02:8F3D: B9 57 8F  LDA tbl_8F57,Y
C - - - - - 0x008F50 02:8F40: 85 03     STA ram_0003
C - - - - - 0x008F52 02:8F42: C8        INY
C - - - - - 0x008F53 02:8F43: B9 57 8F  LDA tbl_8F57,Y
C - - - - - 0x008F56 02:8F46: 85 06     STA ram_0006
C - - - - - 0x008F58 02:8F48: C8        INY
C - - - - - 0x008F59 02:8F49: B9 57 8F  LDA tbl_8F57,Y
C - - - - - 0x008F5C 02:8F4C: 85 07     STA ram_0007
C - - - - - 0x008F5E 02:8F4E: C8        INY
C - - - - - 0x008F5F 02:8F4F: 98        TYA
C - - - - - 0x008F60 02:8F50: 48        PHA
C - - - - - 0x008F61 02:8F51: 20 92 87  JSR sub_8792
C - - - - - 0x008F64 02:8F54: 68        PLA
C - - - - - 0x008F65 02:8F55: A8        TAY
C - - - - - 0x008F66 02:8F56: 60        RTS



tbl_8F57:
; see con_8F57
- D 0 - - - 0x008F67 02:8F57: 1A AB     .word _off026_0x016B2A_00
- D 0 - - - 0x008F69 02:8F59: 06 22     .word $2206 ; 

- D 0 - - - 0x008F6B 02:8F5B: 10 AB     .word _off026_0x016B20_04
- D 0 - - - 0x008F6D 02:8F5D: 06 22     .word $2206 ; 

- D 0 - - - 0x008F6F 02:8F5F: 1A AB     .word _off026_0x016B2A_08
- D 0 - - - 0x008F71 02:8F61: 16 22     .word $2216 ; 

- D 0 - - - 0x008F73 02:8F63: 10 AB     .word _off026_0x016B20_0C
- D 0 - - - 0x008F75 02:8F65: 16 22     .word $2216 ; 

- D 0 - - - 0x008F77 02:8F67: DC AC     .word _off026_0x016CEC_10
- D 0 - - - 0x008F79 02:8F69: 0A 2D     .word $2D0A ; 

- D 0 - - - 0x008F7B 02:8F6B: E2 AC     .word _off026_0x016CF2_14
- D 0 - - - 0x008F7D 02:8F6D: 0A 2D     .word $2D0A ; 

- D 0 - - - 0x008F7F 02:8F6F: C8 AC     .word _off026_0x016CD8_18
- D 0 - - - 0x008F81 02:8F71: D0 2E     .word $2ED0 ; 

- D 0 - - - 0x008F83 02:8F73: D2 AC     .word _off026_0x016CE2_1C
- D 0 - - - 0x008F85 02:8F75: D0 2E     .word $2ED0 ; 

- D 0 - - - 0x008F87 02:8F77: C8 AC     .word _off026_0x016CD8_20
- D 0 - - - 0x008F89 02:8F79: D8 2E     .word $2ED8 ; 

- D 0 - - - 0x008F8B 02:8F7B: D2 AC     .word _off026_0x016CE2_24
- D 0 - - - 0x008F8D 02:8F7D: D8 2E     .word $2ED8 ; 

- - - - - - 0x008F8F 02:8F7F: E8 AC     .word _off026_0x016CF8_28
- - - - - - 0x008F91 02:8F81: 0E 27     .word $270E ; 

- D 0 - - - 0x008F93 02:8F83: F6 AC     .word _off026_0x016D06_2C
- D 0 - - - 0x008F95 02:8F85: 0E 27     .word $270E ; 

- D 0 - - - 0x008F97 02:8F87: 04 AD     .word _off026_0x016D14_30
- D 0 - - - 0x008F99 02:8F89: 0E 27     .word $270E ; 

- D 0 - - - 0x008F9B 02:8F8B: 12 AD     .word _off026_0x016D22_34
- D 0 - - - 0x008F9D 02:8F8D: 0E 27     .word $270E ; 

- - - - - - 0x008F9F 02:8F8F: 20 AD     .word _off026_0x016D30_38
- - - - - - 0x008FA1 02:8F91: 0E 27     .word $270E ; 

- D 0 - - - 0x008FA3 02:8F93: 2E AD     .word _off026_0x016D3E_3C
- D 0 - - - 0x008FA5 02:8F95: 84 26     .word $2684 ; 

- D 0 - - - 0x008FA7 02:8F97: 34 AD     .word _off026_0x016D44_40
- D 0 - - - 0x008FA9 02:8F99: 68 26     .word $2668 ; 

- D 0 - - - 0x008FAB 02:8F9B: 3C AD     .word _off026_0x016D4C_44
- D 0 - - - 0x008FAD 02:8F9D: 76 26     .word $2676 ; 

- D 0 - - - 0x008FAF 02:8F9F: 44 AD     .word _off026_0x016D54_48
- D 0 - - - 0x008FB1 02:8FA1: 9A 26     .word $269A ; 

- D 0 - - - 0x008FB3 02:8FA3: 4A AD     .word _off026_0x016D5A_4C
- D 0 - - - 0x008FB5 02:8FA5: 0E 27     .word $270E ; 

- D 0 - - - 0x008FB7 02:8FA7: 58 AD     .word _off026_0x016D68_50
- D 0 - - - 0x008FB9 02:8FA9: 6B 26     .word $266B ; 

- D 0 - - - 0x008FBB 02:8FAB: 60 AD     .word _off026_0x016D70_54
- D 0 - - - 0x008FBD 02:8FAD: 73 26     .word $2673 ; 

- D 0 - - - 0x008FBF 02:8FAF: 68 AD     .word _off026_0x016D78_58
- D 0 - - - 0x008FC1 02:8FB1: 8E 26     .word $268E ; 



tbl_8FB3:
- D 0 - - - 0x008FC3 02:8FB3: 00        .byte $00   ; 00 
- D 0 - - - 0x008FC4 02:8FB4: 7E        .byte $7E   ; 01 



tbl_8FB5:
- D 0 - - - 0x008FC5 02:8FB5: 04        .byte con_8F57_04   ; 00 
- D 0 - - - 0x008FC6 02:8FB6: 0C        .byte con_8F57_0C   ; 01 



tbl_8FB7_index:
- D 0 - - - 0x008FC7 02:8FB7: 00        .byte con_8F57_00   ; 00 
- D 0 - - - 0x008FC8 02:8FB8: 08        .byte con_8F57_08   ; 01 



sub_8FB9:
sub_0x008FC9:
C - - - - - 0x008FC9 02:8FB9: A9 00     LDA #$00
C - - - - - 0x008FCB 02:8FBB: A8        TAY
sub_8FBC:
; A = 00, Y = 08/18
sub_0x008FCC:
; A = 10, Y = 10
loc_0x008FCC:
; A = 00, Y = 10
; A = F0, Y = 00
C D 0 - - - 0x008FCC 02:8FBC: 85 00     STA ram_0000
C - - - - - 0x008FCE 02:8FBE: 84 01     STY ram_0001
sub_0x008FD0:
loc_0x008FD0:
C D 0 - - - 0x008FD0 02:8FC0: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008FD3 02:8FC3: 18        CLC
C - - - - - 0x008FD4 02:8FC4: 65 00     ADC ram_0000
C - - - - - 0x008FD6 02:8FC6: 85 00     STA ram_0000
C - - - - - 0x008FD8 02:8FC8: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008FDB 02:8FCB: 18        CLC
C - - - - - 0x008FDC 02:8FCC: 65 01     ADC ram_0001
C - - - - - 0x008FDE 02:8FCE: 85 01     STA ram_0001
C - - - - - 0x008FE0 02:8FD0: A9 00     LDA #con_F3D6_00
C - - - - - 0x008FE2 02:8FD2: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x008FE5 02:8FD5: A5 01     LDA ram_0001
C - - - - - 0x008FE7 02:8FD7: F0 08     BEQ bra_8FE1
C - - - - - 0x008FE9 02:8FD9: C9 08     CMP #$08
C - - - - - 0x008FEB 02:8FDB: F0 04     BEQ bra_8FE1
C - - - - - 0x008FED 02:8FDD: C9 06     CMP #$06
C - - - - - 0x008FEF 02:8FDF: D0 10     BNE bra_8FF1
bra_8FE1:
C - - - - - 0x008FF1 02:8FE1: 38        SEC
C - - - - - 0x008FF2 02:8FE2: 60        RTS



sub_0x008FF3:
ofs_017_8FE3_57:
C - - - - - 0x008FF3 02:8FE3: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x008FF6 02:8FE6: 29 FC     AND #$FC
C - - - - - 0x008FF8 02:8FE8: D0 09     BNE bra_8FF3
C - - - - - 0x008FFA 02:8FEA: BD 62 07  LDA ram_0762_obj,X
C - - - - - 0x008FFD 02:8FED: 29 03     AND #$03
C - - - - - 0x008FFF 02:8FEF: D0 02     BNE bra_8FF3
bra_8FF1:
C - - - - - 0x009001 02:8FF1: 18        CLC
C - - - - - 0x009002 02:8FF2: 60        RTS
bra_8FF3:
sub_0x009003:
C - - - - - 0x009003 02:8FF3: A0 00     LDY #$00
C - - - - - 0x009005 02:8FF5: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x009008 02:8FF8: 29 3C     AND #$3C
C - - - - - 0x00900A 02:8FFA: D0 01     BNE bra_8FFD
- - - - - - 0x00900C 02:8FFC: C8        INY
bra_8FFD:
C - - - - - 0x00900D 02:8FFD: 98        TYA
C - - - - - 0x00900E 02:8FFE: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x009011 02:9001: 38        SEC
C - - - - - 0x009012 02:9002: 60        RTS



sub_9003:
sub_0x009013:
C - - - - - 0x009013 02:9003: BD 36 07  LDA ram_0736_obj,X
loc_9006:
C D 0 - - - 0x009016 02:9006: 29 03     AND #$03
C - - - - - 0x009018 02:9008: D0 D7     BNE bra_8FE1
C - - - - - 0x00901A 02:900A: 18        CLC
C - - - - - 0x00901B 02:900B: 60        RTS



sub_0x00901C:
C - - - - - 0x00901C 02:900C: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00901F 02:900F: 29 FC     AND #$FC
C - - - - - 0x009021 02:9011: D0 CE     BNE bra_8FE1
C - - - - - 0x009023 02:9013: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x009026 02:9016: 4C 06 90  JMP loc_9006


; bzk garbage
- - - - - - 0x009029 02:9019: BD 36 07  LDA ram_0736_obj,X
- - - - - - 0x00902C 02:901C: 29 FC     AND #$FC
- - - - - - 0x00902E 02:901E: 85 00     STA ram_0000
- - - - - - 0x009030 02:9020: BD 4C 07  LDA ram_074C_obj,X
- - - - - - 0x009033 02:9023: 29 03     AND #$03
- - - - - - 0x009035 02:9025: 05 00     ORA ram_0000
- - - - - - 0x009037 02:9027: 85 00     STA ram_0000
- - - - - - 0x009039 02:9029: A0 00     LDY #$00
bra_902B_loop:
- - - - - - 0x00903B 02:902B: 46 00     LSR ram_0000
- - - - - - 0x00903D 02:902D: 90 0D     BCC bra_903C
- - - - - - 0x00903F 02:902F: 84 01     STY ram_0001
- - - - - - 0x009041 02:9031: B9 43 90  LDA tbl_9043,Y
- - - - - - 0x009044 02:9034: A8        TAY
- - - - - - 0x009045 02:9035: B9 82 07  LDA ram_0782_unk,Y
- - - - - - 0x009048 02:9038: 30 A7     BMI bra_8FE1
- - - - - - 0x00904A 02:903A: A4 01     LDY ram_0001
bra_903C:
- - - - - - 0x00904C 02:903C: C8        INY
- - - - - - 0x00904D 02:903D: C0 08     CPY #$08
- - - - - - 0x00904F 02:903F: 90 EA     BCC bra_902B_loop
- - - - - - 0x009051 02:9041: 18        CLC
- - - - - - 0x009052 02:9042: 60        RTS


; bzk garbage
tbl_9043:
- - - - - - 0x009053 02:9043: 08        .byte $08   ; 00 
- - - - - - 0x009054 02:9044: 09        .byte $09   ; 01 
- - - - - - 0x009055 02:9045: 02        .byte $02   ; 02 
- - - - - - 0x009056 02:9046: 03        .byte $03   ; 03 
- - - - - - 0x009057 02:9047: 04        .byte $04   ; 04 
- - - - - - 0x009058 02:9048: 05        .byte $05   ; 05 
- - - - - - 0x009059 02:9049: 06        .byte $06   ; 06 
- - - - - - 0x00905A 02:904A: 07        .byte $07   ; 07 



sub_904B:
sub_0x00905B:
C - - - - - 0x00905B 02:904B: 85 00     STA ram_0000
C - - - - - 0x00905D 02:904D: 84 01     STY ram_0001
C - - - - - 0x00905F 02:904F: A0 0A     LDY #$0A
bra_9051_loop:
C - - - - - 0x009061 02:9051: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x009064 02:9054: F0 0E     BEQ bra_9064
C - - - - - 0x009066 02:9056: 20 F4 94  JSR sub_94F4
C - - - - - 0x009069 02:9059: C5 00     CMP ram_0000
C - - - - - 0x00906B 02:905B: B0 07     BCS bra_9064
C - - - - - 0x00906D 02:905D: 20 FE 94  JSR sub_94FE
C - - - - - 0x009070 02:9060: C5 01     CMP ram_0001
C - - - - - 0x009072 02:9062: 90 07     BCC bra_906B
bra_9064:
C - - - - - 0x009074 02:9064: C8        INY
C - - - - - 0x009075 02:9065: C0 16     CPY #$16
C - - - - - 0x009077 02:9067: 90 E8     BCC bra_9051_loop
bra_9069:
C - - - - - 0x009079 02:9069: 38        SEC
C - - - - - 0x00907A 02:906A: 60        RTS
bra_906B:
C - - - - - 0x00907B 02:906B: 20 C5 94  JSR sub_94C5
C - - - - - 0x00907E 02:906E: 18        CLC
C - - - - - 0x00907F 02:906F: 60        RTS



sub_0x009080:
C - - - - - 0x009080 02:9070: A6 75     LDX ram_stage
C - - - - - 0x009082 02:9072: E0 02     CPX #$02
C - - - - - 0x009084 02:9074: B0 07     BCS bra_907D
C - - - - - 0x009086 02:9076: 65 26     ADC ram_buffer_index
C - - - - - 0x009088 02:9078: AA        TAX
C - - - - - 0x009089 02:9079: BD 00 01  LDA ram_ppu_buffer_1,X
C - - - - - 0x00908C 02:907C: 60        RTS
bra_907D:
C - - - - - 0x00908D 02:907D: 18        CLC
C - - - - - 0x00908E 02:907E: 65 39     ADC ram_buffer_index_2
C - - - - - 0x009090 02:9080: AA        TAX
C - - - - - 0x009091 02:9081: BD 60 01  LDA ram_ppu_buffer_2,X
C - - - - - 0x009094 02:9084: 60        RTS



sub_0x009095:
C - - - - - 0x009095 02:9085: 85 00     STA ram_0000
C - - - - - 0x009097 02:9087: 20 9A 90  JSR sub_909A
C - - - - - 0x00909A 02:908A: 90 DD     BCC bra_9069
C - - - - - 0x00909C 02:908C: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00909F 02:908F: C9 C8     CMP #$C8
C - - - - - 0x0090A1 02:9091: B0 D6     BCS bra_9069
C - - - - - 0x0090A3 02:9093: A5 00     LDA ram_0000
C - - - - - 0x0090A5 02:9095: 20 0E FC  JSR sub_0x01FC1E
C - - - - - 0x0090A8 02:9098: 18        CLC
C - - - - - 0x0090A9 02:9099: 60        RTS



sub_909A:
sub_0x0090AA:
C - - - - - 0x0090AA 02:909A: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x0090AD 02:909D: 18        CLC
C - - - - - 0x0090AE 02:909E: 69 20     ADC #$20
C - - - - - 0x0090B0 02:90A0: C9 40     CMP #$40
C - - - - - 0x0090B2 02:90A2: 60        RTS



sub_0x0090B3:
loc_0x0090B3:
C D 0 - - - 0x0090B3 02:90A3: A4 75     LDY ram_stage
C - - - - - 0x0090B5 02:90A5: C0 02     CPY #$02
C - - - - - 0x0090B7 02:90A7: B0 09     BCS bra_90B2
C - - - - - 0x0090B9 02:90A9: A4 26     LDY ram_buffer_index
C - - - - - 0x0090BB 02:90AB: 99 00 01  STA ram_ppu_buffer_1,Y
C - - - - - 0x0090BE 02:90AE: C8        INY
C - - - - - 0x0090BF 02:90AF: 84 26     STY ram_buffer_index
C - - - - - 0x0090C1 02:90B1: 60        RTS
bra_90B2:
C - - - - - 0x0090C2 02:90B2: A4 39     LDY ram_buffer_index_2
C - - - - - 0x0090C4 02:90B4: 99 60 01  STA ram_ppu_buffer_2,Y
C - - - - - 0x0090C7 02:90B7: C8        INY
C - - - - - 0x0090C8 02:90B8: 84 39     STY ram_buffer_index_2
C - - - - - 0x0090CA 02:90BA: 60        RTS



sub_90BB:
C - - - - - 0x0090CB 02:90BB: 85 00     STA ram_0000
C - - - - - 0x0090CD 02:90BD: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x0090D0 02:90C0: 29 E0     AND #$E0
C - - - - - 0x0090D2 02:90C2: 05 00     ORA ram_0000
C - - - - - 0x0090D4 02:90C4: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x0090D7 02:90C7: 60        RTS



sub_90C8_0600x_write_08:
sub_0x0090D8_0600x_write_08:
loc_0x0090D8_0600x_write_08:
C D 0 - - - 0x0090D8 02:90C8: A9 08     LDA #$08
bra_90CA:
loc_90CA:
C D 0 - - - 0x0090DA 02:90CA: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x0090DD 02:90CD: 60        RTS



sub_0x0090DE_0600x_ORA_08:
C - - - - - 0x0090DE 02:90CE: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0090E1 02:90D1: 09 08     ORA #$08
C - - - - - 0x0090E3 02:90D3: 4C CA 90  JMP loc_90CA    ; bzk optimize, BNE



sub_90D6_0600x_AND_F0:
sub_0x0090E6_0600x_AND_F0:
C - - - - - 0x0090E6 02:90D6: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0090E9 02:90D9: 29 F0     AND #$F0
C - - - - - 0x0090EB 02:90DB: 60        RTS



sub_90DC:
sub_0x0090EC:
C - - - - - 0x0090EC 02:90DC: 20 B9 8F  JSR sub_8FB9
C - - - - - 0x0090EF 02:90DF: A5 00     LDA ram_0000
C - - - - - 0x0090F1 02:90E1: 60        RTS



sub_0x0090F2:
C - - - - - 0x0090F2 02:90E2: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x0090F5 02:90E5: 85 0B     STA ram_000B
C - - - - - 0x0090F7 02:90E7: 29 F0     AND #$F0
C - - - - - 0x0090F9 02:90E9: 85 0D     STA ram_000D
C - - - - - 0x0090FB 02:90EB: 20 E8 91  JSR sub_91E8
sub_0x0090FE:
C - - - - - 0x0090FE 02:90EE: 20 F5 91  JSR sub_91F5
sub_0x009101:
C - - - - - 0x009101 02:90F1: A5 6D     LDA ram_006D
C - - - - - 0x009103 02:90F3: 29 F0     AND #$F0
C - - - - - 0x009105 02:90F5: 85 6D     STA ram_006D
C - - - - - 0x009107 02:90F7: A5 0D     LDA ram_000D
C - - - - - 0x009109 02:90F9: 38        SEC
C - - - - - 0x00910A 02:90FA: E5 6D     SBC ram_006D
C - - - - - 0x00910C 02:90FC: F0 1B     BEQ bra_9119
C - - - - - 0x00910E 02:90FE: 08        PHP
C - - - - - 0x00910F 02:90FF: 26 00     ROL ram_0000
C - - - - - 0x009111 02:9101: 28        PLP
C - - - - - 0x009112 02:9102: B0 03     BCS bra_9107
C - - - - - 0x009114 02:9104: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
bra_9107:
C - - - - - 0x009117 02:9107: C9 80     CMP #$80
C - - - - - 0x009119 02:9109: 2A        ROL
C - - - - - 0x00911A 02:910A: 45 00     EOR ram_0000
C - - - - - 0x00911C 02:910C: 6A        ROR
C - - - - - 0x00911D 02:910D: A0 E0     LDY #$E0
C - - - - - 0x00911F 02:910F: B0 02     BCS bra_9113
C - - - - - 0x009121 02:9111: A0 20     LDY #$20
bra_9113:
C - - - - - 0x009123 02:9113: 98        TYA
C - - - - - 0x009124 02:9114: 18        CLC
C - - - - - 0x009125 02:9115: 65 0D     ADC ram_000D
C - - - - - 0x009127 02:9117: 85 0D     STA ram_000D
bra_9119:
C - - - - - 0x009129 02:9119: A5 0D     LDA ram_000D
C - - - - - 0x00912B 02:911B: 4C EE 95  JMP loc_95EE



sub_0x00912E:
C - - - - - 0x00912E 02:911E: 20 38 91  JSR sub_9138
C - - - - - 0x009131 02:9121: 90 0D     BCC bra_9130
C - - - - - 0x009133 02:9123: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009136 02:9126: 20 3B 91  JSR sub_913B
C - - - - - 0x009139 02:9129: 90 05     BCC bra_9130
C - - - - - 0x00913B 02:912B: 20 B9 8F  JSR sub_8FB9
C - - - - - 0x00913E 02:912E: 38        SEC
C - - - - - 0x00913F 02:912F: 60        RTS
bra_9130:
C - - - - - 0x009140 02:9130: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x009143 02:9133: 09 80     ORA #$80
C - - - - - 0x009145 02:9135: 18        CLC
C - - - - - 0x009146 02:9136: 90 92     BCC bra_90CA    ; jmp



sub_9138:
C - - - - - 0x009148 02:9138: BD 4E 06  LDA ram_obj_pos_X,X
sub_913B:
C - - - - - 0x00914B 02:913B: 18        CLC
C - - - - - 0x00914C 02:913C: 69 08     ADC #$08
C - - - - - 0x00914E 02:913E: C9 10     CMP #$10
C - - - - - 0x009150 02:9140: 60        RTS



sub_9141_0682x_and_0F:
sub_0x009151_0682x_and_0F:
C - - - - - 0x009151 02:9141: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x009154 02:9144: 29 0F     AND #$0F
C - - - - - 0x009156 02:9146: 60        RTS



sub_9147_copy_speed:
C - - - - - 0x009157 02:9147: BD C8 06  LDA ram_obj_spd_X,X
C - - - - - 0x00915A 02:914A: 99 C8 06  STA ram_obj_spd_X,Y
C - - - - - 0x00915D 02:914D: BD DE 06  LDA ram_obj_spd_Y,X
C - - - - - 0x009160 02:9150: 99 DE 06  STA ram_obj_spd_Y,Y
C - - - - - 0x009163 02:9153: 60        RTS



sub_9154_copy_position:
sub_0x009164_copy_position:
C - - - - - 0x009164 02:9154: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009167 02:9157: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00916A 02:915A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00916D 02:915D: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x009170 02:9160: 60        RTS



sub_9161:
C - - - - - 0x009171 02:9161: A9 13     LDA #$13
C - - - - - 0x009173 02:9163: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x009176 02:9166: A9 00     LDA #$00
C - - - - - 0x009178 02:9168: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x00917B 02:916B: 99 9C 06  STA ram_069C_obj,Y
C - - - - - 0x00917E 02:916E: 99 36 07  STA ram_0736_obj,Y
C - - - - - 0x009181 02:9171: 60        RTS



sub_9172_06B2x_AND_0F:
sub_0x009182_06B2x_AND_0F:
C - - - - - 0x009182 02:9172: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x009185 02:9175: 29 0F     AND #$0F
C - - - - - 0x009187 02:9177: 60        RTS



sub_9178_stage_AND_01:
sub_0x009188_stage_AND_01:
; check if stage is side view or upper view
; bzk optimize, same code as 0x01F69F
C - - - - - 0x009188 02:9178: A5 75     LDA ram_stage
C - - - - - 0x00918A 02:917A: 29 01     AND #$01
C - - - - - 0x00918C 02:917C: 60        RTS



sub_917D_06B2x_AND_F0:
sub_0x00918D_06B2x_AND_F0:
C - - - - - 0x00918D 02:917D: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x009190 02:9180: 29 F0     AND #$F0
C - - - - - 0x009192 02:9182: 60        RTS



sub_9183_0782x_AND_7F:
sub_0x009193_0782x_AND_7F:
C - - - - - 0x009193 02:9183: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x009196 02:9186: 29 7F     AND #$7F
C - - - - - 0x009198 02:9188: 60        RTS



sub_0x009199_0095_clear_bit7:
C - - - - - 0x009199 02:9189: A5 95     LDA ram_0095
C - - - - - 0x00919B 02:918B: 29 7F     AND #$7F
bra_918D:
C - - - - - 0x00919D 02:918D: 85 95     STA ram_0095
C - - - - - 0x00919F 02:918F: 60        RTS



sub_0x0091A0_0095_set_bit7:
C - - - - - 0x0091A0 02:9190: A5 95     LDA ram_0095
C - - - - - 0x0091A2 02:9192: 09 80     ORA #$80
C - - - - - 0x0091A4 02:9194: D0 F7     BNE bra_918D    ; jmp



sub_0x0091A6:
C - - - - - 0x0091A6 02:9196: E0 12     CPX #$12
C - - - - - 0x0091A8 02:9198: B0 16     BCS bra_91B0_RTS
C - - - - - 0x0091AA 02:919A: A0 00     LDY #$00
C - - - - - 0x0091AC 02:919C: 84 02     STY ram_0002
C - - - - - 0x0091AE 02:919E: 84 03     STY ram_0003
C - - - - - 0x0091B0 02:91A0: C8        INY
C - - - - - 0x0091B1 02:91A1: 84 01     STY ram_0001
C - - - - - 0x0091B3 02:91A3: A0 00     LDY #$00
C - - - - - 0x0091B5 02:91A5: E0 0E     CPX #$0E
C - - - - - 0x0091B7 02:91A7: 90 02     BCC bra_91AB
C - - - - - 0x0091B9 02:91A9: A0 02     LDY #$02
bra_91AB:
C - - - - - 0x0091BB 02:91AB: 20 49 94  JSR sub_9449
C - - - - - 0x0091BE 02:91AE: A6 53     LDX ram_0053
bra_91B0_RTS:
C - - - - - 0x0091C0 02:91B0: 60        RTS



sub_0x0091C1:
C - - - - - 0x0091C1 02:91B1: A2 03     LDX #$03
C - - - - - 0x0091C3 02:91B3: A9 00     LDA #$00
bra_91B5_loop:
C - - - - - 0x0091C5 02:91B5: 9D 46 03  STA ram_0346,X
C - - - - - 0x0091C8 02:91B8: CA        DEX
C - - - - - 0x0091C9 02:91B9: 10 FA     BPL bra_91B5_loop
C - - - - - 0x0091CB 02:91BB: A2 05     LDX #$05
bra_91BD_loop:
C - - - - - 0x0091CD 02:91BD: 95 A0     STA ram_00A0,X
C - - - - - 0x0091CF 02:91BF: 95 AB     STA ram_00AB,X
C - - - - - 0x0091D1 02:91C1: CA        DEX
C - - - - - 0x0091D2 02:91C2: 10 F9     BPL bra_91BD_loop
C - - - - - 0x0091D4 02:91C4: 60        RTS



sub_91C5:
sub_0x0091D5:
C - - - - - 0x0091D5 02:91C5: 18        CLC
C - - - - - 0x0091D6 02:91C6: 7D 4E 06  ADC ram_obj_pos_X,X
loc_91C9:
C - - - - - 0x0091D9 02:91C9: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x0091DC 02:91CC: 60        RTS



sub_0x0091DD:
ofs_020_0x0091DD_02:
ofs_020_0x0091DD_10:
ofs_020_0x0091DD_18:
C - - J - - 0x0091DD 02:91CD: A9 09     LDA #$09
C - - - - - 0x0091DF 02:91CF: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x0091E2 02:91D2: A9 0A     LDA #$0A
C - - - - - 0x0091E4 02:91D4: 20 A1 89  JSR sub_89A1
C - - - - - 0x0091E7 02:91D7: A9 00     LDA #$00
C - - - - - 0x0091E9 02:91D9: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x0091EC 02:91DC: 9D 20 07  STA ram_0720_obj,X
loc_0x0091EF:
C D 0 - - - 0x0091EF 02:91DF: 20 83 B3  JSR sub_0x003393
sub_0x0091F2:
C - - - - - 0x0091F2 02:91E2: A9 00     LDA #$00
loc_91E4:
C D 0 - - - 0x0091F4 02:91E4: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0091F7 02:91E7: 60        RTS



sub_91E8:
sub_0x0091F8:
C - - - - - 0x0091F8 02:91E8: 20 2E 94  JSR sub_942E
C - - - - - 0x0091FB 02:91EB: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x0091FE 02:91EE: 85 90     STA ram_0090
C - - - - - 0x009200 02:91F0: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x009203 02:91F3: 85 91     STA ram_0091
sub_91F5:
sub_0x009205:
C - - - - - 0x009205 02:91F5: 20 09 92  JSR sub_9209
C - - - - - 0x009208 02:91F8: A5 6D     LDA ram_006D
C - - - - - 0x00920A 02:91FA: 18        CLC
C - - - - - 0x00920B 02:91FB: 69 08     ADC #$08
C - - - - - 0x00920D 02:91FD: 29 E0     AND #$E0
C - - - - - 0x00920F 02:91FF: 85 6D     STA ram_006D
sub_9201:
C - - - - - 0x009211 02:9201: 20 72 91  JSR sub_9172_06B2x_AND_0F
C - - - - - 0x009214 02:9204: 05 6D     ORA ram_006D
loc_9206:
C - - - - - 0x009216 02:9206: 4C EE 95  JMP loc_95EE



sub_9209:
ofs_006_0x009219_1F:
C - - J - - 0x009219 02:9209: A5 90     LDA ram_0090
C - - - - - 0x00921B 02:920B: 85 10     STA ram_0010
C - - - - - 0x00921D 02:920D: A5 91     LDA ram_0091
C - - - - - 0x00921F 02:920F: 85 11     STA ram_0011
C - - - - - 0x009221 02:9211: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009224 02:9214: 85 12     STA ram_0012
C - - - - - 0x009226 02:9216: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009229 02:9219: 85 13     STA ram_0013
C - - - - - 0x00922B 02:921B: A9 00     LDA #$00
C - - - - - 0x00922D 02:921D: 85 14     STA ram_0014
C - - - - - 0x00922F 02:921F: A5 11     LDA ram_0011
C - - - - - 0x009231 02:9221: 38        SEC
C - - - - - 0x009232 02:9222: E5 13     SBC ram_0013
C - - - - - 0x009234 02:9224: B0 05     BCS bra_922B
C - - - - - 0x009236 02:9226: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
C - - - - - 0x009239 02:9229: E6 14     INC ram_0014
bra_922B:
C - - - - - 0x00923B 02:922B: 85 13     STA ram_0013
C - - - - - 0x00923D 02:922D: 29 F0     AND #$F0
C - - - - - 0x00923F 02:922F: 48        PHA
C - - - - - 0x009240 02:9230: A9 00     LDA #$00
C - - - - - 0x009242 02:9232: 85 15     STA ram_0015
C - - - - - 0x009244 02:9234: A5 10     LDA ram_0010
C - - - - - 0x009246 02:9236: 38        SEC
C - - - - - 0x009247 02:9237: E5 12     SBC ram_0012
C - - - - - 0x009249 02:9239: B0 05     BCS bra_9240
C - - - - - 0x00924B 02:923B: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
C - - - - - 0x00924E 02:923E: E6 15     INC ram_0015
bra_9240:
C - - - - - 0x009250 02:9240: 85 12     STA ram_0012
C - - - - - 0x009252 02:9242: 4A        LSR
C - - - - - 0x009253 02:9243: 4A        LSR
C - - - - - 0x009254 02:9244: 4A        LSR
C - - - - - 0x009255 02:9245: 4A        LSR
C - - - - - 0x009256 02:9246: 85 16     STA ram_0016
C - - - - - 0x009258 02:9248: 68        PLA
C - - - - - 0x009259 02:9249: 18        CLC
C - - - - - 0x00925A 02:924A: 65 16     ADC ram_0016
C - - - - - 0x00925C 02:924C: A8        TAY
C - - - - - 0x00925D 02:924D: B9 72 92  LDA tbl_9272,Y
C - - - - - 0x009260 02:9250: 85 6D     STA ram_006D
C - - - - - 0x009262 02:9252: A5 14     LDA ram_0014
C - - - - - 0x009264 02:9254: C5 15     CMP ram_0015
C - - - - - 0x009266 02:9256: F0 07     BEQ bra_925F
C - - - - - 0x009268 02:9258: A5 6D     LDA ram_006D
C - - - - - 0x00926A 02:925A: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
C - - - - - 0x00926D 02:925D: 85 6D     STA ram_006D
bra_925F:
C - - - - - 0x00926F 02:925F: A5 15     LDA ram_0015
C - - - - - 0x009271 02:9261: F0 07     BEQ bra_926A_RTS
C - - - - - 0x009273 02:9263: A5 6D     LDA ram_006D
C - - - - - 0x009275 02:9265: 18        CLC
C - - - - - 0x009276 02:9266: 69 80     ADC #$80
C - - - - - 0x009278 02:9268: 85 6D     STA ram_006D
bra_926A_RTS:
C - - - - - 0x00927A 02:926A: 60        RTS
- - - - - - 0x00927B 02:926B: 18        CLC
- - - - - - 0x00927C 02:926C: 7D B2 06  ADC ram_06B2_obj,X
- - - - - - 0x00927F 02:926F: 4C 06 92  JMP loc_9206



tbl_9272:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - - - 0x009282 02:9272: 20        .byte $20, $0D, $08, $06, $04, $04, $03, $03, $02, $02, $02, $02, $01, $01, $01, $01   ; 00 
- D 0 - - - 0x009292 02:9282: 33        .byte $33, $20, $16, $10, $0D, $0B, $09, $08, $07, $06, $06, $05, $05, $04, $04, $04   ; 10 
- D 0 - - - 0x0092A2 02:9292: 38        .byte $38, $2A, $20, $19, $15, $11, $0F, $0D, $0C, $0A, $09, $09, $08, $07, $07, $06   ; 20 
- D 0 - - - 0x0092B2 02:92A2: 3A        .byte $3A, $2F, $27, $20, $1B, $17, $14, $12, $10, $0E, $0D, $0C, $0B, $0A, $0A, $09   ; 30 
- D 0 - - - 0x0092C2 02:92B2: 3B        .byte $3B, $33, $2B, $25, $20, $1C, $19, $16, $14, $12, $10, $0F, $0E, $0D, $0C, $0B   ; 40 
- D 0 - - - 0x0092D2 02:92C2: 3C        .byte $3C, $35, $2E, $29, $24, $20, $1C, $1A, $17, $15, $14, $12, $11, $10, $0F, $0E   ; 50 
- D 0 - - - 0x0092E2 02:92D2: 3D        .byte $3D, $37, $31, $2C, $27, $23, $20, $1D, $1A, $18, $16, $15, $13, $12, $11, $10   ; 60 
- D 0 - - - 0x0092F2 02:92E2: 3D        .byte $3D, $38, $33, $2E, $2A, $26, $23, $20, $1D, $1B, $19, $17, $16, $15, $13, $12   ; 70 
- D 0 - - - 0x009302 02:92F2: 3D        .byte $3D, $39, $34, $30, $2C, $28, $25, $22, $20, $1E, $1C, $1A, $18, $17, $15, $14   ; 80 
- D 0 - - - 0x009312 02:9302: 3E        .byte $3E, $39, $35, $31, $2E, $2A, $27, $25, $22, $20, $1E, $1C, $1A, $19, $17, $16   ; 90 
- D 0 - - - 0x009322 02:9312: 3E        .byte $3E, $3A, $36, $33, $2F, $2C, $29, $27, $24, $22, $20, $1E, $1C, $1B, $19, $18   ; A0 
- - - - - - 0x009332 02:9322: 3E        .byte $3E, $3B, $37, $34, $31, $2E, $2B, $28, $26, $24, $22, $20, $1E, $1D, $1B, $1A   ; B0 
- - - - - - 0x009342 02:9332: 3E        .byte $3E, $3B, $38, $35, $32, $2F, $2C, $2A, $28, $25, $23, $22, $20, $1E, $1D, $1C   ; C0 
- - - - - - 0x009352 02:9342: 3E        .byte $3E, $3B, $38, $36, $33, $30, $2E, $2B, $29, $27, $25, $23, $21, $20, $1E, $1D   ; D0 
- - - - - - 0x009362 02:9352: 3E        .byte $3E, $3C, $39, $36, $34, $31, $2F, $2C, $2A, $28, $26, $25, $23, $21, $20, $1E   ; E0 
- - - - - - 0x009372 02:9362: 3F        .byte $3F, $3C, $39, $37, $34, $32, $30, $2D, $2B, $29, $28, $26, $24, $23, $21, $20   ; F0 



sub_9372:
sub_0x009382:
C - - - - - 0x009382 02:9372: C9 02     CMP #$02
C - - - - - 0x009384 02:9374: 90 12     BCC bra_9388
C - - - - - 0x009386 02:9376: A0 02     LDY #$02
bra_9378_loop:
C - - - - - 0x009388 02:9378: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00938B 02:937B: 29 7F     AND #$7F
C - - - - - 0x00938D 02:937D: F0 07     BEQ bra_9386
C - - - - - 0x00938F 02:937F: C8        INY
C - - - - - 0x009390 02:9380: C0 0A     CPY #$0A
C - - - - - 0x009392 02:9382: 90 F4     BCC bra_9378_loop
C - - - - - 0x009394 02:9384: 38        SEC
C - - - - - 0x009395 02:9385: 60        RTS
bra_9386:
C - - - - - 0x009396 02:9386: 18        CLC
C - - - - - 0x009397 02:9387: 60        RTS
bra_9388:
C - - - - - 0x009398 02:9388: C9 01     CMP #$01
C - - - - - 0x00939A 02:938A: D0 0D     BNE bra_9399
C - - - - - 0x00939C 02:938C: A0 12     LDY #$12
bra_938E:
bra_938E_loop:
C - - - - - 0x00939E 02:938E: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x0093A1 02:9391: F0 F3     BEQ bra_9386
C - - - - - 0x0093A3 02:9393: C8        INY
C - - - - - 0x0093A4 02:9394: C0 16     CPY #$16
C - - - - - 0x0093A6 02:9396: 90 F6     BCC bra_938E_loop
C - - - - - 0x0093A8 02:9398: 60        RTS
bra_9399:
C - - - - - 0x0093A9 02:9399: A0 0A     LDY #$0A
C - - - - - 0x0093AB 02:939B: E0 00     CPX #$00
C - - - - - 0x0093AD 02:939D: F0 02     BEQ bra_93A1
C - - - - - 0x0093AF 02:939F: A0 0E     LDY #$0E
bra_93A1:
C - - - - - 0x0093B1 02:93A1: A9 04     LDA #$04
C - - - - - 0x0093B3 02:93A3: 85 00     STA ram_0000
C - - - - - 0x0093B5 02:93A5: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x0093B8 02:93A8: F0 DC     BEQ bra_9386
C - - - - - 0x0093BA 02:93AA: C8        INY
C - - - - - 0x0093BB 02:93AB: C6 00     DEC ram_0000
C - - - - - 0x0093BD 02:93AD: D0 DF     BNE bra_938E
bra_93AF:
C - - - - - 0x0093BF 02:93AF: 38        SEC
C - - - - - 0x0093C0 02:93B0: 60        RTS



sub_93B1_06B2x_LSRx4_TAY:
sub_0x0093C1_06B2x_LSRx4_TAY:
C - - - - - 0x0093C1 02:93B1: BD B2 06  LDA ram_06B2_obj,X
sub_0x0093C4_LSRx4_TAY:
C - - - - - 0x0093C4 02:93B4: 4A        LSR
sub_0x0093C4_LSRx3_TAY:
C - - - - - 0x0093C5 02:93B5: 4A        LSR
C - - - - - 0x0093C6 02:93B6: 4A        LSR
C - - - - - 0x0093C7 02:93B7: 4A        LSR
C - - - - - 0x0093C8 02:93B8: A8        TAY
C - - - - - 0x0093C9 02:93B9: 60        RTS



sub_93BA:
sub_0x0093CA:
loc_0x0093CA:
C D 0 - - - 0x0093CA 02:93BA: A5 75     LDA ram_stage
C - - - - - 0x0093CC 02:93BC: C9 02     CMP #$02
C - - - - - 0x0093CE 02:93BE: B0 05     BCS bra_93C5
C - - - - - 0x0093D0 02:93C0: A5 26     LDA ram_buffer_index
C - - - - - 0x0093D2 02:93C2: C9 20     CMP #$20
C - - - - - 0x0093D4 02:93C4: 60        RTS
bra_93C5:
C - - - - - 0x0093D5 02:93C5: D0 04     BNE bra_93CB
C - - - - - 0x0093D7 02:93C7: A5 D0     LDA ram_00D0
C - - - - - 0x0093D9 02:93C9: D0 08     BNE bra_93D3
bra_93CB:
C - - - - - 0x0093DB 02:93CB: A5 67     LDA ram_0067
C - - - - - 0x0093DD 02:93CD: 29 03     AND #$03
C - - - - - 0x0093DF 02:93CF: C9 02     CMP #$02
C - - - - - 0x0093E1 02:93D1: 90 DC     BCC bra_93AF
bra_93D3:
C - - - - - 0x0093E3 02:93D3: A5 39     LDA ram_buffer_index_2
C - - - - - 0x0093E5 02:93D5: C9 20     CMP #$20
C - - - - - 0x0093E7 02:93D7: 60        RTS



sub_93D8:
sub_0x0093E8:
C - - - - - 0x0093E8 02:93D8: 85 0A     STA ram_000A
C - - - - - 0x0093EA 02:93DA: 4C CB 8B  JMP loc_8BCB


; bzk garbage
- - - - - - 0x0093ED 02:93DD: 9D A0 07  STA ram_07A0_unk,X
- - - - - - 0x0093F0 02:93E0: 4C 62 87  JMP loc_8762



sub_93E3:
sub_0x0093F3:
C - - - - - 0x0093F3 02:93E3: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x0093F6 02:93E6: 29 7F     AND #$7F
C - - - - - 0x0093F8 02:93E8: AA        TAX
C - - - - - 0x0093F9 02:93E9: BD EF 93  LDA tbl_93F0 - $01,X
C - - - - - 0x0093FC 02:93EC: 99 96 07  STA ram_0796_unk,Y
C - - - - - 0x0093FF 02:93EF: 60        RTS



tbl_93F0:
- D 0 - - - 0x009400 02:93F0: 01        .byte $01   ; 01 
- D 0 - - - 0x009401 02:93F1: 01        .byte $01   ; 02 
- D 0 - - - 0x009402 02:93F2: 01        .byte $01   ; 03 
- - - - - - 0x009403 02:93F3: 01        .byte $01   ; 04 
- D 0 - - - 0x009404 02:93F4: 01        .byte $01   ; 05 
- D 0 - - - 0x009405 02:93F5: 01        .byte $01   ; 06 
- - - - - - 0x009406 02:93F6: 01        .byte $01   ; 07 
- - - - - - 0x009407 02:93F7: 01        .byte $01   ; 08 
- - - - - - 0x009408 02:93F8: 01        .byte $01   ; 09 
- D 0 - - - 0x009409 02:93F9: 10        .byte $10   ; 0A 
- D 0 - - - 0x00940A 02:93FA: 01        .byte $01   ; 0B 
- D 0 - - - 0x00940B 02:93FB: 01        .byte $01   ; 0C 
- - - - - - 0x00940C 02:93FC: 01        .byte $01   ; 0D 
- - - - - - 0x00940D 02:93FD: 01        .byte $01   ; 0E 
- D 0 - - - 0x00940E 02:93FE: 80        .byte $80   ; 0F 
- D 0 - - - 0x00940F 02:93FF: 20        .byte $20   ; 10 
- D 0 - - - 0x009410 02:9400: 80        .byte $80   ; 11 
- D 0 - - - 0x009411 02:9401: 90        .byte $90   ; 12 
- D 0 - - - 0x009412 02:9402: 01        .byte $01   ; 13 
- D 0 - - - 0x009413 02:9403: 01        .byte $01   ; 14 
- D 0 - - - 0x009414 02:9404: 01        .byte $01   ; 15 
- - - - - - 0x009415 02:9405: 01        .byte $01   ; 16 
- D 0 - - - 0x009416 02:9406: 01        .byte $01   ; 17 
- D 0 - - - 0x009417 02:9407: 01        .byte $01   ; 18 
- D 0 - - - 0x009418 02:9408: 01        .byte $01   ; 19 
- D 0 - - - 0x009419 02:9409: 01        .byte $01   ; 1A 
- D 0 - - - 0x00941A 02:940A: 01        .byte $01   ; 1B 
- D 0 - - - 0x00941B 02:940B: 01        .byte $01   ; 1C 
- - - - - - 0x00941C 02:940C: 01        .byte $01   ; 1D 
- D 0 - - - 0x00941D 02:940D: 01        .byte $01   ; 1E 
- D 0 - - - 0x00941E 02:940E: 01        .byte $01   ; 1F 
- D 0 - - - 0x00941F 02:940F: 01        .byte $01   ; 20 
- D 0 - - - 0x009420 02:9410: 01        .byte $01   ; 21 
- D 0 - - - 0x009421 02:9411: 01        .byte $01   ; 22 
- D 0 - - - 0x009422 02:9412: 01        .byte $01   ; 23 
- D 0 - - - 0x009423 02:9413: 01        .byte $01   ; 24 
- D 0 - - - 0x009424 02:9414: 01        .byte $01   ; 25 
- D 0 - - - 0x009425 02:9415: 01        .byte $01   ; 26 
- D 0 - - - 0x009426 02:9416: 01        .byte $01   ; 27 
- - - - - - 0x009427 02:9417: 01        .byte $01   ; 28 
- - - - - - 0x009428 02:9418: 01        .byte $01   ; 29 
- D 0 - - - 0x009429 02:9419: 01        .byte $01   ; 2A 
- D 0 - - - 0x00942A 02:941A: 01        .byte $01   ; 2B 
- - - - - - 0x00942B 02:941B: 01        .byte $01   ; 2C 
- D 0 - - - 0x00942C 02:941C: 01        .byte $01   ; 2D 
- - - - - - 0x00942D 02:941D: 01        .byte $01   ; 2E 
- - - - - - 0x00942E 02:941E: 01        .byte $01   ; 2F 
- D 0 - - - 0x00942F 02:941F: 01        .byte $01   ; 30 
- D 0 - - - 0x009430 02:9420: 01        .byte $01   ; 31 
- D 0 - - - 0x009431 02:9421: 01        .byte $01   ; 32 
- D 0 - - - 0x009432 02:9422: 50        .byte $50   ; 33 
- D 0 - - - 0x009433 02:9423: 01        .byte $01   ; 34 
- - - - - - 0x009434 02:9424: 01        .byte $01   ; 35 
- - - - - - 0x009435 02:9425: 01        .byte $01   ; 36 
- D 0 - - - 0x009436 02:9426: 01        .byte $01   ; 37 
- D 0 - - - 0x009437 02:9427: 01        .byte $01   ; 38 
- D 0 - - - 0x009438 02:9428: 01        .byte $01   ; 39 
- D 0 - - - 0x009439 02:9429: 01        .byte $01   ; 3A 
- D 0 - - - 0x00943A 02:942A: 01        .byte $01   ; 3B 
- - - - - - 0x00943B 02:942B: 01        .byte $01   ; 3C 
- - - - - - 0x00943C 02:942C: 01        .byte $01   ; 3D 
- - - - - - 0x00943D 02:942D: 01        .byte $01   ; 3E 



sub_942E:
sub_0x00943E:
C - - - - - 0x00943E 02:942E: A5 29     LDA ram_0029
C - - - - - 0x009440 02:9430: 29 01     AND #$01
C - - - - - 0x009442 02:9432: A8        TAY
C - - - - - 0x009443 02:9433: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x009446 02:9436: D0 04     BNE bra_943C
C - - - - - 0x009448 02:9438: 98        TYA
C - - - - - 0x009449 02:9439: 49 01     EOR #$01
C - - - - - 0x00944B 02:943B: A8        TAY
bra_943C:
C - - - - - 0x00944C 02:943C: 98        TYA
C - - - - - 0x00944D 02:943D: 60        RTS



sub_943E:
C - - - - - 0x00944E 02:943E: A0 00     LDY #$00    ; score p1
C - - - - - 0x009450 02:9440: 84 03     STY ram_0003
C - - - - - 0x009452 02:9442: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x009455 02:9445: F0 02     BEQ bra_9449
C - - - - - 0x009457 02:9447: A0 02     LDY #$02    ; score p2
bra_9449:
sub_9449:
C - - - - - 0x009459 02:9449: B9 6B 94  LDA tbl_946B_score_address,Y
C - - - - - 0x00945C 02:944C: 85 04     STA ram_0004
C - - - - - 0x00945E 02:944E: B9 6C 94  LDA tbl_946B_score_address + $01,Y
C - - - - - 0x009461 02:9451: 85 05     STA ram_0005
C - - - - - 0x009463 02:9453: A2 01     LDX #$01
C - - - - - 0x009465 02:9455: A0 03     LDY #$03
C - - - - - 0x009467 02:9457: 84 00     STY ram_0000
C - - - - - 0x009469 02:9459: 88        DEY
C - - - - - 0x00946A 02:945A: 18        CLC
bra_945B_loop:
C - - - - - 0x00946B 02:945B: B1 04     LDA (ram_0004),Y
C - - - - - 0x00946D 02:945D: 20 6F 94  JSR sub_946F
C - - - - - 0x009470 02:9460: 91 04     STA (ram_0004),Y
C - - - - - 0x009472 02:9462: 88        DEY
C - - - - - 0x009473 02:9463: E8        INX
C - - - - - 0x009474 02:9464: C6 00     DEC ram_0000
C - - - - - 0x009476 02:9466: D0 F3     BNE bra_945B_loop
C - - - - - 0x009478 02:9468: 4C C1 F6  JMP loc_0x01F6D1



tbl_946B_score_address:
- D 0 - - - 0x00947B 02:946B: 6E 00     .word ram_score     ; 00 p1
- D 0 - - - 0x00947D 02:946D: 71 00     .word ram_score + $03 ; 02 p2



sub_946F:
C - - - - - 0x00947F 02:946F: 85 07     STA ram_0007
C - - - - - 0x009481 02:9471: 29 F0     AND #$F0
C - - - - - 0x009483 02:9473: 85 06     STA ram_0006
C - - - - - 0x009485 02:9475: 45 07     EOR ram_0007
C - - - - - 0x009487 02:9477: 85 07     STA ram_0007
C - - - - - 0x009489 02:9479: B5 00     LDA ram_0000,X
C - - - - - 0x00948B 02:947B: 29 0F     AND #$0F
C - - - - - 0x00948D 02:947D: 65 07     ADC ram_0007
C - - - - - 0x00948F 02:947F: C9 0A     CMP #$0A
C - - - - - 0x009491 02:9481: 90 02     BCC bra_9485
C - - - - - 0x009493 02:9483: 69 05     ADC #$05
bra_9485:
C - - - - - 0x009495 02:9485: 65 06     ADC ram_0006
C - - - - - 0x009497 02:9487: 85 06     STA ram_0006
C - - - - - 0x009499 02:9489: B5 00     LDA ram_0000,X
C - - - - - 0x00949B 02:948B: 29 F0     AND #$F0
C - - - - - 0x00949D 02:948D: 65 06     ADC ram_0006
C - - - - - 0x00949F 02:948F: B0 04     BCS bra_9495
C - - - - - 0x0094A1 02:9491: C9 A0     CMP #$A0
C - - - - - 0x0094A3 02:9493: 90 03     BCC bra_9498_RTS
bra_9495:
C - - - - - 0x0094A5 02:9495: E9 A0     SBC #$A0
C - - - - - 0x0094A7 02:9497: 38        SEC
bra_9498_RTS:
C - - - - - 0x0094A8 02:9498: 60        RTS



sub_9499:
sub_0x0094A9:
C - - - - - 0x0094A9 02:9499: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x0094AC 02:949C: 29 FC     AND #$FC
C - - - - - 0x0094AE 02:949E: 85 00     STA ram_0000
C - - - - - 0x0094B0 02:94A0: BD 62 07  LDA ram_0762_obj,X
C - - - - - 0x0094B3 02:94A3: 29 03     AND #$03
C - - - - - 0x0094B5 02:94A5: 05 00     ORA ram_0000
C - - - - - 0x0094B7 02:94A7: 20 B5 94  JSR sub_94B5
C - - - - - 0x0094BA 02:94AA: 90 08     BCC bra_94B4_RTS
C - - - - - 0x0094BC 02:94AC: B9 EB 94  LDA tbl_94EB,Y
C - - - - - 0x0094BF 02:94AF: A8        TAY
C - - - - - 0x0094C0 02:94B0: 20 C5 94  JSR sub_94C5
C - - - - - 0x0094C3 02:94B3: 38        SEC
bra_94B4_RTS:
C - - - - - 0x0094C4 02:94B4: 60        RTS



sub_94B5:
C - - - - - 0x0094C5 02:94B5: A0 00     LDY #$00
bra_94B7_loop:
C - - - - - 0x0094C7 02:94B7: 84 00     STY ram_0000
C - - - - - 0x0094C9 02:94B9: 4A        LSR
C - - - - - 0x0094CA 02:94BA: B0 08     BCS bra_94C4_RTS
C - - - - - 0x0094CC 02:94BC: A4 00     LDY ram_0000
C - - - - - 0x0094CE 02:94BE: C8        INY
C - - - - - 0x0094CF 02:94BF: C0 08     CPY #$08
C - - - - - 0x0094D1 02:94C1: 90 F4     BCC bra_94B7_loop
C - - - - - 0x0094D3 02:94C3: 18        CLC
bra_94C4_RTS:
C - - - - - 0x0094D4 02:94C4: 60        RTS



sub_94C5:
sub_0x0094D5:
C - - - - - 0x0094D5 02:94C5: 84 00     STY ram_0000
C - - - - - 0x0094D7 02:94C7: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x0094DA 02:94CA: 29 0F     AND #$0F
C - - - - - 0x0094DC 02:94CC: A8        TAY
C - - - - - 0x0094DD 02:94CD: B9 DB 94  LDA tbl_94DC - $01,Y
C - - - - - 0x0094E0 02:94D0: F0 07     BEQ bra_94D9
C - - - - - 0x0094E2 02:94D2: A6 00     LDX ram_0000
C - - - - - 0x0094E4 02:94D4: 20 52 9A  JSR sub_9A52
C - - - - - 0x0094E7 02:94D7: A6 53     LDX ram_0053
bra_94D9:
C - - - - - 0x0094E9 02:94D9: A4 00     LDY ram_0000
C D 0 - - - 0x0094EB 02:94DB: 60        RTS



tbl_94DC:
- D 0 - - - 0x0094EC 02:94DC: 01        .byte $01   ; 01 
- D 0 - - - 0x0094ED 02:94DD: 01        .byte $01   ; 02 
- D 0 - - - 0x0094EE 02:94DE: 00        .byte $00   ; 03 
- D 0 - - - 0x0094EF 02:94DF: 01        .byte $01   ; 04 
- D 0 - - - 0x0094F0 02:94E0: 01        .byte $01   ; 05 
- - - - - - 0x0094F1 02:94E1: 00        .byte $00   ; 06 
- D 0 - - - 0x0094F2 02:94E2: 00        .byte $00   ; 07 
- D 0 - - - 0x0094F3 02:94E3: 01        .byte $01   ; 08 
- - - - - - 0x0094F4 02:94E4: 00        .byte $00   ; 09 
- D 0 - - - 0x0094F5 02:94E5: 00        .byte $00   ; 0A 
- - - - - - 0x0094F6 02:94E6: 00        .byte $00   ; 0B 
- D 0 - - - 0x0094F7 02:94E7: 01        .byte $01   ; 0C 
- - - - - - 0x0094F8 02:94E8: 00        .byte $00   ; 0D 
- - - - - - 0x0094F9 02:94E9: 00        .byte $00   ; 0E 
- - - - - - 0x0094FA 02:94EA: 01        .byte $01   ; 0F 



tbl_94EB:
- - - - - - 0x0094FB 02:94EB: 10        .byte $10   ; 00 
- - - - - - 0x0094FC 02:94EC: 11        .byte $11   ; 01 
- D 0 - - - 0x0094FD 02:94ED: 0A        .byte $0A   ; 02 
- D 0 - - - 0x0094FE 02:94EE: 0B        .byte $0B   ; 03 
- D 0 - - - 0x0094FF 02:94EF: 0C        .byte $0C   ; 04 
- - - - - - 0x009500 02:94F0: 0D        .byte $0D   ; 05 
- D 0 - - - 0x009501 02:94F1: 0E        .byte $0E   ; 06 
- D 0 - - - 0x009502 02:94F2: 0F        .byte $0F   ; 07 


; bzk garbage 0x0094CF
- - - - - - 0x009503 02:94F3: 0A        .byte $0A   ; 



sub_94F4:
sub_0x009504:
C - - - - - 0x009504 02:94F4: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009507 02:94F7: 38        SEC
C - - - - - 0x009508 02:94F8: F9 4E 06  SBC ram_obj_pos_X,Y
C - - - - - 0x00950B 02:94FB: 4C 05 95  JMP loc_9505



sub_94FE:
sub_0x00950E:
C - - - - - 0x00950E 02:94FE: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009511 02:9501: 38        SEC
C - - - - - 0x009512 02:9502: F9 68 06  SBC ram_obj_pos_Y,Y
loc_9505:
C D 0 - - - 0x009515 02:9505: B0 1C     BCS bra_9523_RTS
sub_9507_EOR_FF_CLC_ADC_01:
sub_0x009517_EOR_FF_CLC_ADC_01:
C - - - - - 0x009517 02:9507: 49 FF     EOR #$FF
C - - - - - 0x009519 02:9509: 18        CLC
C - - - - - 0x00951A 02:950A: 69 01     ADC #$01
C - - - - - 0x00951C 02:950C: 60        RTS



sub_950D:
sub_0x00951D:
C - - - - - 0x00951D 02:950D: 85 00     STA ram_0000
C - - - - - 0x00951F 02:950F: 84 01     STY ram_0001
C - - - - - 0x009521 02:9511: BC B4 07  LDY ram_07B4_unk,X
C - - - - - 0x009524 02:9514: 20 F4 94  JSR sub_94F4
C - - - - - 0x009527 02:9517: C5 00     CMP ram_0000
C - - - - - 0x009529 02:9519: B0 08     BCS bra_9523_RTS
C - - - - - 0x00952B 02:951B: BC B4 07  LDY ram_07B4_unk,X
C - - - - - 0x00952E 02:951E: 20 FE 94  JSR sub_94FE
C - - - - - 0x009531 02:9521: C5 01     CMP ram_0001
bra_9523_RTS:
C - - - - - 0x009533 02:9523: 60        RTS


; bzk garbage
- - - - - - 0x009534 02:9524: 20 41 91  JSR sub_9141_0682x_and_0F
- - - - - - 0x009537 02:9527: C9 02     CMP #$02
- - - - - - 0x009539 02:9529: B0 F8     BCS bra_9523_RTS
- - - - - - 0x00953B 02:952B: E0 12     CPX #$12
- - - - - - 0x00953D 02:952D: B0 21     BCS bra_9550_RTS
- - - - - - 0x00953F 02:952F: E0 0E     CPX #$0E
- - - - - - 0x009541 02:9531: 90 1E     BCC bra_9551
- - - - - - 0x009543 02:9533: A0 00     LDY #$00
bra_9535_loop:
- - - - - - 0x009545 02:9535: B9 7F 00  LDA ram_player_stats,Y
- - - - - - 0x009548 02:9538: F0 11     BEQ bra_954B
- - - - - - 0x00954A 02:953A: C9 10     CMP #$10
- - - - - - 0x00954C 02:953C: F0 0D     BEQ bra_954B
bra_953E:
- - - - - - 0x00954E 02:953E: C0 01     CPY #$01
- - - - - - 0x009550 02:9540: F0 04     BEQ bra_9546
- - - - - - 0x009552 02:9542: C0 03     CPY #$03
- - - - - - 0x009554 02:9544: D0 0A     BNE bra_9550_RTS
bra_9546:
- - - - - - 0x009556 02:9546: A9 6D     LDA #$6D
- - - - - - 0x009558 02:9548: 4C 4E 9A  JMP loc_9A4E
bra_954B:
- - - - - - 0x00955B 02:954B: C8        INY
- - - - - - 0x00955C 02:954C: C0 04     CPY #$04
- - - - - - 0x00955E 02:954E: 90 E5     BCC bra_9535_loop
bra_9550_RTS:
- - - - - - 0x009560 02:9550: 60        RTS
bra_9551:
- - - - - - 0x009561 02:9551: A0 00     LDY #$00
bra_9553_loop:
- - - - - - 0x009563 02:9553: B9 7F 00  LDA ram_player_stats,Y
- - - - - - 0x009566 02:9556: F0 06     BEQ bra_955E
- - - - - - 0x009568 02:9558: C9 10     CMP #$10
- - - - - - 0x00956A 02:955A: D0 02     BNE bra_955E
- - - - - - 0x00956C 02:955C: F0 E0     BEQ bra_953E    ; jmp
bra_955E:
- - - - - - 0x00956E 02:955E: C8        INY
- - - - - - 0x00956F 02:955F: C0 04     CPY #$04
- - - - - - 0x009571 02:9561: 90 F0     BCC bra_9553_loop
- - - - - - 0x009573 02:9563: 60        RTS



tbl_0x009574_sfx:
- D 0 - - - 0x009574 02:9564: 0C        .byte con_music_0C   ; 01 
- D 0 - - - 0x009575 02:9565: 10        .byte con_music_10   ; 02 
- D 0 - - - 0x009576 02:9566: 14        .byte con_music_14   ; 03 
- D 0 - - - 0x009577 02:9567: 18        .byte con_music_18   ; 04 
- D 0 - - - 0x009578 02:9568: 18        .byte con_music_18   ; 05 
- D 0 - - - 0x009579 02:9569: 2C        .byte con_music_2C   ; 06 
- D 0 - - - 0x00957A 02:956A: 16        .byte con_music_16   ; 07 
- D 0 - - - 0x00957B 02:956B: 0E        .byte con_music_0E   ; 08 
- D 0 - - - 0x00957C 02:956C: FF        .byte $FF   ; 09 
- D 0 - - - 0x00957D 02:956D: 2C        .byte con_music_2C   ; 0A 
- - - - - - 0x00957E 02:956E: FF        .byte $FF   ; 0B 
- D 0 - - - 0x00957F 02:956F: 12        .byte con_music_12   ; 0C 
- D 0 - - - 0x009580 02:9570: 16        .byte con_music_16   ; 0D 
- D 0 - - - 0x009581 02:9571: FF        .byte $FF   ; 0E 
- D 0 - - - 0x009582 02:9572: FF        .byte $FF   ; 0F 



tbl_0x009583_sfx:
- D 0 - - - 0x009583 02:9573: 1E        .byte con_music_1E   ; 01 
- D 0 - - - 0x009584 02:9574: FF        .byte $FF   ; 02 
- D 0 - - - 0x009585 02:9575: 14        .byte con_music_14   ; 03 
- D 0 - - - 0x009586 02:9576: 22        .byte con_music_22   ; 04 
- D 0 - - - 0x009587 02:9577: 22        .byte con_music_22   ; 05 
- D 0 - - - 0x009588 02:9578: 2C        .byte con_music_2C   ; 06 
- - - - - - 0x009589 02:9579: FF        .byte $FF   ; 07 
- D 0 - - - 0x00958A 02:957A: 20        .byte con_music_20   ; 08 
- D 0 - - - 0x00958B 02:957B: FF        .byte $FF   ; 09 
- D 0 - - - 0x00958C 02:957C: 2C        .byte con_music_2C   ; 0A 
- - - - - - 0x00958D 02:957D: FF        .byte $FF   ; 0B 
- D 0 - - - 0x00958E 02:957E: 12        .byte con_music_12   ; 0C 
- - - - - - 0x00958F 02:957F: FF        .byte $FF   ; 0D 
- D 0 - - - 0x009590 02:9580: FF        .byte $FF   ; 0E 
- D 0 - - - 0x009591 02:9581: 22        .byte con_music_22   ; 0F 



sub_0x009592:
C - - - - - 0x009592 02:9582: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x009595 02:9585: C9 3A     CMP #$3A
C - - - - - 0x009597 02:9587: F0 20     BEQ bra_95A9
C - - - - - 0x009599 02:9589: C9 5A     CMP #$5A
C - - - - - 0x00959B 02:958B: F0 1C     BEQ bra_95A9
C - - - - - 0x00959D 02:958D: 29 0F     AND #$0F
C - - - - - 0x00959F 02:958F: C9 03     CMP #$03
C - - - - - 0x0095A1 02:9591: F0 1A     BEQ bra_95AD
C - - - - - 0x0095A3 02:9593: C9 02     CMP #$02
C - - - - - 0x0095A5 02:9595: F0 21     BEQ bra_95B8
C - - - - - 0x0095A7 02:9597: A8        TAY
C - - - - - 0x0095A8 02:9598: B9 C8 95  LDA tbl_95C8,Y
bra_959B:
C - - - - - 0x0095AB 02:959B: E0 12     CPX #$12
C - - - - - 0x0095AD 02:959D: B0 06     BCS bra_95A5
C - - - - - 0x0095AF 02:959F: C9 15     CMP #$15
C - - - - - 0x0095B1 02:95A1: D0 02     BNE bra_95A5
C - - - - - 0x0095B3 02:95A3: A9 06     LDA #$06
bra_95A5:
C - - - - - 0x0095B5 02:95A5: 9D 20 07  STA ram_0720_obj,X
bra_95A8_RTS:
C - - - - - 0x0095B8 02:95A8: 60        RTS
bra_95A9:
C - - - - - 0x0095B9 02:95A9: A9 00     LDA #$00
C - - - - - 0x0095BB 02:95AB: F0 EE     BEQ bra_959B    ; jmp
bra_95AD:
C - - - - - 0x0095BD 02:95AD: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x0095C0 02:95B0: 29 07     AND #$07
C - - - - - 0x0095C2 02:95B2: A8        TAY
C - - - - - 0x0095C3 02:95B3: B9 C1 95  LDA tbl_95C1,Y
C - - - - - 0x0095C6 02:95B6: D0 E3     BNE bra_959B    ; jmp
bra_95B8:
C - - - - - 0x0095C8 02:95B8: 20 78 91  JSR sub_9178_stage_AND_01
C - - - - - 0x0095CB 02:95BB: D0 EB     BNE bra_95A8_RTS
C - - - - - 0x0095CD 02:95BD: A9 15     LDA #$15
C - - - - - 0x0095CF 02:95BF: D0 DA     BNE bra_959B    ; jmp



tbl_95C1:
- D 0 - - - 0x0095D1 02:95C1: 10        .byte $10   ; 00 
- - - - - - 0x0095D2 02:95C2: 11        .byte $11   ; 01 
- D 0 - - - 0x0095D3 02:95C3: 11        .byte $11   ; 02 
- - - - - - 0x0095D4 02:95C4: 11        .byte $11   ; 03 
- D 0 - - - 0x0095D5 02:95C5: 12        .byte $12   ; 04 
- - - - - - 0x0095D6 02:95C6: 11        .byte $11   ; 05 
- D 0 - - - 0x0095D7 02:95C7: 11        .byte $11   ; 06 



tbl_95C8:
- - - - - - 0x0095D8 02:95C8: 11        .byte $11   ; 00 
- D 0 - - - 0x0095D9 02:95C9: 15        .byte $15   ; 01 
- - - - - - 0x0095DA 02:95CA: 15        .byte $15   ; 02 never used 0x0095A3
- - - - - - 0x0095DB 02:95CB: 15        .byte $15   ; 03 never used 0x00959F
- D 0 - - - 0x0095DC 02:95CC: 15        .byte $15   ; 04 
- D 0 - - - 0x0095DD 02:95CD: 15        .byte $15   ; 05 
- D 0 - - - 0x0095DE 02:95CE: 00        .byte $00   ; 06 
- D 0 - - - 0x0095DF 02:95CF: 0F        .byte $0F   ; 07 
- D 0 - - - 0x0095E0 02:95D0: 15        .byte $15   ; 08 
- D 0 - - - 0x0095E1 02:95D1: 00        .byte $00   ; 09 
- D 0 - - - 0x0095E2 02:95D2: 06        .byte $06   ; 0A 
- - - - - - 0x0095E3 02:95D3: 19        .byte $19   ; 0B 
- D 0 - - - 0x0095E4 02:95D4: 15        .byte $15   ; 0C 
- D 0 - - - 0x0095E5 02:95D5: 15        .byte $15   ; 0D 
- D 0 - - - 0x0095E6 02:95D6: 00        .byte $00   ; 0E 
- D 0 - - - 0x0095E7 02:95D7: 15        .byte $15   ; 0F 



loc_0x0095E8_play_music:
sub_0x0095E8_play_music:
; bzk optimize
C D 0 - - - 0x0095E8 02:95D8: 85 0A     STA ram_000A
C - - - - - 0x0095EA 02:95DA: 4C EA 86  JMP loc_86EA_play_music



sub_0x0095ED:
C - - - - - 0x0095ED 02:95DD: 84 00     STY ram_0000
C - - - - - 0x0095EF 02:95DF: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0095F2 02:95E2: 29 FC     AND #$FC
C - - - - - 0x0095F4 02:95E4: 05 00     ORA ram_0000
C - - - - - 0x0095F6 02:95E6: 4C 6F 98  JMP loc_986F



sub_95E9_06B2x_EOR_80:
loc_0x0095F9_06B2x_EOR_80:
C D 0 - - - 0x0095F9 02:95E9: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x0095FC 02:95EC: 49 80     EOR #$80
loc_95EE:
loc_0x0095FE_sta_06B2x:
C D 0 - - - 0x0095FE 02:95EE: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x009601 02:95F1: 60        RTS



sub_95F2:
sub_0x009602:
C - - - - - 0x009602 02:95F2: 20 7D 91  JSR sub_917D_06B2x_AND_F0
C - - - - - 0x009605 02:95F5: 4C EE 95  JMP loc_95EE


; bzk garbage
- - - - - - 0x009608 02:95F8: 85 02     STA ram_0002
- - - - - - 0x00960A 02:95FA: 84 03     STY ram_0003
- - - - - - 0x00960C 02:95FC: 20 BA 96  JSR sub_96BA
- - - - - - 0x00960F 02:95FF: A5 01     LDA ram_0001
- - - - - - 0x009611 02:9601: C5 03     CMP ram_0003
- - - - - - 0x009613 02:9603: D0 04     BNE bra_9609_RTS
- - - - - - 0x009615 02:9605: A5 00     LDA ram_0000
- - - - - - 0x009617 02:9607: C5 02     CMP ram_0002
bra_9609_RTS:
- - - - - - 0x009619 02:9609: 60        RTS



sub_0x00961A:
C - - - - - 0x00961A 02:960A: A4 02     LDY ram_0002
C - - - - - 0x00961C 02:960C: B9 00 04  LDA ram_0400,Y
C - - - - - 0x00961F 02:960F: 85 1B     STA ram_001B
C - - - - - 0x009621 02:9611: A9 04     LDA #con_F3D6_04
C - - - - - 0x009623 02:9613: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x009626 02:9616: A4 02     LDY ram_0002
C - - - - - 0x009628 02:9618: B9 00 04  LDA ram_0400,Y
C - - - - - 0x00962B 02:961B: C5 1B     CMP ram_001B
C - - - - - 0x00962D 02:961D: 60        RTS



loc_0x00962E:
sub_0x00962E:
C D 0 - - - 0x00962E 02:961E: A5 03     LDA ram_0003
C - - - - - 0x009630 02:9620: 30 31     BMI bra_9653
C - - - - - 0x009632 02:9622: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x009635 02:9625: 18        CLC
C - - - - - 0x009636 02:9626: 69 40     ADC #$40
C - - - - - 0x009638 02:9628: 85 06     STA ram_0006
C - - - - - 0x00963A 02:962A: 20 7C 96  JSR sub_967C
loc_962D:
C D 0 - - - 0x00963D 02:962D: A5 01     LDA ram_0001
C - - - - - 0x00963F 02:962F: C5 03     CMP ram_0003
C - - - - - 0x009641 02:9631: F0 08     BEQ bra_963B
C - - - - - 0x009643 02:9633: 6A        ROR
C - - - - - 0x009644 02:9634: 45 06     EOR ram_0006
C - - - - - 0x009646 02:9636: 2A        ROL
C - - - - - 0x009647 02:9637: 90 18     BCC bra_9651
- - - - - - 0x009649 02:9639: B0 0C     BCS bra_9647    ; jmp
bra_963B:
C - - - - - 0x00964B 02:963B: A5 00     LDA ram_0000
C - - - - - 0x00964D 02:963D: C5 02     CMP ram_0002
C - - - - - 0x00964F 02:963F: F0 06     BEQ bra_9647
C - - - - - 0x009651 02:9641: 6A        ROR
C - - - - - 0x009652 02:9642: 45 06     EOR ram_0006
C - - - - - 0x009654 02:9644: 2A        ROL
C - - - - - 0x009655 02:9645: 90 0A     BCC bra_9651
bra_9647:
loc_0x009657:
sub_0x009657:
C D 0 - - - 0x009657 02:9647: A5 04     LDA ram_0004
C - - - - - 0x009659 02:9649: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00965C 02:964C: A5 05     LDA ram_0005
C - - - - - 0x00965E 02:964E: 9D BE 07  STA ram_07BE_unk,X
bra_9651:
C - - - - - 0x009661 02:9651: 18        CLC
C - - - - - 0x009662 02:9652: 60        RTS
bra_9653:
C - - - - - 0x009663 02:9653: 29 7F     AND #$7F
C - - - - - 0x009665 02:9655: 85 03     STA ram_0003
C - - - - - 0x009667 02:9657: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00966A 02:965A: 85 06     STA ram_0006
C - - - - - 0x00966C 02:965C: 20 BA 96  JSR sub_96BA
C - - - - - 0x00966F 02:965F: 4C 2D 96  JMP loc_962D



loc_0x009672:
C D 0 - - - 0x009672 02:9662: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x009675 02:9665: 0A        ASL
C - - - - - 0x009676 02:9666: 0A        ASL
C - - - - - 0x009677 02:9667: A8        TAY
C - - - - - 0x009678 02:9668: B1 00     LDA (ram_0000),Y
C - - - - - 0x00967A 02:966A: C8        INY
C - - - - - 0x00967B 02:966B: 85 02     STA ram_0002
C - - - - - 0x00967D 02:966D: B1 00     LDA (ram_0000),Y
C - - - - - 0x00967F 02:966F: C8        INY
C - - - - - 0x009680 02:9670: 85 03     STA ram_0003
C - - - - - 0x009682 02:9672: B1 00     LDA (ram_0000),Y
C - - - - - 0x009684 02:9674: C8        INY
C - - - - - 0x009685 02:9675: 85 04     STA ram_0004
C - - - - - 0x009687 02:9677: B1 00     LDA (ram_0000),Y
C - - - - - 0x009689 02:9679: 85 05     STA ram_0005
C - - - - - 0x00968B 02:967B: 60        RTS



sub_967C:
sub_0x00968C:
C - - - - - 0x00968C 02:967C: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00968F 02:967F: 29 10     AND #$10
C - - - - - 0x009691 02:9681: D0 28     BNE bra_96AB
C - - - - - 0x009693 02:9683: A0 01     LDY #$01
C - - - - - 0x009695 02:9685: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x009698 02:9688: 29 20     AND #$20
C - - - - - 0x00969A 02:968A: F0 01     BEQ bra_968D
C - - - - - 0x00969C 02:968C: C8        INY
bra_968D:
C - - - - - 0x00969D 02:968D: 84 01     STY ram_0001
C - - - - - 0x00969F 02:968F: A9 00     LDA #$00
C - - - - - 0x0096A1 02:9691: 38        SEC
C - - - - - 0x0096A2 02:9692: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x0096A5 02:9695: 85 00     STA ram_0000
C - - - - - 0x0096A7 02:9697: A5 01     LDA ram_0001
C - - - - - 0x0096A9 02:9699: E9 00     SBC #$00
C - - - - - 0x0096AB 02:969B: 85 01     STA ram_0001
C - - - - - 0x0096AD 02:969D: A5 61     LDA ram_0061
C - - - - - 0x0096AF 02:969F: 38        SEC
C - - - - - 0x0096B0 02:96A0: E5 00     SBC ram_0000
C - - - - - 0x0096B2 02:96A2: 85 00     STA ram_0000
C - - - - - 0x0096B4 02:96A4: A5 60     LDA ram_0060
C - - - - - 0x0096B6 02:96A6: E5 01     SBC ram_0001
C - - - - - 0x0096B8 02:96A8: 85 01     STA ram_0001
C - - - - - 0x0096BA 02:96AA: 60        RTS
bra_96AB:
C - - - - - 0x0096BB 02:96AB: A5 61     LDA ram_0061
C - - - - - 0x0096BD 02:96AD: 18        CLC
C - - - - - 0x0096BE 02:96AE: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x0096C1 02:96B1: 85 00     STA ram_0000
C - - - - - 0x0096C3 02:96B3: A5 60     LDA ram_0060
C - - - - - 0x0096C5 02:96B5: 69 00     ADC #$00
C - - - - - 0x0096C7 02:96B7: 85 01     STA ram_0001
C - - - - - 0x0096C9 02:96B9: 60        RTS



sub_96BA:
sub_0x0096CA:
C - - - - - 0x0096CA 02:96BA: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0096CD 02:96BD: 29 80     AND #$80
C - - - - - 0x0096CF 02:96BF: D0 1F     BNE bra_96E0
C - - - - - 0x0096D1 02:96C1: A0 00     LDY #$00
C - - - - - 0x0096D3 02:96C3: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0096D6 02:96C6: 29 40     AND #$40
C - - - - - 0x0096D8 02:96C8: F0 01     BEQ bra_96CB
C - - - - - 0x0096DA 02:96CA: C8        INY
bra_96CB:
C - - - - - 0x0096DB 02:96CB: 84 01     STY ram_0001
C - - - - - 0x0096DD 02:96CD: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0096E0 02:96D0: 85 00     STA ram_0000
C - - - - - 0x0096E2 02:96D2: A5 64     LDA ram_0064
C - - - - - 0x0096E4 02:96D4: 18        CLC
C - - - - - 0x0096E5 02:96D5: 65 00     ADC ram_0000
C - - - - - 0x0096E7 02:96D7: 85 00     STA ram_0000
C - - - - - 0x0096E9 02:96D9: A5 63     LDA ram_0063
C - - - - - 0x0096EB 02:96DB: 65 01     ADC ram_0001
C - - - - - 0x0096ED 02:96DD: 85 01     STA ram_0001
C - - - - - 0x0096EF 02:96DF: 60        RTS
bra_96E0:
C - - - - - 0x0096F0 02:96E0: A9 01     LDA #$01
C - - - - - 0x0096F2 02:96E2: 85 01     STA ram_0001
C - - - - - 0x0096F4 02:96E4: A9 00     LDA #$00
C - - - - - 0x0096F6 02:96E6: 38        SEC
C - - - - - 0x0096F7 02:96E7: FD 68 06  SBC ram_obj_pos_Y,X
C - - - - - 0x0096FA 02:96EA: 85 00     STA ram_0000
C - - - - - 0x0096FC 02:96EC: A5 01     LDA ram_0001
C - - - - - 0x0096FE 02:96EE: E9 00     SBC #$00
C - - - - - 0x009700 02:96F0: 85 01     STA ram_0001
C - - - - - 0x009702 02:96F2: A5 64     LDA ram_0064
C - - - - - 0x009704 02:96F4: 38        SEC
C - - - - - 0x009705 02:96F5: E5 00     SBC ram_0000
C - - - - - 0x009707 02:96F7: 85 00     STA ram_0000
C - - - - - 0x009709 02:96F9: A5 63     LDA ram_0063
C - - - - - 0x00970B 02:96FB: E5 01     SBC ram_0001
C - - - - - 0x00970D 02:96FD: 85 01     STA ram_0001
C - - - - - 0x00970F 02:96FF: 60        RTS



sub_0x009710:
C - - - - - 0x009710 02:9700: 0A        ASL
C - - - - - 0x009711 02:9701: 0A        ASL
C - - - - - 0x009712 02:9702: 0A        ASL
C - - - - - 0x009713 02:9703: 0A        ASL
C - - - - - 0x009714 02:9704: 85 0A     STA ram_000A
C - - - - - 0x009716 02:9706: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x009719 02:9709: 48        PHA
C - - - - - 0x00971A 02:970A: A9 91     LDA #$91
C - - - - - 0x00971C 02:970C: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x00971F 02:970F: 20 94 84  JSR sub_8494
C - - - - - 0x009722 02:9712: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x009725 02:9715: 29 0F     AND #$0F
C - - - - - 0x009727 02:9717: 05 0A     ORA ram_000A
C - - - - - 0x009729 02:9719: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x00972C 02:971C: 4C 33 97  JMP loc_9733



sub_0x00972F:
C - - - - - 0x00972F 02:971F: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x009732 02:9722: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x009735 02:9725: 48        PHA
C - - - - - 0x009736 02:9726: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x009739 02:9729: 29 0F     AND #$0F
C - - - - - 0x00973B 02:972B: 20 72 93  JSR sub_9372
C - - - - - 0x00973E 02:972E: B0 03     BCS bra_9733
C - - - - - 0x009740 02:9730: 20 A1 84  JSR sub_84A1
bra_9733:
loc_9733:
C D 0 - - - 0x009743 02:9733: 68        PLA
C - - - - - 0x009744 02:9734: 4C E4 91  JMP loc_91E4



loc_0x009747:
C D 0 - - - 0x009747 02:9737: 20 3E 85  JSR sub_853E
loc_973A:
loc_0x00974A:
C D 0 - - - 0x00974A 02:973A: 20 4C 9A  JSR sub_9A4C
C - - - - - 0x00974D 02:973D: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x009750 02:9740: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x009753 02:9743: A9 2C     LDA #$2C
C - - - - - 0x009755 02:9745: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x009758 02:9748: A9 00     LDA #$00
C - - - - - 0x00975A 02:974A: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00975D 02:974D: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x009760 02:9750: 9D 0A 07  STA ram_070A_obj,X
C - - - - - 0x009763 02:9753: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x009766 02:9756: 38        SEC
C - - - - - 0x009767 02:9757: 60        RTS



sub_9758:
sub_0x009768:
C - - - - - 0x009768 02:9758: AD 82 07  LDA ram_0782_unk
C - - - - - 0x00976B 02:975B: 18        CLC
C - - - - - 0x00976C 02:975C: 6D 83 07  ADC ram_0782_unk + $01
C - - - - - 0x00976F 02:975F: C9 5C     CMP #$5C
bra_9761_RTS:
C - - - - - 0x009771 02:9761: 60        RTS



sub_9762:
sub_0x009772:
loc_0x009772:
C D 0 - - - 0x009772 02:9762: 9D 0A 07  STA ram_070A_obj,X
C - - - - - 0x009775 02:9765: 20 61 98  JSR sub_9861
C - - - - - 0x009778 02:9768: 20 4C 9A  JSR sub_9A4C
C - - - - - 0x00977B 02:976B: E0 0A     CPX #$0A
C - - - - - 0x00977D 02:976D: B0 F2     BCS bra_9761_RTS
C - - - - - 0x00977F 02:976F: 9D F4 06  STA ram_06F4_obj,X
sub_9772:
ofs_006_0x009782_16:
C - - - - - 0x009782 02:9772: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x009785 02:9775: F0 37     BEQ bra_97AE_RTS
C - - - - - 0x009787 02:9777: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00978A 02:977A: F0 32     BEQ bra_97AE_RTS
C - - - - - 0x00978C 02:977C: 30 30     BMI bra_97AE_RTS
C - - - - - 0x00978E 02:977E: A9 24     LDA #con_F3D6_24
C - - - - - 0x009790 02:9780: 4C B3 F3  JMP loc_0x01F3C3



ofs_006_0x009793_24:
C - - J - - 0x009793 02:9783: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x009796 02:9786: E0 0A     CPX #$0A
C - - - - - 0x009798 02:9788: 90 16     BCC bra_97A0
C - - - - - 0x00979A 02:978A: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00979D 02:978D: D0 11     BNE bra_97A0
C - - - - - 0x00979F 02:978F: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x0097A2 02:9792: C9 FF     CMP #$FF
C - - - - - 0x0097A4 02:9794: F0 05     BEQ bra_979B
C - - - - - 0x0097A6 02:9796: 20 CB 9A  JSR sub_9ACB
C - - - - - 0x0097A9 02:9799: B0 13     BCS bra_97AE_RTS
bra_979B:
C - - - - - 0x0097AB 02:979B: A9 00     LDA #$00
C - - - - - 0x0097AD 02:979D: 9D F4 06  STA ram_06F4_obj,X
bra_97A0:
C - - - - - 0x0097B0 02:97A0: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x0097B3 02:97A3: C9 FE     CMP #$FE
C - - - - - 0x0097B5 02:97A5: F0 07     BEQ bra_97AE_RTS
C - - - - - 0x0097B7 02:97A7: 29 1F     AND #$1F
C - - - - - 0x0097B9 02:97A9: F0 04     BEQ bra_97AF
C - - - - - 0x0097BB 02:97AB: DE F4 06  DEC ram_06F4_obj,X
bra_97AE_RTS:
C - - - - - 0x0097BE 02:97AE: 60        RTS
bra_97AF:
C - - - - - 0x0097BF 02:97AF: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0097C2 02:97B2: 4A        LSR
C - - - - - 0x0097C3 02:97B3: 29 1E     AND #$1E
C - - - - - 0x0097C5 02:97B5: A8        TAY
C - - - - - 0x0097C6 02:97B6: B9 7A 98  LDA tbl_987A,Y
C - - - - - 0x0097C9 02:97B9: 85 10     STA ram_0010
C - - - - - 0x0097CB 02:97BB: B9 7B 98  LDA tbl_987A + $01,Y
C - - - - - 0x0097CE 02:97BE: 85 11     STA ram_0011
C - - - - - 0x0097D0 02:97C0: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x0097D3 02:97C3: 0A        ASL
C - - - - - 0x0097D4 02:97C4: A8        TAY
C - - - - - 0x0097D5 02:97C5: 88        DEY
C - - - - - 0x0097D6 02:97C6: 88        DEY
C - - - - - 0x0097D7 02:97C7: B1 10     LDA (ram_0010),Y
C - - - - - 0x0097D9 02:97C9: 85 12     STA ram_0012
C - - - - - 0x0097DB 02:97CB: C8        INY
C - - - - - 0x0097DC 02:97CC: B1 10     LDA (ram_0010),Y
C - - - - - 0x0097DE 02:97CE: 85 13     STA ram_0013
C - - - - - 0x0097E0 02:97D0: A0 00     LDY #$00
C - - - - - 0x0097E2 02:97D2: B1 12     LDA (ram_0012),Y
C - - - - - 0x0097E4 02:97D4: C9 FC     CMP #$FC
C - - - - - 0x0097E6 02:97D6: F0 2E     BEQ bra_9806
C - - - - - 0x0097E8 02:97D8: C9 FD     CMP #$FD
C - - - - - 0x0097EA 02:97DA: D0 4E     BNE bra_982A
C - - - - - 0x0097EC 02:97DC: C8        INY
C - - - - - 0x0097ED 02:97DD: B1 12     LDA (ram_0012),Y
C - - - - - 0x0097EF 02:97DF: 1D F4 06  ORA ram_06F4_obj,X
C - - - - - 0x0097F2 02:97E2: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0097F5 02:97E5: 20 73 98  JSR sub_9873
C - - - - - 0x0097F8 02:97E8: A8        TAY
C - - - - - 0x0097F9 02:97E9: C8        INY
C - - - - - 0x0097FA 02:97EA: C8        INY
C - - - - - 0x0097FB 02:97EB: B1 12     LDA (ram_0012),Y
C - - - - - 0x0097FD 02:97ED: C9 FE     CMP #$FE
C - - - - - 0x0097FF 02:97EF: F0 47     BEQ bra_9838
C - - - - - 0x009801 02:97F1: C9 FF     CMP #$FF
C - - - - - 0x009803 02:97F3: D0 0C     BNE bra_9801
C - - - - - 0x009805 02:97F5: A0 02     LDY #$02
C - - - - - 0x009807 02:97F7: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00980A 02:97FA: 29 1F     AND #$1F
C - - - - - 0x00980C 02:97FC: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00980F 02:97FF: B1 12     LDA (ram_0012),Y
bra_9801:
C - - - - - 0x009811 02:9801: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x009814 02:9804: D0 52     BNE bra_9858
bra_9806:
C - - - - - 0x009816 02:9806: C8        INY
C - - - - - 0x009817 02:9807: B1 12     LDA (ram_0012),Y
C - - - - - 0x009819 02:9809: 1D F4 06  ORA ram_06F4_obj,X
C - - - - - 0x00981C 02:980C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00981F 02:980F: 20 73 98  JSR sub_9873
C - - - - - 0x009822 02:9812: C8        INY
C - - - - - 0x009823 02:9813: D1 12     CMP (ram_0012),Y
C - - - - - 0x009825 02:9815: D0 0A     BNE bra_9821
C - - - - - 0x009827 02:9817: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00982A 02:981A: 29 1F     AND #$1F
C - - - - - 0x00982C 02:981C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00982F 02:981F: A9 00     LDA #$00
bra_9821:
C - - - - - 0x009831 02:9821: C8        INY
C - - - - - 0x009832 02:9822: 18        CLC
C - - - - - 0x009833 02:9823: 71 12     ADC (ram_0012),Y
C - - - - - 0x009835 02:9825: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x009838 02:9828: D0 2E     BNE bra_9858
bra_982A:
C - - - - - 0x00983A 02:982A: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00983D 02:982D: 20 73 98  JSR sub_9873
C - - - - - 0x009840 02:9830: 0A        ASL
C - - - - - 0x009841 02:9831: A8        TAY
C - - - - - 0x009842 02:9832: B1 12     LDA (ram_0012),Y
C - - - - - 0x009844 02:9834: C9 FE     CMP #$FE
C - - - - - 0x009846 02:9836: D0 04     BNE bra_983C
; FE
bra_9838:
loc_9838:
loc_0x009848:
C D 0 - - - 0x009848 02:9838: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00984B 02:983B: 60        RTS
bra_983C:
C - - - - - 0x00984C 02:983C: C9 FF     CMP #$FF
C - - - - - 0x00984E 02:983E: D0 0C     BNE bra_984C
; FF
C - - - - - 0x009850 02:9840: A0 00     LDY #$00
C - - - - - 0x009852 02:9842: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x009855 02:9845: 29 1F     AND #$1F
C - - - - - 0x009857 02:9847: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00985A 02:984A: B1 12     LDA (ram_0012),Y
bra_984C:
C - - - - - 0x00985C 02:984C: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x00985F 02:984F: C8        INY
C - - - - - 0x009860 02:9850: B1 12     LDA (ram_0012),Y
C - - - - - 0x009862 02:9852: 1D F4 06  ORA ram_06F4_obj,X
C - - - - - 0x009865 02:9855: 9D F4 06  STA ram_06F4_obj,X
bra_9858:
C - - - - - 0x009868 02:9858: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00986B 02:985B: 18        CLC
C - - - - - 0x00986C 02:985C: 69 20     ADC #$20
C - - - - - 0x00986E 02:985E: 4C 38 98  JMP loc_9838



sub_9861:
C - - - - - 0x009871 02:9861: 98        TYA
C - - - - - 0x009872 02:9862: 0A        ASL
C - - - - - 0x009873 02:9863: 0A        ASL
C - - - - - 0x009874 02:9864: 29 3C     AND #$3C
C - - - - - 0x009876 02:9866: 85 10     STA ram_0010
C - - - - - 0x009878 02:9868: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00987B 02:986B: 29 C3     AND #$C3
C - - - - - 0x00987D 02:986D: 05 10     ORA ram_0010
loc_986F:
C D 0 - - - 0x00987F 02:986F: 9D 34 06  STA ram_obj_animation_hi,X
bra_9872_RTS:
C - - - - - 0x009882 02:9872: 60        RTS



sub_9873:
C - - - - - 0x009883 02:9873: 2A        ROL
C - - - - - 0x009884 02:9874: 2A        ROL
C - - - - - 0x009885 02:9875: 2A        ROL
C - - - - - 0x009886 02:9876: 2A        ROL
C - - - - - 0x009887 02:9877: 29 07     AND #$07
C - - - - - 0x009889 02:9879: 60        RTS



tbl_987A:
- D 0 - - - 0x00988A 02:987A: 9B B2     .word _off019_0x00D2AB_00
- D 0 - - - 0x00988C 02:987C: D1 B4     .word _off019_0x00D4E1_01
- D 0 - - - 0x00988E 02:987E: 33 B6     .word _off019_0x00D643_02
- D 0 - - - 0x009890 02:9880: 39 BB     .word _off019_0x00DB49_03
- D 0 - - - 0x009892 02:9882: FF B8     .word _off019_0x00D90F_04
- D 0 - - - 0x009894 02:9884: 6E BD     .word _off019_0x00DD7E_05
- D 0 - - - 0x009896 02:9886: 02 BE     .word _off019_0x00DE12_06
- D 0 - - - 0x009898 02:9888: DF B7     .word _off019_0x00D7EF_07
- D 0 - - - 0x00989A 02:988A: 85 BD     .word _off019_0x00DD95_08
- D 0 - - - 0x00989C 02:988C: 87 BE     .word _off019_0x00DE97_09
- D 0 - - - 0x00989E 02:988E: D7 BE     .word _off019_0x00DEE7_0A
- D 0 - - - 0x0098A0 02:9890: 39 BF     .word _off019_0x00DF49_0B
- D 0 - - - 0x0098A2 02:9892: 90 BF     .word _off019_0x00DFA0_0C
- D 0 - - - 0x0098A4 02:9894: CF BF     .word _off019_0x00DFDF_0D
- - - - - - 0x0098A6 02:9896: E8 BF     .word _off019_0x00DFF8_0E



sub_9898:
loc_9898:
C D 0 - - - 0x0098A8 02:9898: 20 03 99  JSR sub_9903
C - - - - - 0x0098AB 02:989B: B0 D5     BCS bra_9872_RTS
C - - - - - 0x0098AD 02:989D: 20 57 99  JSR sub_9957
C - - - - - 0x0098B0 02:98A0: B0 D0     BCS bra_9872_RTS
C - - - - - 0x0098B2 02:98A2: 20 4A 99  JSR sub_994A
C - - - - - 0x0098B5 02:98A5: B0 CB     BCS bra_9872_RTS
C - - - - - 0x0098B7 02:98A7: A5 92     LDA ram_0092
C - - - - - 0x0098B9 02:98A9: 85 00     STA ram_0000
C - - - - - 0x0098BB 02:98AB: A5 93     LDA ram_0093
C - - - - - 0x0098BD 02:98AD: 85 01     STA ram_0001
C - - - - - 0x0098BF 02:98AF: 20 D5 99  JSR sub_99D5
sub_98B2:
sub_0x0098C2:
C - - - - - 0x0098C2 02:98B2: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0098C5 02:98B5: C9 9C     CMP #$9C
C - - - - - 0x0098C7 02:98B7: F0 12     BEQ bra_98CB
C - - - - - 0x0098C9 02:98B9: C9 0A     CMP #$0A
C - - - - - 0x0098CB 02:98BB: F0 1B     BEQ bra_98D8
C - - - - - 0x0098CD 02:98BD: C9 1F     CMP #$1F
C - - - - - 0x0098CF 02:98BF: F0 17     BEQ bra_98D8
C - - - - - 0x0098D1 02:98C1: 20 78 91  JSR sub_9178_stage_AND_01
C - - - - - 0x0098D4 02:98C4: D0 1F     BNE bra_98E5
C - - - - - 0x0098D6 02:98C6: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0098D9 02:98C9: 30 1A     BMI bra_98E5
bra_98CB:
C - - - - - 0x0098DB 02:98CB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0098DE 02:98CE: C9 F8     CMP #$F8
C - - - - - 0x0098E0 02:98D0: B0 13     BCS bra_98E5
C - - - - - 0x0098E2 02:98D2: C9 D0     CMP #$D0
C - - - - - 0x0098E4 02:98D4: B0 3E     BCS bra_9914
C - - - - - 0x0098E6 02:98D6: 90 0D     BCC bra_98E5
bra_98D8:
C - - - - - 0x0098E8 02:98D8: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0098EB 02:98DB: C9 DE     CMP #$DE
C - - - - - 0x0098ED 02:98DD: 90 06     BCC bra_98E5
C - - - - - 0x0098EF 02:98DF: 20 47 9A  JSR sub_9A47
C - - - - - 0x0098F2 02:98E2: 9D 78 07  STA ram_0778_unk,X
bra_98E5:
C - - - - - 0x0098F5 02:98E5: BD DE 06  LDA ram_obj_spd_Y,X
C - - - - - 0x0098F8 02:98E8: 18        CLC
C - - - - - 0x0098F9 02:98E9: 65 00     ADC ram_0000
C - - - - - 0x0098FB 02:98EB: 9D DE 06  STA ram_obj_spd_Y,X
C - - - - - 0x0098FE 02:98EE: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009901 02:98F1: 65 01     ADC ram_0001
C - - - - - 0x009903 02:98F3: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x009906 02:98F6: 6A        ROR
C - - - - - 0x009907 02:98F7: 45 01     EOR ram_0001
C - - - - - 0x009909 02:98F9: 2A        ROL
C - - - - - 0x00990A 02:98FA: 90 4C     BCC bra_9948
C - - - - - 0x00990C 02:98FC: A0 80     LDY #$80
C - - - - - 0x00990E 02:98FE: A9 C0     LDA #$C0
C - - - - - 0x009910 02:9900: 4C 95 99  JMP loc_9995



sub_9903:
C - - - - - 0x009913 02:9903: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x009916 02:9906: 29 30     AND #$30
C - - - - - 0x009918 02:9908: F0 3E     BEQ bra_9948
C - - - - - 0x00991A 02:990A: BD 4E 06  LDA ram_obj_pos_X,X
loc_990D:
C D 0 - - - 0x00991D 02:990D: 38        SEC
C - - - - - 0x00991E 02:990E: E9 40     SBC #$40
C - - - - - 0x009920 02:9910: C9 80     CMP #$80
C - - - - - 0x009922 02:9912: B0 34     BCS bra_9948
bra_9914:
loc_9914:
C D 0 - - - 0x009924 02:9914: E0 0A     CPX #$0A
C - - - - - 0x009926 02:9916: B0 1B     BCS bra_9933
C - - - - - 0x009928 02:9918: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00992B 02:991B: 29 07     AND #$07
C - - - - - 0x00992D 02:991D: A8        TAY
C - - - - - 0x00992E 02:991E: B9 40 99  LDA tbl_9940_bits,Y
C - - - - - 0x009931 02:9921: 85 00     STA ram_0000
C - - - - - 0x009933 02:9923: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x009936 02:9926: 4A        LSR
C - - - - - 0x009937 02:9927: 4A        LSR
C - - - - - 0x009938 02:9928: 4A        LSR
C - - - - - 0x009939 02:9929: 29 07     AND #$07
C - - - - - 0x00993B 02:992B: A8        TAY
C - - - - - 0x00993C 02:992C: B9 38 99  LDA tbl_9938,Y
C - - - - - 0x00993F 02:992F: 25 00     AND ram_0000
C - - - - - 0x009941 02:9931: D0 15     BNE bra_9948
bra_9933:
C - - - - - 0x009943 02:9933: 20 13 9A  JSR sub_9A13
C - - - - - 0x009946 02:9936: 38        SEC
C - - - - - 0x009947 02:9937: 60        RTS



tbl_9938:
- D 0 - - - 0x009948 02:9938: 00        .byte $00   ; 00 
- D 0 - - - 0x009949 02:9939: 19        .byte $19   ; 08 
- D 0 - - - 0x00994A 02:993A: E5        .byte $E5   ; 10 
- D 0 - - - 0x00994B 02:993B: 00        .byte $00   ; 18 
- D 0 - - - 0x00994C 02:993C: 26        .byte $26   ; 20 
- D 0 - - - 0x00994D 02:993D: 80        .byte $80   ; 28 
- D 0 - - - 0x00994E 02:993E: 90        .byte $90   ; 30 
- D 0 - - - 0x00994F 02:993F: 00        .byte $00   ; 38 



tbl_9940_bits:
tbl_0x009950_bits:
- D 0 - - - 0x009950 02:9940: 80        .byte $80   ; 00 
- D 0 - - - 0x009951 02:9941: 40        .byte $40   ; 01 
- D 0 - - - 0x009952 02:9942: 20        .byte $20   ; 02 
- D 0 - - - 0x009953 02:9943: 10        .byte $10   ; 03 
- D 0 - - - 0x009954 02:9944: 08        .byte $08   ; 04 
- D 0 - - - 0x009955 02:9945: 04        .byte $04   ; 05 
- D 0 - - - 0x009956 02:9946: 02        .byte $02   ; 06 
- D 0 - - - 0x009957 02:9947: 01        .byte $01   ; 07 



bra_9948:
C - - - - - 0x009958 02:9948: 18        CLC
C - - - - - 0x009959 02:9949: 60        RTS



sub_994A:
C - - - - - 0x00995A 02:994A: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00995D 02:994D: 29 C0     AND #$C0
C - - - - - 0x00995F 02:994F: F0 F7     BEQ bra_9948
C - - - - - 0x009961 02:9951: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009964 02:9954: 4C 0D 99  JMP loc_990D



sub_9957:
C - - - - - 0x009967 02:9957: E0 0A     CPX #$0A
C - - - - - 0x009969 02:9959: B0 14     BCS bra_996F
C - - - - - 0x00996B 02:995B: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00996E 02:995E: C9 08     CMP #$08
C - - - - - 0x009970 02:9960: B0 0D     BCS bra_996F
C - - - - - 0x009972 02:9962: A9 00     LDA #$00
C - - - - - 0x009974 02:9964: 85 00     STA ram_0000
C - - - - - 0x009976 02:9966: 85 01     STA ram_0001
C - - - - - 0x009978 02:9968: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00997B 02:996B: 29 20     AND #$20
C - - - - - 0x00997D 02:996D: D0 08     BNE bra_9977
bra_996F:
C - - - - - 0x00997F 02:996F: A5 90     LDA ram_0090
C - - - - - 0x009981 02:9971: 85 00     STA ram_0000
C - - - - - 0x009983 02:9973: A5 91     LDA ram_0091
C - - - - - 0x009985 02:9975: 85 01     STA ram_0001
bra_9977:
C - - - - - 0x009987 02:9977: 20 C8 99  JSR sub_99C8
sub_997A:
sub_0x00998A:
C - - - - - 0x00998A 02:997A: BD C8 06  LDA ram_obj_spd_X,X
C - - - - - 0x00998D 02:997D: 18        CLC
C - - - - - 0x00998E 02:997E: 65 00     ADC ram_0000
C - - - - - 0x009990 02:9980: 9D C8 06  STA ram_obj_spd_X,X
C - - - - - 0x009993 02:9983: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009996 02:9986: 65 01     ADC ram_0001
C - - - - - 0x009998 02:9988: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00999B 02:998B: 6A        ROR
C - - - - - 0x00999C 02:998C: 45 01     EOR ram_0001
C - - - - - 0x00999E 02:998E: 2A        ROL
C - - - - - 0x00999F 02:998F: 90 B7     BCC bra_9948
C - - - - - 0x0099A1 02:9991: A0 20     LDY #$20
C - - - - - 0x0099A3 02:9993: A9 30     LDA #$30
loc_9995:   ; A = C0, Y = 80
C D 0 - - - 0x0099A5 02:9995: 85 02     STA ram_0002
C - - - - - 0x0099A7 02:9997: 49 FF     EOR #$FF
C - - - - - 0x0099A9 02:9999: 85 03     STA ram_0003
C - - - - - 0x0099AB 02:999B: 98        TYA
C - - - - - 0x0099AC 02:999C: A4 01     LDY ram_0001
C - - - - - 0x0099AE 02:999E: 10 01     BPL bra_99A1
C - - - - - 0x0099B0 02:99A0: 4A        LSR
bra_99A1:
C - - - - - 0x0099B1 02:99A1: 85 00     STA ram_0000
C - - - - - 0x0099B3 02:99A3: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0099B6 02:99A6: 25 02     AND ram_0002
C - - - - - 0x0099B8 02:99A8: 45 00     EOR ram_0000
C - - - - - 0x0099BA 02:99AA: C5 02     CMP ram_0002
C - - - - - 0x0099BC 02:99AC: F0 17     BEQ bra_99C5
C - - - - - 0x0099BE 02:99AE: 4A        LSR
C - - - - - 0x0099BF 02:99AF: A4 01     LDY ram_0001
C - - - - - 0x0099C1 02:99B1: 10 02     BPL bra_99B5
C - - - - - 0x0099C3 02:99B3: 0A        ASL
C - - - - - 0x0099C4 02:99B4: 0A        ASL
bra_99B5:
C - - - - - 0x0099C5 02:99B5: 85 00     STA ram_0000
C - - - - - 0x0099C7 02:99B7: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0099CA 02:99BA: 25 03     AND ram_0003
C - - - - - 0x0099CC 02:99BC: 05 00     ORA ram_0000
C - - - - - 0x0099CE 02:99BE: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x0099D1 02:99C1: 29 08     AND #$08
C - - - - - 0x0099D3 02:99C3: D0 30     BNE bra_99F5
bra_99C5:
C - - - - - 0x0099D5 02:99C5: 4C 14 99  JMP loc_9914



sub_99C8:
sub_0x0099D8:
C - - - - - 0x0099D8 02:99C8: A5 6A     LDA ram_006A
C - - - - - 0x0099DA 02:99CA: 85 02     STA ram_0002
C - - - - - 0x0099DC 02:99CC: A5 69     LDA ram_0069
C - - - - - 0x0099DE 02:99CE: 85 03     STA ram_0003
C - - - - - 0x0099E0 02:99D0: A5 62     LDA ram_0062
C - - - - - 0x0099E2 02:99D2: 4C DF 99  JMP loc_99DF



sub_99D5:
sub_0x0099E5:
C - - - - - 0x0099E5 02:99D5: A5 6C     LDA ram_006C
C - - - - - 0x0099E7 02:99D7: 85 02     STA ram_0002
C - - - - - 0x0099E9 02:99D9: A5 6B     LDA ram_006B
C - - - - - 0x0099EB 02:99DB: 85 03     STA ram_0003
C - - - - - 0x0099ED 02:99DD: A5 65     LDA ram_0065
loc_99DF:
C D 0 - - - 0x0099EF 02:99DF: 85 04     STA ram_0004
C - - - - - 0x0099F1 02:99E1: 20 F7 99  JSR sub_99F7
C - - - - - 0x0099F4 02:99E4: A9 00     LDA #$00
C - - - - - 0x0099F6 02:99E6: 85 02     STA ram_0002
C - - - - - 0x0099F8 02:99E8: A5 00     LDA ram_0000
C - - - - - 0x0099FA 02:99EA: 38        SEC
C - - - - - 0x0099FB 02:99EB: E5 02     SBC ram_0002
C - - - - - 0x0099FD 02:99ED: 85 00     STA ram_0000
C - - - - - 0x0099FF 02:99EF: A5 01     LDA ram_0001
C - - - - - 0x009A01 02:99F1: E5 03     SBC ram_0003
C - - - - - 0x009A03 02:99F3: 85 01     STA ram_0001
bra_99F5:
C - - - - - 0x009A05 02:99F5: 18        CLC
C - - - - - 0x009A06 02:99F6: 60        RTS



sub_99F7:
C - - - - - 0x009A07 02:99F7: A5 03     LDA ram_0003
C - - - - - 0x009A09 02:99F9: 10 0E     BPL bra_9A09
C - - - - - 0x009A0B 02:99FB: A5 02     LDA ram_0002
C - - - - - 0x009A0D 02:99FD: F0 13     BEQ bra_9A12_RTS
C - - - - - 0x009A0F 02:99FF: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
C - - - - - 0x009A12 02:9A02: 18        CLC
C - - - - - 0x009A13 02:9A03: 65 04     ADC ram_0004
C - - - - - 0x009A15 02:9A05: B0 0B     BCS bra_9A12_RTS
C - - - - - 0x009A17 02:9A07: 90 07     BCC bra_9A10
bra_9A09:
C - - - - - 0x009A19 02:9A09: A5 04     LDA ram_0004
C - - - - - 0x009A1B 02:9A0B: 38        SEC
C - - - - - 0x009A1C 02:9A0C: E5 02     SBC ram_0002
C - - - - - 0x009A1E 02:9A0E: B0 02     BCS bra_9A12_RTS
bra_9A10:
C - - - - - 0x009A20 02:9A10: E6 03     INC ram_0003
bra_9A12_RTS:
C - - - - - 0x009A22 02:9A12: 60        RTS



sub_9A13:
C - - - - - 0x009A23 02:9A13: E0 0A     CPX #$0A
C - - - - - 0x009A25 02:9A15: B0 3B     BCS bra_9A52
sub_9A17:
loc_9A17:
loc_0x009A27:
sub_0x009A27:
ofs_017_9A17_02:
C D 0 - - - 0x009A27 02:9A17: 20 33 9A  JSR sub_9A33
C - - - - - 0x009A2A 02:9A1A: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x009A2D 02:9A1D: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x009A30 02:9A20: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x009A33 02:9A23: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x009A36 02:9A26: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x009A39 02:9A29: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x009A3C 02:9A2C: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x009A3F 02:9A2F: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x009A42 02:9A32: 60        RTS



sub_9A33:
C - - - - - 0x009A43 02:9A33: A9 00     LDA #$00
C - - - - - 0x009A45 02:9A35: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x009A48 02:9A38: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x009A4B 02:9A3B: 9D 36 07  STA ram_0736_obj,X
C - - - - - 0x009A4E 02:9A3E: 9D 4C 07  STA ram_074C_obj,X
C - - - - - 0x009A51 02:9A41: 9D 62 07  STA ram_0762_obj,X
C - - - - - 0x009A54 02:9A44: 9D 20 07  STA ram_0720_obj,X
sub_9A47:
sub_0x009A57:
loc_0x009A57:
C D 0 - - - 0x009A57 02:9A47: A9 00     LDA #$00
C - - - - - 0x009A59 02:9A49: 9D 0A 07  STA ram_070A_obj,X
sub_9A4C:
sub_0x009A5C:
C - - - - - 0x009A5C 02:9A4C: A9 00     LDA #$00
loc_9A4E:
C - - - - - 0x009A5E 02:9A4E: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x009A61 02:9A51: 60        RTS



bra_9A52:
sub_9A52:
sub_0x009A62:
loc_0x009A62:
ofs_020_0x009A62_06:
ofs_020_0x009A62_0A:
ofs_020_0x009A62_0C:
ofs_020_0x009A62_12:
ofs_020_0x009A62_16:
C D 0 - - - 0x009A62 02:9A52: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x009A65 02:9A55: F0 20     BEQ bra_9A77_RTS
C - - - - - 0x009A67 02:9A57: 20 33 9A  JSR sub_9A33
C - - - - - 0x009A6A 02:9A5A: A9 FF     LDA #$FF
C - - - - - 0x009A6C 02:9A5C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x009A6F 02:9A5F: E0 12     CPX #$12
C - - - - - 0x009A71 02:9A61: B0 14     BCS bra_9A77_RTS
C - - - - - 0x009A73 02:9A63: A0 00     LDY #$00
C - - - - - 0x009A75 02:9A65: E0 0E     CPX #$0E
C - - - - - 0x009A77 02:9A67: 90 01     BCC bra_9A6A
C - - - - - 0x009A79 02:9A69: C8        INY
bra_9A6A:
C - - - - - 0x009A7A 02:9A6A: B9 83 00  LDA ram_bullet_counter,Y
C - - - - - 0x009A7D 02:9A6D: 38        SEC
C - - - - - 0x009A7E 02:9A6E: E9 01     SBC #$01
C - - - - - 0x009A80 02:9A70: 10 02     BPL bra_9A74
- - - - - - 0x009A82 02:9A72: A9 00     LDA #$00
bra_9A74:
C - - - - - 0x009A84 02:9A74: 99 83 00  STA ram_bullet_counter,Y
bra_9A77_RTS:
C - - - - - 0x009A87 02:9A77: 60        RTS



sub_0x009A88_drop_a_box_with_powerup:
C - - - - - 0x009A88 02:9A78: A0 0A     LDY #$0A
C - - - - - 0x009A8A 02:9A7A: 20 41 91  JSR sub_9141_0682x_and_0F
C - - - - - 0x009A8D 02:9A7D: C9 0A     CMP #$0A
C - - - - - 0x009A8F 02:9A7F: F0 03     BEQ bra_9A84
C - - - - - 0x009A91 02:9A81: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
bra_9A84:
C - - - - - 0x009A94 02:9A84: B9 BB 9A  LDA tbl_9ABB,Y
C - - - - - 0x009A97 02:9A87: 85 00     STA ram_0000
C - - - - - 0x009A99 02:9A89: B9 BC 9A  LDA tbl_9ABB + $01,Y
C - - - - - 0x009A9C 02:9A8C: 85 01     STA ram_0001
C - - - - - 0x009A9E 02:9A8E: A0 16     LDY #$16
bra_9A90_loop:
C - - - - - 0x009AA0 02:9A90: B9 1A 06  LDA ram_obj_animation_lo,Y
C - - - - - 0x009AA3 02:9A93: F0 06     BEQ bra_9A9B
C - - - - - 0x009AA5 02:9A95: C8        INY
C - - - - - 0x009AA6 02:9A96: C0 1A     CPY #$1A
C - - - - - 0x009AA8 02:9A98: 90 F6     BCC bra_9A90_loop
- - - - - - 0x009AAA 02:9A9A: 60        RTS
bra_9A9B:
C - - - - - 0x009AAB 02:9A9B: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009AAE 02:9A9E: 18        CLC
C - - - - - 0x009AAF 02:9A9F: 65 00     ADC ram_0000
C - - - - - 0x009AB1 02:9AA1: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x009AB4 02:9AA4: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009AB7 02:9AA7: 18        CLC
C - - - - - 0x009AB8 02:9AA8: 65 01     ADC ram_0001
C - - - - - 0x009ABA 02:9AAA: 99 68 06  STA ram_obj_pos_Y,Y
; a box with a powerup
C - - - - - 0x009ABD 02:9AAD: A9 8E     LDA #$8E
C - - - - - 0x009ABF 02:9AAF: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x009AC2 02:9AB2: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x009AC5 02:9AB5: A9 1C     LDA #$1C
C - - - - - 0x009AC7 02:9AB7: 99 34 06  STA ram_obj_animation_hi,Y
C - - - - - 0x009ACA 02:9ABA: 60        RTS



tbl_9ABB:
- D 0 - - - 0x009ACB 02:9ABB: F8        .byte $F8, $00   ; 00 
- D 0 - - - 0x009ACD 02:9ABD: F8        .byte $F8, $F8   ; 10 
- D 0 - - - 0x009ACF 02:9ABF: 00        .byte $00, $F8   ; 20 
- D 0 - - - 0x009AD1 02:9AC1: 08        .byte $08, $F8   ; 30 
- D 0 - - - 0x009AD3 02:9AC3: 08        .byte $08, $00   ; 40 
- D 0 - - - 0x009AD5 02:9AC5: 08        .byte $08, $08   ; 50 
- D 0 - - - 0x009AD7 02:9AC7: 00        .byte $00, $08   ; 60 
- D 0 - - - 0x009AD9 02:9AC9: F8        .byte $F8, $08   ; 70 



sub_9ACB:
C - - - - - 0x009ADB 02:9ACB: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x009ADE 02:9ACE: C9 16     CMP #$16
C - - - - - 0x009AE0 02:9AD0: 90 13     BCC bra_9AE5
bra_9AD2:
C - - - - - 0x009AE2 02:9AD2: 4C 84 9B  JMP loc_9B84
bra_9AD5:
C - - - - - 0x009AE5 02:9AD5: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x009AE8 02:9AD8: D0 06     BNE bra_9AE0
C - - - - - 0x009AEA 02:9ADA: BD 96 07  LDA ram_0796_unk,X
C - - - - - 0x009AED 02:9ADD: 4C F1 9A  JMP loc_9AF1
bra_9AE0:
C - - - - - 0x009AF0 02:9AE0: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x009AF3 02:9AE3: D0 0C     BNE bra_9AF1
bra_9AE5:
C - - - - - 0x009AF5 02:9AE5: AA        TAX
C - - - - - 0x009AF6 02:9AE6: E0 0A     CPX #$0A
C - - - - - 0x009AF8 02:9AE8: B0 E8     BCS bra_9AD2
C - - - - - 0x009AFA 02:9AEA: E0 02     CPX #$02
C - - - - - 0x009AFC 02:9AEC: 90 E7     BCC bra_9AD5
C - - - - - 0x009AFE 02:9AEE: BD 1A 06  LDA ram_obj_animation_lo,X
bra_9AF1:
loc_9AF1:
C D 0 - - - 0x009B01 02:9AF1: F0 DF     BEQ bra_9AD2
C - - - - - 0x009B03 02:9AF3: 85 1E     STA ram_001E
C - - - - - 0x009B05 02:9AF5: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x009B08 02:9AF8: 4A        LSR
C - - - - - 0x009B09 02:9AF9: 4A        LSR
C - - - - - 0x009B0A 02:9AFA: 29 0F     AND #$0F
C - - - - - 0x009B0C 02:9AFC: C9 08     CMP #$08
C - - - - - 0x009B0E 02:9AFE: F0 06     BEQ bra_9B06
C - - - - - 0x009B10 02:9B00: C9 05     CMP #$05
C - - - - - 0x009B12 02:9B02: 90 13     BCC bra_9B17
C - - - - - 0x009B14 02:9B04: B0 CC     BCS bra_9AD2    ; jmp
bra_9B06:
C - - - - - 0x009B16 02:9B06: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x009B19 02:9B09: 38        SEC
C - - - - - 0x009B1A 02:9B0A: E9 04     SBC #$04
C - - - - - 0x009B1C 02:9B0C: C9 08     CMP #$08
C - - - - - 0x009B1E 02:9B0E: B0 C2     BCS bra_9AD2
; 00-07
C - - - - - 0x009B20 02:9B10: A8        TAY
C - - - - - 0x009B21 02:9B11: B9 EF 9C  LDA tbl_9CEF,Y
C - - - - - 0x009B24 02:9B14: 4C 29 9B  JMP loc_9B29
bra_9B17:
C - - - - - 0x009B27 02:9B17: 0A        ASL
C - - - - - 0x009B28 02:9B18: A8        TAY
C - - - - - 0x009B29 02:9B19: B9 8F 9B  LDA tbl_9B8F,Y
C - - - - - 0x009B2C 02:9B1C: 85 00     STA ram_0000
C - - - - - 0x009B2E 02:9B1E: B9 90 9B  LDA tbl_9B8F + $01,Y
C - - - - - 0x009B31 02:9B21: 85 01     STA ram_0001
C - - - - - 0x009B33 02:9B23: BC 0A 07  LDY ram_070A_obj,X
C - - - - - 0x009B36 02:9B26: 88        DEY
C - - - - - 0x009B37 02:9B27: B1 00     LDA (ram_0000),Y
loc_9B29:
C D 0 - - - 0x009B39 02:9B29: 85 1F     STA ram_001F
C - - - - - 0x009B3B 02:9B2B: F0 A5     BEQ bra_9AD2
C - - - - - 0x009B3D 02:9B2D: 0A        ASL
C - - - - - 0x009B3E 02:9B2E: A8        TAY
C - - - - - 0x009B3F 02:9B2F: B9 F7 9C  LDA tbl_9CF7,Y
C - - - - - 0x009B42 02:9B32: 85 02     STA ram_0002
C - - - - - 0x009B44 02:9B34: B9 F8 9C  LDA tbl_9CF7 + $01,Y
C - - - - - 0x009B47 02:9B37: 85 03     STA ram_0003
C - - - - - 0x009B49 02:9B39: 86 1E     STX ram_001E
C - - - - - 0x009B4B 02:9B3B: A6 53     LDX ram_0053
C - - - - - 0x009B4D 02:9B3D: 20 41 91  JSR sub_9141_0682x_and_0F
C - - - - - 0x009B50 02:9B40: C9 03     CMP #$03
C - - - - - 0x009B52 02:9B42: D0 17     BNE bra_9B5B
C - - - - - 0x009B54 02:9B44: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x009B57 02:9B47: 98        TYA
C - - - - - 0x009B58 02:9B48: 29 0E     AND #$0E
C - - - - - 0x009B5A 02:9B4A: A8        TAY
C - - - - - 0x009B5B 02:9B4B: A5 02     LDA ram_0002
C - - - - - 0x009B5D 02:9B4D: 18        CLC
C - - - - - 0x009B5E 02:9B4E: 79 F5 9D  ADC tbl_9DF5,Y
C - - - - - 0x009B61 02:9B51: 85 02     STA ram_0002
C - - - - - 0x009B63 02:9B53: A5 03     LDA ram_0003
C - - - - - 0x009B65 02:9B55: 18        CLC
C - - - - - 0x009B66 02:9B56: 79 F6 9D  ADC tbl_9DF5 + $01,Y
C - - - - - 0x009B69 02:9B59: 85 03     STA ram_0003
bra_9B5B:
C - - - - - 0x009B6B 02:9B5B: A6 1E     LDX ram_001E
C - - - - - 0x009B6D 02:9B5D: A4 53     LDY ram_0053
C - - - - - 0x009B6F 02:9B5F: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009B72 02:9B62: D0 07     BNE bra_9B6B
- - - - - - 0x009B74 02:9B64: A5 02     LDA ram_0002
- - - - - - 0x009B76 02:9B66: 30 20     BMI bra_9B88
- - - - - - 0x009B78 02:9B68: BD 4E 06  LDA ram_obj_pos_X,X
bra_9B6B:
C - - - - - 0x009B7B 02:9B6B: 18        CLC
C - - - - - 0x009B7C 02:9B6C: 65 02     ADC ram_0002
C - - - - - 0x009B7E 02:9B6E: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x009B81 02:9B71: 6A        ROR
C - - - - - 0x009B82 02:9B72: 45 02     EOR ram_0002
C - - - - - 0x009B84 02:9B74: 2A        ROL
C - - - - - 0x009B85 02:9B75: B0 11     BCS bra_9B88
C - - - - - 0x009B87 02:9B77: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009B8A 02:9B7A: 18        CLC
C - - - - - 0x009B8B 02:9B7B: 65 03     ADC ram_0003
C - - - - - 0x009B8D 02:9B7D: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x009B90 02:9B80: 6A        ROR
C - - - - - 0x009B91 02:9B81: 45 03     EOR ram_0003
C - - - - - 0x009B93 02:9B83: 2A        ROL
loc_9B84:
C D 0 - - - 0x009B94 02:9B84: A6 53     LDX ram_0053
C - - - - - 0x009B96 02:9B86: 18        CLC
C - - - - - 0x009B97 02:9B87: 60        RTS
bra_9B88:
C - - - - - 0x009B98 02:9B88: A6 53     LDX ram_0053
C - - - - - 0x009B9A 02:9B8A: 20 52 9A  JSR sub_9A52
C - - - - - 0x009B9D 02:9B8D: 38        SEC
C - - - - - 0x009B9E 02:9B8E: 60        RTS



tbl_9B8F:
- D 0 - - - 0x009B9F 02:9B8F: 99 9B     .word _off027_9B99_00
- D 0 - - - 0x009BA1 02:9B91: FD 9B     .word _off027_9BFD_01
- D 0 - - - 0x009BA3 02:9B93: 2A 9C     .word _off027_9C2A_02
- D 0 - - - 0x009BA5 02:9B95: 71 9C     .word _off027_9C71_03
- D 0 - - - 0x009BA7 02:9B97: AD 9C     .word _off027_9CAD_04



_off027_9B99_00:
- D 0 - I - 0x009BA9 02:9B99: 01        .byte $01   ; 
- D 0 - I - 0x009BAA 02:9B9A: 02        .byte $02   ; 
- D 0 - I - 0x009BAB 02:9B9B: 03        .byte $03   ; 
- - - - - - 0x009BAC 02:9B9C: 04        .byte $04   ; 
- - - - - - 0x009BAD 02:9B9D: 00        .byte $00   ; 
- - - - - - 0x009BAE 02:9B9E: 00        .byte $00   ; 
- D 0 - I - 0x009BAF 02:9B9F: 05        .byte $05   ; 
- - - - - - 0x009BB0 02:9BA0: 05        .byte $05   ; 
- D 0 - I - 0x009BB1 02:9BA1: 06        .byte $06   ; 
- - - - - - 0x009BB2 02:9BA2: 06        .byte $06   ; 
- D 0 - I - 0x009BB3 02:9BA3: 07        .byte $07   ; 
- D 0 - I - 0x009BB4 02:9BA4: 08        .byte $08   ; 
- - - - - - 0x009BB5 02:9BA5: 07        .byte $07   ; 
- - - - - - 0x009BB6 02:9BA6: 08        .byte $08   ; 
- D 0 - I - 0x009BB7 02:9BA7: 09        .byte $09   ; 
- D 0 - I - 0x009BB8 02:9BA8: 0A        .byte $0A   ; 
- - - - - - 0x009BB9 02:9BA9: 09        .byte $09   ; 
- - - - - - 0x009BBA 02:9BAA: 0A        .byte $0A   ; 
- - - - - - 0x009BBB 02:9BAB: 00        .byte $00   ; 
- - - - - - 0x009BBC 02:9BAC: 00        .byte $00   ; 
- - - - - - 0x009BBD 02:9BAD: 00        .byte $00   ; 
- - - - - - 0x009BBE 02:9BAE: 00        .byte $00   ; 
- D 0 - I - 0x009BBF 02:9BAF: 00        .byte $00   ; 
- - - - - - 0x009BC0 02:9BB0: 00        .byte $00   ; 
- - - - - - 0x009BC1 02:9BB1: 00        .byte $00   ; 
- - - - - - 0x009BC2 02:9BB2: 00        .byte $00   ; 
- - - - - - 0x009BC3 02:9BB3: 00        .byte $00   ; 
- - - - - - 0x009BC4 02:9BB4: 00        .byte $00   ; 
- - - - - - 0x009BC5 02:9BB5: 7D        .byte $7D   ; 
- D 0 - I - 0x009BC6 02:9BB6: 0B        .byte $0B   ; 
- D 0 - I - 0x009BC7 02:9BB7: 0C        .byte $0C   ; 
- D 0 - I - 0x009BC8 02:9BB8: 0D        .byte $0D   ; 
- D 0 - I - 0x009BC9 02:9BB9: 0E        .byte $0E   ; 
- D 0 - I - 0x009BCA 02:9BBA: 0F        .byte $0F   ; 
- D 0 - I - 0x009BCB 02:9BBB: 10        .byte $10   ; 
- - - - - - 0x009BCC 02:9BBC: 0F        .byte $0F   ; 
- - - - - - 0x009BCD 02:9BBD: 10        .byte $10   ; 
- D 0 - I - 0x009BCE 02:9BBE: 11        .byte $11   ; 
- D 0 - I - 0x009BCF 02:9BBF: 12        .byte $12   ; 
- - - - - - 0x009BD0 02:9BC0: 11        .byte $11   ; 
- - - - - - 0x009BD1 02:9BC1: 12        .byte $12   ; 
- D 0 - I - 0x009BD2 02:9BC2: 13        .byte $13   ; 
- D 0 - I - 0x009BD3 02:9BC3: 14        .byte $14   ; 
- - - - - - 0x009BD4 02:9BC4: 13        .byte $13   ; 
- - - - - - 0x009BD5 02:9BC5: 14        .byte $14   ; 
- D 0 - I - 0x009BD6 02:9BC6: 00        .byte $00   ; 
- - - - - - 0x009BD7 02:9BC7: 00        .byte $00   ; 
- - - - - - 0x009BD8 02:9BC8: 00        .byte $00   ; 
- - - - - - 0x009BD9 02:9BC9: 00        .byte $00   ; 
- - - - - - 0x009BDA 02:9BCA: 00        .byte $00   ; 
- - - - - - 0x009BDB 02:9BCB: 00        .byte $00   ; 
- D 0 - I - 0x009BDC 02:9BCC: 7D        .byte $7D   ; 
- D 0 - I - 0x009BDD 02:9BCD: 15        .byte $15   ; 
- D 0 - I - 0x009BDE 02:9BCE: 16        .byte $16   ; 
- D 0 - I - 0x009BDF 02:9BCF: 17        .byte $17   ; 
- D 0 - I - 0x009BE0 02:9BD0: 18        .byte $18   ; 
- - - - - - 0x009BE1 02:9BD1: 19        .byte $19   ; 
- D 0 - I - 0x009BE2 02:9BD2: 19        .byte $19   ; 
- - - - - - 0x009BE3 02:9BD3: 1A        .byte $1A   ; 
- D 0 - I - 0x009BE4 02:9BD4: 1A        .byte $1A   ; 
- - - - - - 0x009BE5 02:9BD5: 1B        .byte $1B   ; 
- D 0 - I - 0x009BE6 02:9BD6: 1B        .byte $1B   ; 
- - - - - - 0x009BE7 02:9BD7: 1C        .byte $1C   ; 
- D 0 - I - 0x009BE8 02:9BD8: 1C        .byte $1C   ; 
- - - - - - 0x009BE9 02:9BD9: 1C        .byte $1C   ; 
- D 0 - I - 0x009BEA 02:9BDA: 5F        .byte $5F   ; 
- - - - - - 0x009BEB 02:9BDB: 1B        .byte $1B   ; 
- D 0 - I - 0x009BEC 02:9BDC: 5E        .byte $5E   ; 
- D 0 - I - 0x009BED 02:9BDD: 00        .byte $00   ; 
- - - - - - 0x009BEE 02:9BDE: 00        .byte $00   ; 
- D 0 - I - 0x009BEF 02:9BDF: 7D        .byte $7D   ; 
- - - - - - 0x009BF0 02:9BE0: 00        .byte $00   ; 
- - - - - - 0x009BF1 02:9BE1: 00        .byte $00   ; 
- - - - - - 0x009BF2 02:9BE2: 00        .byte $00   ; 
- - - - - - 0x009BF3 02:9BE3: 00        .byte $00   ; 
- D 0 - I - 0x009BF4 02:9BE4: 1D        .byte $1D   ; 
- - - - - - 0x009BF5 02:9BE5: 1E        .byte $1E   ; 
- - - - - - 0x009BF6 02:9BE6: 1F        .byte $1F   ; 
- - - - - - 0x009BF7 02:9BE7: 20        .byte $20   ; 
- - - - - - 0x009BF8 02:9BE8: 21        .byte $21   ; 
- D 0 - I - 0x009BF9 02:9BE9: 21        .byte $21   ; 
- - - - - - 0x009BFA 02:9BEA: 21        .byte $21   ; 
- D 0 - I - 0x009BFB 02:9BEB: 21        .byte $21   ; 
- - - - - - 0x009BFC 02:9BEC: 22        .byte $22   ; 
- D 0 - I - 0x009BFD 02:9BED: 22        .byte $22   ; 
- - - - - - 0x009BFE 02:9BEE: 23        .byte $23   ; 
- - - - - - 0x009BFF 02:9BEF: 23        .byte $23   ; 
- - - - - - 0x009C00 02:9BF0: 24        .byte $24   ; 
- D 0 - I - 0x009C01 02:9BF1: 24        .byte $24   ; 
- - - - - - 0x009C02 02:9BF2: 25        .byte $25   ; 
- - - - - - 0x009C03 02:9BF3: 25        .byte $25   ; 
- - - - - - 0x009C04 02:9BF4: 26        .byte $26   ; 
- D 0 - I - 0x009C05 02:9BF5: 27        .byte $27   ; 
- - - - - - 0x009C06 02:9BF6: 28        .byte $28   ; 
- D 0 - I - 0x009C07 02:9BF7: 28        .byte $28   ; 
- - - - - - 0x009C08 02:9BF8: 29        .byte $29   ; 
- D 0 - I - 0x009C09 02:9BF9: 29        .byte $29   ; 
- D 0 - I - 0x009C0A 02:9BFA: 00        .byte $00   ; 
- - - - - - 0x009C0B 02:9BFB: 00        .byte $00   ; 
- - - - - - 0x009C0C 02:9BFC: 7D        .byte $7D   ; 



_off027_9BFD_01:
- D 0 - I - 0x009C0D 02:9BFD: 33        .byte $33   ; 
- D 0 - I - 0x009C0E 02:9BFE: 39        .byte $39   ; 
- D 0 - I - 0x009C0F 02:9BFF: 34        .byte $34   ; 
- - - - - - 0x009C10 02:9C00: 38        .byte $38   ; 
- D 0 - I - 0x009C11 02:9C01: 35        .byte $35   ; 
- D 0 - I - 0x009C12 02:9C02: 2F        .byte $2F   ; 
- D 0 - I - 0x009C13 02:9C03: 36        .byte $36   ; 
- - - - - - 0x009C14 02:9C04: 37        .byte $37   ; 
- D 0 - I - 0x009C15 02:9C05: 3A        .byte $3A   ; 
- - - - - - 0x009C16 02:9C06: 58        .byte $58   ; 
- - - - - - 0x009C17 02:9C07: 34        .byte $34   ; 
- - - - - - 0x009C18 02:9C08: 38        .byte $38   ; 
- - - - - - 0x009C19 02:9C09: 35        .byte $35   ; 
- - - - - - 0x009C1A 02:9C0A: 3D        .byte $3D   ; 
- D 0 - I - 0x009C1B 02:9C0B: 3B        .byte $3B   ; 
- - - - - - 0x009C1C 02:9C0C: 3C        .byte $3C   ; 
- - - - - - 0x009C1D 02:9C0D: 00        .byte $00   ; 
- - - - - - 0x009C1E 02:9C0E: 00        .byte $00   ; 
- - - - - - 0x009C1F 02:9C0F: 00        .byte $00   ; 
- - - - - - 0x009C20 02:9C10: 00        .byte $00   ; 
- - - - - - 0x009C21 02:9C11: 00        .byte $00   ; 
- - - - - - 0x009C22 02:9C12: 00        .byte $00   ; 
- - - - - - 0x009C23 02:9C13: 00        .byte $00   ; 
- - - - - - 0x009C24 02:9C14: 00        .byte $00   ; 
- - - - - - 0x009C25 02:9C15: 00        .byte $00   ; 
- - - - - - 0x009C26 02:9C16: 00        .byte $00   ; 
- - - - - - 0x009C27 02:9C17: 00        .byte $00   ; 
- - - - - - 0x009C28 02:9C18: 00        .byte $00   ; 
- - - - - - 0x009C29 02:9C19: 00        .byte $00   ; 
- D 0 - I - 0x009C2A 02:9C1A: 46        .byte $46   ; 
- D 0 - I - 0x009C2B 02:9C1B: 3F        .byte $3F   ; 
- D 0 - I - 0x009C2C 02:9C1C: 40        .byte $40   ; 
- D 0 - I - 0x009C2D 02:9C1D: 47        .byte $47   ; 
- D 0 - I - 0x009C2E 02:9C1E: 48        .byte $48   ; 
- D 0 - I - 0x009C2F 02:9C1F: 49        .byte $49   ; 
- D 0 - I - 0x009C30 02:9C20: 4A        .byte $4A   ; 
- D 0 - I - 0x009C31 02:9C21: 4B        .byte $4B   ; 
- D 0 - I - 0x009C32 02:9C22: 3E        .byte $3E   ; 
- - - - - - 0x009C33 02:9C23: 3F        .byte $3F   ; 
- D 0 - I - 0x009C34 02:9C24: 40        .byte $40   ; 
- D 0 - I - 0x009C35 02:9C25: 41        .byte $41   ; 
- D 0 - I - 0x009C36 02:9C26: 42        .byte $42   ; 
- - - - - - 0x009C37 02:9C27: 43        .byte $43   ; 
- - - - - - 0x009C38 02:9C28: 44        .byte $44   ; 
- D 0 - I - 0x009C39 02:9C29: 45        .byte $45   ; 



_off027_9C2A_02:
- - - - - - 0x009C3A 02:9C2A: 32        .byte $32   ; 
- D 0 - I - 0x009C3B 02:9C2B: 2B        .byte $2B   ; 
- - - - - - 0x009C3C 02:9C2C: 2C        .byte $2C   ; 
- D 0 - I - 0x009C3D 02:9C2D: 2D        .byte $2D   ; 
- - - - - - 0x009C3E 02:9C2E: 2E        .byte $2E   ; 
- - - - - - 0x009C3F 02:9C2F: 2F        .byte $2F   ; 
- - - - - - 0x009C40 02:9C30: 30        .byte $30   ; 
- - - - - - 0x009C41 02:9C31: 31        .byte $31   ; 
- - - - - - 0x009C42 02:9C32: 00        .byte $00   ; 
- - - - - - 0x009C43 02:9C33: 00        .byte $00   ; 
- - - - - - 0x009C44 02:9C34: 00        .byte $00   ; 
- - - - - - 0x009C45 02:9C35: 00        .byte $00   ; 
- - - - - - 0x009C46 02:9C36: 00        .byte $00   ; 
- - - - - - 0x009C47 02:9C37: 00        .byte $00   ; 
- - - - - - 0x009C48 02:9C38: 00        .byte $00   ; 
- - - - - - 0x009C49 02:9C39: 00        .byte $00   ; 
- - - - - - 0x009C4A 02:9C3A: 2A        .byte $2A   ; 
- - - - - - 0x009C4B 02:9C3B: 2B        .byte $2B   ; 
- - - - - - 0x009C4C 02:9C3C: 2C        .byte $2C   ; 
- - - - - - 0x009C4D 02:9C3D: 2D        .byte $2D   ; 
- - - - - - 0x009C4E 02:9C3E: 2E        .byte $2E   ; 
- - - - - - 0x009C4F 02:9C3F: 2F        .byte $2F   ; 
- - - - - - 0x009C50 02:9C40: 30        .byte $30   ; 
- - - - - - 0x009C51 02:9C41: 31        .byte $31   ; 
- - - - - - 0x009C52 02:9C42: 00        .byte $00   ; 
- - - - - - 0x009C53 02:9C43: 00        .byte $00   ; 
- - - - - - 0x009C54 02:9C44: 00        .byte $00   ; 
- - - - - - 0x009C55 02:9C45: 00        .byte $00   ; 
- - - - - - 0x009C56 02:9C46: 00        .byte $00   ; 
- - - - - - 0x009C57 02:9C47: 00        .byte $00   ; 
- D 0 - I - 0x009C58 02:9C48: 51        .byte $51   ; 
- D 0 - I - 0x009C59 02:9C49: 4C        .byte $4C   ; 
- D 0 - I - 0x009C5A 02:9C4A: 4D        .byte $4D   ; 
- D 0 - I - 0x009C5B 02:9C4B: 52        .byte $52   ; 
- D 0 - I - 0x009C5C 02:9C4C: 53        .byte $53   ; 
- - - - - - 0x009C5D 02:9C4D: 54        .byte $54   ; 
- - - - - - 0x009C5E 02:9C4E: 55        .byte $55   ; 
- D 0 - I - 0x009C5F 02:9C4F: 56        .byte $56   ; 
- - - - - - 0x009C60 02:9C50: 3A        .byte $3A   ; 
- - - - - - 0x009C61 02:9C51: 4C        .byte $4C   ; 
- - - - - - 0x009C62 02:9C52: 4D        .byte $4D   ; 
- D 0 - I - 0x009C63 02:9C53: 4E        .byte $4E   ; 
- D 0 - I - 0x009C64 02:9C54: 0B        .byte $0B   ; 
- - - - - - 0x009C65 02:9C55: 4F        .byte $4F   ; 
- - - - - - 0x009C66 02:9C56: 50        .byte $50   ; 
- D 0 - I - 0x009C67 02:9C57: 7D        .byte $7D   ; 
- - - - - - 0x009C68 02:9C58: 00        .byte $00   ; 
- - - - - - 0x009C69 02:9C59: 00        .byte $00   ; 
- - - - - - 0x009C6A 02:9C5A: 00        .byte $00   ; 
- D 0 - I - 0x009C6B 02:9C5B: 00        .byte $00   ; 
- - - - - - 0x009C6C 02:9C5C: 00        .byte $00   ; 
- - - - - - 0x009C6D 02:9C5D: 00        .byte $00   ; 
- - - - - - 0x009C6E 02:9C5E: 00        .byte $00   ; 
- - - - - - 0x009C6F 02:9C5F: 00        .byte $00   ; 
- - - - - - 0x009C70 02:9C60: 00        .byte $00   ; 
- - - - - - 0x009C71 02:9C61: 00        .byte $00   ; 
- - - - - - 0x009C72 02:9C62: 00        .byte $00   ; 
- - - - - - 0x009C73 02:9C63: 00        .byte $00   ; 
- - - - - - 0x009C74 02:9C64: 00        .byte $00   ; 
- - - - - - 0x009C75 02:9C65: 00        .byte $00   ; 
- - - - - - 0x009C76 02:9C66: 57        .byte $57   ; 
- - - - - - 0x009C77 02:9C67: 58        .byte $58   ; 
- - - - - - 0x009C78 02:9C68: 59        .byte $59   ; 
- D 0 - I - 0x009C79 02:9C69: 25        .byte $25   ; 
- D 0 - I - 0x009C7A 02:9C6A: 24        .byte $24   ; 
- - - - - - 0x009C7B 02:9C6B: 29        .byte $29   ; 
- D 0 - I - 0x009C7C 02:9C6C: 28        .byte $28   ; 
- D 0 - I - 0x009C7D 02:9C6D: 5A        .byte $5A   ; 
- - - - - - 0x009C7E 02:9C6E: 5B        .byte $5B   ; 
- D 0 - I - 0x009C7F 02:9C6F: 5C        .byte $5C   ; 
- D 0 - I - 0x009C80 02:9C70: 5D        .byte $5D   ; 



_off027_9C71_03:
- - - - - - 0x009C81 02:9C71: 00        .byte $00   ; 
- - - - - - 0x009C82 02:9C72: 00        .byte $00   ; 
- - - - - - 0x009C83 02:9C73: 00        .byte $00   ; 
- - - - - - 0x009C84 02:9C74: 00        .byte $00   ; 
- - - - - - 0x009C85 02:9C75: 00        .byte $00   ; 
- - - - - - 0x009C86 02:9C76: 00        .byte $00   ; 
- - - - - - 0x009C87 02:9C77: 00        .byte $00   ; 
- - - - - - 0x009C88 02:9C78: 00        .byte $00   ; 
- - - - - - 0x009C89 02:9C79: 71        .byte $71   ; 
- - - - - - 0x009C8A 02:9C7A: 58        .byte $58   ; 
- D 0 - I - 0x009C8B 02:9C7B: 6C        .byte $6C   ; 
- - - - - - 0x009C8C 02:9C7C: 70        .byte $70   ; 
- D 0 - I - 0x009C8D 02:9C7D: 62        .byte $62   ; 
- D 0 - I - 0x009C8E 02:9C7E: 6F        .byte $6F   ; 
- D 0 - I - 0x009C8F 02:9C7F: 6D        .byte $6D   ; 
- D 0 - I - 0x009C90 02:9C80: 6E        .byte $6E   ; 
- - - - - - 0x009C91 02:9C81: 00        .byte $00   ; 
- D 0 - I - 0x009C92 02:9C82: 00        .byte $00   ; 
- D 0 - I - 0x009C93 02:9C83: 00        .byte $00   ; 
- D 0 - I - 0x009C94 02:9C84: 00        .byte $00   ; 
- - - - - - 0x009C95 02:9C85: 00        .byte $00   ; 
- D 0 - I - 0x009C96 02:9C86: 00        .byte $00   ; 
- D 0 - I - 0x009C97 02:9C87: 00        .byte $00   ; 
- - - - - - 0x009C98 02:9C88: 00        .byte $00   ; 
- - - - - - 0x009C99 02:9C89: 00        .byte $00   ; 
- - - - - - 0x009C9A 02:9C8A: 00        .byte $00   ; 
- - - - - - 0x009C9B 02:9C8B: 00        .byte $00   ; 
- - - - - - 0x009C9C 02:9C8C: 00        .byte $00   ; 
- - - - - - 0x009C9D 02:9C8D: 00        .byte $00   ; 
- - - - - - 0x009C9E 02:9C8E: 00        .byte $00   ; 
- - - - - - 0x009C9F 02:9C8F: 00        .byte $00   ; 
- - - - - - 0x009CA0 02:9C90: 00        .byte $00   ; 
- - - - - - 0x009CA1 02:9C91: 00        .byte $00   ; 
- D 0 - I - 0x009CA2 02:9C92: 6A        .byte $6A   ; 
- D 0 - I - 0x009CA3 02:9C93: 69        .byte $69   ; 
- D 0 - I - 0x009CA4 02:9C94: 3A        .byte $3A   ; 
- - - - - - 0x009CA5 02:9C95: 68        .byte $68   ; 
- D 0 - I - 0x009CA6 02:9C96: 6B        .byte $6B   ; 
- D 0 - I - 0x009CA7 02:9C97: 3D        .byte $3D   ; 
- D 0 - I - 0x009CA8 02:9C98: 7E        .byte $7E   ; 
- D 0 - I - 0x009CA9 02:9C99: 3C        .byte $3C   ; 
- - - - - - 0x009CAA 02:9C9A: 00        .byte $00   ; 
- - - - - - 0x009CAB 02:9C9B: 00        .byte $00   ; 
- - - - - - 0x009CAC 02:9C9C: 00        .byte $00   ; 
- - - - - - 0x009CAD 02:9C9D: 00        .byte $00   ; 
- - - - - - 0x009CAE 02:9C9E: 00        .byte $00   ; 
- - - - - - 0x009CAF 02:9C9F: 00        .byte $00   ; 
- - - - - - 0x009CB0 02:9CA0: 00        .byte $00   ; 
- - - - - - 0x009CB1 02:9CA1: 00        .byte $00   ; 
- - - - - - 0x009CB2 02:9CA2: 00        .byte $00   ; 
- - - - - - 0x009CB3 02:9CA3: 00        .byte $00   ; 
- - - - - - 0x009CB4 02:9CA4: 00        .byte $00   ; 
- - - - - - 0x009CB5 02:9CA5: 00        .byte $00   ; 
- - - - - - 0x009CB6 02:9CA6: 6A        .byte $6A   ; 
- - - - - - 0x009CB7 02:9CA7: 73        .byte $73   ; 
- - - - - - 0x009CB8 02:9CA8: 74        .byte $74   ; 
- D 0 - I - 0x009CB9 02:9CA9: 63        .byte $63   ; 
- D 0 - I - 0x009CBA 02:9CAA: 6B        .byte $6B   ; 
- D 0 - I - 0x009CBB 02:9CAB: 75        .byte $75   ; 
- D 0 - I - 0x009CBC 02:9CAC: 67        .byte $67   ; 



_off027_9CAD_04:
- D 0 - I - 0x009CBD 02:9CAD: 00        .byte $00   ; 
- - - - - - 0x009CBE 02:9CAE: 00        .byte $00   ; 
- - - - - - 0x009CBF 02:9CAF: 61        .byte $61   ; 
- D 0 - I - 0x009CC0 02:9CB0: 64        .byte $64   ; 
- D 0 - I - 0x009CC1 02:9CB1: 63        .byte $63   ; 
- D 0 - I - 0x009CC2 02:9CB2: 65        .byte $65   ; 
- - - - - - 0x009CC3 02:9CB3: 00        .byte $00   ; 
- - - - - - 0x009CC4 02:9CB4: 00        .byte $00   ; 
- - - - - - 0x009CC5 02:9CB5: 00        .byte $00   ; 
- - - - - - 0x009CC6 02:9CB6: 00        .byte $00   ; 
- - - - - - 0x009CC7 02:9CB7: 00        .byte $00   ; 
- - - - - - 0x009CC8 02:9CB8: 00        .byte $00   ; 
- - - - - - 0x009CC9 02:9CB9: 00        .byte $00   ; 
- - - - - - 0x009CCA 02:9CBA: 00        .byte $00   ; 
- - - - - - 0x009CCB 02:9CBB: 00        .byte $00   ; 
- - - - - - 0x009CCC 02:9CBC: 00        .byte $00   ; 
- - - - - - 0x009CCD 02:9CBD: 00        .byte $00   ; 
- - - - - - 0x009CCE 02:9CBE: 00        .byte $00   ; 
- - - - - - 0x009CCF 02:9CBF: 00        .byte $00   ; 
- - - - - - 0x009CD0 02:9CC0: 00        .byte $00   ; 
- D 0 - I - 0x009CD1 02:9CC1: 62        .byte $62   ; 
- D 0 - I - 0x009CD2 02:9CC2: 66        .byte $66   ; 
- - - - - - 0x009CD3 02:9CC3: 00        .byte $00   ; 
- - - - - - 0x009CD4 02:9CC4: 00        .byte $00   ; 
- - - - - - 0x009CD5 02:9CC5: 00        .byte $00   ; 
- - - - - - 0x009CD6 02:9CC6: 00        .byte $00   ; 
- - - - - - 0x009CD7 02:9CC7: 00        .byte $00   ; 
- - - - - - 0x009CD8 02:9CC8: 00        .byte $00   ; 
- - - - - - 0x009CD9 02:9CC9: 00        .byte $00   ; 
- D 0 - I - 0x009CDA 02:9CCA: 62        .byte $62   ; 
- D 0 - I - 0x009CDB 02:9CCB: 66        .byte $66   ; 
- - - - - - 0x009CDC 02:9CCC: 00        .byte $00   ; 
- - - - - - 0x009CDD 02:9CCD: 00        .byte $00   ; 
- D 0 - I - 0x009CDE 02:9CCE: 08        .byte $08   ; 
- - - - - - 0x009CDF 02:9CCF: 6B        .byte $6B   ; 
- - - - - - 0x009CE0 02:9CD0: 00        .byte $00   ; 
- D 0 - I - 0x009CE1 02:9CD1: 76        .byte $76   ; 
- - - - - - 0x009CE2 02:9CD2: 77        .byte $77   ; 
- - - - - - 0x009CE3 02:9CD3: 00        .byte $00   ; 
- - - - - - 0x009CE4 02:9CD4: 00        .byte $00   ; 
- - - - - - 0x009CE5 02:9CD5: 00        .byte $00   ; 
- - - - - - 0x009CE6 02:9CD6: 00        .byte $00   ; 
- - - - - - 0x009CE7 02:9CD7: 00        .byte $00   ; 
- - - - - - 0x009CE8 02:9CD8: 00        .byte $00   ; 
- - - - - - 0x009CE9 02:9CD9: 1E        .byte $1E   ; 
- - - - - - 0x009CEA 02:9CDA: 1D        .byte $1D   ; 
- - - - - - 0x009CEB 02:9CDB: 00        .byte $00   ; 
- - - - - - 0x009CEC 02:9CDC: 00        .byte $00   ; 
- - - - - - 0x009CED 02:9CDD: 00        .byte $00   ; 
- - - - - - 0x009CEE 02:9CDE: 00        .byte $00   ; 
- - - - - - 0x009CEF 02:9CDF: 00        .byte $00   ; 
- - - - - - 0x009CF0 02:9CE0: 00        .byte $00   ; 
- - - - - - 0x009CF1 02:9CE1: 00        .byte $00   ; 
- - - - - - 0x009CF2 02:9CE2: 00        .byte $00   ; 
- D 0 - I - 0x009CF3 02:9CE3: 0C        .byte $0C   ; 
- - - - - - 0x009CF4 02:9CE4: 1D        .byte $1D   ; 
- - - - - - 0x009CF5 02:9CE5: 00        .byte $00   ; 
- - - - - - 0x009CF6 02:9CE6: 00        .byte $00   ; 
- - - - - - 0x009CF7 02:9CE7: 00        .byte $00   ; 
- - - - - - 0x009CF8 02:9CE8: 00        .byte $00   ; 
- - - - - - 0x009CF9 02:9CE9: 00        .byte $00   ; 
- - - - - - 0x009CFA 02:9CEA: 00        .byte $00   ; 
- - - - - - 0x009CFB 02:9CEB: 00        .byte $00   ; 
- - - - - - 0x009CFC 02:9CEC: 00        .byte $00   ; 
- D 0 - I - 0x009CFD 02:9CED: 1E        .byte $1E   ; 
- D 0 - I - 0x009CFE 02:9CEE: 1D        .byte $1D   ; 



tbl_9CEF:
- D 0 - - - 0x009CFF 02:9CEF: 16        .byte $16   ; 04 
- D 0 - - - 0x009D00 02:9CF0: 79        .byte $79   ; 05 
- - - - - - 0x009D01 02:9CF1: 00        .byte $00   ; 06 
- D 0 - - - 0x009D02 02:9CF2: 78        .byte $78   ; 07 
- D 0 - - - 0x009D03 02:9CF3: 60        .byte $60   ; 08 
- D 0 - - - 0x009D04 02:9CF4: 7C        .byte $7C   ; 09 
- D 0 - - - 0x009D05 02:9CF5: 7B        .byte $7B   ; 0A 
- - - - - - 0x009D06 02:9CF6: 7A        .byte $7A   ; 0B 



tbl_9CF7:
- - - - - - 0x009D07 02:9CF7: 00        .byte $00, $00   ; 00 never used 0x009B3B
- D 0 - - - 0x009D09 02:9CF9: 15        .byte $15, $F8   ; 01 
- D 0 - - - 0x009D0B 02:9CFB: EB        .byte $EB, $F8   ; 02 
- D 0 - - - 0x009D0D 02:9CFD: 0B        .byte $0B, $ED   ; 03 
- - - - - - 0x009D0F 02:9CFF: F5        .byte $F5, $ED   ; 04 
- D 0 - - - 0x009D11 02:9D01: 02        .byte $02, $EB   ; 05 
- D 0 - - - 0x009D13 02:9D03: FE        .byte $FE, $EB   ; 06 
- D 0 - - - 0x009D15 02:9D05: 11        .byte $11, $F8   ; 07 
- D 0 - - - 0x009D17 02:9D07: F0        .byte $F0, $F8   ; 08 
- D 0 - - - 0x009D19 02:9D09: 11        .byte $11, $FD   ; 09 
- D 0 - - - 0x009D1B 02:9D0B: F0        .byte $F0, $FD   ; 0A 
- D 0 - - - 0x009D1D 02:9D0D: 15        .byte $15, $F4   ; 0B 
- D 0 - - - 0x009D1F 02:9D0F: EB        .byte $EB, $F4   ; 0C 
- D 0 - - - 0x009D21 02:9D11: 10        .byte $10, $E9   ; 0D 
- D 0 - - - 0x009D23 02:9D13: F0        .byte $F0, $E9   ; 0E 
- D 0 - - - 0x009D25 02:9D15: 01        .byte $01, $DE   ; 0F 
- D 0 - - - 0x009D27 02:9D17: 00        .byte $00, $DE   ; 10 
- D 0 - - - 0x009D29 02:9D19: 15        .byte $15, $F4   ; 11 
- D 0 - - - 0x009D2B 02:9D1B: EB        .byte $EB, $F4   ; 12 
- D 0 - - - 0x009D2D 02:9D1D: 15        .byte $15, $F9   ; 13 
- D 0 - - - 0x009D2F 02:9D1F: EB        .byte $EB, $F9   ; 14 
- D 0 - - - 0x009D31 02:9D21: 10        .byte $10, $F2   ; 15 
- D 0 - - - 0x009D33 02:9D23: F0        .byte $F0, $F2   ; 16 
- D 0 - - - 0x009D35 02:9D25: 0A        .byte $0A, $E5   ; 17 
- D 0 - - - 0x009D37 02:9D27: F6        .byte $F6, $E5   ; 18 
- D 0 - - - 0x009D39 02:9D29: FE        .byte $FE, $E0   ; 19 
- D 0 - - - 0x009D3B 02:9D2B: 01        .byte $01, $E0   ; 1A 
- D 0 - - - 0x009D3D 02:9D2D: 0E        .byte $0E, $F1   ; 1B 
- D 0 - - - 0x009D3F 02:9D2F: F2        .byte $F2, $F1   ; 1C 
- D 0 - - - 0x009D41 02:9D31: 10        .byte $10, $F4   ; 1D 
- D 0 - - - 0x009D43 02:9D33: F0        .byte $F0, $F4   ; 1E 
- - - - - - 0x009D45 02:9D35: 0C        .byte $0C, $F0   ; 1F 
- - - - - - 0x009D47 02:9D37: F4        .byte $F4, $F0   ; 20 
- D 0 - - - 0x009D49 02:9D39: 01        .byte $01, $E8   ; 21 
- D 0 - - - 0x009D4B 02:9D3B: 0C        .byte $0C, $F8   ; 22 
- - - - - - 0x009D4D 02:9D3D: F4        .byte $F4, $F8   ; 23 
- D 0 - - - 0x009D4F 02:9D3F: 10        .byte $10, $00   ; 24 
- D 0 - - - 0x009D51 02:9D41: F0        .byte $F0, $00   ; 25 
- - - - - - 0x009D53 02:9D43: 10        .byte $10, $08   ; 26 
- D 0 - - - 0x009D55 02:9D45: F0        .byte $F0, $08   ; 27 
- D 0 - - - 0x009D57 02:9D47: 08        .byte $08, $08   ; 28 
- D 0 - - - 0x009D59 02:9D49: F8        .byte $F8, $08   ; 29 
- - - - - - 0x009D5B 02:9D4B: FE        .byte $FE, $F7   ; 2A 
- D 0 - - - 0x009D5D 02:9D4D: F6        .byte $F6, $EE   ; 2B 
- - - - - - 0x009D5F 02:9D4F: 0D        .byte $0D, $EB   ; 2C 
- D 0 - - - 0x009D61 02:9D51: ED        .byte $ED, $F3   ; 2D 
- - - - - - 0x009D63 02:9D53: 12        .byte $12, $F3   ; 2E 
- D 0 - - - 0x009D65 02:9D55: F8        .byte $F8, $01   ; 2F 
- - - - - - 0x009D67 02:9D57: 08        .byte $08, $02   ; 30 
- - - - - - 0x009D69 02:9D59: 08        .byte $08, $00   ; 31 
- - - - - - 0x009D6B 02:9D5B: 01        .byte $01, $F0   ; 32 
- D 0 - - - 0x009D6D 02:9D5D: 05        .byte $05, $EC   ; 33 
- D 0 - - - 0x009D6F 02:9D5F: 0A        .byte $0A, $EE   ; 34 
- D 0 - - - 0x009D71 02:9D61: 0E        .byte $0E, $F9   ; 35 
- D 0 - - - 0x009D73 02:9D63: 04        .byte $04, $FE   ; 36 
- - - - - - 0x009D75 02:9D65: 00        .byte $00, $00   ; 37 
- - - - - - 0x009D77 02:9D67: F3        .byte $F3, $F9   ; 38 
- D 0 - - - 0x009D79 02:9D69: F6        .byte $F6, $ED   ; 39 
- D 0 - - - 0x009D7B 02:9D6B: 04        .byte $04, $EC   ; 3A 
- D 0 - - - 0x009D7D 02:9D6D: 0A        .byte $0A, $FE   ; 3B 
- D 0 - - - 0x009D7F 02:9D6F: FE        .byte $FE, $01   ; 3C 
- D 0 - - - 0x009D81 02:9D71: F8        .byte $F8, $00   ; 3D 
- D 0 - - - 0x009D83 02:9D73: 05        .byte $05, $F0   ; 3E 
- D 0 - - - 0x009D85 02:9D75: F6        .byte $F6, $EB   ; 3F 
- D 0 - - - 0x009D87 02:9D77: 0C        .byte $0C, $EB   ; 40 
- D 0 - - - 0x009D89 02:9D79: E8        .byte $E8, $F6   ; 41 
- D 0 - - - 0x009D8B 02:9D7B: 18        .byte $18, $F6   ; 42 
- - - - - - 0x009D8D 02:9D7D: F8        .byte $F8, $F9   ; 43 
- - - - - - 0x009D8F 02:9D7F: 0A        .byte $0A, $FA   ; 44 
- D 0 - - - 0x009D91 02:9D81: FE        .byte $FE, $FD   ; 45 
- D 0 - - - 0x009D93 02:9D83: 04        .byte $04, $EF   ; 46 
- D 0 - - - 0x009D95 02:9D85: E8        .byte $E8, $F7   ; 47 
- D 0 - - - 0x009D97 02:9D87: 18        .byte $18, $F7   ; 48 
- D 0 - - - 0x009D99 02:9D89: F7        .byte $F7, $00   ; 49 
- D 0 - - - 0x009D9B 02:9D8B: 09        .byte $09, $00   ; 4A 
- D 0 - - - 0x009D9D 02:9D8D: 00        .byte $00, $FD   ; 4B 
- D 0 - - - 0x009D9F 02:9D8F: F3        .byte $F3, $EC   ; 4C 
- D 0 - - - 0x009DA1 02:9D91: 0E        .byte $0E, $EC   ; 4D 
- D 0 - - - 0x009DA3 02:9D93: E9        .byte $E9, $F4   ; 4E 
- - - - - - 0x009DA5 02:9D95: F8        .byte $F8, $FC   ; 4F 
- - - - - - 0x009DA7 02:9D97: 0A        .byte $0A, $FB   ; 50 
- D 0 - - - 0x009DA9 02:9D99: 06        .byte $06, $EA   ; 51 
- D 0 - - - 0x009DAB 02:9D9B: E8        .byte $E8, $F5   ; 52 
- D 0 - - - 0x009DAD 02:9D9D: 19        .byte $19, $F5   ; 53 
- - - - - - 0x009DAF 02:9D9F: F7        .byte $F7, $01   ; 54 
- - - - - - 0x009DB1 02:9DA1: 09        .byte $09, $01   ; 55 
- D 0 - - - 0x009DB3 02:9DA3: 02        .byte $02, $00   ; 56 
- - - - - - 0x009DB5 02:9DA5: 02        .byte $02, $F0   ; 57 
- - - - - - 0x009DB7 02:9DA7: F8        .byte $F8, $F0   ; 58 
- - - - - - 0x009DB9 02:9DA9: 08        .byte $08, $F0   ; 59 
- D 0 - - - 0x009DBB 02:9DAB: 04        .byte $04, $10   ; 5A 
- - - - - - 0x009DBD 02:9DAD: F4        .byte $F4, $00   ; 5B 
- D 0 - - - 0x009DBF 02:9DAF: 0D        .byte $0D, $00   ; 5C 
- D 0 - - - 0x009DC1 02:9DB1: F6        .byte $F6, $06   ; 5D 
- D 0 - - - 0x009DC3 02:9DB3: 0E        .byte $0E, $F6   ; 5E 
- D 0 - - - 0x009DC5 02:9DB5: F2        .byte $F2, $F6   ; 5F 
- D 0 - - - 0x009DC7 02:9DB7: 0C        .byte $0C, $F2   ; 60 
- - - - - - 0x009DC9 02:9DB9: EA        .byte $EA, $F3   ; 61 
- D 0 - - - 0x009DCB 02:9DBB: 08        .byte $08, $F8   ; 62 
- D 0 - - - 0x009DCD 02:9DBD: EC        .byte $EC, $F8   ; 63 
- D 0 - - - 0x009DCF 02:9DBF: 14        .byte $14, $F3   ; 64 
- D 0 - - - 0x009DD1 02:9DC1: 14        .byte $14, $F8   ; 65 
- D 0 - - - 0x009DD3 02:9DC3: F6        .byte $F6, $F8   ; 66 
- D 0 - - - 0x009DD5 02:9DC5: 12        .byte $12, $00   ; 67 
- - - - - - 0x009DD7 02:9DC7: EE        .byte $EE, $F6   ; 68 
- D 0 - - - 0x009DD9 02:9DC9: F6        .byte $F6, $F0   ; 69 
- D 0 - - - 0x009DDB 02:9DCB: 04        .byte $04, $EE   ; 6A 
- D 0 - - - 0x009DDD 02:9DCD: 10        .byte $10, $F8   ; 6B 
- D 0 - - - 0x009DDF 02:9DCF: 10        .byte $10, $F0   ; 6C 
- D 0 - - - 0x009DE1 02:9DD1: 06        .byte $06, $FB   ; 6D 
- D 0 - - - 0x009DE3 02:9DD3: 02        .byte $02, $FC   ; 6E 
- D 0 - - - 0x009DE5 02:9DD5: F7        .byte $F7, $FB   ; 6F 
- - - - - - 0x009DE7 02:9DD7: F8        .byte $F8, $F8   ; 70 
- - - - - - 0x009DE9 02:9DD9: 00        .byte $00, $EC   ; 71 
- - - - - - 0x009DEB 02:9DDB: 18        .byte $18, $F8   ; 72 
- - - - - - 0x009DED 02:9DDD: 0C        .byte $0C, $EC   ; 73 
- - - - - - 0x009DEF 02:9DDF: F6        .byte $F6, $EC   ; 74 
- D 0 - - - 0x009DF1 02:9DE1: F2        .byte $F2, $00   ; 75 
- D 0 - - - 0x009DF3 02:9DE3: F4        .byte $F4, $F8   ; 76 
- - - - - - 0x009DF5 02:9DE5: 0C        .byte $0C, $F8   ; 77 
- D 0 - - - 0x009DF7 02:9DE7: 0C        .byte $0C, $FE   ; 78 
- D 0 - - - 0x009DF9 02:9DE9: F5        .byte $F5, $FC   ; 79 
- - - - - - 0x009DFB 02:9DEB: F8        .byte $F8, $E8   ; 7A 
- D 0 - - - 0x009DFD 02:9DED: 00        .byte $00, $F0   ; 7B 
- D 0 - - - 0x009DFF 02:9DEF: 08        .byte $08, $E8   ; 7C 
- D 0 - - - 0x009E01 02:9DF1: 00        .byte $00, $FC   ; 7D 
- D 0 - - - 0x009E03 02:9DF3: 08        .byte $08, $FE   ; 7E 



tbl_9DF5:
- D 0 - - - 0x009E05 02:9DF5: 10        .byte $10, $04   ; 00 
- D 0 - - - 0x009E07 02:9DF7: 0C        .byte $0C, $14   ; 02 
- D 0 - - - 0x009E09 02:9DF9: 00        .byte $00, $18   ; 04 
- - - - - - 0x009E0B 02:9DFB: F4        .byte $F4, $14   ; 06 
- D 0 - - - 0x009E0D 02:9DFD: F0        .byte $F0, $04   ; 08 
- - - - - - 0x009E0F 02:9DFF: F2        .byte $F2, $F6   ; 0A 
- D 0 - - - 0x009E11 02:9E01: 00        .byte $00, $E8   ; 0C 
- D 0 - - - 0x009E13 02:9E03: 0A        .byte $0A, $FA   ; 0E 



sub_0x009E15:
loc_0x009E15:
C D 0 - - - 0x009E15 02:9E05: 84 18     STY ram_0018
C - - - - - 0x009E17 02:9E07: 20 52 9F  JSR sub_9F52
C - - - - - 0x009E1A 02:9E0A: A4 18     LDY ram_0018
C - - - - - 0x009E1C 02:9E0C: A2 03     LDX #$03
bra_9E0E_loop:
C - - - - - 0x009E1E 02:9E0E: B5 90     LDA ram_0090,X
C - - - - - 0x009E20 02:9E10: 95 18     STA ram_0018,X
C - - - - - 0x009E22 02:9E12: CA        DEX
C - - - - - 0x009E23 02:9E13: 10 F9     BPL bra_9E0E_loop
loc_0x009E25:
sub_0x009E25:
C D 0 - - - 0x009E25 02:9E15: A2 00     LDX #$00
C - - - - - 0x009E27 02:9E17: A9 01     LDA #$01
C - - - - - 0x009E29 02:9E19: 20 20 9E  JSR sub_9E20
C - - - - - 0x009E2C 02:9E1C: A2 01     LDX #$01
C - - - - - 0x009E2E 02:9E1E: A9 02     LDA #$02
sub_9E20:
C - - - - - 0x009E30 02:9E20: 25 00     AND ram_0000
C - - - - - 0x009E32 02:9E22: F0 05     BEQ bra_9E29
C - - - - - 0x009E34 02:9E24: A9 09     LDA #con_F3D6_09
C - - - - - 0x009E36 02:9E26: 20 B3 F3  JSR sub_0x01F3C3
bra_9E29:
C - - - - - 0x009E39 02:9E29: A6 53     LDX ram_0053
C - - - - - 0x009E3B 02:9E2B: A5 6A     LDA ram_006A
C - - - - - 0x009E3D 02:9E2D: C5 90     CMP ram_0090
C - - - - - 0x009E3F 02:9E2F: D0 0E     BNE bra_9E3F
C - - - - - 0x009E41 02:9E31: A5 69     LDA ram_0069
C - - - - - 0x009E43 02:9E33: C5 91     CMP ram_0091
C - - - - - 0x009E45 02:9E35: D0 08     BNE bra_9E3F
C - - - - - 0x009E47 02:9E37: A5 62     LDA ram_0062
C - - - - - 0x009E49 02:9E39: 38        SEC
C - - - - - 0x009E4A 02:9E3A: E5 6A     SBC ram_006A
C - - - - - 0x009E4C 02:9E3C: 9D C8 06  STA ram_obj_spd_X,X
bra_9E3F:
C - - - - - 0x009E4F 02:9E3F: A5 6C     LDA ram_006C
C - - - - - 0x009E51 02:9E41: C5 92     CMP ram_0092
C - - - - - 0x009E53 02:9E43: D0 0E     BNE bra_9E53
C - - - - - 0x009E55 02:9E45: A5 6B     LDA ram_006B
C - - - - - 0x009E57 02:9E47: C5 93     CMP ram_0093
C - - - - - 0x009E59 02:9E49: D0 08     BNE bra_9E53
C - - - - - 0x009E5B 02:9E4B: A5 65     LDA ram_0065
C - - - - - 0x009E5D 02:9E4D: 38        SEC
C - - - - - 0x009E5E 02:9E4E: E5 6C     SBC ram_006C
C - - - - - 0x009E60 02:9E50: 9D DE 06  STA ram_obj_spd_Y,X
bra_9E53:
C - - - - - 0x009E63 02:9E53: 18        CLC
C - - - - - 0x009E64 02:9E54: 60        RTS



sub_0x009E65:
ofs_017_9E55_3F:
C - - - - - 0x009E65 02:9E55: 20 03 90  JSR sub_9003
C - - - - - 0x009E68 02:9E58: 90 F9     BCC bra_9E53
C - - - - - 0x009E6A 02:9E5A: 85 00     STA ram_0000
C - - - - - 0x009E6C 02:9E5C: A0 00     LDY #$00
C - - - - - 0x009E6E 02:9E5E: 29 01     AND #$01
C - - - - - 0x009E70 02:9E60: D0 01     BNE bra_9E63
C - - - - - 0x009E72 02:9E62: C8        INY
bra_9E63:
C - - - - - 0x009E73 02:9E63: 38        SEC
C - - - - - 0x009E74 02:9E64: 60        RTS



sub_0x009E75:
C - - - - - 0x009E75 02:9E65: 20 03 90  JSR sub_9003
C - - - - - 0x009E78 02:9E68: 90 E9     BCC bra_9E53
C - - - - - 0x009E7A 02:9E6A: 85 00     STA ram_0000
C - - - - - 0x009E7C 02:9E6C: C9 03     CMP #$03
C - - - - - 0x009E7E 02:9E6E: F0 05     BEQ bra_9E75
C - - - - - 0x009E80 02:9E70: 20 58 97  JSR sub_9758
C - - - - - 0x009E83 02:9E73: B0 DE     BCS bra_9E53
bra_9E75:
C - - - - - 0x009E85 02:9E75: 38        SEC
C - - - - - 0x009E86 02:9E76: 60        RTS



sub_0x009E87:
C - - - - - 0x009E87 02:9E77: A0 00     LDY #$00
C - - - - - 0x009E89 02:9E79: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x009E8C 02:9E7C: 29 01     AND #$01
C - - - - - 0x009E8E 02:9E7E: F0 0C     BEQ bra_9E8C
C - - - - - 0x009E90 02:9E80: A9 10     LDA #$10
C - - - - - 0x009E92 02:9E82: 20 96 9E  JSR sub_9E96
C - - - - - 0x009E95 02:9E85: B0 47     BCS bra_9ECE
C - - - - - 0x009E97 02:9E87: 20 58 97  JSR sub_9758
C - - - - - 0x009E9A 02:9E8A: 90 46     BCC bra_9ED2_RTS
bra_9E8C:
- - - - - - 0x009E9C 02:9E8C: C8        INY
- - - - - - 0x009E9D 02:9E8D: BD 36 07  LDA ram_0736_obj,X
- - - - - - 0x009EA0 02:9E90: 29 02     AND #$02
- - - - - - 0x009EA2 02:9E92: F0 3A     BEQ bra_9ECE
- - - - - - 0x009EA4 02:9E94: A9 20     LDA #$20
sub_9E96:
C - - - - - 0x009EA6 02:9E96: A2 03     LDX #$03
C - - - - - 0x009EA8 02:9E98: 85 00     STA ram_0000
bra_9E9A_loop:
C - - - - - 0x009EAA 02:9E9A: B5 7F     LDA ram_player_stats,X
C - - - - - 0x009EAC 02:9E9C: 29 F0     AND #$F0
C - - - - - 0x009EAE 02:9E9E: C5 00     CMP ram_0000
C - - - - - 0x009EB0 02:9EA0: F0 07     BEQ bra_9EA9
C - - - - - 0x009EB2 02:9EA2: CA        DEX
C - - - - - 0x009EB3 02:9EA3: 10 F5     BPL bra_9E9A_loop
- - - - - - 0x009EB5 02:9EA5: A6 53     LDX ram_0053
- - - - - - 0x009EB7 02:9EA7: 18        CLC
- - - - - - 0x009EB8 02:9EA8: 60        RTS
bra_9EA9:
C - - - - - 0x009EB9 02:9EA9: A6 53     LDX ram_0053
C - - - - - 0x009EBB 02:9EAB: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x009EBE 02:9EAE: C9 04     CMP #$04
C - - - - - 0x009EC0 02:9EB0: 90 0F     BCC bra_9EC1
C - - - - - 0x009EC2 02:9EB2: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x009EC5 02:9EB5: 38        SEC
C - - - - - 0x009EC6 02:9EB6: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x009EC9 02:9EB9: 30 04     BMI bra_9EBF
C - - - - - 0x009ECB 02:9EBB: C9 06     CMP #$06
C - - - - - 0x009ECD 02:9EBD: B0 0F     BCS bra_9ECE
bra_9EBF:
C - - - - - 0x009ECF 02:9EBF: 18        CLC
C - - - - - 0x009ED0 02:9EC0: 60        RTS
bra_9EC1:
- - - - - - 0x009ED1 02:9EC1: B9 68 06  LDA ram_obj_pos_Y,Y
- - - - - - 0x009ED4 02:9EC4: 38        SEC
- - - - - - 0x009ED5 02:9EC5: FD 68 06  SBC ram_obj_pos_Y,X
- - - - - - 0x009ED8 02:9EC8: 30 F5     BMI bra_9EBF
- - - - - - 0x009EDA 02:9ECA: C9 18     CMP #$18
- - - - - - 0x009EDC 02:9ECC: 90 04     BCC bra_9ED2_RTS
bra_9ECE:
C - - - - - 0x009EDE 02:9ECE: 20 68 B0  JSR sub_0x00D078
C - - - - - 0x009EE1 02:9ED1: 38        SEC
bra_9ED2_RTS:
C - - - - - 0x009EE2 02:9ED2: 60        RTS



sub_0x009EE3:
C - - - - - 0x009EE3 02:9ED3: A5 00     LDA ram_0000
C - - - - - 0x009EE5 02:9ED5: C9 04     CMP #$04
C - - - - - 0x009EE7 02:9ED7: D0 F9     BNE bra_9ED2_RTS
C - - - - - 0x009EE9 02:9ED9: A5 23     LDA ram_0023
C - - - - - 0x009EEB 02:9EDB: 29 30     AND #$30
C - - - - - 0x009EED 02:9EDD: F0 F3     BEQ bra_9ED2_RTS
C - - - - - 0x009EEF 02:9EDF: 4A        LSR
C - - - - - 0x009EF0 02:9EE0: 4A        LSR
C - - - - - 0x009EF1 02:9EE1: 4A        LSR
C - - - - - 0x009EF2 02:9EE2: 4A        LSR
C - - - - - 0x009EF3 02:9EE3: 29 02     AND #$02
C - - - - - 0x009EF5 02:9EE5: A8        TAY
C - - - - - 0x009EF6 02:9EE6: B9 2C 9F  LDA tbl_9F2C,Y
C - - - - - 0x009EF9 02:9EE9: 85 00     STA ram_0000
C - - - - - 0x009EFB 02:9EEB: B9 2D 9F  LDA tbl_9F2C + $01,Y
C - - - - - 0x009EFE 02:9EEE: 85 01     STA ram_0001
C - - - - - 0x009F00 02:9EF0: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x009F03 02:9EF3: B1 00     LDA (ram_0000),Y
C - - - - - 0x009F05 02:9EF5: 48        PHA
C - - - - - 0x009F06 02:9EF6: C8        INY
C - - - - - 0x009F07 02:9EF7: B1 00     LDA (ram_0000),Y
C - - - - - 0x009F09 02:9EF9: 85 02     STA ram_0002
C - - - - - 0x009F0B 02:9EFB: 18        CLC
C - - - - - 0x009F0C 02:9EFC: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x009F0F 02:9EFF: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x009F12 02:9F02: 6A        ROR
C - - - - - 0x009F13 02:9F03: 45 02     EOR ram_0002
C - - - - - 0x009F15 02:9F05: 2A        ROL
C - - - - - 0x009F16 02:9F06: 90 0C     BCC bra_9F14
- - - - - - 0x009F18 02:9F08: A9 F8     LDA #$F8
- - - - - - 0x009F1A 02:9F0A: BC 68 06  LDY ram_obj_pos_Y,X
- - - - - - 0x009F1D 02:9F0D: 10 02     BPL bra_9F11
- - - - - - 0x009F1F 02:9F0F: A9 08     LDA #$08
bra_9F11:
- - - - - - 0x009F21 02:9F11: 9D 68 06  STA ram_obj_pos_Y,X
bra_9F14:
C - - - - - 0x009F24 02:9F14: 68        PLA
C - - - - - 0x009F25 02:9F15: 85 02     STA ram_0002
C - - - - - 0x009F27 02:9F17: 20 C5 91  JSR sub_91C5
C - - - - - 0x009F2A 02:9F1A: 6A        ROR
C - - - - - 0x009F2B 02:9F1B: 45 02     EOR ram_0002
C - - - - - 0x009F2D 02:9F1D: 2A        ROL
C - - - - - 0x009F2E 02:9F1E: 90 B2     BCC bra_9ED2_RTS
- - - - - - 0x009F30 02:9F20: A9 F8     LDA #$F8
- - - - - - 0x009F32 02:9F22: BC 4E 06  LDY ram_obj_pos_X,X
- - - - - - 0x009F35 02:9F25: 10 02     BPL bra_9F29
- - - - - - 0x009F37 02:9F27: A9 08     LDA #$08
bra_9F29:
- - - - - - 0x009F39 02:9F29: 4C C9 91  JMP loc_91C9



tbl_9F2C:
- D 0 - - - 0x009F3C 02:9F2C: 30 9F     .word off_9F30_00
- D 0 - - - 0x009F3E 02:9F2E: 40 9F     .word off_9F40_01



off_9F30_00:
- D 0 - I - 0x009F40 02:9F30: 08        .byte $08   ; 
- D 0 - I - 0x009F41 02:9F31: 00        .byte $00   ; 
- D 0 - I - 0x009F42 02:9F32: 08        .byte $08   ; 
- D 0 - I - 0x009F43 02:9F33: 08        .byte $08   ; 
- D 0 - I - 0x009F44 02:9F34: 00        .byte $00   ; 
- D 0 - I - 0x009F45 02:9F35: 08        .byte $08   ; 
- D 0 - I - 0x009F46 02:9F36: F8        .byte $F8   ; 
- D 0 - I - 0x009F47 02:9F37: 08        .byte $08   ; 
- D 0 - I - 0x009F48 02:9F38: F8        .byte $F8   ; 
- D 0 - I - 0x009F49 02:9F39: 00        .byte $00   ; 
- D 0 - I - 0x009F4A 02:9F3A: F8        .byte $F8   ; 
- D 0 - I - 0x009F4B 02:9F3B: F8        .byte $F8   ; 
- D 0 - I - 0x009F4C 02:9F3C: 00        .byte $00   ; 
- D 0 - I - 0x009F4D 02:9F3D: F8        .byte $F8   ; 
- D 0 - I - 0x009F4E 02:9F3E: 08        .byte $08   ; 
- D 0 - I - 0x009F4F 02:9F3F: F8        .byte $F8   ; 



off_9F40_01:
- D 0 - I - 0x009F50 02:9F40: 14        .byte $14   ; 
- D 0 - I - 0x009F51 02:9F41: 00        .byte $00   ; 
- D 0 - I - 0x009F52 02:9F42: 14        .byte $14   ; 
- D 0 - I - 0x009F53 02:9F43: 14        .byte $14   ; 
- D 0 - I - 0x009F54 02:9F44: 00        .byte $00   ; 
- D 0 - I - 0x009F55 02:9F45: 14        .byte $14   ; 
- D 0 - I - 0x009F56 02:9F46: EC        .byte $EC   ; 
- D 0 - I - 0x009F57 02:9F47: 14        .byte $14   ; 
- D 0 - I - 0x009F58 02:9F48: EC        .byte $EC   ; 
- D 0 - I - 0x009F59 02:9F49: 00        .byte $00   ; 
- D 0 - I - 0x009F5A 02:9F4A: EC        .byte $EC   ; 
- D 0 - I - 0x009F5B 02:9F4B: EC        .byte $EC   ; 
- D 0 - I - 0x009F5C 02:9F4C: 00        .byte $00   ; 
- D 0 - I - 0x009F5D 02:9F4D: EC        .byte $EC   ; 
- D 0 - I - 0x009F5E 02:9F4E: 14        .byte $14   ; 
- D 0 - I - 0x009F5F 02:9F4F: EC        .byte $EC   ; 



tbl_0x009F60:
; bzk optimize, move to bank FF
- - - - - - 0x009F60 02:9F50: FE        .byte $FE   ; 00 
- - - - - - 0x009F61 02:9F51: FD        .byte $FD   ; 01 



sub_9F52:
sub_0x009F62:
C - - - - - 0x009F62 02:9F52: A9 00     LDA #$00
C - - - - - 0x009F64 02:9F54: 85 90     STA ram_0090
C - - - - - 0x009F66 02:9F56: 85 91     STA ram_0091
C - - - - - 0x009F68 02:9F58: 85 92     STA ram_0092
C - - - - - 0x009F6A 02:9F5A: 85 93     STA ram_0093
C - - - - - 0x009F6C 02:9F5C: 20 72 91  JSR sub_9172_06B2x_AND_0F
C - - - - - 0x009F6F 02:9F5F: F0 22     BEQ bra_9F83_RTS
C - - - - - 0x009F71 02:9F61: 38        SEC
C - - - - - 0x009F72 02:9F62: E9 01     SBC #$01
C - - - - - 0x009F74 02:9F64: 85 1B     STA ram_001B
C - - - - - 0x009F76 02:9F66: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x009F79 02:9F69: 4A        LSR
C - - - - - 0x009F7A 02:9F6A: 85 1C     STA ram_001C
C - - - - - 0x009F7C 02:9F6C: A8        TAY
C - - - - - 0x009F7D 02:9F6D: B9 B1 9F  LDA tbl_9FB1,Y
C - - - - - 0x009F80 02:9F70: 20 84 9F  JSR sub_9F84
C - - - - - 0x009F83 02:9F73: 85 90     STA ram_0090
C - - - - - 0x009F85 02:9F75: 84 91     STY ram_0091
C - - - - - 0x009F87 02:9F77: A4 1C     LDY ram_001C
C - - - - - 0x009F89 02:9F79: B9 B9 9F  LDA tbl_9FB9,Y
C - - - - - 0x009F8C 02:9F7C: 20 84 9F  JSR sub_9F84
C - - - - - 0x009F8F 02:9F7F: 85 92     STA ram_0092
C - - - - - 0x009F91 02:9F81: 84 93     STY ram_0093
bra_9F83_RTS:
C - - - - - 0x009F93 02:9F83: 60        RTS



sub_9F84:
C - - - - - 0x009F94 02:9F84: 85 1D     STA ram_001D
C - - - - - 0x009F96 02:9F86: F0 04     BEQ bra_9F8C
C - - - - - 0x009F98 02:9F88: 18        CLC
C - - - - - 0x009F99 02:9F89: 65 1B     ADC ram_001B
C - - - - - 0x009F9B 02:9F8B: 0A        ASL
bra_9F8C:   ; A = 00
C - - - - - 0x009F9C 02:9F8C: A8        TAY
C - - - - - 0x009F9D 02:9F8D: B9 C1 9F  LDA tbl_9FC1,Y
C - - - - - 0x009FA0 02:9F90: 85 0E     STA ram_000E
C - - - - - 0x009FA2 02:9F92: B9 C2 9F  LDA tbl_9FC1 + $01,Y
C - - - - - 0x009FA5 02:9F95: 85 0F     STA ram_000F
C - - - - - 0x009FA7 02:9F97: A5 1D     LDA ram_001D
C - - - - - 0x009FA9 02:9F99: 10 11     BPL bra_9FAC
C - - - - - 0x009FAB 02:9F9B: A5 0F     LDA ram_000F
C - - - - - 0x009FAD 02:9F9D: 49 FF     EOR #$FF
C - - - - - 0x009FAF 02:9F9F: 85 0F     STA ram_000F
C - - - - - 0x009FB1 02:9FA1: A5 0E     LDA ram_000E
C - - - - - 0x009FB3 02:9FA3: 20 07 95  JSR sub_9507_EOR_FF_CLC_ADC_01
C - - - - - 0x009FB6 02:9FA6: 85 0E     STA ram_000E
C - - - - - 0x009FB8 02:9FA8: 90 02     BCC bra_9FAC
C - - - - - 0x009FBA 02:9FAA: E6 0F     INC ram_000F
bra_9FAC:
C - - - - - 0x009FBC 02:9FAC: A5 0E     LDA ram_000E
C - - - - - 0x009FBE 02:9FAE: A4 0F     LDY ram_000F
C - - - - - 0x009FC0 02:9FB0: 60        RTS



tbl_9FB1:
- D 0 - - - 0x009FC1 02:9FB1: 01        .byte $01   ; 00 
- D 0 - - - 0x009FC2 02:9FB2: 10        .byte $10   ; 02 
- D 0 - - - 0x009FC3 02:9FB3: 00        .byte $00   ; 04 
- D 0 - - - 0x009FC4 02:9FB4: 90        .byte $90   ; 06 
- D 0 - - - 0x009FC5 02:9FB5: 81        .byte $81   ; 08 
- D 0 - - - 0x009FC6 02:9FB6: 90        .byte $90   ; 0A 
- D 0 - - - 0x009FC7 02:9FB7: 00        .byte $00   ; 0C 
- D 0 - - - 0x009FC8 02:9FB8: 10        .byte $10   ; 0E 



tbl_9FB9:
- D 0 - - - 0x009FC9 02:9FB9: 00        .byte $00   ; 00 
- D 0 - - - 0x009FCA 02:9FBA: 10        .byte $10   ; 02 
- D 0 - - - 0x009FCB 02:9FBB: 01        .byte $01   ; 04 
- D 0 - - - 0x009FCC 02:9FBC: 10        .byte $10   ; 06 
- D 0 - - - 0x009FCD 02:9FBD: 00        .byte $00   ; 08 
- D 0 - - - 0x009FCE 02:9FBE: 90        .byte $90   ; 0A 
- D 0 - - - 0x009FCF 02:9FBF: 81        .byte $81   ; 0C 
- D 0 - - - 0x009FD0 02:9FC0: 90        .byte $90   ; 0E 



tbl_9FC1:
- D 0 - - - 0x009FD1 02:9FC1: 00        .byte $00, $00   ; 
- D 0 - - - 0x009FD3 02:9FC3: 80        .byte $80, $00   ; 
- D 0 - - - 0x009FD5 02:9FC5: 00        .byte $00, $01   ; 
- D 0 - - - 0x009FD7 02:9FC7: 30        .byte $30, $01   ; 
- D 0 - - - 0x009FD9 02:9FC9: 00        .byte $00, $02   ; 
- D 0 - - - 0x009FDB 02:9FCB: 40        .byte $40, $00   ; 
- D 0 - - - 0x009FDD 02:9FCD: 00        .byte $00, $03   ; 
- D 0 - - - 0x009FDF 02:9FCF: 80        .byte $80, $03   ; 
- D 0 - - - 0x009FE1 02:9FD1: 00        .byte $00, $04   ; 
- D 0 - - - 0x009FE3 02:9FD3: 80        .byte $80, $01   ; 
- D 0 - - - 0x009FE5 02:9FD5: 00        .byte $00, $05   ; 
- D 0 - - - 0x009FE7 02:9FD7: 80        .byte $80, $05   ; 
- D 0 - - - 0x009FE9 02:9FD9: 00        .byte $00, $06   ; 
- D 0 - - - 0x009FEB 02:9FDB: 80        .byte $80, $06   ; 
- D 0 - - - 0x009FED 02:9FDD: 00        .byte $00, $07   ; 
- D 0 - - - 0x009FEF 02:9FDF: 80        .byte $80, $07   ; 
- D 0 - - - 0x009FF1 02:9FE1: 5A        .byte $5A, $00   ; 
- D 0 - - - 0x009FF3 02:9FE3: B5        .byte $B5, $00   ; 
- D 0 - - - 0x009FF5 02:9FE5: D6        .byte $D6, $00   ; 
- D 0 - - - 0x009FF7 02:9FE7: 6A        .byte $6A, $01   ; 
- - - - - - 0x009FF9 02:9FE9: C4        .byte $C4, $01   ; 
- D 0 - - - 0x009FFB 02:9FEB: 1F        .byte $1F, $02   ; 
- D 0 - - - 0x009FFD 02:9FED: 79        .byte $79, $02   ; 
- D 0 - - - 0x009FFF 02:9FEF: D4        .byte $D4, $02   ; 
- - - - - - 0x00A001 02:9FF1: 0F        .byte $0F, $01   ; 
- - - - - - 0x00A003 02:9FF3: 89        .byte $89, $03   ; 
- D 0 - - - 0x00A005 02:9FF5: E3        .byte $E3, $03   ; 
- D 0 - - - 0x00A007 02:9FF7: 3E        .byte $3E, $04   ; 
- - - - - - 0x00A009 02:9FF9: 98        .byte $98, $04   ; 
- - - - - - 0x00A00B 02:9FFB: F3        .byte $F3, $04   ; 
- - - - - - 0x00A00D 02:9FFD: 4D        .byte $4D, $05   ; 


; bzk garbage
- - - - - - 0x00A00F 02:9FFF: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 04: 0x%04X [%d]", ($A000 - *), ($A000 - *))



